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
0000fc  cb315b01  ble.s r22, r21, 108
000100  ab10833a  lui r1, 239665
000104  80db0002  load_param_i r23, 1
000108  1f1c0000  addli r24, zero, 1
00010c  9f0c0006  addli r25, zero, 768
000110  1f0d0008  addli r26, zero, 1024
000114  9f0d0001  addli r27, zero, 128
000118  1b9ef026  ori r28, r1, 623
00011c  8b904a31  div.s r1, r21, r20
000120  6b510f02  load.d r[3:4], 32(r30)
000124  6b528f00  load.d r[5:6], 8(r30)
000128  6b530f01  load.d r[7:8], 16(r30)
00012c  6b548f01  load.d r[9:10], 24(r30)
000130  67820e00  storeli.w zero, 32(sp)
000134  e7c18e01  storeli.w r24, 28(sp)
000138  67c19e01  storeli.w r25, 20(sp)
00013c  6781ae01  storeli.w r26, 16(sp)
000140  e7c0be01  storeli.w r27, 12(sp)
000144  e781ce01  storeli.w r28, 24(sp)
000148  73b02e00  store.d r[3:4], 0(sp)
00014c  6b510f00  load.d r[3:4], 0(r30)
000150  8b903031  div.s r1, r1, r19
000154  9bb07000  slli r1, r1, 7
000158  e7801e00  storeli.w r1, 8(sp)
00015c  d72e0000  jal 372
000160  8b9a7a11  add.s r21, r21, r23
000164  bfee6aff  blt.s r21, r22, -72
000168  9f8e8e00  addli sp, sp, 64
00016c  00a00300  mfence { lm, sm, gm }
000170  00100000  exit
000174  9f8e8ed3  addli sp, sp, -5696
000178  67c1ee2d  storeli.w r30, 5652(sp)
00017c  1f8f8e2c  addli r30, sp, 5696
000180  1f250000  addli r10, zero, 2
000184  e7c33e2d  storeli.w r19, 5692(sp)
000188  e7834e2d  storeli.w r20, 5688(sp)
00018c  67c35e2d  storeli.w r21, 5684(sp)
000190  67836e2d  storeli.w r22, 5680(sp)
000194  e7c27e2d  storeli.w r23, 5676(sp)
000198  e7828e2d  storeli.w r24, 5672(sp)
00019c  67c29e2d  storeli.w r25, 5668(sp)
0001a0  6782ae2d  storeli.w r26, 5664(sp)
0001a4  e7c1be2d  storeli.w r27, 5660(sp)
0001a8  e781ce2d  storeli.w r28, 5656(sp)
0001ac  6781fe2d  storeli.w r31, 5648(sp)
0001b0  e3004f00  loadli.w r1,  32(r30)
0001b4  63472f00  loadli.w r14,  20(r30)
0001b8  e3072f00  loadli.w r15,  16(r30)
0001bc  63481f00  loadli.w r16,  12(r30)
0001c0  9f057fd6  addli r11, r30, -5320
0001c4  73b02500  store.d r[3:4], 0(r11)
0001c8  3f511500  blt.s r10, r1, 84
0001cc  1f110000  addli r2, zero, 1
0001d0  b7a92004  beq r1, r2, 2664
0001d4  1f210000  addli r2, zero, 2
0001d8  3be82004  bneq r1, r2, 2584
0001dc  e3403f00  loadli.w r1,  28(r30)
0001e0  37f60012  beq r1, zero, 9628
0001e4  80300002  core_id r1
0001e8  1f210000  addli r2, zero, 2
0001ec  37df2024  beq r1, r2, 19412
0001f0  1f110000  addli r2, zero, 1
0001f4  37be2024  beq r1, r2, 19340
0001f8  bb9f0024  bneq r1, zero, 19428
0001fc  63012f00  loadli.w r2,  16(r30)
000200  ab0100f0  lui r3, 983040
000204  1b311100  slli r2, r2, 1
000208  17113100  or r2, r2, r3
00020c  ab910100  lui r3, 25
000210  9f810100  addli r3, r3, 0
000214  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000218  db780900  j 19396
00021c  1f310000  addli r2, zero, 3
000220  37e92004  beq r1, r2, 2648
000224  1f410000  addli r2, zero, 4
000228  3ba72004  bneq r1, r2, 2504
00022c  e3002f00  loadli.w r1,  16(r30)
000230  1f010010  addli r2, zero, 2048
000234  bbeb2008  bneq r1, r2, 4856
000238  e3403f00  loadli.w r1,  28(r30)
00023c  b7880018  beq r1, zero, 12832
000240  80300002  core_id r1
000244  ab070000  lui r15, 0
000248  1f150000  addli r10, zero, 1
00024c  9f058fd7  addli r11, r30, -5184
000250  1f068000  addli r12, zero, 64
000254  9f060010  addli r13, zero, 2048
000258  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
00025c  1bb15000  slli r2, r1, 5
000260  80500102  load_param_i r1, 2
000264  9f870700  addli r15, r15, 0
000268  9bb15000  slli r3, r1, 5
00026c  1f070100  addli r14, r2, 0
000270  33080728  zext_int2long r[17:18], r14
000274  2b0900f0  lui r18, 983040
000278  1738a802  sll.d r[17:18], r[17:18], r10
00027c  17192601  or r18, r12, r18
000280  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000284  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000288  1b382700  slli r16, r14, 2
00028c  0b97e110  add.s r14, r3, r14
000290  00a00200  mfence { lm, gm }
000294  c2800502  vload.mz vr1{mr1}, 0(r11)
000298  9308d704  setlt.u r17, r14, r13
00029c  0b18f810  add.s r16, r16, r15
0002a0  1f098800  addli r18, r16, 64
0002a4  66c11180  vmerge_l.hf vr2, vr3, vr1
0002a8  e6c011a0  vmerge_h.hf vr1, vr3, vr1
0002ac  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
0002b0  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
0002b4  bbfe08fe  bneq r17, zero, -68
0002b8  00320002  core_id r4
0002bc  9bb27000  slli r5, r1, 7
0002c0  1f160000  addli r12, zero, 1
0002c4  9f068fd7  addli r13, r30, -5184
0002c8  1f078000  addli r14, zero, 64
0002cc  1f080010  addli r16, zero, 2048
0002d0  9f080100  addli r17, r2, 0
0002d4  00a00000  mfence { lm }
0002d8  9b357200  slli r11, r4, 7
0002dc  2b220000  lui r4, 2
0002e0  1f020200  addli r4, r4, 0
0002e4  0b954510  add.s r10, r11, r4
0002e8  33890828  zext_int2long r[19:20], r17
0002ec  2b0a00f0  lui r20, 983040
0002f0  8b983810  add.s r17, r17, r3
0002f4  1739c902  sll.d r[19:20], r[19:20], r12
0002f8  171a4701  or r20, r14, r20
0002fc  0b292311  add.ul r[19:20], r[7:8], r[19:20]
000300  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
000304  13890805  setlt.u r18, r17, r16
000308  9f098500  addli r19, r10, 64
00030c  00a00200  mfence { lm, gm }
000310  c2800602  vload.mz vr1{mr1}, 0(r13)
000314  66c11180  vmerge_l.hf vr2, vr3, vr1
000318  e6c011a0  vmerge_h.hf vr1, vr3, vr1
00031c  4e102502  vstores_mask16.mz vr2{mr1}, 0(r10)
000320  0b155510  add.s r10, r10, r5
000324  4e901902  vstores_mask16.mz vr1{mr1}, 0(r19)
000328  3b0f09fe  bneq r18, zero, -64
00032c  2b450000  lui r10, 4
000330  9f130000  addli r7, zero, 1
000334  1f068000  addli r12, zero, 64
000338  9f060010  addli r13, zero, 2048
00033c  00a00000  mfence { lm }
000340  1f050500  addli r10, r10, 0
000344  0b93a510  add.s r6, r11, r10
000348  9f058fd7  addli r11, r30, -5184
00034c  33080128  zext_int2long r[17:18], r2
000350  2b0700f0  lui r14, 983040
000354  0b113110  add.s r2, r2, r3
000358  17387802  sll.d r[17:18], r[17:18], r7
00035c  1717e600  or r14, r12, r14
000360  0b280411  add.ul r[17:18], r[9:10], r[17:18]
000364  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000368  1307d104  setlt.u r14, r2, r13
00036c  1f088300  addli r16, r6, 64
000370  00a00200  mfence { lm, gm }
000374  c2800502  vload.mz vr1{mr1}, 0(r11)
000378  66c11180  vmerge_l.hf vr2, vr3, vr1
00037c  e6c011a0  vmerge_h.hf vr1, vr3, vr1
000380  4e102302  vstores_mask16.mz vr2{mr1}, 0(r6)
000384  0b135310  add.s r6, r6, r5
000388  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
00038c  3b0f07fe  bneq r14, zero, -64
000390  2bf10000  lui r2, 15
000394  80310002  core_id r3
000398  00a00300  mfence { lm, sm, gm }
00039c  9f020006  addli r5, zero, 768
0003a0  1b11f1ff  ori r2, r2, 4095
0003a4  9b811100  andi r3, r3, 1
0003a8  80210104  csr_set csr3, r2
0003ac  1f010006  addli r2, zero, 768
0003b0  00d00100  sync_group
0003b4  670c3fd4  storeli.w r3, -5440(r30)
0003b8  37a00100  beq r3, zero, 8
0003bc  9f02000a  addli r5, zero, 1280
0003c0  e3411f00  loadli.w r3,  12(r30)
0003c4  e3441f00  loadli.w r9,  12(r30)
0003c8  1f130000  addli r6, zero, 1
0003cc  bf8d612e  blt.s r3, r6, 24416
0003d0  e3018fd5  loadli.w r3,  -5440(r30)
0003d4  1f0a8fd7  addli r20, r30, -5184
0003d8  1bb81200  slli r16, r5, 1
0003dc  9f030000  addli r7, zero, 0
0003e0  9f787000  addli r17, zero, 63
0003e4  9f0d0005  addli r27, zero, 640
0003e8  ab06803f  lui r13, 260096
0003ec  9f0c2000  addli r25, zero, 16
0003f0  1f3b0000  addli r22, zero, 3
0003f4  1f5e1000  addli r28, zero, 13
0003f8  2bec0700  lui r24, 126
0003fc  1f2d1000  addli r26, zero, 10
000400  1f070003  addli r14, zero, 384
000404  0b912120  mul.s r2, r3, r2
000408  9bc11000  srli r3, r1, 1
00040c  80300002  core_id r1
000410  9bc51000  srli r11, r1, 1
000414  9b302100  slli r1, r2, 2
000418  67042fd4  storeli.w r2, -5568(r30)
00041c  1f814200  addli r2, r5, 32
000420  0b994010  add.s r18, r1, r4
000424  8b99a010  add.s r19, r1, r10
000428  9bb02200  slli r1, r5, 2
00042c  674f2fd2  storeli.w r2, -5644(r30)
000430  0b114811  add.s r2, r16, r20
000434  2be27f00  lui r4, 2046
000438  8b904011  add.s r1, r1, r20
00043c  9f8080ff  addli r1, r1, -64
000440  670f1fd2  storeli.w r1, -5648(r30)
000444  9f0081ff  addli r1, r2, -64
000448  2bf100fc  lui r2, 1032207
00044c  e74e1fd2  storeli.w r1, -5652(r30)
000450  abf0ffff  lui r1, 1048575
000454  1b1401c0  ori r8, r2, 3072
000458  00a00000  mfence { lm }
00045c  67003fd4  storeli.w r3, -5632(r30)
000460  e74fbfd2  storeli.w r11, -5636(r30)
000464  e70f0fd3  storeli.w r16, -5640(r30)
000468  9b9000f8  ori r1, r1, 3968
00046c  e70e1fd2  storeli.w r1, -5656(r30)
000470  abf00000  lui r1, 15
000474  9b90f0ff  ori r1, r1, 4095
000478  67081fd6  storeli.w r1, -5248(r30)
00047c  ab700000  lui r1, 7
000480  9b9af0ff  ori r21, r1, 4095
000484  ab00ff03  lui r1, 16368
000488  9b9bf03f  ori r23, r1, 1023
00048c  9f000fd5  addli r1, r30, -5504
000490  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
000494  5b040000  j 32
000498  00a00300  mfence { lm, sm, gm }
00049c  e3000fd7  loadli.w r1,  -5248(r30)
0004a0  80a10004  csr_set csr3, r1
0004a4  00d00100  sync_group
0004a8  8b933310  add.s r7, r7, r3
0004ac  3fa09300  blt.s r7, r9, 8
0004b0  dbe50000  j 1836
0004b4  8b90b310  add.s r1, r7, r11
0004b8  cb8f14fe  ble.s r9, r1, -32
0004bc  63011f00  loadli.w r2,  8(r30)
0004c0  8b902010  add.s r1, r1, r2
0004c4  0b813330  div.u r2, r7, r3
0004c8  e3018fd4  loadli.w r3,  -5568(r30)
0004cc  9bb0b000  slli r1, r1, 11
0004d0  97903000  or r1, r1, r3
0004d4  9f017fd6  addli r3, r30, -5320
0004d8  b3940028  sext_int2long r[10:11], r1
0004dc  ab0000f0  lui r1, 983040
0004e0  1b316100  slli r2, r2, 6
0004e4  97b56402  sll.d r[12:13], r[10:11], r6
0004e8  ebd40100  load.d r[10:11], 0(r3)
0004ec  9f018fd6  addli r3, r30, -5312
0004f0  97101800  or r1, r16, r1
0004f4  1b010104  andi r2, r2, 64
0004f8  73b0b100  store.d r[12:13], 0(r3)
0004fc  8ba4b410  add.ul r[10:11], r[10:11], r[12:13]
000500  ffa04401  l_gm2lm r1, r20, 0(r[10:11])
000504  80300002  core_id r1
000508  00a00200  mfence { lm, gm }
00050c  17161100  or r12, r2, r1
000510  e340dfd3  loadli.w r1,  -5652(r30)
000514  6301efd3  loadli.w r2,  -5648(r30)
000518  e341efd3  loadli.w r3,  -5644(r30)
00051c  c2800002  vload.mz vr1{mr1}, 0(r1)
000520  9f81c1ff  addli r3, r3, -32
000524  9f0581ff  addli r11, r2, -64
000528  9f8080ff  addli r1, r1, -64
00052c  93843804  setlt.u r9, r17, r3
000530  66c111a0  vmerge_h.hf vr2, vr3, vr1
000534  e6c01180  vmerge_l.hf vr1, vr3, vr1
000538  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
00053c  1f0101ff  addli r2, r2, -128
000540  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
000544  3bef04fe  bneq r9, zero, -40
000548  00a00000  mfence { lm }
00054c  e3008fd5  loadli.w r1,  -5440(r30)
000550  3bb60000  bneq r1, zero, 396
000554  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000558  12313002  vadd.s.mz vr2{mr1}, zero, vr3
00055c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000560  6301dfd3  loadli.w r2,  -5656(r30)
000564  9f000000  addli r1, zero, 0
000568  8b94f010  add.s r9, r1, r15
00056c  8b111a10  add.s r3, r20, r1
000570  1f010101  addli r2, r2, 128
000574  9f800004  addli r1, r1, 512
000578  1f850401  addli r10, r9, 128
00057c  4a900402  vloads_mask16.mz vr0{mr1}, 0(r9)
000580  9f858400  addli r11, r9, 64
000584  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
000588  1f888101  addli r16, r3, 192
00058c  ca120502  vloads_mask16.mz vr5{mr1}, 0(r10)
000590  1f858401  addli r10, r9, 192
000594  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
000598  9f858100  addli r11, r3, 64
00059c  c2150802  vload_mask16.mz vr11{mr1}, 0(r16)
0005a0  ca130502  vloads_mask16.mz vr7{mr1}, 0(r10)
0005a4  1f850101  addli r10, r3, 128
0005a8  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
0005ac  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
0005b0  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0005b4  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0005b8  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0005bc  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0005c0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0005c4  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0005c8  46108502  vstore_mask16.mz vr8{mr1}, 0(r10)
0005cc  1f850402  addli r10, r9, 256
0005d0  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0005d4  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0005d8  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0005dc  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
0005e0  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
0005e4  1f858402  addli r10, r9, 320
0005e8  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0005ec  1f880102  addli r16, r3, 256
0005f0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0005f4  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0005f8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0005fc  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
000600  1f850403  addli r10, r9, 384
000604  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000608  9f848403  addli r9, r9, 448
00060c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000610  4a140502  vloads_mask16.mz vr8{mr1}, 0(r10)
000614  1f858102  addli r10, r3, 320
000618  4a950402  vloads_mask16.mz vr10{mr1}, 0(r9)
00061c  9f840103  addli r9, r3, 384
000620  9f818103  addli r3, r3, 448
000624  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
000628  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00062c  c2930402  vload_mask16.mz vr7{mr1}, 0(r9)
000630  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000634  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
000638  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00063c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000640  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
000644  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000648  46106502  vstore_mask16.mz vr6{mr1}, 0(r10)
00064c  1305b105  setlt.u r10, r2, r27
000650  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000654  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000658  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00065c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000660  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000664  46905402  vstore_mask16.mz vr5{mr1}, 0(r9)
000668  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
00066c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000670  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000674  bb5b05fe  bneq r10, zero, -268
000678  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00067c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000680  9f000002  addli r1, zero, 256
000684  6af100c0  vsrl.p vr2, r1, vr0
000688  eaf110c0  vsrl.p vr3, r1, vr1
00068c  9f000001  addli r1, zero, 128
000690  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000694  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000698  6af100c0  vsrl.p vr2, r1, vr0
00069c  eaf110c0  vsrl.p vr3, r1, vr1
0006a0  9f008000  addli r1, zero, 64
0006a4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006a8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006ac  6af100c0  vsrl.p vr2, r1, vr0
0006b0  eaf110c0  vsrl.p vr3, r1, vr1
0006b4  9f004000  addli r1, zero, 32
0006b8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006bc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006c0  6af100c0  vsrl.p vr2, r1, vr0
0006c4  eaf110c0  vsrl.p vr3, r1, vr1
0006c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006d0  fa110040  vextracti.f r3, 0(vr0)
0006d4  fa940040  vextracti.f r9, 0(vr1)
0006d8  5b660000  j 816
0006dc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0006e0  2bf1ffff  lui r2, 1048575
0006e4  9f000000  addli r1, zero, 0
0006e8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0006ec  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0006f0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0006f4  1b1101f8  ori r2, r2, 3968
0006f8  8b941710  add.s r9, r15, r1
0006fc  8b111a10  add.s r3, r20, r1
000700  1f010101  addli r2, r2, 128
000704  9f800004  addli r1, r1, 512
000708  9f880431  addli r17, r9, 6272
00070c  9f850430  addli r11, r9, 6144
000710  1f858431  addli r10, r9, 6336
000714  1f880118  addli r16, r3, 3072
000718  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
00071c  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
000720  9f858430  addli r11, r9, 6208
000724  ca140502  vloads_mask16.mz vr9{mr1}, 0(r10)
000728  1f858118  addli r10, r3, 3136
00072c  9f888119  addli r17, r3, 3264
000730  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
000734  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
000738  9f850119  addli r11, r3, 3200
00073c  42900802  vload_mask16.mz vr0{mr1}, 0(r17)
000740  c2150502  vload_mask16.mz vr11{mr1}, 0(r10)
000744  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
000748  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
00074c  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
000750  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
000754  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
000758  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00075c  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
000760  46907502  vstore_mask16.mz vr7{mr1}, 0(r11)
000764  9f850432  addli r11, r9, 6400
000768  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
00076c  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
000770  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000774  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
000778  1f88011a  addli r16, r3, 3328
00077c  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000780  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
000784  1305e104  setlt.u r10, r2, r14
000788  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
00078c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
000790  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
000794  9f858432  addli r11, r9, 6464
000798  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00079c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0007a0  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
0007a4  9f850433  addli r11, r9, 6528
0007a8  9f848433  addli r9, r9, 6592
0007ac  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
0007b0  9f85811a  addli r11, r3, 3392
0007b4  4a950402  vloads_mask16.mz vr10{mr1}, 0(r9)
0007b8  9f84011b  addli r9, r3, 3456
0007bc  9f81811b  addli r3, r3, 3520
0007c0  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
0007c4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0007c8  c2930402  vload_mask16.mz vr7{mr1}, 0(r9)
0007cc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0007d0  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
0007d4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0007d8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0007dc  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
0007e0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0007e4  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0007e8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0007ec  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0007f0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0007f4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0007f8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0007fc  46905402  vstore_mask16.mz vr5{mr1}, 0(r9)
000800  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000804  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000808  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00080c  bb3b05fe  bneq r10, zero, -276
000810  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000814  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000818  1f010002  addli r2, zero, 256
00081c  9f000000  addli r1, zero, 0
000820  ea7111c0  vsrl.p vr3, r2, vr1
000824  6a7101c0  vsrl.p vr2, r2, vr0
000828  1f010001  addli r2, zero, 128
00082c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000830  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000834  ea7111c0  vsrl.p vr3, r2, vr1
000838  6a7101c0  vsrl.p vr2, r2, vr0
00083c  1f018000  addli r2, zero, 64
000840  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000844  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000848  ea7111c0  vsrl.p vr3, r2, vr1
00084c  6a7101c0  vsrl.p vr2, r2, vr0
000850  1f014000  addli r2, zero, 32
000854  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000858  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00085c  ea7111c0  vsrl.p vr3, r2, vr1
000860  6a7101c0  vsrl.p vr2, r2, vr0
000864  2bf1ffff  lui r2, 1048575
000868  9b1501f8  ori r11, r2, 3968
00086c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000870  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000874  7a970040  vextracti.f r14, 0(vr1)
000878  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00087c  fa110040  vextracti.f r3, 0(vr0)
000880  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000884  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000888  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00088c  0b981710  add.s r16, r15, r1
000890  8b141a10  add.s r9, r20, r1
000894  9f850501  addli r11, r11, 128
000898  9f800004  addli r1, r1, 512
00089c  1f050818  addli r10, r16, 3072
0008a0  9f080819  addli r17, r16, 3200
0008a4  1f818401  addli r2, r9, 192
0008a8  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
0008ac  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
0008b0  1f058818  addli r10, r16, 3136
0008b4  ca920802  vloads_mask16.mz vr5{mr1}, 0(r17)
0008b8  9f088819  addli r17, r16, 3264
0008bc  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
0008c0  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
0008c4  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
0008c8  1f850401  addli r10, r9, 128
0008cc  9f888400  addli r17, r9, 64
0008d0  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
0008d4  42950802  vload_mask16.mz vr10{mr1}, 0(r17)
0008d8  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0008dc  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0008e0  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0008e4  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0008e8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0008ec  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0008f0  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0008f4  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0008f8  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
0008fc  46108502  vstore_mask16.mz vr8{mr1}, 0(r10)
000900  1f850402  addli r10, r9, 256
000904  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
000908  1f01081a  addli r2, r16, 3328
00090c  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
000910  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
000914  1f01881a  addli r2, r16, 3392
000918  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00091c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000920  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
000924  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000928  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00092c  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
000930  1f01081b  addli r2, r16, 3456
000934  1f08881b  addli r16, r16, 3520
000938  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
00093c  1f818402  addli r2, r9, 320
000940  4a150802  vloads_mask16.mz vr10{mr1}, 0(r16)
000944  1f880403  addli r16, r9, 384
000948  9f848403  addli r9, r9, 448
00094c  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
000950  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000954  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000958  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00095c  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
000960  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000964  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000968  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
00096c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000970  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
000974  1381b505  setlt.u r2, r11, r27
000978  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00097c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000980  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000984  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000988  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00098c  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
000990  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000994  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000998  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00099c  bb4b01fe  bneq r2, zero, -272
0009a0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0009a4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0009a8  9f000002  addli r1, zero, 256
0009ac  6af100c0  vsrl.p vr2, r1, vr0
0009b0  eaf110c0  vsrl.p vr3, r1, vr1
0009b4  9f000001  addli r1, zero, 128
0009b8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009bc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009c0  6af100c0  vsrl.p vr2, r1, vr0
0009c4  eaf110c0  vsrl.p vr3, r1, vr1
0009c8  9f008000  addli r1, zero, 64
0009cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009d4  6af100c0  vsrl.p vr2, r1, vr0
0009d8  eaf110c0  vsrl.p vr3, r1, vr1
0009dc  9f004000  addli r1, zero, 32
0009e0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009e4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009e8  6af100c0  vsrl.p vr2, r1, vr0
0009ec  eaf110c0  vsrl.p vr3, r1, vr1
0009f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009f4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009f8  fa100040  vextracti.f r1, 0(vr0)
0009fc  7a910040  vextracti.f r2, 0(vr1)
000a00  8be11110  add.f.rn r3, r3, r1
000a04  8b642710  add.f.rn r9, r14, r2
000a08  ab650000  lui r11, 6
000a0c  2b670000  lui r14, 6
000a10  1b352600  slli r10, r12, 2
000a14  9f000000  addli r1, zero, 0
000a18  1f010000  addli r2, zero, 0
000a1c  9f850500  addli r11, r11, 0
000a20  1f070704  addli r14, r14, 512
000a24  9f880500  addli r17, r11, 0
000a28  0b18e510  add.s r16, r10, r14
000a2c  8b151511  add.s r11, r10, r17
000a30  73609800  stores.w r9, 0(r16)
000a34  9b144500  ori r9, r10, 4
000a38  73e03500  stores.w r3, 0(r11)
000a3c  0b951411  add.s r10, r9, r17
000a40  8b94e410  add.s r9, r9, r14
000a44  00a00300  mfence { lm, sm, gm }
000a48  e3010fd7  loadli.w r3,  -5248(r30)
000a4c  80a10104  csr_set csr3, r3
000a50  9b01e607  andi r3, r12, 126
000a54  00d00100  sync_group
000a58  6f450500  loads.w r10, 0(r10)
000a5c  efc40400  loads.w r9, 0(r9)
000a60  9bb12100  slli r3, r3, 2
000a64  8b951111  add.s r11, r3, r17
000a68  8b91e110  add.s r3, r3, r14
000a6c  efc50500  loads.w r11, 0(r11)
000a70  efc10100  loads.w r3, 0(r3)
000a74  0b65b510  add.f.rn r10, r10, r11
000a78  ab05003a  lui r11, 237568
000a7c  8be13410  add.f.rn r3, r9, r3
000a80  8b64b520  mul.f.rn r9, r10, r11
000a84  8be1b120  mul.f.rn r3, r3, r11
000a88  9f050000  addli r11, zero, 0
000a8c  0be59420  mul.f.rn r10, r9, r9
000a90  8be1a118  sub.f.rn r3, r3, r10
000a94  63053f00  loadli.w r10,  24(r30)
000a98  8be1a110  add.f.rn r3, r3, r10
000a9c  0be50458  neg.f r10, r9
000aa0  8f810108  sqrt.f.rn r3, r3
000aa4  8f813618  div.f.rn r3, r13, r3
000aa8  8b142a10  add.s r9, r20, r2
000aac  0b182910  add.s r16, r18, r2
000ab0  8b982910  add.s r17, r19, r2
000ab4  9f854500  addli r11, r11, 32
000ab8  1f010101  addli r2, r2, 128
000abc  42900402  vload_mask16.mz vr0{mr1}, 0(r9)
000ac0  ca100802  vloads_mask16.mz vr1{mr1}, 0(r16)
000ac4  4a910802  vloads_mask16.mz vr2{mr1}, 0(r17)
000ac8  9f848400  addli r9, r9, 64
000acc  c2910402  vload_mask16.mz vr3{mr1}, 0(r9)
000ad0  9f048800  addli r9, r16, 64
000ad4  1f888800  addli r16, r17, 64
000ad8  4a920402  vloads_mask16.mz vr4{mr1}, 0(r9)
000adc  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
000ae0  93845504  setlt.u r9, r11, r5
000ae4  0b181a10  add.s r16, r20, r1
000ae8  9f808000  addli r1, r1, 64
000aec  12100502  vadd.f.mz.rn vr0{mr1}, r10, vr0
000af0  92113502  vadd.f.mz.rn vr3{mr1}, r10, vr3
000af4  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
000af8  8a913102  vmul.f.mz.rn vr3{mr1}, r3, vr3
000afc  26111002  vmac.f.mz.rn vr2{mr1}, vr0, vr1
000b00  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000b04  6aa01c22  vor.u.mz vr0{mr1}, r25, vr1
000b08  a6924102  vmac.f.mz.rn vr5{mr1}, vr3, vr4
000b0c  6a221e22  vor.u.mz vr4{mr1}, r28, vr1
000b10  ee3120c2  vsrl.s.mz vr3{mr1}, vr0, vr2
000b14  6e3050c2  vsrl.s.mz vr0{mr1}, vr0, vr5
000b18  ea313302  vand.s.mz vr3{mr1}, r6, vr3
000b1c  6a300302  vand.s.mz vr0{mr1}, r6, vr0
000b20  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
000b24  ea211b22  vor.u.mz vr3{mr1}, r22, vr1
000b28  ea201d22  vor.u.mz vr1{mr1}, r26, vr1
000b2c  16b00202  vadd.s.mz vr0{mr1}, vr5, vr0
000b30  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
000b34  12b00a02  vadd.s.mz vr0{mr1}, r21, vr0
000b38  eeb221c2  vsrl.s.mz vr5{mr1}, vr3, vr2
000b3c  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
000b40  6e3202c2  vsrl.s.mz vr4{mr1}, vr4, vr0
000b44  6eb001c2  vsrl.s.mz vr0{mr1}, vr3, vr0
000b48  6a312c02  vand.s.mz vr2{mr1}, r24, vr2
000b4c  ea325202  vand.s.mz vr5{mr1}, r4, vr5
000b50  ea314c02  vand.s.mz vr3{mr1}, r24, vr4
000b54  6a300202  vand.s.mz vr0{mr1}, r4, vr0
000b58  6ab12622  vor.s.mz vr2{mr1}, r13, vr2
000b5c  6ab25622  vor.s.mz vr4{mr1}, r13, vr5
000b60  6ab00622  vor.s.mz vr0{mr1}, r13, vr0
000b64  eab13622  vor.s.mz vr3{mr1}, r13, vr3
000b68  06110120  vfloat2fp16_l.rz vr2, vr2
000b6c  06500020  vfloat2fp16_h.rz vr0, vr0
000b70  06d10120  vfloat2fp16_h.rz vr2, vr3
000b74  06100220  vfloat2fp16_l.rz vr0, vr4
000b78  eeb020a2  vsll.s.mz vr1{mr1}, vr1, vr2
000b7c  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000b80  ea301402  vand.s.mz vr1{mr1}, r8, vr1
000b84  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
000b88  46000802  vstore.mz vr0{mr1}, 0(r16)
000b8c  3bfc04fe  bneq r9, zero, -228
000b90  9f058fd6  addli r11, r30, -5312
000b94  6b510f00  load.d r[3:4], 0(r30)
000b98  6308ffd3  loadli.w r16,  -5640(r30)
000b9c  ab0000f0  lui r1, 983040
000ba0  1f070003  addli r14, zero, 384
000ba4  9f787000  addli r17, zero, 63
000ba8  ebd40500  load.d r[10:11], 0(r11)
000bac  00a00000  mfence { lm }
000bb0  97101800  or r1, r16, r1
000bb4  0b219110  add.ul r[3:4], r[3:4], r[10:11]
000bb8  ff304101  s_lm2gm r1, r20, 0(r[3:4])
000bbc  9f000fd5  addli r1, r30, -5504
000bc0  00a00200  mfence { lm, gm }
000bc4  e3441f00  loadli.w r9,  12(r30)
000bc8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000bcc  e3010fd4  loadli.w r3,  -5632(r30)
000bd0  e345ffd3  loadli.w r11,  -5636(r30)
000bd4  8b933310  add.s r7, r7, r3
000bd8  3ff393fc  blt.s r7, r9, -1828
000bdc  abf00000  lui r1, 15
000be0  9b90f0ff  ori r1, r1, 4095
000be4  80a10004  csr_set csr3, r1
000be8  00d00100  sync_group
000bec  5be80a00  j 22336
000bf0  e3403f00  loadli.w r1,  28(r30)
000bf4  b7a2000a  beq r1, zero, 5288
000bf8  e3002f00  loadli.w r1,  16(r30)
000bfc  1f010010  addli r2, zero, 2048
000c00  3bd22012  bneq r1, r2, 9364
000c04  00350002  core_id r10
000c08  9f200000  addli r1, zero, 2
000c0c  b76e1524  beq r10, r1, 19384
000c10  9f100000  addli r1, zero, 1
000c14  b75d1524  beq r10, r1, 19316
000c18  3b1f0524  bneq r10, zero, 19396
000c1c  9f000040  addli r1, zero, 8192
000c20  2b0100f0  lui r2, 983040
000c24  97902000  or r1, r1, r2
000c28  2b110200  lui r2, 33
000c2c  1f010100  addli r2, r2, 0
000c30  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000c34  5b750900  j 19368
000c38  e3403f00  loadli.w r1,  28(r30)
000c3c  b7830010  beq r1, zero, 8416
000c40  80300002  core_id r1
000c44  1f210000  addli r2, zero, 2
000c48  b7cd2022  beq r1, r2, 18288
000c4c  1f110000  addli r2, zero, 1
000c50  37c52020  beq r1, r2, 16720
000c54  3b8e0022  bneq r1, zero, 18304
000c58  63012f00  loadli.w r2,  16(r30)
000c5c  ab0100f0  lui r3, 983040
000c60  1b311100  slli r2, r2, 1
000c64  17113100  or r2, r2, r3
000c68  abd10100  lui r3, 29
000c6c  9f810100  addli r3, r3, 0
000c70  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000c74  5bec0800  j 18272
000c78  e3002f00  loadli.w r1,  16(r30)
000c7c  1f010010  addli r2, zero, 2048
000c80  3bdb2006  bneq r1, r2, 3796
000c84  e3403f00  loadli.w r1,  28(r30)
000c88  37c5001a  beq r1, zero, 13648
000c8c  003d0002  core_id r26
000c90  abd70000  lui r15, 13
000c94  00510102  load_param_i r2, 2
000c98  1f150000  addli r10, zero, 1
000c9c  9f058fd7  addli r11, r30, -5184
000ca0  1f068000  addli r12, zero, 64
000ca4  9f060010  addli r13, zero, 2048
000ca8  9b305d00  slli r1, r26, 5
000cac  9b315100  slli r3, r2, 5
000cb0  9f8707f0  addli r15, r15, -2048
000cb4  1f870000  addli r14, r1, 0
000cb8  33080728  zext_int2long r[17:18], r14
000cbc  2b0900f0  lui r18, 983040
000cc0  1738a802  sll.d r[17:18], r[17:18], r10
000cc4  17192601  or r18, r12, r18
000cc8  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000ccc  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000cd0  1b382700  slli r16, r14, 2
000cd4  0b97e110  add.s r14, r3, r14
000cd8  00a00200  mfence { lm, gm }
000cdc  42800502  vload.mz vr0{mr1}, 0(r11)
000ce0  9308d704  setlt.u r17, r14, r13
000ce4  0b18f810  add.s r16, r16, r15
000ce8  1f098800  addli r18, r16, 64
000cec  86300000  vfp162float_l.rn vr1, vr0
000cf0  06700000  vfp162float_h.rn vr0, vr0
000cf4  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000cf8  4e100902  vstores_mask16.mz vr0{mr1}, 0(r18)
000cfc  bbfe08fe  bneq r17, zero, -68
000d00  abf20000  lui r5, 15
000d04  1b357d00  slli r10, r26, 7
000d08  1b327100  slli r4, r2, 7
000d0c  1f160000  addli r12, zero, 1
000d10  9f068fd7  addli r13, r30, -5184
000d14  1f078000  addli r14, zero, 64
000d18  1f080010  addli r16, zero, 2048
000d1c  9f880000  addli r17, r1, 0
000d20  00a00000  mfence { lm }
000d24  9f8202f0  addli r5, r5, -2048
000d28  8b155510  add.s r11, r10, r5
000d2c  33890828  zext_int2long r[19:20], r17
000d30  2b0a00f0  lui r20, 983040
000d34  8b983810  add.s r17, r17, r3
000d38  1739c902  sll.d r[19:20], r[19:20], r12
000d3c  171a4701  or r20, r14, r20
000d40  0b292311  add.ul r[19:20], r[7:8], r[19:20]
000d44  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
000d48  13890805  setlt.u r18, r17, r16
000d4c  9f898500  addli r19, r11, 64
000d50  00a00200  mfence { lm, gm }
000d54  42800602  vload.mz vr0{mr1}, 0(r13)
000d58  86300000  vfp162float_l.rn vr1, vr0
000d5c  06700000  vfp162float_h.rn vr0, vr0
000d60  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
000d64  8b954510  add.s r11, r11, r4
000d68  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
000d6c  3b0f09fe  bneq r18, zero, -64
000d70  ab130100  lui r7, 17
000d74  9f058fd7  addli r11, r30, -5184
000d78  1f068000  addli r12, zero, 64
000d7c  9f060010  addli r13, zero, 2048
000d80  00a00000  mfence { lm }
000d84  9f8303f0  addli r7, r7, -2048
000d88  0b137510  add.s r6, r10, r7
000d8c  1f150000  addli r10, zero, 1
000d90  33880028  zext_int2long r[17:18], r1
000d94  2b0700f0  lui r14, 983040
000d98  8b903010  add.s r1, r1, r3
000d9c  1738a802  sll.d r[17:18], r[17:18], r10
000da0  1717e600  or r14, r12, r14
000da4  0b280411  add.ul r[17:18], r[9:10], r[17:18]
000da8  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000dac  1387d004  setlt.u r14, r1, r13
000db0  1f088300  addli r16, r6, 64
000db4  00a00200  mfence { lm, gm }
000db8  42800502  vload.mz vr0{mr1}, 0(r11)
000dbc  86300000  vfp162float_l.rn vr1, vr0
000dc0  06700000  vfp162float_h.rn vr0, vr0
000dc4  4e101302  vstores_mask16.mz vr1{mr1}, 0(r6)
000dc8  0b134310  add.s r6, r6, r4
000dcc  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
000dd0  3b0f07fe  bneq r14, zero, -64
000dd4  abf00000  lui r1, 15
000dd8  00a00300  mfence { lm, sm, gm }
000ddc  9b011d00  andi r3, r26, 1
000de0  1f020006  addli r4, zero, 768
000de4  9b90f0ff  ori r1, r1, 4095
000de8  80a10004  csr_set csr3, r1
000dec  9f000006  addli r1, zero, 768
000df0  00d00100  sync_group
000df4  67083fd6  storeli.w r3, -5248(r30)
000df8  37a00100  beq r3, zero, 8
000dfc  1f02000a  addli r4, zero, 1280
000e00  e3411f00  loadli.w r3,  12(r30)
000e04  1f130000  addli r6, zero, 1
000e08  bf94612a  blt.s r3, r6, 21796
000e0c  e3010fd7  loadli.w r3,  -5248(r30)
000e10  1f088fd7  addli r16, r30, -5184
000e14  1b441100  srli r8, r2, 1
000e18  1f014200  addli r2, r4, 32
000e1c  9b351200  slli r11, r4, 1
000e20  ab3d0100  lui r27, 19
000e24  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000e28  1f030000  addli r6, zero, 0
000e2c  9b441d00  srli r9, r26, 1
000e30  1f7a7000  addli r20, zero, 63
000e34  9f0b0005  addli r23, zero, 640
000e38  1f054000  addli r10, zero, 32
000e3c  1f0b0003  addli r22, zero, 384
000e40  670c2fd4  storeli.w r2, -5440(r30)
000e44  0b910511  add.s r2, r11, r16
000e48  9f8d0df0  addli r27, r27, -2048
000e4c  8b901120  mul.s r1, r3, r1
000e50  67041fd6  storeli.w r1, -5312(r30)
000e54  9bb02000  slli r1, r1, 2
000e58  0b965010  add.s r12, r1, r5
000e5c  8b967010  add.s r13, r1, r7
000e60  9b302200  slli r1, r4, 2
000e64  ab320100  lui r5, 19
000e68  8b900011  add.s r1, r1, r16
000e6c  9f8202f4  addli r5, r5, -1536
000e70  9f8080ff  addli r1, r1, -64
000e74  67081fd4  storeli.w r1, -5504(r30)
000e78  9f0081ff  addli r1, r2, -64
000e7c  1f010fd4  addli r2, r30, -5632
000e80  67041fd4  storeli.w r1, -5568(r30)
000e84  abf0ffff  lui r1, 1048575
000e88  00a00000  mfence { lm }
000e8c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000e90  63411f00  loadli.w r2,  12(r30)
000e94  9b9000f8  ori r1, r1, 3968
000e98  e74f1fd2  storeli.w r1, -5636(r30)
000e9c  abf00000  lui r1, 15
000ea0  1b9ef0ff  ori r28, r1, 4095
000ea4  5b040000  j 32
000ea8  00a00300  mfence { lm, sm, gm }
000eac  80210e04  csr_set csr3, r28
000eb0  00d00100  sync_group
000eb4  63411f00  loadli.w r2,  12(r30)
000eb8  0b138310  add.s r6, r6, r8
000ebc  3f202300  blt.s r6, r2, 8
000ec0  dba3ffff  j -740
000ec4  8b109310  add.s r1, r6, r9
000ec8  cb0f11fe  ble.s r2, r1, -32
000ecc  63011f00  loadli.w r2,  8(r30)
000ed0  e3018fd6  loadli.w r3,  -5312(r30)
000ed4  8b902010  add.s r1, r1, r2
000ed8  0b018330  div.u r2, r6, r8
000edc  9bb0b000  slli r1, r1, 11
000ee0  97903000  or r1, r1, r3
000ee4  9f110000  addli r3, zero, 1
000ee8  b3980028  sext_int2long r[18:19], r1
000eec  ab0000f0  lui r1, 983040
000ef0  1b316100  slli r2, r2, 6
000ef4  97b83802  sll.d r[18:19], r[18:19], r3
000ef8  9f017fd6  addli r3, r30, -5320
000efc  97901500  or r1, r11, r1
000f00  1b010104  andi r2, r2, 64
000f04  6bdc0100  load.d r[25:26], 0(r3)
000f08  1711a101  or r2, r2, r26
000f0c  0b2c1c11  add.ul r[25:26], r[25:26], r[18:19]
000f10  ff200c01  l_gm2lm r1, r16, 0(r[25:26])
000f14  00a00200  mfence { lm, gm }
000f18  e3008fd4  loadli.w r1,  -5568(r30)
000f1c  e3010fd5  loadli.w r3,  -5504(r30)
000f20  e3038fd5  loadli.w r7,  -5440(r30)
000f24  c2800002  vload.mz vr1{mr1}, 0(r1)
000f28  9f83c3ff  addli r7, r7, -32
000f2c  9f8981ff  addli r19, r3, -64
000f30  9f8080ff  addli r1, r1, -64
000f34  13077a04  setlt.u r14, r20, r7
000f38  06f10000  vfp162float_h.rn vr2, vr1
000f3c  86b00000  vfp162float_l.rn vr1, vr1
000f40  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
000f44  9f8101ff  addli r3, r3, -128
000f48  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
000f4c  3b6f07fe  bneq r14, zero, -40
000f50  00a00000  mfence { lm }
000f54  e3000fd7  loadli.w r1,  -5248(r30)
000f58  3bc60000  bneq r1, zero, 400
000f5c  9f000fd4  addli r1, r30, -5632
000f60  6347ffd3  loadli.w r14,  -5636(r30)
000f64  9f010000  addli r3, zero, 0
000f68  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000f6c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000f70  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000f74  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000f78  8b90f110  add.s r1, r3, r15
000f7c  8b133810  add.s r7, r16, r3
000f80  1f070701  addli r14, r14, 128
000f84  9f810104  addli r3, r3, 512
000f88  9f890001  addli r19, r1, 128
000f8c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
000f90  9f8a8000  addli r21, r1, 64
000f94  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
000f98  1f8c8301  addli r24, r7, 192
000f9c  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
000fa0  9f898001  addli r19, r1, 192
000fa4  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
000fa8  9f8a8300  addli r21, r7, 64
000fac  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
000fb0  ca930902  vloads_mask16.mz vr7{mr1}, 0(r19)
000fb4  9f890301  addli r19, r7, 128
000fb8  42950a02  vload_mask16.mz vr10{mr1}, 0(r21)
000fbc  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
000fc0  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
000fc4  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
000fc8  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
000fcc  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
000fd0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000fd4  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
000fd8  46908902  vstore_mask16.mz vr8{mr1}, 0(r19)
000fdc  9f890002  addli r19, r1, 256
000fe0  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000fe4  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
000fe8  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000fec  46905a02  vstore_mask16.mz vr5{mr1}, 0(r21)
000ff0  4a900902  vloads_mask16.mz vr0{mr1}, 0(r19)
000ff4  9f898002  addli r19, r1, 320
000ff8  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
000ffc  1f8c0302  addli r24, r7, 256
001000  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001004  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
001008  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00100c  4a930902  vloads_mask16.mz vr6{mr1}, 0(r19)
001010  9f890003  addli r19, r1, 384
001014  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
001018  9f808003  addli r1, r1, 448
00101c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001020  4a940902  vloads_mask16.mz vr8{mr1}, 0(r19)
001024  9f898302  addli r19, r7, 320
001028  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
00102c  9f800303  addli r1, r7, 384
001030  9f838303  addli r7, r7, 448
001034  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
001038  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00103c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001040  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001044  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001048  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00104c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001050  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
001054  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001058  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
00105c  93097705  setlt.u r19, r14, r23
001060  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001064  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001068  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00106c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001070  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001074  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001078  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
00107c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001080  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001084  bbdb09fe  bneq r19, zero, -268
001088  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00108c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001090  9f000002  addli r1, zero, 256
001094  6af100c0  vsrl.p vr2, r1, vr0
001098  eaf110c0  vsrl.p vr3, r1, vr1
00109c  9f000001  addli r1, zero, 128
0010a0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010a4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010a8  6af100c0  vsrl.p vr2, r1, vr0
0010ac  eaf110c0  vsrl.p vr3, r1, vr1
0010b0  9f008000  addli r1, zero, 64
0010b4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010b8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010bc  6af100c0  vsrl.p vr2, r1, vr0
0010c0  eaf110c0  vsrl.p vr3, r1, vr1
0010c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010cc  6a7105c0  vsrl.p vr2, r10, vr0
0010d0  ea7115c0  vsrl.p vr3, r10, vr1
0010d4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010d8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010dc  fa100040  vextracti.f r1, 0(vr0)
0010e0  fa930040  vextracti.f r7, 0(vr1)
0010e4  db650000  j 812
0010e8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0010ec  abf0ffff  lui r1, 1048575
0010f0  9f010000  addli r3, zero, 0
0010f4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0010f8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0010fc  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001100  1b9700f8  ori r14, r1, 3968
001104  8b933710  add.s r7, r15, r3
001108  8b193810  add.s r19, r16, r3
00110c  1f070701  addli r14, r14, 128
001110  9f810104  addli r3, r3, 512
001114  1f8c0331  addli r24, r7, 6272
001118  9f800330  addli r1, r7, 6144
00111c  9f8c8331  addli r25, r7, 6336
001120  9f8a0918  addli r21, r19, 3072
001124  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
001128  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
00112c  9f808330  addli r1, r7, 6208
001130  ca940c02  vloads_mask16.mz vr9{mr1}, 0(r25)
001134  1f8c0919  addli r24, r19, 3200
001138  42930a02  vload_mask16.mz vr6{mr1}, 0(r21)
00113c  9f8c8919  addli r25, r19, 3264
001140  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
001144  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
001148  9f808918  addli r1, r19, 3136
00114c  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
001150  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
001154  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001158  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
00115c  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
001160  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
001164  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001168  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
00116c  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
001170  9f8a0332  addli r21, r7, 6400
001174  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
001178  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
00117c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001180  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
001184  1f8c091a  addli r24, r19, 3328
001188  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
00118c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001190  9f80091b  addli r1, r19, 3456
001194  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
001198  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00119c  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
0011a0  9f8a8332  addli r21, r7, 6464
0011a4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0011a8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0011ac  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
0011b0  9f8a0333  addli r21, r7, 6528
0011b4  9f838333  addli r7, r7, 6592
0011b8  4a940a02  vloads_mask16.mz vr8{mr1}, 0(r21)
0011bc  9f8a891a  addli r21, r19, 3392
0011c0  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
0011c4  9f83891b  addli r7, r19, 3520
0011c8  93096705  setlt.u r19, r14, r22
0011cc  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
0011d0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0011d4  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0011d8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0011dc  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0011e0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0011e4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0011e8  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
0011ec  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0011f0  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
0011f4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0011f8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0011fc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001200  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001204  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001208  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00120c  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001210  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001214  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001218  bbbb09fe  bneq r19, zero, -276
00121c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001220  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001224  9f000002  addli r1, zero, 256
001228  9f0a0000  addli r21, zero, 0
00122c  eaf110c0  vsrl.p vr3, r1, vr1
001230  6af100c0  vsrl.p vr2, r1, vr0
001234  9f000001  addli r1, zero, 128
001238  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00123c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001240  eaf110c0  vsrl.p vr3, r1, vr1
001244  6af100c0  vsrl.p vr2, r1, vr0
001248  9f008000  addli r1, zero, 64
00124c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001250  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001254  eaf110c0  vsrl.p vr3, r1, vr1
001258  6af100c0  vsrl.p vr2, r1, vr0
00125c  abf0ffff  lui r1, 1048575
001260  9b9900f8  ori r19, r1, 3968
001264  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001268  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00126c  ea7115c0  vsrl.p vr3, r10, vr1
001270  6a7105c0  vsrl.p vr2, r10, vr0
001274  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001278  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00127c  7a970040  vextracti.f r14, 0(vr1)
001280  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001284  fa110040  vextracti.f r3, 0(vr0)
001288  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00128c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001290  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001294  8b905711  add.s r1, r15, r21
001298  8b135811  add.s r7, r16, r21
00129c  9f890901  addli r19, r19, 128
0012a0  9f8a0a04  addli r21, r21, 512
0012a4  1f8c0018  addli r24, r1, 3072
0012a8  9f8c0019  addli r25, r1, 3200
0012ac  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
0012b0  1f8d8301  addli r26, r7, 192
0012b4  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
0012b8  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
0012bc  1f8c8018  addli r24, r1, 3136
0012c0  9f8c8019  addli r25, r1, 3264
0012c4  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
0012c8  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0012cc  1f8c0301  addli r24, r7, 128
0012d0  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
0012d4  9f8c8300  addli r25, r7, 64
0012d8  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
0012dc  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
0012e0  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0012e4  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0012e8  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0012ec  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0012f0  46108c02  vstore_mask16.mz vr8{mr1}, 0(r24)
0012f4  1f8c001a  addli r24, r1, 3328
0012f8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0012fc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001300  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
001304  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
001308  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
00130c  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
001310  1f8c801a  addli r24, r1, 3392
001314  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
001318  1f8d0302  addli r26, r7, 256
00131c  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
001320  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
001324  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001328  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
00132c  1f8c001b  addli r24, r1, 3456
001330  c2130d02  vload_mask16.mz vr7{mr1}, 0(r26)
001334  9f80801b  addli r1, r1, 3520
001338  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00133c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001340  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
001344  1f8c8302  addli r24, r7, 320
001348  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
00134c  9f800303  addli r1, r7, 384
001350  9f838303  addli r7, r7, 448
001354  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
001358  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00135c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001360  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001364  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001368  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00136c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001370  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
001374  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001378  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
00137c  138c7905  setlt.u r24, r19, r23
001380  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001384  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001388  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00138c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001390  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001394  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001398  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
00139c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0013a0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0013a4  bb4b0cfe  bneq r24, zero, -272
0013a8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0013ac  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0013b0  9f000002  addli r1, zero, 256
0013b4  003d0002  core_id r26
0013b8  6af100c0  vsrl.p vr2, r1, vr0
0013bc  eaf110c0  vsrl.p vr3, r1, vr1
0013c0  9f000001  addli r1, zero, 128
0013c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013cc  6af100c0  vsrl.p vr2, r1, vr0
0013d0  eaf110c0  vsrl.p vr3, r1, vr1
0013d4  9f008000  addli r1, zero, 64
0013d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013e0  6af100c0  vsrl.p vr2, r1, vr0
0013e4  eaf110c0  vsrl.p vr3, r1, vr1
0013e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013f0  6a7105c0  vsrl.p vr2, r10, vr0
0013f4  ea7115c0  vsrl.p vr3, r10, vr1
0013f8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013fc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001400  fa100040  vextracti.f r1, 0(vr0)
001404  fa930040  vextracti.f r7, 0(vr1)
001408  8be01110  add.f.rn r1, r3, r1
00140c  8b637710  add.f.rn r7, r14, r7
001410  9b392100  slli r19, r2, 2
001414  9f010000  addli r3, zero, 0
001418  1f070000  addli r14, zero, 0
00141c  8b9ab911  add.s r21, r19, r27
001420  0b9c5910  add.s r24, r19, r5
001424  73e01a00  stores.w r1, 0(r21)
001428  9b00e107  andi r1, r2, 126
00142c  1b914900  ori r2, r19, 4
001430  73607c00  stores.w r7, 0(r24)
001434  00a00300  mfence { lm, sm, gm }
001438  80210e04  csr_set csr3, r28
00143c  00d00100  sync_group
001440  9bb02000  slli r1, r1, 2
001444  8b13b111  add.s r7, r2, r27
001448  0b115110  add.s r2, r2, r5
00144c  8b99b011  add.s r19, r1, r27
001450  efc30300  loads.w r7, 0(r7)
001454  8b905010  add.s r1, r1, r5
001458  6f410100  loads.w r2, 0(r2)
00145c  efc90900  loads.w r19, 0(r19)
001460  efc00000  loads.w r1, 0(r1)
001464  8be33311  add.f.rn r7, r7, r19
001468  ab09003a  lui r19, 237568
00146c  8b601110  add.f.rn r1, r2, r1
001470  0be13321  mul.f.rn r2, r7, r19
001474  8be03021  mul.f.rn r1, r1, r19
001478  8b632120  mul.f.rn r7, r2, r2
00147c  0b610158  neg.f r2, r2
001480  8be07018  sub.f.rn r1, r1, r7
001484  e3033f00  loadli.w r7,  24(r30)
001488  8be07010  add.f.rn r1, r1, r7
00148c  ab03803f  lui r7, 260096
001490  8f800008  sqrt.f.rn r1, r1
001494  8f801318  div.f.rn r1, r7, r1
001498  9f030000  addli r7, zero, 0
00149c  8b19e810  add.s r19, r16, r14
0014a0  8b1ae610  add.s r21, r12, r14
0014a4  0b9ce610  add.s r24, r13, r14
0014a8  9f834300  addli r7, r7, 32
0014ac  1f070701  addli r14, r14, 128
0014b0  42900902  vload_mask16.mz vr0{mr1}, 0(r19)
0014b4  9f8c8900  addli r25, r19, 64
0014b8  9f898a00  addli r19, r21, 64
0014bc  4a910a02  vloads_mask16.mz vr2{mr1}, 0(r21)
0014c0  4a120c02  vloads_mask16.mz vr4{mr1}, 0(r24)
0014c4  8b1a3810  add.s r21, r16, r3
0014c8  9f818100  addli r3, r3, 64
0014cc  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
0014d0  9f098c00  addli r19, r24, 64
0014d4  c2900c02  vload_mask16.mz vr1{mr1}, 0(r25)
0014d8  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
0014dc  93894304  setlt.u r19, r7, r4
0014e0  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
0014e4  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0014e8  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
0014ec  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0014f0  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
0014f4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0014f8  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
0014fc  06100200  vfloat2fp16_l.rn vr0, vr4
001500  06d00200  vfloat2fp16_h.rn vr0, vr5
001504  46800a02  vstore.mz vr0{mr1}, 0(r21)
001508  3bde09fe  bneq r19, zero, -108
00150c  6b510f00  load.d r[3:4], 0(r30)
001510  ab0000f0  lui r1, 983040
001514  00a00000  mfence { lm }
001518  97901500  or r1, r11, r1
00151c  0b211111  add.ul r[3:4], r[3:4], r[18:19]
001520  ff300101  s_lm2gm r1, r16, 0(r[3:4])
001524  00a00200  mfence { lm, gm }
001528  db31ffff  j -1652
00152c  e3403f00  loadli.w r1,  28(r30)
001530  37fe0012  beq r1, zero, 10140
001534  803b0002  core_id r23
001538  63012f00  loadli.w r2,  16(r30)
00153c  805c0102  load_param_i r25, 2
001540  9bb05b00  slli r1, r23, 5
001544  4b431100  ble.s r2, r1, 208
001548  2b960000  lui r12, 9
00154c  9f110000  addli r3, zero, 1
001550  1f058fd7  addli r10, r30, -5184
001554  9f058000  addli r11, zero, 64
001558  1bb15c00  slli r2, r25, 5
00155c  9f860000  addli r13, r1, 0
001560  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001564  1f0606f0  addli r12, r12, -2048
001568  33880628  zext_int2long r[17:18], r13
00156c  2b0900f0  lui r18, 983040
001570  17383802  sll.d r[17:18], r[17:18], r3
001574  17992501  or r18, r11, r18
001578  0b280211  add.ul r[17:18], r[5:6], r[17:18]
00157c  7f29a800  l_gm2lm r18, r10, 0(r[17:18])
001580  1bb82600  slli r16, r13, 2
001584  8b16d110  add.s r13, r2, r13
001588  00a00200  mfence { lm, gm }
00158c  c2000502  vload.mz vr1{mr1}, 0(r10)
001590  0b18c810  add.s r16, r16, r12
001594  9f088800  addli r17, r16, 64
001598  66411080  vmerge_l.hf vr2, vr0, vr1
00159c  e64010a0  vmerge_h.hf vr1, vr0, vr1
0015a0  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
0015a4  4e901802  vstores_mask16.mz vr1{mr1}, 0(r17)
0015a8  3f8ff6fe  blt.s r13, r15, -64
0015ac  2ba20000  lui r4, 10
0015b0  9bb17b00  slli r3, r23, 7
0015b4  9f120000  addli r5, zero, 1
0015b8  1f058fd7  addli r10, r30, -5184
0015bc  9f058000  addli r11, zero, 64
0015c0  1f860000  addli r12, r1, 0
0015c4  00a00000  mfence { lm }
0015c8  1f0202f0  addli r4, r4, -2048
0015cc  8b914110  add.s r3, r3, r4
0015d0  1bb27c00  slli r4, r25, 7
0015d4  33080628  zext_int2long r[17:18], r12
0015d8  ab0600f0  lui r13, 983040
0015dc  0b162610  add.s r12, r12, r2
0015e0  17385802  sll.d r[17:18], r[17:18], r5
0015e4  9796d500  or r13, r11, r13
0015e8  0b280311  add.ul r[17:18], r[7:8], r[17:18]
0015ec  ff26a800  l_gm2lm r13, r10, 0(r[17:18])
0015f0  9f868100  addli r13, r3, 64
0015f4  00a00200  mfence { lm, gm }
0015f8  c2000502  vload.mz vr1{mr1}, 0(r10)
0015fc  66411080  vmerge_l.hf vr2, vr0, vr1
001600  e64010a0  vmerge_h.hf vr1, vr0, vr1
001604  4e902102  vstores_mask16.mz vr2{mr1}, 0(r3)
001608  8b914110  add.s r3, r3, r4
00160c  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
001610  3f1ff6fe  blt.s r12, r15, -60
001614  63012f00  loadli.w r2,  16(r30)
001618  cb211100  ble.s r2, r1, 104
00161c  2bb30000  lui r6, 11
001620  1f110000  addli r2, zero, 1
001624  9f018fd7  addli r3, r30, -5184
001628  1f028000  addli r4, zero, 64
00162c  9bb25c00  slli r5, r25, 5
001630  00a00000  mfence { lm }
001634  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001638  1f0303f0  addli r6, r6, -2048
00163c  33850028  zext_int2long r[11:12], r1
001640  ab0300f0  lui r7, 983040
001644  17352502  sll.d r[11:12], r[11:12], r2
001648  97137200  or r7, r4, r7
00164c  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001650  ff233500  l_gm2lm r7, r3, 0(r[11:12])
001654  9bb32000  slli r7, r1, 2
001658  8b901210  add.s r1, r5, r1
00165c  00a00200  mfence { lm, gm }
001660  c2800102  vload.mz vr1{mr1}, 0(r3)
001664  8b936310  add.s r7, r7, r6
001668  1f858300  addli r10, r7, 64
00166c  66411080  vmerge_l.hf vr2, vr0, vr1
001670  e64010a0  vmerge_h.hf vr1, vr0, vr1
001674  4e902302  vstores_mask16.mz vr2{mr1}, 0(r7)
001678  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
00167c  3f8ff0fe  blt.s r1, r15, -64
001680  abf00000  lui r1, 15
001684  63411f00  loadli.w r2,  12(r30)
001688  00a00300  mfence { lm, sm, gm }
00168c  9b90f0ff  ori r1, r1, 4095
001690  80a10004  csr_set csr3, r1
001694  00d00100  sync_group
001698  4b527127  ble.s r2, r23, 19604
00169c  e3002f00  loadli.w r1,  16(r30)
0016a0  63412f00  loadli.w r2,  20(r30)
0016a4  1f048fd7  addli r8, r30, -5184
0016a8  9f150000  addli r11, zero, 1
0016ac  1f064000  addli r12, zero, 32
0016b0  1f757000  addli r10, zero, 63
0016b4  9f080002  addli r17, zero, 256
0016b8  9f040001  addli r9, zero, 128
0016bc  1f0a8000  addli r20, zero, 64
0016c0  ab0a803f  lui r21, 260096
0016c4  2bed7f00  lui r26, 2046
0016c8  2bee0700  lui r28, 126
0016cc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0016d0  8b912010  add.s r3, r1, r2
0016d4  33820008  fix2float.rn r4, r1
0016d8  1bb31000  slli r6, r1, 1
0016dc  9bb22000  slli r5, r1, 2
0016e0  9f804000  addli r1, r1, 32
0016e4  9b392100  slli r19, r2, 2
0016e8  e70f1fd2  storeli.w r1, -5640(r30)
0016ec  8b908210  add.s r1, r5, r8
0016f0  9ff1f1ff  addli r3, r3, -1
0016f4  e74f4fd2  storeli.w r4, -5636(r30)
0016f8  0b922130  div.s r4, r3, r2
0016fc  9f8080ff  addli r1, r1, -64
001700  8b118310  add.s r3, r6, r8
001704  674f1fd2  storeli.w r1, -5644(r30)
001708  9f8081ff  addli r1, r3, -64
00170c  670f1fd2  storeli.w r1, -5648(r30)
001710  abf0ffff  lui r1, 1048575
001714  00a00000  mfence { lm }
001718  67049fd5  storeli.w r25, -5568(r30)
00171c  67006fd4  storeli.w r6, -5632(r30)
001720  9b90f0ff  ori r1, r1, 4095
001724  67041fd6  storeli.w r1, -5312(r30)
001728  ab700000  lui r1, 7
00172c  1b9cf0ff  ori r24, r1, 4095
001730  ab00ff03  lui r1, 16368
001734  1b9bf03f  ori r22, r1, 1023
001738  abf000fc  lui r1, 1032207
00173c  9b9300c0  ori r7, r1, 3072
001740  9f000fd7  addli r1, r30, -5248
001744  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001748  db090000  j 76
00174c  1f040fd5  addli r8, r30, -5504
001750  6b510f00  load.d r[3:4], 0(r30)
001754  ab0000f0  lui r1, 983040
001758  1f757000  addli r10, zero, 63
00175c  eb520400  load.d r[6:7], 0(r8)
001760  1f048fd7  addli r8, r30, -5184
001764  0b215110  add.ul r[3:4], r[3:4], r[6:7]
001768  63030fd4  loadli.w r6,  -5632(r30)
00176c  00a00000  mfence { lm }
001770  e30b8fd5  loadli.w r23,  -5440(r30)
001774  e30c8fd4  loadli.w r25,  -5568(r30)
001778  97101300  or r1, r6, r1
00177c  8b9b7c11  add.s r23, r25, r23
001780  ff308100  s_lm2gm r1, r8, 0(r[3:4])
001784  00a00200  mfence { lm, gm }
001788  e3401f00  loadli.w r1,  12(r30)
00178c  3fa01b00  blt.s r23, r1, 8
001790  db730900  j 19356
001794  e3001f00  loadli.w r1,  8(r30)
001798  9f027fd6  addli r5, r30, -5320
00179c  9f860900  addli r13, r19, 0
0017a0  8b901b10  add.s r1, r23, r1
0017a4  8b90f020  mul.s r1, r1, r15
0017a8  b3900028  sext_int2long r[2:3], r1
0017ac  17b9b002  sll.d r[19:20], r[2:3], r11
0017b0  6bd10200  load.d r[3:4], 0(r5)
0017b4  ab0000f0  lui r1, 983040
0017b8  9f020fd5  addli r5, r30, -5504
0017bc  97101300  or r1, r6, r1
0017c0  73b02201  store.d r[19:20], 0(r5)
0017c4  0b212111  add.ul r[3:4], r[3:4], r[19:20]
0017c8  ff208100  l_gm2lm r1, r8, 0(r[3:4])
0017cc  00a00200  mfence { lm, gm }
0017d0  bff0c700  blt.s r15, r12, 60
0017d4  e300efd3  loadli.w r1,  -5648(r30)
0017d8  6341efd3  loadli.w r2,  -5644(r30)
0017dc  e301ffd3  loadli.w r3,  -5640(r30)
0017e0  c2800002  vload.mz vr1{mr1}, 0(r1)
0017e4  9f81c1ff  addli r3, r3, -32
0017e8  1f0481ff  addli r8, r2, -64
0017ec  9f8080ff  addli r1, r1, -64
0017f0  93023504  setlt.u r5, r10, r3
0017f4  664110a0  vmerge_h.hf vr2, vr0, vr1
0017f8  e6401080  vmerge_l.hf vr1, vr0, vr1
0017fc  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
001800  1f0101ff  addli r2, r2, -128
001804  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
001808  3bef02fe  bneq r5, zero, -40
00180c  670c7fd5  storeli.w r23, -5440(r30)
001810  00a00000  mfence { lm }
001814  bf67b200  blt.s r4, r11, 504
001818  1f050000  addli r10, zero, 0
00181c  9f020000  addli r5, zero, 0
001820  1f040000  addli r8, zero, 0
001824  9f890600  addli r19, r13, 0
001828  db0d0000  j 108
00182c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001830  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001834  1f140400  addli r8, r8, 1
001838  6af108c0  vsrl.p vr2, r17, vr0
00183c  eaf118c0  vsrl.p vr3, r17, vr1
001840  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001844  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001848  6af104c0  vsrl.p vr2, r9, vr0
00184c  eaf114c0  vsrl.p vr3, r9, vr1
001850  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001854  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001858  6a710ac0  vsrl.p vr2, r20, vr0
00185c  ea711ac0  vsrl.p vr3, r20, vr1
001860  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001864  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001868  6a7106c0  vsrl.p vr2, r12, vr0
00186c  ea7116c0  vsrl.p vr3, r12, vr1
001870  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001874  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001878  fa100040  vextracti.f r1, 0(vr0)
00187c  7a910040  vextracti.f r2, 0(vr1)
001880  0b651510  add.f.rn r10, r10, r1
001884  9f000fd7  addli r1, r30, -5248
001888  8be22210  add.f.rn r5, r5, r2
00188c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001890  37264400  beq r8, r4, 392
001894  9f000400  addli r1, r8, 0
001898  37401701  beq r14, r17, 16
00189c  e3008fd6  loadli.w r1,  -5312(r30)
0018a0  97201400  xor r1, r8, r1
0018a4  8b101210  add.s r1, r4, r1
0018a8  0b91e020  mul.s r2, r1, r14
0018ac  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0018b0  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0018b4  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0018b8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0018bc  0b912718  sub.s r2, r15, r2
0018c0  0b11e140  min.s r2, r2, r14
0018c4  bf2db1fe  blt.s r2, r11, -152
0018c8  1f030fd7  addli r6, r30, -5248
0018cc  ab960000  lui r13, 9
0018d0  9f010000  addli r3, zero, 0
0018d4  8b901920  mul.s r1, r19, r1
0018d8  1f098fd7  addli r18, r30, -5184
0018dc  42120302  vload_mask16.mz vr4{mr1}, 0(r6)
0018e0  9f8606f0  addli r13, r13, -2048
0018e4  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0018e8  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0018ec  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0018f0  8b9b1610  add.s r23, r13, r1
0018f4  0b181910  add.s r16, r18, r1
0018f8  9f8c8b00  addli r25, r23, 64
0018fc  ca920b02  vloads_mask16.mz vr5{mr1}, 0(r23)
001900  9f8d8b01  addli r27, r23, 192
001904  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
001908  1f038801  addli r6, r16, 192
00190c  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
001910  9f8c0b01  addli r25, r23, 128
001914  4a940d02  vloads_mask16.mz vr8{mr1}, 0(r27)
001918  9f0d0801  addli r27, r16, 128
00191c  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
001920  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
001924  c2950d02  vload_mask16.mz vr11{mr1}, 0(r27)
001928  9f0c8800  addli r25, r16, 64
00192c  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
001930  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001934  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001938  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00193c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001940  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001944  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001948  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
00194c  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
001950  9f8c8100  addli r25, r3, 64
001954  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
001958  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00195c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001960  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001964  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001968  46907d02  vstore_mask16.mz vr7{mr1}, 0(r27)
00196c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001970  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001974  cb6a91ff  ble.s r2, r25, -328
001978  9f8c0b02  addli r25, r23, 256
00197c  9f8d8b02  addli r27, r23, 320
001980  1f030802  addli r6, r16, 256
001984  9f810101  addli r3, r3, 128
001988  9f860604  addli r13, r13, 512
00198c  1f090904  addli r18, r18, 512
001990  4a900c02  vloads_mask16.mz vr0{mr1}, 0(r25)
001994  9f8c0b03  addli r25, r23, 384
001998  9f8b8b03  addli r23, r23, 448
00199c  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
0019a0  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
0019a4  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
0019a8  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
0019ac  9f0b0803  addli r23, r16, 384
0019b0  9f0c8802  addli r25, r16, 320
0019b4  1f088803  addli r16, r16, 448
0019b8  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
0019bc  c2940c02  vload_mask16.mz vr9{mr1}, 0(r25)
0019c0  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0019c4  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
0019c8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0019cc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0019d0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0019d4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0019d8  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
0019dc  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
0019e0  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0019e4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0019e8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0019ec  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
0019f0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0019f4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0019f8  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0019fc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001a00  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
001a04  bfbb21fe  blt.s r3, r2, -276
001a08  dbc4ffff  j -476
001a0c  9f020000  addli r5, zero, 0
001a10  1f050000  addli r10, zero, 0
001a14  9f890600  addli r19, r13, 0
001a18  1f032000  addli r6, zero, 16
001a1c  9f3b0000  addli r23, zero, 3
001a20  9f5c1000  addli r25, zero, 13
001a24  9f2d1000  addli r27, zero, 10
001a28  00a00000  mfence { lm }
001a2c  bf84b7fe  blt.s r15, r11, -736
001a30  6341ffd3  loadli.w r2,  -5636(r30)
001a34  abb60000  lui r13, 11
001a38  9f000000  addli r1, zero, 0
001a3c  1f048fd7  addli r8, r30, -5184
001a40  9f8606f0  addli r13, r13, -2048
001a44  8f012518  div.f.rn r3, r10, r2
001a48  0f812218  div.f.rn r2, r5, r2
001a4c  2ba50000  lui r10, 10
001a50  1f0505f0  addli r10, r10, -2048
001a54  8be23120  mul.f.rn r5, r3, r3
001a58  8be10158  neg.f r3, r3
001a5c  0b615118  sub.f.rn r2, r2, r5
001a60  e3023f00  loadli.w r5,  24(r30)
001a64  0b615110  add.f.rn r2, r2, r5
001a68  9f028fd7  addli r5, r30, -5184
001a6c  0f010108  sqrt.f.rn r2, r2
001a70  0f812a18  div.f.rn r2, r21, r2
001a74  1f088400  addli r16, r8, 64
001a78  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
001a7c  1f898600  addli r18, r13, 64
001a80  4a920602  vloads_mask16.mz vr4{mr1}, 0(r13)
001a84  ca110502  vloads_mask16.mz vr3{mr1}, 0(r10)
001a88  9f804000  addli r1, r1, 32
001a8c  9f860601  addli r13, r13, 128
001a90  1f040401  addli r8, r8, 128
001a94  42110802  vload_mask16.mz vr2{mr1}, 0(r16)
001a98  1f088500  addli r16, r10, 64
001a9c  4a130902  vloads_mask16.mz vr6{mr1}, 0(r18)
001aa0  1f050501  addli r10, r10, 128
001aa4  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
001aa8  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001aac  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
001ab0  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
001ab4  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
001ab8  26923002  vmac.f.mz.rn vr4{mr1}, vr1, vr3
001abc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001ac0  ea211322  vor.u.mz vr3{mr1}, r6, vr1
001ac4  26135102  vmac.f.mz.rn vr6{mr1}, vr2, vr5
001ac8  eaa21b22  vor.u.mz vr5{mr1}, r23, vr1
001acc  6eb141c2  vsrl.s.mz vr2{mr1}, vr3, vr4
001ad0  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
001ad4  6ab12502  vand.s.mz vr2{mr1}, r11, vr2
001ad8  eab13502  vand.s.mz vr3{mr1}, r11, vr3
001adc  16312202  vadd.s.mz vr2{mr1}, vr4, vr2
001ae0  6aa21c22  vor.u.mz vr4{mr1}, r25, vr1
001ae4  eaa01d22  vor.u.mz vr1{mr1}, r27, vr1
001ae8  96313302  vadd.s.mz vr3{mr1}, vr6, vr3
001aec  12312c02  vadd.s.mz vr2{mr1}, r24, vr2
001af0  92313c02  vadd.s.mz vr3{mr1}, r24, vr3
001af4  6e3322c2  vsrl.s.mz vr6{mr1}, vr4, vr2
001af8  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
001afc  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
001b00  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
001b04  ea326e02  vand.s.mz vr5{mr1}, r28, vr6
001b08  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
001b0c  6a324e02  vand.s.mz vr4{mr1}, r28, vr4
001b10  ea313d02  vand.s.mz vr3{mr1}, r26, vr3
001b14  6ab12a22  vor.s.mz vr2{mr1}, r21, vr2
001b18  eab25a22  vor.s.mz vr5{mr1}, r21, vr5
001b1c  6ab24a22  vor.s.mz vr4{mr1}, r21, vr4
001b20  eab13a22  vor.s.mz vr3{mr1}, r21, vr3
001b24  06110120  vfloat2fp16_l.rz vr2, vr2
001b28  06520220  vfloat2fp16_h.rz vr4, vr4
001b2c  06d10120  vfloat2fp16_h.rz vr2, vr3
001b30  06920220  vfloat2fp16_l.rz vr4, vr5
001b34  6a312b02  vand.s.mz vr2{mr1}, r22, vr2
001b38  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
001b3c  eab01302  vand.s.mz vr1{mr1}, r7, vr1
001b40  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
001b44  46801202  vstore.mz vr1{mr1}, 0(r5)
001b48  9f828200  addli r5, r5, 64
001b4c  bfacf0fe  blt.s r1, r15, -216
001b50  db7fffff  j -1028
001b54  e3403f00  loadli.w r1,  28(r30)
001b58  b7f70016  beq r1, zero, 11772
001b5c  80300002  core_id r1
001b60  e3012f00  loadli.w r3,  16(r30)
001b64  1bb15000  slli r2, r1, 5
001b68  4bc32100  ble.s r3, r2, 208
001b6c  2b580100  lui r16, 21
001b70  00550102  load_param_i r10, 2
001b74  9f150000  addli r11, zero, 1
001b78  1f068fd7  addli r12, r30, -5184
001b7c  9f068000  addli r13, zero, 64
001b80  9f080100  addli r17, r2, 0
001b84  9b315500  slli r3, r10, 5
001b88  1f080800  addli r16, r16, 0
001b8c  33890828  zext_int2long r[19:20], r17
001b90  2b0a00f0  lui r20, 983040
001b94  1739b902  sll.d r[19:20], r[19:20], r11
001b98  179a4601  or r20, r13, r20
001b9c  0b292211  add.ul r[19:20], r[5:6], r[19:20]
001ba0  7f2ac900  l_gm2lm r20, r12, 0(r[19:20])
001ba4  1bb92800  slli r18, r17, 2
001ba8  8b981111  add.s r17, r3, r17
001bac  00a00200  mfence { lm, gm }
001bb0  42000602  vload.mz vr0{mr1}, 0(r12)
001bb4  0b190911  add.s r18, r18, r16
001bb8  9f098900  addli r19, r18, 64
001bbc  86300000  vfp162float_l.rn vr1, vr0
001bc0  06700000  vfp162float_h.rn vr0, vr0
001bc4  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
001bc8  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
001bcc  3f8ff8fe  blt.s r17, r15, -64
001bd0  ab620100  lui r5, 22
001bd4  1bb27000  slli r4, r1, 7
001bd8  9f058fd7  addli r11, r30, -5184
001bdc  1f068000  addli r12, zero, 64
001be0  9f060100  addli r13, r2, 0
001be4  00a00000  mfence { lm }
001be8  9f820200  addli r5, r5, 0
001bec  0b125210  add.s r4, r4, r5
001bf0  9b327500  slli r5, r10, 7
001bf4  1f150000  addli r10, zero, 1
001bf8  33880628  zext_int2long r[17:18], r13
001bfc  2b0900f0  lui r18, 983040
001c00  8b963610  add.s r13, r13, r3
001c04  1738a802  sll.d r[17:18], r[17:18], r10
001c08  17192601  or r18, r12, r18
001c0c  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001c10  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
001c14  1f088200  addli r16, r4, 64
001c18  00a00200  mfence { lm, gm }
001c1c  42800502  vload.mz vr0{mr1}, 0(r11)
001c20  86300000  vfp162float_l.rn vr1, vr0
001c24  06700000  vfp162float_h.rn vr0, vr0
001c28  4e101202  vstores_mask16.mz vr1{mr1}, 0(r4)
001c2c  0b125210  add.s r4, r4, r5
001c30  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
001c34  3f9ff6fe  blt.s r13, r15, -60
001c38  e3012f00  loadli.w r3,  16(r30)
001c3c  cba12100  ble.s r3, r2, 104
001c40  00530102  load_param_i r6, 2
001c44  ab730100  lui r7, 23
001c48  9f110000  addli r3, zero, 1
001c4c  1f028fd7  addli r4, r30, -5184
001c50  9f028000  addli r5, zero, 64
001c54  00a00000  mfence { lm }
001c58  1b335300  slli r6, r6, 5
001c5c  9f830300  addli r7, r7, 0
001c60  33050128  zext_int2long r[11:12], r2
001c64  2b0600f0  lui r12, 983040
001c68  17353502  sll.d r[11:12], r[11:12], r3
001c6c  1796c200  or r12, r5, r12
001c70  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001c74  7f264500  l_gm2lm r12, r4, 0(r[11:12])
001c78  1b352100  slli r10, r2, 2
001c7c  0b112310  add.s r2, r6, r2
001c80  00a00200  mfence { lm, gm }
001c84  42000202  vload.mz vr0{mr1}, 0(r4)
001c88  0b157510  add.s r10, r10, r7
001c8c  9f058500  addli r11, r10, 64
001c90  86300000  vfp162float_l.rn vr1, vr0
001c94  06700000  vfp162float_h.rn vr0, vr0
001c98  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001c9c  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
001ca0  3f0ff1fe  blt.s r2, r15, -64
001ca4  2bf10000  lui r2, 15
001ca8  e3411f00  loadli.w r3,  12(r30)
001cac  00a00300  mfence { lm, sm, gm }
001cb0  1b11f1ff  ori r2, r2, 4095
001cb4  80210104  csr_set csr3, r2
001cb8  00d00100  sync_group
001cbc  cbc91122  ble.s r3, r1, 18032
001cc0  63032f00  loadli.w r6,  16(r30)
001cc4  e3432f00  loadli.w r7,  20(r30)
001cc8  9f088fd7  addli r17, r30, -5184
001ccc  1f150000  addli r10, zero, 1
001cd0  9f054000  addli r11, zero, 32
001cd4  1f767000  addli r12, zero, 63
001cd8  1f080002  addli r16, zero, 256
001cdc  1f090001  addli r18, zero, 128
001ce0  9f098000  addli r19, zero, 64
001ce4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001ce8  0b127310  add.s r4, r6, r7
001cec  33010308  fix2float.rn r2, r6
001cf0  1b342300  slli r8, r6, 2
001cf4  9b321300  slli r5, r6, 1
001cf8  9bb42300  slli r9, r7, 2
001cfc  1f72f2ff  addli r4, r4, -1
001d00  670c2fd4  storeli.w r2, -5440(r30)
001d04  1f014300  addli r2, r6, 32
001d08  0b131411  add.s r6, r8, r17
001d0c  0b941211  add.s r8, r5, r17
001d10  67082fd4  storeli.w r2, -5504(r30)
001d14  1f0183ff  addli r2, r6, -64
001d18  2bf3ffff  lui r6, 1048575
001d1c  0b127230  div.s r4, r4, r7
001d20  67042fd4  storeli.w r2, -5568(r30)
001d24  1f0184ff  addli r2, r8, -64
001d28  9b16f3ff  ori r13, r6, 4095
001d2c  2b530100  lui r6, 21
001d30  67002fd4  storeli.w r2, -5632(r30)
001d34  1f010fd7  addli r2, r30, -5248
001d38  1f030300  addli r6, r6, 0
001d3c  00a00000  mfence { lm }
001d40  67045fd6  storeli.w r5, -5312(r30)
001d44  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001d48  5b080000  j 64
001d4c  6b510f00  load.d r[3:4], 0(r30)
001d50  00a00000  mfence { lm }
001d54  ab0800f0  lui r17, 983040
001d58  005a0102  load_param_i r20, 2
001d5c  e3028fd6  loadli.w r5,  -5312(r30)
001d60  8b101a10  add.s r1, r20, r1
001d64  8b237111  add.ul r[8:9], r[3:4], r[24:25]
001d68  1f018fd7  addli r2, r30, -5184
001d6c  97981201  or r17, r5, r17
001d70  ffb82300  s_lm2gm r17, r2, 0(r[8:9])
001d74  9f088fd7  addli r17, r30, -5184
001d78  00a00200  mfence { lm, gm }
001d7c  63411f00  loadli.w r2,  12(r30)
001d80  3fa02000  blt.s r1, r2, 8
001d84  5bb50800  j 17832
001d88  63011f00  loadli.w r2,  8(r30)
001d8c  8b932010  add.s r7, r1, r2
001d90  8b93f320  mul.s r7, r7, r15
001d94  b3930328  sext_int2long r[8:9], r7
001d98  97bba302  sll.d r[24:25], r[8:9], r10
001d9c  1f047fd6  addli r8, r30, -5320
001da0  ab0300f0  lui r7, 983040
001da4  6b510400  load.d r[3:4], 0(r8)
001da8  97937200  or r7, r5, r7
001dac  0b2a7111  add.ul r[21:22], r[3:4], r[24:25]
001db0  ff231a01  l_gm2lm r7, r17, 0(r[21:22])
001db4  00a00200  mfence { lm, gm }
001db8  bff0b700  blt.s r15, r11, 60
001dbc  e3030fd4  loadli.w r7,  -5632(r30)
001dc0  63048fd4  loadli.w r8,  -5568(r30)
001dc4  e3080fd5  loadli.w r17,  -5504(r30)
001dc8  c2800302  vload.mz vr1{mr1}, 0(r7)
001dcc  9f88c8ff  addli r17, r17, -32
001dd0  9f0a84ff  addli r21, r8, -64
001dd4  9f8383ff  addli r7, r7, -64
001dd8  130a1605  setlt.u r20, r12, r17
001ddc  06f10000  vfp162float_h.rn vr2, vr1
001de0  86b00000  vfp162float_l.rn vr1, vr1
001de4  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
001de8  1f0404ff  addli r8, r8, -128
001dec  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
001df0  3b6f0afe  bneq r20, zero, -40
001df4  00a00000  mfence { lm }
001df8  bf17a200  blt.s r4, r10, 484
001dfc  1f0d0000  addli r26, zero, 0
001e00  9f0c0000  addli r25, zero, 0
001e04  9f0d0000  addli r27, zero, 0
001e08  db0c0000  j 100
001e0c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001e10  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001e14  9f9d0d00  addli r27, r27, 1
001e18  6a7108c0  vsrl.p vr2, r16, vr0
001e1c  ea7118c0  vsrl.p vr3, r16, vr1
001e20  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e24  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e28  6a7109c0  vsrl.p vr2, r18, vr0
001e2c  ea7119c0  vsrl.p vr3, r18, vr1
001e30  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e34  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e38  6af109c0  vsrl.p vr2, r19, vr0
001e3c  eaf119c0  vsrl.p vr3, r19, vr1
001e40  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e44  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e48  6af105c0  vsrl.p vr2, r11, vr0
001e4c  eaf115c0  vsrl.p vr3, r11, vr1
001e50  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e54  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e58  7a110040  vextracti.f r2, 0(vr0)
001e5c  fa910040  vextracti.f r3, 0(vr1)
001e60  0b6d2d10  add.f.rn r26, r26, r2
001e64  8bec3c10  add.f.rn r25, r25, r3
001e68  b7f54d00  beq r27, r4, 380
001e6c  9f830d00  addli r7, r27, 0
001e70  37300701  beq r14, r16, 12
001e74  97a3dd00  xor r7, r27, r13
001e78  8b137210  add.s r7, r4, r7
001e7c  1f010fd7  addli r2, r30, -5248
001e80  0b94e320  mul.s r8, r7, r14
001e84  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
001e88  0b948718  sub.s r8, r15, r8
001e8c  0b1ee440  min.s r28, r8, r14
001e90  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001e94  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001e98  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001e9c  bf4daefe  blt.s r28, r10, -144
001ea0  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
001ea4  1f0a0000  addli r20, zero, 0
001ea8  8b9a7420  mul.s r21, r9, r7
001eac  1f0b8fd7  addli r22, r30, -5184
001eb0  9f080300  addli r17, r6, 0
001eb4  92304002  vadd.s.mz vr1{mr1}, zero, vr4
001eb8  12314002  vadd.s.mz vr2{mr1}, zero, vr4
001ebc  92314002  vadd.s.mz vr3{mr1}, zero, vr4
001ec0  0b945811  add.s r8, r17, r21
001ec4  8b135b11  add.s r7, r22, r21
001ec8  9f028400  addli r5, r8, 64
001ecc  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
001ed0  9f018401  addli r3, r8, 192
001ed4  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001ed8  1f818301  addli r2, r7, 192
001edc  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
001ee0  9f020401  addli r5, r8, 128
001ee4  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
001ee8  9f818300  addli r3, r7, 64
001eec  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
001ef0  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
001ef4  9f820301  addli r5, r7, 128
001ef8  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
001efc  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
001f00  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001f04  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001f08  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001f0c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001f10  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001f14  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001f18  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
001f1c  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001f20  9f018a00  addli r3, r20, 64
001f24  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001f28  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001f2c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001f30  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001f34  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001f38  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
001f3c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001f40  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001f44  4b2b3efe  ble.s r28, r3, -312
001f48  9f010402  addli r3, r8, 256
001f4c  9f028402  addli r5, r8, 320
001f50  1f810302  addli r2, r7, 256
001f54  1f0a0a01  addli r20, r20, 128
001f58  9f880804  addli r17, r17, 512
001f5c  1f0b0b04  addli r22, r22, 512
001f60  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
001f64  9f010403  addli r3, r8, 384
001f68  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
001f6c  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
001f70  9f828302  addli r5, r7, 320
001f74  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
001f78  9f018403  addli r3, r8, 448
001f7c  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
001f80  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
001f84  9f810303  addli r3, r7, 384
001f88  9f838303  addli r7, r7, 448
001f8c  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
001f90  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
001f94  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
001f98  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001f9c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001fa0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001fa4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001fa8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001fac  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
001fb0  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
001fb4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001fb8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001fbc  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
001fc0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001fc4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001fc8  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001fcc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001fd0  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
001fd4  bf3bcaff  blt.s r20, r28, -276
001fd8  dbc6ffff  j -460
001fdc  9f0c0000  addli r25, zero, 0
001fe0  1f0d0000  addli r26, zero, 0
001fe4  00a00000  mfence { lm }
001fe8  bf95a7fe  blt.s r15, r10, -668
001fec  63018fd5  loadli.w r2,  -5440(r30)
001ff0  2b6b0100  lui r22, 22
001ff4  9f030000  addli r7, zero, 0
001ff8  9f0a8fd7  addli r21, r30, -5184
001ffc  1f0b0b00  addli r22, r22, 0
002000  8f082d18  div.f.rn r17, r26, r2
002004  0f842c18  div.f.rn r8, r25, r2
002008  63013f00  loadli.w r2,  24(r30)
00200c  ab7c0100  lui r25, 23
002010  9f8c0c00  addli r25, r25, 0
002014  0bea1821  mul.f.rn r20, r17, r17
002018  8be80858  neg.f r17, r17
00201c  0b644419  sub.f.rn r8, r8, r20
002020  1f0a8fd7  addli r20, r30, -5184
002024  0b642410  add.f.rn r8, r8, r2
002028  2b01803f  lui r2, 260096
00202c  0f040408  sqrt.f.rn r8, r8
002030  0f048118  div.f.rn r8, r2, r8
002034  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
002038  1f8d8a00  addli r26, r21, 64
00203c  ca110b02  vloads_mask16.mz vr3{mr1}, 0(r22)
002040  4a920c02  vloads_mask16.mz vr4{mr1}, 0(r25)
002044  9f8d8c00  addli r27, r25, 64
002048  9f834300  addli r7, r7, 32
00204c  9f8c0c01  addli r25, r25, 128
002050  9f8a0a01  addli r21, r21, 128
002054  42110d02  vload_mask16.mz vr2{mr1}, 0(r26)
002058  1f0d8b00  addli r26, r22, 64
00205c  4a930d02  vloads_mask16.mz vr6{mr1}, 0(r27)
002060  1f0b0b01  addli r22, r22, 128
002064  ca120d02  vloads_mask16.mz vr5{mr1}, 0(r26)
002068  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
00206c  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
002070  8a101402  vmul.f.mz.rn vr1{mr1}, r8, vr1
002074  0a112402  vmul.f.mz.rn vr2{mr1}, r8, vr2
002078  26923002  vmac.f.mz.rn vr4{mr1}, vr1, vr3
00207c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002080  26135102  vmac.f.mz.rn vr6{mr1}, vr2, vr5
002084  86100200  vfloat2fp16_l.rn vr1, vr4
002088  86500300  vfloat2fp16_h.rn vr1, vr6
00208c  46001a02  vstore.mz vr1{mr1}, 0(r20)
002090  1f0a8a00  addli r20, r20, 64
002094  bf8ef3fe  blt.s r7, r15, -96
002098  db96ffff  j -844
00209c  e3002f00  loadli.w r1,  16(r30)
0020a0  1f010010  addli r2, zero, 2048
0020a4  bba02008  bneq r1, r2, 4136
0020a8  2ba30200  lui r6, 42
0020ac  80300002  core_id r1
0020b0  1f030308  addli r6, r6, 1024
0020b4  3bd00000  bneq r1, zero, 20
0020b8  1f010040  addli r2, zero, 8192
0020bc  ab0100f0  lui r3, 983040
0020c0  17113100  or r2, r2, r3
0020c4  7f016200  l_gm2sm r2, r6, 0(r[5:6])
0020c8  2bf10000  lui r2, 15
0020cc  00200300  mfence { sm, gm }
0020d0  1b821000  andi r4, r1, 1
0020d4  9f020006  addli r5, zero, 768
0020d8  1b11f1ff  ori r2, r2, 4095
0020dc  80210104  csr_set csr3, r2
0020e0  1f010006  addli r2, zero, 768
0020e4  00d00100  sync_group
0020e8  37200200  beq r4, zero, 8
0020ec  9f02000a  addli r5, zero, 1280
0020f0  e3411f00  loadli.w r3,  12(r30)
0020f4  9f130000  addli r7, zero, 1
0020f8  bfd87120  blt.s r3, r7, 16948
0020fc  0b112220  mul.s r2, r4, r2
002100  1bc51000  srli r10, r1, 1
002104  abf0ffff  lui r1, 1048575
002108  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00210c  abca0200  lui r21, 44
002110  2bcd0200  lui r26, 44
002114  80510102  load_param_i r3, 2
002118  9f030000  addli r7, zero, 0
00211c  9bb52200  slli r11, r5, 2
002120  9f068fd7  addli r13, r30, -5184
002124  9f080002  addli r17, zero, 256
002128  1f090001  addli r18, zero, 128
00212c  9f098000  addli r19, zero, 64
002130  1f0a4000  addli r20, zero, 32
002134  9f0c0003  addli r25, zero, 384
002138  67082fd6  storeli.w r2, -5248(r30)
00213c  1f018fd6  addli r2, r30, -5312
002140  9b9000f8  ori r1, r1, 3968
002144  9bc41100  srli r9, r3, 1
002148  9f8a0a08  addli r21, r21, 1024
00214c  1f0d0d0c  addli r26, r26, 1536
002150  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002154  2bf10000  lui r2, 15
002158  670c1fd4  storeli.w r1, -5440(r30)
00215c  9f000800  addli r1, r16, 0
002160  1f080005  addli r16, zero, 640
002164  1b1bf1ff  ori r22, r2, 4095
002168  5b040000  j 32
00216c  00a00300  mfence { lm, sm, gm }
002170  80210b04  csr_set csr3, r22
002174  00d00100  sync_group
002178  e3401f00  loadli.w r1,  12(r30)
00217c  8b939310  add.s r7, r7, r9
002180  3fa01300  blt.s r7, r1, 8
002184  5b4bfdff  j -5544
002188  0b91a310  add.s r2, r7, r10
00218c  cb8f20fe  ble.s r1, r2, -32
002190  e3001f00  loadli.w r1,  8(r30)
002194  0b111110  add.s r2, r2, r1
002198  e3000fd7  loadli.w r1,  -5248(r30)
00219c  1b31b100  slli r2, r2, 11
0021a0  17111100  or r2, r2, r1
0021a4  9f200000  addli r1, zero, 2
0021a8  33110128  sext_int2long r[3:4], r2
0021ac  973d1102  sll.d r[28:29], r[3:4], r1
0021b0  9f007fd6  addli r1, r30, -5320
0021b4  2b0100f0  lui r2, 983040
0021b8  6bd70000  load.d r[15:16], 0(r1)
0021bc  17912500  or r2, r11, r2
0021c0  0b27b711  add.ul r[15:16], r[15:16], r[28:29]
0021c4  7f21d700  l_gm2lm r2, r13, 0(r[15:16])
0021c8  1f010000  addli r2, zero, 0
0021cc  00a00200  mfence { lm, gm }
0021d0  3b060200  bneq r4, zero, 384
0021d4  9f008fd6  addli r1, r30, -5312
0021d8  e3018fd5  loadli.w r3,  -5440(r30)
0021dc  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0021e0  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0021e4  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0021e8  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0021ec  0b176110  add.s r14, r2, r6
0021f0  0b962610  add.s r12, r13, r2
0021f4  9f810101  addli r3, r3, 128
0021f8  1f010104  addli r2, r2, 512
0021fc  9f000701  addli r1, r14, 128
002200  4a100702  vloads_mask16.mz vr0{mr1}, 0(r14)
002204  1f048700  addli r8, r14, 64
002208  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
00220c  9f078601  addli r15, r12, 192
002210  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
002214  9f008701  addli r1, r14, 192
002218  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
00221c  1f048600  addli r8, r12, 64
002220  c2950702  vload_mask16.mz vr11{mr1}, 0(r15)
002224  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
002228  9f000601  addli r1, r12, 128
00222c  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
002230  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002234  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002238  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00223c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002240  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002244  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002248  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
00224c  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002250  9f000702  addli r1, r14, 256
002254  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002258  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00225c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002260  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002264  1f040603  addli r8, r12, 384
002268  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
00226c  9f008702  addli r1, r14, 320
002270  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
002274  9f070602  addli r15, r12, 256
002278  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00227c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
002280  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002284  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002288  9f000703  addli r1, r14, 384
00228c  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
002290  1f078703  addli r14, r14, 448
002294  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002298  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
00229c  9f008602  addli r1, r12, 320
0022a0  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
0022a4  1f068603  addli r12, r12, 448
0022a8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0022ac  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0022b0  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0022b4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0022b8  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0022bc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0022c0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0022c4  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
0022c8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0022cc  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0022d0  93800105  setlt.u r1, r3, r16
0022d4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0022d8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0022dc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0022e0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0022e4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0022e8  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0022ec  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0022f0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0022f4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0022f8  bbdb00fe  bneq r1, zero, -268
0022fc  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002300  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002304  6af108c0  vsrl.p vr2, r17, vr0
002308  eaf118c0  vsrl.p vr3, r17, vr1
00230c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002310  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002314  6a7109c0  vsrl.p vr2, r18, vr0
002318  ea7119c0  vsrl.p vr3, r18, vr1
00231c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002320  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002324  6af109c0  vsrl.p vr2, r19, vr0
002328  eaf119c0  vsrl.p vr3, r19, vr1
00232c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002330  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002334  6a710ac0  vsrl.p vr2, r20, vr0
002338  ea711ac0  vsrl.p vr3, r20, vr1
00233c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002340  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002344  7a160040  vextracti.f r12, 0(vr0)
002348  7a910040  vextracti.f r2, 0(vr1)
00234c  db610000  j 780
002350  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002354  abf0ffff  lui r1, 1048575
002358  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00235c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002360  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002364  9b9100f8  ori r3, r1, 3968
002368  0b172310  add.s r14, r6, r2
00236c  0b962610  add.s r12, r13, r2
002370  9f810101  addli r3, r3, 128
002374  1f010104  addli r2, r2, 512
002378  9f000731  addli r1, r14, 6272
00237c  9f070730  addli r15, r14, 6144
002380  1f048731  addli r8, r14, 6336
002384  1f0c0618  addli r24, r12, 3072
002388  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
00238c  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
002390  9f078730  addli r15, r14, 6208
002394  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
002398  1f040619  addli r8, r12, 3200
00239c  9f008618  addli r1, r12, 3136
0023a0  42130c02  vload_mask16.mz vr6{mr1}, 0(r24)
0023a4  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
0023a8  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
0023ac  9f078619  addli r15, r12, 3264
0023b0  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0023b4  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
0023b8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0023bc  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0023c0  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0023c4  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0023c8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0023cc  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0023d0  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
0023d4  1f040732  addli r8, r14, 6400
0023d8  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0023dc  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
0023e0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0023e4  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
0023e8  9f07061a  addli r15, r12, 3328
0023ec  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0023f0  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0023f4  9f00061b  addli r1, r12, 3456
0023f8  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0023fc  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
002400  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
002404  1f048732  addli r8, r14, 6464
002408  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00240c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002410  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002414  1f040733  addli r8, r14, 6528
002418  1f078733  addli r14, r14, 6592
00241c  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
002420  1f04861a  addli r8, r12, 3392
002424  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
002428  1f06861b  addli r12, r12, 3520
00242c  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
002430  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
002434  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
002438  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00243c  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
002440  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002444  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002448  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
00244c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002450  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
002454  13849105  setlt.u r8, r3, r25
002458  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00245c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002460  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002464  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002468  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00246c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
002470  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
002474  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002478  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00247c  bb3b04fe  bneq r8, zero, -276
002480  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002484  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002488  abf0ffff  lui r1, 1048575
00248c  1f060000  addli r12, zero, 0
002490  1b9c00f8  ori r24, r1, 3968
002494  eaf118c0  vsrl.p vr3, r17, vr1
002498  6af108c0  vsrl.p vr2, r17, vr0
00249c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024a0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024a4  ea7119c0  vsrl.p vr3, r18, vr1
0024a8  6a7109c0  vsrl.p vr2, r18, vr0
0024ac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024b0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024b4  eaf119c0  vsrl.p vr3, r19, vr1
0024b8  6af109c0  vsrl.p vr2, r19, vr0
0024bc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024c4  ea711ac0  vsrl.p vr3, r20, vr1
0024c8  6a710ac0  vsrl.p vr2, r20, vr0
0024cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024d4  fa910040  vextracti.f r3, 0(vr1)
0024d8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0024dc  7a110040  vextracti.f r2, 0(vr0)
0024e0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0024e4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0024e8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0024ec  8b17c310  add.s r15, r6, r12
0024f0  0b97c610  add.s r14, r13, r12
0024f4  1f0c0c01  addli r24, r24, 128
0024f8  1f060604  addli r12, r12, 512
0024fc  9f800718  addli r1, r15, 3072
002500  1f840719  addli r8, r15, 3200
002504  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
002508  9f0b8701  addli r23, r14, 192
00250c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002510  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
002514  9f808718  addli r1, r15, 3136
002518  1f848719  addli r8, r15, 3264
00251c  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
002520  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002524  9f000701  addli r1, r14, 128
002528  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
00252c  1f048700  addli r8, r14, 64
002530  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002534  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
002538  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00253c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002540  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002544  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002548  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
00254c  9f80071a  addli r1, r15, 3328
002550  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002554  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002558  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00255c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002560  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
002564  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002568  9f80871a  addli r1, r15, 3392
00256c  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
002570  9f0b0702  addli r23, r14, 256
002574  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002578  1f040703  addli r8, r14, 384
00257c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
002580  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002584  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002588  9f80071b  addli r1, r15, 3456
00258c  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
002590  9f87871b  addli r15, r15, 3520
002594  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002598  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00259c  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0025a0  9f008702  addli r1, r14, 320
0025a4  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
0025a8  1f078703  addli r14, r14, 448
0025ac  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0025b0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0025b4  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0025b8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0025bc  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
0025c0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0025c4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0025c8  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
0025cc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0025d0  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0025d4  93000c05  setlt.u r1, r24, r16
0025d8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0025dc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0025e0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0025e4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0025e8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0025ec  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0025f0  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
0025f4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0025f8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0025fc  bbcb00fe  bneq r1, zero, -272
002600  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002604  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002608  6af108c0  vsrl.p vr2, r17, vr0
00260c  eaf118c0  vsrl.p vr3, r17, vr1
002610  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002614  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002618  6a7109c0  vsrl.p vr2, r18, vr0
00261c  ea7119c0  vsrl.p vr3, r18, vr1
002620  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002624  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002628  6af109c0  vsrl.p vr2, r19, vr0
00262c  eaf119c0  vsrl.p vr3, r19, vr1
002630  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002634  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002638  6a710ac0  vsrl.p vr2, r20, vr0
00263c  ea711ac0  vsrl.p vr3, r20, vr1
002640  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002644  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002648  fa100040  vextracti.f r1, 0(vr0)
00264c  7a940040  vextracti.f r8, 0(vr1)
002650  0b661110  add.f.rn r12, r2, r1
002654  0be18110  add.f.rn r2, r3, r8
002658  8b809330  div.u r1, r7, r9
00265c  80310002  core_id r3
002660  9f078fd7  addli r15, r30, -5184
002664  1f0c0000  addli r24, zero, 0
002668  9bb06000  slli r1, r1, 6
00266c  9b800004  andi r1, r1, 64
002670  97903000  or r1, r1, r3
002674  9bb12000  slli r3, r1, 2
002678  9b80e007  andi r1, r1, 126
00267c  0b945111  add.s r8, r3, r21
002680  9bb02000  slli r1, r1, 2
002684  7360c400  stores.w r12, 0(r8)
002688  0b94a111  add.s r8, r3, r26
00268c  9b914100  ori r3, r3, 4
002690  73602400  stores.w r2, 0(r8)
002694  0b915111  add.s r2, r3, r21
002698  0b945011  add.s r8, r1, r21
00269c  8b91a111  add.s r3, r3, r26
0026a0  8b90a011  add.s r1, r1, r26
0026a4  00a00300  mfence { lm, sm, gm }
0026a8  80210b04  csr_set csr3, r22
0026ac  00d00100  sync_group
0026b0  6f410100  loads.w r2, 0(r2)
0026b4  6f440400  loads.w r8, 0(r8)
0026b8  efc10100  loads.w r3, 0(r3)
0026bc  efc00000  loads.w r1, 0(r1)
0026c0  0b618110  add.f.rn r2, r2, r8
0026c4  8be01110  add.f.rn r1, r3, r1
0026c8  ab01003a  lui r3, 237568
0026cc  0b643120  mul.f.rn r8, r2, r3
0026d0  8be03020  mul.f.rn r1, r1, r3
0026d4  0b618420  mul.f.rn r2, r8, r8
0026d8  0b670458  neg.f r14, r8
0026dc  8be02018  sub.f.rn r1, r1, r2
0026e0  63013f00  loadli.w r2,  24(r30)
0026e4  8be02010  add.f.rn r1, r1, r2
0026e8  2b01803f  lui r2, 260096
0026ec  8f800008  sqrt.f.rn r1, r1
0026f0  0f061118  div.f.rn r12, r2, r1
0026f4  eb500f00  load.d r[2:3], 0(r30)
0026f8  0ba1b011  add.ul r[3:4], r[2:3], r[28:29]
0026fc  9f808700  addli r1, r15, 64
002700  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
002704  1f044c00  addli r8, r24, 32
002708  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00270c  13848206  setle.u r8, r5, r8
002710  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
002714  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
002718  0a100602  vmul.f.mz.rn vr0{mr1}, r12, vr0
00271c  8a101602  vmul.f.mz.rn vr1{mr1}, r12, vr1
002720  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
002724  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002728  bb700400  bneq r8, zero, 60
00272c  9f800701  addli r1, r15, 128
002730  1f848701  addli r8, r15, 192
002734  1f0c8c00  addli r24, r24, 64
002738  9f870702  addli r15, r15, 256
00273c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002740  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
002744  930b5c04  setlt.u r23, r24, r5
002748  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
00274c  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
002750  0a100602  vmul.f.mz.rn vr0{mr1}, r12, vr0
002754  8a101602  vmul.f.mz.rn vr1{mr1}, r12, vr1
002758  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00275c  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
002760  3bfe0bfe  bneq r23, zero, -100
002764  ab0000f0  lui r1, 983040
002768  00a00000  mfence { lm }
00276c  97901500  or r1, r11, r1
002770  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
002774  00a00200  mfence { lm, gm }
002778  5b40ffff  j -1536
00277c  80300002  core_id r1
002780  bb800000  bneq r1, zero, 32
002784  63012f00  loadli.w r2,  16(r30)
002788  ab0100f0  lui r3, 983040
00278c  1b311100  slli r2, r2, 1
002790  17113100  or r2, r2, r3
002794  abc10100  lui r3, 28
002798  9f810100  addli r3, r3, 0
00279c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0027a0  2bf10000  lui r2, 15
0027a4  e3411f00  loadli.w r3,  12(r30)
0027a8  00200300  mfence { sm, gm }
0027ac  1b11f1ff  ori r2, r2, 4095
0027b0  80210104  csr_set csr3, r2
0027b4  00d00100  sync_group
0027b8  cbdd111c  ble.s r3, r1, 15220
0027bc  63012f00  loadli.w r2,  16(r30)
0027c0  e3412f00  loadli.w r3,  20(r30)
0027c4  1f052000  addli r10, zero, 16
0027c8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0027cc  1f130000  addli r6, zero, 1
0027d0  9f040002  addli r9, zero, 256
0027d4  ab05ffff  lui r11, 1048560
0027d8  ab06807f  lui r13, 522240
0027dc  2b08c07f  lui r16, 523264
0027e0  9f080001  addli r17, zero, 128
0027e4  1f098000  addli r18, zero, 64
0027e8  9f094000  addli r19, zero, 32
0027ec  1b3b1100  slli r22, r2, 1
0027f0  0b123110  add.s r4, r2, r3
0027f4  33010108  fix2float.rn r2, r2
0027f8  67042fd4  storeli.w r2, -5568(r30)
0027fc  1f71f2ff  addli r2, r4, -1
002800  1bb21100  slli r4, r3, 1
002804  67086fd5  storeli.w r22, -5504(r30)
002808  8b123130  div.s r5, r2, r3
00280c  2bf1ffff  lui r2, 1048575
002810  9f018fd7  addli r3, r30, -5184
002814  1b14f1ff  ori r8, r2, 4095
002818  1f010fd7  addli r2, r30, -5248
00281c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002820  6a200522  vor.u.mz vr0{mr1}, r10, vr0
002824  1f018fd6  addli r2, r30, -5312
002828  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00282c  2b710000  lui r2, 7
002830  1b16f1ff  ori r12, r2, 4095
002834  db080000  j 68
002838  9f038fd5  addli r7, r30, -5440
00283c  6b510f00  load.d r[3:4], 0(r30)
002840  6bda0300  load.d r[21:22], 0(r7)
002844  00a00000  mfence { lm }
002848  80530102  load_param_i r7, 2
00284c  630b0fd5  loadli.w r22,  -5504(r30)
002850  8b901310  add.s r1, r7, r1
002854  0b2a4111  add.ul r[21:22], r[3:4], r[21:22]
002858  2b0100f0  lui r2, 983040
00285c  9f018fd7  addli r3, r30, -5184
002860  17112b00  or r2, r22, r2
002864  7f313a00  s_lm2gm r2, r3, 0(r[21:22])
002868  00a00200  mfence { lm, gm }
00286c  63411f00  loadli.w r2,  12(r30)
002870  3fa02000  blt.s r1, r2, 8
002874  5b570700  j 15032
002878  63011f00  loadli.w r2,  8(r30)
00287c  9f037fd6  addli r7, r30, -5320
002880  0b912010  add.s r2, r1, r2
002884  0b11f120  mul.s r2, r2, r15
002888  331a0128  sext_int2long r[21:22], r2
00288c  2b0100f0  lui r2, 983040
002890  973b6a02  sll.d r[24:25], r[21:22], r6
002894  6bda0300  load.d r[21:22], 0(r7)
002898  17112b00  or r2, r22, r2
00289c  9f038fd5  addli r7, r30, -5440
0028a0  73b07301  store.d r[24:25], 0(r7)
0028a4  0b2a7a11  add.ul r[21:22], r[21:22], r[24:25]
0028a8  7f213a00  l_gm2lm r2, r3, 0(r[21:22])
0028ac  00a00200  mfence { lm, gm }
0028b0  bfdc6200  blt.s r5, r6, 820
0028b4  9f0c0000  addli r25, zero, 0
0028b8  1f0c0000  addli r24, zero, 0
0028bc  1f0d0000  addli r26, zero, 0
0028c0  db0c0000  j 100
0028c4  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0028c8  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0028cc  1f1d0d00  addli r26, r26, 1
0028d0  6af104c0  vsrl.p vr2, r9, vr0
0028d4  eaf114c0  vsrl.p vr3, r9, vr1
0028d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028e0  6af108c0  vsrl.p vr2, r17, vr0
0028e4  eaf118c0  vsrl.p vr3, r17, vr1
0028e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028f0  6a7109c0  vsrl.p vr2, r18, vr0
0028f4  ea7119c0  vsrl.p vr3, r18, vr1
0028f8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028fc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002900  6af109c0  vsrl.p vr2, r19, vr0
002904  eaf119c0  vsrl.p vr3, r19, vr1
002908  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00290c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002910  7a110040  vextracti.f r2, 0(vr0)
002914  fa910040  vextracti.f r3, 0(vr1)
002918  8bec2c10  add.f.rn r25, r25, r2
00291c  0b6c3c10  add.f.rn r24, r24, r3
002920  373b5d00  beq r26, r5, 716
002924  1f010d00  addli r2, r26, 0
002928  37309700  beq r14, r9, 12
00292c  17218d00  xor r2, r26, r8
002930  0b912210  add.s r2, r5, r2
002934  9f010fd7  addli r3, r30, -5248
002938  8b13e120  mul.s r7, r2, r14
00293c  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
002940  8b937718  sub.s r7, r15, r7
002944  8b9de340  min.s r27, r7, r14
002948  92322002  vadd.s.mz vr5{mr1}, zero, vr2
00294c  12322002  vadd.s.mz vr4{mr1}, zero, vr2
002950  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002954  bfcd6dfe  blt.s r27, r6, -144
002958  0b1a2220  mul.s r20, r4, r2
00295c  1f010fd7  addli r2, r30, -5248
002960  abca0100  lui r21, 28
002964  1f0e0000  addli r28, zero, 0
002968  9f038fd7  addli r7, r30, -5184
00296c  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
002970  9f8a0a00  addli r21, r21, 0
002974  12315002  vadd.s.mz vr2{mr1}, zero, vr5
002978  92315002  vadd.s.mz vr3{mr1}, zero, vr5
00297c  12325002  vadd.s.mz vr4{mr1}, zero, vr5
002980  0b9b4a11  add.s r22, r21, r20
002984  0b914311  add.s r2, r7, r20
002988  9f018fd6  addli r3, r30, -5312
00298c  4a030b02  vloads.mz vr6{mr1}, 0(r22)
002990  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002994  c2030102  vload.mz vr7{mr1}, 0(r2)
002998  9f010fd7  addli r3, r30, -5248
00299c  9f0b8b00  addli r23, r22, 64
0029a0  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0029a4  9f018e00  addli r3, r28, 64
0029a8  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0029ac  6ab57502  vand.s.mz vr10{mr1}, r11, vr7
0029b0  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0029b4  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
0029b8  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0029bc  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0029c0  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0029c4  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0029c8  669503c0  vabs.f vr10, vr7
0029cc  6a348302  vand.s.mz vr8{mr1}, r6, vr8
0029d0  ea349302  vand.s.mz vr9{mr1}, r6, vr9
0029d4  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
0029d8  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
0029dc  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
0029e0  12348602  vadd.s.mz vr8{mr1}, r12, vr8
0029e4  92349602  vadd.s.mz vr9{mr1}, r12, vr9
0029e8  eab38502  vand.s.mz vr7{mr1}, r11, vr8
0029ec  661403c0  vabs.f vr8, vr6
0029f0  6ab39502  vand.s.mz vr6{mr1}, r11, vr9
0029f4  ea230834  vor.u.mh vr7{mr2}, r16, vr0
0029f8  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
0029fc  6a230834  vor.u.mh vr6{mr2}, r16, vr0
002a00  4a840b02  vloads.mz vr8{mr1}, 0(r23)
002a04  9f0b8100  addli r23, r2, 64
002a08  c2840b02  vload.mz vr9{mr1}, 0(r23)
002a0c  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
002a10  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
002a14  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002a18  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
002a1c  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002a20  46007102  vstore.mz vr7{mr1}, 0(r2)
002a24  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002a28  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002a2c  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
002a30  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
002a34  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002a38  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002a3c  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002a40  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
002a44  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
002a48  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
002a4c  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
002a50  ea349302  vand.s.mz vr9{mr1}, r6, vr9
002a54  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002a58  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
002a5c  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
002a60  661505c0  vabs.f vr10, vr10
002a64  661404c0  vabs.f vr8, vr8
002a68  92349602  vadd.s.mz vr9{mr1}, r12, vr9
002a6c  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002a70  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
002a74  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002a78  6ab5b502  vand.s.mz vr10{mr1}, r11, vr11
002a7c  ea240834  vor.u.mh vr9{mr2}, r16, vr0
002a80  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
002a84  6a250834  vor.u.mh vr10{mr2}, r16, vr0
002a88  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
002a8c  eab4a502  vand.s.mz vr9{mr1}, r11, vr10
002a90  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
002a94  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002a98  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002a9c  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
002aa0  46808b02  vstore.mz vr8{mr1}, 0(r23)
002aa4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002aa8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002aac  4be83dfe  ble.s r27, r3, -488
002ab0  9f010b01  addli r3, r22, 128
002ab4  9f0b0101  addli r23, r2, 128
002ab8  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
002abc  1f018101  addli r2, r2, 192
002ac0  1f0e0e01  addli r28, r28, 128
002ac4  9f8a0a02  addli r21, r21, 256
002ac8  9f830302  addli r7, r7, 256
002acc  6a237522  vor.u.mz vr6{mr1}, r10, vr7
002ad0  4a840102  vloads.mz vr8{mr1}, 0(r3)
002ad4  c2840b02  vload.mz vr9{mr1}, 0(r23)
002ad8  9f018b01  addli r3, r22, 192
002adc  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
002ae0  6ab09502  vand.s.mz vr0{mr1}, r11, vr9
002ae4  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
002ae8  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002aec  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
002af0  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
002af4  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
002af8  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
002afc  e69504c0  vabs.f vr11, vr9
002b00  6a300302  vand.s.mz vr0{mr1}, r6, vr0
002b04  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002b08  72a1b642  vlt.u.mz mr2{mr1}, r13, vr11
002b0c  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
002b10  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
002b14  12300602  vadd.s.mz vr0{mr1}, r12, vr0
002b18  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002b1c  eab40502  vand.s.mz vr9{mr1}, r11, vr0
002b20  661004c0  vabs.f vr0, vr8
002b24  6ab4a502  vand.s.mz vr8{mr1}, r11, vr10
002b28  ea247834  vor.u.mh vr9{mr2}, r16, vr7
002b2c  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002b30  6a247834  vor.u.mh vr8{mr2}, r16, vr7
002b34  4a800102  vloads.mz vr0{mr1}, 0(r3)
002b38  42050102  vload.mz vr10{mr1}, 0(r2)
002b3c  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
002b40  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
002b44  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002b48  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
002b4c  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002b50  46809b02  vstore.mz vr9{mr1}, 0(r23)
002b54  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
002b58  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
002b5c  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
002b60  6ab00502  vand.s.mz vr0{mr1}, r11, vr0
002b64  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
002b68  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
002b6c  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
002b70  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
002b74  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002b78  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002b7c  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
002b80  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
002b84  e69000c0  vabs.f vr1, vr1
002b88  661000c0  vabs.f vr0, vr0
002b8c  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002b90  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002b94  72a11642  vlt.u.mz mr2{mr1}, r13, vr1
002b98  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002b9c  eab0b502  vand.s.mz vr1{mr1}, r11, vr11
002ba0  6a257834  vor.u.mh vr10{mr2}, r16, vr7
002ba4  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002ba8  ea207834  vor.u.mh vr1{mr2}, r16, vr7
002bac  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
002bb0  eab31502  vand.s.mz vr7{mr1}, r11, vr1
002bb4  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
002bb8  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
002bbc  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002bc0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002bc4  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
002bc8  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
002bcc  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
002bd0  46000102  vstore.mz vr0{mr1}, 0(r2)
002bd4  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002bd8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002bdc  bf16beff  blt.s r28, r27, -604
002be0  db9cffff  j -796
002be4  1f0c0000  addli r24, zero, 0
002be8  9f0c0000  addli r25, zero, 0
002bec  00a00000  mfence { lm }
002bf0  3fa167fe  blt.s r15, r6, -952
002bf4  63018fd4  loadli.w r2,  -5568(r30)
002bf8  e3013f00  loadli.w r3,  24(r30)
002bfc  9f0a0000  addli r21, zero, 0
002c00  8f832c18  div.f.rn r7, r25, r2
002c04  0f012c18  div.f.rn r2, r24, r2
002c08  0bea7320  mul.f.rn r20, r7, r7
002c0c  8be30358  neg.f r7, r7
002c10  0b614119  sub.f.rn r2, r2, r20
002c14  1f0a8fd7  addli r20, r30, -5184
002c18  0b613110  add.f.rn r2, r2, r3
002c1c  ab01803f  lui r3, 260096
002c20  0f010108  sqrt.f.rn r2, r2
002c24  0f812118  div.f.rn r2, r3, r2
002c28  42020a02  vload.mz vr4{mr1}, 0(r20)
002c2c  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
002c30  1f8b4a00  addli r22, r21, 32
002c34  ea212522  vor.u.mz vr3{mr1}, r10, vr2
002c38  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002c3c  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002c40  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002c44  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002c48  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002c4c  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002c50  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002c54  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002c58  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002c5c  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002c60  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002c64  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002c68  e69202c0  vabs.f vr5, vr5
002c6c  661202c0  vabs.f vr4, vr4
002c70  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002c74  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002c78  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002c7c  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002c80  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002c84  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002c88  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002c8c  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002c90  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
002c94  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
002c98  46004a02  vstore.mz vr4{mr1}, 0(r20)
002c9c  4bfe67fd  ble.s r15, r22, -1124
002ca0  1f0b8a00  addli r22, r20, 64
002ca4  9f8a8a00  addli r21, r21, 64
002ca8  1f0a0a01  addli r20, r20, 128
002cac  42020b02  vload.mz vr4{mr1}, 0(r22)
002cb0  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002cb4  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002cb8  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002cbc  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002cc0  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002cc4  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002cc8  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002ccc  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002cd0  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002cd4  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002cd8  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002cdc  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002ce0  e69202c0  vabs.f vr5, vr5
002ce4  661202c0  vabs.f vr4, vr4
002ce8  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002cec  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002cf0  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002cf4  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002cf8  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002cfc  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002d00  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002d04  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002d08  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
002d0c  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
002d10  46002b02  vstore.mz vr2{mr1}, 0(r22)
002d14  3fdcfafe  blt.s r21, r15, -236
002d18  5b64ffff  j -1248
002d1c  80300002  core_id r1
002d20  bb800000  bneq r1, zero, 32
002d24  63012f00  loadli.w r2,  16(r30)
002d28  ab0100f0  lui r3, 983040
002d2c  1b311100  slli r2, r2, 1
002d30  17113100  or r2, r2, r3
002d34  ab010200  lui r3, 32
002d38  9f810100  addli r3, r3, 0
002d3c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002d40  2bf10000  lui r2, 15
002d44  e3411f00  loadli.w r3,  12(r30)
002d48  00200300  mfence { sm, gm }
002d4c  1b11f1ff  ori r2, r2, 4095
002d50  80210104  csr_set csr3, r2
002d54  00d00100  sync_group
002d58  4bd7111a  ble.s r3, r1, 13780
002d5c  e3012f00  loadli.w r3,  16(r30)
002d60  e3422f00  loadli.w r5,  20(r30)
002d64  2bf4ffff  lui r8, 1048575
002d68  2b080200  lui r16, 32
002d6c  9f068fd7  addli r13, r30, -5184
002d70  9f040002  addli r9, zero, 256
002d74  1f050001  addli r10, zero, 128
002d78  9f058000  addli r11, zero, 64
002d7c  1f064000  addli r12, zero, 32
002d80  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002d84  1b14f4ff  ori r8, r8, 4095
002d88  1f080800  addli r16, r16, 0
002d8c  0b925110  add.s r4, r3, r5
002d90  1bb11100  slli r2, r3, 1
002d94  b3810108  fix2float.rn r3, r3
002d98  1f73f2ff  addli r6, r4, -1
002d9c  1bb21200  slli r4, r5, 1
002da0  8b125330  div.s r5, r6, r5
002da4  1f130000  addli r6, zero, 1
002da8  5b070000  j 56
002dac  eb590f00  load.d r[20:21], 0(r30)
002db0  9f068fd7  addli r13, r30, -5184
002db4  00a00000  mfence { lm }
002db8  8ba81911  add.ul r[18:19], r[20:21], r[18:19]
002dbc  ab0900f0  lui r19, 983040
002dc0  005a0102  load_param_i r20, 2
002dc4  97193101  or r19, r2, r19
002dc8  8b101a10  add.s r1, r20, r1
002dcc  ffb9d800  s_lm2gm r19, r13, 0(r[18:19])
002dd0  00a00200  mfence { lm, gm }
002dd4  e3431f00  loadli.w r7,  12(r30)
002dd8  3fa07000  blt.s r1, r7, 8
002ddc  5baa0600  j 13648
002de0  e3031f00  loadli.w r7,  8(r30)
002de4  ab0900f0  lui r19, 983040
002de8  97193101  or r19, r2, r19
002dec  8b987010  add.s r17, r1, r7
002df0  9f037fd6  addli r7, r30, -5320
002df4  8b98f820  mul.s r17, r17, r15
002df8  6bda0300  load.d r[21:22], 0(r7)
002dfc  b3980828  sext_int2long r[18:19], r17
002e00  97b86802  sll.d r[18:19], r[18:19], r6
002e04  0b2a1a11  add.ul r[21:22], r[21:22], r[18:19]
002e08  ff29da00  l_gm2lm r19, r13, 0(r[21:22])
002e0c  00a00200  mfence { lm, gm }
002e10  3fc76200  blt.s r5, r6, 464
002e14  1f0a0000  addli r20, zero, 0
002e18  9f090000  addli r19, zero, 0
002e1c  9f0a0000  addli r21, zero, 0
002e20  db0c0000  j 100
002e24  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
002e28  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002e2c  9f9a0a00  addli r21, r21, 1
002e30  6af134c0  vsrl.p vr2, r9, vr3
002e34  6af214c0  vsrl.p vr4, r9, vr1
002e38  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
002e3c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e40  ea7125c0  vsrl.p vr3, r10, vr2
002e44  6a7215c0  vsrl.p vr4, r10, vr1
002e48  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e4c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e50  eaf125c0  vsrl.p vr3, r11, vr2
002e54  6af215c0  vsrl.p vr4, r11, vr1
002e58  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e5c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e60  ea7126c0  vsrl.p vr3, r12, vr2
002e64  6a7216c0  vsrl.p vr4, r12, vr1
002e68  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e6c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e70  fa130140  vextracti.f r7, 0(vr2)
002e74  fa960040  vextracti.f r13, 0(vr1)
002e78  0b6a7a10  add.f.rn r20, r20, r7
002e7c  8be9d910  add.f.rn r19, r19, r13
002e80  b7a55a00  beq r21, r5, 360
002e84  1f8c0a00  addli r24, r21, 0
002e88  37309700  beq r14, r9, 12
002e8c  17ab8a00  xor r22, r21, r8
002e90  0b9c6211  add.s r24, r5, r22
002e94  0b1bec20  mul.s r22, r24, r14
002e98  12320002  vadd.s.mz vr4{mr1}, zero, vr0
002e9c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
002ea0  12310002  vadd.s.mz vr2{mr1}, zero, vr0
002ea4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002ea8  0b9b6719  sub.s r22, r15, r22
002eac  0b1beb40  min.s r22, r22, r14
002eb0  bf5d6bfe  blt.s r22, r6, -140
002eb4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002eb8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
002ebc  92310002  vadd.s.mz vr3{mr1}, zero, vr0
002ec0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
002ec4  9f0b0000  addli r23, zero, 0
002ec8  0b1c8221  mul.s r24, r4, r24
002ecc  9f0c8fd7  addli r25, r30, -5184
002ed0  1f0d0800  addli r26, r16, 0
002ed4  8b1d8d11  add.s r27, r26, r24
002ed8  9f838b00  addli r7, r23, 64
002edc  ca820d02  vloads.mz vr5{mr1}, 0(r27)
002ee0  1f8e8d00  addli r28, r27, 64
002ee4  4a030e02  vloads.mz vr6{mr1}, 0(r28)
002ee8  0b9e8c11  add.s r28, r25, r24
002eec  c2030e02  vload.mz vr7{mr1}, 0(r28)
002ef0  9f068e00  addli r13, r28, 64
002ef4  42840602  vload.mz vr8{mr1}, 0(r13)
002ef8  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
002efc  92320002  vadd.s.mz vr5{mr1}, zero, vr0
002f00  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
002f04  06b40300  vfp162float_l.rn vr8, vr7
002f08  86f30300  vfp162float_h.rn vr7, vr7
002f0c  86340300  vfp162float_l.rn vr9, vr6
002f10  06730300  vfp162float_h.rn vr6, vr6
002f14  86120400  vfloat2fp16_l.rn vr5, vr8
002f18  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
002f1c  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
002f20  12340002  vadd.s.mz vr8{mr1}, zero, vr0
002f24  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
002f28  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
002f2c  06940400  vfloat2fp16_l.rn vr8, vr9
002f30  86d20300  vfloat2fp16_h.rn vr5, vr7
002f34  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002f38  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002f3c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
002f40  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002f44  06540300  vfloat2fp16_h.rn vr8, vr6
002f48  46005e02  vstore.mz vr5{mr1}, 0(r28)
002f4c  46808602  vstore.mz vr8{mr1}, 0(r13)
002f50  4b5b7bfe  ble.s r22, r7, -300
002f54  9f830d01  addli r7, r27, 128
002f58  9f060e01  addli r13, r28, 128
002f5c  9f8b0b01  addli r23, r23, 128
002f60  1f0d0d02  addli r26, r26, 256
002f64  9f8c0c02  addli r25, r25, 256
002f68  ca820302  vloads.mz vr5{mr1}, 0(r7)
002f6c  9f838d01  addli r7, r27, 192
002f70  c2830602  vload.mz vr7{mr1}, 0(r13)
002f74  4a830302  vloads.mz vr6{mr1}, 0(r7)
002f78  9f038e01  addli r7, r28, 192
002f7c  42840302  vload.mz vr8{mr1}, 0(r7)
002f80  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
002f84  92320002  vadd.s.mz vr5{mr1}, zero, vr0
002f88  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
002f8c  12330002  vadd.s.mz vr6{mr1}, zero, vr0
002f90  86b40300  vfp162float_l.rn vr9, vr7
002f94  86f30300  vfp162float_h.rn vr7, vr7
002f98  86920400  vfloat2fp16_l.rn vr5, vr9
002f9c  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002fa0  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002fa4  86340400  vfp162float_l.rn vr9, vr8
002fa8  06740400  vfp162float_h.rn vr8, vr8
002fac  06930400  vfloat2fp16_l.rn vr6, vr9
002fb0  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
002fb4  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
002fb8  86d20300  vfloat2fp16_h.rn vr5, vr7
002fbc  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002fc0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002fc4  06530400  vfloat2fp16_h.rn vr6, vr8
002fc8  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
002fcc  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002fd0  46805602  vstore.mz vr5{mr1}, 0(r13)
002fd4  46806302  vstore.mz vr6{mr1}, 0(r7)
002fd8  bffb6bff  blt.s r23, r22, -260
002fdc  5bc9ffff  j -440
002fe0  9f090000  addli r19, zero, 0
002fe4  1f0a0000  addli r20, zero, 0
002fe8  00a00000  mfence { lm }
002fec  3f8767fe  blt.s r15, r6, -576
002ff0  0f0a3a18  div.f.rn r20, r20, r3
002ff4  8f893918  div.f.rn r19, r19, r3
002ff8  e3033f00  loadli.w r7,  24(r30)
002ffc  1f0b0000  addli r22, zero, 0
003000  8b6a4a21  mul.f.rn r21, r20, r20
003004  0b6a0a58  neg.f r20, r20
003008  8be95919  sub.f.rn r19, r19, r21
00300c  9f0a8fd7  addli r21, r30, -5184
003010  8be97910  add.f.rn r19, r19, r7
003014  ab03803f  lui r7, 260096
003018  8f890908  sqrt.f.rn r19, r19
00301c  8f893319  div.f.rn r19, r7, r19
003020  c2800a02  vload.mz vr1{mr1}, 0(r21)
003024  9f0b4b00  addli r23, r22, 32
003028  06b10000  vfp162float_l.rn vr2, vr1
00302c  86f00000  vfp162float_h.rn vr1, vr1
003030  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003034  92111a02  vadd.f.mz.rn vr3{mr1}, r20, vr1
003038  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00303c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003040  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
003044  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003048  06120100  vfloat2fp16_l.rn vr4, vr2
00304c  06d20100  vfloat2fp16_h.rn vr4, vr3
003050  46804a02  vstore.mz vr4{mr1}, 0(r21)
003054  4be577ff  ble.s r15, r23, -680
003058  9f8b8a00  addli r23, r21, 64
00305c  1f0b8b00  addli r22, r22, 64
003060  9f8a0a01  addli r21, r21, 128
003064  42810b02  vload.mz vr2{mr1}, 0(r23)
003068  86310100  vfp162float_l.rn vr3, vr2
00306c  06710100  vfp162float_h.rn vr2, vr2
003070  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
003074  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003078  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
00307c  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
003080  86900100  vfloat2fp16_l.rn vr1, vr3
003084  86500100  vfloat2fp16_h.rn vr1, vr2
003088  46801b02  vstore.mz vr1{mr1}, 0(r23)
00308c  3f5efbfe  blt.s r22, r15, -108
003090  dba3ffff  j -740
003094  80300002  core_id r1
003098  1f210000  addli r2, zero, 2
00309c  37aa2016  beq r1, r2, 11912
0030a0  1f110000  addli r2, zero, 1
0030a4  378c2012  beq r1, r2, 9984
0030a8  3bea0016  bneq r1, zero, 11928
0030ac  63012f00  loadli.w r2,  16(r30)
0030b0  ab0100f0  lui r3, 983040
0030b4  1b312100  slli r2, r2, 2
0030b8  17113100  or r2, r2, r3
0030bc  ab710200  lui r3, 39
0030c0  9f810108  addli r3, r3, 1024
0030c4  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0030c8  5bcf0500  j 11896
0030cc  80300002  core_id r1
0030d0  bb800000  bneq r1, zero, 32
0030d4  63012f00  loadli.w r2,  16(r30)
0030d8  ab0100f0  lui r3, 983040
0030dc  1b312100  slli r2, r2, 2
0030e0  17113100  or r2, r2, r3
0030e4  abd10200  lui r3, 45
0030e8  9f8101f0  addli r3, r3, -2048
0030ec  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0030f0  2bf10000  lui r2, 15
0030f4  e3411f00  loadli.w r3,  12(r30)
0030f8  00200300  mfence { sm, gm }
0030fc  1b11f1ff  ori r2, r2, 4095
003100  80210104  csr_set csr3, r2
003104  00d00100  sync_group
003108  cb981118  ble.s r3, r1, 12836
00310c  e3012f00  loadli.w r3,  16(r30)
003110  e3422f00  loadli.w r5,  20(r30)
003114  abf4ffff  lui r9, 1048575
003118  abd80200  lui r17, 45
00311c  1f0b8fd7  addli r22, r30, -5184
003120  1f140000  addli r8, zero, 1
003124  1f050002  addli r10, zero, 256
003128  9f050001  addli r11, zero, 128
00312c  1f068000  addli r12, zero, 64
003130  9f064000  addli r13, zero, 32
003134  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003138  9b94f4ff  ori r9, r9, 4095
00313c  9f8808f0  addli r17, r17, -2048
003140  0b925110  add.s r4, r3, r5
003144  1bb12100  slli r2, r3, 2
003148  b3810108  fix2float.rn r3, r3
00314c  1f73f2ff  addli r6, r4, -1
003150  1bb22200  slli r4, r5, 2
003154  67043fd6  storeli.w r3, -5312(r30)
003158  9f010fd7  addli r3, r30, -5248
00315c  8b125330  div.s r5, r6, r5
003160  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003164  5b070000  j 56
003168  6b530f00  load.d r[7:8], 0(r30)
00316c  2b0800f0  lui r16, 983040
003170  1f0b8fd7  addli r22, r30, -5184
003174  00a00000  mfence { lm }
003178  005a0102  load_param_i r20, 2
00317c  17180101  or r16, r2, r16
003180  8b101a10  add.s r1, r20, r1
003184  0b292311  add.ul r[19:20], r[7:8], r[19:20]
003188  7f386901  s_lm2gm r16, r22, 0(r[19:20])
00318c  00a00200  mfence { lm, gm }
003190  e3411f00  loadli.w r3,  12(r30)
003194  3fa03000  blt.s r1, r3, 8
003198  db320600  j 12692
00319c  e3011f00  loadli.w r3,  8(r30)
0031a0  0b983010  add.s r16, r1, r3
0031a4  9f210000  addli r3, zero, 2
0031a8  0b18f820  mul.s r16, r16, r15
0031ac  33190828  sext_int2long r[19:20], r16
0031b0  2b0800f0  lui r16, 983040
0031b4  17393902  sll.d r[19:20], r[19:20], r3
0031b8  9f017fd6  addli r3, r30, -5320
0031bc  17180101  or r16, r2, r16
0031c0  6bd30100  load.d r[7:8], 0(r3)
0031c4  0b2a2311  add.ul r[21:22], r[7:8], r[19:20]
0031c8  7f286a01  l_gm2lm r16, r22, 0(r[21:22])
0031cc  00a00200  mfence { lm, gm }
0031d0  bf978200  blt.s r5, r8, 484
0031d4  9f0a0000  addli r21, zero, 0
0031d8  1f0a0000  addli r20, zero, 0
0031dc  1f0b0000  addli r22, zero, 0
0031e0  db0c0000  j 100
0031e4  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
0031e8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0031ec  1f1b0b00  addli r22, r22, 1
0031f0  6a7105c0  vsrl.p vr2, r10, vr0
0031f4  ea7115c0  vsrl.p vr3, r10, vr1
0031f8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0031fc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003200  6af105c0  vsrl.p vr2, r11, vr0
003204  eaf115c0  vsrl.p vr3, r11, vr1
003208  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00320c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003210  6a7106c0  vsrl.p vr2, r12, vr0
003214  ea7116c0  vsrl.p vr3, r12, vr1
003218  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00321c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003220  6af106c0  vsrl.p vr2, r13, vr0
003224  eaf116c0  vsrl.p vr3, r13, vr1
003228  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00322c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003230  fa110040  vextracti.f r3, 0(vr0)
003234  7a930040  vextracti.f r6, 0(vr1)
003238  8bea3a10  add.f.rn r21, r21, r3
00323c  0b6a6a10  add.f.rn r20, r20, r6
003240  b7755b00  beq r22, r5, 380
003244  1f080b00  addli r16, r22, 0
003248  3730a700  beq r14, r10, 12
00324c  17289b00  xor r16, r22, r9
003250  0b980211  add.s r16, r5, r16
003254  9f010fd7  addli r3, r30, -5248
003258  8b1be820  mul.s r23, r16, r14
00325c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
003260  8b9b7719  sub.s r23, r15, r23
003264  8b9beb40  min.s r23, r23, r14
003268  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00326c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003270  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003274  bfcd8bfe  blt.s r23, r8, -144
003278  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
00327c  1f0c0000  addli r24, zero, 0
003280  8b1c0221  mul.s r25, r4, r16
003284  1f0d8fd7  addli r26, r30, -5184
003288  9f8d0800  addli r27, r17, 0
00328c  92304002  vadd.s.mz vr1{mr1}, zero, vr4
003290  12314002  vadd.s.mz vr2{mr1}, zero, vr4
003294  92314002  vadd.s.mz vr3{mr1}, zero, vr4
003298  0b989d11  add.s r16, r27, r25
00329c  0b1e9d11  add.s r28, r26, r25
0032a0  1f038800  addli r6, r16, 64
0032a4  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
0032a8  9f038801  addli r7, r16, 192
0032ac  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
0032b0  9f018e01  addli r3, r28, 192
0032b4  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0032b8  1f030801  addli r6, r16, 128
0032bc  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
0032c0  9f030e01  addli r7, r28, 128
0032c4  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0032c8  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
0032cc  c2950302  vload_mask16.mz vr11{mr1}, 0(r7)
0032d0  1f038e00  addli r6, r28, 64
0032d4  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0032d8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0032dc  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0032e0  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0032e4  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0032e8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0032ec  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0032f0  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
0032f4  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0032f8  1f038c00  addli r6, r24, 64
0032fc  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003300  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
003304  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003308  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
00330c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003310  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
003314  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
003318  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00331c  4bab6bfe  ble.s r23, r6, -312
003320  1f030802  addli r6, r16, 256
003324  9f038802  addli r7, r16, 320
003328  9f010e02  addli r3, r28, 256
00332c  1f0c0c01  addli r24, r24, 128
003330  9f8d0d04  addli r27, r27, 512
003334  1f0d0d04  addli r26, r26, 512
003338  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
00333c  1f030803  addli r6, r16, 384
003340  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
003344  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
003348  9f038e02  addli r7, r28, 320
00334c  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
003350  1f038803  addli r6, r16, 448
003354  1f088e03  addli r16, r28, 448
003358  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
00335c  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
003360  1f030e03  addli r6, r28, 384
003364  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
003368  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
00336c  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
003370  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
003374  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003378  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00337c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003380  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003384  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
003388  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
00338c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
003390  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003394  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
003398  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00339c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0033a0  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0033a4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0033a8  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0033ac  bf3b7cff  blt.s r24, r23, -276
0033b0  dbc6ffff  j -460
0033b4  1f0a0000  addli r20, zero, 0
0033b8  9f0a0000  addli r21, zero, 0
0033bc  00a00000  mfence { lm }
0033c0  bfa687fe  blt.s r15, r8, -600
0033c4  e3018fd6  loadli.w r3,  -5312(r30)
0033c8  1f0b0000  addli r22, zero, 0
0033cc  8f8a3a18  div.f.rn r21, r21, r3
0033d0  0f083a18  div.f.rn r16, r20, r3
0033d4  e3013f00  loadli.w r3,  24(r30)
0033d8  0bea5a21  mul.f.rn r20, r21, r21
0033dc  0b684819  sub.f.rn r16, r16, r20
0033e0  0bea0a58  neg.f r20, r21
0033e4  9f0a8fd7  addli r21, r30, -5184
0033e8  0b683810  add.f.rn r16, r16, r3
0033ec  ab01803f  lui r3, 260096
0033f0  0f080808  sqrt.f.rn r16, r16
0033f4  0f880119  div.f.rn r16, r3, r16
0033f8  9f8b8a00  addli r23, r21, 64
0033fc  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
003400  1f0c4b00  addli r24, r22, 32
003404  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
003408  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
00340c  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003410  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003414  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003418  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
00341c  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
003420  4ba587ff  ble.s r15, r24, -696
003424  9f8b0a01  addli r23, r21, 128
003428  1f8c8a01  addli r24, r21, 192
00342c  1f0b8b00  addli r22, r22, 64
003430  9f8a0a02  addli r21, r21, 256
003434  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
003438  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
00343c  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003440  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003444  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003448  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
00344c  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
003450  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
003454  bf1efbfe  blt.s r22, r15, -92
003458  5ba2ffff  j -752
00345c  80300002  core_id r1
003460  ab630000  lui r7, 6
003464  1f110000  addli r2, zero, 1
003468  1f038fd7  addli r6, r30, -5184
00346c  1f048000  addli r8, zero, 64
003470  1f050010  addli r10, zero, 2048
003474  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
003478  9bb15000  slli r3, r1, 5
00347c  80500102  load_param_i r1, 2
003480  9f830308  addli r7, r7, 1024
003484  9bb45000  slli r9, r1, 5
003488  b3850128  zext_int2long r[12:13], r3
00348c  ab0600f0  lui r13, 983040
003490  97b52502  sll.d r[12:13], r[12:13], r2
003494  9716d400  or r13, r8, r13
003498  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
00349c  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
0034a0  9bb52100  slli r11, r3, 2
0034a4  8b913410  add.s r3, r9, r3
0034a8  00a00200  mfence { lm, gm }
0034ac  c2000302  vload.mz vr1{mr1}, 0(r6)
0034b0  1386a104  setlt.u r12, r3, r10
0034b4  8b957510  add.s r11, r11, r7
0034b8  9f868500  addli r13, r11, 64
0034bc  66c11180  vmerge_l.hf vr2, vr3, vr1
0034c0  e6c011a0  vmerge_h.hf vr1, vr3, vr1
0034c4  4e902502  vstores_mask16.mz vr2{mr1}, 0(r11)
0034c8  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
0034cc  bb7e06fe  bneq r12, zero, -68
0034d0  2bf10000  lui r2, 15
0034d4  80310002  core_id r3
0034d8  00a00300  mfence { lm, sm, gm }
0034dc  9f020006  addli r5, zero, 768
0034e0  1b11f1ff  ori r2, r2, 4095
0034e4  1b821100  andi r4, r3, 1
0034e8  80210104  csr_set csr3, r2
0034ec  1f010006  addli r2, zero, 768
0034f0  00d00100  sync_group
0034f4  37200200  beq r4, zero, 8
0034f8  9f02000a  addli r5, zero, 1280
0034fc  e3411f00  loadli.w r3,  12(r30)
003500  1f140000  addli r8, zero, 1
003504  bfa88116  blt.s r3, r8, 11816
003508  0b112220  mul.s r2, r4, r2
00350c  1bcc1000  srli r24, r1, 1
003510  80300002  core_id r1
003514  9bb11200  slli r3, r5, 1
003518  67044fd4  storeli.w r4, -5568(r30)
00351c  1f824200  addli r4, r5, 32
003520  9f040000  addli r9, zero, 0
003524  9f797000  addli r19, zero, 63
003528  9f0a0005  addli r21, zero, 640
00352c  2b09803f  lui r18, 260096
003530  1f0a2000  addli r20, zero, 16
003534  1f370000  addli r14, zero, 3
003538  2bee7f00  lui r28, 2046
00353c  9f551000  addli r11, zero, 13
003540  1f2b1000  addli r22, zero, 10
003544  9f0b0003  addli r23, zero, 384
003548  67002fd4  storeli.w r2, -5632(r30)
00354c  9bcc1000  srli r25, r1, 1
003550  1bb12200  slli r2, r5, 2
003554  9f008fd7  addli r1, r30, -5184
003558  67083fd6  storeli.w r3, -5248(r30)
00355c  674f4fd2  storeli.w r4, -5644(r30)
003560  2be20700  lui r4, 126
003564  0b111110  add.s r2, r2, r1
003568  8b911110  add.s r3, r3, r1
00356c  1f0181ff  addli r2, r2, -64
003570  670f2fd2  storeli.w r2, -5648(r30)
003574  1f8181ff  addli r2, r3, -64
003578  abf100fc  lui r3, 1032207
00357c  e74e2fd2  storeli.w r2, -5652(r30)
003580  2bf1ffff  lui r2, 1048575
003584  9b9601c0  ori r13, r3, 3072
003588  00a00000  mfence { lm }
00358c  e74f8fd3  storeli.w r24, -5636(r30)
003590  e70f9fd3  storeli.w r25, -5640(r30)
003594  1b1101f8  ori r2, r2, 3968
003598  e70e2fd2  storeli.w r2, -5656(r30)
00359c  2bf10000  lui r2, 15
0035a0  1b11f1ff  ori r2, r2, 4095
0035a4  67042fd6  storeli.w r2, -5312(r30)
0035a8  2b710000  lui r2, 7
0035ac  1b13f1ff  ori r6, r2, 4095
0035b0  2b01ff03  lui r2, 16368
0035b4  1b16f13f  ori r12, r2, 1023
0035b8  1f010fd5  addli r2, r30, -5504
0035bc  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0035c0  5b040000  j 32
0035c4  00a00300  mfence { lm, sm, gm }
0035c8  63018fd6  loadli.w r2,  -5312(r30)
0035cc  80210104  csr_set csr3, r2
0035d0  00d00100  sync_group
0035d4  8b948411  add.s r9, r9, r24
0035d8  3fa00401  blt.s r9, r16, 8
0035dc  5bc0faff  j -10752
0035e0  0b919411  add.s r2, r9, r25
0035e4  cb0f28fe  ble.s r16, r2, -32
0035e8  e3011f00  loadli.w r3,  8(r30)
0035ec  63050fd4  loadli.w r10,  -5632(r30)
0035f0  0b113110  add.s r2, r2, r3
0035f4  8b818431  div.u r3, r9, r24
0035f8  1b31b100  slli r2, r2, 11
0035fc  1711a100  or r2, r2, r10
003600  1f057fd6  addli r10, r30, -5320
003604  33180128  sext_int2long r[17:18], r2
003608  2b0100f0  lui r2, 983040
00360c  9bb16100  slli r3, r3, 6
003610  173d8802  sll.d r[27:28], r[17:18], r8
003614  eb570500  load.d r[16:17], 0(r10)
003618  63050fd7  loadli.w r10,  -5248(r30)
00361c  9b810104  andi r3, r3, 64
003620  0ba8a711  add.ul r[17:18], r[16:17], r[27:28]
003624  17112500  or r2, r10, r2
003628  7f211800  l_gm2lm r2, r1, 0(r[17:18])
00362c  00310002  core_id r2
003630  00a00200  mfence { lm, gm }
003634  17912100  or r2, r3, r2
003638  e341dfd3  loadli.w r3,  -5652(r30)
00363c  6305efd3  loadli.w r10,  -5648(r30)
003640  6348efd3  loadli.w r16,  -5644(r30)
003644  c2800102  vload.mz vr1{mr1}, 0(r3)
003648  1f08c8ff  addli r16, r16, -32
00364c  1f0c85ff  addli r24, r10, -64
003650  9f8181ff  addli r3, r3, -64
003654  93880905  setlt.u r17, r19, r16
003658  66c111a0  vmerge_h.hf vr2, vr3, vr1
00365c  e6c01180  vmerge_l.hf vr1, vr3, vr1
003660  46102502  vstore_mask16.mz vr2{mr1}, 0(r10)
003664  1f0505ff  addli r10, r10, -128
003668  46101c02  vstore_mask16.mz vr1{mr1}, 0(r24)
00366c  3bef08fe  bneq r17, zero, -40
003670  00a00000  mfence { lm }
003674  1f058fd5  addli r10, r30, -5440
003678  e3018fd4  loadli.w r3,  -5568(r30)
00367c  7330a501  store.d r[27:28], 0(r10)
003680  3bb60100  bneq r3, zero, 396
003684  92303002  vadd.s.mz vr1{mr1}, zero, vr3
003688  12313002  vadd.s.mz vr2{mr1}, zero, vr3
00368c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
003690  6305dfd3  loadli.w r10,  -5656(r30)
003694  9f010000  addli r3, zero, 0
003698  8b987110  add.s r17, r3, r7
00369c  0b983010  add.s r16, r1, r3
0036a0  1f050501  addli r10, r10, 128
0036a4  9f810104  addli r3, r3, 512
0036a8  9f870801  addli r15, r17, 128
0036ac  4a900802  vloads_mask16.mz vr0{mr1}, 0(r17)
0036b0  1f8c8800  addli r24, r17, 64
0036b4  42140802  vload_mask16.mz vr8{mr1}, 0(r16)
0036b8  9f0c8801  addli r25, r16, 192
0036bc  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
0036c0  9f878801  addli r15, r17, 192
0036c4  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0036c8  1f0c8800  addli r24, r16, 64
0036cc  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0036d0  ca930702  vloads_mask16.mz vr7{mr1}, 0(r15)
0036d4  9f070801  addli r15, r16, 128
0036d8  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
0036dc  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
0036e0  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0036e4  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0036e8  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0036ec  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0036f0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0036f4  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
0036f8  46908702  vstore_mask16.mz vr8{mr1}, 0(r15)
0036fc  9f870802  addli r15, r17, 256
003700  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003704  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003708  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00370c  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003710  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
003714  9f878802  addli r15, r17, 320
003718  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
00371c  9f0c0802  addli r25, r16, 256
003720  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003724  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003728  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00372c  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
003730  9f870803  addli r15, r17, 384
003734  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003738  9f888803  addli r17, r17, 448
00373c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003740  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
003744  9f078802  addli r15, r16, 320
003748  4a950802  vloads_mask16.mz vr10{mr1}, 0(r17)
00374c  9f080803  addli r17, r16, 384
003750  1f088803  addli r16, r16, 448
003754  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
003758  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00375c  c2930802  vload_mask16.mz vr7{mr1}, 0(r17)
003760  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003764  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
003768  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00376c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003770  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003774  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003778  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
00377c  93075505  setlt.u r15, r10, r21
003780  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003784  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003788  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00378c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003790  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003794  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
003798  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
00379c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0037a0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0037a4  bbdb07fe  bneq r15, zero, -268
0037a8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0037ac  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0037b0  9f010002  addli r3, zero, 256
0037b4  6af101c0  vsrl.p vr2, r3, vr0
0037b8  eaf111c0  vsrl.p vr3, r3, vr1
0037bc  9f010001  addli r3, zero, 128
0037c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037c8  6af101c0  vsrl.p vr2, r3, vr0
0037cc  eaf111c0  vsrl.p vr3, r3, vr1
0037d0  9f018000  addli r3, zero, 64
0037d4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037d8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037dc  6af101c0  vsrl.p vr2, r3, vr0
0037e0  eaf111c0  vsrl.p vr3, r3, vr1
0037e4  9f014000  addli r3, zero, 32
0037e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037f0  6af101c0  vsrl.p vr2, r3, vr0
0037f4  eaf111c0  vsrl.p vr3, r3, vr1
0037f8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037fc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003800  fa110040  vextracti.f r3, 0(vr0)
003804  7a950040  vextracti.f r10, 0(vr1)
003808  5b660000  j 816
00380c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003810  2bf5ffff  lui r10, 1048575
003814  9f010000  addli r3, zero, 0
003818  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00381c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003820  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003824  1b1505f8  ori r10, r10, 3968
003828  8b983310  add.s r17, r7, r3
00382c  0b983010  add.s r16, r1, r3
003830  1f050501  addli r10, r10, 128
003834  9f810104  addli r3, r3, 512
003838  9f870831  addli r15, r17, 6272
00383c  1f8c0830  addli r24, r17, 6144
003840  9f8c8831  addli r25, r17, 6336
003844  9f0d0818  addli r27, r16, 3072
003848  ca930702  vloads_mask16.mz vr7{mr1}, 0(r15)
00384c  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
003850  1f8c8830  addli r24, r17, 6208
003854  ca940c02  vloads_mask16.mz vr9{mr1}, 0(r25)
003858  9f078818  addli r15, r16, 3136
00385c  9f0c8819  addli r25, r16, 3264
003860  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
003864  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
003868  1f0c0819  addli r24, r16, 3200
00386c  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
003870  c2950702  vload_mask16.mz vr11{mr1}, 0(r15)
003874  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
003878  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
00387c  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
003880  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
003884  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
003888  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00388c  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
003890  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
003894  1f8c0832  addli r24, r17, 6400
003898  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
00389c  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
0038a0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0038a4  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
0038a8  9f0c081a  addli r25, r16, 3328
0038ac  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
0038b0  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
0038b4  9f07081b  addli r15, r16, 3456
0038b8  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0038bc  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0038c0  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
0038c4  1f8c8832  addli r24, r17, 6464
0038c8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0038cc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0038d0  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0038d4  1f8c0833  addli r24, r17, 6528
0038d8  9f888833  addli r17, r17, 6592
0038dc  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
0038e0  1f0c881a  addli r24, r16, 3392
0038e4  4a950802  vloads_mask16.mz vr10{mr1}, 0(r17)
0038e8  1f08881b  addli r16, r16, 3520
0038ec  93087505  setlt.u r17, r10, r23
0038f0  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
0038f4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0038f8  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0038fc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003900  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
003904  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003908  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00390c  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003910  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003914  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
003918  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00391c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003920  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003924  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003928  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00392c  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
003930  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
003934  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003938  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00393c  bbbb08fe  bneq r17, zero, -276
003940  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003944  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003948  9f010002  addli r3, zero, 256
00394c  abf7ffff  lui r15, 1048575
003950  1f0c0000  addli r24, zero, 0
003954  1b9807f8  ori r16, r15, 3968
003958  eaf111c0  vsrl.p vr3, r3, vr1
00395c  6af101c0  vsrl.p vr2, r3, vr0
003960  9f010001  addli r3, zero, 128
003964  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003968  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00396c  eaf111c0  vsrl.p vr3, r3, vr1
003970  6af101c0  vsrl.p vr2, r3, vr0
003974  9f018000  addli r3, zero, 64
003978  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00397c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003980  eaf111c0  vsrl.p vr3, r3, vr1
003984  6af101c0  vsrl.p vr2, r3, vr0
003988  9f014000  addli r3, zero, 32
00398c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003990  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003994  eaf111c0  vsrl.p vr3, r3, vr1
003998  6af101c0  vsrl.p vr2, r3, vr0
00399c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0039a0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0039a4  7a950040  vextracti.f r10, 0(vr1)
0039a8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0039ac  fa110040  vextracti.f r3, 0(vr0)
0039b0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0039b4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0039b8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0039bc  8b9d8311  add.s r27, r7, r24
0039c0  8b988011  add.s r17, r1, r24
0039c4  1f080801  addli r16, r16, 128
0039c8  1f0c0c04  addli r24, r24, 512
0039cc  9f870d18  addli r15, r27, 3072
0039d0  9f8c0d19  addli r25, r27, 3200
0039d4  42940802  vload_mask16.mz vr8{mr1}, 0(r17)
0039d8  1f8d8801  addli r26, r17, 192
0039dc  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
0039e0  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
0039e4  9f878d18  addli r15, r27, 3136
0039e8  9f8c8d19  addli r25, r27, 3264
0039ec  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
0039f0  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
0039f4  9f870801  addli r15, r17, 128
0039f8  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
0039fc  9f8c8800  addli r25, r17, 64
003a00  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
003a04  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
003a08  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
003a0c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
003a10  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
003a14  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
003a18  46908702  vstore_mask16.mz vr8{mr1}, 0(r15)
003a1c  9f870d1a  addli r15, r27, 3328
003a20  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003a24  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003a28  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003a2c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003a30  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
003a34  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
003a38  9f878d1a  addli r15, r27, 3392
003a3c  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
003a40  1f8d0802  addli r26, r17, 256
003a44  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
003a48  9f8c0803  addli r25, r17, 384
003a4c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003a50  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003a54  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
003a58  9f870d1b  addli r15, r27, 3456
003a5c  c2130d02  vload_mask16.mz vr7{mr1}, 0(r26)
003a60  9f8d8d1b  addli r27, r27, 3520
003a64  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003a68  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003a6c  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
003a70  9f878802  addli r15, r17, 320
003a74  4a950d02  vloads_mask16.mz vr10{mr1}, 0(r27)
003a78  9f888803  addli r17, r17, 448
003a7c  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
003a80  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003a84  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003a88  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003a8c  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
003a90  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003a94  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003a98  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
003a9c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003aa0  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
003aa4  93075805  setlt.u r15, r16, r21
003aa8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003aac  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003ab0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003ab4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003ab8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003abc  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
003ac0  46907802  vstore_mask16.mz vr7{mr1}, 0(r17)
003ac4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003ac8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003acc  bbcb07fe  bneq r15, zero, -272
003ad0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003ad4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003ad8  9f070002  addli r15, zero, 256
003adc  6af107c0  vsrl.p vr2, r15, vr0
003ae0  eaf117c0  vsrl.p vr3, r15, vr1
003ae4  9f070001  addli r15, zero, 128
003ae8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003aec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003af0  6af107c0  vsrl.p vr2, r15, vr0
003af4  eaf117c0  vsrl.p vr3, r15, vr1
003af8  9f078000  addli r15, zero, 64
003afc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003b00  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003b04  6af107c0  vsrl.p vr2, r15, vr0
003b08  eaf117c0  vsrl.p vr3, r15, vr1
003b0c  9f074000  addli r15, zero, 32
003b10  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003b14  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003b18  6af107c0  vsrl.p vr2, r15, vr0
003b1c  eaf117c0  vsrl.p vr3, r15, vr1
003b20  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003b24  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003b28  fa170040  vextracti.f r15, 0(vr0)
003b2c  7a980040  vextracti.f r16, 0(vr1)
003b30  8be1f110  add.f.rn r3, r3, r15
003b34  0b650511  add.f.rn r10, r10, r16
003b38  2b8d0000  lui r26, 8
003b3c  ab8d0000  lui r27, 8
003b40  9b372100  slli r15, r2, 2
003b44  634cffd3  loadli.w r24,  -5636(r30)
003b48  e30cffd3  loadli.w r25,  -5640(r30)
003b4c  1b01e107  andi r2, r2, 126
003b50  1f0d0d08  addli r26, r26, 1024
003b54  9f8d0d0c  addli r27, r27, 1536
003b58  1b312100  slli r2, r2, 2
003b5c  0b98a711  add.s r16, r15, r26
003b60  8b98b711  add.s r17, r15, r27
003b64  73603800  stores.w r3, 0(r16)
003b68  73e0a800  stores.w r10, 0(r17)
003b6c  1f088fd7  addli r16, r30, -5184
003b70  9f080000  addli r17, zero, 0
003b74  00a00300  mfence { lm, sm, gm }
003b78  e3018fd6  loadli.w r3,  -5312(r30)
003b7c  80a10104  csr_set csr3, r3
003b80  9b914700  ori r3, r15, 4
003b84  8b17a111  add.s r15, r2, r26
003b88  00d00100  sync_group
003b8c  0b11b111  add.s r2, r2, r27
003b90  0b95a111  add.s r10, r3, r26
003b94  efc70700  loads.w r15, 0(r15)
003b98  8b91b111  add.s r3, r3, r27
003b9c  6f410100  loads.w r2, 0(r2)
003ba0  6f450500  loads.w r10, 0(r10)
003ba4  efc10100  loads.w r3, 0(r3)
003ba8  0b65f510  add.f.rn r10, r10, r15
003bac  ab07003a  lui r15, 237568
003bb0  0be12110  add.f.rn r2, r3, r2
003bb4  8b61f520  mul.f.rn r3, r10, r15
003bb8  0b61f120  mul.f.rn r2, r2, r15
003bbc  0be53120  mul.f.rn r10, r3, r3
003bc0  8be10158  neg.f r3, r3
003bc4  0b61a118  sub.f.rn r2, r2, r10
003bc8  63053f00  loadli.w r10,  24(r30)
003bcc  0b61a110  add.f.rn r2, r2, r10
003bd0  1f058fd7  addli r10, r30, -5184
003bd4  0f010108  sqrt.f.rn r2, r2
003bd8  0f012918  div.f.rn r2, r18, r2
003bdc  9f078800  addli r15, r16, 64
003be0  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
003be4  9f884800  addli r17, r17, 32
003be8  1f080801  addli r16, r16, 128
003bec  c2900702  vload_mask16.mz vr1{mr1}, 0(r15)
003bf0  93875804  setlt.u r15, r17, r5
003bf4  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
003bf8  12911102  vadd.f.mz.rn vr2{mr1}, r3, vr1
003bfc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003c00  ea211a22  vor.u.mz vr3{mr1}, r20, vr1
003c04  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
003c08  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
003c0c  6eb201c2  vsrl.s.mz vr4{mr1}, vr3, vr0
003c10  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003c14  6a324402  vand.s.mz vr4{mr1}, r8, vr4
003c18  ea313402  vand.s.mz vr3{mr1}, r8, vr3
003c1c  16304002  vadd.s.mz vr0{mr1}, vr0, vr4
003c20  6a221722  vor.u.mz vr4{mr1}, r14, vr1
003c24  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
003c28  eaa11522  vor.u.mz vr3{mr1}, r11, vr1
003c2c  ea201b22  vor.u.mz vr1{mr1}, r22, vr1
003c30  12300302  vadd.s.mz vr0{mr1}, r6, vr0
003c34  12312302  vadd.s.mz vr2{mr1}, r6, vr2
003c38  eeb201c2  vsrl.s.mz vr5{mr1}, vr3, vr0
003c3c  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
003c40  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003c44  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
003c48  6a325202  vand.s.mz vr4{mr1}, r4, vr5
003c4c  6a300e02  vand.s.mz vr0{mr1}, r28, vr0
003c50  ea313202  vand.s.mz vr3{mr1}, r4, vr3
003c54  6a312e02  vand.s.mz vr2{mr1}, r28, vr2
003c58  6a300922  vor.s.mz vr0{mr1}, r18, vr0
003c5c  6a324922  vor.s.mz vr4{mr1}, r18, vr4
003c60  ea313922  vor.s.mz vr3{mr1}, r18, vr3
003c64  6a312922  vor.s.mz vr2{mr1}, r18, vr2
003c68  06100020  vfloat2fp16_l.rz vr0, vr0
003c6c  86d10120  vfloat2fp16_h.rz vr3, vr3
003c70  06500120  vfloat2fp16_h.rz vr0, vr2
003c74  86110220  vfloat2fp16_l.rz vr3, vr4
003c78  6a300602  vand.s.mz vr0{mr1}, r12, vr0
003c7c  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
003c80  eab01602  vand.s.mz vr1{mr1}, r13, vr1
003c84  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
003c88  46000502  vstore.mz vr0{mr1}, 0(r10)
003c8c  1f058500  addli r10, r10, 64
003c90  3bbd07fe  bneq r15, zero, -180
003c94  9f018fd5  addli r3, r30, -5440
003c98  eb570f00  load.d r[16:17], 0(r30)
003c9c  2b0100f0  lui r2, 983040
003ca0  6bdd0100  load.d r[27:28], 0(r3)
003ca4  e3010fd7  loadli.w r3,  -5248(r30)
003ca8  00a00000  mfence { lm }
003cac  8ba7a711  add.ul r[16:17], r[16:17], r[27:28]
003cb0  17912100  or r2, r3, r2
003cb4  7fb11700  s_lm2gm r2, r1, 0(r[16:17])
003cb8  1f010fd5  addli r2, r30, -5504
003cbc  00a00200  mfence { lm, gm }
003cc0  63481f00  loadli.w r16,  12(r30)
003cc4  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
003cc8  db21ffff  j -1780
003ccc  00360002  core_id r12
003cd0  63012f00  loadli.w r2,  16(r30)
003cd4  9b305600  slli r1, r12, 5
003cd8  cb211100  ble.s r2, r1, 104
003cdc  80530102  load_param_i r7, 2
003ce0  2bc40000  lui r8, 12
003ce4  1f110000  addli r2, zero, 1
003ce8  9f018fd7  addli r3, r30, -5184
003cec  1f038000  addli r6, zero, 64
003cf0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003cf4  9bb35300  slli r7, r7, 5
003cf8  1f0404f0  addli r8, r8, -2048
003cfc  b3840028  zext_int2long r[10:11], r1
003d00  ab0500f0  lui r11, 983040
003d04  97b42402  sll.d r[10:11], r[10:11], r2
003d08  9715b300  or r11, r6, r11
003d0c  8b249210  add.ul r[10:11], r[5:6], r[10:11]
003d10  ffa53400  l_gm2lm r11, r3, 0(r[10:11])
003d14  9bb42000  slli r9, r1, 2
003d18  8b901310  add.s r1, r7, r1
003d1c  00a00200  mfence { lm, gm }
003d20  c2800102  vload.mz vr1{mr1}, 0(r3)
003d24  8b948410  add.s r9, r9, r8
003d28  1f858400  addli r10, r9, 64
003d2c  66411080  vmerge_l.hf vr2, vr0, vr1
003d30  e64010a0  vmerge_h.hf vr1, vr0, vr1
003d34  4e902402  vstores_mask16.mz vr2{mr1}, 0(r9)
003d38  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
003d3c  3f8ff0fe  blt.s r1, r15, -64
003d40  abf00000  lui r1, 15
003d44  63411f00  loadli.w r2,  12(r30)
003d48  00a00300  mfence { lm, sm, gm }
003d4c  9b90f0ff  ori r1, r1, 4095
003d50  80a10004  csr_set csr3, r1
003d54  00d00100  sync_group
003d58  4b57c112  ble.s r2, r12, 9684
003d5c  e3002f00  loadli.w r1,  16(r30)
003d60  63412f00  loadli.w r2,  20(r30)
003d64  9f038fd7  addli r7, r30, -5184
003d68  1f150000  addli r10, zero, 1
003d6c  9f054000  addli r11, zero, 32
003d70  1f747000  addli r8, zero, 63
003d74  1f080002  addli r16, zero, 256
003d78  9f040001  addli r9, zero, 128
003d7c  ab09803f  lui r19, 260096
003d80  abeb7f00  lui r23, 2046
003d84  abec0700  lui r25, 126
003d88  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003d8c  8b912010  add.s r3, r1, r2
003d90  33820008  fix2float.rn r4, r1
003d94  1bb31000  slli r6, r1, 1
003d98  9bb22000  slli r5, r1, 2
003d9c  9f804000  addli r1, r1, 32
003da0  9b382100  slli r17, r2, 2
003da4  e74f1fd2  storeli.w r1, -5636(r30)
003da8  8b907210  add.s r1, r5, r7
003dac  9ff1f1ff  addli r3, r3, -1
003db0  67004fd4  storeli.w r4, -5632(r30)
003db4  0b922130  div.s r4, r3, r2
003db8  9f8080ff  addli r1, r1, -64
003dbc  8b117310  add.s r3, r6, r7
003dc0  e70f1fd2  storeli.w r1, -5640(r30)
003dc4  9f8081ff  addli r1, r3, -64
003dc8  674f1fd2  storeli.w r1, -5644(r30)
003dcc  abf0ffff  lui r1, 1048575
003dd0  00a00000  mfence { lm }
003dd4  67046fd4  storeli.w r6, -5568(r30)
003dd8  9b90f0ff  ori r1, r1, 4095
003ddc  67041fd6  storeli.w r1, -5312(r30)
003de0  ab700000  lui r1, 7
003de4  9b9af0ff  ori r21, r1, 4095
003de8  ab00ff03  lui r1, 16368
003dec  1b9df03f  ori r26, r1, 1023
003df0  abf000fc  lui r1, 1032207
003df4  1b9e00c0  ori r28, r1, 3072
003df8  9f000fd7  addli r1, r30, -5248
003dfc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
003e00  db090000  j 76
003e04  9f010fd5  addli r3, r30, -5504
003e08  eb500f00  load.d r[2:3], 0(r30)
003e0c  9f038fd7  addli r7, r30, -5184
003e10  1f747000  addli r8, zero, 63
003e14  ebd20100  load.d r[6:7], 0(r3)
003e18  00a00000  mfence { lm }
003e1c  ab0100f0  lui r3, 983040
003e20  63068fd5  loadli.w r12,  -5440(r30)
003e24  8ba05010  add.ul r[2:3], r[2:3], r[6:7]
003e28  63038fd4  loadli.w r6,  -5568(r30)
003e2c  80520102  load_param_i r5, 2
003e30  0b96c210  add.s r12, r5, r12
003e34  97113300  or r3, r6, r3
003e38  ffb17000  s_lm2gm r3, r7, 0(r[2:3])
003e3c  00a00200  mfence { lm, gm }
003e40  e3401f00  loadli.w r1,  12(r30)
003e44  3f201600  blt.s r12, r1, 8
003e48  db9c0400  j 9444
003e4c  e3001f00  loadli.w r1,  8(r30)
003e50  9f027fd6  addli r5, r30, -5320
003e54  9f860800  addli r13, r17, 0
003e58  8b101610  add.s r1, r12, r1
003e5c  8b90f020  mul.s r1, r1, r15
003e60  b3900028  sext_int2long r[2:3], r1
003e64  97b8a002  sll.d r[18:19], r[2:3], r10
003e68  6bd10200  load.d r[3:4], 0(r5)
003e6c  ab0000f0  lui r1, 983040
003e70  9f020fd5  addli r5, r30, -5504
003e74  97101300  or r1, r6, r1
003e78  73b01201  store.d r[18:19], 0(r5)
003e7c  0b211111  add.ul r[3:4], r[3:4], r[18:19]
003e80  ff207100  l_gm2lm r1, r7, 0(r[3:4])
003e84  00a00200  mfence { lm, gm }
003e88  bff0b700  blt.s r15, r11, 60
003e8c  e340efd3  loadli.w r1,  -5644(r30)
003e90  6301ffd3  loadli.w r2,  -5640(r30)
003e94  e341ffd3  loadli.w r3,  -5636(r30)
003e98  c2800002  vload.mz vr1{mr1}, 0(r1)
003e9c  9f81c1ff  addli r3, r3, -32
003ea0  1f0381ff  addli r6, r2, -64
003ea4  9f8080ff  addli r1, r1, -64
003ea8  93023404  setlt.u r5, r8, r3
003eac  664110a0  vmerge_h.hf vr2, vr0, vr1
003eb0  e6401080  vmerge_l.hf vr1, vr0, vr1
003eb4  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
003eb8  1f0101ff  addli r2, r2, -128
003ebc  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
003ec0  3bef02fe  bneq r5, zero, -40
003ec4  670ccfd4  storeli.w r12, -5440(r30)
003ec8  00a00000  mfence { lm }
003ecc  bf77a200  blt.s r4, r10, 508
003ed0  9f010000  addli r3, zero, 0
003ed4  9f020000  addli r5, zero, 0
003ed8  1f010000  addli r2, zero, 0
003edc  9f880600  addli r17, r13, 0
003ee0  1f098000  addli r18, zero, 64
003ee4  db0d0000  j 108
003ee8  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
003eec  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003ef0  1f110100  addli r2, r2, 1
003ef4  6a7108c0  vsrl.p vr2, r16, vr0
003ef8  ea7118c0  vsrl.p vr3, r16, vr1
003efc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f00  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f04  6af104c0  vsrl.p vr2, r9, vr0
003f08  eaf114c0  vsrl.p vr3, r9, vr1
003f0c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f10  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f14  6a7109c0  vsrl.p vr2, r18, vr0
003f18  ea7119c0  vsrl.p vr3, r18, vr1
003f1c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f20  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f24  6af105c0  vsrl.p vr2, r11, vr0
003f28  eaf115c0  vsrl.p vr3, r11, vr1
003f2c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f30  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f34  fa100040  vextracti.f r1, 0(vr0)
003f38  7a930040  vextracti.f r6, 0(vr1)
003f3c  8be11110  add.f.rn r3, r3, r1
003f40  9f000fd7  addli r1, r30, -5248
003f44  8be26210  add.f.rn r5, r5, r6
003f48  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
003f4c  37264100  beq r2, r4, 392
003f50  9f000100  addli r1, r2, 0
003f54  37400701  beq r14, r16, 16
003f58  e3008fd6  loadli.w r1,  -5312(r30)
003f5c  97201100  xor r1, r2, r1
003f60  8b101210  add.s r1, r4, r1
003f64  0b93e020  mul.s r6, r1, r14
003f68  12320002  vadd.s.mz vr4{mr1}, zero, vr0
003f6c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
003f70  12310002  vadd.s.mz vr2{mr1}, zero, vr0
003f74  92300002  vadd.s.mz vr1{mr1}, zero, vr0
003f78  0b936718  sub.s r6, r15, r6
003f7c  8b13e340  min.s r7, r6, r14
003f80  bfada3fe  blt.s r7, r10, -152
003f84  9f060fd7  addli r13, r30, -5248
003f88  2bc60000  lui r12, 12
003f8c  0b931820  mul.s r6, r17, r1
003f90  1f040000  addli r8, zero, 0
003f94  9f008fd7  addli r1, r30, -5184
003f98  42920602  vload_mask16.mz vr4{mr1}, 0(r13)
003f9c  1f0606f0  addli r12, r12, -2048
003fa0  92304002  vadd.s.mz vr1{mr1}, zero, vr4
003fa4  12314002  vadd.s.mz vr2{mr1}, zero, vr4
003fa8  92314002  vadd.s.mz vr3{mr1}, zero, vr4
003fac  0b1a6610  add.s r20, r12, r6
003fb0  8b966010  add.s r13, r1, r6
003fb4  1f0b8a00  addli r22, r20, 64
003fb8  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
003fbc  1f0c8a01  addli r24, r20, 192
003fc0  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
003fc4  9f8d8601  addli r27, r13, 192
003fc8  4a130b02  vloads_mask16.mz vr6{mr1}, 0(r22)
003fcc  1f0b0a01  addli r22, r20, 128
003fd0  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
003fd4  1f8c0601  addli r24, r13, 128
003fd8  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
003fdc  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
003fe0  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
003fe4  1f8b8600  addli r22, r13, 64
003fe8  42150b02  vload_mask16.mz vr10{mr1}, 0(r22)
003fec  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
003ff0  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
003ff4  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
003ff8  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
003ffc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004000  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004004  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
004008  46106b02  vstore_mask16.mz vr6{mr1}, 0(r22)
00400c  1f0b8400  addli r22, r8, 64
004010  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
004014  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004018  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00401c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
004020  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004024  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
004028  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
00402c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
004030  cbea63ff  ble.s r7, r22, -328
004034  1f0c0a02  addli r24, r20, 256
004038  9f0d8a02  addli r27, r20, 320
00403c  1f8b0602  addli r22, r13, 256
004040  1f040401  addli r8, r8, 128
004044  1f060604  addli r12, r12, 512
004048  9f800004  addli r1, r1, 512
00404c  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
004050  1f0c0a03  addli r24, r20, 384
004054  1f0a8a03  addli r20, r20, 448
004058  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
00405c  42130b02  vload_mask16.mz vr6{mr1}, 0(r22)
004060  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
004064  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
004068  1f8a0603  addli r20, r13, 384
00406c  1f8c8602  addli r24, r13, 320
004070  9f868603  addli r13, r13, 448
004074  42150a02  vload_mask16.mz vr10{mr1}, 0(r20)
004078  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
00407c  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
004080  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
004084  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004088  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
00408c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004090  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004094  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
004098  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
00409c  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0040a0  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0040a4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0040a8  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
0040ac  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0040b0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0040b4  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0040b8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0040bc  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
0040c0  bf3b74fe  blt.s r8, r7, -276
0040c4  dbc4ffff  j -476
0040c8  9f020000  addli r5, zero, 0
0040cc  9f010000  addli r3, zero, 0
0040d0  9f880600  addli r17, r13, 0
0040d4  1f042000  addli r8, zero, 16
0040d8  1f360000  addli r12, zero, 3
0040dc  9f561000  addli r13, zero, 13
0040e0  1f2a1000  addli r20, zero, 10
0040e4  00a00000  mfence { lm }
0040e8  3ff4a7fe  blt.s r15, r10, -740
0040ec  e3000fd4  loadli.w r1,  -5632(r30)
0040f0  1f030000  addli r6, zero, 0
0040f4  0f811118  div.f.rn r2, r3, r1
0040f8  8f801218  div.f.rn r1, r5, r1
0040fc  9f028fd7  addli r5, r30, -5184
004100  8b612120  mul.f.rn r3, r2, r2
004104  0b610158  neg.f r2, r2
004108  8be03018  sub.f.rn r1, r1, r3
00410c  e3013f00  loadli.w r3,  24(r30)
004110  8be03010  add.f.rn r1, r1, r3
004114  9f018fd7  addli r3, r30, -5184
004118  8f800008  sqrt.f.rn r1, r1
00411c  8f801918  div.f.rn r1, r19, r1
004120  9f838200  addli r7, r5, 64
004124  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
004128  1f034300  addli r6, r6, 32
00412c  9f820201  addli r5, r5, 128
004130  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
004134  92111102  vadd.f.mz.rn vr3{mr1}, r2, vr1
004138  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00413c  6a221422  vor.u.mz vr4{mr1}, r8, vr1
004140  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
004144  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
004148  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
00414c  ee3232c2  vsrl.s.mz vr5{mr1}, vr4, vr3
004150  6e3222c2  vsrl.s.mz vr4{mr1}, vr4, vr2
004154  ea325502  vand.s.mz vr5{mr1}, r10, vr5
004158  6a324502  vand.s.mz vr4{mr1}, r10, vr4
00415c  96b15102  vadd.s.mz vr3{mr1}, vr3, vr5
004160  ea221622  vor.u.mz vr5{mr1}, r12, vr1
004164  16314102  vadd.s.mz vr2{mr1}, vr2, vr4
004168  6aa21622  vor.u.mz vr4{mr1}, r13, vr1
00416c  ea201a22  vor.u.mz vr1{mr1}, r20, vr1
004170  92b13a02  vadd.s.mz vr3{mr1}, r21, vr3
004174  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
004178  6e3332c2  vsrl.s.mz vr6{mr1}, vr4, vr3
00417c  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
004180  6e3222c2  vsrl.s.mz vr4{mr1}, vr4, vr2
004184  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
004188  eab26c02  vand.s.mz vr5{mr1}, r25, vr6
00418c  eab13b02  vand.s.mz vr3{mr1}, r23, vr3
004190  6ab24c02  vand.s.mz vr4{mr1}, r25, vr4
004194  6ab12b02  vand.s.mz vr2{mr1}, r23, vr2
004198  eab25922  vor.s.mz vr5{mr1}, r19, vr5
00419c  eab13922  vor.s.mz vr3{mr1}, r19, vr3
0041a0  6ab24922  vor.s.mz vr4{mr1}, r19, vr4
0041a4  6ab12922  vor.s.mz vr2{mr1}, r19, vr2
0041a8  06520220  vfloat2fp16_h.rz vr4, vr4
0041ac  06510120  vfloat2fp16_h.rz vr2, vr2
0041b0  06920220  vfloat2fp16_l.rz vr4, vr5
0041b4  06910120  vfloat2fp16_l.rz vr2, vr3
0041b8  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
0041bc  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
0041c0  ea301e02  vand.s.mz vr1{mr1}, r28, vr1
0041c4  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
0041c8  46801102  vstore.mz vr1{mr1}, 0(r3)
0041cc  9f818100  addli r3, r3, 64
0041d0  3f4df3fe  blt.s r6, r15, -176
0041d4  5b86ffff  j -976
0041d8  ab330100  lui r7, 19
0041dc  803a0002  core_id r21
0041e0  00510102  load_param_i r2, 2
0041e4  9f100000  addli r1, zero, 1
0041e8  1f038fd7  addli r6, r30, -5184
0041ec  1f048000  addli r8, zero, 64
0041f0  1f050010  addli r10, zero, 2048
0041f4  9bb15a00  slli r3, r21, 5
0041f8  9b345100  slli r9, r2, 5
0041fc  9f8303f8  addli r7, r7, -1024
004200  b3850128  zext_int2long r[12:13], r3
004204  ab0600f0  lui r13, 983040
004208  97b51502  sll.d r[12:13], r[12:13], r1
00420c  9716d400  or r13, r8, r13
004210  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
004214  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
004218  9bb52100  slli r11, r3, 2
00421c  8b913410  add.s r3, r9, r3
004220  00a00200  mfence { lm, gm }
004224  42000302  vload.mz vr0{mr1}, 0(r6)
004228  1386a104  setlt.u r12, r3, r10
00422c  8b957510  add.s r11, r11, r7
004230  9f868500  addli r13, r11, 64
004234  86300000  vfp162float_l.rn vr1, vr0
004238  06700000  vfp162float_h.rn vr0, vr0
00423c  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
004240  4e900602  vstores_mask16.mz vr0{mr1}, 0(r13)
004244  bb7e06fe  bneq r12, zero, -68
004248  abf00000  lui r1, 15
00424c  00a00300  mfence { lm, sm, gm }
004250  9b8d1a00  andi r27, r21, 1
004254  1f020006  addli r4, zero, 768
004258  9b91f0ff  ori r3, r1, 4095
00425c  80a10104  csr_set csr3, r3
004260  9f010006  addli r3, zero, 768
004264  00d00100  sync_group
004268  37a00d00  beq r27, zero, 8
00426c  1f02000a  addli r4, zero, 1280
004270  e3421f00  loadli.w r5,  12(r30)
004274  1f1b0000  addli r22, zero, 1
004278  bfd26211  blt.s r5, r22, 8372
00427c  8b903d20  mul.s r1, r27, r3
004280  9b451100  srli r11, r2, 1
004284  1b312200  slli r2, r4, 2
004288  1f058fd7  addli r10, r30, -5184
00428c  9b361200  slli r13, r4, 1
004290  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004294  ab5c0100  lui r25, 21
004298  2b590100  lui r18, 21
00429c  1f040000  addli r8, zero, 0
0042a0  1bc61a00  srli r12, r21, 1
0042a4  9f787000  addli r17, zero, 63
0042a8  1f0a0005  addli r20, zero, 640
0042ac  9f0b8000  addli r23, zero, 64
0042b0  1f0c4000  addli r24, zero, 32
0042b4  1f0e0003  addli r28, zero, 384
0042b8  67081fd6  storeli.w r1, -5248(r30)
0042bc  9f004200  addli r1, r4, 32
0042c0  0b11a110  add.s r2, r2, r10
0042c4  8b91a610  add.s r3, r13, r10
0042c8  9f8c0cf8  addli r25, r25, -1024
0042cc  1f0909fc  addli r18, r18, -512
0042d0  67041fd6  storeli.w r1, -5312(r30)
0042d4  9f0081ff  addli r1, r2, -64
0042d8  1f018fd4  addli r2, r30, -5568
0042dc  670c1fd4  storeli.w r1, -5440(r30)
0042e0  9f8081ff  addli r1, r3, -64
0042e4  67081fd4  storeli.w r1, -5504(r30)
0042e8  abf0ffff  lui r1, 1048575
0042ec  00a00000  mfence { lm }
0042f0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0042f4  2bf10000  lui r2, 15
0042f8  9b9000f8  ori r1, r1, 3968
0042fc  1b1df1ff  ori r26, r2, 4095
004300  67001fd4  storeli.w r1, -5632(r30)
004304  db030000  j 28
004308  00a00300  mfence { lm, sm, gm }
00430c  80210d04  csr_set csr3, r26
004310  00d00100  sync_group
004314  0b14b410  add.s r8, r8, r11
004318  3f200401  blt.s r8, r16, 8
00431c  5b18f9ff  j -14144
004320  0b11c410  add.s r2, r8, r12
004324  cb1f28fe  ble.s r16, r2, -28
004328  e3001f00  loadli.w r1,  8(r30)
00432c  8b01b430  div.u r3, r8, r11
004330  0b111110  add.s r2, r2, r1
004334  e3000fd7  loadli.w r1,  -5248(r30)
004338  1b31b100  slli r2, r2, 11
00433c  9bb16100  slli r3, r3, 6
004340  17111100  or r2, r2, r1
004344  9f007fd6  addli r1, r30, -5320
004348  9b810104  andi r3, r3, 64
00434c  b3120128  sext_int2long r[6:7], r2
004350  6bd70000  load.d r[15:16], 0(r1)
004354  2b0100f0  lui r2, 983040
004358  97b26203  sll.d r[6:7], r[6:7], r22
00435c  17912600  or r2, r13, r2
004360  0b275710  add.ul r[15:16], r[15:16], r[6:7]
004364  7f21a700  l_gm2lm r2, r10, 0(r[15:16])
004368  17915101  or r2, r3, r21
00436c  00a00200  mfence { lm, gm }
004370  e3010fd5  loadli.w r3,  -5504(r30)
004374  e3048fd5  loadli.w r9,  -5440(r30)
004378  63078fd6  loadli.w r14,  -5312(r30)
00437c  c2800102  vload.mz vr1{mr1}, 0(r3)
004380  1f07c7ff  addli r14, r14, -32
004384  9f8984ff  addli r19, r9, -64
004388  9f8181ff  addli r3, r3, -64
00438c  9387e804  setlt.u r15, r17, r14
004390  06f10000  vfp162float_h.rn vr2, vr1
004394  86b00000  vfp162float_l.rn vr1, vr1
004398  46902402  vstore_mask16.mz vr2{mr1}, 0(r9)
00439c  9f8404ff  addli r9, r9, -128
0043a0  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
0043a4  3bef07fe  bneq r15, zero, -40
0043a8  00a00000  mfence { lm }
0043ac  3bb60d00  bneq r27, zero, 396
0043b0  9f008fd4  addli r1, r30, -5568
0043b4  e3040fd4  loadli.w r9,  -5632(r30)
0043b8  9f010000  addli r3, zero, 0
0043bc  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0043c0  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0043c4  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0043c8  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0043cc  8b977110  add.s r15, r3, r7
0043d0  0b173510  add.s r14, r10, r3
0043d4  9f840401  addli r9, r9, 128
0043d8  9f810104  addli r3, r3, 512
0043dc  9f800701  addli r1, r15, 128
0043e0  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
0043e4  1f888700  addli r16, r15, 64
0043e8  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
0043ec  9f098701  addli r19, r14, 192
0043f0  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
0043f4  9f808701  addli r1, r15, 192
0043f8  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
0043fc  1f088700  addli r16, r14, 64
004400  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
004404  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
004408  9f000701  addli r1, r14, 128
00440c  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
004410  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
004414  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004418  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00441c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004420  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004424  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004428  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
00442c  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
004430  9f800702  addli r1, r15, 256
004434  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004438  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00443c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004440  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
004444  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
004448  9f808702  addli r1, r15, 320
00444c  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
004450  9f090702  addli r19, r14, 256
004454  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004458  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00445c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004460  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
004464  9f800703  addli r1, r15, 384
004468  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
00446c  9f878703  addli r15, r15, 448
004470  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004474  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
004478  9f008702  addli r1, r14, 320
00447c  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
004480  9f070703  addli r15, r14, 384
004484  1f078703  addli r14, r14, 448
004488  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00448c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004490  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
004494  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004498  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
00449c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0044a0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0044a4  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
0044a8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0044ac  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0044b0  93804405  setlt.u r1, r9, r20
0044b4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0044b8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0044bc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0044c0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0044c4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0044c8  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
0044cc  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
0044d0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0044d4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0044d8  bbdb00fe  bneq r1, zero, -268
0044dc  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0044e0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0044e4  9f000002  addli r1, zero, 256
0044e8  6af100c0  vsrl.p vr2, r1, vr0
0044ec  eaf110c0  vsrl.p vr3, r1, vr1
0044f0  9f000001  addli r1, zero, 128
0044f4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0044f8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0044fc  6af100c0  vsrl.p vr2, r1, vr0
004500  eaf110c0  vsrl.p vr3, r1, vr1
004504  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004508  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00450c  6af10bc0  vsrl.p vr2, r23, vr0
004510  eaf11bc0  vsrl.p vr3, r23, vr1
004514  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004518  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00451c  6a710cc0  vsrl.p vr2, r24, vr0
004520  ea711cc0  vsrl.p vr3, r24, vr1
004524  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004528  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00452c  fa110040  vextracti.f r3, 0(vr0)
004530  fa940040  vextracti.f r9, 0(vr1)
004534  5b660000  j 816
004538  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00453c  abf0ffff  lui r1, 1048575
004540  1f8b0d00  addli r22, r27, 0
004544  9f010000  addli r3, zero, 0
004548  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00454c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004550  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004554  9b9400f8  ori r9, r1, 3968
004558  0b973310  add.s r14, r7, r3
00455c  8b193510  add.s r19, r10, r3
004560  9f840401  addli r9, r9, 128
004564  9f810104  addli r3, r3, 512
004568  1f080731  addli r16, r14, 6272
00456c  9f070730  addli r15, r14, 6144
004570  9f008731  addli r1, r14, 6336
004574  9f8d0918  addli r27, r19, 3072
004578  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
00457c  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
004580  9f078730  addli r15, r14, 6208
004584  ca940002  vloads_mask16.mz vr9{mr1}, 0(r1)
004588  9f808918  addli r1, r19, 3136
00458c  1f888919  addli r16, r19, 3264
004590  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
004594  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
004598  9f870919  addli r15, r19, 3200
00459c  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
0045a0  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0045a4  42950702  vload_mask16.mz vr10{mr1}, 0(r15)
0045a8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0045ac  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0045b0  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0045b4  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0045b8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0045bc  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0045c0  46907702  vstore_mask16.mz vr7{mr1}, 0(r15)
0045c4  9f070732  addli r15, r14, 6400
0045c8  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0045cc  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
0045d0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0045d4  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
0045d8  1f88091a  addli r16, r19, 3328
0045dc  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
0045e0  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0045e4  9f80091b  addli r1, r19, 3456
0045e8  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0045ec  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0045f0  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
0045f4  9f078732  addli r15, r14, 6464
0045f8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0045fc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004600  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
004604  9f070733  addli r15, r14, 6528
004608  1f078733  addli r14, r14, 6592
00460c  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
004610  9f87891a  addli r15, r19, 3392
004614  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
004618  1f87891b  addli r14, r19, 3520
00461c  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
004620  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004624  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
004628  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00462c  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
004630  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004634  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004638  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
00463c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004640  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
004644  9387c405  setlt.u r15, r9, r28
004648  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00464c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004650  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004654  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004658  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00465c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
004660  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
004664  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004668  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00466c  bbbb07fe  bneq r15, zero, -276
004670  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004674  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004678  9f000002  addli r1, zero, 256
00467c  9f040000  addli r9, zero, 0
004680  eaf110c0  vsrl.p vr3, r1, vr1
004684  6af100c0  vsrl.p vr2, r1, vr0
004688  9f000001  addli r1, zero, 128
00468c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004690  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004694  eaf110c0  vsrl.p vr3, r1, vr1
004698  6af100c0  vsrl.p vr2, r1, vr0
00469c  abf0ffff  lui r1, 1048575
0046a0  9b9d00f8  ori r27, r1, 3968
0046a4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0046a8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0046ac  eaf11bc0  vsrl.p vr3, r23, vr1
0046b0  6af10bc0  vsrl.p vr2, r23, vr0
0046b4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0046b8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0046bc  ea711cc0  vsrl.p vr3, r24, vr1
0046c0  6a710cc0  vsrl.p vr2, r24, vr0
0046c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0046c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0046cc  fa990040  vextracti.f r19, 0(vr1)
0046d0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0046d4  fa110040  vextracti.f r3, 0(vr0)
0046d8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0046dc  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0046e0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0046e4  8b979310  add.s r15, r7, r9
0046e8  0b179510  add.s r14, r10, r9
0046ec  9f8d0d01  addli r27, r27, 128
0046f0  9f840404  addli r9, r9, 512
0046f4  9f800718  addli r1, r15, 3072
0046f8  1f880719  addli r16, r15, 3200
0046fc  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
004700  9f0a8701  addli r21, r14, 192
004704  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
004708  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
00470c  9f808718  addli r1, r15, 3136
004710  1f888719  addli r16, r15, 3264
004714  c2950a02  vload_mask16.mz vr11{mr1}, 0(r21)
004718  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
00471c  9f000701  addli r1, r14, 128
004720  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
004724  1f088700  addli r16, r14, 64
004728  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00472c  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
004730  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004734  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004738  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00473c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004740  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
004744  9f80071a  addli r1, r15, 3328
004748  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00474c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004750  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004754  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004758  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
00475c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
004760  9f80871a  addli r1, r15, 3392
004764  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
004768  9f0a0702  addli r21, r14, 256
00476c  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
004770  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004774  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004778  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
00477c  9f80071b  addli r1, r15, 3456
004780  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
004784  9f87871b  addli r15, r15, 3520
004788  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00478c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004790  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
004794  9f008702  addli r1, r14, 320
004798  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
00479c  9f070703  addli r15, r14, 384
0047a0  1f078703  addli r14, r14, 448
0047a4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0047a8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0047ac  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0047b0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0047b4  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
0047b8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0047bc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0047c0  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
0047c4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0047c8  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0047cc  93804d05  setlt.u r1, r27, r20
0047d0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0047d4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0047d8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0047dc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0047e0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0047e4  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
0047e8  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
0047ec  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0047f0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0047f4  bbcb00fe  bneq r1, zero, -272
0047f8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0047fc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004800  9f000002  addli r1, zero, 256
004804  9f0d0b00  addli r27, r22, 0
004808  803a0002  core_id r21
00480c  1f1b0000  addli r22, zero, 1
004810  6af100c0  vsrl.p vr2, r1, vr0
004814  eaf110c0  vsrl.p vr3, r1, vr1
004818  9f000001  addli r1, zero, 128
00481c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004820  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004824  6af100c0  vsrl.p vr2, r1, vr0
004828  eaf110c0  vsrl.p vr3, r1, vr1
00482c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004830  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004834  6af10bc0  vsrl.p vr2, r23, vr0
004838  eaf11bc0  vsrl.p vr3, r23, vr1
00483c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004840  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004844  6a710cc0  vsrl.p vr2, r24, vr0
004848  ea711cc0  vsrl.p vr3, r24, vr1
00484c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004850  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004854  fa940040  vextracti.f r9, 0(vr1)
004858  fa100040  vextracti.f r1, 0(vr0)
00485c  8be11110  add.f.rn r3, r3, r1
004860  8be49910  add.f.rn r9, r19, r9
004864  9b302100  slli r1, r2, 2
004868  1b01e107  andi r2, r2, 126
00486c  0b979011  add.s r14, r1, r25
004870  8b972011  add.s r15, r1, r18
004874  9b904000  ori r1, r1, 4
004878  1b312100  slli r2, r2, 2
00487c  73603700  stores.w r3, 0(r14)
004880  73e09700  stores.w r9, 0(r15)
004884  8b919011  add.s r3, r1, r25
004888  8b149111  add.s r9, r2, r25
00488c  8b902011  add.s r1, r1, r18
004890  0b112111  add.s r2, r2, r18
004894  1f078fd7  addli r14, r30, -5184
004898  9f070000  addli r15, zero, 0
00489c  00a00300  mfence { lm, sm, gm }
0048a0  80210d04  csr_set csr3, r26
0048a4  00d00100  sync_group
0048a8  63481f00  loadli.w r16,  12(r30)
0048ac  efc10100  loads.w r3, 0(r3)
0048b0  efc40400  loads.w r9, 0(r9)
0048b4  efc00000  loads.w r1, 0(r1)
0048b8  6f410100  loads.w r2, 0(r2)
0048bc  8be19110  add.f.rn r3, r3, r9
0048c0  8be02010  add.f.rn r1, r1, r2
0048c4  2b01003a  lui r2, 237568
0048c8  9f048fd7  addli r9, r30, -5184
0048cc  8be12120  mul.f.rn r3, r3, r2
0048d0  8be02020  mul.f.rn r1, r1, r2
0048d4  0be13120  mul.f.rn r2, r3, r3
0048d8  8be10158  neg.f r3, r3
0048dc  8be02018  sub.f.rn r1, r1, r2
0048e0  63013f00  loadli.w r2,  24(r30)
0048e4  8be02010  add.f.rn r1, r1, r2
0048e8  2b01803f  lui r2, 260096
0048ec  8f800008  sqrt.f.rn r1, r1
0048f0  0f011118  div.f.rn r2, r2, r1
0048f4  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
0048f8  9f008700  addli r1, r14, 64
0048fc  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
004900  9f874700  addli r15, r15, 32
004904  1f070701  addli r14, r14, 128
004908  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00490c  93804704  setlt.u r1, r15, r4
004910  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
004914  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
004918  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
00491c  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
004920  06110000  vfloat2fp16_l.rn vr2, vr0
004924  06d10000  vfloat2fp16_h.rn vr2, vr1
004928  46802402  vstore.mz vr2{mr1}, 0(r9)
00492c  9f848400  addli r9, r9, 64
004930  3b9f00fe  bneq r1, zero, -60
004934  6b510f00  load.d r[3:4], 0(r30)
004938  ab0000f0  lui r1, 983040
00493c  00a00000  mfence { lm }
004940  97901600  or r1, r13, r1
004944  0b215110  add.ul r[3:4], r[3:4], r[6:7]
004948  ff30a100  s_lm2gm r1, r10, 0(r[3:4])
00494c  00a00200  mfence { lm, gm }
004950  db38ffff  j -1596
004954  80300002  core_id r1
004958  e3012f00  loadli.w r3,  16(r30)
00495c  1bb15000  slli r2, r1, 5
004960  cb912100  ble.s r3, r2, 100
004964  00540102  load_param_i r8, 2
004968  ab840100  lui r9, 24
00496c  9f110000  addli r3, zero, 1
004970  1f038fd7  addli r6, r30, -5184
004974  9f038000  addli r7, zero, 64
004978  1b345400  slli r8, r8, 5
00497c  9f840400  addli r9, r9, 0
004980  33050128  zext_int2long r[11:12], r2
004984  2b0600f0  lui r12, 983040
004988  17353502  sll.d r[11:12], r[11:12], r3
00498c  1796c300  or r12, r7, r12
004990  0b25a210  add.ul r[11:12], r[5:6], r[11:12]
004994  7f266500  l_gm2lm r12, r6, 0(r[11:12])
004998  1b352100  slli r10, r2, 2
00499c  0b112410  add.s r2, r8, r2
0049a0  00a00200  mfence { lm, gm }
0049a4  42000302  vload.mz vr0{mr1}, 0(r6)
0049a8  0b159510  add.s r10, r10, r9
0049ac  9f058500  addli r11, r10, 64
0049b0  86300000  vfp162float_l.rn vr1, vr0
0049b4  06700000  vfp162float_h.rn vr0, vr0
0049b8  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
0049bc  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
0049c0  3f0ff1fe  blt.s r2, r15, -64
0049c4  2bf10000  lui r2, 15
0049c8  e3411f00  loadli.w r3,  12(r30)
0049cc  00a00300  mfence { lm, sm, gm }
0049d0  1b11f1ff  ori r2, r2, 4095
0049d4  80210104  csr_set csr3, r2
0049d8  00d00100  sync_group
0049dc  4bc5110c  ble.s r3, r1, 6480
0049e0  63032f00  loadli.w r6,  16(r30)
0049e4  e3432f00  loadli.w r7,  20(r30)
0049e8  9f0b8fd7  addli r23, r30, -5184
0049ec  1f150000  addli r10, zero, 1
0049f0  9f054000  addli r11, zero, 32
0049f4  1f767000  addli r12, zero, 63
0049f8  1f080002  addli r16, zero, 256
0049fc  9f080001  addli r17, zero, 128
004a00  1f098000  addli r18, zero, 64
004a04  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004a08  0b127310  add.s r4, r6, r7
004a0c  33010308  fix2float.rn r2, r6
004a10  1b342300  slli r8, r6, 2
004a14  9b321300  slli r5, r6, 1
004a18  9bb42300  slli r9, r7, 2
004a1c  1f72f2ff  addli r4, r4, -1
004a20  670c2fd4  storeli.w r2, -5440(r30)
004a24  1f014300  addli r2, r6, 32
004a28  0b137411  add.s r6, r8, r23
004a2c  0b947211  add.s r8, r5, r23
004a30  67082fd4  storeli.w r2, -5504(r30)
004a34  1f0183ff  addli r2, r6, -64
004a38  2bf3ffff  lui r6, 1048575
004a3c  0b127230  div.s r4, r4, r7
004a40  67042fd4  storeli.w r2, -5568(r30)
004a44  1f0184ff  addli r2, r8, -64
004a48  9b16f3ff  ori r13, r6, 4095
004a4c  2b830100  lui r6, 24
004a50  67002fd4  storeli.w r2, -5632(r30)
004a54  1f010fd7  addli r2, r30, -5248
004a58  1f030300  addli r6, r6, 0
004a5c  00a00000  mfence { lm }
004a60  67045fd6  storeli.w r5, -5312(r30)
004a64  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004a68  db070000  j 60
004a6c  6b510f00  load.d r[3:4], 0(r30)
004a70  00a00000  mfence { lm }
004a74  ab0900f0  lui r19, 983040
004a78  9f0b8fd7  addli r23, r30, -5184
004a7c  005a0102  load_param_i r20, 2
004a80  e3028fd6  loadli.w r5,  -5312(r30)
004a84  8b101a10  add.s r1, r20, r1
004a88  8b235111  add.ul r[8:9], r[3:4], r[22:23]
004a8c  97993201  or r19, r5, r19
004a90  ffb97301  s_lm2gm r19, r23, 0(r[8:9])
004a94  00a00200  mfence { lm, gm }
004a98  63411f00  loadli.w r2,  12(r30)
004a9c  3fa02000  blt.s r1, r2, 8
004aa0  db110300  j 6284
004aa4  63011f00  loadli.w r2,  8(r30)
004aa8  8b932010  add.s r7, r1, r2
004aac  8b93f320  mul.s r7, r7, r15
004ab0  b3930328  sext_int2long r[8:9], r7
004ab4  97baa302  sll.d r[22:23], r[8:9], r10
004ab8  1f047fd6  addli r8, r30, -5320
004abc  ab0300f0  lui r7, 983040
004ac0  6b510400  load.d r[3:4], 0(r8)
004ac4  97937200  or r7, r5, r7
004ac8  8b295111  add.ul r[20:21], r[3:4], r[22:23]
004acc  ffa37901  l_gm2lm r7, r23, 0(r[20:21])
004ad0  00a00200  mfence { lm, gm }
004ad4  bff0b700  blt.s r15, r11, 60
004ad8  e3030fd4  loadli.w r7,  -5632(r30)
004adc  63048fd4  loadli.w r8,  -5568(r30)
004ae0  e3090fd5  loadli.w r19,  -5504(r30)
004ae4  c2800302  vload.mz vr1{mr1}, 0(r7)
004ae8  9f89c9ff  addli r19, r19, -32
004aec  9f0b84ff  addli r23, r8, -64
004af0  9f8383ff  addli r7, r7, -64
004af4  130a3605  setlt.u r20, r12, r19
004af8  06f10000  vfp162float_h.rn vr2, vr1
004afc  86b00000  vfp162float_l.rn vr1, vr1
004b00  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
004b04  1f0404ff  addli r8, r8, -128
004b08  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
004b0c  3b6f0afe  bneq r20, zero, -40
004b10  00a00000  mfence { lm }
004b14  bf17a200  blt.s r4, r10, 484
004b18  1f0c0000  addli r24, zero, 0
004b1c  9f0b0000  addli r23, zero, 0
004b20  9f0c0000  addli r25, zero, 0
004b24  db0c0000  j 100
004b28  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004b2c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004b30  9f9c0c00  addli r25, r25, 1
004b34  6a7108c0  vsrl.p vr2, r16, vr0
004b38  ea7118c0  vsrl.p vr3, r16, vr1
004b3c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b40  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b44  6af108c0  vsrl.p vr2, r17, vr0
004b48  eaf118c0  vsrl.p vr3, r17, vr1
004b4c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b50  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b54  6a7109c0  vsrl.p vr2, r18, vr0
004b58  ea7119c0  vsrl.p vr3, r18, vr1
004b5c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b60  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b64  6af105c0  vsrl.p vr2, r11, vr0
004b68  eaf115c0  vsrl.p vr3, r11, vr1
004b6c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b70  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b74  7a110040  vextracti.f r2, 0(vr0)
004b78  fa910040  vextracti.f r3, 0(vr1)
004b7c  0b6c2c10  add.f.rn r24, r24, r2
004b80  8beb3b10  add.f.rn r23, r23, r3
004b84  b7f54c00  beq r25, r4, 380
004b88  9f830c00  addli r7, r25, 0
004b8c  37300701  beq r14, r16, 12
004b90  97a3dc00  xor r7, r25, r13
004b94  8b137210  add.s r7, r4, r7
004b98  1f010fd7  addli r2, r30, -5248
004b9c  0b94e320  mul.s r8, r7, r14
004ba0  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004ba4  0b948718  sub.s r8, r15, r8
004ba8  0b1de440  min.s r26, r8, r14
004bac  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004bb0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004bb4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004bb8  bf4dadfe  blt.s r26, r10, -144
004bbc  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
004bc0  9f0d0000  addli r27, zero, 0
004bc4  0b9e7420  mul.s r28, r9, r7
004bc8  9f098fd7  addli r19, r30, -5184
004bcc  1f0a0300  addli r20, r6, 0
004bd0  92304002  vadd.s.mz vr1{mr1}, zero, vr4
004bd4  12314002  vadd.s.mz vr2{mr1}, zero, vr4
004bd8  92314002  vadd.s.mz vr3{mr1}, zero, vr4
004bdc  0b14ca11  add.s r8, r20, r28
004be0  8b93c911  add.s r7, r19, r28
004be4  9f028400  addli r5, r8, 64
004be8  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
004bec  9f018401  addli r3, r8, 192
004bf0  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
004bf4  1f818301  addli r2, r7, 192
004bf8  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
004bfc  9f020401  addli r5, r8, 128
004c00  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
004c04  9f818300  addli r3, r7, 64
004c08  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
004c0c  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
004c10  9f820301  addli r5, r7, 128
004c14  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
004c18  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
004c1c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004c20  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
004c24  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
004c28  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
004c2c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004c30  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004c34  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
004c38  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
004c3c  9f818d00  addli r3, r27, 64
004c40  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004c44  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004c48  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004c4c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
004c50  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004c54  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
004c58  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
004c5c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
004c60  4b2b3dfe  ble.s r26, r3, -312
004c64  9f010402  addli r3, r8, 256
004c68  9f028402  addli r5, r8, 320
004c6c  1f810302  addli r2, r7, 256
004c70  9f8d0d01  addli r27, r27, 128
004c74  1f0a0a04  addli r20, r20, 512
004c78  9f890904  addli r19, r19, 512
004c7c  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
004c80  9f010403  addli r3, r8, 384
004c84  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
004c88  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
004c8c  9f828302  addli r5, r7, 320
004c90  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
004c94  9f018403  addli r3, r8, 448
004c98  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
004c9c  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
004ca0  9f810303  addli r3, r7, 384
004ca4  9f838303  addli r7, r7, 448
004ca8  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
004cac  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
004cb0  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
004cb4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004cb8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
004cbc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004cc0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004cc4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004cc8  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
004ccc  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
004cd0  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004cd4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004cd8  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
004cdc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004ce0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004ce4  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
004ce8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004cec  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
004cf0  bfbbadff  blt.s r27, r26, -276
004cf4  dbc6ffff  j -460
004cf8  9f0b0000  addli r23, zero, 0
004cfc  1f0c0000  addli r24, zero, 0
004d00  00a00000  mfence { lm }
004d04  bfa5a7fe  blt.s r15, r10, -664
004d08  63018fd5  loadli.w r2,  -5440(r30)
004d0c  1f0a8fd7  addli r20, r30, -5184
004d10  0f042c18  div.f.rn r8, r24, r2
004d14  8f832b18  div.f.rn r7, r23, r2
004d18  63013f00  loadli.w r2,  24(r30)
004d1c  9f0b0000  addli r23, zero, 0
004d20  8b698420  mul.f.rn r19, r8, r8
004d24  0b640458  neg.f r8, r8
004d28  8be33319  sub.f.rn r7, r7, r19
004d2c  9f098fd7  addli r19, r30, -5184
004d30  8be32310  add.f.rn r7, r7, r2
004d34  2b01803f  lui r2, 260096
004d38  8f830308  sqrt.f.rn r7, r7
004d3c  8f037118  div.f.rn r7, r2, r7
004d40  c2100a02  vload_mask16.mz vr1{mr1}, 0(r20)
004d44  1f0c8a00  addli r24, r20, 64
004d48  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
004d4c  9f8b4b00  addli r23, r23, 32
004d50  1f0a0a01  addli r20, r20, 128
004d54  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
004d58  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
004d5c  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
004d60  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
004d64  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
004d68  86910000  vfloat2fp16_l.rn vr3, vr1
004d6c  86510100  vfloat2fp16_h.rn vr3, vr2
004d70  46803902  vstore.mz vr3{mr1}, 0(r19)
004d74  9f898900  addli r19, r19, 64
004d78  3faffbfe  blt.s r23, r15, -56
004d7c  5b9effff  j -784
004d80  63012f00  loadli.w r2,  16(r30)
004d84  ab0100f0  lui r3, 983040
004d88  1b311100  slli r2, r2, 1
004d8c  17113100  or r2, r2, r3
004d90  aba10100  lui r3, 26
004d94  9f810100  addli r3, r3, 0
004d98  7f013300  l_gm2sm r2, r3, 0(r[7:8])
004d9c  5b080000  j 64
004da0  63012f00  loadli.w r2,  16(r30)
004da4  ab0100f0  lui r3, 983040
004da8  1b311100  slli r2, r2, 1
004dac  17113100  or r2, r2, r3
004db0  abe10100  lui r3, 30
004db4  9f810100  addli r3, r3, 0
004db8  7f013300  l_gm2sm r2, r3, 0(r[7:8])
004dbc  5bc30000  j 1560
004dc0  63012f00  loadli.w r2,  16(r30)
004dc4  ab0100f0  lui r3, 983040
004dc8  1b311100  slli r2, r2, 1
004dcc  17113100  or r2, r2, r3
004dd0  abb10100  lui r3, 27
004dd4  9f810100  addli r3, r3, 0
004dd8  7f013400  l_gm2sm r2, r3, 0(r[9:10])
004ddc  2bf10000  lui r2, 15
004de0  e3411f00  loadli.w r3,  12(r30)
004de4  00200300  mfence { sm, gm }
004de8  1b11f1ff  ori r2, r2, 4095
004dec  80210104  csr_set csr3, r2
004df0  00d00100  sync_group
004df4  cbe4110a  ble.s r3, r1, 5432
004df8  63012f00  loadli.w r2,  16(r30)
004dfc  e3412f00  loadli.w r3,  20(r30)
004e00  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004e04  1f140000  addli r8, zero, 1
004e08  9f048fd7  addli r9, r30, -5184
004e0c  9f050002  addli r11, zero, 256
004e10  2b06ffff  lui r12, 1048560
004e14  2b08807f  lui r16, 522240
004e18  ab08c07f  lui r17, 523264
004e1c  1f090001  addli r18, zero, 128
004e20  9f098000  addli r19, zero, 64
004e24  1f0a4000  addli r20, zero, 32
004e28  9b3b1100  slli r23, r2, 1
004e2c  0b123110  add.s r4, r2, r3
004e30  33010108  fix2float.rn r2, r2
004e34  1bb31100  slli r6, r3, 1
004e38  67042fd4  storeli.w r2, -5568(r30)
004e3c  1f71f2ff  addli r2, r4, -1
004e40  67087fd5  storeli.w r23, -5504(r30)
004e44  8b133130  div.s r7, r2, r3
004e48  2bf1ffff  lui r2, 1048575
004e4c  9f010fd7  addli r3, r30, -5248
004e50  1b15f1ff  ori r10, r2, 4095
004e54  1f012000  addli r2, zero, 16
004e58  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
004e5c  9f018fd6  addli r3, r30, -5312
004e60  6a200122  vor.u.mz vr0{mr1}, r2, vr0
004e64  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
004e68  ab710000  lui r3, 7
004e6c  9b96f1ff  ori r13, r3, 4095
004e70  5b090000  j 72
004e74  9f028fd5  addli r5, r30, -5440
004e78  eb510f00  load.d r[4:5], 0(r30)
004e7c  ab0400f0  lui r9, 983040
004e80  ebda0200  load.d r[22:23], 0(r5)
004e84  00a00000  mfence { lm }
004e88  9f028fd7  addli r5, r30, -5184
004e8c  e30b0fd5  loadli.w r23,  -5504(r30)
004e90  8ba15111  add.ul r[4:5], r[4:5], r[22:23]
004e94  805a0102  load_param_i r21, 2
004e98  97949b00  or r9, r23, r9
004e9c  8b901a10  add.s r1, r21, r1
004ea0  ffb45100  s_lm2gm r9, r5, 0(r[4:5])
004ea4  9f048fd7  addli r9, r30, -5184
004ea8  00a00200  mfence { lm, gm }
004eac  e3411f00  loadli.w r3,  12(r30)
004eb0  3fa03000  blt.s r1, r3, 8
004eb4  5b8f0200  j 5240
004eb8  e3011f00  loadli.w r3,  8(r30)
004ebc  1f0c7fd6  addli r24, r30, -5320
004ec0  8b913010  add.s r3, r1, r3
004ec4  8b91f120  mul.s r3, r3, r15
004ec8  b3910128  sext_int2long r[4:5], r3
004ecc  97ba8102  sll.d r[22:23], r[4:5], r8
004ed0  6b520c00  load.d r[5:6], 0(r24)
004ed4  ab0100f0  lui r3, 983040
004ed8  1f0c8fd5  addli r24, r30, -5440
004edc  73305c01  store.d r[22:23], 0(r24)
004ee0  97913b00  or r3, r23, r3
004ee4  8b2a5211  add.ul r[22:23], r[5:6], r[22:23]
004ee8  ffa19a00  l_gm2lm r3, r9, 0(r[22:23])
004eec  00a00200  mfence { lm, gm }
004ef0  bfcc8300  blt.s r7, r8, 816
004ef4  9f0d0000  addli r27, zero, 0
004ef8  1f0d0000  addli r26, zero, 0
004efc  1f0e0000  addli r28, zero, 0
004f00  db0c0000  j 100
004f04  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
004f08  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
004f0c  1f1e0e00  addli r28, r28, 1
004f10  6af105c0  vsrl.p vr2, r11, vr0
004f14  eaf115c0  vsrl.p vr3, r11, vr1
004f18  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f1c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f20  6a7109c0  vsrl.p vr2, r18, vr0
004f24  ea7119c0  vsrl.p vr3, r18, vr1
004f28  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f2c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f30  6af109c0  vsrl.p vr2, r19, vr0
004f34  eaf119c0  vsrl.p vr3, r19, vr1
004f38  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f3c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f40  6a710ac0  vsrl.p vr2, r20, vr0
004f44  ea711ac0  vsrl.p vr3, r20, vr1
004f48  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f4c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f50  fa110040  vextracti.f r3, 0(vr0)
004f54  7a920040  vextracti.f r4, 0(vr1)
004f58  8bed3d10  add.f.rn r27, r27, r3
004f5c  0b6d4d10  add.f.rn r26, r26, r4
004f60  372b7e00  beq r28, r7, 712
004f64  9f010e00  addli r3, r28, 0
004f68  3730b700  beq r14, r11, 12
004f6c  9721ae00  xor r3, r28, r10
004f70  8b913310  add.s r3, r7, r3
004f74  0b92e120  mul.s r4, r3, r14
004f78  0b924718  sub.s r4, r15, r4
004f7c  8b1ae240  min.s r21, r4, r14
004f80  1f020fd7  addli r4, r30, -5248
004f84  42110202  vload_mask16.mz vr2{mr1}, 0(r4)
004f88  92322002  vadd.s.mz vr5{mr1}, zero, vr2
004f8c  12322002  vadd.s.mz vr4{mr1}, zero, vr2
004f90  92312002  vadd.s.mz vr3{mr1}, zero, vr2
004f94  bfcd8afe  blt.s r21, r8, -144
004f98  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
004f9c  8b1b3320  mul.s r23, r6, r3
004fa0  ab910100  lui r3, 25
004fa4  1f0b0000  addli r22, zero, 0
004fa8  9f048fd7  addli r9, r30, -5184
004fac  9f810100  addli r3, r3, 0
004fb0  12315002  vadd.s.mz vr2{mr1}, zero, vr5
004fb4  92315002  vadd.s.mz vr3{mr1}, zero, vr5
004fb8  12325002  vadd.s.mz vr4{mr1}, zero, vr5
004fbc  0b9c7111  add.s r24, r3, r23
004fc0  0b927411  add.s r4, r9, r23
004fc4  9f028fd6  addli r5, r30, -5312
004fc8  4a030c02  vloads.mz vr6{mr1}, 0(r24)
004fcc  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
004fd0  c2030202  vload.mz vr7{mr1}, 0(r4)
004fd4  9f020fd7  addli r5, r30, -5248
004fd8  9f0c8c00  addli r25, r24, 64
004fdc  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
004fe0  9f028b00  addli r5, r22, 64
004fe4  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
004fe8  6a357602  vand.s.mz vr10{mr1}, r12, vr7
004fec  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
004ff0  6a336602  vand.s.mz vr6{mr1}, r12, vr6
004ff4  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
004ff8  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
004ffc  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
005000  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
005004  669503c0  vabs.f vr10, vr7
005008  6a348402  vand.s.mz vr8{mr1}, r8, vr8
00500c  ea349402  vand.s.mz vr9{mr1}, r8, vr9
005010  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
005014  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
005018  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
00501c  12b48602  vadd.s.mz vr8{mr1}, r13, vr8
005020  92b49602  vadd.s.mz vr9{mr1}, r13, vr9
005024  ea338602  vand.s.mz vr7{mr1}, r12, vr8
005028  661403c0  vabs.f vr8, vr6
00502c  6a339602  vand.s.mz vr6{mr1}, r12, vr9
005030  eaa30834  vor.u.mh vr7{mr2}, r17, vr0
005034  72218842  vlt.u.mz mr2{mr1}, r16, vr8
005038  6aa30834  vor.u.mh vr6{mr2}, r17, vr0
00503c  4a840c02  vloads.mz vr8{mr1}, 0(r25)
005040  9f0c8200  addli r25, r4, 64
005044  c2840c02  vload.mz vr9{mr1}, 0(r25)
005048  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
00504c  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
005050  6a336602  vand.s.mz vr6{mr1}, r12, vr6
005054  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
005058  ea349602  vand.s.mz vr9{mr1}, r12, vr9
00505c  46007202  vstore.mz vr7{mr1}, 0(r4)
005060  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005064  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005068  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
00506c  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
005070  6a348602  vand.s.mz vr8{mr1}, r12, vr8
005074  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005078  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
00507c  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
005080  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
005084  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
005088  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
00508c  ea349402  vand.s.mz vr9{mr1}, r8, vr9
005090  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
005094  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
005098  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
00509c  661505c0  vabs.f vr10, vr10
0050a0  661404c0  vabs.f vr8, vr8
0050a4  92b49602  vadd.s.mz vr9{mr1}, r13, vr9
0050a8  92b5b602  vadd.s.mz vr11{mr1}, r13, vr11
0050ac  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
0050b0  ea349602  vand.s.mz vr9{mr1}, r12, vr9
0050b4  6a35b602  vand.s.mz vr10{mr1}, r12, vr11
0050b8  eaa40834  vor.u.mh vr9{mr2}, r17, vr0
0050bc  72218842  vlt.u.mz mr2{mr1}, r16, vr8
0050c0  6aa50834  vor.u.mh vr10{mr2}, r17, vr0
0050c4  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
0050c8  ea34a602  vand.s.mz vr9{mr1}, r12, vr10
0050cc  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0050d0  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0050d4  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0050d8  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0050dc  46808c02  vstore.mz vr8{mr1}, 0(r25)
0050e0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0050e4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0050e8  4bf85afe  ble.s r21, r5, -484
0050ec  9f020c01  addli r5, r24, 128
0050f0  9f0c0201  addli r25, r4, 128
0050f4  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0050f8  1f028201  addli r4, r4, 192
0050fc  1f0b0b01  addli r22, r22, 128
005100  9f810102  addli r3, r3, 256
005104  9f840402  addli r9, r9, 256
005108  6a237122  vor.u.mz vr6{mr1}, r2, vr7
00510c  4a840202  vloads.mz vr8{mr1}, 0(r5)
005110  c2840c02  vload.mz vr9{mr1}, 0(r25)
005114  9f028c01  addli r5, r24, 192
005118  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
00511c  6a309602  vand.s.mz vr0{mr1}, r12, vr9
005120  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
005124  6a348602  vand.s.mz vr8{mr1}, r12, vr8
005128  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
00512c  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
005130  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
005134  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
005138  e69504c0  vabs.f vr11, vr9
00513c  6a300402  vand.s.mz vr0{mr1}, r8, vr0
005140  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
005144  7221b842  vlt.u.mz mr2{mr1}, r16, vr11
005148  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
00514c  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
005150  12b00602  vadd.s.mz vr0{mr1}, r13, vr0
005154  12b5a602  vadd.s.mz vr10{mr1}, r13, vr10
005158  ea340602  vand.s.mz vr9{mr1}, r12, vr0
00515c  661004c0  vabs.f vr0, vr8
005160  6a34a602  vand.s.mz vr8{mr1}, r12, vr10
005164  eaa47834  vor.u.mh vr9{mr2}, r17, vr7
005168  72210842  vlt.u.mz mr2{mr1}, r16, vr0
00516c  6aa47834  vor.u.mh vr8{mr2}, r17, vr7
005170  4a800202  vloads.mz vr0{mr1}, 0(r5)
005174  42050202  vload.mz vr10{mr1}, 0(r4)
005178  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
00517c  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
005180  6a35a602  vand.s.mz vr10{mr1}, r12, vr10
005184  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
005188  6a348602  vand.s.mz vr8{mr1}, r12, vr8
00518c  46809c02  vstore.mz vr9{mr1}, 0(r25)
005190  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
005194  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
005198  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
00519c  6a300602  vand.s.mz vr0{mr1}, r12, vr0
0051a0  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
0051a4  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
0051a8  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
0051ac  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
0051b0  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
0051b4  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
0051b8  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
0051bc  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
0051c0  e69000c0  vabs.f vr1, vr1
0051c4  661000c0  vabs.f vr0, vr0
0051c8  12b5a602  vadd.s.mz vr10{mr1}, r13, vr10
0051cc  92b5b602  vadd.s.mz vr11{mr1}, r13, vr11
0051d0  72211842  vlt.u.mz mr2{mr1}, r16, vr1
0051d4  6a35a602  vand.s.mz vr10{mr1}, r12, vr10
0051d8  ea30b602  vand.s.mz vr1{mr1}, r12, vr11
0051dc  6aa57834  vor.u.mh vr10{mr2}, r17, vr7
0051e0  72210842  vlt.u.mz mr2{mr1}, r16, vr0
0051e4  eaa07834  vor.u.mh vr1{mr2}, r17, vr7
0051e8  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
0051ec  ea331602  vand.s.mz vr7{mr1}, r12, vr1
0051f0  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0051f4  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
0051f8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0051fc  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005200  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
005204  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
005208  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
00520c  46000202  vstore.mz vr0{mr1}, 0(r4)
005210  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
005214  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005218  bf165bff  blt.s r22, r21, -604
00521c  5b9dffff  j -792
005220  1f0d0000  addli r26, zero, 0
005224  9f0d0000  addli r27, zero, 0
005228  00a00000  mfence { lm }
00522c  3fa187fe  blt.s r15, r8, -952
005230  63028fd4  loadli.w r4,  -5568(r30)
005234  e3023f00  loadli.w r5,  24(r30)
005238  2bab0100  lui r22, 26
00523c  abbb0100  lui r23, 27
005240  9f010000  addli r3, zero, 0
005244  1f0b0b00  addli r22, r22, 0
005248  9f8b0b00  addli r23, r23, 0
00524c  8f844d18  div.f.rn r9, r27, r4
005250  0f024d18  div.f.rn r4, r26, r4
005254  8bea9420  mul.f.rn r21, r9, r9
005258  8be40458  neg.f r9, r9
00525c  0b625219  sub.f.rn r4, r4, r21
005260  9f0a8fd7  addli r21, r30, -5184
005264  0b625210  add.f.rn r4, r4, r5
005268  ab02803f  lui r5, 260096
00526c  0f020208  sqrt.f.rn r4, r4
005270  0f824218  div.f.rn r4, r5, r4
005274  42820a02  vload.mz vr4{mr1}, 0(r21)
005278  ca020b02  vloads.mz vr5{mr1}, 0(r22)
00527c  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
005280  4a830b02  vloads.mz vr6{mr1}, 0(r23)
005284  1f8c4100  addli r24, r3, 32
005288  ea212122  vor.u.mz vr3{mr1}, r2, vr2
00528c  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
005290  6a344602  vand.s.mz vr8{mr1}, r12, vr4
005294  92937402  vadd.f.mz.rn vr7{mr1}, r9, vr7
005298  12948402  vadd.f.mz.rn vr8{mr1}, r9, vr8
00529c  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
0052a0  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
0052a4  6a355602  vand.s.mz vr10{mr1}, r12, vr5
0052a8  ea326602  vand.s.mz vr5{mr1}, r12, vr6
0052ac  8a137202  vmul.f.mz.rn vr7{mr1}, r4, vr7
0052b0  0a138202  vmul.f.mz.rn vr6{mr1}, r4, vr8
0052b4  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
0052b8  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
0052bc  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
0052c0  6a337402  vand.s.mz vr6{mr1}, r8, vr7
0052c4  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
0052c8  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
0052cc  ea337402  vand.s.mz vr7{mr1}, r8, vr7
0052d0  661202c0  vabs.f vr4, vr4
0052d4  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
0052d8  12b36602  vadd.s.mz vr6{mr1}, r13, vr6
0052dc  e69202c0  vabs.f vr5, vr5
0052e0  72214842  vlt.u.mz mr2{mr1}, r16, vr4
0052e4  6a336602  vand.s.mz vr6{mr1}, r12, vr6
0052e8  92b37602  vadd.s.mz vr7{mr1}, r13, vr7
0052ec  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
0052f0  6a327602  vand.s.mz vr4{mr1}, r12, vr7
0052f4  72215842  vlt.u.mz mr2{mr1}, r16, vr5
0052f8  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
0052fc  6aa22834  vor.u.mh vr4{mr2}, r17, vr2
005300  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
005304  46804a02  vstore.mz vr4{mr1}, 0(r21)
005308  cbbd87fd  ble.s r15, r24, -1172
00530c  1f8c8a00  addli r24, r21, 64
005310  9f0c8b00  addli r25, r22, 64
005314  1f8d8b00  addli r26, r23, 64
005318  9f818100  addli r3, r3, 64
00531c  9f8b0b01  addli r23, r23, 128
005320  1f0b0b01  addli r22, r22, 128
005324  9f8a0a01  addli r21, r21, 128
005328  42020c02  vload.mz vr4{mr1}, 0(r24)
00532c  4a830c02  vloads.mz vr6{mr1}, 0(r25)
005330  ca030d02  vloads.mz vr7{mr1}, 0(r26)
005334  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
005338  6a324602  vand.s.mz vr4{mr1}, r12, vr4
00533c  12945402  vadd.f.mz.rn vr8{mr1}, r9, vr5
005340  92944402  vadd.f.mz.rn vr9{mr1}, r9, vr4
005344  6eb561a2  vsll.s.mz vr10{mr1}, vr3, vr6
005348  eeb271a2  vsll.s.mz vr5{mr1}, vr3, vr7
00534c  6a327602  vand.s.mz vr4{mr1}, r12, vr7
005350  6a336602  vand.s.mz vr6{mr1}, r12, vr6
005354  0a148202  vmul.f.mz.rn vr8{mr1}, r4, vr8
005358  8a139202  vmul.f.mz.rn vr7{mr1}, r4, vr9
00535c  a612a402  vmac.f.mz.rn vr5{mr1}, vr8, vr10
005360  26926302  vmac.f.mz.rn vr4{mr1}, vr7, vr6
005364  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
005368  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
00536c  6a336402  vand.s.mz vr6{mr1}, r8, vr6
005370  ea337402  vand.s.mz vr7{mr1}, r8, vr7
005374  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
005378  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
00537c  e69202c0  vabs.f vr5, vr5
005380  661202c0  vabs.f vr4, vr4
005384  12b36602  vadd.s.mz vr6{mr1}, r13, vr6
005388  92b37602  vadd.s.mz vr7{mr1}, r13, vr7
00538c  72215842  vlt.u.mz mr2{mr1}, r16, vr5
005390  6a336602  vand.s.mz vr6{mr1}, r12, vr6
005394  ea327602  vand.s.mz vr5{mr1}, r12, vr7
005398  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
00539c  72214842  vlt.u.mz mr2{mr1}, r16, vr4
0053a0  eaa22834  vor.u.mh vr5{mr2}, r17, vr2
0053a4  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
0053a8  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
0053ac  46002c02  vstore.mz vr2{mr1}, 0(r24)
0053b0  3f9bf1fe  blt.s r3, r15, -316
0053b4  5b58ffff  j -1344
0053b8  63012f00  loadli.w r2,  16(r30)
0053bc  ab0100f0  lui r3, 983040
0053c0  1b311100  slli r2, r2, 1
0053c4  17113100  or r2, r2, r3
0053c8  abf10100  lui r3, 31
0053cc  9f810100  addli r3, r3, 0
0053d0  7f013400  l_gm2sm r2, r3, 0(r[9:10])
0053d4  2bf10000  lui r2, 15
0053d8  e3411f00  loadli.w r3,  12(r30)
0053dc  00200300  mfence { sm, gm }
0053e0  1b11f1ff  ori r2, r2, 4095
0053e4  80210104  csr_set csr3, r2
0053e8  00d00100  sync_group
0053ec  4b8d1106  ble.s r3, r1, 3904
0053f0  e3012f00  loadli.w r3,  16(r30)
0053f4  e3422f00  loadli.w r5,  20(r30)
0053f8  2bf4ffff  lui r8, 1048575
0053fc  2bd50100  lui r10, 29
005400  9f0b8fd7  addli r23, r30, -5184
005404  9f040002  addli r9, zero, 256
005408  9f050001  addli r11, zero, 128
00540c  1f068000  addli r12, zero, 64
005410  9f064000  addli r13, zero, 32
005414  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005418  1b14f4ff  ori r8, r8, 4095
00541c  1f050500  addli r10, r10, 0
005420  0b925110  add.s r4, r3, r5
005424  1bb11100  slli r2, r3, 1
005428  b3810108  fix2float.rn r3, r3
00542c  1f73f2ff  addli r6, r4, -1
005430  1bb21200  slli r4, r5, 1
005434  8b125330  div.s r5, r6, r5
005438  1f130000  addli r6, zero, 1
00543c  5b070000  j 56
005440  6b580f00  load.d r[17:18], 0(r30)
005444  9f0b8fd7  addli r23, r30, -5184
005448  00a00000  mfence { lm }
00544c  0b283811  add.ul r[17:18], r[17:18], r[20:21]
005450  ab0900f0  lui r19, 983040
005454  005a0102  load_param_i r20, 2
005458  97193101  or r19, r2, r19
00545c  8b101a10  add.s r1, r20, r1
005460  ff397801  s_lm2gm r19, r23, 0(r[17:18])
005464  00a00200  mfence { lm, gm }
005468  e3431f00  loadli.w r7,  12(r30)
00546c  3fa07000  blt.s r1, r7, 8
005470  dbd70100  j 3772
005474  e3031f00  loadli.w r7,  8(r30)
005478  0b987010  add.s r16, r1, r7
00547c  9f037fd6  addli r7, r30, -5320
005480  0b18f820  mul.s r16, r16, r15
005484  33180828  sext_int2long r[17:18], r16
005488  97396802  sll.d r[20:21], r[17:18], r6
00548c  ebd80300  load.d r[18:19], 0(r7)
005490  2b0800f0  lui r16, 983040
005494  17180101  or r16, r2, r16
005498  8baa3811  add.ul r[22:23], r[18:19], r[20:21]
00549c  7fa87a01  l_gm2lm r16, r23, 0(r[22:23])
0054a0  00a00200  mfence { lm, gm }
0054a4  3fc76200  blt.s r5, r6, 464
0054a8  1f0b0000  addli r22, zero, 0
0054ac  9f0a0000  addli r21, zero, 0
0054b0  9f0b0000  addli r23, zero, 0
0054b4  db0c0000  j 100
0054b8  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
0054bc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0054c0  9f9b0b00  addli r23, r23, 1
0054c4  6af134c0  vsrl.p vr2, r9, vr3
0054c8  6af214c0  vsrl.p vr4, r9, vr1
0054cc  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
0054d0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0054d4  eaf125c0  vsrl.p vr3, r11, vr2
0054d8  6af215c0  vsrl.p vr4, r11, vr1
0054dc  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0054e0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0054e4  ea7126c0  vsrl.p vr3, r12, vr2
0054e8  6a7216c0  vsrl.p vr4, r12, vr1
0054ec  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0054f0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0054f4  eaf126c0  vsrl.p vr3, r13, vr2
0054f8  6af216c0  vsrl.p vr4, r13, vr1
0054fc  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
005500  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
005504  fa130140  vextracti.f r7, 0(vr2)
005508  7a980040  vextracti.f r16, 0(vr1)
00550c  0b6b7b10  add.f.rn r22, r22, r7
005510  8bea0a11  add.f.rn r21, r21, r16
005514  b7a55b00  beq r23, r5, 360
005518  1f880b00  addli r16, r23, 0
00551c  37309700  beq r14, r9, 12
005520  17a88b00  xor r16, r23, r8
005524  0b980211  add.s r16, r5, r16
005528  8b18e820  mul.s r17, r16, r14
00552c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005530  92310002  vadd.s.mz vr3{mr1}, zero, vr0
005534  12310002  vadd.s.mz vr2{mr1}, zero, vr0
005538  92300002  vadd.s.mz vr1{mr1}, zero, vr0
00553c  8b981719  sub.s r17, r15, r17
005540  0b9ce840  min.s r24, r17, r14
005544  bf5d6cfe  blt.s r24, r6, -140
005548  92300002  vadd.s.mz vr1{mr1}, zero, vr0
00554c  12310002  vadd.s.mz vr2{mr1}, zero, vr0
005550  92310002  vadd.s.mz vr3{mr1}, zero, vr0
005554  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005558  9f0c0000  addli r25, zero, 0
00555c  0b1d0221  mul.s r26, r4, r16
005560  9f0d8fd7  addli r27, r30, -5184
005564  1f0e0500  addli r28, r10, 0
005568  0b18ae11  add.s r16, r28, r26
00556c  9f838c00  addli r7, r25, 64
005570  ca020802  vloads.mz vr5{mr1}, 0(r16)
005574  9f088800  addli r17, r16, 64
005578  4a830802  vloads.mz vr6{mr1}, 0(r17)
00557c  8b98ad11  add.s r17, r27, r26
005580  c2830802  vload.mz vr7{mr1}, 0(r17)
005584  1f898800  addli r18, r17, 64
005588  42040902  vload.mz vr8{mr1}, 0(r18)
00558c  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
005590  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005594  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
005598  06b40300  vfp162float_l.rn vr8, vr7
00559c  86f30300  vfp162float_h.rn vr7, vr7
0055a0  86340300  vfp162float_l.rn vr9, vr6
0055a4  06730300  vfp162float_h.rn vr6, vr6
0055a8  86120400  vfloat2fp16_l.rn vr5, vr8
0055ac  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
0055b0  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
0055b4  12340002  vadd.s.mz vr8{mr1}, zero, vr0
0055b8  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
0055bc  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
0055c0  06940400  vfloat2fp16_l.rn vr8, vr9
0055c4  86d20300  vfloat2fp16_h.rn vr5, vr7
0055c8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0055cc  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0055d0  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0055d4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0055d8  06540300  vfloat2fp16_h.rn vr8, vr6
0055dc  46805802  vstore.mz vr5{mr1}, 0(r17)
0055e0  46008902  vstore.mz vr8{mr1}, 0(r18)
0055e4  4b5b7cfe  ble.s r24, r7, -300
0055e8  9f030801  addli r7, r16, 128
0055ec  9f8c0c01  addli r25, r25, 128
0055f0  1f0e0e02  addli r28, r28, 256
0055f4  9f8d0d02  addli r27, r27, 256
0055f8  ca820302  vloads.mz vr5{mr1}, 0(r7)
0055fc  9f038801  addli r7, r16, 192
005600  1f880801  addli r16, r17, 128
005604  4a830302  vloads.mz vr6{mr1}, 0(r7)
005608  c2030802  vload.mz vr7{mr1}, 0(r16)
00560c  9f838801  addli r7, r17, 192
005610  42840302  vload.mz vr8{mr1}, 0(r7)
005614  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
005618  92320002  vadd.s.mz vr5{mr1}, zero, vr0
00561c  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
005620  12330002  vadd.s.mz vr6{mr1}, zero, vr0
005624  86b40300  vfp162float_l.rn vr9, vr7
005628  86f30300  vfp162float_h.rn vr7, vr7
00562c  86920400  vfloat2fp16_l.rn vr5, vr9
005630  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
005634  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
005638  86340400  vfp162float_l.rn vr9, vr8
00563c  06740400  vfp162float_h.rn vr8, vr8
005640  06930400  vfloat2fp16_l.rn vr6, vr9
005644  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005648  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
00564c  86d20300  vfloat2fp16_h.rn vr5, vr7
005650  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005654  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005658  06530400  vfloat2fp16_h.rn vr6, vr8
00565c  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
005660  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005664  46005802  vstore.mz vr5{mr1}, 0(r16)
005668  46806302  vstore.mz vr6{mr1}, 0(r7)
00566c  bffb8cff  blt.s r25, r24, -260
005670  5bc9ffff  j -440
005674  9f0a0000  addli r21, zero, 0
005678  1f0b0000  addli r22, zero, 0
00567c  00a00000  mfence { lm }
005680  3f8767fe  blt.s r15, r6, -576
005684  0f083b18  div.f.rn r16, r22, r3
005688  8f883a18  div.f.rn r17, r21, r3
00568c  e3033f00  loadli.w r7,  24(r30)
005690  abec0100  lui r25, 30
005694  2bfd0100  lui r26, 31
005698  9f0b0000  addli r23, zero, 0
00569c  1f0c8fd7  addli r24, r30, -5184
0056a0  9f8c0c00  addli r25, r25, 0
0056a4  1f0d0d00  addli r26, r26, 0
0056a8  8b6a0821  mul.f.rn r21, r16, r16
0056ac  0b6b0858  neg.f r22, r16
0056b0  8be85819  sub.f.rn r17, r17, r21
0056b4  8be87810  add.f.rn r17, r17, r7
0056b8  ab03803f  lui r7, 260096
0056bc  8f880808  sqrt.f.rn r17, r17
0056c0  8f8a1319  div.f.rn r21, r7, r17
0056c4  c2000c02  vload.mz vr1{mr1}, 0(r24)
0056c8  4a810c02  vloads.mz vr2{mr1}, 0(r25)
0056cc  ca010d02  vloads.mz vr3{mr1}, 0(r26)
0056d0  1f884b00  addli r16, r23, 32
0056d4  06b20000  vfp162float_l.rn vr4, vr1
0056d8  86f00000  vfp162float_h.rn vr1, vr1
0056dc  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
0056e0  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
0056e4  86320100  vfp162float_l.rn vr5, vr2
0056e8  06b30100  vfp162float_l.rn vr6, vr3
0056ec  06710100  vfp162float_h.rn vr2, vr2
0056f0  86f10100  vfp162float_h.rn vr3, vr3
0056f4  8a931a02  vmul.f.mz.rn vr7{mr1}, r21, vr1
0056f8  0a924a02  vmul.f.mz.rn vr4{mr1}, r21, vr4
0056fc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005700  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
005704  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
005708  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00570c  06110300  vfloat2fp16_l.rn vr2, vr6
005710  06d10100  vfloat2fp16_h.rn vr2, vr3
005714  46002c02  vstore.mz vr2{mr1}, 0(r24)
005718  cba407ff  ble.s r15, r16, -728
00571c  1f088c00  addli r16, r24, 64
005720  9f888c00  addli r17, r25, 64
005724  9f0d8d00  addli r27, r26, 64
005728  9f8b8b00  addli r23, r23, 64
00572c  1f0d0d01  addli r26, r26, 128
005730  9f8c0c01  addli r25, r25, 128
005734  1f0c0c01  addli r24, r24, 128
005738  42010802  vload.mz vr2{mr1}, 0(r16)
00573c  ca810802  vloads.mz vr3{mr1}, 0(r17)
005740  4a820d02  vloads.mz vr4{mr1}, 0(r27)
005744  86320100  vfp162float_l.rn vr5, vr2
005748  06710100  vfp162float_h.rn vr2, vr2
00574c  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
005750  12112b02  vadd.f.mz.rn vr2{mr1}, r22, vr2
005754  06b30100  vfp162float_l.rn vr6, vr3
005758  86330200  vfp162float_l.rn vr7, vr4
00575c  86f10100  vfp162float_h.rn vr3, vr3
005760  06720200  vfp162float_h.rn vr4, vr4
005764  8a925a02  vmul.f.mz.rn vr5{mr1}, r21, vr5
005768  0a912a02  vmul.f.mz.rn vr2{mr1}, r21, vr2
00576c  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
005770  26123102  vmac.f.mz.rn vr4{mr1}, vr2, vr3
005774  86900300  vfloat2fp16_l.rn vr1, vr7
005778  86500200  vfloat2fp16_h.rn vr1, vr4
00577c  46001802  vstore.mz vr1{mr1}, 0(r16)
005780  3f9dfbfe  blt.s r23, r15, -188
005784  db97ffff  j -836
005788  9f000040  addli r1, zero, 8192
00578c  2b0100f0  lui r2, 983040
005790  97902000  or r1, r1, r2
005794  2b310200  lui r2, 35
005798  1f010100  addli r2, r2, 0
00579c  ff002300  l_gm2sm r1, r2, 0(r[7:8])
0057a0  db070000  j 60
0057a4  63012f00  loadli.w r2,  16(r30)
0057a8  ab0100f0  lui r3, 983040
0057ac  1b312100  slli r2, r2, 2
0057b0  17113100  or r2, r2, r3
0057b4  ab810200  lui r3, 40
0057b8  9f810108  addli r3, r3, 1024
0057bc  7f013300  l_gm2sm r2, r3, 0(r[7:8])
0057c0  5bf00000  j 1920
0057c4  9f000040  addli r1, zero, 8192
0057c8  2b0100f0  lui r2, 983040
0057cc  97902000  or r1, r1, r2
0057d0  2b510200  lui r2, 37
0057d4  1f010100  addli r2, r2, 0
0057d8  ff002400  l_gm2sm r1, r2, 0(r[9:10])
0057dc  abf00000  lui r1, 15
0057e0  00200300  mfence { sm, gm }
0057e4  1f020006  addli r4, zero, 768
0057e8  1b91f0ff  ori r2, r1, 4095
0057ec  9b001500  andi r1, r10, 1
0057f0  80210104  csr_set csr3, r2
0057f4  1f010006  addli r2, zero, 768
0057f8  00d00100  sync_group
0057fc  67081fd6  storeli.w r1, -5248(r30)
005800  37a00000  beq r1, zero, 8
005804  1f02000a  addli r4, zero, 1280
005808  e3411f00  loadli.w r3,  12(r30)
00580c  9f120000  addli r5, zero, 1
005810  3ffc5104  blt.s r3, r5, 2844
005814  e3000fd7  loadli.w r1,  -5248(r30)
005818  80510102  load_param_i r3, 2
00581c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005820  ab180200  lui r17, 33
005824  ab7b0200  lui r23, 39
005828  2b7e0200  lui r28, 39
00582c  9f020000  addli r5, zero, 0
005830  1b441500  srli r8, r10, 1
005834  9b342200  slli r9, r4, 2
005838  9f078fd7  addli r15, r30, -5184
00583c  1f090005  addli r18, zero, 640
005840  9f0a8000  addli r21, zero, 64
005844  1f0b4000  addli r22, zero, 32
005848  9f0d0003  addli r27, zero, 384
00584c  9bc31100  srli r7, r3, 1
005850  ab310200  lui r3, 35
005854  9f880800  addli r17, r17, 0
005858  9f8b0b00  addli r23, r23, 0
00585c  1f0e0e04  addli r28, r28, 512
005860  8b902020  mul.s r1, r1, r2
005864  9f810100  addli r3, r3, 0
005868  1bb12000  slli r2, r1, 2
00586c  67041fd6  storeli.w r1, -5312(r30)
005870  abf0ffff  lui r1, 1048575
005874  8b153110  add.s r11, r2, r3
005878  ab510200  lui r3, 37
00587c  9b9000f8  ori r1, r1, 3968
005880  9f810100  addli r3, r3, 0
005884  67081fd4  storeli.w r1, -5504(r30)
005888  0b163110  add.s r12, r2, r3
00588c  1f018fd5  addli r2, r30, -5440
005890  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005894  2bf10000  lui r2, 15
005898  1b1cf1ff  ori r24, r2, 4095
00589c  db030000  j 28
0058a0  00a00300  mfence { lm, sm, gm }
0058a4  80210c04  csr_set csr3, r24
0058a8  00d00100  sync_group
0058ac  8b927210  add.s r5, r5, r7
0058b0  3fa00201  blt.s r5, r16, 8
0058b4  5b65f6ff  j -19672
0058b8  0b918210  add.s r2, r5, r8
0058bc  cb1f28fe  ble.s r16, r2, -28
0058c0  e3001f00  loadli.w r1,  8(r30)
0058c4  0b111110  add.s r2, r2, r1
0058c8  e3008fd6  loadli.w r1,  -5312(r30)
0058cc  1b31b100  slli r2, r2, 11
0058d0  17111100  or r2, r2, r1
0058d4  9f200000  addli r1, zero, 2
0058d8  33110128  sext_int2long r[3:4], r2
0058dc  97361102  sll.d r[14:15], r[3:4], r1
0058e0  9f007fd6  addli r1, r30, -5320
0058e4  2b0100f0  lui r2, 983040
0058e8  ebd90000  load.d r[20:21], 0(r1)
0058ec  17912400  or r2, r9, r2
0058f0  8bacd910  add.ul r[26:27], r[20:21], r[14:15]
0058f4  7fa1fc00  l_gm2lm r2, r15, 0(r[26:27])
0058f8  00a00200  mfence { lm, gm }
0058fc  e3000fd7  loadli.w r1,  -5248(r30)
005900  3bb60000  bneq r1, zero, 396
005904  9f008fd5  addli r1, r30, -5440
005908  e3010fd5  loadli.w r3,  -5504(r30)
00590c  1f010000  addli r2, zero, 0
005910  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
005914  92303002  vadd.s.mz vr1{mr1}, zero, vr3
005918  12313002  vadd.s.mz vr2{mr1}, zero, vr3
00591c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
005920  0b181111  add.s r16, r2, r17
005924  0b952710  add.s r10, r15, r2
005928  9f810101  addli r3, r3, 128
00592c  1f010104  addli r2, r2, 512
005930  9f000801  addli r1, r16, 128
005934  4a100802  vloads_mask16.mz vr0{mr1}, 0(r16)
005938  1f038800  addli r6, r16, 64
00593c  42140502  vload_mask16.mz vr8{mr1}, 0(r10)
005940  9f098501  addli r19, r10, 192
005944  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
005948  9f008801  addli r1, r16, 192
00594c  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
005950  1f038500  addli r6, r10, 64
005954  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
005958  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
00595c  9f000501  addli r1, r10, 128
005960  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
005964  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005968  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00596c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
005970  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005974  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005978  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00597c  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
005980  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
005984  9f000802  addli r1, r16, 256
005988  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00598c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
005990  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
005994  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005998  1f030503  addli r6, r10, 384
00599c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0059a0  9f008802  addli r1, r16, 320
0059a4  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
0059a8  9f090502  addli r19, r10, 256
0059ac  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0059b0  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0059b4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0059b8  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0059bc  9f000803  addli r1, r16, 384
0059c0  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
0059c4  1f088803  addli r16, r16, 448
0059c8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0059cc  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0059d0  9f008502  addli r1, r10, 320
0059d4  4a150802  vloads_mask16.mz vr10{mr1}, 0(r16)
0059d8  1f058503  addli r10, r10, 448
0059dc  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0059e0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0059e4  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
0059e8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0059ec  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
0059f0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0059f4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0059f8  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
0059fc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005a00  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
005a04  93802105  setlt.u r1, r3, r18
005a08  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005a0c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005a10  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005a14  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005a18  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005a1c  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005a20  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
005a24  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005a28  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005a2c  bbdb00fe  bneq r1, zero, -268
005a30  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005a34  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005a38  9f000002  addli r1, zero, 256
005a3c  6af100c0  vsrl.p vr2, r1, vr0
005a40  eaf110c0  vsrl.p vr3, r1, vr1
005a44  9f000001  addli r1, zero, 128
005a48  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a4c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a50  6af100c0  vsrl.p vr2, r1, vr0
005a54  eaf110c0  vsrl.p vr3, r1, vr1
005a58  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a5c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a60  6af10ac0  vsrl.p vr2, r21, vr0
005a64  eaf11ac0  vsrl.p vr3, r21, vr1
005a68  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a6c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a70  6a710bc0  vsrl.p vr2, r22, vr0
005a74  ea711bc0  vsrl.p vr3, r22, vr1
005a78  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a7c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a80  7a130040  vextracti.f r6, 0(vr0)
005a84  fa910040  vextracti.f r3, 0(vr1)
005a88  5b640000  j 800
005a8c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005a90  abf0ffff  lui r1, 1048575
005a94  1f010000  addli r2, zero, 0
005a98  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005a9c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005aa0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005aa4  9b9100f8  ori r3, r1, 3968
005aa8  0b982810  add.s r16, r17, r2
005aac  0b952710  add.s r10, r15, r2
005ab0  9f810101  addli r3, r3, 128
005ab4  1f010104  addli r2, r2, 512
005ab8  1f0d0831  addli r26, r16, 6272
005abc  1f030830  addli r6, r16, 6144
005ac0  9f008831  addli r1, r16, 6336
005ac4  9f0c0518  addli r25, r10, 3072
005ac8  ca130d02  vloads_mask16.mz vr7{mr1}, 0(r26)
005acc  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
005ad0  1f038830  addli r6, r16, 6208
005ad4  ca940002  vloads_mask16.mz vr9{mr1}, 0(r1)
005ad8  9f008518  addli r1, r10, 3136
005adc  1f0d8519  addli r26, r10, 3264
005ae0  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
005ae4  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
005ae8  1f030519  addli r6, r10, 3200
005aec  42100d02  vload_mask16.mz vr0{mr1}, 0(r26)
005af0  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
005af4  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
005af8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005afc  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
005b00  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
005b04  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
005b08  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005b0c  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
005b10  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
005b14  1f030832  addli r6, r16, 6400
005b18  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
005b1c  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
005b20  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005b24  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
005b28  9f0c051a  addli r25, r10, 3328
005b2c  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
005b30  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005b34  9f00051b  addli r1, r10, 3456
005b38  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
005b3c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
005b40  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
005b44  1f038832  addli r6, r16, 6464
005b48  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005b4c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005b50  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
005b54  1f030833  addli r6, r16, 6528
005b58  1f088833  addli r16, r16, 6592
005b5c  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
005b60  1f03851a  addli r6, r10, 3392
005b64  4a150802  vloads_mask16.mz vr10{mr1}, 0(r16)
005b68  1f05851b  addli r10, r10, 3520
005b6c  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
005b70  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005b74  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
005b78  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005b7c  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
005b80  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005b84  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005b88  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
005b8c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005b90  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
005b94  1383b105  setlt.u r6, r3, r27
005b98  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005b9c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005ba0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005ba4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005ba8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005bac  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005bb0  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
005bb4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005bb8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005bbc  bb3b03fe  bneq r6, zero, -276
005bc0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005bc4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005bc8  9f000002  addli r1, zero, 256
005bcc  1f080000  addli r16, zero, 0
005bd0  eaf110c0  vsrl.p vr3, r1, vr1
005bd4  6af100c0  vsrl.p vr2, r1, vr0
005bd8  9f000001  addli r1, zero, 128
005bdc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005be0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005be4  eaf110c0  vsrl.p vr3, r1, vr1
005be8  6af100c0  vsrl.p vr2, r1, vr0
005bec  abf0ffff  lui r1, 1048575
005bf0  1b9500f8  ori r10, r1, 3968
005bf4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005bf8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005bfc  eaf11ac0  vsrl.p vr3, r21, vr1
005c00  6af10ac0  vsrl.p vr2, r21, vr0
005c04  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005c08  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005c0c  ea711bc0  vsrl.p vr3, r22, vr1
005c10  6a710bc0  vsrl.p vr2, r22, vr0
005c14  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005c18  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005c1c  fa910040  vextracti.f r3, 0(vr1)
005c20  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005c24  7a110040  vextracti.f r2, 0(vr0)
005c28  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005c2c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005c30  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005c34  8b9c0811  add.s r25, r17, r16
005c38  0b9d0711  add.s r26, r15, r16
005c3c  1f050501  addli r10, r10, 128
005c40  1f080804  addli r16, r16, 512
005c44  9f800c18  addli r1, r25, 3072
005c48  1f830c19  addli r6, r25, 3200
005c4c  42140d02  vload_mask16.mz vr8{mr1}, 0(r26)
005c50  9f098d01  addli r19, r26, 192
005c54  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
005c58  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
005c5c  9f808c18  addli r1, r25, 3136
005c60  1f838c19  addli r6, r25, 3264
005c64  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
005c68  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
005c6c  9f000d01  addli r1, r26, 128
005c70  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
005c74  1f038d00  addli r6, r26, 64
005c78  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005c7c  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
005c80  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005c84  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
005c88  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005c8c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005c90  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
005c94  9f800c1a  addli r1, r25, 3328
005c98  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005c9c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005ca0  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
005ca4  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
005ca8  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
005cac  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
005cb0  9f808c1a  addli r1, r25, 3392
005cb4  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
005cb8  9f090d02  addli r19, r26, 256
005cbc  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005cc0  1f030d03  addli r6, r26, 384
005cc4  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
005cc8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005ccc  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
005cd0  9f800c1b  addli r1, r25, 3456
005cd4  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
005cd8  9f8c8c1b  addli r25, r25, 3520
005cdc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005ce0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005ce4  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
005ce8  9f008d02  addli r1, r26, 320
005cec  4a950c02  vloads_mask16.mz vr10{mr1}, 0(r25)
005cf0  9f0c8d03  addli r25, r26, 448
005cf4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005cf8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005cfc  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
005d00  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005d04  c2940c02  vload_mask16.mz vr9{mr1}, 0(r25)
005d08  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005d0c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005d10  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
005d14  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005d18  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
005d1c  93002505  setlt.u r1, r10, r18
005d20  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005d24  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005d28  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005d2c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005d30  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005d34  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005d38  46907c02  vstore_mask16.mz vr7{mr1}, 0(r25)
005d3c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005d40  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005d44  bbcb00fe  bneq r1, zero, -272
005d48  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005d4c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005d50  9f000002  addli r1, zero, 256
005d54  6af100c0  vsrl.p vr2, r1, vr0
005d58  eaf110c0  vsrl.p vr3, r1, vr1
005d5c  9f000001  addli r1, zero, 128
005d60  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d64  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d68  6af100c0  vsrl.p vr2, r1, vr0
005d6c  eaf110c0  vsrl.p vr3, r1, vr1
005d70  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d74  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d78  6af10ac0  vsrl.p vr2, r21, vr0
005d7c  eaf11ac0  vsrl.p vr3, r21, vr1
005d80  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d84  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d88  6a710bc0  vsrl.p vr2, r22, vr0
005d8c  ea711bc0  vsrl.p vr3, r22, vr1
005d90  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d94  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d98  fa100040  vextracti.f r1, 0(vr0)
005d9c  7a950040  vextracti.f r10, 0(vr1)
005da0  0b631110  add.f.rn r6, r2, r1
005da4  8be1a110  add.f.rn r3, r3, r10
005da8  8b807230  div.u r1, r5, r7
005dac  00350002  core_id r10
005db0  1f010000  addli r2, zero, 0
005db4  9bb06000  slli r1, r1, 6
005db8  9b800004  andi r1, r1, 64
005dbc  9790a000  or r1, r1, r10
005dc0  1bb52000  slli r10, r1, 2
005dc4  9b80e007  andi r1, r1, 126
005dc8  0b187511  add.s r16, r10, r23
005dcc  9bb02000  slli r1, r1, 2
005dd0  73606800  stores.w r6, 0(r16)
005dd4  0b13c511  add.s r6, r10, r28
005dd8  1b154500  ori r10, r10, 4
005ddc  1f080000  addli r16, zero, 0
005de0  73603300  stores.w r3, 0(r6)
005de4  8b117511  add.s r3, r10, r23
005de8  0b937011  add.s r6, r1, r23
005dec  0b15c511  add.s r10, r10, r28
005df0  8b90c011  add.s r1, r1, r28
005df4  00a00300  mfence { lm, sm, gm }
005df8  80210c04  csr_set csr3, r24
005dfc  00d00100  sync_group
005e00  eb590f00  load.d r[20:21], 0(r30)
005e04  efc10100  loads.w r3, 0(r3)
005e08  6f430300  loads.w r6, 0(r6)
005e0c  6f450500  loads.w r10, 0(r10)
005e10  efc00000  loads.w r1, 0(r1)
005e14  8ba6d910  add.ul r[14:15], r[20:21], r[14:15]
005e18  8be16110  add.f.rn r3, r3, r6
005e1c  8b601510  add.f.rn r1, r10, r1
005e20  2b05003a  lui r10, 237568
005e24  0be3a120  mul.f.rn r6, r3, r10
005e28  8be0a020  mul.f.rn r1, r1, r10
005e2c  8b616320  mul.f.rn r3, r6, r6
005e30  0b650358  neg.f r10, r6
005e34  8be03018  sub.f.rn r1, r1, r3
005e38  e3013f00  loadli.w r3,  24(r30)
005e3c  8be03010  add.f.rn r1, r1, r3
005e40  ab01803f  lui r3, 260096
005e44  8f800008  sqrt.f.rn r1, r1
005e48  8f811118  div.f.rn r3, r3, r1
005e4c  0b9d2510  add.s r26, r11, r2
005e50  0b932710  add.s r6, r15, r2
005e54  8b1c2610  add.s r25, r12, r2
005e58  9f098d00  addli r19, r26, 64
005e5c  9f008300  addli r1, r6, 64
005e60  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
005e64  4a110d02  vloads_mask16.mz vr2{mr1}, 0(r26)
005e68  4a920c02  vloads_mask16.mz vr4{mr1}, 0(r25)
005e6c  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
005e70  9f898c00  addli r19, r25, 64
005e74  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
005e78  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
005e7c  9f094800  addli r19, r16, 32
005e80  12100502  vadd.f.mz.rn vr0{mr1}, r10, vr0
005e84  93093207  setle.u r19, r4, r19
005e88  92101502  vadd.f.mz.rn vr1{mr1}, r10, vr1
005e8c  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
005e90  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
005e94  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
005e98  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
005e9c  46104302  vstore_mask16.mz vr4{mr1}, 0(r6)
005ea0  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005ea4  bb910900  bneq r19, zero, 100
005ea8  9f090d01  addli r19, r26, 128
005eac  1f8a0c01  addli r20, r25, 128
005eb0  9f000301  addli r1, r6, 128
005eb4  1f038301  addli r6, r6, 192
005eb8  1f088800  addli r16, r16, 64
005ebc  1f010102  addli r2, r2, 256
005ec0  4a910902  vloads_mask16.mz vr2{mr1}, 0(r19)
005ec4  9f098d01  addli r19, r26, 192
005ec8  ca110a02  vloads_mask16.mz vr3{mr1}, 0(r20)
005ecc  1f8a8c01  addli r20, r25, 192
005ed0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
005ed4  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
005ed8  4a920902  vloads_mask16.mz vr4{mr1}, 0(r19)
005edc  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
005ee0  93094804  setlt.u r19, r16, r4
005ee4  12100502  vadd.f.mz.rn vr0{mr1}, r10, vr0
005ee8  92101502  vadd.f.mz.rn vr1{mr1}, r10, vr1
005eec  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
005ef0  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
005ef4  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
005ef8  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
005efc  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
005f00  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005f04  3bad09fe  bneq r19, zero, -184
005f08  ab0000f0  lui r1, 983040
005f0c  00a00000  mfence { lm }
005f10  97901400  or r1, r9, r1
005f14  ffb0f600  s_lm2gm r1, r15, 0(r[14:15])
005f18  00a00200  mfence { lm, gm }
005f1c  63481f00  loadli.w r16,  12(r30)
005f20  db31ffff  j -1652
005f24  63012f00  loadli.w r2,  16(r30)
005f28  ab0100f0  lui r3, 983040
005f2c  1b312100  slli r2, r2, 2
005f30  17113100  or r2, r2, r3
005f34  ab910200  lui r3, 41
005f38  9f810108  addli r3, r3, 1024
005f3c  7f013400  l_gm2sm r2, r3, 0(r[9:10])
005f40  2bf10000  lui r2, 15
005f44  e3411f00  loadli.w r3,  12(r30)
005f48  00200300  mfence { sm, gm }
005f4c  1b11f1ff  ori r2, r2, 4095
005f50  80210104  csr_set csr3, r2
005f54  00d00100  sync_group
005f58  4bdf1100  ble.s r3, r1, 980
005f5c  e3012f00  loadli.w r3,  16(r30)
005f60  e3422f00  loadli.w r5,  20(r30)
005f64  ab780200  lui r17, 39
005f68  2b890200  lui r18, 40
005f6c  ab990200  lui r19, 41
005f70  9f038fd7  addli r7, r30, -5184
005f74  1f140000  addli r8, zero, 1
005f78  1f050002  addli r10, zero, 256
005f7c  1f060001  addli r12, zero, 128
005f80  9f068000  addli r13, zero, 64
005f84  1f084000  addli r16, zero, 32
005f88  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005f8c  9f880808  addli r17, r17, 1024
005f90  1f090908  addli r18, r18, 1024
005f94  9f890908  addli r19, r19, 1024
005f98  0b925110  add.s r4, r3, r5
005f9c  9bb52100  slli r11, r3, 2
005fa0  33810108  fix2float.rn r2, r3
005fa4  9f71f2ff  addli r3, r4, -1
005fa8  1bb22200  slli r4, r5, 2
005fac  67082fd4  storeli.w r2, -5504(r30)
005fb0  1f010fd7  addli r2, r30, -5248
005fb4  670cbfd4  storeli.w r11, -5440(r30)
005fb8  8b925130  div.s r5, r3, r5
005fbc  abf1ffff  lui r3, 1048575
005fc0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005fc4  9b94f1ff  ori r9, r3, 4095
005fc8  5b080000  j 64
005fcc  1f038fd6  addli r6, r30, -5312
005fd0  6b510f00  load.d r[3:4], 0(r30)
005fd4  6b5a0300  load.d r[21:22], 0(r6)
005fd8  00a00000  mfence { lm }
005fdc  00530102  load_param_i r6, 2
005fe0  e3058fd5  loadli.w r11,  -5440(r30)
005fe4  8b101310  add.s r1, r6, r1
005fe8  0b2a4111  add.ul r[21:22], r[3:4], r[21:22]
005fec  ab0100f0  lui r3, 983040
005ff0  97913500  or r3, r11, r3
005ff4  ff317a00  s_lm2gm r3, r7, 0(r[21:22])
005ff8  00a00200  mfence { lm, gm }
005ffc  63411f00  loadli.w r2,  12(r30)
006000  3fa02000  blt.s r1, r2, 8
006004  5b650000  j 808
006008  63011f00  loadli.w r2,  8(r30)
00600c  8b912010  add.s r3, r1, r2
006010  1f210000  addli r2, zero, 2
006014  8b91f120  mul.s r3, r3, r15
006018  339a0128  sext_int2long r[21:22], r3
00601c  ab0100f0  lui r3, 983040
006020  173c2a02  sll.d r[25:26], r[21:22], r2
006024  1f017fd6  addli r2, r30, -5320
006028  97913500  or r3, r11, r3
00602c  6b5a0100  load.d r[21:22], 0(r2)
006030  1f018fd6  addli r2, r30, -5312
006034  0b2b8a11  add.ul r[23:24], r[21:22], r[25:26]
006038  ff217b00  l_gm2lm r3, r7, 0(r[23:24])
00603c  00a00200  mfence { lm, gm }
006040  73308101  store.d r[25:26], 0(r2)
006044  bf978200  blt.s r5, r8, 484
006048  9f0b0000  addli r23, zero, 0
00604c  1f0b0000  addli r22, zero, 0
006050  1f0c0000  addli r24, zero, 0
006054  db0c0000  j 100
006058  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
00605c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006060  1f1c0c00  addli r24, r24, 1
006064  6a7105c0  vsrl.p vr2, r10, vr0
006068  ea7115c0  vsrl.p vr3, r10, vr1
00606c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006070  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006074  6a7106c0  vsrl.p vr2, r12, vr0
006078  ea7116c0  vsrl.p vr3, r12, vr1
00607c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006080  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006084  6af106c0  vsrl.p vr2, r13, vr0
006088  eaf116c0  vsrl.p vr3, r13, vr1
00608c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006090  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006094  6a7108c0  vsrl.p vr2, r16, vr0
006098  ea7118c0  vsrl.p vr3, r16, vr1
00609c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0060a0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060a4  7a110040  vextracti.f r2, 0(vr0)
0060a8  fa910040  vextracti.f r3, 0(vr1)
0060ac  8beb2b10  add.f.rn r23, r23, r2
0060b0  0b6b3b10  add.f.rn r22, r22, r3
0060b4  b7755c00  beq r24, r5, 380
0060b8  9f010c00  addli r3, r24, 0
0060bc  3730a700  beq r14, r10, 12
0060c0  97219c00  xor r3, r24, r9
0060c4  8b913210  add.s r3, r5, r3
0060c8  1f010fd7  addli r2, r30, -5248
0060cc  0b93e120  mul.s r6, r3, r14
0060d0  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0060d4  0b936718  sub.s r6, r15, r6
0060d8  8b1ce340  min.s r25, r6, r14
0060dc  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0060e0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0060e4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0060e8  bfcd8cfe  blt.s r25, r8, -144
0060ec  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0060f0  1f0d0000  addli r26, zero, 0
0060f4  8b1d3220  mul.s r27, r4, r3
0060f8  1f0e8fd7  addli r28, r30, -5184
0060fc  9f850800  addli r11, r17, 0
006100  92304002  vadd.s.mz vr1{mr1}, zero, vr4
006104  12314002  vadd.s.mz vr2{mr1}, zero, vr4
006108  92314002  vadd.s.mz vr3{mr1}, zero, vr4
00610c  8b91b511  add.s r3, r11, r27
006110  0b13be11  add.s r6, r28, r27
006114  1f818100  addli r2, r3, 64
006118  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
00611c  1f8a8101  addli r20, r3, 192
006120  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
006124  9f0a8301  addli r21, r6, 192
006128  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
00612c  1f810101  addli r2, r3, 128
006130  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
006134  1f0a0301  addli r20, r6, 128
006138  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
00613c  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
006140  c2150a02  vload_mask16.mz vr11{mr1}, 0(r20)
006144  1f018300  addli r2, r6, 64
006148  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
00614c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
006150  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
006154  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
006158  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
00615c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006160  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006164  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
006168  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
00616c  1f018d00  addli r2, r26, 64
006170  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
006174  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
006178  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00617c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
006180  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
006184  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
006188  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
00618c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
006190  4bab2cfe  ble.s r25, r2, -312
006194  1f8a0102  addli r20, r3, 256
006198  9f8a8102  addli r21, r3, 320
00619c  1f010302  addli r2, r6, 256
0061a0  1f0d0d01  addli r26, r26, 128
0061a4  9f850504  addli r11, r11, 512
0061a8  1f0e0e04  addli r28, r28, 512
0061ac  4a100a02  vloads_mask16.mz vr0{mr1}, 0(r20)
0061b0  1f8a0103  addli r20, r3, 384
0061b4  9f818103  addli r3, r3, 448
0061b8  ca920a02  vloads_mask16.mz vr5{mr1}, 0(r21)
0061bc  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
0061c0  ca130a02  vloads_mask16.mz vr7{mr1}, 0(r20)
0061c4  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
0061c8  9f010303  addli r3, r6, 384
0061cc  1f0a8302  addli r20, r6, 320
0061d0  1f038303  addli r6, r6, 448
0061d4  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
0061d8  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
0061dc  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0061e0  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
0061e4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0061e8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0061ec  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0061f0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0061f4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0061f8  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
0061fc  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
006200  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
006204  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006208  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
00620c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006210  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006214  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
006218  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00621c  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
006220  bf3b9dff  blt.s r26, r25, -276
006224  dbc6ffff  j -460
006228  1f0b0000  addli r22, zero, 0
00622c  9f0b0000  addli r23, zero, 0
006230  00a00000  mfence { lm }
006234  3fe687fe  blt.s r15, r8, -616
006238  63010fd5  loadli.w r2,  -5504(r30)
00623c  9f050000  addli r11, zero, 0
006240  8f812b18  div.f.rn r3, r23, r2
006244  0f032b18  div.f.rn r6, r22, r2
006248  63013f00  loadli.w r2,  24(r30)
00624c  0beb3120  mul.f.rn r22, r3, r3
006250  0b636319  sub.f.rn r6, r6, r22
006254  0beb0158  neg.f r22, r3
006258  9f010000  addli r3, zero, 0
00625c  0b632310  add.f.rn r6, r6, r2
006260  2b01803f  lui r2, 260096
006264  0f030308  sqrt.f.rn r6, r6
006268  0f036118  div.f.rn r6, r2, r6
00626c  0b9c2511  add.s r24, r11, r18
006270  8b9bb310  add.s r23, r7, r11
006274  8b9c3511  add.s r25, r11, r19
006278  4a110c02  vloads_mask16.mz vr2{mr1}, 0(r24)
00627c  1f0c8c00  addli r24, r24, 64
006280  1f8d8b00  addli r26, r23, 64
006284  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
006288  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
00628c  4a120c02  vloads_mask16.mz vr4{mr1}, 0(r24)
006290  1f8c8c00  addli r24, r25, 64
006294  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
006298  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
00629c  1f8c4100  addli r24, r3, 32
0062a0  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
0062a4  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
0062a8  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
0062ac  8a113302  vmul.f.mz.rn vr3{mr1}, r6, vr3
0062b0  a6922002  vmac.f.mz.rn vr5{mr1}, vr1, vr2
0062b4  26934102  vmac.f.mz.rn vr6{mr1}, vr3, vr4
0062b8  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
0062bc  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
0062c0  4bb487ff  ble.s r15, r24, -756
0062c4  8b1cb910  add.s r25, r18, r11
0062c8  0b9db910  add.s r26, r19, r11
0062cc  1f8c0b01  addli r24, r23, 128
0062d0  9f8b8b01  addli r23, r23, 192
0062d4  9f818100  addli r3, r3, 64
0062d8  9f850502  addli r11, r11, 256
0062dc  9f8d0c01  addli r27, r25, 128
0062e0  1f0e0d01  addli r28, r26, 128
0062e4  9f8c8c01  addli r25, r25, 192
0062e8  1f0d8d01  addli r26, r26, 192
0062ec  c2100c02  vload_mask16.mz vr1{mr1}, 0(r24)
0062f0  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
0062f4  ca910d02  vloads_mask16.mz vr3{mr1}, 0(r27)
0062f8  4a120e02  vloads_mask16.mz vr4{mr1}, 0(r28)
0062fc  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
006300  4a130d02  vloads_mask16.mz vr6{mr1}, 0(r26)
006304  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
006308  12112b02  vadd.f.mz.rn vr2{mr1}, r22, vr2
00630c  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
006310  0a112302  vmul.f.mz.rn vr2{mr1}, r6, vr2
006314  26923002  vmac.f.mz.rn vr4{mr1}, vr1, vr3
006318  26135102  vmac.f.mz.rn vr6{mr1}, vr2, vr5
00631c  46104c02  vstore_mask16.mz vr4{mr1}, 0(r24)
006320  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
006324  3fadf1fe  blt.s r3, r15, -184
006328  db94ffff  j -860
00632c  9f0e8fd3  addli sp, r30, -5696
006330  e38f2e2c  loadli.w r31,  5648(sp)
006334  63cf2e2c  loadli.w r30,  5652(sp)
006338  638e3e2c  loadli.w r28,  5656(sp)
00633c  e3cd3e2c  loadli.w r27,  5660(sp)
006340  638d4e2c  loadli.w r26,  5664(sp)
006344  e3cc4e2c  loadli.w r25,  5668(sp)
006348  638c5e2c  loadli.w r24,  5672(sp)
00634c  e3cb5e2c  loadli.w r23,  5676(sp)
006350  638b6e2c  loadli.w r22,  5680(sp)
006354  e3ca6e2c  loadli.w r21,  5684(sp)
006358  638a7e2c  loadli.w r20,  5688(sp)
00635c  e3c97e2c  loadli.w r19,  5692(sp)
006360  9f8e8e2c  addli sp, sp, 5696
006364  5f800f00  jr r31, 0
006368  00100000  exit
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
