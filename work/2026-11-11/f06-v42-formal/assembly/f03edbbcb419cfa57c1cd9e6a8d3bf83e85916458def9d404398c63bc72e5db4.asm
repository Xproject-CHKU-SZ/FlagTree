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
0000e8  e3495f00  loadli.w r19,  44(r30)
0000ec  e3005f00  loadli.w r1,  40(r30)
0000f0  630a6f00  loadli.w r20,  48(r30)
0000f4  8b901920  mul.s r1, r19, r1
0000f8  0b9b4021  mul.s r22, r1, r20
0000fc  cb515b01  ble.s r22, r21, 116
000100  ab10833a  lui r1, 239665
000104  80db0002  load_param_i r23, 1
000108  1f0c6001  addli r24, zero, 176
00010c  9f0c0010  addli r25, zero, 2048
000110  1f3d0000  addli r26, zero, 3
000114  9f0d0006  addli r27, zero, 768
000118  1b9ef026  ori r28, r1, 623
00011c  8b904a31  div.s r1, r21, r20
000120  eb510f02  load.d r[4:5], 32(r30)
000124  6b530f01  load.d r[7:8], 16(r30)
000128  6b548f01  load.d r[9:10], 24(r30)
00012c  6782ae01  storeli.w r26, 32(sp)
000130  e7c10e00  storeli.w zero, 28(sp)
000134  67c1be01  storeli.w r27, 20(sp)
000138  67819e01  storeli.w r25, 16(sp)
00013c  e781ce01  storeli.w r28, 24(sp)
000140  73b03e00  store.d r[4:5], 0(sp)
000144  6b528f00  load.d r[5:6], 8(r30)
000148  8b903031  div.s r1, r1, r19
00014c  8b908021  mul.s r1, r1, r24
000150  0b911c18  sub.s r2, r25, r1
000154  e7801e00  storeli.w r1, 8(sp)
000158  0b118141  min.s r2, r2, r24
00015c  e7c02e00  storeli.w r2, 12(sp)
000160  6b510f00  load.d r[3:4], 0(r30)
000164  d72f0000  jal 380
000168  8b9a7a11  add.s r21, r21, r23
00016c  bfce6aff  blt.s r21, r22, -80
000170  9f8e8e00  addli sp, sp, 64
000174  00a00300  mfence { lm, sm, gm }
000178  00100000  exit
00017c  9f8e8ed3  addli sp, sp, -5696
000180  67c1ee2d  storeli.w r30, 5652(sp)
000184  1f8f8e2c  addli r30, sp, 5696
000188  1f250000  addli r10, zero, 2
00018c  e7c33e2d  storeli.w r19, 5692(sp)
000190  e7834e2d  storeli.w r20, 5688(sp)
000194  67c35e2d  storeli.w r21, 5684(sp)
000198  67836e2d  storeli.w r22, 5680(sp)
00019c  e7c27e2d  storeli.w r23, 5676(sp)
0001a0  e7828e2d  storeli.w r24, 5672(sp)
0001a4  67c29e2d  storeli.w r25, 5668(sp)
0001a8  6782ae2d  storeli.w r26, 5664(sp)
0001ac  e7c1be2d  storeli.w r27, 5660(sp)
0001b0  e781ce2d  storeli.w r28, 5656(sp)
0001b4  6781fe2d  storeli.w r31, 5648(sp)
0001b8  e3004f00  loadli.w r1,  32(r30)
0001bc  63472f00  loadli.w r14,  20(r30)
0001c0  e3072f00  loadli.w r15,  16(r30)
0001c4  63481f00  loadli.w r16,  12(r30)
0001c8  9f057fd6  addli r11, r30, -5320
0001cc  73b02500  store.d r[3:4], 0(r11)
0001d0  3f511500  blt.s r10, r1, 84
0001d4  1f110000  addli r2, zero, 1
0001d8  b7a92004  beq r1, r2, 2664
0001dc  1f210000  addli r2, zero, 2
0001e0  3be82004  bneq r1, r2, 2584
0001e4  e3403f00  loadli.w r1,  28(r30)
0001e8  37f60012  beq r1, zero, 9628
0001ec  80300002  core_id r1
0001f0  1f210000  addli r2, zero, 2
0001f4  37df2024  beq r1, r2, 19412
0001f8  1f110000  addli r2, zero, 1
0001fc  37be2024  beq r1, r2, 19340
000200  bb9f0024  bneq r1, zero, 19428
000204  63012f00  loadli.w r2,  16(r30)
000208  ab0100f0  lui r3, 983040
00020c  1b311100  slli r2, r2, 1
000210  17113100  or r2, r2, r3
000214  ab910100  lui r3, 25
000218  9f810100  addli r3, r3, 0
00021c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000220  db780900  j 19396
000224  1f310000  addli r2, zero, 3
000228  37e92004  beq r1, r2, 2648
00022c  1f410000  addli r2, zero, 4
000230  3ba72004  bneq r1, r2, 2504
000234  e3002f00  loadli.w r1,  16(r30)
000238  1f010010  addli r2, zero, 2048
00023c  bbeb2008  bneq r1, r2, 4856
000240  e3403f00  loadli.w r1,  28(r30)
000244  b7880018  beq r1, zero, 12832
000248  80300002  core_id r1
00024c  ab070000  lui r15, 0
000250  1f150000  addli r10, zero, 1
000254  9f058fd7  addli r11, r30, -5184
000258  1f068000  addli r12, zero, 64
00025c  9f060010  addli r13, zero, 2048
000260  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
000264  1bb15000  slli r2, r1, 5
000268  80500102  load_param_i r1, 2
00026c  9f870700  addli r15, r15, 0
000270  9bb15000  slli r3, r1, 5
000274  1f070100  addli r14, r2, 0
000278  33080728  zext_int2long r[17:18], r14
00027c  2b0900f0  lui r18, 983040
000280  1738a802  sll.d r[17:18], r[17:18], r10
000284  17192601  or r18, r12, r18
000288  0b280211  add.ul r[17:18], r[5:6], r[17:18]
00028c  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000290  1b382700  slli r16, r14, 2
000294  0b97e110  add.s r14, r3, r14
000298  00a00200  mfence { lm, gm }
00029c  c2800502  vload.mz vr1{mr1}, 0(r11)
0002a0  9308d704  setlt.u r17, r14, r13
0002a4  0b18f810  add.s r16, r16, r15
0002a8  1f098800  addli r18, r16, 64
0002ac  66c11180  vmerge_l.hf vr2, vr3, vr1
0002b0  e6c011a0  vmerge_h.hf vr1, vr3, vr1
0002b4  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
0002b8  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
0002bc  bbfe08fe  bneq r17, zero, -68
0002c0  00320002  core_id r4
0002c4  9bb27000  slli r5, r1, 7
0002c8  1f160000  addli r12, zero, 1
0002cc  9f068fd7  addli r13, r30, -5184
0002d0  1f078000  addli r14, zero, 64
0002d4  1f080010  addli r16, zero, 2048
0002d8  9f080100  addli r17, r2, 0
0002dc  00a00000  mfence { lm }
0002e0  9b357200  slli r11, r4, 7
0002e4  2b220000  lui r4, 2
0002e8  1f020200  addli r4, r4, 0
0002ec  0b954510  add.s r10, r11, r4
0002f0  33890828  zext_int2long r[19:20], r17
0002f4  2b0a00f0  lui r20, 983040
0002f8  8b983810  add.s r17, r17, r3
0002fc  1739c902  sll.d r[19:20], r[19:20], r12
000300  171a4701  or r20, r14, r20
000304  0b292311  add.ul r[19:20], r[7:8], r[19:20]
000308  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
00030c  13890805  setlt.u r18, r17, r16
000310  9f098500  addli r19, r10, 64
000314  00a00200  mfence { lm, gm }
000318  c2800602  vload.mz vr1{mr1}, 0(r13)
00031c  66c11180  vmerge_l.hf vr2, vr3, vr1
000320  e6c011a0  vmerge_h.hf vr1, vr3, vr1
000324  4e102502  vstores_mask16.mz vr2{mr1}, 0(r10)
000328  0b155510  add.s r10, r10, r5
00032c  4e901902  vstores_mask16.mz vr1{mr1}, 0(r19)
000330  3b0f09fe  bneq r18, zero, -64
000334  2b450000  lui r10, 4
000338  9f130000  addli r7, zero, 1
00033c  1f068000  addli r12, zero, 64
000340  9f060010  addli r13, zero, 2048
000344  00a00000  mfence { lm }
000348  1f050500  addli r10, r10, 0
00034c  0b93a510  add.s r6, r11, r10
000350  9f058fd7  addli r11, r30, -5184
000354  33080128  zext_int2long r[17:18], r2
000358  2b0700f0  lui r14, 983040
00035c  0b113110  add.s r2, r2, r3
000360  17387802  sll.d r[17:18], r[17:18], r7
000364  1717e600  or r14, r12, r14
000368  0b280411  add.ul r[17:18], r[9:10], r[17:18]
00036c  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000370  1307d104  setlt.u r14, r2, r13
000374  1f088300  addli r16, r6, 64
000378  00a00200  mfence { lm, gm }
00037c  c2800502  vload.mz vr1{mr1}, 0(r11)
000380  66c11180  vmerge_l.hf vr2, vr3, vr1
000384  e6c011a0  vmerge_h.hf vr1, vr3, vr1
000388  4e102302  vstores_mask16.mz vr2{mr1}, 0(r6)
00038c  0b135310  add.s r6, r6, r5
000390  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000394  3b0f07fe  bneq r14, zero, -64
000398  2bf10000  lui r2, 15
00039c  80310002  core_id r3
0003a0  00a00300  mfence { lm, sm, gm }
0003a4  9f020006  addli r5, zero, 768
0003a8  1b11f1ff  ori r2, r2, 4095
0003ac  9b811100  andi r3, r3, 1
0003b0  80210104  csr_set csr3, r2
0003b4  1f010006  addli r2, zero, 768
0003b8  00d00100  sync_group
0003bc  670c3fd4  storeli.w r3, -5440(r30)
0003c0  37a00100  beq r3, zero, 8
0003c4  9f02000a  addli r5, zero, 1280
0003c8  e3411f00  loadli.w r3,  12(r30)
0003cc  e3441f00  loadli.w r9,  12(r30)
0003d0  1f130000  addli r6, zero, 1
0003d4  bf8d612e  blt.s r3, r6, 24416
0003d8  e3018fd5  loadli.w r3,  -5440(r30)
0003dc  1f0a8fd7  addli r20, r30, -5184
0003e0  1bb81200  slli r16, r5, 1
0003e4  9f030000  addli r7, zero, 0
0003e8  9f787000  addli r17, zero, 63
0003ec  9f0d0005  addli r27, zero, 640
0003f0  ab06803f  lui r13, 260096
0003f4  9f0c2000  addli r25, zero, 16
0003f8  1f3b0000  addli r22, zero, 3
0003fc  1f5e1000  addli r28, zero, 13
000400  2bec0700  lui r24, 126
000404  1f2d1000  addli r26, zero, 10
000408  1f070003  addli r14, zero, 384
00040c  0b912120  mul.s r2, r3, r2
000410  9bc11000  srli r3, r1, 1
000414  80300002  core_id r1
000418  9bc51000  srli r11, r1, 1
00041c  9b302100  slli r1, r2, 2
000420  67042fd4  storeli.w r2, -5568(r30)
000424  1f814200  addli r2, r5, 32
000428  0b994010  add.s r18, r1, r4
00042c  8b99a010  add.s r19, r1, r10
000430  9bb02200  slli r1, r5, 2
000434  674f2fd2  storeli.w r2, -5644(r30)
000438  0b114811  add.s r2, r16, r20
00043c  2be27f00  lui r4, 2046
000440  8b904011  add.s r1, r1, r20
000444  9f8080ff  addli r1, r1, -64
000448  670f1fd2  storeli.w r1, -5648(r30)
00044c  9f0081ff  addli r1, r2, -64
000450  2bf100fc  lui r2, 1032207
000454  e74e1fd2  storeli.w r1, -5652(r30)
000458  abf0ffff  lui r1, 1048575
00045c  1b1401c0  ori r8, r2, 3072
000460  00a00000  mfence { lm }
000464  67003fd4  storeli.w r3, -5632(r30)
000468  e74fbfd2  storeli.w r11, -5636(r30)
00046c  e70f0fd3  storeli.w r16, -5640(r30)
000470  9b9000f8  ori r1, r1, 3968
000474  e70e1fd2  storeli.w r1, -5656(r30)
000478  abf00000  lui r1, 15
00047c  9b90f0ff  ori r1, r1, 4095
000480  67081fd6  storeli.w r1, -5248(r30)
000484  ab700000  lui r1, 7
000488  9b9af0ff  ori r21, r1, 4095
00048c  ab00ff03  lui r1, 16368
000490  9b9bf03f  ori r23, r1, 1023
000494  9f000fd5  addli r1, r30, -5504
000498  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
00049c  5b040000  j 32
0004a0  00a00300  mfence { lm, sm, gm }
0004a4  e3000fd7  loadli.w r1,  -5248(r30)
0004a8  80a10004  csr_set csr3, r1
0004ac  00d00100  sync_group
0004b0  8b933310  add.s r7, r7, r3
0004b4  3fa09300  blt.s r7, r9, 8
0004b8  dbe50000  j 1836
0004bc  8b90b310  add.s r1, r7, r11
0004c0  cb8f14fe  ble.s r9, r1, -32
0004c4  63011f00  loadli.w r2,  8(r30)
0004c8  8b902010  add.s r1, r1, r2
0004cc  0b813330  div.u r2, r7, r3
0004d0  e3018fd4  loadli.w r3,  -5568(r30)
0004d4  9bb0b000  slli r1, r1, 11
0004d8  97903000  or r1, r1, r3
0004dc  9f017fd6  addli r3, r30, -5320
0004e0  b3940028  sext_int2long r[10:11], r1
0004e4  ab0000f0  lui r1, 983040
0004e8  1b316100  slli r2, r2, 6
0004ec  97b56402  sll.d r[12:13], r[10:11], r6
0004f0  ebd40100  load.d r[10:11], 0(r3)
0004f4  9f018fd6  addli r3, r30, -5312
0004f8  97101800  or r1, r16, r1
0004fc  1b010104  andi r2, r2, 64
000500  73b0b100  store.d r[12:13], 0(r3)
000504  8ba4b410  add.ul r[10:11], r[10:11], r[12:13]
000508  ffa04401  l_gm2lm r1, r20, 0(r[10:11])
00050c  80300002  core_id r1
000510  00a00200  mfence { lm, gm }
000514  17161100  or r12, r2, r1
000518  e340dfd3  loadli.w r1,  -5652(r30)
00051c  6301efd3  loadli.w r2,  -5648(r30)
000520  e341efd3  loadli.w r3,  -5644(r30)
000524  c2800002  vload.mz vr1{mr1}, 0(r1)
000528  9f81c1ff  addli r3, r3, -32
00052c  9f0581ff  addli r11, r2, -64
000530  9f8080ff  addli r1, r1, -64
000534  93843804  setlt.u r9, r17, r3
000538  66c111a0  vmerge_h.hf vr2, vr3, vr1
00053c  e6c01180  vmerge_l.hf vr1, vr3, vr1
000540  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
000544  1f0101ff  addli r2, r2, -128
000548  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
00054c  3bef04fe  bneq r9, zero, -40
000550  00a00000  mfence { lm }
000554  e3008fd5  loadli.w r1,  -5440(r30)
000558  3bb60000  bneq r1, zero, 396
00055c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000560  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000564  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000568  6301dfd3  loadli.w r2,  -5656(r30)
00056c  9f000000  addli r1, zero, 0
000570  8b94f010  add.s r9, r1, r15
000574  8b111a10  add.s r3, r20, r1
000578  1f010101  addli r2, r2, 128
00057c  9f800004  addli r1, r1, 512
000580  1f850401  addli r10, r9, 128
000584  4a900402  vloads_mask16.mz vr0{mr1}, 0(r9)
000588  9f858400  addli r11, r9, 64
00058c  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
000590  1f888101  addli r16, r3, 192
000594  ca120502  vloads_mask16.mz vr5{mr1}, 0(r10)
000598  1f858401  addli r10, r9, 192
00059c  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
0005a0  9f858100  addli r11, r3, 64
0005a4  c2150802  vload_mask16.mz vr11{mr1}, 0(r16)
0005a8  ca130502  vloads_mask16.mz vr7{mr1}, 0(r10)
0005ac  1f850101  addli r10, r3, 128
0005b0  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
0005b4  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
0005b8  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0005bc  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0005c0  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0005c4  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0005c8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0005cc  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0005d0  46108502  vstore_mask16.mz vr8{mr1}, 0(r10)
0005d4  1f850402  addli r10, r9, 256
0005d8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0005dc  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0005e0  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0005e4  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
0005e8  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
0005ec  1f858402  addli r10, r9, 320
0005f0  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0005f4  1f880102  addli r16, r3, 256
0005f8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0005fc  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000600  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000604  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
000608  1f850403  addli r10, r9, 384
00060c  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000610  9f848403  addli r9, r9, 448
000614  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000618  4a140502  vloads_mask16.mz vr8{mr1}, 0(r10)
00061c  1f858102  addli r10, r3, 320
000620  4a950402  vloads_mask16.mz vr10{mr1}, 0(r9)
000624  9f840103  addli r9, r3, 384
000628  9f818103  addli r3, r3, 448
00062c  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
000630  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000634  c2930402  vload_mask16.mz vr7{mr1}, 0(r9)
000638  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00063c  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
000640  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000644  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000648  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
00064c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000650  46106502  vstore_mask16.mz vr6{mr1}, 0(r10)
000654  1305b105  setlt.u r10, r2, r27
000658  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00065c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000660  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000664  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000668  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00066c  46905402  vstore_mask16.mz vr5{mr1}, 0(r9)
000670  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000674  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000678  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00067c  bb5b05fe  bneq r10, zero, -268
000680  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000684  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000688  9f000002  addli r1, zero, 256
00068c  6af100c0  vsrl.p vr2, r1, vr0
000690  eaf110c0  vsrl.p vr3, r1, vr1
000694  9f000001  addli r1, zero, 128
000698  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00069c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006a0  6af100c0  vsrl.p vr2, r1, vr0
0006a4  eaf110c0  vsrl.p vr3, r1, vr1
0006a8  9f008000  addli r1, zero, 64
0006ac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006b0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006b4  6af100c0  vsrl.p vr2, r1, vr0
0006b8  eaf110c0  vsrl.p vr3, r1, vr1
0006bc  9f004000  addli r1, zero, 32
0006c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006c8  6af100c0  vsrl.p vr2, r1, vr0
0006cc  eaf110c0  vsrl.p vr3, r1, vr1
0006d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006d4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006d8  fa110040  vextracti.f r3, 0(vr0)
0006dc  fa940040  vextracti.f r9, 0(vr1)
0006e0  5b660000  j 816
0006e4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0006e8  2bf1ffff  lui r2, 1048575
0006ec  9f000000  addli r1, zero, 0
0006f0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0006f4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0006f8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0006fc  1b1101f8  ori r2, r2, 3968
000700  8b941710  add.s r9, r15, r1
000704  8b111a10  add.s r3, r20, r1
000708  1f010101  addli r2, r2, 128
00070c  9f800004  addli r1, r1, 512
000710  9f880431  addli r17, r9, 6272
000714  9f850430  addli r11, r9, 6144
000718  1f858431  addli r10, r9, 6336
00071c  1f880118  addli r16, r3, 3072
000720  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
000724  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
000728  9f858430  addli r11, r9, 6208
00072c  ca140502  vloads_mask16.mz vr9{mr1}, 0(r10)
000730  1f858118  addli r10, r3, 3136
000734  9f888119  addli r17, r3, 3264
000738  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
00073c  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
000740  9f850119  addli r11, r3, 3200
000744  42900802  vload_mask16.mz vr0{mr1}, 0(r17)
000748  c2150502  vload_mask16.mz vr11{mr1}, 0(r10)
00074c  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
000750  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
000754  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
000758  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
00075c  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
000760  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000764  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
000768  46907502  vstore_mask16.mz vr7{mr1}, 0(r11)
00076c  9f850432  addli r11, r9, 6400
000770  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
000774  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
000778  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00077c  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
000780  1f88011a  addli r16, r3, 3328
000784  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000788  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
00078c  1305e104  setlt.u r10, r2, r14
000790  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
000794  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
000798  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
00079c  9f858432  addli r11, r9, 6464
0007a0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0007a4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0007a8  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
0007ac  9f850433  addli r11, r9, 6528
0007b0  9f848433  addli r9, r9, 6592
0007b4  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
0007b8  9f85811a  addli r11, r3, 3392
0007bc  4a950402  vloads_mask16.mz vr10{mr1}, 0(r9)
0007c0  9f84011b  addli r9, r3, 3456
0007c4  9f81811b  addli r3, r3, 3520
0007c8  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
0007cc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0007d0  c2930402  vload_mask16.mz vr7{mr1}, 0(r9)
0007d4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0007d8  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
0007dc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0007e0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0007e4  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
0007e8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0007ec  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0007f0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0007f4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0007f8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0007fc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000800  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000804  46905402  vstore_mask16.mz vr5{mr1}, 0(r9)
000808  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
00080c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000810  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000814  bb3b05fe  bneq r10, zero, -276
000818  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00081c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000820  1f010002  addli r2, zero, 256
000824  9f000000  addli r1, zero, 0
000828  ea7111c0  vsrl.p vr3, r2, vr1
00082c  6a7101c0  vsrl.p vr2, r2, vr0
000830  1f010001  addli r2, zero, 128
000834  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000838  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00083c  ea7111c0  vsrl.p vr3, r2, vr1
000840  6a7101c0  vsrl.p vr2, r2, vr0
000844  1f018000  addli r2, zero, 64
000848  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00084c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000850  ea7111c0  vsrl.p vr3, r2, vr1
000854  6a7101c0  vsrl.p vr2, r2, vr0
000858  1f014000  addli r2, zero, 32
00085c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000860  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000864  ea7111c0  vsrl.p vr3, r2, vr1
000868  6a7101c0  vsrl.p vr2, r2, vr0
00086c  2bf1ffff  lui r2, 1048575
000870  9b1501f8  ori r11, r2, 3968
000874  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000878  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00087c  7a970040  vextracti.f r14, 0(vr1)
000880  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000884  fa110040  vextracti.f r3, 0(vr0)
000888  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00088c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000890  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000894  0b981710  add.s r16, r15, r1
000898  8b141a10  add.s r9, r20, r1
00089c  9f850501  addli r11, r11, 128
0008a0  9f800004  addli r1, r1, 512
0008a4  1f050818  addli r10, r16, 3072
0008a8  9f080819  addli r17, r16, 3200
0008ac  1f818401  addli r2, r9, 192
0008b0  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
0008b4  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
0008b8  1f058818  addli r10, r16, 3136
0008bc  ca920802  vloads_mask16.mz vr5{mr1}, 0(r17)
0008c0  9f088819  addli r17, r16, 3264
0008c4  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
0008c8  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
0008cc  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
0008d0  1f850401  addli r10, r9, 128
0008d4  9f888400  addli r17, r9, 64
0008d8  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
0008dc  42950802  vload_mask16.mz vr10{mr1}, 0(r17)
0008e0  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0008e4  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0008e8  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0008ec  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0008f0  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0008f4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0008f8  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0008fc  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000900  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
000904  46108502  vstore_mask16.mz vr8{mr1}, 0(r10)
000908  1f850402  addli r10, r9, 256
00090c  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
000910  1f01081a  addli r2, r16, 3328
000914  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
000918  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
00091c  1f01881a  addli r2, r16, 3392
000920  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000924  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000928  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
00092c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000930  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000934  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
000938  1f01081b  addli r2, r16, 3456
00093c  1f08881b  addli r16, r16, 3520
000940  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
000944  1f818402  addli r2, r9, 320
000948  4a150802  vloads_mask16.mz vr10{mr1}, 0(r16)
00094c  1f880403  addli r16, r9, 384
000950  9f848403  addli r9, r9, 448
000954  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
000958  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00095c  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000960  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000964  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
000968  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00096c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000970  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
000974  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000978  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
00097c  1381b505  setlt.u r2, r11, r27
000980  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000984  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000988  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00098c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000990  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000994  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
000998  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
00099c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0009a0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0009a4  bb4b01fe  bneq r2, zero, -272
0009a8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0009ac  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0009b0  9f000002  addli r1, zero, 256
0009b4  6af100c0  vsrl.p vr2, r1, vr0
0009b8  eaf110c0  vsrl.p vr3, r1, vr1
0009bc  9f000001  addli r1, zero, 128
0009c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009c8  6af100c0  vsrl.p vr2, r1, vr0
0009cc  eaf110c0  vsrl.p vr3, r1, vr1
0009d0  9f008000  addli r1, zero, 64
0009d4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009d8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009dc  6af100c0  vsrl.p vr2, r1, vr0
0009e0  eaf110c0  vsrl.p vr3, r1, vr1
0009e4  9f004000  addli r1, zero, 32
0009e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009f0  6af100c0  vsrl.p vr2, r1, vr0
0009f4  eaf110c0  vsrl.p vr3, r1, vr1
0009f8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009fc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a00  fa100040  vextracti.f r1, 0(vr0)
000a04  7a910040  vextracti.f r2, 0(vr1)
000a08  8be11110  add.f.rn r3, r3, r1
000a0c  8b642710  add.f.rn r9, r14, r2
000a10  ab650000  lui r11, 6
000a14  2b670000  lui r14, 6
000a18  1b352600  slli r10, r12, 2
000a1c  9f000000  addli r1, zero, 0
000a20  1f010000  addli r2, zero, 0
000a24  9f850500  addli r11, r11, 0
000a28  1f070704  addli r14, r14, 512
000a2c  9f880500  addli r17, r11, 0
000a30  0b18e510  add.s r16, r10, r14
000a34  8b151511  add.s r11, r10, r17
000a38  73609800  stores.w r9, 0(r16)
000a3c  9b144500  ori r9, r10, 4
000a40  73e03500  stores.w r3, 0(r11)
000a44  0b951411  add.s r10, r9, r17
000a48  8b94e410  add.s r9, r9, r14
000a4c  00a00300  mfence { lm, sm, gm }
000a50  e3010fd7  loadli.w r3,  -5248(r30)
000a54  80a10104  csr_set csr3, r3
000a58  9b01e607  andi r3, r12, 126
000a5c  00d00100  sync_group
000a60  6f450500  loads.w r10, 0(r10)
000a64  efc40400  loads.w r9, 0(r9)
000a68  9bb12100  slli r3, r3, 2
000a6c  8b951111  add.s r11, r3, r17
000a70  8b91e110  add.s r3, r3, r14
000a74  efc50500  loads.w r11, 0(r11)
000a78  efc10100  loads.w r3, 0(r3)
000a7c  0b65b510  add.f.rn r10, r10, r11
000a80  ab05003a  lui r11, 237568
000a84  8be13410  add.f.rn r3, r9, r3
000a88  8b64b520  mul.f.rn r9, r10, r11
000a8c  8be1b120  mul.f.rn r3, r3, r11
000a90  9f050000  addli r11, zero, 0
000a94  0be59420  mul.f.rn r10, r9, r9
000a98  8be1a118  sub.f.rn r3, r3, r10
000a9c  63053f00  loadli.w r10,  24(r30)
000aa0  8be1a110  add.f.rn r3, r3, r10
000aa4  0be50458  neg.f r10, r9
000aa8  8f810108  sqrt.f.rn r3, r3
000aac  8f813618  div.f.rn r3, r13, r3
000ab0  8b142a10  add.s r9, r20, r2
000ab4  0b182910  add.s r16, r18, r2
000ab8  8b982910  add.s r17, r19, r2
000abc  9f854500  addli r11, r11, 32
000ac0  1f010101  addli r2, r2, 128
000ac4  42900402  vload_mask16.mz vr0{mr1}, 0(r9)
000ac8  ca100802  vloads_mask16.mz vr1{mr1}, 0(r16)
000acc  4a910802  vloads_mask16.mz vr2{mr1}, 0(r17)
000ad0  9f848400  addli r9, r9, 64
000ad4  c2910402  vload_mask16.mz vr3{mr1}, 0(r9)
000ad8  9f048800  addli r9, r16, 64
000adc  1f888800  addli r16, r17, 64
000ae0  4a920402  vloads_mask16.mz vr4{mr1}, 0(r9)
000ae4  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
000ae8  93845504  setlt.u r9, r11, r5
000aec  0b181a10  add.s r16, r20, r1
000af0  9f808000  addli r1, r1, 64
000af4  12100502  vadd.f.mz.rn vr0{mr1}, r10, vr0
000af8  92113502  vadd.f.mz.rn vr3{mr1}, r10, vr3
000afc  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
000b00  8a913102  vmul.f.mz.rn vr3{mr1}, r3, vr3
000b04  26111002  vmac.f.mz.rn vr2{mr1}, vr0, vr1
000b08  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000b0c  6aa01c22  vor.u.mz vr0{mr1}, r25, vr1
000b10  a6924102  vmac.f.mz.rn vr5{mr1}, vr3, vr4
000b14  6a221e22  vor.u.mz vr4{mr1}, r28, vr1
000b18  ee3120c2  vsrl.s.mz vr3{mr1}, vr0, vr2
000b1c  6e3050c2  vsrl.s.mz vr0{mr1}, vr0, vr5
000b20  ea313302  vand.s.mz vr3{mr1}, r6, vr3
000b24  6a300302  vand.s.mz vr0{mr1}, r6, vr0
000b28  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
000b2c  ea211b22  vor.u.mz vr3{mr1}, r22, vr1
000b30  ea201d22  vor.u.mz vr1{mr1}, r26, vr1
000b34  16b00202  vadd.s.mz vr0{mr1}, vr5, vr0
000b38  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
000b3c  12b00a02  vadd.s.mz vr0{mr1}, r21, vr0
000b40  eeb221c2  vsrl.s.mz vr5{mr1}, vr3, vr2
000b44  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
000b48  6e3202c2  vsrl.s.mz vr4{mr1}, vr4, vr0
000b4c  6eb001c2  vsrl.s.mz vr0{mr1}, vr3, vr0
000b50  6a312c02  vand.s.mz vr2{mr1}, r24, vr2
000b54  ea325202  vand.s.mz vr5{mr1}, r4, vr5
000b58  ea314c02  vand.s.mz vr3{mr1}, r24, vr4
000b5c  6a300202  vand.s.mz vr0{mr1}, r4, vr0
000b60  6ab12622  vor.s.mz vr2{mr1}, r13, vr2
000b64  6ab25622  vor.s.mz vr4{mr1}, r13, vr5
000b68  6ab00622  vor.s.mz vr0{mr1}, r13, vr0
000b6c  eab13622  vor.s.mz vr3{mr1}, r13, vr3
000b70  06110120  vfloat2fp16_l.rz vr2, vr2
000b74  06500020  vfloat2fp16_h.rz vr0, vr0
000b78  06d10120  vfloat2fp16_h.rz vr2, vr3
000b7c  06100220  vfloat2fp16_l.rz vr0, vr4
000b80  eeb020a2  vsll.s.mz vr1{mr1}, vr1, vr2
000b84  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000b88  ea301402  vand.s.mz vr1{mr1}, r8, vr1
000b8c  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
000b90  46000802  vstore.mz vr0{mr1}, 0(r16)
000b94  3bfc04fe  bneq r9, zero, -228
000b98  9f058fd6  addli r11, r30, -5312
000b9c  6b510f00  load.d r[3:4], 0(r30)
000ba0  6308ffd3  loadli.w r16,  -5640(r30)
000ba4  ab0000f0  lui r1, 983040
000ba8  1f070003  addli r14, zero, 384
000bac  9f787000  addli r17, zero, 63
000bb0  ebd40500  load.d r[10:11], 0(r11)
000bb4  00a00000  mfence { lm }
000bb8  97101800  or r1, r16, r1
000bbc  0b219110  add.ul r[3:4], r[3:4], r[10:11]
000bc0  ff304101  s_lm2gm r1, r20, 0(r[3:4])
000bc4  9f000fd5  addli r1, r30, -5504
000bc8  00a00200  mfence { lm, gm }
000bcc  e3441f00  loadli.w r9,  12(r30)
000bd0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000bd4  e3010fd4  loadli.w r3,  -5632(r30)
000bd8  e345ffd3  loadli.w r11,  -5636(r30)
000bdc  8b933310  add.s r7, r7, r3
000be0  3ff393fc  blt.s r7, r9, -1828
000be4  abf00000  lui r1, 15
000be8  9b90f0ff  ori r1, r1, 4095
000bec  80a10004  csr_set csr3, r1
000bf0  00d00100  sync_group
000bf4  5be80a00  j 22336
000bf8  e3403f00  loadli.w r1,  28(r30)
000bfc  b7a2000a  beq r1, zero, 5288
000c00  e3002f00  loadli.w r1,  16(r30)
000c04  1f010010  addli r2, zero, 2048
000c08  3bd22012  bneq r1, r2, 9364
000c0c  00350002  core_id r10
000c10  9f200000  addli r1, zero, 2
000c14  b76e1524  beq r10, r1, 19384
000c18  9f100000  addli r1, zero, 1
000c1c  b75d1524  beq r10, r1, 19316
000c20  3b1f0524  bneq r10, zero, 19396
000c24  9f000040  addli r1, zero, 8192
000c28  2b0100f0  lui r2, 983040
000c2c  97902000  or r1, r1, r2
000c30  2b110200  lui r2, 33
000c34  1f010100  addli r2, r2, 0
000c38  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000c3c  5b750900  j 19368
000c40  e3403f00  loadli.w r1,  28(r30)
000c44  b7830010  beq r1, zero, 8416
000c48  80300002  core_id r1
000c4c  1f210000  addli r2, zero, 2
000c50  b7cd2022  beq r1, r2, 18288
000c54  1f110000  addli r2, zero, 1
000c58  37c52020  beq r1, r2, 16720
000c5c  3b8e0022  bneq r1, zero, 18304
000c60  63012f00  loadli.w r2,  16(r30)
000c64  ab0100f0  lui r3, 983040
000c68  1b311100  slli r2, r2, 1
000c6c  17113100  or r2, r2, r3
000c70  abd10100  lui r3, 29
000c74  9f810100  addli r3, r3, 0
000c78  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000c7c  5bec0800  j 18272
000c80  e3002f00  loadli.w r1,  16(r30)
000c84  1f010010  addli r2, zero, 2048
000c88  3bdb2006  bneq r1, r2, 3796
000c8c  e3403f00  loadli.w r1,  28(r30)
000c90  37c5001a  beq r1, zero, 13648
000c94  003d0002  core_id r26
000c98  abd70000  lui r15, 13
000c9c  00510102  load_param_i r2, 2
000ca0  1f150000  addli r10, zero, 1
000ca4  9f058fd7  addli r11, r30, -5184
000ca8  1f068000  addli r12, zero, 64
000cac  9f060010  addli r13, zero, 2048
000cb0  9b305d00  slli r1, r26, 5
000cb4  9b315100  slli r3, r2, 5
000cb8  9f8707f0  addli r15, r15, -2048
000cbc  1f870000  addli r14, r1, 0
000cc0  33080728  zext_int2long r[17:18], r14
000cc4  2b0900f0  lui r18, 983040
000cc8  1738a802  sll.d r[17:18], r[17:18], r10
000ccc  17192601  or r18, r12, r18
000cd0  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000cd4  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000cd8  1b382700  slli r16, r14, 2
000cdc  0b97e110  add.s r14, r3, r14
000ce0  00a00200  mfence { lm, gm }
000ce4  42800502  vload.mz vr0{mr1}, 0(r11)
000ce8  9308d704  setlt.u r17, r14, r13
000cec  0b18f810  add.s r16, r16, r15
000cf0  1f098800  addli r18, r16, 64
000cf4  86300000  vfp162float_l.rn vr1, vr0
000cf8  06700000  vfp162float_h.rn vr0, vr0
000cfc  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000d00  4e100902  vstores_mask16.mz vr0{mr1}, 0(r18)
000d04  bbfe08fe  bneq r17, zero, -68
000d08  abf20000  lui r5, 15
000d0c  1b357d00  slli r10, r26, 7
000d10  1b327100  slli r4, r2, 7
000d14  1f160000  addli r12, zero, 1
000d18  9f068fd7  addli r13, r30, -5184
000d1c  1f078000  addli r14, zero, 64
000d20  1f080010  addli r16, zero, 2048
000d24  9f880000  addli r17, r1, 0
000d28  00a00000  mfence { lm }
000d2c  9f8202f0  addli r5, r5, -2048
000d30  8b155510  add.s r11, r10, r5
000d34  33890828  zext_int2long r[19:20], r17
000d38  2b0a00f0  lui r20, 983040
000d3c  8b983810  add.s r17, r17, r3
000d40  1739c902  sll.d r[19:20], r[19:20], r12
000d44  171a4701  or r20, r14, r20
000d48  0b292311  add.ul r[19:20], r[7:8], r[19:20]
000d4c  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
000d50  13890805  setlt.u r18, r17, r16
000d54  9f898500  addli r19, r11, 64
000d58  00a00200  mfence { lm, gm }
000d5c  42800602  vload.mz vr0{mr1}, 0(r13)
000d60  86300000  vfp162float_l.rn vr1, vr0
000d64  06700000  vfp162float_h.rn vr0, vr0
000d68  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
000d6c  8b954510  add.s r11, r11, r4
000d70  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
000d74  3b0f09fe  bneq r18, zero, -64
000d78  ab130100  lui r7, 17
000d7c  9f058fd7  addli r11, r30, -5184
000d80  1f068000  addli r12, zero, 64
000d84  9f060010  addli r13, zero, 2048
000d88  00a00000  mfence { lm }
000d8c  9f8303f0  addli r7, r7, -2048
000d90  0b137510  add.s r6, r10, r7
000d94  1f150000  addli r10, zero, 1
000d98  33880028  zext_int2long r[17:18], r1
000d9c  2b0700f0  lui r14, 983040
000da0  8b903010  add.s r1, r1, r3
000da4  1738a802  sll.d r[17:18], r[17:18], r10
000da8  1717e600  or r14, r12, r14
000dac  0b280411  add.ul r[17:18], r[9:10], r[17:18]
000db0  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000db4  1387d004  setlt.u r14, r1, r13
000db8  1f088300  addli r16, r6, 64
000dbc  00a00200  mfence { lm, gm }
000dc0  42800502  vload.mz vr0{mr1}, 0(r11)
000dc4  86300000  vfp162float_l.rn vr1, vr0
000dc8  06700000  vfp162float_h.rn vr0, vr0
000dcc  4e101302  vstores_mask16.mz vr1{mr1}, 0(r6)
000dd0  0b134310  add.s r6, r6, r4
000dd4  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
000dd8  3b0f07fe  bneq r14, zero, -64
000ddc  abf00000  lui r1, 15
000de0  00a00300  mfence { lm, sm, gm }
000de4  9b011d00  andi r3, r26, 1
000de8  1f020006  addli r4, zero, 768
000dec  9b90f0ff  ori r1, r1, 4095
000df0  80a10004  csr_set csr3, r1
000df4  9f000006  addli r1, zero, 768
000df8  00d00100  sync_group
000dfc  67083fd6  storeli.w r3, -5248(r30)
000e00  37a00100  beq r3, zero, 8
000e04  1f02000a  addli r4, zero, 1280
000e08  e3411f00  loadli.w r3,  12(r30)
000e0c  1f130000  addli r6, zero, 1
000e10  bf94612a  blt.s r3, r6, 21796
000e14  e3010fd7  loadli.w r3,  -5248(r30)
000e18  1f088fd7  addli r16, r30, -5184
000e1c  1b441100  srli r8, r2, 1
000e20  1f014200  addli r2, r4, 32
000e24  9b351200  slli r11, r4, 1
000e28  ab3d0100  lui r27, 19
000e2c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000e30  1f030000  addli r6, zero, 0
000e34  9b441d00  srli r9, r26, 1
000e38  1f7a7000  addli r20, zero, 63
000e3c  9f0b0005  addli r23, zero, 640
000e40  1f054000  addli r10, zero, 32
000e44  1f0b0003  addli r22, zero, 384
000e48  670c2fd4  storeli.w r2, -5440(r30)
000e4c  0b910511  add.s r2, r11, r16
000e50  9f8d0df0  addli r27, r27, -2048
000e54  8b901120  mul.s r1, r3, r1
000e58  67041fd6  storeli.w r1, -5312(r30)
000e5c  9bb02000  slli r1, r1, 2
000e60  0b965010  add.s r12, r1, r5
000e64  8b967010  add.s r13, r1, r7
000e68  9b302200  slli r1, r4, 2
000e6c  ab320100  lui r5, 19
000e70  8b900011  add.s r1, r1, r16
000e74  9f8202f4  addli r5, r5, -1536
000e78  9f8080ff  addli r1, r1, -64
000e7c  67081fd4  storeli.w r1, -5504(r30)
000e80  9f0081ff  addli r1, r2, -64
000e84  1f010fd4  addli r2, r30, -5632
000e88  67041fd4  storeli.w r1, -5568(r30)
000e8c  abf0ffff  lui r1, 1048575
000e90  00a00000  mfence { lm }
000e94  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000e98  63411f00  loadli.w r2,  12(r30)
000e9c  9b9000f8  ori r1, r1, 3968
000ea0  e74f1fd2  storeli.w r1, -5636(r30)
000ea4  abf00000  lui r1, 15
000ea8  1b9ef0ff  ori r28, r1, 4095
000eac  5b040000  j 32
000eb0  00a00300  mfence { lm, sm, gm }
000eb4  80210e04  csr_set csr3, r28
000eb8  00d00100  sync_group
000ebc  63411f00  loadli.w r2,  12(r30)
000ec0  0b138310  add.s r6, r6, r8
000ec4  3f202300  blt.s r6, r2, 8
000ec8  dba3ffff  j -740
000ecc  8b109310  add.s r1, r6, r9
000ed0  cb0f11fe  ble.s r2, r1, -32
000ed4  63011f00  loadli.w r2,  8(r30)
000ed8  e3018fd6  loadli.w r3,  -5312(r30)
000edc  8b902010  add.s r1, r1, r2
000ee0  0b018330  div.u r2, r6, r8
000ee4  9bb0b000  slli r1, r1, 11
000ee8  97903000  or r1, r1, r3
000eec  9f110000  addli r3, zero, 1
000ef0  b3980028  sext_int2long r[18:19], r1
000ef4  ab0000f0  lui r1, 983040
000ef8  1b316100  slli r2, r2, 6
000efc  97b83802  sll.d r[18:19], r[18:19], r3
000f00  9f017fd6  addli r3, r30, -5320
000f04  97901500  or r1, r11, r1
000f08  1b010104  andi r2, r2, 64
000f0c  6bdc0100  load.d r[25:26], 0(r3)
000f10  1711a101  or r2, r2, r26
000f14  0b2c1c11  add.ul r[25:26], r[25:26], r[18:19]
000f18  ff200c01  l_gm2lm r1, r16, 0(r[25:26])
000f1c  00a00200  mfence { lm, gm }
000f20  e3008fd4  loadli.w r1,  -5568(r30)
000f24  e3010fd5  loadli.w r3,  -5504(r30)
000f28  e3038fd5  loadli.w r7,  -5440(r30)
000f2c  c2800002  vload.mz vr1{mr1}, 0(r1)
000f30  9f83c3ff  addli r7, r7, -32
000f34  9f8981ff  addli r19, r3, -64
000f38  9f8080ff  addli r1, r1, -64
000f3c  13077a04  setlt.u r14, r20, r7
000f40  06f10000  vfp162float_h.rn vr2, vr1
000f44  86b00000  vfp162float_l.rn vr1, vr1
000f48  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
000f4c  9f8101ff  addli r3, r3, -128
000f50  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
000f54  3b6f07fe  bneq r14, zero, -40
000f58  00a00000  mfence { lm }
000f5c  e3000fd7  loadli.w r1,  -5248(r30)
000f60  3bc60000  bneq r1, zero, 400
000f64  9f000fd4  addli r1, r30, -5632
000f68  6347ffd3  loadli.w r14,  -5636(r30)
000f6c  9f010000  addli r3, zero, 0
000f70  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000f74  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000f78  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000f7c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000f80  8b90f110  add.s r1, r3, r15
000f84  8b133810  add.s r7, r16, r3
000f88  1f070701  addli r14, r14, 128
000f8c  9f810104  addli r3, r3, 512
000f90  9f890001  addli r19, r1, 128
000f94  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
000f98  9f8a8000  addli r21, r1, 64
000f9c  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
000fa0  1f8c8301  addli r24, r7, 192
000fa4  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
000fa8  9f898001  addli r19, r1, 192
000fac  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
000fb0  9f8a8300  addli r21, r7, 64
000fb4  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
000fb8  ca930902  vloads_mask16.mz vr7{mr1}, 0(r19)
000fbc  9f890301  addli r19, r7, 128
000fc0  42950a02  vload_mask16.mz vr10{mr1}, 0(r21)
000fc4  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
000fc8  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
000fcc  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
000fd0  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
000fd4  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
000fd8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000fdc  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
000fe0  46908902  vstore_mask16.mz vr8{mr1}, 0(r19)
000fe4  9f890002  addli r19, r1, 256
000fe8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000fec  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
000ff0  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000ff4  46905a02  vstore_mask16.mz vr5{mr1}, 0(r21)
000ff8  4a900902  vloads_mask16.mz vr0{mr1}, 0(r19)
000ffc  9f898002  addli r19, r1, 320
001000  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
001004  1f8c0302  addli r24, r7, 256
001008  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00100c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
001010  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001014  4a930902  vloads_mask16.mz vr6{mr1}, 0(r19)
001018  9f890003  addli r19, r1, 384
00101c  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
001020  9f808003  addli r1, r1, 448
001024  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001028  4a940902  vloads_mask16.mz vr8{mr1}, 0(r19)
00102c  9f898302  addli r19, r7, 320
001030  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
001034  9f800303  addli r1, r7, 384
001038  9f838303  addli r7, r7, 448
00103c  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
001040  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001044  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001048  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00104c  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001050  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001054  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001058  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
00105c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001060  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
001064  93097705  setlt.u r19, r14, r23
001068  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00106c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001070  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001074  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001078  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00107c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001080  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001084  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001088  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00108c  bbdb09fe  bneq r19, zero, -268
001090  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001094  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001098  9f000002  addli r1, zero, 256
00109c  6af100c0  vsrl.p vr2, r1, vr0
0010a0  eaf110c0  vsrl.p vr3, r1, vr1
0010a4  9f000001  addli r1, zero, 128
0010a8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010ac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010b0  6af100c0  vsrl.p vr2, r1, vr0
0010b4  eaf110c0  vsrl.p vr3, r1, vr1
0010b8  9f008000  addli r1, zero, 64
0010bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010c4  6af100c0  vsrl.p vr2, r1, vr0
0010c8  eaf110c0  vsrl.p vr3, r1, vr1
0010cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010d4  6a7105c0  vsrl.p vr2, r10, vr0
0010d8  ea7115c0  vsrl.p vr3, r10, vr1
0010dc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010e0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010e4  fa100040  vextracti.f r1, 0(vr0)
0010e8  fa930040  vextracti.f r7, 0(vr1)
0010ec  db650000  j 812
0010f0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0010f4  abf0ffff  lui r1, 1048575
0010f8  9f010000  addli r3, zero, 0
0010fc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001100  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001104  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001108  1b9700f8  ori r14, r1, 3968
00110c  8b933710  add.s r7, r15, r3
001110  8b193810  add.s r19, r16, r3
001114  1f070701  addli r14, r14, 128
001118  9f810104  addli r3, r3, 512
00111c  1f8c0331  addli r24, r7, 6272
001120  9f800330  addli r1, r7, 6144
001124  9f8c8331  addli r25, r7, 6336
001128  9f8a0918  addli r21, r19, 3072
00112c  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
001130  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
001134  9f808330  addli r1, r7, 6208
001138  ca940c02  vloads_mask16.mz vr9{mr1}, 0(r25)
00113c  1f8c0919  addli r24, r19, 3200
001140  42930a02  vload_mask16.mz vr6{mr1}, 0(r21)
001144  9f8c8919  addli r25, r19, 3264
001148  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
00114c  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
001150  9f808918  addli r1, r19, 3136
001154  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
001158  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
00115c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001160  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
001164  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
001168  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
00116c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001170  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
001174  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
001178  9f8a0332  addli r21, r7, 6400
00117c  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
001180  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
001184  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001188  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
00118c  1f8c091a  addli r24, r19, 3328
001190  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
001194  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001198  9f80091b  addli r1, r19, 3456
00119c  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0011a0  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0011a4  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
0011a8  9f8a8332  addli r21, r7, 6464
0011ac  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0011b0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0011b4  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
0011b8  9f8a0333  addli r21, r7, 6528
0011bc  9f838333  addli r7, r7, 6592
0011c0  4a940a02  vloads_mask16.mz vr8{mr1}, 0(r21)
0011c4  9f8a891a  addli r21, r19, 3392
0011c8  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
0011cc  9f83891b  addli r7, r19, 3520
0011d0  93096705  setlt.u r19, r14, r22
0011d4  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
0011d8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0011dc  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0011e0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0011e4  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0011e8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0011ec  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0011f0  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
0011f4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0011f8  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
0011fc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001200  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001204  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001208  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00120c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001210  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001214  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001218  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00121c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001220  bbbb09fe  bneq r19, zero, -276
001224  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001228  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00122c  9f000002  addli r1, zero, 256
001230  9f0a0000  addli r21, zero, 0
001234  eaf110c0  vsrl.p vr3, r1, vr1
001238  6af100c0  vsrl.p vr2, r1, vr0
00123c  9f000001  addli r1, zero, 128
001240  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001244  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001248  eaf110c0  vsrl.p vr3, r1, vr1
00124c  6af100c0  vsrl.p vr2, r1, vr0
001250  9f008000  addli r1, zero, 64
001254  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001258  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00125c  eaf110c0  vsrl.p vr3, r1, vr1
001260  6af100c0  vsrl.p vr2, r1, vr0
001264  abf0ffff  lui r1, 1048575
001268  9b9900f8  ori r19, r1, 3968
00126c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001270  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001274  ea7115c0  vsrl.p vr3, r10, vr1
001278  6a7105c0  vsrl.p vr2, r10, vr0
00127c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001280  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001284  7a970040  vextracti.f r14, 0(vr1)
001288  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00128c  fa110040  vextracti.f r3, 0(vr0)
001290  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001294  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001298  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00129c  8b905711  add.s r1, r15, r21
0012a0  8b135811  add.s r7, r16, r21
0012a4  9f890901  addli r19, r19, 128
0012a8  9f8a0a04  addli r21, r21, 512
0012ac  1f8c0018  addli r24, r1, 3072
0012b0  9f8c0019  addli r25, r1, 3200
0012b4  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
0012b8  1f8d8301  addli r26, r7, 192
0012bc  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
0012c0  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
0012c4  1f8c8018  addli r24, r1, 3136
0012c8  9f8c8019  addli r25, r1, 3264
0012cc  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
0012d0  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0012d4  1f8c0301  addli r24, r7, 128
0012d8  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
0012dc  9f8c8300  addli r25, r7, 64
0012e0  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
0012e4  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
0012e8  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0012ec  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0012f0  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0012f4  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0012f8  46108c02  vstore_mask16.mz vr8{mr1}, 0(r24)
0012fc  1f8c001a  addli r24, r1, 3328
001300  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
001304  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001308  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00130c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
001310  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
001314  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
001318  1f8c801a  addli r24, r1, 3392
00131c  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
001320  1f8d0302  addli r26, r7, 256
001324  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
001328  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00132c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001330  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
001334  1f8c001b  addli r24, r1, 3456
001338  c2130d02  vload_mask16.mz vr7{mr1}, 0(r26)
00133c  9f80801b  addli r1, r1, 3520
001340  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001344  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001348  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
00134c  1f8c8302  addli r24, r7, 320
001350  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
001354  9f800303  addli r1, r7, 384
001358  9f838303  addli r7, r7, 448
00135c  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
001360  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001364  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001368  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00136c  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001370  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001374  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001378  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
00137c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001380  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
001384  138c7905  setlt.u r24, r19, r23
001388  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00138c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001390  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001394  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001398  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00139c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0013a0  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
0013a4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0013a8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0013ac  bb4b0cfe  bneq r24, zero, -272
0013b0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0013b4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0013b8  9f000002  addli r1, zero, 256
0013bc  003d0002  core_id r26
0013c0  6af100c0  vsrl.p vr2, r1, vr0
0013c4  eaf110c0  vsrl.p vr3, r1, vr1
0013c8  9f000001  addli r1, zero, 128
0013cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013d4  6af100c0  vsrl.p vr2, r1, vr0
0013d8  eaf110c0  vsrl.p vr3, r1, vr1
0013dc  9f008000  addli r1, zero, 64
0013e0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013e4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013e8  6af100c0  vsrl.p vr2, r1, vr0
0013ec  eaf110c0  vsrl.p vr3, r1, vr1
0013f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013f4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013f8  6a7105c0  vsrl.p vr2, r10, vr0
0013fc  ea7115c0  vsrl.p vr3, r10, vr1
001400  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001404  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001408  fa100040  vextracti.f r1, 0(vr0)
00140c  fa930040  vextracti.f r7, 0(vr1)
001410  8be01110  add.f.rn r1, r3, r1
001414  8b637710  add.f.rn r7, r14, r7
001418  9b392100  slli r19, r2, 2
00141c  9f010000  addli r3, zero, 0
001420  1f070000  addli r14, zero, 0
001424  8b9ab911  add.s r21, r19, r27
001428  0b9c5910  add.s r24, r19, r5
00142c  73e01a00  stores.w r1, 0(r21)
001430  9b00e107  andi r1, r2, 126
001434  1b914900  ori r2, r19, 4
001438  73607c00  stores.w r7, 0(r24)
00143c  00a00300  mfence { lm, sm, gm }
001440  80210e04  csr_set csr3, r28
001444  00d00100  sync_group
001448  9bb02000  slli r1, r1, 2
00144c  8b13b111  add.s r7, r2, r27
001450  0b115110  add.s r2, r2, r5
001454  8b99b011  add.s r19, r1, r27
001458  efc30300  loads.w r7, 0(r7)
00145c  8b905010  add.s r1, r1, r5
001460  6f410100  loads.w r2, 0(r2)
001464  efc90900  loads.w r19, 0(r19)
001468  efc00000  loads.w r1, 0(r1)
00146c  8be33311  add.f.rn r7, r7, r19
001470  ab09003a  lui r19, 237568
001474  8b601110  add.f.rn r1, r2, r1
001478  0be13321  mul.f.rn r2, r7, r19
00147c  8be03021  mul.f.rn r1, r1, r19
001480  8b632120  mul.f.rn r7, r2, r2
001484  0b610158  neg.f r2, r2
001488  8be07018  sub.f.rn r1, r1, r7
00148c  e3033f00  loadli.w r7,  24(r30)
001490  8be07010  add.f.rn r1, r1, r7
001494  ab03803f  lui r7, 260096
001498  8f800008  sqrt.f.rn r1, r1
00149c  8f801318  div.f.rn r1, r7, r1
0014a0  9f030000  addli r7, zero, 0
0014a4  8b19e810  add.s r19, r16, r14
0014a8  8b1ae610  add.s r21, r12, r14
0014ac  0b9ce610  add.s r24, r13, r14
0014b0  9f834300  addli r7, r7, 32
0014b4  1f070701  addli r14, r14, 128
0014b8  42900902  vload_mask16.mz vr0{mr1}, 0(r19)
0014bc  9f8c8900  addli r25, r19, 64
0014c0  9f898a00  addli r19, r21, 64
0014c4  4a910a02  vloads_mask16.mz vr2{mr1}, 0(r21)
0014c8  4a120c02  vloads_mask16.mz vr4{mr1}, 0(r24)
0014cc  8b1a3810  add.s r21, r16, r3
0014d0  9f818100  addli r3, r3, 64
0014d4  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
0014d8  9f098c00  addli r19, r24, 64
0014dc  c2900c02  vload_mask16.mz vr1{mr1}, 0(r25)
0014e0  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
0014e4  93894304  setlt.u r19, r7, r4
0014e8  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
0014ec  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0014f0  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
0014f4  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0014f8  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
0014fc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001500  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
001504  06100200  vfloat2fp16_l.rn vr0, vr4
001508  06d00200  vfloat2fp16_h.rn vr0, vr5
00150c  46800a02  vstore.mz vr0{mr1}, 0(r21)
001510  3bde09fe  bneq r19, zero, -108
001514  6b510f00  load.d r[3:4], 0(r30)
001518  ab0000f0  lui r1, 983040
00151c  00a00000  mfence { lm }
001520  97901500  or r1, r11, r1
001524  0b211111  add.ul r[3:4], r[3:4], r[18:19]
001528  ff300101  s_lm2gm r1, r16, 0(r[3:4])
00152c  00a00200  mfence { lm, gm }
001530  db31ffff  j -1652
001534  e3403f00  loadli.w r1,  28(r30)
001538  37fe0012  beq r1, zero, 10140
00153c  803b0002  core_id r23
001540  63012f00  loadli.w r2,  16(r30)
001544  805c0102  load_param_i r25, 2
001548  9bb05b00  slli r1, r23, 5
00154c  4b431100  ble.s r2, r1, 208
001550  2b960000  lui r12, 9
001554  9f110000  addli r3, zero, 1
001558  1f058fd7  addli r10, r30, -5184
00155c  9f058000  addli r11, zero, 64
001560  1bb15c00  slli r2, r25, 5
001564  9f860000  addli r13, r1, 0
001568  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00156c  1f0606f0  addli r12, r12, -2048
001570  33880628  zext_int2long r[17:18], r13
001574  2b0900f0  lui r18, 983040
001578  17383802  sll.d r[17:18], r[17:18], r3
00157c  17992501  or r18, r11, r18
001580  0b280211  add.ul r[17:18], r[5:6], r[17:18]
001584  7f29a800  l_gm2lm r18, r10, 0(r[17:18])
001588  1bb82600  slli r16, r13, 2
00158c  8b16d110  add.s r13, r2, r13
001590  00a00200  mfence { lm, gm }
001594  c2000502  vload.mz vr1{mr1}, 0(r10)
001598  0b18c810  add.s r16, r16, r12
00159c  9f088800  addli r17, r16, 64
0015a0  66411080  vmerge_l.hf vr2, vr0, vr1
0015a4  e64010a0  vmerge_h.hf vr1, vr0, vr1
0015a8  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
0015ac  4e901802  vstores_mask16.mz vr1{mr1}, 0(r17)
0015b0  3f8ff6fe  blt.s r13, r15, -64
0015b4  2ba20000  lui r4, 10
0015b8  9bb17b00  slli r3, r23, 7
0015bc  9f120000  addli r5, zero, 1
0015c0  1f058fd7  addli r10, r30, -5184
0015c4  9f058000  addli r11, zero, 64
0015c8  1f860000  addli r12, r1, 0
0015cc  00a00000  mfence { lm }
0015d0  1f0202f0  addli r4, r4, -2048
0015d4  8b914110  add.s r3, r3, r4
0015d8  1bb27c00  slli r4, r25, 7
0015dc  33080628  zext_int2long r[17:18], r12
0015e0  ab0600f0  lui r13, 983040
0015e4  0b162610  add.s r12, r12, r2
0015e8  17385802  sll.d r[17:18], r[17:18], r5
0015ec  9796d500  or r13, r11, r13
0015f0  0b280311  add.ul r[17:18], r[7:8], r[17:18]
0015f4  ff26a800  l_gm2lm r13, r10, 0(r[17:18])
0015f8  9f868100  addli r13, r3, 64
0015fc  00a00200  mfence { lm, gm }
001600  c2000502  vload.mz vr1{mr1}, 0(r10)
001604  66411080  vmerge_l.hf vr2, vr0, vr1
001608  e64010a0  vmerge_h.hf vr1, vr0, vr1
00160c  4e902102  vstores_mask16.mz vr2{mr1}, 0(r3)
001610  8b914110  add.s r3, r3, r4
001614  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
001618  3f1ff6fe  blt.s r12, r15, -60
00161c  63012f00  loadli.w r2,  16(r30)
001620  cb211100  ble.s r2, r1, 104
001624  2bb30000  lui r6, 11
001628  1f110000  addli r2, zero, 1
00162c  9f018fd7  addli r3, r30, -5184
001630  1f028000  addli r4, zero, 64
001634  9bb25c00  slli r5, r25, 5
001638  00a00000  mfence { lm }
00163c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001640  1f0303f0  addli r6, r6, -2048
001644  33850028  zext_int2long r[11:12], r1
001648  ab0300f0  lui r7, 983040
00164c  17352502  sll.d r[11:12], r[11:12], r2
001650  97137200  or r7, r4, r7
001654  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001658  ff233500  l_gm2lm r7, r3, 0(r[11:12])
00165c  9bb32000  slli r7, r1, 2
001660  8b901210  add.s r1, r5, r1
001664  00a00200  mfence { lm, gm }
001668  c2800102  vload.mz vr1{mr1}, 0(r3)
00166c  8b936310  add.s r7, r7, r6
001670  1f858300  addli r10, r7, 64
001674  66411080  vmerge_l.hf vr2, vr0, vr1
001678  e64010a0  vmerge_h.hf vr1, vr0, vr1
00167c  4e902302  vstores_mask16.mz vr2{mr1}, 0(r7)
001680  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001684  3f8ff0fe  blt.s r1, r15, -64
001688  abf00000  lui r1, 15
00168c  63411f00  loadli.w r2,  12(r30)
001690  00a00300  mfence { lm, sm, gm }
001694  9b90f0ff  ori r1, r1, 4095
001698  80a10004  csr_set csr3, r1
00169c  00d00100  sync_group
0016a0  4b527127  ble.s r2, r23, 19604
0016a4  e3002f00  loadli.w r1,  16(r30)
0016a8  63412f00  loadli.w r2,  20(r30)
0016ac  1f048fd7  addli r8, r30, -5184
0016b0  9f150000  addli r11, zero, 1
0016b4  1f064000  addli r12, zero, 32
0016b8  1f757000  addli r10, zero, 63
0016bc  9f080002  addli r17, zero, 256
0016c0  9f040001  addli r9, zero, 128
0016c4  1f0a8000  addli r20, zero, 64
0016c8  ab0a803f  lui r21, 260096
0016cc  2bed7f00  lui r26, 2046
0016d0  2bee0700  lui r28, 126
0016d4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0016d8  8b912010  add.s r3, r1, r2
0016dc  33820008  fix2float.rn r4, r1
0016e0  1bb31000  slli r6, r1, 1
0016e4  9bb22000  slli r5, r1, 2
0016e8  9f804000  addli r1, r1, 32
0016ec  9b392100  slli r19, r2, 2
0016f0  e70f1fd2  storeli.w r1, -5640(r30)
0016f4  8b908210  add.s r1, r5, r8
0016f8  9ff1f1ff  addli r3, r3, -1
0016fc  e74f4fd2  storeli.w r4, -5636(r30)
001700  0b922130  div.s r4, r3, r2
001704  9f8080ff  addli r1, r1, -64
001708  8b118310  add.s r3, r6, r8
00170c  674f1fd2  storeli.w r1, -5644(r30)
001710  9f8081ff  addli r1, r3, -64
001714  670f1fd2  storeli.w r1, -5648(r30)
001718  abf0ffff  lui r1, 1048575
00171c  00a00000  mfence { lm }
001720  67049fd5  storeli.w r25, -5568(r30)
001724  67006fd4  storeli.w r6, -5632(r30)
001728  9b90f0ff  ori r1, r1, 4095
00172c  67041fd6  storeli.w r1, -5312(r30)
001730  ab700000  lui r1, 7
001734  1b9cf0ff  ori r24, r1, 4095
001738  ab00ff03  lui r1, 16368
00173c  1b9bf03f  ori r22, r1, 1023
001740  abf000fc  lui r1, 1032207
001744  9b9300c0  ori r7, r1, 3072
001748  9f000fd7  addli r1, r30, -5248
00174c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001750  db090000  j 76
001754  1f040fd5  addli r8, r30, -5504
001758  6b510f00  load.d r[3:4], 0(r30)
00175c  ab0000f0  lui r1, 983040
001760  1f757000  addli r10, zero, 63
001764  eb520400  load.d r[6:7], 0(r8)
001768  1f048fd7  addli r8, r30, -5184
00176c  0b215110  add.ul r[3:4], r[3:4], r[6:7]
001770  63030fd4  loadli.w r6,  -5632(r30)
001774  00a00000  mfence { lm }
001778  e30b8fd5  loadli.w r23,  -5440(r30)
00177c  e30c8fd4  loadli.w r25,  -5568(r30)
001780  97101300  or r1, r6, r1
001784  8b9b7c11  add.s r23, r25, r23
001788  ff308100  s_lm2gm r1, r8, 0(r[3:4])
00178c  00a00200  mfence { lm, gm }
001790  e3401f00  loadli.w r1,  12(r30)
001794  3fa01b00  blt.s r23, r1, 8
001798  db730900  j 19356
00179c  e3001f00  loadli.w r1,  8(r30)
0017a0  9f027fd6  addli r5, r30, -5320
0017a4  9f860900  addli r13, r19, 0
0017a8  8b901b10  add.s r1, r23, r1
0017ac  8b90f020  mul.s r1, r1, r15
0017b0  b3900028  sext_int2long r[2:3], r1
0017b4  17b9b002  sll.d r[19:20], r[2:3], r11
0017b8  6bd10200  load.d r[3:4], 0(r5)
0017bc  ab0000f0  lui r1, 983040
0017c0  9f020fd5  addli r5, r30, -5504
0017c4  97101300  or r1, r6, r1
0017c8  73b02201  store.d r[19:20], 0(r5)
0017cc  0b212111  add.ul r[3:4], r[3:4], r[19:20]
0017d0  ff208100  l_gm2lm r1, r8, 0(r[3:4])
0017d4  00a00200  mfence { lm, gm }
0017d8  bff0c700  blt.s r15, r12, 60
0017dc  e300efd3  loadli.w r1,  -5648(r30)
0017e0  6341efd3  loadli.w r2,  -5644(r30)
0017e4  e301ffd3  loadli.w r3,  -5640(r30)
0017e8  c2800002  vload.mz vr1{mr1}, 0(r1)
0017ec  9f81c1ff  addli r3, r3, -32
0017f0  1f0481ff  addli r8, r2, -64
0017f4  9f8080ff  addli r1, r1, -64
0017f8  93023504  setlt.u r5, r10, r3
0017fc  664110a0  vmerge_h.hf vr2, vr0, vr1
001800  e6401080  vmerge_l.hf vr1, vr0, vr1
001804  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
001808  1f0101ff  addli r2, r2, -128
00180c  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
001810  3bef02fe  bneq r5, zero, -40
001814  670c7fd5  storeli.w r23, -5440(r30)
001818  00a00000  mfence { lm }
00181c  bf67b200  blt.s r4, r11, 504
001820  1f050000  addli r10, zero, 0
001824  9f020000  addli r5, zero, 0
001828  1f040000  addli r8, zero, 0
00182c  9f890600  addli r19, r13, 0
001830  db0d0000  j 108
001834  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001838  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00183c  1f140400  addli r8, r8, 1
001840  6af108c0  vsrl.p vr2, r17, vr0
001844  eaf118c0  vsrl.p vr3, r17, vr1
001848  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00184c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001850  6af104c0  vsrl.p vr2, r9, vr0
001854  eaf114c0  vsrl.p vr3, r9, vr1
001858  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00185c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001860  6a710ac0  vsrl.p vr2, r20, vr0
001864  ea711ac0  vsrl.p vr3, r20, vr1
001868  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00186c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001870  6a7106c0  vsrl.p vr2, r12, vr0
001874  ea7116c0  vsrl.p vr3, r12, vr1
001878  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00187c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001880  fa100040  vextracti.f r1, 0(vr0)
001884  7a910040  vextracti.f r2, 0(vr1)
001888  0b651510  add.f.rn r10, r10, r1
00188c  9f000fd7  addli r1, r30, -5248
001890  8be22210  add.f.rn r5, r5, r2
001894  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001898  37264400  beq r8, r4, 392
00189c  9f000400  addli r1, r8, 0
0018a0  37401701  beq r14, r17, 16
0018a4  e3008fd6  loadli.w r1,  -5312(r30)
0018a8  97201400  xor r1, r8, r1
0018ac  8b101210  add.s r1, r4, r1
0018b0  0b91e020  mul.s r2, r1, r14
0018b4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0018b8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0018bc  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0018c0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0018c4  0b912718  sub.s r2, r15, r2
0018c8  0b11e140  min.s r2, r2, r14
0018cc  bf2db1fe  blt.s r2, r11, -152
0018d0  1f030fd7  addli r6, r30, -5248
0018d4  ab960000  lui r13, 9
0018d8  9f010000  addli r3, zero, 0
0018dc  8b901920  mul.s r1, r19, r1
0018e0  1f098fd7  addli r18, r30, -5184
0018e4  42120302  vload_mask16.mz vr4{mr1}, 0(r6)
0018e8  9f8606f0  addli r13, r13, -2048
0018ec  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0018f0  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0018f4  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0018f8  8b9b1610  add.s r23, r13, r1
0018fc  0b181910  add.s r16, r18, r1
001900  9f8c8b00  addli r25, r23, 64
001904  ca920b02  vloads_mask16.mz vr5{mr1}, 0(r23)
001908  9f8d8b01  addli r27, r23, 192
00190c  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
001910  1f038801  addli r6, r16, 192
001914  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
001918  9f8c0b01  addli r25, r23, 128
00191c  4a940d02  vloads_mask16.mz vr8{mr1}, 0(r27)
001920  9f0d0801  addli r27, r16, 128
001924  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
001928  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
00192c  c2950d02  vload_mask16.mz vr11{mr1}, 0(r27)
001930  9f0c8800  addli r25, r16, 64
001934  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
001938  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00193c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001940  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001944  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001948  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00194c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001950  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
001954  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
001958  9f8c8100  addli r25, r3, 64
00195c  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
001960  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001964  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001968  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
00196c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001970  46907d02  vstore_mask16.mz vr7{mr1}, 0(r27)
001974  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001978  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00197c  cb6a91ff  ble.s r2, r25, -328
001980  9f8c0b02  addli r25, r23, 256
001984  9f8d8b02  addli r27, r23, 320
001988  1f030802  addli r6, r16, 256
00198c  9f810101  addli r3, r3, 128
001990  9f860604  addli r13, r13, 512
001994  1f090904  addli r18, r18, 512
001998  4a900c02  vloads_mask16.mz vr0{mr1}, 0(r25)
00199c  9f8c0b03  addli r25, r23, 384
0019a0  9f8b8b03  addli r23, r23, 448
0019a4  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
0019a8  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
0019ac  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
0019b0  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
0019b4  9f0b0803  addli r23, r16, 384
0019b8  9f0c8802  addli r25, r16, 320
0019bc  1f088803  addli r16, r16, 448
0019c0  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
0019c4  c2940c02  vload_mask16.mz vr9{mr1}, 0(r25)
0019c8  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0019cc  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
0019d0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0019d4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0019d8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0019dc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0019e0  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
0019e4  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
0019e8  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0019ec  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0019f0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0019f4  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
0019f8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0019fc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001a00  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001a04  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001a08  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
001a0c  bfbb21fe  blt.s r3, r2, -276
001a10  dbc4ffff  j -476
001a14  9f020000  addli r5, zero, 0
001a18  1f050000  addli r10, zero, 0
001a1c  9f890600  addli r19, r13, 0
001a20  1f032000  addli r6, zero, 16
001a24  9f3b0000  addli r23, zero, 3
001a28  9f5c1000  addli r25, zero, 13
001a2c  9f2d1000  addli r27, zero, 10
001a30  00a00000  mfence { lm }
001a34  bf84b7fe  blt.s r15, r11, -736
001a38  6341ffd3  loadli.w r2,  -5636(r30)
001a3c  abb60000  lui r13, 11
001a40  9f000000  addli r1, zero, 0
001a44  1f048fd7  addli r8, r30, -5184
001a48  9f8606f0  addli r13, r13, -2048
001a4c  8f012518  div.f.rn r3, r10, r2
001a50  0f812218  div.f.rn r2, r5, r2
001a54  2ba50000  lui r10, 10
001a58  1f0505f0  addli r10, r10, -2048
001a5c  8be23120  mul.f.rn r5, r3, r3
001a60  8be10158  neg.f r3, r3
001a64  0b615118  sub.f.rn r2, r2, r5
001a68  e3023f00  loadli.w r5,  24(r30)
001a6c  0b615110  add.f.rn r2, r2, r5
001a70  9f028fd7  addli r5, r30, -5184
001a74  0f010108  sqrt.f.rn r2, r2
001a78  0f812a18  div.f.rn r2, r21, r2
001a7c  1f088400  addli r16, r8, 64
001a80  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
001a84  1f898600  addli r18, r13, 64
001a88  4a920602  vloads_mask16.mz vr4{mr1}, 0(r13)
001a8c  ca110502  vloads_mask16.mz vr3{mr1}, 0(r10)
001a90  9f804000  addli r1, r1, 32
001a94  9f860601  addli r13, r13, 128
001a98  1f040401  addli r8, r8, 128
001a9c  42110802  vload_mask16.mz vr2{mr1}, 0(r16)
001aa0  1f088500  addli r16, r10, 64
001aa4  4a130902  vloads_mask16.mz vr6{mr1}, 0(r18)
001aa8  1f050501  addli r10, r10, 128
001aac  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
001ab0  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001ab4  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
001ab8  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
001abc  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
001ac0  26923002  vmac.f.mz.rn vr4{mr1}, vr1, vr3
001ac4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001ac8  ea211322  vor.u.mz vr3{mr1}, r6, vr1
001acc  26135102  vmac.f.mz.rn vr6{mr1}, vr2, vr5
001ad0  eaa21b22  vor.u.mz vr5{mr1}, r23, vr1
001ad4  6eb141c2  vsrl.s.mz vr2{mr1}, vr3, vr4
001ad8  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
001adc  6ab12502  vand.s.mz vr2{mr1}, r11, vr2
001ae0  eab13502  vand.s.mz vr3{mr1}, r11, vr3
001ae4  16312202  vadd.s.mz vr2{mr1}, vr4, vr2
001ae8  6aa21c22  vor.u.mz vr4{mr1}, r25, vr1
001aec  eaa01d22  vor.u.mz vr1{mr1}, r27, vr1
001af0  96313302  vadd.s.mz vr3{mr1}, vr6, vr3
001af4  12312c02  vadd.s.mz vr2{mr1}, r24, vr2
001af8  92313c02  vadd.s.mz vr3{mr1}, r24, vr3
001afc  6e3322c2  vsrl.s.mz vr6{mr1}, vr4, vr2
001b00  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
001b04  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
001b08  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
001b0c  ea326e02  vand.s.mz vr5{mr1}, r28, vr6
001b10  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
001b14  6a324e02  vand.s.mz vr4{mr1}, r28, vr4
001b18  ea313d02  vand.s.mz vr3{mr1}, r26, vr3
001b1c  6ab12a22  vor.s.mz vr2{mr1}, r21, vr2
001b20  eab25a22  vor.s.mz vr5{mr1}, r21, vr5
001b24  6ab24a22  vor.s.mz vr4{mr1}, r21, vr4
001b28  eab13a22  vor.s.mz vr3{mr1}, r21, vr3
001b2c  06110120  vfloat2fp16_l.rz vr2, vr2
001b30  06520220  vfloat2fp16_h.rz vr4, vr4
001b34  06d10120  vfloat2fp16_h.rz vr2, vr3
001b38  06920220  vfloat2fp16_l.rz vr4, vr5
001b3c  6a312b02  vand.s.mz vr2{mr1}, r22, vr2
001b40  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
001b44  eab01302  vand.s.mz vr1{mr1}, r7, vr1
001b48  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
001b4c  46801202  vstore.mz vr1{mr1}, 0(r5)
001b50  9f828200  addli r5, r5, 64
001b54  bfacf0fe  blt.s r1, r15, -216
001b58  db7fffff  j -1028
001b5c  e3403f00  loadli.w r1,  28(r30)
001b60  b7f70016  beq r1, zero, 11772
001b64  80300002  core_id r1
001b68  e3012f00  loadli.w r3,  16(r30)
001b6c  1bb15000  slli r2, r1, 5
001b70  4bc32100  ble.s r3, r2, 208
001b74  2b580100  lui r16, 21
001b78  00550102  load_param_i r10, 2
001b7c  9f150000  addli r11, zero, 1
001b80  1f068fd7  addli r12, r30, -5184
001b84  9f068000  addli r13, zero, 64
001b88  9f080100  addli r17, r2, 0
001b8c  9b315500  slli r3, r10, 5
001b90  1f080800  addli r16, r16, 0
001b94  33890828  zext_int2long r[19:20], r17
001b98  2b0a00f0  lui r20, 983040
001b9c  1739b902  sll.d r[19:20], r[19:20], r11
001ba0  179a4601  or r20, r13, r20
001ba4  0b292211  add.ul r[19:20], r[5:6], r[19:20]
001ba8  7f2ac900  l_gm2lm r20, r12, 0(r[19:20])
001bac  1bb92800  slli r18, r17, 2
001bb0  8b981111  add.s r17, r3, r17
001bb4  00a00200  mfence { lm, gm }
001bb8  42000602  vload.mz vr0{mr1}, 0(r12)
001bbc  0b190911  add.s r18, r18, r16
001bc0  9f098900  addli r19, r18, 64
001bc4  86300000  vfp162float_l.rn vr1, vr0
001bc8  06700000  vfp162float_h.rn vr0, vr0
001bcc  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
001bd0  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
001bd4  3f8ff8fe  blt.s r17, r15, -64
001bd8  ab620100  lui r5, 22
001bdc  1bb27000  slli r4, r1, 7
001be0  9f058fd7  addli r11, r30, -5184
001be4  1f068000  addli r12, zero, 64
001be8  9f060100  addli r13, r2, 0
001bec  00a00000  mfence { lm }
001bf0  9f820200  addli r5, r5, 0
001bf4  0b125210  add.s r4, r4, r5
001bf8  9b327500  slli r5, r10, 7
001bfc  1f150000  addli r10, zero, 1
001c00  33880628  zext_int2long r[17:18], r13
001c04  2b0900f0  lui r18, 983040
001c08  8b963610  add.s r13, r13, r3
001c0c  1738a802  sll.d r[17:18], r[17:18], r10
001c10  17192601  or r18, r12, r18
001c14  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001c18  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
001c1c  1f088200  addli r16, r4, 64
001c20  00a00200  mfence { lm, gm }
001c24  42800502  vload.mz vr0{mr1}, 0(r11)
001c28  86300000  vfp162float_l.rn vr1, vr0
001c2c  06700000  vfp162float_h.rn vr0, vr0
001c30  4e101202  vstores_mask16.mz vr1{mr1}, 0(r4)
001c34  0b125210  add.s r4, r4, r5
001c38  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
001c3c  3f9ff6fe  blt.s r13, r15, -60
001c40  e3012f00  loadli.w r3,  16(r30)
001c44  cba12100  ble.s r3, r2, 104
001c48  00530102  load_param_i r6, 2
001c4c  ab730100  lui r7, 23
001c50  9f110000  addli r3, zero, 1
001c54  1f028fd7  addli r4, r30, -5184
001c58  9f028000  addli r5, zero, 64
001c5c  00a00000  mfence { lm }
001c60  1b335300  slli r6, r6, 5
001c64  9f830300  addli r7, r7, 0
001c68  33050128  zext_int2long r[11:12], r2
001c6c  2b0600f0  lui r12, 983040
001c70  17353502  sll.d r[11:12], r[11:12], r3
001c74  1796c200  or r12, r5, r12
001c78  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001c7c  7f264500  l_gm2lm r12, r4, 0(r[11:12])
001c80  1b352100  slli r10, r2, 2
001c84  0b112310  add.s r2, r6, r2
001c88  00a00200  mfence { lm, gm }
001c8c  42000202  vload.mz vr0{mr1}, 0(r4)
001c90  0b157510  add.s r10, r10, r7
001c94  9f058500  addli r11, r10, 64
001c98  86300000  vfp162float_l.rn vr1, vr0
001c9c  06700000  vfp162float_h.rn vr0, vr0
001ca0  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001ca4  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
001ca8  3f0ff1fe  blt.s r2, r15, -64
001cac  2bf10000  lui r2, 15
001cb0  e3411f00  loadli.w r3,  12(r30)
001cb4  00a00300  mfence { lm, sm, gm }
001cb8  1b11f1ff  ori r2, r2, 4095
001cbc  80210104  csr_set csr3, r2
001cc0  00d00100  sync_group
001cc4  cbc91122  ble.s r3, r1, 18032
001cc8  63032f00  loadli.w r6,  16(r30)
001ccc  e3432f00  loadli.w r7,  20(r30)
001cd0  9f088fd7  addli r17, r30, -5184
001cd4  1f150000  addli r10, zero, 1
001cd8  9f054000  addli r11, zero, 32
001cdc  1f767000  addli r12, zero, 63
001ce0  1f080002  addli r16, zero, 256
001ce4  1f090001  addli r18, zero, 128
001ce8  9f098000  addli r19, zero, 64
001cec  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001cf0  0b127310  add.s r4, r6, r7
001cf4  33010308  fix2float.rn r2, r6
001cf8  1b342300  slli r8, r6, 2
001cfc  9b321300  slli r5, r6, 1
001d00  9bb42300  slli r9, r7, 2
001d04  1f72f2ff  addli r4, r4, -1
001d08  670c2fd4  storeli.w r2, -5440(r30)
001d0c  1f014300  addli r2, r6, 32
001d10  0b131411  add.s r6, r8, r17
001d14  0b941211  add.s r8, r5, r17
001d18  67082fd4  storeli.w r2, -5504(r30)
001d1c  1f0183ff  addli r2, r6, -64
001d20  2bf3ffff  lui r6, 1048575
001d24  0b127230  div.s r4, r4, r7
001d28  67042fd4  storeli.w r2, -5568(r30)
001d2c  1f0184ff  addli r2, r8, -64
001d30  9b16f3ff  ori r13, r6, 4095
001d34  2b530100  lui r6, 21
001d38  67002fd4  storeli.w r2, -5632(r30)
001d3c  1f010fd7  addli r2, r30, -5248
001d40  1f030300  addli r6, r6, 0
001d44  00a00000  mfence { lm }
001d48  67045fd6  storeli.w r5, -5312(r30)
001d4c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001d50  5b080000  j 64
001d54  6b510f00  load.d r[3:4], 0(r30)
001d58  00a00000  mfence { lm }
001d5c  ab0800f0  lui r17, 983040
001d60  005a0102  load_param_i r20, 2
001d64  e3028fd6  loadli.w r5,  -5312(r30)
001d68  8b101a10  add.s r1, r20, r1
001d6c  8b237111  add.ul r[8:9], r[3:4], r[24:25]
001d70  1f018fd7  addli r2, r30, -5184
001d74  97981201  or r17, r5, r17
001d78  ffb82300  s_lm2gm r17, r2, 0(r[8:9])
001d7c  9f088fd7  addli r17, r30, -5184
001d80  00a00200  mfence { lm, gm }
001d84  63411f00  loadli.w r2,  12(r30)
001d88  3fa02000  blt.s r1, r2, 8
001d8c  5bb50800  j 17832
001d90  63011f00  loadli.w r2,  8(r30)
001d94  8b932010  add.s r7, r1, r2
001d98  8b93f320  mul.s r7, r7, r15
001d9c  b3930328  sext_int2long r[8:9], r7
001da0  97bba302  sll.d r[24:25], r[8:9], r10
001da4  1f047fd6  addli r8, r30, -5320
001da8  ab0300f0  lui r7, 983040
001dac  6b510400  load.d r[3:4], 0(r8)
001db0  97937200  or r7, r5, r7
001db4  0b2a7111  add.ul r[21:22], r[3:4], r[24:25]
001db8  ff231a01  l_gm2lm r7, r17, 0(r[21:22])
001dbc  00a00200  mfence { lm, gm }
001dc0  bff0b700  blt.s r15, r11, 60
001dc4  e3030fd4  loadli.w r7,  -5632(r30)
001dc8  63048fd4  loadli.w r8,  -5568(r30)
001dcc  e3080fd5  loadli.w r17,  -5504(r30)
001dd0  c2800302  vload.mz vr1{mr1}, 0(r7)
001dd4  9f88c8ff  addli r17, r17, -32
001dd8  9f0a84ff  addli r21, r8, -64
001ddc  9f8383ff  addli r7, r7, -64
001de0  130a1605  setlt.u r20, r12, r17
001de4  06f10000  vfp162float_h.rn vr2, vr1
001de8  86b00000  vfp162float_l.rn vr1, vr1
001dec  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
001df0  1f0404ff  addli r8, r8, -128
001df4  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
001df8  3b6f0afe  bneq r20, zero, -40
001dfc  00a00000  mfence { lm }
001e00  bf17a200  blt.s r4, r10, 484
001e04  1f0d0000  addli r26, zero, 0
001e08  9f0c0000  addli r25, zero, 0
001e0c  9f0d0000  addli r27, zero, 0
001e10  db0c0000  j 100
001e14  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001e18  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001e1c  9f9d0d00  addli r27, r27, 1
001e20  6a7108c0  vsrl.p vr2, r16, vr0
001e24  ea7118c0  vsrl.p vr3, r16, vr1
001e28  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e2c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e30  6a7109c0  vsrl.p vr2, r18, vr0
001e34  ea7119c0  vsrl.p vr3, r18, vr1
001e38  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e3c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e40  6af109c0  vsrl.p vr2, r19, vr0
001e44  eaf119c0  vsrl.p vr3, r19, vr1
001e48  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e4c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e50  6af105c0  vsrl.p vr2, r11, vr0
001e54  eaf115c0  vsrl.p vr3, r11, vr1
001e58  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e5c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e60  7a110040  vextracti.f r2, 0(vr0)
001e64  fa910040  vextracti.f r3, 0(vr1)
001e68  0b6d2d10  add.f.rn r26, r26, r2
001e6c  8bec3c10  add.f.rn r25, r25, r3
001e70  b7f54d00  beq r27, r4, 380
001e74  9f830d00  addli r7, r27, 0
001e78  37300701  beq r14, r16, 12
001e7c  97a3dd00  xor r7, r27, r13
001e80  8b137210  add.s r7, r4, r7
001e84  1f010fd7  addli r2, r30, -5248
001e88  0b94e320  mul.s r8, r7, r14
001e8c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
001e90  0b948718  sub.s r8, r15, r8
001e94  0b1ee440  min.s r28, r8, r14
001e98  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001e9c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001ea0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001ea4  bf4daefe  blt.s r28, r10, -144
001ea8  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
001eac  1f0a0000  addli r20, zero, 0
001eb0  8b9a7420  mul.s r21, r9, r7
001eb4  1f0b8fd7  addli r22, r30, -5184
001eb8  9f080300  addli r17, r6, 0
001ebc  92304002  vadd.s.mz vr1{mr1}, zero, vr4
001ec0  12314002  vadd.s.mz vr2{mr1}, zero, vr4
001ec4  92314002  vadd.s.mz vr3{mr1}, zero, vr4
001ec8  0b945811  add.s r8, r17, r21
001ecc  8b135b11  add.s r7, r22, r21
001ed0  9f028400  addli r5, r8, 64
001ed4  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
001ed8  9f018401  addli r3, r8, 192
001edc  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001ee0  1f818301  addli r2, r7, 192
001ee4  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
001ee8  9f020401  addli r5, r8, 128
001eec  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
001ef0  9f818300  addli r3, r7, 64
001ef4  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
001ef8  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
001efc  9f820301  addli r5, r7, 128
001f00  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
001f04  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
001f08  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001f0c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001f10  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001f14  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001f18  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001f1c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001f20  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
001f24  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001f28  9f018a00  addli r3, r20, 64
001f2c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001f30  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001f34  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001f38  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001f3c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001f40  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
001f44  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001f48  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001f4c  4b2b3efe  ble.s r28, r3, -312
001f50  9f010402  addli r3, r8, 256
001f54  9f028402  addli r5, r8, 320
001f58  1f810302  addli r2, r7, 256
001f5c  1f0a0a01  addli r20, r20, 128
001f60  9f880804  addli r17, r17, 512
001f64  1f0b0b04  addli r22, r22, 512
001f68  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
001f6c  9f010403  addli r3, r8, 384
001f70  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
001f74  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
001f78  9f828302  addli r5, r7, 320
001f7c  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
001f80  9f018403  addli r3, r8, 448
001f84  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
001f88  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
001f8c  9f810303  addli r3, r7, 384
001f90  9f838303  addli r7, r7, 448
001f94  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
001f98  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
001f9c  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
001fa0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001fa4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001fa8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001fac  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001fb0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001fb4  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
001fb8  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
001fbc  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001fc0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001fc4  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
001fc8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001fcc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001fd0  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001fd4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001fd8  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
001fdc  bf3bcaff  blt.s r20, r28, -276
001fe0  dbc6ffff  j -460
001fe4  9f0c0000  addli r25, zero, 0
001fe8  1f0d0000  addli r26, zero, 0
001fec  00a00000  mfence { lm }
001ff0  bf95a7fe  blt.s r15, r10, -668
001ff4  63018fd5  loadli.w r2,  -5440(r30)
001ff8  2b6b0100  lui r22, 22
001ffc  9f030000  addli r7, zero, 0
002000  9f0a8fd7  addli r21, r30, -5184
002004  1f0b0b00  addli r22, r22, 0
002008  8f082d18  div.f.rn r17, r26, r2
00200c  0f842c18  div.f.rn r8, r25, r2
002010  63013f00  loadli.w r2,  24(r30)
002014  ab7c0100  lui r25, 23
002018  9f8c0c00  addli r25, r25, 0
00201c  0bea1821  mul.f.rn r20, r17, r17
002020  8be80858  neg.f r17, r17
002024  0b644419  sub.f.rn r8, r8, r20
002028  1f0a8fd7  addli r20, r30, -5184
00202c  0b642410  add.f.rn r8, r8, r2
002030  2b01803f  lui r2, 260096
002034  0f040408  sqrt.f.rn r8, r8
002038  0f048118  div.f.rn r8, r2, r8
00203c  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
002040  1f8d8a00  addli r26, r21, 64
002044  ca110b02  vloads_mask16.mz vr3{mr1}, 0(r22)
002048  4a920c02  vloads_mask16.mz vr4{mr1}, 0(r25)
00204c  9f8d8c00  addli r27, r25, 64
002050  9f834300  addli r7, r7, 32
002054  9f8c0c01  addli r25, r25, 128
002058  9f8a0a01  addli r21, r21, 128
00205c  42110d02  vload_mask16.mz vr2{mr1}, 0(r26)
002060  1f0d8b00  addli r26, r22, 64
002064  4a930d02  vloads_mask16.mz vr6{mr1}, 0(r27)
002068  1f0b0b01  addli r22, r22, 128
00206c  ca120d02  vloads_mask16.mz vr5{mr1}, 0(r26)
002070  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
002074  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
002078  8a101402  vmul.f.mz.rn vr1{mr1}, r8, vr1
00207c  0a112402  vmul.f.mz.rn vr2{mr1}, r8, vr2
002080  26923002  vmac.f.mz.rn vr4{mr1}, vr1, vr3
002084  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002088  26135102  vmac.f.mz.rn vr6{mr1}, vr2, vr5
00208c  86100200  vfloat2fp16_l.rn vr1, vr4
002090  86500300  vfloat2fp16_h.rn vr1, vr6
002094  46001a02  vstore.mz vr1{mr1}, 0(r20)
002098  1f0a8a00  addli r20, r20, 64
00209c  bf8ef3fe  blt.s r7, r15, -96
0020a0  db96ffff  j -844
0020a4  e3002f00  loadli.w r1,  16(r30)
0020a8  1f010010  addli r2, zero, 2048
0020ac  bba02008  bneq r1, r2, 4136
0020b0  2ba30200  lui r6, 42
0020b4  80300002  core_id r1
0020b8  1f030308  addli r6, r6, 1024
0020bc  3bd00000  bneq r1, zero, 20
0020c0  1f010040  addli r2, zero, 8192
0020c4  ab0100f0  lui r3, 983040
0020c8  17113100  or r2, r2, r3
0020cc  7f016200  l_gm2sm r2, r6, 0(r[5:6])
0020d0  2bf10000  lui r2, 15
0020d4  00200300  mfence { sm, gm }
0020d8  1b821000  andi r4, r1, 1
0020dc  9f020006  addli r5, zero, 768
0020e0  1b11f1ff  ori r2, r2, 4095
0020e4  80210104  csr_set csr3, r2
0020e8  1f010006  addli r2, zero, 768
0020ec  00d00100  sync_group
0020f0  37200200  beq r4, zero, 8
0020f4  9f02000a  addli r5, zero, 1280
0020f8  e3411f00  loadli.w r3,  12(r30)
0020fc  9f130000  addli r7, zero, 1
002100  bfd87120  blt.s r3, r7, 16948
002104  0b112220  mul.s r2, r4, r2
002108  1bc51000  srli r10, r1, 1
00210c  abf0ffff  lui r1, 1048575
002110  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002114  abca0200  lui r21, 44
002118  2bcd0200  lui r26, 44
00211c  80510102  load_param_i r3, 2
002120  9f030000  addli r7, zero, 0
002124  9bb52200  slli r11, r5, 2
002128  9f068fd7  addli r13, r30, -5184
00212c  9f080002  addli r17, zero, 256
002130  1f090001  addli r18, zero, 128
002134  9f098000  addli r19, zero, 64
002138  1f0a4000  addli r20, zero, 32
00213c  9f0c0003  addli r25, zero, 384
002140  67082fd6  storeli.w r2, -5248(r30)
002144  1f018fd6  addli r2, r30, -5312
002148  9b9000f8  ori r1, r1, 3968
00214c  9bc41100  srli r9, r3, 1
002150  9f8a0a08  addli r21, r21, 1024
002154  1f0d0d0c  addli r26, r26, 1536
002158  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00215c  2bf10000  lui r2, 15
002160  670c1fd4  storeli.w r1, -5440(r30)
002164  9f000800  addli r1, r16, 0
002168  1f080005  addli r16, zero, 640
00216c  1b1bf1ff  ori r22, r2, 4095
002170  5b040000  j 32
002174  00a00300  mfence { lm, sm, gm }
002178  80210b04  csr_set csr3, r22
00217c  00d00100  sync_group
002180  e3401f00  loadli.w r1,  12(r30)
002184  8b939310  add.s r7, r7, r9
002188  3fa01300  blt.s r7, r1, 8
00218c  5b4bfdff  j -5544
002190  0b91a310  add.s r2, r7, r10
002194  cb8f20fe  ble.s r1, r2, -32
002198  e3001f00  loadli.w r1,  8(r30)
00219c  0b111110  add.s r2, r2, r1
0021a0  e3000fd7  loadli.w r1,  -5248(r30)
0021a4  1b31b100  slli r2, r2, 11
0021a8  17111100  or r2, r2, r1
0021ac  9f200000  addli r1, zero, 2
0021b0  33110128  sext_int2long r[3:4], r2
0021b4  973d1102  sll.d r[28:29], r[3:4], r1
0021b8  9f007fd6  addli r1, r30, -5320
0021bc  2b0100f0  lui r2, 983040
0021c0  6bd70000  load.d r[15:16], 0(r1)
0021c4  17912500  or r2, r11, r2
0021c8  0b27b711  add.ul r[15:16], r[15:16], r[28:29]
0021cc  7f21d700  l_gm2lm r2, r13, 0(r[15:16])
0021d0  1f010000  addli r2, zero, 0
0021d4  00a00200  mfence { lm, gm }
0021d8  3b060200  bneq r4, zero, 384
0021dc  9f008fd6  addli r1, r30, -5312
0021e0  e3018fd5  loadli.w r3,  -5440(r30)
0021e4  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0021e8  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0021ec  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0021f0  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0021f4  0b176110  add.s r14, r2, r6
0021f8  0b962610  add.s r12, r13, r2
0021fc  9f810101  addli r3, r3, 128
002200  1f010104  addli r2, r2, 512
002204  9f000701  addli r1, r14, 128
002208  4a100702  vloads_mask16.mz vr0{mr1}, 0(r14)
00220c  1f048700  addli r8, r14, 64
002210  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
002214  9f078601  addli r15, r12, 192
002218  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
00221c  9f008701  addli r1, r14, 192
002220  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002224  1f048600  addli r8, r12, 64
002228  c2950702  vload_mask16.mz vr11{mr1}, 0(r15)
00222c  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
002230  9f000601  addli r1, r12, 128
002234  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
002238  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00223c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002240  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002244  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002248  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00224c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002250  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
002254  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002258  9f000702  addli r1, r14, 256
00225c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002260  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002264  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002268  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
00226c  1f040603  addli r8, r12, 384
002270  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002274  9f008702  addli r1, r14, 320
002278  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
00227c  9f070602  addli r15, r12, 256
002280  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002284  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
002288  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00228c  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002290  9f000703  addli r1, r14, 384
002294  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
002298  1f078703  addli r14, r14, 448
00229c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0022a0  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0022a4  9f008602  addli r1, r12, 320
0022a8  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
0022ac  1f068603  addli r12, r12, 448
0022b0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0022b4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0022b8  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0022bc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0022c0  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0022c4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0022c8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0022cc  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
0022d0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0022d4  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0022d8  93800105  setlt.u r1, r3, r16
0022dc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0022e0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0022e4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0022e8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0022ec  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0022f0  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0022f4  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0022f8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0022fc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002300  bbdb00fe  bneq r1, zero, -268
002304  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002308  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00230c  6af108c0  vsrl.p vr2, r17, vr0
002310  eaf118c0  vsrl.p vr3, r17, vr1
002314  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002318  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00231c  6a7109c0  vsrl.p vr2, r18, vr0
002320  ea7119c0  vsrl.p vr3, r18, vr1
002324  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002328  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00232c  6af109c0  vsrl.p vr2, r19, vr0
002330  eaf119c0  vsrl.p vr3, r19, vr1
002334  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002338  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00233c  6a710ac0  vsrl.p vr2, r20, vr0
002340  ea711ac0  vsrl.p vr3, r20, vr1
002344  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002348  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00234c  7a160040  vextracti.f r12, 0(vr0)
002350  7a910040  vextracti.f r2, 0(vr1)
002354  db610000  j 780
002358  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00235c  abf0ffff  lui r1, 1048575
002360  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002364  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002368  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00236c  9b9100f8  ori r3, r1, 3968
002370  0b172310  add.s r14, r6, r2
002374  0b962610  add.s r12, r13, r2
002378  9f810101  addli r3, r3, 128
00237c  1f010104  addli r2, r2, 512
002380  9f000731  addli r1, r14, 6272
002384  9f070730  addli r15, r14, 6144
002388  1f048731  addli r8, r14, 6336
00238c  1f0c0618  addli r24, r12, 3072
002390  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
002394  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
002398  9f078730  addli r15, r14, 6208
00239c  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
0023a0  1f040619  addli r8, r12, 3200
0023a4  9f008618  addli r1, r12, 3136
0023a8  42130c02  vload_mask16.mz vr6{mr1}, 0(r24)
0023ac  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
0023b0  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
0023b4  9f078619  addli r15, r12, 3264
0023b8  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0023bc  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
0023c0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0023c4  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0023c8  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0023cc  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0023d0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0023d4  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0023d8  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
0023dc  1f040732  addli r8, r14, 6400
0023e0  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0023e4  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
0023e8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0023ec  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
0023f0  9f07061a  addli r15, r12, 3328
0023f4  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0023f8  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0023fc  9f00061b  addli r1, r12, 3456
002400  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
002404  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
002408  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
00240c  1f048732  addli r8, r14, 6464
002410  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002414  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002418  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
00241c  1f040733  addli r8, r14, 6528
002420  1f078733  addli r14, r14, 6592
002424  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
002428  1f04861a  addli r8, r12, 3392
00242c  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
002430  1f06861b  addli r12, r12, 3520
002434  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
002438  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00243c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
002440  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002444  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
002448  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00244c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002450  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
002454  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002458  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
00245c  13849105  setlt.u r8, r3, r25
002460  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002464  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002468  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00246c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002470  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002474  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
002478  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
00247c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002480  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002484  bb3b04fe  bneq r8, zero, -276
002488  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00248c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002490  abf0ffff  lui r1, 1048575
002494  1f060000  addli r12, zero, 0
002498  1b9c00f8  ori r24, r1, 3968
00249c  eaf118c0  vsrl.p vr3, r17, vr1
0024a0  6af108c0  vsrl.p vr2, r17, vr0
0024a4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024a8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024ac  ea7119c0  vsrl.p vr3, r18, vr1
0024b0  6a7109c0  vsrl.p vr2, r18, vr0
0024b4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024b8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024bc  eaf119c0  vsrl.p vr3, r19, vr1
0024c0  6af109c0  vsrl.p vr2, r19, vr0
0024c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024cc  ea711ac0  vsrl.p vr3, r20, vr1
0024d0  6a710ac0  vsrl.p vr2, r20, vr0
0024d4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024dc  fa910040  vextracti.f r3, 0(vr1)
0024e0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0024e4  7a110040  vextracti.f r2, 0(vr0)
0024e8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0024ec  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0024f0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0024f4  8b17c310  add.s r15, r6, r12
0024f8  0b97c610  add.s r14, r13, r12
0024fc  1f0c0c01  addli r24, r24, 128
002500  1f060604  addli r12, r12, 512
002504  9f800718  addli r1, r15, 3072
002508  1f840719  addli r8, r15, 3200
00250c  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
002510  9f0b8701  addli r23, r14, 192
002514  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002518  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
00251c  9f808718  addli r1, r15, 3136
002520  1f848719  addli r8, r15, 3264
002524  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
002528  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
00252c  9f000701  addli r1, r14, 128
002530  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
002534  1f048700  addli r8, r14, 64
002538  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00253c  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
002540  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002544  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002548  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00254c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002550  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002554  9f80071a  addli r1, r15, 3328
002558  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00255c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002560  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002564  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002568  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
00256c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002570  9f80871a  addli r1, r15, 3392
002574  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
002578  9f0b0702  addli r23, r14, 256
00257c  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002580  1f040703  addli r8, r14, 384
002584  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
002588  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00258c  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002590  9f80071b  addli r1, r15, 3456
002594  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
002598  9f87871b  addli r15, r15, 3520
00259c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0025a0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0025a4  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0025a8  9f008702  addli r1, r14, 320
0025ac  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
0025b0  1f078703  addli r14, r14, 448
0025b4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0025b8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0025bc  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0025c0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0025c4  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
0025c8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0025cc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0025d0  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
0025d4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0025d8  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0025dc  93000c05  setlt.u r1, r24, r16
0025e0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0025e4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0025e8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0025ec  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0025f0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0025f4  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0025f8  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
0025fc  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002600  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002604  bbcb00fe  bneq r1, zero, -272
002608  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00260c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002610  6af108c0  vsrl.p vr2, r17, vr0
002614  eaf118c0  vsrl.p vr3, r17, vr1
002618  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00261c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002620  6a7109c0  vsrl.p vr2, r18, vr0
002624  ea7119c0  vsrl.p vr3, r18, vr1
002628  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00262c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002630  6af109c0  vsrl.p vr2, r19, vr0
002634  eaf119c0  vsrl.p vr3, r19, vr1
002638  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00263c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002640  6a710ac0  vsrl.p vr2, r20, vr0
002644  ea711ac0  vsrl.p vr3, r20, vr1
002648  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00264c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002650  fa100040  vextracti.f r1, 0(vr0)
002654  7a940040  vextracti.f r8, 0(vr1)
002658  0b661110  add.f.rn r12, r2, r1
00265c  0be18110  add.f.rn r2, r3, r8
002660  8b809330  div.u r1, r7, r9
002664  80310002  core_id r3
002668  9f078fd7  addli r15, r30, -5184
00266c  1f0c0000  addli r24, zero, 0
002670  9bb06000  slli r1, r1, 6
002674  9b800004  andi r1, r1, 64
002678  97903000  or r1, r1, r3
00267c  9bb12000  slli r3, r1, 2
002680  9b80e007  andi r1, r1, 126
002684  0b945111  add.s r8, r3, r21
002688  9bb02000  slli r1, r1, 2
00268c  7360c400  stores.w r12, 0(r8)
002690  0b94a111  add.s r8, r3, r26
002694  9b914100  ori r3, r3, 4
002698  73602400  stores.w r2, 0(r8)
00269c  0b915111  add.s r2, r3, r21
0026a0  0b945011  add.s r8, r1, r21
0026a4  8b91a111  add.s r3, r3, r26
0026a8  8b90a011  add.s r1, r1, r26
0026ac  00a00300  mfence { lm, sm, gm }
0026b0  80210b04  csr_set csr3, r22
0026b4  00d00100  sync_group
0026b8  6f410100  loads.w r2, 0(r2)
0026bc  6f440400  loads.w r8, 0(r8)
0026c0  efc10100  loads.w r3, 0(r3)
0026c4  efc00000  loads.w r1, 0(r1)
0026c8  0b618110  add.f.rn r2, r2, r8
0026cc  8be01110  add.f.rn r1, r3, r1
0026d0  ab01003a  lui r3, 237568
0026d4  0b643120  mul.f.rn r8, r2, r3
0026d8  8be03020  mul.f.rn r1, r1, r3
0026dc  0b618420  mul.f.rn r2, r8, r8
0026e0  0b670458  neg.f r14, r8
0026e4  8be02018  sub.f.rn r1, r1, r2
0026e8  63013f00  loadli.w r2,  24(r30)
0026ec  8be02010  add.f.rn r1, r1, r2
0026f0  2b01803f  lui r2, 260096
0026f4  8f800008  sqrt.f.rn r1, r1
0026f8  0f061118  div.f.rn r12, r2, r1
0026fc  eb500f00  load.d r[2:3], 0(r30)
002700  0ba1b011  add.ul r[3:4], r[2:3], r[28:29]
002704  9f808700  addli r1, r15, 64
002708  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
00270c  1f044c00  addli r8, r24, 32
002710  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002714  13848206  setle.u r8, r5, r8
002718  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
00271c  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
002720  0a100602  vmul.f.mz.rn vr0{mr1}, r12, vr0
002724  8a101602  vmul.f.mz.rn vr1{mr1}, r12, vr1
002728  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
00272c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002730  bb700400  bneq r8, zero, 60
002734  9f800701  addli r1, r15, 128
002738  1f848701  addli r8, r15, 192
00273c  1f0c8c00  addli r24, r24, 64
002740  9f870702  addli r15, r15, 256
002744  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002748  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
00274c  930b5c04  setlt.u r23, r24, r5
002750  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
002754  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
002758  0a100602  vmul.f.mz.rn vr0{mr1}, r12, vr0
00275c  8a101602  vmul.f.mz.rn vr1{mr1}, r12, vr1
002760  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002764  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
002768  3bfe0bfe  bneq r23, zero, -100
00276c  ab0000f0  lui r1, 983040
002770  00a00000  mfence { lm }
002774  97901500  or r1, r11, r1
002778  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
00277c  00a00200  mfence { lm, gm }
002780  5b40ffff  j -1536
002784  80300002  core_id r1
002788  bb800000  bneq r1, zero, 32
00278c  63012f00  loadli.w r2,  16(r30)
002790  ab0100f0  lui r3, 983040
002794  1b311100  slli r2, r2, 1
002798  17113100  or r2, r2, r3
00279c  abc10100  lui r3, 28
0027a0  9f810100  addli r3, r3, 0
0027a4  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0027a8  2bf10000  lui r2, 15
0027ac  e3411f00  loadli.w r3,  12(r30)
0027b0  00200300  mfence { sm, gm }
0027b4  1b11f1ff  ori r2, r2, 4095
0027b8  80210104  csr_set csr3, r2
0027bc  00d00100  sync_group
0027c0  cbdd111c  ble.s r3, r1, 15220
0027c4  63012f00  loadli.w r2,  16(r30)
0027c8  e3412f00  loadli.w r3,  20(r30)
0027cc  1f052000  addli r10, zero, 16
0027d0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0027d4  1f130000  addli r6, zero, 1
0027d8  9f040002  addli r9, zero, 256
0027dc  ab05ffff  lui r11, 1048560
0027e0  ab06807f  lui r13, 522240
0027e4  2b08c07f  lui r16, 523264
0027e8  9f080001  addli r17, zero, 128
0027ec  1f098000  addli r18, zero, 64
0027f0  9f094000  addli r19, zero, 32
0027f4  1b3b1100  slli r22, r2, 1
0027f8  0b123110  add.s r4, r2, r3
0027fc  33010108  fix2float.rn r2, r2
002800  67042fd4  storeli.w r2, -5568(r30)
002804  1f71f2ff  addli r2, r4, -1
002808  1bb21100  slli r4, r3, 1
00280c  67086fd5  storeli.w r22, -5504(r30)
002810  8b123130  div.s r5, r2, r3
002814  2bf1ffff  lui r2, 1048575
002818  9f018fd7  addli r3, r30, -5184
00281c  1b14f1ff  ori r8, r2, 4095
002820  1f010fd7  addli r2, r30, -5248
002824  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002828  6a200522  vor.u.mz vr0{mr1}, r10, vr0
00282c  1f018fd6  addli r2, r30, -5312
002830  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002834  2b710000  lui r2, 7
002838  1b16f1ff  ori r12, r2, 4095
00283c  db080000  j 68
002840  9f038fd5  addli r7, r30, -5440
002844  6b510f00  load.d r[3:4], 0(r30)
002848  6bda0300  load.d r[21:22], 0(r7)
00284c  00a00000  mfence { lm }
002850  80530102  load_param_i r7, 2
002854  630b0fd5  loadli.w r22,  -5504(r30)
002858  8b901310  add.s r1, r7, r1
00285c  0b2a4111  add.ul r[21:22], r[3:4], r[21:22]
002860  2b0100f0  lui r2, 983040
002864  9f018fd7  addli r3, r30, -5184
002868  17112b00  or r2, r22, r2
00286c  7f313a00  s_lm2gm r2, r3, 0(r[21:22])
002870  00a00200  mfence { lm, gm }
002874  63411f00  loadli.w r2,  12(r30)
002878  3fa02000  blt.s r1, r2, 8
00287c  5b570700  j 15032
002880  63011f00  loadli.w r2,  8(r30)
002884  9f037fd6  addli r7, r30, -5320
002888  0b912010  add.s r2, r1, r2
00288c  0b11f120  mul.s r2, r2, r15
002890  331a0128  sext_int2long r[21:22], r2
002894  2b0100f0  lui r2, 983040
002898  973b6a02  sll.d r[24:25], r[21:22], r6
00289c  6bda0300  load.d r[21:22], 0(r7)
0028a0  17112b00  or r2, r22, r2
0028a4  9f038fd5  addli r7, r30, -5440
0028a8  73b07301  store.d r[24:25], 0(r7)
0028ac  0b2a7a11  add.ul r[21:22], r[21:22], r[24:25]
0028b0  7f213a00  l_gm2lm r2, r3, 0(r[21:22])
0028b4  00a00200  mfence { lm, gm }
0028b8  bfdc6200  blt.s r5, r6, 820
0028bc  9f0c0000  addli r25, zero, 0
0028c0  1f0c0000  addli r24, zero, 0
0028c4  1f0d0000  addli r26, zero, 0
0028c8  db0c0000  j 100
0028cc  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0028d0  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0028d4  1f1d0d00  addli r26, r26, 1
0028d8  6af104c0  vsrl.p vr2, r9, vr0
0028dc  eaf114c0  vsrl.p vr3, r9, vr1
0028e0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028e4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028e8  6af108c0  vsrl.p vr2, r17, vr0
0028ec  eaf118c0  vsrl.p vr3, r17, vr1
0028f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028f4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028f8  6a7109c0  vsrl.p vr2, r18, vr0
0028fc  ea7119c0  vsrl.p vr3, r18, vr1
002900  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002904  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002908  6af109c0  vsrl.p vr2, r19, vr0
00290c  eaf119c0  vsrl.p vr3, r19, vr1
002910  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002914  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002918  7a110040  vextracti.f r2, 0(vr0)
00291c  fa910040  vextracti.f r3, 0(vr1)
002920  8bec2c10  add.f.rn r25, r25, r2
002924  0b6c3c10  add.f.rn r24, r24, r3
002928  373b5d00  beq r26, r5, 716
00292c  1f010d00  addli r2, r26, 0
002930  37309700  beq r14, r9, 12
002934  17218d00  xor r2, r26, r8
002938  0b912210  add.s r2, r5, r2
00293c  9f010fd7  addli r3, r30, -5248
002940  8b13e120  mul.s r7, r2, r14
002944  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
002948  8b937718  sub.s r7, r15, r7
00294c  8b9de340  min.s r27, r7, r14
002950  92322002  vadd.s.mz vr5{mr1}, zero, vr2
002954  12322002  vadd.s.mz vr4{mr1}, zero, vr2
002958  92312002  vadd.s.mz vr3{mr1}, zero, vr2
00295c  bfcd6dfe  blt.s r27, r6, -144
002960  0b1a2220  mul.s r20, r4, r2
002964  1f010fd7  addli r2, r30, -5248
002968  abca0100  lui r21, 28
00296c  1f0e0000  addli r28, zero, 0
002970  9f038fd7  addli r7, r30, -5184
002974  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
002978  9f8a0a00  addli r21, r21, 0
00297c  12315002  vadd.s.mz vr2{mr1}, zero, vr5
002980  92315002  vadd.s.mz vr3{mr1}, zero, vr5
002984  12325002  vadd.s.mz vr4{mr1}, zero, vr5
002988  0b9b4a11  add.s r22, r21, r20
00298c  0b914311  add.s r2, r7, r20
002990  9f018fd6  addli r3, r30, -5312
002994  4a030b02  vloads.mz vr6{mr1}, 0(r22)
002998  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00299c  c2030102  vload.mz vr7{mr1}, 0(r2)
0029a0  9f010fd7  addli r3, r30, -5248
0029a4  9f0b8b00  addli r23, r22, 64
0029a8  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0029ac  9f018e00  addli r3, r28, 64
0029b0  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0029b4  6ab57502  vand.s.mz vr10{mr1}, r11, vr7
0029b8  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0029bc  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
0029c0  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0029c4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0029c8  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0029cc  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0029d0  669503c0  vabs.f vr10, vr7
0029d4  6a348302  vand.s.mz vr8{mr1}, r6, vr8
0029d8  ea349302  vand.s.mz vr9{mr1}, r6, vr9
0029dc  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
0029e0  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
0029e4  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
0029e8  12348602  vadd.s.mz vr8{mr1}, r12, vr8
0029ec  92349602  vadd.s.mz vr9{mr1}, r12, vr9
0029f0  eab38502  vand.s.mz vr7{mr1}, r11, vr8
0029f4  661403c0  vabs.f vr8, vr6
0029f8  6ab39502  vand.s.mz vr6{mr1}, r11, vr9
0029fc  ea230834  vor.u.mh vr7{mr2}, r16, vr0
002a00  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
002a04  6a230834  vor.u.mh vr6{mr2}, r16, vr0
002a08  4a840b02  vloads.mz vr8{mr1}, 0(r23)
002a0c  9f0b8100  addli r23, r2, 64
002a10  c2840b02  vload.mz vr9{mr1}, 0(r23)
002a14  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
002a18  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
002a1c  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002a20  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
002a24  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002a28  46007102  vstore.mz vr7{mr1}, 0(r2)
002a2c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002a30  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002a34  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
002a38  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
002a3c  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002a40  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002a44  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002a48  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
002a4c  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
002a50  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
002a54  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
002a58  ea349302  vand.s.mz vr9{mr1}, r6, vr9
002a5c  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002a60  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
002a64  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
002a68  661505c0  vabs.f vr10, vr10
002a6c  661404c0  vabs.f vr8, vr8
002a70  92349602  vadd.s.mz vr9{mr1}, r12, vr9
002a74  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002a78  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
002a7c  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002a80  6ab5b502  vand.s.mz vr10{mr1}, r11, vr11
002a84  ea240834  vor.u.mh vr9{mr2}, r16, vr0
002a88  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
002a8c  6a250834  vor.u.mh vr10{mr2}, r16, vr0
002a90  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
002a94  eab4a502  vand.s.mz vr9{mr1}, r11, vr10
002a98  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
002a9c  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002aa0  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002aa4  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
002aa8  46808b02  vstore.mz vr8{mr1}, 0(r23)
002aac  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002ab0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002ab4  4be83dfe  ble.s r27, r3, -488
002ab8  9f010b01  addli r3, r22, 128
002abc  9f0b0101  addli r23, r2, 128
002ac0  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
002ac4  1f018101  addli r2, r2, 192
002ac8  1f0e0e01  addli r28, r28, 128
002acc  9f8a0a02  addli r21, r21, 256
002ad0  9f830302  addli r7, r7, 256
002ad4  6a237522  vor.u.mz vr6{mr1}, r10, vr7
002ad8  4a840102  vloads.mz vr8{mr1}, 0(r3)
002adc  c2840b02  vload.mz vr9{mr1}, 0(r23)
002ae0  9f018b01  addli r3, r22, 192
002ae4  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
002ae8  6ab09502  vand.s.mz vr0{mr1}, r11, vr9
002aec  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
002af0  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002af4  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
002af8  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
002afc  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
002b00  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
002b04  e69504c0  vabs.f vr11, vr9
002b08  6a300302  vand.s.mz vr0{mr1}, r6, vr0
002b0c  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002b10  72a1b642  vlt.u.mz mr2{mr1}, r13, vr11
002b14  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
002b18  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
002b1c  12300602  vadd.s.mz vr0{mr1}, r12, vr0
002b20  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002b24  eab40502  vand.s.mz vr9{mr1}, r11, vr0
002b28  661004c0  vabs.f vr0, vr8
002b2c  6ab4a502  vand.s.mz vr8{mr1}, r11, vr10
002b30  ea247834  vor.u.mh vr9{mr2}, r16, vr7
002b34  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002b38  6a247834  vor.u.mh vr8{mr2}, r16, vr7
002b3c  4a800102  vloads.mz vr0{mr1}, 0(r3)
002b40  42050102  vload.mz vr10{mr1}, 0(r2)
002b44  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
002b48  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
002b4c  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002b50  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
002b54  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002b58  46809b02  vstore.mz vr9{mr1}, 0(r23)
002b5c  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
002b60  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
002b64  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
002b68  6ab00502  vand.s.mz vr0{mr1}, r11, vr0
002b6c  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
002b70  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
002b74  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
002b78  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
002b7c  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002b80  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002b84  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
002b88  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
002b8c  e69000c0  vabs.f vr1, vr1
002b90  661000c0  vabs.f vr0, vr0
002b94  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002b98  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002b9c  72a11642  vlt.u.mz mr2{mr1}, r13, vr1
002ba0  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002ba4  eab0b502  vand.s.mz vr1{mr1}, r11, vr11
002ba8  6a257834  vor.u.mh vr10{mr2}, r16, vr7
002bac  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002bb0  ea207834  vor.u.mh vr1{mr2}, r16, vr7
002bb4  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
002bb8  eab31502  vand.s.mz vr7{mr1}, r11, vr1
002bbc  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
002bc0  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
002bc4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002bc8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002bcc  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
002bd0  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
002bd4  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
002bd8  46000102  vstore.mz vr0{mr1}, 0(r2)
002bdc  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002be0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002be4  bf16beff  blt.s r28, r27, -604
002be8  db9cffff  j -796
002bec  1f0c0000  addli r24, zero, 0
002bf0  9f0c0000  addli r25, zero, 0
002bf4  00a00000  mfence { lm }
002bf8  3fa167fe  blt.s r15, r6, -952
002bfc  63018fd4  loadli.w r2,  -5568(r30)
002c00  e3013f00  loadli.w r3,  24(r30)
002c04  9f0a0000  addli r21, zero, 0
002c08  8f832c18  div.f.rn r7, r25, r2
002c0c  0f012c18  div.f.rn r2, r24, r2
002c10  0bea7320  mul.f.rn r20, r7, r7
002c14  8be30358  neg.f r7, r7
002c18  0b614119  sub.f.rn r2, r2, r20
002c1c  1f0a8fd7  addli r20, r30, -5184
002c20  0b613110  add.f.rn r2, r2, r3
002c24  ab01803f  lui r3, 260096
002c28  0f010108  sqrt.f.rn r2, r2
002c2c  0f812118  div.f.rn r2, r3, r2
002c30  42020a02  vload.mz vr4{mr1}, 0(r20)
002c34  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
002c38  1f8b4a00  addli r22, r21, 32
002c3c  ea212522  vor.u.mz vr3{mr1}, r10, vr2
002c40  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002c44  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002c48  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002c4c  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002c50  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002c54  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002c58  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002c5c  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002c60  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002c64  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002c68  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002c6c  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002c70  e69202c0  vabs.f vr5, vr5
002c74  661202c0  vabs.f vr4, vr4
002c78  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002c7c  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002c80  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002c84  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002c88  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002c8c  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002c90  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002c94  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002c98  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
002c9c  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
002ca0  46004a02  vstore.mz vr4{mr1}, 0(r20)
002ca4  4bfe67fd  ble.s r15, r22, -1124
002ca8  1f0b8a00  addli r22, r20, 64
002cac  9f8a8a00  addli r21, r21, 64
002cb0  1f0a0a01  addli r20, r20, 128
002cb4  42020b02  vload.mz vr4{mr1}, 0(r22)
002cb8  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002cbc  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002cc0  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002cc4  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002cc8  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002ccc  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002cd0  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002cd4  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002cd8  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002cdc  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002ce0  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002ce4  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002ce8  e69202c0  vabs.f vr5, vr5
002cec  661202c0  vabs.f vr4, vr4
002cf0  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002cf4  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002cf8  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002cfc  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002d00  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002d04  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002d08  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002d0c  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002d10  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
002d14  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
002d18  46002b02  vstore.mz vr2{mr1}, 0(r22)
002d1c  3fdcfafe  blt.s r21, r15, -236
002d20  5b64ffff  j -1248
002d24  80300002  core_id r1
002d28  bb800000  bneq r1, zero, 32
002d2c  63012f00  loadli.w r2,  16(r30)
002d30  ab0100f0  lui r3, 983040
002d34  1b311100  slli r2, r2, 1
002d38  17113100  or r2, r2, r3
002d3c  ab010200  lui r3, 32
002d40  9f810100  addli r3, r3, 0
002d44  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002d48  2bf10000  lui r2, 15
002d4c  e3411f00  loadli.w r3,  12(r30)
002d50  00200300  mfence { sm, gm }
002d54  1b11f1ff  ori r2, r2, 4095
002d58  80210104  csr_set csr3, r2
002d5c  00d00100  sync_group
002d60  4bd7111a  ble.s r3, r1, 13780
002d64  e3012f00  loadli.w r3,  16(r30)
002d68  e3422f00  loadli.w r5,  20(r30)
002d6c  2bf4ffff  lui r8, 1048575
002d70  2b080200  lui r16, 32
002d74  9f068fd7  addli r13, r30, -5184
002d78  9f040002  addli r9, zero, 256
002d7c  1f050001  addli r10, zero, 128
002d80  9f058000  addli r11, zero, 64
002d84  1f064000  addli r12, zero, 32
002d88  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002d8c  1b14f4ff  ori r8, r8, 4095
002d90  1f080800  addli r16, r16, 0
002d94  0b925110  add.s r4, r3, r5
002d98  1bb11100  slli r2, r3, 1
002d9c  b3810108  fix2float.rn r3, r3
002da0  1f73f2ff  addli r6, r4, -1
002da4  1bb21200  slli r4, r5, 1
002da8  8b125330  div.s r5, r6, r5
002dac  1f130000  addli r6, zero, 1
002db0  5b070000  j 56
002db4  eb590f00  load.d r[20:21], 0(r30)
002db8  9f068fd7  addli r13, r30, -5184
002dbc  00a00000  mfence { lm }
002dc0  8ba81911  add.ul r[18:19], r[20:21], r[18:19]
002dc4  ab0900f0  lui r19, 983040
002dc8  005a0102  load_param_i r20, 2
002dcc  97193101  or r19, r2, r19
002dd0  8b101a10  add.s r1, r20, r1
002dd4  ffb9d800  s_lm2gm r19, r13, 0(r[18:19])
002dd8  00a00200  mfence { lm, gm }
002ddc  e3431f00  loadli.w r7,  12(r30)
002de0  3fa07000  blt.s r1, r7, 8
002de4  5baa0600  j 13648
002de8  e3031f00  loadli.w r7,  8(r30)
002dec  ab0900f0  lui r19, 983040
002df0  97193101  or r19, r2, r19
002df4  8b987010  add.s r17, r1, r7
002df8  9f037fd6  addli r7, r30, -5320
002dfc  8b98f820  mul.s r17, r17, r15
002e00  6bda0300  load.d r[21:22], 0(r7)
002e04  b3980828  sext_int2long r[18:19], r17
002e08  97b86802  sll.d r[18:19], r[18:19], r6
002e0c  0b2a1a11  add.ul r[21:22], r[21:22], r[18:19]
002e10  ff29da00  l_gm2lm r19, r13, 0(r[21:22])
002e14  00a00200  mfence { lm, gm }
002e18  3fc76200  blt.s r5, r6, 464
002e1c  1f0a0000  addli r20, zero, 0
002e20  9f090000  addli r19, zero, 0
002e24  9f0a0000  addli r21, zero, 0
002e28  db0c0000  j 100
002e2c  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
002e30  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002e34  9f9a0a00  addli r21, r21, 1
002e38  6af134c0  vsrl.p vr2, r9, vr3
002e3c  6af214c0  vsrl.p vr4, r9, vr1
002e40  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
002e44  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e48  ea7125c0  vsrl.p vr3, r10, vr2
002e4c  6a7215c0  vsrl.p vr4, r10, vr1
002e50  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e54  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e58  eaf125c0  vsrl.p vr3, r11, vr2
002e5c  6af215c0  vsrl.p vr4, r11, vr1
002e60  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e64  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e68  ea7126c0  vsrl.p vr3, r12, vr2
002e6c  6a7216c0  vsrl.p vr4, r12, vr1
002e70  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e74  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e78  fa130140  vextracti.f r7, 0(vr2)
002e7c  fa960040  vextracti.f r13, 0(vr1)
002e80  0b6a7a10  add.f.rn r20, r20, r7
002e84  8be9d910  add.f.rn r19, r19, r13
002e88  b7a55a00  beq r21, r5, 360
002e8c  1f8c0a00  addli r24, r21, 0
002e90  37309700  beq r14, r9, 12
002e94  17ab8a00  xor r22, r21, r8
002e98  0b9c6211  add.s r24, r5, r22
002e9c  0b1bec20  mul.s r22, r24, r14
002ea0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
002ea4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
002ea8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
002eac  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002eb0  0b9b6719  sub.s r22, r15, r22
002eb4  0b1beb40  min.s r22, r22, r14
002eb8  bf5d6bfe  blt.s r22, r6, -140
002ebc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002ec0  12310002  vadd.s.mz vr2{mr1}, zero, vr0
002ec4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
002ec8  12320002  vadd.s.mz vr4{mr1}, zero, vr0
002ecc  9f0b0000  addli r23, zero, 0
002ed0  0b1c8221  mul.s r24, r4, r24
002ed4  9f0c8fd7  addli r25, r30, -5184
002ed8  1f0d0800  addli r26, r16, 0
002edc  8b1d8d11  add.s r27, r26, r24
002ee0  9f838b00  addli r7, r23, 64
002ee4  ca820d02  vloads.mz vr5{mr1}, 0(r27)
002ee8  1f8e8d00  addli r28, r27, 64
002eec  4a030e02  vloads.mz vr6{mr1}, 0(r28)
002ef0  0b9e8c11  add.s r28, r25, r24
002ef4  c2030e02  vload.mz vr7{mr1}, 0(r28)
002ef8  9f068e00  addli r13, r28, 64
002efc  42840602  vload.mz vr8{mr1}, 0(r13)
002f00  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
002f04  92320002  vadd.s.mz vr5{mr1}, zero, vr0
002f08  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
002f0c  06b40300  vfp162float_l.rn vr8, vr7
002f10  86f30300  vfp162float_h.rn vr7, vr7
002f14  86340300  vfp162float_l.rn vr9, vr6
002f18  06730300  vfp162float_h.rn vr6, vr6
002f1c  86120400  vfloat2fp16_l.rn vr5, vr8
002f20  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
002f24  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
002f28  12340002  vadd.s.mz vr8{mr1}, zero, vr0
002f2c  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
002f30  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
002f34  06940400  vfloat2fp16_l.rn vr8, vr9
002f38  86d20300  vfloat2fp16_h.rn vr5, vr7
002f3c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002f40  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002f44  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
002f48  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002f4c  06540300  vfloat2fp16_h.rn vr8, vr6
002f50  46005e02  vstore.mz vr5{mr1}, 0(r28)
002f54  46808602  vstore.mz vr8{mr1}, 0(r13)
002f58  4b5b7bfe  ble.s r22, r7, -300
002f5c  9f830d01  addli r7, r27, 128
002f60  9f060e01  addli r13, r28, 128
002f64  9f8b0b01  addli r23, r23, 128
002f68  1f0d0d02  addli r26, r26, 256
002f6c  9f8c0c02  addli r25, r25, 256
002f70  ca820302  vloads.mz vr5{mr1}, 0(r7)
002f74  9f838d01  addli r7, r27, 192
002f78  c2830602  vload.mz vr7{mr1}, 0(r13)
002f7c  4a830302  vloads.mz vr6{mr1}, 0(r7)
002f80  9f038e01  addli r7, r28, 192
002f84  42840302  vload.mz vr8{mr1}, 0(r7)
002f88  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
002f8c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
002f90  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
002f94  12330002  vadd.s.mz vr6{mr1}, zero, vr0
002f98  86b40300  vfp162float_l.rn vr9, vr7
002f9c  86f30300  vfp162float_h.rn vr7, vr7
002fa0  86920400  vfloat2fp16_l.rn vr5, vr9
002fa4  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002fa8  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002fac  86340400  vfp162float_l.rn vr9, vr8
002fb0  06740400  vfp162float_h.rn vr8, vr8
002fb4  06930400  vfloat2fp16_l.rn vr6, vr9
002fb8  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
002fbc  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
002fc0  86d20300  vfloat2fp16_h.rn vr5, vr7
002fc4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002fc8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002fcc  06530400  vfloat2fp16_h.rn vr6, vr8
002fd0  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
002fd4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002fd8  46805602  vstore.mz vr5{mr1}, 0(r13)
002fdc  46806302  vstore.mz vr6{mr1}, 0(r7)
002fe0  bffb6bff  blt.s r23, r22, -260
002fe4  5bc9ffff  j -440
002fe8  9f090000  addli r19, zero, 0
002fec  1f0a0000  addli r20, zero, 0
002ff0  00a00000  mfence { lm }
002ff4  3f8767fe  blt.s r15, r6, -576
002ff8  0f0a3a18  div.f.rn r20, r20, r3
002ffc  8f893918  div.f.rn r19, r19, r3
003000  e3033f00  loadli.w r7,  24(r30)
003004  1f0b0000  addli r22, zero, 0
003008  8b6a4a21  mul.f.rn r21, r20, r20
00300c  0b6a0a58  neg.f r20, r20
003010  8be95919  sub.f.rn r19, r19, r21
003014  9f0a8fd7  addli r21, r30, -5184
003018  8be97910  add.f.rn r19, r19, r7
00301c  ab03803f  lui r7, 260096
003020  8f890908  sqrt.f.rn r19, r19
003024  8f893319  div.f.rn r19, r7, r19
003028  c2800a02  vload.mz vr1{mr1}, 0(r21)
00302c  9f0b4b00  addli r23, r22, 32
003030  06b10000  vfp162float_l.rn vr2, vr1
003034  86f00000  vfp162float_h.rn vr1, vr1
003038  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
00303c  92111a02  vadd.f.mz.rn vr3{mr1}, r20, vr1
003040  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003044  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003048  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
00304c  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003050  06120100  vfloat2fp16_l.rn vr4, vr2
003054  06d20100  vfloat2fp16_h.rn vr4, vr3
003058  46804a02  vstore.mz vr4{mr1}, 0(r21)
00305c  4be577ff  ble.s r15, r23, -680
003060  9f8b8a00  addli r23, r21, 64
003064  1f0b8b00  addli r22, r22, 64
003068  9f8a0a01  addli r21, r21, 128
00306c  42810b02  vload.mz vr2{mr1}, 0(r23)
003070  86310100  vfp162float_l.rn vr3, vr2
003074  06710100  vfp162float_h.rn vr2, vr2
003078  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
00307c  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003080  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003084  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
003088  86900100  vfloat2fp16_l.rn vr1, vr3
00308c  86500100  vfloat2fp16_h.rn vr1, vr2
003090  46801b02  vstore.mz vr1{mr1}, 0(r23)
003094  3f5efbfe  blt.s r22, r15, -108
003098  dba3ffff  j -740
00309c  80300002  core_id r1
0030a0  1f210000  addli r2, zero, 2
0030a4  37aa2016  beq r1, r2, 11912
0030a8  1f110000  addli r2, zero, 1
0030ac  378c2012  beq r1, r2, 9984
0030b0  3bea0016  bneq r1, zero, 11928
0030b4  63012f00  loadli.w r2,  16(r30)
0030b8  ab0100f0  lui r3, 983040
0030bc  1b312100  slli r2, r2, 2
0030c0  17113100  or r2, r2, r3
0030c4  ab710200  lui r3, 39
0030c8  9f810108  addli r3, r3, 1024
0030cc  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0030d0  5bcf0500  j 11896
0030d4  80300002  core_id r1
0030d8  bb800000  bneq r1, zero, 32
0030dc  63012f00  loadli.w r2,  16(r30)
0030e0  ab0100f0  lui r3, 983040
0030e4  1b312100  slli r2, r2, 2
0030e8  17113100  or r2, r2, r3
0030ec  abd10200  lui r3, 45
0030f0  9f8101f0  addli r3, r3, -2048
0030f4  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0030f8  2bf10000  lui r2, 15
0030fc  e3411f00  loadli.w r3,  12(r30)
003100  00200300  mfence { sm, gm }
003104  1b11f1ff  ori r2, r2, 4095
003108  80210104  csr_set csr3, r2
00310c  00d00100  sync_group
003110  cb981118  ble.s r3, r1, 12836
003114  e3012f00  loadli.w r3,  16(r30)
003118  e3422f00  loadli.w r5,  20(r30)
00311c  abf4ffff  lui r9, 1048575
003120  abd80200  lui r17, 45
003124  1f0b8fd7  addli r22, r30, -5184
003128  1f140000  addli r8, zero, 1
00312c  1f050002  addli r10, zero, 256
003130  9f050001  addli r11, zero, 128
003134  1f068000  addli r12, zero, 64
003138  9f064000  addli r13, zero, 32
00313c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003140  9b94f4ff  ori r9, r9, 4095
003144  9f8808f0  addli r17, r17, -2048
003148  0b925110  add.s r4, r3, r5
00314c  1bb12100  slli r2, r3, 2
003150  b3810108  fix2float.rn r3, r3
003154  1f73f2ff  addli r6, r4, -1
003158  1bb22200  slli r4, r5, 2
00315c  67043fd6  storeli.w r3, -5312(r30)
003160  9f010fd7  addli r3, r30, -5248
003164  8b125330  div.s r5, r6, r5
003168  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
00316c  5b070000  j 56
003170  6b530f00  load.d r[7:8], 0(r30)
003174  2b0800f0  lui r16, 983040
003178  1f0b8fd7  addli r22, r30, -5184
00317c  00a00000  mfence { lm }
003180  005a0102  load_param_i r20, 2
003184  17180101  or r16, r2, r16
003188  8b101a10  add.s r1, r20, r1
00318c  0b292311  add.ul r[19:20], r[7:8], r[19:20]
003190  7f386901  s_lm2gm r16, r22, 0(r[19:20])
003194  00a00200  mfence { lm, gm }
003198  e3411f00  loadli.w r3,  12(r30)
00319c  3fa03000  blt.s r1, r3, 8
0031a0  db320600  j 12692
0031a4  e3011f00  loadli.w r3,  8(r30)
0031a8  0b983010  add.s r16, r1, r3
0031ac  9f210000  addli r3, zero, 2
0031b0  0b18f820  mul.s r16, r16, r15
0031b4  33190828  sext_int2long r[19:20], r16
0031b8  2b0800f0  lui r16, 983040
0031bc  17393902  sll.d r[19:20], r[19:20], r3
0031c0  9f017fd6  addli r3, r30, -5320
0031c4  17180101  or r16, r2, r16
0031c8  6bd30100  load.d r[7:8], 0(r3)
0031cc  0b2a2311  add.ul r[21:22], r[7:8], r[19:20]
0031d0  7f286a01  l_gm2lm r16, r22, 0(r[21:22])
0031d4  00a00200  mfence { lm, gm }
0031d8  bf978200  blt.s r5, r8, 484
0031dc  9f0a0000  addli r21, zero, 0
0031e0  1f0a0000  addli r20, zero, 0
0031e4  1f0b0000  addli r22, zero, 0
0031e8  db0c0000  j 100
0031ec  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
0031f0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0031f4  1f1b0b00  addli r22, r22, 1
0031f8  6a7105c0  vsrl.p vr2, r10, vr0
0031fc  ea7115c0  vsrl.p vr3, r10, vr1
003200  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003204  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003208  6af105c0  vsrl.p vr2, r11, vr0
00320c  eaf115c0  vsrl.p vr3, r11, vr1
003210  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003214  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003218  6a7106c0  vsrl.p vr2, r12, vr0
00321c  ea7116c0  vsrl.p vr3, r12, vr1
003220  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003224  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003228  6af106c0  vsrl.p vr2, r13, vr0
00322c  eaf116c0  vsrl.p vr3, r13, vr1
003230  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003234  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003238  fa110040  vextracti.f r3, 0(vr0)
00323c  7a930040  vextracti.f r6, 0(vr1)
003240  8bea3a10  add.f.rn r21, r21, r3
003244  0b6a6a10  add.f.rn r20, r20, r6
003248  b7755b00  beq r22, r5, 380
00324c  1f080b00  addli r16, r22, 0
003250  3730a700  beq r14, r10, 12
003254  17289b00  xor r16, r22, r9
003258  0b980211  add.s r16, r5, r16
00325c  9f010fd7  addli r3, r30, -5248
003260  8b1be820  mul.s r23, r16, r14
003264  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
003268  8b9b7719  sub.s r23, r15, r23
00326c  8b9beb40  min.s r23, r23, r14
003270  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003274  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003278  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00327c  bfcd8bfe  blt.s r23, r8, -144
003280  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003284  1f0c0000  addli r24, zero, 0
003288  8b1c0221  mul.s r25, r4, r16
00328c  1f0d8fd7  addli r26, r30, -5184
003290  9f8d0800  addli r27, r17, 0
003294  92304002  vadd.s.mz vr1{mr1}, zero, vr4
003298  12314002  vadd.s.mz vr2{mr1}, zero, vr4
00329c  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0032a0  0b989d11  add.s r16, r27, r25
0032a4  0b1e9d11  add.s r28, r26, r25
0032a8  1f038800  addli r6, r16, 64
0032ac  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
0032b0  9f038801  addli r7, r16, 192
0032b4  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
0032b8  9f018e01  addli r3, r28, 192
0032bc  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0032c0  1f030801  addli r6, r16, 128
0032c4  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
0032c8  9f030e01  addli r7, r28, 128
0032cc  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0032d0  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
0032d4  c2950302  vload_mask16.mz vr11{mr1}, 0(r7)
0032d8  1f038e00  addli r6, r28, 64
0032dc  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0032e0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0032e4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0032e8  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0032ec  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0032f0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0032f4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0032f8  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
0032fc  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
003300  1f038c00  addli r6, r24, 64
003304  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003308  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00330c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003310  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
003314  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003318  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
00331c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
003320  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
003324  4bab6bfe  ble.s r23, r6, -312
003328  1f030802  addli r6, r16, 256
00332c  9f038802  addli r7, r16, 320
003330  9f010e02  addli r3, r28, 256
003334  1f0c0c01  addli r24, r24, 128
003338  9f8d0d04  addli r27, r27, 512
00333c  1f0d0d04  addli r26, r26, 512
003340  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
003344  1f030803  addli r6, r16, 384
003348  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
00334c  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
003350  9f038e02  addli r7, r28, 320
003354  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
003358  1f038803  addli r6, r16, 448
00335c  1f088e03  addli r16, r28, 448
003360  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
003364  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
003368  1f030e03  addli r6, r28, 384
00336c  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
003370  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
003374  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
003378  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00337c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003380  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003384  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003388  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
00338c  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
003390  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
003394  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
003398  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00339c  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
0033a0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0033a4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0033a8  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0033ac  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0033b0  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0033b4  bf3b7cff  blt.s r24, r23, -276
0033b8  dbc6ffff  j -460
0033bc  1f0a0000  addli r20, zero, 0
0033c0  9f0a0000  addli r21, zero, 0
0033c4  00a00000  mfence { lm }
0033c8  bfa687fe  blt.s r15, r8, -600
0033cc  e3018fd6  loadli.w r3,  -5312(r30)
0033d0  1f0b0000  addli r22, zero, 0
0033d4  8f8a3a18  div.f.rn r21, r21, r3
0033d8  0f083a18  div.f.rn r16, r20, r3
0033dc  e3013f00  loadli.w r3,  24(r30)
0033e0  0bea5a21  mul.f.rn r20, r21, r21
0033e4  0b684819  sub.f.rn r16, r16, r20
0033e8  0bea0a58  neg.f r20, r21
0033ec  9f0a8fd7  addli r21, r30, -5184
0033f0  0b683810  add.f.rn r16, r16, r3
0033f4  ab01803f  lui r3, 260096
0033f8  0f080808  sqrt.f.rn r16, r16
0033fc  0f880119  div.f.rn r16, r3, r16
003400  9f8b8a00  addli r23, r21, 64
003404  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
003408  1f0c4b00  addli r24, r22, 32
00340c  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
003410  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003414  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003418  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
00341c  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003420  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
003424  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
003428  4ba587ff  ble.s r15, r24, -696
00342c  9f8b0a01  addli r23, r21, 128
003430  1f8c8a01  addli r24, r21, 192
003434  1f0b8b00  addli r22, r22, 64
003438  9f8a0a02  addli r21, r21, 256
00343c  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
003440  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
003444  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003448  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
00344c  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003450  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003454  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
003458  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
00345c  bf1efbfe  blt.s r22, r15, -92
003460  5ba2ffff  j -752
003464  80300002  core_id r1
003468  ab630000  lui r7, 6
00346c  1f110000  addli r2, zero, 1
003470  1f038fd7  addli r6, r30, -5184
003474  1f048000  addli r8, zero, 64
003478  1f050010  addli r10, zero, 2048
00347c  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
003480  9bb15000  slli r3, r1, 5
003484  80500102  load_param_i r1, 2
003488  9f830308  addli r7, r7, 1024
00348c  9bb45000  slli r9, r1, 5
003490  b3850128  zext_int2long r[12:13], r3
003494  ab0600f0  lui r13, 983040
003498  97b52502  sll.d r[12:13], r[12:13], r2
00349c  9716d400  or r13, r8, r13
0034a0  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
0034a4  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
0034a8  9bb52100  slli r11, r3, 2
0034ac  8b913410  add.s r3, r9, r3
0034b0  00a00200  mfence { lm, gm }
0034b4  c2000302  vload.mz vr1{mr1}, 0(r6)
0034b8  1386a104  setlt.u r12, r3, r10
0034bc  8b957510  add.s r11, r11, r7
0034c0  9f868500  addli r13, r11, 64
0034c4  66c11180  vmerge_l.hf vr2, vr3, vr1
0034c8  e6c011a0  vmerge_h.hf vr1, vr3, vr1
0034cc  4e902502  vstores_mask16.mz vr2{mr1}, 0(r11)
0034d0  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
0034d4  bb7e06fe  bneq r12, zero, -68
0034d8  2bf10000  lui r2, 15
0034dc  80310002  core_id r3
0034e0  00a00300  mfence { lm, sm, gm }
0034e4  9f020006  addli r5, zero, 768
0034e8  1b11f1ff  ori r2, r2, 4095
0034ec  1b821100  andi r4, r3, 1
0034f0  80210104  csr_set csr3, r2
0034f4  1f010006  addli r2, zero, 768
0034f8  00d00100  sync_group
0034fc  37200200  beq r4, zero, 8
003500  9f02000a  addli r5, zero, 1280
003504  e3411f00  loadli.w r3,  12(r30)
003508  1f140000  addli r8, zero, 1
00350c  bfa88116  blt.s r3, r8, 11816
003510  0b112220  mul.s r2, r4, r2
003514  1bcc1000  srli r24, r1, 1
003518  80300002  core_id r1
00351c  9bb11200  slli r3, r5, 1
003520  67044fd4  storeli.w r4, -5568(r30)
003524  1f824200  addli r4, r5, 32
003528  9f040000  addli r9, zero, 0
00352c  9f797000  addli r19, zero, 63
003530  9f0a0005  addli r21, zero, 640
003534  2b09803f  lui r18, 260096
003538  1f0a2000  addli r20, zero, 16
00353c  1f370000  addli r14, zero, 3
003540  2bee7f00  lui r28, 2046
003544  9f551000  addli r11, zero, 13
003548  1f2b1000  addli r22, zero, 10
00354c  9f0b0003  addli r23, zero, 384
003550  67002fd4  storeli.w r2, -5632(r30)
003554  9bcc1000  srli r25, r1, 1
003558  1bb12200  slli r2, r5, 2
00355c  9f008fd7  addli r1, r30, -5184
003560  67083fd6  storeli.w r3, -5248(r30)
003564  674f4fd2  storeli.w r4, -5644(r30)
003568  2be20700  lui r4, 126
00356c  0b111110  add.s r2, r2, r1
003570  8b911110  add.s r3, r3, r1
003574  1f0181ff  addli r2, r2, -64
003578  670f2fd2  storeli.w r2, -5648(r30)
00357c  1f8181ff  addli r2, r3, -64
003580  abf100fc  lui r3, 1032207
003584  e74e2fd2  storeli.w r2, -5652(r30)
003588  2bf1ffff  lui r2, 1048575
00358c  9b9601c0  ori r13, r3, 3072
003590  00a00000  mfence { lm }
003594  e74f8fd3  storeli.w r24, -5636(r30)
003598  e70f9fd3  storeli.w r25, -5640(r30)
00359c  1b1101f8  ori r2, r2, 3968
0035a0  e70e2fd2  storeli.w r2, -5656(r30)
0035a4  2bf10000  lui r2, 15
0035a8  1b11f1ff  ori r2, r2, 4095
0035ac  67042fd6  storeli.w r2, -5312(r30)
0035b0  2b710000  lui r2, 7
0035b4  1b13f1ff  ori r6, r2, 4095
0035b8  2b01ff03  lui r2, 16368
0035bc  1b16f13f  ori r12, r2, 1023
0035c0  1f010fd5  addli r2, r30, -5504
0035c4  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0035c8  5b040000  j 32
0035cc  00a00300  mfence { lm, sm, gm }
0035d0  63018fd6  loadli.w r2,  -5312(r30)
0035d4  80210104  csr_set csr3, r2
0035d8  00d00100  sync_group
0035dc  8b948411  add.s r9, r9, r24
0035e0  3fa00401  blt.s r9, r16, 8
0035e4  5bc0faff  j -10752
0035e8  0b919411  add.s r2, r9, r25
0035ec  cb0f28fe  ble.s r16, r2, -32
0035f0  e3011f00  loadli.w r3,  8(r30)
0035f4  63050fd4  loadli.w r10,  -5632(r30)
0035f8  0b113110  add.s r2, r2, r3
0035fc  8b818431  div.u r3, r9, r24
003600  1b31b100  slli r2, r2, 11
003604  1711a100  or r2, r2, r10
003608  1f057fd6  addli r10, r30, -5320
00360c  33180128  sext_int2long r[17:18], r2
003610  2b0100f0  lui r2, 983040
003614  9bb16100  slli r3, r3, 6
003618  173d8802  sll.d r[27:28], r[17:18], r8
00361c  eb570500  load.d r[16:17], 0(r10)
003620  63050fd7  loadli.w r10,  -5248(r30)
003624  9b810104  andi r3, r3, 64
003628  0ba8a711  add.ul r[17:18], r[16:17], r[27:28]
00362c  17112500  or r2, r10, r2
003630  7f211800  l_gm2lm r2, r1, 0(r[17:18])
003634  00310002  core_id r2
003638  00a00200  mfence { lm, gm }
00363c  17912100  or r2, r3, r2
003640  e341dfd3  loadli.w r3,  -5652(r30)
003644  6305efd3  loadli.w r10,  -5648(r30)
003648  6348efd3  loadli.w r16,  -5644(r30)
00364c  c2800102  vload.mz vr1{mr1}, 0(r3)
003650  1f08c8ff  addli r16, r16, -32
003654  1f0c85ff  addli r24, r10, -64
003658  9f8181ff  addli r3, r3, -64
00365c  93880905  setlt.u r17, r19, r16
003660  66c111a0  vmerge_h.hf vr2, vr3, vr1
003664  e6c01180  vmerge_l.hf vr1, vr3, vr1
003668  46102502  vstore_mask16.mz vr2{mr1}, 0(r10)
00366c  1f0505ff  addli r10, r10, -128
003670  46101c02  vstore_mask16.mz vr1{mr1}, 0(r24)
003674  3bef08fe  bneq r17, zero, -40
003678  00a00000  mfence { lm }
00367c  1f058fd5  addli r10, r30, -5440
003680  e3018fd4  loadli.w r3,  -5568(r30)
003684  7330a501  store.d r[27:28], 0(r10)
003688  3bb60100  bneq r3, zero, 396
00368c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
003690  12313002  vadd.s.mz vr2{mr1}, zero, vr3
003694  12323002  vadd.s.mz vr4{mr1}, zero, vr3
003698  6305dfd3  loadli.w r10,  -5656(r30)
00369c  9f010000  addli r3, zero, 0
0036a0  8b987110  add.s r17, r3, r7
0036a4  0b983010  add.s r16, r1, r3
0036a8  1f050501  addli r10, r10, 128
0036ac  9f810104  addli r3, r3, 512
0036b0  9f870801  addli r15, r17, 128
0036b4  4a900802  vloads_mask16.mz vr0{mr1}, 0(r17)
0036b8  1f8c8800  addli r24, r17, 64
0036bc  42140802  vload_mask16.mz vr8{mr1}, 0(r16)
0036c0  9f0c8801  addli r25, r16, 192
0036c4  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
0036c8  9f878801  addli r15, r17, 192
0036cc  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0036d0  1f0c8800  addli r24, r16, 64
0036d4  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0036d8  ca930702  vloads_mask16.mz vr7{mr1}, 0(r15)
0036dc  9f070801  addli r15, r16, 128
0036e0  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
0036e4  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
0036e8  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0036ec  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0036f0  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0036f4  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0036f8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0036fc  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
003700  46908702  vstore_mask16.mz vr8{mr1}, 0(r15)
003704  9f870802  addli r15, r17, 256
003708  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00370c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003710  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003714  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003718  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
00371c  9f878802  addli r15, r17, 320
003720  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
003724  9f0c0802  addli r25, r16, 256
003728  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00372c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003730  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003734  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
003738  9f870803  addli r15, r17, 384
00373c  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003740  9f888803  addli r17, r17, 448
003744  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003748  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
00374c  9f078802  addli r15, r16, 320
003750  4a950802  vloads_mask16.mz vr10{mr1}, 0(r17)
003754  9f080803  addli r17, r16, 384
003758  1f088803  addli r16, r16, 448
00375c  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
003760  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003764  c2930802  vload_mask16.mz vr7{mr1}, 0(r17)
003768  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00376c  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
003770  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003774  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003778  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
00377c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003780  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
003784  93075505  setlt.u r15, r10, r21
003788  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00378c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003790  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003794  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003798  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00379c  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
0037a0  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
0037a4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0037a8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0037ac  bbdb07fe  bneq r15, zero, -268
0037b0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0037b4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0037b8  9f010002  addli r3, zero, 256
0037bc  6af101c0  vsrl.p vr2, r3, vr0
0037c0  eaf111c0  vsrl.p vr3, r3, vr1
0037c4  9f010001  addli r3, zero, 128
0037c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037d0  6af101c0  vsrl.p vr2, r3, vr0
0037d4  eaf111c0  vsrl.p vr3, r3, vr1
0037d8  9f018000  addli r3, zero, 64
0037dc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037e0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037e4  6af101c0  vsrl.p vr2, r3, vr0
0037e8  eaf111c0  vsrl.p vr3, r3, vr1
0037ec  9f014000  addli r3, zero, 32
0037f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037f4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037f8  6af101c0  vsrl.p vr2, r3, vr0
0037fc  eaf111c0  vsrl.p vr3, r3, vr1
003800  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003804  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003808  fa110040  vextracti.f r3, 0(vr0)
00380c  7a950040  vextracti.f r10, 0(vr1)
003810  5b660000  j 816
003814  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003818  2bf5ffff  lui r10, 1048575
00381c  9f010000  addli r3, zero, 0
003820  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003824  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003828  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00382c  1b1505f8  ori r10, r10, 3968
003830  8b983310  add.s r17, r7, r3
003834  0b983010  add.s r16, r1, r3
003838  1f050501  addli r10, r10, 128
00383c  9f810104  addli r3, r3, 512
003840  9f870831  addli r15, r17, 6272
003844  1f8c0830  addli r24, r17, 6144
003848  9f8c8831  addli r25, r17, 6336
00384c  9f0d0818  addli r27, r16, 3072
003850  ca930702  vloads_mask16.mz vr7{mr1}, 0(r15)
003854  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
003858  1f8c8830  addli r24, r17, 6208
00385c  ca940c02  vloads_mask16.mz vr9{mr1}, 0(r25)
003860  9f078818  addli r15, r16, 3136
003864  9f0c8819  addli r25, r16, 3264
003868  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
00386c  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
003870  1f0c0819  addli r24, r16, 3200
003874  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
003878  c2950702  vload_mask16.mz vr11{mr1}, 0(r15)
00387c  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
003880  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003884  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
003888  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
00388c  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
003890  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003894  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
003898  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
00389c  1f8c0832  addli r24, r17, 6400
0038a0  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0038a4  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
0038a8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0038ac  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
0038b0  9f0c081a  addli r25, r16, 3328
0038b4  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
0038b8  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
0038bc  9f07081b  addli r15, r16, 3456
0038c0  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0038c4  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0038c8  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
0038cc  1f8c8832  addli r24, r17, 6464
0038d0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0038d4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0038d8  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0038dc  1f8c0833  addli r24, r17, 6528
0038e0  9f888833  addli r17, r17, 6592
0038e4  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
0038e8  1f0c881a  addli r24, r16, 3392
0038ec  4a950802  vloads_mask16.mz vr10{mr1}, 0(r17)
0038f0  1f08881b  addli r16, r16, 3520
0038f4  93087505  setlt.u r17, r10, r23
0038f8  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
0038fc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003900  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
003904  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003908  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
00390c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003910  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003914  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003918  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00391c  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
003920  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003924  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003928  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00392c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003930  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003934  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
003938  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
00393c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003940  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003944  bbbb08fe  bneq r17, zero, -276
003948  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00394c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003950  9f010002  addli r3, zero, 256
003954  abf7ffff  lui r15, 1048575
003958  1f0c0000  addli r24, zero, 0
00395c  1b9807f8  ori r16, r15, 3968
003960  eaf111c0  vsrl.p vr3, r3, vr1
003964  6af101c0  vsrl.p vr2, r3, vr0
003968  9f010001  addli r3, zero, 128
00396c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003970  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003974  eaf111c0  vsrl.p vr3, r3, vr1
003978  6af101c0  vsrl.p vr2, r3, vr0
00397c  9f018000  addli r3, zero, 64
003980  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003984  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003988  eaf111c0  vsrl.p vr3, r3, vr1
00398c  6af101c0  vsrl.p vr2, r3, vr0
003990  9f014000  addli r3, zero, 32
003994  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003998  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00399c  eaf111c0  vsrl.p vr3, r3, vr1
0039a0  6af101c0  vsrl.p vr2, r3, vr0
0039a4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0039a8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0039ac  7a950040  vextracti.f r10, 0(vr1)
0039b0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0039b4  fa110040  vextracti.f r3, 0(vr0)
0039b8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0039bc  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0039c0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0039c4  8b9d8311  add.s r27, r7, r24
0039c8  8b988011  add.s r17, r1, r24
0039cc  1f080801  addli r16, r16, 128
0039d0  1f0c0c04  addli r24, r24, 512
0039d4  9f870d18  addli r15, r27, 3072
0039d8  9f8c0d19  addli r25, r27, 3200
0039dc  42940802  vload_mask16.mz vr8{mr1}, 0(r17)
0039e0  1f8d8801  addli r26, r17, 192
0039e4  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
0039e8  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
0039ec  9f878d18  addli r15, r27, 3136
0039f0  9f8c8d19  addli r25, r27, 3264
0039f4  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
0039f8  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
0039fc  9f870801  addli r15, r17, 128
003a00  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
003a04  9f8c8800  addli r25, r17, 64
003a08  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
003a0c  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
003a10  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
003a14  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
003a18  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
003a1c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
003a20  46908702  vstore_mask16.mz vr8{mr1}, 0(r15)
003a24  9f870d1a  addli r15, r27, 3328
003a28  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003a2c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003a30  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003a34  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003a38  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
003a3c  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
003a40  9f878d1a  addli r15, r27, 3392
003a44  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
003a48  1f8d0802  addli r26, r17, 256
003a4c  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
003a50  9f8c0803  addli r25, r17, 384
003a54  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003a58  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003a5c  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
003a60  9f870d1b  addli r15, r27, 3456
003a64  c2130d02  vload_mask16.mz vr7{mr1}, 0(r26)
003a68  9f8d8d1b  addli r27, r27, 3520
003a6c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003a70  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003a74  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
003a78  9f878802  addli r15, r17, 320
003a7c  4a950d02  vloads_mask16.mz vr10{mr1}, 0(r27)
003a80  9f888803  addli r17, r17, 448
003a84  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
003a88  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003a8c  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003a90  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003a94  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
003a98  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003a9c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003aa0  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
003aa4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003aa8  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
003aac  93075805  setlt.u r15, r16, r21
003ab0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003ab4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003ab8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003abc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003ac0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003ac4  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
003ac8  46907802  vstore_mask16.mz vr7{mr1}, 0(r17)
003acc  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003ad0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003ad4  bbcb07fe  bneq r15, zero, -272
003ad8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003adc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003ae0  9f070002  addli r15, zero, 256
003ae4  6af107c0  vsrl.p vr2, r15, vr0
003ae8  eaf117c0  vsrl.p vr3, r15, vr1
003aec  9f070001  addli r15, zero, 128
003af0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003af4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003af8  6af107c0  vsrl.p vr2, r15, vr0
003afc  eaf117c0  vsrl.p vr3, r15, vr1
003b00  9f078000  addli r15, zero, 64
003b04  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003b08  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003b0c  6af107c0  vsrl.p vr2, r15, vr0
003b10  eaf117c0  vsrl.p vr3, r15, vr1
003b14  9f074000  addli r15, zero, 32
003b18  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003b1c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003b20  6af107c0  vsrl.p vr2, r15, vr0
003b24  eaf117c0  vsrl.p vr3, r15, vr1
003b28  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003b2c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003b30  fa170040  vextracti.f r15, 0(vr0)
003b34  7a980040  vextracti.f r16, 0(vr1)
003b38  8be1f110  add.f.rn r3, r3, r15
003b3c  0b650511  add.f.rn r10, r10, r16
003b40  2b8d0000  lui r26, 8
003b44  ab8d0000  lui r27, 8
003b48  9b372100  slli r15, r2, 2
003b4c  634cffd3  loadli.w r24,  -5636(r30)
003b50  e30cffd3  loadli.w r25,  -5640(r30)
003b54  1b01e107  andi r2, r2, 126
003b58  1f0d0d08  addli r26, r26, 1024
003b5c  9f8d0d0c  addli r27, r27, 1536
003b60  1b312100  slli r2, r2, 2
003b64  0b98a711  add.s r16, r15, r26
003b68  8b98b711  add.s r17, r15, r27
003b6c  73603800  stores.w r3, 0(r16)
003b70  73e0a800  stores.w r10, 0(r17)
003b74  1f088fd7  addli r16, r30, -5184
003b78  9f080000  addli r17, zero, 0
003b7c  00a00300  mfence { lm, sm, gm }
003b80  e3018fd6  loadli.w r3,  -5312(r30)
003b84  80a10104  csr_set csr3, r3
003b88  9b914700  ori r3, r15, 4
003b8c  8b17a111  add.s r15, r2, r26
003b90  00d00100  sync_group
003b94  0b11b111  add.s r2, r2, r27
003b98  0b95a111  add.s r10, r3, r26
003b9c  efc70700  loads.w r15, 0(r15)
003ba0  8b91b111  add.s r3, r3, r27
003ba4  6f410100  loads.w r2, 0(r2)
003ba8  6f450500  loads.w r10, 0(r10)
003bac  efc10100  loads.w r3, 0(r3)
003bb0  0b65f510  add.f.rn r10, r10, r15
003bb4  ab07003a  lui r15, 237568
003bb8  0be12110  add.f.rn r2, r3, r2
003bbc  8b61f520  mul.f.rn r3, r10, r15
003bc0  0b61f120  mul.f.rn r2, r2, r15
003bc4  0be53120  mul.f.rn r10, r3, r3
003bc8  8be10158  neg.f r3, r3
003bcc  0b61a118  sub.f.rn r2, r2, r10
003bd0  63053f00  loadli.w r10,  24(r30)
003bd4  0b61a110  add.f.rn r2, r2, r10
003bd8  1f058fd7  addli r10, r30, -5184
003bdc  0f010108  sqrt.f.rn r2, r2
003be0  0f012918  div.f.rn r2, r18, r2
003be4  9f078800  addli r15, r16, 64
003be8  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
003bec  9f884800  addli r17, r17, 32
003bf0  1f080801  addli r16, r16, 128
003bf4  c2900702  vload_mask16.mz vr1{mr1}, 0(r15)
003bf8  93875804  setlt.u r15, r17, r5
003bfc  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
003c00  12911102  vadd.f.mz.rn vr2{mr1}, r3, vr1
003c04  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003c08  ea211a22  vor.u.mz vr3{mr1}, r20, vr1
003c0c  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
003c10  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
003c14  6eb201c2  vsrl.s.mz vr4{mr1}, vr3, vr0
003c18  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003c1c  6a324402  vand.s.mz vr4{mr1}, r8, vr4
003c20  ea313402  vand.s.mz vr3{mr1}, r8, vr3
003c24  16304002  vadd.s.mz vr0{mr1}, vr0, vr4
003c28  6a221722  vor.u.mz vr4{mr1}, r14, vr1
003c2c  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
003c30  eaa11522  vor.u.mz vr3{mr1}, r11, vr1
003c34  ea201b22  vor.u.mz vr1{mr1}, r22, vr1
003c38  12300302  vadd.s.mz vr0{mr1}, r6, vr0
003c3c  12312302  vadd.s.mz vr2{mr1}, r6, vr2
003c40  eeb201c2  vsrl.s.mz vr5{mr1}, vr3, vr0
003c44  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
003c48  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003c4c  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
003c50  6a325202  vand.s.mz vr4{mr1}, r4, vr5
003c54  6a300e02  vand.s.mz vr0{mr1}, r28, vr0
003c58  ea313202  vand.s.mz vr3{mr1}, r4, vr3
003c5c  6a312e02  vand.s.mz vr2{mr1}, r28, vr2
003c60  6a300922  vor.s.mz vr0{mr1}, r18, vr0
003c64  6a324922  vor.s.mz vr4{mr1}, r18, vr4
003c68  ea313922  vor.s.mz vr3{mr1}, r18, vr3
003c6c  6a312922  vor.s.mz vr2{mr1}, r18, vr2
003c70  06100020  vfloat2fp16_l.rz vr0, vr0
003c74  86d10120  vfloat2fp16_h.rz vr3, vr3
003c78  06500120  vfloat2fp16_h.rz vr0, vr2
003c7c  86110220  vfloat2fp16_l.rz vr3, vr4
003c80  6a300602  vand.s.mz vr0{mr1}, r12, vr0
003c84  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
003c88  eab01602  vand.s.mz vr1{mr1}, r13, vr1
003c8c  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
003c90  46000502  vstore.mz vr0{mr1}, 0(r10)
003c94  1f058500  addli r10, r10, 64
003c98  3bbd07fe  bneq r15, zero, -180
003c9c  9f018fd5  addli r3, r30, -5440
003ca0  eb570f00  load.d r[16:17], 0(r30)
003ca4  2b0100f0  lui r2, 983040
003ca8  6bdd0100  load.d r[27:28], 0(r3)
003cac  e3010fd7  loadli.w r3,  -5248(r30)
003cb0  00a00000  mfence { lm }
003cb4  8ba7a711  add.ul r[16:17], r[16:17], r[27:28]
003cb8  17912100  or r2, r3, r2
003cbc  7fb11700  s_lm2gm r2, r1, 0(r[16:17])
003cc0  1f010fd5  addli r2, r30, -5504
003cc4  00a00200  mfence { lm, gm }
003cc8  63481f00  loadli.w r16,  12(r30)
003ccc  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
003cd0  db21ffff  j -1780
003cd4  00360002  core_id r12
003cd8  63012f00  loadli.w r2,  16(r30)
003cdc  9b305600  slli r1, r12, 5
003ce0  cb211100  ble.s r2, r1, 104
003ce4  80530102  load_param_i r7, 2
003ce8  2bc40000  lui r8, 12
003cec  1f110000  addli r2, zero, 1
003cf0  9f018fd7  addli r3, r30, -5184
003cf4  1f038000  addli r6, zero, 64
003cf8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003cfc  9bb35300  slli r7, r7, 5
003d00  1f0404f0  addli r8, r8, -2048
003d04  b3840028  zext_int2long r[10:11], r1
003d08  ab0500f0  lui r11, 983040
003d0c  97b42402  sll.d r[10:11], r[10:11], r2
003d10  9715b300  or r11, r6, r11
003d14  8b249210  add.ul r[10:11], r[5:6], r[10:11]
003d18  ffa53400  l_gm2lm r11, r3, 0(r[10:11])
003d1c  9bb42000  slli r9, r1, 2
003d20  8b901310  add.s r1, r7, r1
003d24  00a00200  mfence { lm, gm }
003d28  c2800102  vload.mz vr1{mr1}, 0(r3)
003d2c  8b948410  add.s r9, r9, r8
003d30  1f858400  addli r10, r9, 64
003d34  66411080  vmerge_l.hf vr2, vr0, vr1
003d38  e64010a0  vmerge_h.hf vr1, vr0, vr1
003d3c  4e902402  vstores_mask16.mz vr2{mr1}, 0(r9)
003d40  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
003d44  3f8ff0fe  blt.s r1, r15, -64
003d48  abf00000  lui r1, 15
003d4c  63411f00  loadli.w r2,  12(r30)
003d50  00a00300  mfence { lm, sm, gm }
003d54  9b90f0ff  ori r1, r1, 4095
003d58  80a10004  csr_set csr3, r1
003d5c  00d00100  sync_group
003d60  4b57c112  ble.s r2, r12, 9684
003d64  e3002f00  loadli.w r1,  16(r30)
003d68  63412f00  loadli.w r2,  20(r30)
003d6c  9f038fd7  addli r7, r30, -5184
003d70  1f150000  addli r10, zero, 1
003d74  9f054000  addli r11, zero, 32
003d78  1f747000  addli r8, zero, 63
003d7c  1f080002  addli r16, zero, 256
003d80  9f040001  addli r9, zero, 128
003d84  ab09803f  lui r19, 260096
003d88  abeb7f00  lui r23, 2046
003d8c  abec0700  lui r25, 126
003d90  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003d94  8b912010  add.s r3, r1, r2
003d98  33820008  fix2float.rn r4, r1
003d9c  1bb31000  slli r6, r1, 1
003da0  9bb22000  slli r5, r1, 2
003da4  9f804000  addli r1, r1, 32
003da8  9b382100  slli r17, r2, 2
003dac  e74f1fd2  storeli.w r1, -5636(r30)
003db0  8b907210  add.s r1, r5, r7
003db4  9ff1f1ff  addli r3, r3, -1
003db8  67004fd4  storeli.w r4, -5632(r30)
003dbc  0b922130  div.s r4, r3, r2
003dc0  9f8080ff  addli r1, r1, -64
003dc4  8b117310  add.s r3, r6, r7
003dc8  e70f1fd2  storeli.w r1, -5640(r30)
003dcc  9f8081ff  addli r1, r3, -64
003dd0  674f1fd2  storeli.w r1, -5644(r30)
003dd4  abf0ffff  lui r1, 1048575
003dd8  00a00000  mfence { lm }
003ddc  67046fd4  storeli.w r6, -5568(r30)
003de0  9b90f0ff  ori r1, r1, 4095
003de4  67041fd6  storeli.w r1, -5312(r30)
003de8  ab700000  lui r1, 7
003dec  9b9af0ff  ori r21, r1, 4095
003df0  ab00ff03  lui r1, 16368
003df4  1b9df03f  ori r26, r1, 1023
003df8  abf000fc  lui r1, 1032207
003dfc  1b9e00c0  ori r28, r1, 3072
003e00  9f000fd7  addli r1, r30, -5248
003e04  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
003e08  db090000  j 76
003e0c  9f010fd5  addli r3, r30, -5504
003e10  eb500f00  load.d r[2:3], 0(r30)
003e14  9f038fd7  addli r7, r30, -5184
003e18  1f747000  addli r8, zero, 63
003e1c  ebd20100  load.d r[6:7], 0(r3)
003e20  00a00000  mfence { lm }
003e24  ab0100f0  lui r3, 983040
003e28  63068fd5  loadli.w r12,  -5440(r30)
003e2c  8ba05010  add.ul r[2:3], r[2:3], r[6:7]
003e30  63038fd4  loadli.w r6,  -5568(r30)
003e34  80520102  load_param_i r5, 2
003e38  0b96c210  add.s r12, r5, r12
003e3c  97113300  or r3, r6, r3
003e40  ffb17000  s_lm2gm r3, r7, 0(r[2:3])
003e44  00a00200  mfence { lm, gm }
003e48  e3401f00  loadli.w r1,  12(r30)
003e4c  3f201600  blt.s r12, r1, 8
003e50  db9c0400  j 9444
003e54  e3001f00  loadli.w r1,  8(r30)
003e58  9f027fd6  addli r5, r30, -5320
003e5c  9f860800  addli r13, r17, 0
003e60  8b101610  add.s r1, r12, r1
003e64  8b90f020  mul.s r1, r1, r15
003e68  b3900028  sext_int2long r[2:3], r1
003e6c  97b8a002  sll.d r[18:19], r[2:3], r10
003e70  6bd10200  load.d r[3:4], 0(r5)
003e74  ab0000f0  lui r1, 983040
003e78  9f020fd5  addli r5, r30, -5504
003e7c  97101300  or r1, r6, r1
003e80  73b01201  store.d r[18:19], 0(r5)
003e84  0b211111  add.ul r[3:4], r[3:4], r[18:19]
003e88  ff207100  l_gm2lm r1, r7, 0(r[3:4])
003e8c  00a00200  mfence { lm, gm }
003e90  bff0b700  blt.s r15, r11, 60
003e94  e340efd3  loadli.w r1,  -5644(r30)
003e98  6301ffd3  loadli.w r2,  -5640(r30)
003e9c  e341ffd3  loadli.w r3,  -5636(r30)
003ea0  c2800002  vload.mz vr1{mr1}, 0(r1)
003ea4  9f81c1ff  addli r3, r3, -32
003ea8  1f0381ff  addli r6, r2, -64
003eac  9f8080ff  addli r1, r1, -64
003eb0  93023404  setlt.u r5, r8, r3
003eb4  664110a0  vmerge_h.hf vr2, vr0, vr1
003eb8  e6401080  vmerge_l.hf vr1, vr0, vr1
003ebc  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
003ec0  1f0101ff  addli r2, r2, -128
003ec4  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
003ec8  3bef02fe  bneq r5, zero, -40
003ecc  670ccfd4  storeli.w r12, -5440(r30)
003ed0  00a00000  mfence { lm }
003ed4  bf77a200  blt.s r4, r10, 508
003ed8  9f010000  addli r3, zero, 0
003edc  9f020000  addli r5, zero, 0
003ee0  1f010000  addli r2, zero, 0
003ee4  9f880600  addli r17, r13, 0
003ee8  1f098000  addli r18, zero, 64
003eec  db0d0000  j 108
003ef0  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
003ef4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003ef8  1f110100  addli r2, r2, 1
003efc  6a7108c0  vsrl.p vr2, r16, vr0
003f00  ea7118c0  vsrl.p vr3, r16, vr1
003f04  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f08  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f0c  6af104c0  vsrl.p vr2, r9, vr0
003f10  eaf114c0  vsrl.p vr3, r9, vr1
003f14  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f18  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f1c  6a7109c0  vsrl.p vr2, r18, vr0
003f20  ea7119c0  vsrl.p vr3, r18, vr1
003f24  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f28  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f2c  6af105c0  vsrl.p vr2, r11, vr0
003f30  eaf115c0  vsrl.p vr3, r11, vr1
003f34  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f38  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f3c  fa100040  vextracti.f r1, 0(vr0)
003f40  7a930040  vextracti.f r6, 0(vr1)
003f44  8be11110  add.f.rn r3, r3, r1
003f48  9f000fd7  addli r1, r30, -5248
003f4c  8be26210  add.f.rn r5, r5, r6
003f50  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
003f54  37264100  beq r2, r4, 392
003f58  9f000100  addli r1, r2, 0
003f5c  37400701  beq r14, r16, 16
003f60  e3008fd6  loadli.w r1,  -5312(r30)
003f64  97201100  xor r1, r2, r1
003f68  8b101210  add.s r1, r4, r1
003f6c  0b93e020  mul.s r6, r1, r14
003f70  12320002  vadd.s.mz vr4{mr1}, zero, vr0
003f74  92310002  vadd.s.mz vr3{mr1}, zero, vr0
003f78  12310002  vadd.s.mz vr2{mr1}, zero, vr0
003f7c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
003f80  0b936718  sub.s r6, r15, r6
003f84  8b13e340  min.s r7, r6, r14
003f88  bfada3fe  blt.s r7, r10, -152
003f8c  9f060fd7  addli r13, r30, -5248
003f90  2bc60000  lui r12, 12
003f94  0b931820  mul.s r6, r17, r1
003f98  1f040000  addli r8, zero, 0
003f9c  9f008fd7  addli r1, r30, -5184
003fa0  42920602  vload_mask16.mz vr4{mr1}, 0(r13)
003fa4  1f0606f0  addli r12, r12, -2048
003fa8  92304002  vadd.s.mz vr1{mr1}, zero, vr4
003fac  12314002  vadd.s.mz vr2{mr1}, zero, vr4
003fb0  92314002  vadd.s.mz vr3{mr1}, zero, vr4
003fb4  0b1a6610  add.s r20, r12, r6
003fb8  8b966010  add.s r13, r1, r6
003fbc  1f0b8a00  addli r22, r20, 64
003fc0  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
003fc4  1f0c8a01  addli r24, r20, 192
003fc8  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
003fcc  9f8d8601  addli r27, r13, 192
003fd0  4a130b02  vloads_mask16.mz vr6{mr1}, 0(r22)
003fd4  1f0b0a01  addli r22, r20, 128
003fd8  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
003fdc  1f8c0601  addli r24, r13, 128
003fe0  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
003fe4  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
003fe8  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
003fec  1f8b8600  addli r22, r13, 64
003ff0  42150b02  vload_mask16.mz vr10{mr1}, 0(r22)
003ff4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
003ff8  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
003ffc  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
004000  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
004004  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004008  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00400c  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
004010  46106b02  vstore_mask16.mz vr6{mr1}, 0(r22)
004014  1f0b8400  addli r22, r8, 64
004018  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
00401c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004020  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004024  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
004028  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00402c  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
004030  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
004034  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
004038  cbea63ff  ble.s r7, r22, -328
00403c  1f0c0a02  addli r24, r20, 256
004040  9f0d8a02  addli r27, r20, 320
004044  1f8b0602  addli r22, r13, 256
004048  1f040401  addli r8, r8, 128
00404c  1f060604  addli r12, r12, 512
004050  9f800004  addli r1, r1, 512
004054  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
004058  1f0c0a03  addli r24, r20, 384
00405c  1f0a8a03  addli r20, r20, 448
004060  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
004064  42130b02  vload_mask16.mz vr6{mr1}, 0(r22)
004068  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
00406c  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
004070  1f8a0603  addli r20, r13, 384
004074  1f8c8602  addli r24, r13, 320
004078  9f868603  addli r13, r13, 448
00407c  42150a02  vload_mask16.mz vr10{mr1}, 0(r20)
004080  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
004084  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
004088  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
00408c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004090  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
004094  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004098  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00409c  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
0040a0  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
0040a4  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0040a8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0040ac  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0040b0  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
0040b4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0040b8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0040bc  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0040c0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0040c4  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
0040c8  bf3b74fe  blt.s r8, r7, -276
0040cc  dbc4ffff  j -476
0040d0  9f020000  addli r5, zero, 0
0040d4  9f010000  addli r3, zero, 0
0040d8  9f880600  addli r17, r13, 0
0040dc  1f042000  addli r8, zero, 16
0040e0  1f360000  addli r12, zero, 3
0040e4  9f561000  addli r13, zero, 13
0040e8  1f2a1000  addli r20, zero, 10
0040ec  00a00000  mfence { lm }
0040f0  3ff4a7fe  blt.s r15, r10, -740
0040f4  e3000fd4  loadli.w r1,  -5632(r30)
0040f8  1f030000  addli r6, zero, 0
0040fc  0f811118  div.f.rn r2, r3, r1
004100  8f801218  div.f.rn r1, r5, r1
004104  9f028fd7  addli r5, r30, -5184
004108  8b612120  mul.f.rn r3, r2, r2
00410c  0b610158  neg.f r2, r2
004110  8be03018  sub.f.rn r1, r1, r3
004114  e3013f00  loadli.w r3,  24(r30)
004118  8be03010  add.f.rn r1, r1, r3
00411c  9f018fd7  addli r3, r30, -5184
004120  8f800008  sqrt.f.rn r1, r1
004124  8f801918  div.f.rn r1, r19, r1
004128  9f838200  addli r7, r5, 64
00412c  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
004130  1f034300  addli r6, r6, 32
004134  9f820201  addli r5, r5, 128
004138  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
00413c  92111102  vadd.f.mz.rn vr3{mr1}, r2, vr1
004140  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004144  6a221422  vor.u.mz vr4{mr1}, r8, vr1
004148  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
00414c  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
004150  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
004154  ee3232c2  vsrl.s.mz vr5{mr1}, vr4, vr3
004158  6e3222c2  vsrl.s.mz vr4{mr1}, vr4, vr2
00415c  ea325502  vand.s.mz vr5{mr1}, r10, vr5
004160  6a324502  vand.s.mz vr4{mr1}, r10, vr4
004164  96b15102  vadd.s.mz vr3{mr1}, vr3, vr5
004168  ea221622  vor.u.mz vr5{mr1}, r12, vr1
00416c  16314102  vadd.s.mz vr2{mr1}, vr2, vr4
004170  6aa21622  vor.u.mz vr4{mr1}, r13, vr1
004174  ea201a22  vor.u.mz vr1{mr1}, r20, vr1
004178  92b13a02  vadd.s.mz vr3{mr1}, r21, vr3
00417c  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
004180  6e3332c2  vsrl.s.mz vr6{mr1}, vr4, vr3
004184  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
004188  6e3222c2  vsrl.s.mz vr4{mr1}, vr4, vr2
00418c  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
004190  eab26c02  vand.s.mz vr5{mr1}, r25, vr6
004194  eab13b02  vand.s.mz vr3{mr1}, r23, vr3
004198  6ab24c02  vand.s.mz vr4{mr1}, r25, vr4
00419c  6ab12b02  vand.s.mz vr2{mr1}, r23, vr2
0041a0  eab25922  vor.s.mz vr5{mr1}, r19, vr5
0041a4  eab13922  vor.s.mz vr3{mr1}, r19, vr3
0041a8  6ab24922  vor.s.mz vr4{mr1}, r19, vr4
0041ac  6ab12922  vor.s.mz vr2{mr1}, r19, vr2
0041b0  06520220  vfloat2fp16_h.rz vr4, vr4
0041b4  06510120  vfloat2fp16_h.rz vr2, vr2
0041b8  06920220  vfloat2fp16_l.rz vr4, vr5
0041bc  06910120  vfloat2fp16_l.rz vr2, vr3
0041c0  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
0041c4  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
0041c8  ea301e02  vand.s.mz vr1{mr1}, r28, vr1
0041cc  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
0041d0  46801102  vstore.mz vr1{mr1}, 0(r3)
0041d4  9f818100  addli r3, r3, 64
0041d8  3f4df3fe  blt.s r6, r15, -176
0041dc  5b86ffff  j -976
0041e0  ab330100  lui r7, 19
0041e4  803a0002  core_id r21
0041e8  00510102  load_param_i r2, 2
0041ec  9f100000  addli r1, zero, 1
0041f0  1f038fd7  addli r6, r30, -5184
0041f4  1f048000  addli r8, zero, 64
0041f8  1f050010  addli r10, zero, 2048
0041fc  9bb15a00  slli r3, r21, 5
004200  9b345100  slli r9, r2, 5
004204  9f8303f8  addli r7, r7, -1024
004208  b3850128  zext_int2long r[12:13], r3
00420c  ab0600f0  lui r13, 983040
004210  97b51502  sll.d r[12:13], r[12:13], r1
004214  9716d400  or r13, r8, r13
004218  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
00421c  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
004220  9bb52100  slli r11, r3, 2
004224  8b913410  add.s r3, r9, r3
004228  00a00200  mfence { lm, gm }
00422c  42000302  vload.mz vr0{mr1}, 0(r6)
004230  1386a104  setlt.u r12, r3, r10
004234  8b957510  add.s r11, r11, r7
004238  9f868500  addli r13, r11, 64
00423c  86300000  vfp162float_l.rn vr1, vr0
004240  06700000  vfp162float_h.rn vr0, vr0
004244  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
004248  4e900602  vstores_mask16.mz vr0{mr1}, 0(r13)
00424c  bb7e06fe  bneq r12, zero, -68
004250  abf00000  lui r1, 15
004254  00a00300  mfence { lm, sm, gm }
004258  9b8d1a00  andi r27, r21, 1
00425c  1f020006  addli r4, zero, 768
004260  9b91f0ff  ori r3, r1, 4095
004264  80a10104  csr_set csr3, r3
004268  9f010006  addli r3, zero, 768
00426c  00d00100  sync_group
004270  37a00d00  beq r27, zero, 8
004274  1f02000a  addli r4, zero, 1280
004278  e3421f00  loadli.w r5,  12(r30)
00427c  1f1b0000  addli r22, zero, 1
004280  bfd26211  blt.s r5, r22, 8372
004284  8b903d20  mul.s r1, r27, r3
004288  9b451100  srli r11, r2, 1
00428c  1b312200  slli r2, r4, 2
004290  1f058fd7  addli r10, r30, -5184
004294  9b361200  slli r13, r4, 1
004298  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00429c  ab5c0100  lui r25, 21
0042a0  2b590100  lui r18, 21
0042a4  1f040000  addli r8, zero, 0
0042a8  1bc61a00  srli r12, r21, 1
0042ac  9f787000  addli r17, zero, 63
0042b0  1f0a0005  addli r20, zero, 640
0042b4  9f0b8000  addli r23, zero, 64
0042b8  1f0c4000  addli r24, zero, 32
0042bc  1f0e0003  addli r28, zero, 384
0042c0  67081fd6  storeli.w r1, -5248(r30)
0042c4  9f004200  addli r1, r4, 32
0042c8  0b11a110  add.s r2, r2, r10
0042cc  8b91a610  add.s r3, r13, r10
0042d0  9f8c0cf8  addli r25, r25, -1024
0042d4  1f0909fc  addli r18, r18, -512
0042d8  67041fd6  storeli.w r1, -5312(r30)
0042dc  9f0081ff  addli r1, r2, -64
0042e0  1f018fd4  addli r2, r30, -5568
0042e4  670c1fd4  storeli.w r1, -5440(r30)
0042e8  9f8081ff  addli r1, r3, -64
0042ec  67081fd4  storeli.w r1, -5504(r30)
0042f0  abf0ffff  lui r1, 1048575
0042f4  00a00000  mfence { lm }
0042f8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0042fc  2bf10000  lui r2, 15
004300  9b9000f8  ori r1, r1, 3968
004304  1b1df1ff  ori r26, r2, 4095
004308  67001fd4  storeli.w r1, -5632(r30)
00430c  db030000  j 28
004310  00a00300  mfence { lm, sm, gm }
004314  80210d04  csr_set csr3, r26
004318  00d00100  sync_group
00431c  0b14b410  add.s r8, r8, r11
004320  3f200401  blt.s r8, r16, 8
004324  5b18f9ff  j -14144
004328  0b11c410  add.s r2, r8, r12
00432c  cb1f28fe  ble.s r16, r2, -28
004330  e3001f00  loadli.w r1,  8(r30)
004334  8b01b430  div.u r3, r8, r11
004338  0b111110  add.s r2, r2, r1
00433c  e3000fd7  loadli.w r1,  -5248(r30)
004340  1b31b100  slli r2, r2, 11
004344  9bb16100  slli r3, r3, 6
004348  17111100  or r2, r2, r1
00434c  9f007fd6  addli r1, r30, -5320
004350  9b810104  andi r3, r3, 64
004354  b3120128  sext_int2long r[6:7], r2
004358  6bd70000  load.d r[15:16], 0(r1)
00435c  2b0100f0  lui r2, 983040
004360  97b26203  sll.d r[6:7], r[6:7], r22
004364  17912600  or r2, r13, r2
004368  0b275710  add.ul r[15:16], r[15:16], r[6:7]
00436c  7f21a700  l_gm2lm r2, r10, 0(r[15:16])
004370  17915101  or r2, r3, r21
004374  00a00200  mfence { lm, gm }
004378  e3010fd5  loadli.w r3,  -5504(r30)
00437c  e3048fd5  loadli.w r9,  -5440(r30)
004380  63078fd6  loadli.w r14,  -5312(r30)
004384  c2800102  vload.mz vr1{mr1}, 0(r3)
004388  1f07c7ff  addli r14, r14, -32
00438c  9f8984ff  addli r19, r9, -64
004390  9f8181ff  addli r3, r3, -64
004394  9387e804  setlt.u r15, r17, r14
004398  06f10000  vfp162float_h.rn vr2, vr1
00439c  86b00000  vfp162float_l.rn vr1, vr1
0043a0  46902402  vstore_mask16.mz vr2{mr1}, 0(r9)
0043a4  9f8404ff  addli r9, r9, -128
0043a8  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
0043ac  3bef07fe  bneq r15, zero, -40
0043b0  00a00000  mfence { lm }
0043b4  3bb60d00  bneq r27, zero, 396
0043b8  9f008fd4  addli r1, r30, -5568
0043bc  e3040fd4  loadli.w r9,  -5632(r30)
0043c0  9f010000  addli r3, zero, 0
0043c4  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0043c8  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0043cc  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0043d0  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0043d4  8b977110  add.s r15, r3, r7
0043d8  0b173510  add.s r14, r10, r3
0043dc  9f840401  addli r9, r9, 128
0043e0  9f810104  addli r3, r3, 512
0043e4  9f800701  addli r1, r15, 128
0043e8  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
0043ec  1f888700  addli r16, r15, 64
0043f0  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
0043f4  9f098701  addli r19, r14, 192
0043f8  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
0043fc  9f808701  addli r1, r15, 192
004400  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
004404  1f088700  addli r16, r14, 64
004408  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
00440c  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
004410  9f000701  addli r1, r14, 128
004414  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
004418  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00441c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004420  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004424  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004428  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00442c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004430  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
004434  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
004438  9f800702  addli r1, r15, 256
00443c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004440  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004444  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004448  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
00444c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
004450  9f808702  addli r1, r15, 320
004454  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
004458  9f090702  addli r19, r14, 256
00445c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004460  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004464  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004468  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
00446c  9f800703  addli r1, r15, 384
004470  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
004474  9f878703  addli r15, r15, 448
004478  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00447c  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
004480  9f008702  addli r1, r14, 320
004484  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
004488  9f070703  addli r15, r14, 384
00448c  1f078703  addli r14, r14, 448
004490  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
004494  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004498  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
00449c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0044a0  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
0044a4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0044a8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0044ac  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
0044b0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0044b4  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0044b8  93804405  setlt.u r1, r9, r20
0044bc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0044c0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0044c4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0044c8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0044cc  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0044d0  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
0044d4  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
0044d8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0044dc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0044e0  bbdb00fe  bneq r1, zero, -268
0044e4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0044e8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0044ec  9f000002  addli r1, zero, 256
0044f0  6af100c0  vsrl.p vr2, r1, vr0
0044f4  eaf110c0  vsrl.p vr3, r1, vr1
0044f8  9f000001  addli r1, zero, 128
0044fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004500  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004504  6af100c0  vsrl.p vr2, r1, vr0
004508  eaf110c0  vsrl.p vr3, r1, vr1
00450c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004510  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004514  6af10bc0  vsrl.p vr2, r23, vr0
004518  eaf11bc0  vsrl.p vr3, r23, vr1
00451c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004520  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004524  6a710cc0  vsrl.p vr2, r24, vr0
004528  ea711cc0  vsrl.p vr3, r24, vr1
00452c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004530  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004534  fa110040  vextracti.f r3, 0(vr0)
004538  fa940040  vextracti.f r9, 0(vr1)
00453c  5b660000  j 816
004540  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004544  abf0ffff  lui r1, 1048575
004548  1f8b0d00  addli r22, r27, 0
00454c  9f010000  addli r3, zero, 0
004550  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004554  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004558  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00455c  9b9400f8  ori r9, r1, 3968
004560  0b973310  add.s r14, r7, r3
004564  8b193510  add.s r19, r10, r3
004568  9f840401  addli r9, r9, 128
00456c  9f810104  addli r3, r3, 512
004570  1f080731  addli r16, r14, 6272
004574  9f070730  addli r15, r14, 6144
004578  9f008731  addli r1, r14, 6336
00457c  9f8d0918  addli r27, r19, 3072
004580  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
004584  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
004588  9f078730  addli r15, r14, 6208
00458c  ca940002  vloads_mask16.mz vr9{mr1}, 0(r1)
004590  9f808918  addli r1, r19, 3136
004594  1f888919  addli r16, r19, 3264
004598  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
00459c  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
0045a0  9f870919  addli r15, r19, 3200
0045a4  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
0045a8  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0045ac  42950702  vload_mask16.mz vr10{mr1}, 0(r15)
0045b0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0045b4  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0045b8  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0045bc  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0045c0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0045c4  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0045c8  46907702  vstore_mask16.mz vr7{mr1}, 0(r15)
0045cc  9f070732  addli r15, r14, 6400
0045d0  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0045d4  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
0045d8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0045dc  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
0045e0  1f88091a  addli r16, r19, 3328
0045e4  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
0045e8  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0045ec  9f80091b  addli r1, r19, 3456
0045f0  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0045f4  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0045f8  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
0045fc  9f078732  addli r15, r14, 6464
004600  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004604  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004608  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
00460c  9f070733  addli r15, r14, 6528
004610  1f078733  addli r14, r14, 6592
004614  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
004618  9f87891a  addli r15, r19, 3392
00461c  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
004620  1f87891b  addli r14, r19, 3520
004624  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
004628  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00462c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
004630  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004634  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
004638  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00463c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004640  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
004644  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004648  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
00464c  9387c405  setlt.u r15, r9, r28
004650  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004654  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004658  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00465c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004660  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004664  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
004668  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
00466c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004670  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004674  bbbb07fe  bneq r15, zero, -276
004678  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00467c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004680  9f000002  addli r1, zero, 256
004684  9f040000  addli r9, zero, 0
004688  eaf110c0  vsrl.p vr3, r1, vr1
00468c  6af100c0  vsrl.p vr2, r1, vr0
004690  9f000001  addli r1, zero, 128
004694  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004698  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00469c  eaf110c0  vsrl.p vr3, r1, vr1
0046a0  6af100c0  vsrl.p vr2, r1, vr0
0046a4  abf0ffff  lui r1, 1048575
0046a8  9b9d00f8  ori r27, r1, 3968
0046ac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0046b0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0046b4  eaf11bc0  vsrl.p vr3, r23, vr1
0046b8  6af10bc0  vsrl.p vr2, r23, vr0
0046bc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0046c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0046c4  ea711cc0  vsrl.p vr3, r24, vr1
0046c8  6a710cc0  vsrl.p vr2, r24, vr0
0046cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0046d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0046d4  fa990040  vextracti.f r19, 0(vr1)
0046d8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0046dc  fa110040  vextracti.f r3, 0(vr0)
0046e0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0046e4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0046e8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0046ec  8b979310  add.s r15, r7, r9
0046f0  0b179510  add.s r14, r10, r9
0046f4  9f8d0d01  addli r27, r27, 128
0046f8  9f840404  addli r9, r9, 512
0046fc  9f800718  addli r1, r15, 3072
004700  1f880719  addli r16, r15, 3200
004704  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
004708  9f0a8701  addli r21, r14, 192
00470c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
004710  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
004714  9f808718  addli r1, r15, 3136
004718  1f888719  addli r16, r15, 3264
00471c  c2950a02  vload_mask16.mz vr11{mr1}, 0(r21)
004720  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
004724  9f000701  addli r1, r14, 128
004728  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
00472c  1f088700  addli r16, r14, 64
004730  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
004734  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
004738  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00473c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004740  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004744  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004748  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
00474c  9f80071a  addli r1, r15, 3328
004750  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004754  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004758  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00475c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004760  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
004764  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
004768  9f80871a  addli r1, r15, 3392
00476c  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
004770  9f0a0702  addli r21, r14, 256
004774  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
004778  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00477c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004780  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
004784  9f80071b  addli r1, r15, 3456
004788  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
00478c  9f87871b  addli r15, r15, 3520
004790  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004794  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004798  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
00479c  9f008702  addli r1, r14, 320
0047a0  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
0047a4  9f070703  addli r15, r14, 384
0047a8  1f078703  addli r14, r14, 448
0047ac  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0047b0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0047b4  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0047b8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0047bc  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
0047c0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0047c4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0047c8  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
0047cc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0047d0  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0047d4  93804d05  setlt.u r1, r27, r20
0047d8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0047dc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0047e0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0047e4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0047e8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0047ec  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
0047f0  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
0047f4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0047f8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0047fc  bbcb00fe  bneq r1, zero, -272
004800  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004804  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004808  9f000002  addli r1, zero, 256
00480c  9f0d0b00  addli r27, r22, 0
004810  803a0002  core_id r21
004814  1f1b0000  addli r22, zero, 1
004818  6af100c0  vsrl.p vr2, r1, vr0
00481c  eaf110c0  vsrl.p vr3, r1, vr1
004820  9f000001  addli r1, zero, 128
004824  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004828  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00482c  6af100c0  vsrl.p vr2, r1, vr0
004830  eaf110c0  vsrl.p vr3, r1, vr1
004834  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004838  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00483c  6af10bc0  vsrl.p vr2, r23, vr0
004840  eaf11bc0  vsrl.p vr3, r23, vr1
004844  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004848  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00484c  6a710cc0  vsrl.p vr2, r24, vr0
004850  ea711cc0  vsrl.p vr3, r24, vr1
004854  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004858  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00485c  fa940040  vextracti.f r9, 0(vr1)
004860  fa100040  vextracti.f r1, 0(vr0)
004864  8be11110  add.f.rn r3, r3, r1
004868  8be49910  add.f.rn r9, r19, r9
00486c  9b302100  slli r1, r2, 2
004870  1b01e107  andi r2, r2, 126
004874  0b979011  add.s r14, r1, r25
004878  8b972011  add.s r15, r1, r18
00487c  9b904000  ori r1, r1, 4
004880  1b312100  slli r2, r2, 2
004884  73603700  stores.w r3, 0(r14)
004888  73e09700  stores.w r9, 0(r15)
00488c  8b919011  add.s r3, r1, r25
004890  8b149111  add.s r9, r2, r25
004894  8b902011  add.s r1, r1, r18
004898  0b112111  add.s r2, r2, r18
00489c  1f078fd7  addli r14, r30, -5184
0048a0  9f070000  addli r15, zero, 0
0048a4  00a00300  mfence { lm, sm, gm }
0048a8  80210d04  csr_set csr3, r26
0048ac  00d00100  sync_group
0048b0  63481f00  loadli.w r16,  12(r30)
0048b4  efc10100  loads.w r3, 0(r3)
0048b8  efc40400  loads.w r9, 0(r9)
0048bc  efc00000  loads.w r1, 0(r1)
0048c0  6f410100  loads.w r2, 0(r2)
0048c4  8be19110  add.f.rn r3, r3, r9
0048c8  8be02010  add.f.rn r1, r1, r2
0048cc  2b01003a  lui r2, 237568
0048d0  9f048fd7  addli r9, r30, -5184
0048d4  8be12120  mul.f.rn r3, r3, r2
0048d8  8be02020  mul.f.rn r1, r1, r2
0048dc  0be13120  mul.f.rn r2, r3, r3
0048e0  8be10158  neg.f r3, r3
0048e4  8be02018  sub.f.rn r1, r1, r2
0048e8  63013f00  loadli.w r2,  24(r30)
0048ec  8be02010  add.f.rn r1, r1, r2
0048f0  2b01803f  lui r2, 260096
0048f4  8f800008  sqrt.f.rn r1, r1
0048f8  0f011118  div.f.rn r2, r2, r1
0048fc  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
004900  9f008700  addli r1, r14, 64
004904  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
004908  9f874700  addli r15, r15, 32
00490c  1f070701  addli r14, r14, 128
004910  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
004914  93804704  setlt.u r1, r15, r4
004918  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
00491c  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
004920  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
004924  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
004928  06110000  vfloat2fp16_l.rn vr2, vr0
00492c  06d10000  vfloat2fp16_h.rn vr2, vr1
004930  46802402  vstore.mz vr2{mr1}, 0(r9)
004934  9f848400  addli r9, r9, 64
004938  3b9f00fe  bneq r1, zero, -60
00493c  6b510f00  load.d r[3:4], 0(r30)
004940  ab0000f0  lui r1, 983040
004944  00a00000  mfence { lm }
004948  97901600  or r1, r13, r1
00494c  0b215110  add.ul r[3:4], r[3:4], r[6:7]
004950  ff30a100  s_lm2gm r1, r10, 0(r[3:4])
004954  00a00200  mfence { lm, gm }
004958  db38ffff  j -1596
00495c  80300002  core_id r1
004960  e3012f00  loadli.w r3,  16(r30)
004964  1bb15000  slli r2, r1, 5
004968  cb912100  ble.s r3, r2, 100
00496c  00540102  load_param_i r8, 2
004970  ab840100  lui r9, 24
004974  9f110000  addli r3, zero, 1
004978  1f038fd7  addli r6, r30, -5184
00497c  9f038000  addli r7, zero, 64
004980  1b345400  slli r8, r8, 5
004984  9f840400  addli r9, r9, 0
004988  33050128  zext_int2long r[11:12], r2
00498c  2b0600f0  lui r12, 983040
004990  17353502  sll.d r[11:12], r[11:12], r3
004994  1796c300  or r12, r7, r12
004998  0b25a210  add.ul r[11:12], r[5:6], r[11:12]
00499c  7f266500  l_gm2lm r12, r6, 0(r[11:12])
0049a0  1b352100  slli r10, r2, 2
0049a4  0b112410  add.s r2, r8, r2
0049a8  00a00200  mfence { lm, gm }
0049ac  42000302  vload.mz vr0{mr1}, 0(r6)
0049b0  0b159510  add.s r10, r10, r9
0049b4  9f058500  addli r11, r10, 64
0049b8  86300000  vfp162float_l.rn vr1, vr0
0049bc  06700000  vfp162float_h.rn vr0, vr0
0049c0  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
0049c4  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
0049c8  3f0ff1fe  blt.s r2, r15, -64
0049cc  2bf10000  lui r2, 15
0049d0  e3411f00  loadli.w r3,  12(r30)
0049d4  00a00300  mfence { lm, sm, gm }
0049d8  1b11f1ff  ori r2, r2, 4095
0049dc  80210104  csr_set csr3, r2
0049e0  00d00100  sync_group
0049e4  4bc5110c  ble.s r3, r1, 6480
0049e8  63032f00  loadli.w r6,  16(r30)
0049ec  e3432f00  loadli.w r7,  20(r30)
0049f0  9f0b8fd7  addli r23, r30, -5184
0049f4  1f150000  addli r10, zero, 1
0049f8  9f054000  addli r11, zero, 32
0049fc  1f767000  addli r12, zero, 63
004a00  1f080002  addli r16, zero, 256
004a04  9f080001  addli r17, zero, 128
004a08  1f098000  addli r18, zero, 64
004a0c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004a10  0b127310  add.s r4, r6, r7
004a14  33010308  fix2float.rn r2, r6
004a18  1b342300  slli r8, r6, 2
004a1c  9b321300  slli r5, r6, 1
004a20  9bb42300  slli r9, r7, 2
004a24  1f72f2ff  addli r4, r4, -1
004a28  670c2fd4  storeli.w r2, -5440(r30)
004a2c  1f014300  addli r2, r6, 32
004a30  0b137411  add.s r6, r8, r23
004a34  0b947211  add.s r8, r5, r23
004a38  67082fd4  storeli.w r2, -5504(r30)
004a3c  1f0183ff  addli r2, r6, -64
004a40  2bf3ffff  lui r6, 1048575
004a44  0b127230  div.s r4, r4, r7
004a48  67042fd4  storeli.w r2, -5568(r30)
004a4c  1f0184ff  addli r2, r8, -64
004a50  9b16f3ff  ori r13, r6, 4095
004a54  2b830100  lui r6, 24
004a58  67002fd4  storeli.w r2, -5632(r30)
004a5c  1f010fd7  addli r2, r30, -5248
004a60  1f030300  addli r6, r6, 0
004a64  00a00000  mfence { lm }
004a68  67045fd6  storeli.w r5, -5312(r30)
004a6c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004a70  db070000  j 60
004a74  6b510f00  load.d r[3:4], 0(r30)
004a78  00a00000  mfence { lm }
004a7c  ab0900f0  lui r19, 983040
004a80  9f0b8fd7  addli r23, r30, -5184
004a84  005a0102  load_param_i r20, 2
004a88  e3028fd6  loadli.w r5,  -5312(r30)
004a8c  8b101a10  add.s r1, r20, r1
004a90  8b235111  add.ul r[8:9], r[3:4], r[22:23]
004a94  97993201  or r19, r5, r19
004a98  ffb97301  s_lm2gm r19, r23, 0(r[8:9])
004a9c  00a00200  mfence { lm, gm }
004aa0  63411f00  loadli.w r2,  12(r30)
004aa4  3fa02000  blt.s r1, r2, 8
004aa8  db110300  j 6284
004aac  63011f00  loadli.w r2,  8(r30)
004ab0  8b932010  add.s r7, r1, r2
004ab4  8b93f320  mul.s r7, r7, r15
004ab8  b3930328  sext_int2long r[8:9], r7
004abc  97baa302  sll.d r[22:23], r[8:9], r10
004ac0  1f047fd6  addli r8, r30, -5320
004ac4  ab0300f0  lui r7, 983040
004ac8  6b510400  load.d r[3:4], 0(r8)
004acc  97937200  or r7, r5, r7
004ad0  8b295111  add.ul r[20:21], r[3:4], r[22:23]
004ad4  ffa37901  l_gm2lm r7, r23, 0(r[20:21])
004ad8  00a00200  mfence { lm, gm }
004adc  bff0b700  blt.s r15, r11, 60
004ae0  e3030fd4  loadli.w r7,  -5632(r30)
004ae4  63048fd4  loadli.w r8,  -5568(r30)
004ae8  e3090fd5  loadli.w r19,  -5504(r30)
004aec  c2800302  vload.mz vr1{mr1}, 0(r7)
004af0  9f89c9ff  addli r19, r19, -32
004af4  9f0b84ff  addli r23, r8, -64
004af8  9f8383ff  addli r7, r7, -64
004afc  130a3605  setlt.u r20, r12, r19
004b00  06f10000  vfp162float_h.rn vr2, vr1
004b04  86b00000  vfp162float_l.rn vr1, vr1
004b08  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
004b0c  1f0404ff  addli r8, r8, -128
004b10  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
004b14  3b6f0afe  bneq r20, zero, -40
004b18  00a00000  mfence { lm }
004b1c  bf17a200  blt.s r4, r10, 484
004b20  1f0c0000  addli r24, zero, 0
004b24  9f0b0000  addli r23, zero, 0
004b28  9f0c0000  addli r25, zero, 0
004b2c  db0c0000  j 100
004b30  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004b34  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004b38  9f9c0c00  addli r25, r25, 1
004b3c  6a7108c0  vsrl.p vr2, r16, vr0
004b40  ea7118c0  vsrl.p vr3, r16, vr1
004b44  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b48  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b4c  6af108c0  vsrl.p vr2, r17, vr0
004b50  eaf118c0  vsrl.p vr3, r17, vr1
004b54  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b58  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b5c  6a7109c0  vsrl.p vr2, r18, vr0
004b60  ea7119c0  vsrl.p vr3, r18, vr1
004b64  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b68  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b6c  6af105c0  vsrl.p vr2, r11, vr0
004b70  eaf115c0  vsrl.p vr3, r11, vr1
004b74  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b78  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b7c  7a110040  vextracti.f r2, 0(vr0)
004b80  fa910040  vextracti.f r3, 0(vr1)
004b84  0b6c2c10  add.f.rn r24, r24, r2
004b88  8beb3b10  add.f.rn r23, r23, r3
004b8c  b7f54c00  beq r25, r4, 380
004b90  9f830c00  addli r7, r25, 0
004b94  37300701  beq r14, r16, 12
004b98  97a3dc00  xor r7, r25, r13
004b9c  8b137210  add.s r7, r4, r7
004ba0  1f010fd7  addli r2, r30, -5248
004ba4  0b94e320  mul.s r8, r7, r14
004ba8  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004bac  0b948718  sub.s r8, r15, r8
004bb0  0b1de440  min.s r26, r8, r14
004bb4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004bb8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004bbc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004bc0  bf4dadfe  blt.s r26, r10, -144
004bc4  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
004bc8  9f0d0000  addli r27, zero, 0
004bcc  0b9e7420  mul.s r28, r9, r7
004bd0  9f098fd7  addli r19, r30, -5184
004bd4  1f0a0300  addli r20, r6, 0
004bd8  92304002  vadd.s.mz vr1{mr1}, zero, vr4
004bdc  12314002  vadd.s.mz vr2{mr1}, zero, vr4
004be0  92314002  vadd.s.mz vr3{mr1}, zero, vr4
004be4  0b14ca11  add.s r8, r20, r28
004be8  8b93c911  add.s r7, r19, r28
004bec  9f028400  addli r5, r8, 64
004bf0  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
004bf4  9f018401  addli r3, r8, 192
004bf8  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
004bfc  1f818301  addli r2, r7, 192
004c00  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
004c04  9f020401  addli r5, r8, 128
004c08  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
004c0c  9f818300  addli r3, r7, 64
004c10  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
004c14  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
004c18  9f820301  addli r5, r7, 128
004c1c  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
004c20  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
004c24  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004c28  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
004c2c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
004c30  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
004c34  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004c38  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004c3c  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
004c40  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
004c44  9f818d00  addli r3, r27, 64
004c48  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004c4c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004c50  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004c54  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
004c58  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004c5c  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
004c60  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
004c64  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
004c68  4b2b3dfe  ble.s r26, r3, -312
004c6c  9f010402  addli r3, r8, 256
004c70  9f028402  addli r5, r8, 320
004c74  1f810302  addli r2, r7, 256
004c78  9f8d0d01  addli r27, r27, 128
004c7c  1f0a0a04  addli r20, r20, 512
004c80  9f890904  addli r19, r19, 512
004c84  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
004c88  9f010403  addli r3, r8, 384
004c8c  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
004c90  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
004c94  9f828302  addli r5, r7, 320
004c98  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
004c9c  9f018403  addli r3, r8, 448
004ca0  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
004ca4  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
004ca8  9f810303  addli r3, r7, 384
004cac  9f838303  addli r7, r7, 448
004cb0  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
004cb4  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
004cb8  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
004cbc  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004cc0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
004cc4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004cc8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004ccc  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004cd0  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
004cd4  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
004cd8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004cdc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004ce0  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
004ce4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004ce8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004cec  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
004cf0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004cf4  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
004cf8  bfbbadff  blt.s r27, r26, -276
004cfc  dbc6ffff  j -460
004d00  9f0b0000  addli r23, zero, 0
004d04  1f0c0000  addli r24, zero, 0
004d08  00a00000  mfence { lm }
004d0c  bfa5a7fe  blt.s r15, r10, -664
004d10  63018fd5  loadli.w r2,  -5440(r30)
004d14  1f0a8fd7  addli r20, r30, -5184
004d18  0f042c18  div.f.rn r8, r24, r2
004d1c  8f832b18  div.f.rn r7, r23, r2
004d20  63013f00  loadli.w r2,  24(r30)
004d24  9f0b0000  addli r23, zero, 0
004d28  8b698420  mul.f.rn r19, r8, r8
004d2c  0b640458  neg.f r8, r8
004d30  8be33319  sub.f.rn r7, r7, r19
004d34  9f098fd7  addli r19, r30, -5184
004d38  8be32310  add.f.rn r7, r7, r2
004d3c  2b01803f  lui r2, 260096
004d40  8f830308  sqrt.f.rn r7, r7
004d44  8f037118  div.f.rn r7, r2, r7
004d48  c2100a02  vload_mask16.mz vr1{mr1}, 0(r20)
004d4c  1f0c8a00  addli r24, r20, 64
004d50  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
004d54  9f8b4b00  addli r23, r23, 32
004d58  1f0a0a01  addli r20, r20, 128
004d5c  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
004d60  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
004d64  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
004d68  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
004d6c  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
004d70  86910000  vfloat2fp16_l.rn vr3, vr1
004d74  86510100  vfloat2fp16_h.rn vr3, vr2
004d78  46803902  vstore.mz vr3{mr1}, 0(r19)
004d7c  9f898900  addli r19, r19, 64
004d80  3faffbfe  blt.s r23, r15, -56
004d84  5b9effff  j -784
004d88  63012f00  loadli.w r2,  16(r30)
004d8c  ab0100f0  lui r3, 983040
004d90  1b311100  slli r2, r2, 1
004d94  17113100  or r2, r2, r3
004d98  aba10100  lui r3, 26
004d9c  9f810100  addli r3, r3, 0
004da0  7f013300  l_gm2sm r2, r3, 0(r[7:8])
004da4  5b080000  j 64
004da8  63012f00  loadli.w r2,  16(r30)
004dac  ab0100f0  lui r3, 983040
004db0  1b311100  slli r2, r2, 1
004db4  17113100  or r2, r2, r3
004db8  abe10100  lui r3, 30
004dbc  9f810100  addli r3, r3, 0
004dc0  7f013300  l_gm2sm r2, r3, 0(r[7:8])
004dc4  5bc30000  j 1560
004dc8  63012f00  loadli.w r2,  16(r30)
004dcc  ab0100f0  lui r3, 983040
004dd0  1b311100  slli r2, r2, 1
004dd4  17113100  or r2, r2, r3
004dd8  abb10100  lui r3, 27
004ddc  9f810100  addli r3, r3, 0
004de0  7f013400  l_gm2sm r2, r3, 0(r[9:10])
004de4  2bf10000  lui r2, 15
004de8  e3411f00  loadli.w r3,  12(r30)
004dec  00200300  mfence { sm, gm }
004df0  1b11f1ff  ori r2, r2, 4095
004df4  80210104  csr_set csr3, r2
004df8  00d00100  sync_group
004dfc  cbe4110a  ble.s r3, r1, 5432
004e00  63012f00  loadli.w r2,  16(r30)
004e04  e3412f00  loadli.w r3,  20(r30)
004e08  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004e0c  1f140000  addli r8, zero, 1
004e10  9f048fd7  addli r9, r30, -5184
004e14  9f050002  addli r11, zero, 256
004e18  2b06ffff  lui r12, 1048560
004e1c  2b08807f  lui r16, 522240
004e20  ab08c07f  lui r17, 523264
004e24  1f090001  addli r18, zero, 128
004e28  9f098000  addli r19, zero, 64
004e2c  1f0a4000  addli r20, zero, 32
004e30  9b3b1100  slli r23, r2, 1
004e34  0b123110  add.s r4, r2, r3
004e38  33010108  fix2float.rn r2, r2
004e3c  1bb31100  slli r6, r3, 1
004e40  67042fd4  storeli.w r2, -5568(r30)
004e44  1f71f2ff  addli r2, r4, -1
004e48  67087fd5  storeli.w r23, -5504(r30)
004e4c  8b133130  div.s r7, r2, r3
004e50  2bf1ffff  lui r2, 1048575
004e54  9f010fd7  addli r3, r30, -5248
004e58  1b15f1ff  ori r10, r2, 4095
004e5c  1f012000  addli r2, zero, 16
004e60  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
004e64  9f018fd6  addli r3, r30, -5312
004e68  6a200122  vor.u.mz vr0{mr1}, r2, vr0
004e6c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
004e70  ab710000  lui r3, 7
004e74  9b96f1ff  ori r13, r3, 4095
004e78  5b090000  j 72
004e7c  9f028fd5  addli r5, r30, -5440
004e80  eb510f00  load.d r[4:5], 0(r30)
004e84  ab0400f0  lui r9, 983040
004e88  ebda0200  load.d r[22:23], 0(r5)
004e8c  00a00000  mfence { lm }
004e90  9f028fd7  addli r5, r30, -5184
004e94  e30b0fd5  loadli.w r23,  -5504(r30)
004e98  8ba15111  add.ul r[4:5], r[4:5], r[22:23]
004e9c  805a0102  load_param_i r21, 2
004ea0  97949b00  or r9, r23, r9
004ea4  8b901a10  add.s r1, r21, r1
004ea8  ffb45100  s_lm2gm r9, r5, 0(r[4:5])
004eac  9f048fd7  addli r9, r30, -5184
004eb0  00a00200  mfence { lm, gm }
004eb4  e3411f00  loadli.w r3,  12(r30)
004eb8  3fa03000  blt.s r1, r3, 8
004ebc  5b8f0200  j 5240
004ec0  e3011f00  loadli.w r3,  8(r30)
004ec4  1f0c7fd6  addli r24, r30, -5320
004ec8  8b913010  add.s r3, r1, r3
004ecc  8b91f120  mul.s r3, r3, r15
004ed0  b3910128  sext_int2long r[4:5], r3
004ed4  97ba8102  sll.d r[22:23], r[4:5], r8
004ed8  6b520c00  load.d r[5:6], 0(r24)
004edc  ab0100f0  lui r3, 983040
004ee0  1f0c8fd5  addli r24, r30, -5440
004ee4  73305c01  store.d r[22:23], 0(r24)
004ee8  97913b00  or r3, r23, r3
004eec  8b2a5211  add.ul r[22:23], r[5:6], r[22:23]
004ef0  ffa19a00  l_gm2lm r3, r9, 0(r[22:23])
004ef4  00a00200  mfence { lm, gm }
004ef8  bfcc8300  blt.s r7, r8, 816
004efc  9f0d0000  addli r27, zero, 0
004f00  1f0d0000  addli r26, zero, 0
004f04  1f0e0000  addli r28, zero, 0
004f08  db0c0000  j 100
004f0c  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
004f10  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
004f14  1f1e0e00  addli r28, r28, 1
004f18  6af105c0  vsrl.p vr2, r11, vr0
004f1c  eaf115c0  vsrl.p vr3, r11, vr1
004f20  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f24  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f28  6a7109c0  vsrl.p vr2, r18, vr0
004f2c  ea7119c0  vsrl.p vr3, r18, vr1
004f30  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f34  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f38  6af109c0  vsrl.p vr2, r19, vr0
004f3c  eaf119c0  vsrl.p vr3, r19, vr1
004f40  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f44  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f48  6a710ac0  vsrl.p vr2, r20, vr0
004f4c  ea711ac0  vsrl.p vr3, r20, vr1
004f50  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f54  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f58  fa110040  vextracti.f r3, 0(vr0)
004f5c  7a920040  vextracti.f r4, 0(vr1)
004f60  8bed3d10  add.f.rn r27, r27, r3
004f64  0b6d4d10  add.f.rn r26, r26, r4
004f68  372b7e00  beq r28, r7, 712
004f6c  9f010e00  addli r3, r28, 0
004f70  3730b700  beq r14, r11, 12
004f74  9721ae00  xor r3, r28, r10
004f78  8b913310  add.s r3, r7, r3
004f7c  0b92e120  mul.s r4, r3, r14
004f80  0b924718  sub.s r4, r15, r4
004f84  8b1ae240  min.s r21, r4, r14
004f88  1f020fd7  addli r4, r30, -5248
004f8c  42110202  vload_mask16.mz vr2{mr1}, 0(r4)
004f90  92322002  vadd.s.mz vr5{mr1}, zero, vr2
004f94  12322002  vadd.s.mz vr4{mr1}, zero, vr2
004f98  92312002  vadd.s.mz vr3{mr1}, zero, vr2
004f9c  bfcd8afe  blt.s r21, r8, -144
004fa0  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
004fa4  8b1b3320  mul.s r23, r6, r3
004fa8  ab910100  lui r3, 25
004fac  1f0b0000  addli r22, zero, 0
004fb0  9f048fd7  addli r9, r30, -5184
004fb4  9f810100  addli r3, r3, 0
004fb8  12315002  vadd.s.mz vr2{mr1}, zero, vr5
004fbc  92315002  vadd.s.mz vr3{mr1}, zero, vr5
004fc0  12325002  vadd.s.mz vr4{mr1}, zero, vr5
004fc4  0b9c7111  add.s r24, r3, r23
004fc8  0b927411  add.s r4, r9, r23
004fcc  9f028fd6  addli r5, r30, -5312
004fd0  4a030c02  vloads.mz vr6{mr1}, 0(r24)
004fd4  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
004fd8  c2030202  vload.mz vr7{mr1}, 0(r4)
004fdc  9f020fd7  addli r5, r30, -5248
004fe0  9f0c8c00  addli r25, r24, 64
004fe4  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
004fe8  9f028b00  addli r5, r22, 64
004fec  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
004ff0  6a357602  vand.s.mz vr10{mr1}, r12, vr7
004ff4  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
004ff8  6a336602  vand.s.mz vr6{mr1}, r12, vr6
004ffc  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
005000  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
005004  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
005008  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
00500c  669503c0  vabs.f vr10, vr7
005010  6a348402  vand.s.mz vr8{mr1}, r8, vr8
005014  ea349402  vand.s.mz vr9{mr1}, r8, vr9
005018  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
00501c  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
005020  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
005024  12b48602  vadd.s.mz vr8{mr1}, r13, vr8
005028  92b49602  vadd.s.mz vr9{mr1}, r13, vr9
00502c  ea338602  vand.s.mz vr7{mr1}, r12, vr8
005030  661403c0  vabs.f vr8, vr6
005034  6a339602  vand.s.mz vr6{mr1}, r12, vr9
005038  eaa30834  vor.u.mh vr7{mr2}, r17, vr0
00503c  72218842  vlt.u.mz mr2{mr1}, r16, vr8
005040  6aa30834  vor.u.mh vr6{mr2}, r17, vr0
005044  4a840c02  vloads.mz vr8{mr1}, 0(r25)
005048  9f0c8200  addli r25, r4, 64
00504c  c2840c02  vload.mz vr9{mr1}, 0(r25)
005050  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
005054  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
005058  6a336602  vand.s.mz vr6{mr1}, r12, vr6
00505c  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
005060  ea349602  vand.s.mz vr9{mr1}, r12, vr9
005064  46007202  vstore.mz vr7{mr1}, 0(r4)
005068  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
00506c  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005070  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
005074  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
005078  6a348602  vand.s.mz vr8{mr1}, r12, vr8
00507c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005080  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005084  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
005088  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
00508c  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
005090  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
005094  ea349402  vand.s.mz vr9{mr1}, r8, vr9
005098  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
00509c  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
0050a0  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
0050a4  661505c0  vabs.f vr10, vr10
0050a8  661404c0  vabs.f vr8, vr8
0050ac  92b49602  vadd.s.mz vr9{mr1}, r13, vr9
0050b0  92b5b602  vadd.s.mz vr11{mr1}, r13, vr11
0050b4  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
0050b8  ea349602  vand.s.mz vr9{mr1}, r12, vr9
0050bc  6a35b602  vand.s.mz vr10{mr1}, r12, vr11
0050c0  eaa40834  vor.u.mh vr9{mr2}, r17, vr0
0050c4  72218842  vlt.u.mz mr2{mr1}, r16, vr8
0050c8  6aa50834  vor.u.mh vr10{mr2}, r17, vr0
0050cc  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
0050d0  ea34a602  vand.s.mz vr9{mr1}, r12, vr10
0050d4  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0050d8  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0050dc  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0050e0  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0050e4  46808c02  vstore.mz vr8{mr1}, 0(r25)
0050e8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0050ec  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0050f0  4bf85afe  ble.s r21, r5, -484
0050f4  9f020c01  addli r5, r24, 128
0050f8  9f0c0201  addli r25, r4, 128
0050fc  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
005100  1f028201  addli r4, r4, 192
005104  1f0b0b01  addli r22, r22, 128
005108  9f810102  addli r3, r3, 256
00510c  9f840402  addli r9, r9, 256
005110  6a237122  vor.u.mz vr6{mr1}, r2, vr7
005114  4a840202  vloads.mz vr8{mr1}, 0(r5)
005118  c2840c02  vload.mz vr9{mr1}, 0(r25)
00511c  9f028c01  addli r5, r24, 192
005120  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
005124  6a309602  vand.s.mz vr0{mr1}, r12, vr9
005128  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
00512c  6a348602  vand.s.mz vr8{mr1}, r12, vr8
005130  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
005134  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
005138  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
00513c  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
005140  e69504c0  vabs.f vr11, vr9
005144  6a300402  vand.s.mz vr0{mr1}, r8, vr0
005148  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
00514c  7221b842  vlt.u.mz mr2{mr1}, r16, vr11
005150  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
005154  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
005158  12b00602  vadd.s.mz vr0{mr1}, r13, vr0
00515c  12b5a602  vadd.s.mz vr10{mr1}, r13, vr10
005160  ea340602  vand.s.mz vr9{mr1}, r12, vr0
005164  661004c0  vabs.f vr0, vr8
005168  6a34a602  vand.s.mz vr8{mr1}, r12, vr10
00516c  eaa47834  vor.u.mh vr9{mr2}, r17, vr7
005170  72210842  vlt.u.mz mr2{mr1}, r16, vr0
005174  6aa47834  vor.u.mh vr8{mr2}, r17, vr7
005178  4a800202  vloads.mz vr0{mr1}, 0(r5)
00517c  42050202  vload.mz vr10{mr1}, 0(r4)
005180  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
005184  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
005188  6a35a602  vand.s.mz vr10{mr1}, r12, vr10
00518c  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
005190  6a348602  vand.s.mz vr8{mr1}, r12, vr8
005194  46809c02  vstore.mz vr9{mr1}, 0(r25)
005198  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
00519c  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
0051a0  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
0051a4  6a300602  vand.s.mz vr0{mr1}, r12, vr0
0051a8  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
0051ac  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
0051b0  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
0051b4  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
0051b8  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
0051bc  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
0051c0  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
0051c4  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
0051c8  e69000c0  vabs.f vr1, vr1
0051cc  661000c0  vabs.f vr0, vr0
0051d0  12b5a602  vadd.s.mz vr10{mr1}, r13, vr10
0051d4  92b5b602  vadd.s.mz vr11{mr1}, r13, vr11
0051d8  72211842  vlt.u.mz mr2{mr1}, r16, vr1
0051dc  6a35a602  vand.s.mz vr10{mr1}, r12, vr10
0051e0  ea30b602  vand.s.mz vr1{mr1}, r12, vr11
0051e4  6aa57834  vor.u.mh vr10{mr2}, r17, vr7
0051e8  72210842  vlt.u.mz mr2{mr1}, r16, vr0
0051ec  eaa07834  vor.u.mh vr1{mr2}, r17, vr7
0051f0  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
0051f4  ea331602  vand.s.mz vr7{mr1}, r12, vr1
0051f8  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0051fc  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
005200  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005204  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005208  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
00520c  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
005210  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
005214  46000202  vstore.mz vr0{mr1}, 0(r4)
005218  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
00521c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005220  bf165bff  blt.s r22, r21, -604
005224  5b9dffff  j -792
005228  1f0d0000  addli r26, zero, 0
00522c  9f0d0000  addli r27, zero, 0
005230  00a00000  mfence { lm }
005234  3fa187fe  blt.s r15, r8, -952
005238  63028fd4  loadli.w r4,  -5568(r30)
00523c  e3023f00  loadli.w r5,  24(r30)
005240  2bab0100  lui r22, 26
005244  abbb0100  lui r23, 27
005248  9f010000  addli r3, zero, 0
00524c  1f0b0b00  addli r22, r22, 0
005250  9f8b0b00  addli r23, r23, 0
005254  8f844d18  div.f.rn r9, r27, r4
005258  0f024d18  div.f.rn r4, r26, r4
00525c  8bea9420  mul.f.rn r21, r9, r9
005260  8be40458  neg.f r9, r9
005264  0b625219  sub.f.rn r4, r4, r21
005268  9f0a8fd7  addli r21, r30, -5184
00526c  0b625210  add.f.rn r4, r4, r5
005270  ab02803f  lui r5, 260096
005274  0f020208  sqrt.f.rn r4, r4
005278  0f824218  div.f.rn r4, r5, r4
00527c  42820a02  vload.mz vr4{mr1}, 0(r21)
005280  ca020b02  vloads.mz vr5{mr1}, 0(r22)
005284  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
005288  4a830b02  vloads.mz vr6{mr1}, 0(r23)
00528c  1f8c4100  addli r24, r3, 32
005290  ea212122  vor.u.mz vr3{mr1}, r2, vr2
005294  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
005298  6a344602  vand.s.mz vr8{mr1}, r12, vr4
00529c  92937402  vadd.f.mz.rn vr7{mr1}, r9, vr7
0052a0  12948402  vadd.f.mz.rn vr8{mr1}, r9, vr8
0052a4  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
0052a8  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
0052ac  6a355602  vand.s.mz vr10{mr1}, r12, vr5
0052b0  ea326602  vand.s.mz vr5{mr1}, r12, vr6
0052b4  8a137202  vmul.f.mz.rn vr7{mr1}, r4, vr7
0052b8  0a138202  vmul.f.mz.rn vr6{mr1}, r4, vr8
0052bc  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
0052c0  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
0052c4  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
0052c8  6a337402  vand.s.mz vr6{mr1}, r8, vr7
0052cc  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
0052d0  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
0052d4  ea337402  vand.s.mz vr7{mr1}, r8, vr7
0052d8  661202c0  vabs.f vr4, vr4
0052dc  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
0052e0  12b36602  vadd.s.mz vr6{mr1}, r13, vr6
0052e4  e69202c0  vabs.f vr5, vr5
0052e8  72214842  vlt.u.mz mr2{mr1}, r16, vr4
0052ec  6a336602  vand.s.mz vr6{mr1}, r12, vr6
0052f0  92b37602  vadd.s.mz vr7{mr1}, r13, vr7
0052f4  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
0052f8  6a327602  vand.s.mz vr4{mr1}, r12, vr7
0052fc  72215842  vlt.u.mz mr2{mr1}, r16, vr5
005300  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
005304  6aa22834  vor.u.mh vr4{mr2}, r17, vr2
005308  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
00530c  46804a02  vstore.mz vr4{mr1}, 0(r21)
005310  cbbd87fd  ble.s r15, r24, -1172
005314  1f8c8a00  addli r24, r21, 64
005318  9f0c8b00  addli r25, r22, 64
00531c  1f8d8b00  addli r26, r23, 64
005320  9f818100  addli r3, r3, 64
005324  9f8b0b01  addli r23, r23, 128
005328  1f0b0b01  addli r22, r22, 128
00532c  9f8a0a01  addli r21, r21, 128
005330  42020c02  vload.mz vr4{mr1}, 0(r24)
005334  4a830c02  vloads.mz vr6{mr1}, 0(r25)
005338  ca030d02  vloads.mz vr7{mr1}, 0(r26)
00533c  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
005340  6a324602  vand.s.mz vr4{mr1}, r12, vr4
005344  12945402  vadd.f.mz.rn vr8{mr1}, r9, vr5
005348  92944402  vadd.f.mz.rn vr9{mr1}, r9, vr4
00534c  6eb561a2  vsll.s.mz vr10{mr1}, vr3, vr6
005350  eeb271a2  vsll.s.mz vr5{mr1}, vr3, vr7
005354  6a327602  vand.s.mz vr4{mr1}, r12, vr7
005358  6a336602  vand.s.mz vr6{mr1}, r12, vr6
00535c  0a148202  vmul.f.mz.rn vr8{mr1}, r4, vr8
005360  8a139202  vmul.f.mz.rn vr7{mr1}, r4, vr9
005364  a612a402  vmac.f.mz.rn vr5{mr1}, vr8, vr10
005368  26926302  vmac.f.mz.rn vr4{mr1}, vr7, vr6
00536c  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
005370  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
005374  6a336402  vand.s.mz vr6{mr1}, r8, vr6
005378  ea337402  vand.s.mz vr7{mr1}, r8, vr7
00537c  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
005380  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
005384  e69202c0  vabs.f vr5, vr5
005388  661202c0  vabs.f vr4, vr4
00538c  12b36602  vadd.s.mz vr6{mr1}, r13, vr6
005390  92b37602  vadd.s.mz vr7{mr1}, r13, vr7
005394  72215842  vlt.u.mz mr2{mr1}, r16, vr5
005398  6a336602  vand.s.mz vr6{mr1}, r12, vr6
00539c  ea327602  vand.s.mz vr5{mr1}, r12, vr7
0053a0  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
0053a4  72214842  vlt.u.mz mr2{mr1}, r16, vr4
0053a8  eaa22834  vor.u.mh vr5{mr2}, r17, vr2
0053ac  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
0053b0  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
0053b4  46002c02  vstore.mz vr2{mr1}, 0(r24)
0053b8  3f9bf1fe  blt.s r3, r15, -316
0053bc  5b58ffff  j -1344
0053c0  63012f00  loadli.w r2,  16(r30)
0053c4  ab0100f0  lui r3, 983040
0053c8  1b311100  slli r2, r2, 1
0053cc  17113100  or r2, r2, r3
0053d0  abf10100  lui r3, 31
0053d4  9f810100  addli r3, r3, 0
0053d8  7f013400  l_gm2sm r2, r3, 0(r[9:10])
0053dc  2bf10000  lui r2, 15
0053e0  e3411f00  loadli.w r3,  12(r30)
0053e4  00200300  mfence { sm, gm }
0053e8  1b11f1ff  ori r2, r2, 4095
0053ec  80210104  csr_set csr3, r2
0053f0  00d00100  sync_group
0053f4  4b8d1106  ble.s r3, r1, 3904
0053f8  e3012f00  loadli.w r3,  16(r30)
0053fc  e3422f00  loadli.w r5,  20(r30)
005400  2bf4ffff  lui r8, 1048575
005404  2bd50100  lui r10, 29
005408  9f0b8fd7  addli r23, r30, -5184
00540c  9f040002  addli r9, zero, 256
005410  9f050001  addli r11, zero, 128
005414  1f068000  addli r12, zero, 64
005418  9f064000  addli r13, zero, 32
00541c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005420  1b14f4ff  ori r8, r8, 4095
005424  1f050500  addli r10, r10, 0
005428  0b925110  add.s r4, r3, r5
00542c  1bb11100  slli r2, r3, 1
005430  b3810108  fix2float.rn r3, r3
005434  1f73f2ff  addli r6, r4, -1
005438  1bb21200  slli r4, r5, 1
00543c  8b125330  div.s r5, r6, r5
005440  1f130000  addli r6, zero, 1
005444  5b070000  j 56
005448  6b580f00  load.d r[17:18], 0(r30)
00544c  9f0b8fd7  addli r23, r30, -5184
005450  00a00000  mfence { lm }
005454  0b283811  add.ul r[17:18], r[17:18], r[20:21]
005458  ab0900f0  lui r19, 983040
00545c  005a0102  load_param_i r20, 2
005460  97193101  or r19, r2, r19
005464  8b101a10  add.s r1, r20, r1
005468  ff397801  s_lm2gm r19, r23, 0(r[17:18])
00546c  00a00200  mfence { lm, gm }
005470  e3431f00  loadli.w r7,  12(r30)
005474  3fa07000  blt.s r1, r7, 8
005478  dbd70100  j 3772
00547c  e3031f00  loadli.w r7,  8(r30)
005480  0b987010  add.s r16, r1, r7
005484  9f037fd6  addli r7, r30, -5320
005488  0b18f820  mul.s r16, r16, r15
00548c  33180828  sext_int2long r[17:18], r16
005490  97396802  sll.d r[20:21], r[17:18], r6
005494  ebd80300  load.d r[18:19], 0(r7)
005498  2b0800f0  lui r16, 983040
00549c  17180101  or r16, r2, r16
0054a0  8baa3811  add.ul r[22:23], r[18:19], r[20:21]
0054a4  7fa87a01  l_gm2lm r16, r23, 0(r[22:23])
0054a8  00a00200  mfence { lm, gm }
0054ac  3fc76200  blt.s r5, r6, 464
0054b0  1f0b0000  addli r22, zero, 0
0054b4  9f0a0000  addli r21, zero, 0
0054b8  9f0b0000  addli r23, zero, 0
0054bc  db0c0000  j 100
0054c0  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
0054c4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0054c8  9f9b0b00  addli r23, r23, 1
0054cc  6af134c0  vsrl.p vr2, r9, vr3
0054d0  6af214c0  vsrl.p vr4, r9, vr1
0054d4  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
0054d8  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0054dc  eaf125c0  vsrl.p vr3, r11, vr2
0054e0  6af215c0  vsrl.p vr4, r11, vr1
0054e4  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0054e8  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0054ec  ea7126c0  vsrl.p vr3, r12, vr2
0054f0  6a7216c0  vsrl.p vr4, r12, vr1
0054f4  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0054f8  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0054fc  eaf126c0  vsrl.p vr3, r13, vr2
005500  6af216c0  vsrl.p vr4, r13, vr1
005504  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
005508  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00550c  fa130140  vextracti.f r7, 0(vr2)
005510  7a980040  vextracti.f r16, 0(vr1)
005514  0b6b7b10  add.f.rn r22, r22, r7
005518  8bea0a11  add.f.rn r21, r21, r16
00551c  b7a55b00  beq r23, r5, 360
005520  1f880b00  addli r16, r23, 0
005524  37309700  beq r14, r9, 12
005528  17a88b00  xor r16, r23, r8
00552c  0b980211  add.s r16, r5, r16
005530  8b18e820  mul.s r17, r16, r14
005534  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005538  92310002  vadd.s.mz vr3{mr1}, zero, vr0
00553c  12310002  vadd.s.mz vr2{mr1}, zero, vr0
005540  92300002  vadd.s.mz vr1{mr1}, zero, vr0
005544  8b981719  sub.s r17, r15, r17
005548  0b9ce840  min.s r24, r17, r14
00554c  bf5d6cfe  blt.s r24, r6, -140
005550  92300002  vadd.s.mz vr1{mr1}, zero, vr0
005554  12310002  vadd.s.mz vr2{mr1}, zero, vr0
005558  92310002  vadd.s.mz vr3{mr1}, zero, vr0
00555c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005560  9f0c0000  addli r25, zero, 0
005564  0b1d0221  mul.s r26, r4, r16
005568  9f0d8fd7  addli r27, r30, -5184
00556c  1f0e0500  addli r28, r10, 0
005570  0b18ae11  add.s r16, r28, r26
005574  9f838c00  addli r7, r25, 64
005578  ca020802  vloads.mz vr5{mr1}, 0(r16)
00557c  9f088800  addli r17, r16, 64
005580  4a830802  vloads.mz vr6{mr1}, 0(r17)
005584  8b98ad11  add.s r17, r27, r26
005588  c2830802  vload.mz vr7{mr1}, 0(r17)
00558c  1f898800  addli r18, r17, 64
005590  42040902  vload.mz vr8{mr1}, 0(r18)
005594  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
005598  92320002  vadd.s.mz vr5{mr1}, zero, vr0
00559c  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
0055a0  06b40300  vfp162float_l.rn vr8, vr7
0055a4  86f30300  vfp162float_h.rn vr7, vr7
0055a8  86340300  vfp162float_l.rn vr9, vr6
0055ac  06730300  vfp162float_h.rn vr6, vr6
0055b0  86120400  vfloat2fp16_l.rn vr5, vr8
0055b4  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
0055b8  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
0055bc  12340002  vadd.s.mz vr8{mr1}, zero, vr0
0055c0  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
0055c4  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
0055c8  06940400  vfloat2fp16_l.rn vr8, vr9
0055cc  86d20300  vfloat2fp16_h.rn vr5, vr7
0055d0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0055d4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0055d8  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0055dc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0055e0  06540300  vfloat2fp16_h.rn vr8, vr6
0055e4  46805802  vstore.mz vr5{mr1}, 0(r17)
0055e8  46008902  vstore.mz vr8{mr1}, 0(r18)
0055ec  4b5b7cfe  ble.s r24, r7, -300
0055f0  9f030801  addli r7, r16, 128
0055f4  9f8c0c01  addli r25, r25, 128
0055f8  1f0e0e02  addli r28, r28, 256
0055fc  9f8d0d02  addli r27, r27, 256
005600  ca820302  vloads.mz vr5{mr1}, 0(r7)
005604  9f038801  addli r7, r16, 192
005608  1f880801  addli r16, r17, 128
00560c  4a830302  vloads.mz vr6{mr1}, 0(r7)
005610  c2030802  vload.mz vr7{mr1}, 0(r16)
005614  9f838801  addli r7, r17, 192
005618  42840302  vload.mz vr8{mr1}, 0(r7)
00561c  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
005620  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005624  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
005628  12330002  vadd.s.mz vr6{mr1}, zero, vr0
00562c  86b40300  vfp162float_l.rn vr9, vr7
005630  86f30300  vfp162float_h.rn vr7, vr7
005634  86920400  vfloat2fp16_l.rn vr5, vr9
005638  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
00563c  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
005640  86340400  vfp162float_l.rn vr9, vr8
005644  06740400  vfp162float_h.rn vr8, vr8
005648  06930400  vfloat2fp16_l.rn vr6, vr9
00564c  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005650  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005654  86d20300  vfloat2fp16_h.rn vr5, vr7
005658  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
00565c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005660  06530400  vfloat2fp16_h.rn vr6, vr8
005664  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
005668  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00566c  46005802  vstore.mz vr5{mr1}, 0(r16)
005670  46806302  vstore.mz vr6{mr1}, 0(r7)
005674  bffb8cff  blt.s r25, r24, -260
005678  5bc9ffff  j -440
00567c  9f0a0000  addli r21, zero, 0
005680  1f0b0000  addli r22, zero, 0
005684  00a00000  mfence { lm }
005688  3f8767fe  blt.s r15, r6, -576
00568c  0f083b18  div.f.rn r16, r22, r3
005690  8f883a18  div.f.rn r17, r21, r3
005694  e3033f00  loadli.w r7,  24(r30)
005698  abec0100  lui r25, 30
00569c  2bfd0100  lui r26, 31
0056a0  9f0b0000  addli r23, zero, 0
0056a4  1f0c8fd7  addli r24, r30, -5184
0056a8  9f8c0c00  addli r25, r25, 0
0056ac  1f0d0d00  addli r26, r26, 0
0056b0  8b6a0821  mul.f.rn r21, r16, r16
0056b4  0b6b0858  neg.f r22, r16
0056b8  8be85819  sub.f.rn r17, r17, r21
0056bc  8be87810  add.f.rn r17, r17, r7
0056c0  ab03803f  lui r7, 260096
0056c4  8f880808  sqrt.f.rn r17, r17
0056c8  8f8a1319  div.f.rn r21, r7, r17
0056cc  c2000c02  vload.mz vr1{mr1}, 0(r24)
0056d0  4a810c02  vloads.mz vr2{mr1}, 0(r25)
0056d4  ca010d02  vloads.mz vr3{mr1}, 0(r26)
0056d8  1f884b00  addli r16, r23, 32
0056dc  06b20000  vfp162float_l.rn vr4, vr1
0056e0  86f00000  vfp162float_h.rn vr1, vr1
0056e4  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
0056e8  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
0056ec  86320100  vfp162float_l.rn vr5, vr2
0056f0  06b30100  vfp162float_l.rn vr6, vr3
0056f4  06710100  vfp162float_h.rn vr2, vr2
0056f8  86f10100  vfp162float_h.rn vr3, vr3
0056fc  8a931a02  vmul.f.mz.rn vr7{mr1}, r21, vr1
005700  0a924a02  vmul.f.mz.rn vr4{mr1}, r21, vr4
005704  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005708  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
00570c  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
005710  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005714  06110300  vfloat2fp16_l.rn vr2, vr6
005718  06d10100  vfloat2fp16_h.rn vr2, vr3
00571c  46002c02  vstore.mz vr2{mr1}, 0(r24)
005720  cba407ff  ble.s r15, r16, -728
005724  1f088c00  addli r16, r24, 64
005728  9f888c00  addli r17, r25, 64
00572c  9f0d8d00  addli r27, r26, 64
005730  9f8b8b00  addli r23, r23, 64
005734  1f0d0d01  addli r26, r26, 128
005738  9f8c0c01  addli r25, r25, 128
00573c  1f0c0c01  addli r24, r24, 128
005740  42010802  vload.mz vr2{mr1}, 0(r16)
005744  ca810802  vloads.mz vr3{mr1}, 0(r17)
005748  4a820d02  vloads.mz vr4{mr1}, 0(r27)
00574c  86320100  vfp162float_l.rn vr5, vr2
005750  06710100  vfp162float_h.rn vr2, vr2
005754  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
005758  12112b02  vadd.f.mz.rn vr2{mr1}, r22, vr2
00575c  06b30100  vfp162float_l.rn vr6, vr3
005760  86330200  vfp162float_l.rn vr7, vr4
005764  86f10100  vfp162float_h.rn vr3, vr3
005768  06720200  vfp162float_h.rn vr4, vr4
00576c  8a925a02  vmul.f.mz.rn vr5{mr1}, r21, vr5
005770  0a912a02  vmul.f.mz.rn vr2{mr1}, r21, vr2
005774  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
005778  26123102  vmac.f.mz.rn vr4{mr1}, vr2, vr3
00577c  86900300  vfloat2fp16_l.rn vr1, vr7
005780  86500200  vfloat2fp16_h.rn vr1, vr4
005784  46001802  vstore.mz vr1{mr1}, 0(r16)
005788  3f9dfbfe  blt.s r23, r15, -188
00578c  db97ffff  j -836
005790  9f000040  addli r1, zero, 8192
005794  2b0100f0  lui r2, 983040
005798  97902000  or r1, r1, r2
00579c  2b310200  lui r2, 35
0057a0  1f010100  addli r2, r2, 0
0057a4  ff002300  l_gm2sm r1, r2, 0(r[7:8])
0057a8  db070000  j 60
0057ac  63012f00  loadli.w r2,  16(r30)
0057b0  ab0100f0  lui r3, 983040
0057b4  1b312100  slli r2, r2, 2
0057b8  17113100  or r2, r2, r3
0057bc  ab810200  lui r3, 40
0057c0  9f810108  addli r3, r3, 1024
0057c4  7f013300  l_gm2sm r2, r3, 0(r[7:8])
0057c8  5bf00000  j 1920
0057cc  9f000040  addli r1, zero, 8192
0057d0  2b0100f0  lui r2, 983040
0057d4  97902000  or r1, r1, r2
0057d8  2b510200  lui r2, 37
0057dc  1f010100  addli r2, r2, 0
0057e0  ff002400  l_gm2sm r1, r2, 0(r[9:10])
0057e4  abf00000  lui r1, 15
0057e8  00200300  mfence { sm, gm }
0057ec  1f020006  addli r4, zero, 768
0057f0  1b91f0ff  ori r2, r1, 4095
0057f4  9b001500  andi r1, r10, 1
0057f8  80210104  csr_set csr3, r2
0057fc  1f010006  addli r2, zero, 768
005800  00d00100  sync_group
005804  67081fd6  storeli.w r1, -5248(r30)
005808  37a00000  beq r1, zero, 8
00580c  1f02000a  addli r4, zero, 1280
005810  e3411f00  loadli.w r3,  12(r30)
005814  9f120000  addli r5, zero, 1
005818  3ffc5104  blt.s r3, r5, 2844
00581c  e3000fd7  loadli.w r1,  -5248(r30)
005820  80510102  load_param_i r3, 2
005824  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005828  ab180200  lui r17, 33
00582c  ab7b0200  lui r23, 39
005830  2b7e0200  lui r28, 39
005834  9f020000  addli r5, zero, 0
005838  1b441500  srli r8, r10, 1
00583c  9b342200  slli r9, r4, 2
005840  9f078fd7  addli r15, r30, -5184
005844  1f090005  addli r18, zero, 640
005848  9f0a8000  addli r21, zero, 64
00584c  1f0b4000  addli r22, zero, 32
005850  9f0d0003  addli r27, zero, 384
005854  9bc31100  srli r7, r3, 1
005858  ab310200  lui r3, 35
00585c  9f880800  addli r17, r17, 0
005860  9f8b0b00  addli r23, r23, 0
005864  1f0e0e04  addli r28, r28, 512
005868  8b902020  mul.s r1, r1, r2
00586c  9f810100  addli r3, r3, 0
005870  1bb12000  slli r2, r1, 2
005874  67041fd6  storeli.w r1, -5312(r30)
005878  abf0ffff  lui r1, 1048575
00587c  8b153110  add.s r11, r2, r3
005880  ab510200  lui r3, 37
005884  9b9000f8  ori r1, r1, 3968
005888  9f810100  addli r3, r3, 0
00588c  67081fd4  storeli.w r1, -5504(r30)
005890  0b163110  add.s r12, r2, r3
005894  1f018fd5  addli r2, r30, -5440
005898  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00589c  2bf10000  lui r2, 15
0058a0  1b1cf1ff  ori r24, r2, 4095
0058a4  db030000  j 28
0058a8  00a00300  mfence { lm, sm, gm }
0058ac  80210c04  csr_set csr3, r24
0058b0  00d00100  sync_group
0058b4  8b927210  add.s r5, r5, r7
0058b8  3fa00201  blt.s r5, r16, 8
0058bc  5b65f6ff  j -19672
0058c0  0b918210  add.s r2, r5, r8
0058c4  cb1f28fe  ble.s r16, r2, -28
0058c8  e3001f00  loadli.w r1,  8(r30)
0058cc  0b111110  add.s r2, r2, r1
0058d0  e3008fd6  loadli.w r1,  -5312(r30)
0058d4  1b31b100  slli r2, r2, 11
0058d8  17111100  or r2, r2, r1
0058dc  9f200000  addli r1, zero, 2
0058e0  33110128  sext_int2long r[3:4], r2
0058e4  97361102  sll.d r[14:15], r[3:4], r1
0058e8  9f007fd6  addli r1, r30, -5320
0058ec  2b0100f0  lui r2, 983040
0058f0  ebd90000  load.d r[20:21], 0(r1)
0058f4  17912400  or r2, r9, r2
0058f8  8bacd910  add.ul r[26:27], r[20:21], r[14:15]
0058fc  7fa1fc00  l_gm2lm r2, r15, 0(r[26:27])
005900  00a00200  mfence { lm, gm }
005904  e3000fd7  loadli.w r1,  -5248(r30)
005908  3bb60000  bneq r1, zero, 396
00590c  9f008fd5  addli r1, r30, -5440
005910  e3010fd5  loadli.w r3,  -5504(r30)
005914  1f010000  addli r2, zero, 0
005918  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
00591c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
005920  12313002  vadd.s.mz vr2{mr1}, zero, vr3
005924  12323002  vadd.s.mz vr4{mr1}, zero, vr3
005928  0b181111  add.s r16, r2, r17
00592c  0b952710  add.s r10, r15, r2
005930  9f810101  addli r3, r3, 128
005934  1f010104  addli r2, r2, 512
005938  9f000801  addli r1, r16, 128
00593c  4a100802  vloads_mask16.mz vr0{mr1}, 0(r16)
005940  1f038800  addli r6, r16, 64
005944  42140502  vload_mask16.mz vr8{mr1}, 0(r10)
005948  9f098501  addli r19, r10, 192
00594c  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
005950  9f008801  addli r1, r16, 192
005954  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
005958  1f038500  addli r6, r10, 64
00595c  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
005960  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
005964  9f000501  addli r1, r10, 128
005968  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
00596c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005970  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005974  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
005978  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00597c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005980  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005984  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
005988  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
00598c  9f000802  addli r1, r16, 256
005990  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005994  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
005998  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00599c  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
0059a0  1f030503  addli r6, r10, 384
0059a4  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0059a8  9f008802  addli r1, r16, 320
0059ac  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
0059b0  9f090502  addli r19, r10, 256
0059b4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0059b8  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0059bc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0059c0  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0059c4  9f000803  addli r1, r16, 384
0059c8  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
0059cc  1f088803  addli r16, r16, 448
0059d0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0059d4  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0059d8  9f008502  addli r1, r10, 320
0059dc  4a150802  vloads_mask16.mz vr10{mr1}, 0(r16)
0059e0  1f058503  addli r10, r10, 448
0059e4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0059e8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0059ec  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
0059f0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0059f4  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
0059f8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0059fc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005a00  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
005a04  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005a08  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
005a0c  93802105  setlt.u r1, r3, r18
005a10  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005a14  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005a18  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005a1c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005a20  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005a24  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005a28  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
005a2c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005a30  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005a34  bbdb00fe  bneq r1, zero, -268
005a38  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005a3c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005a40  9f000002  addli r1, zero, 256
005a44  6af100c0  vsrl.p vr2, r1, vr0
005a48  eaf110c0  vsrl.p vr3, r1, vr1
005a4c  9f000001  addli r1, zero, 128
005a50  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a54  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a58  6af100c0  vsrl.p vr2, r1, vr0
005a5c  eaf110c0  vsrl.p vr3, r1, vr1
005a60  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a64  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a68  6af10ac0  vsrl.p vr2, r21, vr0
005a6c  eaf11ac0  vsrl.p vr3, r21, vr1
005a70  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a74  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a78  6a710bc0  vsrl.p vr2, r22, vr0
005a7c  ea711bc0  vsrl.p vr3, r22, vr1
005a80  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a84  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a88  7a130040  vextracti.f r6, 0(vr0)
005a8c  fa910040  vextracti.f r3, 0(vr1)
005a90  5b640000  j 800
005a94  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005a98  abf0ffff  lui r1, 1048575
005a9c  1f010000  addli r2, zero, 0
005aa0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005aa4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005aa8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005aac  9b9100f8  ori r3, r1, 3968
005ab0  0b982810  add.s r16, r17, r2
005ab4  0b952710  add.s r10, r15, r2
005ab8  9f810101  addli r3, r3, 128
005abc  1f010104  addli r2, r2, 512
005ac0  1f0d0831  addli r26, r16, 6272
005ac4  1f030830  addli r6, r16, 6144
005ac8  9f008831  addli r1, r16, 6336
005acc  9f0c0518  addli r25, r10, 3072
005ad0  ca130d02  vloads_mask16.mz vr7{mr1}, 0(r26)
005ad4  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
005ad8  1f038830  addli r6, r16, 6208
005adc  ca940002  vloads_mask16.mz vr9{mr1}, 0(r1)
005ae0  9f008518  addli r1, r10, 3136
005ae4  1f0d8519  addli r26, r10, 3264
005ae8  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
005aec  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
005af0  1f030519  addli r6, r10, 3200
005af4  42100d02  vload_mask16.mz vr0{mr1}, 0(r26)
005af8  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
005afc  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
005b00  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005b04  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
005b08  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
005b0c  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
005b10  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005b14  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
005b18  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
005b1c  1f030832  addli r6, r16, 6400
005b20  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
005b24  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
005b28  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005b2c  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
005b30  9f0c051a  addli r25, r10, 3328
005b34  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
005b38  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005b3c  9f00051b  addli r1, r10, 3456
005b40  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
005b44  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
005b48  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
005b4c  1f038832  addli r6, r16, 6464
005b50  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005b54  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005b58  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
005b5c  1f030833  addli r6, r16, 6528
005b60  1f088833  addli r16, r16, 6592
005b64  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
005b68  1f03851a  addli r6, r10, 3392
005b6c  4a150802  vloads_mask16.mz vr10{mr1}, 0(r16)
005b70  1f05851b  addli r10, r10, 3520
005b74  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
005b78  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005b7c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
005b80  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005b84  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
005b88  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005b8c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005b90  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
005b94  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005b98  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
005b9c  1383b105  setlt.u r6, r3, r27
005ba0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005ba4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005ba8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005bac  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005bb0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005bb4  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005bb8  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
005bbc  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005bc0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005bc4  bb3b03fe  bneq r6, zero, -276
005bc8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005bcc  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005bd0  9f000002  addli r1, zero, 256
005bd4  1f080000  addli r16, zero, 0
005bd8  eaf110c0  vsrl.p vr3, r1, vr1
005bdc  6af100c0  vsrl.p vr2, r1, vr0
005be0  9f000001  addli r1, zero, 128
005be4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005be8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005bec  eaf110c0  vsrl.p vr3, r1, vr1
005bf0  6af100c0  vsrl.p vr2, r1, vr0
005bf4  abf0ffff  lui r1, 1048575
005bf8  1b9500f8  ori r10, r1, 3968
005bfc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005c00  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005c04  eaf11ac0  vsrl.p vr3, r21, vr1
005c08  6af10ac0  vsrl.p vr2, r21, vr0
005c0c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005c10  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005c14  ea711bc0  vsrl.p vr3, r22, vr1
005c18  6a710bc0  vsrl.p vr2, r22, vr0
005c1c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005c20  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005c24  fa910040  vextracti.f r3, 0(vr1)
005c28  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005c2c  7a110040  vextracti.f r2, 0(vr0)
005c30  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005c34  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005c38  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005c3c  8b9c0811  add.s r25, r17, r16
005c40  0b9d0711  add.s r26, r15, r16
005c44  1f050501  addli r10, r10, 128
005c48  1f080804  addli r16, r16, 512
005c4c  9f800c18  addli r1, r25, 3072
005c50  1f830c19  addli r6, r25, 3200
005c54  42140d02  vload_mask16.mz vr8{mr1}, 0(r26)
005c58  9f098d01  addli r19, r26, 192
005c5c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
005c60  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
005c64  9f808c18  addli r1, r25, 3136
005c68  1f838c19  addli r6, r25, 3264
005c6c  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
005c70  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
005c74  9f000d01  addli r1, r26, 128
005c78  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
005c7c  1f038d00  addli r6, r26, 64
005c80  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005c84  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
005c88  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005c8c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
005c90  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005c94  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005c98  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
005c9c  9f800c1a  addli r1, r25, 3328
005ca0  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005ca4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005ca8  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
005cac  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
005cb0  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
005cb4  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
005cb8  9f808c1a  addli r1, r25, 3392
005cbc  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
005cc0  9f090d02  addli r19, r26, 256
005cc4  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005cc8  1f030d03  addli r6, r26, 384
005ccc  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
005cd0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005cd4  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
005cd8  9f800c1b  addli r1, r25, 3456
005cdc  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
005ce0  9f8c8c1b  addli r25, r25, 3520
005ce4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005ce8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005cec  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
005cf0  9f008d02  addli r1, r26, 320
005cf4  4a950c02  vloads_mask16.mz vr10{mr1}, 0(r25)
005cf8  9f0c8d03  addli r25, r26, 448
005cfc  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005d00  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005d04  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
005d08  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005d0c  c2940c02  vload_mask16.mz vr9{mr1}, 0(r25)
005d10  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005d14  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005d18  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
005d1c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005d20  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
005d24  93002505  setlt.u r1, r10, r18
005d28  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005d2c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005d30  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005d34  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005d38  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005d3c  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005d40  46907c02  vstore_mask16.mz vr7{mr1}, 0(r25)
005d44  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005d48  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005d4c  bbcb00fe  bneq r1, zero, -272
005d50  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005d54  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005d58  9f000002  addli r1, zero, 256
005d5c  6af100c0  vsrl.p vr2, r1, vr0
005d60  eaf110c0  vsrl.p vr3, r1, vr1
005d64  9f000001  addli r1, zero, 128
005d68  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d6c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d70  6af100c0  vsrl.p vr2, r1, vr0
005d74  eaf110c0  vsrl.p vr3, r1, vr1
005d78  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d7c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d80  6af10ac0  vsrl.p vr2, r21, vr0
005d84  eaf11ac0  vsrl.p vr3, r21, vr1
005d88  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d8c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d90  6a710bc0  vsrl.p vr2, r22, vr0
005d94  ea711bc0  vsrl.p vr3, r22, vr1
005d98  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d9c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005da0  fa100040  vextracti.f r1, 0(vr0)
005da4  7a950040  vextracti.f r10, 0(vr1)
005da8  0b631110  add.f.rn r6, r2, r1
005dac  8be1a110  add.f.rn r3, r3, r10
005db0  8b807230  div.u r1, r5, r7
005db4  00350002  core_id r10
005db8  1f010000  addli r2, zero, 0
005dbc  9bb06000  slli r1, r1, 6
005dc0  9b800004  andi r1, r1, 64
005dc4  9790a000  or r1, r1, r10
005dc8  1bb52000  slli r10, r1, 2
005dcc  9b80e007  andi r1, r1, 126
005dd0  0b187511  add.s r16, r10, r23
005dd4  9bb02000  slli r1, r1, 2
005dd8  73606800  stores.w r6, 0(r16)
005ddc  0b13c511  add.s r6, r10, r28
005de0  1b154500  ori r10, r10, 4
005de4  1f080000  addli r16, zero, 0
005de8  73603300  stores.w r3, 0(r6)
005dec  8b117511  add.s r3, r10, r23
005df0  0b937011  add.s r6, r1, r23
005df4  0b15c511  add.s r10, r10, r28
005df8  8b90c011  add.s r1, r1, r28
005dfc  00a00300  mfence { lm, sm, gm }
005e00  80210c04  csr_set csr3, r24
005e04  00d00100  sync_group
005e08  eb590f00  load.d r[20:21], 0(r30)
005e0c  efc10100  loads.w r3, 0(r3)
005e10  6f430300  loads.w r6, 0(r6)
005e14  6f450500  loads.w r10, 0(r10)
005e18  efc00000  loads.w r1, 0(r1)
005e1c  8ba6d910  add.ul r[14:15], r[20:21], r[14:15]
005e20  8be16110  add.f.rn r3, r3, r6
005e24  8b601510  add.f.rn r1, r10, r1
005e28  2b05003a  lui r10, 237568
005e2c  0be3a120  mul.f.rn r6, r3, r10
005e30  8be0a020  mul.f.rn r1, r1, r10
005e34  8b616320  mul.f.rn r3, r6, r6
005e38  0b650358  neg.f r10, r6
005e3c  8be03018  sub.f.rn r1, r1, r3
005e40  e3013f00  loadli.w r3,  24(r30)
005e44  8be03010  add.f.rn r1, r1, r3
005e48  ab01803f  lui r3, 260096
005e4c  8f800008  sqrt.f.rn r1, r1
005e50  8f811118  div.f.rn r3, r3, r1
005e54  0b9d2510  add.s r26, r11, r2
005e58  0b932710  add.s r6, r15, r2
005e5c  8b1c2610  add.s r25, r12, r2
005e60  9f098d00  addli r19, r26, 64
005e64  9f008300  addli r1, r6, 64
005e68  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
005e6c  4a110d02  vloads_mask16.mz vr2{mr1}, 0(r26)
005e70  4a920c02  vloads_mask16.mz vr4{mr1}, 0(r25)
005e74  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
005e78  9f898c00  addli r19, r25, 64
005e7c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
005e80  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
005e84  9f094800  addli r19, r16, 32
005e88  12100502  vadd.f.mz.rn vr0{mr1}, r10, vr0
005e8c  93093207  setle.u r19, r4, r19
005e90  92101502  vadd.f.mz.rn vr1{mr1}, r10, vr1
005e94  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
005e98  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
005e9c  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
005ea0  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
005ea4  46104302  vstore_mask16.mz vr4{mr1}, 0(r6)
005ea8  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005eac  bb910900  bneq r19, zero, 100
005eb0  9f090d01  addli r19, r26, 128
005eb4  1f8a0c01  addli r20, r25, 128
005eb8  9f000301  addli r1, r6, 128
005ebc  1f038301  addli r6, r6, 192
005ec0  1f088800  addli r16, r16, 64
005ec4  1f010102  addli r2, r2, 256
005ec8  4a910902  vloads_mask16.mz vr2{mr1}, 0(r19)
005ecc  9f098d01  addli r19, r26, 192
005ed0  ca110a02  vloads_mask16.mz vr3{mr1}, 0(r20)
005ed4  1f8a8c01  addli r20, r25, 192
005ed8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
005edc  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
005ee0  4a920902  vloads_mask16.mz vr4{mr1}, 0(r19)
005ee4  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
005ee8  93094804  setlt.u r19, r16, r4
005eec  12100502  vadd.f.mz.rn vr0{mr1}, r10, vr0
005ef0  92101502  vadd.f.mz.rn vr1{mr1}, r10, vr1
005ef4  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
005ef8  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
005efc  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
005f00  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
005f04  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
005f08  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005f0c  3bad09fe  bneq r19, zero, -184
005f10  ab0000f0  lui r1, 983040
005f14  00a00000  mfence { lm }
005f18  97901400  or r1, r9, r1
005f1c  ffb0f600  s_lm2gm r1, r15, 0(r[14:15])
005f20  00a00200  mfence { lm, gm }
005f24  63481f00  loadli.w r16,  12(r30)
005f28  db31ffff  j -1652
005f2c  63012f00  loadli.w r2,  16(r30)
005f30  ab0100f0  lui r3, 983040
005f34  1b312100  slli r2, r2, 2
005f38  17113100  or r2, r2, r3
005f3c  ab910200  lui r3, 41
005f40  9f810108  addli r3, r3, 1024
005f44  7f013400  l_gm2sm r2, r3, 0(r[9:10])
005f48  2bf10000  lui r2, 15
005f4c  e3411f00  loadli.w r3,  12(r30)
005f50  00200300  mfence { sm, gm }
005f54  1b11f1ff  ori r2, r2, 4095
005f58  80210104  csr_set csr3, r2
005f5c  00d00100  sync_group
005f60  4bdf1100  ble.s r3, r1, 980
005f64  e3012f00  loadli.w r3,  16(r30)
005f68  e3422f00  loadli.w r5,  20(r30)
005f6c  ab780200  lui r17, 39
005f70  2b890200  lui r18, 40
005f74  ab990200  lui r19, 41
005f78  9f038fd7  addli r7, r30, -5184
005f7c  1f140000  addli r8, zero, 1
005f80  1f050002  addli r10, zero, 256
005f84  1f060001  addli r12, zero, 128
005f88  9f068000  addli r13, zero, 64
005f8c  1f084000  addli r16, zero, 32
005f90  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005f94  9f880808  addli r17, r17, 1024
005f98  1f090908  addli r18, r18, 1024
005f9c  9f890908  addli r19, r19, 1024
005fa0  0b925110  add.s r4, r3, r5
005fa4  9bb52100  slli r11, r3, 2
005fa8  33810108  fix2float.rn r2, r3
005fac  9f71f2ff  addli r3, r4, -1
005fb0  1bb22200  slli r4, r5, 2
005fb4  67082fd4  storeli.w r2, -5504(r30)
005fb8  1f010fd7  addli r2, r30, -5248
005fbc  670cbfd4  storeli.w r11, -5440(r30)
005fc0  8b925130  div.s r5, r3, r5
005fc4  abf1ffff  lui r3, 1048575
005fc8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005fcc  9b94f1ff  ori r9, r3, 4095
005fd0  5b080000  j 64
005fd4  1f038fd6  addli r6, r30, -5312
005fd8  6b510f00  load.d r[3:4], 0(r30)
005fdc  6b5a0300  load.d r[21:22], 0(r6)
005fe0  00a00000  mfence { lm }
005fe4  00530102  load_param_i r6, 2
005fe8  e3058fd5  loadli.w r11,  -5440(r30)
005fec  8b101310  add.s r1, r6, r1
005ff0  0b2a4111  add.ul r[21:22], r[3:4], r[21:22]
005ff4  ab0100f0  lui r3, 983040
005ff8  97913500  or r3, r11, r3
005ffc  ff317a00  s_lm2gm r3, r7, 0(r[21:22])
006000  00a00200  mfence { lm, gm }
006004  63411f00  loadli.w r2,  12(r30)
006008  3fa02000  blt.s r1, r2, 8
00600c  5b650000  j 808
006010  63011f00  loadli.w r2,  8(r30)
006014  8b912010  add.s r3, r1, r2
006018  1f210000  addli r2, zero, 2
00601c  8b91f120  mul.s r3, r3, r15
006020  339a0128  sext_int2long r[21:22], r3
006024  ab0100f0  lui r3, 983040
006028  173c2a02  sll.d r[25:26], r[21:22], r2
00602c  1f017fd6  addli r2, r30, -5320
006030  97913500  or r3, r11, r3
006034  6b5a0100  load.d r[21:22], 0(r2)
006038  1f018fd6  addli r2, r30, -5312
00603c  0b2b8a11  add.ul r[23:24], r[21:22], r[25:26]
006040  ff217b00  l_gm2lm r3, r7, 0(r[23:24])
006044  00a00200  mfence { lm, gm }
006048  73308101  store.d r[25:26], 0(r2)
00604c  bf978200  blt.s r5, r8, 484
006050  9f0b0000  addli r23, zero, 0
006054  1f0b0000  addli r22, zero, 0
006058  1f0c0000  addli r24, zero, 0
00605c  db0c0000  j 100
006060  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
006064  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006068  1f1c0c00  addli r24, r24, 1
00606c  6a7105c0  vsrl.p vr2, r10, vr0
006070  ea7115c0  vsrl.p vr3, r10, vr1
006074  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006078  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00607c  6a7106c0  vsrl.p vr2, r12, vr0
006080  ea7116c0  vsrl.p vr3, r12, vr1
006084  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006088  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00608c  6af106c0  vsrl.p vr2, r13, vr0
006090  eaf116c0  vsrl.p vr3, r13, vr1
006094  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006098  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00609c  6a7108c0  vsrl.p vr2, r16, vr0
0060a0  ea7118c0  vsrl.p vr3, r16, vr1
0060a4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0060a8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060ac  7a110040  vextracti.f r2, 0(vr0)
0060b0  fa910040  vextracti.f r3, 0(vr1)
0060b4  8beb2b10  add.f.rn r23, r23, r2
0060b8  0b6b3b10  add.f.rn r22, r22, r3
0060bc  b7755c00  beq r24, r5, 380
0060c0  9f010c00  addli r3, r24, 0
0060c4  3730a700  beq r14, r10, 12
0060c8  97219c00  xor r3, r24, r9
0060cc  8b913210  add.s r3, r5, r3
0060d0  1f010fd7  addli r2, r30, -5248
0060d4  0b93e120  mul.s r6, r3, r14
0060d8  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0060dc  0b936718  sub.s r6, r15, r6
0060e0  8b1ce340  min.s r25, r6, r14
0060e4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0060e8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0060ec  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0060f0  bfcd8cfe  blt.s r25, r8, -144
0060f4  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0060f8  1f0d0000  addli r26, zero, 0
0060fc  8b1d3220  mul.s r27, r4, r3
006100  1f0e8fd7  addli r28, r30, -5184
006104  9f850800  addli r11, r17, 0
006108  92304002  vadd.s.mz vr1{mr1}, zero, vr4
00610c  12314002  vadd.s.mz vr2{mr1}, zero, vr4
006110  92314002  vadd.s.mz vr3{mr1}, zero, vr4
006114  8b91b511  add.s r3, r11, r27
006118  0b13be11  add.s r6, r28, r27
00611c  1f818100  addli r2, r3, 64
006120  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
006124  1f8a8101  addli r20, r3, 192
006128  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
00612c  9f0a8301  addli r21, r6, 192
006130  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
006134  1f810101  addli r2, r3, 128
006138  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
00613c  1f0a0301  addli r20, r6, 128
006140  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
006144  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
006148  c2150a02  vload_mask16.mz vr11{mr1}, 0(r20)
00614c  1f018300  addli r2, r6, 64
006150  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
006154  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
006158  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
00615c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
006160  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
006164  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006168  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00616c  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
006170  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
006174  1f018d00  addli r2, r26, 64
006178  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
00617c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
006180  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006184  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
006188  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00618c  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
006190  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
006194  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
006198  4bab2cfe  ble.s r25, r2, -312
00619c  1f8a0102  addli r20, r3, 256
0061a0  9f8a8102  addli r21, r3, 320
0061a4  1f010302  addli r2, r6, 256
0061a8  1f0d0d01  addli r26, r26, 128
0061ac  9f850504  addli r11, r11, 512
0061b0  1f0e0e04  addli r28, r28, 512
0061b4  4a100a02  vloads_mask16.mz vr0{mr1}, 0(r20)
0061b8  1f8a0103  addli r20, r3, 384
0061bc  9f818103  addli r3, r3, 448
0061c0  ca920a02  vloads_mask16.mz vr5{mr1}, 0(r21)
0061c4  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
0061c8  ca130a02  vloads_mask16.mz vr7{mr1}, 0(r20)
0061cc  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
0061d0  9f010303  addli r3, r6, 384
0061d4  1f0a8302  addli r20, r6, 320
0061d8  1f038303  addli r6, r6, 448
0061dc  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
0061e0  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
0061e4  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0061e8  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
0061ec  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0061f0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0061f4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0061f8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0061fc  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
006200  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
006204  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
006208  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00620c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006210  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
006214  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006218  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00621c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
006220  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
006224  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
006228  bf3b9dff  blt.s r26, r25, -276
00622c  dbc6ffff  j -460
006230  1f0b0000  addli r22, zero, 0
006234  9f0b0000  addli r23, zero, 0
006238  00a00000  mfence { lm }
00623c  3fe687fe  blt.s r15, r8, -616
006240  63010fd5  loadli.w r2,  -5504(r30)
006244  9f050000  addli r11, zero, 0
006248  8f812b18  div.f.rn r3, r23, r2
00624c  0f032b18  div.f.rn r6, r22, r2
006250  63013f00  loadli.w r2,  24(r30)
006254  0beb3120  mul.f.rn r22, r3, r3
006258  0b636319  sub.f.rn r6, r6, r22
00625c  0beb0158  neg.f r22, r3
006260  9f010000  addli r3, zero, 0
006264  0b632310  add.f.rn r6, r6, r2
006268  2b01803f  lui r2, 260096
00626c  0f030308  sqrt.f.rn r6, r6
006270  0f036118  div.f.rn r6, r2, r6
006274  0b9c2511  add.s r24, r11, r18
006278  8b9bb310  add.s r23, r7, r11
00627c  8b9c3511  add.s r25, r11, r19
006280  4a110c02  vloads_mask16.mz vr2{mr1}, 0(r24)
006284  1f0c8c00  addli r24, r24, 64
006288  1f8d8b00  addli r26, r23, 64
00628c  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
006290  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
006294  4a120c02  vloads_mask16.mz vr4{mr1}, 0(r24)
006298  1f8c8c00  addli r24, r25, 64
00629c  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
0062a0  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0062a4  1f8c4100  addli r24, r3, 32
0062a8  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
0062ac  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
0062b0  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
0062b4  8a113302  vmul.f.mz.rn vr3{mr1}, r6, vr3
0062b8  a6922002  vmac.f.mz.rn vr5{mr1}, vr1, vr2
0062bc  26934102  vmac.f.mz.rn vr6{mr1}, vr3, vr4
0062c0  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
0062c4  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
0062c8  4bb487ff  ble.s r15, r24, -756
0062cc  8b1cb910  add.s r25, r18, r11
0062d0  0b9db910  add.s r26, r19, r11
0062d4  1f8c0b01  addli r24, r23, 128
0062d8  9f8b8b01  addli r23, r23, 192
0062dc  9f818100  addli r3, r3, 64
0062e0  9f850502  addli r11, r11, 256
0062e4  9f8d0c01  addli r27, r25, 128
0062e8  1f0e0d01  addli r28, r26, 128
0062ec  9f8c8c01  addli r25, r25, 192
0062f0  1f0d8d01  addli r26, r26, 192
0062f4  c2100c02  vload_mask16.mz vr1{mr1}, 0(r24)
0062f8  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
0062fc  ca910d02  vloads_mask16.mz vr3{mr1}, 0(r27)
006300  4a120e02  vloads_mask16.mz vr4{mr1}, 0(r28)
006304  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
006308  4a130d02  vloads_mask16.mz vr6{mr1}, 0(r26)
00630c  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
006310  12112b02  vadd.f.mz.rn vr2{mr1}, r22, vr2
006314  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
006318  0a112302  vmul.f.mz.rn vr2{mr1}, r6, vr2
00631c  26923002  vmac.f.mz.rn vr4{mr1}, vr1, vr3
006320  26135102  vmac.f.mz.rn vr6{mr1}, vr2, vr5
006324  46104c02  vstore_mask16.mz vr4{mr1}, 0(r24)
006328  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
00632c  3fadf1fe  blt.s r3, r15, -184
006330  db94ffff  j -860
006334  9f0e8fd3  addli sp, r30, -5696
006338  e38f2e2c  loadli.w r31,  5648(sp)
00633c  63cf2e2c  loadli.w r30,  5652(sp)
006340  638e3e2c  loadli.w r28,  5656(sp)
006344  e3cd3e2c  loadli.w r27,  5660(sp)
006348  638d4e2c  loadli.w r26,  5664(sp)
00634c  e3cc4e2c  loadli.w r25,  5668(sp)
006350  638c5e2c  loadli.w r24,  5672(sp)
006354  e3cb5e2c  loadli.w r23,  5676(sp)
006358  638b6e2c  loadli.w r22,  5680(sp)
00635c  e3ca6e2c  loadli.w r21,  5684(sp)
006360  638a7e2c  loadli.w r20,  5688(sp)
006364  e3c97e2c  loadli.w r19,  5692(sp)
006368  9f8e8e2c  addli sp, sp, 5696
00636c  5f800f00  jr r31, 0
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
0065ac  00100000  exit
