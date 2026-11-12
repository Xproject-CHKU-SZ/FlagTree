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
0000fc  cb215b01  ble.s r22, r21, 104
000100  ab10833a  lui r1, 239665
000104  80db0002  load_param_i r23, 1
000108  1f0c0006  addli r24, zero, 768
00010c  9f0c0008  addli r25, zero, 1024
000110  1f0d0001  addli r26, zero, 128
000114  9b9df026  ori r27, r1, 623
000118  8b904a31  div.s r1, r21, r20
00011c  6b510f02  load.d r[3:4], 32(r30)
000120  6b528f00  load.d r[5:6], 8(r30)
000124  6b530f01  load.d r[7:8], 16(r30)
000128  6b548f01  load.d r[9:10], 24(r30)
00012c  67820e00  storeli.w zero, 32(sp)
000130  e7c10e00  storeli.w zero, 28(sp)
000134  67c18e01  storeli.w r24, 20(sp)
000138  67819e01  storeli.w r25, 16(sp)
00013c  e7c0ae01  storeli.w r26, 12(sp)
000140  e781be01  storeli.w r27, 24(sp)
000144  73b02e00  store.d r[3:4], 0(sp)
000148  6b510f00  load.d r[3:4], 0(r30)
00014c  8b903031  div.s r1, r1, r19
000150  9bb07000  slli r1, r1, 7
000154  e7801e00  storeli.w r1, 8(sp)
000158  572e0000  jal 368
00015c  8b9a7a11  add.s r21, r21, r23
000160  bfee6aff  blt.s r21, r22, -72
000164  9f8e8e00  addli sp, sp, 64
000168  00a00300  mfence { lm, sm, gm }
00016c  00100000  exit
000170  9f8e8ed3  addli sp, sp, -5696
000174  67c1ee2d  storeli.w r30, 5652(sp)
000178  1f8f8e2c  addli r30, sp, 5696
00017c  1f250000  addli r10, zero, 2
000180  e7c33e2d  storeli.w r19, 5692(sp)
000184  e7834e2d  storeli.w r20, 5688(sp)
000188  67c35e2d  storeli.w r21, 5684(sp)
00018c  67836e2d  storeli.w r22, 5680(sp)
000190  e7c27e2d  storeli.w r23, 5676(sp)
000194  e7828e2d  storeli.w r24, 5672(sp)
000198  67c29e2d  storeli.w r25, 5668(sp)
00019c  6782ae2d  storeli.w r26, 5664(sp)
0001a0  e7c1be2d  storeli.w r27, 5660(sp)
0001a4  e781ce2d  storeli.w r28, 5656(sp)
0001a8  6781fe2d  storeli.w r31, 5648(sp)
0001ac  e3004f00  loadli.w r1,  32(r30)
0001b0  63472f00  loadli.w r14,  20(r30)
0001b4  e3072f00  loadli.w r15,  16(r30)
0001b8  63481f00  loadli.w r16,  12(r30)
0001bc  9f057fd6  addli r11, r30, -5320
0001c0  73b02500  store.d r[3:4], 0(r11)
0001c4  3f511500  blt.s r10, r1, 84
0001c8  1f110000  addli r2, zero, 1
0001cc  b7a92004  beq r1, r2, 2664
0001d0  1f210000  addli r2, zero, 2
0001d4  3be82004  bneq r1, r2, 2584
0001d8  e3403f00  loadli.w r1,  28(r30)
0001dc  37f60012  beq r1, zero, 9628
0001e0  80300002  core_id r1
0001e4  1f210000  addli r2, zero, 2
0001e8  37df2024  beq r1, r2, 19412
0001ec  1f110000  addli r2, zero, 1
0001f0  37be2024  beq r1, r2, 19340
0001f4  bb9f0024  bneq r1, zero, 19428
0001f8  63012f00  loadli.w r2,  16(r30)
0001fc  ab0100f0  lui r3, 983040
000200  1b311100  slli r2, r2, 1
000204  17113100  or r2, r2, r3
000208  ab910100  lui r3, 25
00020c  9f810100  addli r3, r3, 0
000210  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000214  db780900  j 19396
000218  1f310000  addli r2, zero, 3
00021c  37e92004  beq r1, r2, 2648
000220  1f410000  addli r2, zero, 4
000224  3ba72004  bneq r1, r2, 2504
000228  e3002f00  loadli.w r1,  16(r30)
00022c  1f010010  addli r2, zero, 2048
000230  bbeb2008  bneq r1, r2, 4856
000234  e3403f00  loadli.w r1,  28(r30)
000238  b7880018  beq r1, zero, 12832
00023c  80300002  core_id r1
000240  ab070000  lui r15, 0
000244  1f150000  addli r10, zero, 1
000248  9f058fd7  addli r11, r30, -5184
00024c  1f068000  addli r12, zero, 64
000250  9f060010  addli r13, zero, 2048
000254  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
000258  1bb15000  slli r2, r1, 5
00025c  80500102  load_param_i r1, 2
000260  9f870700  addli r15, r15, 0
000264  9bb15000  slli r3, r1, 5
000268  1f070100  addli r14, r2, 0
00026c  33080728  zext_int2long r[17:18], r14
000270  2b0900f0  lui r18, 983040
000274  1738a802  sll.d r[17:18], r[17:18], r10
000278  17192601  or r18, r12, r18
00027c  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000280  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000284  1b382700  slli r16, r14, 2
000288  0b97e110  add.s r14, r3, r14
00028c  00a00200  mfence { lm, gm }
000290  c2800502  vload.mz vr1{mr1}, 0(r11)
000294  9308d704  setlt.u r17, r14, r13
000298  0b18f810  add.s r16, r16, r15
00029c  1f098800  addli r18, r16, 64
0002a0  66c11180  vmerge_l.hf vr2, vr3, vr1
0002a4  e6c011a0  vmerge_h.hf vr1, vr3, vr1
0002a8  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
0002ac  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
0002b0  bbfe08fe  bneq r17, zero, -68
0002b4  00320002  core_id r4
0002b8  9bb27000  slli r5, r1, 7
0002bc  1f160000  addli r12, zero, 1
0002c0  9f068fd7  addli r13, r30, -5184
0002c4  1f078000  addli r14, zero, 64
0002c8  1f080010  addli r16, zero, 2048
0002cc  9f080100  addli r17, r2, 0
0002d0  00a00000  mfence { lm }
0002d4  9b357200  slli r11, r4, 7
0002d8  2b220000  lui r4, 2
0002dc  1f020200  addli r4, r4, 0
0002e0  0b954510  add.s r10, r11, r4
0002e4  33890828  zext_int2long r[19:20], r17
0002e8  2b0a00f0  lui r20, 983040
0002ec  8b983810  add.s r17, r17, r3
0002f0  1739c902  sll.d r[19:20], r[19:20], r12
0002f4  171a4701  or r20, r14, r20
0002f8  0b292311  add.ul r[19:20], r[7:8], r[19:20]
0002fc  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
000300  13890805  setlt.u r18, r17, r16
000304  9f098500  addli r19, r10, 64
000308  00a00200  mfence { lm, gm }
00030c  c2800602  vload.mz vr1{mr1}, 0(r13)
000310  66c11180  vmerge_l.hf vr2, vr3, vr1
000314  e6c011a0  vmerge_h.hf vr1, vr3, vr1
000318  4e102502  vstores_mask16.mz vr2{mr1}, 0(r10)
00031c  0b155510  add.s r10, r10, r5
000320  4e901902  vstores_mask16.mz vr1{mr1}, 0(r19)
000324  3b0f09fe  bneq r18, zero, -64
000328  2b450000  lui r10, 4
00032c  9f130000  addli r7, zero, 1
000330  1f068000  addli r12, zero, 64
000334  9f060010  addli r13, zero, 2048
000338  00a00000  mfence { lm }
00033c  1f050500  addli r10, r10, 0
000340  0b93a510  add.s r6, r11, r10
000344  9f058fd7  addli r11, r30, -5184
000348  33080128  zext_int2long r[17:18], r2
00034c  2b0700f0  lui r14, 983040
000350  0b113110  add.s r2, r2, r3
000354  17387802  sll.d r[17:18], r[17:18], r7
000358  1717e600  or r14, r12, r14
00035c  0b280411  add.ul r[17:18], r[9:10], r[17:18]
000360  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000364  1307d104  setlt.u r14, r2, r13
000368  1f088300  addli r16, r6, 64
00036c  00a00200  mfence { lm, gm }
000370  c2800502  vload.mz vr1{mr1}, 0(r11)
000374  66c11180  vmerge_l.hf vr2, vr3, vr1
000378  e6c011a0  vmerge_h.hf vr1, vr3, vr1
00037c  4e102302  vstores_mask16.mz vr2{mr1}, 0(r6)
000380  0b135310  add.s r6, r6, r5
000384  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000388  3b0f07fe  bneq r14, zero, -64
00038c  2bf10000  lui r2, 15
000390  80310002  core_id r3
000394  00a00300  mfence { lm, sm, gm }
000398  9f020006  addli r5, zero, 768
00039c  1b11f1ff  ori r2, r2, 4095
0003a0  9b811100  andi r3, r3, 1
0003a4  80210104  csr_set csr3, r2
0003a8  1f010006  addli r2, zero, 768
0003ac  00d00100  sync_group
0003b0  670c3fd4  storeli.w r3, -5440(r30)
0003b4  37a00100  beq r3, zero, 8
0003b8  9f02000a  addli r5, zero, 1280
0003bc  e3411f00  loadli.w r3,  12(r30)
0003c0  e3441f00  loadli.w r9,  12(r30)
0003c4  1f130000  addli r6, zero, 1
0003c8  bf8d612e  blt.s r3, r6, 24416
0003cc  e3018fd5  loadli.w r3,  -5440(r30)
0003d0  1f0a8fd7  addli r20, r30, -5184
0003d4  1bb81200  slli r16, r5, 1
0003d8  9f030000  addli r7, zero, 0
0003dc  9f787000  addli r17, zero, 63
0003e0  9f0d0005  addli r27, zero, 640
0003e4  ab06803f  lui r13, 260096
0003e8  9f0c2000  addli r25, zero, 16
0003ec  1f3b0000  addli r22, zero, 3
0003f0  1f5e1000  addli r28, zero, 13
0003f4  2bec0700  lui r24, 126
0003f8  1f2d1000  addli r26, zero, 10
0003fc  1f070003  addli r14, zero, 384
000400  0b912120  mul.s r2, r3, r2
000404  9bc11000  srli r3, r1, 1
000408  80300002  core_id r1
00040c  9bc51000  srli r11, r1, 1
000410  9b302100  slli r1, r2, 2
000414  67042fd4  storeli.w r2, -5568(r30)
000418  1f814200  addli r2, r5, 32
00041c  0b994010  add.s r18, r1, r4
000420  8b99a010  add.s r19, r1, r10
000424  9bb02200  slli r1, r5, 2
000428  674f2fd2  storeli.w r2, -5644(r30)
00042c  0b114811  add.s r2, r16, r20
000430  2be27f00  lui r4, 2046
000434  8b904011  add.s r1, r1, r20
000438  9f8080ff  addli r1, r1, -64
00043c  670f1fd2  storeli.w r1, -5648(r30)
000440  9f0081ff  addli r1, r2, -64
000444  2bf100fc  lui r2, 1032207
000448  e74e1fd2  storeli.w r1, -5652(r30)
00044c  abf0ffff  lui r1, 1048575
000450  1b1401c0  ori r8, r2, 3072
000454  00a00000  mfence { lm }
000458  67003fd4  storeli.w r3, -5632(r30)
00045c  e74fbfd2  storeli.w r11, -5636(r30)
000460  e70f0fd3  storeli.w r16, -5640(r30)
000464  9b9000f8  ori r1, r1, 3968
000468  e70e1fd2  storeli.w r1, -5656(r30)
00046c  abf00000  lui r1, 15
000470  9b90f0ff  ori r1, r1, 4095
000474  67081fd6  storeli.w r1, -5248(r30)
000478  ab700000  lui r1, 7
00047c  9b9af0ff  ori r21, r1, 4095
000480  ab00ff03  lui r1, 16368
000484  9b9bf03f  ori r23, r1, 1023
000488  9f000fd5  addli r1, r30, -5504
00048c  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
000490  5b040000  j 32
000494  00a00300  mfence { lm, sm, gm }
000498  e3000fd7  loadli.w r1,  -5248(r30)
00049c  80a10004  csr_set csr3, r1
0004a0  00d00100  sync_group
0004a4  8b933310  add.s r7, r7, r3
0004a8  3fa09300  blt.s r7, r9, 8
0004ac  dbe50000  j 1836
0004b0  8b90b310  add.s r1, r7, r11
0004b4  cb8f14fe  ble.s r9, r1, -32
0004b8  63011f00  loadli.w r2,  8(r30)
0004bc  8b902010  add.s r1, r1, r2
0004c0  0b813330  div.u r2, r7, r3
0004c4  e3018fd4  loadli.w r3,  -5568(r30)
0004c8  9bb0b000  slli r1, r1, 11
0004cc  97903000  or r1, r1, r3
0004d0  9f017fd6  addli r3, r30, -5320
0004d4  b3940028  sext_int2long r[10:11], r1
0004d8  ab0000f0  lui r1, 983040
0004dc  1b316100  slli r2, r2, 6
0004e0  97b56402  sll.d r[12:13], r[10:11], r6
0004e4  ebd40100  load.d r[10:11], 0(r3)
0004e8  9f018fd6  addli r3, r30, -5312
0004ec  97101800  or r1, r16, r1
0004f0  1b010104  andi r2, r2, 64
0004f4  73b0b100  store.d r[12:13], 0(r3)
0004f8  8ba4b410  add.ul r[10:11], r[10:11], r[12:13]
0004fc  ffa04401  l_gm2lm r1, r20, 0(r[10:11])
000500  80300002  core_id r1
000504  00a00200  mfence { lm, gm }
000508  17161100  or r12, r2, r1
00050c  e340dfd3  loadli.w r1,  -5652(r30)
000510  6301efd3  loadli.w r2,  -5648(r30)
000514  e341efd3  loadli.w r3,  -5644(r30)
000518  c2800002  vload.mz vr1{mr1}, 0(r1)
00051c  9f81c1ff  addli r3, r3, -32
000520  9f0581ff  addli r11, r2, -64
000524  9f8080ff  addli r1, r1, -64
000528  93843804  setlt.u r9, r17, r3
00052c  66c111a0  vmerge_h.hf vr2, vr3, vr1
000530  e6c01180  vmerge_l.hf vr1, vr3, vr1
000534  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
000538  1f0101ff  addli r2, r2, -128
00053c  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
000540  3bef04fe  bneq r9, zero, -40
000544  00a00000  mfence { lm }
000548  e3008fd5  loadli.w r1,  -5440(r30)
00054c  3bb60000  bneq r1, zero, 396
000550  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000554  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000558  12323002  vadd.s.mz vr4{mr1}, zero, vr3
00055c  6301dfd3  loadli.w r2,  -5656(r30)
000560  9f000000  addli r1, zero, 0
000564  8b94f010  add.s r9, r1, r15
000568  8b111a10  add.s r3, r20, r1
00056c  1f010101  addli r2, r2, 128
000570  9f800004  addli r1, r1, 512
000574  1f850401  addli r10, r9, 128
000578  4a900402  vloads_mask16.mz vr0{mr1}, 0(r9)
00057c  9f858400  addli r11, r9, 64
000580  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
000584  1f888101  addli r16, r3, 192
000588  ca120502  vloads_mask16.mz vr5{mr1}, 0(r10)
00058c  1f858401  addli r10, r9, 192
000590  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
000594  9f858100  addli r11, r3, 64
000598  c2150802  vload_mask16.mz vr11{mr1}, 0(r16)
00059c  ca130502  vloads_mask16.mz vr7{mr1}, 0(r10)
0005a0  1f850101  addli r10, r3, 128
0005a4  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
0005a8  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
0005ac  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0005b0  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0005b4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0005b8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0005bc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0005c0  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0005c4  46108502  vstore_mask16.mz vr8{mr1}, 0(r10)
0005c8  1f850402  addli r10, r9, 256
0005cc  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0005d0  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0005d4  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0005d8  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
0005dc  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
0005e0  1f858402  addli r10, r9, 320
0005e4  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0005e8  1f880102  addli r16, r3, 256
0005ec  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0005f0  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0005f4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0005f8  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
0005fc  1f850403  addli r10, r9, 384
000600  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000604  9f848403  addli r9, r9, 448
000608  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00060c  4a140502  vloads_mask16.mz vr8{mr1}, 0(r10)
000610  1f858102  addli r10, r3, 320
000614  4a950402  vloads_mask16.mz vr10{mr1}, 0(r9)
000618  9f840103  addli r9, r3, 384
00061c  9f818103  addli r3, r3, 448
000620  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
000624  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000628  c2930402  vload_mask16.mz vr7{mr1}, 0(r9)
00062c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000630  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
000634  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000638  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00063c  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
000640  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000644  46106502  vstore_mask16.mz vr6{mr1}, 0(r10)
000648  1305b105  setlt.u r10, r2, r27
00064c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000650  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000654  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000658  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00065c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000660  46905402  vstore_mask16.mz vr5{mr1}, 0(r9)
000664  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000668  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00066c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000670  bb5b05fe  bneq r10, zero, -268
000674  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000678  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00067c  9f000002  addli r1, zero, 256
000680  6af100c0  vsrl.p vr2, r1, vr0
000684  eaf110c0  vsrl.p vr3, r1, vr1
000688  9f000001  addli r1, zero, 128
00068c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000690  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000694  6af100c0  vsrl.p vr2, r1, vr0
000698  eaf110c0  vsrl.p vr3, r1, vr1
00069c  9f008000  addli r1, zero, 64
0006a0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006a4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006a8  6af100c0  vsrl.p vr2, r1, vr0
0006ac  eaf110c0  vsrl.p vr3, r1, vr1
0006b0  9f004000  addli r1, zero, 32
0006b4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006b8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006bc  6af100c0  vsrl.p vr2, r1, vr0
0006c0  eaf110c0  vsrl.p vr3, r1, vr1
0006c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006cc  fa110040  vextracti.f r3, 0(vr0)
0006d0  fa940040  vextracti.f r9, 0(vr1)
0006d4  5b660000  j 816
0006d8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0006dc  2bf1ffff  lui r2, 1048575
0006e0  9f000000  addli r1, zero, 0
0006e4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0006e8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0006ec  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0006f0  1b1101f8  ori r2, r2, 3968
0006f4  8b941710  add.s r9, r15, r1
0006f8  8b111a10  add.s r3, r20, r1
0006fc  1f010101  addli r2, r2, 128
000700  9f800004  addli r1, r1, 512
000704  9f880431  addli r17, r9, 6272
000708  9f850430  addli r11, r9, 6144
00070c  1f858431  addli r10, r9, 6336
000710  1f880118  addli r16, r3, 3072
000714  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
000718  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
00071c  9f858430  addli r11, r9, 6208
000720  ca140502  vloads_mask16.mz vr9{mr1}, 0(r10)
000724  1f858118  addli r10, r3, 3136
000728  9f888119  addli r17, r3, 3264
00072c  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
000730  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
000734  9f850119  addli r11, r3, 3200
000738  42900802  vload_mask16.mz vr0{mr1}, 0(r17)
00073c  c2150502  vload_mask16.mz vr11{mr1}, 0(r10)
000740  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
000744  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
000748  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
00074c  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
000750  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
000754  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000758  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
00075c  46907502  vstore_mask16.mz vr7{mr1}, 0(r11)
000760  9f850432  addli r11, r9, 6400
000764  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
000768  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
00076c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000770  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
000774  1f88011a  addli r16, r3, 3328
000778  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
00077c  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
000780  1305e104  setlt.u r10, r2, r14
000784  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
000788  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00078c  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
000790  9f858432  addli r11, r9, 6464
000794  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000798  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00079c  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
0007a0  9f850433  addli r11, r9, 6528
0007a4  9f848433  addli r9, r9, 6592
0007a8  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
0007ac  9f85811a  addli r11, r3, 3392
0007b0  4a950402  vloads_mask16.mz vr10{mr1}, 0(r9)
0007b4  9f84011b  addli r9, r3, 3456
0007b8  9f81811b  addli r3, r3, 3520
0007bc  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
0007c0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0007c4  c2930402  vload_mask16.mz vr7{mr1}, 0(r9)
0007c8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0007cc  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
0007d0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0007d4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0007d8  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
0007dc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0007e0  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0007e4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0007e8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0007ec  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0007f0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0007f4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0007f8  46905402  vstore_mask16.mz vr5{mr1}, 0(r9)
0007fc  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000800  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000804  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000808  bb3b05fe  bneq r10, zero, -276
00080c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000810  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000814  1f010002  addli r2, zero, 256
000818  9f000000  addli r1, zero, 0
00081c  ea7111c0  vsrl.p vr3, r2, vr1
000820  6a7101c0  vsrl.p vr2, r2, vr0
000824  1f010001  addli r2, zero, 128
000828  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00082c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000830  ea7111c0  vsrl.p vr3, r2, vr1
000834  6a7101c0  vsrl.p vr2, r2, vr0
000838  1f018000  addli r2, zero, 64
00083c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000840  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000844  ea7111c0  vsrl.p vr3, r2, vr1
000848  6a7101c0  vsrl.p vr2, r2, vr0
00084c  1f014000  addli r2, zero, 32
000850  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000854  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000858  ea7111c0  vsrl.p vr3, r2, vr1
00085c  6a7101c0  vsrl.p vr2, r2, vr0
000860  2bf1ffff  lui r2, 1048575
000864  9b1501f8  ori r11, r2, 3968
000868  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00086c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000870  7a970040  vextracti.f r14, 0(vr1)
000874  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000878  fa110040  vextracti.f r3, 0(vr0)
00087c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000880  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000884  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000888  0b981710  add.s r16, r15, r1
00088c  8b141a10  add.s r9, r20, r1
000890  9f850501  addli r11, r11, 128
000894  9f800004  addli r1, r1, 512
000898  1f050818  addli r10, r16, 3072
00089c  9f080819  addli r17, r16, 3200
0008a0  1f818401  addli r2, r9, 192
0008a4  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
0008a8  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
0008ac  1f058818  addli r10, r16, 3136
0008b0  ca920802  vloads_mask16.mz vr5{mr1}, 0(r17)
0008b4  9f088819  addli r17, r16, 3264
0008b8  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
0008bc  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
0008c0  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
0008c4  1f850401  addli r10, r9, 128
0008c8  9f888400  addli r17, r9, 64
0008cc  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
0008d0  42950802  vload_mask16.mz vr10{mr1}, 0(r17)
0008d4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0008d8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0008dc  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0008e0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0008e4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0008e8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0008ec  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0008f0  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0008f4  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
0008f8  46108502  vstore_mask16.mz vr8{mr1}, 0(r10)
0008fc  1f850402  addli r10, r9, 256
000900  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
000904  1f01081a  addli r2, r16, 3328
000908  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
00090c  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
000910  1f01881a  addli r2, r16, 3392
000914  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000918  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00091c  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
000920  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000924  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000928  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
00092c  1f01081b  addli r2, r16, 3456
000930  1f08881b  addli r16, r16, 3520
000934  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
000938  1f818402  addli r2, r9, 320
00093c  4a150802  vloads_mask16.mz vr10{mr1}, 0(r16)
000940  1f880403  addli r16, r9, 384
000944  9f848403  addli r9, r9, 448
000948  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
00094c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000950  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000954  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000958  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
00095c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000960  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000964  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
000968  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00096c  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
000970  1381b505  setlt.u r2, r11, r27
000974  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000978  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00097c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000980  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000984  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000988  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
00098c  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000990  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000994  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000998  bb4b01fe  bneq r2, zero, -272
00099c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0009a0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0009a4  9f000002  addli r1, zero, 256
0009a8  6af100c0  vsrl.p vr2, r1, vr0
0009ac  eaf110c0  vsrl.p vr3, r1, vr1
0009b0  9f000001  addli r1, zero, 128
0009b4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009b8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009bc  6af100c0  vsrl.p vr2, r1, vr0
0009c0  eaf110c0  vsrl.p vr3, r1, vr1
0009c4  9f008000  addli r1, zero, 64
0009c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009d0  6af100c0  vsrl.p vr2, r1, vr0
0009d4  eaf110c0  vsrl.p vr3, r1, vr1
0009d8  9f004000  addli r1, zero, 32
0009dc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009e0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009e4  6af100c0  vsrl.p vr2, r1, vr0
0009e8  eaf110c0  vsrl.p vr3, r1, vr1
0009ec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009f0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009f4  fa100040  vextracti.f r1, 0(vr0)
0009f8  7a910040  vextracti.f r2, 0(vr1)
0009fc  8be11110  add.f.rn r3, r3, r1
000a00  8b642710  add.f.rn r9, r14, r2
000a04  ab650000  lui r11, 6
000a08  2b670000  lui r14, 6
000a0c  1b352600  slli r10, r12, 2
000a10  9f000000  addli r1, zero, 0
000a14  1f010000  addli r2, zero, 0
000a18  9f850500  addli r11, r11, 0
000a1c  1f070704  addli r14, r14, 512
000a20  9f880500  addli r17, r11, 0
000a24  0b18e510  add.s r16, r10, r14
000a28  8b151511  add.s r11, r10, r17
000a2c  73609800  stores.w r9, 0(r16)
000a30  9b144500  ori r9, r10, 4
000a34  73e03500  stores.w r3, 0(r11)
000a38  0b951411  add.s r10, r9, r17
000a3c  8b94e410  add.s r9, r9, r14
000a40  00a00300  mfence { lm, sm, gm }
000a44  e3010fd7  loadli.w r3,  -5248(r30)
000a48  80a10104  csr_set csr3, r3
000a4c  9b01e607  andi r3, r12, 126
000a50  00d00100  sync_group
000a54  6f450500  loads.w r10, 0(r10)
000a58  efc40400  loads.w r9, 0(r9)
000a5c  9bb12100  slli r3, r3, 2
000a60  8b951111  add.s r11, r3, r17
000a64  8b91e110  add.s r3, r3, r14
000a68  efc50500  loads.w r11, 0(r11)
000a6c  efc10100  loads.w r3, 0(r3)
000a70  0b65b510  add.f.rn r10, r10, r11
000a74  ab05003a  lui r11, 237568
000a78  8be13410  add.f.rn r3, r9, r3
000a7c  8b64b520  mul.f.rn r9, r10, r11
000a80  8be1b120  mul.f.rn r3, r3, r11
000a84  9f050000  addli r11, zero, 0
000a88  0be59420  mul.f.rn r10, r9, r9
000a8c  8be1a118  sub.f.rn r3, r3, r10
000a90  63053f00  loadli.w r10,  24(r30)
000a94  8be1a110  add.f.rn r3, r3, r10
000a98  0be50458  neg.f r10, r9
000a9c  8f810108  sqrt.f.rn r3, r3
000aa0  8f813618  div.f.rn r3, r13, r3
000aa4  8b142a10  add.s r9, r20, r2
000aa8  0b182910  add.s r16, r18, r2
000aac  8b982910  add.s r17, r19, r2
000ab0  9f854500  addli r11, r11, 32
000ab4  1f010101  addli r2, r2, 128
000ab8  42900402  vload_mask16.mz vr0{mr1}, 0(r9)
000abc  ca100802  vloads_mask16.mz vr1{mr1}, 0(r16)
000ac0  4a910802  vloads_mask16.mz vr2{mr1}, 0(r17)
000ac4  9f848400  addli r9, r9, 64
000ac8  c2910402  vload_mask16.mz vr3{mr1}, 0(r9)
000acc  9f048800  addli r9, r16, 64
000ad0  1f888800  addli r16, r17, 64
000ad4  4a920402  vloads_mask16.mz vr4{mr1}, 0(r9)
000ad8  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
000adc  93845504  setlt.u r9, r11, r5
000ae0  0b181a10  add.s r16, r20, r1
000ae4  9f808000  addli r1, r1, 64
000ae8  12100502  vadd.f.mz.rn vr0{mr1}, r10, vr0
000aec  92113502  vadd.f.mz.rn vr3{mr1}, r10, vr3
000af0  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
000af4  8a913102  vmul.f.mz.rn vr3{mr1}, r3, vr3
000af8  26111002  vmac.f.mz.rn vr2{mr1}, vr0, vr1
000afc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000b00  6aa01c22  vor.u.mz vr0{mr1}, r25, vr1
000b04  a6924102  vmac.f.mz.rn vr5{mr1}, vr3, vr4
000b08  6a221e22  vor.u.mz vr4{mr1}, r28, vr1
000b0c  ee3120c2  vsrl.s.mz vr3{mr1}, vr0, vr2
000b10  6e3050c2  vsrl.s.mz vr0{mr1}, vr0, vr5
000b14  ea313302  vand.s.mz vr3{mr1}, r6, vr3
000b18  6a300302  vand.s.mz vr0{mr1}, r6, vr0
000b1c  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
000b20  ea211b22  vor.u.mz vr3{mr1}, r22, vr1
000b24  ea201d22  vor.u.mz vr1{mr1}, r26, vr1
000b28  16b00202  vadd.s.mz vr0{mr1}, vr5, vr0
000b2c  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
000b30  12b00a02  vadd.s.mz vr0{mr1}, r21, vr0
000b34  eeb221c2  vsrl.s.mz vr5{mr1}, vr3, vr2
000b38  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
000b3c  6e3202c2  vsrl.s.mz vr4{mr1}, vr4, vr0
000b40  6eb001c2  vsrl.s.mz vr0{mr1}, vr3, vr0
000b44  6a312c02  vand.s.mz vr2{mr1}, r24, vr2
000b48  ea325202  vand.s.mz vr5{mr1}, r4, vr5
000b4c  ea314c02  vand.s.mz vr3{mr1}, r24, vr4
000b50  6a300202  vand.s.mz vr0{mr1}, r4, vr0
000b54  6ab12622  vor.s.mz vr2{mr1}, r13, vr2
000b58  6ab25622  vor.s.mz vr4{mr1}, r13, vr5
000b5c  6ab00622  vor.s.mz vr0{mr1}, r13, vr0
000b60  eab13622  vor.s.mz vr3{mr1}, r13, vr3
000b64  06110120  vfloat2fp16_l.rz vr2, vr2
000b68  06500020  vfloat2fp16_h.rz vr0, vr0
000b6c  06d10120  vfloat2fp16_h.rz vr2, vr3
000b70  06100220  vfloat2fp16_l.rz vr0, vr4
000b74  eeb020a2  vsll.s.mz vr1{mr1}, vr1, vr2
000b78  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000b7c  ea301402  vand.s.mz vr1{mr1}, r8, vr1
000b80  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
000b84  46000802  vstore.mz vr0{mr1}, 0(r16)
000b88  3bfc04fe  bneq r9, zero, -228
000b8c  9f058fd6  addli r11, r30, -5312
000b90  6b510f00  load.d r[3:4], 0(r30)
000b94  6308ffd3  loadli.w r16,  -5640(r30)
000b98  ab0000f0  lui r1, 983040
000b9c  1f070003  addli r14, zero, 384
000ba0  9f787000  addli r17, zero, 63
000ba4  ebd40500  load.d r[10:11], 0(r11)
000ba8  00a00000  mfence { lm }
000bac  97101800  or r1, r16, r1
000bb0  0b219110  add.ul r[3:4], r[3:4], r[10:11]
000bb4  ff304101  s_lm2gm r1, r20, 0(r[3:4])
000bb8  9f000fd5  addli r1, r30, -5504
000bbc  00a00200  mfence { lm, gm }
000bc0  e3441f00  loadli.w r9,  12(r30)
000bc4  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000bc8  e3010fd4  loadli.w r3,  -5632(r30)
000bcc  e345ffd3  loadli.w r11,  -5636(r30)
000bd0  8b933310  add.s r7, r7, r3
000bd4  3ff393fc  blt.s r7, r9, -1828
000bd8  abf00000  lui r1, 15
000bdc  9b90f0ff  ori r1, r1, 4095
000be0  80a10004  csr_set csr3, r1
000be4  00d00100  sync_group
000be8  5be80a00  j 22336
000bec  e3403f00  loadli.w r1,  28(r30)
000bf0  b7a2000a  beq r1, zero, 5288
000bf4  e3002f00  loadli.w r1,  16(r30)
000bf8  1f010010  addli r2, zero, 2048
000bfc  3bd22012  bneq r1, r2, 9364
000c00  00350002  core_id r10
000c04  9f200000  addli r1, zero, 2
000c08  b76e1524  beq r10, r1, 19384
000c0c  9f100000  addli r1, zero, 1
000c10  b75d1524  beq r10, r1, 19316
000c14  3b1f0524  bneq r10, zero, 19396
000c18  9f000040  addli r1, zero, 8192
000c1c  2b0100f0  lui r2, 983040
000c20  97902000  or r1, r1, r2
000c24  2b110200  lui r2, 33
000c28  1f010100  addli r2, r2, 0
000c2c  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000c30  5b750900  j 19368
000c34  e3403f00  loadli.w r1,  28(r30)
000c38  b7830010  beq r1, zero, 8416
000c3c  80300002  core_id r1
000c40  1f210000  addli r2, zero, 2
000c44  b7cd2022  beq r1, r2, 18288
000c48  1f110000  addli r2, zero, 1
000c4c  37c52020  beq r1, r2, 16720
000c50  3b8e0022  bneq r1, zero, 18304
000c54  63012f00  loadli.w r2,  16(r30)
000c58  ab0100f0  lui r3, 983040
000c5c  1b311100  slli r2, r2, 1
000c60  17113100  or r2, r2, r3
000c64  abd10100  lui r3, 29
000c68  9f810100  addli r3, r3, 0
000c6c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000c70  5bec0800  j 18272
000c74  e3002f00  loadli.w r1,  16(r30)
000c78  1f010010  addli r2, zero, 2048
000c7c  3bdb2006  bneq r1, r2, 3796
000c80  e3403f00  loadli.w r1,  28(r30)
000c84  37c5001a  beq r1, zero, 13648
000c88  003d0002  core_id r26
000c8c  abd70000  lui r15, 13
000c90  00510102  load_param_i r2, 2
000c94  1f150000  addli r10, zero, 1
000c98  9f058fd7  addli r11, r30, -5184
000c9c  1f068000  addli r12, zero, 64
000ca0  9f060010  addli r13, zero, 2048
000ca4  9b305d00  slli r1, r26, 5
000ca8  9b315100  slli r3, r2, 5
000cac  9f8707f0  addli r15, r15, -2048
000cb0  1f870000  addli r14, r1, 0
000cb4  33080728  zext_int2long r[17:18], r14
000cb8  2b0900f0  lui r18, 983040
000cbc  1738a802  sll.d r[17:18], r[17:18], r10
000cc0  17192601  or r18, r12, r18
000cc4  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000cc8  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000ccc  1b382700  slli r16, r14, 2
000cd0  0b97e110  add.s r14, r3, r14
000cd4  00a00200  mfence { lm, gm }
000cd8  42800502  vload.mz vr0{mr1}, 0(r11)
000cdc  9308d704  setlt.u r17, r14, r13
000ce0  0b18f810  add.s r16, r16, r15
000ce4  1f098800  addli r18, r16, 64
000ce8  86300000  vfp162float_l.rn vr1, vr0
000cec  06700000  vfp162float_h.rn vr0, vr0
000cf0  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000cf4  4e100902  vstores_mask16.mz vr0{mr1}, 0(r18)
000cf8  bbfe08fe  bneq r17, zero, -68
000cfc  abf20000  lui r5, 15
000d00  1b357d00  slli r10, r26, 7
000d04  1b327100  slli r4, r2, 7
000d08  1f160000  addli r12, zero, 1
000d0c  9f068fd7  addli r13, r30, -5184
000d10  1f078000  addli r14, zero, 64
000d14  1f080010  addli r16, zero, 2048
000d18  9f880000  addli r17, r1, 0
000d1c  00a00000  mfence { lm }
000d20  9f8202f0  addli r5, r5, -2048
000d24  8b155510  add.s r11, r10, r5
000d28  33890828  zext_int2long r[19:20], r17
000d2c  2b0a00f0  lui r20, 983040
000d30  8b983810  add.s r17, r17, r3
000d34  1739c902  sll.d r[19:20], r[19:20], r12
000d38  171a4701  or r20, r14, r20
000d3c  0b292311  add.ul r[19:20], r[7:8], r[19:20]
000d40  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
000d44  13890805  setlt.u r18, r17, r16
000d48  9f898500  addli r19, r11, 64
000d4c  00a00200  mfence { lm, gm }
000d50  42800602  vload.mz vr0{mr1}, 0(r13)
000d54  86300000  vfp162float_l.rn vr1, vr0
000d58  06700000  vfp162float_h.rn vr0, vr0
000d5c  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
000d60  8b954510  add.s r11, r11, r4
000d64  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
000d68  3b0f09fe  bneq r18, zero, -64
000d6c  ab130100  lui r7, 17
000d70  9f058fd7  addli r11, r30, -5184
000d74  1f068000  addli r12, zero, 64
000d78  9f060010  addli r13, zero, 2048
000d7c  00a00000  mfence { lm }
000d80  9f8303f0  addli r7, r7, -2048
000d84  0b137510  add.s r6, r10, r7
000d88  1f150000  addli r10, zero, 1
000d8c  33880028  zext_int2long r[17:18], r1
000d90  2b0700f0  lui r14, 983040
000d94  8b903010  add.s r1, r1, r3
000d98  1738a802  sll.d r[17:18], r[17:18], r10
000d9c  1717e600  or r14, r12, r14
000da0  0b280411  add.ul r[17:18], r[9:10], r[17:18]
000da4  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000da8  1387d004  setlt.u r14, r1, r13
000dac  1f088300  addli r16, r6, 64
000db0  00a00200  mfence { lm, gm }
000db4  42800502  vload.mz vr0{mr1}, 0(r11)
000db8  86300000  vfp162float_l.rn vr1, vr0
000dbc  06700000  vfp162float_h.rn vr0, vr0
000dc0  4e101302  vstores_mask16.mz vr1{mr1}, 0(r6)
000dc4  0b134310  add.s r6, r6, r4
000dc8  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
000dcc  3b0f07fe  bneq r14, zero, -64
000dd0  abf00000  lui r1, 15
000dd4  00a00300  mfence { lm, sm, gm }
000dd8  9b011d00  andi r3, r26, 1
000ddc  1f020006  addli r4, zero, 768
000de0  9b90f0ff  ori r1, r1, 4095
000de4  80a10004  csr_set csr3, r1
000de8  9f000006  addli r1, zero, 768
000dec  00d00100  sync_group
000df0  67083fd6  storeli.w r3, -5248(r30)
000df4  37a00100  beq r3, zero, 8
000df8  1f02000a  addli r4, zero, 1280
000dfc  e3411f00  loadli.w r3,  12(r30)
000e00  1f130000  addli r6, zero, 1
000e04  bf94612a  blt.s r3, r6, 21796
000e08  e3010fd7  loadli.w r3,  -5248(r30)
000e0c  1f088fd7  addli r16, r30, -5184
000e10  1b441100  srli r8, r2, 1
000e14  1f014200  addli r2, r4, 32
000e18  9b351200  slli r11, r4, 1
000e1c  ab3d0100  lui r27, 19
000e20  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000e24  1f030000  addli r6, zero, 0
000e28  9b441d00  srli r9, r26, 1
000e2c  1f7a7000  addli r20, zero, 63
000e30  9f0b0005  addli r23, zero, 640
000e34  1f054000  addli r10, zero, 32
000e38  1f0b0003  addli r22, zero, 384
000e3c  670c2fd4  storeli.w r2, -5440(r30)
000e40  0b910511  add.s r2, r11, r16
000e44  9f8d0df0  addli r27, r27, -2048
000e48  8b901120  mul.s r1, r3, r1
000e4c  67041fd6  storeli.w r1, -5312(r30)
000e50  9bb02000  slli r1, r1, 2
000e54  0b965010  add.s r12, r1, r5
000e58  8b967010  add.s r13, r1, r7
000e5c  9b302200  slli r1, r4, 2
000e60  ab320100  lui r5, 19
000e64  8b900011  add.s r1, r1, r16
000e68  9f8202f4  addli r5, r5, -1536
000e6c  9f8080ff  addli r1, r1, -64
000e70  67081fd4  storeli.w r1, -5504(r30)
000e74  9f0081ff  addli r1, r2, -64
000e78  1f010fd4  addli r2, r30, -5632
000e7c  67041fd4  storeli.w r1, -5568(r30)
000e80  abf0ffff  lui r1, 1048575
000e84  00a00000  mfence { lm }
000e88  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000e8c  63411f00  loadli.w r2,  12(r30)
000e90  9b9000f8  ori r1, r1, 3968
000e94  e74f1fd2  storeli.w r1, -5636(r30)
000e98  abf00000  lui r1, 15
000e9c  1b9ef0ff  ori r28, r1, 4095
000ea0  5b040000  j 32
000ea4  00a00300  mfence { lm, sm, gm }
000ea8  80210e04  csr_set csr3, r28
000eac  00d00100  sync_group
000eb0  63411f00  loadli.w r2,  12(r30)
000eb4  0b138310  add.s r6, r6, r8
000eb8  3f202300  blt.s r6, r2, 8
000ebc  dba3ffff  j -740
000ec0  8b109310  add.s r1, r6, r9
000ec4  cb0f11fe  ble.s r2, r1, -32
000ec8  63011f00  loadli.w r2,  8(r30)
000ecc  e3018fd6  loadli.w r3,  -5312(r30)
000ed0  8b902010  add.s r1, r1, r2
000ed4  0b018330  div.u r2, r6, r8
000ed8  9bb0b000  slli r1, r1, 11
000edc  97903000  or r1, r1, r3
000ee0  9f110000  addli r3, zero, 1
000ee4  b3980028  sext_int2long r[18:19], r1
000ee8  ab0000f0  lui r1, 983040
000eec  1b316100  slli r2, r2, 6
000ef0  97b83802  sll.d r[18:19], r[18:19], r3
000ef4  9f017fd6  addli r3, r30, -5320
000ef8  97901500  or r1, r11, r1
000efc  1b010104  andi r2, r2, 64
000f00  6bdc0100  load.d r[25:26], 0(r3)
000f04  1711a101  or r2, r2, r26
000f08  0b2c1c11  add.ul r[25:26], r[25:26], r[18:19]
000f0c  ff200c01  l_gm2lm r1, r16, 0(r[25:26])
000f10  00a00200  mfence { lm, gm }
000f14  e3008fd4  loadli.w r1,  -5568(r30)
000f18  e3010fd5  loadli.w r3,  -5504(r30)
000f1c  e3038fd5  loadli.w r7,  -5440(r30)
000f20  c2800002  vload.mz vr1{mr1}, 0(r1)
000f24  9f83c3ff  addli r7, r7, -32
000f28  9f8981ff  addli r19, r3, -64
000f2c  9f8080ff  addli r1, r1, -64
000f30  13077a04  setlt.u r14, r20, r7
000f34  06f10000  vfp162float_h.rn vr2, vr1
000f38  86b00000  vfp162float_l.rn vr1, vr1
000f3c  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
000f40  9f8101ff  addli r3, r3, -128
000f44  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
000f48  3b6f07fe  bneq r14, zero, -40
000f4c  00a00000  mfence { lm }
000f50  e3000fd7  loadli.w r1,  -5248(r30)
000f54  3bc60000  bneq r1, zero, 400
000f58  9f000fd4  addli r1, r30, -5632
000f5c  6347ffd3  loadli.w r14,  -5636(r30)
000f60  9f010000  addli r3, zero, 0
000f64  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000f68  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000f6c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000f70  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000f74  8b90f110  add.s r1, r3, r15
000f78  8b133810  add.s r7, r16, r3
000f7c  1f070701  addli r14, r14, 128
000f80  9f810104  addli r3, r3, 512
000f84  9f890001  addli r19, r1, 128
000f88  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
000f8c  9f8a8000  addli r21, r1, 64
000f90  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
000f94  1f8c8301  addli r24, r7, 192
000f98  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
000f9c  9f898001  addli r19, r1, 192
000fa0  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
000fa4  9f8a8300  addli r21, r7, 64
000fa8  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
000fac  ca930902  vloads_mask16.mz vr7{mr1}, 0(r19)
000fb0  9f890301  addli r19, r7, 128
000fb4  42950a02  vload_mask16.mz vr10{mr1}, 0(r21)
000fb8  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
000fbc  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
000fc0  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
000fc4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
000fc8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
000fcc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000fd0  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
000fd4  46908902  vstore_mask16.mz vr8{mr1}, 0(r19)
000fd8  9f890002  addli r19, r1, 256
000fdc  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000fe0  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
000fe4  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000fe8  46905a02  vstore_mask16.mz vr5{mr1}, 0(r21)
000fec  4a900902  vloads_mask16.mz vr0{mr1}, 0(r19)
000ff0  9f898002  addli r19, r1, 320
000ff4  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
000ff8  1f8c0302  addli r24, r7, 256
000ffc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001000  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
001004  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001008  4a930902  vloads_mask16.mz vr6{mr1}, 0(r19)
00100c  9f890003  addli r19, r1, 384
001010  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
001014  9f808003  addli r1, r1, 448
001018  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00101c  4a940902  vloads_mask16.mz vr8{mr1}, 0(r19)
001020  9f898302  addli r19, r7, 320
001024  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
001028  9f800303  addli r1, r7, 384
00102c  9f838303  addli r7, r7, 448
001030  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
001034  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001038  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00103c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001040  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001044  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001048  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00104c  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
001050  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001054  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
001058  93097705  setlt.u r19, r14, r23
00105c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001060  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001064  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001068  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00106c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001070  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001074  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001078  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00107c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001080  bbdb09fe  bneq r19, zero, -268
001084  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001088  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00108c  9f000002  addli r1, zero, 256
001090  6af100c0  vsrl.p vr2, r1, vr0
001094  eaf110c0  vsrl.p vr3, r1, vr1
001098  9f000001  addli r1, zero, 128
00109c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010a0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010a4  6af100c0  vsrl.p vr2, r1, vr0
0010a8  eaf110c0  vsrl.p vr3, r1, vr1
0010ac  9f008000  addli r1, zero, 64
0010b0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010b4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010b8  6af100c0  vsrl.p vr2, r1, vr0
0010bc  eaf110c0  vsrl.p vr3, r1, vr1
0010c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010c8  6a7105c0  vsrl.p vr2, r10, vr0
0010cc  ea7115c0  vsrl.p vr3, r10, vr1
0010d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010d4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010d8  fa100040  vextracti.f r1, 0(vr0)
0010dc  fa930040  vextracti.f r7, 0(vr1)
0010e0  db650000  j 812
0010e4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0010e8  abf0ffff  lui r1, 1048575
0010ec  9f010000  addli r3, zero, 0
0010f0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0010f4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0010f8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0010fc  1b9700f8  ori r14, r1, 3968
001100  8b933710  add.s r7, r15, r3
001104  8b193810  add.s r19, r16, r3
001108  1f070701  addli r14, r14, 128
00110c  9f810104  addli r3, r3, 512
001110  1f8c0331  addli r24, r7, 6272
001114  9f800330  addli r1, r7, 6144
001118  9f8c8331  addli r25, r7, 6336
00111c  9f8a0918  addli r21, r19, 3072
001120  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
001124  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
001128  9f808330  addli r1, r7, 6208
00112c  ca940c02  vloads_mask16.mz vr9{mr1}, 0(r25)
001130  1f8c0919  addli r24, r19, 3200
001134  42930a02  vload_mask16.mz vr6{mr1}, 0(r21)
001138  9f8c8919  addli r25, r19, 3264
00113c  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
001140  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
001144  9f808918  addli r1, r19, 3136
001148  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
00114c  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
001150  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001154  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
001158  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
00115c  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
001160  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001164  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
001168  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
00116c  9f8a0332  addli r21, r7, 6400
001170  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
001174  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
001178  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00117c  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
001180  1f8c091a  addli r24, r19, 3328
001184  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
001188  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00118c  9f80091b  addli r1, r19, 3456
001190  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
001194  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001198  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
00119c  9f8a8332  addli r21, r7, 6464
0011a0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0011a4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0011a8  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
0011ac  9f8a0333  addli r21, r7, 6528
0011b0  9f838333  addli r7, r7, 6592
0011b4  4a940a02  vloads_mask16.mz vr8{mr1}, 0(r21)
0011b8  9f8a891a  addli r21, r19, 3392
0011bc  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
0011c0  9f83891b  addli r7, r19, 3520
0011c4  93096705  setlt.u r19, r14, r22
0011c8  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
0011cc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0011d0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0011d4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0011d8  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0011dc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0011e0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0011e4  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
0011e8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0011ec  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
0011f0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0011f4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0011f8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0011fc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001200  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001204  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001208  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
00120c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001210  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001214  bbbb09fe  bneq r19, zero, -276
001218  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00121c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001220  9f000002  addli r1, zero, 256
001224  9f0a0000  addli r21, zero, 0
001228  eaf110c0  vsrl.p vr3, r1, vr1
00122c  6af100c0  vsrl.p vr2, r1, vr0
001230  9f000001  addli r1, zero, 128
001234  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001238  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00123c  eaf110c0  vsrl.p vr3, r1, vr1
001240  6af100c0  vsrl.p vr2, r1, vr0
001244  9f008000  addli r1, zero, 64
001248  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00124c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001250  eaf110c0  vsrl.p vr3, r1, vr1
001254  6af100c0  vsrl.p vr2, r1, vr0
001258  abf0ffff  lui r1, 1048575
00125c  9b9900f8  ori r19, r1, 3968
001260  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001264  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001268  ea7115c0  vsrl.p vr3, r10, vr1
00126c  6a7105c0  vsrl.p vr2, r10, vr0
001270  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001274  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001278  7a970040  vextracti.f r14, 0(vr1)
00127c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001280  fa110040  vextracti.f r3, 0(vr0)
001284  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001288  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00128c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001290  8b905711  add.s r1, r15, r21
001294  8b135811  add.s r7, r16, r21
001298  9f890901  addli r19, r19, 128
00129c  9f8a0a04  addli r21, r21, 512
0012a0  1f8c0018  addli r24, r1, 3072
0012a4  9f8c0019  addli r25, r1, 3200
0012a8  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
0012ac  1f8d8301  addli r26, r7, 192
0012b0  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
0012b4  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
0012b8  1f8c8018  addli r24, r1, 3136
0012bc  9f8c8019  addli r25, r1, 3264
0012c0  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
0012c4  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0012c8  1f8c0301  addli r24, r7, 128
0012cc  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
0012d0  9f8c8300  addli r25, r7, 64
0012d4  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
0012d8  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
0012dc  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0012e0  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0012e4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0012e8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0012ec  46108c02  vstore_mask16.mz vr8{mr1}, 0(r24)
0012f0  1f8c001a  addli r24, r1, 3328
0012f4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0012f8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0012fc  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
001300  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
001304  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
001308  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
00130c  1f8c801a  addli r24, r1, 3392
001310  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
001314  1f8d0302  addli r26, r7, 256
001318  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
00131c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
001320  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001324  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
001328  1f8c001b  addli r24, r1, 3456
00132c  c2130d02  vload_mask16.mz vr7{mr1}, 0(r26)
001330  9f80801b  addli r1, r1, 3520
001334  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001338  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00133c  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
001340  1f8c8302  addli r24, r7, 320
001344  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
001348  9f800303  addli r1, r7, 384
00134c  9f838303  addli r7, r7, 448
001350  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
001354  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001358  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00135c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001360  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001364  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001368  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00136c  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
001370  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001374  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
001378  138c7905  setlt.u r24, r19, r23
00137c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001380  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001384  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001388  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00138c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001390  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001394  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001398  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00139c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0013a0  bb4b0cfe  bneq r24, zero, -272
0013a4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0013a8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0013ac  9f000002  addli r1, zero, 256
0013b0  003d0002  core_id r26
0013b4  6af100c0  vsrl.p vr2, r1, vr0
0013b8  eaf110c0  vsrl.p vr3, r1, vr1
0013bc  9f000001  addli r1, zero, 128
0013c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013c8  6af100c0  vsrl.p vr2, r1, vr0
0013cc  eaf110c0  vsrl.p vr3, r1, vr1
0013d0  9f008000  addli r1, zero, 64
0013d4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013d8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013dc  6af100c0  vsrl.p vr2, r1, vr0
0013e0  eaf110c0  vsrl.p vr3, r1, vr1
0013e4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013e8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013ec  6a7105c0  vsrl.p vr2, r10, vr0
0013f0  ea7115c0  vsrl.p vr3, r10, vr1
0013f4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013f8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013fc  fa100040  vextracti.f r1, 0(vr0)
001400  fa930040  vextracti.f r7, 0(vr1)
001404  8be01110  add.f.rn r1, r3, r1
001408  8b637710  add.f.rn r7, r14, r7
00140c  9b392100  slli r19, r2, 2
001410  9f010000  addli r3, zero, 0
001414  1f070000  addli r14, zero, 0
001418  8b9ab911  add.s r21, r19, r27
00141c  0b9c5910  add.s r24, r19, r5
001420  73e01a00  stores.w r1, 0(r21)
001424  9b00e107  andi r1, r2, 126
001428  1b914900  ori r2, r19, 4
00142c  73607c00  stores.w r7, 0(r24)
001430  00a00300  mfence { lm, sm, gm }
001434  80210e04  csr_set csr3, r28
001438  00d00100  sync_group
00143c  9bb02000  slli r1, r1, 2
001440  8b13b111  add.s r7, r2, r27
001444  0b115110  add.s r2, r2, r5
001448  8b99b011  add.s r19, r1, r27
00144c  efc30300  loads.w r7, 0(r7)
001450  8b905010  add.s r1, r1, r5
001454  6f410100  loads.w r2, 0(r2)
001458  efc90900  loads.w r19, 0(r19)
00145c  efc00000  loads.w r1, 0(r1)
001460  8be33311  add.f.rn r7, r7, r19
001464  ab09003a  lui r19, 237568
001468  8b601110  add.f.rn r1, r2, r1
00146c  0be13321  mul.f.rn r2, r7, r19
001470  8be03021  mul.f.rn r1, r1, r19
001474  8b632120  mul.f.rn r7, r2, r2
001478  0b610158  neg.f r2, r2
00147c  8be07018  sub.f.rn r1, r1, r7
001480  e3033f00  loadli.w r7,  24(r30)
001484  8be07010  add.f.rn r1, r1, r7
001488  ab03803f  lui r7, 260096
00148c  8f800008  sqrt.f.rn r1, r1
001490  8f801318  div.f.rn r1, r7, r1
001494  9f030000  addli r7, zero, 0
001498  8b19e810  add.s r19, r16, r14
00149c  8b1ae610  add.s r21, r12, r14
0014a0  0b9ce610  add.s r24, r13, r14
0014a4  9f834300  addli r7, r7, 32
0014a8  1f070701  addli r14, r14, 128
0014ac  42900902  vload_mask16.mz vr0{mr1}, 0(r19)
0014b0  9f8c8900  addli r25, r19, 64
0014b4  9f898a00  addli r19, r21, 64
0014b8  4a910a02  vloads_mask16.mz vr2{mr1}, 0(r21)
0014bc  4a120c02  vloads_mask16.mz vr4{mr1}, 0(r24)
0014c0  8b1a3810  add.s r21, r16, r3
0014c4  9f818100  addli r3, r3, 64
0014c8  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
0014cc  9f098c00  addli r19, r24, 64
0014d0  c2900c02  vload_mask16.mz vr1{mr1}, 0(r25)
0014d4  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
0014d8  93894304  setlt.u r19, r7, r4
0014dc  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
0014e0  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0014e4  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
0014e8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0014ec  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
0014f0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0014f4  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
0014f8  06100200  vfloat2fp16_l.rn vr0, vr4
0014fc  06d00200  vfloat2fp16_h.rn vr0, vr5
001500  46800a02  vstore.mz vr0{mr1}, 0(r21)
001504  3bde09fe  bneq r19, zero, -108
001508  6b510f00  load.d r[3:4], 0(r30)
00150c  ab0000f0  lui r1, 983040
001510  00a00000  mfence { lm }
001514  97901500  or r1, r11, r1
001518  0b211111  add.ul r[3:4], r[3:4], r[18:19]
00151c  ff300101  s_lm2gm r1, r16, 0(r[3:4])
001520  00a00200  mfence { lm, gm }
001524  db31ffff  j -1652
001528  e3403f00  loadli.w r1,  28(r30)
00152c  37fe0012  beq r1, zero, 10140
001530  803b0002  core_id r23
001534  63012f00  loadli.w r2,  16(r30)
001538  805c0102  load_param_i r25, 2
00153c  9bb05b00  slli r1, r23, 5
001540  4b431100  ble.s r2, r1, 208
001544  2b960000  lui r12, 9
001548  9f110000  addli r3, zero, 1
00154c  1f058fd7  addli r10, r30, -5184
001550  9f058000  addli r11, zero, 64
001554  1bb15c00  slli r2, r25, 5
001558  9f860000  addli r13, r1, 0
00155c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001560  1f0606f0  addli r12, r12, -2048
001564  33880628  zext_int2long r[17:18], r13
001568  2b0900f0  lui r18, 983040
00156c  17383802  sll.d r[17:18], r[17:18], r3
001570  17992501  or r18, r11, r18
001574  0b280211  add.ul r[17:18], r[5:6], r[17:18]
001578  7f29a800  l_gm2lm r18, r10, 0(r[17:18])
00157c  1bb82600  slli r16, r13, 2
001580  8b16d110  add.s r13, r2, r13
001584  00a00200  mfence { lm, gm }
001588  c2000502  vload.mz vr1{mr1}, 0(r10)
00158c  0b18c810  add.s r16, r16, r12
001590  9f088800  addli r17, r16, 64
001594  66411080  vmerge_l.hf vr2, vr0, vr1
001598  e64010a0  vmerge_h.hf vr1, vr0, vr1
00159c  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
0015a0  4e901802  vstores_mask16.mz vr1{mr1}, 0(r17)
0015a4  3f8ff6fe  blt.s r13, r15, -64
0015a8  2ba20000  lui r4, 10
0015ac  9bb17b00  slli r3, r23, 7
0015b0  9f120000  addli r5, zero, 1
0015b4  1f058fd7  addli r10, r30, -5184
0015b8  9f058000  addli r11, zero, 64
0015bc  1f860000  addli r12, r1, 0
0015c0  00a00000  mfence { lm }
0015c4  1f0202f0  addli r4, r4, -2048
0015c8  8b914110  add.s r3, r3, r4
0015cc  1bb27c00  slli r4, r25, 7
0015d0  33080628  zext_int2long r[17:18], r12
0015d4  ab0600f0  lui r13, 983040
0015d8  0b162610  add.s r12, r12, r2
0015dc  17385802  sll.d r[17:18], r[17:18], r5
0015e0  9796d500  or r13, r11, r13
0015e4  0b280311  add.ul r[17:18], r[7:8], r[17:18]
0015e8  ff26a800  l_gm2lm r13, r10, 0(r[17:18])
0015ec  9f868100  addli r13, r3, 64
0015f0  00a00200  mfence { lm, gm }
0015f4  c2000502  vload.mz vr1{mr1}, 0(r10)
0015f8  66411080  vmerge_l.hf vr2, vr0, vr1
0015fc  e64010a0  vmerge_h.hf vr1, vr0, vr1
001600  4e902102  vstores_mask16.mz vr2{mr1}, 0(r3)
001604  8b914110  add.s r3, r3, r4
001608  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
00160c  3f1ff6fe  blt.s r12, r15, -60
001610  63012f00  loadli.w r2,  16(r30)
001614  cb211100  ble.s r2, r1, 104
001618  2bb30000  lui r6, 11
00161c  1f110000  addli r2, zero, 1
001620  9f018fd7  addli r3, r30, -5184
001624  1f028000  addli r4, zero, 64
001628  9bb25c00  slli r5, r25, 5
00162c  00a00000  mfence { lm }
001630  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001634  1f0303f0  addli r6, r6, -2048
001638  33850028  zext_int2long r[11:12], r1
00163c  ab0300f0  lui r7, 983040
001640  17352502  sll.d r[11:12], r[11:12], r2
001644  97137200  or r7, r4, r7
001648  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
00164c  ff233500  l_gm2lm r7, r3, 0(r[11:12])
001650  9bb32000  slli r7, r1, 2
001654  8b901210  add.s r1, r5, r1
001658  00a00200  mfence { lm, gm }
00165c  c2800102  vload.mz vr1{mr1}, 0(r3)
001660  8b936310  add.s r7, r7, r6
001664  1f858300  addli r10, r7, 64
001668  66411080  vmerge_l.hf vr2, vr0, vr1
00166c  e64010a0  vmerge_h.hf vr1, vr0, vr1
001670  4e902302  vstores_mask16.mz vr2{mr1}, 0(r7)
001674  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001678  3f8ff0fe  blt.s r1, r15, -64
00167c  abf00000  lui r1, 15
001680  63411f00  loadli.w r2,  12(r30)
001684  00a00300  mfence { lm, sm, gm }
001688  9b90f0ff  ori r1, r1, 4095
00168c  80a10004  csr_set csr3, r1
001690  00d00100  sync_group
001694  4b527127  ble.s r2, r23, 19604
001698  e3002f00  loadli.w r1,  16(r30)
00169c  63412f00  loadli.w r2,  20(r30)
0016a0  1f048fd7  addli r8, r30, -5184
0016a4  9f150000  addli r11, zero, 1
0016a8  1f064000  addli r12, zero, 32
0016ac  1f757000  addli r10, zero, 63
0016b0  9f080002  addli r17, zero, 256
0016b4  9f040001  addli r9, zero, 128
0016b8  1f0a8000  addli r20, zero, 64
0016bc  ab0a803f  lui r21, 260096
0016c0  2bed7f00  lui r26, 2046
0016c4  2bee0700  lui r28, 126
0016c8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0016cc  8b912010  add.s r3, r1, r2
0016d0  33820008  fix2float.rn r4, r1
0016d4  1bb31000  slli r6, r1, 1
0016d8  9bb22000  slli r5, r1, 2
0016dc  9f804000  addli r1, r1, 32
0016e0  9b392100  slli r19, r2, 2
0016e4  e70f1fd2  storeli.w r1, -5640(r30)
0016e8  8b908210  add.s r1, r5, r8
0016ec  9ff1f1ff  addli r3, r3, -1
0016f0  e74f4fd2  storeli.w r4, -5636(r30)
0016f4  0b922130  div.s r4, r3, r2
0016f8  9f8080ff  addli r1, r1, -64
0016fc  8b118310  add.s r3, r6, r8
001700  674f1fd2  storeli.w r1, -5644(r30)
001704  9f8081ff  addli r1, r3, -64
001708  670f1fd2  storeli.w r1, -5648(r30)
00170c  abf0ffff  lui r1, 1048575
001710  00a00000  mfence { lm }
001714  67049fd5  storeli.w r25, -5568(r30)
001718  67006fd4  storeli.w r6, -5632(r30)
00171c  9b90f0ff  ori r1, r1, 4095
001720  67041fd6  storeli.w r1, -5312(r30)
001724  ab700000  lui r1, 7
001728  1b9cf0ff  ori r24, r1, 4095
00172c  ab00ff03  lui r1, 16368
001730  1b9bf03f  ori r22, r1, 1023
001734  abf000fc  lui r1, 1032207
001738  9b9300c0  ori r7, r1, 3072
00173c  9f000fd7  addli r1, r30, -5248
001740  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001744  db090000  j 76
001748  1f040fd5  addli r8, r30, -5504
00174c  6b510f00  load.d r[3:4], 0(r30)
001750  ab0000f0  lui r1, 983040
001754  1f757000  addli r10, zero, 63
001758  eb520400  load.d r[6:7], 0(r8)
00175c  1f048fd7  addli r8, r30, -5184
001760  0b215110  add.ul r[3:4], r[3:4], r[6:7]
001764  63030fd4  loadli.w r6,  -5632(r30)
001768  00a00000  mfence { lm }
00176c  e30b8fd5  loadli.w r23,  -5440(r30)
001770  e30c8fd4  loadli.w r25,  -5568(r30)
001774  97101300  or r1, r6, r1
001778  8b9b7c11  add.s r23, r25, r23
00177c  ff308100  s_lm2gm r1, r8, 0(r[3:4])
001780  00a00200  mfence { lm, gm }
001784  e3401f00  loadli.w r1,  12(r30)
001788  3fa01b00  blt.s r23, r1, 8
00178c  db730900  j 19356
001790  e3001f00  loadli.w r1,  8(r30)
001794  9f027fd6  addli r5, r30, -5320
001798  9f860900  addli r13, r19, 0
00179c  8b901b10  add.s r1, r23, r1
0017a0  8b90f020  mul.s r1, r1, r15
0017a4  b3900028  sext_int2long r[2:3], r1
0017a8  17b9b002  sll.d r[19:20], r[2:3], r11
0017ac  6bd10200  load.d r[3:4], 0(r5)
0017b0  ab0000f0  lui r1, 983040
0017b4  9f020fd5  addli r5, r30, -5504
0017b8  97101300  or r1, r6, r1
0017bc  73b02201  store.d r[19:20], 0(r5)
0017c0  0b212111  add.ul r[3:4], r[3:4], r[19:20]
0017c4  ff208100  l_gm2lm r1, r8, 0(r[3:4])
0017c8  00a00200  mfence { lm, gm }
0017cc  bff0c700  blt.s r15, r12, 60
0017d0  e300efd3  loadli.w r1,  -5648(r30)
0017d4  6341efd3  loadli.w r2,  -5644(r30)
0017d8  e301ffd3  loadli.w r3,  -5640(r30)
0017dc  c2800002  vload.mz vr1{mr1}, 0(r1)
0017e0  9f81c1ff  addli r3, r3, -32
0017e4  1f0481ff  addli r8, r2, -64
0017e8  9f8080ff  addli r1, r1, -64
0017ec  93023504  setlt.u r5, r10, r3
0017f0  664110a0  vmerge_h.hf vr2, vr0, vr1
0017f4  e6401080  vmerge_l.hf vr1, vr0, vr1
0017f8  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
0017fc  1f0101ff  addli r2, r2, -128
001800  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
001804  3bef02fe  bneq r5, zero, -40
001808  670c7fd5  storeli.w r23, -5440(r30)
00180c  00a00000  mfence { lm }
001810  bf67b200  blt.s r4, r11, 504
001814  1f050000  addli r10, zero, 0
001818  9f020000  addli r5, zero, 0
00181c  1f040000  addli r8, zero, 0
001820  9f890600  addli r19, r13, 0
001824  db0d0000  j 108
001828  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
00182c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001830  1f140400  addli r8, r8, 1
001834  6af108c0  vsrl.p vr2, r17, vr0
001838  eaf118c0  vsrl.p vr3, r17, vr1
00183c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001840  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001844  6af104c0  vsrl.p vr2, r9, vr0
001848  eaf114c0  vsrl.p vr3, r9, vr1
00184c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001850  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001854  6a710ac0  vsrl.p vr2, r20, vr0
001858  ea711ac0  vsrl.p vr3, r20, vr1
00185c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001860  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001864  6a7106c0  vsrl.p vr2, r12, vr0
001868  ea7116c0  vsrl.p vr3, r12, vr1
00186c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001870  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001874  fa100040  vextracti.f r1, 0(vr0)
001878  7a910040  vextracti.f r2, 0(vr1)
00187c  0b651510  add.f.rn r10, r10, r1
001880  9f000fd7  addli r1, r30, -5248
001884  8be22210  add.f.rn r5, r5, r2
001888  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00188c  37264400  beq r8, r4, 392
001890  9f000400  addli r1, r8, 0
001894  37401701  beq r14, r17, 16
001898  e3008fd6  loadli.w r1,  -5312(r30)
00189c  97201400  xor r1, r8, r1
0018a0  8b101210  add.s r1, r4, r1
0018a4  0b91e020  mul.s r2, r1, r14
0018a8  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0018ac  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0018b0  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0018b4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0018b8  0b912718  sub.s r2, r15, r2
0018bc  0b11e140  min.s r2, r2, r14
0018c0  bf2db1fe  blt.s r2, r11, -152
0018c4  1f030fd7  addli r6, r30, -5248
0018c8  ab960000  lui r13, 9
0018cc  9f010000  addli r3, zero, 0
0018d0  8b901920  mul.s r1, r19, r1
0018d4  1f098fd7  addli r18, r30, -5184
0018d8  42120302  vload_mask16.mz vr4{mr1}, 0(r6)
0018dc  9f8606f0  addli r13, r13, -2048
0018e0  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0018e4  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0018e8  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0018ec  8b9b1610  add.s r23, r13, r1
0018f0  0b181910  add.s r16, r18, r1
0018f4  9f8c8b00  addli r25, r23, 64
0018f8  ca920b02  vloads_mask16.mz vr5{mr1}, 0(r23)
0018fc  9f8d8b01  addli r27, r23, 192
001900  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
001904  1f038801  addli r6, r16, 192
001908  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
00190c  9f8c0b01  addli r25, r23, 128
001910  4a940d02  vloads_mask16.mz vr8{mr1}, 0(r27)
001914  9f0d0801  addli r27, r16, 128
001918  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
00191c  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
001920  c2950d02  vload_mask16.mz vr11{mr1}, 0(r27)
001924  9f0c8800  addli r25, r16, 64
001928  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
00192c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001930  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001934  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001938  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
00193c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001940  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001944  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
001948  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
00194c  9f8c8100  addli r25, r3, 64
001950  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
001954  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001958  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00195c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001960  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001964  46907d02  vstore_mask16.mz vr7{mr1}, 0(r27)
001968  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
00196c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001970  cb6a91ff  ble.s r2, r25, -328
001974  9f8c0b02  addli r25, r23, 256
001978  9f8d8b02  addli r27, r23, 320
00197c  1f030802  addli r6, r16, 256
001980  9f810101  addli r3, r3, 128
001984  9f860604  addli r13, r13, 512
001988  1f090904  addli r18, r18, 512
00198c  4a900c02  vloads_mask16.mz vr0{mr1}, 0(r25)
001990  9f8c0b03  addli r25, r23, 384
001994  9f8b8b03  addli r23, r23, 448
001998  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
00199c  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
0019a0  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
0019a4  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
0019a8  9f0b0803  addli r23, r16, 384
0019ac  9f0c8802  addli r25, r16, 320
0019b0  1f088803  addli r16, r16, 448
0019b4  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
0019b8  c2940c02  vload_mask16.mz vr9{mr1}, 0(r25)
0019bc  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0019c0  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
0019c4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0019c8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0019cc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0019d0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0019d4  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
0019d8  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
0019dc  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0019e0  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0019e4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0019e8  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
0019ec  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0019f0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0019f4  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0019f8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0019fc  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
001a00  bfbb21fe  blt.s r3, r2, -276
001a04  dbc4ffff  j -476
001a08  9f020000  addli r5, zero, 0
001a0c  1f050000  addli r10, zero, 0
001a10  9f890600  addli r19, r13, 0
001a14  1f032000  addli r6, zero, 16
001a18  9f3b0000  addli r23, zero, 3
001a1c  9f5c1000  addli r25, zero, 13
001a20  9f2d1000  addli r27, zero, 10
001a24  00a00000  mfence { lm }
001a28  bf84b7fe  blt.s r15, r11, -736
001a2c  6341ffd3  loadli.w r2,  -5636(r30)
001a30  abb60000  lui r13, 11
001a34  9f000000  addli r1, zero, 0
001a38  1f048fd7  addli r8, r30, -5184
001a3c  9f8606f0  addli r13, r13, -2048
001a40  8f012518  div.f.rn r3, r10, r2
001a44  0f812218  div.f.rn r2, r5, r2
001a48  2ba50000  lui r10, 10
001a4c  1f0505f0  addli r10, r10, -2048
001a50  8be23120  mul.f.rn r5, r3, r3
001a54  8be10158  neg.f r3, r3
001a58  0b615118  sub.f.rn r2, r2, r5
001a5c  e3023f00  loadli.w r5,  24(r30)
001a60  0b615110  add.f.rn r2, r2, r5
001a64  9f028fd7  addli r5, r30, -5184
001a68  0f010108  sqrt.f.rn r2, r2
001a6c  0f812a18  div.f.rn r2, r21, r2
001a70  1f088400  addli r16, r8, 64
001a74  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
001a78  1f898600  addli r18, r13, 64
001a7c  4a920602  vloads_mask16.mz vr4{mr1}, 0(r13)
001a80  ca110502  vloads_mask16.mz vr3{mr1}, 0(r10)
001a84  9f804000  addli r1, r1, 32
001a88  9f860601  addli r13, r13, 128
001a8c  1f040401  addli r8, r8, 128
001a90  42110802  vload_mask16.mz vr2{mr1}, 0(r16)
001a94  1f088500  addli r16, r10, 64
001a98  4a130902  vloads_mask16.mz vr6{mr1}, 0(r18)
001a9c  1f050501  addli r10, r10, 128
001aa0  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
001aa4  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001aa8  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
001aac  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
001ab0  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
001ab4  26923002  vmac.f.mz.rn vr4{mr1}, vr1, vr3
001ab8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001abc  ea211322  vor.u.mz vr3{mr1}, r6, vr1
001ac0  26135102  vmac.f.mz.rn vr6{mr1}, vr2, vr5
001ac4  eaa21b22  vor.u.mz vr5{mr1}, r23, vr1
001ac8  6eb141c2  vsrl.s.mz vr2{mr1}, vr3, vr4
001acc  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
001ad0  6ab12502  vand.s.mz vr2{mr1}, r11, vr2
001ad4  eab13502  vand.s.mz vr3{mr1}, r11, vr3
001ad8  16312202  vadd.s.mz vr2{mr1}, vr4, vr2
001adc  6aa21c22  vor.u.mz vr4{mr1}, r25, vr1
001ae0  eaa01d22  vor.u.mz vr1{mr1}, r27, vr1
001ae4  96313302  vadd.s.mz vr3{mr1}, vr6, vr3
001ae8  12312c02  vadd.s.mz vr2{mr1}, r24, vr2
001aec  92313c02  vadd.s.mz vr3{mr1}, r24, vr3
001af0  6e3322c2  vsrl.s.mz vr6{mr1}, vr4, vr2
001af4  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
001af8  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
001afc  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
001b00  ea326e02  vand.s.mz vr5{mr1}, r28, vr6
001b04  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
001b08  6a324e02  vand.s.mz vr4{mr1}, r28, vr4
001b0c  ea313d02  vand.s.mz vr3{mr1}, r26, vr3
001b10  6ab12a22  vor.s.mz vr2{mr1}, r21, vr2
001b14  eab25a22  vor.s.mz vr5{mr1}, r21, vr5
001b18  6ab24a22  vor.s.mz vr4{mr1}, r21, vr4
001b1c  eab13a22  vor.s.mz vr3{mr1}, r21, vr3
001b20  06110120  vfloat2fp16_l.rz vr2, vr2
001b24  06520220  vfloat2fp16_h.rz vr4, vr4
001b28  06d10120  vfloat2fp16_h.rz vr2, vr3
001b2c  06920220  vfloat2fp16_l.rz vr4, vr5
001b30  6a312b02  vand.s.mz vr2{mr1}, r22, vr2
001b34  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
001b38  eab01302  vand.s.mz vr1{mr1}, r7, vr1
001b3c  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
001b40  46801202  vstore.mz vr1{mr1}, 0(r5)
001b44  9f828200  addli r5, r5, 64
001b48  bfacf0fe  blt.s r1, r15, -216
001b4c  db7fffff  j -1028
001b50  e3403f00  loadli.w r1,  28(r30)
001b54  b7f70016  beq r1, zero, 11772
001b58  80300002  core_id r1
001b5c  e3012f00  loadli.w r3,  16(r30)
001b60  1bb15000  slli r2, r1, 5
001b64  4bc32100  ble.s r3, r2, 208
001b68  2b580100  lui r16, 21
001b6c  00550102  load_param_i r10, 2
001b70  9f150000  addli r11, zero, 1
001b74  1f068fd7  addli r12, r30, -5184
001b78  9f068000  addli r13, zero, 64
001b7c  9f080100  addli r17, r2, 0
001b80  9b315500  slli r3, r10, 5
001b84  1f080800  addli r16, r16, 0
001b88  33890828  zext_int2long r[19:20], r17
001b8c  2b0a00f0  lui r20, 983040
001b90  1739b902  sll.d r[19:20], r[19:20], r11
001b94  179a4601  or r20, r13, r20
001b98  0b292211  add.ul r[19:20], r[5:6], r[19:20]
001b9c  7f2ac900  l_gm2lm r20, r12, 0(r[19:20])
001ba0  1bb92800  slli r18, r17, 2
001ba4  8b981111  add.s r17, r3, r17
001ba8  00a00200  mfence { lm, gm }
001bac  42000602  vload.mz vr0{mr1}, 0(r12)
001bb0  0b190911  add.s r18, r18, r16
001bb4  9f098900  addli r19, r18, 64
001bb8  86300000  vfp162float_l.rn vr1, vr0
001bbc  06700000  vfp162float_h.rn vr0, vr0
001bc0  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
001bc4  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
001bc8  3f8ff8fe  blt.s r17, r15, -64
001bcc  ab620100  lui r5, 22
001bd0  1bb27000  slli r4, r1, 7
001bd4  9f058fd7  addli r11, r30, -5184
001bd8  1f068000  addli r12, zero, 64
001bdc  9f060100  addli r13, r2, 0
001be0  00a00000  mfence { lm }
001be4  9f820200  addli r5, r5, 0
001be8  0b125210  add.s r4, r4, r5
001bec  9b327500  slli r5, r10, 7
001bf0  1f150000  addli r10, zero, 1
001bf4  33880628  zext_int2long r[17:18], r13
001bf8  2b0900f0  lui r18, 983040
001bfc  8b963610  add.s r13, r13, r3
001c00  1738a802  sll.d r[17:18], r[17:18], r10
001c04  17192601  or r18, r12, r18
001c08  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001c0c  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
001c10  1f088200  addli r16, r4, 64
001c14  00a00200  mfence { lm, gm }
001c18  42800502  vload.mz vr0{mr1}, 0(r11)
001c1c  86300000  vfp162float_l.rn vr1, vr0
001c20  06700000  vfp162float_h.rn vr0, vr0
001c24  4e101202  vstores_mask16.mz vr1{mr1}, 0(r4)
001c28  0b125210  add.s r4, r4, r5
001c2c  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
001c30  3f9ff6fe  blt.s r13, r15, -60
001c34  e3012f00  loadli.w r3,  16(r30)
001c38  cba12100  ble.s r3, r2, 104
001c3c  00530102  load_param_i r6, 2
001c40  ab730100  lui r7, 23
001c44  9f110000  addli r3, zero, 1
001c48  1f028fd7  addli r4, r30, -5184
001c4c  9f028000  addli r5, zero, 64
001c50  00a00000  mfence { lm }
001c54  1b335300  slli r6, r6, 5
001c58  9f830300  addli r7, r7, 0
001c5c  33050128  zext_int2long r[11:12], r2
001c60  2b0600f0  lui r12, 983040
001c64  17353502  sll.d r[11:12], r[11:12], r3
001c68  1796c200  or r12, r5, r12
001c6c  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001c70  7f264500  l_gm2lm r12, r4, 0(r[11:12])
001c74  1b352100  slli r10, r2, 2
001c78  0b112310  add.s r2, r6, r2
001c7c  00a00200  mfence { lm, gm }
001c80  42000202  vload.mz vr0{mr1}, 0(r4)
001c84  0b157510  add.s r10, r10, r7
001c88  9f058500  addli r11, r10, 64
001c8c  86300000  vfp162float_l.rn vr1, vr0
001c90  06700000  vfp162float_h.rn vr0, vr0
001c94  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001c98  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
001c9c  3f0ff1fe  blt.s r2, r15, -64
001ca0  2bf10000  lui r2, 15
001ca4  e3411f00  loadli.w r3,  12(r30)
001ca8  00a00300  mfence { lm, sm, gm }
001cac  1b11f1ff  ori r2, r2, 4095
001cb0  80210104  csr_set csr3, r2
001cb4  00d00100  sync_group
001cb8  cbc91122  ble.s r3, r1, 18032
001cbc  63032f00  loadli.w r6,  16(r30)
001cc0  e3432f00  loadli.w r7,  20(r30)
001cc4  9f088fd7  addli r17, r30, -5184
001cc8  1f150000  addli r10, zero, 1
001ccc  9f054000  addli r11, zero, 32
001cd0  1f767000  addli r12, zero, 63
001cd4  1f080002  addli r16, zero, 256
001cd8  1f090001  addli r18, zero, 128
001cdc  9f098000  addli r19, zero, 64
001ce0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001ce4  0b127310  add.s r4, r6, r7
001ce8  33010308  fix2float.rn r2, r6
001cec  1b342300  slli r8, r6, 2
001cf0  9b321300  slli r5, r6, 1
001cf4  9bb42300  slli r9, r7, 2
001cf8  1f72f2ff  addli r4, r4, -1
001cfc  670c2fd4  storeli.w r2, -5440(r30)
001d00  1f014300  addli r2, r6, 32
001d04  0b131411  add.s r6, r8, r17
001d08  0b941211  add.s r8, r5, r17
001d0c  67082fd4  storeli.w r2, -5504(r30)
001d10  1f0183ff  addli r2, r6, -64
001d14  2bf3ffff  lui r6, 1048575
001d18  0b127230  div.s r4, r4, r7
001d1c  67042fd4  storeli.w r2, -5568(r30)
001d20  1f0184ff  addli r2, r8, -64
001d24  9b16f3ff  ori r13, r6, 4095
001d28  2b530100  lui r6, 21
001d2c  67002fd4  storeli.w r2, -5632(r30)
001d30  1f010fd7  addli r2, r30, -5248
001d34  1f030300  addli r6, r6, 0
001d38  00a00000  mfence { lm }
001d3c  67045fd6  storeli.w r5, -5312(r30)
001d40  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001d44  5b080000  j 64
001d48  6b510f00  load.d r[3:4], 0(r30)
001d4c  00a00000  mfence { lm }
001d50  ab0800f0  lui r17, 983040
001d54  005a0102  load_param_i r20, 2
001d58  e3028fd6  loadli.w r5,  -5312(r30)
001d5c  8b101a10  add.s r1, r20, r1
001d60  8b237111  add.ul r[8:9], r[3:4], r[24:25]
001d64  1f018fd7  addli r2, r30, -5184
001d68  97981201  or r17, r5, r17
001d6c  ffb82300  s_lm2gm r17, r2, 0(r[8:9])
001d70  9f088fd7  addli r17, r30, -5184
001d74  00a00200  mfence { lm, gm }
001d78  63411f00  loadli.w r2,  12(r30)
001d7c  3fa02000  blt.s r1, r2, 8
001d80  5bb50800  j 17832
001d84  63011f00  loadli.w r2,  8(r30)
001d88  8b932010  add.s r7, r1, r2
001d8c  8b93f320  mul.s r7, r7, r15
001d90  b3930328  sext_int2long r[8:9], r7
001d94  97bba302  sll.d r[24:25], r[8:9], r10
001d98  1f047fd6  addli r8, r30, -5320
001d9c  ab0300f0  lui r7, 983040
001da0  6b510400  load.d r[3:4], 0(r8)
001da4  97937200  or r7, r5, r7
001da8  0b2a7111  add.ul r[21:22], r[3:4], r[24:25]
001dac  ff231a01  l_gm2lm r7, r17, 0(r[21:22])
001db0  00a00200  mfence { lm, gm }
001db4  bff0b700  blt.s r15, r11, 60
001db8  e3030fd4  loadli.w r7,  -5632(r30)
001dbc  63048fd4  loadli.w r8,  -5568(r30)
001dc0  e3080fd5  loadli.w r17,  -5504(r30)
001dc4  c2800302  vload.mz vr1{mr1}, 0(r7)
001dc8  9f88c8ff  addli r17, r17, -32
001dcc  9f0a84ff  addli r21, r8, -64
001dd0  9f8383ff  addli r7, r7, -64
001dd4  130a1605  setlt.u r20, r12, r17
001dd8  06f10000  vfp162float_h.rn vr2, vr1
001ddc  86b00000  vfp162float_l.rn vr1, vr1
001de0  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
001de4  1f0404ff  addli r8, r8, -128
001de8  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
001dec  3b6f0afe  bneq r20, zero, -40
001df0  00a00000  mfence { lm }
001df4  bf17a200  blt.s r4, r10, 484
001df8  1f0d0000  addli r26, zero, 0
001dfc  9f0c0000  addli r25, zero, 0
001e00  9f0d0000  addli r27, zero, 0
001e04  db0c0000  j 100
001e08  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001e0c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001e10  9f9d0d00  addli r27, r27, 1
001e14  6a7108c0  vsrl.p vr2, r16, vr0
001e18  ea7118c0  vsrl.p vr3, r16, vr1
001e1c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e20  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e24  6a7109c0  vsrl.p vr2, r18, vr0
001e28  ea7119c0  vsrl.p vr3, r18, vr1
001e2c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e30  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e34  6af109c0  vsrl.p vr2, r19, vr0
001e38  eaf119c0  vsrl.p vr3, r19, vr1
001e3c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e40  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e44  6af105c0  vsrl.p vr2, r11, vr0
001e48  eaf115c0  vsrl.p vr3, r11, vr1
001e4c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e50  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e54  7a110040  vextracti.f r2, 0(vr0)
001e58  fa910040  vextracti.f r3, 0(vr1)
001e5c  0b6d2d10  add.f.rn r26, r26, r2
001e60  8bec3c10  add.f.rn r25, r25, r3
001e64  b7f54d00  beq r27, r4, 380
001e68  9f830d00  addli r7, r27, 0
001e6c  37300701  beq r14, r16, 12
001e70  97a3dd00  xor r7, r27, r13
001e74  8b137210  add.s r7, r4, r7
001e78  1f010fd7  addli r2, r30, -5248
001e7c  0b94e320  mul.s r8, r7, r14
001e80  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
001e84  0b948718  sub.s r8, r15, r8
001e88  0b1ee440  min.s r28, r8, r14
001e8c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001e90  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001e94  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001e98  bf4daefe  blt.s r28, r10, -144
001e9c  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
001ea0  1f0a0000  addli r20, zero, 0
001ea4  8b9a7420  mul.s r21, r9, r7
001ea8  1f0b8fd7  addli r22, r30, -5184
001eac  9f080300  addli r17, r6, 0
001eb0  92304002  vadd.s.mz vr1{mr1}, zero, vr4
001eb4  12314002  vadd.s.mz vr2{mr1}, zero, vr4
001eb8  92314002  vadd.s.mz vr3{mr1}, zero, vr4
001ebc  0b945811  add.s r8, r17, r21
001ec0  8b135b11  add.s r7, r22, r21
001ec4  9f028400  addli r5, r8, 64
001ec8  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
001ecc  9f018401  addli r3, r8, 192
001ed0  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001ed4  1f818301  addli r2, r7, 192
001ed8  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
001edc  9f020401  addli r5, r8, 128
001ee0  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
001ee4  9f818300  addli r3, r7, 64
001ee8  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
001eec  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
001ef0  9f820301  addli r5, r7, 128
001ef4  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
001ef8  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
001efc  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001f00  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001f04  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001f08  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001f0c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001f10  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001f14  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
001f18  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001f1c  9f018a00  addli r3, r20, 64
001f20  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001f24  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001f28  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001f2c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001f30  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001f34  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
001f38  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001f3c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001f40  4b2b3efe  ble.s r28, r3, -312
001f44  9f010402  addli r3, r8, 256
001f48  9f028402  addli r5, r8, 320
001f4c  1f810302  addli r2, r7, 256
001f50  1f0a0a01  addli r20, r20, 128
001f54  9f880804  addli r17, r17, 512
001f58  1f0b0b04  addli r22, r22, 512
001f5c  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
001f60  9f010403  addli r3, r8, 384
001f64  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
001f68  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
001f6c  9f828302  addli r5, r7, 320
001f70  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
001f74  9f018403  addli r3, r8, 448
001f78  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
001f7c  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
001f80  9f810303  addli r3, r7, 384
001f84  9f838303  addli r7, r7, 448
001f88  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
001f8c  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
001f90  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
001f94  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001f98  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001f9c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001fa0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001fa4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001fa8  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
001fac  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
001fb0  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001fb4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001fb8  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
001fbc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001fc0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001fc4  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001fc8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001fcc  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
001fd0  bf3bcaff  blt.s r20, r28, -276
001fd4  dbc6ffff  j -460
001fd8  9f0c0000  addli r25, zero, 0
001fdc  1f0d0000  addli r26, zero, 0
001fe0  00a00000  mfence { lm }
001fe4  bf95a7fe  blt.s r15, r10, -668
001fe8  63018fd5  loadli.w r2,  -5440(r30)
001fec  2b6b0100  lui r22, 22
001ff0  9f030000  addli r7, zero, 0
001ff4  9f0a8fd7  addli r21, r30, -5184
001ff8  1f0b0b00  addli r22, r22, 0
001ffc  8f082d18  div.f.rn r17, r26, r2
002000  0f842c18  div.f.rn r8, r25, r2
002004  63013f00  loadli.w r2,  24(r30)
002008  ab7c0100  lui r25, 23
00200c  9f8c0c00  addli r25, r25, 0
002010  0bea1821  mul.f.rn r20, r17, r17
002014  8be80858  neg.f r17, r17
002018  0b644419  sub.f.rn r8, r8, r20
00201c  1f0a8fd7  addli r20, r30, -5184
002020  0b642410  add.f.rn r8, r8, r2
002024  2b01803f  lui r2, 260096
002028  0f040408  sqrt.f.rn r8, r8
00202c  0f048118  div.f.rn r8, r2, r8
002030  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
002034  1f8d8a00  addli r26, r21, 64
002038  ca110b02  vloads_mask16.mz vr3{mr1}, 0(r22)
00203c  4a920c02  vloads_mask16.mz vr4{mr1}, 0(r25)
002040  9f8d8c00  addli r27, r25, 64
002044  9f834300  addli r7, r7, 32
002048  9f8c0c01  addli r25, r25, 128
00204c  9f8a0a01  addli r21, r21, 128
002050  42110d02  vload_mask16.mz vr2{mr1}, 0(r26)
002054  1f0d8b00  addli r26, r22, 64
002058  4a930d02  vloads_mask16.mz vr6{mr1}, 0(r27)
00205c  1f0b0b01  addli r22, r22, 128
002060  ca120d02  vloads_mask16.mz vr5{mr1}, 0(r26)
002064  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
002068  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
00206c  8a101402  vmul.f.mz.rn vr1{mr1}, r8, vr1
002070  0a112402  vmul.f.mz.rn vr2{mr1}, r8, vr2
002074  26923002  vmac.f.mz.rn vr4{mr1}, vr1, vr3
002078  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00207c  26135102  vmac.f.mz.rn vr6{mr1}, vr2, vr5
002080  86100200  vfloat2fp16_l.rn vr1, vr4
002084  86500300  vfloat2fp16_h.rn vr1, vr6
002088  46001a02  vstore.mz vr1{mr1}, 0(r20)
00208c  1f0a8a00  addli r20, r20, 64
002090  bf8ef3fe  blt.s r7, r15, -96
002094  db96ffff  j -844
002098  e3002f00  loadli.w r1,  16(r30)
00209c  1f010010  addli r2, zero, 2048
0020a0  bba02008  bneq r1, r2, 4136
0020a4  2ba30200  lui r6, 42
0020a8  80300002  core_id r1
0020ac  1f030308  addli r6, r6, 1024
0020b0  3bd00000  bneq r1, zero, 20
0020b4  1f010040  addli r2, zero, 8192
0020b8  ab0100f0  lui r3, 983040
0020bc  17113100  or r2, r2, r3
0020c0  7f016200  l_gm2sm r2, r6, 0(r[5:6])
0020c4  2bf10000  lui r2, 15
0020c8  00200300  mfence { sm, gm }
0020cc  1b821000  andi r4, r1, 1
0020d0  9f020006  addli r5, zero, 768
0020d4  1b11f1ff  ori r2, r2, 4095
0020d8  80210104  csr_set csr3, r2
0020dc  1f010006  addli r2, zero, 768
0020e0  00d00100  sync_group
0020e4  37200200  beq r4, zero, 8
0020e8  9f02000a  addli r5, zero, 1280
0020ec  e3411f00  loadli.w r3,  12(r30)
0020f0  9f130000  addli r7, zero, 1
0020f4  bfd87120  blt.s r3, r7, 16948
0020f8  0b112220  mul.s r2, r4, r2
0020fc  1bc51000  srli r10, r1, 1
002100  abf0ffff  lui r1, 1048575
002104  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002108  abca0200  lui r21, 44
00210c  2bcd0200  lui r26, 44
002110  80510102  load_param_i r3, 2
002114  9f030000  addli r7, zero, 0
002118  9bb52200  slli r11, r5, 2
00211c  9f068fd7  addli r13, r30, -5184
002120  9f080002  addli r17, zero, 256
002124  1f090001  addli r18, zero, 128
002128  9f098000  addli r19, zero, 64
00212c  1f0a4000  addli r20, zero, 32
002130  9f0c0003  addli r25, zero, 384
002134  67082fd6  storeli.w r2, -5248(r30)
002138  1f018fd6  addli r2, r30, -5312
00213c  9b9000f8  ori r1, r1, 3968
002140  9bc41100  srli r9, r3, 1
002144  9f8a0a08  addli r21, r21, 1024
002148  1f0d0d0c  addli r26, r26, 1536
00214c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002150  2bf10000  lui r2, 15
002154  670c1fd4  storeli.w r1, -5440(r30)
002158  9f000800  addli r1, r16, 0
00215c  1f080005  addli r16, zero, 640
002160  1b1bf1ff  ori r22, r2, 4095
002164  5b040000  j 32
002168  00a00300  mfence { lm, sm, gm }
00216c  80210b04  csr_set csr3, r22
002170  00d00100  sync_group
002174  e3401f00  loadli.w r1,  12(r30)
002178  8b939310  add.s r7, r7, r9
00217c  3fa01300  blt.s r7, r1, 8
002180  5b4bfdff  j -5544
002184  0b91a310  add.s r2, r7, r10
002188  cb8f20fe  ble.s r1, r2, -32
00218c  e3001f00  loadli.w r1,  8(r30)
002190  0b111110  add.s r2, r2, r1
002194  e3000fd7  loadli.w r1,  -5248(r30)
002198  1b31b100  slli r2, r2, 11
00219c  17111100  or r2, r2, r1
0021a0  9f200000  addli r1, zero, 2
0021a4  33110128  sext_int2long r[3:4], r2
0021a8  973d1102  sll.d r[28:29], r[3:4], r1
0021ac  9f007fd6  addli r1, r30, -5320
0021b0  2b0100f0  lui r2, 983040
0021b4  6bd70000  load.d r[15:16], 0(r1)
0021b8  17912500  or r2, r11, r2
0021bc  0b27b711  add.ul r[15:16], r[15:16], r[28:29]
0021c0  7f21d700  l_gm2lm r2, r13, 0(r[15:16])
0021c4  1f010000  addli r2, zero, 0
0021c8  00a00200  mfence { lm, gm }
0021cc  3b060200  bneq r4, zero, 384
0021d0  9f008fd6  addli r1, r30, -5312
0021d4  e3018fd5  loadli.w r3,  -5440(r30)
0021d8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0021dc  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0021e0  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0021e4  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0021e8  0b176110  add.s r14, r2, r6
0021ec  0b962610  add.s r12, r13, r2
0021f0  9f810101  addli r3, r3, 128
0021f4  1f010104  addli r2, r2, 512
0021f8  9f000701  addli r1, r14, 128
0021fc  4a100702  vloads_mask16.mz vr0{mr1}, 0(r14)
002200  1f048700  addli r8, r14, 64
002204  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
002208  9f078601  addli r15, r12, 192
00220c  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
002210  9f008701  addli r1, r14, 192
002214  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002218  1f048600  addli r8, r12, 64
00221c  c2950702  vload_mask16.mz vr11{mr1}, 0(r15)
002220  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
002224  9f000601  addli r1, r12, 128
002228  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
00222c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002230  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002234  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002238  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00223c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002240  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002244  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
002248  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
00224c  9f000702  addli r1, r14, 256
002250  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002254  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002258  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00225c  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002260  1f040603  addli r8, r12, 384
002264  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002268  9f008702  addli r1, r14, 320
00226c  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
002270  9f070602  addli r15, r12, 256
002274  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002278  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00227c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002280  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002284  9f000703  addli r1, r14, 384
002288  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
00228c  1f078703  addli r14, r14, 448
002290  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002294  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
002298  9f008602  addli r1, r12, 320
00229c  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
0022a0  1f068603  addli r12, r12, 448
0022a4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0022a8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0022ac  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0022b0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0022b4  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0022b8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0022bc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0022c0  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
0022c4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0022c8  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0022cc  93800105  setlt.u r1, r3, r16
0022d0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0022d4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0022d8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0022dc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0022e0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0022e4  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0022e8  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0022ec  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0022f0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0022f4  bbdb00fe  bneq r1, zero, -268
0022f8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0022fc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002300  6af108c0  vsrl.p vr2, r17, vr0
002304  eaf118c0  vsrl.p vr3, r17, vr1
002308  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00230c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002310  6a7109c0  vsrl.p vr2, r18, vr0
002314  ea7119c0  vsrl.p vr3, r18, vr1
002318  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00231c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002320  6af109c0  vsrl.p vr2, r19, vr0
002324  eaf119c0  vsrl.p vr3, r19, vr1
002328  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00232c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002330  6a710ac0  vsrl.p vr2, r20, vr0
002334  ea711ac0  vsrl.p vr3, r20, vr1
002338  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00233c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002340  7a160040  vextracti.f r12, 0(vr0)
002344  7a910040  vextracti.f r2, 0(vr1)
002348  db610000  j 780
00234c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002350  abf0ffff  lui r1, 1048575
002354  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002358  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00235c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002360  9b9100f8  ori r3, r1, 3968
002364  0b172310  add.s r14, r6, r2
002368  0b962610  add.s r12, r13, r2
00236c  9f810101  addli r3, r3, 128
002370  1f010104  addli r2, r2, 512
002374  9f000731  addli r1, r14, 6272
002378  9f070730  addli r15, r14, 6144
00237c  1f048731  addli r8, r14, 6336
002380  1f0c0618  addli r24, r12, 3072
002384  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
002388  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
00238c  9f078730  addli r15, r14, 6208
002390  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
002394  1f040619  addli r8, r12, 3200
002398  9f008618  addli r1, r12, 3136
00239c  42130c02  vload_mask16.mz vr6{mr1}, 0(r24)
0023a0  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
0023a4  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
0023a8  9f078619  addli r15, r12, 3264
0023ac  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0023b0  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
0023b4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0023b8  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0023bc  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0023c0  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0023c4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0023c8  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0023cc  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
0023d0  1f040732  addli r8, r14, 6400
0023d4  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0023d8  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
0023dc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0023e0  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
0023e4  9f07061a  addli r15, r12, 3328
0023e8  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0023ec  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0023f0  9f00061b  addli r1, r12, 3456
0023f4  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0023f8  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0023fc  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
002400  1f048732  addli r8, r14, 6464
002404  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002408  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00240c  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002410  1f040733  addli r8, r14, 6528
002414  1f078733  addli r14, r14, 6592
002418  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
00241c  1f04861a  addli r8, r12, 3392
002420  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
002424  1f06861b  addli r12, r12, 3520
002428  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
00242c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
002430  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
002434  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002438  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
00243c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002440  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002444  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
002448  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00244c  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
002450  13849105  setlt.u r8, r3, r25
002454  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002458  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00245c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002460  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002464  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002468  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00246c  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
002470  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002474  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002478  bb3b04fe  bneq r8, zero, -276
00247c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002480  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002484  abf0ffff  lui r1, 1048575
002488  1f060000  addli r12, zero, 0
00248c  1b9c00f8  ori r24, r1, 3968
002490  eaf118c0  vsrl.p vr3, r17, vr1
002494  6af108c0  vsrl.p vr2, r17, vr0
002498  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00249c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024a0  ea7119c0  vsrl.p vr3, r18, vr1
0024a4  6a7109c0  vsrl.p vr2, r18, vr0
0024a8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024ac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024b0  eaf119c0  vsrl.p vr3, r19, vr1
0024b4  6af109c0  vsrl.p vr2, r19, vr0
0024b8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024c0  ea711ac0  vsrl.p vr3, r20, vr1
0024c4  6a710ac0  vsrl.p vr2, r20, vr0
0024c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024d0  fa910040  vextracti.f r3, 0(vr1)
0024d4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0024d8  7a110040  vextracti.f r2, 0(vr0)
0024dc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0024e0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0024e4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0024e8  8b17c310  add.s r15, r6, r12
0024ec  0b97c610  add.s r14, r13, r12
0024f0  1f0c0c01  addli r24, r24, 128
0024f4  1f060604  addli r12, r12, 512
0024f8  9f800718  addli r1, r15, 3072
0024fc  1f840719  addli r8, r15, 3200
002500  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
002504  9f0b8701  addli r23, r14, 192
002508  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
00250c  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
002510  9f808718  addli r1, r15, 3136
002514  1f848719  addli r8, r15, 3264
002518  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
00251c  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002520  9f000701  addli r1, r14, 128
002524  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
002528  1f048700  addli r8, r14, 64
00252c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002530  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
002534  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002538  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00253c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002540  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002544  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002548  9f80071a  addli r1, r15, 3328
00254c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002550  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002554  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002558  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00255c  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
002560  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002564  9f80871a  addli r1, r15, 3392
002568  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
00256c  9f0b0702  addli r23, r14, 256
002570  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002574  1f040703  addli r8, r14, 384
002578  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00257c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002580  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002584  9f80071b  addli r1, r15, 3456
002588  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
00258c  9f87871b  addli r15, r15, 3520
002590  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002594  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002598  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
00259c  9f008702  addli r1, r14, 320
0025a0  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
0025a4  1f078703  addli r14, r14, 448
0025a8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0025ac  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0025b0  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0025b4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0025b8  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
0025bc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0025c0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0025c4  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
0025c8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0025cc  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0025d0  93000c05  setlt.u r1, r24, r16
0025d4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0025d8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0025dc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0025e0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0025e4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0025e8  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0025ec  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
0025f0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0025f4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0025f8  bbcb00fe  bneq r1, zero, -272
0025fc  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002600  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002604  6af108c0  vsrl.p vr2, r17, vr0
002608  eaf118c0  vsrl.p vr3, r17, vr1
00260c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002610  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002614  6a7109c0  vsrl.p vr2, r18, vr0
002618  ea7119c0  vsrl.p vr3, r18, vr1
00261c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002620  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002624  6af109c0  vsrl.p vr2, r19, vr0
002628  eaf119c0  vsrl.p vr3, r19, vr1
00262c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002630  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002634  6a710ac0  vsrl.p vr2, r20, vr0
002638  ea711ac0  vsrl.p vr3, r20, vr1
00263c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002640  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002644  fa100040  vextracti.f r1, 0(vr0)
002648  7a940040  vextracti.f r8, 0(vr1)
00264c  0b661110  add.f.rn r12, r2, r1
002650  0be18110  add.f.rn r2, r3, r8
002654  8b809330  div.u r1, r7, r9
002658  80310002  core_id r3
00265c  9f078fd7  addli r15, r30, -5184
002660  1f0c0000  addli r24, zero, 0
002664  9bb06000  slli r1, r1, 6
002668  9b800004  andi r1, r1, 64
00266c  97903000  or r1, r1, r3
002670  9bb12000  slli r3, r1, 2
002674  9b80e007  andi r1, r1, 126
002678  0b945111  add.s r8, r3, r21
00267c  9bb02000  slli r1, r1, 2
002680  7360c400  stores.w r12, 0(r8)
002684  0b94a111  add.s r8, r3, r26
002688  9b914100  ori r3, r3, 4
00268c  73602400  stores.w r2, 0(r8)
002690  0b915111  add.s r2, r3, r21
002694  0b945011  add.s r8, r1, r21
002698  8b91a111  add.s r3, r3, r26
00269c  8b90a011  add.s r1, r1, r26
0026a0  00a00300  mfence { lm, sm, gm }
0026a4  80210b04  csr_set csr3, r22
0026a8  00d00100  sync_group
0026ac  6f410100  loads.w r2, 0(r2)
0026b0  6f440400  loads.w r8, 0(r8)
0026b4  efc10100  loads.w r3, 0(r3)
0026b8  efc00000  loads.w r1, 0(r1)
0026bc  0b618110  add.f.rn r2, r2, r8
0026c0  8be01110  add.f.rn r1, r3, r1
0026c4  ab01003a  lui r3, 237568
0026c8  0b643120  mul.f.rn r8, r2, r3
0026cc  8be03020  mul.f.rn r1, r1, r3
0026d0  0b618420  mul.f.rn r2, r8, r8
0026d4  0b670458  neg.f r14, r8
0026d8  8be02018  sub.f.rn r1, r1, r2
0026dc  63013f00  loadli.w r2,  24(r30)
0026e0  8be02010  add.f.rn r1, r1, r2
0026e4  2b01803f  lui r2, 260096
0026e8  8f800008  sqrt.f.rn r1, r1
0026ec  0f061118  div.f.rn r12, r2, r1
0026f0  eb500f00  load.d r[2:3], 0(r30)
0026f4  0ba1b011  add.ul r[3:4], r[2:3], r[28:29]
0026f8  9f808700  addli r1, r15, 64
0026fc  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
002700  1f044c00  addli r8, r24, 32
002704  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002708  13848206  setle.u r8, r5, r8
00270c  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
002710  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
002714  0a100602  vmul.f.mz.rn vr0{mr1}, r12, vr0
002718  8a101602  vmul.f.mz.rn vr1{mr1}, r12, vr1
00271c  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
002720  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002724  bb700400  bneq r8, zero, 60
002728  9f800701  addli r1, r15, 128
00272c  1f848701  addli r8, r15, 192
002730  1f0c8c00  addli r24, r24, 64
002734  9f870702  addli r15, r15, 256
002738  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00273c  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
002740  930b5c04  setlt.u r23, r24, r5
002744  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
002748  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
00274c  0a100602  vmul.f.mz.rn vr0{mr1}, r12, vr0
002750  8a101602  vmul.f.mz.rn vr1{mr1}, r12, vr1
002754  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002758  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
00275c  3bfe0bfe  bneq r23, zero, -100
002760  ab0000f0  lui r1, 983040
002764  00a00000  mfence { lm }
002768  97901500  or r1, r11, r1
00276c  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
002770  00a00200  mfence { lm, gm }
002774  5b40ffff  j -1536
002778  80300002  core_id r1
00277c  bb800000  bneq r1, zero, 32
002780  63012f00  loadli.w r2,  16(r30)
002784  ab0100f0  lui r3, 983040
002788  1b311100  slli r2, r2, 1
00278c  17113100  or r2, r2, r3
002790  abc10100  lui r3, 28
002794  9f810100  addli r3, r3, 0
002798  7f013200  l_gm2sm r2, r3, 0(r[5:6])
00279c  2bf10000  lui r2, 15
0027a0  e3411f00  loadli.w r3,  12(r30)
0027a4  00200300  mfence { sm, gm }
0027a8  1b11f1ff  ori r2, r2, 4095
0027ac  80210104  csr_set csr3, r2
0027b0  00d00100  sync_group
0027b4  cbdd111c  ble.s r3, r1, 15220
0027b8  63012f00  loadli.w r2,  16(r30)
0027bc  e3412f00  loadli.w r3,  20(r30)
0027c0  1f052000  addli r10, zero, 16
0027c4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0027c8  1f130000  addli r6, zero, 1
0027cc  9f040002  addli r9, zero, 256
0027d0  ab05ffff  lui r11, 1048560
0027d4  ab06807f  lui r13, 522240
0027d8  2b08c07f  lui r16, 523264
0027dc  9f080001  addli r17, zero, 128
0027e0  1f098000  addli r18, zero, 64
0027e4  9f094000  addli r19, zero, 32
0027e8  1b3b1100  slli r22, r2, 1
0027ec  0b123110  add.s r4, r2, r3
0027f0  33010108  fix2float.rn r2, r2
0027f4  67042fd4  storeli.w r2, -5568(r30)
0027f8  1f71f2ff  addli r2, r4, -1
0027fc  1bb21100  slli r4, r3, 1
002800  67086fd5  storeli.w r22, -5504(r30)
002804  8b123130  div.s r5, r2, r3
002808  2bf1ffff  lui r2, 1048575
00280c  9f018fd7  addli r3, r30, -5184
002810  1b14f1ff  ori r8, r2, 4095
002814  1f010fd7  addli r2, r30, -5248
002818  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00281c  6a200522  vor.u.mz vr0{mr1}, r10, vr0
002820  1f018fd6  addli r2, r30, -5312
002824  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002828  2b710000  lui r2, 7
00282c  1b16f1ff  ori r12, r2, 4095
002830  db080000  j 68
002834  9f038fd5  addli r7, r30, -5440
002838  6b510f00  load.d r[3:4], 0(r30)
00283c  6bda0300  load.d r[21:22], 0(r7)
002840  00a00000  mfence { lm }
002844  80530102  load_param_i r7, 2
002848  630b0fd5  loadli.w r22,  -5504(r30)
00284c  8b901310  add.s r1, r7, r1
002850  0b2a4111  add.ul r[21:22], r[3:4], r[21:22]
002854  2b0100f0  lui r2, 983040
002858  9f018fd7  addli r3, r30, -5184
00285c  17112b00  or r2, r22, r2
002860  7f313a00  s_lm2gm r2, r3, 0(r[21:22])
002864  00a00200  mfence { lm, gm }
002868  63411f00  loadli.w r2,  12(r30)
00286c  3fa02000  blt.s r1, r2, 8
002870  5b570700  j 15032
002874  63011f00  loadli.w r2,  8(r30)
002878  9f037fd6  addli r7, r30, -5320
00287c  0b912010  add.s r2, r1, r2
002880  0b11f120  mul.s r2, r2, r15
002884  331a0128  sext_int2long r[21:22], r2
002888  2b0100f0  lui r2, 983040
00288c  973b6a02  sll.d r[24:25], r[21:22], r6
002890  6bda0300  load.d r[21:22], 0(r7)
002894  17112b00  or r2, r22, r2
002898  9f038fd5  addli r7, r30, -5440
00289c  73b07301  store.d r[24:25], 0(r7)
0028a0  0b2a7a11  add.ul r[21:22], r[21:22], r[24:25]
0028a4  7f213a00  l_gm2lm r2, r3, 0(r[21:22])
0028a8  00a00200  mfence { lm, gm }
0028ac  bfdc6200  blt.s r5, r6, 820
0028b0  9f0c0000  addli r25, zero, 0
0028b4  1f0c0000  addli r24, zero, 0
0028b8  1f0d0000  addli r26, zero, 0
0028bc  db0c0000  j 100
0028c0  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0028c4  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0028c8  1f1d0d00  addli r26, r26, 1
0028cc  6af104c0  vsrl.p vr2, r9, vr0
0028d0  eaf114c0  vsrl.p vr3, r9, vr1
0028d4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028d8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028dc  6af108c0  vsrl.p vr2, r17, vr0
0028e0  eaf118c0  vsrl.p vr3, r17, vr1
0028e4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028e8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028ec  6a7109c0  vsrl.p vr2, r18, vr0
0028f0  ea7119c0  vsrl.p vr3, r18, vr1
0028f4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028f8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028fc  6af109c0  vsrl.p vr2, r19, vr0
002900  eaf119c0  vsrl.p vr3, r19, vr1
002904  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002908  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00290c  7a110040  vextracti.f r2, 0(vr0)
002910  fa910040  vextracti.f r3, 0(vr1)
002914  8bec2c10  add.f.rn r25, r25, r2
002918  0b6c3c10  add.f.rn r24, r24, r3
00291c  373b5d00  beq r26, r5, 716
002920  1f010d00  addli r2, r26, 0
002924  37309700  beq r14, r9, 12
002928  17218d00  xor r2, r26, r8
00292c  0b912210  add.s r2, r5, r2
002930  9f010fd7  addli r3, r30, -5248
002934  8b13e120  mul.s r7, r2, r14
002938  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
00293c  8b937718  sub.s r7, r15, r7
002940  8b9de340  min.s r27, r7, r14
002944  92322002  vadd.s.mz vr5{mr1}, zero, vr2
002948  12322002  vadd.s.mz vr4{mr1}, zero, vr2
00294c  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002950  bfcd6dfe  blt.s r27, r6, -144
002954  0b1a2220  mul.s r20, r4, r2
002958  1f010fd7  addli r2, r30, -5248
00295c  abca0100  lui r21, 28
002960  1f0e0000  addli r28, zero, 0
002964  9f038fd7  addli r7, r30, -5184
002968  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
00296c  9f8a0a00  addli r21, r21, 0
002970  12315002  vadd.s.mz vr2{mr1}, zero, vr5
002974  92315002  vadd.s.mz vr3{mr1}, zero, vr5
002978  12325002  vadd.s.mz vr4{mr1}, zero, vr5
00297c  0b9b4a11  add.s r22, r21, r20
002980  0b914311  add.s r2, r7, r20
002984  9f018fd6  addli r3, r30, -5312
002988  4a030b02  vloads.mz vr6{mr1}, 0(r22)
00298c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002990  c2030102  vload.mz vr7{mr1}, 0(r2)
002994  9f010fd7  addli r3, r30, -5248
002998  9f0b8b00  addli r23, r22, 64
00299c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0029a0  9f018e00  addli r3, r28, 64
0029a4  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0029a8  6ab57502  vand.s.mz vr10{mr1}, r11, vr7
0029ac  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0029b0  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
0029b4  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0029b8  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0029bc  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0029c0  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0029c4  669503c0  vabs.f vr10, vr7
0029c8  6a348302  vand.s.mz vr8{mr1}, r6, vr8
0029cc  ea349302  vand.s.mz vr9{mr1}, r6, vr9
0029d0  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
0029d4  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
0029d8  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
0029dc  12348602  vadd.s.mz vr8{mr1}, r12, vr8
0029e0  92349602  vadd.s.mz vr9{mr1}, r12, vr9
0029e4  eab38502  vand.s.mz vr7{mr1}, r11, vr8
0029e8  661403c0  vabs.f vr8, vr6
0029ec  6ab39502  vand.s.mz vr6{mr1}, r11, vr9
0029f0  ea230834  vor.u.mh vr7{mr2}, r16, vr0
0029f4  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
0029f8  6a230834  vor.u.mh vr6{mr2}, r16, vr0
0029fc  4a840b02  vloads.mz vr8{mr1}, 0(r23)
002a00  9f0b8100  addli r23, r2, 64
002a04  c2840b02  vload.mz vr9{mr1}, 0(r23)
002a08  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
002a0c  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
002a10  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002a14  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
002a18  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002a1c  46007102  vstore.mz vr7{mr1}, 0(r2)
002a20  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002a24  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002a28  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
002a2c  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
002a30  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002a34  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002a38  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002a3c  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
002a40  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
002a44  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
002a48  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
002a4c  ea349302  vand.s.mz vr9{mr1}, r6, vr9
002a50  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002a54  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
002a58  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
002a5c  661505c0  vabs.f vr10, vr10
002a60  661404c0  vabs.f vr8, vr8
002a64  92349602  vadd.s.mz vr9{mr1}, r12, vr9
002a68  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002a6c  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
002a70  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002a74  6ab5b502  vand.s.mz vr10{mr1}, r11, vr11
002a78  ea240834  vor.u.mh vr9{mr2}, r16, vr0
002a7c  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
002a80  6a250834  vor.u.mh vr10{mr2}, r16, vr0
002a84  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
002a88  eab4a502  vand.s.mz vr9{mr1}, r11, vr10
002a8c  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
002a90  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002a94  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002a98  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
002a9c  46808b02  vstore.mz vr8{mr1}, 0(r23)
002aa0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002aa4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002aa8  4be83dfe  ble.s r27, r3, -488
002aac  9f010b01  addli r3, r22, 128
002ab0  9f0b0101  addli r23, r2, 128
002ab4  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
002ab8  1f018101  addli r2, r2, 192
002abc  1f0e0e01  addli r28, r28, 128
002ac0  9f8a0a02  addli r21, r21, 256
002ac4  9f830302  addli r7, r7, 256
002ac8  6a237522  vor.u.mz vr6{mr1}, r10, vr7
002acc  4a840102  vloads.mz vr8{mr1}, 0(r3)
002ad0  c2840b02  vload.mz vr9{mr1}, 0(r23)
002ad4  9f018b01  addli r3, r22, 192
002ad8  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
002adc  6ab09502  vand.s.mz vr0{mr1}, r11, vr9
002ae0  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
002ae4  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002ae8  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
002aec  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
002af0  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
002af4  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
002af8  e69504c0  vabs.f vr11, vr9
002afc  6a300302  vand.s.mz vr0{mr1}, r6, vr0
002b00  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002b04  72a1b642  vlt.u.mz mr2{mr1}, r13, vr11
002b08  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
002b0c  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
002b10  12300602  vadd.s.mz vr0{mr1}, r12, vr0
002b14  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002b18  eab40502  vand.s.mz vr9{mr1}, r11, vr0
002b1c  661004c0  vabs.f vr0, vr8
002b20  6ab4a502  vand.s.mz vr8{mr1}, r11, vr10
002b24  ea247834  vor.u.mh vr9{mr2}, r16, vr7
002b28  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002b2c  6a247834  vor.u.mh vr8{mr2}, r16, vr7
002b30  4a800102  vloads.mz vr0{mr1}, 0(r3)
002b34  42050102  vload.mz vr10{mr1}, 0(r2)
002b38  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
002b3c  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
002b40  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002b44  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
002b48  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002b4c  46809b02  vstore.mz vr9{mr1}, 0(r23)
002b50  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
002b54  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
002b58  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
002b5c  6ab00502  vand.s.mz vr0{mr1}, r11, vr0
002b60  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
002b64  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
002b68  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
002b6c  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
002b70  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002b74  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002b78  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
002b7c  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
002b80  e69000c0  vabs.f vr1, vr1
002b84  661000c0  vabs.f vr0, vr0
002b88  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002b8c  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002b90  72a11642  vlt.u.mz mr2{mr1}, r13, vr1
002b94  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002b98  eab0b502  vand.s.mz vr1{mr1}, r11, vr11
002b9c  6a257834  vor.u.mh vr10{mr2}, r16, vr7
002ba0  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002ba4  ea207834  vor.u.mh vr1{mr2}, r16, vr7
002ba8  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
002bac  eab31502  vand.s.mz vr7{mr1}, r11, vr1
002bb0  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
002bb4  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
002bb8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002bbc  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002bc0  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
002bc4  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
002bc8  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
002bcc  46000102  vstore.mz vr0{mr1}, 0(r2)
002bd0  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002bd4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002bd8  bf16beff  blt.s r28, r27, -604
002bdc  db9cffff  j -796
002be0  1f0c0000  addli r24, zero, 0
002be4  9f0c0000  addli r25, zero, 0
002be8  00a00000  mfence { lm }
002bec  3fa167fe  blt.s r15, r6, -952
002bf0  63018fd4  loadli.w r2,  -5568(r30)
002bf4  e3013f00  loadli.w r3,  24(r30)
002bf8  9f0a0000  addli r21, zero, 0
002bfc  8f832c18  div.f.rn r7, r25, r2
002c00  0f012c18  div.f.rn r2, r24, r2
002c04  0bea7320  mul.f.rn r20, r7, r7
002c08  8be30358  neg.f r7, r7
002c0c  0b614119  sub.f.rn r2, r2, r20
002c10  1f0a8fd7  addli r20, r30, -5184
002c14  0b613110  add.f.rn r2, r2, r3
002c18  ab01803f  lui r3, 260096
002c1c  0f010108  sqrt.f.rn r2, r2
002c20  0f812118  div.f.rn r2, r3, r2
002c24  42020a02  vload.mz vr4{mr1}, 0(r20)
002c28  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
002c2c  1f8b4a00  addli r22, r21, 32
002c30  ea212522  vor.u.mz vr3{mr1}, r10, vr2
002c34  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002c38  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002c3c  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002c40  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002c44  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002c48  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002c4c  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002c50  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002c54  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002c58  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002c5c  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002c60  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002c64  e69202c0  vabs.f vr5, vr5
002c68  661202c0  vabs.f vr4, vr4
002c6c  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002c70  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002c74  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002c78  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002c7c  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002c80  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002c84  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002c88  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002c8c  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
002c90  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
002c94  46004a02  vstore.mz vr4{mr1}, 0(r20)
002c98  4bfe67fd  ble.s r15, r22, -1124
002c9c  1f0b8a00  addli r22, r20, 64
002ca0  9f8a8a00  addli r21, r21, 64
002ca4  1f0a0a01  addli r20, r20, 128
002ca8  42020b02  vload.mz vr4{mr1}, 0(r22)
002cac  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002cb0  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002cb4  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002cb8  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002cbc  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002cc0  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002cc4  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002cc8  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002ccc  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002cd0  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002cd4  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002cd8  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002cdc  e69202c0  vabs.f vr5, vr5
002ce0  661202c0  vabs.f vr4, vr4
002ce4  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002ce8  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002cec  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002cf0  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002cf4  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002cf8  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002cfc  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002d00  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002d04  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
002d08  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
002d0c  46002b02  vstore.mz vr2{mr1}, 0(r22)
002d10  3fdcfafe  blt.s r21, r15, -236
002d14  5b64ffff  j -1248
002d18  80300002  core_id r1
002d1c  bb800000  bneq r1, zero, 32
002d20  63012f00  loadli.w r2,  16(r30)
002d24  ab0100f0  lui r3, 983040
002d28  1b311100  slli r2, r2, 1
002d2c  17113100  or r2, r2, r3
002d30  ab010200  lui r3, 32
002d34  9f810100  addli r3, r3, 0
002d38  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002d3c  2bf10000  lui r2, 15
002d40  e3411f00  loadli.w r3,  12(r30)
002d44  00200300  mfence { sm, gm }
002d48  1b11f1ff  ori r2, r2, 4095
002d4c  80210104  csr_set csr3, r2
002d50  00d00100  sync_group
002d54  4bd7111a  ble.s r3, r1, 13780
002d58  e3012f00  loadli.w r3,  16(r30)
002d5c  e3422f00  loadli.w r5,  20(r30)
002d60  2bf4ffff  lui r8, 1048575
002d64  2b080200  lui r16, 32
002d68  9f068fd7  addli r13, r30, -5184
002d6c  9f040002  addli r9, zero, 256
002d70  1f050001  addli r10, zero, 128
002d74  9f058000  addli r11, zero, 64
002d78  1f064000  addli r12, zero, 32
002d7c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002d80  1b14f4ff  ori r8, r8, 4095
002d84  1f080800  addli r16, r16, 0
002d88  0b925110  add.s r4, r3, r5
002d8c  1bb11100  slli r2, r3, 1
002d90  b3810108  fix2float.rn r3, r3
002d94  1f73f2ff  addli r6, r4, -1
002d98  1bb21200  slli r4, r5, 1
002d9c  8b125330  div.s r5, r6, r5
002da0  1f130000  addli r6, zero, 1
002da4  5b070000  j 56
002da8  eb590f00  load.d r[20:21], 0(r30)
002dac  9f068fd7  addli r13, r30, -5184
002db0  00a00000  mfence { lm }
002db4  8ba81911  add.ul r[18:19], r[20:21], r[18:19]
002db8  ab0900f0  lui r19, 983040
002dbc  005a0102  load_param_i r20, 2
002dc0  97193101  or r19, r2, r19
002dc4  8b101a10  add.s r1, r20, r1
002dc8  ffb9d800  s_lm2gm r19, r13, 0(r[18:19])
002dcc  00a00200  mfence { lm, gm }
002dd0  e3431f00  loadli.w r7,  12(r30)
002dd4  3fa07000  blt.s r1, r7, 8
002dd8  5baa0600  j 13648
002ddc  e3031f00  loadli.w r7,  8(r30)
002de0  ab0900f0  lui r19, 983040
002de4  97193101  or r19, r2, r19
002de8  8b987010  add.s r17, r1, r7
002dec  9f037fd6  addli r7, r30, -5320
002df0  8b98f820  mul.s r17, r17, r15
002df4  6bda0300  load.d r[21:22], 0(r7)
002df8  b3980828  sext_int2long r[18:19], r17
002dfc  97b86802  sll.d r[18:19], r[18:19], r6
002e00  0b2a1a11  add.ul r[21:22], r[21:22], r[18:19]
002e04  ff29da00  l_gm2lm r19, r13, 0(r[21:22])
002e08  00a00200  mfence { lm, gm }
002e0c  3fc76200  blt.s r5, r6, 464
002e10  1f0a0000  addli r20, zero, 0
002e14  9f090000  addli r19, zero, 0
002e18  9f0a0000  addli r21, zero, 0
002e1c  db0c0000  j 100
002e20  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
002e24  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002e28  9f9a0a00  addli r21, r21, 1
002e2c  6af134c0  vsrl.p vr2, r9, vr3
002e30  6af214c0  vsrl.p vr4, r9, vr1
002e34  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
002e38  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e3c  ea7125c0  vsrl.p vr3, r10, vr2
002e40  6a7215c0  vsrl.p vr4, r10, vr1
002e44  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e48  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e4c  eaf125c0  vsrl.p vr3, r11, vr2
002e50  6af215c0  vsrl.p vr4, r11, vr1
002e54  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e58  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e5c  ea7126c0  vsrl.p vr3, r12, vr2
002e60  6a7216c0  vsrl.p vr4, r12, vr1
002e64  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e68  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e6c  fa130140  vextracti.f r7, 0(vr2)
002e70  fa960040  vextracti.f r13, 0(vr1)
002e74  0b6a7a10  add.f.rn r20, r20, r7
002e78  8be9d910  add.f.rn r19, r19, r13
002e7c  b7a55a00  beq r21, r5, 360
002e80  1f8c0a00  addli r24, r21, 0
002e84  37309700  beq r14, r9, 12
002e88  17ab8a00  xor r22, r21, r8
002e8c  0b9c6211  add.s r24, r5, r22
002e90  0b1bec20  mul.s r22, r24, r14
002e94  12320002  vadd.s.mz vr4{mr1}, zero, vr0
002e98  92310002  vadd.s.mz vr3{mr1}, zero, vr0
002e9c  12310002  vadd.s.mz vr2{mr1}, zero, vr0
002ea0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002ea4  0b9b6719  sub.s r22, r15, r22
002ea8  0b1beb40  min.s r22, r22, r14
002eac  bf5d6bfe  blt.s r22, r6, -140
002eb0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002eb4  12310002  vadd.s.mz vr2{mr1}, zero, vr0
002eb8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
002ebc  12320002  vadd.s.mz vr4{mr1}, zero, vr0
002ec0  9f0b0000  addli r23, zero, 0
002ec4  0b1c8221  mul.s r24, r4, r24
002ec8  9f0c8fd7  addli r25, r30, -5184
002ecc  1f0d0800  addli r26, r16, 0
002ed0  8b1d8d11  add.s r27, r26, r24
002ed4  9f838b00  addli r7, r23, 64
002ed8  ca820d02  vloads.mz vr5{mr1}, 0(r27)
002edc  1f8e8d00  addli r28, r27, 64
002ee0  4a030e02  vloads.mz vr6{mr1}, 0(r28)
002ee4  0b9e8c11  add.s r28, r25, r24
002ee8  c2030e02  vload.mz vr7{mr1}, 0(r28)
002eec  9f068e00  addli r13, r28, 64
002ef0  42840602  vload.mz vr8{mr1}, 0(r13)
002ef4  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
002ef8  92320002  vadd.s.mz vr5{mr1}, zero, vr0
002efc  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
002f00  06b40300  vfp162float_l.rn vr8, vr7
002f04  86f30300  vfp162float_h.rn vr7, vr7
002f08  86340300  vfp162float_l.rn vr9, vr6
002f0c  06730300  vfp162float_h.rn vr6, vr6
002f10  86120400  vfloat2fp16_l.rn vr5, vr8
002f14  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
002f18  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
002f1c  12340002  vadd.s.mz vr8{mr1}, zero, vr0
002f20  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
002f24  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
002f28  06940400  vfloat2fp16_l.rn vr8, vr9
002f2c  86d20300  vfloat2fp16_h.rn vr5, vr7
002f30  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002f34  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002f38  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
002f3c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002f40  06540300  vfloat2fp16_h.rn vr8, vr6
002f44  46005e02  vstore.mz vr5{mr1}, 0(r28)
002f48  46808602  vstore.mz vr8{mr1}, 0(r13)
002f4c  4b5b7bfe  ble.s r22, r7, -300
002f50  9f830d01  addli r7, r27, 128
002f54  9f060e01  addli r13, r28, 128
002f58  9f8b0b01  addli r23, r23, 128
002f5c  1f0d0d02  addli r26, r26, 256
002f60  9f8c0c02  addli r25, r25, 256
002f64  ca820302  vloads.mz vr5{mr1}, 0(r7)
002f68  9f838d01  addli r7, r27, 192
002f6c  c2830602  vload.mz vr7{mr1}, 0(r13)
002f70  4a830302  vloads.mz vr6{mr1}, 0(r7)
002f74  9f038e01  addli r7, r28, 192
002f78  42840302  vload.mz vr8{mr1}, 0(r7)
002f7c  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
002f80  92320002  vadd.s.mz vr5{mr1}, zero, vr0
002f84  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
002f88  12330002  vadd.s.mz vr6{mr1}, zero, vr0
002f8c  86b40300  vfp162float_l.rn vr9, vr7
002f90  86f30300  vfp162float_h.rn vr7, vr7
002f94  86920400  vfloat2fp16_l.rn vr5, vr9
002f98  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002f9c  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002fa0  86340400  vfp162float_l.rn vr9, vr8
002fa4  06740400  vfp162float_h.rn vr8, vr8
002fa8  06930400  vfloat2fp16_l.rn vr6, vr9
002fac  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
002fb0  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
002fb4  86d20300  vfloat2fp16_h.rn vr5, vr7
002fb8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002fbc  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002fc0  06530400  vfloat2fp16_h.rn vr6, vr8
002fc4  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
002fc8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002fcc  46805602  vstore.mz vr5{mr1}, 0(r13)
002fd0  46806302  vstore.mz vr6{mr1}, 0(r7)
002fd4  bffb6bff  blt.s r23, r22, -260
002fd8  5bc9ffff  j -440
002fdc  9f090000  addli r19, zero, 0
002fe0  1f0a0000  addli r20, zero, 0
002fe4  00a00000  mfence { lm }
002fe8  3f8767fe  blt.s r15, r6, -576
002fec  0f0a3a18  div.f.rn r20, r20, r3
002ff0  8f893918  div.f.rn r19, r19, r3
002ff4  e3033f00  loadli.w r7,  24(r30)
002ff8  1f0b0000  addli r22, zero, 0
002ffc  8b6a4a21  mul.f.rn r21, r20, r20
003000  0b6a0a58  neg.f r20, r20
003004  8be95919  sub.f.rn r19, r19, r21
003008  9f0a8fd7  addli r21, r30, -5184
00300c  8be97910  add.f.rn r19, r19, r7
003010  ab03803f  lui r7, 260096
003014  8f890908  sqrt.f.rn r19, r19
003018  8f893319  div.f.rn r19, r7, r19
00301c  c2800a02  vload.mz vr1{mr1}, 0(r21)
003020  9f0b4b00  addli r23, r22, 32
003024  06b10000  vfp162float_l.rn vr2, vr1
003028  86f00000  vfp162float_h.rn vr1, vr1
00302c  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003030  92111a02  vadd.f.mz.rn vr3{mr1}, r20, vr1
003034  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003038  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00303c  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
003040  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003044  06120100  vfloat2fp16_l.rn vr4, vr2
003048  06d20100  vfloat2fp16_h.rn vr4, vr3
00304c  46804a02  vstore.mz vr4{mr1}, 0(r21)
003050  4be577ff  ble.s r15, r23, -680
003054  9f8b8a00  addli r23, r21, 64
003058  1f0b8b00  addli r22, r22, 64
00305c  9f8a0a01  addli r21, r21, 128
003060  42810b02  vload.mz vr2{mr1}, 0(r23)
003064  86310100  vfp162float_l.rn vr3, vr2
003068  06710100  vfp162float_h.rn vr2, vr2
00306c  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
003070  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003074  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003078  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
00307c  86900100  vfloat2fp16_l.rn vr1, vr3
003080  86500100  vfloat2fp16_h.rn vr1, vr2
003084  46801b02  vstore.mz vr1{mr1}, 0(r23)
003088  3f5efbfe  blt.s r22, r15, -108
00308c  dba3ffff  j -740
003090  80300002  core_id r1
003094  1f210000  addli r2, zero, 2
003098  37aa2016  beq r1, r2, 11912
00309c  1f110000  addli r2, zero, 1
0030a0  378c2012  beq r1, r2, 9984
0030a4  3bea0016  bneq r1, zero, 11928
0030a8  63012f00  loadli.w r2,  16(r30)
0030ac  ab0100f0  lui r3, 983040
0030b0  1b312100  slli r2, r2, 2
0030b4  17113100  or r2, r2, r3
0030b8  ab710200  lui r3, 39
0030bc  9f810108  addli r3, r3, 1024
0030c0  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0030c4  5bcf0500  j 11896
0030c8  80300002  core_id r1
0030cc  bb800000  bneq r1, zero, 32
0030d0  63012f00  loadli.w r2,  16(r30)
0030d4  ab0100f0  lui r3, 983040
0030d8  1b312100  slli r2, r2, 2
0030dc  17113100  or r2, r2, r3
0030e0  abd10200  lui r3, 45
0030e4  9f8101f0  addli r3, r3, -2048
0030e8  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0030ec  2bf10000  lui r2, 15
0030f0  e3411f00  loadli.w r3,  12(r30)
0030f4  00200300  mfence { sm, gm }
0030f8  1b11f1ff  ori r2, r2, 4095
0030fc  80210104  csr_set csr3, r2
003100  00d00100  sync_group
003104  cb981118  ble.s r3, r1, 12836
003108  e3012f00  loadli.w r3,  16(r30)
00310c  e3422f00  loadli.w r5,  20(r30)
003110  abf4ffff  lui r9, 1048575
003114  abd80200  lui r17, 45
003118  1f0b8fd7  addli r22, r30, -5184
00311c  1f140000  addli r8, zero, 1
003120  1f050002  addli r10, zero, 256
003124  9f050001  addli r11, zero, 128
003128  1f068000  addli r12, zero, 64
00312c  9f064000  addli r13, zero, 32
003130  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003134  9b94f4ff  ori r9, r9, 4095
003138  9f8808f0  addli r17, r17, -2048
00313c  0b925110  add.s r4, r3, r5
003140  1bb12100  slli r2, r3, 2
003144  b3810108  fix2float.rn r3, r3
003148  1f73f2ff  addli r6, r4, -1
00314c  1bb22200  slli r4, r5, 2
003150  67043fd6  storeli.w r3, -5312(r30)
003154  9f010fd7  addli r3, r30, -5248
003158  8b125330  div.s r5, r6, r5
00315c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003160  5b070000  j 56
003164  6b530f00  load.d r[7:8], 0(r30)
003168  2b0800f0  lui r16, 983040
00316c  1f0b8fd7  addli r22, r30, -5184
003170  00a00000  mfence { lm }
003174  005a0102  load_param_i r20, 2
003178  17180101  or r16, r2, r16
00317c  8b101a10  add.s r1, r20, r1
003180  0b292311  add.ul r[19:20], r[7:8], r[19:20]
003184  7f386901  s_lm2gm r16, r22, 0(r[19:20])
003188  00a00200  mfence { lm, gm }
00318c  e3411f00  loadli.w r3,  12(r30)
003190  3fa03000  blt.s r1, r3, 8
003194  db320600  j 12692
003198  e3011f00  loadli.w r3,  8(r30)
00319c  0b983010  add.s r16, r1, r3
0031a0  9f210000  addli r3, zero, 2
0031a4  0b18f820  mul.s r16, r16, r15
0031a8  33190828  sext_int2long r[19:20], r16
0031ac  2b0800f0  lui r16, 983040
0031b0  17393902  sll.d r[19:20], r[19:20], r3
0031b4  9f017fd6  addli r3, r30, -5320
0031b8  17180101  or r16, r2, r16
0031bc  6bd30100  load.d r[7:8], 0(r3)
0031c0  0b2a2311  add.ul r[21:22], r[7:8], r[19:20]
0031c4  7f286a01  l_gm2lm r16, r22, 0(r[21:22])
0031c8  00a00200  mfence { lm, gm }
0031cc  bf978200  blt.s r5, r8, 484
0031d0  9f0a0000  addli r21, zero, 0
0031d4  1f0a0000  addli r20, zero, 0
0031d8  1f0b0000  addli r22, zero, 0
0031dc  db0c0000  j 100
0031e0  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
0031e4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0031e8  1f1b0b00  addli r22, r22, 1
0031ec  6a7105c0  vsrl.p vr2, r10, vr0
0031f0  ea7115c0  vsrl.p vr3, r10, vr1
0031f4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0031f8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0031fc  6af105c0  vsrl.p vr2, r11, vr0
003200  eaf115c0  vsrl.p vr3, r11, vr1
003204  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003208  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00320c  6a7106c0  vsrl.p vr2, r12, vr0
003210  ea7116c0  vsrl.p vr3, r12, vr1
003214  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003218  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00321c  6af106c0  vsrl.p vr2, r13, vr0
003220  eaf116c0  vsrl.p vr3, r13, vr1
003224  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003228  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00322c  fa110040  vextracti.f r3, 0(vr0)
003230  7a930040  vextracti.f r6, 0(vr1)
003234  8bea3a10  add.f.rn r21, r21, r3
003238  0b6a6a10  add.f.rn r20, r20, r6
00323c  b7755b00  beq r22, r5, 380
003240  1f080b00  addli r16, r22, 0
003244  3730a700  beq r14, r10, 12
003248  17289b00  xor r16, r22, r9
00324c  0b980211  add.s r16, r5, r16
003250  9f010fd7  addli r3, r30, -5248
003254  8b1be820  mul.s r23, r16, r14
003258  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00325c  8b9b7719  sub.s r23, r15, r23
003260  8b9beb40  min.s r23, r23, r14
003264  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003268  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00326c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003270  bfcd8bfe  blt.s r23, r8, -144
003274  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003278  1f0c0000  addli r24, zero, 0
00327c  8b1c0221  mul.s r25, r4, r16
003280  1f0d8fd7  addli r26, r30, -5184
003284  9f8d0800  addli r27, r17, 0
003288  92304002  vadd.s.mz vr1{mr1}, zero, vr4
00328c  12314002  vadd.s.mz vr2{mr1}, zero, vr4
003290  92314002  vadd.s.mz vr3{mr1}, zero, vr4
003294  0b989d11  add.s r16, r27, r25
003298  0b1e9d11  add.s r28, r26, r25
00329c  1f038800  addli r6, r16, 64
0032a0  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
0032a4  9f038801  addli r7, r16, 192
0032a8  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
0032ac  9f018e01  addli r3, r28, 192
0032b0  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0032b4  1f030801  addli r6, r16, 128
0032b8  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
0032bc  9f030e01  addli r7, r28, 128
0032c0  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0032c4  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
0032c8  c2950302  vload_mask16.mz vr11{mr1}, 0(r7)
0032cc  1f038e00  addli r6, r28, 64
0032d0  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0032d4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0032d8  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0032dc  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0032e0  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0032e4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0032e8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0032ec  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
0032f0  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0032f4  1f038c00  addli r6, r24, 64
0032f8  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0032fc  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
003300  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003304  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
003308  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00330c  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
003310  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
003314  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
003318  4bab6bfe  ble.s r23, r6, -312
00331c  1f030802  addli r6, r16, 256
003320  9f038802  addli r7, r16, 320
003324  9f010e02  addli r3, r28, 256
003328  1f0c0c01  addli r24, r24, 128
00332c  9f8d0d04  addli r27, r27, 512
003330  1f0d0d04  addli r26, r26, 512
003334  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
003338  1f030803  addli r6, r16, 384
00333c  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
003340  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
003344  9f038e02  addli r7, r28, 320
003348  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
00334c  1f038803  addli r6, r16, 448
003350  1f088e03  addli r16, r28, 448
003354  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
003358  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
00335c  1f030e03  addli r6, r28, 384
003360  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
003364  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
003368  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
00336c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
003370  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003374  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003378  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00337c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003380  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
003384  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
003388  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00338c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003390  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
003394  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003398  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00339c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0033a0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0033a4  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0033a8  bf3b7cff  blt.s r24, r23, -276
0033ac  dbc6ffff  j -460
0033b0  1f0a0000  addli r20, zero, 0
0033b4  9f0a0000  addli r21, zero, 0
0033b8  00a00000  mfence { lm }
0033bc  bfa687fe  blt.s r15, r8, -600
0033c0  e3018fd6  loadli.w r3,  -5312(r30)
0033c4  1f0b0000  addli r22, zero, 0
0033c8  8f8a3a18  div.f.rn r21, r21, r3
0033cc  0f083a18  div.f.rn r16, r20, r3
0033d0  e3013f00  loadli.w r3,  24(r30)
0033d4  0bea5a21  mul.f.rn r20, r21, r21
0033d8  0b684819  sub.f.rn r16, r16, r20
0033dc  0bea0a58  neg.f r20, r21
0033e0  9f0a8fd7  addli r21, r30, -5184
0033e4  0b683810  add.f.rn r16, r16, r3
0033e8  ab01803f  lui r3, 260096
0033ec  0f080808  sqrt.f.rn r16, r16
0033f0  0f880119  div.f.rn r16, r3, r16
0033f4  9f8b8a00  addli r23, r21, 64
0033f8  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
0033fc  1f0c4b00  addli r24, r22, 32
003400  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
003404  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003408  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
00340c  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003410  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003414  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
003418  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
00341c  4ba587ff  ble.s r15, r24, -696
003420  9f8b0a01  addli r23, r21, 128
003424  1f8c8a01  addli r24, r21, 192
003428  1f0b8b00  addli r22, r22, 64
00342c  9f8a0a02  addli r21, r21, 256
003430  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
003434  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
003438  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
00343c  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003440  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003444  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003448  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
00344c  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
003450  bf1efbfe  blt.s r22, r15, -92
003454  5ba2ffff  j -752
003458  80300002  core_id r1
00345c  ab630000  lui r7, 6
003460  1f110000  addli r2, zero, 1
003464  1f038fd7  addli r6, r30, -5184
003468  1f048000  addli r8, zero, 64
00346c  1f050010  addli r10, zero, 2048
003470  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
003474  9bb15000  slli r3, r1, 5
003478  80500102  load_param_i r1, 2
00347c  9f830308  addli r7, r7, 1024
003480  9bb45000  slli r9, r1, 5
003484  b3850128  zext_int2long r[12:13], r3
003488  ab0600f0  lui r13, 983040
00348c  97b52502  sll.d r[12:13], r[12:13], r2
003490  9716d400  or r13, r8, r13
003494  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
003498  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
00349c  9bb52100  slli r11, r3, 2
0034a0  8b913410  add.s r3, r9, r3
0034a4  00a00200  mfence { lm, gm }
0034a8  c2000302  vload.mz vr1{mr1}, 0(r6)
0034ac  1386a104  setlt.u r12, r3, r10
0034b0  8b957510  add.s r11, r11, r7
0034b4  9f868500  addli r13, r11, 64
0034b8  66c11180  vmerge_l.hf vr2, vr3, vr1
0034bc  e6c011a0  vmerge_h.hf vr1, vr3, vr1
0034c0  4e902502  vstores_mask16.mz vr2{mr1}, 0(r11)
0034c4  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
0034c8  bb7e06fe  bneq r12, zero, -68
0034cc  2bf10000  lui r2, 15
0034d0  80310002  core_id r3
0034d4  00a00300  mfence { lm, sm, gm }
0034d8  9f020006  addli r5, zero, 768
0034dc  1b11f1ff  ori r2, r2, 4095
0034e0  1b821100  andi r4, r3, 1
0034e4  80210104  csr_set csr3, r2
0034e8  1f010006  addli r2, zero, 768
0034ec  00d00100  sync_group
0034f0  37200200  beq r4, zero, 8
0034f4  9f02000a  addli r5, zero, 1280
0034f8  e3411f00  loadli.w r3,  12(r30)
0034fc  1f140000  addli r8, zero, 1
003500  bfa88116  blt.s r3, r8, 11816
003504  0b112220  mul.s r2, r4, r2
003508  1bcc1000  srli r24, r1, 1
00350c  80300002  core_id r1
003510  9bb11200  slli r3, r5, 1
003514  67044fd4  storeli.w r4, -5568(r30)
003518  1f824200  addli r4, r5, 32
00351c  9f040000  addli r9, zero, 0
003520  9f797000  addli r19, zero, 63
003524  9f0a0005  addli r21, zero, 640
003528  2b09803f  lui r18, 260096
00352c  1f0a2000  addli r20, zero, 16
003530  1f370000  addli r14, zero, 3
003534  2bee7f00  lui r28, 2046
003538  9f551000  addli r11, zero, 13
00353c  1f2b1000  addli r22, zero, 10
003540  9f0b0003  addli r23, zero, 384
003544  67002fd4  storeli.w r2, -5632(r30)
003548  9bcc1000  srli r25, r1, 1
00354c  1bb12200  slli r2, r5, 2
003550  9f008fd7  addli r1, r30, -5184
003554  67083fd6  storeli.w r3, -5248(r30)
003558  674f4fd2  storeli.w r4, -5644(r30)
00355c  2be20700  lui r4, 126
003560  0b111110  add.s r2, r2, r1
003564  8b911110  add.s r3, r3, r1
003568  1f0181ff  addli r2, r2, -64
00356c  670f2fd2  storeli.w r2, -5648(r30)
003570  1f8181ff  addli r2, r3, -64
003574  abf100fc  lui r3, 1032207
003578  e74e2fd2  storeli.w r2, -5652(r30)
00357c  2bf1ffff  lui r2, 1048575
003580  9b9601c0  ori r13, r3, 3072
003584  00a00000  mfence { lm }
003588  e74f8fd3  storeli.w r24, -5636(r30)
00358c  e70f9fd3  storeli.w r25, -5640(r30)
003590  1b1101f8  ori r2, r2, 3968
003594  e70e2fd2  storeli.w r2, -5656(r30)
003598  2bf10000  lui r2, 15
00359c  1b11f1ff  ori r2, r2, 4095
0035a0  67042fd6  storeli.w r2, -5312(r30)
0035a4  2b710000  lui r2, 7
0035a8  1b13f1ff  ori r6, r2, 4095
0035ac  2b01ff03  lui r2, 16368
0035b0  1b16f13f  ori r12, r2, 1023
0035b4  1f010fd5  addli r2, r30, -5504
0035b8  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0035bc  5b040000  j 32
0035c0  00a00300  mfence { lm, sm, gm }
0035c4  63018fd6  loadli.w r2,  -5312(r30)
0035c8  80210104  csr_set csr3, r2
0035cc  00d00100  sync_group
0035d0  8b948411  add.s r9, r9, r24
0035d4  3fa00401  blt.s r9, r16, 8
0035d8  5bc0faff  j -10752
0035dc  0b919411  add.s r2, r9, r25
0035e0  cb0f28fe  ble.s r16, r2, -32
0035e4  e3011f00  loadli.w r3,  8(r30)
0035e8  63050fd4  loadli.w r10,  -5632(r30)
0035ec  0b113110  add.s r2, r2, r3
0035f0  8b818431  div.u r3, r9, r24
0035f4  1b31b100  slli r2, r2, 11
0035f8  1711a100  or r2, r2, r10
0035fc  1f057fd6  addli r10, r30, -5320
003600  33180128  sext_int2long r[17:18], r2
003604  2b0100f0  lui r2, 983040
003608  9bb16100  slli r3, r3, 6
00360c  173d8802  sll.d r[27:28], r[17:18], r8
003610  eb570500  load.d r[16:17], 0(r10)
003614  63050fd7  loadli.w r10,  -5248(r30)
003618  9b810104  andi r3, r3, 64
00361c  0ba8a711  add.ul r[17:18], r[16:17], r[27:28]
003620  17112500  or r2, r10, r2
003624  7f211800  l_gm2lm r2, r1, 0(r[17:18])
003628  00310002  core_id r2
00362c  00a00200  mfence { lm, gm }
003630  17912100  or r2, r3, r2
003634  e341dfd3  loadli.w r3,  -5652(r30)
003638  6305efd3  loadli.w r10,  -5648(r30)
00363c  6348efd3  loadli.w r16,  -5644(r30)
003640  c2800102  vload.mz vr1{mr1}, 0(r3)
003644  1f08c8ff  addli r16, r16, -32
003648  1f0c85ff  addli r24, r10, -64
00364c  9f8181ff  addli r3, r3, -64
003650  93880905  setlt.u r17, r19, r16
003654  66c111a0  vmerge_h.hf vr2, vr3, vr1
003658  e6c01180  vmerge_l.hf vr1, vr3, vr1
00365c  46102502  vstore_mask16.mz vr2{mr1}, 0(r10)
003660  1f0505ff  addli r10, r10, -128
003664  46101c02  vstore_mask16.mz vr1{mr1}, 0(r24)
003668  3bef08fe  bneq r17, zero, -40
00366c  00a00000  mfence { lm }
003670  1f058fd5  addli r10, r30, -5440
003674  e3018fd4  loadli.w r3,  -5568(r30)
003678  7330a501  store.d r[27:28], 0(r10)
00367c  3bb60100  bneq r3, zero, 396
003680  92303002  vadd.s.mz vr1{mr1}, zero, vr3
003684  12313002  vadd.s.mz vr2{mr1}, zero, vr3
003688  12323002  vadd.s.mz vr4{mr1}, zero, vr3
00368c  6305dfd3  loadli.w r10,  -5656(r30)
003690  9f010000  addli r3, zero, 0
003694  8b987110  add.s r17, r3, r7
003698  0b983010  add.s r16, r1, r3
00369c  1f050501  addli r10, r10, 128
0036a0  9f810104  addli r3, r3, 512
0036a4  9f870801  addli r15, r17, 128
0036a8  4a900802  vloads_mask16.mz vr0{mr1}, 0(r17)
0036ac  1f8c8800  addli r24, r17, 64
0036b0  42140802  vload_mask16.mz vr8{mr1}, 0(r16)
0036b4  9f0c8801  addli r25, r16, 192
0036b8  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
0036bc  9f878801  addli r15, r17, 192
0036c0  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0036c4  1f0c8800  addli r24, r16, 64
0036c8  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0036cc  ca930702  vloads_mask16.mz vr7{mr1}, 0(r15)
0036d0  9f070801  addli r15, r16, 128
0036d4  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
0036d8  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
0036dc  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0036e0  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0036e4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0036e8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0036ec  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0036f0  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
0036f4  46908702  vstore_mask16.mz vr8{mr1}, 0(r15)
0036f8  9f870802  addli r15, r17, 256
0036fc  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003700  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003704  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003708  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
00370c  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
003710  9f878802  addli r15, r17, 320
003714  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
003718  9f0c0802  addli r25, r16, 256
00371c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003720  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003724  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003728  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
00372c  9f870803  addli r15, r17, 384
003730  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003734  9f888803  addli r17, r17, 448
003738  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00373c  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
003740  9f078802  addli r15, r16, 320
003744  4a950802  vloads_mask16.mz vr10{mr1}, 0(r17)
003748  9f080803  addli r17, r16, 384
00374c  1f088803  addli r16, r16, 448
003750  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
003754  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003758  c2930802  vload_mask16.mz vr7{mr1}, 0(r17)
00375c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003760  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
003764  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003768  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00376c  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003770  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003774  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
003778  93075505  setlt.u r15, r10, r21
00377c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003780  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003784  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003788  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00378c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003790  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
003794  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
003798  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00379c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0037a0  bbdb07fe  bneq r15, zero, -268
0037a4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0037a8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0037ac  9f010002  addli r3, zero, 256
0037b0  6af101c0  vsrl.p vr2, r3, vr0
0037b4  eaf111c0  vsrl.p vr3, r3, vr1
0037b8  9f010001  addli r3, zero, 128
0037bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037c4  6af101c0  vsrl.p vr2, r3, vr0
0037c8  eaf111c0  vsrl.p vr3, r3, vr1
0037cc  9f018000  addli r3, zero, 64
0037d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037d4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037d8  6af101c0  vsrl.p vr2, r3, vr0
0037dc  eaf111c0  vsrl.p vr3, r3, vr1
0037e0  9f014000  addli r3, zero, 32
0037e4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037e8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037ec  6af101c0  vsrl.p vr2, r3, vr0
0037f0  eaf111c0  vsrl.p vr3, r3, vr1
0037f4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037f8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037fc  fa110040  vextracti.f r3, 0(vr0)
003800  7a950040  vextracti.f r10, 0(vr1)
003804  5b660000  j 816
003808  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00380c  2bf5ffff  lui r10, 1048575
003810  9f010000  addli r3, zero, 0
003814  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003818  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00381c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003820  1b1505f8  ori r10, r10, 3968
003824  8b983310  add.s r17, r7, r3
003828  0b983010  add.s r16, r1, r3
00382c  1f050501  addli r10, r10, 128
003830  9f810104  addli r3, r3, 512
003834  9f870831  addli r15, r17, 6272
003838  1f8c0830  addli r24, r17, 6144
00383c  9f8c8831  addli r25, r17, 6336
003840  9f0d0818  addli r27, r16, 3072
003844  ca930702  vloads_mask16.mz vr7{mr1}, 0(r15)
003848  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
00384c  1f8c8830  addli r24, r17, 6208
003850  ca940c02  vloads_mask16.mz vr9{mr1}, 0(r25)
003854  9f078818  addli r15, r16, 3136
003858  9f0c8819  addli r25, r16, 3264
00385c  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
003860  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
003864  1f0c0819  addli r24, r16, 3200
003868  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
00386c  c2950702  vload_mask16.mz vr11{mr1}, 0(r15)
003870  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
003874  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003878  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
00387c  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
003880  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
003884  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003888  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
00388c  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
003890  1f8c0832  addli r24, r17, 6400
003894  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
003898  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
00389c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0038a0  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
0038a4  9f0c081a  addli r25, r16, 3328
0038a8  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
0038ac  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
0038b0  9f07081b  addli r15, r16, 3456
0038b4  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0038b8  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0038bc  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
0038c0  1f8c8832  addli r24, r17, 6464
0038c4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0038c8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0038cc  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0038d0  1f8c0833  addli r24, r17, 6528
0038d4  9f888833  addli r17, r17, 6592
0038d8  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
0038dc  1f0c881a  addli r24, r16, 3392
0038e0  4a950802  vloads_mask16.mz vr10{mr1}, 0(r17)
0038e4  1f08881b  addli r16, r16, 3520
0038e8  93087505  setlt.u r17, r10, r23
0038ec  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
0038f0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0038f4  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0038f8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0038fc  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
003900  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003904  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003908  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
00390c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003910  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
003914  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003918  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00391c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003920  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003924  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003928  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
00392c  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
003930  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003934  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003938  bbbb08fe  bneq r17, zero, -276
00393c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003940  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003944  9f010002  addli r3, zero, 256
003948  abf7ffff  lui r15, 1048575
00394c  1f0c0000  addli r24, zero, 0
003950  1b9807f8  ori r16, r15, 3968
003954  eaf111c0  vsrl.p vr3, r3, vr1
003958  6af101c0  vsrl.p vr2, r3, vr0
00395c  9f010001  addli r3, zero, 128
003960  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003964  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003968  eaf111c0  vsrl.p vr3, r3, vr1
00396c  6af101c0  vsrl.p vr2, r3, vr0
003970  9f018000  addli r3, zero, 64
003974  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003978  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00397c  eaf111c0  vsrl.p vr3, r3, vr1
003980  6af101c0  vsrl.p vr2, r3, vr0
003984  9f014000  addli r3, zero, 32
003988  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00398c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003990  eaf111c0  vsrl.p vr3, r3, vr1
003994  6af101c0  vsrl.p vr2, r3, vr0
003998  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00399c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0039a0  7a950040  vextracti.f r10, 0(vr1)
0039a4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0039a8  fa110040  vextracti.f r3, 0(vr0)
0039ac  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0039b0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0039b4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0039b8  8b9d8311  add.s r27, r7, r24
0039bc  8b988011  add.s r17, r1, r24
0039c0  1f080801  addli r16, r16, 128
0039c4  1f0c0c04  addli r24, r24, 512
0039c8  9f870d18  addli r15, r27, 3072
0039cc  9f8c0d19  addli r25, r27, 3200
0039d0  42940802  vload_mask16.mz vr8{mr1}, 0(r17)
0039d4  1f8d8801  addli r26, r17, 192
0039d8  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
0039dc  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
0039e0  9f878d18  addli r15, r27, 3136
0039e4  9f8c8d19  addli r25, r27, 3264
0039e8  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
0039ec  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
0039f0  9f870801  addli r15, r17, 128
0039f4  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
0039f8  9f8c8800  addli r25, r17, 64
0039fc  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
003a00  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
003a04  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
003a08  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
003a0c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
003a10  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
003a14  46908702  vstore_mask16.mz vr8{mr1}, 0(r15)
003a18  9f870d1a  addli r15, r27, 3328
003a1c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003a20  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003a24  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003a28  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003a2c  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
003a30  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
003a34  9f878d1a  addli r15, r27, 3392
003a38  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
003a3c  1f8d0802  addli r26, r17, 256
003a40  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
003a44  9f8c0803  addli r25, r17, 384
003a48  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003a4c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003a50  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
003a54  9f870d1b  addli r15, r27, 3456
003a58  c2130d02  vload_mask16.mz vr7{mr1}, 0(r26)
003a5c  9f8d8d1b  addli r27, r27, 3520
003a60  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003a64  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003a68  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
003a6c  9f878802  addli r15, r17, 320
003a70  4a950d02  vloads_mask16.mz vr10{mr1}, 0(r27)
003a74  9f888803  addli r17, r17, 448
003a78  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
003a7c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003a80  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003a84  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003a88  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
003a8c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003a90  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003a94  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
003a98  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003a9c  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
003aa0  93075805  setlt.u r15, r16, r21
003aa4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003aa8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003aac  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003ab0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003ab4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003ab8  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
003abc  46907802  vstore_mask16.mz vr7{mr1}, 0(r17)
003ac0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003ac4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003ac8  bbcb07fe  bneq r15, zero, -272
003acc  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003ad0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003ad4  9f070002  addli r15, zero, 256
003ad8  6af107c0  vsrl.p vr2, r15, vr0
003adc  eaf117c0  vsrl.p vr3, r15, vr1
003ae0  9f070001  addli r15, zero, 128
003ae4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003ae8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003aec  6af107c0  vsrl.p vr2, r15, vr0
003af0  eaf117c0  vsrl.p vr3, r15, vr1
003af4  9f078000  addli r15, zero, 64
003af8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003afc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003b00  6af107c0  vsrl.p vr2, r15, vr0
003b04  eaf117c0  vsrl.p vr3, r15, vr1
003b08  9f074000  addli r15, zero, 32
003b0c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003b10  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003b14  6af107c0  vsrl.p vr2, r15, vr0
003b18  eaf117c0  vsrl.p vr3, r15, vr1
003b1c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003b20  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003b24  fa170040  vextracti.f r15, 0(vr0)
003b28  7a980040  vextracti.f r16, 0(vr1)
003b2c  8be1f110  add.f.rn r3, r3, r15
003b30  0b650511  add.f.rn r10, r10, r16
003b34  2b8d0000  lui r26, 8
003b38  ab8d0000  lui r27, 8
003b3c  9b372100  slli r15, r2, 2
003b40  634cffd3  loadli.w r24,  -5636(r30)
003b44  e30cffd3  loadli.w r25,  -5640(r30)
003b48  1b01e107  andi r2, r2, 126
003b4c  1f0d0d08  addli r26, r26, 1024
003b50  9f8d0d0c  addli r27, r27, 1536
003b54  1b312100  slli r2, r2, 2
003b58  0b98a711  add.s r16, r15, r26
003b5c  8b98b711  add.s r17, r15, r27
003b60  73603800  stores.w r3, 0(r16)
003b64  73e0a800  stores.w r10, 0(r17)
003b68  1f088fd7  addli r16, r30, -5184
003b6c  9f080000  addli r17, zero, 0
003b70  00a00300  mfence { lm, sm, gm }
003b74  e3018fd6  loadli.w r3,  -5312(r30)
003b78  80a10104  csr_set csr3, r3
003b7c  9b914700  ori r3, r15, 4
003b80  8b17a111  add.s r15, r2, r26
003b84  00d00100  sync_group
003b88  0b11b111  add.s r2, r2, r27
003b8c  0b95a111  add.s r10, r3, r26
003b90  efc70700  loads.w r15, 0(r15)
003b94  8b91b111  add.s r3, r3, r27
003b98  6f410100  loads.w r2, 0(r2)
003b9c  6f450500  loads.w r10, 0(r10)
003ba0  efc10100  loads.w r3, 0(r3)
003ba4  0b65f510  add.f.rn r10, r10, r15
003ba8  ab07003a  lui r15, 237568
003bac  0be12110  add.f.rn r2, r3, r2
003bb0  8b61f520  mul.f.rn r3, r10, r15
003bb4  0b61f120  mul.f.rn r2, r2, r15
003bb8  0be53120  mul.f.rn r10, r3, r3
003bbc  8be10158  neg.f r3, r3
003bc0  0b61a118  sub.f.rn r2, r2, r10
003bc4  63053f00  loadli.w r10,  24(r30)
003bc8  0b61a110  add.f.rn r2, r2, r10
003bcc  1f058fd7  addli r10, r30, -5184
003bd0  0f010108  sqrt.f.rn r2, r2
003bd4  0f012918  div.f.rn r2, r18, r2
003bd8  9f078800  addli r15, r16, 64
003bdc  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
003be0  9f884800  addli r17, r17, 32
003be4  1f080801  addli r16, r16, 128
003be8  c2900702  vload_mask16.mz vr1{mr1}, 0(r15)
003bec  93875804  setlt.u r15, r17, r5
003bf0  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
003bf4  12911102  vadd.f.mz.rn vr2{mr1}, r3, vr1
003bf8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003bfc  ea211a22  vor.u.mz vr3{mr1}, r20, vr1
003c00  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
003c04  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
003c08  6eb201c2  vsrl.s.mz vr4{mr1}, vr3, vr0
003c0c  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003c10  6a324402  vand.s.mz vr4{mr1}, r8, vr4
003c14  ea313402  vand.s.mz vr3{mr1}, r8, vr3
003c18  16304002  vadd.s.mz vr0{mr1}, vr0, vr4
003c1c  6a221722  vor.u.mz vr4{mr1}, r14, vr1
003c20  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
003c24  eaa11522  vor.u.mz vr3{mr1}, r11, vr1
003c28  ea201b22  vor.u.mz vr1{mr1}, r22, vr1
003c2c  12300302  vadd.s.mz vr0{mr1}, r6, vr0
003c30  12312302  vadd.s.mz vr2{mr1}, r6, vr2
003c34  eeb201c2  vsrl.s.mz vr5{mr1}, vr3, vr0
003c38  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
003c3c  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003c40  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
003c44  6a325202  vand.s.mz vr4{mr1}, r4, vr5
003c48  6a300e02  vand.s.mz vr0{mr1}, r28, vr0
003c4c  ea313202  vand.s.mz vr3{mr1}, r4, vr3
003c50  6a312e02  vand.s.mz vr2{mr1}, r28, vr2
003c54  6a300922  vor.s.mz vr0{mr1}, r18, vr0
003c58  6a324922  vor.s.mz vr4{mr1}, r18, vr4
003c5c  ea313922  vor.s.mz vr3{mr1}, r18, vr3
003c60  6a312922  vor.s.mz vr2{mr1}, r18, vr2
003c64  06100020  vfloat2fp16_l.rz vr0, vr0
003c68  86d10120  vfloat2fp16_h.rz vr3, vr3
003c6c  06500120  vfloat2fp16_h.rz vr0, vr2
003c70  86110220  vfloat2fp16_l.rz vr3, vr4
003c74  6a300602  vand.s.mz vr0{mr1}, r12, vr0
003c78  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
003c7c  eab01602  vand.s.mz vr1{mr1}, r13, vr1
003c80  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
003c84  46000502  vstore.mz vr0{mr1}, 0(r10)
003c88  1f058500  addli r10, r10, 64
003c8c  3bbd07fe  bneq r15, zero, -180
003c90  9f018fd5  addli r3, r30, -5440
003c94  eb570f00  load.d r[16:17], 0(r30)
003c98  2b0100f0  lui r2, 983040
003c9c  6bdd0100  load.d r[27:28], 0(r3)
003ca0  e3010fd7  loadli.w r3,  -5248(r30)
003ca4  00a00000  mfence { lm }
003ca8  8ba7a711  add.ul r[16:17], r[16:17], r[27:28]
003cac  17912100  or r2, r3, r2
003cb0  7fb11700  s_lm2gm r2, r1, 0(r[16:17])
003cb4  1f010fd5  addli r2, r30, -5504
003cb8  00a00200  mfence { lm, gm }
003cbc  63481f00  loadli.w r16,  12(r30)
003cc0  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
003cc4  db21ffff  j -1780
003cc8  00360002  core_id r12
003ccc  63012f00  loadli.w r2,  16(r30)
003cd0  9b305600  slli r1, r12, 5
003cd4  cb211100  ble.s r2, r1, 104
003cd8  80530102  load_param_i r7, 2
003cdc  2bc40000  lui r8, 12
003ce0  1f110000  addli r2, zero, 1
003ce4  9f018fd7  addli r3, r30, -5184
003ce8  1f038000  addli r6, zero, 64
003cec  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003cf0  9bb35300  slli r7, r7, 5
003cf4  1f0404f0  addli r8, r8, -2048
003cf8  b3840028  zext_int2long r[10:11], r1
003cfc  ab0500f0  lui r11, 983040
003d00  97b42402  sll.d r[10:11], r[10:11], r2
003d04  9715b300  or r11, r6, r11
003d08  8b249210  add.ul r[10:11], r[5:6], r[10:11]
003d0c  ffa53400  l_gm2lm r11, r3, 0(r[10:11])
003d10  9bb42000  slli r9, r1, 2
003d14  8b901310  add.s r1, r7, r1
003d18  00a00200  mfence { lm, gm }
003d1c  c2800102  vload.mz vr1{mr1}, 0(r3)
003d20  8b948410  add.s r9, r9, r8
003d24  1f858400  addli r10, r9, 64
003d28  66411080  vmerge_l.hf vr2, vr0, vr1
003d2c  e64010a0  vmerge_h.hf vr1, vr0, vr1
003d30  4e902402  vstores_mask16.mz vr2{mr1}, 0(r9)
003d34  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
003d38  3f8ff0fe  blt.s r1, r15, -64
003d3c  abf00000  lui r1, 15
003d40  63411f00  loadli.w r2,  12(r30)
003d44  00a00300  mfence { lm, sm, gm }
003d48  9b90f0ff  ori r1, r1, 4095
003d4c  80a10004  csr_set csr3, r1
003d50  00d00100  sync_group
003d54  4b57c112  ble.s r2, r12, 9684
003d58  e3002f00  loadli.w r1,  16(r30)
003d5c  63412f00  loadli.w r2,  20(r30)
003d60  9f038fd7  addli r7, r30, -5184
003d64  1f150000  addli r10, zero, 1
003d68  9f054000  addli r11, zero, 32
003d6c  1f747000  addli r8, zero, 63
003d70  1f080002  addli r16, zero, 256
003d74  9f040001  addli r9, zero, 128
003d78  ab09803f  lui r19, 260096
003d7c  abeb7f00  lui r23, 2046
003d80  abec0700  lui r25, 126
003d84  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003d88  8b912010  add.s r3, r1, r2
003d8c  33820008  fix2float.rn r4, r1
003d90  1bb31000  slli r6, r1, 1
003d94  9bb22000  slli r5, r1, 2
003d98  9f804000  addli r1, r1, 32
003d9c  9b382100  slli r17, r2, 2
003da0  e74f1fd2  storeli.w r1, -5636(r30)
003da4  8b907210  add.s r1, r5, r7
003da8  9ff1f1ff  addli r3, r3, -1
003dac  67004fd4  storeli.w r4, -5632(r30)
003db0  0b922130  div.s r4, r3, r2
003db4  9f8080ff  addli r1, r1, -64
003db8  8b117310  add.s r3, r6, r7
003dbc  e70f1fd2  storeli.w r1, -5640(r30)
003dc0  9f8081ff  addli r1, r3, -64
003dc4  674f1fd2  storeli.w r1, -5644(r30)
003dc8  abf0ffff  lui r1, 1048575
003dcc  00a00000  mfence { lm }
003dd0  67046fd4  storeli.w r6, -5568(r30)
003dd4  9b90f0ff  ori r1, r1, 4095
003dd8  67041fd6  storeli.w r1, -5312(r30)
003ddc  ab700000  lui r1, 7
003de0  9b9af0ff  ori r21, r1, 4095
003de4  ab00ff03  lui r1, 16368
003de8  1b9df03f  ori r26, r1, 1023
003dec  abf000fc  lui r1, 1032207
003df0  1b9e00c0  ori r28, r1, 3072
003df4  9f000fd7  addli r1, r30, -5248
003df8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
003dfc  db090000  j 76
003e00  9f010fd5  addli r3, r30, -5504
003e04  eb500f00  load.d r[2:3], 0(r30)
003e08  9f038fd7  addli r7, r30, -5184
003e0c  1f747000  addli r8, zero, 63
003e10  ebd20100  load.d r[6:7], 0(r3)
003e14  00a00000  mfence { lm }
003e18  ab0100f0  lui r3, 983040
003e1c  63068fd5  loadli.w r12,  -5440(r30)
003e20  8ba05010  add.ul r[2:3], r[2:3], r[6:7]
003e24  63038fd4  loadli.w r6,  -5568(r30)
003e28  80520102  load_param_i r5, 2
003e2c  0b96c210  add.s r12, r5, r12
003e30  97113300  or r3, r6, r3
003e34  ffb17000  s_lm2gm r3, r7, 0(r[2:3])
003e38  00a00200  mfence { lm, gm }
003e3c  e3401f00  loadli.w r1,  12(r30)
003e40  3f201600  blt.s r12, r1, 8
003e44  db9c0400  j 9444
003e48  e3001f00  loadli.w r1,  8(r30)
003e4c  9f027fd6  addli r5, r30, -5320
003e50  9f860800  addli r13, r17, 0
003e54  8b101610  add.s r1, r12, r1
003e58  8b90f020  mul.s r1, r1, r15
003e5c  b3900028  sext_int2long r[2:3], r1
003e60  97b8a002  sll.d r[18:19], r[2:3], r10
003e64  6bd10200  load.d r[3:4], 0(r5)
003e68  ab0000f0  lui r1, 983040
003e6c  9f020fd5  addli r5, r30, -5504
003e70  97101300  or r1, r6, r1
003e74  73b01201  store.d r[18:19], 0(r5)
003e78  0b211111  add.ul r[3:4], r[3:4], r[18:19]
003e7c  ff207100  l_gm2lm r1, r7, 0(r[3:4])
003e80  00a00200  mfence { lm, gm }
003e84  bff0b700  blt.s r15, r11, 60
003e88  e340efd3  loadli.w r1,  -5644(r30)
003e8c  6301ffd3  loadli.w r2,  -5640(r30)
003e90  e341ffd3  loadli.w r3,  -5636(r30)
003e94  c2800002  vload.mz vr1{mr1}, 0(r1)
003e98  9f81c1ff  addli r3, r3, -32
003e9c  1f0381ff  addli r6, r2, -64
003ea0  9f8080ff  addli r1, r1, -64
003ea4  93023404  setlt.u r5, r8, r3
003ea8  664110a0  vmerge_h.hf vr2, vr0, vr1
003eac  e6401080  vmerge_l.hf vr1, vr0, vr1
003eb0  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
003eb4  1f0101ff  addli r2, r2, -128
003eb8  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
003ebc  3bef02fe  bneq r5, zero, -40
003ec0  670ccfd4  storeli.w r12, -5440(r30)
003ec4  00a00000  mfence { lm }
003ec8  bf77a200  blt.s r4, r10, 508
003ecc  9f010000  addli r3, zero, 0
003ed0  9f020000  addli r5, zero, 0
003ed4  1f010000  addli r2, zero, 0
003ed8  9f880600  addli r17, r13, 0
003edc  1f098000  addli r18, zero, 64
003ee0  db0d0000  j 108
003ee4  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
003ee8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003eec  1f110100  addli r2, r2, 1
003ef0  6a7108c0  vsrl.p vr2, r16, vr0
003ef4  ea7118c0  vsrl.p vr3, r16, vr1
003ef8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003efc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f00  6af104c0  vsrl.p vr2, r9, vr0
003f04  eaf114c0  vsrl.p vr3, r9, vr1
003f08  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f0c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f10  6a7109c0  vsrl.p vr2, r18, vr0
003f14  ea7119c0  vsrl.p vr3, r18, vr1
003f18  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f1c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f20  6af105c0  vsrl.p vr2, r11, vr0
003f24  eaf115c0  vsrl.p vr3, r11, vr1
003f28  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f2c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f30  fa100040  vextracti.f r1, 0(vr0)
003f34  7a930040  vextracti.f r6, 0(vr1)
003f38  8be11110  add.f.rn r3, r3, r1
003f3c  9f000fd7  addli r1, r30, -5248
003f40  8be26210  add.f.rn r5, r5, r6
003f44  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
003f48  37264100  beq r2, r4, 392
003f4c  9f000100  addli r1, r2, 0
003f50  37400701  beq r14, r16, 16
003f54  e3008fd6  loadli.w r1,  -5312(r30)
003f58  97201100  xor r1, r2, r1
003f5c  8b101210  add.s r1, r4, r1
003f60  0b93e020  mul.s r6, r1, r14
003f64  12320002  vadd.s.mz vr4{mr1}, zero, vr0
003f68  92310002  vadd.s.mz vr3{mr1}, zero, vr0
003f6c  12310002  vadd.s.mz vr2{mr1}, zero, vr0
003f70  92300002  vadd.s.mz vr1{mr1}, zero, vr0
003f74  0b936718  sub.s r6, r15, r6
003f78  8b13e340  min.s r7, r6, r14
003f7c  bfada3fe  blt.s r7, r10, -152
003f80  9f060fd7  addli r13, r30, -5248
003f84  2bc60000  lui r12, 12
003f88  0b931820  mul.s r6, r17, r1
003f8c  1f040000  addli r8, zero, 0
003f90  9f008fd7  addli r1, r30, -5184
003f94  42920602  vload_mask16.mz vr4{mr1}, 0(r13)
003f98  1f0606f0  addli r12, r12, -2048
003f9c  92304002  vadd.s.mz vr1{mr1}, zero, vr4
003fa0  12314002  vadd.s.mz vr2{mr1}, zero, vr4
003fa4  92314002  vadd.s.mz vr3{mr1}, zero, vr4
003fa8  0b1a6610  add.s r20, r12, r6
003fac  8b966010  add.s r13, r1, r6
003fb0  1f0b8a00  addli r22, r20, 64
003fb4  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
003fb8  1f0c8a01  addli r24, r20, 192
003fbc  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
003fc0  9f8d8601  addli r27, r13, 192
003fc4  4a130b02  vloads_mask16.mz vr6{mr1}, 0(r22)
003fc8  1f0b0a01  addli r22, r20, 128
003fcc  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
003fd0  1f8c0601  addli r24, r13, 128
003fd4  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
003fd8  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
003fdc  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
003fe0  1f8b8600  addli r22, r13, 64
003fe4  42150b02  vload_mask16.mz vr10{mr1}, 0(r22)
003fe8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
003fec  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
003ff0  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
003ff4  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
003ff8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003ffc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004000  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
004004  46106b02  vstore_mask16.mz vr6{mr1}, 0(r22)
004008  1f0b8400  addli r22, r8, 64
00400c  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
004010  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004014  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004018  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
00401c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004020  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
004024  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
004028  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00402c  cbea63ff  ble.s r7, r22, -328
004030  1f0c0a02  addli r24, r20, 256
004034  9f0d8a02  addli r27, r20, 320
004038  1f8b0602  addli r22, r13, 256
00403c  1f040401  addli r8, r8, 128
004040  1f060604  addli r12, r12, 512
004044  9f800004  addli r1, r1, 512
004048  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
00404c  1f0c0a03  addli r24, r20, 384
004050  1f0a8a03  addli r20, r20, 448
004054  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
004058  42130b02  vload_mask16.mz vr6{mr1}, 0(r22)
00405c  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
004060  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
004064  1f8a0603  addli r20, r13, 384
004068  1f8c8602  addli r24, r13, 320
00406c  9f868603  addli r13, r13, 448
004070  42150a02  vload_mask16.mz vr10{mr1}, 0(r20)
004074  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
004078  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
00407c  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
004080  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004084  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
004088  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00408c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004090  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
004094  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
004098  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
00409c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0040a0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0040a4  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
0040a8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0040ac  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0040b0  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0040b4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0040b8  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
0040bc  bf3b74fe  blt.s r8, r7, -276
0040c0  dbc4ffff  j -476
0040c4  9f020000  addli r5, zero, 0
0040c8  9f010000  addli r3, zero, 0
0040cc  9f880600  addli r17, r13, 0
0040d0  1f042000  addli r8, zero, 16
0040d4  1f360000  addli r12, zero, 3
0040d8  9f561000  addli r13, zero, 13
0040dc  1f2a1000  addli r20, zero, 10
0040e0  00a00000  mfence { lm }
0040e4  3ff4a7fe  blt.s r15, r10, -740
0040e8  e3000fd4  loadli.w r1,  -5632(r30)
0040ec  1f030000  addli r6, zero, 0
0040f0  0f811118  div.f.rn r2, r3, r1
0040f4  8f801218  div.f.rn r1, r5, r1
0040f8  9f028fd7  addli r5, r30, -5184
0040fc  8b612120  mul.f.rn r3, r2, r2
004100  0b610158  neg.f r2, r2
004104  8be03018  sub.f.rn r1, r1, r3
004108  e3013f00  loadli.w r3,  24(r30)
00410c  8be03010  add.f.rn r1, r1, r3
004110  9f018fd7  addli r3, r30, -5184
004114  8f800008  sqrt.f.rn r1, r1
004118  8f801918  div.f.rn r1, r19, r1
00411c  9f838200  addli r7, r5, 64
004120  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
004124  1f034300  addli r6, r6, 32
004128  9f820201  addli r5, r5, 128
00412c  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
004130  92111102  vadd.f.mz.rn vr3{mr1}, r2, vr1
004134  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004138  6a221422  vor.u.mz vr4{mr1}, r8, vr1
00413c  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
004140  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
004144  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
004148  ee3232c2  vsrl.s.mz vr5{mr1}, vr4, vr3
00414c  6e3222c2  vsrl.s.mz vr4{mr1}, vr4, vr2
004150  ea325502  vand.s.mz vr5{mr1}, r10, vr5
004154  6a324502  vand.s.mz vr4{mr1}, r10, vr4
004158  96b15102  vadd.s.mz vr3{mr1}, vr3, vr5
00415c  ea221622  vor.u.mz vr5{mr1}, r12, vr1
004160  16314102  vadd.s.mz vr2{mr1}, vr2, vr4
004164  6aa21622  vor.u.mz vr4{mr1}, r13, vr1
004168  ea201a22  vor.u.mz vr1{mr1}, r20, vr1
00416c  92b13a02  vadd.s.mz vr3{mr1}, r21, vr3
004170  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
004174  6e3332c2  vsrl.s.mz vr6{mr1}, vr4, vr3
004178  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
00417c  6e3222c2  vsrl.s.mz vr4{mr1}, vr4, vr2
004180  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
004184  eab26c02  vand.s.mz vr5{mr1}, r25, vr6
004188  eab13b02  vand.s.mz vr3{mr1}, r23, vr3
00418c  6ab24c02  vand.s.mz vr4{mr1}, r25, vr4
004190  6ab12b02  vand.s.mz vr2{mr1}, r23, vr2
004194  eab25922  vor.s.mz vr5{mr1}, r19, vr5
004198  eab13922  vor.s.mz vr3{mr1}, r19, vr3
00419c  6ab24922  vor.s.mz vr4{mr1}, r19, vr4
0041a0  6ab12922  vor.s.mz vr2{mr1}, r19, vr2
0041a4  06520220  vfloat2fp16_h.rz vr4, vr4
0041a8  06510120  vfloat2fp16_h.rz vr2, vr2
0041ac  06920220  vfloat2fp16_l.rz vr4, vr5
0041b0  06910120  vfloat2fp16_l.rz vr2, vr3
0041b4  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
0041b8  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
0041bc  ea301e02  vand.s.mz vr1{mr1}, r28, vr1
0041c0  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
0041c4  46801102  vstore.mz vr1{mr1}, 0(r3)
0041c8  9f818100  addli r3, r3, 64
0041cc  3f4df3fe  blt.s r6, r15, -176
0041d0  5b86ffff  j -976
0041d4  ab330100  lui r7, 19
0041d8  803a0002  core_id r21
0041dc  00510102  load_param_i r2, 2
0041e0  9f100000  addli r1, zero, 1
0041e4  1f038fd7  addli r6, r30, -5184
0041e8  1f048000  addli r8, zero, 64
0041ec  1f050010  addli r10, zero, 2048
0041f0  9bb15a00  slli r3, r21, 5
0041f4  9b345100  slli r9, r2, 5
0041f8  9f8303f8  addli r7, r7, -1024
0041fc  b3850128  zext_int2long r[12:13], r3
004200  ab0600f0  lui r13, 983040
004204  97b51502  sll.d r[12:13], r[12:13], r1
004208  9716d400  or r13, r8, r13
00420c  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
004210  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
004214  9bb52100  slli r11, r3, 2
004218  8b913410  add.s r3, r9, r3
00421c  00a00200  mfence { lm, gm }
004220  42000302  vload.mz vr0{mr1}, 0(r6)
004224  1386a104  setlt.u r12, r3, r10
004228  8b957510  add.s r11, r11, r7
00422c  9f868500  addli r13, r11, 64
004230  86300000  vfp162float_l.rn vr1, vr0
004234  06700000  vfp162float_h.rn vr0, vr0
004238  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
00423c  4e900602  vstores_mask16.mz vr0{mr1}, 0(r13)
004240  bb7e06fe  bneq r12, zero, -68
004244  abf00000  lui r1, 15
004248  00a00300  mfence { lm, sm, gm }
00424c  9b8d1a00  andi r27, r21, 1
004250  1f020006  addli r4, zero, 768
004254  9b91f0ff  ori r3, r1, 4095
004258  80a10104  csr_set csr3, r3
00425c  9f010006  addli r3, zero, 768
004260  00d00100  sync_group
004264  37a00d00  beq r27, zero, 8
004268  1f02000a  addli r4, zero, 1280
00426c  e3421f00  loadli.w r5,  12(r30)
004270  1f1b0000  addli r22, zero, 1
004274  bfd26211  blt.s r5, r22, 8372
004278  8b903d20  mul.s r1, r27, r3
00427c  9b451100  srli r11, r2, 1
004280  1b312200  slli r2, r4, 2
004284  1f058fd7  addli r10, r30, -5184
004288  9b361200  slli r13, r4, 1
00428c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004290  ab5c0100  lui r25, 21
004294  2b590100  lui r18, 21
004298  1f040000  addli r8, zero, 0
00429c  1bc61a00  srli r12, r21, 1
0042a0  9f787000  addli r17, zero, 63
0042a4  1f0a0005  addli r20, zero, 640
0042a8  9f0b8000  addli r23, zero, 64
0042ac  1f0c4000  addli r24, zero, 32
0042b0  1f0e0003  addli r28, zero, 384
0042b4  67081fd6  storeli.w r1, -5248(r30)
0042b8  9f004200  addli r1, r4, 32
0042bc  0b11a110  add.s r2, r2, r10
0042c0  8b91a610  add.s r3, r13, r10
0042c4  9f8c0cf8  addli r25, r25, -1024
0042c8  1f0909fc  addli r18, r18, -512
0042cc  67041fd6  storeli.w r1, -5312(r30)
0042d0  9f0081ff  addli r1, r2, -64
0042d4  1f018fd4  addli r2, r30, -5568
0042d8  670c1fd4  storeli.w r1, -5440(r30)
0042dc  9f8081ff  addli r1, r3, -64
0042e0  67081fd4  storeli.w r1, -5504(r30)
0042e4  abf0ffff  lui r1, 1048575
0042e8  00a00000  mfence { lm }
0042ec  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0042f0  2bf10000  lui r2, 15
0042f4  9b9000f8  ori r1, r1, 3968
0042f8  1b1df1ff  ori r26, r2, 4095
0042fc  67001fd4  storeli.w r1, -5632(r30)
004300  db030000  j 28
004304  00a00300  mfence { lm, sm, gm }
004308  80210d04  csr_set csr3, r26
00430c  00d00100  sync_group
004310  0b14b410  add.s r8, r8, r11
004314  3f200401  blt.s r8, r16, 8
004318  5b18f9ff  j -14144
00431c  0b11c410  add.s r2, r8, r12
004320  cb1f28fe  ble.s r16, r2, -28
004324  e3001f00  loadli.w r1,  8(r30)
004328  8b01b430  div.u r3, r8, r11
00432c  0b111110  add.s r2, r2, r1
004330  e3000fd7  loadli.w r1,  -5248(r30)
004334  1b31b100  slli r2, r2, 11
004338  9bb16100  slli r3, r3, 6
00433c  17111100  or r2, r2, r1
004340  9f007fd6  addli r1, r30, -5320
004344  9b810104  andi r3, r3, 64
004348  b3120128  sext_int2long r[6:7], r2
00434c  6bd70000  load.d r[15:16], 0(r1)
004350  2b0100f0  lui r2, 983040
004354  97b26203  sll.d r[6:7], r[6:7], r22
004358  17912600  or r2, r13, r2
00435c  0b275710  add.ul r[15:16], r[15:16], r[6:7]
004360  7f21a700  l_gm2lm r2, r10, 0(r[15:16])
004364  17915101  or r2, r3, r21
004368  00a00200  mfence { lm, gm }
00436c  e3010fd5  loadli.w r3,  -5504(r30)
004370  e3048fd5  loadli.w r9,  -5440(r30)
004374  63078fd6  loadli.w r14,  -5312(r30)
004378  c2800102  vload.mz vr1{mr1}, 0(r3)
00437c  1f07c7ff  addli r14, r14, -32
004380  9f8984ff  addli r19, r9, -64
004384  9f8181ff  addli r3, r3, -64
004388  9387e804  setlt.u r15, r17, r14
00438c  06f10000  vfp162float_h.rn vr2, vr1
004390  86b00000  vfp162float_l.rn vr1, vr1
004394  46902402  vstore_mask16.mz vr2{mr1}, 0(r9)
004398  9f8404ff  addli r9, r9, -128
00439c  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
0043a0  3bef07fe  bneq r15, zero, -40
0043a4  00a00000  mfence { lm }
0043a8  3bb60d00  bneq r27, zero, 396
0043ac  9f008fd4  addli r1, r30, -5568
0043b0  e3040fd4  loadli.w r9,  -5632(r30)
0043b4  9f010000  addli r3, zero, 0
0043b8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0043bc  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0043c0  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0043c4  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0043c8  8b977110  add.s r15, r3, r7
0043cc  0b173510  add.s r14, r10, r3
0043d0  9f840401  addli r9, r9, 128
0043d4  9f810104  addli r3, r3, 512
0043d8  9f800701  addli r1, r15, 128
0043dc  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
0043e0  1f888700  addli r16, r15, 64
0043e4  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
0043e8  9f098701  addli r19, r14, 192
0043ec  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
0043f0  9f808701  addli r1, r15, 192
0043f4  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
0043f8  1f088700  addli r16, r14, 64
0043fc  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
004400  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
004404  9f000701  addli r1, r14, 128
004408  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
00440c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
004410  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004414  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004418  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00441c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004420  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004424  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
004428  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
00442c  9f800702  addli r1, r15, 256
004430  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004434  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004438  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00443c  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
004440  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
004444  9f808702  addli r1, r15, 320
004448  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
00444c  9f090702  addli r19, r14, 256
004450  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004454  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004458  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00445c  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
004460  9f800703  addli r1, r15, 384
004464  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
004468  9f878703  addli r15, r15, 448
00446c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004470  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
004474  9f008702  addli r1, r14, 320
004478  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
00447c  9f070703  addli r15, r14, 384
004480  1f078703  addli r14, r14, 448
004484  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
004488  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00448c  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
004490  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004494  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
004498  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00449c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0044a0  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
0044a4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0044a8  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0044ac  93804405  setlt.u r1, r9, r20
0044b0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0044b4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0044b8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0044bc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0044c0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0044c4  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
0044c8  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
0044cc  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0044d0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0044d4  bbdb00fe  bneq r1, zero, -268
0044d8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0044dc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0044e0  9f000002  addli r1, zero, 256
0044e4  6af100c0  vsrl.p vr2, r1, vr0
0044e8  eaf110c0  vsrl.p vr3, r1, vr1
0044ec  9f000001  addli r1, zero, 128
0044f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0044f4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0044f8  6af100c0  vsrl.p vr2, r1, vr0
0044fc  eaf110c0  vsrl.p vr3, r1, vr1
004500  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004504  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004508  6af10bc0  vsrl.p vr2, r23, vr0
00450c  eaf11bc0  vsrl.p vr3, r23, vr1
004510  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004514  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004518  6a710cc0  vsrl.p vr2, r24, vr0
00451c  ea711cc0  vsrl.p vr3, r24, vr1
004520  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004524  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004528  fa110040  vextracti.f r3, 0(vr0)
00452c  fa940040  vextracti.f r9, 0(vr1)
004530  5b660000  j 816
004534  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004538  abf0ffff  lui r1, 1048575
00453c  1f8b0d00  addli r22, r27, 0
004540  9f010000  addli r3, zero, 0
004544  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004548  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00454c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004550  9b9400f8  ori r9, r1, 3968
004554  0b973310  add.s r14, r7, r3
004558  8b193510  add.s r19, r10, r3
00455c  9f840401  addli r9, r9, 128
004560  9f810104  addli r3, r3, 512
004564  1f080731  addli r16, r14, 6272
004568  9f070730  addli r15, r14, 6144
00456c  9f008731  addli r1, r14, 6336
004570  9f8d0918  addli r27, r19, 3072
004574  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
004578  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
00457c  9f078730  addli r15, r14, 6208
004580  ca940002  vloads_mask16.mz vr9{mr1}, 0(r1)
004584  9f808918  addli r1, r19, 3136
004588  1f888919  addli r16, r19, 3264
00458c  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
004590  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
004594  9f870919  addli r15, r19, 3200
004598  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
00459c  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0045a0  42950702  vload_mask16.mz vr10{mr1}, 0(r15)
0045a4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0045a8  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0045ac  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0045b0  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0045b4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0045b8  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0045bc  46907702  vstore_mask16.mz vr7{mr1}, 0(r15)
0045c0  9f070732  addli r15, r14, 6400
0045c4  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0045c8  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
0045cc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0045d0  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
0045d4  1f88091a  addli r16, r19, 3328
0045d8  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
0045dc  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0045e0  9f80091b  addli r1, r19, 3456
0045e4  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0045e8  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0045ec  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
0045f0  9f078732  addli r15, r14, 6464
0045f4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0045f8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0045fc  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
004600  9f070733  addli r15, r14, 6528
004604  1f078733  addli r14, r14, 6592
004608  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
00460c  9f87891a  addli r15, r19, 3392
004610  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
004614  1f87891b  addli r14, r19, 3520
004618  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
00461c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004620  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
004624  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004628  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
00462c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004630  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004634  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
004638  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00463c  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
004640  9387c405  setlt.u r15, r9, r28
004644  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004648  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00464c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004650  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004654  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004658  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00465c  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
004660  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004664  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004668  bbbb07fe  bneq r15, zero, -276
00466c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004670  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004674  9f000002  addli r1, zero, 256
004678  9f040000  addli r9, zero, 0
00467c  eaf110c0  vsrl.p vr3, r1, vr1
004680  6af100c0  vsrl.p vr2, r1, vr0
004684  9f000001  addli r1, zero, 128
004688  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00468c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004690  eaf110c0  vsrl.p vr3, r1, vr1
004694  6af100c0  vsrl.p vr2, r1, vr0
004698  abf0ffff  lui r1, 1048575
00469c  9b9d00f8  ori r27, r1, 3968
0046a0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0046a4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0046a8  eaf11bc0  vsrl.p vr3, r23, vr1
0046ac  6af10bc0  vsrl.p vr2, r23, vr0
0046b0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0046b4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0046b8  ea711cc0  vsrl.p vr3, r24, vr1
0046bc  6a710cc0  vsrl.p vr2, r24, vr0
0046c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0046c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0046c8  fa990040  vextracti.f r19, 0(vr1)
0046cc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0046d0  fa110040  vextracti.f r3, 0(vr0)
0046d4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0046d8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0046dc  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0046e0  8b979310  add.s r15, r7, r9
0046e4  0b179510  add.s r14, r10, r9
0046e8  9f8d0d01  addli r27, r27, 128
0046ec  9f840404  addli r9, r9, 512
0046f0  9f800718  addli r1, r15, 3072
0046f4  1f880719  addli r16, r15, 3200
0046f8  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
0046fc  9f0a8701  addli r21, r14, 192
004700  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
004704  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
004708  9f808718  addli r1, r15, 3136
00470c  1f888719  addli r16, r15, 3264
004710  c2950a02  vload_mask16.mz vr11{mr1}, 0(r21)
004714  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
004718  9f000701  addli r1, r14, 128
00471c  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
004720  1f088700  addli r16, r14, 64
004724  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
004728  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
00472c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004730  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004734  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004738  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00473c  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
004740  9f80071a  addli r1, r15, 3328
004744  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004748  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00474c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004750  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004754  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
004758  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
00475c  9f80871a  addli r1, r15, 3392
004760  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
004764  9f0a0702  addli r21, r14, 256
004768  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
00476c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004770  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004774  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
004778  9f80071b  addli r1, r15, 3456
00477c  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
004780  9f87871b  addli r15, r15, 3520
004784  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004788  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00478c  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
004790  9f008702  addli r1, r14, 320
004794  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
004798  9f070703  addli r15, r14, 384
00479c  1f078703  addli r14, r14, 448
0047a0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0047a4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0047a8  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0047ac  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0047b0  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
0047b4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0047b8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0047bc  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
0047c0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0047c4  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0047c8  93804d05  setlt.u r1, r27, r20
0047cc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0047d0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0047d4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0047d8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0047dc  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0047e0  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
0047e4  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
0047e8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0047ec  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0047f0  bbcb00fe  bneq r1, zero, -272
0047f4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0047f8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0047fc  9f000002  addli r1, zero, 256
004800  9f0d0b00  addli r27, r22, 0
004804  803a0002  core_id r21
004808  1f1b0000  addli r22, zero, 1
00480c  6af100c0  vsrl.p vr2, r1, vr0
004810  eaf110c0  vsrl.p vr3, r1, vr1
004814  9f000001  addli r1, zero, 128
004818  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00481c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004820  6af100c0  vsrl.p vr2, r1, vr0
004824  eaf110c0  vsrl.p vr3, r1, vr1
004828  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00482c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004830  6af10bc0  vsrl.p vr2, r23, vr0
004834  eaf11bc0  vsrl.p vr3, r23, vr1
004838  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00483c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004840  6a710cc0  vsrl.p vr2, r24, vr0
004844  ea711cc0  vsrl.p vr3, r24, vr1
004848  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00484c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004850  fa940040  vextracti.f r9, 0(vr1)
004854  fa100040  vextracti.f r1, 0(vr0)
004858  8be11110  add.f.rn r3, r3, r1
00485c  8be49910  add.f.rn r9, r19, r9
004860  9b302100  slli r1, r2, 2
004864  1b01e107  andi r2, r2, 126
004868  0b979011  add.s r14, r1, r25
00486c  8b972011  add.s r15, r1, r18
004870  9b904000  ori r1, r1, 4
004874  1b312100  slli r2, r2, 2
004878  73603700  stores.w r3, 0(r14)
00487c  73e09700  stores.w r9, 0(r15)
004880  8b919011  add.s r3, r1, r25
004884  8b149111  add.s r9, r2, r25
004888  8b902011  add.s r1, r1, r18
00488c  0b112111  add.s r2, r2, r18
004890  1f078fd7  addli r14, r30, -5184
004894  9f070000  addli r15, zero, 0
004898  00a00300  mfence { lm, sm, gm }
00489c  80210d04  csr_set csr3, r26
0048a0  00d00100  sync_group
0048a4  63481f00  loadli.w r16,  12(r30)
0048a8  efc10100  loads.w r3, 0(r3)
0048ac  efc40400  loads.w r9, 0(r9)
0048b0  efc00000  loads.w r1, 0(r1)
0048b4  6f410100  loads.w r2, 0(r2)
0048b8  8be19110  add.f.rn r3, r3, r9
0048bc  8be02010  add.f.rn r1, r1, r2
0048c0  2b01003a  lui r2, 237568
0048c4  9f048fd7  addli r9, r30, -5184
0048c8  8be12120  mul.f.rn r3, r3, r2
0048cc  8be02020  mul.f.rn r1, r1, r2
0048d0  0be13120  mul.f.rn r2, r3, r3
0048d4  8be10158  neg.f r3, r3
0048d8  8be02018  sub.f.rn r1, r1, r2
0048dc  63013f00  loadli.w r2,  24(r30)
0048e0  8be02010  add.f.rn r1, r1, r2
0048e4  2b01803f  lui r2, 260096
0048e8  8f800008  sqrt.f.rn r1, r1
0048ec  0f011118  div.f.rn r2, r2, r1
0048f0  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
0048f4  9f008700  addli r1, r14, 64
0048f8  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
0048fc  9f874700  addli r15, r15, 32
004900  1f070701  addli r14, r14, 128
004904  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
004908  93804704  setlt.u r1, r15, r4
00490c  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
004910  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
004914  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
004918  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
00491c  06110000  vfloat2fp16_l.rn vr2, vr0
004920  06d10000  vfloat2fp16_h.rn vr2, vr1
004924  46802402  vstore.mz vr2{mr1}, 0(r9)
004928  9f848400  addli r9, r9, 64
00492c  3b9f00fe  bneq r1, zero, -60
004930  6b510f00  load.d r[3:4], 0(r30)
004934  ab0000f0  lui r1, 983040
004938  00a00000  mfence { lm }
00493c  97901600  or r1, r13, r1
004940  0b215110  add.ul r[3:4], r[3:4], r[6:7]
004944  ff30a100  s_lm2gm r1, r10, 0(r[3:4])
004948  00a00200  mfence { lm, gm }
00494c  db38ffff  j -1596
004950  80300002  core_id r1
004954  e3012f00  loadli.w r3,  16(r30)
004958  1bb15000  slli r2, r1, 5
00495c  cb912100  ble.s r3, r2, 100
004960  00540102  load_param_i r8, 2
004964  ab840100  lui r9, 24
004968  9f110000  addli r3, zero, 1
00496c  1f038fd7  addli r6, r30, -5184
004970  9f038000  addli r7, zero, 64
004974  1b345400  slli r8, r8, 5
004978  9f840400  addli r9, r9, 0
00497c  33050128  zext_int2long r[11:12], r2
004980  2b0600f0  lui r12, 983040
004984  17353502  sll.d r[11:12], r[11:12], r3
004988  1796c300  or r12, r7, r12
00498c  0b25a210  add.ul r[11:12], r[5:6], r[11:12]
004990  7f266500  l_gm2lm r12, r6, 0(r[11:12])
004994  1b352100  slli r10, r2, 2
004998  0b112410  add.s r2, r8, r2
00499c  00a00200  mfence { lm, gm }
0049a0  42000302  vload.mz vr0{mr1}, 0(r6)
0049a4  0b159510  add.s r10, r10, r9
0049a8  9f058500  addli r11, r10, 64
0049ac  86300000  vfp162float_l.rn vr1, vr0
0049b0  06700000  vfp162float_h.rn vr0, vr0
0049b4  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
0049b8  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
0049bc  3f0ff1fe  blt.s r2, r15, -64
0049c0  2bf10000  lui r2, 15
0049c4  e3411f00  loadli.w r3,  12(r30)
0049c8  00a00300  mfence { lm, sm, gm }
0049cc  1b11f1ff  ori r2, r2, 4095
0049d0  80210104  csr_set csr3, r2
0049d4  00d00100  sync_group
0049d8  4bc5110c  ble.s r3, r1, 6480
0049dc  63032f00  loadli.w r6,  16(r30)
0049e0  e3432f00  loadli.w r7,  20(r30)
0049e4  9f0b8fd7  addli r23, r30, -5184
0049e8  1f150000  addli r10, zero, 1
0049ec  9f054000  addli r11, zero, 32
0049f0  1f767000  addli r12, zero, 63
0049f4  1f080002  addli r16, zero, 256
0049f8  9f080001  addli r17, zero, 128
0049fc  1f098000  addli r18, zero, 64
004a00  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004a04  0b127310  add.s r4, r6, r7
004a08  33010308  fix2float.rn r2, r6
004a0c  1b342300  slli r8, r6, 2
004a10  9b321300  slli r5, r6, 1
004a14  9bb42300  slli r9, r7, 2
004a18  1f72f2ff  addli r4, r4, -1
004a1c  670c2fd4  storeli.w r2, -5440(r30)
004a20  1f014300  addli r2, r6, 32
004a24  0b137411  add.s r6, r8, r23
004a28  0b947211  add.s r8, r5, r23
004a2c  67082fd4  storeli.w r2, -5504(r30)
004a30  1f0183ff  addli r2, r6, -64
004a34  2bf3ffff  lui r6, 1048575
004a38  0b127230  div.s r4, r4, r7
004a3c  67042fd4  storeli.w r2, -5568(r30)
004a40  1f0184ff  addli r2, r8, -64
004a44  9b16f3ff  ori r13, r6, 4095
004a48  2b830100  lui r6, 24
004a4c  67002fd4  storeli.w r2, -5632(r30)
004a50  1f010fd7  addli r2, r30, -5248
004a54  1f030300  addli r6, r6, 0
004a58  00a00000  mfence { lm }
004a5c  67045fd6  storeli.w r5, -5312(r30)
004a60  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004a64  db070000  j 60
004a68  6b510f00  load.d r[3:4], 0(r30)
004a6c  00a00000  mfence { lm }
004a70  ab0900f0  lui r19, 983040
004a74  9f0b8fd7  addli r23, r30, -5184
004a78  005a0102  load_param_i r20, 2
004a7c  e3028fd6  loadli.w r5,  -5312(r30)
004a80  8b101a10  add.s r1, r20, r1
004a84  8b235111  add.ul r[8:9], r[3:4], r[22:23]
004a88  97993201  or r19, r5, r19
004a8c  ffb97301  s_lm2gm r19, r23, 0(r[8:9])
004a90  00a00200  mfence { lm, gm }
004a94  63411f00  loadli.w r2,  12(r30)
004a98  3fa02000  blt.s r1, r2, 8
004a9c  db110300  j 6284
004aa0  63011f00  loadli.w r2,  8(r30)
004aa4  8b932010  add.s r7, r1, r2
004aa8  8b93f320  mul.s r7, r7, r15
004aac  b3930328  sext_int2long r[8:9], r7
004ab0  97baa302  sll.d r[22:23], r[8:9], r10
004ab4  1f047fd6  addli r8, r30, -5320
004ab8  ab0300f0  lui r7, 983040
004abc  6b510400  load.d r[3:4], 0(r8)
004ac0  97937200  or r7, r5, r7
004ac4  8b295111  add.ul r[20:21], r[3:4], r[22:23]
004ac8  ffa37901  l_gm2lm r7, r23, 0(r[20:21])
004acc  00a00200  mfence { lm, gm }
004ad0  bff0b700  blt.s r15, r11, 60
004ad4  e3030fd4  loadli.w r7,  -5632(r30)
004ad8  63048fd4  loadli.w r8,  -5568(r30)
004adc  e3090fd5  loadli.w r19,  -5504(r30)
004ae0  c2800302  vload.mz vr1{mr1}, 0(r7)
004ae4  9f89c9ff  addli r19, r19, -32
004ae8  9f0b84ff  addli r23, r8, -64
004aec  9f8383ff  addli r7, r7, -64
004af0  130a3605  setlt.u r20, r12, r19
004af4  06f10000  vfp162float_h.rn vr2, vr1
004af8  86b00000  vfp162float_l.rn vr1, vr1
004afc  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
004b00  1f0404ff  addli r8, r8, -128
004b04  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
004b08  3b6f0afe  bneq r20, zero, -40
004b0c  00a00000  mfence { lm }
004b10  bf17a200  blt.s r4, r10, 484
004b14  1f0c0000  addli r24, zero, 0
004b18  9f0b0000  addli r23, zero, 0
004b1c  9f0c0000  addli r25, zero, 0
004b20  db0c0000  j 100
004b24  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004b28  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004b2c  9f9c0c00  addli r25, r25, 1
004b30  6a7108c0  vsrl.p vr2, r16, vr0
004b34  ea7118c0  vsrl.p vr3, r16, vr1
004b38  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b3c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b40  6af108c0  vsrl.p vr2, r17, vr0
004b44  eaf118c0  vsrl.p vr3, r17, vr1
004b48  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b4c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b50  6a7109c0  vsrl.p vr2, r18, vr0
004b54  ea7119c0  vsrl.p vr3, r18, vr1
004b58  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b5c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b60  6af105c0  vsrl.p vr2, r11, vr0
004b64  eaf115c0  vsrl.p vr3, r11, vr1
004b68  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b6c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b70  7a110040  vextracti.f r2, 0(vr0)
004b74  fa910040  vextracti.f r3, 0(vr1)
004b78  0b6c2c10  add.f.rn r24, r24, r2
004b7c  8beb3b10  add.f.rn r23, r23, r3
004b80  b7f54c00  beq r25, r4, 380
004b84  9f830c00  addli r7, r25, 0
004b88  37300701  beq r14, r16, 12
004b8c  97a3dc00  xor r7, r25, r13
004b90  8b137210  add.s r7, r4, r7
004b94  1f010fd7  addli r2, r30, -5248
004b98  0b94e320  mul.s r8, r7, r14
004b9c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004ba0  0b948718  sub.s r8, r15, r8
004ba4  0b1de440  min.s r26, r8, r14
004ba8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004bac  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004bb0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004bb4  bf4dadfe  blt.s r26, r10, -144
004bb8  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
004bbc  9f0d0000  addli r27, zero, 0
004bc0  0b9e7420  mul.s r28, r9, r7
004bc4  9f098fd7  addli r19, r30, -5184
004bc8  1f0a0300  addli r20, r6, 0
004bcc  92304002  vadd.s.mz vr1{mr1}, zero, vr4
004bd0  12314002  vadd.s.mz vr2{mr1}, zero, vr4
004bd4  92314002  vadd.s.mz vr3{mr1}, zero, vr4
004bd8  0b14ca11  add.s r8, r20, r28
004bdc  8b93c911  add.s r7, r19, r28
004be0  9f028400  addli r5, r8, 64
004be4  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
004be8  9f018401  addli r3, r8, 192
004bec  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
004bf0  1f818301  addli r2, r7, 192
004bf4  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
004bf8  9f020401  addli r5, r8, 128
004bfc  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
004c00  9f818300  addli r3, r7, 64
004c04  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
004c08  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
004c0c  9f820301  addli r5, r7, 128
004c10  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
004c14  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
004c18  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004c1c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
004c20  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
004c24  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
004c28  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004c2c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004c30  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
004c34  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
004c38  9f818d00  addli r3, r27, 64
004c3c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004c40  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004c44  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004c48  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
004c4c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004c50  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
004c54  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
004c58  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
004c5c  4b2b3dfe  ble.s r26, r3, -312
004c60  9f010402  addli r3, r8, 256
004c64  9f028402  addli r5, r8, 320
004c68  1f810302  addli r2, r7, 256
004c6c  9f8d0d01  addli r27, r27, 128
004c70  1f0a0a04  addli r20, r20, 512
004c74  9f890904  addli r19, r19, 512
004c78  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
004c7c  9f010403  addli r3, r8, 384
004c80  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
004c84  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
004c88  9f828302  addli r5, r7, 320
004c8c  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
004c90  9f018403  addli r3, r8, 448
004c94  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
004c98  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
004c9c  9f810303  addli r3, r7, 384
004ca0  9f838303  addli r7, r7, 448
004ca4  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
004ca8  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
004cac  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
004cb0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004cb4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
004cb8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004cbc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004cc0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004cc4  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
004cc8  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
004ccc  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004cd0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004cd4  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
004cd8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004cdc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004ce0  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
004ce4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004ce8  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
004cec  bfbbadff  blt.s r27, r26, -276
004cf0  dbc6ffff  j -460
004cf4  9f0b0000  addli r23, zero, 0
004cf8  1f0c0000  addli r24, zero, 0
004cfc  00a00000  mfence { lm }
004d00  bfa5a7fe  blt.s r15, r10, -664
004d04  63018fd5  loadli.w r2,  -5440(r30)
004d08  1f0a8fd7  addli r20, r30, -5184
004d0c  0f042c18  div.f.rn r8, r24, r2
004d10  8f832b18  div.f.rn r7, r23, r2
004d14  63013f00  loadli.w r2,  24(r30)
004d18  9f0b0000  addli r23, zero, 0
004d1c  8b698420  mul.f.rn r19, r8, r8
004d20  0b640458  neg.f r8, r8
004d24  8be33319  sub.f.rn r7, r7, r19
004d28  9f098fd7  addli r19, r30, -5184
004d2c  8be32310  add.f.rn r7, r7, r2
004d30  2b01803f  lui r2, 260096
004d34  8f830308  sqrt.f.rn r7, r7
004d38  8f037118  div.f.rn r7, r2, r7
004d3c  c2100a02  vload_mask16.mz vr1{mr1}, 0(r20)
004d40  1f0c8a00  addli r24, r20, 64
004d44  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
004d48  9f8b4b00  addli r23, r23, 32
004d4c  1f0a0a01  addli r20, r20, 128
004d50  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
004d54  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
004d58  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
004d5c  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
004d60  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
004d64  86910000  vfloat2fp16_l.rn vr3, vr1
004d68  86510100  vfloat2fp16_h.rn vr3, vr2
004d6c  46803902  vstore.mz vr3{mr1}, 0(r19)
004d70  9f898900  addli r19, r19, 64
004d74  3faffbfe  blt.s r23, r15, -56
004d78  5b9effff  j -784
004d7c  63012f00  loadli.w r2,  16(r30)
004d80  ab0100f0  lui r3, 983040
004d84  1b311100  slli r2, r2, 1
004d88  17113100  or r2, r2, r3
004d8c  aba10100  lui r3, 26
004d90  9f810100  addli r3, r3, 0
004d94  7f013300  l_gm2sm r2, r3, 0(r[7:8])
004d98  5b080000  j 64
004d9c  63012f00  loadli.w r2,  16(r30)
004da0  ab0100f0  lui r3, 983040
004da4  1b311100  slli r2, r2, 1
004da8  17113100  or r2, r2, r3
004dac  abe10100  lui r3, 30
004db0  9f810100  addli r3, r3, 0
004db4  7f013300  l_gm2sm r2, r3, 0(r[7:8])
004db8  5bc30000  j 1560
004dbc  63012f00  loadli.w r2,  16(r30)
004dc0  ab0100f0  lui r3, 983040
004dc4  1b311100  slli r2, r2, 1
004dc8  17113100  or r2, r2, r3
004dcc  abb10100  lui r3, 27
004dd0  9f810100  addli r3, r3, 0
004dd4  7f013400  l_gm2sm r2, r3, 0(r[9:10])
004dd8  2bf10000  lui r2, 15
004ddc  e3411f00  loadli.w r3,  12(r30)
004de0  00200300  mfence { sm, gm }
004de4  1b11f1ff  ori r2, r2, 4095
004de8  80210104  csr_set csr3, r2
004dec  00d00100  sync_group
004df0  cbe4110a  ble.s r3, r1, 5432
004df4  63012f00  loadli.w r2,  16(r30)
004df8  e3412f00  loadli.w r3,  20(r30)
004dfc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004e00  1f140000  addli r8, zero, 1
004e04  9f048fd7  addli r9, r30, -5184
004e08  9f050002  addli r11, zero, 256
004e0c  2b06ffff  lui r12, 1048560
004e10  2b08807f  lui r16, 522240
004e14  ab08c07f  lui r17, 523264
004e18  1f090001  addli r18, zero, 128
004e1c  9f098000  addli r19, zero, 64
004e20  1f0a4000  addli r20, zero, 32
004e24  9b3b1100  slli r23, r2, 1
004e28  0b123110  add.s r4, r2, r3
004e2c  33010108  fix2float.rn r2, r2
004e30  1bb31100  slli r6, r3, 1
004e34  67042fd4  storeli.w r2, -5568(r30)
004e38  1f71f2ff  addli r2, r4, -1
004e3c  67087fd5  storeli.w r23, -5504(r30)
004e40  8b133130  div.s r7, r2, r3
004e44  2bf1ffff  lui r2, 1048575
004e48  9f010fd7  addli r3, r30, -5248
004e4c  1b15f1ff  ori r10, r2, 4095
004e50  1f012000  addli r2, zero, 16
004e54  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
004e58  9f018fd6  addli r3, r30, -5312
004e5c  6a200122  vor.u.mz vr0{mr1}, r2, vr0
004e60  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
004e64  ab710000  lui r3, 7
004e68  9b96f1ff  ori r13, r3, 4095
004e6c  5b090000  j 72
004e70  9f028fd5  addli r5, r30, -5440
004e74  eb510f00  load.d r[4:5], 0(r30)
004e78  ab0400f0  lui r9, 983040
004e7c  ebda0200  load.d r[22:23], 0(r5)
004e80  00a00000  mfence { lm }
004e84  9f028fd7  addli r5, r30, -5184
004e88  e30b0fd5  loadli.w r23,  -5504(r30)
004e8c  8ba15111  add.ul r[4:5], r[4:5], r[22:23]
004e90  805a0102  load_param_i r21, 2
004e94  97949b00  or r9, r23, r9
004e98  8b901a10  add.s r1, r21, r1
004e9c  ffb45100  s_lm2gm r9, r5, 0(r[4:5])
004ea0  9f048fd7  addli r9, r30, -5184
004ea4  00a00200  mfence { lm, gm }
004ea8  e3411f00  loadli.w r3,  12(r30)
004eac  3fa03000  blt.s r1, r3, 8
004eb0  5b8f0200  j 5240
004eb4  e3011f00  loadli.w r3,  8(r30)
004eb8  1f0c7fd6  addli r24, r30, -5320
004ebc  8b913010  add.s r3, r1, r3
004ec0  8b91f120  mul.s r3, r3, r15
004ec4  b3910128  sext_int2long r[4:5], r3
004ec8  97ba8102  sll.d r[22:23], r[4:5], r8
004ecc  6b520c00  load.d r[5:6], 0(r24)
004ed0  ab0100f0  lui r3, 983040
004ed4  1f0c8fd5  addli r24, r30, -5440
004ed8  73305c01  store.d r[22:23], 0(r24)
004edc  97913b00  or r3, r23, r3
004ee0  8b2a5211  add.ul r[22:23], r[5:6], r[22:23]
004ee4  ffa19a00  l_gm2lm r3, r9, 0(r[22:23])
004ee8  00a00200  mfence { lm, gm }
004eec  bfcc8300  blt.s r7, r8, 816
004ef0  9f0d0000  addli r27, zero, 0
004ef4  1f0d0000  addli r26, zero, 0
004ef8  1f0e0000  addli r28, zero, 0
004efc  db0c0000  j 100
004f00  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
004f04  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
004f08  1f1e0e00  addli r28, r28, 1
004f0c  6af105c0  vsrl.p vr2, r11, vr0
004f10  eaf115c0  vsrl.p vr3, r11, vr1
004f14  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f18  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f1c  6a7109c0  vsrl.p vr2, r18, vr0
004f20  ea7119c0  vsrl.p vr3, r18, vr1
004f24  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f28  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f2c  6af109c0  vsrl.p vr2, r19, vr0
004f30  eaf119c0  vsrl.p vr3, r19, vr1
004f34  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f38  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f3c  6a710ac0  vsrl.p vr2, r20, vr0
004f40  ea711ac0  vsrl.p vr3, r20, vr1
004f44  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f48  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f4c  fa110040  vextracti.f r3, 0(vr0)
004f50  7a920040  vextracti.f r4, 0(vr1)
004f54  8bed3d10  add.f.rn r27, r27, r3
004f58  0b6d4d10  add.f.rn r26, r26, r4
004f5c  372b7e00  beq r28, r7, 712
004f60  9f010e00  addli r3, r28, 0
004f64  3730b700  beq r14, r11, 12
004f68  9721ae00  xor r3, r28, r10
004f6c  8b913310  add.s r3, r7, r3
004f70  0b92e120  mul.s r4, r3, r14
004f74  0b924718  sub.s r4, r15, r4
004f78  8b1ae240  min.s r21, r4, r14
004f7c  1f020fd7  addli r4, r30, -5248
004f80  42110202  vload_mask16.mz vr2{mr1}, 0(r4)
004f84  92322002  vadd.s.mz vr5{mr1}, zero, vr2
004f88  12322002  vadd.s.mz vr4{mr1}, zero, vr2
004f8c  92312002  vadd.s.mz vr3{mr1}, zero, vr2
004f90  bfcd8afe  blt.s r21, r8, -144
004f94  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
004f98  8b1b3320  mul.s r23, r6, r3
004f9c  ab910100  lui r3, 25
004fa0  1f0b0000  addli r22, zero, 0
004fa4  9f048fd7  addli r9, r30, -5184
004fa8  9f810100  addli r3, r3, 0
004fac  12315002  vadd.s.mz vr2{mr1}, zero, vr5
004fb0  92315002  vadd.s.mz vr3{mr1}, zero, vr5
004fb4  12325002  vadd.s.mz vr4{mr1}, zero, vr5
004fb8  0b9c7111  add.s r24, r3, r23
004fbc  0b927411  add.s r4, r9, r23
004fc0  9f028fd6  addli r5, r30, -5312
004fc4  4a030c02  vloads.mz vr6{mr1}, 0(r24)
004fc8  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
004fcc  c2030202  vload.mz vr7{mr1}, 0(r4)
004fd0  9f020fd7  addli r5, r30, -5248
004fd4  9f0c8c00  addli r25, r24, 64
004fd8  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
004fdc  9f028b00  addli r5, r22, 64
004fe0  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
004fe4  6a357602  vand.s.mz vr10{mr1}, r12, vr7
004fe8  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
004fec  6a336602  vand.s.mz vr6{mr1}, r12, vr6
004ff0  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
004ff4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
004ff8  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
004ffc  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
005000  669503c0  vabs.f vr10, vr7
005004  6a348402  vand.s.mz vr8{mr1}, r8, vr8
005008  ea349402  vand.s.mz vr9{mr1}, r8, vr9
00500c  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
005010  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
005014  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
005018  12b48602  vadd.s.mz vr8{mr1}, r13, vr8
00501c  92b49602  vadd.s.mz vr9{mr1}, r13, vr9
005020  ea338602  vand.s.mz vr7{mr1}, r12, vr8
005024  661403c0  vabs.f vr8, vr6
005028  6a339602  vand.s.mz vr6{mr1}, r12, vr9
00502c  eaa30834  vor.u.mh vr7{mr2}, r17, vr0
005030  72218842  vlt.u.mz mr2{mr1}, r16, vr8
005034  6aa30834  vor.u.mh vr6{mr2}, r17, vr0
005038  4a840c02  vloads.mz vr8{mr1}, 0(r25)
00503c  9f0c8200  addli r25, r4, 64
005040  c2840c02  vload.mz vr9{mr1}, 0(r25)
005044  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
005048  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
00504c  6a336602  vand.s.mz vr6{mr1}, r12, vr6
005050  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
005054  ea349602  vand.s.mz vr9{mr1}, r12, vr9
005058  46007202  vstore.mz vr7{mr1}, 0(r4)
00505c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005060  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005064  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
005068  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
00506c  6a348602  vand.s.mz vr8{mr1}, r12, vr8
005070  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005074  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005078  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
00507c  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
005080  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
005084  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
005088  ea349402  vand.s.mz vr9{mr1}, r8, vr9
00508c  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
005090  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
005094  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
005098  661505c0  vabs.f vr10, vr10
00509c  661404c0  vabs.f vr8, vr8
0050a0  92b49602  vadd.s.mz vr9{mr1}, r13, vr9
0050a4  92b5b602  vadd.s.mz vr11{mr1}, r13, vr11
0050a8  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
0050ac  ea349602  vand.s.mz vr9{mr1}, r12, vr9
0050b0  6a35b602  vand.s.mz vr10{mr1}, r12, vr11
0050b4  eaa40834  vor.u.mh vr9{mr2}, r17, vr0
0050b8  72218842  vlt.u.mz mr2{mr1}, r16, vr8
0050bc  6aa50834  vor.u.mh vr10{mr2}, r17, vr0
0050c0  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
0050c4  ea34a602  vand.s.mz vr9{mr1}, r12, vr10
0050c8  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0050cc  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0050d0  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0050d4  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0050d8  46808c02  vstore.mz vr8{mr1}, 0(r25)
0050dc  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0050e0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0050e4  4bf85afe  ble.s r21, r5, -484
0050e8  9f020c01  addli r5, r24, 128
0050ec  9f0c0201  addli r25, r4, 128
0050f0  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0050f4  1f028201  addli r4, r4, 192
0050f8  1f0b0b01  addli r22, r22, 128
0050fc  9f810102  addli r3, r3, 256
005100  9f840402  addli r9, r9, 256
005104  6a237122  vor.u.mz vr6{mr1}, r2, vr7
005108  4a840202  vloads.mz vr8{mr1}, 0(r5)
00510c  c2840c02  vload.mz vr9{mr1}, 0(r25)
005110  9f028c01  addli r5, r24, 192
005114  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
005118  6a309602  vand.s.mz vr0{mr1}, r12, vr9
00511c  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
005120  6a348602  vand.s.mz vr8{mr1}, r12, vr8
005124  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
005128  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
00512c  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
005130  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
005134  e69504c0  vabs.f vr11, vr9
005138  6a300402  vand.s.mz vr0{mr1}, r8, vr0
00513c  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
005140  7221b842  vlt.u.mz mr2{mr1}, r16, vr11
005144  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
005148  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
00514c  12b00602  vadd.s.mz vr0{mr1}, r13, vr0
005150  12b5a602  vadd.s.mz vr10{mr1}, r13, vr10
005154  ea340602  vand.s.mz vr9{mr1}, r12, vr0
005158  661004c0  vabs.f vr0, vr8
00515c  6a34a602  vand.s.mz vr8{mr1}, r12, vr10
005160  eaa47834  vor.u.mh vr9{mr2}, r17, vr7
005164  72210842  vlt.u.mz mr2{mr1}, r16, vr0
005168  6aa47834  vor.u.mh vr8{mr2}, r17, vr7
00516c  4a800202  vloads.mz vr0{mr1}, 0(r5)
005170  42050202  vload.mz vr10{mr1}, 0(r4)
005174  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
005178  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
00517c  6a35a602  vand.s.mz vr10{mr1}, r12, vr10
005180  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
005184  6a348602  vand.s.mz vr8{mr1}, r12, vr8
005188  46809c02  vstore.mz vr9{mr1}, 0(r25)
00518c  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
005190  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
005194  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
005198  6a300602  vand.s.mz vr0{mr1}, r12, vr0
00519c  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
0051a0  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
0051a4  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
0051a8  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
0051ac  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
0051b0  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
0051b4  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
0051b8  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
0051bc  e69000c0  vabs.f vr1, vr1
0051c0  661000c0  vabs.f vr0, vr0
0051c4  12b5a602  vadd.s.mz vr10{mr1}, r13, vr10
0051c8  92b5b602  vadd.s.mz vr11{mr1}, r13, vr11
0051cc  72211842  vlt.u.mz mr2{mr1}, r16, vr1
0051d0  6a35a602  vand.s.mz vr10{mr1}, r12, vr10
0051d4  ea30b602  vand.s.mz vr1{mr1}, r12, vr11
0051d8  6aa57834  vor.u.mh vr10{mr2}, r17, vr7
0051dc  72210842  vlt.u.mz mr2{mr1}, r16, vr0
0051e0  eaa07834  vor.u.mh vr1{mr2}, r17, vr7
0051e4  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
0051e8  ea331602  vand.s.mz vr7{mr1}, r12, vr1
0051ec  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0051f0  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
0051f4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0051f8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0051fc  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
005200  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
005204  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
005208  46000202  vstore.mz vr0{mr1}, 0(r4)
00520c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
005210  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005214  bf165bff  blt.s r22, r21, -604
005218  5b9dffff  j -792
00521c  1f0d0000  addli r26, zero, 0
005220  9f0d0000  addli r27, zero, 0
005224  00a00000  mfence { lm }
005228  3fa187fe  blt.s r15, r8, -952
00522c  63028fd4  loadli.w r4,  -5568(r30)
005230  e3023f00  loadli.w r5,  24(r30)
005234  2bab0100  lui r22, 26
005238  abbb0100  lui r23, 27
00523c  9f010000  addli r3, zero, 0
005240  1f0b0b00  addli r22, r22, 0
005244  9f8b0b00  addli r23, r23, 0
005248  8f844d18  div.f.rn r9, r27, r4
00524c  0f024d18  div.f.rn r4, r26, r4
005250  8bea9420  mul.f.rn r21, r9, r9
005254  8be40458  neg.f r9, r9
005258  0b625219  sub.f.rn r4, r4, r21
00525c  9f0a8fd7  addli r21, r30, -5184
005260  0b625210  add.f.rn r4, r4, r5
005264  ab02803f  lui r5, 260096
005268  0f020208  sqrt.f.rn r4, r4
00526c  0f824218  div.f.rn r4, r5, r4
005270  42820a02  vload.mz vr4{mr1}, 0(r21)
005274  ca020b02  vloads.mz vr5{mr1}, 0(r22)
005278  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
00527c  4a830b02  vloads.mz vr6{mr1}, 0(r23)
005280  1f8c4100  addli r24, r3, 32
005284  ea212122  vor.u.mz vr3{mr1}, r2, vr2
005288  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
00528c  6a344602  vand.s.mz vr8{mr1}, r12, vr4
005290  92937402  vadd.f.mz.rn vr7{mr1}, r9, vr7
005294  12948402  vadd.f.mz.rn vr8{mr1}, r9, vr8
005298  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
00529c  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
0052a0  6a355602  vand.s.mz vr10{mr1}, r12, vr5
0052a4  ea326602  vand.s.mz vr5{mr1}, r12, vr6
0052a8  8a137202  vmul.f.mz.rn vr7{mr1}, r4, vr7
0052ac  0a138202  vmul.f.mz.rn vr6{mr1}, r4, vr8
0052b0  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
0052b4  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
0052b8  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
0052bc  6a337402  vand.s.mz vr6{mr1}, r8, vr7
0052c0  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
0052c4  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
0052c8  ea337402  vand.s.mz vr7{mr1}, r8, vr7
0052cc  661202c0  vabs.f vr4, vr4
0052d0  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
0052d4  12b36602  vadd.s.mz vr6{mr1}, r13, vr6
0052d8  e69202c0  vabs.f vr5, vr5
0052dc  72214842  vlt.u.mz mr2{mr1}, r16, vr4
0052e0  6a336602  vand.s.mz vr6{mr1}, r12, vr6
0052e4  92b37602  vadd.s.mz vr7{mr1}, r13, vr7
0052e8  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
0052ec  6a327602  vand.s.mz vr4{mr1}, r12, vr7
0052f0  72215842  vlt.u.mz mr2{mr1}, r16, vr5
0052f4  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
0052f8  6aa22834  vor.u.mh vr4{mr2}, r17, vr2
0052fc  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
005300  46804a02  vstore.mz vr4{mr1}, 0(r21)
005304  cbbd87fd  ble.s r15, r24, -1172
005308  1f8c8a00  addli r24, r21, 64
00530c  9f0c8b00  addli r25, r22, 64
005310  1f8d8b00  addli r26, r23, 64
005314  9f818100  addli r3, r3, 64
005318  9f8b0b01  addli r23, r23, 128
00531c  1f0b0b01  addli r22, r22, 128
005320  9f8a0a01  addli r21, r21, 128
005324  42020c02  vload.mz vr4{mr1}, 0(r24)
005328  4a830c02  vloads.mz vr6{mr1}, 0(r25)
00532c  ca030d02  vloads.mz vr7{mr1}, 0(r26)
005330  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
005334  6a324602  vand.s.mz vr4{mr1}, r12, vr4
005338  12945402  vadd.f.mz.rn vr8{mr1}, r9, vr5
00533c  92944402  vadd.f.mz.rn vr9{mr1}, r9, vr4
005340  6eb561a2  vsll.s.mz vr10{mr1}, vr3, vr6
005344  eeb271a2  vsll.s.mz vr5{mr1}, vr3, vr7
005348  6a327602  vand.s.mz vr4{mr1}, r12, vr7
00534c  6a336602  vand.s.mz vr6{mr1}, r12, vr6
005350  0a148202  vmul.f.mz.rn vr8{mr1}, r4, vr8
005354  8a139202  vmul.f.mz.rn vr7{mr1}, r4, vr9
005358  a612a402  vmac.f.mz.rn vr5{mr1}, vr8, vr10
00535c  26926302  vmac.f.mz.rn vr4{mr1}, vr7, vr6
005360  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
005364  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
005368  6a336402  vand.s.mz vr6{mr1}, r8, vr6
00536c  ea337402  vand.s.mz vr7{mr1}, r8, vr7
005370  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
005374  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
005378  e69202c0  vabs.f vr5, vr5
00537c  661202c0  vabs.f vr4, vr4
005380  12b36602  vadd.s.mz vr6{mr1}, r13, vr6
005384  92b37602  vadd.s.mz vr7{mr1}, r13, vr7
005388  72215842  vlt.u.mz mr2{mr1}, r16, vr5
00538c  6a336602  vand.s.mz vr6{mr1}, r12, vr6
005390  ea327602  vand.s.mz vr5{mr1}, r12, vr7
005394  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
005398  72214842  vlt.u.mz mr2{mr1}, r16, vr4
00539c  eaa22834  vor.u.mh vr5{mr2}, r17, vr2
0053a0  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
0053a4  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
0053a8  46002c02  vstore.mz vr2{mr1}, 0(r24)
0053ac  3f9bf1fe  blt.s r3, r15, -316
0053b0  5b58ffff  j -1344
0053b4  63012f00  loadli.w r2,  16(r30)
0053b8  ab0100f0  lui r3, 983040
0053bc  1b311100  slli r2, r2, 1
0053c0  17113100  or r2, r2, r3
0053c4  abf10100  lui r3, 31
0053c8  9f810100  addli r3, r3, 0
0053cc  7f013400  l_gm2sm r2, r3, 0(r[9:10])
0053d0  2bf10000  lui r2, 15
0053d4  e3411f00  loadli.w r3,  12(r30)
0053d8  00200300  mfence { sm, gm }
0053dc  1b11f1ff  ori r2, r2, 4095
0053e0  80210104  csr_set csr3, r2
0053e4  00d00100  sync_group
0053e8  4b8d1106  ble.s r3, r1, 3904
0053ec  e3012f00  loadli.w r3,  16(r30)
0053f0  e3422f00  loadli.w r5,  20(r30)
0053f4  2bf4ffff  lui r8, 1048575
0053f8  2bd50100  lui r10, 29
0053fc  9f0b8fd7  addli r23, r30, -5184
005400  9f040002  addli r9, zero, 256
005404  9f050001  addli r11, zero, 128
005408  1f068000  addli r12, zero, 64
00540c  9f064000  addli r13, zero, 32
005410  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005414  1b14f4ff  ori r8, r8, 4095
005418  1f050500  addli r10, r10, 0
00541c  0b925110  add.s r4, r3, r5
005420  1bb11100  slli r2, r3, 1
005424  b3810108  fix2float.rn r3, r3
005428  1f73f2ff  addli r6, r4, -1
00542c  1bb21200  slli r4, r5, 1
005430  8b125330  div.s r5, r6, r5
005434  1f130000  addli r6, zero, 1
005438  5b070000  j 56
00543c  6b580f00  load.d r[17:18], 0(r30)
005440  9f0b8fd7  addli r23, r30, -5184
005444  00a00000  mfence { lm }
005448  0b283811  add.ul r[17:18], r[17:18], r[20:21]
00544c  ab0900f0  lui r19, 983040
005450  005a0102  load_param_i r20, 2
005454  97193101  or r19, r2, r19
005458  8b101a10  add.s r1, r20, r1
00545c  ff397801  s_lm2gm r19, r23, 0(r[17:18])
005460  00a00200  mfence { lm, gm }
005464  e3431f00  loadli.w r7,  12(r30)
005468  3fa07000  blt.s r1, r7, 8
00546c  dbd70100  j 3772
005470  e3031f00  loadli.w r7,  8(r30)
005474  0b987010  add.s r16, r1, r7
005478  9f037fd6  addli r7, r30, -5320
00547c  0b18f820  mul.s r16, r16, r15
005480  33180828  sext_int2long r[17:18], r16
005484  97396802  sll.d r[20:21], r[17:18], r6
005488  ebd80300  load.d r[18:19], 0(r7)
00548c  2b0800f0  lui r16, 983040
005490  17180101  or r16, r2, r16
005494  8baa3811  add.ul r[22:23], r[18:19], r[20:21]
005498  7fa87a01  l_gm2lm r16, r23, 0(r[22:23])
00549c  00a00200  mfence { lm, gm }
0054a0  3fc76200  blt.s r5, r6, 464
0054a4  1f0b0000  addli r22, zero, 0
0054a8  9f0a0000  addli r21, zero, 0
0054ac  9f0b0000  addli r23, zero, 0
0054b0  db0c0000  j 100
0054b4  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
0054b8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0054bc  9f9b0b00  addli r23, r23, 1
0054c0  6af134c0  vsrl.p vr2, r9, vr3
0054c4  6af214c0  vsrl.p vr4, r9, vr1
0054c8  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
0054cc  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0054d0  eaf125c0  vsrl.p vr3, r11, vr2
0054d4  6af215c0  vsrl.p vr4, r11, vr1
0054d8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0054dc  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0054e0  ea7126c0  vsrl.p vr3, r12, vr2
0054e4  6a7216c0  vsrl.p vr4, r12, vr1
0054e8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0054ec  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0054f0  eaf126c0  vsrl.p vr3, r13, vr2
0054f4  6af216c0  vsrl.p vr4, r13, vr1
0054f8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0054fc  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
005500  fa130140  vextracti.f r7, 0(vr2)
005504  7a980040  vextracti.f r16, 0(vr1)
005508  0b6b7b10  add.f.rn r22, r22, r7
00550c  8bea0a11  add.f.rn r21, r21, r16
005510  b7a55b00  beq r23, r5, 360
005514  1f880b00  addli r16, r23, 0
005518  37309700  beq r14, r9, 12
00551c  17a88b00  xor r16, r23, r8
005520  0b980211  add.s r16, r5, r16
005524  8b18e820  mul.s r17, r16, r14
005528  12320002  vadd.s.mz vr4{mr1}, zero, vr0
00552c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
005530  12310002  vadd.s.mz vr2{mr1}, zero, vr0
005534  92300002  vadd.s.mz vr1{mr1}, zero, vr0
005538  8b981719  sub.s r17, r15, r17
00553c  0b9ce840  min.s r24, r17, r14
005540  bf5d6cfe  blt.s r24, r6, -140
005544  92300002  vadd.s.mz vr1{mr1}, zero, vr0
005548  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00554c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
005550  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005554  9f0c0000  addli r25, zero, 0
005558  0b1d0221  mul.s r26, r4, r16
00555c  9f0d8fd7  addli r27, r30, -5184
005560  1f0e0500  addli r28, r10, 0
005564  0b18ae11  add.s r16, r28, r26
005568  9f838c00  addli r7, r25, 64
00556c  ca020802  vloads.mz vr5{mr1}, 0(r16)
005570  9f088800  addli r17, r16, 64
005574  4a830802  vloads.mz vr6{mr1}, 0(r17)
005578  8b98ad11  add.s r17, r27, r26
00557c  c2830802  vload.mz vr7{mr1}, 0(r17)
005580  1f898800  addli r18, r17, 64
005584  42040902  vload.mz vr8{mr1}, 0(r18)
005588  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
00558c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005590  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
005594  06b40300  vfp162float_l.rn vr8, vr7
005598  86f30300  vfp162float_h.rn vr7, vr7
00559c  86340300  vfp162float_l.rn vr9, vr6
0055a0  06730300  vfp162float_h.rn vr6, vr6
0055a4  86120400  vfloat2fp16_l.rn vr5, vr8
0055a8  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
0055ac  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
0055b0  12340002  vadd.s.mz vr8{mr1}, zero, vr0
0055b4  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
0055b8  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
0055bc  06940400  vfloat2fp16_l.rn vr8, vr9
0055c0  86d20300  vfloat2fp16_h.rn vr5, vr7
0055c4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0055c8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0055cc  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0055d0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0055d4  06540300  vfloat2fp16_h.rn vr8, vr6
0055d8  46805802  vstore.mz vr5{mr1}, 0(r17)
0055dc  46008902  vstore.mz vr8{mr1}, 0(r18)
0055e0  4b5b7cfe  ble.s r24, r7, -300
0055e4  9f030801  addli r7, r16, 128
0055e8  9f8c0c01  addli r25, r25, 128
0055ec  1f0e0e02  addli r28, r28, 256
0055f0  9f8d0d02  addli r27, r27, 256
0055f4  ca820302  vloads.mz vr5{mr1}, 0(r7)
0055f8  9f038801  addli r7, r16, 192
0055fc  1f880801  addli r16, r17, 128
005600  4a830302  vloads.mz vr6{mr1}, 0(r7)
005604  c2030802  vload.mz vr7{mr1}, 0(r16)
005608  9f838801  addli r7, r17, 192
00560c  42840302  vload.mz vr8{mr1}, 0(r7)
005610  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
005614  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005618  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
00561c  12330002  vadd.s.mz vr6{mr1}, zero, vr0
005620  86b40300  vfp162float_l.rn vr9, vr7
005624  86f30300  vfp162float_h.rn vr7, vr7
005628  86920400  vfloat2fp16_l.rn vr5, vr9
00562c  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
005630  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
005634  86340400  vfp162float_l.rn vr9, vr8
005638  06740400  vfp162float_h.rn vr8, vr8
00563c  06930400  vfloat2fp16_l.rn vr6, vr9
005640  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005644  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005648  86d20300  vfloat2fp16_h.rn vr5, vr7
00564c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005650  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005654  06530400  vfloat2fp16_h.rn vr6, vr8
005658  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
00565c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005660  46005802  vstore.mz vr5{mr1}, 0(r16)
005664  46806302  vstore.mz vr6{mr1}, 0(r7)
005668  bffb8cff  blt.s r25, r24, -260
00566c  5bc9ffff  j -440
005670  9f0a0000  addli r21, zero, 0
005674  1f0b0000  addli r22, zero, 0
005678  00a00000  mfence { lm }
00567c  3f8767fe  blt.s r15, r6, -576
005680  0f083b18  div.f.rn r16, r22, r3
005684  8f883a18  div.f.rn r17, r21, r3
005688  e3033f00  loadli.w r7,  24(r30)
00568c  abec0100  lui r25, 30
005690  2bfd0100  lui r26, 31
005694  9f0b0000  addli r23, zero, 0
005698  1f0c8fd7  addli r24, r30, -5184
00569c  9f8c0c00  addli r25, r25, 0
0056a0  1f0d0d00  addli r26, r26, 0
0056a4  8b6a0821  mul.f.rn r21, r16, r16
0056a8  0b6b0858  neg.f r22, r16
0056ac  8be85819  sub.f.rn r17, r17, r21
0056b0  8be87810  add.f.rn r17, r17, r7
0056b4  ab03803f  lui r7, 260096
0056b8  8f880808  sqrt.f.rn r17, r17
0056bc  8f8a1319  div.f.rn r21, r7, r17
0056c0  c2000c02  vload.mz vr1{mr1}, 0(r24)
0056c4  4a810c02  vloads.mz vr2{mr1}, 0(r25)
0056c8  ca010d02  vloads.mz vr3{mr1}, 0(r26)
0056cc  1f884b00  addli r16, r23, 32
0056d0  06b20000  vfp162float_l.rn vr4, vr1
0056d4  86f00000  vfp162float_h.rn vr1, vr1
0056d8  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
0056dc  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
0056e0  86320100  vfp162float_l.rn vr5, vr2
0056e4  06b30100  vfp162float_l.rn vr6, vr3
0056e8  06710100  vfp162float_h.rn vr2, vr2
0056ec  86f10100  vfp162float_h.rn vr3, vr3
0056f0  8a931a02  vmul.f.mz.rn vr7{mr1}, r21, vr1
0056f4  0a924a02  vmul.f.mz.rn vr4{mr1}, r21, vr4
0056f8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0056fc  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
005700  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
005704  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005708  06110300  vfloat2fp16_l.rn vr2, vr6
00570c  06d10100  vfloat2fp16_h.rn vr2, vr3
005710  46002c02  vstore.mz vr2{mr1}, 0(r24)
005714  cba407ff  ble.s r15, r16, -728
005718  1f088c00  addli r16, r24, 64
00571c  9f888c00  addli r17, r25, 64
005720  9f0d8d00  addli r27, r26, 64
005724  9f8b8b00  addli r23, r23, 64
005728  1f0d0d01  addli r26, r26, 128
00572c  9f8c0c01  addli r25, r25, 128
005730  1f0c0c01  addli r24, r24, 128
005734  42010802  vload.mz vr2{mr1}, 0(r16)
005738  ca810802  vloads.mz vr3{mr1}, 0(r17)
00573c  4a820d02  vloads.mz vr4{mr1}, 0(r27)
005740  86320100  vfp162float_l.rn vr5, vr2
005744  06710100  vfp162float_h.rn vr2, vr2
005748  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
00574c  12112b02  vadd.f.mz.rn vr2{mr1}, r22, vr2
005750  06b30100  vfp162float_l.rn vr6, vr3
005754  86330200  vfp162float_l.rn vr7, vr4
005758  86f10100  vfp162float_h.rn vr3, vr3
00575c  06720200  vfp162float_h.rn vr4, vr4
005760  8a925a02  vmul.f.mz.rn vr5{mr1}, r21, vr5
005764  0a912a02  vmul.f.mz.rn vr2{mr1}, r21, vr2
005768  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
00576c  26123102  vmac.f.mz.rn vr4{mr1}, vr2, vr3
005770  86900300  vfloat2fp16_l.rn vr1, vr7
005774  86500200  vfloat2fp16_h.rn vr1, vr4
005778  46001802  vstore.mz vr1{mr1}, 0(r16)
00577c  3f9dfbfe  blt.s r23, r15, -188
005780  db97ffff  j -836
005784  9f000040  addli r1, zero, 8192
005788  2b0100f0  lui r2, 983040
00578c  97902000  or r1, r1, r2
005790  2b310200  lui r2, 35
005794  1f010100  addli r2, r2, 0
005798  ff002300  l_gm2sm r1, r2, 0(r[7:8])
00579c  db070000  j 60
0057a0  63012f00  loadli.w r2,  16(r30)
0057a4  ab0100f0  lui r3, 983040
0057a8  1b312100  slli r2, r2, 2
0057ac  17113100  or r2, r2, r3
0057b0  ab810200  lui r3, 40
0057b4  9f810108  addli r3, r3, 1024
0057b8  7f013300  l_gm2sm r2, r3, 0(r[7:8])
0057bc  5bf00000  j 1920
0057c0  9f000040  addli r1, zero, 8192
0057c4  2b0100f0  lui r2, 983040
0057c8  97902000  or r1, r1, r2
0057cc  2b510200  lui r2, 37
0057d0  1f010100  addli r2, r2, 0
0057d4  ff002400  l_gm2sm r1, r2, 0(r[9:10])
0057d8  abf00000  lui r1, 15
0057dc  00200300  mfence { sm, gm }
0057e0  1f020006  addli r4, zero, 768
0057e4  1b91f0ff  ori r2, r1, 4095
0057e8  9b001500  andi r1, r10, 1
0057ec  80210104  csr_set csr3, r2
0057f0  1f010006  addli r2, zero, 768
0057f4  00d00100  sync_group
0057f8  67081fd6  storeli.w r1, -5248(r30)
0057fc  37a00000  beq r1, zero, 8
005800  1f02000a  addli r4, zero, 1280
005804  e3411f00  loadli.w r3,  12(r30)
005808  9f120000  addli r5, zero, 1
00580c  3ffc5104  blt.s r3, r5, 2844
005810  e3000fd7  loadli.w r1,  -5248(r30)
005814  80510102  load_param_i r3, 2
005818  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00581c  ab180200  lui r17, 33
005820  ab7b0200  lui r23, 39
005824  2b7e0200  lui r28, 39
005828  9f020000  addli r5, zero, 0
00582c  1b441500  srli r8, r10, 1
005830  9b342200  slli r9, r4, 2
005834  9f078fd7  addli r15, r30, -5184
005838  1f090005  addli r18, zero, 640
00583c  9f0a8000  addli r21, zero, 64
005840  1f0b4000  addli r22, zero, 32
005844  9f0d0003  addli r27, zero, 384
005848  9bc31100  srli r7, r3, 1
00584c  ab310200  lui r3, 35
005850  9f880800  addli r17, r17, 0
005854  9f8b0b00  addli r23, r23, 0
005858  1f0e0e04  addli r28, r28, 512
00585c  8b902020  mul.s r1, r1, r2
005860  9f810100  addli r3, r3, 0
005864  1bb12000  slli r2, r1, 2
005868  67041fd6  storeli.w r1, -5312(r30)
00586c  abf0ffff  lui r1, 1048575
005870  8b153110  add.s r11, r2, r3
005874  ab510200  lui r3, 37
005878  9b9000f8  ori r1, r1, 3968
00587c  9f810100  addli r3, r3, 0
005880  67081fd4  storeli.w r1, -5504(r30)
005884  0b163110  add.s r12, r2, r3
005888  1f018fd5  addli r2, r30, -5440
00588c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005890  2bf10000  lui r2, 15
005894  1b1cf1ff  ori r24, r2, 4095
005898  db030000  j 28
00589c  00a00300  mfence { lm, sm, gm }
0058a0  80210c04  csr_set csr3, r24
0058a4  00d00100  sync_group
0058a8  8b927210  add.s r5, r5, r7
0058ac  3fa00201  blt.s r5, r16, 8
0058b0  5b65f6ff  j -19672
0058b4  0b918210  add.s r2, r5, r8
0058b8  cb1f28fe  ble.s r16, r2, -28
0058bc  e3001f00  loadli.w r1,  8(r30)
0058c0  0b111110  add.s r2, r2, r1
0058c4  e3008fd6  loadli.w r1,  -5312(r30)
0058c8  1b31b100  slli r2, r2, 11
0058cc  17111100  or r2, r2, r1
0058d0  9f200000  addli r1, zero, 2
0058d4  33110128  sext_int2long r[3:4], r2
0058d8  97361102  sll.d r[14:15], r[3:4], r1
0058dc  9f007fd6  addli r1, r30, -5320
0058e0  2b0100f0  lui r2, 983040
0058e4  ebd90000  load.d r[20:21], 0(r1)
0058e8  17912400  or r2, r9, r2
0058ec  8bacd910  add.ul r[26:27], r[20:21], r[14:15]
0058f0  7fa1fc00  l_gm2lm r2, r15, 0(r[26:27])
0058f4  00a00200  mfence { lm, gm }
0058f8  e3000fd7  loadli.w r1,  -5248(r30)
0058fc  3bb60000  bneq r1, zero, 396
005900  9f008fd5  addli r1, r30, -5440
005904  e3010fd5  loadli.w r3,  -5504(r30)
005908  1f010000  addli r2, zero, 0
00590c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
005910  92303002  vadd.s.mz vr1{mr1}, zero, vr3
005914  12313002  vadd.s.mz vr2{mr1}, zero, vr3
005918  12323002  vadd.s.mz vr4{mr1}, zero, vr3
00591c  0b181111  add.s r16, r2, r17
005920  0b952710  add.s r10, r15, r2
005924  9f810101  addli r3, r3, 128
005928  1f010104  addli r2, r2, 512
00592c  9f000801  addli r1, r16, 128
005930  4a100802  vloads_mask16.mz vr0{mr1}, 0(r16)
005934  1f038800  addli r6, r16, 64
005938  42140502  vload_mask16.mz vr8{mr1}, 0(r10)
00593c  9f098501  addli r19, r10, 192
005940  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
005944  9f008801  addli r1, r16, 192
005948  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
00594c  1f038500  addli r6, r10, 64
005950  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
005954  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
005958  9f000501  addli r1, r10, 128
00595c  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
005960  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005964  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005968  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00596c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005970  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005974  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005978  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
00597c  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
005980  9f000802  addli r1, r16, 256
005984  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005988  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00598c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
005990  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005994  1f030503  addli r6, r10, 384
005998  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
00599c  9f008802  addli r1, r16, 320
0059a0  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
0059a4  9f090502  addli r19, r10, 256
0059a8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0059ac  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0059b0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0059b4  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0059b8  9f000803  addli r1, r16, 384
0059bc  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
0059c0  1f088803  addli r16, r16, 448
0059c4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0059c8  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0059cc  9f008502  addli r1, r10, 320
0059d0  4a150802  vloads_mask16.mz vr10{mr1}, 0(r16)
0059d4  1f058503  addli r10, r10, 448
0059d8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0059dc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0059e0  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
0059e4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0059e8  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
0059ec  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0059f0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0059f4  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
0059f8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0059fc  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
005a00  93802105  setlt.u r1, r3, r18
005a04  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005a08  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005a0c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005a10  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005a14  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005a18  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005a1c  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
005a20  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005a24  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005a28  bbdb00fe  bneq r1, zero, -268
005a2c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005a30  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005a34  9f000002  addli r1, zero, 256
005a38  6af100c0  vsrl.p vr2, r1, vr0
005a3c  eaf110c0  vsrl.p vr3, r1, vr1
005a40  9f000001  addli r1, zero, 128
005a44  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a48  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a4c  6af100c0  vsrl.p vr2, r1, vr0
005a50  eaf110c0  vsrl.p vr3, r1, vr1
005a54  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a58  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a5c  6af10ac0  vsrl.p vr2, r21, vr0
005a60  eaf11ac0  vsrl.p vr3, r21, vr1
005a64  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a68  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a6c  6a710bc0  vsrl.p vr2, r22, vr0
005a70  ea711bc0  vsrl.p vr3, r22, vr1
005a74  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a78  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a7c  7a130040  vextracti.f r6, 0(vr0)
005a80  fa910040  vextracti.f r3, 0(vr1)
005a84  5b640000  j 800
005a88  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005a8c  abf0ffff  lui r1, 1048575
005a90  1f010000  addli r2, zero, 0
005a94  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005a98  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005a9c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005aa0  9b9100f8  ori r3, r1, 3968
005aa4  0b982810  add.s r16, r17, r2
005aa8  0b952710  add.s r10, r15, r2
005aac  9f810101  addli r3, r3, 128
005ab0  1f010104  addli r2, r2, 512
005ab4  1f0d0831  addli r26, r16, 6272
005ab8  1f030830  addli r6, r16, 6144
005abc  9f008831  addli r1, r16, 6336
005ac0  9f0c0518  addli r25, r10, 3072
005ac4  ca130d02  vloads_mask16.mz vr7{mr1}, 0(r26)
005ac8  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
005acc  1f038830  addli r6, r16, 6208
005ad0  ca940002  vloads_mask16.mz vr9{mr1}, 0(r1)
005ad4  9f008518  addli r1, r10, 3136
005ad8  1f0d8519  addli r26, r10, 3264
005adc  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
005ae0  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
005ae4  1f030519  addli r6, r10, 3200
005ae8  42100d02  vload_mask16.mz vr0{mr1}, 0(r26)
005aec  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
005af0  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
005af4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005af8  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
005afc  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
005b00  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
005b04  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005b08  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
005b0c  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
005b10  1f030832  addli r6, r16, 6400
005b14  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
005b18  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
005b1c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005b20  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
005b24  9f0c051a  addli r25, r10, 3328
005b28  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
005b2c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005b30  9f00051b  addli r1, r10, 3456
005b34  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
005b38  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
005b3c  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
005b40  1f038832  addli r6, r16, 6464
005b44  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005b48  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005b4c  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
005b50  1f030833  addli r6, r16, 6528
005b54  1f088833  addli r16, r16, 6592
005b58  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
005b5c  1f03851a  addli r6, r10, 3392
005b60  4a150802  vloads_mask16.mz vr10{mr1}, 0(r16)
005b64  1f05851b  addli r10, r10, 3520
005b68  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
005b6c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005b70  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
005b74  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005b78  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
005b7c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005b80  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005b84  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
005b88  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005b8c  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
005b90  1383b105  setlt.u r6, r3, r27
005b94  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005b98  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005b9c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005ba0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005ba4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005ba8  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005bac  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
005bb0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005bb4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005bb8  bb3b03fe  bneq r6, zero, -276
005bbc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005bc0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005bc4  9f000002  addli r1, zero, 256
005bc8  1f080000  addli r16, zero, 0
005bcc  eaf110c0  vsrl.p vr3, r1, vr1
005bd0  6af100c0  vsrl.p vr2, r1, vr0
005bd4  9f000001  addli r1, zero, 128
005bd8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005bdc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005be0  eaf110c0  vsrl.p vr3, r1, vr1
005be4  6af100c0  vsrl.p vr2, r1, vr0
005be8  abf0ffff  lui r1, 1048575
005bec  1b9500f8  ori r10, r1, 3968
005bf0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005bf4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005bf8  eaf11ac0  vsrl.p vr3, r21, vr1
005bfc  6af10ac0  vsrl.p vr2, r21, vr0
005c00  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005c04  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005c08  ea711bc0  vsrl.p vr3, r22, vr1
005c0c  6a710bc0  vsrl.p vr2, r22, vr0
005c10  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005c14  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005c18  fa910040  vextracti.f r3, 0(vr1)
005c1c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005c20  7a110040  vextracti.f r2, 0(vr0)
005c24  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005c28  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005c2c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005c30  8b9c0811  add.s r25, r17, r16
005c34  0b9d0711  add.s r26, r15, r16
005c38  1f050501  addli r10, r10, 128
005c3c  1f080804  addli r16, r16, 512
005c40  9f800c18  addli r1, r25, 3072
005c44  1f830c19  addli r6, r25, 3200
005c48  42140d02  vload_mask16.mz vr8{mr1}, 0(r26)
005c4c  9f098d01  addli r19, r26, 192
005c50  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
005c54  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
005c58  9f808c18  addli r1, r25, 3136
005c5c  1f838c19  addli r6, r25, 3264
005c60  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
005c64  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
005c68  9f000d01  addli r1, r26, 128
005c6c  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
005c70  1f038d00  addli r6, r26, 64
005c74  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005c78  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
005c7c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005c80  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
005c84  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005c88  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005c8c  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
005c90  9f800c1a  addli r1, r25, 3328
005c94  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005c98  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005c9c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
005ca0  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
005ca4  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
005ca8  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
005cac  9f808c1a  addli r1, r25, 3392
005cb0  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
005cb4  9f090d02  addli r19, r26, 256
005cb8  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005cbc  1f030d03  addli r6, r26, 384
005cc0  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
005cc4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005cc8  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
005ccc  9f800c1b  addli r1, r25, 3456
005cd0  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
005cd4  9f8c8c1b  addli r25, r25, 3520
005cd8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005cdc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005ce0  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
005ce4  9f008d02  addli r1, r26, 320
005ce8  4a950c02  vloads_mask16.mz vr10{mr1}, 0(r25)
005cec  9f0c8d03  addli r25, r26, 448
005cf0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005cf4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005cf8  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
005cfc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005d00  c2940c02  vload_mask16.mz vr9{mr1}, 0(r25)
005d04  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005d08  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005d0c  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
005d10  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005d14  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
005d18  93002505  setlt.u r1, r10, r18
005d1c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005d20  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005d24  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005d28  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005d2c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005d30  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005d34  46907c02  vstore_mask16.mz vr7{mr1}, 0(r25)
005d38  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005d3c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005d40  bbcb00fe  bneq r1, zero, -272
005d44  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005d48  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005d4c  9f000002  addli r1, zero, 256
005d50  6af100c0  vsrl.p vr2, r1, vr0
005d54  eaf110c0  vsrl.p vr3, r1, vr1
005d58  9f000001  addli r1, zero, 128
005d5c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d60  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d64  6af100c0  vsrl.p vr2, r1, vr0
005d68  eaf110c0  vsrl.p vr3, r1, vr1
005d6c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d70  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d74  6af10ac0  vsrl.p vr2, r21, vr0
005d78  eaf11ac0  vsrl.p vr3, r21, vr1
005d7c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d80  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d84  6a710bc0  vsrl.p vr2, r22, vr0
005d88  ea711bc0  vsrl.p vr3, r22, vr1
005d8c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d90  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d94  fa100040  vextracti.f r1, 0(vr0)
005d98  7a950040  vextracti.f r10, 0(vr1)
005d9c  0b631110  add.f.rn r6, r2, r1
005da0  8be1a110  add.f.rn r3, r3, r10
005da4  8b807230  div.u r1, r5, r7
005da8  00350002  core_id r10
005dac  1f010000  addli r2, zero, 0
005db0  9bb06000  slli r1, r1, 6
005db4  9b800004  andi r1, r1, 64
005db8  9790a000  or r1, r1, r10
005dbc  1bb52000  slli r10, r1, 2
005dc0  9b80e007  andi r1, r1, 126
005dc4  0b187511  add.s r16, r10, r23
005dc8  9bb02000  slli r1, r1, 2
005dcc  73606800  stores.w r6, 0(r16)
005dd0  0b13c511  add.s r6, r10, r28
005dd4  1b154500  ori r10, r10, 4
005dd8  1f080000  addli r16, zero, 0
005ddc  73603300  stores.w r3, 0(r6)
005de0  8b117511  add.s r3, r10, r23
005de4  0b937011  add.s r6, r1, r23
005de8  0b15c511  add.s r10, r10, r28
005dec  8b90c011  add.s r1, r1, r28
005df0  00a00300  mfence { lm, sm, gm }
005df4  80210c04  csr_set csr3, r24
005df8  00d00100  sync_group
005dfc  eb590f00  load.d r[20:21], 0(r30)
005e00  efc10100  loads.w r3, 0(r3)
005e04  6f430300  loads.w r6, 0(r6)
005e08  6f450500  loads.w r10, 0(r10)
005e0c  efc00000  loads.w r1, 0(r1)
005e10  8ba6d910  add.ul r[14:15], r[20:21], r[14:15]
005e14  8be16110  add.f.rn r3, r3, r6
005e18  8b601510  add.f.rn r1, r10, r1
005e1c  2b05003a  lui r10, 237568
005e20  0be3a120  mul.f.rn r6, r3, r10
005e24  8be0a020  mul.f.rn r1, r1, r10
005e28  8b616320  mul.f.rn r3, r6, r6
005e2c  0b650358  neg.f r10, r6
005e30  8be03018  sub.f.rn r1, r1, r3
005e34  e3013f00  loadli.w r3,  24(r30)
005e38  8be03010  add.f.rn r1, r1, r3
005e3c  ab01803f  lui r3, 260096
005e40  8f800008  sqrt.f.rn r1, r1
005e44  8f811118  div.f.rn r3, r3, r1
005e48  0b9d2510  add.s r26, r11, r2
005e4c  0b932710  add.s r6, r15, r2
005e50  8b1c2610  add.s r25, r12, r2
005e54  9f098d00  addli r19, r26, 64
005e58  9f008300  addli r1, r6, 64
005e5c  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
005e60  4a110d02  vloads_mask16.mz vr2{mr1}, 0(r26)
005e64  4a920c02  vloads_mask16.mz vr4{mr1}, 0(r25)
005e68  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
005e6c  9f898c00  addli r19, r25, 64
005e70  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
005e74  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
005e78  9f094800  addli r19, r16, 32
005e7c  12100502  vadd.f.mz.rn vr0{mr1}, r10, vr0
005e80  93093207  setle.u r19, r4, r19
005e84  92101502  vadd.f.mz.rn vr1{mr1}, r10, vr1
005e88  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
005e8c  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
005e90  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
005e94  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
005e98  46104302  vstore_mask16.mz vr4{mr1}, 0(r6)
005e9c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005ea0  bb910900  bneq r19, zero, 100
005ea4  9f090d01  addli r19, r26, 128
005ea8  1f8a0c01  addli r20, r25, 128
005eac  9f000301  addli r1, r6, 128
005eb0  1f038301  addli r6, r6, 192
005eb4  1f088800  addli r16, r16, 64
005eb8  1f010102  addli r2, r2, 256
005ebc  4a910902  vloads_mask16.mz vr2{mr1}, 0(r19)
005ec0  9f098d01  addli r19, r26, 192
005ec4  ca110a02  vloads_mask16.mz vr3{mr1}, 0(r20)
005ec8  1f8a8c01  addli r20, r25, 192
005ecc  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
005ed0  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
005ed4  4a920902  vloads_mask16.mz vr4{mr1}, 0(r19)
005ed8  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
005edc  93094804  setlt.u r19, r16, r4
005ee0  12100502  vadd.f.mz.rn vr0{mr1}, r10, vr0
005ee4  92101502  vadd.f.mz.rn vr1{mr1}, r10, vr1
005ee8  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
005eec  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
005ef0  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
005ef4  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
005ef8  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
005efc  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005f00  3bad09fe  bneq r19, zero, -184
005f04  ab0000f0  lui r1, 983040
005f08  00a00000  mfence { lm }
005f0c  97901400  or r1, r9, r1
005f10  ffb0f600  s_lm2gm r1, r15, 0(r[14:15])
005f14  00a00200  mfence { lm, gm }
005f18  63481f00  loadli.w r16,  12(r30)
005f1c  db31ffff  j -1652
005f20  63012f00  loadli.w r2,  16(r30)
005f24  ab0100f0  lui r3, 983040
005f28  1b312100  slli r2, r2, 2
005f2c  17113100  or r2, r2, r3
005f30  ab910200  lui r3, 41
005f34  9f810108  addli r3, r3, 1024
005f38  7f013400  l_gm2sm r2, r3, 0(r[9:10])
005f3c  2bf10000  lui r2, 15
005f40  e3411f00  loadli.w r3,  12(r30)
005f44  00200300  mfence { sm, gm }
005f48  1b11f1ff  ori r2, r2, 4095
005f4c  80210104  csr_set csr3, r2
005f50  00d00100  sync_group
005f54  4bdf1100  ble.s r3, r1, 980
005f58  e3012f00  loadli.w r3,  16(r30)
005f5c  e3422f00  loadli.w r5,  20(r30)
005f60  ab780200  lui r17, 39
005f64  2b890200  lui r18, 40
005f68  ab990200  lui r19, 41
005f6c  9f038fd7  addli r7, r30, -5184
005f70  1f140000  addli r8, zero, 1
005f74  1f050002  addli r10, zero, 256
005f78  1f060001  addli r12, zero, 128
005f7c  9f068000  addli r13, zero, 64
005f80  1f084000  addli r16, zero, 32
005f84  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005f88  9f880808  addli r17, r17, 1024
005f8c  1f090908  addli r18, r18, 1024
005f90  9f890908  addli r19, r19, 1024
005f94  0b925110  add.s r4, r3, r5
005f98  9bb52100  slli r11, r3, 2
005f9c  33810108  fix2float.rn r2, r3
005fa0  9f71f2ff  addli r3, r4, -1
005fa4  1bb22200  slli r4, r5, 2
005fa8  67082fd4  storeli.w r2, -5504(r30)
005fac  1f010fd7  addli r2, r30, -5248
005fb0  670cbfd4  storeli.w r11, -5440(r30)
005fb4  8b925130  div.s r5, r3, r5
005fb8  abf1ffff  lui r3, 1048575
005fbc  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005fc0  9b94f1ff  ori r9, r3, 4095
005fc4  5b080000  j 64
005fc8  1f038fd6  addli r6, r30, -5312
005fcc  6b510f00  load.d r[3:4], 0(r30)
005fd0  6b5a0300  load.d r[21:22], 0(r6)
005fd4  00a00000  mfence { lm }
005fd8  00530102  load_param_i r6, 2
005fdc  e3058fd5  loadli.w r11,  -5440(r30)
005fe0  8b101310  add.s r1, r6, r1
005fe4  0b2a4111  add.ul r[21:22], r[3:4], r[21:22]
005fe8  ab0100f0  lui r3, 983040
005fec  97913500  or r3, r11, r3
005ff0  ff317a00  s_lm2gm r3, r7, 0(r[21:22])
005ff4  00a00200  mfence { lm, gm }
005ff8  63411f00  loadli.w r2,  12(r30)
005ffc  3fa02000  blt.s r1, r2, 8
006000  5b650000  j 808
006004  63011f00  loadli.w r2,  8(r30)
006008  8b912010  add.s r3, r1, r2
00600c  1f210000  addli r2, zero, 2
006010  8b91f120  mul.s r3, r3, r15
006014  339a0128  sext_int2long r[21:22], r3
006018  ab0100f0  lui r3, 983040
00601c  173c2a02  sll.d r[25:26], r[21:22], r2
006020  1f017fd6  addli r2, r30, -5320
006024  97913500  or r3, r11, r3
006028  6b5a0100  load.d r[21:22], 0(r2)
00602c  1f018fd6  addli r2, r30, -5312
006030  0b2b8a11  add.ul r[23:24], r[21:22], r[25:26]
006034  ff217b00  l_gm2lm r3, r7, 0(r[23:24])
006038  00a00200  mfence { lm, gm }
00603c  73308101  store.d r[25:26], 0(r2)
006040  bf978200  blt.s r5, r8, 484
006044  9f0b0000  addli r23, zero, 0
006048  1f0b0000  addli r22, zero, 0
00604c  1f0c0000  addli r24, zero, 0
006050  db0c0000  j 100
006054  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
006058  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00605c  1f1c0c00  addli r24, r24, 1
006060  6a7105c0  vsrl.p vr2, r10, vr0
006064  ea7115c0  vsrl.p vr3, r10, vr1
006068  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00606c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006070  6a7106c0  vsrl.p vr2, r12, vr0
006074  ea7116c0  vsrl.p vr3, r12, vr1
006078  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00607c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006080  6af106c0  vsrl.p vr2, r13, vr0
006084  eaf116c0  vsrl.p vr3, r13, vr1
006088  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00608c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006090  6a7108c0  vsrl.p vr2, r16, vr0
006094  ea7118c0  vsrl.p vr3, r16, vr1
006098  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00609c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060a0  7a110040  vextracti.f r2, 0(vr0)
0060a4  fa910040  vextracti.f r3, 0(vr1)
0060a8  8beb2b10  add.f.rn r23, r23, r2
0060ac  0b6b3b10  add.f.rn r22, r22, r3
0060b0  b7755c00  beq r24, r5, 380
0060b4  9f010c00  addli r3, r24, 0
0060b8  3730a700  beq r14, r10, 12
0060bc  97219c00  xor r3, r24, r9
0060c0  8b913210  add.s r3, r5, r3
0060c4  1f010fd7  addli r2, r30, -5248
0060c8  0b93e120  mul.s r6, r3, r14
0060cc  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0060d0  0b936718  sub.s r6, r15, r6
0060d4  8b1ce340  min.s r25, r6, r14
0060d8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0060dc  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0060e0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0060e4  bfcd8cfe  blt.s r25, r8, -144
0060e8  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0060ec  1f0d0000  addli r26, zero, 0
0060f0  8b1d3220  mul.s r27, r4, r3
0060f4  1f0e8fd7  addli r28, r30, -5184
0060f8  9f850800  addli r11, r17, 0
0060fc  92304002  vadd.s.mz vr1{mr1}, zero, vr4
006100  12314002  vadd.s.mz vr2{mr1}, zero, vr4
006104  92314002  vadd.s.mz vr3{mr1}, zero, vr4
006108  8b91b511  add.s r3, r11, r27
00610c  0b13be11  add.s r6, r28, r27
006110  1f818100  addli r2, r3, 64
006114  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
006118  1f8a8101  addli r20, r3, 192
00611c  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
006120  9f0a8301  addli r21, r6, 192
006124  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
006128  1f810101  addli r2, r3, 128
00612c  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
006130  1f0a0301  addli r20, r6, 128
006134  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
006138  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
00613c  c2150a02  vload_mask16.mz vr11{mr1}, 0(r20)
006140  1f018300  addli r2, r6, 64
006144  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
006148  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00614c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
006150  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
006154  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
006158  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00615c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006160  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
006164  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
006168  1f018d00  addli r2, r26, 64
00616c  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
006170  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
006174  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006178  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
00617c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
006180  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
006184  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
006188  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00618c  4bab2cfe  ble.s r25, r2, -312
006190  1f8a0102  addli r20, r3, 256
006194  9f8a8102  addli r21, r3, 320
006198  1f010302  addli r2, r6, 256
00619c  1f0d0d01  addli r26, r26, 128
0061a0  9f850504  addli r11, r11, 512
0061a4  1f0e0e04  addli r28, r28, 512
0061a8  4a100a02  vloads_mask16.mz vr0{mr1}, 0(r20)
0061ac  1f8a0103  addli r20, r3, 384
0061b0  9f818103  addli r3, r3, 448
0061b4  ca920a02  vloads_mask16.mz vr5{mr1}, 0(r21)
0061b8  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
0061bc  ca130a02  vloads_mask16.mz vr7{mr1}, 0(r20)
0061c0  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
0061c4  9f010303  addli r3, r6, 384
0061c8  1f0a8302  addli r20, r6, 320
0061cc  1f038303  addli r6, r6, 448
0061d0  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
0061d4  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
0061d8  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0061dc  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
0061e0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0061e4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0061e8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0061ec  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0061f0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0061f4  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
0061f8  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0061fc  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
006200  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006204  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
006208  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00620c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006210  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
006214  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
006218  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
00621c  bf3b9dff  blt.s r26, r25, -276
006220  dbc6ffff  j -460
006224  1f0b0000  addli r22, zero, 0
006228  9f0b0000  addli r23, zero, 0
00622c  00a00000  mfence { lm }
006230  3fe687fe  blt.s r15, r8, -616
006234  63010fd5  loadli.w r2,  -5504(r30)
006238  9f050000  addli r11, zero, 0
00623c  8f812b18  div.f.rn r3, r23, r2
006240  0f032b18  div.f.rn r6, r22, r2
006244  63013f00  loadli.w r2,  24(r30)
006248  0beb3120  mul.f.rn r22, r3, r3
00624c  0b636319  sub.f.rn r6, r6, r22
006250  0beb0158  neg.f r22, r3
006254  9f010000  addli r3, zero, 0
006258  0b632310  add.f.rn r6, r6, r2
00625c  2b01803f  lui r2, 260096
006260  0f030308  sqrt.f.rn r6, r6
006264  0f036118  div.f.rn r6, r2, r6
006268  0b9c2511  add.s r24, r11, r18
00626c  8b9bb310  add.s r23, r7, r11
006270  8b9c3511  add.s r25, r11, r19
006274  4a110c02  vloads_mask16.mz vr2{mr1}, 0(r24)
006278  1f0c8c00  addli r24, r24, 64
00627c  1f8d8b00  addli r26, r23, 64
006280  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
006284  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
006288  4a120c02  vloads_mask16.mz vr4{mr1}, 0(r24)
00628c  1f8c8c00  addli r24, r25, 64
006290  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
006294  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
006298  1f8c4100  addli r24, r3, 32
00629c  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
0062a0  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
0062a4  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
0062a8  8a113302  vmul.f.mz.rn vr3{mr1}, r6, vr3
0062ac  a6922002  vmac.f.mz.rn vr5{mr1}, vr1, vr2
0062b0  26934102  vmac.f.mz.rn vr6{mr1}, vr3, vr4
0062b4  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
0062b8  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
0062bc  4bb487ff  ble.s r15, r24, -756
0062c0  8b1cb910  add.s r25, r18, r11
0062c4  0b9db910  add.s r26, r19, r11
0062c8  1f8c0b01  addli r24, r23, 128
0062cc  9f8b8b01  addli r23, r23, 192
0062d0  9f818100  addli r3, r3, 64
0062d4  9f850502  addli r11, r11, 256
0062d8  9f8d0c01  addli r27, r25, 128
0062dc  1f0e0d01  addli r28, r26, 128
0062e0  9f8c8c01  addli r25, r25, 192
0062e4  1f0d8d01  addli r26, r26, 192
0062e8  c2100c02  vload_mask16.mz vr1{mr1}, 0(r24)
0062ec  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
0062f0  ca910d02  vloads_mask16.mz vr3{mr1}, 0(r27)
0062f4  4a120e02  vloads_mask16.mz vr4{mr1}, 0(r28)
0062f8  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
0062fc  4a130d02  vloads_mask16.mz vr6{mr1}, 0(r26)
006300  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
006304  12112b02  vadd.f.mz.rn vr2{mr1}, r22, vr2
006308  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
00630c  0a112302  vmul.f.mz.rn vr2{mr1}, r6, vr2
006310  26923002  vmac.f.mz.rn vr4{mr1}, vr1, vr3
006314  26135102  vmac.f.mz.rn vr6{mr1}, vr2, vr5
006318  46104c02  vstore_mask16.mz vr4{mr1}, 0(r24)
00631c  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
006320  3fadf1fe  blt.s r3, r15, -184
006324  db94ffff  j -860
006328  9f0e8fd3  addli sp, r30, -5696
00632c  e38f2e2c  loadli.w r31,  5648(sp)
006330  63cf2e2c  loadli.w r30,  5652(sp)
006334  638e3e2c  loadli.w r28,  5656(sp)
006338  e3cd3e2c  loadli.w r27,  5660(sp)
00633c  638d4e2c  loadli.w r26,  5664(sp)
006340  e3cc4e2c  loadli.w r25,  5668(sp)
006344  638c5e2c  loadli.w r24,  5672(sp)
006348  e3cb5e2c  loadli.w r23,  5676(sp)
00634c  638b6e2c  loadli.w r22,  5680(sp)
006350  e3ca6e2c  loadli.w r21,  5684(sp)
006354  638a7e2c  loadli.w r20,  5688(sp)
006358  e3c97e2c  loadli.w r19,  5692(sp)
00635c  9f8e8e2c  addli sp, sp, 5696
006360  5f800f00  jr r31, 0
006364  00100000  exit
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
