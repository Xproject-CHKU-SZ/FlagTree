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
0000f0  630c6f00  loadli.w r24,  48(r30)
0000f4  8b101a20  mul.s r1, r20, r1
0000f8  0b9b8021  mul.s r22, r1, r24
0000fc  cb415b01  ble.s r22, r21, 112
000100  ab10833a  lui r1, 239665
000104  80db0002  load_param_i r23, 1
000108  9f1c0000  addli r25, zero, 1
00010c  1f0d0006  addli r26, zero, 768
000110  9f0d0008  addli r27, zero, 1024
000114  1f0e0001  addli r28, zero, 128
000118  9b99f026  ori r19, r1, 623
00011c  8b908a31  div.s r1, r21, r24
000120  1f320000  addli r4, zero, 3
000124  6b510f00  load.d r[3:4], 0(r30)
000128  6b530f01  load.d r[7:8], 16(r30)
00012c  6b548f01  load.d r[9:10], 24(r30)
000130  e7c19e01  storeli.w r25, 28(sp)
000134  67c1ae01  storeli.w r26, 20(sp)
000138  6781be01  storeli.w r27, 16(sp)
00013c  e7c0ce01  storeli.w r28, 12(sp)
000140  e7813e01  storeli.w r19, 24(sp)
000144  67824e00  storeli.w r4, 32(sp)
000148  6b520f02  load.d r[5:6], 32(r30)
00014c  73b04e00  store.d r[5:6], 0(sp)
000150  6b528f00  load.d r[5:6], 8(r30)
000154  8b904031  div.s r1, r1, r20
000158  9bb07000  slli r1, r1, 7
00015c  e7801e00  storeli.w r1, 8(sp)
000160  572f0000  jal 376
000164  8b9a7a11  add.s r21, r21, r23
000168  bfde6aff  blt.s r21, r22, -76
00016c  9f8e8e00  addli sp, sp, 64
000170  00a00300  mfence { lm, sm, gm }
000174  00100000  exit
000178  9f8e8ed3  addli sp, sp, -5696
00017c  67c1ee2d  storeli.w r30, 5652(sp)
000180  1f8f8e2c  addli r30, sp, 5696
000184  1f250000  addli r10, zero, 2
000188  e7c33e2d  storeli.w r19, 5692(sp)
00018c  e7834e2d  storeli.w r20, 5688(sp)
000190  67c35e2d  storeli.w r21, 5684(sp)
000194  67836e2d  storeli.w r22, 5680(sp)
000198  e7c27e2d  storeli.w r23, 5676(sp)
00019c  e7828e2d  storeli.w r24, 5672(sp)
0001a0  67c29e2d  storeli.w r25, 5668(sp)
0001a4  6782ae2d  storeli.w r26, 5664(sp)
0001a8  e7c1be2d  storeli.w r27, 5660(sp)
0001ac  e781ce2d  storeli.w r28, 5656(sp)
0001b0  6781fe2d  storeli.w r31, 5648(sp)
0001b4  e3004f00  loadli.w r1,  32(r30)
0001b8  63472f00  loadli.w r14,  20(r30)
0001bc  e3072f00  loadli.w r15,  16(r30)
0001c0  63481f00  loadli.w r16,  12(r30)
0001c4  9f057fd6  addli r11, r30, -5320
0001c8  73b02500  store.d r[3:4], 0(r11)
0001cc  3f511500  blt.s r10, r1, 84
0001d0  1f110000  addli r2, zero, 1
0001d4  b7a92004  beq r1, r2, 2664
0001d8  1f210000  addli r2, zero, 2
0001dc  3be82004  bneq r1, r2, 2584
0001e0  e3403f00  loadli.w r1,  28(r30)
0001e4  37f60012  beq r1, zero, 9628
0001e8  80300002  core_id r1
0001ec  1f210000  addli r2, zero, 2
0001f0  37df2024  beq r1, r2, 19412
0001f4  1f110000  addli r2, zero, 1
0001f8  37be2024  beq r1, r2, 19340
0001fc  bb9f0024  bneq r1, zero, 19428
000200  63012f00  loadli.w r2,  16(r30)
000204  ab0100f0  lui r3, 983040
000208  1b311100  slli r2, r2, 1
00020c  17113100  or r2, r2, r3
000210  ab910100  lui r3, 25
000214  9f810100  addli r3, r3, 0
000218  7f013200  l_gm2sm r2, r3, 0(r[5:6])
00021c  db780900  j 19396
000220  1f310000  addli r2, zero, 3
000224  37e92004  beq r1, r2, 2648
000228  1f410000  addli r2, zero, 4
00022c  3ba72004  bneq r1, r2, 2504
000230  e3002f00  loadli.w r1,  16(r30)
000234  1f010010  addli r2, zero, 2048
000238  bbeb2008  bneq r1, r2, 4856
00023c  e3403f00  loadli.w r1,  28(r30)
000240  b7880018  beq r1, zero, 12832
000244  80300002  core_id r1
000248  ab070000  lui r15, 0
00024c  1f150000  addli r10, zero, 1
000250  9f058fd7  addli r11, r30, -5184
000254  1f068000  addli r12, zero, 64
000258  9f060010  addli r13, zero, 2048
00025c  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
000260  1bb15000  slli r2, r1, 5
000264  80500102  load_param_i r1, 2
000268  9f870700  addli r15, r15, 0
00026c  9bb15000  slli r3, r1, 5
000270  1f070100  addli r14, r2, 0
000274  33080728  zext_int2long r[17:18], r14
000278  2b0900f0  lui r18, 983040
00027c  1738a802  sll.d r[17:18], r[17:18], r10
000280  17192601  or r18, r12, r18
000284  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000288  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
00028c  1b382700  slli r16, r14, 2
000290  0b97e110  add.s r14, r3, r14
000294  00a00200  mfence { lm, gm }
000298  c2800502  vload.mz vr1{mr1}, 0(r11)
00029c  9308d704  setlt.u r17, r14, r13
0002a0  0b18f810  add.s r16, r16, r15
0002a4  1f098800  addli r18, r16, 64
0002a8  66c11180  vmerge_l.hf vr2, vr3, vr1
0002ac  e6c011a0  vmerge_h.hf vr1, vr3, vr1
0002b0  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
0002b4  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
0002b8  bbfe08fe  bneq r17, zero, -68
0002bc  00320002  core_id r4
0002c0  9bb27000  slli r5, r1, 7
0002c4  1f160000  addli r12, zero, 1
0002c8  9f068fd7  addli r13, r30, -5184
0002cc  1f078000  addli r14, zero, 64
0002d0  1f080010  addli r16, zero, 2048
0002d4  9f080100  addli r17, r2, 0
0002d8  00a00000  mfence { lm }
0002dc  9b357200  slli r11, r4, 7
0002e0  2b220000  lui r4, 2
0002e4  1f020200  addli r4, r4, 0
0002e8  0b954510  add.s r10, r11, r4
0002ec  33890828  zext_int2long r[19:20], r17
0002f0  2b0a00f0  lui r20, 983040
0002f4  8b983810  add.s r17, r17, r3
0002f8  1739c902  sll.d r[19:20], r[19:20], r12
0002fc  171a4701  or r20, r14, r20
000300  0b292311  add.ul r[19:20], r[7:8], r[19:20]
000304  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
000308  13890805  setlt.u r18, r17, r16
00030c  9f098500  addli r19, r10, 64
000310  00a00200  mfence { lm, gm }
000314  c2800602  vload.mz vr1{mr1}, 0(r13)
000318  66c11180  vmerge_l.hf vr2, vr3, vr1
00031c  e6c011a0  vmerge_h.hf vr1, vr3, vr1
000320  4e102502  vstores_mask16.mz vr2{mr1}, 0(r10)
000324  0b155510  add.s r10, r10, r5
000328  4e901902  vstores_mask16.mz vr1{mr1}, 0(r19)
00032c  3b0f09fe  bneq r18, zero, -64
000330  2b450000  lui r10, 4
000334  9f130000  addli r7, zero, 1
000338  1f068000  addli r12, zero, 64
00033c  9f060010  addli r13, zero, 2048
000340  00a00000  mfence { lm }
000344  1f050500  addli r10, r10, 0
000348  0b93a510  add.s r6, r11, r10
00034c  9f058fd7  addli r11, r30, -5184
000350  33080128  zext_int2long r[17:18], r2
000354  2b0700f0  lui r14, 983040
000358  0b113110  add.s r2, r2, r3
00035c  17387802  sll.d r[17:18], r[17:18], r7
000360  1717e600  or r14, r12, r14
000364  0b280411  add.ul r[17:18], r[9:10], r[17:18]
000368  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
00036c  1307d104  setlt.u r14, r2, r13
000370  1f088300  addli r16, r6, 64
000374  00a00200  mfence { lm, gm }
000378  c2800502  vload.mz vr1{mr1}, 0(r11)
00037c  66c11180  vmerge_l.hf vr2, vr3, vr1
000380  e6c011a0  vmerge_h.hf vr1, vr3, vr1
000384  4e102302  vstores_mask16.mz vr2{mr1}, 0(r6)
000388  0b135310  add.s r6, r6, r5
00038c  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000390  3b0f07fe  bneq r14, zero, -64
000394  2bf10000  lui r2, 15
000398  80310002  core_id r3
00039c  00a00300  mfence { lm, sm, gm }
0003a0  9f020006  addli r5, zero, 768
0003a4  1b11f1ff  ori r2, r2, 4095
0003a8  9b811100  andi r3, r3, 1
0003ac  80210104  csr_set csr3, r2
0003b0  1f010006  addli r2, zero, 768
0003b4  00d00100  sync_group
0003b8  670c3fd4  storeli.w r3, -5440(r30)
0003bc  37a00100  beq r3, zero, 8
0003c0  9f02000a  addli r5, zero, 1280
0003c4  e3411f00  loadli.w r3,  12(r30)
0003c8  e3441f00  loadli.w r9,  12(r30)
0003cc  1f130000  addli r6, zero, 1
0003d0  bf8d612e  blt.s r3, r6, 24416
0003d4  e3018fd5  loadli.w r3,  -5440(r30)
0003d8  1f0a8fd7  addli r20, r30, -5184
0003dc  1bb81200  slli r16, r5, 1
0003e0  9f030000  addli r7, zero, 0
0003e4  9f787000  addli r17, zero, 63
0003e8  9f0d0005  addli r27, zero, 640
0003ec  ab06803f  lui r13, 260096
0003f0  9f0c2000  addli r25, zero, 16
0003f4  1f3b0000  addli r22, zero, 3
0003f8  1f5e1000  addli r28, zero, 13
0003fc  2bec0700  lui r24, 126
000400  1f2d1000  addli r26, zero, 10
000404  1f070003  addli r14, zero, 384
000408  0b912120  mul.s r2, r3, r2
00040c  9bc11000  srli r3, r1, 1
000410  80300002  core_id r1
000414  9bc51000  srli r11, r1, 1
000418  9b302100  slli r1, r2, 2
00041c  67042fd4  storeli.w r2, -5568(r30)
000420  1f814200  addli r2, r5, 32
000424  0b994010  add.s r18, r1, r4
000428  8b99a010  add.s r19, r1, r10
00042c  9bb02200  slli r1, r5, 2
000430  674f2fd2  storeli.w r2, -5644(r30)
000434  0b114811  add.s r2, r16, r20
000438  2be27f00  lui r4, 2046
00043c  8b904011  add.s r1, r1, r20
000440  9f8080ff  addli r1, r1, -64
000444  670f1fd2  storeli.w r1, -5648(r30)
000448  9f0081ff  addli r1, r2, -64
00044c  2bf100fc  lui r2, 1032207
000450  e74e1fd2  storeli.w r1, -5652(r30)
000454  abf0ffff  lui r1, 1048575
000458  1b1401c0  ori r8, r2, 3072
00045c  00a00000  mfence { lm }
000460  67003fd4  storeli.w r3, -5632(r30)
000464  e74fbfd2  storeli.w r11, -5636(r30)
000468  e70f0fd3  storeli.w r16, -5640(r30)
00046c  9b9000f8  ori r1, r1, 3968
000470  e70e1fd2  storeli.w r1, -5656(r30)
000474  abf00000  lui r1, 15
000478  9b90f0ff  ori r1, r1, 4095
00047c  67081fd6  storeli.w r1, -5248(r30)
000480  ab700000  lui r1, 7
000484  9b9af0ff  ori r21, r1, 4095
000488  ab00ff03  lui r1, 16368
00048c  9b9bf03f  ori r23, r1, 1023
000490  9f000fd5  addli r1, r30, -5504
000494  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
000498  5b040000  j 32
00049c  00a00300  mfence { lm, sm, gm }
0004a0  e3000fd7  loadli.w r1,  -5248(r30)
0004a4  80a10004  csr_set csr3, r1
0004a8  00d00100  sync_group
0004ac  8b933310  add.s r7, r7, r3
0004b0  3fa09300  blt.s r7, r9, 8
0004b4  dbe50000  j 1836
0004b8  8b90b310  add.s r1, r7, r11
0004bc  cb8f14fe  ble.s r9, r1, -32
0004c0  63011f00  loadli.w r2,  8(r30)
0004c4  8b902010  add.s r1, r1, r2
0004c8  0b813330  div.u r2, r7, r3
0004cc  e3018fd4  loadli.w r3,  -5568(r30)
0004d0  9bb0b000  slli r1, r1, 11
0004d4  97903000  or r1, r1, r3
0004d8  9f017fd6  addli r3, r30, -5320
0004dc  b3940028  sext_int2long r[10:11], r1
0004e0  ab0000f0  lui r1, 983040
0004e4  1b316100  slli r2, r2, 6
0004e8  97b56402  sll.d r[12:13], r[10:11], r6
0004ec  ebd40100  load.d r[10:11], 0(r3)
0004f0  9f018fd6  addli r3, r30, -5312
0004f4  97101800  or r1, r16, r1
0004f8  1b010104  andi r2, r2, 64
0004fc  73b0b100  store.d r[12:13], 0(r3)
000500  8ba4b410  add.ul r[10:11], r[10:11], r[12:13]
000504  ffa04401  l_gm2lm r1, r20, 0(r[10:11])
000508  80300002  core_id r1
00050c  00a00200  mfence { lm, gm }
000510  17161100  or r12, r2, r1
000514  e340dfd3  loadli.w r1,  -5652(r30)
000518  6301efd3  loadli.w r2,  -5648(r30)
00051c  e341efd3  loadli.w r3,  -5644(r30)
000520  c2800002  vload.mz vr1{mr1}, 0(r1)
000524  9f81c1ff  addli r3, r3, -32
000528  9f0581ff  addli r11, r2, -64
00052c  9f8080ff  addli r1, r1, -64
000530  93843804  setlt.u r9, r17, r3
000534  66c111a0  vmerge_h.hf vr2, vr3, vr1
000538  e6c01180  vmerge_l.hf vr1, vr3, vr1
00053c  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
000540  1f0101ff  addli r2, r2, -128
000544  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
000548  3bef04fe  bneq r9, zero, -40
00054c  00a00000  mfence { lm }
000550  e3008fd5  loadli.w r1,  -5440(r30)
000554  3bb60000  bneq r1, zero, 396
000558  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00055c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000560  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000564  6301dfd3  loadli.w r2,  -5656(r30)
000568  9f000000  addli r1, zero, 0
00056c  8b94f010  add.s r9, r1, r15
000570  8b111a10  add.s r3, r20, r1
000574  1f010101  addli r2, r2, 128
000578  9f800004  addli r1, r1, 512
00057c  1f850401  addli r10, r9, 128
000580  4a900402  vloads_mask16.mz vr0{mr1}, 0(r9)
000584  9f858400  addli r11, r9, 64
000588  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
00058c  1f888101  addli r16, r3, 192
000590  ca120502  vloads_mask16.mz vr5{mr1}, 0(r10)
000594  1f858401  addli r10, r9, 192
000598  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
00059c  9f858100  addli r11, r3, 64
0005a0  c2150802  vload_mask16.mz vr11{mr1}, 0(r16)
0005a4  ca130502  vloads_mask16.mz vr7{mr1}, 0(r10)
0005a8  1f850101  addli r10, r3, 128
0005ac  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
0005b0  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
0005b4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0005b8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0005bc  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0005c0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0005c4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0005c8  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0005cc  46108502  vstore_mask16.mz vr8{mr1}, 0(r10)
0005d0  1f850402  addli r10, r9, 256
0005d4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0005d8  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0005dc  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0005e0  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
0005e4  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
0005e8  1f858402  addli r10, r9, 320
0005ec  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0005f0  1f880102  addli r16, r3, 256
0005f4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0005f8  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0005fc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000600  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
000604  1f850403  addli r10, r9, 384
000608  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
00060c  9f848403  addli r9, r9, 448
000610  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000614  4a140502  vloads_mask16.mz vr8{mr1}, 0(r10)
000618  1f858102  addli r10, r3, 320
00061c  4a950402  vloads_mask16.mz vr10{mr1}, 0(r9)
000620  9f840103  addli r9, r3, 384
000624  9f818103  addli r3, r3, 448
000628  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
00062c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000630  c2930402  vload_mask16.mz vr7{mr1}, 0(r9)
000634  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000638  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
00063c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000640  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000644  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
000648  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00064c  46106502  vstore_mask16.mz vr6{mr1}, 0(r10)
000650  1305b105  setlt.u r10, r2, r27
000654  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000658  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00065c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000660  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000664  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000668  46905402  vstore_mask16.mz vr5{mr1}, 0(r9)
00066c  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000670  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000674  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000678  bb5b05fe  bneq r10, zero, -268
00067c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000680  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000684  9f000002  addli r1, zero, 256
000688  6af100c0  vsrl.p vr2, r1, vr0
00068c  eaf110c0  vsrl.p vr3, r1, vr1
000690  9f000001  addli r1, zero, 128
000694  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000698  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00069c  6af100c0  vsrl.p vr2, r1, vr0
0006a0  eaf110c0  vsrl.p vr3, r1, vr1
0006a4  9f008000  addli r1, zero, 64
0006a8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006ac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006b0  6af100c0  vsrl.p vr2, r1, vr0
0006b4  eaf110c0  vsrl.p vr3, r1, vr1
0006b8  9f004000  addli r1, zero, 32
0006bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006c4  6af100c0  vsrl.p vr2, r1, vr0
0006c8  eaf110c0  vsrl.p vr3, r1, vr1
0006cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006d4  fa110040  vextracti.f r3, 0(vr0)
0006d8  fa940040  vextracti.f r9, 0(vr1)
0006dc  5b660000  j 816
0006e0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0006e4  2bf1ffff  lui r2, 1048575
0006e8  9f000000  addli r1, zero, 0
0006ec  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0006f0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0006f4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0006f8  1b1101f8  ori r2, r2, 3968
0006fc  8b941710  add.s r9, r15, r1
000700  8b111a10  add.s r3, r20, r1
000704  1f010101  addli r2, r2, 128
000708  9f800004  addli r1, r1, 512
00070c  9f880431  addli r17, r9, 6272
000710  9f850430  addli r11, r9, 6144
000714  1f858431  addli r10, r9, 6336
000718  1f880118  addli r16, r3, 3072
00071c  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
000720  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
000724  9f858430  addli r11, r9, 6208
000728  ca140502  vloads_mask16.mz vr9{mr1}, 0(r10)
00072c  1f858118  addli r10, r3, 3136
000730  9f888119  addli r17, r3, 3264
000734  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
000738  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
00073c  9f850119  addli r11, r3, 3200
000740  42900802  vload_mask16.mz vr0{mr1}, 0(r17)
000744  c2150502  vload_mask16.mz vr11{mr1}, 0(r10)
000748  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
00074c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
000750  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
000754  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
000758  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
00075c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000760  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
000764  46907502  vstore_mask16.mz vr7{mr1}, 0(r11)
000768  9f850432  addli r11, r9, 6400
00076c  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
000770  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
000774  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000778  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
00077c  1f88011a  addli r16, r3, 3328
000780  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000784  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
000788  1305e104  setlt.u r10, r2, r14
00078c  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
000790  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
000794  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
000798  9f858432  addli r11, r9, 6464
00079c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0007a0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0007a4  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
0007a8  9f850433  addli r11, r9, 6528
0007ac  9f848433  addli r9, r9, 6592
0007b0  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
0007b4  9f85811a  addli r11, r3, 3392
0007b8  4a950402  vloads_mask16.mz vr10{mr1}, 0(r9)
0007bc  9f84011b  addli r9, r3, 3456
0007c0  9f81811b  addli r3, r3, 3520
0007c4  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
0007c8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0007cc  c2930402  vload_mask16.mz vr7{mr1}, 0(r9)
0007d0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0007d4  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
0007d8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0007dc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0007e0  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
0007e4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0007e8  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0007ec  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0007f0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0007f4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0007f8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0007fc  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000800  46905402  vstore_mask16.mz vr5{mr1}, 0(r9)
000804  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000808  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00080c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000810  bb3b05fe  bneq r10, zero, -276
000814  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000818  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00081c  1f010002  addli r2, zero, 256
000820  9f000000  addli r1, zero, 0
000824  ea7111c0  vsrl.p vr3, r2, vr1
000828  6a7101c0  vsrl.p vr2, r2, vr0
00082c  1f010001  addli r2, zero, 128
000830  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000834  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000838  ea7111c0  vsrl.p vr3, r2, vr1
00083c  6a7101c0  vsrl.p vr2, r2, vr0
000840  1f018000  addli r2, zero, 64
000844  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000848  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00084c  ea7111c0  vsrl.p vr3, r2, vr1
000850  6a7101c0  vsrl.p vr2, r2, vr0
000854  1f014000  addli r2, zero, 32
000858  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00085c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000860  ea7111c0  vsrl.p vr3, r2, vr1
000864  6a7101c0  vsrl.p vr2, r2, vr0
000868  2bf1ffff  lui r2, 1048575
00086c  9b1501f8  ori r11, r2, 3968
000870  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000874  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000878  7a970040  vextracti.f r14, 0(vr1)
00087c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000880  fa110040  vextracti.f r3, 0(vr0)
000884  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000888  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00088c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000890  0b981710  add.s r16, r15, r1
000894  8b141a10  add.s r9, r20, r1
000898  9f850501  addli r11, r11, 128
00089c  9f800004  addli r1, r1, 512
0008a0  1f050818  addli r10, r16, 3072
0008a4  9f080819  addli r17, r16, 3200
0008a8  1f818401  addli r2, r9, 192
0008ac  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
0008b0  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
0008b4  1f058818  addli r10, r16, 3136
0008b8  ca920802  vloads_mask16.mz vr5{mr1}, 0(r17)
0008bc  9f088819  addli r17, r16, 3264
0008c0  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
0008c4  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
0008c8  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
0008cc  1f850401  addli r10, r9, 128
0008d0  9f888400  addli r17, r9, 64
0008d4  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
0008d8  42950802  vload_mask16.mz vr10{mr1}, 0(r17)
0008dc  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0008e0  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0008e4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0008e8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0008ec  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0008f0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0008f4  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0008f8  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0008fc  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
000900  46108502  vstore_mask16.mz vr8{mr1}, 0(r10)
000904  1f850402  addli r10, r9, 256
000908  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
00090c  1f01081a  addli r2, r16, 3328
000910  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
000914  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
000918  1f01881a  addli r2, r16, 3392
00091c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000920  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000924  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
000928  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00092c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000930  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
000934  1f01081b  addli r2, r16, 3456
000938  1f08881b  addli r16, r16, 3520
00093c  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
000940  1f818402  addli r2, r9, 320
000944  4a150802  vloads_mask16.mz vr10{mr1}, 0(r16)
000948  1f880403  addli r16, r9, 384
00094c  9f848403  addli r9, r9, 448
000950  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
000954  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000958  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
00095c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000960  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
000964  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000968  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00096c  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
000970  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000974  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
000978  1381b505  setlt.u r2, r11, r27
00097c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000980  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000984  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000988  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00098c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000990  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
000994  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000998  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00099c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0009a0  bb4b01fe  bneq r2, zero, -272
0009a4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0009a8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0009ac  9f000002  addli r1, zero, 256
0009b0  6af100c0  vsrl.p vr2, r1, vr0
0009b4  eaf110c0  vsrl.p vr3, r1, vr1
0009b8  9f000001  addli r1, zero, 128
0009bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009c4  6af100c0  vsrl.p vr2, r1, vr0
0009c8  eaf110c0  vsrl.p vr3, r1, vr1
0009cc  9f008000  addli r1, zero, 64
0009d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009d4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009d8  6af100c0  vsrl.p vr2, r1, vr0
0009dc  eaf110c0  vsrl.p vr3, r1, vr1
0009e0  9f004000  addli r1, zero, 32
0009e4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009e8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009ec  6af100c0  vsrl.p vr2, r1, vr0
0009f0  eaf110c0  vsrl.p vr3, r1, vr1
0009f4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009f8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009fc  fa100040  vextracti.f r1, 0(vr0)
000a00  7a910040  vextracti.f r2, 0(vr1)
000a04  8be11110  add.f.rn r3, r3, r1
000a08  8b642710  add.f.rn r9, r14, r2
000a0c  ab650000  lui r11, 6
000a10  2b670000  lui r14, 6
000a14  1b352600  slli r10, r12, 2
000a18  9f000000  addli r1, zero, 0
000a1c  1f010000  addli r2, zero, 0
000a20  9f850500  addli r11, r11, 0
000a24  1f070704  addli r14, r14, 512
000a28  9f880500  addli r17, r11, 0
000a2c  0b18e510  add.s r16, r10, r14
000a30  8b151511  add.s r11, r10, r17
000a34  73609800  stores.w r9, 0(r16)
000a38  9b144500  ori r9, r10, 4
000a3c  73e03500  stores.w r3, 0(r11)
000a40  0b951411  add.s r10, r9, r17
000a44  8b94e410  add.s r9, r9, r14
000a48  00a00300  mfence { lm, sm, gm }
000a4c  e3010fd7  loadli.w r3,  -5248(r30)
000a50  80a10104  csr_set csr3, r3
000a54  9b01e607  andi r3, r12, 126
000a58  00d00100  sync_group
000a5c  6f450500  loads.w r10, 0(r10)
000a60  efc40400  loads.w r9, 0(r9)
000a64  9bb12100  slli r3, r3, 2
000a68  8b951111  add.s r11, r3, r17
000a6c  8b91e110  add.s r3, r3, r14
000a70  efc50500  loads.w r11, 0(r11)
000a74  efc10100  loads.w r3, 0(r3)
000a78  0b65b510  add.f.rn r10, r10, r11
000a7c  ab05003a  lui r11, 237568
000a80  8be13410  add.f.rn r3, r9, r3
000a84  8b64b520  mul.f.rn r9, r10, r11
000a88  8be1b120  mul.f.rn r3, r3, r11
000a8c  9f050000  addli r11, zero, 0
000a90  0be59420  mul.f.rn r10, r9, r9
000a94  8be1a118  sub.f.rn r3, r3, r10
000a98  63053f00  loadli.w r10,  24(r30)
000a9c  8be1a110  add.f.rn r3, r3, r10
000aa0  0be50458  neg.f r10, r9
000aa4  8f810108  sqrt.f.rn r3, r3
000aa8  8f813618  div.f.rn r3, r13, r3
000aac  8b142a10  add.s r9, r20, r2
000ab0  0b182910  add.s r16, r18, r2
000ab4  8b982910  add.s r17, r19, r2
000ab8  9f854500  addli r11, r11, 32
000abc  1f010101  addli r2, r2, 128
000ac0  42900402  vload_mask16.mz vr0{mr1}, 0(r9)
000ac4  ca100802  vloads_mask16.mz vr1{mr1}, 0(r16)
000ac8  4a910802  vloads_mask16.mz vr2{mr1}, 0(r17)
000acc  9f848400  addli r9, r9, 64
000ad0  c2910402  vload_mask16.mz vr3{mr1}, 0(r9)
000ad4  9f048800  addli r9, r16, 64
000ad8  1f888800  addli r16, r17, 64
000adc  4a920402  vloads_mask16.mz vr4{mr1}, 0(r9)
000ae0  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
000ae4  93845504  setlt.u r9, r11, r5
000ae8  0b181a10  add.s r16, r20, r1
000aec  9f808000  addli r1, r1, 64
000af0  12100502  vadd.f.mz.rn vr0{mr1}, r10, vr0
000af4  92113502  vadd.f.mz.rn vr3{mr1}, r10, vr3
000af8  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
000afc  8a913102  vmul.f.mz.rn vr3{mr1}, r3, vr3
000b00  26111002  vmac.f.mz.rn vr2{mr1}, vr0, vr1
000b04  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000b08  6aa01c22  vor.u.mz vr0{mr1}, r25, vr1
000b0c  a6924102  vmac.f.mz.rn vr5{mr1}, vr3, vr4
000b10  6a221e22  vor.u.mz vr4{mr1}, r28, vr1
000b14  ee3120c2  vsrl.s.mz vr3{mr1}, vr0, vr2
000b18  6e3050c2  vsrl.s.mz vr0{mr1}, vr0, vr5
000b1c  ea313302  vand.s.mz vr3{mr1}, r6, vr3
000b20  6a300302  vand.s.mz vr0{mr1}, r6, vr0
000b24  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
000b28  ea211b22  vor.u.mz vr3{mr1}, r22, vr1
000b2c  ea201d22  vor.u.mz vr1{mr1}, r26, vr1
000b30  16b00202  vadd.s.mz vr0{mr1}, vr5, vr0
000b34  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
000b38  12b00a02  vadd.s.mz vr0{mr1}, r21, vr0
000b3c  eeb221c2  vsrl.s.mz vr5{mr1}, vr3, vr2
000b40  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
000b44  6e3202c2  vsrl.s.mz vr4{mr1}, vr4, vr0
000b48  6eb001c2  vsrl.s.mz vr0{mr1}, vr3, vr0
000b4c  6a312c02  vand.s.mz vr2{mr1}, r24, vr2
000b50  ea325202  vand.s.mz vr5{mr1}, r4, vr5
000b54  ea314c02  vand.s.mz vr3{mr1}, r24, vr4
000b58  6a300202  vand.s.mz vr0{mr1}, r4, vr0
000b5c  6ab12622  vor.s.mz vr2{mr1}, r13, vr2
000b60  6ab25622  vor.s.mz vr4{mr1}, r13, vr5
000b64  6ab00622  vor.s.mz vr0{mr1}, r13, vr0
000b68  eab13622  vor.s.mz vr3{mr1}, r13, vr3
000b6c  06110120  vfloat2fp16_l.rz vr2, vr2
000b70  06500020  vfloat2fp16_h.rz vr0, vr0
000b74  06d10120  vfloat2fp16_h.rz vr2, vr3
000b78  06100220  vfloat2fp16_l.rz vr0, vr4
000b7c  eeb020a2  vsll.s.mz vr1{mr1}, vr1, vr2
000b80  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000b84  ea301402  vand.s.mz vr1{mr1}, r8, vr1
000b88  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
000b8c  46000802  vstore.mz vr0{mr1}, 0(r16)
000b90  3bfc04fe  bneq r9, zero, -228
000b94  9f058fd6  addli r11, r30, -5312
000b98  6b510f00  load.d r[3:4], 0(r30)
000b9c  6308ffd3  loadli.w r16,  -5640(r30)
000ba0  ab0000f0  lui r1, 983040
000ba4  1f070003  addli r14, zero, 384
000ba8  9f787000  addli r17, zero, 63
000bac  ebd40500  load.d r[10:11], 0(r11)
000bb0  00a00000  mfence { lm }
000bb4  97101800  or r1, r16, r1
000bb8  0b219110  add.ul r[3:4], r[3:4], r[10:11]
000bbc  ff304101  s_lm2gm r1, r20, 0(r[3:4])
000bc0  9f000fd5  addli r1, r30, -5504
000bc4  00a00200  mfence { lm, gm }
000bc8  e3441f00  loadli.w r9,  12(r30)
000bcc  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000bd0  e3010fd4  loadli.w r3,  -5632(r30)
000bd4  e345ffd3  loadli.w r11,  -5636(r30)
000bd8  8b933310  add.s r7, r7, r3
000bdc  3ff393fc  blt.s r7, r9, -1828
000be0  abf00000  lui r1, 15
000be4  9b90f0ff  ori r1, r1, 4095
000be8  80a10004  csr_set csr3, r1
000bec  00d00100  sync_group
000bf0  5be80a00  j 22336
000bf4  e3403f00  loadli.w r1,  28(r30)
000bf8  b7a2000a  beq r1, zero, 5288
000bfc  e3002f00  loadli.w r1,  16(r30)
000c00  1f010010  addli r2, zero, 2048
000c04  3bd22012  bneq r1, r2, 9364
000c08  00350002  core_id r10
000c0c  9f200000  addli r1, zero, 2
000c10  b76e1524  beq r10, r1, 19384
000c14  9f100000  addli r1, zero, 1
000c18  b75d1524  beq r10, r1, 19316
000c1c  3b1f0524  bneq r10, zero, 19396
000c20  9f000040  addli r1, zero, 8192
000c24  2b0100f0  lui r2, 983040
000c28  97902000  or r1, r1, r2
000c2c  2b110200  lui r2, 33
000c30  1f010100  addli r2, r2, 0
000c34  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000c38  5b750900  j 19368
000c3c  e3403f00  loadli.w r1,  28(r30)
000c40  b7830010  beq r1, zero, 8416
000c44  80300002  core_id r1
000c48  1f210000  addli r2, zero, 2
000c4c  b7cd2022  beq r1, r2, 18288
000c50  1f110000  addli r2, zero, 1
000c54  37c52020  beq r1, r2, 16720
000c58  3b8e0022  bneq r1, zero, 18304
000c5c  63012f00  loadli.w r2,  16(r30)
000c60  ab0100f0  lui r3, 983040
000c64  1b311100  slli r2, r2, 1
000c68  17113100  or r2, r2, r3
000c6c  abd10100  lui r3, 29
000c70  9f810100  addli r3, r3, 0
000c74  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000c78  5bec0800  j 18272
000c7c  e3002f00  loadli.w r1,  16(r30)
000c80  1f010010  addli r2, zero, 2048
000c84  3bdb2006  bneq r1, r2, 3796
000c88  e3403f00  loadli.w r1,  28(r30)
000c8c  37c5001a  beq r1, zero, 13648
000c90  003d0002  core_id r26
000c94  abd70000  lui r15, 13
000c98  00510102  load_param_i r2, 2
000c9c  1f150000  addli r10, zero, 1
000ca0  9f058fd7  addli r11, r30, -5184
000ca4  1f068000  addli r12, zero, 64
000ca8  9f060010  addli r13, zero, 2048
000cac  9b305d00  slli r1, r26, 5
000cb0  9b315100  slli r3, r2, 5
000cb4  9f8707f0  addli r15, r15, -2048
000cb8  1f870000  addli r14, r1, 0
000cbc  33080728  zext_int2long r[17:18], r14
000cc0  2b0900f0  lui r18, 983040
000cc4  1738a802  sll.d r[17:18], r[17:18], r10
000cc8  17192601  or r18, r12, r18
000ccc  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000cd0  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000cd4  1b382700  slli r16, r14, 2
000cd8  0b97e110  add.s r14, r3, r14
000cdc  00a00200  mfence { lm, gm }
000ce0  42800502  vload.mz vr0{mr1}, 0(r11)
000ce4  9308d704  setlt.u r17, r14, r13
000ce8  0b18f810  add.s r16, r16, r15
000cec  1f098800  addli r18, r16, 64
000cf0  86300000  vfp162float_l.rn vr1, vr0
000cf4  06700000  vfp162float_h.rn vr0, vr0
000cf8  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000cfc  4e100902  vstores_mask16.mz vr0{mr1}, 0(r18)
000d00  bbfe08fe  bneq r17, zero, -68
000d04  abf20000  lui r5, 15
000d08  1b357d00  slli r10, r26, 7
000d0c  1b327100  slli r4, r2, 7
000d10  1f160000  addli r12, zero, 1
000d14  9f068fd7  addli r13, r30, -5184
000d18  1f078000  addli r14, zero, 64
000d1c  1f080010  addli r16, zero, 2048
000d20  9f880000  addli r17, r1, 0
000d24  00a00000  mfence { lm }
000d28  9f8202f0  addli r5, r5, -2048
000d2c  8b155510  add.s r11, r10, r5
000d30  33890828  zext_int2long r[19:20], r17
000d34  2b0a00f0  lui r20, 983040
000d38  8b983810  add.s r17, r17, r3
000d3c  1739c902  sll.d r[19:20], r[19:20], r12
000d40  171a4701  or r20, r14, r20
000d44  0b292311  add.ul r[19:20], r[7:8], r[19:20]
000d48  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
000d4c  13890805  setlt.u r18, r17, r16
000d50  9f898500  addli r19, r11, 64
000d54  00a00200  mfence { lm, gm }
000d58  42800602  vload.mz vr0{mr1}, 0(r13)
000d5c  86300000  vfp162float_l.rn vr1, vr0
000d60  06700000  vfp162float_h.rn vr0, vr0
000d64  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
000d68  8b954510  add.s r11, r11, r4
000d6c  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
000d70  3b0f09fe  bneq r18, zero, -64
000d74  ab130100  lui r7, 17
000d78  9f058fd7  addli r11, r30, -5184
000d7c  1f068000  addli r12, zero, 64
000d80  9f060010  addli r13, zero, 2048
000d84  00a00000  mfence { lm }
000d88  9f8303f0  addli r7, r7, -2048
000d8c  0b137510  add.s r6, r10, r7
000d90  1f150000  addli r10, zero, 1
000d94  33880028  zext_int2long r[17:18], r1
000d98  2b0700f0  lui r14, 983040
000d9c  8b903010  add.s r1, r1, r3
000da0  1738a802  sll.d r[17:18], r[17:18], r10
000da4  1717e600  or r14, r12, r14
000da8  0b280411  add.ul r[17:18], r[9:10], r[17:18]
000dac  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000db0  1387d004  setlt.u r14, r1, r13
000db4  1f088300  addli r16, r6, 64
000db8  00a00200  mfence { lm, gm }
000dbc  42800502  vload.mz vr0{mr1}, 0(r11)
000dc0  86300000  vfp162float_l.rn vr1, vr0
000dc4  06700000  vfp162float_h.rn vr0, vr0
000dc8  4e101302  vstores_mask16.mz vr1{mr1}, 0(r6)
000dcc  0b134310  add.s r6, r6, r4
000dd0  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
000dd4  3b0f07fe  bneq r14, zero, -64
000dd8  abf00000  lui r1, 15
000ddc  00a00300  mfence { lm, sm, gm }
000de0  9b011d00  andi r3, r26, 1
000de4  1f020006  addli r4, zero, 768
000de8  9b90f0ff  ori r1, r1, 4095
000dec  80a10004  csr_set csr3, r1
000df0  9f000006  addli r1, zero, 768
000df4  00d00100  sync_group
000df8  67083fd6  storeli.w r3, -5248(r30)
000dfc  37a00100  beq r3, zero, 8
000e00  1f02000a  addli r4, zero, 1280
000e04  e3411f00  loadli.w r3,  12(r30)
000e08  1f130000  addli r6, zero, 1
000e0c  bf94612a  blt.s r3, r6, 21796
000e10  e3010fd7  loadli.w r3,  -5248(r30)
000e14  1f088fd7  addli r16, r30, -5184
000e18  1b441100  srli r8, r2, 1
000e1c  1f014200  addli r2, r4, 32
000e20  9b351200  slli r11, r4, 1
000e24  ab3d0100  lui r27, 19
000e28  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000e2c  1f030000  addli r6, zero, 0
000e30  9b441d00  srli r9, r26, 1
000e34  1f7a7000  addli r20, zero, 63
000e38  9f0b0005  addli r23, zero, 640
000e3c  1f054000  addli r10, zero, 32
000e40  1f0b0003  addli r22, zero, 384
000e44  670c2fd4  storeli.w r2, -5440(r30)
000e48  0b910511  add.s r2, r11, r16
000e4c  9f8d0df0  addli r27, r27, -2048
000e50  8b901120  mul.s r1, r3, r1
000e54  67041fd6  storeli.w r1, -5312(r30)
000e58  9bb02000  slli r1, r1, 2
000e5c  0b965010  add.s r12, r1, r5
000e60  8b967010  add.s r13, r1, r7
000e64  9b302200  slli r1, r4, 2
000e68  ab320100  lui r5, 19
000e6c  8b900011  add.s r1, r1, r16
000e70  9f8202f4  addli r5, r5, -1536
000e74  9f8080ff  addli r1, r1, -64
000e78  67081fd4  storeli.w r1, -5504(r30)
000e7c  9f0081ff  addli r1, r2, -64
000e80  1f010fd4  addli r2, r30, -5632
000e84  67041fd4  storeli.w r1, -5568(r30)
000e88  abf0ffff  lui r1, 1048575
000e8c  00a00000  mfence { lm }
000e90  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000e94  63411f00  loadli.w r2,  12(r30)
000e98  9b9000f8  ori r1, r1, 3968
000e9c  e74f1fd2  storeli.w r1, -5636(r30)
000ea0  abf00000  lui r1, 15
000ea4  1b9ef0ff  ori r28, r1, 4095
000ea8  5b040000  j 32
000eac  00a00300  mfence { lm, sm, gm }
000eb0  80210e04  csr_set csr3, r28
000eb4  00d00100  sync_group
000eb8  63411f00  loadli.w r2,  12(r30)
000ebc  0b138310  add.s r6, r6, r8
000ec0  3f202300  blt.s r6, r2, 8
000ec4  dba3ffff  j -740
000ec8  8b109310  add.s r1, r6, r9
000ecc  cb0f11fe  ble.s r2, r1, -32
000ed0  63011f00  loadli.w r2,  8(r30)
000ed4  e3018fd6  loadli.w r3,  -5312(r30)
000ed8  8b902010  add.s r1, r1, r2
000edc  0b018330  div.u r2, r6, r8
000ee0  9bb0b000  slli r1, r1, 11
000ee4  97903000  or r1, r1, r3
000ee8  9f110000  addli r3, zero, 1
000eec  b3980028  sext_int2long r[18:19], r1
000ef0  ab0000f0  lui r1, 983040
000ef4  1b316100  slli r2, r2, 6
000ef8  97b83802  sll.d r[18:19], r[18:19], r3
000efc  9f017fd6  addli r3, r30, -5320
000f00  97901500  or r1, r11, r1
000f04  1b010104  andi r2, r2, 64
000f08  6bdc0100  load.d r[25:26], 0(r3)
000f0c  1711a101  or r2, r2, r26
000f10  0b2c1c11  add.ul r[25:26], r[25:26], r[18:19]
000f14  ff200c01  l_gm2lm r1, r16, 0(r[25:26])
000f18  00a00200  mfence { lm, gm }
000f1c  e3008fd4  loadli.w r1,  -5568(r30)
000f20  e3010fd5  loadli.w r3,  -5504(r30)
000f24  e3038fd5  loadli.w r7,  -5440(r30)
000f28  c2800002  vload.mz vr1{mr1}, 0(r1)
000f2c  9f83c3ff  addli r7, r7, -32
000f30  9f8981ff  addli r19, r3, -64
000f34  9f8080ff  addli r1, r1, -64
000f38  13077a04  setlt.u r14, r20, r7
000f3c  06f10000  vfp162float_h.rn vr2, vr1
000f40  86b00000  vfp162float_l.rn vr1, vr1
000f44  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
000f48  9f8101ff  addli r3, r3, -128
000f4c  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
000f50  3b6f07fe  bneq r14, zero, -40
000f54  00a00000  mfence { lm }
000f58  e3000fd7  loadli.w r1,  -5248(r30)
000f5c  3bc60000  bneq r1, zero, 400
000f60  9f000fd4  addli r1, r30, -5632
000f64  6347ffd3  loadli.w r14,  -5636(r30)
000f68  9f010000  addli r3, zero, 0
000f6c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000f70  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000f74  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000f78  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000f7c  8b90f110  add.s r1, r3, r15
000f80  8b133810  add.s r7, r16, r3
000f84  1f070701  addli r14, r14, 128
000f88  9f810104  addli r3, r3, 512
000f8c  9f890001  addli r19, r1, 128
000f90  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
000f94  9f8a8000  addli r21, r1, 64
000f98  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
000f9c  1f8c8301  addli r24, r7, 192
000fa0  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
000fa4  9f898001  addli r19, r1, 192
000fa8  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
000fac  9f8a8300  addli r21, r7, 64
000fb0  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
000fb4  ca930902  vloads_mask16.mz vr7{mr1}, 0(r19)
000fb8  9f890301  addli r19, r7, 128
000fbc  42950a02  vload_mask16.mz vr10{mr1}, 0(r21)
000fc0  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
000fc4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
000fc8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
000fcc  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
000fd0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
000fd4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000fd8  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
000fdc  46908902  vstore_mask16.mz vr8{mr1}, 0(r19)
000fe0  9f890002  addli r19, r1, 256
000fe4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000fe8  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
000fec  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000ff0  46905a02  vstore_mask16.mz vr5{mr1}, 0(r21)
000ff4  4a900902  vloads_mask16.mz vr0{mr1}, 0(r19)
000ff8  9f898002  addli r19, r1, 320
000ffc  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
001000  1f8c0302  addli r24, r7, 256
001004  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001008  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00100c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001010  4a930902  vloads_mask16.mz vr6{mr1}, 0(r19)
001014  9f890003  addli r19, r1, 384
001018  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
00101c  9f808003  addli r1, r1, 448
001020  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001024  4a940902  vloads_mask16.mz vr8{mr1}, 0(r19)
001028  9f898302  addli r19, r7, 320
00102c  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
001030  9f800303  addli r1, r7, 384
001034  9f838303  addli r7, r7, 448
001038  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
00103c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001040  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001044  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001048  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
00104c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001050  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001054  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
001058  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00105c  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
001060  93097705  setlt.u r19, r14, r23
001064  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001068  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00106c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001070  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001074  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001078  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00107c  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001080  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001084  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001088  bbdb09fe  bneq r19, zero, -268
00108c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001090  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001094  9f000002  addli r1, zero, 256
001098  6af100c0  vsrl.p vr2, r1, vr0
00109c  eaf110c0  vsrl.p vr3, r1, vr1
0010a0  9f000001  addli r1, zero, 128
0010a4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010a8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010ac  6af100c0  vsrl.p vr2, r1, vr0
0010b0  eaf110c0  vsrl.p vr3, r1, vr1
0010b4  9f008000  addli r1, zero, 64
0010b8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010bc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010c0  6af100c0  vsrl.p vr2, r1, vr0
0010c4  eaf110c0  vsrl.p vr3, r1, vr1
0010c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010d0  6a7105c0  vsrl.p vr2, r10, vr0
0010d4  ea7115c0  vsrl.p vr3, r10, vr1
0010d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010e0  fa100040  vextracti.f r1, 0(vr0)
0010e4  fa930040  vextracti.f r7, 0(vr1)
0010e8  db650000  j 812
0010ec  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0010f0  abf0ffff  lui r1, 1048575
0010f4  9f010000  addli r3, zero, 0
0010f8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0010fc  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001100  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001104  1b9700f8  ori r14, r1, 3968
001108  8b933710  add.s r7, r15, r3
00110c  8b193810  add.s r19, r16, r3
001110  1f070701  addli r14, r14, 128
001114  9f810104  addli r3, r3, 512
001118  1f8c0331  addli r24, r7, 6272
00111c  9f800330  addli r1, r7, 6144
001120  9f8c8331  addli r25, r7, 6336
001124  9f8a0918  addli r21, r19, 3072
001128  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
00112c  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
001130  9f808330  addli r1, r7, 6208
001134  ca940c02  vloads_mask16.mz vr9{mr1}, 0(r25)
001138  1f8c0919  addli r24, r19, 3200
00113c  42930a02  vload_mask16.mz vr6{mr1}, 0(r21)
001140  9f8c8919  addli r25, r19, 3264
001144  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
001148  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
00114c  9f808918  addli r1, r19, 3136
001150  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
001154  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
001158  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
00115c  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
001160  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
001164  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
001168  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00116c  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
001170  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
001174  9f8a0332  addli r21, r7, 6400
001178  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
00117c  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
001180  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001184  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
001188  1f8c091a  addli r24, r19, 3328
00118c  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
001190  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001194  9f80091b  addli r1, r19, 3456
001198  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
00119c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0011a0  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
0011a4  9f8a8332  addli r21, r7, 6464
0011a8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0011ac  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0011b0  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
0011b4  9f8a0333  addli r21, r7, 6528
0011b8  9f838333  addli r7, r7, 6592
0011bc  4a940a02  vloads_mask16.mz vr8{mr1}, 0(r21)
0011c0  9f8a891a  addli r21, r19, 3392
0011c4  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
0011c8  9f83891b  addli r7, r19, 3520
0011cc  93096705  setlt.u r19, r14, r22
0011d0  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
0011d4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0011d8  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0011dc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0011e0  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0011e4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0011e8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0011ec  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
0011f0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0011f4  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
0011f8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0011fc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001200  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001204  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001208  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00120c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001210  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001214  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001218  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00121c  bbbb09fe  bneq r19, zero, -276
001220  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001224  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001228  9f000002  addli r1, zero, 256
00122c  9f0a0000  addli r21, zero, 0
001230  eaf110c0  vsrl.p vr3, r1, vr1
001234  6af100c0  vsrl.p vr2, r1, vr0
001238  9f000001  addli r1, zero, 128
00123c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001240  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001244  eaf110c0  vsrl.p vr3, r1, vr1
001248  6af100c0  vsrl.p vr2, r1, vr0
00124c  9f008000  addli r1, zero, 64
001250  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001254  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001258  eaf110c0  vsrl.p vr3, r1, vr1
00125c  6af100c0  vsrl.p vr2, r1, vr0
001260  abf0ffff  lui r1, 1048575
001264  9b9900f8  ori r19, r1, 3968
001268  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00126c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001270  ea7115c0  vsrl.p vr3, r10, vr1
001274  6a7105c0  vsrl.p vr2, r10, vr0
001278  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00127c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001280  7a970040  vextracti.f r14, 0(vr1)
001284  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001288  fa110040  vextracti.f r3, 0(vr0)
00128c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001290  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001294  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001298  8b905711  add.s r1, r15, r21
00129c  8b135811  add.s r7, r16, r21
0012a0  9f890901  addli r19, r19, 128
0012a4  9f8a0a04  addli r21, r21, 512
0012a8  1f8c0018  addli r24, r1, 3072
0012ac  9f8c0019  addli r25, r1, 3200
0012b0  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
0012b4  1f8d8301  addli r26, r7, 192
0012b8  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
0012bc  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
0012c0  1f8c8018  addli r24, r1, 3136
0012c4  9f8c8019  addli r25, r1, 3264
0012c8  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
0012cc  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0012d0  1f8c0301  addli r24, r7, 128
0012d4  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
0012d8  9f8c8300  addli r25, r7, 64
0012dc  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
0012e0  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
0012e4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0012e8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0012ec  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0012f0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0012f4  46108c02  vstore_mask16.mz vr8{mr1}, 0(r24)
0012f8  1f8c001a  addli r24, r1, 3328
0012fc  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
001300  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001304  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
001308  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00130c  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
001310  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
001314  1f8c801a  addli r24, r1, 3392
001318  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
00131c  1f8d0302  addli r26, r7, 256
001320  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
001324  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
001328  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00132c  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
001330  1f8c001b  addli r24, r1, 3456
001334  c2130d02  vload_mask16.mz vr7{mr1}, 0(r26)
001338  9f80801b  addli r1, r1, 3520
00133c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001340  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001344  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
001348  1f8c8302  addli r24, r7, 320
00134c  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
001350  9f800303  addli r1, r7, 384
001354  9f838303  addli r7, r7, 448
001358  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
00135c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001360  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001364  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001368  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
00136c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001370  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001374  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
001378  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00137c  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
001380  138c7905  setlt.u r24, r19, r23
001384  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001388  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00138c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001390  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001394  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001398  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00139c  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
0013a0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0013a4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0013a8  bb4b0cfe  bneq r24, zero, -272
0013ac  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0013b0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0013b4  9f000002  addli r1, zero, 256
0013b8  003d0002  core_id r26
0013bc  6af100c0  vsrl.p vr2, r1, vr0
0013c0  eaf110c0  vsrl.p vr3, r1, vr1
0013c4  9f000001  addli r1, zero, 128
0013c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013d0  6af100c0  vsrl.p vr2, r1, vr0
0013d4  eaf110c0  vsrl.p vr3, r1, vr1
0013d8  9f008000  addli r1, zero, 64
0013dc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013e0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013e4  6af100c0  vsrl.p vr2, r1, vr0
0013e8  eaf110c0  vsrl.p vr3, r1, vr1
0013ec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013f0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013f4  6a7105c0  vsrl.p vr2, r10, vr0
0013f8  ea7115c0  vsrl.p vr3, r10, vr1
0013fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001400  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001404  fa100040  vextracti.f r1, 0(vr0)
001408  fa930040  vextracti.f r7, 0(vr1)
00140c  8be01110  add.f.rn r1, r3, r1
001410  8b637710  add.f.rn r7, r14, r7
001414  9b392100  slli r19, r2, 2
001418  9f010000  addli r3, zero, 0
00141c  1f070000  addli r14, zero, 0
001420  8b9ab911  add.s r21, r19, r27
001424  0b9c5910  add.s r24, r19, r5
001428  73e01a00  stores.w r1, 0(r21)
00142c  9b00e107  andi r1, r2, 126
001430  1b914900  ori r2, r19, 4
001434  73607c00  stores.w r7, 0(r24)
001438  00a00300  mfence { lm, sm, gm }
00143c  80210e04  csr_set csr3, r28
001440  00d00100  sync_group
001444  9bb02000  slli r1, r1, 2
001448  8b13b111  add.s r7, r2, r27
00144c  0b115110  add.s r2, r2, r5
001450  8b99b011  add.s r19, r1, r27
001454  efc30300  loads.w r7, 0(r7)
001458  8b905010  add.s r1, r1, r5
00145c  6f410100  loads.w r2, 0(r2)
001460  efc90900  loads.w r19, 0(r19)
001464  efc00000  loads.w r1, 0(r1)
001468  8be33311  add.f.rn r7, r7, r19
00146c  ab09003a  lui r19, 237568
001470  8b601110  add.f.rn r1, r2, r1
001474  0be13321  mul.f.rn r2, r7, r19
001478  8be03021  mul.f.rn r1, r1, r19
00147c  8b632120  mul.f.rn r7, r2, r2
001480  0b610158  neg.f r2, r2
001484  8be07018  sub.f.rn r1, r1, r7
001488  e3033f00  loadli.w r7,  24(r30)
00148c  8be07010  add.f.rn r1, r1, r7
001490  ab03803f  lui r7, 260096
001494  8f800008  sqrt.f.rn r1, r1
001498  8f801318  div.f.rn r1, r7, r1
00149c  9f030000  addli r7, zero, 0
0014a0  8b19e810  add.s r19, r16, r14
0014a4  8b1ae610  add.s r21, r12, r14
0014a8  0b9ce610  add.s r24, r13, r14
0014ac  9f834300  addli r7, r7, 32
0014b0  1f070701  addli r14, r14, 128
0014b4  42900902  vload_mask16.mz vr0{mr1}, 0(r19)
0014b8  9f8c8900  addli r25, r19, 64
0014bc  9f898a00  addli r19, r21, 64
0014c0  4a910a02  vloads_mask16.mz vr2{mr1}, 0(r21)
0014c4  4a120c02  vloads_mask16.mz vr4{mr1}, 0(r24)
0014c8  8b1a3810  add.s r21, r16, r3
0014cc  9f818100  addli r3, r3, 64
0014d0  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
0014d4  9f098c00  addli r19, r24, 64
0014d8  c2900c02  vload_mask16.mz vr1{mr1}, 0(r25)
0014dc  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
0014e0  93894304  setlt.u r19, r7, r4
0014e4  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
0014e8  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0014ec  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
0014f0  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0014f4  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
0014f8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0014fc  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
001500  06100200  vfloat2fp16_l.rn vr0, vr4
001504  06d00200  vfloat2fp16_h.rn vr0, vr5
001508  46800a02  vstore.mz vr0{mr1}, 0(r21)
00150c  3bde09fe  bneq r19, zero, -108
001510  6b510f00  load.d r[3:4], 0(r30)
001514  ab0000f0  lui r1, 983040
001518  00a00000  mfence { lm }
00151c  97901500  or r1, r11, r1
001520  0b211111  add.ul r[3:4], r[3:4], r[18:19]
001524  ff300101  s_lm2gm r1, r16, 0(r[3:4])
001528  00a00200  mfence { lm, gm }
00152c  db31ffff  j -1652
001530  e3403f00  loadli.w r1,  28(r30)
001534  37fe0012  beq r1, zero, 10140
001538  803b0002  core_id r23
00153c  63012f00  loadli.w r2,  16(r30)
001540  805c0102  load_param_i r25, 2
001544  9bb05b00  slli r1, r23, 5
001548  4b431100  ble.s r2, r1, 208
00154c  2b960000  lui r12, 9
001550  9f110000  addli r3, zero, 1
001554  1f058fd7  addli r10, r30, -5184
001558  9f058000  addli r11, zero, 64
00155c  1bb15c00  slli r2, r25, 5
001560  9f860000  addli r13, r1, 0
001564  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001568  1f0606f0  addli r12, r12, -2048
00156c  33880628  zext_int2long r[17:18], r13
001570  2b0900f0  lui r18, 983040
001574  17383802  sll.d r[17:18], r[17:18], r3
001578  17992501  or r18, r11, r18
00157c  0b280211  add.ul r[17:18], r[5:6], r[17:18]
001580  7f29a800  l_gm2lm r18, r10, 0(r[17:18])
001584  1bb82600  slli r16, r13, 2
001588  8b16d110  add.s r13, r2, r13
00158c  00a00200  mfence { lm, gm }
001590  c2000502  vload.mz vr1{mr1}, 0(r10)
001594  0b18c810  add.s r16, r16, r12
001598  9f088800  addli r17, r16, 64
00159c  66411080  vmerge_l.hf vr2, vr0, vr1
0015a0  e64010a0  vmerge_h.hf vr1, vr0, vr1
0015a4  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
0015a8  4e901802  vstores_mask16.mz vr1{mr1}, 0(r17)
0015ac  3f8ff6fe  blt.s r13, r15, -64
0015b0  2ba20000  lui r4, 10
0015b4  9bb17b00  slli r3, r23, 7
0015b8  9f120000  addli r5, zero, 1
0015bc  1f058fd7  addli r10, r30, -5184
0015c0  9f058000  addli r11, zero, 64
0015c4  1f860000  addli r12, r1, 0
0015c8  00a00000  mfence { lm }
0015cc  1f0202f0  addli r4, r4, -2048
0015d0  8b914110  add.s r3, r3, r4
0015d4  1bb27c00  slli r4, r25, 7
0015d8  33080628  zext_int2long r[17:18], r12
0015dc  ab0600f0  lui r13, 983040
0015e0  0b162610  add.s r12, r12, r2
0015e4  17385802  sll.d r[17:18], r[17:18], r5
0015e8  9796d500  or r13, r11, r13
0015ec  0b280311  add.ul r[17:18], r[7:8], r[17:18]
0015f0  ff26a800  l_gm2lm r13, r10, 0(r[17:18])
0015f4  9f868100  addli r13, r3, 64
0015f8  00a00200  mfence { lm, gm }
0015fc  c2000502  vload.mz vr1{mr1}, 0(r10)
001600  66411080  vmerge_l.hf vr2, vr0, vr1
001604  e64010a0  vmerge_h.hf vr1, vr0, vr1
001608  4e902102  vstores_mask16.mz vr2{mr1}, 0(r3)
00160c  8b914110  add.s r3, r3, r4
001610  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
001614  3f1ff6fe  blt.s r12, r15, -60
001618  63012f00  loadli.w r2,  16(r30)
00161c  cb211100  ble.s r2, r1, 104
001620  2bb30000  lui r6, 11
001624  1f110000  addli r2, zero, 1
001628  9f018fd7  addli r3, r30, -5184
00162c  1f028000  addli r4, zero, 64
001630  9bb25c00  slli r5, r25, 5
001634  00a00000  mfence { lm }
001638  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00163c  1f0303f0  addli r6, r6, -2048
001640  33850028  zext_int2long r[11:12], r1
001644  ab0300f0  lui r7, 983040
001648  17352502  sll.d r[11:12], r[11:12], r2
00164c  97137200  or r7, r4, r7
001650  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001654  ff233500  l_gm2lm r7, r3, 0(r[11:12])
001658  9bb32000  slli r7, r1, 2
00165c  8b901210  add.s r1, r5, r1
001660  00a00200  mfence { lm, gm }
001664  c2800102  vload.mz vr1{mr1}, 0(r3)
001668  8b936310  add.s r7, r7, r6
00166c  1f858300  addli r10, r7, 64
001670  66411080  vmerge_l.hf vr2, vr0, vr1
001674  e64010a0  vmerge_h.hf vr1, vr0, vr1
001678  4e902302  vstores_mask16.mz vr2{mr1}, 0(r7)
00167c  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001680  3f8ff0fe  blt.s r1, r15, -64
001684  abf00000  lui r1, 15
001688  63411f00  loadli.w r2,  12(r30)
00168c  00a00300  mfence { lm, sm, gm }
001690  9b90f0ff  ori r1, r1, 4095
001694  80a10004  csr_set csr3, r1
001698  00d00100  sync_group
00169c  4b527127  ble.s r2, r23, 19604
0016a0  e3002f00  loadli.w r1,  16(r30)
0016a4  63412f00  loadli.w r2,  20(r30)
0016a8  1f048fd7  addli r8, r30, -5184
0016ac  9f150000  addli r11, zero, 1
0016b0  1f064000  addli r12, zero, 32
0016b4  1f757000  addli r10, zero, 63
0016b8  9f080002  addli r17, zero, 256
0016bc  9f040001  addli r9, zero, 128
0016c0  1f0a8000  addli r20, zero, 64
0016c4  ab0a803f  lui r21, 260096
0016c8  2bed7f00  lui r26, 2046
0016cc  2bee0700  lui r28, 126
0016d0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0016d4  8b912010  add.s r3, r1, r2
0016d8  33820008  fix2float.rn r4, r1
0016dc  1bb31000  slli r6, r1, 1
0016e0  9bb22000  slli r5, r1, 2
0016e4  9f804000  addli r1, r1, 32
0016e8  9b392100  slli r19, r2, 2
0016ec  e70f1fd2  storeli.w r1, -5640(r30)
0016f0  8b908210  add.s r1, r5, r8
0016f4  9ff1f1ff  addli r3, r3, -1
0016f8  e74f4fd2  storeli.w r4, -5636(r30)
0016fc  0b922130  div.s r4, r3, r2
001700  9f8080ff  addli r1, r1, -64
001704  8b118310  add.s r3, r6, r8
001708  674f1fd2  storeli.w r1, -5644(r30)
00170c  9f8081ff  addli r1, r3, -64
001710  670f1fd2  storeli.w r1, -5648(r30)
001714  abf0ffff  lui r1, 1048575
001718  00a00000  mfence { lm }
00171c  67049fd5  storeli.w r25, -5568(r30)
001720  67006fd4  storeli.w r6, -5632(r30)
001724  9b90f0ff  ori r1, r1, 4095
001728  67041fd6  storeli.w r1, -5312(r30)
00172c  ab700000  lui r1, 7
001730  1b9cf0ff  ori r24, r1, 4095
001734  ab00ff03  lui r1, 16368
001738  1b9bf03f  ori r22, r1, 1023
00173c  abf000fc  lui r1, 1032207
001740  9b9300c0  ori r7, r1, 3072
001744  9f000fd7  addli r1, r30, -5248
001748  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00174c  db090000  j 76
001750  1f040fd5  addli r8, r30, -5504
001754  6b510f00  load.d r[3:4], 0(r30)
001758  ab0000f0  lui r1, 983040
00175c  1f757000  addli r10, zero, 63
001760  eb520400  load.d r[6:7], 0(r8)
001764  1f048fd7  addli r8, r30, -5184
001768  0b215110  add.ul r[3:4], r[3:4], r[6:7]
00176c  63030fd4  loadli.w r6,  -5632(r30)
001770  00a00000  mfence { lm }
001774  e30b8fd5  loadli.w r23,  -5440(r30)
001778  e30c8fd4  loadli.w r25,  -5568(r30)
00177c  97101300  or r1, r6, r1
001780  8b9b7c11  add.s r23, r25, r23
001784  ff308100  s_lm2gm r1, r8, 0(r[3:4])
001788  00a00200  mfence { lm, gm }
00178c  e3401f00  loadli.w r1,  12(r30)
001790  3fa01b00  blt.s r23, r1, 8
001794  db730900  j 19356
001798  e3001f00  loadli.w r1,  8(r30)
00179c  9f027fd6  addli r5, r30, -5320
0017a0  9f860900  addli r13, r19, 0
0017a4  8b901b10  add.s r1, r23, r1
0017a8  8b90f020  mul.s r1, r1, r15
0017ac  b3900028  sext_int2long r[2:3], r1
0017b0  17b9b002  sll.d r[19:20], r[2:3], r11
0017b4  6bd10200  load.d r[3:4], 0(r5)
0017b8  ab0000f0  lui r1, 983040
0017bc  9f020fd5  addli r5, r30, -5504
0017c0  97101300  or r1, r6, r1
0017c4  73b02201  store.d r[19:20], 0(r5)
0017c8  0b212111  add.ul r[3:4], r[3:4], r[19:20]
0017cc  ff208100  l_gm2lm r1, r8, 0(r[3:4])
0017d0  00a00200  mfence { lm, gm }
0017d4  bff0c700  blt.s r15, r12, 60
0017d8  e300efd3  loadli.w r1,  -5648(r30)
0017dc  6341efd3  loadli.w r2,  -5644(r30)
0017e0  e301ffd3  loadli.w r3,  -5640(r30)
0017e4  c2800002  vload.mz vr1{mr1}, 0(r1)
0017e8  9f81c1ff  addli r3, r3, -32
0017ec  1f0481ff  addli r8, r2, -64
0017f0  9f8080ff  addli r1, r1, -64
0017f4  93023504  setlt.u r5, r10, r3
0017f8  664110a0  vmerge_h.hf vr2, vr0, vr1
0017fc  e6401080  vmerge_l.hf vr1, vr0, vr1
001800  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
001804  1f0101ff  addli r2, r2, -128
001808  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
00180c  3bef02fe  bneq r5, zero, -40
001810  670c7fd5  storeli.w r23, -5440(r30)
001814  00a00000  mfence { lm }
001818  bf67b200  blt.s r4, r11, 504
00181c  1f050000  addli r10, zero, 0
001820  9f020000  addli r5, zero, 0
001824  1f040000  addli r8, zero, 0
001828  9f890600  addli r19, r13, 0
00182c  db0d0000  j 108
001830  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001834  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001838  1f140400  addli r8, r8, 1
00183c  6af108c0  vsrl.p vr2, r17, vr0
001840  eaf118c0  vsrl.p vr3, r17, vr1
001844  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001848  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00184c  6af104c0  vsrl.p vr2, r9, vr0
001850  eaf114c0  vsrl.p vr3, r9, vr1
001854  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001858  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00185c  6a710ac0  vsrl.p vr2, r20, vr0
001860  ea711ac0  vsrl.p vr3, r20, vr1
001864  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001868  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00186c  6a7106c0  vsrl.p vr2, r12, vr0
001870  ea7116c0  vsrl.p vr3, r12, vr1
001874  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001878  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00187c  fa100040  vextracti.f r1, 0(vr0)
001880  7a910040  vextracti.f r2, 0(vr1)
001884  0b651510  add.f.rn r10, r10, r1
001888  9f000fd7  addli r1, r30, -5248
00188c  8be22210  add.f.rn r5, r5, r2
001890  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001894  37264400  beq r8, r4, 392
001898  9f000400  addli r1, r8, 0
00189c  37401701  beq r14, r17, 16
0018a0  e3008fd6  loadli.w r1,  -5312(r30)
0018a4  97201400  xor r1, r8, r1
0018a8  8b101210  add.s r1, r4, r1
0018ac  0b91e020  mul.s r2, r1, r14
0018b0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0018b4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0018b8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0018bc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0018c0  0b912718  sub.s r2, r15, r2
0018c4  0b11e140  min.s r2, r2, r14
0018c8  bf2db1fe  blt.s r2, r11, -152
0018cc  1f030fd7  addli r6, r30, -5248
0018d0  ab960000  lui r13, 9
0018d4  9f010000  addli r3, zero, 0
0018d8  8b901920  mul.s r1, r19, r1
0018dc  1f098fd7  addli r18, r30, -5184
0018e0  42120302  vload_mask16.mz vr4{mr1}, 0(r6)
0018e4  9f8606f0  addli r13, r13, -2048
0018e8  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0018ec  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0018f0  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0018f4  8b9b1610  add.s r23, r13, r1
0018f8  0b181910  add.s r16, r18, r1
0018fc  9f8c8b00  addli r25, r23, 64
001900  ca920b02  vloads_mask16.mz vr5{mr1}, 0(r23)
001904  9f8d8b01  addli r27, r23, 192
001908  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
00190c  1f038801  addli r6, r16, 192
001910  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
001914  9f8c0b01  addli r25, r23, 128
001918  4a940d02  vloads_mask16.mz vr8{mr1}, 0(r27)
00191c  9f0d0801  addli r27, r16, 128
001920  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
001924  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
001928  c2950d02  vload_mask16.mz vr11{mr1}, 0(r27)
00192c  9f0c8800  addli r25, r16, 64
001930  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
001934  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001938  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
00193c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001940  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001944  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001948  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00194c  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
001950  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
001954  9f8c8100  addli r25, r3, 64
001958  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
00195c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001960  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001964  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001968  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00196c  46907d02  vstore_mask16.mz vr7{mr1}, 0(r27)
001970  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001974  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001978  cb6a91ff  ble.s r2, r25, -328
00197c  9f8c0b02  addli r25, r23, 256
001980  9f8d8b02  addli r27, r23, 320
001984  1f030802  addli r6, r16, 256
001988  9f810101  addli r3, r3, 128
00198c  9f860604  addli r13, r13, 512
001990  1f090904  addli r18, r18, 512
001994  4a900c02  vloads_mask16.mz vr0{mr1}, 0(r25)
001998  9f8c0b03  addli r25, r23, 384
00199c  9f8b8b03  addli r23, r23, 448
0019a0  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
0019a4  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
0019a8  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
0019ac  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
0019b0  9f0b0803  addli r23, r16, 384
0019b4  9f0c8802  addli r25, r16, 320
0019b8  1f088803  addli r16, r16, 448
0019bc  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
0019c0  c2940c02  vload_mask16.mz vr9{mr1}, 0(r25)
0019c4  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0019c8  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
0019cc  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0019d0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0019d4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0019d8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0019dc  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
0019e0  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
0019e4  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0019e8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0019ec  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0019f0  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
0019f4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0019f8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0019fc  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001a00  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001a04  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
001a08  bfbb21fe  blt.s r3, r2, -276
001a0c  dbc4ffff  j -476
001a10  9f020000  addli r5, zero, 0
001a14  1f050000  addli r10, zero, 0
001a18  9f890600  addli r19, r13, 0
001a1c  1f032000  addli r6, zero, 16
001a20  9f3b0000  addli r23, zero, 3
001a24  9f5c1000  addli r25, zero, 13
001a28  9f2d1000  addli r27, zero, 10
001a2c  00a00000  mfence { lm }
001a30  bf84b7fe  blt.s r15, r11, -736
001a34  6341ffd3  loadli.w r2,  -5636(r30)
001a38  abb60000  lui r13, 11
001a3c  9f000000  addli r1, zero, 0
001a40  1f048fd7  addli r8, r30, -5184
001a44  9f8606f0  addli r13, r13, -2048
001a48  8f012518  div.f.rn r3, r10, r2
001a4c  0f812218  div.f.rn r2, r5, r2
001a50  2ba50000  lui r10, 10
001a54  1f0505f0  addli r10, r10, -2048
001a58  8be23120  mul.f.rn r5, r3, r3
001a5c  8be10158  neg.f r3, r3
001a60  0b615118  sub.f.rn r2, r2, r5
001a64  e3023f00  loadli.w r5,  24(r30)
001a68  0b615110  add.f.rn r2, r2, r5
001a6c  9f028fd7  addli r5, r30, -5184
001a70  0f010108  sqrt.f.rn r2, r2
001a74  0f812a18  div.f.rn r2, r21, r2
001a78  1f088400  addli r16, r8, 64
001a7c  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
001a80  1f898600  addli r18, r13, 64
001a84  4a920602  vloads_mask16.mz vr4{mr1}, 0(r13)
001a88  ca110502  vloads_mask16.mz vr3{mr1}, 0(r10)
001a8c  9f804000  addli r1, r1, 32
001a90  9f860601  addli r13, r13, 128
001a94  1f040401  addli r8, r8, 128
001a98  42110802  vload_mask16.mz vr2{mr1}, 0(r16)
001a9c  1f088500  addli r16, r10, 64
001aa0  4a130902  vloads_mask16.mz vr6{mr1}, 0(r18)
001aa4  1f050501  addli r10, r10, 128
001aa8  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
001aac  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001ab0  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
001ab4  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
001ab8  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
001abc  26923002  vmac.f.mz.rn vr4{mr1}, vr1, vr3
001ac0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001ac4  ea211322  vor.u.mz vr3{mr1}, r6, vr1
001ac8  26135102  vmac.f.mz.rn vr6{mr1}, vr2, vr5
001acc  eaa21b22  vor.u.mz vr5{mr1}, r23, vr1
001ad0  6eb141c2  vsrl.s.mz vr2{mr1}, vr3, vr4
001ad4  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
001ad8  6ab12502  vand.s.mz vr2{mr1}, r11, vr2
001adc  eab13502  vand.s.mz vr3{mr1}, r11, vr3
001ae0  16312202  vadd.s.mz vr2{mr1}, vr4, vr2
001ae4  6aa21c22  vor.u.mz vr4{mr1}, r25, vr1
001ae8  eaa01d22  vor.u.mz vr1{mr1}, r27, vr1
001aec  96313302  vadd.s.mz vr3{mr1}, vr6, vr3
001af0  12312c02  vadd.s.mz vr2{mr1}, r24, vr2
001af4  92313c02  vadd.s.mz vr3{mr1}, r24, vr3
001af8  6e3322c2  vsrl.s.mz vr6{mr1}, vr4, vr2
001afc  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
001b00  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
001b04  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
001b08  ea326e02  vand.s.mz vr5{mr1}, r28, vr6
001b0c  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
001b10  6a324e02  vand.s.mz vr4{mr1}, r28, vr4
001b14  ea313d02  vand.s.mz vr3{mr1}, r26, vr3
001b18  6ab12a22  vor.s.mz vr2{mr1}, r21, vr2
001b1c  eab25a22  vor.s.mz vr5{mr1}, r21, vr5
001b20  6ab24a22  vor.s.mz vr4{mr1}, r21, vr4
001b24  eab13a22  vor.s.mz vr3{mr1}, r21, vr3
001b28  06110120  vfloat2fp16_l.rz vr2, vr2
001b2c  06520220  vfloat2fp16_h.rz vr4, vr4
001b30  06d10120  vfloat2fp16_h.rz vr2, vr3
001b34  06920220  vfloat2fp16_l.rz vr4, vr5
001b38  6a312b02  vand.s.mz vr2{mr1}, r22, vr2
001b3c  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
001b40  eab01302  vand.s.mz vr1{mr1}, r7, vr1
001b44  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
001b48  46801202  vstore.mz vr1{mr1}, 0(r5)
001b4c  9f828200  addli r5, r5, 64
001b50  bfacf0fe  blt.s r1, r15, -216
001b54  db7fffff  j -1028
001b58  e3403f00  loadli.w r1,  28(r30)
001b5c  b7f70016  beq r1, zero, 11772
001b60  80300002  core_id r1
001b64  e3012f00  loadli.w r3,  16(r30)
001b68  1bb15000  slli r2, r1, 5
001b6c  4bc32100  ble.s r3, r2, 208
001b70  2b580100  lui r16, 21
001b74  00550102  load_param_i r10, 2
001b78  9f150000  addli r11, zero, 1
001b7c  1f068fd7  addli r12, r30, -5184
001b80  9f068000  addli r13, zero, 64
001b84  9f080100  addli r17, r2, 0
001b88  9b315500  slli r3, r10, 5
001b8c  1f080800  addli r16, r16, 0
001b90  33890828  zext_int2long r[19:20], r17
001b94  2b0a00f0  lui r20, 983040
001b98  1739b902  sll.d r[19:20], r[19:20], r11
001b9c  179a4601  or r20, r13, r20
001ba0  0b292211  add.ul r[19:20], r[5:6], r[19:20]
001ba4  7f2ac900  l_gm2lm r20, r12, 0(r[19:20])
001ba8  1bb92800  slli r18, r17, 2
001bac  8b981111  add.s r17, r3, r17
001bb0  00a00200  mfence { lm, gm }
001bb4  42000602  vload.mz vr0{mr1}, 0(r12)
001bb8  0b190911  add.s r18, r18, r16
001bbc  9f098900  addli r19, r18, 64
001bc0  86300000  vfp162float_l.rn vr1, vr0
001bc4  06700000  vfp162float_h.rn vr0, vr0
001bc8  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
001bcc  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
001bd0  3f8ff8fe  blt.s r17, r15, -64
001bd4  ab620100  lui r5, 22
001bd8  1bb27000  slli r4, r1, 7
001bdc  9f058fd7  addli r11, r30, -5184
001be0  1f068000  addli r12, zero, 64
001be4  9f060100  addli r13, r2, 0
001be8  00a00000  mfence { lm }
001bec  9f820200  addli r5, r5, 0
001bf0  0b125210  add.s r4, r4, r5
001bf4  9b327500  slli r5, r10, 7
001bf8  1f150000  addli r10, zero, 1
001bfc  33880628  zext_int2long r[17:18], r13
001c00  2b0900f0  lui r18, 983040
001c04  8b963610  add.s r13, r13, r3
001c08  1738a802  sll.d r[17:18], r[17:18], r10
001c0c  17192601  or r18, r12, r18
001c10  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001c14  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
001c18  1f088200  addli r16, r4, 64
001c1c  00a00200  mfence { lm, gm }
001c20  42800502  vload.mz vr0{mr1}, 0(r11)
001c24  86300000  vfp162float_l.rn vr1, vr0
001c28  06700000  vfp162float_h.rn vr0, vr0
001c2c  4e101202  vstores_mask16.mz vr1{mr1}, 0(r4)
001c30  0b125210  add.s r4, r4, r5
001c34  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
001c38  3f9ff6fe  blt.s r13, r15, -60
001c3c  e3012f00  loadli.w r3,  16(r30)
001c40  cba12100  ble.s r3, r2, 104
001c44  00530102  load_param_i r6, 2
001c48  ab730100  lui r7, 23
001c4c  9f110000  addli r3, zero, 1
001c50  1f028fd7  addli r4, r30, -5184
001c54  9f028000  addli r5, zero, 64
001c58  00a00000  mfence { lm }
001c5c  1b335300  slli r6, r6, 5
001c60  9f830300  addli r7, r7, 0
001c64  33050128  zext_int2long r[11:12], r2
001c68  2b0600f0  lui r12, 983040
001c6c  17353502  sll.d r[11:12], r[11:12], r3
001c70  1796c200  or r12, r5, r12
001c74  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001c78  7f264500  l_gm2lm r12, r4, 0(r[11:12])
001c7c  1b352100  slli r10, r2, 2
001c80  0b112310  add.s r2, r6, r2
001c84  00a00200  mfence { lm, gm }
001c88  42000202  vload.mz vr0{mr1}, 0(r4)
001c8c  0b157510  add.s r10, r10, r7
001c90  9f058500  addli r11, r10, 64
001c94  86300000  vfp162float_l.rn vr1, vr0
001c98  06700000  vfp162float_h.rn vr0, vr0
001c9c  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001ca0  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
001ca4  3f0ff1fe  blt.s r2, r15, -64
001ca8  2bf10000  lui r2, 15
001cac  e3411f00  loadli.w r3,  12(r30)
001cb0  00a00300  mfence { lm, sm, gm }
001cb4  1b11f1ff  ori r2, r2, 4095
001cb8  80210104  csr_set csr3, r2
001cbc  00d00100  sync_group
001cc0  cbc91122  ble.s r3, r1, 18032
001cc4  63032f00  loadli.w r6,  16(r30)
001cc8  e3432f00  loadli.w r7,  20(r30)
001ccc  9f088fd7  addli r17, r30, -5184
001cd0  1f150000  addli r10, zero, 1
001cd4  9f054000  addli r11, zero, 32
001cd8  1f767000  addli r12, zero, 63
001cdc  1f080002  addli r16, zero, 256
001ce0  1f090001  addli r18, zero, 128
001ce4  9f098000  addli r19, zero, 64
001ce8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001cec  0b127310  add.s r4, r6, r7
001cf0  33010308  fix2float.rn r2, r6
001cf4  1b342300  slli r8, r6, 2
001cf8  9b321300  slli r5, r6, 1
001cfc  9bb42300  slli r9, r7, 2
001d00  1f72f2ff  addli r4, r4, -1
001d04  670c2fd4  storeli.w r2, -5440(r30)
001d08  1f014300  addli r2, r6, 32
001d0c  0b131411  add.s r6, r8, r17
001d10  0b941211  add.s r8, r5, r17
001d14  67082fd4  storeli.w r2, -5504(r30)
001d18  1f0183ff  addli r2, r6, -64
001d1c  2bf3ffff  lui r6, 1048575
001d20  0b127230  div.s r4, r4, r7
001d24  67042fd4  storeli.w r2, -5568(r30)
001d28  1f0184ff  addli r2, r8, -64
001d2c  9b16f3ff  ori r13, r6, 4095
001d30  2b530100  lui r6, 21
001d34  67002fd4  storeli.w r2, -5632(r30)
001d38  1f010fd7  addli r2, r30, -5248
001d3c  1f030300  addli r6, r6, 0
001d40  00a00000  mfence { lm }
001d44  67045fd6  storeli.w r5, -5312(r30)
001d48  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001d4c  5b080000  j 64
001d50  6b510f00  load.d r[3:4], 0(r30)
001d54  00a00000  mfence { lm }
001d58  ab0800f0  lui r17, 983040
001d5c  005a0102  load_param_i r20, 2
001d60  e3028fd6  loadli.w r5,  -5312(r30)
001d64  8b101a10  add.s r1, r20, r1
001d68  8b237111  add.ul r[8:9], r[3:4], r[24:25]
001d6c  1f018fd7  addli r2, r30, -5184
001d70  97981201  or r17, r5, r17
001d74  ffb82300  s_lm2gm r17, r2, 0(r[8:9])
001d78  9f088fd7  addli r17, r30, -5184
001d7c  00a00200  mfence { lm, gm }
001d80  63411f00  loadli.w r2,  12(r30)
001d84  3fa02000  blt.s r1, r2, 8
001d88  5bb50800  j 17832
001d8c  63011f00  loadli.w r2,  8(r30)
001d90  8b932010  add.s r7, r1, r2
001d94  8b93f320  mul.s r7, r7, r15
001d98  b3930328  sext_int2long r[8:9], r7
001d9c  97bba302  sll.d r[24:25], r[8:9], r10
001da0  1f047fd6  addli r8, r30, -5320
001da4  ab0300f0  lui r7, 983040
001da8  6b510400  load.d r[3:4], 0(r8)
001dac  97937200  or r7, r5, r7
001db0  0b2a7111  add.ul r[21:22], r[3:4], r[24:25]
001db4  ff231a01  l_gm2lm r7, r17, 0(r[21:22])
001db8  00a00200  mfence { lm, gm }
001dbc  bff0b700  blt.s r15, r11, 60
001dc0  e3030fd4  loadli.w r7,  -5632(r30)
001dc4  63048fd4  loadli.w r8,  -5568(r30)
001dc8  e3080fd5  loadli.w r17,  -5504(r30)
001dcc  c2800302  vload.mz vr1{mr1}, 0(r7)
001dd0  9f88c8ff  addli r17, r17, -32
001dd4  9f0a84ff  addli r21, r8, -64
001dd8  9f8383ff  addli r7, r7, -64
001ddc  130a1605  setlt.u r20, r12, r17
001de0  06f10000  vfp162float_h.rn vr2, vr1
001de4  86b00000  vfp162float_l.rn vr1, vr1
001de8  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
001dec  1f0404ff  addli r8, r8, -128
001df0  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
001df4  3b6f0afe  bneq r20, zero, -40
001df8  00a00000  mfence { lm }
001dfc  bf17a200  blt.s r4, r10, 484
001e00  1f0d0000  addli r26, zero, 0
001e04  9f0c0000  addli r25, zero, 0
001e08  9f0d0000  addli r27, zero, 0
001e0c  db0c0000  j 100
001e10  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001e14  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001e18  9f9d0d00  addli r27, r27, 1
001e1c  6a7108c0  vsrl.p vr2, r16, vr0
001e20  ea7118c0  vsrl.p vr3, r16, vr1
001e24  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e28  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e2c  6a7109c0  vsrl.p vr2, r18, vr0
001e30  ea7119c0  vsrl.p vr3, r18, vr1
001e34  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e38  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e3c  6af109c0  vsrl.p vr2, r19, vr0
001e40  eaf119c0  vsrl.p vr3, r19, vr1
001e44  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e48  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e4c  6af105c0  vsrl.p vr2, r11, vr0
001e50  eaf115c0  vsrl.p vr3, r11, vr1
001e54  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e58  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e5c  7a110040  vextracti.f r2, 0(vr0)
001e60  fa910040  vextracti.f r3, 0(vr1)
001e64  0b6d2d10  add.f.rn r26, r26, r2
001e68  8bec3c10  add.f.rn r25, r25, r3
001e6c  b7f54d00  beq r27, r4, 380
001e70  9f830d00  addli r7, r27, 0
001e74  37300701  beq r14, r16, 12
001e78  97a3dd00  xor r7, r27, r13
001e7c  8b137210  add.s r7, r4, r7
001e80  1f010fd7  addli r2, r30, -5248
001e84  0b94e320  mul.s r8, r7, r14
001e88  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
001e8c  0b948718  sub.s r8, r15, r8
001e90  0b1ee440  min.s r28, r8, r14
001e94  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001e98  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001e9c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001ea0  bf4daefe  blt.s r28, r10, -144
001ea4  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
001ea8  1f0a0000  addli r20, zero, 0
001eac  8b9a7420  mul.s r21, r9, r7
001eb0  1f0b8fd7  addli r22, r30, -5184
001eb4  9f080300  addli r17, r6, 0
001eb8  92304002  vadd.s.mz vr1{mr1}, zero, vr4
001ebc  12314002  vadd.s.mz vr2{mr1}, zero, vr4
001ec0  92314002  vadd.s.mz vr3{mr1}, zero, vr4
001ec4  0b945811  add.s r8, r17, r21
001ec8  8b135b11  add.s r7, r22, r21
001ecc  9f028400  addli r5, r8, 64
001ed0  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
001ed4  9f018401  addli r3, r8, 192
001ed8  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001edc  1f818301  addli r2, r7, 192
001ee0  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
001ee4  9f020401  addli r5, r8, 128
001ee8  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
001eec  9f818300  addli r3, r7, 64
001ef0  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
001ef4  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
001ef8  9f820301  addli r5, r7, 128
001efc  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
001f00  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
001f04  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001f08  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001f0c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001f10  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001f14  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001f18  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001f1c  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
001f20  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001f24  9f018a00  addli r3, r20, 64
001f28  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001f2c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001f30  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001f34  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001f38  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001f3c  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
001f40  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001f44  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001f48  4b2b3efe  ble.s r28, r3, -312
001f4c  9f010402  addli r3, r8, 256
001f50  9f028402  addli r5, r8, 320
001f54  1f810302  addli r2, r7, 256
001f58  1f0a0a01  addli r20, r20, 128
001f5c  9f880804  addli r17, r17, 512
001f60  1f0b0b04  addli r22, r22, 512
001f64  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
001f68  9f010403  addli r3, r8, 384
001f6c  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
001f70  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
001f74  9f828302  addli r5, r7, 320
001f78  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
001f7c  9f018403  addli r3, r8, 448
001f80  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
001f84  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
001f88  9f810303  addli r3, r7, 384
001f8c  9f838303  addli r7, r7, 448
001f90  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
001f94  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
001f98  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
001f9c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001fa0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001fa4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001fa8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001fac  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001fb0  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
001fb4  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
001fb8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001fbc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001fc0  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
001fc4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001fc8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001fcc  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001fd0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001fd4  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
001fd8  bf3bcaff  blt.s r20, r28, -276
001fdc  dbc6ffff  j -460
001fe0  9f0c0000  addli r25, zero, 0
001fe4  1f0d0000  addli r26, zero, 0
001fe8  00a00000  mfence { lm }
001fec  bf95a7fe  blt.s r15, r10, -668
001ff0  63018fd5  loadli.w r2,  -5440(r30)
001ff4  2b6b0100  lui r22, 22
001ff8  9f030000  addli r7, zero, 0
001ffc  9f0a8fd7  addli r21, r30, -5184
002000  1f0b0b00  addli r22, r22, 0
002004  8f082d18  div.f.rn r17, r26, r2
002008  0f842c18  div.f.rn r8, r25, r2
00200c  63013f00  loadli.w r2,  24(r30)
002010  ab7c0100  lui r25, 23
002014  9f8c0c00  addli r25, r25, 0
002018  0bea1821  mul.f.rn r20, r17, r17
00201c  8be80858  neg.f r17, r17
002020  0b644419  sub.f.rn r8, r8, r20
002024  1f0a8fd7  addli r20, r30, -5184
002028  0b642410  add.f.rn r8, r8, r2
00202c  2b01803f  lui r2, 260096
002030  0f040408  sqrt.f.rn r8, r8
002034  0f048118  div.f.rn r8, r2, r8
002038  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
00203c  1f8d8a00  addli r26, r21, 64
002040  ca110b02  vloads_mask16.mz vr3{mr1}, 0(r22)
002044  4a920c02  vloads_mask16.mz vr4{mr1}, 0(r25)
002048  9f8d8c00  addli r27, r25, 64
00204c  9f834300  addli r7, r7, 32
002050  9f8c0c01  addli r25, r25, 128
002054  9f8a0a01  addli r21, r21, 128
002058  42110d02  vload_mask16.mz vr2{mr1}, 0(r26)
00205c  1f0d8b00  addli r26, r22, 64
002060  4a930d02  vloads_mask16.mz vr6{mr1}, 0(r27)
002064  1f0b0b01  addli r22, r22, 128
002068  ca120d02  vloads_mask16.mz vr5{mr1}, 0(r26)
00206c  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
002070  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
002074  8a101402  vmul.f.mz.rn vr1{mr1}, r8, vr1
002078  0a112402  vmul.f.mz.rn vr2{mr1}, r8, vr2
00207c  26923002  vmac.f.mz.rn vr4{mr1}, vr1, vr3
002080  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002084  26135102  vmac.f.mz.rn vr6{mr1}, vr2, vr5
002088  86100200  vfloat2fp16_l.rn vr1, vr4
00208c  86500300  vfloat2fp16_h.rn vr1, vr6
002090  46001a02  vstore.mz vr1{mr1}, 0(r20)
002094  1f0a8a00  addli r20, r20, 64
002098  bf8ef3fe  blt.s r7, r15, -96
00209c  db96ffff  j -844
0020a0  e3002f00  loadli.w r1,  16(r30)
0020a4  1f010010  addli r2, zero, 2048
0020a8  bba02008  bneq r1, r2, 4136
0020ac  2ba30200  lui r6, 42
0020b0  80300002  core_id r1
0020b4  1f030308  addli r6, r6, 1024
0020b8  3bd00000  bneq r1, zero, 20
0020bc  1f010040  addli r2, zero, 8192
0020c0  ab0100f0  lui r3, 983040
0020c4  17113100  or r2, r2, r3
0020c8  7f016200  l_gm2sm r2, r6, 0(r[5:6])
0020cc  2bf10000  lui r2, 15
0020d0  00200300  mfence { sm, gm }
0020d4  1b821000  andi r4, r1, 1
0020d8  9f020006  addli r5, zero, 768
0020dc  1b11f1ff  ori r2, r2, 4095
0020e0  80210104  csr_set csr3, r2
0020e4  1f010006  addli r2, zero, 768
0020e8  00d00100  sync_group
0020ec  37200200  beq r4, zero, 8
0020f0  9f02000a  addli r5, zero, 1280
0020f4  e3411f00  loadli.w r3,  12(r30)
0020f8  9f130000  addli r7, zero, 1
0020fc  bfd87120  blt.s r3, r7, 16948
002100  0b112220  mul.s r2, r4, r2
002104  1bc51000  srli r10, r1, 1
002108  abf0ffff  lui r1, 1048575
00210c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002110  abca0200  lui r21, 44
002114  2bcd0200  lui r26, 44
002118  80510102  load_param_i r3, 2
00211c  9f030000  addli r7, zero, 0
002120  9bb52200  slli r11, r5, 2
002124  9f068fd7  addli r13, r30, -5184
002128  9f080002  addli r17, zero, 256
00212c  1f090001  addli r18, zero, 128
002130  9f098000  addli r19, zero, 64
002134  1f0a4000  addli r20, zero, 32
002138  9f0c0003  addli r25, zero, 384
00213c  67082fd6  storeli.w r2, -5248(r30)
002140  1f018fd6  addli r2, r30, -5312
002144  9b9000f8  ori r1, r1, 3968
002148  9bc41100  srli r9, r3, 1
00214c  9f8a0a08  addli r21, r21, 1024
002150  1f0d0d0c  addli r26, r26, 1536
002154  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002158  2bf10000  lui r2, 15
00215c  670c1fd4  storeli.w r1, -5440(r30)
002160  9f000800  addli r1, r16, 0
002164  1f080005  addli r16, zero, 640
002168  1b1bf1ff  ori r22, r2, 4095
00216c  5b040000  j 32
002170  00a00300  mfence { lm, sm, gm }
002174  80210b04  csr_set csr3, r22
002178  00d00100  sync_group
00217c  e3401f00  loadli.w r1,  12(r30)
002180  8b939310  add.s r7, r7, r9
002184  3fa01300  blt.s r7, r1, 8
002188  5b4bfdff  j -5544
00218c  0b91a310  add.s r2, r7, r10
002190  cb8f20fe  ble.s r1, r2, -32
002194  e3001f00  loadli.w r1,  8(r30)
002198  0b111110  add.s r2, r2, r1
00219c  e3000fd7  loadli.w r1,  -5248(r30)
0021a0  1b31b100  slli r2, r2, 11
0021a4  17111100  or r2, r2, r1
0021a8  9f200000  addli r1, zero, 2
0021ac  33110128  sext_int2long r[3:4], r2
0021b0  973d1102  sll.d r[28:29], r[3:4], r1
0021b4  9f007fd6  addli r1, r30, -5320
0021b8  2b0100f0  lui r2, 983040
0021bc  6bd70000  load.d r[15:16], 0(r1)
0021c0  17912500  or r2, r11, r2
0021c4  0b27b711  add.ul r[15:16], r[15:16], r[28:29]
0021c8  7f21d700  l_gm2lm r2, r13, 0(r[15:16])
0021cc  1f010000  addli r2, zero, 0
0021d0  00a00200  mfence { lm, gm }
0021d4  3b060200  bneq r4, zero, 384
0021d8  9f008fd6  addli r1, r30, -5312
0021dc  e3018fd5  loadli.w r3,  -5440(r30)
0021e0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0021e4  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0021e8  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0021ec  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0021f0  0b176110  add.s r14, r2, r6
0021f4  0b962610  add.s r12, r13, r2
0021f8  9f810101  addli r3, r3, 128
0021fc  1f010104  addli r2, r2, 512
002200  9f000701  addli r1, r14, 128
002204  4a100702  vloads_mask16.mz vr0{mr1}, 0(r14)
002208  1f048700  addli r8, r14, 64
00220c  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
002210  9f078601  addli r15, r12, 192
002214  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
002218  9f008701  addli r1, r14, 192
00221c  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002220  1f048600  addli r8, r12, 64
002224  c2950702  vload_mask16.mz vr11{mr1}, 0(r15)
002228  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
00222c  9f000601  addli r1, r12, 128
002230  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
002234  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002238  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00223c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002240  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002244  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002248  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00224c  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
002250  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002254  9f000702  addli r1, r14, 256
002258  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00225c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002260  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002264  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002268  1f040603  addli r8, r12, 384
00226c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002270  9f008702  addli r1, r14, 320
002274  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
002278  9f070602  addli r15, r12, 256
00227c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002280  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
002284  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002288  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
00228c  9f000703  addli r1, r14, 384
002290  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
002294  1f078703  addli r14, r14, 448
002298  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00229c  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0022a0  9f008602  addli r1, r12, 320
0022a4  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
0022a8  1f068603  addli r12, r12, 448
0022ac  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0022b0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0022b4  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0022b8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0022bc  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0022c0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0022c4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0022c8  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
0022cc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0022d0  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0022d4  93800105  setlt.u r1, r3, r16
0022d8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0022dc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0022e0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0022e4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0022e8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0022ec  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0022f0  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0022f4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0022f8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0022fc  bbdb00fe  bneq r1, zero, -268
002300  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002304  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002308  6af108c0  vsrl.p vr2, r17, vr0
00230c  eaf118c0  vsrl.p vr3, r17, vr1
002310  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002314  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002318  6a7109c0  vsrl.p vr2, r18, vr0
00231c  ea7119c0  vsrl.p vr3, r18, vr1
002320  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002324  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002328  6af109c0  vsrl.p vr2, r19, vr0
00232c  eaf119c0  vsrl.p vr3, r19, vr1
002330  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002334  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002338  6a710ac0  vsrl.p vr2, r20, vr0
00233c  ea711ac0  vsrl.p vr3, r20, vr1
002340  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002344  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002348  7a160040  vextracti.f r12, 0(vr0)
00234c  7a910040  vextracti.f r2, 0(vr1)
002350  db610000  j 780
002354  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002358  abf0ffff  lui r1, 1048575
00235c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002360  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002364  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002368  9b9100f8  ori r3, r1, 3968
00236c  0b172310  add.s r14, r6, r2
002370  0b962610  add.s r12, r13, r2
002374  9f810101  addli r3, r3, 128
002378  1f010104  addli r2, r2, 512
00237c  9f000731  addli r1, r14, 6272
002380  9f070730  addli r15, r14, 6144
002384  1f048731  addli r8, r14, 6336
002388  1f0c0618  addli r24, r12, 3072
00238c  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
002390  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
002394  9f078730  addli r15, r14, 6208
002398  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
00239c  1f040619  addli r8, r12, 3200
0023a0  9f008618  addli r1, r12, 3136
0023a4  42130c02  vload_mask16.mz vr6{mr1}, 0(r24)
0023a8  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
0023ac  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
0023b0  9f078619  addli r15, r12, 3264
0023b4  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0023b8  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
0023bc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0023c0  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0023c4  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0023c8  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0023cc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0023d0  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0023d4  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
0023d8  1f040732  addli r8, r14, 6400
0023dc  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0023e0  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
0023e4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0023e8  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
0023ec  9f07061a  addli r15, r12, 3328
0023f0  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0023f4  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0023f8  9f00061b  addli r1, r12, 3456
0023fc  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
002400  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
002404  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
002408  1f048732  addli r8, r14, 6464
00240c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002410  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002414  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002418  1f040733  addli r8, r14, 6528
00241c  1f078733  addli r14, r14, 6592
002420  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
002424  1f04861a  addli r8, r12, 3392
002428  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
00242c  1f06861b  addli r12, r12, 3520
002430  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
002434  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
002438  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00243c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002440  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
002444  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002448  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00244c  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
002450  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002454  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
002458  13849105  setlt.u r8, r3, r25
00245c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002460  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002464  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002468  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00246c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002470  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
002474  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
002478  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00247c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002480  bb3b04fe  bneq r8, zero, -276
002484  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002488  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00248c  abf0ffff  lui r1, 1048575
002490  1f060000  addli r12, zero, 0
002494  1b9c00f8  ori r24, r1, 3968
002498  eaf118c0  vsrl.p vr3, r17, vr1
00249c  6af108c0  vsrl.p vr2, r17, vr0
0024a0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024a4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024a8  ea7119c0  vsrl.p vr3, r18, vr1
0024ac  6a7109c0  vsrl.p vr2, r18, vr0
0024b0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024b4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024b8  eaf119c0  vsrl.p vr3, r19, vr1
0024bc  6af109c0  vsrl.p vr2, r19, vr0
0024c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024c8  ea711ac0  vsrl.p vr3, r20, vr1
0024cc  6a710ac0  vsrl.p vr2, r20, vr0
0024d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024d4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024d8  fa910040  vextracti.f r3, 0(vr1)
0024dc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0024e0  7a110040  vextracti.f r2, 0(vr0)
0024e4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0024e8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0024ec  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0024f0  8b17c310  add.s r15, r6, r12
0024f4  0b97c610  add.s r14, r13, r12
0024f8  1f0c0c01  addli r24, r24, 128
0024fc  1f060604  addli r12, r12, 512
002500  9f800718  addli r1, r15, 3072
002504  1f840719  addli r8, r15, 3200
002508  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
00250c  9f0b8701  addli r23, r14, 192
002510  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002514  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
002518  9f808718  addli r1, r15, 3136
00251c  1f848719  addli r8, r15, 3264
002520  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
002524  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002528  9f000701  addli r1, r14, 128
00252c  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
002530  1f048700  addli r8, r14, 64
002534  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002538  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
00253c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002540  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002544  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002548  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00254c  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002550  9f80071a  addli r1, r15, 3328
002554  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002558  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00255c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002560  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002564  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
002568  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
00256c  9f80871a  addli r1, r15, 3392
002570  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
002574  9f0b0702  addli r23, r14, 256
002578  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
00257c  1f040703  addli r8, r14, 384
002580  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
002584  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002588  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
00258c  9f80071b  addli r1, r15, 3456
002590  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
002594  9f87871b  addli r15, r15, 3520
002598  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00259c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0025a0  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0025a4  9f008702  addli r1, r14, 320
0025a8  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
0025ac  1f078703  addli r14, r14, 448
0025b0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0025b4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0025b8  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0025bc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0025c0  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
0025c4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0025c8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0025cc  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
0025d0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0025d4  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0025d8  93000c05  setlt.u r1, r24, r16
0025dc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0025e0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0025e4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0025e8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0025ec  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0025f0  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0025f4  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
0025f8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0025fc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002600  bbcb00fe  bneq r1, zero, -272
002604  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002608  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00260c  6af108c0  vsrl.p vr2, r17, vr0
002610  eaf118c0  vsrl.p vr3, r17, vr1
002614  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002618  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00261c  6a7109c0  vsrl.p vr2, r18, vr0
002620  ea7119c0  vsrl.p vr3, r18, vr1
002624  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002628  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00262c  6af109c0  vsrl.p vr2, r19, vr0
002630  eaf119c0  vsrl.p vr3, r19, vr1
002634  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002638  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00263c  6a710ac0  vsrl.p vr2, r20, vr0
002640  ea711ac0  vsrl.p vr3, r20, vr1
002644  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002648  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00264c  fa100040  vextracti.f r1, 0(vr0)
002650  7a940040  vextracti.f r8, 0(vr1)
002654  0b661110  add.f.rn r12, r2, r1
002658  0be18110  add.f.rn r2, r3, r8
00265c  8b809330  div.u r1, r7, r9
002660  80310002  core_id r3
002664  9f078fd7  addli r15, r30, -5184
002668  1f0c0000  addli r24, zero, 0
00266c  9bb06000  slli r1, r1, 6
002670  9b800004  andi r1, r1, 64
002674  97903000  or r1, r1, r3
002678  9bb12000  slli r3, r1, 2
00267c  9b80e007  andi r1, r1, 126
002680  0b945111  add.s r8, r3, r21
002684  9bb02000  slli r1, r1, 2
002688  7360c400  stores.w r12, 0(r8)
00268c  0b94a111  add.s r8, r3, r26
002690  9b914100  ori r3, r3, 4
002694  73602400  stores.w r2, 0(r8)
002698  0b915111  add.s r2, r3, r21
00269c  0b945011  add.s r8, r1, r21
0026a0  8b91a111  add.s r3, r3, r26
0026a4  8b90a011  add.s r1, r1, r26
0026a8  00a00300  mfence { lm, sm, gm }
0026ac  80210b04  csr_set csr3, r22
0026b0  00d00100  sync_group
0026b4  6f410100  loads.w r2, 0(r2)
0026b8  6f440400  loads.w r8, 0(r8)
0026bc  efc10100  loads.w r3, 0(r3)
0026c0  efc00000  loads.w r1, 0(r1)
0026c4  0b618110  add.f.rn r2, r2, r8
0026c8  8be01110  add.f.rn r1, r3, r1
0026cc  ab01003a  lui r3, 237568
0026d0  0b643120  mul.f.rn r8, r2, r3
0026d4  8be03020  mul.f.rn r1, r1, r3
0026d8  0b618420  mul.f.rn r2, r8, r8
0026dc  0b670458  neg.f r14, r8
0026e0  8be02018  sub.f.rn r1, r1, r2
0026e4  63013f00  loadli.w r2,  24(r30)
0026e8  8be02010  add.f.rn r1, r1, r2
0026ec  2b01803f  lui r2, 260096
0026f0  8f800008  sqrt.f.rn r1, r1
0026f4  0f061118  div.f.rn r12, r2, r1
0026f8  eb500f00  load.d r[2:3], 0(r30)
0026fc  0ba1b011  add.ul r[3:4], r[2:3], r[28:29]
002700  9f808700  addli r1, r15, 64
002704  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
002708  1f044c00  addli r8, r24, 32
00270c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002710  13848206  setle.u r8, r5, r8
002714  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
002718  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
00271c  0a100602  vmul.f.mz.rn vr0{mr1}, r12, vr0
002720  8a101602  vmul.f.mz.rn vr1{mr1}, r12, vr1
002724  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
002728  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00272c  bb700400  bneq r8, zero, 60
002730  9f800701  addli r1, r15, 128
002734  1f848701  addli r8, r15, 192
002738  1f0c8c00  addli r24, r24, 64
00273c  9f870702  addli r15, r15, 256
002740  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002744  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
002748  930b5c04  setlt.u r23, r24, r5
00274c  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
002750  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
002754  0a100602  vmul.f.mz.rn vr0{mr1}, r12, vr0
002758  8a101602  vmul.f.mz.rn vr1{mr1}, r12, vr1
00275c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002760  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
002764  3bfe0bfe  bneq r23, zero, -100
002768  ab0000f0  lui r1, 983040
00276c  00a00000  mfence { lm }
002770  97901500  or r1, r11, r1
002774  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
002778  00a00200  mfence { lm, gm }
00277c  5b40ffff  j -1536
002780  80300002  core_id r1
002784  bb800000  bneq r1, zero, 32
002788  63012f00  loadli.w r2,  16(r30)
00278c  ab0100f0  lui r3, 983040
002790  1b311100  slli r2, r2, 1
002794  17113100  or r2, r2, r3
002798  abc10100  lui r3, 28
00279c  9f810100  addli r3, r3, 0
0027a0  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0027a4  2bf10000  lui r2, 15
0027a8  e3411f00  loadli.w r3,  12(r30)
0027ac  00200300  mfence { sm, gm }
0027b0  1b11f1ff  ori r2, r2, 4095
0027b4  80210104  csr_set csr3, r2
0027b8  00d00100  sync_group
0027bc  cbdd111c  ble.s r3, r1, 15220
0027c0  63012f00  loadli.w r2,  16(r30)
0027c4  e3412f00  loadli.w r3,  20(r30)
0027c8  1f052000  addli r10, zero, 16
0027cc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0027d0  1f130000  addli r6, zero, 1
0027d4  9f040002  addli r9, zero, 256
0027d8  ab05ffff  lui r11, 1048560
0027dc  ab06807f  lui r13, 522240
0027e0  2b08c07f  lui r16, 523264
0027e4  9f080001  addli r17, zero, 128
0027e8  1f098000  addli r18, zero, 64
0027ec  9f094000  addli r19, zero, 32
0027f0  1b3b1100  slli r22, r2, 1
0027f4  0b123110  add.s r4, r2, r3
0027f8  33010108  fix2float.rn r2, r2
0027fc  67042fd4  storeli.w r2, -5568(r30)
002800  1f71f2ff  addli r2, r4, -1
002804  1bb21100  slli r4, r3, 1
002808  67086fd5  storeli.w r22, -5504(r30)
00280c  8b123130  div.s r5, r2, r3
002810  2bf1ffff  lui r2, 1048575
002814  9f018fd7  addli r3, r30, -5184
002818  1b14f1ff  ori r8, r2, 4095
00281c  1f010fd7  addli r2, r30, -5248
002820  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002824  6a200522  vor.u.mz vr0{mr1}, r10, vr0
002828  1f018fd6  addli r2, r30, -5312
00282c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002830  2b710000  lui r2, 7
002834  1b16f1ff  ori r12, r2, 4095
002838  db080000  j 68
00283c  9f038fd5  addli r7, r30, -5440
002840  6b510f00  load.d r[3:4], 0(r30)
002844  6bda0300  load.d r[21:22], 0(r7)
002848  00a00000  mfence { lm }
00284c  80530102  load_param_i r7, 2
002850  630b0fd5  loadli.w r22,  -5504(r30)
002854  8b901310  add.s r1, r7, r1
002858  0b2a4111  add.ul r[21:22], r[3:4], r[21:22]
00285c  2b0100f0  lui r2, 983040
002860  9f018fd7  addli r3, r30, -5184
002864  17112b00  or r2, r22, r2
002868  7f313a00  s_lm2gm r2, r3, 0(r[21:22])
00286c  00a00200  mfence { lm, gm }
002870  63411f00  loadli.w r2,  12(r30)
002874  3fa02000  blt.s r1, r2, 8
002878  5b570700  j 15032
00287c  63011f00  loadli.w r2,  8(r30)
002880  9f037fd6  addli r7, r30, -5320
002884  0b912010  add.s r2, r1, r2
002888  0b11f120  mul.s r2, r2, r15
00288c  331a0128  sext_int2long r[21:22], r2
002890  2b0100f0  lui r2, 983040
002894  973b6a02  sll.d r[24:25], r[21:22], r6
002898  6bda0300  load.d r[21:22], 0(r7)
00289c  17112b00  or r2, r22, r2
0028a0  9f038fd5  addli r7, r30, -5440
0028a4  73b07301  store.d r[24:25], 0(r7)
0028a8  0b2a7a11  add.ul r[21:22], r[21:22], r[24:25]
0028ac  7f213a00  l_gm2lm r2, r3, 0(r[21:22])
0028b0  00a00200  mfence { lm, gm }
0028b4  bfdc6200  blt.s r5, r6, 820
0028b8  9f0c0000  addli r25, zero, 0
0028bc  1f0c0000  addli r24, zero, 0
0028c0  1f0d0000  addli r26, zero, 0
0028c4  db0c0000  j 100
0028c8  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0028cc  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0028d0  1f1d0d00  addli r26, r26, 1
0028d4  6af104c0  vsrl.p vr2, r9, vr0
0028d8  eaf114c0  vsrl.p vr3, r9, vr1
0028dc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028e0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028e4  6af108c0  vsrl.p vr2, r17, vr0
0028e8  eaf118c0  vsrl.p vr3, r17, vr1
0028ec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028f0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028f4  6a7109c0  vsrl.p vr2, r18, vr0
0028f8  ea7119c0  vsrl.p vr3, r18, vr1
0028fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002900  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002904  6af109c0  vsrl.p vr2, r19, vr0
002908  eaf119c0  vsrl.p vr3, r19, vr1
00290c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002910  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002914  7a110040  vextracti.f r2, 0(vr0)
002918  fa910040  vextracti.f r3, 0(vr1)
00291c  8bec2c10  add.f.rn r25, r25, r2
002920  0b6c3c10  add.f.rn r24, r24, r3
002924  373b5d00  beq r26, r5, 716
002928  1f010d00  addli r2, r26, 0
00292c  37309700  beq r14, r9, 12
002930  17218d00  xor r2, r26, r8
002934  0b912210  add.s r2, r5, r2
002938  9f010fd7  addli r3, r30, -5248
00293c  8b13e120  mul.s r7, r2, r14
002940  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
002944  8b937718  sub.s r7, r15, r7
002948  8b9de340  min.s r27, r7, r14
00294c  92322002  vadd.s.mz vr5{mr1}, zero, vr2
002950  12322002  vadd.s.mz vr4{mr1}, zero, vr2
002954  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002958  bfcd6dfe  blt.s r27, r6, -144
00295c  0b1a2220  mul.s r20, r4, r2
002960  1f010fd7  addli r2, r30, -5248
002964  abca0100  lui r21, 28
002968  1f0e0000  addli r28, zero, 0
00296c  9f038fd7  addli r7, r30, -5184
002970  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
002974  9f8a0a00  addli r21, r21, 0
002978  12315002  vadd.s.mz vr2{mr1}, zero, vr5
00297c  92315002  vadd.s.mz vr3{mr1}, zero, vr5
002980  12325002  vadd.s.mz vr4{mr1}, zero, vr5
002984  0b9b4a11  add.s r22, r21, r20
002988  0b914311  add.s r2, r7, r20
00298c  9f018fd6  addli r3, r30, -5312
002990  4a030b02  vloads.mz vr6{mr1}, 0(r22)
002994  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002998  c2030102  vload.mz vr7{mr1}, 0(r2)
00299c  9f010fd7  addli r3, r30, -5248
0029a0  9f0b8b00  addli r23, r22, 64
0029a4  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0029a8  9f018e00  addli r3, r28, 64
0029ac  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0029b0  6ab57502  vand.s.mz vr10{mr1}, r11, vr7
0029b4  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0029b8  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
0029bc  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0029c0  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0029c4  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0029c8  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0029cc  669503c0  vabs.f vr10, vr7
0029d0  6a348302  vand.s.mz vr8{mr1}, r6, vr8
0029d4  ea349302  vand.s.mz vr9{mr1}, r6, vr9
0029d8  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
0029dc  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
0029e0  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
0029e4  12348602  vadd.s.mz vr8{mr1}, r12, vr8
0029e8  92349602  vadd.s.mz vr9{mr1}, r12, vr9
0029ec  eab38502  vand.s.mz vr7{mr1}, r11, vr8
0029f0  661403c0  vabs.f vr8, vr6
0029f4  6ab39502  vand.s.mz vr6{mr1}, r11, vr9
0029f8  ea230834  vor.u.mh vr7{mr2}, r16, vr0
0029fc  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
002a00  6a230834  vor.u.mh vr6{mr2}, r16, vr0
002a04  4a840b02  vloads.mz vr8{mr1}, 0(r23)
002a08  9f0b8100  addli r23, r2, 64
002a0c  c2840b02  vload.mz vr9{mr1}, 0(r23)
002a10  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
002a14  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
002a18  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002a1c  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
002a20  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002a24  46007102  vstore.mz vr7{mr1}, 0(r2)
002a28  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002a2c  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002a30  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
002a34  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
002a38  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002a3c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002a40  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002a44  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
002a48  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
002a4c  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
002a50  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
002a54  ea349302  vand.s.mz vr9{mr1}, r6, vr9
002a58  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002a5c  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
002a60  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
002a64  661505c0  vabs.f vr10, vr10
002a68  661404c0  vabs.f vr8, vr8
002a6c  92349602  vadd.s.mz vr9{mr1}, r12, vr9
002a70  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002a74  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
002a78  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002a7c  6ab5b502  vand.s.mz vr10{mr1}, r11, vr11
002a80  ea240834  vor.u.mh vr9{mr2}, r16, vr0
002a84  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
002a88  6a250834  vor.u.mh vr10{mr2}, r16, vr0
002a8c  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
002a90  eab4a502  vand.s.mz vr9{mr1}, r11, vr10
002a94  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
002a98  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002a9c  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002aa0  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
002aa4  46808b02  vstore.mz vr8{mr1}, 0(r23)
002aa8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002aac  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002ab0  4be83dfe  ble.s r27, r3, -488
002ab4  9f010b01  addli r3, r22, 128
002ab8  9f0b0101  addli r23, r2, 128
002abc  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
002ac0  1f018101  addli r2, r2, 192
002ac4  1f0e0e01  addli r28, r28, 128
002ac8  9f8a0a02  addli r21, r21, 256
002acc  9f830302  addli r7, r7, 256
002ad0  6a237522  vor.u.mz vr6{mr1}, r10, vr7
002ad4  4a840102  vloads.mz vr8{mr1}, 0(r3)
002ad8  c2840b02  vload.mz vr9{mr1}, 0(r23)
002adc  9f018b01  addli r3, r22, 192
002ae0  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
002ae4  6ab09502  vand.s.mz vr0{mr1}, r11, vr9
002ae8  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
002aec  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002af0  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
002af4  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
002af8  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
002afc  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
002b00  e69504c0  vabs.f vr11, vr9
002b04  6a300302  vand.s.mz vr0{mr1}, r6, vr0
002b08  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002b0c  72a1b642  vlt.u.mz mr2{mr1}, r13, vr11
002b10  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
002b14  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
002b18  12300602  vadd.s.mz vr0{mr1}, r12, vr0
002b1c  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002b20  eab40502  vand.s.mz vr9{mr1}, r11, vr0
002b24  661004c0  vabs.f vr0, vr8
002b28  6ab4a502  vand.s.mz vr8{mr1}, r11, vr10
002b2c  ea247834  vor.u.mh vr9{mr2}, r16, vr7
002b30  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002b34  6a247834  vor.u.mh vr8{mr2}, r16, vr7
002b38  4a800102  vloads.mz vr0{mr1}, 0(r3)
002b3c  42050102  vload.mz vr10{mr1}, 0(r2)
002b40  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
002b44  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
002b48  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002b4c  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
002b50  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002b54  46809b02  vstore.mz vr9{mr1}, 0(r23)
002b58  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
002b5c  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
002b60  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
002b64  6ab00502  vand.s.mz vr0{mr1}, r11, vr0
002b68  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
002b6c  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
002b70  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
002b74  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
002b78  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002b7c  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002b80  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
002b84  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
002b88  e69000c0  vabs.f vr1, vr1
002b8c  661000c0  vabs.f vr0, vr0
002b90  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002b94  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002b98  72a11642  vlt.u.mz mr2{mr1}, r13, vr1
002b9c  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002ba0  eab0b502  vand.s.mz vr1{mr1}, r11, vr11
002ba4  6a257834  vor.u.mh vr10{mr2}, r16, vr7
002ba8  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002bac  ea207834  vor.u.mh vr1{mr2}, r16, vr7
002bb0  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
002bb4  eab31502  vand.s.mz vr7{mr1}, r11, vr1
002bb8  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
002bbc  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
002bc0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002bc4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002bc8  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
002bcc  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
002bd0  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
002bd4  46000102  vstore.mz vr0{mr1}, 0(r2)
002bd8  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002bdc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002be0  bf16beff  blt.s r28, r27, -604
002be4  db9cffff  j -796
002be8  1f0c0000  addli r24, zero, 0
002bec  9f0c0000  addli r25, zero, 0
002bf0  00a00000  mfence { lm }
002bf4  3fa167fe  blt.s r15, r6, -952
002bf8  63018fd4  loadli.w r2,  -5568(r30)
002bfc  e3013f00  loadli.w r3,  24(r30)
002c00  9f0a0000  addli r21, zero, 0
002c04  8f832c18  div.f.rn r7, r25, r2
002c08  0f012c18  div.f.rn r2, r24, r2
002c0c  0bea7320  mul.f.rn r20, r7, r7
002c10  8be30358  neg.f r7, r7
002c14  0b614119  sub.f.rn r2, r2, r20
002c18  1f0a8fd7  addli r20, r30, -5184
002c1c  0b613110  add.f.rn r2, r2, r3
002c20  ab01803f  lui r3, 260096
002c24  0f010108  sqrt.f.rn r2, r2
002c28  0f812118  div.f.rn r2, r3, r2
002c2c  42020a02  vload.mz vr4{mr1}, 0(r20)
002c30  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
002c34  1f8b4a00  addli r22, r21, 32
002c38  ea212522  vor.u.mz vr3{mr1}, r10, vr2
002c3c  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002c40  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002c44  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002c48  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002c4c  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002c50  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002c54  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002c58  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002c5c  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002c60  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002c64  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002c68  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002c6c  e69202c0  vabs.f vr5, vr5
002c70  661202c0  vabs.f vr4, vr4
002c74  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002c78  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002c7c  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002c80  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002c84  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002c88  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002c8c  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002c90  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002c94  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
002c98  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
002c9c  46004a02  vstore.mz vr4{mr1}, 0(r20)
002ca0  4bfe67fd  ble.s r15, r22, -1124
002ca4  1f0b8a00  addli r22, r20, 64
002ca8  9f8a8a00  addli r21, r21, 64
002cac  1f0a0a01  addli r20, r20, 128
002cb0  42020b02  vload.mz vr4{mr1}, 0(r22)
002cb4  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002cb8  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002cbc  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002cc0  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002cc4  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002cc8  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002ccc  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002cd0  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002cd4  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002cd8  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002cdc  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002ce0  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002ce4  e69202c0  vabs.f vr5, vr5
002ce8  661202c0  vabs.f vr4, vr4
002cec  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002cf0  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002cf4  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002cf8  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002cfc  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002d00  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002d04  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002d08  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002d0c  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
002d10  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
002d14  46002b02  vstore.mz vr2{mr1}, 0(r22)
002d18  3fdcfafe  blt.s r21, r15, -236
002d1c  5b64ffff  j -1248
002d20  80300002  core_id r1
002d24  bb800000  bneq r1, zero, 32
002d28  63012f00  loadli.w r2,  16(r30)
002d2c  ab0100f0  lui r3, 983040
002d30  1b311100  slli r2, r2, 1
002d34  17113100  or r2, r2, r3
002d38  ab010200  lui r3, 32
002d3c  9f810100  addli r3, r3, 0
002d40  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002d44  2bf10000  lui r2, 15
002d48  e3411f00  loadli.w r3,  12(r30)
002d4c  00200300  mfence { sm, gm }
002d50  1b11f1ff  ori r2, r2, 4095
002d54  80210104  csr_set csr3, r2
002d58  00d00100  sync_group
002d5c  4bd7111a  ble.s r3, r1, 13780
002d60  e3012f00  loadli.w r3,  16(r30)
002d64  e3422f00  loadli.w r5,  20(r30)
002d68  2bf4ffff  lui r8, 1048575
002d6c  2b080200  lui r16, 32
002d70  9f068fd7  addli r13, r30, -5184
002d74  9f040002  addli r9, zero, 256
002d78  1f050001  addli r10, zero, 128
002d7c  9f058000  addli r11, zero, 64
002d80  1f064000  addli r12, zero, 32
002d84  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002d88  1b14f4ff  ori r8, r8, 4095
002d8c  1f080800  addli r16, r16, 0
002d90  0b925110  add.s r4, r3, r5
002d94  1bb11100  slli r2, r3, 1
002d98  b3810108  fix2float.rn r3, r3
002d9c  1f73f2ff  addli r6, r4, -1
002da0  1bb21200  slli r4, r5, 1
002da4  8b125330  div.s r5, r6, r5
002da8  1f130000  addli r6, zero, 1
002dac  5b070000  j 56
002db0  eb590f00  load.d r[20:21], 0(r30)
002db4  9f068fd7  addli r13, r30, -5184
002db8  00a00000  mfence { lm }
002dbc  8ba81911  add.ul r[18:19], r[20:21], r[18:19]
002dc0  ab0900f0  lui r19, 983040
002dc4  005a0102  load_param_i r20, 2
002dc8  97193101  or r19, r2, r19
002dcc  8b101a10  add.s r1, r20, r1
002dd0  ffb9d800  s_lm2gm r19, r13, 0(r[18:19])
002dd4  00a00200  mfence { lm, gm }
002dd8  e3431f00  loadli.w r7,  12(r30)
002ddc  3fa07000  blt.s r1, r7, 8
002de0  5baa0600  j 13648
002de4  e3031f00  loadli.w r7,  8(r30)
002de8  ab0900f0  lui r19, 983040
002dec  97193101  or r19, r2, r19
002df0  8b987010  add.s r17, r1, r7
002df4  9f037fd6  addli r7, r30, -5320
002df8  8b98f820  mul.s r17, r17, r15
002dfc  6bda0300  load.d r[21:22], 0(r7)
002e00  b3980828  sext_int2long r[18:19], r17
002e04  97b86802  sll.d r[18:19], r[18:19], r6
002e08  0b2a1a11  add.ul r[21:22], r[21:22], r[18:19]
002e0c  ff29da00  l_gm2lm r19, r13, 0(r[21:22])
002e10  00a00200  mfence { lm, gm }
002e14  3fc76200  blt.s r5, r6, 464
002e18  1f0a0000  addli r20, zero, 0
002e1c  9f090000  addli r19, zero, 0
002e20  9f0a0000  addli r21, zero, 0
002e24  db0c0000  j 100
002e28  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
002e2c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002e30  9f9a0a00  addli r21, r21, 1
002e34  6af134c0  vsrl.p vr2, r9, vr3
002e38  6af214c0  vsrl.p vr4, r9, vr1
002e3c  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
002e40  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e44  ea7125c0  vsrl.p vr3, r10, vr2
002e48  6a7215c0  vsrl.p vr4, r10, vr1
002e4c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e50  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e54  eaf125c0  vsrl.p vr3, r11, vr2
002e58  6af215c0  vsrl.p vr4, r11, vr1
002e5c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e60  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e64  ea7126c0  vsrl.p vr3, r12, vr2
002e68  6a7216c0  vsrl.p vr4, r12, vr1
002e6c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e70  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e74  fa130140  vextracti.f r7, 0(vr2)
002e78  fa960040  vextracti.f r13, 0(vr1)
002e7c  0b6a7a10  add.f.rn r20, r20, r7
002e80  8be9d910  add.f.rn r19, r19, r13
002e84  b7a55a00  beq r21, r5, 360
002e88  1f8c0a00  addli r24, r21, 0
002e8c  37309700  beq r14, r9, 12
002e90  17ab8a00  xor r22, r21, r8
002e94  0b9c6211  add.s r24, r5, r22
002e98  0b1bec20  mul.s r22, r24, r14
002e9c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
002ea0  92310002  vadd.s.mz vr3{mr1}, zero, vr0
002ea4  12310002  vadd.s.mz vr2{mr1}, zero, vr0
002ea8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002eac  0b9b6719  sub.s r22, r15, r22
002eb0  0b1beb40  min.s r22, r22, r14
002eb4  bf5d6bfe  blt.s r22, r6, -140
002eb8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002ebc  12310002  vadd.s.mz vr2{mr1}, zero, vr0
002ec0  92310002  vadd.s.mz vr3{mr1}, zero, vr0
002ec4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
002ec8  9f0b0000  addli r23, zero, 0
002ecc  0b1c8221  mul.s r24, r4, r24
002ed0  9f0c8fd7  addli r25, r30, -5184
002ed4  1f0d0800  addli r26, r16, 0
002ed8  8b1d8d11  add.s r27, r26, r24
002edc  9f838b00  addli r7, r23, 64
002ee0  ca820d02  vloads.mz vr5{mr1}, 0(r27)
002ee4  1f8e8d00  addli r28, r27, 64
002ee8  4a030e02  vloads.mz vr6{mr1}, 0(r28)
002eec  0b9e8c11  add.s r28, r25, r24
002ef0  c2030e02  vload.mz vr7{mr1}, 0(r28)
002ef4  9f068e00  addli r13, r28, 64
002ef8  42840602  vload.mz vr8{mr1}, 0(r13)
002efc  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
002f00  92320002  vadd.s.mz vr5{mr1}, zero, vr0
002f04  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
002f08  06b40300  vfp162float_l.rn vr8, vr7
002f0c  86f30300  vfp162float_h.rn vr7, vr7
002f10  86340300  vfp162float_l.rn vr9, vr6
002f14  06730300  vfp162float_h.rn vr6, vr6
002f18  86120400  vfloat2fp16_l.rn vr5, vr8
002f1c  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
002f20  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
002f24  12340002  vadd.s.mz vr8{mr1}, zero, vr0
002f28  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
002f2c  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
002f30  06940400  vfloat2fp16_l.rn vr8, vr9
002f34  86d20300  vfloat2fp16_h.rn vr5, vr7
002f38  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002f3c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002f40  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
002f44  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002f48  06540300  vfloat2fp16_h.rn vr8, vr6
002f4c  46005e02  vstore.mz vr5{mr1}, 0(r28)
002f50  46808602  vstore.mz vr8{mr1}, 0(r13)
002f54  4b5b7bfe  ble.s r22, r7, -300
002f58  9f830d01  addli r7, r27, 128
002f5c  9f060e01  addli r13, r28, 128
002f60  9f8b0b01  addli r23, r23, 128
002f64  1f0d0d02  addli r26, r26, 256
002f68  9f8c0c02  addli r25, r25, 256
002f6c  ca820302  vloads.mz vr5{mr1}, 0(r7)
002f70  9f838d01  addli r7, r27, 192
002f74  c2830602  vload.mz vr7{mr1}, 0(r13)
002f78  4a830302  vloads.mz vr6{mr1}, 0(r7)
002f7c  9f038e01  addli r7, r28, 192
002f80  42840302  vload.mz vr8{mr1}, 0(r7)
002f84  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
002f88  92320002  vadd.s.mz vr5{mr1}, zero, vr0
002f8c  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
002f90  12330002  vadd.s.mz vr6{mr1}, zero, vr0
002f94  86b40300  vfp162float_l.rn vr9, vr7
002f98  86f30300  vfp162float_h.rn vr7, vr7
002f9c  86920400  vfloat2fp16_l.rn vr5, vr9
002fa0  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002fa4  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002fa8  86340400  vfp162float_l.rn vr9, vr8
002fac  06740400  vfp162float_h.rn vr8, vr8
002fb0  06930400  vfloat2fp16_l.rn vr6, vr9
002fb4  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
002fb8  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
002fbc  86d20300  vfloat2fp16_h.rn vr5, vr7
002fc0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002fc4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002fc8  06530400  vfloat2fp16_h.rn vr6, vr8
002fcc  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
002fd0  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002fd4  46805602  vstore.mz vr5{mr1}, 0(r13)
002fd8  46806302  vstore.mz vr6{mr1}, 0(r7)
002fdc  bffb6bff  blt.s r23, r22, -260
002fe0  5bc9ffff  j -440
002fe4  9f090000  addli r19, zero, 0
002fe8  1f0a0000  addli r20, zero, 0
002fec  00a00000  mfence { lm }
002ff0  3f8767fe  blt.s r15, r6, -576
002ff4  0f0a3a18  div.f.rn r20, r20, r3
002ff8  8f893918  div.f.rn r19, r19, r3
002ffc  e3033f00  loadli.w r7,  24(r30)
003000  1f0b0000  addli r22, zero, 0
003004  8b6a4a21  mul.f.rn r21, r20, r20
003008  0b6a0a58  neg.f r20, r20
00300c  8be95919  sub.f.rn r19, r19, r21
003010  9f0a8fd7  addli r21, r30, -5184
003014  8be97910  add.f.rn r19, r19, r7
003018  ab03803f  lui r7, 260096
00301c  8f890908  sqrt.f.rn r19, r19
003020  8f893319  div.f.rn r19, r7, r19
003024  c2800a02  vload.mz vr1{mr1}, 0(r21)
003028  9f0b4b00  addli r23, r22, 32
00302c  06b10000  vfp162float_l.rn vr2, vr1
003030  86f00000  vfp162float_h.rn vr1, vr1
003034  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003038  92111a02  vadd.f.mz.rn vr3{mr1}, r20, vr1
00303c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003040  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003044  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
003048  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
00304c  06120100  vfloat2fp16_l.rn vr4, vr2
003050  06d20100  vfloat2fp16_h.rn vr4, vr3
003054  46804a02  vstore.mz vr4{mr1}, 0(r21)
003058  4be577ff  ble.s r15, r23, -680
00305c  9f8b8a00  addli r23, r21, 64
003060  1f0b8b00  addli r22, r22, 64
003064  9f8a0a01  addli r21, r21, 128
003068  42810b02  vload.mz vr2{mr1}, 0(r23)
00306c  86310100  vfp162float_l.rn vr3, vr2
003070  06710100  vfp162float_h.rn vr2, vr2
003074  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
003078  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
00307c  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003080  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
003084  86900100  vfloat2fp16_l.rn vr1, vr3
003088  86500100  vfloat2fp16_h.rn vr1, vr2
00308c  46801b02  vstore.mz vr1{mr1}, 0(r23)
003090  3f5efbfe  blt.s r22, r15, -108
003094  dba3ffff  j -740
003098  80300002  core_id r1
00309c  1f210000  addli r2, zero, 2
0030a0  37aa2016  beq r1, r2, 11912
0030a4  1f110000  addli r2, zero, 1
0030a8  378c2012  beq r1, r2, 9984
0030ac  3bea0016  bneq r1, zero, 11928
0030b0  63012f00  loadli.w r2,  16(r30)
0030b4  ab0100f0  lui r3, 983040
0030b8  1b312100  slli r2, r2, 2
0030bc  17113100  or r2, r2, r3
0030c0  ab710200  lui r3, 39
0030c4  9f810108  addli r3, r3, 1024
0030c8  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0030cc  5bcf0500  j 11896
0030d0  80300002  core_id r1
0030d4  bb800000  bneq r1, zero, 32
0030d8  63012f00  loadli.w r2,  16(r30)
0030dc  ab0100f0  lui r3, 983040
0030e0  1b312100  slli r2, r2, 2
0030e4  17113100  or r2, r2, r3
0030e8  abd10200  lui r3, 45
0030ec  9f8101f0  addli r3, r3, -2048
0030f0  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0030f4  2bf10000  lui r2, 15
0030f8  e3411f00  loadli.w r3,  12(r30)
0030fc  00200300  mfence { sm, gm }
003100  1b11f1ff  ori r2, r2, 4095
003104  80210104  csr_set csr3, r2
003108  00d00100  sync_group
00310c  cb981118  ble.s r3, r1, 12836
003110  e3012f00  loadli.w r3,  16(r30)
003114  e3422f00  loadli.w r5,  20(r30)
003118  abf4ffff  lui r9, 1048575
00311c  abd80200  lui r17, 45
003120  1f0b8fd7  addli r22, r30, -5184
003124  1f140000  addli r8, zero, 1
003128  1f050002  addli r10, zero, 256
00312c  9f050001  addli r11, zero, 128
003130  1f068000  addli r12, zero, 64
003134  9f064000  addli r13, zero, 32
003138  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00313c  9b94f4ff  ori r9, r9, 4095
003140  9f8808f0  addli r17, r17, -2048
003144  0b925110  add.s r4, r3, r5
003148  1bb12100  slli r2, r3, 2
00314c  b3810108  fix2float.rn r3, r3
003150  1f73f2ff  addli r6, r4, -1
003154  1bb22200  slli r4, r5, 2
003158  67043fd6  storeli.w r3, -5312(r30)
00315c  9f010fd7  addli r3, r30, -5248
003160  8b125330  div.s r5, r6, r5
003164  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003168  5b070000  j 56
00316c  6b530f00  load.d r[7:8], 0(r30)
003170  2b0800f0  lui r16, 983040
003174  1f0b8fd7  addli r22, r30, -5184
003178  00a00000  mfence { lm }
00317c  005a0102  load_param_i r20, 2
003180  17180101  or r16, r2, r16
003184  8b101a10  add.s r1, r20, r1
003188  0b292311  add.ul r[19:20], r[7:8], r[19:20]
00318c  7f386901  s_lm2gm r16, r22, 0(r[19:20])
003190  00a00200  mfence { lm, gm }
003194  e3411f00  loadli.w r3,  12(r30)
003198  3fa03000  blt.s r1, r3, 8
00319c  db320600  j 12692
0031a0  e3011f00  loadli.w r3,  8(r30)
0031a4  0b983010  add.s r16, r1, r3
0031a8  9f210000  addli r3, zero, 2
0031ac  0b18f820  mul.s r16, r16, r15
0031b0  33190828  sext_int2long r[19:20], r16
0031b4  2b0800f0  lui r16, 983040
0031b8  17393902  sll.d r[19:20], r[19:20], r3
0031bc  9f017fd6  addli r3, r30, -5320
0031c0  17180101  or r16, r2, r16
0031c4  6bd30100  load.d r[7:8], 0(r3)
0031c8  0b2a2311  add.ul r[21:22], r[7:8], r[19:20]
0031cc  7f286a01  l_gm2lm r16, r22, 0(r[21:22])
0031d0  00a00200  mfence { lm, gm }
0031d4  bf978200  blt.s r5, r8, 484
0031d8  9f0a0000  addli r21, zero, 0
0031dc  1f0a0000  addli r20, zero, 0
0031e0  1f0b0000  addli r22, zero, 0
0031e4  db0c0000  j 100
0031e8  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
0031ec  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0031f0  1f1b0b00  addli r22, r22, 1
0031f4  6a7105c0  vsrl.p vr2, r10, vr0
0031f8  ea7115c0  vsrl.p vr3, r10, vr1
0031fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003200  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003204  6af105c0  vsrl.p vr2, r11, vr0
003208  eaf115c0  vsrl.p vr3, r11, vr1
00320c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003210  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003214  6a7106c0  vsrl.p vr2, r12, vr0
003218  ea7116c0  vsrl.p vr3, r12, vr1
00321c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003220  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003224  6af106c0  vsrl.p vr2, r13, vr0
003228  eaf116c0  vsrl.p vr3, r13, vr1
00322c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003230  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003234  fa110040  vextracti.f r3, 0(vr0)
003238  7a930040  vextracti.f r6, 0(vr1)
00323c  8bea3a10  add.f.rn r21, r21, r3
003240  0b6a6a10  add.f.rn r20, r20, r6
003244  b7755b00  beq r22, r5, 380
003248  1f080b00  addli r16, r22, 0
00324c  3730a700  beq r14, r10, 12
003250  17289b00  xor r16, r22, r9
003254  0b980211  add.s r16, r5, r16
003258  9f010fd7  addli r3, r30, -5248
00325c  8b1be820  mul.s r23, r16, r14
003260  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
003264  8b9b7719  sub.s r23, r15, r23
003268  8b9beb40  min.s r23, r23, r14
00326c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003270  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003274  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003278  bfcd8bfe  blt.s r23, r8, -144
00327c  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003280  1f0c0000  addli r24, zero, 0
003284  8b1c0221  mul.s r25, r4, r16
003288  1f0d8fd7  addli r26, r30, -5184
00328c  9f8d0800  addli r27, r17, 0
003290  92304002  vadd.s.mz vr1{mr1}, zero, vr4
003294  12314002  vadd.s.mz vr2{mr1}, zero, vr4
003298  92314002  vadd.s.mz vr3{mr1}, zero, vr4
00329c  0b989d11  add.s r16, r27, r25
0032a0  0b1e9d11  add.s r28, r26, r25
0032a4  1f038800  addli r6, r16, 64
0032a8  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
0032ac  9f038801  addli r7, r16, 192
0032b0  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
0032b4  9f018e01  addli r3, r28, 192
0032b8  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0032bc  1f030801  addli r6, r16, 128
0032c0  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
0032c4  9f030e01  addli r7, r28, 128
0032c8  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0032cc  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
0032d0  c2950302  vload_mask16.mz vr11{mr1}, 0(r7)
0032d4  1f038e00  addli r6, r28, 64
0032d8  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0032dc  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0032e0  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0032e4  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0032e8  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0032ec  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0032f0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0032f4  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
0032f8  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0032fc  1f038c00  addli r6, r24, 64
003300  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003304  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
003308  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00330c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
003310  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003314  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
003318  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
00331c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
003320  4bab6bfe  ble.s r23, r6, -312
003324  1f030802  addli r6, r16, 256
003328  9f038802  addli r7, r16, 320
00332c  9f010e02  addli r3, r28, 256
003330  1f0c0c01  addli r24, r24, 128
003334  9f8d0d04  addli r27, r27, 512
003338  1f0d0d04  addli r26, r26, 512
00333c  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
003340  1f030803  addli r6, r16, 384
003344  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
003348  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
00334c  9f038e02  addli r7, r28, 320
003350  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
003354  1f038803  addli r6, r16, 448
003358  1f088e03  addli r16, r28, 448
00335c  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
003360  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
003364  1f030e03  addli r6, r28, 384
003368  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
00336c  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
003370  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
003374  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
003378  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
00337c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003380  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003384  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003388  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
00338c  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
003390  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
003394  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003398  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
00339c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0033a0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0033a4  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0033a8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0033ac  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0033b0  bf3b7cff  blt.s r24, r23, -276
0033b4  dbc6ffff  j -460
0033b8  1f0a0000  addli r20, zero, 0
0033bc  9f0a0000  addli r21, zero, 0
0033c0  00a00000  mfence { lm }
0033c4  bfa687fe  blt.s r15, r8, -600
0033c8  e3018fd6  loadli.w r3,  -5312(r30)
0033cc  1f0b0000  addli r22, zero, 0
0033d0  8f8a3a18  div.f.rn r21, r21, r3
0033d4  0f083a18  div.f.rn r16, r20, r3
0033d8  e3013f00  loadli.w r3,  24(r30)
0033dc  0bea5a21  mul.f.rn r20, r21, r21
0033e0  0b684819  sub.f.rn r16, r16, r20
0033e4  0bea0a58  neg.f r20, r21
0033e8  9f0a8fd7  addli r21, r30, -5184
0033ec  0b683810  add.f.rn r16, r16, r3
0033f0  ab01803f  lui r3, 260096
0033f4  0f080808  sqrt.f.rn r16, r16
0033f8  0f880119  div.f.rn r16, r3, r16
0033fc  9f8b8a00  addli r23, r21, 64
003400  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
003404  1f0c4b00  addli r24, r22, 32
003408  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
00340c  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003410  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003414  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003418  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
00341c  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
003420  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
003424  4ba587ff  ble.s r15, r24, -696
003428  9f8b0a01  addli r23, r21, 128
00342c  1f8c8a01  addli r24, r21, 192
003430  1f0b8b00  addli r22, r22, 64
003434  9f8a0a02  addli r21, r21, 256
003438  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
00343c  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
003440  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003444  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003448  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
00344c  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003450  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
003454  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
003458  bf1efbfe  blt.s r22, r15, -92
00345c  5ba2ffff  j -752
003460  80300002  core_id r1
003464  ab630000  lui r7, 6
003468  1f110000  addli r2, zero, 1
00346c  1f038fd7  addli r6, r30, -5184
003470  1f048000  addli r8, zero, 64
003474  1f050010  addli r10, zero, 2048
003478  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
00347c  9bb15000  slli r3, r1, 5
003480  80500102  load_param_i r1, 2
003484  9f830308  addli r7, r7, 1024
003488  9bb45000  slli r9, r1, 5
00348c  b3850128  zext_int2long r[12:13], r3
003490  ab0600f0  lui r13, 983040
003494  97b52502  sll.d r[12:13], r[12:13], r2
003498  9716d400  or r13, r8, r13
00349c  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
0034a0  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
0034a4  9bb52100  slli r11, r3, 2
0034a8  8b913410  add.s r3, r9, r3
0034ac  00a00200  mfence { lm, gm }
0034b0  c2000302  vload.mz vr1{mr1}, 0(r6)
0034b4  1386a104  setlt.u r12, r3, r10
0034b8  8b957510  add.s r11, r11, r7
0034bc  9f868500  addli r13, r11, 64
0034c0  66c11180  vmerge_l.hf vr2, vr3, vr1
0034c4  e6c011a0  vmerge_h.hf vr1, vr3, vr1
0034c8  4e902502  vstores_mask16.mz vr2{mr1}, 0(r11)
0034cc  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
0034d0  bb7e06fe  bneq r12, zero, -68
0034d4  2bf10000  lui r2, 15
0034d8  80310002  core_id r3
0034dc  00a00300  mfence { lm, sm, gm }
0034e0  9f020006  addli r5, zero, 768
0034e4  1b11f1ff  ori r2, r2, 4095
0034e8  1b821100  andi r4, r3, 1
0034ec  80210104  csr_set csr3, r2
0034f0  1f010006  addli r2, zero, 768
0034f4  00d00100  sync_group
0034f8  37200200  beq r4, zero, 8
0034fc  9f02000a  addli r5, zero, 1280
003500  e3411f00  loadli.w r3,  12(r30)
003504  1f140000  addli r8, zero, 1
003508  bfa88116  blt.s r3, r8, 11816
00350c  0b112220  mul.s r2, r4, r2
003510  1bcc1000  srli r24, r1, 1
003514  80300002  core_id r1
003518  9bb11200  slli r3, r5, 1
00351c  67044fd4  storeli.w r4, -5568(r30)
003520  1f824200  addli r4, r5, 32
003524  9f040000  addli r9, zero, 0
003528  9f797000  addli r19, zero, 63
00352c  9f0a0005  addli r21, zero, 640
003530  2b09803f  lui r18, 260096
003534  1f0a2000  addli r20, zero, 16
003538  1f370000  addli r14, zero, 3
00353c  2bee7f00  lui r28, 2046
003540  9f551000  addli r11, zero, 13
003544  1f2b1000  addli r22, zero, 10
003548  9f0b0003  addli r23, zero, 384
00354c  67002fd4  storeli.w r2, -5632(r30)
003550  9bcc1000  srli r25, r1, 1
003554  1bb12200  slli r2, r5, 2
003558  9f008fd7  addli r1, r30, -5184
00355c  67083fd6  storeli.w r3, -5248(r30)
003560  674f4fd2  storeli.w r4, -5644(r30)
003564  2be20700  lui r4, 126
003568  0b111110  add.s r2, r2, r1
00356c  8b911110  add.s r3, r3, r1
003570  1f0181ff  addli r2, r2, -64
003574  670f2fd2  storeli.w r2, -5648(r30)
003578  1f8181ff  addli r2, r3, -64
00357c  abf100fc  lui r3, 1032207
003580  e74e2fd2  storeli.w r2, -5652(r30)
003584  2bf1ffff  lui r2, 1048575
003588  9b9601c0  ori r13, r3, 3072
00358c  00a00000  mfence { lm }
003590  e74f8fd3  storeli.w r24, -5636(r30)
003594  e70f9fd3  storeli.w r25, -5640(r30)
003598  1b1101f8  ori r2, r2, 3968
00359c  e70e2fd2  storeli.w r2, -5656(r30)
0035a0  2bf10000  lui r2, 15
0035a4  1b11f1ff  ori r2, r2, 4095
0035a8  67042fd6  storeli.w r2, -5312(r30)
0035ac  2b710000  lui r2, 7
0035b0  1b13f1ff  ori r6, r2, 4095
0035b4  2b01ff03  lui r2, 16368
0035b8  1b16f13f  ori r12, r2, 1023
0035bc  1f010fd5  addli r2, r30, -5504
0035c0  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0035c4  5b040000  j 32
0035c8  00a00300  mfence { lm, sm, gm }
0035cc  63018fd6  loadli.w r2,  -5312(r30)
0035d0  80210104  csr_set csr3, r2
0035d4  00d00100  sync_group
0035d8  8b948411  add.s r9, r9, r24
0035dc  3fa00401  blt.s r9, r16, 8
0035e0  5bc0faff  j -10752
0035e4  0b919411  add.s r2, r9, r25
0035e8  cb0f28fe  ble.s r16, r2, -32
0035ec  e3011f00  loadli.w r3,  8(r30)
0035f0  63050fd4  loadli.w r10,  -5632(r30)
0035f4  0b113110  add.s r2, r2, r3
0035f8  8b818431  div.u r3, r9, r24
0035fc  1b31b100  slli r2, r2, 11
003600  1711a100  or r2, r2, r10
003604  1f057fd6  addli r10, r30, -5320
003608  33180128  sext_int2long r[17:18], r2
00360c  2b0100f0  lui r2, 983040
003610  9bb16100  slli r3, r3, 6
003614  173d8802  sll.d r[27:28], r[17:18], r8
003618  eb570500  load.d r[16:17], 0(r10)
00361c  63050fd7  loadli.w r10,  -5248(r30)
003620  9b810104  andi r3, r3, 64
003624  0ba8a711  add.ul r[17:18], r[16:17], r[27:28]
003628  17112500  or r2, r10, r2
00362c  7f211800  l_gm2lm r2, r1, 0(r[17:18])
003630  00310002  core_id r2
003634  00a00200  mfence { lm, gm }
003638  17912100  or r2, r3, r2
00363c  e341dfd3  loadli.w r3,  -5652(r30)
003640  6305efd3  loadli.w r10,  -5648(r30)
003644  6348efd3  loadli.w r16,  -5644(r30)
003648  c2800102  vload.mz vr1{mr1}, 0(r3)
00364c  1f08c8ff  addli r16, r16, -32
003650  1f0c85ff  addli r24, r10, -64
003654  9f8181ff  addli r3, r3, -64
003658  93880905  setlt.u r17, r19, r16
00365c  66c111a0  vmerge_h.hf vr2, vr3, vr1
003660  e6c01180  vmerge_l.hf vr1, vr3, vr1
003664  46102502  vstore_mask16.mz vr2{mr1}, 0(r10)
003668  1f0505ff  addli r10, r10, -128
00366c  46101c02  vstore_mask16.mz vr1{mr1}, 0(r24)
003670  3bef08fe  bneq r17, zero, -40
003674  00a00000  mfence { lm }
003678  1f058fd5  addli r10, r30, -5440
00367c  e3018fd4  loadli.w r3,  -5568(r30)
003680  7330a501  store.d r[27:28], 0(r10)
003684  3bb60100  bneq r3, zero, 396
003688  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00368c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
003690  12323002  vadd.s.mz vr4{mr1}, zero, vr3
003694  6305dfd3  loadli.w r10,  -5656(r30)
003698  9f010000  addli r3, zero, 0
00369c  8b987110  add.s r17, r3, r7
0036a0  0b983010  add.s r16, r1, r3
0036a4  1f050501  addli r10, r10, 128
0036a8  9f810104  addli r3, r3, 512
0036ac  9f870801  addli r15, r17, 128
0036b0  4a900802  vloads_mask16.mz vr0{mr1}, 0(r17)
0036b4  1f8c8800  addli r24, r17, 64
0036b8  42140802  vload_mask16.mz vr8{mr1}, 0(r16)
0036bc  9f0c8801  addli r25, r16, 192
0036c0  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
0036c4  9f878801  addli r15, r17, 192
0036c8  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0036cc  1f0c8800  addli r24, r16, 64
0036d0  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0036d4  ca930702  vloads_mask16.mz vr7{mr1}, 0(r15)
0036d8  9f070801  addli r15, r16, 128
0036dc  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
0036e0  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
0036e4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0036e8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0036ec  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0036f0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0036f4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0036f8  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
0036fc  46908702  vstore_mask16.mz vr8{mr1}, 0(r15)
003700  9f870802  addli r15, r17, 256
003704  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003708  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00370c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003710  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003714  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
003718  9f878802  addli r15, r17, 320
00371c  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
003720  9f0c0802  addli r25, r16, 256
003724  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003728  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00372c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003730  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
003734  9f870803  addli r15, r17, 384
003738  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
00373c  9f888803  addli r17, r17, 448
003740  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003744  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
003748  9f078802  addli r15, r16, 320
00374c  4a950802  vloads_mask16.mz vr10{mr1}, 0(r17)
003750  9f080803  addli r17, r16, 384
003754  1f088803  addli r16, r16, 448
003758  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
00375c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003760  c2930802  vload_mask16.mz vr7{mr1}, 0(r17)
003764  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003768  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
00376c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003770  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003774  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003778  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00377c  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
003780  93075505  setlt.u r15, r10, r21
003784  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003788  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00378c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003790  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003794  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003798  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
00379c  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
0037a0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0037a4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0037a8  bbdb07fe  bneq r15, zero, -268
0037ac  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0037b0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0037b4  9f010002  addli r3, zero, 256
0037b8  6af101c0  vsrl.p vr2, r3, vr0
0037bc  eaf111c0  vsrl.p vr3, r3, vr1
0037c0  9f010001  addli r3, zero, 128
0037c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037cc  6af101c0  vsrl.p vr2, r3, vr0
0037d0  eaf111c0  vsrl.p vr3, r3, vr1
0037d4  9f018000  addli r3, zero, 64
0037d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037e0  6af101c0  vsrl.p vr2, r3, vr0
0037e4  eaf111c0  vsrl.p vr3, r3, vr1
0037e8  9f014000  addli r3, zero, 32
0037ec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037f0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037f4  6af101c0  vsrl.p vr2, r3, vr0
0037f8  eaf111c0  vsrl.p vr3, r3, vr1
0037fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003800  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003804  fa110040  vextracti.f r3, 0(vr0)
003808  7a950040  vextracti.f r10, 0(vr1)
00380c  5b660000  j 816
003810  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003814  2bf5ffff  lui r10, 1048575
003818  9f010000  addli r3, zero, 0
00381c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003820  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003824  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003828  1b1505f8  ori r10, r10, 3968
00382c  8b983310  add.s r17, r7, r3
003830  0b983010  add.s r16, r1, r3
003834  1f050501  addli r10, r10, 128
003838  9f810104  addli r3, r3, 512
00383c  9f870831  addli r15, r17, 6272
003840  1f8c0830  addli r24, r17, 6144
003844  9f8c8831  addli r25, r17, 6336
003848  9f0d0818  addli r27, r16, 3072
00384c  ca930702  vloads_mask16.mz vr7{mr1}, 0(r15)
003850  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
003854  1f8c8830  addli r24, r17, 6208
003858  ca940c02  vloads_mask16.mz vr9{mr1}, 0(r25)
00385c  9f078818  addli r15, r16, 3136
003860  9f0c8819  addli r25, r16, 3264
003864  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
003868  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
00386c  1f0c0819  addli r24, r16, 3200
003870  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
003874  c2950702  vload_mask16.mz vr11{mr1}, 0(r15)
003878  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
00387c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003880  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
003884  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
003888  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
00388c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003890  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
003894  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
003898  1f8c0832  addli r24, r17, 6400
00389c  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0038a0  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
0038a4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0038a8  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
0038ac  9f0c081a  addli r25, r16, 3328
0038b0  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
0038b4  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
0038b8  9f07081b  addli r15, r16, 3456
0038bc  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0038c0  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0038c4  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
0038c8  1f8c8832  addli r24, r17, 6464
0038cc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0038d0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0038d4  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0038d8  1f8c0833  addli r24, r17, 6528
0038dc  9f888833  addli r17, r17, 6592
0038e0  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
0038e4  1f0c881a  addli r24, r16, 3392
0038e8  4a950802  vloads_mask16.mz vr10{mr1}, 0(r17)
0038ec  1f08881b  addli r16, r16, 3520
0038f0  93087505  setlt.u r17, r10, r23
0038f4  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
0038f8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0038fc  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
003900  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003904  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
003908  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00390c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003910  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003914  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003918  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
00391c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003920  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003924  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003928  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00392c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003930  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
003934  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
003938  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00393c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003940  bbbb08fe  bneq r17, zero, -276
003944  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003948  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00394c  9f010002  addli r3, zero, 256
003950  abf7ffff  lui r15, 1048575
003954  1f0c0000  addli r24, zero, 0
003958  1b9807f8  ori r16, r15, 3968
00395c  eaf111c0  vsrl.p vr3, r3, vr1
003960  6af101c0  vsrl.p vr2, r3, vr0
003964  9f010001  addli r3, zero, 128
003968  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00396c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003970  eaf111c0  vsrl.p vr3, r3, vr1
003974  6af101c0  vsrl.p vr2, r3, vr0
003978  9f018000  addli r3, zero, 64
00397c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003980  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003984  eaf111c0  vsrl.p vr3, r3, vr1
003988  6af101c0  vsrl.p vr2, r3, vr0
00398c  9f014000  addli r3, zero, 32
003990  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003994  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003998  eaf111c0  vsrl.p vr3, r3, vr1
00399c  6af101c0  vsrl.p vr2, r3, vr0
0039a0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0039a4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0039a8  7a950040  vextracti.f r10, 0(vr1)
0039ac  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0039b0  fa110040  vextracti.f r3, 0(vr0)
0039b4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0039b8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0039bc  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0039c0  8b9d8311  add.s r27, r7, r24
0039c4  8b988011  add.s r17, r1, r24
0039c8  1f080801  addli r16, r16, 128
0039cc  1f0c0c04  addli r24, r24, 512
0039d0  9f870d18  addli r15, r27, 3072
0039d4  9f8c0d19  addli r25, r27, 3200
0039d8  42940802  vload_mask16.mz vr8{mr1}, 0(r17)
0039dc  1f8d8801  addli r26, r17, 192
0039e0  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
0039e4  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
0039e8  9f878d18  addli r15, r27, 3136
0039ec  9f8c8d19  addli r25, r27, 3264
0039f0  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
0039f4  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
0039f8  9f870801  addli r15, r17, 128
0039fc  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
003a00  9f8c8800  addli r25, r17, 64
003a04  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
003a08  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
003a0c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
003a10  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
003a14  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
003a18  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
003a1c  46908702  vstore_mask16.mz vr8{mr1}, 0(r15)
003a20  9f870d1a  addli r15, r27, 3328
003a24  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003a28  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003a2c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003a30  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003a34  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
003a38  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
003a3c  9f878d1a  addli r15, r27, 3392
003a40  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
003a44  1f8d0802  addli r26, r17, 256
003a48  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
003a4c  9f8c0803  addli r25, r17, 384
003a50  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003a54  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003a58  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
003a5c  9f870d1b  addli r15, r27, 3456
003a60  c2130d02  vload_mask16.mz vr7{mr1}, 0(r26)
003a64  9f8d8d1b  addli r27, r27, 3520
003a68  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003a6c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003a70  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
003a74  9f878802  addli r15, r17, 320
003a78  4a950d02  vloads_mask16.mz vr10{mr1}, 0(r27)
003a7c  9f888803  addli r17, r17, 448
003a80  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
003a84  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003a88  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003a8c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003a90  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
003a94  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003a98  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003a9c  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
003aa0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003aa4  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
003aa8  93075805  setlt.u r15, r16, r21
003aac  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003ab0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003ab4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003ab8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003abc  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003ac0  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
003ac4  46907802  vstore_mask16.mz vr7{mr1}, 0(r17)
003ac8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003acc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003ad0  bbcb07fe  bneq r15, zero, -272
003ad4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003ad8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003adc  9f070002  addli r15, zero, 256
003ae0  6af107c0  vsrl.p vr2, r15, vr0
003ae4  eaf117c0  vsrl.p vr3, r15, vr1
003ae8  9f070001  addli r15, zero, 128
003aec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003af0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003af4  6af107c0  vsrl.p vr2, r15, vr0
003af8  eaf117c0  vsrl.p vr3, r15, vr1
003afc  9f078000  addli r15, zero, 64
003b00  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003b04  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003b08  6af107c0  vsrl.p vr2, r15, vr0
003b0c  eaf117c0  vsrl.p vr3, r15, vr1
003b10  9f074000  addli r15, zero, 32
003b14  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003b18  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003b1c  6af107c0  vsrl.p vr2, r15, vr0
003b20  eaf117c0  vsrl.p vr3, r15, vr1
003b24  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003b28  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003b2c  fa170040  vextracti.f r15, 0(vr0)
003b30  7a980040  vextracti.f r16, 0(vr1)
003b34  8be1f110  add.f.rn r3, r3, r15
003b38  0b650511  add.f.rn r10, r10, r16
003b3c  2b8d0000  lui r26, 8
003b40  ab8d0000  lui r27, 8
003b44  9b372100  slli r15, r2, 2
003b48  634cffd3  loadli.w r24,  -5636(r30)
003b4c  e30cffd3  loadli.w r25,  -5640(r30)
003b50  1b01e107  andi r2, r2, 126
003b54  1f0d0d08  addli r26, r26, 1024
003b58  9f8d0d0c  addli r27, r27, 1536
003b5c  1b312100  slli r2, r2, 2
003b60  0b98a711  add.s r16, r15, r26
003b64  8b98b711  add.s r17, r15, r27
003b68  73603800  stores.w r3, 0(r16)
003b6c  73e0a800  stores.w r10, 0(r17)
003b70  1f088fd7  addli r16, r30, -5184
003b74  9f080000  addli r17, zero, 0
003b78  00a00300  mfence { lm, sm, gm }
003b7c  e3018fd6  loadli.w r3,  -5312(r30)
003b80  80a10104  csr_set csr3, r3
003b84  9b914700  ori r3, r15, 4
003b88  8b17a111  add.s r15, r2, r26
003b8c  00d00100  sync_group
003b90  0b11b111  add.s r2, r2, r27
003b94  0b95a111  add.s r10, r3, r26
003b98  efc70700  loads.w r15, 0(r15)
003b9c  8b91b111  add.s r3, r3, r27
003ba0  6f410100  loads.w r2, 0(r2)
003ba4  6f450500  loads.w r10, 0(r10)
003ba8  efc10100  loads.w r3, 0(r3)
003bac  0b65f510  add.f.rn r10, r10, r15
003bb0  ab07003a  lui r15, 237568
003bb4  0be12110  add.f.rn r2, r3, r2
003bb8  8b61f520  mul.f.rn r3, r10, r15
003bbc  0b61f120  mul.f.rn r2, r2, r15
003bc0  0be53120  mul.f.rn r10, r3, r3
003bc4  8be10158  neg.f r3, r3
003bc8  0b61a118  sub.f.rn r2, r2, r10
003bcc  63053f00  loadli.w r10,  24(r30)
003bd0  0b61a110  add.f.rn r2, r2, r10
003bd4  1f058fd7  addli r10, r30, -5184
003bd8  0f010108  sqrt.f.rn r2, r2
003bdc  0f012918  div.f.rn r2, r18, r2
003be0  9f078800  addli r15, r16, 64
003be4  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
003be8  9f884800  addli r17, r17, 32
003bec  1f080801  addli r16, r16, 128
003bf0  c2900702  vload_mask16.mz vr1{mr1}, 0(r15)
003bf4  93875804  setlt.u r15, r17, r5
003bf8  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
003bfc  12911102  vadd.f.mz.rn vr2{mr1}, r3, vr1
003c00  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003c04  ea211a22  vor.u.mz vr3{mr1}, r20, vr1
003c08  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
003c0c  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
003c10  6eb201c2  vsrl.s.mz vr4{mr1}, vr3, vr0
003c14  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003c18  6a324402  vand.s.mz vr4{mr1}, r8, vr4
003c1c  ea313402  vand.s.mz vr3{mr1}, r8, vr3
003c20  16304002  vadd.s.mz vr0{mr1}, vr0, vr4
003c24  6a221722  vor.u.mz vr4{mr1}, r14, vr1
003c28  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
003c2c  eaa11522  vor.u.mz vr3{mr1}, r11, vr1
003c30  ea201b22  vor.u.mz vr1{mr1}, r22, vr1
003c34  12300302  vadd.s.mz vr0{mr1}, r6, vr0
003c38  12312302  vadd.s.mz vr2{mr1}, r6, vr2
003c3c  eeb201c2  vsrl.s.mz vr5{mr1}, vr3, vr0
003c40  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
003c44  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003c48  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
003c4c  6a325202  vand.s.mz vr4{mr1}, r4, vr5
003c50  6a300e02  vand.s.mz vr0{mr1}, r28, vr0
003c54  ea313202  vand.s.mz vr3{mr1}, r4, vr3
003c58  6a312e02  vand.s.mz vr2{mr1}, r28, vr2
003c5c  6a300922  vor.s.mz vr0{mr1}, r18, vr0
003c60  6a324922  vor.s.mz vr4{mr1}, r18, vr4
003c64  ea313922  vor.s.mz vr3{mr1}, r18, vr3
003c68  6a312922  vor.s.mz vr2{mr1}, r18, vr2
003c6c  06100020  vfloat2fp16_l.rz vr0, vr0
003c70  86d10120  vfloat2fp16_h.rz vr3, vr3
003c74  06500120  vfloat2fp16_h.rz vr0, vr2
003c78  86110220  vfloat2fp16_l.rz vr3, vr4
003c7c  6a300602  vand.s.mz vr0{mr1}, r12, vr0
003c80  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
003c84  eab01602  vand.s.mz vr1{mr1}, r13, vr1
003c88  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
003c8c  46000502  vstore.mz vr0{mr1}, 0(r10)
003c90  1f058500  addli r10, r10, 64
003c94  3bbd07fe  bneq r15, zero, -180
003c98  9f018fd5  addli r3, r30, -5440
003c9c  eb570f00  load.d r[16:17], 0(r30)
003ca0  2b0100f0  lui r2, 983040
003ca4  6bdd0100  load.d r[27:28], 0(r3)
003ca8  e3010fd7  loadli.w r3,  -5248(r30)
003cac  00a00000  mfence { lm }
003cb0  8ba7a711  add.ul r[16:17], r[16:17], r[27:28]
003cb4  17912100  or r2, r3, r2
003cb8  7fb11700  s_lm2gm r2, r1, 0(r[16:17])
003cbc  1f010fd5  addli r2, r30, -5504
003cc0  00a00200  mfence { lm, gm }
003cc4  63481f00  loadli.w r16,  12(r30)
003cc8  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
003ccc  db21ffff  j -1780
003cd0  00360002  core_id r12
003cd4  63012f00  loadli.w r2,  16(r30)
003cd8  9b305600  slli r1, r12, 5
003cdc  cb211100  ble.s r2, r1, 104
003ce0  80530102  load_param_i r7, 2
003ce4  2bc40000  lui r8, 12
003ce8  1f110000  addli r2, zero, 1
003cec  9f018fd7  addli r3, r30, -5184
003cf0  1f038000  addli r6, zero, 64
003cf4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003cf8  9bb35300  slli r7, r7, 5
003cfc  1f0404f0  addli r8, r8, -2048
003d00  b3840028  zext_int2long r[10:11], r1
003d04  ab0500f0  lui r11, 983040
003d08  97b42402  sll.d r[10:11], r[10:11], r2
003d0c  9715b300  or r11, r6, r11
003d10  8b249210  add.ul r[10:11], r[5:6], r[10:11]
003d14  ffa53400  l_gm2lm r11, r3, 0(r[10:11])
003d18  9bb42000  slli r9, r1, 2
003d1c  8b901310  add.s r1, r7, r1
003d20  00a00200  mfence { lm, gm }
003d24  c2800102  vload.mz vr1{mr1}, 0(r3)
003d28  8b948410  add.s r9, r9, r8
003d2c  1f858400  addli r10, r9, 64
003d30  66411080  vmerge_l.hf vr2, vr0, vr1
003d34  e64010a0  vmerge_h.hf vr1, vr0, vr1
003d38  4e902402  vstores_mask16.mz vr2{mr1}, 0(r9)
003d3c  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
003d40  3f8ff0fe  blt.s r1, r15, -64
003d44  abf00000  lui r1, 15
003d48  63411f00  loadli.w r2,  12(r30)
003d4c  00a00300  mfence { lm, sm, gm }
003d50  9b90f0ff  ori r1, r1, 4095
003d54  80a10004  csr_set csr3, r1
003d58  00d00100  sync_group
003d5c  4b57c112  ble.s r2, r12, 9684
003d60  e3002f00  loadli.w r1,  16(r30)
003d64  63412f00  loadli.w r2,  20(r30)
003d68  9f038fd7  addli r7, r30, -5184
003d6c  1f150000  addli r10, zero, 1
003d70  9f054000  addli r11, zero, 32
003d74  1f747000  addli r8, zero, 63
003d78  1f080002  addli r16, zero, 256
003d7c  9f040001  addli r9, zero, 128
003d80  ab09803f  lui r19, 260096
003d84  abeb7f00  lui r23, 2046
003d88  abec0700  lui r25, 126
003d8c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003d90  8b912010  add.s r3, r1, r2
003d94  33820008  fix2float.rn r4, r1
003d98  1bb31000  slli r6, r1, 1
003d9c  9bb22000  slli r5, r1, 2
003da0  9f804000  addli r1, r1, 32
003da4  9b382100  slli r17, r2, 2
003da8  e74f1fd2  storeli.w r1, -5636(r30)
003dac  8b907210  add.s r1, r5, r7
003db0  9ff1f1ff  addli r3, r3, -1
003db4  67004fd4  storeli.w r4, -5632(r30)
003db8  0b922130  div.s r4, r3, r2
003dbc  9f8080ff  addli r1, r1, -64
003dc0  8b117310  add.s r3, r6, r7
003dc4  e70f1fd2  storeli.w r1, -5640(r30)
003dc8  9f8081ff  addli r1, r3, -64
003dcc  674f1fd2  storeli.w r1, -5644(r30)
003dd0  abf0ffff  lui r1, 1048575
003dd4  00a00000  mfence { lm }
003dd8  67046fd4  storeli.w r6, -5568(r30)
003ddc  9b90f0ff  ori r1, r1, 4095
003de0  67041fd6  storeli.w r1, -5312(r30)
003de4  ab700000  lui r1, 7
003de8  9b9af0ff  ori r21, r1, 4095
003dec  ab00ff03  lui r1, 16368
003df0  1b9df03f  ori r26, r1, 1023
003df4  abf000fc  lui r1, 1032207
003df8  1b9e00c0  ori r28, r1, 3072
003dfc  9f000fd7  addli r1, r30, -5248
003e00  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
003e04  db090000  j 76
003e08  9f010fd5  addli r3, r30, -5504
003e0c  eb500f00  load.d r[2:3], 0(r30)
003e10  9f038fd7  addli r7, r30, -5184
003e14  1f747000  addli r8, zero, 63
003e18  ebd20100  load.d r[6:7], 0(r3)
003e1c  00a00000  mfence { lm }
003e20  ab0100f0  lui r3, 983040
003e24  63068fd5  loadli.w r12,  -5440(r30)
003e28  8ba05010  add.ul r[2:3], r[2:3], r[6:7]
003e2c  63038fd4  loadli.w r6,  -5568(r30)
003e30  80520102  load_param_i r5, 2
003e34  0b96c210  add.s r12, r5, r12
003e38  97113300  or r3, r6, r3
003e3c  ffb17000  s_lm2gm r3, r7, 0(r[2:3])
003e40  00a00200  mfence { lm, gm }
003e44  e3401f00  loadli.w r1,  12(r30)
003e48  3f201600  blt.s r12, r1, 8
003e4c  db9c0400  j 9444
003e50  e3001f00  loadli.w r1,  8(r30)
003e54  9f027fd6  addli r5, r30, -5320
003e58  9f860800  addli r13, r17, 0
003e5c  8b101610  add.s r1, r12, r1
003e60  8b90f020  mul.s r1, r1, r15
003e64  b3900028  sext_int2long r[2:3], r1
003e68  97b8a002  sll.d r[18:19], r[2:3], r10
003e6c  6bd10200  load.d r[3:4], 0(r5)
003e70  ab0000f0  lui r1, 983040
003e74  9f020fd5  addli r5, r30, -5504
003e78  97101300  or r1, r6, r1
003e7c  73b01201  store.d r[18:19], 0(r5)
003e80  0b211111  add.ul r[3:4], r[3:4], r[18:19]
003e84  ff207100  l_gm2lm r1, r7, 0(r[3:4])
003e88  00a00200  mfence { lm, gm }
003e8c  bff0b700  blt.s r15, r11, 60
003e90  e340efd3  loadli.w r1,  -5644(r30)
003e94  6301ffd3  loadli.w r2,  -5640(r30)
003e98  e341ffd3  loadli.w r3,  -5636(r30)
003e9c  c2800002  vload.mz vr1{mr1}, 0(r1)
003ea0  9f81c1ff  addli r3, r3, -32
003ea4  1f0381ff  addli r6, r2, -64
003ea8  9f8080ff  addli r1, r1, -64
003eac  93023404  setlt.u r5, r8, r3
003eb0  664110a0  vmerge_h.hf vr2, vr0, vr1
003eb4  e6401080  vmerge_l.hf vr1, vr0, vr1
003eb8  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
003ebc  1f0101ff  addli r2, r2, -128
003ec0  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
003ec4  3bef02fe  bneq r5, zero, -40
003ec8  670ccfd4  storeli.w r12, -5440(r30)
003ecc  00a00000  mfence { lm }
003ed0  bf77a200  blt.s r4, r10, 508
003ed4  9f010000  addli r3, zero, 0
003ed8  9f020000  addli r5, zero, 0
003edc  1f010000  addli r2, zero, 0
003ee0  9f880600  addli r17, r13, 0
003ee4  1f098000  addli r18, zero, 64
003ee8  db0d0000  j 108
003eec  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
003ef0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003ef4  1f110100  addli r2, r2, 1
003ef8  6a7108c0  vsrl.p vr2, r16, vr0
003efc  ea7118c0  vsrl.p vr3, r16, vr1
003f00  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f04  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f08  6af104c0  vsrl.p vr2, r9, vr0
003f0c  eaf114c0  vsrl.p vr3, r9, vr1
003f10  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f14  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f18  6a7109c0  vsrl.p vr2, r18, vr0
003f1c  ea7119c0  vsrl.p vr3, r18, vr1
003f20  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f24  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f28  6af105c0  vsrl.p vr2, r11, vr0
003f2c  eaf115c0  vsrl.p vr3, r11, vr1
003f30  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f34  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f38  fa100040  vextracti.f r1, 0(vr0)
003f3c  7a930040  vextracti.f r6, 0(vr1)
003f40  8be11110  add.f.rn r3, r3, r1
003f44  9f000fd7  addli r1, r30, -5248
003f48  8be26210  add.f.rn r5, r5, r6
003f4c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
003f50  37264100  beq r2, r4, 392
003f54  9f000100  addli r1, r2, 0
003f58  37400701  beq r14, r16, 16
003f5c  e3008fd6  loadli.w r1,  -5312(r30)
003f60  97201100  xor r1, r2, r1
003f64  8b101210  add.s r1, r4, r1
003f68  0b93e020  mul.s r6, r1, r14
003f6c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
003f70  92310002  vadd.s.mz vr3{mr1}, zero, vr0
003f74  12310002  vadd.s.mz vr2{mr1}, zero, vr0
003f78  92300002  vadd.s.mz vr1{mr1}, zero, vr0
003f7c  0b936718  sub.s r6, r15, r6
003f80  8b13e340  min.s r7, r6, r14
003f84  bfada3fe  blt.s r7, r10, -152
003f88  9f060fd7  addli r13, r30, -5248
003f8c  2bc60000  lui r12, 12
003f90  0b931820  mul.s r6, r17, r1
003f94  1f040000  addli r8, zero, 0
003f98  9f008fd7  addli r1, r30, -5184
003f9c  42920602  vload_mask16.mz vr4{mr1}, 0(r13)
003fa0  1f0606f0  addli r12, r12, -2048
003fa4  92304002  vadd.s.mz vr1{mr1}, zero, vr4
003fa8  12314002  vadd.s.mz vr2{mr1}, zero, vr4
003fac  92314002  vadd.s.mz vr3{mr1}, zero, vr4
003fb0  0b1a6610  add.s r20, r12, r6
003fb4  8b966010  add.s r13, r1, r6
003fb8  1f0b8a00  addli r22, r20, 64
003fbc  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
003fc0  1f0c8a01  addli r24, r20, 192
003fc4  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
003fc8  9f8d8601  addli r27, r13, 192
003fcc  4a130b02  vloads_mask16.mz vr6{mr1}, 0(r22)
003fd0  1f0b0a01  addli r22, r20, 128
003fd4  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
003fd8  1f8c0601  addli r24, r13, 128
003fdc  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
003fe0  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
003fe4  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
003fe8  1f8b8600  addli r22, r13, 64
003fec  42150b02  vload_mask16.mz vr10{mr1}, 0(r22)
003ff0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
003ff4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
003ff8  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
003ffc  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
004000  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004004  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004008  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
00400c  46106b02  vstore_mask16.mz vr6{mr1}, 0(r22)
004010  1f0b8400  addli r22, r8, 64
004014  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
004018  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00401c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004020  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
004024  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004028  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
00402c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
004030  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
004034  cbea63ff  ble.s r7, r22, -328
004038  1f0c0a02  addli r24, r20, 256
00403c  9f0d8a02  addli r27, r20, 320
004040  1f8b0602  addli r22, r13, 256
004044  1f040401  addli r8, r8, 128
004048  1f060604  addli r12, r12, 512
00404c  9f800004  addli r1, r1, 512
004050  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
004054  1f0c0a03  addli r24, r20, 384
004058  1f0a8a03  addli r20, r20, 448
00405c  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
004060  42130b02  vload_mask16.mz vr6{mr1}, 0(r22)
004064  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
004068  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
00406c  1f8a0603  addli r20, r13, 384
004070  1f8c8602  addli r24, r13, 320
004074  9f868603  addli r13, r13, 448
004078  42150a02  vload_mask16.mz vr10{mr1}, 0(r20)
00407c  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
004080  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
004084  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
004088  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00408c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
004090  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004094  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004098  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
00409c  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
0040a0  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0040a4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0040a8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0040ac  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
0040b0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0040b4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0040b8  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0040bc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0040c0  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
0040c4  bf3b74fe  blt.s r8, r7, -276
0040c8  dbc4ffff  j -476
0040cc  9f020000  addli r5, zero, 0
0040d0  9f010000  addli r3, zero, 0
0040d4  9f880600  addli r17, r13, 0
0040d8  1f042000  addli r8, zero, 16
0040dc  1f360000  addli r12, zero, 3
0040e0  9f561000  addli r13, zero, 13
0040e4  1f2a1000  addli r20, zero, 10
0040e8  00a00000  mfence { lm }
0040ec  3ff4a7fe  blt.s r15, r10, -740
0040f0  e3000fd4  loadli.w r1,  -5632(r30)
0040f4  1f030000  addli r6, zero, 0
0040f8  0f811118  div.f.rn r2, r3, r1
0040fc  8f801218  div.f.rn r1, r5, r1
004100  9f028fd7  addli r5, r30, -5184
004104  8b612120  mul.f.rn r3, r2, r2
004108  0b610158  neg.f r2, r2
00410c  8be03018  sub.f.rn r1, r1, r3
004110  e3013f00  loadli.w r3,  24(r30)
004114  8be03010  add.f.rn r1, r1, r3
004118  9f018fd7  addli r3, r30, -5184
00411c  8f800008  sqrt.f.rn r1, r1
004120  8f801918  div.f.rn r1, r19, r1
004124  9f838200  addli r7, r5, 64
004128  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
00412c  1f034300  addli r6, r6, 32
004130  9f820201  addli r5, r5, 128
004134  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
004138  92111102  vadd.f.mz.rn vr3{mr1}, r2, vr1
00413c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004140  6a221422  vor.u.mz vr4{mr1}, r8, vr1
004144  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
004148  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
00414c  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
004150  ee3232c2  vsrl.s.mz vr5{mr1}, vr4, vr3
004154  6e3222c2  vsrl.s.mz vr4{mr1}, vr4, vr2
004158  ea325502  vand.s.mz vr5{mr1}, r10, vr5
00415c  6a324502  vand.s.mz vr4{mr1}, r10, vr4
004160  96b15102  vadd.s.mz vr3{mr1}, vr3, vr5
004164  ea221622  vor.u.mz vr5{mr1}, r12, vr1
004168  16314102  vadd.s.mz vr2{mr1}, vr2, vr4
00416c  6aa21622  vor.u.mz vr4{mr1}, r13, vr1
004170  ea201a22  vor.u.mz vr1{mr1}, r20, vr1
004174  92b13a02  vadd.s.mz vr3{mr1}, r21, vr3
004178  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
00417c  6e3332c2  vsrl.s.mz vr6{mr1}, vr4, vr3
004180  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
004184  6e3222c2  vsrl.s.mz vr4{mr1}, vr4, vr2
004188  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
00418c  eab26c02  vand.s.mz vr5{mr1}, r25, vr6
004190  eab13b02  vand.s.mz vr3{mr1}, r23, vr3
004194  6ab24c02  vand.s.mz vr4{mr1}, r25, vr4
004198  6ab12b02  vand.s.mz vr2{mr1}, r23, vr2
00419c  eab25922  vor.s.mz vr5{mr1}, r19, vr5
0041a0  eab13922  vor.s.mz vr3{mr1}, r19, vr3
0041a4  6ab24922  vor.s.mz vr4{mr1}, r19, vr4
0041a8  6ab12922  vor.s.mz vr2{mr1}, r19, vr2
0041ac  06520220  vfloat2fp16_h.rz vr4, vr4
0041b0  06510120  vfloat2fp16_h.rz vr2, vr2
0041b4  06920220  vfloat2fp16_l.rz vr4, vr5
0041b8  06910120  vfloat2fp16_l.rz vr2, vr3
0041bc  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
0041c0  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
0041c4  ea301e02  vand.s.mz vr1{mr1}, r28, vr1
0041c8  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
0041cc  46801102  vstore.mz vr1{mr1}, 0(r3)
0041d0  9f818100  addli r3, r3, 64
0041d4  3f4df3fe  blt.s r6, r15, -176
0041d8  5b86ffff  j -976
0041dc  ab330100  lui r7, 19
0041e0  803a0002  core_id r21
0041e4  00510102  load_param_i r2, 2
0041e8  9f100000  addli r1, zero, 1
0041ec  1f038fd7  addli r6, r30, -5184
0041f0  1f048000  addli r8, zero, 64
0041f4  1f050010  addli r10, zero, 2048
0041f8  9bb15a00  slli r3, r21, 5
0041fc  9b345100  slli r9, r2, 5
004200  9f8303f8  addli r7, r7, -1024
004204  b3850128  zext_int2long r[12:13], r3
004208  ab0600f0  lui r13, 983040
00420c  97b51502  sll.d r[12:13], r[12:13], r1
004210  9716d400  or r13, r8, r13
004214  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
004218  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
00421c  9bb52100  slli r11, r3, 2
004220  8b913410  add.s r3, r9, r3
004224  00a00200  mfence { lm, gm }
004228  42000302  vload.mz vr0{mr1}, 0(r6)
00422c  1386a104  setlt.u r12, r3, r10
004230  8b957510  add.s r11, r11, r7
004234  9f868500  addli r13, r11, 64
004238  86300000  vfp162float_l.rn vr1, vr0
00423c  06700000  vfp162float_h.rn vr0, vr0
004240  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
004244  4e900602  vstores_mask16.mz vr0{mr1}, 0(r13)
004248  bb7e06fe  bneq r12, zero, -68
00424c  abf00000  lui r1, 15
004250  00a00300  mfence { lm, sm, gm }
004254  9b8d1a00  andi r27, r21, 1
004258  1f020006  addli r4, zero, 768
00425c  9b91f0ff  ori r3, r1, 4095
004260  80a10104  csr_set csr3, r3
004264  9f010006  addli r3, zero, 768
004268  00d00100  sync_group
00426c  37a00d00  beq r27, zero, 8
004270  1f02000a  addli r4, zero, 1280
004274  e3421f00  loadli.w r5,  12(r30)
004278  1f1b0000  addli r22, zero, 1
00427c  bfd26211  blt.s r5, r22, 8372
004280  8b903d20  mul.s r1, r27, r3
004284  9b451100  srli r11, r2, 1
004288  1b312200  slli r2, r4, 2
00428c  1f058fd7  addli r10, r30, -5184
004290  9b361200  slli r13, r4, 1
004294  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004298  ab5c0100  lui r25, 21
00429c  2b590100  lui r18, 21
0042a0  1f040000  addli r8, zero, 0
0042a4  1bc61a00  srli r12, r21, 1
0042a8  9f787000  addli r17, zero, 63
0042ac  1f0a0005  addli r20, zero, 640
0042b0  9f0b8000  addli r23, zero, 64
0042b4  1f0c4000  addli r24, zero, 32
0042b8  1f0e0003  addli r28, zero, 384
0042bc  67081fd6  storeli.w r1, -5248(r30)
0042c0  9f004200  addli r1, r4, 32
0042c4  0b11a110  add.s r2, r2, r10
0042c8  8b91a610  add.s r3, r13, r10
0042cc  9f8c0cf8  addli r25, r25, -1024
0042d0  1f0909fc  addli r18, r18, -512
0042d4  67041fd6  storeli.w r1, -5312(r30)
0042d8  9f0081ff  addli r1, r2, -64
0042dc  1f018fd4  addli r2, r30, -5568
0042e0  670c1fd4  storeli.w r1, -5440(r30)
0042e4  9f8081ff  addli r1, r3, -64
0042e8  67081fd4  storeli.w r1, -5504(r30)
0042ec  abf0ffff  lui r1, 1048575
0042f0  00a00000  mfence { lm }
0042f4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0042f8  2bf10000  lui r2, 15
0042fc  9b9000f8  ori r1, r1, 3968
004300  1b1df1ff  ori r26, r2, 4095
004304  67001fd4  storeli.w r1, -5632(r30)
004308  db030000  j 28
00430c  00a00300  mfence { lm, sm, gm }
004310  80210d04  csr_set csr3, r26
004314  00d00100  sync_group
004318  0b14b410  add.s r8, r8, r11
00431c  3f200401  blt.s r8, r16, 8
004320  5b18f9ff  j -14144
004324  0b11c410  add.s r2, r8, r12
004328  cb1f28fe  ble.s r16, r2, -28
00432c  e3001f00  loadli.w r1,  8(r30)
004330  8b01b430  div.u r3, r8, r11
004334  0b111110  add.s r2, r2, r1
004338  e3000fd7  loadli.w r1,  -5248(r30)
00433c  1b31b100  slli r2, r2, 11
004340  9bb16100  slli r3, r3, 6
004344  17111100  or r2, r2, r1
004348  9f007fd6  addli r1, r30, -5320
00434c  9b810104  andi r3, r3, 64
004350  b3120128  sext_int2long r[6:7], r2
004354  6bd70000  load.d r[15:16], 0(r1)
004358  2b0100f0  lui r2, 983040
00435c  97b26203  sll.d r[6:7], r[6:7], r22
004360  17912600  or r2, r13, r2
004364  0b275710  add.ul r[15:16], r[15:16], r[6:7]
004368  7f21a700  l_gm2lm r2, r10, 0(r[15:16])
00436c  17915101  or r2, r3, r21
004370  00a00200  mfence { lm, gm }
004374  e3010fd5  loadli.w r3,  -5504(r30)
004378  e3048fd5  loadli.w r9,  -5440(r30)
00437c  63078fd6  loadli.w r14,  -5312(r30)
004380  c2800102  vload.mz vr1{mr1}, 0(r3)
004384  1f07c7ff  addli r14, r14, -32
004388  9f8984ff  addli r19, r9, -64
00438c  9f8181ff  addli r3, r3, -64
004390  9387e804  setlt.u r15, r17, r14
004394  06f10000  vfp162float_h.rn vr2, vr1
004398  86b00000  vfp162float_l.rn vr1, vr1
00439c  46902402  vstore_mask16.mz vr2{mr1}, 0(r9)
0043a0  9f8404ff  addli r9, r9, -128
0043a4  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
0043a8  3bef07fe  bneq r15, zero, -40
0043ac  00a00000  mfence { lm }
0043b0  3bb60d00  bneq r27, zero, 396
0043b4  9f008fd4  addli r1, r30, -5568
0043b8  e3040fd4  loadli.w r9,  -5632(r30)
0043bc  9f010000  addli r3, zero, 0
0043c0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0043c4  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0043c8  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0043cc  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0043d0  8b977110  add.s r15, r3, r7
0043d4  0b173510  add.s r14, r10, r3
0043d8  9f840401  addli r9, r9, 128
0043dc  9f810104  addli r3, r3, 512
0043e0  9f800701  addli r1, r15, 128
0043e4  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
0043e8  1f888700  addli r16, r15, 64
0043ec  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
0043f0  9f098701  addli r19, r14, 192
0043f4  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
0043f8  9f808701  addli r1, r15, 192
0043fc  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
004400  1f088700  addli r16, r14, 64
004404  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
004408  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
00440c  9f000701  addli r1, r14, 128
004410  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
004414  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
004418  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00441c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004420  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004424  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004428  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00442c  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
004430  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
004434  9f800702  addli r1, r15, 256
004438  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00443c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004440  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004444  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
004448  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
00444c  9f808702  addli r1, r15, 320
004450  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
004454  9f090702  addli r19, r14, 256
004458  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00445c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004460  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004464  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
004468  9f800703  addli r1, r15, 384
00446c  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
004470  9f878703  addli r15, r15, 448
004474  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004478  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
00447c  9f008702  addli r1, r14, 320
004480  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
004484  9f070703  addli r15, r14, 384
004488  1f078703  addli r14, r14, 448
00448c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
004490  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004494  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
004498  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00449c  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
0044a0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0044a4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0044a8  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
0044ac  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0044b0  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0044b4  93804405  setlt.u r1, r9, r20
0044b8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0044bc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0044c0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0044c4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0044c8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0044cc  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
0044d0  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
0044d4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0044d8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0044dc  bbdb00fe  bneq r1, zero, -268
0044e0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0044e4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0044e8  9f000002  addli r1, zero, 256
0044ec  6af100c0  vsrl.p vr2, r1, vr0
0044f0  eaf110c0  vsrl.p vr3, r1, vr1
0044f4  9f000001  addli r1, zero, 128
0044f8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0044fc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004500  6af100c0  vsrl.p vr2, r1, vr0
004504  eaf110c0  vsrl.p vr3, r1, vr1
004508  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00450c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004510  6af10bc0  vsrl.p vr2, r23, vr0
004514  eaf11bc0  vsrl.p vr3, r23, vr1
004518  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00451c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004520  6a710cc0  vsrl.p vr2, r24, vr0
004524  ea711cc0  vsrl.p vr3, r24, vr1
004528  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00452c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004530  fa110040  vextracti.f r3, 0(vr0)
004534  fa940040  vextracti.f r9, 0(vr1)
004538  5b660000  j 816
00453c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004540  abf0ffff  lui r1, 1048575
004544  1f8b0d00  addli r22, r27, 0
004548  9f010000  addli r3, zero, 0
00454c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004550  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004554  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004558  9b9400f8  ori r9, r1, 3968
00455c  0b973310  add.s r14, r7, r3
004560  8b193510  add.s r19, r10, r3
004564  9f840401  addli r9, r9, 128
004568  9f810104  addli r3, r3, 512
00456c  1f080731  addli r16, r14, 6272
004570  9f070730  addli r15, r14, 6144
004574  9f008731  addli r1, r14, 6336
004578  9f8d0918  addli r27, r19, 3072
00457c  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
004580  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
004584  9f078730  addli r15, r14, 6208
004588  ca940002  vloads_mask16.mz vr9{mr1}, 0(r1)
00458c  9f808918  addli r1, r19, 3136
004590  1f888919  addli r16, r19, 3264
004594  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
004598  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
00459c  9f870919  addli r15, r19, 3200
0045a0  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
0045a4  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0045a8  42950702  vload_mask16.mz vr10{mr1}, 0(r15)
0045ac  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0045b0  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0045b4  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0045b8  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0045bc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0045c0  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0045c4  46907702  vstore_mask16.mz vr7{mr1}, 0(r15)
0045c8  9f070732  addli r15, r14, 6400
0045cc  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0045d0  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
0045d4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0045d8  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
0045dc  1f88091a  addli r16, r19, 3328
0045e0  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
0045e4  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0045e8  9f80091b  addli r1, r19, 3456
0045ec  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0045f0  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0045f4  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
0045f8  9f078732  addli r15, r14, 6464
0045fc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004600  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004604  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
004608  9f070733  addli r15, r14, 6528
00460c  1f078733  addli r14, r14, 6592
004610  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
004614  9f87891a  addli r15, r19, 3392
004618  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
00461c  1f87891b  addli r14, r19, 3520
004620  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
004624  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004628  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00462c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004630  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
004634  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004638  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00463c  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
004640  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004644  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
004648  9387c405  setlt.u r15, r9, r28
00464c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004650  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004654  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004658  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00465c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004660  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
004664  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
004668  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00466c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004670  bbbb07fe  bneq r15, zero, -276
004674  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004678  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00467c  9f000002  addli r1, zero, 256
004680  9f040000  addli r9, zero, 0
004684  eaf110c0  vsrl.p vr3, r1, vr1
004688  6af100c0  vsrl.p vr2, r1, vr0
00468c  9f000001  addli r1, zero, 128
004690  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004694  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004698  eaf110c0  vsrl.p vr3, r1, vr1
00469c  6af100c0  vsrl.p vr2, r1, vr0
0046a0  abf0ffff  lui r1, 1048575
0046a4  9b9d00f8  ori r27, r1, 3968
0046a8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0046ac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0046b0  eaf11bc0  vsrl.p vr3, r23, vr1
0046b4  6af10bc0  vsrl.p vr2, r23, vr0
0046b8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0046bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0046c0  ea711cc0  vsrl.p vr3, r24, vr1
0046c4  6a710cc0  vsrl.p vr2, r24, vr0
0046c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0046cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0046d0  fa990040  vextracti.f r19, 0(vr1)
0046d4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0046d8  fa110040  vextracti.f r3, 0(vr0)
0046dc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0046e0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0046e4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0046e8  8b979310  add.s r15, r7, r9
0046ec  0b179510  add.s r14, r10, r9
0046f0  9f8d0d01  addli r27, r27, 128
0046f4  9f840404  addli r9, r9, 512
0046f8  9f800718  addli r1, r15, 3072
0046fc  1f880719  addli r16, r15, 3200
004700  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
004704  9f0a8701  addli r21, r14, 192
004708  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
00470c  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
004710  9f808718  addli r1, r15, 3136
004714  1f888719  addli r16, r15, 3264
004718  c2950a02  vload_mask16.mz vr11{mr1}, 0(r21)
00471c  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
004720  9f000701  addli r1, r14, 128
004724  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
004728  1f088700  addli r16, r14, 64
00472c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
004730  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
004734  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004738  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00473c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004740  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004744  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
004748  9f80071a  addli r1, r15, 3328
00474c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004750  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004754  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004758  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00475c  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
004760  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
004764  9f80871a  addli r1, r15, 3392
004768  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
00476c  9f0a0702  addli r21, r14, 256
004770  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
004774  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004778  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00477c  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
004780  9f80071b  addli r1, r15, 3456
004784  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
004788  9f87871b  addli r15, r15, 3520
00478c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004790  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004794  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
004798  9f008702  addli r1, r14, 320
00479c  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
0047a0  9f070703  addli r15, r14, 384
0047a4  1f078703  addli r14, r14, 448
0047a8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0047ac  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0047b0  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0047b4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0047b8  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
0047bc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0047c0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0047c4  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
0047c8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0047cc  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0047d0  93804d05  setlt.u r1, r27, r20
0047d4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0047d8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0047dc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0047e0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0047e4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0047e8  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
0047ec  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
0047f0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0047f4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0047f8  bbcb00fe  bneq r1, zero, -272
0047fc  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004800  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004804  9f000002  addli r1, zero, 256
004808  9f0d0b00  addli r27, r22, 0
00480c  803a0002  core_id r21
004810  1f1b0000  addli r22, zero, 1
004814  6af100c0  vsrl.p vr2, r1, vr0
004818  eaf110c0  vsrl.p vr3, r1, vr1
00481c  9f000001  addli r1, zero, 128
004820  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004824  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004828  6af100c0  vsrl.p vr2, r1, vr0
00482c  eaf110c0  vsrl.p vr3, r1, vr1
004830  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004834  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004838  6af10bc0  vsrl.p vr2, r23, vr0
00483c  eaf11bc0  vsrl.p vr3, r23, vr1
004840  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004844  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004848  6a710cc0  vsrl.p vr2, r24, vr0
00484c  ea711cc0  vsrl.p vr3, r24, vr1
004850  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004854  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004858  fa940040  vextracti.f r9, 0(vr1)
00485c  fa100040  vextracti.f r1, 0(vr0)
004860  8be11110  add.f.rn r3, r3, r1
004864  8be49910  add.f.rn r9, r19, r9
004868  9b302100  slli r1, r2, 2
00486c  1b01e107  andi r2, r2, 126
004870  0b979011  add.s r14, r1, r25
004874  8b972011  add.s r15, r1, r18
004878  9b904000  ori r1, r1, 4
00487c  1b312100  slli r2, r2, 2
004880  73603700  stores.w r3, 0(r14)
004884  73e09700  stores.w r9, 0(r15)
004888  8b919011  add.s r3, r1, r25
00488c  8b149111  add.s r9, r2, r25
004890  8b902011  add.s r1, r1, r18
004894  0b112111  add.s r2, r2, r18
004898  1f078fd7  addli r14, r30, -5184
00489c  9f070000  addli r15, zero, 0
0048a0  00a00300  mfence { lm, sm, gm }
0048a4  80210d04  csr_set csr3, r26
0048a8  00d00100  sync_group
0048ac  63481f00  loadli.w r16,  12(r30)
0048b0  efc10100  loads.w r3, 0(r3)
0048b4  efc40400  loads.w r9, 0(r9)
0048b8  efc00000  loads.w r1, 0(r1)
0048bc  6f410100  loads.w r2, 0(r2)
0048c0  8be19110  add.f.rn r3, r3, r9
0048c4  8be02010  add.f.rn r1, r1, r2
0048c8  2b01003a  lui r2, 237568
0048cc  9f048fd7  addli r9, r30, -5184
0048d0  8be12120  mul.f.rn r3, r3, r2
0048d4  8be02020  mul.f.rn r1, r1, r2
0048d8  0be13120  mul.f.rn r2, r3, r3
0048dc  8be10158  neg.f r3, r3
0048e0  8be02018  sub.f.rn r1, r1, r2
0048e4  63013f00  loadli.w r2,  24(r30)
0048e8  8be02010  add.f.rn r1, r1, r2
0048ec  2b01803f  lui r2, 260096
0048f0  8f800008  sqrt.f.rn r1, r1
0048f4  0f011118  div.f.rn r2, r2, r1
0048f8  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
0048fc  9f008700  addli r1, r14, 64
004900  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
004904  9f874700  addli r15, r15, 32
004908  1f070701  addli r14, r14, 128
00490c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
004910  93804704  setlt.u r1, r15, r4
004914  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
004918  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
00491c  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
004920  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
004924  06110000  vfloat2fp16_l.rn vr2, vr0
004928  06d10000  vfloat2fp16_h.rn vr2, vr1
00492c  46802402  vstore.mz vr2{mr1}, 0(r9)
004930  9f848400  addli r9, r9, 64
004934  3b9f00fe  bneq r1, zero, -60
004938  6b510f00  load.d r[3:4], 0(r30)
00493c  ab0000f0  lui r1, 983040
004940  00a00000  mfence { lm }
004944  97901600  or r1, r13, r1
004948  0b215110  add.ul r[3:4], r[3:4], r[6:7]
00494c  ff30a100  s_lm2gm r1, r10, 0(r[3:4])
004950  00a00200  mfence { lm, gm }
004954  db38ffff  j -1596
004958  80300002  core_id r1
00495c  e3012f00  loadli.w r3,  16(r30)
004960  1bb15000  slli r2, r1, 5
004964  cb912100  ble.s r3, r2, 100
004968  00540102  load_param_i r8, 2
00496c  ab840100  lui r9, 24
004970  9f110000  addli r3, zero, 1
004974  1f038fd7  addli r6, r30, -5184
004978  9f038000  addli r7, zero, 64
00497c  1b345400  slli r8, r8, 5
004980  9f840400  addli r9, r9, 0
004984  33050128  zext_int2long r[11:12], r2
004988  2b0600f0  lui r12, 983040
00498c  17353502  sll.d r[11:12], r[11:12], r3
004990  1796c300  or r12, r7, r12
004994  0b25a210  add.ul r[11:12], r[5:6], r[11:12]
004998  7f266500  l_gm2lm r12, r6, 0(r[11:12])
00499c  1b352100  slli r10, r2, 2
0049a0  0b112410  add.s r2, r8, r2
0049a4  00a00200  mfence { lm, gm }
0049a8  42000302  vload.mz vr0{mr1}, 0(r6)
0049ac  0b159510  add.s r10, r10, r9
0049b0  9f058500  addli r11, r10, 64
0049b4  86300000  vfp162float_l.rn vr1, vr0
0049b8  06700000  vfp162float_h.rn vr0, vr0
0049bc  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
0049c0  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
0049c4  3f0ff1fe  blt.s r2, r15, -64
0049c8  2bf10000  lui r2, 15
0049cc  e3411f00  loadli.w r3,  12(r30)
0049d0  00a00300  mfence { lm, sm, gm }
0049d4  1b11f1ff  ori r2, r2, 4095
0049d8  80210104  csr_set csr3, r2
0049dc  00d00100  sync_group
0049e0  4bc5110c  ble.s r3, r1, 6480
0049e4  63032f00  loadli.w r6,  16(r30)
0049e8  e3432f00  loadli.w r7,  20(r30)
0049ec  9f0b8fd7  addli r23, r30, -5184
0049f0  1f150000  addli r10, zero, 1
0049f4  9f054000  addli r11, zero, 32
0049f8  1f767000  addli r12, zero, 63
0049fc  1f080002  addli r16, zero, 256
004a00  9f080001  addli r17, zero, 128
004a04  1f098000  addli r18, zero, 64
004a08  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004a0c  0b127310  add.s r4, r6, r7
004a10  33010308  fix2float.rn r2, r6
004a14  1b342300  slli r8, r6, 2
004a18  9b321300  slli r5, r6, 1
004a1c  9bb42300  slli r9, r7, 2
004a20  1f72f2ff  addli r4, r4, -1
004a24  670c2fd4  storeli.w r2, -5440(r30)
004a28  1f014300  addli r2, r6, 32
004a2c  0b137411  add.s r6, r8, r23
004a30  0b947211  add.s r8, r5, r23
004a34  67082fd4  storeli.w r2, -5504(r30)
004a38  1f0183ff  addli r2, r6, -64
004a3c  2bf3ffff  lui r6, 1048575
004a40  0b127230  div.s r4, r4, r7
004a44  67042fd4  storeli.w r2, -5568(r30)
004a48  1f0184ff  addli r2, r8, -64
004a4c  9b16f3ff  ori r13, r6, 4095
004a50  2b830100  lui r6, 24
004a54  67002fd4  storeli.w r2, -5632(r30)
004a58  1f010fd7  addli r2, r30, -5248
004a5c  1f030300  addli r6, r6, 0
004a60  00a00000  mfence { lm }
004a64  67045fd6  storeli.w r5, -5312(r30)
004a68  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004a6c  db070000  j 60
004a70  6b510f00  load.d r[3:4], 0(r30)
004a74  00a00000  mfence { lm }
004a78  ab0900f0  lui r19, 983040
004a7c  9f0b8fd7  addli r23, r30, -5184
004a80  005a0102  load_param_i r20, 2
004a84  e3028fd6  loadli.w r5,  -5312(r30)
004a88  8b101a10  add.s r1, r20, r1
004a8c  8b235111  add.ul r[8:9], r[3:4], r[22:23]
004a90  97993201  or r19, r5, r19
004a94  ffb97301  s_lm2gm r19, r23, 0(r[8:9])
004a98  00a00200  mfence { lm, gm }
004a9c  63411f00  loadli.w r2,  12(r30)
004aa0  3fa02000  blt.s r1, r2, 8
004aa4  db110300  j 6284
004aa8  63011f00  loadli.w r2,  8(r30)
004aac  8b932010  add.s r7, r1, r2
004ab0  8b93f320  mul.s r7, r7, r15
004ab4  b3930328  sext_int2long r[8:9], r7
004ab8  97baa302  sll.d r[22:23], r[8:9], r10
004abc  1f047fd6  addli r8, r30, -5320
004ac0  ab0300f0  lui r7, 983040
004ac4  6b510400  load.d r[3:4], 0(r8)
004ac8  97937200  or r7, r5, r7
004acc  8b295111  add.ul r[20:21], r[3:4], r[22:23]
004ad0  ffa37901  l_gm2lm r7, r23, 0(r[20:21])
004ad4  00a00200  mfence { lm, gm }
004ad8  bff0b700  blt.s r15, r11, 60
004adc  e3030fd4  loadli.w r7,  -5632(r30)
004ae0  63048fd4  loadli.w r8,  -5568(r30)
004ae4  e3090fd5  loadli.w r19,  -5504(r30)
004ae8  c2800302  vload.mz vr1{mr1}, 0(r7)
004aec  9f89c9ff  addli r19, r19, -32
004af0  9f0b84ff  addli r23, r8, -64
004af4  9f8383ff  addli r7, r7, -64
004af8  130a3605  setlt.u r20, r12, r19
004afc  06f10000  vfp162float_h.rn vr2, vr1
004b00  86b00000  vfp162float_l.rn vr1, vr1
004b04  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
004b08  1f0404ff  addli r8, r8, -128
004b0c  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
004b10  3b6f0afe  bneq r20, zero, -40
004b14  00a00000  mfence { lm }
004b18  bf17a200  blt.s r4, r10, 484
004b1c  1f0c0000  addli r24, zero, 0
004b20  9f0b0000  addli r23, zero, 0
004b24  9f0c0000  addli r25, zero, 0
004b28  db0c0000  j 100
004b2c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004b30  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004b34  9f9c0c00  addli r25, r25, 1
004b38  6a7108c0  vsrl.p vr2, r16, vr0
004b3c  ea7118c0  vsrl.p vr3, r16, vr1
004b40  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b44  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b48  6af108c0  vsrl.p vr2, r17, vr0
004b4c  eaf118c0  vsrl.p vr3, r17, vr1
004b50  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b54  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b58  6a7109c0  vsrl.p vr2, r18, vr0
004b5c  ea7119c0  vsrl.p vr3, r18, vr1
004b60  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b64  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b68  6af105c0  vsrl.p vr2, r11, vr0
004b6c  eaf115c0  vsrl.p vr3, r11, vr1
004b70  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b74  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b78  7a110040  vextracti.f r2, 0(vr0)
004b7c  fa910040  vextracti.f r3, 0(vr1)
004b80  0b6c2c10  add.f.rn r24, r24, r2
004b84  8beb3b10  add.f.rn r23, r23, r3
004b88  b7f54c00  beq r25, r4, 380
004b8c  9f830c00  addli r7, r25, 0
004b90  37300701  beq r14, r16, 12
004b94  97a3dc00  xor r7, r25, r13
004b98  8b137210  add.s r7, r4, r7
004b9c  1f010fd7  addli r2, r30, -5248
004ba0  0b94e320  mul.s r8, r7, r14
004ba4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004ba8  0b948718  sub.s r8, r15, r8
004bac  0b1de440  min.s r26, r8, r14
004bb0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004bb4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004bb8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004bbc  bf4dadfe  blt.s r26, r10, -144
004bc0  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
004bc4  9f0d0000  addli r27, zero, 0
004bc8  0b9e7420  mul.s r28, r9, r7
004bcc  9f098fd7  addli r19, r30, -5184
004bd0  1f0a0300  addli r20, r6, 0
004bd4  92304002  vadd.s.mz vr1{mr1}, zero, vr4
004bd8  12314002  vadd.s.mz vr2{mr1}, zero, vr4
004bdc  92314002  vadd.s.mz vr3{mr1}, zero, vr4
004be0  0b14ca11  add.s r8, r20, r28
004be4  8b93c911  add.s r7, r19, r28
004be8  9f028400  addli r5, r8, 64
004bec  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
004bf0  9f018401  addli r3, r8, 192
004bf4  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
004bf8  1f818301  addli r2, r7, 192
004bfc  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
004c00  9f020401  addli r5, r8, 128
004c04  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
004c08  9f818300  addli r3, r7, 64
004c0c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
004c10  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
004c14  9f820301  addli r5, r7, 128
004c18  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
004c1c  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
004c20  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004c24  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
004c28  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
004c2c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
004c30  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004c34  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004c38  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
004c3c  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
004c40  9f818d00  addli r3, r27, 64
004c44  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004c48  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004c4c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004c50  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
004c54  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004c58  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
004c5c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
004c60  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
004c64  4b2b3dfe  ble.s r26, r3, -312
004c68  9f010402  addli r3, r8, 256
004c6c  9f028402  addli r5, r8, 320
004c70  1f810302  addli r2, r7, 256
004c74  9f8d0d01  addli r27, r27, 128
004c78  1f0a0a04  addli r20, r20, 512
004c7c  9f890904  addli r19, r19, 512
004c80  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
004c84  9f010403  addli r3, r8, 384
004c88  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
004c8c  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
004c90  9f828302  addli r5, r7, 320
004c94  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
004c98  9f018403  addli r3, r8, 448
004c9c  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
004ca0  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
004ca4  9f810303  addli r3, r7, 384
004ca8  9f838303  addli r7, r7, 448
004cac  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
004cb0  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
004cb4  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
004cb8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004cbc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
004cc0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004cc4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004cc8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004ccc  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
004cd0  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
004cd4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004cd8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004cdc  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
004ce0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004ce4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004ce8  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
004cec  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004cf0  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
004cf4  bfbbadff  blt.s r27, r26, -276
004cf8  dbc6ffff  j -460
004cfc  9f0b0000  addli r23, zero, 0
004d00  1f0c0000  addli r24, zero, 0
004d04  00a00000  mfence { lm }
004d08  bfa5a7fe  blt.s r15, r10, -664
004d0c  63018fd5  loadli.w r2,  -5440(r30)
004d10  1f0a8fd7  addli r20, r30, -5184
004d14  0f042c18  div.f.rn r8, r24, r2
004d18  8f832b18  div.f.rn r7, r23, r2
004d1c  63013f00  loadli.w r2,  24(r30)
004d20  9f0b0000  addli r23, zero, 0
004d24  8b698420  mul.f.rn r19, r8, r8
004d28  0b640458  neg.f r8, r8
004d2c  8be33319  sub.f.rn r7, r7, r19
004d30  9f098fd7  addli r19, r30, -5184
004d34  8be32310  add.f.rn r7, r7, r2
004d38  2b01803f  lui r2, 260096
004d3c  8f830308  sqrt.f.rn r7, r7
004d40  8f037118  div.f.rn r7, r2, r7
004d44  c2100a02  vload_mask16.mz vr1{mr1}, 0(r20)
004d48  1f0c8a00  addli r24, r20, 64
004d4c  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
004d50  9f8b4b00  addli r23, r23, 32
004d54  1f0a0a01  addli r20, r20, 128
004d58  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
004d5c  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
004d60  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
004d64  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
004d68  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
004d6c  86910000  vfloat2fp16_l.rn vr3, vr1
004d70  86510100  vfloat2fp16_h.rn vr3, vr2
004d74  46803902  vstore.mz vr3{mr1}, 0(r19)
004d78  9f898900  addli r19, r19, 64
004d7c  3faffbfe  blt.s r23, r15, -56
004d80  5b9effff  j -784
004d84  63012f00  loadli.w r2,  16(r30)
004d88  ab0100f0  lui r3, 983040
004d8c  1b311100  slli r2, r2, 1
004d90  17113100  or r2, r2, r3
004d94  aba10100  lui r3, 26
004d98  9f810100  addli r3, r3, 0
004d9c  7f013300  l_gm2sm r2, r3, 0(r[7:8])
004da0  5b080000  j 64
004da4  63012f00  loadli.w r2,  16(r30)
004da8  ab0100f0  lui r3, 983040
004dac  1b311100  slli r2, r2, 1
004db0  17113100  or r2, r2, r3
004db4  abe10100  lui r3, 30
004db8  9f810100  addli r3, r3, 0
004dbc  7f013300  l_gm2sm r2, r3, 0(r[7:8])
004dc0  5bc30000  j 1560
004dc4  63012f00  loadli.w r2,  16(r30)
004dc8  ab0100f0  lui r3, 983040
004dcc  1b311100  slli r2, r2, 1
004dd0  17113100  or r2, r2, r3
004dd4  abb10100  lui r3, 27
004dd8  9f810100  addli r3, r3, 0
004ddc  7f013400  l_gm2sm r2, r3, 0(r[9:10])
004de0  2bf10000  lui r2, 15
004de4  e3411f00  loadli.w r3,  12(r30)
004de8  00200300  mfence { sm, gm }
004dec  1b11f1ff  ori r2, r2, 4095
004df0  80210104  csr_set csr3, r2
004df4  00d00100  sync_group
004df8  cbe4110a  ble.s r3, r1, 5432
004dfc  63012f00  loadli.w r2,  16(r30)
004e00  e3412f00  loadli.w r3,  20(r30)
004e04  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004e08  1f140000  addli r8, zero, 1
004e0c  9f048fd7  addli r9, r30, -5184
004e10  9f050002  addli r11, zero, 256
004e14  2b06ffff  lui r12, 1048560
004e18  2b08807f  lui r16, 522240
004e1c  ab08c07f  lui r17, 523264
004e20  1f090001  addli r18, zero, 128
004e24  9f098000  addli r19, zero, 64
004e28  1f0a4000  addli r20, zero, 32
004e2c  9b3b1100  slli r23, r2, 1
004e30  0b123110  add.s r4, r2, r3
004e34  33010108  fix2float.rn r2, r2
004e38  1bb31100  slli r6, r3, 1
004e3c  67042fd4  storeli.w r2, -5568(r30)
004e40  1f71f2ff  addli r2, r4, -1
004e44  67087fd5  storeli.w r23, -5504(r30)
004e48  8b133130  div.s r7, r2, r3
004e4c  2bf1ffff  lui r2, 1048575
004e50  9f010fd7  addli r3, r30, -5248
004e54  1b15f1ff  ori r10, r2, 4095
004e58  1f012000  addli r2, zero, 16
004e5c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
004e60  9f018fd6  addli r3, r30, -5312
004e64  6a200122  vor.u.mz vr0{mr1}, r2, vr0
004e68  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
004e6c  ab710000  lui r3, 7
004e70  9b96f1ff  ori r13, r3, 4095
004e74  5b090000  j 72
004e78  9f028fd5  addli r5, r30, -5440
004e7c  eb510f00  load.d r[4:5], 0(r30)
004e80  ab0400f0  lui r9, 983040
004e84  ebda0200  load.d r[22:23], 0(r5)
004e88  00a00000  mfence { lm }
004e8c  9f028fd7  addli r5, r30, -5184
004e90  e30b0fd5  loadli.w r23,  -5504(r30)
004e94  8ba15111  add.ul r[4:5], r[4:5], r[22:23]
004e98  805a0102  load_param_i r21, 2
004e9c  97949b00  or r9, r23, r9
004ea0  8b901a10  add.s r1, r21, r1
004ea4  ffb45100  s_lm2gm r9, r5, 0(r[4:5])
004ea8  9f048fd7  addli r9, r30, -5184
004eac  00a00200  mfence { lm, gm }
004eb0  e3411f00  loadli.w r3,  12(r30)
004eb4  3fa03000  blt.s r1, r3, 8
004eb8  5b8f0200  j 5240
004ebc  e3011f00  loadli.w r3,  8(r30)
004ec0  1f0c7fd6  addli r24, r30, -5320
004ec4  8b913010  add.s r3, r1, r3
004ec8  8b91f120  mul.s r3, r3, r15
004ecc  b3910128  sext_int2long r[4:5], r3
004ed0  97ba8102  sll.d r[22:23], r[4:5], r8
004ed4  6b520c00  load.d r[5:6], 0(r24)
004ed8  ab0100f0  lui r3, 983040
004edc  1f0c8fd5  addli r24, r30, -5440
004ee0  73305c01  store.d r[22:23], 0(r24)
004ee4  97913b00  or r3, r23, r3
004ee8  8b2a5211  add.ul r[22:23], r[5:6], r[22:23]
004eec  ffa19a00  l_gm2lm r3, r9, 0(r[22:23])
004ef0  00a00200  mfence { lm, gm }
004ef4  bfcc8300  blt.s r7, r8, 816
004ef8  9f0d0000  addli r27, zero, 0
004efc  1f0d0000  addli r26, zero, 0
004f00  1f0e0000  addli r28, zero, 0
004f04  db0c0000  j 100
004f08  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
004f0c  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
004f10  1f1e0e00  addli r28, r28, 1
004f14  6af105c0  vsrl.p vr2, r11, vr0
004f18  eaf115c0  vsrl.p vr3, r11, vr1
004f1c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f20  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f24  6a7109c0  vsrl.p vr2, r18, vr0
004f28  ea7119c0  vsrl.p vr3, r18, vr1
004f2c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f30  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f34  6af109c0  vsrl.p vr2, r19, vr0
004f38  eaf119c0  vsrl.p vr3, r19, vr1
004f3c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f40  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f44  6a710ac0  vsrl.p vr2, r20, vr0
004f48  ea711ac0  vsrl.p vr3, r20, vr1
004f4c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f50  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f54  fa110040  vextracti.f r3, 0(vr0)
004f58  7a920040  vextracti.f r4, 0(vr1)
004f5c  8bed3d10  add.f.rn r27, r27, r3
004f60  0b6d4d10  add.f.rn r26, r26, r4
004f64  372b7e00  beq r28, r7, 712
004f68  9f010e00  addli r3, r28, 0
004f6c  3730b700  beq r14, r11, 12
004f70  9721ae00  xor r3, r28, r10
004f74  8b913310  add.s r3, r7, r3
004f78  0b92e120  mul.s r4, r3, r14
004f7c  0b924718  sub.s r4, r15, r4
004f80  8b1ae240  min.s r21, r4, r14
004f84  1f020fd7  addli r4, r30, -5248
004f88  42110202  vload_mask16.mz vr2{mr1}, 0(r4)
004f8c  92322002  vadd.s.mz vr5{mr1}, zero, vr2
004f90  12322002  vadd.s.mz vr4{mr1}, zero, vr2
004f94  92312002  vadd.s.mz vr3{mr1}, zero, vr2
004f98  bfcd8afe  blt.s r21, r8, -144
004f9c  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
004fa0  8b1b3320  mul.s r23, r6, r3
004fa4  ab910100  lui r3, 25
004fa8  1f0b0000  addli r22, zero, 0
004fac  9f048fd7  addli r9, r30, -5184
004fb0  9f810100  addli r3, r3, 0
004fb4  12315002  vadd.s.mz vr2{mr1}, zero, vr5
004fb8  92315002  vadd.s.mz vr3{mr1}, zero, vr5
004fbc  12325002  vadd.s.mz vr4{mr1}, zero, vr5
004fc0  0b9c7111  add.s r24, r3, r23
004fc4  0b927411  add.s r4, r9, r23
004fc8  9f028fd6  addli r5, r30, -5312
004fcc  4a030c02  vloads.mz vr6{mr1}, 0(r24)
004fd0  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
004fd4  c2030202  vload.mz vr7{mr1}, 0(r4)
004fd8  9f020fd7  addli r5, r30, -5248
004fdc  9f0c8c00  addli r25, r24, 64
004fe0  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
004fe4  9f028b00  addli r5, r22, 64
004fe8  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
004fec  6a357602  vand.s.mz vr10{mr1}, r12, vr7
004ff0  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
004ff4  6a336602  vand.s.mz vr6{mr1}, r12, vr6
004ff8  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
004ffc  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
005000  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
005004  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
005008  669503c0  vabs.f vr10, vr7
00500c  6a348402  vand.s.mz vr8{mr1}, r8, vr8
005010  ea349402  vand.s.mz vr9{mr1}, r8, vr9
005014  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
005018  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
00501c  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
005020  12b48602  vadd.s.mz vr8{mr1}, r13, vr8
005024  92b49602  vadd.s.mz vr9{mr1}, r13, vr9
005028  ea338602  vand.s.mz vr7{mr1}, r12, vr8
00502c  661403c0  vabs.f vr8, vr6
005030  6a339602  vand.s.mz vr6{mr1}, r12, vr9
005034  eaa30834  vor.u.mh vr7{mr2}, r17, vr0
005038  72218842  vlt.u.mz mr2{mr1}, r16, vr8
00503c  6aa30834  vor.u.mh vr6{mr2}, r17, vr0
005040  4a840c02  vloads.mz vr8{mr1}, 0(r25)
005044  9f0c8200  addli r25, r4, 64
005048  c2840c02  vload.mz vr9{mr1}, 0(r25)
00504c  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
005050  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
005054  6a336602  vand.s.mz vr6{mr1}, r12, vr6
005058  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
00505c  ea349602  vand.s.mz vr9{mr1}, r12, vr9
005060  46007202  vstore.mz vr7{mr1}, 0(r4)
005064  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005068  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
00506c  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
005070  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
005074  6a348602  vand.s.mz vr8{mr1}, r12, vr8
005078  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
00507c  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005080  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
005084  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
005088  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
00508c  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
005090  ea349402  vand.s.mz vr9{mr1}, r8, vr9
005094  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
005098  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
00509c  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
0050a0  661505c0  vabs.f vr10, vr10
0050a4  661404c0  vabs.f vr8, vr8
0050a8  92b49602  vadd.s.mz vr9{mr1}, r13, vr9
0050ac  92b5b602  vadd.s.mz vr11{mr1}, r13, vr11
0050b0  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
0050b4  ea349602  vand.s.mz vr9{mr1}, r12, vr9
0050b8  6a35b602  vand.s.mz vr10{mr1}, r12, vr11
0050bc  eaa40834  vor.u.mh vr9{mr2}, r17, vr0
0050c0  72218842  vlt.u.mz mr2{mr1}, r16, vr8
0050c4  6aa50834  vor.u.mh vr10{mr2}, r17, vr0
0050c8  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
0050cc  ea34a602  vand.s.mz vr9{mr1}, r12, vr10
0050d0  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0050d4  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0050d8  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0050dc  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0050e0  46808c02  vstore.mz vr8{mr1}, 0(r25)
0050e4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0050e8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0050ec  4bf85afe  ble.s r21, r5, -484
0050f0  9f020c01  addli r5, r24, 128
0050f4  9f0c0201  addli r25, r4, 128
0050f8  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0050fc  1f028201  addli r4, r4, 192
005100  1f0b0b01  addli r22, r22, 128
005104  9f810102  addli r3, r3, 256
005108  9f840402  addli r9, r9, 256
00510c  6a237122  vor.u.mz vr6{mr1}, r2, vr7
005110  4a840202  vloads.mz vr8{mr1}, 0(r5)
005114  c2840c02  vload.mz vr9{mr1}, 0(r25)
005118  9f028c01  addli r5, r24, 192
00511c  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
005120  6a309602  vand.s.mz vr0{mr1}, r12, vr9
005124  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
005128  6a348602  vand.s.mz vr8{mr1}, r12, vr8
00512c  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
005130  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
005134  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
005138  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
00513c  e69504c0  vabs.f vr11, vr9
005140  6a300402  vand.s.mz vr0{mr1}, r8, vr0
005144  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
005148  7221b842  vlt.u.mz mr2{mr1}, r16, vr11
00514c  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
005150  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
005154  12b00602  vadd.s.mz vr0{mr1}, r13, vr0
005158  12b5a602  vadd.s.mz vr10{mr1}, r13, vr10
00515c  ea340602  vand.s.mz vr9{mr1}, r12, vr0
005160  661004c0  vabs.f vr0, vr8
005164  6a34a602  vand.s.mz vr8{mr1}, r12, vr10
005168  eaa47834  vor.u.mh vr9{mr2}, r17, vr7
00516c  72210842  vlt.u.mz mr2{mr1}, r16, vr0
005170  6aa47834  vor.u.mh vr8{mr2}, r17, vr7
005174  4a800202  vloads.mz vr0{mr1}, 0(r5)
005178  42050202  vload.mz vr10{mr1}, 0(r4)
00517c  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
005180  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
005184  6a35a602  vand.s.mz vr10{mr1}, r12, vr10
005188  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
00518c  6a348602  vand.s.mz vr8{mr1}, r12, vr8
005190  46809c02  vstore.mz vr9{mr1}, 0(r25)
005194  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
005198  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
00519c  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
0051a0  6a300602  vand.s.mz vr0{mr1}, r12, vr0
0051a4  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
0051a8  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
0051ac  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
0051b0  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
0051b4  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
0051b8  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
0051bc  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
0051c0  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
0051c4  e69000c0  vabs.f vr1, vr1
0051c8  661000c0  vabs.f vr0, vr0
0051cc  12b5a602  vadd.s.mz vr10{mr1}, r13, vr10
0051d0  92b5b602  vadd.s.mz vr11{mr1}, r13, vr11
0051d4  72211842  vlt.u.mz mr2{mr1}, r16, vr1
0051d8  6a35a602  vand.s.mz vr10{mr1}, r12, vr10
0051dc  ea30b602  vand.s.mz vr1{mr1}, r12, vr11
0051e0  6aa57834  vor.u.mh vr10{mr2}, r17, vr7
0051e4  72210842  vlt.u.mz mr2{mr1}, r16, vr0
0051e8  eaa07834  vor.u.mh vr1{mr2}, r17, vr7
0051ec  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
0051f0  ea331602  vand.s.mz vr7{mr1}, r12, vr1
0051f4  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0051f8  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
0051fc  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005200  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005204  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
005208  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
00520c  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
005210  46000202  vstore.mz vr0{mr1}, 0(r4)
005214  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
005218  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00521c  bf165bff  blt.s r22, r21, -604
005220  5b9dffff  j -792
005224  1f0d0000  addli r26, zero, 0
005228  9f0d0000  addli r27, zero, 0
00522c  00a00000  mfence { lm }
005230  3fa187fe  blt.s r15, r8, -952
005234  63028fd4  loadli.w r4,  -5568(r30)
005238  e3023f00  loadli.w r5,  24(r30)
00523c  2bab0100  lui r22, 26
005240  abbb0100  lui r23, 27
005244  9f010000  addli r3, zero, 0
005248  1f0b0b00  addli r22, r22, 0
00524c  9f8b0b00  addli r23, r23, 0
005250  8f844d18  div.f.rn r9, r27, r4
005254  0f024d18  div.f.rn r4, r26, r4
005258  8bea9420  mul.f.rn r21, r9, r9
00525c  8be40458  neg.f r9, r9
005260  0b625219  sub.f.rn r4, r4, r21
005264  9f0a8fd7  addli r21, r30, -5184
005268  0b625210  add.f.rn r4, r4, r5
00526c  ab02803f  lui r5, 260096
005270  0f020208  sqrt.f.rn r4, r4
005274  0f824218  div.f.rn r4, r5, r4
005278  42820a02  vload.mz vr4{mr1}, 0(r21)
00527c  ca020b02  vloads.mz vr5{mr1}, 0(r22)
005280  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
005284  4a830b02  vloads.mz vr6{mr1}, 0(r23)
005288  1f8c4100  addli r24, r3, 32
00528c  ea212122  vor.u.mz vr3{mr1}, r2, vr2
005290  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
005294  6a344602  vand.s.mz vr8{mr1}, r12, vr4
005298  92937402  vadd.f.mz.rn vr7{mr1}, r9, vr7
00529c  12948402  vadd.f.mz.rn vr8{mr1}, r9, vr8
0052a0  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
0052a4  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
0052a8  6a355602  vand.s.mz vr10{mr1}, r12, vr5
0052ac  ea326602  vand.s.mz vr5{mr1}, r12, vr6
0052b0  8a137202  vmul.f.mz.rn vr7{mr1}, r4, vr7
0052b4  0a138202  vmul.f.mz.rn vr6{mr1}, r4, vr8
0052b8  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
0052bc  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
0052c0  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
0052c4  6a337402  vand.s.mz vr6{mr1}, r8, vr7
0052c8  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
0052cc  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
0052d0  ea337402  vand.s.mz vr7{mr1}, r8, vr7
0052d4  661202c0  vabs.f vr4, vr4
0052d8  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
0052dc  12b36602  vadd.s.mz vr6{mr1}, r13, vr6
0052e0  e69202c0  vabs.f vr5, vr5
0052e4  72214842  vlt.u.mz mr2{mr1}, r16, vr4
0052e8  6a336602  vand.s.mz vr6{mr1}, r12, vr6
0052ec  92b37602  vadd.s.mz vr7{mr1}, r13, vr7
0052f0  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
0052f4  6a327602  vand.s.mz vr4{mr1}, r12, vr7
0052f8  72215842  vlt.u.mz mr2{mr1}, r16, vr5
0052fc  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
005300  6aa22834  vor.u.mh vr4{mr2}, r17, vr2
005304  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
005308  46804a02  vstore.mz vr4{mr1}, 0(r21)
00530c  cbbd87fd  ble.s r15, r24, -1172
005310  1f8c8a00  addli r24, r21, 64
005314  9f0c8b00  addli r25, r22, 64
005318  1f8d8b00  addli r26, r23, 64
00531c  9f818100  addli r3, r3, 64
005320  9f8b0b01  addli r23, r23, 128
005324  1f0b0b01  addli r22, r22, 128
005328  9f8a0a01  addli r21, r21, 128
00532c  42020c02  vload.mz vr4{mr1}, 0(r24)
005330  4a830c02  vloads.mz vr6{mr1}, 0(r25)
005334  ca030d02  vloads.mz vr7{mr1}, 0(r26)
005338  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
00533c  6a324602  vand.s.mz vr4{mr1}, r12, vr4
005340  12945402  vadd.f.mz.rn vr8{mr1}, r9, vr5
005344  92944402  vadd.f.mz.rn vr9{mr1}, r9, vr4
005348  6eb561a2  vsll.s.mz vr10{mr1}, vr3, vr6
00534c  eeb271a2  vsll.s.mz vr5{mr1}, vr3, vr7
005350  6a327602  vand.s.mz vr4{mr1}, r12, vr7
005354  6a336602  vand.s.mz vr6{mr1}, r12, vr6
005358  0a148202  vmul.f.mz.rn vr8{mr1}, r4, vr8
00535c  8a139202  vmul.f.mz.rn vr7{mr1}, r4, vr9
005360  a612a402  vmac.f.mz.rn vr5{mr1}, vr8, vr10
005364  26926302  vmac.f.mz.rn vr4{mr1}, vr7, vr6
005368  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
00536c  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
005370  6a336402  vand.s.mz vr6{mr1}, r8, vr6
005374  ea337402  vand.s.mz vr7{mr1}, r8, vr7
005378  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
00537c  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
005380  e69202c0  vabs.f vr5, vr5
005384  661202c0  vabs.f vr4, vr4
005388  12b36602  vadd.s.mz vr6{mr1}, r13, vr6
00538c  92b37602  vadd.s.mz vr7{mr1}, r13, vr7
005390  72215842  vlt.u.mz mr2{mr1}, r16, vr5
005394  6a336602  vand.s.mz vr6{mr1}, r12, vr6
005398  ea327602  vand.s.mz vr5{mr1}, r12, vr7
00539c  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
0053a0  72214842  vlt.u.mz mr2{mr1}, r16, vr4
0053a4  eaa22834  vor.u.mh vr5{mr2}, r17, vr2
0053a8  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
0053ac  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
0053b0  46002c02  vstore.mz vr2{mr1}, 0(r24)
0053b4  3f9bf1fe  blt.s r3, r15, -316
0053b8  5b58ffff  j -1344
0053bc  63012f00  loadli.w r2,  16(r30)
0053c0  ab0100f0  lui r3, 983040
0053c4  1b311100  slli r2, r2, 1
0053c8  17113100  or r2, r2, r3
0053cc  abf10100  lui r3, 31
0053d0  9f810100  addli r3, r3, 0
0053d4  7f013400  l_gm2sm r2, r3, 0(r[9:10])
0053d8  2bf10000  lui r2, 15
0053dc  e3411f00  loadli.w r3,  12(r30)
0053e0  00200300  mfence { sm, gm }
0053e4  1b11f1ff  ori r2, r2, 4095
0053e8  80210104  csr_set csr3, r2
0053ec  00d00100  sync_group
0053f0  4b8d1106  ble.s r3, r1, 3904
0053f4  e3012f00  loadli.w r3,  16(r30)
0053f8  e3422f00  loadli.w r5,  20(r30)
0053fc  2bf4ffff  lui r8, 1048575
005400  2bd50100  lui r10, 29
005404  9f0b8fd7  addli r23, r30, -5184
005408  9f040002  addli r9, zero, 256
00540c  9f050001  addli r11, zero, 128
005410  1f068000  addli r12, zero, 64
005414  9f064000  addli r13, zero, 32
005418  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00541c  1b14f4ff  ori r8, r8, 4095
005420  1f050500  addli r10, r10, 0
005424  0b925110  add.s r4, r3, r5
005428  1bb11100  slli r2, r3, 1
00542c  b3810108  fix2float.rn r3, r3
005430  1f73f2ff  addli r6, r4, -1
005434  1bb21200  slli r4, r5, 1
005438  8b125330  div.s r5, r6, r5
00543c  1f130000  addli r6, zero, 1
005440  5b070000  j 56
005444  6b580f00  load.d r[17:18], 0(r30)
005448  9f0b8fd7  addli r23, r30, -5184
00544c  00a00000  mfence { lm }
005450  0b283811  add.ul r[17:18], r[17:18], r[20:21]
005454  ab0900f0  lui r19, 983040
005458  005a0102  load_param_i r20, 2
00545c  97193101  or r19, r2, r19
005460  8b101a10  add.s r1, r20, r1
005464  ff397801  s_lm2gm r19, r23, 0(r[17:18])
005468  00a00200  mfence { lm, gm }
00546c  e3431f00  loadli.w r7,  12(r30)
005470  3fa07000  blt.s r1, r7, 8
005474  dbd70100  j 3772
005478  e3031f00  loadli.w r7,  8(r30)
00547c  0b987010  add.s r16, r1, r7
005480  9f037fd6  addli r7, r30, -5320
005484  0b18f820  mul.s r16, r16, r15
005488  33180828  sext_int2long r[17:18], r16
00548c  97396802  sll.d r[20:21], r[17:18], r6
005490  ebd80300  load.d r[18:19], 0(r7)
005494  2b0800f0  lui r16, 983040
005498  17180101  or r16, r2, r16
00549c  8baa3811  add.ul r[22:23], r[18:19], r[20:21]
0054a0  7fa87a01  l_gm2lm r16, r23, 0(r[22:23])
0054a4  00a00200  mfence { lm, gm }
0054a8  3fc76200  blt.s r5, r6, 464
0054ac  1f0b0000  addli r22, zero, 0
0054b0  9f0a0000  addli r21, zero, 0
0054b4  9f0b0000  addli r23, zero, 0
0054b8  db0c0000  j 100
0054bc  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
0054c0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0054c4  9f9b0b00  addli r23, r23, 1
0054c8  6af134c0  vsrl.p vr2, r9, vr3
0054cc  6af214c0  vsrl.p vr4, r9, vr1
0054d0  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
0054d4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0054d8  eaf125c0  vsrl.p vr3, r11, vr2
0054dc  6af215c0  vsrl.p vr4, r11, vr1
0054e0  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0054e4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0054e8  ea7126c0  vsrl.p vr3, r12, vr2
0054ec  6a7216c0  vsrl.p vr4, r12, vr1
0054f0  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0054f4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0054f8  eaf126c0  vsrl.p vr3, r13, vr2
0054fc  6af216c0  vsrl.p vr4, r13, vr1
005500  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
005504  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
005508  fa130140  vextracti.f r7, 0(vr2)
00550c  7a980040  vextracti.f r16, 0(vr1)
005510  0b6b7b10  add.f.rn r22, r22, r7
005514  8bea0a11  add.f.rn r21, r21, r16
005518  b7a55b00  beq r23, r5, 360
00551c  1f880b00  addli r16, r23, 0
005520  37309700  beq r14, r9, 12
005524  17a88b00  xor r16, r23, r8
005528  0b980211  add.s r16, r5, r16
00552c  8b18e820  mul.s r17, r16, r14
005530  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005534  92310002  vadd.s.mz vr3{mr1}, zero, vr0
005538  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00553c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
005540  8b981719  sub.s r17, r15, r17
005544  0b9ce840  min.s r24, r17, r14
005548  bf5d6cfe  blt.s r24, r6, -140
00554c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
005550  12310002  vadd.s.mz vr2{mr1}, zero, vr0
005554  92310002  vadd.s.mz vr3{mr1}, zero, vr0
005558  12320002  vadd.s.mz vr4{mr1}, zero, vr0
00555c  9f0c0000  addli r25, zero, 0
005560  0b1d0221  mul.s r26, r4, r16
005564  9f0d8fd7  addli r27, r30, -5184
005568  1f0e0500  addli r28, r10, 0
00556c  0b18ae11  add.s r16, r28, r26
005570  9f838c00  addli r7, r25, 64
005574  ca020802  vloads.mz vr5{mr1}, 0(r16)
005578  9f088800  addli r17, r16, 64
00557c  4a830802  vloads.mz vr6{mr1}, 0(r17)
005580  8b98ad11  add.s r17, r27, r26
005584  c2830802  vload.mz vr7{mr1}, 0(r17)
005588  1f898800  addli r18, r17, 64
00558c  42040902  vload.mz vr8{mr1}, 0(r18)
005590  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
005594  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005598  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
00559c  06b40300  vfp162float_l.rn vr8, vr7
0055a0  86f30300  vfp162float_h.rn vr7, vr7
0055a4  86340300  vfp162float_l.rn vr9, vr6
0055a8  06730300  vfp162float_h.rn vr6, vr6
0055ac  86120400  vfloat2fp16_l.rn vr5, vr8
0055b0  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
0055b4  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
0055b8  12340002  vadd.s.mz vr8{mr1}, zero, vr0
0055bc  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
0055c0  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
0055c4  06940400  vfloat2fp16_l.rn vr8, vr9
0055c8  86d20300  vfloat2fp16_h.rn vr5, vr7
0055cc  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0055d0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0055d4  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0055d8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0055dc  06540300  vfloat2fp16_h.rn vr8, vr6
0055e0  46805802  vstore.mz vr5{mr1}, 0(r17)
0055e4  46008902  vstore.mz vr8{mr1}, 0(r18)
0055e8  4b5b7cfe  ble.s r24, r7, -300
0055ec  9f030801  addli r7, r16, 128
0055f0  9f8c0c01  addli r25, r25, 128
0055f4  1f0e0e02  addli r28, r28, 256
0055f8  9f8d0d02  addli r27, r27, 256
0055fc  ca820302  vloads.mz vr5{mr1}, 0(r7)
005600  9f038801  addli r7, r16, 192
005604  1f880801  addli r16, r17, 128
005608  4a830302  vloads.mz vr6{mr1}, 0(r7)
00560c  c2030802  vload.mz vr7{mr1}, 0(r16)
005610  9f838801  addli r7, r17, 192
005614  42840302  vload.mz vr8{mr1}, 0(r7)
005618  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
00561c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005620  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
005624  12330002  vadd.s.mz vr6{mr1}, zero, vr0
005628  86b40300  vfp162float_l.rn vr9, vr7
00562c  86f30300  vfp162float_h.rn vr7, vr7
005630  86920400  vfloat2fp16_l.rn vr5, vr9
005634  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
005638  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
00563c  86340400  vfp162float_l.rn vr9, vr8
005640  06740400  vfp162float_h.rn vr8, vr8
005644  06930400  vfloat2fp16_l.rn vr6, vr9
005648  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
00564c  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005650  86d20300  vfloat2fp16_h.rn vr5, vr7
005654  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005658  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
00565c  06530400  vfloat2fp16_h.rn vr6, vr8
005660  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
005664  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005668  46005802  vstore.mz vr5{mr1}, 0(r16)
00566c  46806302  vstore.mz vr6{mr1}, 0(r7)
005670  bffb8cff  blt.s r25, r24, -260
005674  5bc9ffff  j -440
005678  9f0a0000  addli r21, zero, 0
00567c  1f0b0000  addli r22, zero, 0
005680  00a00000  mfence { lm }
005684  3f8767fe  blt.s r15, r6, -576
005688  0f083b18  div.f.rn r16, r22, r3
00568c  8f883a18  div.f.rn r17, r21, r3
005690  e3033f00  loadli.w r7,  24(r30)
005694  abec0100  lui r25, 30
005698  2bfd0100  lui r26, 31
00569c  9f0b0000  addli r23, zero, 0
0056a0  1f0c8fd7  addli r24, r30, -5184
0056a4  9f8c0c00  addli r25, r25, 0
0056a8  1f0d0d00  addli r26, r26, 0
0056ac  8b6a0821  mul.f.rn r21, r16, r16
0056b0  0b6b0858  neg.f r22, r16
0056b4  8be85819  sub.f.rn r17, r17, r21
0056b8  8be87810  add.f.rn r17, r17, r7
0056bc  ab03803f  lui r7, 260096
0056c0  8f880808  sqrt.f.rn r17, r17
0056c4  8f8a1319  div.f.rn r21, r7, r17
0056c8  c2000c02  vload.mz vr1{mr1}, 0(r24)
0056cc  4a810c02  vloads.mz vr2{mr1}, 0(r25)
0056d0  ca010d02  vloads.mz vr3{mr1}, 0(r26)
0056d4  1f884b00  addli r16, r23, 32
0056d8  06b20000  vfp162float_l.rn vr4, vr1
0056dc  86f00000  vfp162float_h.rn vr1, vr1
0056e0  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
0056e4  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
0056e8  86320100  vfp162float_l.rn vr5, vr2
0056ec  06b30100  vfp162float_l.rn vr6, vr3
0056f0  06710100  vfp162float_h.rn vr2, vr2
0056f4  86f10100  vfp162float_h.rn vr3, vr3
0056f8  8a931a02  vmul.f.mz.rn vr7{mr1}, r21, vr1
0056fc  0a924a02  vmul.f.mz.rn vr4{mr1}, r21, vr4
005700  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005704  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
005708  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
00570c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005710  06110300  vfloat2fp16_l.rn vr2, vr6
005714  06d10100  vfloat2fp16_h.rn vr2, vr3
005718  46002c02  vstore.mz vr2{mr1}, 0(r24)
00571c  cba407ff  ble.s r15, r16, -728
005720  1f088c00  addli r16, r24, 64
005724  9f888c00  addli r17, r25, 64
005728  9f0d8d00  addli r27, r26, 64
00572c  9f8b8b00  addli r23, r23, 64
005730  1f0d0d01  addli r26, r26, 128
005734  9f8c0c01  addli r25, r25, 128
005738  1f0c0c01  addli r24, r24, 128
00573c  42010802  vload.mz vr2{mr1}, 0(r16)
005740  ca810802  vloads.mz vr3{mr1}, 0(r17)
005744  4a820d02  vloads.mz vr4{mr1}, 0(r27)
005748  86320100  vfp162float_l.rn vr5, vr2
00574c  06710100  vfp162float_h.rn vr2, vr2
005750  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
005754  12112b02  vadd.f.mz.rn vr2{mr1}, r22, vr2
005758  06b30100  vfp162float_l.rn vr6, vr3
00575c  86330200  vfp162float_l.rn vr7, vr4
005760  86f10100  vfp162float_h.rn vr3, vr3
005764  06720200  vfp162float_h.rn vr4, vr4
005768  8a925a02  vmul.f.mz.rn vr5{mr1}, r21, vr5
00576c  0a912a02  vmul.f.mz.rn vr2{mr1}, r21, vr2
005770  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
005774  26123102  vmac.f.mz.rn vr4{mr1}, vr2, vr3
005778  86900300  vfloat2fp16_l.rn vr1, vr7
00577c  86500200  vfloat2fp16_h.rn vr1, vr4
005780  46001802  vstore.mz vr1{mr1}, 0(r16)
005784  3f9dfbfe  blt.s r23, r15, -188
005788  db97ffff  j -836
00578c  9f000040  addli r1, zero, 8192
005790  2b0100f0  lui r2, 983040
005794  97902000  or r1, r1, r2
005798  2b310200  lui r2, 35
00579c  1f010100  addli r2, r2, 0
0057a0  ff002300  l_gm2sm r1, r2, 0(r[7:8])
0057a4  db070000  j 60
0057a8  63012f00  loadli.w r2,  16(r30)
0057ac  ab0100f0  lui r3, 983040
0057b0  1b312100  slli r2, r2, 2
0057b4  17113100  or r2, r2, r3
0057b8  ab810200  lui r3, 40
0057bc  9f810108  addli r3, r3, 1024
0057c0  7f013300  l_gm2sm r2, r3, 0(r[7:8])
0057c4  5bf00000  j 1920
0057c8  9f000040  addli r1, zero, 8192
0057cc  2b0100f0  lui r2, 983040
0057d0  97902000  or r1, r1, r2
0057d4  2b510200  lui r2, 37
0057d8  1f010100  addli r2, r2, 0
0057dc  ff002400  l_gm2sm r1, r2, 0(r[9:10])
0057e0  abf00000  lui r1, 15
0057e4  00200300  mfence { sm, gm }
0057e8  1f020006  addli r4, zero, 768
0057ec  1b91f0ff  ori r2, r1, 4095
0057f0  9b001500  andi r1, r10, 1
0057f4  80210104  csr_set csr3, r2
0057f8  1f010006  addli r2, zero, 768
0057fc  00d00100  sync_group
005800  67081fd6  storeli.w r1, -5248(r30)
005804  37a00000  beq r1, zero, 8
005808  1f02000a  addli r4, zero, 1280
00580c  e3411f00  loadli.w r3,  12(r30)
005810  9f120000  addli r5, zero, 1
005814  3ffc5104  blt.s r3, r5, 2844
005818  e3000fd7  loadli.w r1,  -5248(r30)
00581c  80510102  load_param_i r3, 2
005820  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005824  ab180200  lui r17, 33
005828  ab7b0200  lui r23, 39
00582c  2b7e0200  lui r28, 39
005830  9f020000  addli r5, zero, 0
005834  1b441500  srli r8, r10, 1
005838  9b342200  slli r9, r4, 2
00583c  9f078fd7  addli r15, r30, -5184
005840  1f090005  addli r18, zero, 640
005844  9f0a8000  addli r21, zero, 64
005848  1f0b4000  addli r22, zero, 32
00584c  9f0d0003  addli r27, zero, 384
005850  9bc31100  srli r7, r3, 1
005854  ab310200  lui r3, 35
005858  9f880800  addli r17, r17, 0
00585c  9f8b0b00  addli r23, r23, 0
005860  1f0e0e04  addli r28, r28, 512
005864  8b902020  mul.s r1, r1, r2
005868  9f810100  addli r3, r3, 0
00586c  1bb12000  slli r2, r1, 2
005870  67041fd6  storeli.w r1, -5312(r30)
005874  abf0ffff  lui r1, 1048575
005878  8b153110  add.s r11, r2, r3
00587c  ab510200  lui r3, 37
005880  9b9000f8  ori r1, r1, 3968
005884  9f810100  addli r3, r3, 0
005888  67081fd4  storeli.w r1, -5504(r30)
00588c  0b163110  add.s r12, r2, r3
005890  1f018fd5  addli r2, r30, -5440
005894  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005898  2bf10000  lui r2, 15
00589c  1b1cf1ff  ori r24, r2, 4095
0058a0  db030000  j 28
0058a4  00a00300  mfence { lm, sm, gm }
0058a8  80210c04  csr_set csr3, r24
0058ac  00d00100  sync_group
0058b0  8b927210  add.s r5, r5, r7
0058b4  3fa00201  blt.s r5, r16, 8
0058b8  5b65f6ff  j -19672
0058bc  0b918210  add.s r2, r5, r8
0058c0  cb1f28fe  ble.s r16, r2, -28
0058c4  e3001f00  loadli.w r1,  8(r30)
0058c8  0b111110  add.s r2, r2, r1
0058cc  e3008fd6  loadli.w r1,  -5312(r30)
0058d0  1b31b100  slli r2, r2, 11
0058d4  17111100  or r2, r2, r1
0058d8  9f200000  addli r1, zero, 2
0058dc  33110128  sext_int2long r[3:4], r2
0058e0  97361102  sll.d r[14:15], r[3:4], r1
0058e4  9f007fd6  addli r1, r30, -5320
0058e8  2b0100f0  lui r2, 983040
0058ec  ebd90000  load.d r[20:21], 0(r1)
0058f0  17912400  or r2, r9, r2
0058f4  8bacd910  add.ul r[26:27], r[20:21], r[14:15]
0058f8  7fa1fc00  l_gm2lm r2, r15, 0(r[26:27])
0058fc  00a00200  mfence { lm, gm }
005900  e3000fd7  loadli.w r1,  -5248(r30)
005904  3bb60000  bneq r1, zero, 396
005908  9f008fd5  addli r1, r30, -5440
00590c  e3010fd5  loadli.w r3,  -5504(r30)
005910  1f010000  addli r2, zero, 0
005914  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
005918  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00591c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
005920  12323002  vadd.s.mz vr4{mr1}, zero, vr3
005924  0b181111  add.s r16, r2, r17
005928  0b952710  add.s r10, r15, r2
00592c  9f810101  addli r3, r3, 128
005930  1f010104  addli r2, r2, 512
005934  9f000801  addli r1, r16, 128
005938  4a100802  vloads_mask16.mz vr0{mr1}, 0(r16)
00593c  1f038800  addli r6, r16, 64
005940  42140502  vload_mask16.mz vr8{mr1}, 0(r10)
005944  9f098501  addli r19, r10, 192
005948  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
00594c  9f008801  addli r1, r16, 192
005950  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
005954  1f038500  addli r6, r10, 64
005958  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
00595c  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
005960  9f000501  addli r1, r10, 128
005964  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
005968  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00596c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005970  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
005974  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005978  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00597c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005980  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
005984  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
005988  9f000802  addli r1, r16, 256
00598c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005990  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
005994  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
005998  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
00599c  1f030503  addli r6, r10, 384
0059a0  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0059a4  9f008802  addli r1, r16, 320
0059a8  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
0059ac  9f090502  addli r19, r10, 256
0059b0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0059b4  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0059b8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0059bc  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0059c0  9f000803  addli r1, r16, 384
0059c4  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
0059c8  1f088803  addli r16, r16, 448
0059cc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0059d0  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0059d4  9f008502  addli r1, r10, 320
0059d8  4a150802  vloads_mask16.mz vr10{mr1}, 0(r16)
0059dc  1f058503  addli r10, r10, 448
0059e0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0059e4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0059e8  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
0059ec  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0059f0  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
0059f4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0059f8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0059fc  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
005a00  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005a04  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
005a08  93802105  setlt.u r1, r3, r18
005a0c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005a10  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005a14  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005a18  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005a1c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005a20  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005a24  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
005a28  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005a2c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005a30  bbdb00fe  bneq r1, zero, -268
005a34  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005a38  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005a3c  9f000002  addli r1, zero, 256
005a40  6af100c0  vsrl.p vr2, r1, vr0
005a44  eaf110c0  vsrl.p vr3, r1, vr1
005a48  9f000001  addli r1, zero, 128
005a4c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a50  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a54  6af100c0  vsrl.p vr2, r1, vr0
005a58  eaf110c0  vsrl.p vr3, r1, vr1
005a5c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a60  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a64  6af10ac0  vsrl.p vr2, r21, vr0
005a68  eaf11ac0  vsrl.p vr3, r21, vr1
005a6c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a70  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a74  6a710bc0  vsrl.p vr2, r22, vr0
005a78  ea711bc0  vsrl.p vr3, r22, vr1
005a7c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a80  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a84  7a130040  vextracti.f r6, 0(vr0)
005a88  fa910040  vextracti.f r3, 0(vr1)
005a8c  5b640000  j 800
005a90  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005a94  abf0ffff  lui r1, 1048575
005a98  1f010000  addli r2, zero, 0
005a9c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005aa0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005aa4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005aa8  9b9100f8  ori r3, r1, 3968
005aac  0b982810  add.s r16, r17, r2
005ab0  0b952710  add.s r10, r15, r2
005ab4  9f810101  addli r3, r3, 128
005ab8  1f010104  addli r2, r2, 512
005abc  1f0d0831  addli r26, r16, 6272
005ac0  1f030830  addli r6, r16, 6144
005ac4  9f008831  addli r1, r16, 6336
005ac8  9f0c0518  addli r25, r10, 3072
005acc  ca130d02  vloads_mask16.mz vr7{mr1}, 0(r26)
005ad0  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
005ad4  1f038830  addli r6, r16, 6208
005ad8  ca940002  vloads_mask16.mz vr9{mr1}, 0(r1)
005adc  9f008518  addli r1, r10, 3136
005ae0  1f0d8519  addli r26, r10, 3264
005ae4  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
005ae8  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
005aec  1f030519  addli r6, r10, 3200
005af0  42100d02  vload_mask16.mz vr0{mr1}, 0(r26)
005af4  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
005af8  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
005afc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005b00  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
005b04  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
005b08  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
005b0c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005b10  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
005b14  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
005b18  1f030832  addli r6, r16, 6400
005b1c  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
005b20  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
005b24  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005b28  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
005b2c  9f0c051a  addli r25, r10, 3328
005b30  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
005b34  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005b38  9f00051b  addli r1, r10, 3456
005b3c  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
005b40  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
005b44  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
005b48  1f038832  addli r6, r16, 6464
005b4c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005b50  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005b54  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
005b58  1f030833  addli r6, r16, 6528
005b5c  1f088833  addli r16, r16, 6592
005b60  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
005b64  1f03851a  addli r6, r10, 3392
005b68  4a150802  vloads_mask16.mz vr10{mr1}, 0(r16)
005b6c  1f05851b  addli r10, r10, 3520
005b70  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
005b74  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005b78  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
005b7c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005b80  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
005b84  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005b88  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005b8c  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
005b90  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005b94  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
005b98  1383b105  setlt.u r6, r3, r27
005b9c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005ba0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005ba4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005ba8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005bac  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005bb0  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005bb4  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
005bb8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005bbc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005bc0  bb3b03fe  bneq r6, zero, -276
005bc4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005bc8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005bcc  9f000002  addli r1, zero, 256
005bd0  1f080000  addli r16, zero, 0
005bd4  eaf110c0  vsrl.p vr3, r1, vr1
005bd8  6af100c0  vsrl.p vr2, r1, vr0
005bdc  9f000001  addli r1, zero, 128
005be0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005be4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005be8  eaf110c0  vsrl.p vr3, r1, vr1
005bec  6af100c0  vsrl.p vr2, r1, vr0
005bf0  abf0ffff  lui r1, 1048575
005bf4  1b9500f8  ori r10, r1, 3968
005bf8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005bfc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005c00  eaf11ac0  vsrl.p vr3, r21, vr1
005c04  6af10ac0  vsrl.p vr2, r21, vr0
005c08  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005c0c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005c10  ea711bc0  vsrl.p vr3, r22, vr1
005c14  6a710bc0  vsrl.p vr2, r22, vr0
005c18  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005c1c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005c20  fa910040  vextracti.f r3, 0(vr1)
005c24  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005c28  7a110040  vextracti.f r2, 0(vr0)
005c2c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005c30  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005c34  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005c38  8b9c0811  add.s r25, r17, r16
005c3c  0b9d0711  add.s r26, r15, r16
005c40  1f050501  addli r10, r10, 128
005c44  1f080804  addli r16, r16, 512
005c48  9f800c18  addli r1, r25, 3072
005c4c  1f830c19  addli r6, r25, 3200
005c50  42140d02  vload_mask16.mz vr8{mr1}, 0(r26)
005c54  9f098d01  addli r19, r26, 192
005c58  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
005c5c  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
005c60  9f808c18  addli r1, r25, 3136
005c64  1f838c19  addli r6, r25, 3264
005c68  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
005c6c  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
005c70  9f000d01  addli r1, r26, 128
005c74  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
005c78  1f038d00  addli r6, r26, 64
005c7c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005c80  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
005c84  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005c88  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
005c8c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005c90  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005c94  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
005c98  9f800c1a  addli r1, r25, 3328
005c9c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005ca0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005ca4  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
005ca8  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
005cac  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
005cb0  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
005cb4  9f808c1a  addli r1, r25, 3392
005cb8  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
005cbc  9f090d02  addli r19, r26, 256
005cc0  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005cc4  1f030d03  addli r6, r26, 384
005cc8  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
005ccc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005cd0  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
005cd4  9f800c1b  addli r1, r25, 3456
005cd8  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
005cdc  9f8c8c1b  addli r25, r25, 3520
005ce0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005ce4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005ce8  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
005cec  9f008d02  addli r1, r26, 320
005cf0  4a950c02  vloads_mask16.mz vr10{mr1}, 0(r25)
005cf4  9f0c8d03  addli r25, r26, 448
005cf8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005cfc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005d00  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
005d04  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005d08  c2940c02  vload_mask16.mz vr9{mr1}, 0(r25)
005d0c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005d10  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005d14  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
005d18  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005d1c  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
005d20  93002505  setlt.u r1, r10, r18
005d24  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005d28  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005d2c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005d30  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005d34  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005d38  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005d3c  46907c02  vstore_mask16.mz vr7{mr1}, 0(r25)
005d40  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005d44  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005d48  bbcb00fe  bneq r1, zero, -272
005d4c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005d50  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005d54  9f000002  addli r1, zero, 256
005d58  6af100c0  vsrl.p vr2, r1, vr0
005d5c  eaf110c0  vsrl.p vr3, r1, vr1
005d60  9f000001  addli r1, zero, 128
005d64  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d68  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d6c  6af100c0  vsrl.p vr2, r1, vr0
005d70  eaf110c0  vsrl.p vr3, r1, vr1
005d74  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d78  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d7c  6af10ac0  vsrl.p vr2, r21, vr0
005d80  eaf11ac0  vsrl.p vr3, r21, vr1
005d84  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d88  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d8c  6a710bc0  vsrl.p vr2, r22, vr0
005d90  ea711bc0  vsrl.p vr3, r22, vr1
005d94  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d98  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d9c  fa100040  vextracti.f r1, 0(vr0)
005da0  7a950040  vextracti.f r10, 0(vr1)
005da4  0b631110  add.f.rn r6, r2, r1
005da8  8be1a110  add.f.rn r3, r3, r10
005dac  8b807230  div.u r1, r5, r7
005db0  00350002  core_id r10
005db4  1f010000  addli r2, zero, 0
005db8  9bb06000  slli r1, r1, 6
005dbc  9b800004  andi r1, r1, 64
005dc0  9790a000  or r1, r1, r10
005dc4  1bb52000  slli r10, r1, 2
005dc8  9b80e007  andi r1, r1, 126
005dcc  0b187511  add.s r16, r10, r23
005dd0  9bb02000  slli r1, r1, 2
005dd4  73606800  stores.w r6, 0(r16)
005dd8  0b13c511  add.s r6, r10, r28
005ddc  1b154500  ori r10, r10, 4
005de0  1f080000  addli r16, zero, 0
005de4  73603300  stores.w r3, 0(r6)
005de8  8b117511  add.s r3, r10, r23
005dec  0b937011  add.s r6, r1, r23
005df0  0b15c511  add.s r10, r10, r28
005df4  8b90c011  add.s r1, r1, r28
005df8  00a00300  mfence { lm, sm, gm }
005dfc  80210c04  csr_set csr3, r24
005e00  00d00100  sync_group
005e04  eb590f00  load.d r[20:21], 0(r30)
005e08  efc10100  loads.w r3, 0(r3)
005e0c  6f430300  loads.w r6, 0(r6)
005e10  6f450500  loads.w r10, 0(r10)
005e14  efc00000  loads.w r1, 0(r1)
005e18  8ba6d910  add.ul r[14:15], r[20:21], r[14:15]
005e1c  8be16110  add.f.rn r3, r3, r6
005e20  8b601510  add.f.rn r1, r10, r1
005e24  2b05003a  lui r10, 237568
005e28  0be3a120  mul.f.rn r6, r3, r10
005e2c  8be0a020  mul.f.rn r1, r1, r10
005e30  8b616320  mul.f.rn r3, r6, r6
005e34  0b650358  neg.f r10, r6
005e38  8be03018  sub.f.rn r1, r1, r3
005e3c  e3013f00  loadli.w r3,  24(r30)
005e40  8be03010  add.f.rn r1, r1, r3
005e44  ab01803f  lui r3, 260096
005e48  8f800008  sqrt.f.rn r1, r1
005e4c  8f811118  div.f.rn r3, r3, r1
005e50  0b9d2510  add.s r26, r11, r2
005e54  0b932710  add.s r6, r15, r2
005e58  8b1c2610  add.s r25, r12, r2
005e5c  9f098d00  addli r19, r26, 64
005e60  9f008300  addli r1, r6, 64
005e64  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
005e68  4a110d02  vloads_mask16.mz vr2{mr1}, 0(r26)
005e6c  4a920c02  vloads_mask16.mz vr4{mr1}, 0(r25)
005e70  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
005e74  9f898c00  addli r19, r25, 64
005e78  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
005e7c  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
005e80  9f094800  addli r19, r16, 32
005e84  12100502  vadd.f.mz.rn vr0{mr1}, r10, vr0
005e88  93093207  setle.u r19, r4, r19
005e8c  92101502  vadd.f.mz.rn vr1{mr1}, r10, vr1
005e90  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
005e94  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
005e98  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
005e9c  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
005ea0  46104302  vstore_mask16.mz vr4{mr1}, 0(r6)
005ea4  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005ea8  bb910900  bneq r19, zero, 100
005eac  9f090d01  addli r19, r26, 128
005eb0  1f8a0c01  addli r20, r25, 128
005eb4  9f000301  addli r1, r6, 128
005eb8  1f038301  addli r6, r6, 192
005ebc  1f088800  addli r16, r16, 64
005ec0  1f010102  addli r2, r2, 256
005ec4  4a910902  vloads_mask16.mz vr2{mr1}, 0(r19)
005ec8  9f098d01  addli r19, r26, 192
005ecc  ca110a02  vloads_mask16.mz vr3{mr1}, 0(r20)
005ed0  1f8a8c01  addli r20, r25, 192
005ed4  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
005ed8  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
005edc  4a920902  vloads_mask16.mz vr4{mr1}, 0(r19)
005ee0  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
005ee4  93094804  setlt.u r19, r16, r4
005ee8  12100502  vadd.f.mz.rn vr0{mr1}, r10, vr0
005eec  92101502  vadd.f.mz.rn vr1{mr1}, r10, vr1
005ef0  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
005ef4  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
005ef8  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
005efc  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
005f00  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
005f04  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005f08  3bad09fe  bneq r19, zero, -184
005f0c  ab0000f0  lui r1, 983040
005f10  00a00000  mfence { lm }
005f14  97901400  or r1, r9, r1
005f18  ffb0f600  s_lm2gm r1, r15, 0(r[14:15])
005f1c  00a00200  mfence { lm, gm }
005f20  63481f00  loadli.w r16,  12(r30)
005f24  db31ffff  j -1652
005f28  63012f00  loadli.w r2,  16(r30)
005f2c  ab0100f0  lui r3, 983040
005f30  1b312100  slli r2, r2, 2
005f34  17113100  or r2, r2, r3
005f38  ab910200  lui r3, 41
005f3c  9f810108  addli r3, r3, 1024
005f40  7f013400  l_gm2sm r2, r3, 0(r[9:10])
005f44  2bf10000  lui r2, 15
005f48  e3411f00  loadli.w r3,  12(r30)
005f4c  00200300  mfence { sm, gm }
005f50  1b11f1ff  ori r2, r2, 4095
005f54  80210104  csr_set csr3, r2
005f58  00d00100  sync_group
005f5c  4bdf1100  ble.s r3, r1, 980
005f60  e3012f00  loadli.w r3,  16(r30)
005f64  e3422f00  loadli.w r5,  20(r30)
005f68  ab780200  lui r17, 39
005f6c  2b890200  lui r18, 40
005f70  ab990200  lui r19, 41
005f74  9f038fd7  addli r7, r30, -5184
005f78  1f140000  addli r8, zero, 1
005f7c  1f050002  addli r10, zero, 256
005f80  1f060001  addli r12, zero, 128
005f84  9f068000  addli r13, zero, 64
005f88  1f084000  addli r16, zero, 32
005f8c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005f90  9f880808  addli r17, r17, 1024
005f94  1f090908  addli r18, r18, 1024
005f98  9f890908  addli r19, r19, 1024
005f9c  0b925110  add.s r4, r3, r5
005fa0  9bb52100  slli r11, r3, 2
005fa4  33810108  fix2float.rn r2, r3
005fa8  9f71f2ff  addli r3, r4, -1
005fac  1bb22200  slli r4, r5, 2
005fb0  67082fd4  storeli.w r2, -5504(r30)
005fb4  1f010fd7  addli r2, r30, -5248
005fb8  670cbfd4  storeli.w r11, -5440(r30)
005fbc  8b925130  div.s r5, r3, r5
005fc0  abf1ffff  lui r3, 1048575
005fc4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005fc8  9b94f1ff  ori r9, r3, 4095
005fcc  5b080000  j 64
005fd0  1f038fd6  addli r6, r30, -5312
005fd4  6b510f00  load.d r[3:4], 0(r30)
005fd8  6b5a0300  load.d r[21:22], 0(r6)
005fdc  00a00000  mfence { lm }
005fe0  00530102  load_param_i r6, 2
005fe4  e3058fd5  loadli.w r11,  -5440(r30)
005fe8  8b101310  add.s r1, r6, r1
005fec  0b2a4111  add.ul r[21:22], r[3:4], r[21:22]
005ff0  ab0100f0  lui r3, 983040
005ff4  97913500  or r3, r11, r3
005ff8  ff317a00  s_lm2gm r3, r7, 0(r[21:22])
005ffc  00a00200  mfence { lm, gm }
006000  63411f00  loadli.w r2,  12(r30)
006004  3fa02000  blt.s r1, r2, 8
006008  5b650000  j 808
00600c  63011f00  loadli.w r2,  8(r30)
006010  8b912010  add.s r3, r1, r2
006014  1f210000  addli r2, zero, 2
006018  8b91f120  mul.s r3, r3, r15
00601c  339a0128  sext_int2long r[21:22], r3
006020  ab0100f0  lui r3, 983040
006024  173c2a02  sll.d r[25:26], r[21:22], r2
006028  1f017fd6  addli r2, r30, -5320
00602c  97913500  or r3, r11, r3
006030  6b5a0100  load.d r[21:22], 0(r2)
006034  1f018fd6  addli r2, r30, -5312
006038  0b2b8a11  add.ul r[23:24], r[21:22], r[25:26]
00603c  ff217b00  l_gm2lm r3, r7, 0(r[23:24])
006040  00a00200  mfence { lm, gm }
006044  73308101  store.d r[25:26], 0(r2)
006048  bf978200  blt.s r5, r8, 484
00604c  9f0b0000  addli r23, zero, 0
006050  1f0b0000  addli r22, zero, 0
006054  1f0c0000  addli r24, zero, 0
006058  db0c0000  j 100
00605c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
006060  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006064  1f1c0c00  addli r24, r24, 1
006068  6a7105c0  vsrl.p vr2, r10, vr0
00606c  ea7115c0  vsrl.p vr3, r10, vr1
006070  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006074  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006078  6a7106c0  vsrl.p vr2, r12, vr0
00607c  ea7116c0  vsrl.p vr3, r12, vr1
006080  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006084  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006088  6af106c0  vsrl.p vr2, r13, vr0
00608c  eaf116c0  vsrl.p vr3, r13, vr1
006090  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006094  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006098  6a7108c0  vsrl.p vr2, r16, vr0
00609c  ea7118c0  vsrl.p vr3, r16, vr1
0060a0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0060a4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060a8  7a110040  vextracti.f r2, 0(vr0)
0060ac  fa910040  vextracti.f r3, 0(vr1)
0060b0  8beb2b10  add.f.rn r23, r23, r2
0060b4  0b6b3b10  add.f.rn r22, r22, r3
0060b8  b7755c00  beq r24, r5, 380
0060bc  9f010c00  addli r3, r24, 0
0060c0  3730a700  beq r14, r10, 12
0060c4  97219c00  xor r3, r24, r9
0060c8  8b913210  add.s r3, r5, r3
0060cc  1f010fd7  addli r2, r30, -5248
0060d0  0b93e120  mul.s r6, r3, r14
0060d4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0060d8  0b936718  sub.s r6, r15, r6
0060dc  8b1ce340  min.s r25, r6, r14
0060e0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0060e4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0060e8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0060ec  bfcd8cfe  blt.s r25, r8, -144
0060f0  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0060f4  1f0d0000  addli r26, zero, 0
0060f8  8b1d3220  mul.s r27, r4, r3
0060fc  1f0e8fd7  addli r28, r30, -5184
006100  9f850800  addli r11, r17, 0
006104  92304002  vadd.s.mz vr1{mr1}, zero, vr4
006108  12314002  vadd.s.mz vr2{mr1}, zero, vr4
00610c  92314002  vadd.s.mz vr3{mr1}, zero, vr4
006110  8b91b511  add.s r3, r11, r27
006114  0b13be11  add.s r6, r28, r27
006118  1f818100  addli r2, r3, 64
00611c  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
006120  1f8a8101  addli r20, r3, 192
006124  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
006128  9f0a8301  addli r21, r6, 192
00612c  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
006130  1f810101  addli r2, r3, 128
006134  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
006138  1f0a0301  addli r20, r6, 128
00613c  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
006140  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
006144  c2150a02  vload_mask16.mz vr11{mr1}, 0(r20)
006148  1f018300  addli r2, r6, 64
00614c  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
006150  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
006154  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
006158  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00615c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
006160  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006164  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006168  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
00616c  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
006170  1f018d00  addli r2, r26, 64
006174  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
006178  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00617c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006180  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
006184  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
006188  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
00618c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
006190  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
006194  4bab2cfe  ble.s r25, r2, -312
006198  1f8a0102  addli r20, r3, 256
00619c  9f8a8102  addli r21, r3, 320
0061a0  1f010302  addli r2, r6, 256
0061a4  1f0d0d01  addli r26, r26, 128
0061a8  9f850504  addli r11, r11, 512
0061ac  1f0e0e04  addli r28, r28, 512
0061b0  4a100a02  vloads_mask16.mz vr0{mr1}, 0(r20)
0061b4  1f8a0103  addli r20, r3, 384
0061b8  9f818103  addli r3, r3, 448
0061bc  ca920a02  vloads_mask16.mz vr5{mr1}, 0(r21)
0061c0  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
0061c4  ca130a02  vloads_mask16.mz vr7{mr1}, 0(r20)
0061c8  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
0061cc  9f010303  addli r3, r6, 384
0061d0  1f0a8302  addli r20, r6, 320
0061d4  1f038303  addli r6, r6, 448
0061d8  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
0061dc  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
0061e0  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0061e4  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
0061e8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0061ec  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0061f0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0061f4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0061f8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0061fc  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
006200  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
006204  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
006208  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00620c  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
006210  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006214  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006218  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
00621c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
006220  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
006224  bf3b9dff  blt.s r26, r25, -276
006228  dbc6ffff  j -460
00622c  1f0b0000  addli r22, zero, 0
006230  9f0b0000  addli r23, zero, 0
006234  00a00000  mfence { lm }
006238  3fe687fe  blt.s r15, r8, -616
00623c  63010fd5  loadli.w r2,  -5504(r30)
006240  9f050000  addli r11, zero, 0
006244  8f812b18  div.f.rn r3, r23, r2
006248  0f032b18  div.f.rn r6, r22, r2
00624c  63013f00  loadli.w r2,  24(r30)
006250  0beb3120  mul.f.rn r22, r3, r3
006254  0b636319  sub.f.rn r6, r6, r22
006258  0beb0158  neg.f r22, r3
00625c  9f010000  addli r3, zero, 0
006260  0b632310  add.f.rn r6, r6, r2
006264  2b01803f  lui r2, 260096
006268  0f030308  sqrt.f.rn r6, r6
00626c  0f036118  div.f.rn r6, r2, r6
006270  0b9c2511  add.s r24, r11, r18
006274  8b9bb310  add.s r23, r7, r11
006278  8b9c3511  add.s r25, r11, r19
00627c  4a110c02  vloads_mask16.mz vr2{mr1}, 0(r24)
006280  1f0c8c00  addli r24, r24, 64
006284  1f8d8b00  addli r26, r23, 64
006288  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
00628c  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
006290  4a120c02  vloads_mask16.mz vr4{mr1}, 0(r24)
006294  1f8c8c00  addli r24, r25, 64
006298  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
00629c  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0062a0  1f8c4100  addli r24, r3, 32
0062a4  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
0062a8  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
0062ac  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
0062b0  8a113302  vmul.f.mz.rn vr3{mr1}, r6, vr3
0062b4  a6922002  vmac.f.mz.rn vr5{mr1}, vr1, vr2
0062b8  26934102  vmac.f.mz.rn vr6{mr1}, vr3, vr4
0062bc  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
0062c0  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
0062c4  4bb487ff  ble.s r15, r24, -756
0062c8  8b1cb910  add.s r25, r18, r11
0062cc  0b9db910  add.s r26, r19, r11
0062d0  1f8c0b01  addli r24, r23, 128
0062d4  9f8b8b01  addli r23, r23, 192
0062d8  9f818100  addli r3, r3, 64
0062dc  9f850502  addli r11, r11, 256
0062e0  9f8d0c01  addli r27, r25, 128
0062e4  1f0e0d01  addli r28, r26, 128
0062e8  9f8c8c01  addli r25, r25, 192
0062ec  1f0d8d01  addli r26, r26, 192
0062f0  c2100c02  vload_mask16.mz vr1{mr1}, 0(r24)
0062f4  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
0062f8  ca910d02  vloads_mask16.mz vr3{mr1}, 0(r27)
0062fc  4a120e02  vloads_mask16.mz vr4{mr1}, 0(r28)
006300  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
006304  4a130d02  vloads_mask16.mz vr6{mr1}, 0(r26)
006308  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
00630c  12112b02  vadd.f.mz.rn vr2{mr1}, r22, vr2
006310  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
006314  0a112302  vmul.f.mz.rn vr2{mr1}, r6, vr2
006318  26923002  vmac.f.mz.rn vr4{mr1}, vr1, vr3
00631c  26135102  vmac.f.mz.rn vr6{mr1}, vr2, vr5
006320  46104c02  vstore_mask16.mz vr4{mr1}, 0(r24)
006324  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
006328  3fadf1fe  blt.s r3, r15, -184
00632c  db94ffff  j -860
006330  9f0e8fd3  addli sp, r30, -5696
006334  e38f2e2c  loadli.w r31,  5648(sp)
006338  63cf2e2c  loadli.w r30,  5652(sp)
00633c  638e3e2c  loadli.w r28,  5656(sp)
006340  e3cd3e2c  loadli.w r27,  5660(sp)
006344  638d4e2c  loadli.w r26,  5664(sp)
006348  e3cc4e2c  loadli.w r25,  5668(sp)
00634c  638c5e2c  loadli.w r24,  5672(sp)
006350  e3cb5e2c  loadli.w r23,  5676(sp)
006354  638b6e2c  loadli.w r22,  5680(sp)
006358  e3ca6e2c  loadli.w r21,  5684(sp)
00635c  638a7e2c  loadli.w r20,  5688(sp)
006360  e3c97e2c  loadli.w r19,  5692(sp)
006364  9f8e8e2c  addli sp, sp, 5696
006368  5f800f00  jr r31, 0
00636c  00100000  exit
006370  00100000  exit
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
