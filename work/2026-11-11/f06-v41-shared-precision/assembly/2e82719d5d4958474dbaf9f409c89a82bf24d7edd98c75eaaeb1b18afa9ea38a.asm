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
000110  1f1d0000  addli r26, zero, 1
000114  9f0d0006  addli r27, zero, 768
000118  1b9ef026  ori r28, r1, 623
00011c  8b904a31  div.s r1, r21, r20
000120  eb510f02  load.d r[4:5], 32(r30)
000124  6b530f01  load.d r[7:8], 16(r30)
000128  6b548f01  load.d r[9:10], 24(r30)
00012c  67820e00  storeli.w zero, 32(sp)
000130  e7c1ae01  storeli.w r26, 28(sp)
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
0001c4  9f057fd6  addli r11, r30, -5320
0001c8  73b02500  store.d r[3:4], 0(r11)
0001cc  3f511500  blt.s r10, r1, 84
0001d0  1f110000  addli r2, zero, 1
0001d4  b7db2004  beq r1, r2, 2804
0001d8  1f210000  addli r2, zero, 2
0001dc  bb9a2004  bneq r1, r2, 2724
0001e0  e3403f00  loadli.w r1,  28(r30)
0001e4  b7bf0012  beq r1, zero, 10220
0001e8  80300002  core_id r1
0001ec  1f210000  addli r2, zero, 2
0001f0  b7ae2026  beq r1, r2, 20392
0001f4  1f110000  addli r2, zero, 1
0001f8  b78d2026  beq r1, r2, 20320
0001fc  bbee0026  bneq r1, zero, 20408
000200  63012f00  loadli.w r2,  16(r30)
000204  ab0100f0  lui r3, 983040
000208  1b311100  slli r2, r2, 1
00020c  17113100  or r2, r2, r3
000210  ab910100  lui r3, 25
000214  9f810100  addli r3, r3, 0
000218  7f013200  l_gm2sm r2, r3, 0(r[5:6])
00021c  5bf30900  j 20376
000220  1f310000  addli r2, zero, 3
000224  b79b2004  beq r1, r2, 2788
000228  1f410000  addli r2, zero, 4
00022c  3bd92004  bneq r1, r2, 2644
000230  e3002f00  loadli.w r1,  16(r30)
000234  1f010010  addli r2, zero, 2048
000238  3bb0200a  bneq r1, r2, 5132
00023c  e3403f00  loadli.w r1,  28(r30)
000240  b7c1001a  beq r1, zero, 13424
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
0003d0  bfcc6130  blt.s r3, r6, 25392
0003d4  e3018fd5  loadli.w r3,  -5440(r30)
0003d8  1f0a8fd7  addli r20, r30, -5184
0003dc  1bb71200  slli r14, r5, 1
0003e0  9f030000  addli r7, zero, 0
0003e4  9f7c7000  addli r25, zero, 63
0003e8  9f0d0005  addli r27, zero, 640
0003ec  ab06803f  lui r13, 260096
0003f0  1f062000  addli r12, zero, 16
0003f4  1f3b0000  addli r22, zero, 3
0003f8  1f5e1000  addli r28, zero, 13
0003fc  2bec0700  lui r24, 126
000400  1f2d1000  addli r26, zero, 10
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
000430  0b114711  add.s r2, r14, r20
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
000464  e70fefd2  storeli.w r14, -5640(r30)
000468  9b9000f8  ori r1, r1, 3968
00046c  674e1fd2  storeli.w r1, -5660(r30)
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
0004b0  dbf70000  j 1980
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
0004e4  17b86402  sll.d r[17:18], r[10:11], r6
0004e8  ebd40100  load.d r[10:11], 0(r3)
0004ec  9f018fd6  addli r3, r30, -5312
0004f0  97101700  or r1, r14, r1
0004f4  1b010104  andi r2, r2, 64
0004f8  73b00101  store.d r[17:18], 0(r3)
0004fc  8ba40411  add.ul r[10:11], r[10:11], r[17:18]
000500  ffa04401  l_gm2lm r1, r20, 0(r[10:11])
000504  80300002  core_id r1
000508  00a00200  mfence { lm, gm }
00050c  97181100  or r17, r2, r1
000510  6341dfd3  loadli.w r2,  -5652(r30)
000514  e301efd3  loadli.w r3,  -5648(r30)
000518  e344efd3  loadli.w r9,  -5644(r30)
00051c  c2000102  vload.mz vr1{mr1}, 0(r2)
000520  9f84c4ff  addli r9, r9, -32
000524  9f8581ff  addli r11, r3, -64
000528  1f0181ff  addli r2, r2, -64
00052c  13859c04  setlt.u r10, r25, r9
000530  66c111a0  vmerge_h.hf vr2, vr3, vr1
000534  e6c01180  vmerge_l.hf vr1, vr3, vr1
000538  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
00053c  9f8101ff  addli r3, r3, -128
000540  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
000544  3b6f05fe  bneq r10, zero, -40
000548  00a00000  mfence { lm }
00054c  1f070003  addli r14, zero, 384
000550  e3008fd5  loadli.w r1,  -5440(r30)
000554  3bb60000  bneq r1, zero, 396
000558  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00055c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000560  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000564  e341cfd3  loadli.w r3,  -5660(r30)
000568  1f010000  addli r2, zero, 0
00056c  0b15f110  add.s r10, r2, r15
000570  8b142a10  add.s r9, r20, r2
000574  9f810101  addli r3, r3, 128
000578  1f010104  addli r2, r2, 512
00057c  9f000501  addli r1, r10, 128
000580  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
000584  9f058500  addli r11, r10, 64
000588  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
00058c  1f888401  addli r16, r9, 192
000590  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
000594  9f008501  addli r1, r10, 192
000598  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
00059c  9f858400  addli r11, r9, 64
0005a0  c2150802  vload_mask16.mz vr11{mr1}, 0(r16)
0005a4  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
0005a8  9f800401  addli r1, r9, 128
0005ac  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
0005b0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0005b4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0005b8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0005bc  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0005c0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0005c4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0005c8  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
0005cc  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0005d0  9f000502  addli r1, r10, 256
0005d4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0005d8  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0005dc  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0005e0  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
0005e4  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0005e8  9f008502  addli r1, r10, 320
0005ec  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0005f0  1f880402  addli r16, r9, 256
0005f4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0005f8  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0005fc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000600  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
000604  9f000503  addli r1, r10, 384
000608  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
00060c  1f058503  addli r10, r10, 448
000610  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000614  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
000618  9f808402  addli r1, r9, 320
00061c  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
000620  1f850403  addli r10, r9, 384
000624  9f848403  addli r9, r9, 448
000628  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00062c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000630  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
000634  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000638  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
00063c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000640  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000644  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
000648  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00064c  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000650  9380b105  setlt.u r1, r3, r27
000654  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000658  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00065c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000660  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000664  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000668  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
00066c  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000670  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000674  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000678  bbdb00fe  bneq r1, zero, -268
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
0006d4  fa140040  vextracti.f r9, 0(vr0)
0006d8  fa910040  vextracti.f r3, 0(vr1)
0006dc  5b670000  j 824
0006e0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0006e4  abf0ffff  lui r1, 1048575
0006e8  1f010000  addli r2, zero, 0
0006ec  e70e1fd3  storeli.w r17, -5656(r30)
0006f0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0006f4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0006f8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0006fc  9b9100f8  ori r3, r1, 3968
000700  8b942710  add.s r9, r15, r2
000704  0b152a10  add.s r10, r20, r2
000708  9f810101  addli r3, r3, 128
00070c  1f010104  addli r2, r2, 512
000710  9f880431  addli r17, r9, 6272
000714  9f850430  addli r11, r9, 6144
000718  9f808431  addli r1, r9, 6336
00071c  1f080518  addli r16, r10, 3072
000720  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
000724  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
000728  9f858430  addli r11, r9, 6208
00072c  ca940002  vloads_mask16.mz vr9{mr1}, 0(r1)
000730  9f008518  addli r1, r10, 3136
000734  9f088519  addli r17, r10, 3264
000738  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
00073c  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
000740  9f050519  addli r11, r10, 3200
000744  42900802  vload_mask16.mz vr0{mr1}, 0(r17)
000748  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
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
000780  1f08051a  addli r16, r10, 3328
000784  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000788  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00078c  9f00051b  addli r1, r10, 3456
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
0007b8  9f05851a  addli r11, r10, 3392
0007bc  4a950402  vloads_mask16.mz vr10{mr1}, 0(r9)
0007c0  9f04851b  addli r9, r10, 3520
0007c4  1385e104  setlt.u r10, r3, r14
0007c8  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
0007cc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0007d0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0007d4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0007d8  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
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
000804  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000808  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
00080c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000810  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000814  bb3b05fe  bneq r10, zero, -276
000818  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00081c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000820  9f000002  addli r1, zero, 256
000824  1f050000  addli r10, zero, 0
000828  eaf110c0  vsrl.p vr3, r1, vr1
00082c  6af100c0  vsrl.p vr2, r1, vr0
000830  9f000001  addli r1, zero, 128
000834  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000838  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00083c  eaf110c0  vsrl.p vr3, r1, vr1
000840  6af100c0  vsrl.p vr2, r1, vr0
000844  9f008000  addli r1, zero, 64
000848  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00084c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000850  eaf110c0  vsrl.p vr3, r1, vr1
000854  6af100c0  vsrl.p vr2, r1, vr0
000858  9f004000  addli r1, zero, 32
00085c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000860  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000864  eaf110c0  vsrl.p vr3, r1, vr1
000868  6af100c0  vsrl.p vr2, r1, vr0
00086c  abf0ffff  lui r1, 1048575
000870  9b9500f8  ori r11, r1, 3968
000874  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000878  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00087c  fa910040  vextracti.f r3, 0(vr1)
000880  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000884  7a170040  vextracti.f r14, 0(vr0)
000888  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00088c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000890  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000894  0b98a710  add.s r16, r15, r10
000898  8b14aa10  add.s r9, r20, r10
00089c  9f850501  addli r11, r11, 128
0008a0  1f050504  addli r10, r10, 512
0008a4  9f000818  addli r1, r16, 3072
0008a8  9f080819  addli r17, r16, 3200
0008ac  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
0008b0  1f818401  addli r2, r9, 192
0008b4  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0008b8  ca920802  vloads_mask16.mz vr5{mr1}, 0(r17)
0008bc  9f008818  addli r1, r16, 3136
0008c0  9f088819  addli r17, r16, 3264
0008c4  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
0008c8  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0008cc  9f800401  addli r1, r9, 128
0008d0  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
0008d4  9f888400  addli r17, r9, 64
0008d8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0008dc  42950802  vload_mask16.mz vr10{mr1}, 0(r17)
0008e0  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0008e4  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0008e8  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0008ec  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0008f0  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0008f4  9f00081a  addli r1, r16, 3328
0008f8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0008fc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000900  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
000904  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000908  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
00090c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
000910  9f00881a  addli r1, r16, 3392
000914  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
000918  1f810402  addli r2, r9, 256
00091c  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
000920  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000924  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000928  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
00092c  9f00081b  addli r1, r16, 3456
000930  c2130102  vload_mask16.mz vr7{mr1}, 0(r2)
000934  1f08881b  addli r16, r16, 3520
000938  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00093c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000940  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
000944  9f808402  addli r1, r9, 320
000948  4a150802  vloads_mask16.mz vr10{mr1}, 0(r16)
00094c  1f880403  addli r16, r9, 384
000950  9f848403  addli r9, r9, 448
000954  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000958  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00095c  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000960  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000964  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
000968  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00096c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000970  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000974  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000978  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
00097c  9380b505  setlt.u r1, r11, r27
000980  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000984  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000988  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00098c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000990  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000994  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
000998  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
00099c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0009a0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0009a4  bbcb00fe  bneq r1, zero, -272
0009a8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0009ac  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0009b0  9f000002  addli r1, zero, 256
0009b4  e308dfd3  loadli.w r17,  -5656(r30)
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
000a0c  8b641710  add.f.rn r9, r14, r1
000a10  8be12110  add.f.rn r3, r3, r2
000a14  2b650000  lui r10, 6
000a18  ab650000  lui r11, 6
000a1c  9bb02800  slli r1, r17, 2
000a20  1f010000  addli r2, zero, 0
000a24  1f050500  addli r10, r10, 0
000a28  9f850504  addli r11, r11, 512
000a2c  1f070500  addli r14, r10, 0
000a30  1f880500  addli r16, r11, 0
000a34  0b95e010  add.s r10, r1, r14
000a38  8b950011  add.s r11, r1, r16
000a3c  9b904000  ori r1, r1, 4
000a40  73609500  stores.w r9, 0(r10)
000a44  73e03500  stores.w r3, 0(r11)
000a48  8b94e010  add.s r9, r1, r14
000a4c  8b900011  add.s r1, r1, r16
000a50  00a00300  mfence { lm, sm, gm }
000a54  e3010fd7  loadli.w r3,  -5248(r30)
000a58  80a10104  csr_set csr3, r3
000a5c  9b81e807  andi r3, r17, 126
000a60  00d00100  sync_group
000a64  efc40400  loads.w r9, 0(r9)
000a68  efc00000  loads.w r1, 0(r1)
000a6c  9bb12100  slli r3, r3, 2
000a70  0b95e110  add.s r10, r3, r14
000a74  8b910111  add.s r3, r3, r16
000a78  6f450500  loads.w r10, 0(r10)
000a7c  efc10100  loads.w r3, 0(r3)
000a80  8be4a410  add.f.rn r9, r9, r10
000a84  2b05003a  lui r10, 237568
000a88  8be03010  add.f.rn r1, r1, r3
000a8c  8be1a420  mul.f.rn r3, r9, r10
000a90  8be0a020  mul.f.rn r1, r1, r10
000a94  1f050000  addli r10, zero, 0
000a98  8be43120  mul.f.rn r9, r3, r3
000a9c  8be10158  neg.f r3, r3
000aa0  8be09018  sub.f.rn r1, r1, r9
000aa4  e3043f00  loadli.w r9,  24(r30)
000aa8  8be09010  add.f.rn r1, r1, r9
000aac  8f800008  sqrt.f.rn r1, r1
000ab0  8f801618  div.f.rn r1, r13, r1
000ab4  8b142910  add.s r9, r18, r2
000ab8  8b152a10  add.s r11, r20, r2
000abc  0b982910  add.s r16, r19, r2
000ac0  1f878400  addli r14, r9, 64
000ac4  9f888500  addli r17, r11, 64
000ac8  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
000acc  4a910402  vloads_mask16.mz vr2{mr1}, 0(r9)
000ad0  4a120802  vloads_mask16.mz vr4{mr1}, 0(r16)
000ad4  ca110702  vloads_mask16.mz vr3{mr1}, 0(r14)
000ad8  1f078800  addli r14, r16, 64
000adc  c2900802  vload_mask16.mz vr1{mr1}, 0(r17)
000ae0  ca120702  vloads_mask16.mz vr5{mr1}, 0(r14)
000ae4  1f074500  addli r14, r10, 32
000ae8  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000aec  1387e206  setle.u r14, r5, r14
000af0  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000af4  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
000af8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
000afc  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
000b00  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
000b04  46904502  vstore_mask16.mz vr4{mr1}, 0(r11)
000b08  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
000b0c  bb110700  bneq r14, zero, 100
000b10  9f880401  addli r17, r9, 128
000b14  1f870501  addli r14, r11, 128
000b18  9f858501  addli r11, r11, 192
000b1c  9f848401  addli r9, r9, 192
000b20  1f058500  addli r10, r10, 64
000b24  1f010102  addli r2, r2, 256
000b28  4a910802  vloads_mask16.mz vr2{mr1}, 0(r17)
000b2c  9f080801  addli r17, r16, 128
000b30  1f088801  addli r16, r16, 192
000b34  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
000b38  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
000b3c  4a920402  vloads_mask16.mz vr4{mr1}, 0(r9)
000b40  93045504  setlt.u r9, r10, r5
000b44  ca910802  vloads_mask16.mz vr3{mr1}, 0(r17)
000b48  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
000b4c  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000b50  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000b54  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
000b58  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
000b5c  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
000b60  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
000b64  46103702  vstore_mask16.mz vr3{mr1}, 0(r14)
000b68  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
000b6c  3bad04fe  bneq r9, zero, -184
000b70  9f008fd7  addli r1, r30, -5184
000b74  1f018fd7  addli r2, r30, -5184
000b78  9f010000  addli r3, zero, 0
000b7c  00a00000  mfence { lm }
000b80  9f048100  addli r9, r2, 64
000b84  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
000b88  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000b8c  9f814100  addli r3, r3, 32
000b90  1f010101  addli r2, r2, 128
000b94  ea211622  vor.u.mz vr3{mr1}, r12, vr1
000b98  42910402  vload_mask16.mz vr2{mr1}, 0(r9)
000b9c  93845104  setlt.u r9, r3, r5
000ba0  6eb201c2  vsrl.s.mz vr4{mr1}, vr3, vr0
000ba4  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
000ba8  6a324302  vand.s.mz vr4{mr1}, r6, vr4
000bac  ea313302  vand.s.mz vr3{mr1}, r6, vr3
000bb0  16304002  vadd.s.mz vr0{mr1}, vr0, vr4
000bb4  6a221b22  vor.u.mz vr4{mr1}, r22, vr1
000bb8  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
000bbc  ea211e22  vor.u.mz vr3{mr1}, r28, vr1
000bc0  ea201d22  vor.u.mz vr1{mr1}, r26, vr1
000bc4  12b00a02  vadd.s.mz vr0{mr1}, r21, vr0
000bc8  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
000bcc  eeb201c2  vsrl.s.mz vr5{mr1}, vr3, vr0
000bd0  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
000bd4  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
000bd8  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
000bdc  6a325c02  vand.s.mz vr4{mr1}, r24, vr5
000be0  6a300202  vand.s.mz vr0{mr1}, r4, vr0
000be4  ea313c02  vand.s.mz vr3{mr1}, r24, vr3
000be8  6a312202  vand.s.mz vr2{mr1}, r4, vr2
000bec  6ab00622  vor.s.mz vr0{mr1}, r13, vr0
000bf0  6ab24622  vor.s.mz vr4{mr1}, r13, vr4
000bf4  eab13622  vor.s.mz vr3{mr1}, r13, vr3
000bf8  6ab12622  vor.s.mz vr2{mr1}, r13, vr2
000bfc  06100020  vfloat2fp16_l.rz vr0, vr0
000c00  86d10120  vfloat2fp16_h.rz vr3, vr3
000c04  06500120  vfloat2fp16_h.rz vr0, vr2
000c08  86110220  vfloat2fp16_l.rz vr3, vr4
000c0c  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000c10  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
000c14  ea301402  vand.s.mz vr1{mr1}, r8, vr1
000c18  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
000c1c  46800002  vstore.mz vr0{mr1}, 0(r1)
000c20  9f808000  addli r1, r1, 64
000c24  3bfd04fe  bneq r9, zero, -164
000c28  9f058fd6  addli r11, r30, -5312
000c2c  6b510f00  load.d r[3:4], 0(r30)
000c30  6307ffd3  loadli.w r14,  -5640(r30)
000c34  ab0000f0  lui r1, 983040
000c38  ebd40500  load.d r[10:11], 0(r11)
000c3c  00a00000  mfence { lm }
000c40  97101700  or r1, r14, r1
000c44  0b219110  add.ul r[3:4], r[3:4], r[10:11]
000c48  ff304101  s_lm2gm r1, r20, 0(r[3:4])
000c4c  9f000fd5  addli r1, r30, -5504
000c50  00a00200  mfence { lm, gm }
000c54  e3441f00  loadli.w r9,  12(r30)
000c58  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000c5c  e3010fd4  loadli.w r3,  -5632(r30)
000c60  e345ffd3  loadli.w r11,  -5636(r30)
000c64  8b933310  add.s r7, r7, r3
000c68  3fb193fc  blt.s r7, r9, -1972
000c6c  abf00000  lui r1, 15
000c70  9b90f0ff  ori r1, r1, 4095
000c74  80a10004  csr_set csr3, r1
000c78  00d00100  sync_group
000c7c  db500b00  j 23172
000c80  e3403f00  loadli.w r1,  28(r30)
000c84  37f9000a  beq r1, zero, 5724
000c88  e3002f00  loadli.w r1,  16(r30)
000c8c  1f010010  addli r2, zero, 2048
000c90  3be92012  bneq r1, r2, 9816
000c94  00350002  core_id r10
000c98  9f200000  addli r1, zero, 2
000c9c  370c1526  beq r10, r1, 20224
000ca0  9f100000  addli r1, zero, 1
000ca4  b77a1526  beq r10, r1, 20156
000ca8  3b3c0526  bneq r10, zero, 20236
000cac  9f000040  addli r1, zero, 8192
000cb0  2b0100f0  lui r2, 983040
000cb4  97902000  or r1, r1, r2
000cb8  2b110200  lui r2, 33
000cbc  1f010100  addli r2, r2, 0
000cc0  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000cc4  5bde0900  j 20208
000cc8  e3403f00  loadli.w r1,  28(r30)
000ccc  b79a0010  beq r1, zero, 8868
000cd0  80300002  core_id r1
000cd4  1f210000  addli r2, zero, 2
000cd8  b7ea2024  beq r1, r2, 19128
000cdc  1f110000  addli r2, zero, 1
000ce0  37e22022  beq r1, r2, 17560
000ce4  3bab0024  bneq r1, zero, 19144
000ce8  63012f00  loadli.w r2,  16(r30)
000cec  ab0100f0  lui r3, 983040
000cf0  1b311100  slli r2, r2, 1
000cf4  17113100  or r2, r2, r3
000cf8  abd10100  lui r3, 29
000cfc  9f810100  addli r3, r3, 0
000d00  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000d04  5b550900  j 19112
000d08  e3002f00  loadli.w r1,  16(r30)
000d0c  1f010010  addli r2, zero, 2048
000d10  bb9f2006  bneq r1, r2, 4068
000d14  e3403f00  loadli.w r1,  28(r30)
000d18  37cf001a  beq r1, zero, 14288
000d1c  003d0002  core_id r26
000d20  abd70000  lui r15, 13
000d24  00510102  load_param_i r2, 2
000d28  1f150000  addli r10, zero, 1
000d2c  9f058fd7  addli r11, r30, -5184
000d30  1f068000  addli r12, zero, 64
000d34  9f060010  addli r13, zero, 2048
000d38  9b305d00  slli r1, r26, 5
000d3c  9b315100  slli r3, r2, 5
000d40  9f8707f0  addli r15, r15, -2048
000d44  1f870000  addli r14, r1, 0
000d48  33080728  zext_int2long r[17:18], r14
000d4c  2b0900f0  lui r18, 983040
000d50  1738a802  sll.d r[17:18], r[17:18], r10
000d54  17192601  or r18, r12, r18
000d58  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000d5c  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000d60  1b382700  slli r16, r14, 2
000d64  0b97e110  add.s r14, r3, r14
000d68  00a00200  mfence { lm, gm }
000d6c  42800502  vload.mz vr0{mr1}, 0(r11)
000d70  9308d704  setlt.u r17, r14, r13
000d74  0b18f810  add.s r16, r16, r15
000d78  1f098800  addli r18, r16, 64
000d7c  86300000  vfp162float_l.rn vr1, vr0
000d80  06700000  vfp162float_h.rn vr0, vr0
000d84  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000d88  4e100902  vstores_mask16.mz vr0{mr1}, 0(r18)
000d8c  bbfe08fe  bneq r17, zero, -68
000d90  abf20000  lui r5, 15
000d94  1b357d00  slli r10, r26, 7
000d98  1b327100  slli r4, r2, 7
000d9c  1f160000  addli r12, zero, 1
000da0  9f068fd7  addli r13, r30, -5184
000da4  1f078000  addli r14, zero, 64
000da8  1f080010  addli r16, zero, 2048
000dac  9f880000  addli r17, r1, 0
000db0  00a00000  mfence { lm }
000db4  9f8202f0  addli r5, r5, -2048
000db8  8b155510  add.s r11, r10, r5
000dbc  33890828  zext_int2long r[19:20], r17
000dc0  2b0a00f0  lui r20, 983040
000dc4  8b983810  add.s r17, r17, r3
000dc8  1739c902  sll.d r[19:20], r[19:20], r12
000dcc  171a4701  or r20, r14, r20
000dd0  0b292311  add.ul r[19:20], r[7:8], r[19:20]
000dd4  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
000dd8  13890805  setlt.u r18, r17, r16
000ddc  9f898500  addli r19, r11, 64
000de0  00a00200  mfence { lm, gm }
000de4  42800602  vload.mz vr0{mr1}, 0(r13)
000de8  86300000  vfp162float_l.rn vr1, vr0
000dec  06700000  vfp162float_h.rn vr0, vr0
000df0  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
000df4  8b954510  add.s r11, r11, r4
000df8  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
000dfc  3b0f09fe  bneq r18, zero, -64
000e00  ab130100  lui r7, 17
000e04  9f058fd7  addli r11, r30, -5184
000e08  1f068000  addli r12, zero, 64
000e0c  9f060010  addli r13, zero, 2048
000e10  00a00000  mfence { lm }
000e14  9f8303f0  addli r7, r7, -2048
000e18  0b137510  add.s r6, r10, r7
000e1c  1f150000  addli r10, zero, 1
000e20  33880028  zext_int2long r[17:18], r1
000e24  2b0700f0  lui r14, 983040
000e28  8b903010  add.s r1, r1, r3
000e2c  1738a802  sll.d r[17:18], r[17:18], r10
000e30  1717e600  or r14, r12, r14
000e34  0b280411  add.ul r[17:18], r[9:10], r[17:18]
000e38  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000e3c  1387d004  setlt.u r14, r1, r13
000e40  1f088300  addli r16, r6, 64
000e44  00a00200  mfence { lm, gm }
000e48  42800502  vload.mz vr0{mr1}, 0(r11)
000e4c  86300000  vfp162float_l.rn vr1, vr0
000e50  06700000  vfp162float_h.rn vr0, vr0
000e54  4e101302  vstores_mask16.mz vr1{mr1}, 0(r6)
000e58  0b134310  add.s r6, r6, r4
000e5c  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
000e60  3b0f07fe  bneq r14, zero, -64
000e64  abf00000  lui r1, 15
000e68  00a00300  mfence { lm, sm, gm }
000e6c  9b011d00  andi r3, r26, 1
000e70  1f020006  addli r4, zero, 768
000e74  9b90f0ff  ori r1, r1, 4095
000e78  80a10004  csr_set csr3, r1
000e7c  9f000006  addli r1, zero, 768
000e80  00d00100  sync_group
000e84  67083fd6  storeli.w r3, -5248(r30)
000e88  37a00100  beq r3, zero, 8
000e8c  1f02000a  addli r4, zero, 1280
000e90  e3411f00  loadli.w r3,  12(r30)
000e94  63471f00  loadli.w r14,  12(r30)
000e98  1f130000  addli r6, zero, 1
000e9c  bf91612c  blt.s r3, r6, 22628
000ea0  e3010fd7  loadli.w r3,  -5248(r30)
000ea4  1f088fd7  addli r16, r30, -5184
000ea8  1b441100  srli r8, r2, 1
000eac  1f014200  addli r2, r4, 32
000eb0  9b351200  slli r11, r4, 1
000eb4  2b350100  lui r10, 19
000eb8  1f030000  addli r6, zero, 0
000ebc  9b441d00  srli r9, r26, 1
000ec0  1f7a7000  addli r20, zero, 63
000ec4  9f0b0005  addli r23, zero, 640
000ec8  9f0d4000  addli r27, zero, 32
000ecc  1f0b0003  addli r22, zero, 384
000ed0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000ed4  670c2fd4  storeli.w r2, -5440(r30)
000ed8  0b910511  add.s r2, r11, r16
000edc  1f0505f0  addli r10, r10, -2048
000ee0  8b901120  mul.s r1, r3, r1
000ee4  67041fd6  storeli.w r1, -5312(r30)
000ee8  9bb02000  slli r1, r1, 2
000eec  0b965010  add.s r12, r1, r5
000ef0  8b967010  add.s r13, r1, r7
000ef4  9b302200  slli r1, r4, 2
000ef8  ab320100  lui r5, 19
000efc  8b900011  add.s r1, r1, r16
000f00  9f8202f4  addli r5, r5, -1536
000f04  9f8080ff  addli r1, r1, -64
000f08  67081fd4  storeli.w r1, -5504(r30)
000f0c  9f0081ff  addli r1, r2, -64
000f10  1f010fd4  addli r2, r30, -5632
000f14  67041fd4  storeli.w r1, -5568(r30)
000f18  abf0ffff  lui r1, 1048575
000f1c  00a00000  mfence { lm }
000f20  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000f24  9b9000f8  ori r1, r1, 3968
000f28  e74f1fd2  storeli.w r1, -5636(r30)
000f2c  abf00000  lui r1, 15
000f30  1b9ef0ff  ori r28, r1, 4095
000f34  db030000  j 28
000f38  00a00300  mfence { lm, sm, gm }
000f3c  80210e04  csr_set csr3, r28
000f40  00d00100  sync_group
000f44  0b138310  add.s r6, r6, r8
000f48  3f20e300  blt.s r6, r14, 8
000f4c  5ba4ffff  j -736
000f50  8b109310  add.s r1, r6, r9
000f54  cb1f17fe  ble.s r14, r1, -28
000f58  63011f00  loadli.w r2,  8(r30)
000f5c  e3018fd6  loadli.w r3,  -5312(r30)
000f60  8b902010  add.s r1, r1, r2
000f64  0b018330  div.u r2, r6, r8
000f68  9bb0b000  slli r1, r1, 11
000f6c  97903000  or r1, r1, r3
000f70  9f110000  addli r3, zero, 1
000f74  b3980028  sext_int2long r[18:19], r1
000f78  ab0000f0  lui r1, 983040
000f7c  1b316100  slli r2, r2, 6
000f80  97b83802  sll.d r[18:19], r[18:19], r3
000f84  9f017fd6  addli r3, r30, -5320
000f88  97901500  or r1, r11, r1
000f8c  1b010104  andi r2, r2, 64
000f90  6bdc0100  load.d r[25:26], 0(r3)
000f94  1717a101  or r14, r2, r26
000f98  0b2c1c11  add.ul r[25:26], r[25:26], r[18:19]
000f9c  ff200c01  l_gm2lm r1, r16, 0(r[25:26])
000fa0  00a00200  mfence { lm, gm }
000fa4  e3008fd4  loadli.w r1,  -5568(r30)
000fa8  63010fd5  loadli.w r2,  -5504(r30)
000fac  e3018fd5  loadli.w r3,  -5440(r30)
000fb0  c2800002  vload.mz vr1{mr1}, 0(r1)
000fb4  9f81c1ff  addli r3, r3, -32
000fb8  9f0981ff  addli r19, r2, -64
000fbc  9f8080ff  addli r1, r1, -64
000fc0  93033a04  setlt.u r7, r20, r3
000fc4  06f10000  vfp162float_h.rn vr2, vr1
000fc8  86b00000  vfp162float_l.rn vr1, vr1
000fcc  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
000fd0  1f0101ff  addli r2, r2, -128
000fd4  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
000fd8  3bef03fe  bneq r7, zero, -40
000fdc  00a00000  mfence { lm }
000fe0  e3000fd7  loadli.w r1,  -5248(r30)
000fe4  3bc60000  bneq r1, zero, 400
000fe8  9f000fd4  addli r1, r30, -5632
000fec  e341ffd3  loadli.w r3,  -5636(r30)
000ff0  1f010000  addli r2, zero, 0
000ff4  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000ff8  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000ffc  12313002  vadd.s.mz vr2{mr1}, zero, vr3
001000  12323002  vadd.s.mz vr4{mr1}, zero, vr3
001004  8b10f110  add.s r1, r2, r15
001008  8b132810  add.s r7, r16, r2
00100c  9f810101  addli r3, r3, 128
001010  1f010104  addli r2, r2, 512
001014  9f890001  addli r19, r1, 128
001018  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
00101c  9f8a8000  addli r21, r1, 64
001020  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
001024  1f8c8301  addli r24, r7, 192
001028  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
00102c  9f898001  addli r19, r1, 192
001030  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
001034  9f8a8300  addli r21, r7, 64
001038  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
00103c  ca930902  vloads_mask16.mz vr7{mr1}, 0(r19)
001040  9f890301  addli r19, r7, 128
001044  42950a02  vload_mask16.mz vr10{mr1}, 0(r21)
001048  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
00104c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001050  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
001054  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
001058  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00105c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001060  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
001064  46908902  vstore_mask16.mz vr8{mr1}, 0(r19)
001068  9f890002  addli r19, r1, 256
00106c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
001070  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
001074  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
001078  46905a02  vstore_mask16.mz vr5{mr1}, 0(r21)
00107c  4a900902  vloads_mask16.mz vr0{mr1}, 0(r19)
001080  9f898002  addli r19, r1, 320
001084  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
001088  1f8c0302  addli r24, r7, 256
00108c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001090  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
001094  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001098  4a930902  vloads_mask16.mz vr6{mr1}, 0(r19)
00109c  9f890003  addli r19, r1, 384
0010a0  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
0010a4  9f808003  addli r1, r1, 448
0010a8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0010ac  4a940902  vloads_mask16.mz vr8{mr1}, 0(r19)
0010b0  9f898302  addli r19, r7, 320
0010b4  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
0010b8  9f800303  addli r1, r7, 384
0010bc  9f838303  addli r7, r7, 448
0010c0  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
0010c4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0010c8  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0010cc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0010d0  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0010d4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0010d8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0010dc  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
0010e0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0010e4  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
0010e8  93897105  setlt.u r19, r3, r23
0010ec  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0010f0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0010f4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0010f8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0010fc  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001100  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001104  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001108  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00110c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001110  bbdb09fe  bneq r19, zero, -268
001114  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001118  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00111c  9f000002  addli r1, zero, 256
001120  6af100c0  vsrl.p vr2, r1, vr0
001124  eaf110c0  vsrl.p vr3, r1, vr1
001128  9f000001  addli r1, zero, 128
00112c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001130  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001134  6af100c0  vsrl.p vr2, r1, vr0
001138  eaf110c0  vsrl.p vr3, r1, vr1
00113c  9f008000  addli r1, zero, 64
001140  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001144  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001148  6af100c0  vsrl.p vr2, r1, vr0
00114c  eaf110c0  vsrl.p vr3, r1, vr1
001150  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001154  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001158  6af10dc0  vsrl.p vr2, r27, vr0
00115c  eaf11dc0  vsrl.p vr3, r27, vr1
001160  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001164  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001168  fa100040  vextracti.f r1, 0(vr0)
00116c  fa910040  vextracti.f r3, 0(vr1)
001170  db650000  j 812
001174  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001178  abf0ffff  lui r1, 1048575
00117c  1f010000  addli r2, zero, 0
001180  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001184  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001188  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00118c  9b9100f8  ori r3, r1, 3968
001190  8b932710  add.s r7, r15, r2
001194  8b192810  add.s r19, r16, r2
001198  9f810101  addli r3, r3, 128
00119c  1f010104  addli r2, r2, 512
0011a0  1f8c0331  addli r24, r7, 6272
0011a4  9f800330  addli r1, r7, 6144
0011a8  9f8c8331  addli r25, r7, 6336
0011ac  9f8a0918  addli r21, r19, 3072
0011b0  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
0011b4  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
0011b8  9f808330  addli r1, r7, 6208
0011bc  ca940c02  vloads_mask16.mz vr9{mr1}, 0(r25)
0011c0  1f8c0919  addli r24, r19, 3200
0011c4  42930a02  vload_mask16.mz vr6{mr1}, 0(r21)
0011c8  9f8c8919  addli r25, r19, 3264
0011cc  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0011d0  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
0011d4  9f808918  addli r1, r19, 3136
0011d8  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
0011dc  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0011e0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0011e4  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0011e8  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0011ec  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0011f0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0011f4  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0011f8  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
0011fc  9f8a0332  addli r21, r7, 6400
001200  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
001204  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
001208  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00120c  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
001210  1f8c091a  addli r24, r19, 3328
001214  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
001218  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00121c  9f80091b  addli r1, r19, 3456
001220  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
001224  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001228  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
00122c  9f8a8332  addli r21, r7, 6464
001230  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001234  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001238  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
00123c  9f8a0333  addli r21, r7, 6528
001240  9f838333  addli r7, r7, 6592
001244  4a940a02  vloads_mask16.mz vr8{mr1}, 0(r21)
001248  9f8a891a  addli r21, r19, 3392
00124c  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
001250  9f83891b  addli r7, r19, 3520
001254  93896105  setlt.u r19, r3, r22
001258  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
00125c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001260  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001264  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001268  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
00126c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001270  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001274  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
001278  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00127c  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
001280  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001284  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001288  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00128c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001290  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001294  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001298  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
00129c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0012a0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0012a4  bbbb09fe  bneq r19, zero, -276
0012a8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0012ac  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0012b0  9f000002  addli r1, zero, 256
0012b4  9f0a0000  addli r21, zero, 0
0012b8  eaf110c0  vsrl.p vr3, r1, vr1
0012bc  6af100c0  vsrl.p vr2, r1, vr0
0012c0  9f000001  addli r1, zero, 128
0012c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0012c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0012cc  eaf110c0  vsrl.p vr3, r1, vr1
0012d0  6af100c0  vsrl.p vr2, r1, vr0
0012d4  9f008000  addli r1, zero, 64
0012d8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0012dc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0012e0  eaf110c0  vsrl.p vr3, r1, vr1
0012e4  6af100c0  vsrl.p vr2, r1, vr0
0012e8  abf0ffff  lui r1, 1048575
0012ec  9b9900f8  ori r19, r1, 3968
0012f0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0012f4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0012f8  eaf11dc0  vsrl.p vr3, r27, vr1
0012fc  6af10dc0  vsrl.p vr2, r27, vr0
001300  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001304  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001308  fa910040  vextracti.f r3, 0(vr1)
00130c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001310  7a110040  vextracti.f r2, 0(vr0)
001314  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001318  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00131c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001320  8b905711  add.s r1, r15, r21
001324  8b135811  add.s r7, r16, r21
001328  9f890901  addli r19, r19, 128
00132c  9f8a0a04  addli r21, r21, 512
001330  1f8c0018  addli r24, r1, 3072
001334  9f8c0019  addli r25, r1, 3200
001338  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
00133c  1f8d8301  addli r26, r7, 192
001340  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
001344  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
001348  1f8c8018  addli r24, r1, 3136
00134c  9f8c8019  addli r25, r1, 3264
001350  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
001354  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
001358  1f8c0301  addli r24, r7, 128
00135c  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
001360  9f8c8300  addli r25, r7, 64
001364  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
001368  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
00136c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001370  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
001374  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
001378  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00137c  46108c02  vstore_mask16.mz vr8{mr1}, 0(r24)
001380  1f8c001a  addli r24, r1, 3328
001384  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
001388  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00138c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
001390  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
001394  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
001398  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
00139c  1f8c801a  addli r24, r1, 3392
0013a0  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
0013a4  1f8d0302  addli r26, r7, 256
0013a8  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
0013ac  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0013b0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0013b4  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0013b8  1f8c001b  addli r24, r1, 3456
0013bc  c2130d02  vload_mask16.mz vr7{mr1}, 0(r26)
0013c0  9f80801b  addli r1, r1, 3520
0013c4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0013c8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0013cc  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
0013d0  1f8c8302  addli r24, r7, 320
0013d4  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
0013d8  9f800303  addli r1, r7, 384
0013dc  9f838303  addli r7, r7, 448
0013e0  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
0013e4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0013e8  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0013ec  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0013f0  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0013f4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0013f8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0013fc  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
001400  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001404  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
001408  138c7905  setlt.u r24, r19, r23
00140c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001410  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001414  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001418  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00141c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001420  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001424  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001428  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00142c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001430  bb4b0cfe  bneq r24, zero, -272
001434  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001438  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00143c  9f000002  addli r1, zero, 256
001440  003d0002  core_id r26
001444  6af100c0  vsrl.p vr2, r1, vr0
001448  eaf110c0  vsrl.p vr3, r1, vr1
00144c  9f000001  addli r1, zero, 128
001450  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001454  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001458  6af100c0  vsrl.p vr2, r1, vr0
00145c  eaf110c0  vsrl.p vr3, r1, vr1
001460  9f008000  addli r1, zero, 64
001464  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001468  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00146c  6af100c0  vsrl.p vr2, r1, vr0
001470  eaf110c0  vsrl.p vr3, r1, vr1
001474  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001478  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00147c  6af10dc0  vsrl.p vr2, r27, vr0
001480  eaf11dc0  vsrl.p vr3, r27, vr1
001484  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001488  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00148c  fa100040  vextracti.f r1, 0(vr0)
001490  fa930040  vextracti.f r7, 0(vr1)
001494  8b601110  add.f.rn r1, r2, r1
001498  8be17110  add.f.rn r3, r3, r7
00149c  9b332700  slli r7, r14, 2
0014a0  1f010000  addli r2, zero, 0
0014a4  8b99a310  add.s r19, r7, r10
0014a8  8b9a5310  add.s r21, r7, r5
0014ac  73e01900  stores.w r1, 0(r19)
0014b0  9b00e707  andi r1, r14, 126
0014b4  73e03a00  stores.w r3, 0(r21)
0014b8  9b914300  ori r3, r7, 4
0014bc  9f090000  addli r19, zero, 0
0014c0  00a00300  mfence { lm, sm, gm }
0014c4  80210e04  csr_set csr3, r28
0014c8  00d00100  sync_group
0014cc  9bb02000  slli r1, r1, 2
0014d0  8b93a110  add.s r7, r3, r10
0014d4  8b915110  add.s r3, r3, r5
0014d8  0b97a010  add.s r14, r1, r10
0014dc  efc30300  loads.w r7, 0(r7)
0014e0  8b905010  add.s r1, r1, r5
0014e4  efc10100  loads.w r3, 0(r3)
0014e8  6f470700  loads.w r14, 0(r14)
0014ec  efc00000  loads.w r1, 0(r1)
0014f0  8be3e310  add.f.rn r7, r7, r14
0014f4  8be01110  add.f.rn r1, r3, r1
0014f8  ab01003a  lui r3, 237568
0014fc  8be33320  mul.f.rn r7, r7, r3
001500  8be03020  mul.f.rn r1, r1, r3
001504  8be17320  mul.f.rn r3, r7, r7
001508  0be70358  neg.f r14, r7
00150c  8be03018  sub.f.rn r1, r1, r3
001510  e3013f00  loadli.w r3,  24(r30)
001514  8be03010  add.f.rn r1, r1, r3
001518  ab01803f  lui r3, 260096
00151c  8f800008  sqrt.f.rn r1, r1
001520  8f811118  div.f.rn r3, r3, r1
001524  8b102610  add.s r1, r12, r2
001528  8b132810  add.s r7, r16, r2
00152c  8b9a2610  add.s r21, r13, r2
001530  9f8c8000  addli r25, r1, 64
001534  1f8c8300  addli r24, r7, 64
001538  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
00153c  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
001540  4a920a02  vloads_mask16.mz vr4{mr1}, 0(r21)
001544  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
001548  9f8c8a00  addli r25, r21, 64
00154c  c2100c02  vload_mask16.mz vr1{mr1}, 0(r24)
001550  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
001554  9f8c4900  addli r25, r19, 32
001558  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
00155c  930c9207  setle.u r25, r4, r25
001560  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
001564  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
001568  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
00156c  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
001570  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
001574  46904302  vstore_mask16.mz vr4{mr1}, 0(r7)
001578  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
00157c  bb910c00  bneq r25, zero, 100
001580  9f8c0001  addli r25, r1, 128
001584  1f8c0301  addli r24, r7, 128
001588  9f838301  addli r7, r7, 192
00158c  9f808001  addli r1, r1, 192
001590  9f898900  addli r19, r19, 64
001594  1f010102  addli r2, r2, 256
001598  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
00159c  9f8c0a01  addli r25, r21, 128
0015a0  9f8a8a01  addli r21, r21, 192
0015a4  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
0015a8  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
0015ac  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
0015b0  93804904  setlt.u r1, r19, r4
0015b4  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
0015b8  ca920a02  vloads_mask16.mz vr5{mr1}, 0(r21)
0015bc  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
0015c0  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
0015c4  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
0015c8  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
0015cc  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
0015d0  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0015d4  46103c02  vstore_mask16.mz vr3{mr1}, 0(r24)
0015d8  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
0015dc  3bad00fe  bneq r1, zero, -184
0015e0  9f008fd7  addli r1, r30, -5184
0015e4  1f018fd7  addli r2, r30, -5184
0015e8  9f010000  addli r3, zero, 0
0015ec  00a00000  mfence { lm }
0015f0  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0015f4  9f038100  addli r7, r2, 64
0015f8  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
0015fc  9f814100  addli r3, r3, 32
001600  1f010101  addli r2, r2, 128
001604  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
001608  93834104  setlt.u r7, r3, r4
00160c  06110000  vfloat2fp16_l.rn vr2, vr0
001610  06d10000  vfloat2fp16_h.rn vr2, vr1
001614  46802002  vstore.mz vr2{mr1}, 0(r1)
001618  9f808000  addli r1, r1, 64
00161c  3bdf03fe  bneq r7, zero, -44
001620  6b510f00  load.d r[3:4], 0(r30)
001624  ab0000f0  lui r1, 983040
001628  00a00000  mfence { lm }
00162c  97901500  or r1, r11, r1
001630  0b211111  add.ul r[3:4], r[3:4], r[18:19]
001634  ff300101  s_lm2gm r1, r16, 0(r[3:4])
001638  00a00200  mfence { lm, gm }
00163c  63471f00  loadli.w r14,  12(r30)
001640  db20ffff  j -1788
001644  e3403f00  loadli.w r1,  28(r30)
001648  37850014  beq r1, zero, 10560
00164c  003a0002  core_id r20
001650  63012f00  loadli.w r2,  16(r30)
001654  005c0102  load_param_i r24, 2
001658  9b305a00  slli r1, r20, 5
00165c  4b431100  ble.s r2, r1, 208
001660  2b960000  lui r12, 9
001664  9f110000  addli r3, zero, 1
001668  1f058fd7  addli r10, r30, -5184
00166c  9f058000  addli r11, zero, 64
001670  1b315c00  slli r2, r24, 5
001674  9f860000  addli r13, r1, 0
001678  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00167c  1f0606f0  addli r12, r12, -2048
001680  33880628  zext_int2long r[17:18], r13
001684  2b0900f0  lui r18, 983040
001688  17383802  sll.d r[17:18], r[17:18], r3
00168c  17992501  or r18, r11, r18
001690  0b280211  add.ul r[17:18], r[5:6], r[17:18]
001694  7f29a800  l_gm2lm r18, r10, 0(r[17:18])
001698  1bb82600  slli r16, r13, 2
00169c  8b16d110  add.s r13, r2, r13
0016a0  00a00200  mfence { lm, gm }
0016a4  c2000502  vload.mz vr1{mr1}, 0(r10)
0016a8  0b18c810  add.s r16, r16, r12
0016ac  9f088800  addli r17, r16, 64
0016b0  66411080  vmerge_l.hf vr2, vr0, vr1
0016b4  e64010a0  vmerge_h.hf vr1, vr0, vr1
0016b8  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
0016bc  4e901802  vstores_mask16.mz vr1{mr1}, 0(r17)
0016c0  3f8ff6fe  blt.s r13, r15, -64
0016c4  2ba20000  lui r4, 10
0016c8  9b317a00  slli r3, r20, 7
0016cc  9f120000  addli r5, zero, 1
0016d0  1f058fd7  addli r10, r30, -5184
0016d4  9f058000  addli r11, zero, 64
0016d8  1f860000  addli r12, r1, 0
0016dc  00a00000  mfence { lm }
0016e0  1f0202f0  addli r4, r4, -2048
0016e4  8b914110  add.s r3, r3, r4
0016e8  1b327c00  slli r4, r24, 7
0016ec  33080628  zext_int2long r[17:18], r12
0016f0  ab0600f0  lui r13, 983040
0016f4  0b162610  add.s r12, r12, r2
0016f8  17385802  sll.d r[17:18], r[17:18], r5
0016fc  9796d500  or r13, r11, r13
001700  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001704  ff26a800  l_gm2lm r13, r10, 0(r[17:18])
001708  9f868100  addli r13, r3, 64
00170c  00a00200  mfence { lm, gm }
001710  c2000502  vload.mz vr1{mr1}, 0(r10)
001714  66411080  vmerge_l.hf vr2, vr0, vr1
001718  e64010a0  vmerge_h.hf vr1, vr0, vr1
00171c  4e902102  vstores_mask16.mz vr2{mr1}, 0(r3)
001720  8b914110  add.s r3, r3, r4
001724  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
001728  3f1ff6fe  blt.s r12, r15, -60
00172c  63012f00  loadli.w r2,  16(r30)
001730  cb211100  ble.s r2, r1, 104
001734  2bb30000  lui r6, 11
001738  1f110000  addli r2, zero, 1
00173c  9f018fd7  addli r3, r30, -5184
001740  1f028000  addli r4, zero, 64
001744  9b325c00  slli r5, r24, 5
001748  00a00000  mfence { lm }
00174c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001750  1f0303f0  addli r6, r6, -2048
001754  33850028  zext_int2long r[11:12], r1
001758  ab0300f0  lui r7, 983040
00175c  17352502  sll.d r[11:12], r[11:12], r2
001760  97137200  or r7, r4, r7
001764  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001768  ff233500  l_gm2lm r7, r3, 0(r[11:12])
00176c  9bb32000  slli r7, r1, 2
001770  8b901210  add.s r1, r5, r1
001774  00a00200  mfence { lm, gm }
001778  c2800102  vload.mz vr1{mr1}, 0(r3)
00177c  8b936310  add.s r7, r7, r6
001780  1f858300  addli r10, r7, 64
001784  66411080  vmerge_l.hf vr2, vr0, vr1
001788  e64010a0  vmerge_h.hf vr1, vr0, vr1
00178c  4e902302  vstores_mask16.mz vr2{mr1}, 0(r7)
001790  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001794  3f8ff0fe  blt.s r1, r15, -64
001798  abf00000  lui r1, 15
00179c  63411f00  loadli.w r2,  12(r30)
0017a0  00a00300  mfence { lm, sm, gm }
0017a4  9b90f0ff  ori r1, r1, 4095
0017a8  80a10004  csr_set csr3, r1
0017ac  00d00100  sync_group
0017b0  4b4d4127  ble.s r2, r20, 20304
0017b4  e3002f00  loadli.w r1,  16(r30)
0017b8  63412f00  loadli.w r2,  20(r30)
0017bc  1f048fd7  addli r8, r30, -5184
0017c0  9f160000  addli r13, zero, 1
0017c4  1f084000  addli r16, zero, 32
0017c8  9f090002  addli r19, zero, 256
0017cc  9f0a0001  addli r21, zero, 128
0017d0  1f0b8000  addli r22, zero, 64
0017d4  ab0b803f  lui r23, 260096
0017d8  2bee7f00  lui r28, 2046
0017dc  abe40700  lui r9, 126
0017e0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0017e4  33820008  fix2float.rn r4, r1
0017e8  8b912010  add.s r3, r1, r2
0017ec  9bb31000  slli r7, r1, 1
0017f0  1b362100  slli r12, r2, 2
0017f4  e74f4fd2  storeli.w r4, -5636(r30)
0017f8  1bb22000  slli r4, r1, 2
0017fc  9f804000  addli r1, r1, 32
001800  9ff1f1ff  addli r3, r3, -1
001804  e70f1fd2  storeli.w r1, -5640(r30)
001808  8b108210  add.s r1, r4, r8
00180c  0b932130  div.s r6, r3, r2
001810  8b918310  add.s r3, r7, r8
001814  1f717000  addli r2, zero, 63
001818  9f8080ff  addli r1, r1, -64
00181c  674f1fd2  storeli.w r1, -5644(r30)
001820  9f8081ff  addli r1, r3, -64
001824  670f1fd2  storeli.w r1, -5648(r30)
001828  abf0ffff  lui r1, 1048575
00182c  00a00000  mfence { lm }
001830  67048fd5  storeli.w r24, -5568(r30)
001834  67007fd4  storeli.w r7, -5632(r30)
001838  9b90f0ff  ori r1, r1, 4095
00183c  67041fd6  storeli.w r1, -5312(r30)
001840  ab700000  lui r1, 7
001844  1b9df0ff  ori r26, r1, 4095
001848  ab00ff03  lui r1, 16368
00184c  9b95f03f  ori r11, r1, 1023
001850  abf000fc  lui r1, 1032207
001854  9b9100c0  ori r3, r1, 3072
001858  9f000fd7  addli r1, r30, -5248
00185c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001860  db080000  j 68
001864  9f030fd5  addli r7, r30, -5504
001868  6b520f00  load.d r[5:6], 0(r30)
00186c  ab0000f0  lui r1, 983040
001870  ebd80300  load.d r[18:19], 0(r7)
001874  e3030fd4  loadli.w r7,  -5632(r30)
001878  00a00000  mfence { lm }
00187c  630a8fd5  loadli.w r20,  -5440(r30)
001880  630c8fd4  loadli.w r24,  -5568(r30)
001884  0b221211  add.ul r[5:6], r[5:6], r[18:19]
001888  97901300  or r1, r7, r1
00188c  0b1a4c11  add.s r20, r24, r20
001890  ff308200  s_lm2gm r1, r8, 0(r[5:6])
001894  00a00200  mfence { lm, gm }
001898  e3401f00  loadli.w r1,  12(r30)
00189c  3f201a00  blt.s r20, r1, 8
0018a0  5bcc0900  j 20064
0018a4  e3001f00  loadli.w r1,  8(r30)
0018a8  1f057fd6  addli r10, r30, -5320
0018ac  8b101a10  add.s r1, r20, r1
0018b0  8b90f020  mul.s r1, r1, r15
0018b4  33920028  sext_int2long r[5:6], r1
0018b8  ab0000f0  lui r1, 983040
0018bc  9738d202  sll.d r[18:19], r[5:6], r13
0018c0  6b520500  load.d r[5:6], 0(r10)
0018c4  97901300  or r1, r7, r1
0018c8  1f050fd5  addli r10, r30, -5504
0018cc  73301501  store.d r[18:19], 0(r10)
0018d0  0b221211  add.ul r[5:6], r[5:6], r[18:19]
0018d4  ff208200  l_gm2lm r1, r8, 0(r[5:6])
0018d8  00a00200  mfence { lm, gm }
0018dc  bff00701  blt.s r15, r16, 60
0018e0  e300efd3  loadli.w r1,  -5648(r30)
0018e4  6342efd3  loadli.w r4,  -5644(r30)
0018e8  e302ffd3  loadli.w r5,  -5640(r30)
0018ec  c2800002  vload.mz vr1{mr1}, 0(r1)
0018f0  9f82c2ff  addli r5, r5, -32
0018f4  9f0882ff  addli r17, r4, -64
0018f8  9f8080ff  addli r1, r1, -64
0018fc  93035104  setlt.u r7, r2, r5
001900  664110a0  vmerge_h.hf vr2, vr0, vr1
001904  e6401080  vmerge_l.hf vr1, vr0, vr1
001908  46102202  vstore_mask16.mz vr2{mr1}, 0(r4)
00190c  1f0202ff  addli r4, r4, -128
001910  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
001914  3bef03fe  bneq r7, zero, -40
001918  00a00000  mfence { lm }
00191c  670c4fd5  storeli.w r20, -5440(r30)
001920  bf57d300  blt.s r6, r13, 500
001924  9f020000  addli r5, zero, 0
001928  1f020000  addli r4, zero, 0
00192c  9f030000  addli r7, zero, 0
001930  db0d0000  j 108
001934  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001938  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00193c  9f930300  addli r7, r7, 1
001940  6af109c0  vsrl.p vr2, r19, vr0
001944  eaf119c0  vsrl.p vr3, r19, vr1
001948  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00194c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001950  6af10ac0  vsrl.p vr2, r21, vr0
001954  eaf11ac0  vsrl.p vr3, r21, vr1
001958  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00195c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001960  6a710bc0  vsrl.p vr2, r22, vr0
001964  ea711bc0  vsrl.p vr3, r22, vr1
001968  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00196c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001970  6a7108c0  vsrl.p vr2, r16, vr0
001974  ea7118c0  vsrl.p vr3, r16, vr1
001978  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00197c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001980  fa100040  vextracti.f r1, 0(vr0)
001984  7a910040  vextracti.f r2, 0(vr1)
001988  8be21210  add.f.rn r5, r5, r1
00198c  9f000fd7  addli r1, r30, -5248
001990  0b622210  add.f.rn r4, r4, r2
001994  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001998  37966300  beq r7, r6, 388
00199c  9f880300  addli r17, r7, 0
0019a0  37403701  beq r14, r19, 16
0019a4  e3008fd6  loadli.w r1,  -5312(r30)
0019a8  97a01300  xor r1, r7, r1
0019ac  8b181310  add.s r17, r6, r1
0019b0  8b90e820  mul.s r1, r17, r14
0019b4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0019b8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0019bc  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0019c0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0019c4  8b901718  sub.s r1, r15, r1
0019c8  8b90e040  min.s r1, r1, r14
0019cc  bfadd0fe  blt.s r1, r13, -152
0019d0  1f010fd7  addli r2, r30, -5248
0019d4  2b9c0000  lui r24, 9
0019d8  1f0a0000  addli r20, zero, 0
0019dc  8b181621  mul.s r17, r12, r17
0019e0  1f098fd7  addli r18, r30, -5184
0019e4  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0019e8  1f0c0cf0  addli r24, r24, -2048
0019ec  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0019f0  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0019f4  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0019f8  8b1d1c11  add.s r27, r24, r17
0019fc  8b1c1911  add.s r25, r18, r17
001a00  1f848d00  addli r8, r27, 64
001a04  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
001a08  1f858d01  addli r10, r27, 192
001a0c  c2940c02  vload_mask16.mz vr9{mr1}, 0(r25)
001a10  1f818c01  addli r2, r25, 192
001a14  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
001a18  1f840d01  addli r8, r27, 128
001a1c  4a140502  vloads_mask16.mz vr8{mr1}, 0(r10)
001a20  1f850c01  addli r10, r25, 128
001a24  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
001a28  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
001a2c  c2150502  vload_mask16.mz vr11{mr1}, 0(r10)
001a30  1f848c00  addli r8, r25, 64
001a34  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
001a38  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001a3c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001a40  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001a44  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001a48  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001a4c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001a50  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
001a54  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
001a58  1f048a00  addli r8, r20, 64
001a5c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001a60  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001a64  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001a68  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001a6c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001a70  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
001a74  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001a78  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001a7c  cbea80fe  ble.s r1, r8, -328
001a80  1f840d02  addli r8, r27, 256
001a84  1f858d02  addli r10, r27, 320
001a88  1f810c02  addli r2, r25, 256
001a8c  1f0a0a01  addli r20, r20, 128
001a90  1f0c0c04  addli r24, r24, 512
001a94  1f090904  addli r18, r18, 512
001a98  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
001a9c  1f840d03  addli r8, r27, 384
001aa0  ca120502  vloads_mask16.mz vr5{mr1}, 0(r10)
001aa4  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
001aa8  1f858c02  addli r10, r25, 320
001aac  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
001ab0  1f848d03  addli r8, r27, 448
001ab4  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
001ab8  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
001abc  1f840c03  addli r8, r25, 384
001ac0  9f8c8c03  addli r25, r25, 448
001ac4  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
001ac8  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
001acc  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
001ad0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001ad4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001ad8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001adc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001ae0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001ae4  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
001ae8  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
001aec  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001af0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001af4  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
001af8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001afc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001b00  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001b04  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001b08  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
001b0c  bf3b1afe  blt.s r20, r1, -276
001b10  dbc4ffff  j -476
001b14  1f020000  addli r4, zero, 0
001b18  9f020000  addli r5, zero, 0
001b1c  2ba50000  lui r10, 10
001b20  abbd0000  lui r27, 11
001b24  1f048fd7  addli r8, r30, -5184
001b28  00a00000  mfence { lm }
001b2c  1f0505f0  addli r10, r10, -2048
001b30  9f8d0df0  addli r27, r27, -2048
001b34  bfc3d700  blt.s r15, r13, 240
001b38  6341ffd3  loadli.w r2,  -5636(r30)
001b3c  9f000000  addli r1, zero, 0
001b40  8f822218  div.f.rn r5, r5, r2
001b44  0f022218  div.f.rn r4, r4, r2
001b48  63013f00  loadli.w r2,  24(r30)
001b4c  8be35220  mul.f.rn r7, r5, r5
001b50  8be20258  neg.f r5, r5
001b54  0b627218  sub.f.rn r4, r4, r7
001b58  9f030000  addli r7, zero, 0
001b5c  0b622210  add.f.rn r4, r4, r2
001b60  0f020208  sqrt.f.rn r4, r4
001b64  0f824b18  div.f.rn r4, r23, r4
001b68  0b99a010  add.s r18, r1, r10
001b6c  8b181410  add.s r17, r8, r1
001b70  1f0a8900  addli r20, r18, 64
001b74  4a110902  vloads_mask16.mz vr2{mr1}, 0(r18)
001b78  0b99b011  add.s r18, r1, r27
001b7c  c2900802  vload_mask16.mz vr1{mr1}, 0(r17)
001b80  ca110a02  vloads_mask16.mz vr3{mr1}, 0(r20)
001b84  1f8a8800  addli r20, r17, 64
001b88  4a120902  vloads_mask16.mz vr4{mr1}, 0(r18)
001b8c  1f098900  addli r18, r18, 64
001b90  c2120a02  vload_mask16.mz vr5{mr1}, 0(r20)
001b94  4a130902  vloads_mask16.mz vr6{mr1}, 0(r18)
001b98  1f894300  addli r18, r7, 32
001b9c  92901202  vadd.f.mz.rn vr1{mr1}, r5, vr1
001ba0  92925202  vadd.f.mz.rn vr5{mr1}, r5, vr5
001ba4  8a101202  vmul.f.mz.rn vr1{mr1}, r4, vr1
001ba8  8a125202  vmul.f.mz.rn vr5{mr1}, r4, vr5
001bac  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
001bb0  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
001bb4  46904802  vstore_mask16.mz vr4{mr1}, 0(r17)
001bb8  46106a02  vstore_mask16.mz vr6{mr1}, 0(r20)
001bbc  cba12701  ble.s r15, r18, 104
001bc0  0b191510  add.s r18, r10, r1
001bc4  0b9a1d10  add.s r20, r27, r1
001bc8  9f838300  addli r7, r7, 64
001bcc  9f800002  addli r1, r1, 256
001bd0  1f0c0901  addli r24, r18, 128
001bd4  9f0c0a01  addli r25, r20, 128
001bd8  1f098901  addli r18, r18, 192
001bdc  1f0a8a01  addli r20, r20, 192
001be0  ca100c02  vloads_mask16.mz vr1{mr1}, 0(r24)
001be4  1f8c0801  addli r24, r17, 128
001be8  9f888801  addli r17, r17, 192
001bec  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
001bf0  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
001bf4  4a130a02  vloads_mask16.mz vr6{mr1}, 0(r20)
001bf8  c2110c02  vload_mask16.mz vr3{mr1}, 0(r24)
001bfc  42920802  vload_mask16.mz vr4{mr1}, 0(r17)
001c00  92913202  vadd.f.mz.rn vr3{mr1}, r5, vr3
001c04  12924202  vadd.f.mz.rn vr4{mr1}, r5, vr4
001c08  8a113202  vmul.f.mz.rn vr3{mr1}, r4, vr3
001c0c  0a124202  vmul.f.mz.rn vr4{mr1}, r4, vr4
001c10  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
001c14  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
001c18  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
001c1c  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
001c20  3fadf3fe  blt.s r7, r15, -184
001c24  1f717000  addli r2, zero, 63
001c28  1f052000  addli r10, zero, 16
001c2c  9f380000  addli r17, zero, 3
001c30  1f591000  addli r18, zero, 13
001c34  1f2a1000  addli r20, zero, 10
001c38  00a00000  mfence { lm }
001c3c  bfa0d7fe  blt.s r15, r13, -984
001c40  9f008fd7  addli r1, r30, -5184
001c44  1f028fd7  addli r4, r30, -5184
001c48  9f020000  addli r5, zero, 0
001c4c  9f038200  addli r7, r4, 64
001c50  42110202  vload_mask16.mz vr2{mr1}, 0(r4)
001c54  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001c58  9f824200  addli r5, r5, 32
001c5c  1f020201  addli r4, r4, 128
001c60  6a221522  vor.u.mz vr4{mr1}, r10, vr1
001c64  c2910302  vload_mask16.mz vr3{mr1}, 0(r7)
001c68  ee3222c2  vsrl.s.mz vr5{mr1}, vr4, vr2
001c6c  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
001c70  eab25602  vand.s.mz vr5{mr1}, r13, vr5
001c74  6ab24602  vand.s.mz vr4{mr1}, r13, vr4
001c78  16315102  vadd.s.mz vr2{mr1}, vr2, vr5
001c7c  eaa21822  vor.u.mz vr5{mr1}, r17, vr1
001c80  96b14102  vadd.s.mz vr3{mr1}, vr3, vr4
001c84  6a221922  vor.u.mz vr4{mr1}, r18, vr1
001c88  ea201a22  vor.u.mz vr1{mr1}, r20, vr1
001c8c  12312d02  vadd.s.mz vr2{mr1}, r26, vr2
001c90  92313d02  vadd.s.mz vr3{mr1}, r26, vr3
001c94  6e3322c2  vsrl.s.mz vr6{mr1}, vr4, vr2
001c98  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
001c9c  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
001ca0  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
001ca4  eab26402  vand.s.mz vr5{mr1}, r9, vr6
001ca8  6a312e02  vand.s.mz vr2{mr1}, r28, vr2
001cac  6ab24402  vand.s.mz vr4{mr1}, r9, vr4
001cb0  ea313e02  vand.s.mz vr3{mr1}, r28, vr3
001cb4  6ab12b22  vor.s.mz vr2{mr1}, r23, vr2
001cb8  eab25b22  vor.s.mz vr5{mr1}, r23, vr5
001cbc  6ab24b22  vor.s.mz vr4{mr1}, r23, vr4
001cc0  eab13b22  vor.s.mz vr3{mr1}, r23, vr3
001cc4  06110120  vfloat2fp16_l.rz vr2, vr2
001cc8  06520220  vfloat2fp16_h.rz vr4, vr4
001ccc  06d10120  vfloat2fp16_h.rz vr2, vr3
001cd0  06920220  vfloat2fp16_l.rz vr4, vr5
001cd4  6ab12502  vand.s.mz vr2{mr1}, r11, vr2
001cd8  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
001cdc  eab01102  vand.s.mz vr1{mr1}, r3, vr1
001ce0  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
001ce4  46801002  vstore.mz vr1{mr1}, 0(r1)
001ce8  9f808000  addli r1, r1, 64
001cec  bf8df2fe  blt.s r5, r15, -160
001cf0  db6effff  j -1164
001cf4  e3403f00  loadli.w r1,  28(r30)
001cf8  37df0016  beq r1, zero, 12244
001cfc  80300002  core_id r1
001d00  e3012f00  loadli.w r3,  16(r30)
001d04  1bb15000  slli r2, r1, 5
001d08  4bc32100  ble.s r3, r2, 208
001d0c  2b580100  lui r16, 21
001d10  00550102  load_param_i r10, 2
001d14  9f150000  addli r11, zero, 1
001d18  1f068fd7  addli r12, r30, -5184
001d1c  9f068000  addli r13, zero, 64
001d20  9f080100  addli r17, r2, 0
001d24  9b315500  slli r3, r10, 5
001d28  1f080800  addli r16, r16, 0
001d2c  33890828  zext_int2long r[19:20], r17
001d30  2b0a00f0  lui r20, 983040
001d34  1739b902  sll.d r[19:20], r[19:20], r11
001d38  179a4601  or r20, r13, r20
001d3c  0b292211  add.ul r[19:20], r[5:6], r[19:20]
001d40  7f2ac900  l_gm2lm r20, r12, 0(r[19:20])
001d44  1bb92800  slli r18, r17, 2
001d48  8b981111  add.s r17, r3, r17
001d4c  00a00200  mfence { lm, gm }
001d50  42000602  vload.mz vr0{mr1}, 0(r12)
001d54  0b190911  add.s r18, r18, r16
001d58  9f098900  addli r19, r18, 64
001d5c  86300000  vfp162float_l.rn vr1, vr0
001d60  06700000  vfp162float_h.rn vr0, vr0
001d64  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
001d68  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
001d6c  3f8ff8fe  blt.s r17, r15, -64
001d70  ab620100  lui r5, 22
001d74  1bb27000  slli r4, r1, 7
001d78  9f058fd7  addli r11, r30, -5184
001d7c  1f068000  addli r12, zero, 64
001d80  9f060100  addli r13, r2, 0
001d84  00a00000  mfence { lm }
001d88  9f820200  addli r5, r5, 0
001d8c  0b125210  add.s r4, r4, r5
001d90  9b327500  slli r5, r10, 7
001d94  1f150000  addli r10, zero, 1
001d98  33880628  zext_int2long r[17:18], r13
001d9c  2b0900f0  lui r18, 983040
001da0  8b963610  add.s r13, r13, r3
001da4  1738a802  sll.d r[17:18], r[17:18], r10
001da8  17192601  or r18, r12, r18
001dac  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001db0  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
001db4  1f088200  addli r16, r4, 64
001db8  00a00200  mfence { lm, gm }
001dbc  42800502  vload.mz vr0{mr1}, 0(r11)
001dc0  86300000  vfp162float_l.rn vr1, vr0
001dc4  06700000  vfp162float_h.rn vr0, vr0
001dc8  4e101202  vstores_mask16.mz vr1{mr1}, 0(r4)
001dcc  0b125210  add.s r4, r4, r5
001dd0  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
001dd4  3f9ff6fe  blt.s r13, r15, -60
001dd8  e3012f00  loadli.w r3,  16(r30)
001ddc  cba12100  ble.s r3, r2, 104
001de0  00530102  load_param_i r6, 2
001de4  ab730100  lui r7, 23
001de8  9f110000  addli r3, zero, 1
001dec  1f028fd7  addli r4, r30, -5184
001df0  9f028000  addli r5, zero, 64
001df4  00a00000  mfence { lm }
001df8  1b335300  slli r6, r6, 5
001dfc  9f830300  addli r7, r7, 0
001e00  33050128  zext_int2long r[11:12], r2
001e04  2b0600f0  lui r12, 983040
001e08  17353502  sll.d r[11:12], r[11:12], r3
001e0c  1796c200  or r12, r5, r12
001e10  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001e14  7f264500  l_gm2lm r12, r4, 0(r[11:12])
001e18  1b352100  slli r10, r2, 2
001e1c  0b112310  add.s r2, r6, r2
001e20  00a00200  mfence { lm, gm }
001e24  42000202  vload.mz vr0{mr1}, 0(r4)
001e28  0b157510  add.s r10, r10, r7
001e2c  9f058500  addli r11, r10, 64
001e30  86300000  vfp162float_l.rn vr1, vr0
001e34  06700000  vfp162float_h.rn vr0, vr0
001e38  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001e3c  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
001e40  3f0ff1fe  blt.s r2, r15, -64
001e44  2bf10000  lui r2, 15
001e48  e3411f00  loadli.w r3,  12(r30)
001e4c  00a00300  mfence { lm, sm, gm }
001e50  1b11f1ff  ori r2, r2, 4095
001e54  80210104  csr_set csr3, r2
001e58  00d00100  sync_group
001e5c  cb921124  ble.s r3, r1, 18596
001e60  63012f00  loadli.w r2,  16(r30)
001e64  e3412f00  loadli.w r3,  20(r30)
001e68  9f0b8fd7  addli r23, r30, -5184
001e6c  2b540100  lui r8, 21
001e70  ab6a0100  lui r21, 22
001e74  2b7b0100  lui r22, 23
001e78  1f150000  addli r10, zero, 1
001e7c  9f054000  addli r11, zero, 32
001e80  1f767000  addli r12, zero, 63
001e84  1f080002  addli r16, zero, 256
001e88  1f090001  addli r18, zero, 128
001e8c  9f098000  addli r19, zero, 64
001e90  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001e94  1f040400  addli r8, r8, 0
001e98  9f8a0a00  addli r21, r21, 0
001e9c  1f0b0b00  addli r22, r22, 0
001ea0  0b123110  add.s r4, r2, r3
001ea4  b3020108  fix2float.rn r5, r2
001ea8  9b381100  slli r17, r2, 1
001eac  1b332100  slli r6, r2, 2
001eb0  1f014100  addli r2, r2, 32
001eb4  9bb42100  slli r9, r3, 2
001eb8  67042fd4  storeli.w r2, -5568(r30)
001ebc  0b117311  add.s r2, r6, r23
001ec0  1f72f2ff  addli r4, r4, -1
001ec4  0b937811  add.s r6, r17, r23
001ec8  67085fd4  storeli.w r5, -5504(r30)
001ecc  1f0181ff  addli r2, r2, -64
001ed0  0b123230  div.s r4, r4, r3
001ed4  67002fd4  storeli.w r2, -5632(r30)
001ed8  1f0183ff  addli r2, r6, -64
001edc  e74f2fd2  storeli.w r2, -5636(r30)
001ee0  2bf1ffff  lui r2, 1048575
001ee4  00a00000  mfence { lm }
001ee8  670c1fd5  storeli.w r17, -5440(r30)
001eec  9b16f1ff  ori r13, r2, 4095
001ef0  1f010fd7  addli r2, r30, -5248
001ef4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001ef8  5b080000  j 64
001efc  9f038fd6  addli r7, r30, -5312
001f00  6b510f00  load.d r[3:4], 0(r30)
001f04  ebd20300  load.d r[6:7], 0(r7)
001f08  00a00000  mfence { lm }
001f0c  80530102  load_param_i r7, 2
001f10  e3088fd5  loadli.w r17,  -5440(r30)
001f14  8b901310  add.s r1, r7, r1
001f18  0b215110  add.ul r[3:4], r[3:4], r[6:7]
001f1c  2b0300f0  lui r6, 983040
001f20  17936800  or r6, r17, r6
001f24  7f337101  s_lm2gm r6, r23, 0(r[3:4])
001f28  00a00200  mfence { lm, gm }
001f2c  63411f00  loadli.w r2,  12(r30)
001f30  3fa02000  blt.s r1, r2, 8
001f34  dbf90800  j 18380
001f38  63011f00  loadli.w r2,  8(r30)
001f3c  0b912010  add.s r2, r1, r2
001f40  0b11f120  mul.s r2, r2, r15
001f44  33110128  sext_int2long r[3:4], r2
001f48  173ca102  sll.d r[25:26], r[3:4], r10
001f4c  9f017fd6  addli r3, r30, -5320
001f50  2b0100f0  lui r2, 983040
001f54  ebd20100  load.d r[6:7], 0(r3)
001f58  17912800  or r2, r17, r2
001f5c  9f018fd6  addli r3, r30, -5312
001f60  73b08101  store.d r[25:26], 0(r3)
001f64  0ba38211  add.ul r[7:8], r[6:7], r[25:26]
001f68  7f217301  l_gm2lm r2, r23, 0(r[7:8])
001f6c  00a00200  mfence { lm, gm }
001f70  bff0b700  blt.s r15, r11, 60
001f74  6341ffd3  loadli.w r2,  -5636(r30)
001f78  e3010fd4  loadli.w r3,  -5632(r30)
001f7c  63038fd4  loadli.w r6,  -5568(r30)
001f80  c2000102  vload.mz vr1{mr1}, 0(r2)
001f84  1f03c3ff  addli r6, r6, -32
001f88  9f8881ff  addli r17, r3, -64
001f8c  1f0181ff  addli r2, r2, -64
001f90  93036604  setlt.u r7, r12, r6
001f94  06f10000  vfp162float_h.rn vr2, vr1
001f98  86b00000  vfp162float_l.rn vr1, vr1
001f9c  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
001fa0  9f8101ff  addli r3, r3, -128
001fa4  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
001fa8  3bef03fe  bneq r7, zero, -40
001fac  00a00000  mfence { lm }
001fb0  bf27a200  blt.s r4, r10, 488
001fb4  1f0d0000  addli r26, zero, 0
001fb8  9f0c0000  addli r25, zero, 0
001fbc  9f0d0000  addli r27, zero, 0
001fc0  db0c0000  j 100
001fc4  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001fc8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001fcc  9f9d0d00  addli r27, r27, 1
001fd0  6a7108c0  vsrl.p vr2, r16, vr0
001fd4  ea7118c0  vsrl.p vr3, r16, vr1
001fd8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001fdc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001fe0  6a7109c0  vsrl.p vr2, r18, vr0
001fe4  ea7119c0  vsrl.p vr3, r18, vr1
001fe8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001fec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001ff0  6af109c0  vsrl.p vr2, r19, vr0
001ff4  eaf119c0  vsrl.p vr3, r19, vr1
001ff8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001ffc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002000  6af105c0  vsrl.p vr2, r11, vr0
002004  eaf115c0  vsrl.p vr3, r11, vr1
002008  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00200c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002010  7a110040  vextracti.f r2, 0(vr0)
002014  fa910040  vextracti.f r3, 0(vr1)
002018  0b6d2d10  add.f.rn r26, r26, r2
00201c  8bec3c10  add.f.rn r25, r25, r3
002020  37864d00  beq r27, r4, 384
002024  1f810d00  addli r2, r27, 0
002028  37300701  beq r14, r16, 12
00202c  17a1dd00  xor r2, r27, r13
002030  0b112210  add.s r2, r4, r2
002034  8b11e120  mul.s r3, r2, r14
002038  8b913718  sub.s r3, r15, r3
00203c  0b9ee140  min.s r28, r3, r14
002040  9f010fd7  addli r3, r30, -5248
002044  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002048  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00204c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002050  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002054  bf4daefe  blt.s r28, r10, -144
002058  0b932420  mul.s r6, r9, r2
00205c  1f010fd7  addli r2, r30, -5248
002060  1f0a0000  addli r20, zero, 0
002064  9f038fd7  addli r7, r30, -5184
002068  9f080400  addli r17, r8, 0
00206c  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
002070  92304002  vadd.s.mz vr1{mr1}, zero, vr4
002074  12314002  vadd.s.mz vr2{mr1}, zero, vr4
002078  92314002  vadd.s.mz vr3{mr1}, zero, vr4
00207c  0b916810  add.s r2, r17, r6
002080  8b916310  add.s r3, r7, r6
002084  9f0b8100  addli r23, r2, 64
002088  ca120102  vloads_mask16.mz vr5{mr1}, 0(r2)
00208c  1f0c8101  addli r24, r2, 192
002090  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
002094  9f828101  addli r5, r3, 192
002098  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
00209c  9f0b0101  addli r23, r2, 128
0020a0  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
0020a4  1f8c0101  addli r24, r3, 128
0020a8  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0020ac  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
0020b0  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
0020b4  9f8b8100  addli r23, r3, 64
0020b8  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
0020bc  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0020c0  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0020c4  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0020c8  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0020cc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0020d0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0020d4  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
0020d8  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
0020dc  9f0b8a00  addli r23, r20, 64
0020e0  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
0020e4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0020e8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0020ec  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0020f0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0020f4  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
0020f8  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
0020fc  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
002100  4b1b7eff  ble.s r28, r23, -316
002104  9f0b0102  addli r23, r2, 256
002108  1f0c8102  addli r24, r2, 320
00210c  9f820102  addli r5, r3, 256
002110  1f0a0a01  addli r20, r20, 128
002114  9f880804  addli r17, r17, 512
002118  9f830304  addli r7, r7, 512
00211c  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
002120  9f0b0103  addli r23, r2, 384
002124  1f018103  addli r2, r2, 448
002128  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
00212c  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
002130  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
002134  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
002138  1f810103  addli r2, r3, 384
00213c  9f8b8102  addli r23, r3, 320
002140  9f818103  addli r3, r3, 448
002144  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
002148  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
00214c  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
002150  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
002154  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
002158  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
00215c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002160  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002164  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
002168  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
00216c  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
002170  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
002174  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002178  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
00217c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002180  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002184  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
002188  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00218c  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
002190  bf3bcaff  blt.s r20, r28, -276
002194  5bc6ffff  j -464
002198  9f0c0000  addli r25, zero, 0
00219c  1f0d0000  addli r26, zero, 0
0021a0  9f0b8fd7  addli r23, r30, -5184
0021a4  00a00000  mfence { lm }
0021a8  bfd3a700  blt.s r15, r10, 244
0021ac  e3010fd5  loadli.w r3,  -5504(r30)
0021b0  e3023f00  loadli.w r5,  24(r30)
0021b4  1f030000  addli r6, zero, 0
0021b8  1f0a0000  addli r20, zero, 0
0021bc  0f013d18  div.f.rn r2, r26, r3
0021c0  8f813c18  div.f.rn r3, r25, r3
0021c4  8b632120  mul.f.rn r7, r2, r2
0021c8  8b680158  neg.f r17, r2
0021cc  8be17118  sub.f.rn r3, r3, r7
0021d0  8be15110  add.f.rn r3, r3, r5
0021d4  ab02803f  lui r5, 260096
0021d8  8f810108  sqrt.f.rn r3, r3
0021dc  8f833218  div.f.rn r7, r5, r3
0021e0  8b115311  add.s r3, r6, r21
0021e4  0b916b10  add.s r2, r23, r6
0021e8  9f8c8100  addli r25, r3, 64
0021ec  4a910102  vloads_mask16.mz vr2{mr1}, 0(r3)
0021f0  8b116311  add.s r3, r6, r22
0021f4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0021f8  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
0021fc  9f0c8100  addli r25, r2, 64
002200  4a920102  vloads_mask16.mz vr4{mr1}, 0(r3)
002204  9f818100  addli r3, r3, 64
002208  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
00220c  4a930102  vloads_mask16.mz vr6{mr1}, 0(r3)
002210  9f014a00  addli r3, r20, 32
002214  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
002218  92925802  vadd.f.mz.rn vr5{mr1}, r17, vr5
00221c  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
002220  8a925302  vmul.f.mz.rn vr5{mr1}, r7, vr5
002224  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
002228  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
00222c  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
002230  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
002234  cba13700  ble.s r15, r3, 104
002238  8b916a10  add.s r3, r21, r6
00223c  8b1c6b10  add.s r25, r22, r6
002240  1f0a8a00  addli r20, r20, 64
002244  1f030302  addli r6, r6, 256
002248  1f8d0101  addli r26, r3, 128
00224c  9f8d0c01  addli r27, r25, 128
002250  9f818101  addli r3, r3, 192
002254  9f8c8c01  addli r25, r25, 192
002258  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
00225c  1f0d0101  addli r26, r2, 128
002260  1f018101  addli r2, r2, 192
002264  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
002268  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
00226c  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
002270  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
002274  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
002278  92913802  vadd.f.mz.rn vr3{mr1}, r17, vr3
00227c  12924802  vadd.f.mz.rn vr4{mr1}, r17, vr4
002280  8a913302  vmul.f.mz.rn vr3{mr1}, r7, vr3
002284  0a924302  vmul.f.mz.rn vr4{mr1}, r7, vr4
002288  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
00228c  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
002290  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
002294  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
002298  3f2dfafe  blt.s r20, r15, -184
00229c  00a00000  mfence { lm }
0022a0  3ff1a7fe  blt.s r15, r10, -932
0022a4  1f018fd7  addli r2, r30, -5184
0022a8  9f018fd7  addli r3, r30, -5184
0022ac  1f030000  addli r6, zero, 0
0022b0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0022b4  9f838100  addli r7, r3, 64
0022b8  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
0022bc  1f034300  addli r6, r6, 32
0022c0  9f810101  addli r3, r3, 128
0022c4  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
0022c8  86910000  vfloat2fp16_l.rn vr3, vr1
0022cc  86510100  vfloat2fp16_h.rn vr3, vr2
0022d0  46003102  vstore.mz vr3{mr1}, 0(r2)
0022d4  1f018100  addli r2, r2, 64
0022d8  3f6ff3fe  blt.s r6, r15, -40
0022dc  5b84ffff  j -992
0022e0  e3002f00  loadli.w r1,  16(r30)
0022e4  1f010010  addli r2, zero, 2048
0022e8  bbe02008  bneq r1, r2, 4152
0022ec  2ba30200  lui r6, 42
0022f0  803b0002  core_id r23
0022f4  1f030308  addli r6, r6, 1024
0022f8  3bd00b00  bneq r23, zero, 20
0022fc  1f010040  addli r2, zero, 8192
002300  ab0100f0  lui r3, 983040
002304  17113100  or r2, r2, r3
002308  7f016200  l_gm2sm r2, r6, 0(r[5:6])
00230c  2bf10000  lui r2, 15
002310  e3401f00  loadli.w r1,  12(r30)
002314  00200300  mfence { sm, gm }
002318  1b8c1b00  andi r24, r23, 1
00231c  9f020006  addli r5, zero, 768
002320  1b11f1ff  ori r2, r2, 4095
002324  80210104  csr_set csr3, r2
002328  1f010006  addli r2, zero, 768
00232c  00d00100  sync_group
002330  37200c00  beq r24, zero, 8
002334  9f02000a  addli r5, zero, 1280
002338  e3411f00  loadli.w r3,  12(r30)
00233c  9f130000  addli r7, zero, 1
002340  3f8f7120  blt.s r3, r7, 17344
002344  0b122c20  mul.s r4, r24, r2
002348  2bf1ffff  lui r2, 1048575
00234c  abca0200  lui r21, 44
002350  2bcd0200  lui r26, 44
002354  80510102  load_param_i r3, 2
002358  9f030000  addli r7, zero, 0
00235c  1bc51b00  srli r10, r23, 1
002360  9bb52200  slli r11, r5, 2
002364  9f280000  addli r17, zero, 2
002368  9f068fd7  addli r13, r30, -5184
00236c  1f080005  addli r16, zero, 640
002370  1f090001  addli r18, zero, 128
002374  9f098000  addli r19, zero, 64
002378  1f0a4000  addli r20, zero, 32
00237c  9f0c0003  addli r25, zero, 384
002380  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002384  1b1101f8  ori r2, r2, 3968
002388  9bc41100  srli r9, r3, 1
00238c  9f010fd7  addli r3, r30, -5248
002390  9f8a0a08  addli r21, r21, 1024
002394  1f0d0d0c  addli r26, r26, 1536
002398  67042fd6  storeli.w r2, -5312(r30)
00239c  2bf10000  lui r2, 15
0023a0  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0023a4  1b1bf1ff  ori r22, r2, 4095
0023a8  db030000  j 28
0023ac  00a00300  mfence { lm, sm, gm }
0023b0  80210b04  csr_set csr3, r22
0023b4  00d00100  sync_group
0023b8  8b939310  add.s r7, r7, r9
0023bc  3fa01300  blt.s r7, r1, 8
0023c0  db15fdff  j -5972
0023c4  0b91a310  add.s r2, r7, r10
0023c8  cb9f20fe  ble.s r1, r2, -28
0023cc  e3001f00  loadli.w r1,  8(r30)
0023d0  0b111110  add.s r2, r2, r1
0023d4  9f007fd6  addli r1, r30, -5320
0023d8  1b31b100  slli r2, r2, 11
0023dc  6bd70000  load.d r[15:16], 0(r1)
0023e0  17114100  or r2, r2, r4
0023e4  33110128  sext_int2long r[3:4], r2
0023e8  973d1103  sll.d r[28:29], r[3:4], r17
0023ec  2b0100f0  lui r2, 983040
0023f0  0b27b711  add.ul r[15:16], r[15:16], r[28:29]
0023f4  17912500  or r2, r11, r2
0023f8  7f21d700  l_gm2lm r2, r13, 0(r[15:16])
0023fc  00a00200  mfence { lm, gm }
002400  3b260c00  bneq r24, zero, 392
002404  9f000fd7  addli r1, r30, -5248
002408  e3018fd6  loadli.w r3,  -5312(r30)
00240c  1f010000  addli r2, zero, 0
002410  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
002414  92303002  vadd.s.mz vr1{mr1}, zero, vr3
002418  12313002  vadd.s.mz vr2{mr1}, zero, vr3
00241c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
002420  0b176110  add.s r14, r2, r6
002424  0b962610  add.s r12, r13, r2
002428  9f810101  addli r3, r3, 128
00242c  1f010104  addli r2, r2, 512
002430  9f000701  addli r1, r14, 128
002434  4a100702  vloads_mask16.mz vr0{mr1}, 0(r14)
002438  1f048700  addli r8, r14, 64
00243c  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
002440  9f078601  addli r15, r12, 192
002444  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
002448  9f008701  addli r1, r14, 192
00244c  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002450  1f048600  addli r8, r12, 64
002454  c2950702  vload_mask16.mz vr11{mr1}, 0(r15)
002458  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
00245c  9f000601  addli r1, r12, 128
002460  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
002464  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002468  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00246c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002470  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002474  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002478  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00247c  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
002480  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002484  9f000702  addli r1, r14, 256
002488  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00248c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002490  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002494  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002498  1f040603  addli r8, r12, 384
00249c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0024a0  9f008702  addli r1, r14, 320
0024a4  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
0024a8  9f070602  addli r15, r12, 256
0024ac  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0024b0  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0024b4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0024b8  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0024bc  9f000703  addli r1, r14, 384
0024c0  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0024c4  1f078703  addli r14, r14, 448
0024c8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0024cc  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0024d0  9f008602  addli r1, r12, 320
0024d4  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
0024d8  1f068603  addli r12, r12, 448
0024dc  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0024e0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0024e4  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0024e8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0024ec  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0024f0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0024f4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0024f8  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
0024fc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002500  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
002504  93800105  setlt.u r1, r3, r16
002508  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00250c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002510  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002514  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002518  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00251c  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002520  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
002524  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002528  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00252c  bbdb00fe  bneq r1, zero, -268
002530  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002534  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002538  9f000002  addli r1, zero, 256
00253c  6af100c0  vsrl.p vr2, r1, vr0
002540  eaf110c0  vsrl.p vr3, r1, vr1
002544  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002548  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00254c  6a7109c0  vsrl.p vr2, r18, vr0
002550  ea7119c0  vsrl.p vr3, r18, vr1
002554  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002558  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00255c  6af109c0  vsrl.p vr2, r19, vr0
002560  eaf119c0  vsrl.p vr3, r19, vr1
002564  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002568  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00256c  6a710ac0  vsrl.p vr2, r20, vr0
002570  ea711ac0  vsrl.p vr3, r20, vr1
002574  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002578  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00257c  7a160040  vextracti.f r12, 0(vr0)
002580  7a910040  vextracti.f r2, 0(vr1)
002584  5b650000  j 808
002588  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00258c  abf0ffff  lui r1, 1048575
002590  9f080c00  addli r17, r24, 0
002594  1f010000  addli r2, zero, 0
002598  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00259c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0025a0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0025a4  9b9100f8  ori r3, r1, 3968
0025a8  0b172310  add.s r14, r6, r2
0025ac  0b962610  add.s r12, r13, r2
0025b0  9f810101  addli r3, r3, 128
0025b4  1f010104  addli r2, r2, 512
0025b8  9f000731  addli r1, r14, 6272
0025bc  9f070730  addli r15, r14, 6144
0025c0  1f048731  addli r8, r14, 6336
0025c4  1f0c0618  addli r24, r12, 3072
0025c8  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
0025cc  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
0025d0  9f078730  addli r15, r14, 6208
0025d4  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
0025d8  1f040619  addli r8, r12, 3200
0025dc  9f008618  addli r1, r12, 3136
0025e0  42130c02  vload_mask16.mz vr6{mr1}, 0(r24)
0025e4  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
0025e8  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
0025ec  9f078619  addli r15, r12, 3264
0025f0  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0025f4  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
0025f8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0025fc  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
002600  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
002604  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
002608  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00260c  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
002610  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
002614  1f040732  addli r8, r14, 6400
002618  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
00261c  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
002620  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002624  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
002628  9f07061a  addli r15, r12, 3328
00262c  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
002630  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
002634  9f00061b  addli r1, r12, 3456
002638  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
00263c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
002640  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
002644  1f048732  addli r8, r14, 6464
002648  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00264c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002650  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002654  1f040733  addli r8, r14, 6528
002658  1f078733  addli r14, r14, 6592
00265c  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
002660  1f04861a  addli r8, r12, 3392
002664  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
002668  1f06861b  addli r12, r12, 3520
00266c  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
002670  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
002674  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
002678  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00267c  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
002680  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002684  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002688  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
00268c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002690  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
002694  13849105  setlt.u r8, r3, r25
002698  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00269c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0026a0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0026a4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0026a8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0026ac  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0026b0  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0026b4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0026b8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0026bc  bb3b04fe  bneq r8, zero, -276
0026c0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0026c4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0026c8  9f000002  addli r1, zero, 256
0026cc  1f060000  addli r12, zero, 0
0026d0  eaf110c0  vsrl.p vr3, r1, vr1
0026d4  6af100c0  vsrl.p vr2, r1, vr0
0026d8  abf0ffff  lui r1, 1048575
0026dc  1b9c00f8  ori r24, r1, 3968
0026e0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0026e4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0026e8  ea7119c0  vsrl.p vr3, r18, vr1
0026ec  6a7109c0  vsrl.p vr2, r18, vr0
0026f0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0026f4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0026f8  eaf119c0  vsrl.p vr3, r19, vr1
0026fc  6af109c0  vsrl.p vr2, r19, vr0
002700  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002704  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002708  ea711ac0  vsrl.p vr3, r20, vr1
00270c  6a710ac0  vsrl.p vr2, r20, vr0
002710  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002714  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002718  fa910040  vextracti.f r3, 0(vr1)
00271c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002720  7a110040  vextracti.f r2, 0(vr0)
002724  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002728  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00272c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002730  8b17c310  add.s r15, r6, r12
002734  0b97c610  add.s r14, r13, r12
002738  1f0c0c01  addli r24, r24, 128
00273c  1f060604  addli r12, r12, 512
002740  9f800718  addli r1, r15, 3072
002744  1f840719  addli r8, r15, 3200
002748  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
00274c  9f0b8701  addli r23, r14, 192
002750  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002754  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
002758  9f808718  addli r1, r15, 3136
00275c  1f848719  addli r8, r15, 3264
002760  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
002764  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002768  9f000701  addli r1, r14, 128
00276c  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
002770  1f048700  addli r8, r14, 64
002774  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002778  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
00277c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002780  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002784  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002788  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00278c  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002790  9f80071a  addli r1, r15, 3328
002794  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002798  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00279c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0027a0  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0027a4  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
0027a8  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0027ac  9f80871a  addli r1, r15, 3392
0027b0  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
0027b4  9f0b0702  addli r23, r14, 256
0027b8  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0027bc  1f040703  addli r8, r14, 384
0027c0  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0027c4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0027c8  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0027cc  9f80071b  addli r1, r15, 3456
0027d0  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
0027d4  9f87871b  addli r15, r15, 3520
0027d8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0027dc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0027e0  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0027e4  9f008702  addli r1, r14, 320
0027e8  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
0027ec  1f078703  addli r14, r14, 448
0027f0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0027f4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0027f8  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0027fc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002800  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
002804  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002808  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00280c  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
002810  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002814  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
002818  93000c05  setlt.u r1, r24, r16
00281c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002820  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002824  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002828  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00282c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002830  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002834  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
002838  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00283c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002840  bbcb00fe  bneq r1, zero, -272
002844  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002848  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00284c  9f000002  addli r1, zero, 256
002850  1f8c0800  addli r24, r17, 0
002854  803b0002  core_id r23
002858  9f280000  addli r17, zero, 2
00285c  6af100c0  vsrl.p vr2, r1, vr0
002860  eaf110c0  vsrl.p vr3, r1, vr1
002864  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002868  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00286c  6a7109c0  vsrl.p vr2, r18, vr0
002870  ea7119c0  vsrl.p vr3, r18, vr1
002874  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002878  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00287c  6af109c0  vsrl.p vr2, r19, vr0
002880  eaf119c0  vsrl.p vr3, r19, vr1
002884  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002888  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00288c  6a710ac0  vsrl.p vr2, r20, vr0
002890  ea711ac0  vsrl.p vr3, r20, vr1
002894  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002898  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00289c  fa100040  vextracti.f r1, 0(vr0)
0028a0  7a940040  vextracti.f r8, 0(vr1)
0028a4  0b661110  add.f.rn r12, r2, r1
0028a8  0be18110  add.f.rn r2, r3, r8
0028ac  8b809330  div.u r1, r7, r9
0028b0  1f070000  addli r14, zero, 0
0028b4  9bb06000  slli r1, r1, 6
0028b8  9b800004  andi r1, r1, 64
0028bc  97907001  or r1, r1, r23
0028c0  9bb12000  slli r3, r1, 2
0028c4  9b80e007  andi r1, r1, 126
0028c8  0b945111  add.s r8, r3, r21
0028cc  9bb02000  slli r1, r1, 2
0028d0  7360c400  stores.w r12, 0(r8)
0028d4  0b94a111  add.s r8, r3, r26
0028d8  9b914100  ori r3, r3, 4
0028dc  1f068fd7  addli r12, r30, -5184
0028e0  73602400  stores.w r2, 0(r8)
0028e4  0b915111  add.s r2, r3, r21
0028e8  0b945011  add.s r8, r1, r21
0028ec  8b91a111  add.s r3, r3, r26
0028f0  8b90a011  add.s r1, r1, r26
0028f4  00a00300  mfence { lm, sm, gm }
0028f8  80210b04  csr_set csr3, r22
0028fc  00d00100  sync_group
002900  6f410100  loads.w r2, 0(r2)
002904  6f440400  loads.w r8, 0(r8)
002908  efc10100  loads.w r3, 0(r3)
00290c  efc00000  loads.w r1, 0(r1)
002910  0b618110  add.f.rn r2, r2, r8
002914  2b04003a  lui r8, 237568
002918  8be01110  add.f.rn r1, r3, r1
00291c  8b618120  mul.f.rn r3, r2, r8
002920  8be08020  mul.f.rn r1, r1, r8
002924  0be13120  mul.f.rn r2, r3, r3
002928  8be10158  neg.f r3, r3
00292c  8be02018  sub.f.rn r1, r1, r2
002930  63013f00  loadli.w r2,  24(r30)
002934  8be02010  add.f.rn r1, r1, r2
002938  2b01803f  lui r2, 260096
00293c  8f800008  sqrt.f.rn r1, r1
002940  0f011118  div.f.rn r2, r2, r1
002944  9f008600  addli r1, r12, 64
002948  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
00294c  1f044700  addli r8, r14, 32
002950  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002954  13848206  setle.u r8, r5, r8
002958  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
00295c  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
002960  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
002964  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
002968  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
00296c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002970  bb700400  bneq r8, zero, 60
002974  9f000601  addli r1, r12, 128
002978  1f048601  addli r8, r12, 192
00297c  1f078700  addli r14, r14, 64
002980  1f060602  addli r12, r12, 256
002984  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002988  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
00298c  93075704  setlt.u r15, r14, r5
002990  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
002994  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
002998  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
00299c  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
0029a0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0029a4  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
0029a8  3bfe07fe  bneq r15, zero, -100
0029ac  6b510f00  load.d r[3:4], 0(r30)
0029b0  ab0000f0  lui r1, 983040
0029b4  00a00000  mfence { lm }
0029b8  97901500  or r1, r11, r1
0029bc  0b21b111  add.ul r[3:4], r[3:4], r[28:29]
0029c0  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
0029c4  00a00200  mfence { lm, gm }
0029c8  e3401f00  loadli.w r1,  12(r30)
0029cc  db3dffff  j -1556
0029d0  80300002  core_id r1
0029d4  bb800000  bneq r1, zero, 32
0029d8  63012f00  loadli.w r2,  16(r30)
0029dc  ab0100f0  lui r3, 983040
0029e0  1b311100  slli r2, r2, 1
0029e4  17113100  or r2, r2, r3
0029e8  abc10100  lui r3, 28
0029ec  9f810100  addli r3, r3, 0
0029f0  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0029f4  2bf10000  lui r2, 15
0029f8  e3411f00  loadli.w r3,  12(r30)
0029fc  00200300  mfence { sm, gm }
002a00  1b11f1ff  ori r2, r2, 4095
002a04  80210104  csr_set csr3, r2
002a08  00d00100  sync_group
002a0c  cbd3111e  ble.s r3, r1, 15604
002a10  63012f00  loadli.w r2,  16(r30)
002a14  e3412f00  loadli.w r3,  20(r30)
002a18  1f062000  addli r12, zero, 16
002a1c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002a20  1f140000  addli r8, zero, 1
002a24  1f0b8fd7  addli r22, r30, -5184
002a28  9f050002  addli r11, zero, 256
002a2c  ab06ffff  lui r13, 1048560
002a30  ab08807f  lui r17, 522240
002a34  2b09c07f  lui r18, 523264
002a38  9f090001  addli r19, zero, 128
002a3c  1f0a8000  addli r20, zero, 64
002a40  9f0a4000  addli r21, zero, 32
002a44  9b321100  slli r5, r2, 1
002a48  0b123110  add.s r4, r2, r3
002a4c  33010108  fix2float.rn r2, r2
002a50  1bb31100  slli r6, r3, 1
002a54  67042fd4  storeli.w r2, -5568(r30)
002a58  1f71f2ff  addli r2, r4, -1
002a5c  67085fd4  storeli.w r5, -5504(r30)
002a60  8b133130  div.s r7, r2, r3
002a64  2bf1ffff  lui r2, 1048575
002a68  1b15f1ff  ori r10, r2, 4095
002a6c  1f010fd7  addli r2, r30, -5248
002a70  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002a74  6a200622  vor.u.mz vr0{mr1}, r12, vr0
002a78  1f018fd6  addli r2, r30, -5312
002a7c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002a80  2b710000  lui r2, 7
002a84  1b18f1ff  ori r16, r2, 4095
002a88  db080000  j 68
002a8c  9f028fd5  addli r5, r30, -5440
002a90  00a00000  mfence { lm }
002a94  eb510f00  load.d r[4:5], 0(r30)
002a98  2b0100f0  lui r2, 983040
002a9c  80540102  load_param_i r9, 2
002aa0  6bdb0200  load.d r[23:24], 0(r5)
002aa4  e3020fd5  loadli.w r5,  -5504(r30)
002aa8  8b901410  add.s r1, r9, r1
002aac  8ba16111  add.ul r[4:5], r[4:5], r[23:24]
002ab0  17912200  or r2, r5, r2
002ab4  1f0b8fd7  addli r22, r30, -5184
002ab8  7fb16101  s_lm2gm r2, r22, 0(r[4:5])
002abc  00a00200  mfence { lm, gm }
002ac0  63411f00  loadli.w r2,  12(r30)
002ac4  3fa02000  blt.s r1, r2, 8
002ac8  5b870700  j 15416
002acc  63011f00  loadli.w r2,  8(r30)
002ad0  9f047fd6  addli r9, r30, -5320
002ad4  0b912010  add.s r2, r1, r2
002ad8  0b11f120  mul.s r2, r2, r15
002adc  33110128  sext_int2long r[3:4], r2
002ae0  973b8102  sll.d r[24:25], r[3:4], r8
002ae4  ebd10400  load.d r[4:5], 0(r9)
002ae8  2b0100f0  lui r2, 983040
002aec  9f048fd5  addli r9, r30, -5440
002af0  17912200  or r2, r5, r2
002af4  73b07401  store.d r[24:25], 0(r9)
002af8  8ba17111  add.ul r[4:5], r[4:5], r[24:25]
002afc  7fa16101  l_gm2lm r2, r22, 0(r[4:5])
002b00  00a00200  mfence { lm, gm }
002b04  bfdc8300  blt.s r7, r8, 820
002b08  9f010000  addli r3, zero, 0
002b0c  1f010000  addli r2, zero, 0
002b10  1f0d0000  addli r26, zero, 0
002b14  db0c0000  j 100
002b18  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
002b1c  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
002b20  1f1d0d00  addli r26, r26, 1
002b24  6af105c0  vsrl.p vr2, r11, vr0
002b28  eaf115c0  vsrl.p vr3, r11, vr1
002b2c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b30  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002b34  6af109c0  vsrl.p vr2, r19, vr0
002b38  eaf119c0  vsrl.p vr3, r19, vr1
002b3c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b40  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002b44  6a710ac0  vsrl.p vr2, r20, vr0
002b48  ea711ac0  vsrl.p vr3, r20, vr1
002b4c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b50  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002b54  6af10ac0  vsrl.p vr2, r21, vr0
002b58  eaf11ac0  vsrl.p vr3, r21, vr1
002b5c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b60  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002b64  7a120040  vextracti.f r4, 0(vr0)
002b68  fa920040  vextracti.f r5, 0(vr1)
002b6c  8be14110  add.f.rn r3, r3, r4
002b70  0b615110  add.f.rn r2, r2, r5
002b74  373b7d00  beq r26, r7, 716
002b78  1f020d00  addli r4, r26, 0
002b7c  3730b700  beq r14, r11, 12
002b80  1722ad00  xor r4, r26, r10
002b84  0b924310  add.s r4, r7, r4
002b88  9f020fd7  addli r5, r30, -5248
002b8c  8b14e220  mul.s r9, r4, r14
002b90  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
002b94  8b949718  sub.s r9, r15, r9
002b98  8b9de440  min.s r27, r9, r14
002b9c  92322002  vadd.s.mz vr5{mr1}, zero, vr2
002ba0  12322002  vadd.s.mz vr4{mr1}, zero, vr2
002ba4  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002ba8  bfcd8dfe  blt.s r27, r8, -144
002bac  0b1b4320  mul.s r22, r6, r4
002bb0  1f020fd7  addli r4, r30, -5248
002bb4  abcb0100  lui r23, 28
002bb8  1f0e0000  addli r28, zero, 0
002bbc  9f048fd7  addli r9, r30, -5184
002bc0  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
002bc4  9f8b0b00  addli r23, r23, 0
002bc8  12315002  vadd.s.mz vr2{mr1}, zero, vr5
002bcc  92315002  vadd.s.mz vr3{mr1}, zero, vr5
002bd0  12325002  vadd.s.mz vr4{mr1}, zero, vr5
002bd4  0b9c6b11  add.s r24, r23, r22
002bd8  0b926411  add.s r4, r9, r22
002bdc  9f028fd6  addli r5, r30, -5312
002be0  4a030c02  vloads.mz vr6{mr1}, 0(r24)
002be4  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
002be8  c2030202  vload.mz vr7{mr1}, 0(r4)
002bec  9f020fd7  addli r5, r30, -5248
002bf0  9f0c8c00  addli r25, r24, 64
002bf4  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
002bf8  9f028e00  addli r5, r28, 64
002bfc  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
002c00  6ab57602  vand.s.mz vr10{mr1}, r13, vr7
002c04  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
002c08  6ab36602  vand.s.mz vr6{mr1}, r13, vr6
002c0c  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
002c10  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
002c14  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
002c18  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
002c1c  669503c0  vabs.f vr10, vr7
002c20  6a348402  vand.s.mz vr8{mr1}, r8, vr8
002c24  ea349402  vand.s.mz vr9{mr1}, r8, vr9
002c28  72a1a842  vlt.u.mz mr2{mr1}, r17, vr10
002c2c  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
002c30  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
002c34  12348802  vadd.s.mz vr8{mr1}, r16, vr8
002c38  92349802  vadd.s.mz vr9{mr1}, r16, vr9
002c3c  eab38602  vand.s.mz vr7{mr1}, r13, vr8
002c40  661403c0  vabs.f vr8, vr6
002c44  6ab39602  vand.s.mz vr6{mr1}, r13, vr9
002c48  ea230934  vor.u.mh vr7{mr2}, r18, vr0
002c4c  72a18842  vlt.u.mz mr2{mr1}, r17, vr8
002c50  6a230934  vor.u.mh vr6{mr2}, r18, vr0
002c54  4a840c02  vloads.mz vr8{mr1}, 0(r25)
002c58  9f0c8200  addli r25, r4, 64
002c5c  c2840c02  vload.mz vr9{mr1}, 0(r25)
002c60  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
002c64  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
002c68  6ab36602  vand.s.mz vr6{mr1}, r13, vr6
002c6c  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
002c70  eab49602  vand.s.mz vr9{mr1}, r13, vr9
002c74  46007202  vstore.mz vr7{mr1}, 0(r4)
002c78  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002c7c  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002c80  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
002c84  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
002c88  6ab48602  vand.s.mz vr8{mr1}, r13, vr8
002c8c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002c90  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002c94  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
002c98  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
002c9c  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
002ca0  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
002ca4  ea349402  vand.s.mz vr9{mr1}, r8, vr9
002ca8  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
002cac  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
002cb0  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
002cb4  661505c0  vabs.f vr10, vr10
002cb8  661404c0  vabs.f vr8, vr8
002cbc  92349802  vadd.s.mz vr9{mr1}, r16, vr9
002cc0  9235b802  vadd.s.mz vr11{mr1}, r16, vr11
002cc4  72a1a842  vlt.u.mz mr2{mr1}, r17, vr10
002cc8  eab49602  vand.s.mz vr9{mr1}, r13, vr9
002ccc  6ab5b602  vand.s.mz vr10{mr1}, r13, vr11
002cd0  ea240934  vor.u.mh vr9{mr2}, r18, vr0
002cd4  72a18842  vlt.u.mz mr2{mr1}, r17, vr8
002cd8  6a250934  vor.u.mh vr10{mr2}, r18, vr0
002cdc  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
002ce0  eab4a602  vand.s.mz vr9{mr1}, r13, vr10
002ce4  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
002ce8  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002cec  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002cf0  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
002cf4  46808c02  vstore.mz vr8{mr1}, 0(r25)
002cf8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002cfc  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002d00  4be85dfe  ble.s r27, r5, -488
002d04  9f020c01  addli r5, r24, 128
002d08  9f0c0201  addli r25, r4, 128
002d0c  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
002d10  1f028201  addli r4, r4, 192
002d14  1f0e0e01  addli r28, r28, 128
002d18  9f8b0b02  addli r23, r23, 256
002d1c  9f840402  addli r9, r9, 256
002d20  6a237622  vor.u.mz vr6{mr1}, r12, vr7
002d24  4a840202  vloads.mz vr8{mr1}, 0(r5)
002d28  c2840c02  vload.mz vr9{mr1}, 0(r25)
002d2c  9f028c01  addli r5, r24, 192
002d30  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
002d34  6ab09602  vand.s.mz vr0{mr1}, r13, vr9
002d38  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
002d3c  6ab48602  vand.s.mz vr8{mr1}, r13, vr8
002d40  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
002d44  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
002d48  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
002d4c  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
002d50  e69504c0  vabs.f vr11, vr9
002d54  6a300402  vand.s.mz vr0{mr1}, r8, vr0
002d58  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
002d5c  72a1b842  vlt.u.mz mr2{mr1}, r17, vr11
002d60  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
002d64  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
002d68  12300802  vadd.s.mz vr0{mr1}, r16, vr0
002d6c  1235a802  vadd.s.mz vr10{mr1}, r16, vr10
002d70  eab40602  vand.s.mz vr9{mr1}, r13, vr0
002d74  661004c0  vabs.f vr0, vr8
002d78  6ab4a602  vand.s.mz vr8{mr1}, r13, vr10
002d7c  ea247934  vor.u.mh vr9{mr2}, r18, vr7
002d80  72a10842  vlt.u.mz mr2{mr1}, r17, vr0
002d84  6a247934  vor.u.mh vr8{mr2}, r18, vr7
002d88  4a800202  vloads.mz vr0{mr1}, 0(r5)
002d8c  42050202  vload.mz vr10{mr1}, 0(r4)
002d90  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
002d94  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
002d98  6ab5a602  vand.s.mz vr10{mr1}, r13, vr10
002d9c  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
002da0  6ab48602  vand.s.mz vr8{mr1}, r13, vr8
002da4  46809c02  vstore.mz vr9{mr1}, 0(r25)
002da8  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
002dac  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
002db0  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
002db4  6ab00602  vand.s.mz vr0{mr1}, r13, vr0
002db8  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
002dbc  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
002dc0  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
002dc4  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
002dc8  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
002dcc  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
002dd0  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
002dd4  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
002dd8  e69000c0  vabs.f vr1, vr1
002ddc  661000c0  vabs.f vr0, vr0
002de0  1235a802  vadd.s.mz vr10{mr1}, r16, vr10
002de4  9235b802  vadd.s.mz vr11{mr1}, r16, vr11
002de8  72a11842  vlt.u.mz mr2{mr1}, r17, vr1
002dec  6ab5a602  vand.s.mz vr10{mr1}, r13, vr10
002df0  eab0b602  vand.s.mz vr1{mr1}, r13, vr11
002df4  6a257934  vor.u.mh vr10{mr2}, r18, vr7
002df8  72a10842  vlt.u.mz mr2{mr1}, r17, vr0
002dfc  ea207934  vor.u.mh vr1{mr2}, r18, vr7
002e00  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
002e04  eab31602  vand.s.mz vr7{mr1}, r13, vr1
002e08  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
002e0c  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
002e10  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002e14  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002e18  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
002e1c  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
002e20  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
002e24  46000202  vstore.mz vr0{mr1}, 0(r4)
002e28  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002e2c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002e30  bf16beff  blt.s r28, r27, -604
002e34  db9cffff  j -796
002e38  1f010000  addli r2, zero, 0
002e3c  9f010000  addli r3, zero, 0
002e40  00a00000  mfence { lm }
002e44  3fa187fe  blt.s r15, r8, -952
002e48  63028fd4  loadli.w r4,  -5568(r30)
002e4c  9f040000  addli r9, zero, 0
002e50  8f814118  div.f.rn r3, r3, r4
002e54  0f014118  div.f.rn r2, r2, r4
002e58  0be23120  mul.f.rn r4, r3, r3
002e5c  8be10158  neg.f r3, r3
002e60  0b614118  sub.f.rn r2, r2, r4
002e64  63023f00  loadli.w r4,  24(r30)
002e68  0b614110  add.f.rn r2, r2, r4
002e6c  2b02803f  lui r4, 260096
002e70  0f010108  sqrt.f.rn r2, r2
002e74  0f012218  div.f.rn r2, r4, r2
002e78  1f028fd7  addli r4, r30, -5184
002e7c  42020202  vload.mz vr4{mr1}, 0(r4)
002e80  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
002e84  1f8b4400  addli r22, r9, 32
002e88  ea212622  vor.u.mz vr3{mr1}, r12, vr2
002e8c  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002e90  6ab24602  vand.s.mz vr4{mr1}, r13, vr4
002e94  92925102  vadd.f.mz.rn vr5{mr1}, r3, vr5
002e98  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
002e9c  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002ea0  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002ea4  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002ea8  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002eac  6a336402  vand.s.mz vr6{mr1}, r8, vr6
002eb0  ea337402  vand.s.mz vr7{mr1}, r8, vr7
002eb4  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002eb8  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002ebc  e69202c0  vabs.f vr5, vr5
002ec0  661202c0  vabs.f vr4, vr4
002ec4  12336802  vadd.s.mz vr6{mr1}, r16, vr6
002ec8  92337802  vadd.s.mz vr7{mr1}, r16, vr7
002ecc  72a15842  vlt.u.mz mr2{mr1}, r17, vr5
002ed0  6ab36602  vand.s.mz vr6{mr1}, r13, vr6
002ed4  eab27602  vand.s.mz vr5{mr1}, r13, vr7
002ed8  6a232934  vor.u.mh vr6{mr2}, r18, vr2
002edc  72a14842  vlt.u.mz mr2{mr1}, r17, vr4
002ee0  ea222934  vor.u.mh vr5{mr2}, r18, vr2
002ee4  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
002ee8  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
002eec  46004202  vstore.mz vr4{mr1}, 0(r4)
002ef0  4bfe67fd  ble.s r15, r22, -1124
002ef4  1f0b8200  addli r22, r4, 64
002ef8  9f848400  addli r9, r9, 64
002efc  1f020201  addli r4, r4, 128
002f00  42020b02  vload.mz vr4{mr1}, 0(r22)
002f04  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002f08  6ab24602  vand.s.mz vr4{mr1}, r13, vr4
002f0c  92925102  vadd.f.mz.rn vr5{mr1}, r3, vr5
002f10  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
002f14  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002f18  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002f1c  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002f20  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002f24  6a336402  vand.s.mz vr6{mr1}, r8, vr6
002f28  ea337402  vand.s.mz vr7{mr1}, r8, vr7
002f2c  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002f30  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002f34  e69202c0  vabs.f vr5, vr5
002f38  661202c0  vabs.f vr4, vr4
002f3c  12336802  vadd.s.mz vr6{mr1}, r16, vr6
002f40  92337802  vadd.s.mz vr7{mr1}, r16, vr7
002f44  72a15842  vlt.u.mz mr2{mr1}, r17, vr5
002f48  6ab36602  vand.s.mz vr6{mr1}, r13, vr6
002f4c  eab27602  vand.s.mz vr5{mr1}, r13, vr7
002f50  6a232934  vor.u.mh vr6{mr2}, r18, vr2
002f54  72a14842  vlt.u.mz mr2{mr1}, r17, vr4
002f58  ea222934  vor.u.mh vr5{mr2}, r18, vr2
002f5c  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
002f60  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
002f64  46002b02  vstore.mz vr2{mr1}, 0(r22)
002f68  3fdcf4fe  blt.s r9, r15, -236
002f6c  5b64ffff  j -1248
002f70  80300002  core_id r1
002f74  bb800000  bneq r1, zero, 32
002f78  63012f00  loadli.w r2,  16(r30)
002f7c  ab0100f0  lui r3, 983040
002f80  1b311100  slli r2, r2, 1
002f84  17113100  or r2, r2, r3
002f88  ab010200  lui r3, 32
002f8c  9f810100  addli r3, r3, 0
002f90  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002f94  2bf10000  lui r2, 15
002f98  e3411f00  loadli.w r3,  12(r30)
002f9c  00200300  mfence { sm, gm }
002fa0  1b11f1ff  ori r2, r2, 4095
002fa4  80210104  csr_set csr3, r2
002fa8  00d00100  sync_group
002fac  4bdd111a  ble.s r3, r1, 14164
002fb0  e3012f00  loadli.w r3,  16(r30)
002fb4  e3422f00  loadli.w r5,  20(r30)
002fb8  2bf4ffff  lui r8, 1048575
002fbc  2b080200  lui r16, 32
002fc0  9f068fd7  addli r13, r30, -5184
002fc4  9f040002  addli r9, zero, 256
002fc8  1f050001  addli r10, zero, 128
002fcc  9f058000  addli r11, zero, 64
002fd0  1f064000  addli r12, zero, 32
002fd4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002fd8  1b14f4ff  ori r8, r8, 4095
002fdc  1f080800  addli r16, r16, 0
002fe0  0b925110  add.s r4, r3, r5
002fe4  1bb11100  slli r2, r3, 1
002fe8  b3810108  fix2float.rn r3, r3
002fec  1f73f2ff  addli r6, r4, -1
002ff0  1bb21200  slli r4, r5, 1
002ff4  8b125330  div.s r5, r6, r5
002ff8  1f130000  addli r6, zero, 1
002ffc  5b070000  j 56
003000  00a00000  mfence { lm }
003004  6b5a0f00  load.d r[21:22], 0(r30)
003008  ab0900f0  lui r19, 983040
00300c  9f068fd7  addli r13, r30, -5184
003010  97193101  or r19, r2, r19
003014  8b281a11  add.ul r[18:19], r[21:22], r[18:19]
003018  005a0102  load_param_i r20, 2
00301c  ffb9d800  s_lm2gm r19, r13, 0(r[18:19])
003020  8b101a10  add.s r1, r20, r1
003024  00a00200  mfence { lm, gm }
003028  e3431f00  loadli.w r7,  12(r30)
00302c  3fa07000  blt.s r1, r7, 8
003030  5bda0600  j 14032
003034  e3031f00  loadli.w r7,  8(r30)
003038  ab0900f0  lui r19, 983040
00303c  97193101  or r19, r2, r19
003040  8b987010  add.s r17, r1, r7
003044  9f037fd6  addli r7, r30, -5320
003048  8b98f820  mul.s r17, r17, r15
00304c  6bda0300  load.d r[21:22], 0(r7)
003050  b3980828  sext_int2long r[18:19], r17
003054  97b86802  sll.d r[18:19], r[18:19], r6
003058  0b2a1a11  add.ul r[21:22], r[21:22], r[18:19]
00305c  ff29da00  l_gm2lm r19, r13, 0(r[21:22])
003060  00a00200  mfence { lm, gm }
003064  3fc76200  blt.s r5, r6, 464
003068  1f0a0000  addli r20, zero, 0
00306c  9f090000  addli r19, zero, 0
003070  9f0a0000  addli r21, zero, 0
003074  db0c0000  j 100
003078  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
00307c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003080  9f9a0a00  addli r21, r21, 1
003084  6af134c0  vsrl.p vr2, r9, vr3
003088  6af214c0  vsrl.p vr4, r9, vr1
00308c  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
003090  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
003094  ea7125c0  vsrl.p vr3, r10, vr2
003098  6a7215c0  vsrl.p vr4, r10, vr1
00309c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0030a0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0030a4  eaf125c0  vsrl.p vr3, r11, vr2
0030a8  6af215c0  vsrl.p vr4, r11, vr1
0030ac  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0030b0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0030b4  ea7126c0  vsrl.p vr3, r12, vr2
0030b8  6a7216c0  vsrl.p vr4, r12, vr1
0030bc  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0030c0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0030c4  fa130140  vextracti.f r7, 0(vr2)
0030c8  fa960040  vextracti.f r13, 0(vr1)
0030cc  0b6a7a10  add.f.rn r20, r20, r7
0030d0  8be9d910  add.f.rn r19, r19, r13
0030d4  b7a55a00  beq r21, r5, 360
0030d8  1f8c0a00  addli r24, r21, 0
0030dc  37309700  beq r14, r9, 12
0030e0  17ab8a00  xor r22, r21, r8
0030e4  0b9c6211  add.s r24, r5, r22
0030e8  0b1bec20  mul.s r22, r24, r14
0030ec  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0030f0  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0030f4  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0030f8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0030fc  0b9b6719  sub.s r22, r15, r22
003100  0b1beb40  min.s r22, r22, r14
003104  bf5d6bfe  blt.s r22, r6, -140
003108  92300002  vadd.s.mz vr1{mr1}, zero, vr0
00310c  12310002  vadd.s.mz vr2{mr1}, zero, vr0
003110  92310002  vadd.s.mz vr3{mr1}, zero, vr0
003114  12320002  vadd.s.mz vr4{mr1}, zero, vr0
003118  9f0b0000  addli r23, zero, 0
00311c  0b1c8221  mul.s r24, r4, r24
003120  9f0c8fd7  addli r25, r30, -5184
003124  1f0d0800  addli r26, r16, 0
003128  8b1d8d11  add.s r27, r26, r24
00312c  9f838b00  addli r7, r23, 64
003130  ca820d02  vloads.mz vr5{mr1}, 0(r27)
003134  1f8e8d00  addli r28, r27, 64
003138  4a030e02  vloads.mz vr6{mr1}, 0(r28)
00313c  0b9e8c11  add.s r28, r25, r24
003140  c2030e02  vload.mz vr7{mr1}, 0(r28)
003144  9f068e00  addli r13, r28, 64
003148  42840602  vload.mz vr8{mr1}, 0(r13)
00314c  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
003150  92320002  vadd.s.mz vr5{mr1}, zero, vr0
003154  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
003158  06b40300  vfp162float_l.rn vr8, vr7
00315c  86f30300  vfp162float_h.rn vr7, vr7
003160  86340300  vfp162float_l.rn vr9, vr6
003164  06730300  vfp162float_h.rn vr6, vr6
003168  86120400  vfloat2fp16_l.rn vr5, vr8
00316c  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
003170  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
003174  12340002  vadd.s.mz vr8{mr1}, zero, vr0
003178  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
00317c  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
003180  06940400  vfloat2fp16_l.rn vr8, vr9
003184  86d20300  vfloat2fp16_h.rn vr5, vr7
003188  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
00318c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
003190  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
003194  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003198  06540300  vfloat2fp16_h.rn vr8, vr6
00319c  46005e02  vstore.mz vr5{mr1}, 0(r28)
0031a0  46808602  vstore.mz vr8{mr1}, 0(r13)
0031a4  4b5b7bfe  ble.s r22, r7, -300
0031a8  9f830d01  addli r7, r27, 128
0031ac  9f060e01  addli r13, r28, 128
0031b0  9f8b0b01  addli r23, r23, 128
0031b4  1f0d0d02  addli r26, r26, 256
0031b8  9f8c0c02  addli r25, r25, 256
0031bc  ca820302  vloads.mz vr5{mr1}, 0(r7)
0031c0  9f838d01  addli r7, r27, 192
0031c4  c2830602  vload.mz vr7{mr1}, 0(r13)
0031c8  4a830302  vloads.mz vr6{mr1}, 0(r7)
0031cc  9f038e01  addli r7, r28, 192
0031d0  42840302  vload.mz vr8{mr1}, 0(r7)
0031d4  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
0031d8  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0031dc  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
0031e0  12330002  vadd.s.mz vr6{mr1}, zero, vr0
0031e4  86b40300  vfp162float_l.rn vr9, vr7
0031e8  86f30300  vfp162float_h.rn vr7, vr7
0031ec  86920400  vfloat2fp16_l.rn vr5, vr9
0031f0  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0031f4  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0031f8  86340400  vfp162float_l.rn vr9, vr8
0031fc  06740400  vfp162float_h.rn vr8, vr8
003200  06930400  vfloat2fp16_l.rn vr6, vr9
003204  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
003208  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
00320c  86d20300  vfloat2fp16_h.rn vr5, vr7
003210  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
003214  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
003218  06530400  vfloat2fp16_h.rn vr6, vr8
00321c  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
003220  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003224  46805602  vstore.mz vr5{mr1}, 0(r13)
003228  46806302  vstore.mz vr6{mr1}, 0(r7)
00322c  bffb6bff  blt.s r23, r22, -260
003230  5bc9ffff  j -440
003234  9f090000  addli r19, zero, 0
003238  1f0a0000  addli r20, zero, 0
00323c  00a00000  mfence { lm }
003240  3f8767fe  blt.s r15, r6, -576
003244  0f0a3a18  div.f.rn r20, r20, r3
003248  8f893918  div.f.rn r19, r19, r3
00324c  e3033f00  loadli.w r7,  24(r30)
003250  1f0b0000  addli r22, zero, 0
003254  8b6a4a21  mul.f.rn r21, r20, r20
003258  0b6a0a58  neg.f r20, r20
00325c  8be95919  sub.f.rn r19, r19, r21
003260  9f0a8fd7  addli r21, r30, -5184
003264  8be97910  add.f.rn r19, r19, r7
003268  ab03803f  lui r7, 260096
00326c  8f890908  sqrt.f.rn r19, r19
003270  8f893319  div.f.rn r19, r7, r19
003274  c2800a02  vload.mz vr1{mr1}, 0(r21)
003278  9f0b4b00  addli r23, r22, 32
00327c  06b10000  vfp162float_l.rn vr2, vr1
003280  86f00000  vfp162float_h.rn vr1, vr1
003284  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003288  92111a02  vadd.f.mz.rn vr3{mr1}, r20, vr1
00328c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003290  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003294  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
003298  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
00329c  06120100  vfloat2fp16_l.rn vr4, vr2
0032a0  06d20100  vfloat2fp16_h.rn vr4, vr3
0032a4  46804a02  vstore.mz vr4{mr1}, 0(r21)
0032a8  4be577ff  ble.s r15, r23, -680
0032ac  9f8b8a00  addli r23, r21, 64
0032b0  1f0b8b00  addli r22, r22, 64
0032b4  9f8a0a01  addli r21, r21, 128
0032b8  42810b02  vload.mz vr2{mr1}, 0(r23)
0032bc  86310100  vfp162float_l.rn vr3, vr2
0032c0  06710100  vfp162float_h.rn vr2, vr2
0032c4  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
0032c8  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
0032cc  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
0032d0  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
0032d4  86900100  vfloat2fp16_l.rn vr1, vr3
0032d8  86500100  vfloat2fp16_h.rn vr1, vr2
0032dc  46801b02  vstore.mz vr1{mr1}, 0(r23)
0032e0  3f5efbfe  blt.s r22, r15, -108
0032e4  dba3ffff  j -740
0032e8  80300002  core_id r1
0032ec  1f210000  addli r2, zero, 2
0032f0  37a02018  beq r1, r2, 12296
0032f4  1f110000  addli r2, zero, 1
0032f8  37922014  beq r1, r2, 10372
0032fc  3be00018  bneq r1, zero, 12312
003300  63012f00  loadli.w r2,  16(r30)
003304  ab0100f0  lui r3, 983040
003308  1b312100  slli r2, r2, 2
00330c  17113100  or r2, r2, r3
003310  ab710200  lui r3, 39
003314  9f810108  addli r3, r3, 1024
003318  7f013200  l_gm2sm r2, r3, 0(r[5:6])
00331c  5bff0500  j 12280
003320  80300002  core_id r1
003324  bb800000  bneq r1, zero, 32
003328  63012f00  loadli.w r2,  16(r30)
00332c  ab0100f0  lui r3, 983040
003330  1b312100  slli r2, r2, 2
003334  17113100  or r2, r2, r3
003338  abd10200  lui r3, 45
00333c  9f8101f0  addli r3, r3, -2048
003340  7f013200  l_gm2sm r2, r3, 0(r[5:6])
003344  2bf10000  lui r2, 15
003348  e3411f00  loadli.w r3,  12(r30)
00334c  00200300  mfence { sm, gm }
003350  1b11f1ff  ori r2, r2, 4095
003354  80210104  csr_set csr3, r2
003358  00d00100  sync_group
00335c  cb9e1118  ble.s r3, r1, 13220
003360  e3012f00  loadli.w r3,  16(r30)
003364  e3422f00  loadli.w r5,  20(r30)
003368  abf4ffff  lui r9, 1048575
00336c  abd80200  lui r17, 45
003370  1f0b8fd7  addli r22, r30, -5184
003374  1f140000  addli r8, zero, 1
003378  1f050002  addli r10, zero, 256
00337c  9f050001  addli r11, zero, 128
003380  1f068000  addli r12, zero, 64
003384  9f064000  addli r13, zero, 32
003388  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00338c  9b94f4ff  ori r9, r9, 4095
003390  9f8808f0  addli r17, r17, -2048
003394  0b925110  add.s r4, r3, r5
003398  1bb12100  slli r2, r3, 2
00339c  b3810108  fix2float.rn r3, r3
0033a0  1f73f2ff  addli r6, r4, -1
0033a4  1bb22200  slli r4, r5, 2
0033a8  67043fd6  storeli.w r3, -5312(r30)
0033ac  9f010fd7  addli r3, r30, -5248
0033b0  8b125330  div.s r5, r6, r5
0033b4  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0033b8  5b070000  j 56
0033bc  00a00000  mfence { lm }
0033c0  6b530f00  load.d r[7:8], 0(r30)
0033c4  2b0800f0  lui r16, 983040
0033c8  1f0b8fd7  addli r22, r30, -5184
0033cc  005a0102  load_param_i r20, 2
0033d0  17180101  or r16, r2, r16
0033d4  8b101a10  add.s r1, r20, r1
0033d8  0b292311  add.ul r[19:20], r[7:8], r[19:20]
0033dc  7f386901  s_lm2gm r16, r22, 0(r[19:20])
0033e0  00a00200  mfence { lm, gm }
0033e4  e3411f00  loadli.w r3,  12(r30)
0033e8  3fa03000  blt.s r1, r3, 8
0033ec  db620600  j 13076
0033f0  e3011f00  loadli.w r3,  8(r30)
0033f4  0b983010  add.s r16, r1, r3
0033f8  9f210000  addli r3, zero, 2
0033fc  0b18f820  mul.s r16, r16, r15
003400  33190828  sext_int2long r[19:20], r16
003404  2b0800f0  lui r16, 983040
003408  17393902  sll.d r[19:20], r[19:20], r3
00340c  9f017fd6  addli r3, r30, -5320
003410  17180101  or r16, r2, r16
003414  6bd30100  load.d r[7:8], 0(r3)
003418  0b2a2311  add.ul r[21:22], r[7:8], r[19:20]
00341c  7f286a01  l_gm2lm r16, r22, 0(r[21:22])
003420  00a00200  mfence { lm, gm }
003424  bf978200  blt.s r5, r8, 484
003428  9f0a0000  addli r21, zero, 0
00342c  1f0a0000  addli r20, zero, 0
003430  1f0b0000  addli r22, zero, 0
003434  db0c0000  j 100
003438  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
00343c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003440  1f1b0b00  addli r22, r22, 1
003444  6a7105c0  vsrl.p vr2, r10, vr0
003448  ea7115c0  vsrl.p vr3, r10, vr1
00344c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003450  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003454  6af105c0  vsrl.p vr2, r11, vr0
003458  eaf115c0  vsrl.p vr3, r11, vr1
00345c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003460  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003464  6a7106c0  vsrl.p vr2, r12, vr0
003468  ea7116c0  vsrl.p vr3, r12, vr1
00346c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003470  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003474  6af106c0  vsrl.p vr2, r13, vr0
003478  eaf116c0  vsrl.p vr3, r13, vr1
00347c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003480  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003484  fa110040  vextracti.f r3, 0(vr0)
003488  7a930040  vextracti.f r6, 0(vr1)
00348c  8bea3a10  add.f.rn r21, r21, r3
003490  0b6a6a10  add.f.rn r20, r20, r6
003494  b7755b00  beq r22, r5, 380
003498  1f080b00  addli r16, r22, 0
00349c  3730a700  beq r14, r10, 12
0034a0  17289b00  xor r16, r22, r9
0034a4  0b980211  add.s r16, r5, r16
0034a8  9f010fd7  addli r3, r30, -5248
0034ac  8b1be820  mul.s r23, r16, r14
0034b0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0034b4  8b9b7719  sub.s r23, r15, r23
0034b8  8b9beb40  min.s r23, r23, r14
0034bc  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0034c0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0034c4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0034c8  bfcd8bfe  blt.s r23, r8, -144
0034cc  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0034d0  1f0c0000  addli r24, zero, 0
0034d4  8b1c0221  mul.s r25, r4, r16
0034d8  1f0d8fd7  addli r26, r30, -5184
0034dc  9f8d0800  addli r27, r17, 0
0034e0  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0034e4  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0034e8  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0034ec  0b989d11  add.s r16, r27, r25
0034f0  0b1e9d11  add.s r28, r26, r25
0034f4  1f038800  addli r6, r16, 64
0034f8  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
0034fc  9f038801  addli r7, r16, 192
003500  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
003504  9f018e01  addli r3, r28, 192
003508  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
00350c  1f030801  addli r6, r16, 128
003510  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
003514  9f030e01  addli r7, r28, 128
003518  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
00351c  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
003520  c2950302  vload_mask16.mz vr11{mr1}, 0(r7)
003524  1f038e00  addli r6, r28, 64
003528  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
00352c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
003530  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
003534  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
003538  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
00353c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003540  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003544  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
003548  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
00354c  1f038c00  addli r6, r24, 64
003550  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003554  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
003558  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00355c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
003560  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003564  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
003568  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
00356c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
003570  4bab6bfe  ble.s r23, r6, -312
003574  1f030802  addli r6, r16, 256
003578  9f038802  addli r7, r16, 320
00357c  9f010e02  addli r3, r28, 256
003580  1f0c0c01  addli r24, r24, 128
003584  9f8d0d04  addli r27, r27, 512
003588  1f0d0d04  addli r26, r26, 512
00358c  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
003590  1f030803  addli r6, r16, 384
003594  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
003598  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
00359c  9f038e02  addli r7, r28, 320
0035a0  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
0035a4  1f038803  addli r6, r16, 448
0035a8  1f088e03  addli r16, r28, 448
0035ac  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0035b0  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
0035b4  1f030e03  addli r6, r28, 384
0035b8  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0035bc  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0035c0  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
0035c4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0035c8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0035cc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0035d0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0035d4  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0035d8  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
0035dc  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0035e0  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0035e4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0035e8  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
0035ec  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0035f0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0035f4  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0035f8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0035fc  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
003600  bf3b7cff  blt.s r24, r23, -276
003604  dbc6ffff  j -460
003608  1f0a0000  addli r20, zero, 0
00360c  9f0a0000  addli r21, zero, 0
003610  00a00000  mfence { lm }
003614  bfa687fe  blt.s r15, r8, -600
003618  e3018fd6  loadli.w r3,  -5312(r30)
00361c  1f0b0000  addli r22, zero, 0
003620  8f8a3a18  div.f.rn r21, r21, r3
003624  0f083a18  div.f.rn r16, r20, r3
003628  e3013f00  loadli.w r3,  24(r30)
00362c  0bea5a21  mul.f.rn r20, r21, r21
003630  0b684819  sub.f.rn r16, r16, r20
003634  0bea0a58  neg.f r20, r21
003638  9f0a8fd7  addli r21, r30, -5184
00363c  0b683810  add.f.rn r16, r16, r3
003640  ab01803f  lui r3, 260096
003644  0f080808  sqrt.f.rn r16, r16
003648  0f880119  div.f.rn r16, r3, r16
00364c  9f8b8a00  addli r23, r21, 64
003650  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
003654  1f0c4b00  addli r24, r22, 32
003658  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
00365c  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003660  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003664  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003668  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
00366c  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
003670  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
003674  4ba587ff  ble.s r15, r24, -696
003678  9f8b0a01  addli r23, r21, 128
00367c  1f8c8a01  addli r24, r21, 192
003680  1f0b8b00  addli r22, r22, 64
003684  9f8a0a02  addli r21, r21, 256
003688  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
00368c  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
003690  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003694  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003698  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
00369c  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
0036a0  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
0036a4  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
0036a8  bf1efbfe  blt.s r22, r15, -92
0036ac  5ba2ffff  j -752
0036b0  00310002  core_id r2
0036b4  ab630000  lui r7, 6
0036b8  9f100000  addli r1, zero, 1
0036bc  1f038fd7  addli r6, r30, -5184
0036c0  1f048000  addli r8, zero, 64
0036c4  1f050010  addli r10, zero, 2048
0036c8  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
0036cc  9b315100  slli r3, r2, 5
0036d0  00510102  load_param_i r2, 2
0036d4  9f830308  addli r7, r7, 1024
0036d8  9b345100  slli r9, r2, 5
0036dc  b3850128  zext_int2long r[12:13], r3
0036e0  ab0600f0  lui r13, 983040
0036e4  97b51502  sll.d r[12:13], r[12:13], r1
0036e8  9716d400  or r13, r8, r13
0036ec  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
0036f0  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
0036f4  9bb52100  slli r11, r3, 2
0036f8  8b913410  add.s r3, r9, r3
0036fc  00a00200  mfence { lm, gm }
003700  c2000302  vload.mz vr1{mr1}, 0(r6)
003704  1386a104  setlt.u r12, r3, r10
003708  8b957510  add.s r11, r11, r7
00370c  9f868500  addli r13, r11, 64
003710  66c11180  vmerge_l.hf vr2, vr3, vr1
003714  e6c011a0  vmerge_h.hf vr1, vr3, vr1
003718  4e902502  vstores_mask16.mz vr2{mr1}, 0(r11)
00371c  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
003720  bb7e06fe  bneq r12, zero, -68
003724  abf00000  lui r1, 15
003728  80310002  core_id r3
00372c  9f020006  addli r5, zero, 768
003730  00a00300  mfence { lm, sm, gm }
003734  9b90f0ff  ori r1, r1, 4095
003738  9b8d1100  andi r27, r3, 1
00373c  9f010006  addli r3, zero, 768
003740  80a10004  csr_set csr3, r1
003744  00d00100  sync_group
003748  37a00d00  beq r27, zero, 8
00374c  9f02000a  addli r5, zero, 1280
003750  63421f00  loadli.w r4,  12(r30)
003754  9f100000  addli r1, zero, 1
003758  bf2e1216  blt.s r4, r1, 12200
00375c  9b451100  srli r11, r2, 1
003760  00310002  core_id r2
003764  8b913d20  mul.s r3, r27, r3
003768  1f078fd7  addli r14, r30, -5184
00376c  9bbb1200  slli r23, r5, 1
003770  1f040000  addli r8, zero, 0
003774  9f797000  addli r19, zero, 63
003778  9f0a0005  addli r21, zero, 640
00377c  2b09803f  lui r18, 260096
003780  1f0a2000  addli r20, zero, 16
003784  9f340000  addli r9, zero, 3
003788  2bee7f00  lui r28, 2046
00378c  9f571000  addli r15, zero, 13
003790  2be50700  lui r10, 126
003794  1f221000  addli r4, zero, 10
003798  1f0b0003  addli r22, zero, 384
00379c  1b461100  srli r12, r2, 1
0037a0  1bb12200  slli r2, r5, 2
0037a4  67083fd4  storeli.w r3, -5504(r30)
0037a8  9f814200  addli r3, r5, 32
0037ac  0b11e110  add.s r2, r2, r14
0037b0  e70f3fd2  storeli.w r3, -5640(r30)
0037b4  8b91eb10  add.s r3, r23, r14
0037b8  1f0181ff  addli r2, r2, -64
0037bc  674f2fd2  storeli.w r2, -5644(r30)
0037c0  1f8181ff  addli r2, r3, -64
0037c4  abf100fc  lui r3, 1032207
0037c8  670f2fd2  storeli.w r2, -5648(r30)
0037cc  2bf1ffff  lui r2, 1048575
0037d0  9b9801c0  ori r17, r3, 3072
0037d4  00a00000  mfence { lm }
0037d8  e3411f00  loadli.w r3,  12(r30)
0037dc  e74ebfd3  storeli.w r27, -5652(r30)
0037e0  6704bfd4  storeli.w r11, -5568(r30)
0037e4  6700cfd4  storeli.w r12, -5632(r30)
0037e8  e74f7fd3  storeli.w r23, -5636(r30)
0037ec  1b1101f8  ori r2, r2, 3968
0037f0  e70e2fd2  storeli.w r2, -5656(r30)
0037f4  2bf10000  lui r2, 15
0037f8  1b11f1ff  ori r2, r2, 4095
0037fc  67082fd6  storeli.w r2, -5248(r30)
003800  2b710000  lui r2, 7
003804  1b13f1ff  ori r6, r2, 4095
003808  2b01ff03  lui r2, 16368
00380c  1b18f13f  ori r16, r2, 1023
003810  1f018fd5  addli r2, r30, -5440
003814  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
003818  db040000  j 36
00381c  00a00300  mfence { lm, sm, gm }
003820  63010fd7  loadli.w r2,  -5248(r30)
003824  80210104  csr_set csr3, r2
003828  00d00100  sync_group
00382c  e3411f00  loadli.w r3,  12(r30)
003830  0b14b410  add.s r8, r8, r11
003834  3f203400  blt.s r8, r3, 8
003838  db86faff  j -11212
00383c  0b11c410  add.s r2, r8, r12
003840  4bff21fe  ble.s r3, r2, -36
003844  e3011f00  loadli.w r3,  8(r30)
003848  0b113110  add.s r2, r2, r3
00384c  8b01b430  div.u r3, r8, r11
003850  e3050fd5  loadli.w r11,  -5504(r30)
003854  1b31b100  slli r2, r2, 11
003858  1711b100  or r2, r2, r11
00385c  33160128  sext_int2long r[13:14], r2
003860  2b0100f0  lui r2, 983040
003864  9bb16100  slli r3, r3, 6
003868  173c1602  sll.d r[25:26], r[13:14], r1
00386c  9f067fd6  addli r13, r30, -5320
003870  17912b00  or r2, r23, r2
003874  9b810104  andi r3, r3, 64
003878  ebd50600  load.d r[12:13], 0(r13)
00387c  9f068fd6  addli r13, r30, -5312
003880  73b08601  store.d r[25:26], 0(r13)
003884  0ba68511  add.ul r[13:14], r[12:13], r[25:26]
003888  7f21e600  l_gm2lm r2, r14, 0(r[13:14])
00388c  00310002  core_id r2
003890  00a00200  mfence { lm, gm }
003894  179d2100  or r26, r3, r2
003898  6301efd3  loadli.w r2,  -5648(r30)
00389c  e341efd3  loadli.w r3,  -5644(r30)
0038a0  6306ffd3  loadli.w r12,  -5640(r30)
0038a4  c2000102  vload.mz vr1{mr1}, 0(r2)
0038a8  1f06c6ff  addli r12, r12, -32
0038ac  9f8b81ff  addli r23, r3, -64
0038b0  1f0181ff  addli r2, r2, -64
0038b4  9386c904  setlt.u r13, r19, r12
0038b8  66c111a0  vmerge_h.hf vr2, vr3, vr1
0038bc  e6c01180  vmerge_l.hf vr1, vr3, vr1
0038c0  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
0038c4  9f8101ff  addli r3, r3, -128
0038c8  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
0038cc  3bef06fe  bneq r13, zero, -40
0038d0  1f010000  addli r2, zero, 0
0038d4  00a00000  mfence { lm }
0038d8  3ba60d00  bneq r27, zero, 392
0038dc  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0038e0  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0038e4  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0038e8  e301dfd3  loadli.w r3,  -5656(r30)
0038ec  8b167110  add.s r13, r2, r7
0038f0  0b162710  add.s r12, r14, r2
0038f4  9f810101  addli r3, r3, 128
0038f8  1f010104  addli r2, r2, 512
0038fc  9f850601  addli r11, r13, 128
003900  4a900602  vloads_mask16.mz vr0{mr1}, 0(r13)
003904  9f8b8600  addli r23, r13, 64
003908  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
00390c  1f0c8601  addli r24, r12, 192
003910  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
003914  9f858601  addli r11, r13, 192
003918  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
00391c  9f0b8600  addli r23, r12, 64
003920  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
003924  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
003928  9f050601  addli r11, r12, 128
00392c  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
003930  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
003934  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
003938  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00393c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
003940  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
003944  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003948  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
00394c  46908502  vstore_mask16.mz vr8{mr1}, 0(r11)
003950  9f850602  addli r11, r13, 256
003954  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003958  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00395c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003960  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
003964  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
003968  9f858602  addli r11, r13, 320
00396c  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
003970  1f0c0602  addli r24, r12, 256
003974  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003978  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00397c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003980  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
003984  9f850603  addli r11, r13, 384
003988  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
00398c  9f868603  addli r13, r13, 448
003990  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003994  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
003998  9f058602  addli r11, r12, 320
00399c  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
0039a0  9f060603  addli r13, r12, 384
0039a4  1f068603  addli r12, r12, 448
0039a8  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
0039ac  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0039b0  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
0039b4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0039b8  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0039bc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0039c0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0039c4  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
0039c8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0039cc  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0039d0  93855105  setlt.u r11, r3, r21
0039d4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0039d8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0039dc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0039e0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0039e4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0039e8  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
0039ec  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0039f0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0039f4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0039f8  bbdb05fe  bneq r11, zero, -268
0039fc  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003a00  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003a04  1f010002  addli r2, zero, 256
003a08  6a7101c0  vsrl.p vr2, r2, vr0
003a0c  ea7111c0  vsrl.p vr3, r2, vr1
003a10  1f010001  addli r2, zero, 128
003a14  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a18  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a1c  6a7101c0  vsrl.p vr2, r2, vr0
003a20  ea7111c0  vsrl.p vr3, r2, vr1
003a24  1f018000  addli r2, zero, 64
003a28  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a2c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a30  6a7101c0  vsrl.p vr2, r2, vr0
003a34  ea7111c0  vsrl.p vr3, r2, vr1
003a38  1f014000  addli r2, zero, 32
003a3c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a40  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a44  6a7101c0  vsrl.p vr2, r2, vr0
003a48  ea7111c0  vsrl.p vr3, r2, vr1
003a4c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a50  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a54  7a110040  vextracti.f r2, 0(vr0)
003a58  fa910040  vextracti.f r3, 0(vr1)
003a5c  5b660000  j 816
003a60  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003a64  abf1ffff  lui r3, 1048575
003a68  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003a6c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003a70  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003a74  9b9101f8  ori r3, r3, 3968
003a78  8b962310  add.s r13, r7, r2
003a7c  0b162710  add.s r12, r14, r2
003a80  9f810101  addli r3, r3, 128
003a84  1f010104  addli r2, r2, 512
003a88  9f850631  addli r11, r13, 6272
003a8c  9f8b0630  addli r23, r13, 6144
003a90  1f8c8631  addli r24, r13, 6336
003a94  9f0d0618  addli r27, r12, 3072
003a98  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
003a9c  ca920b02  vloads_mask16.mz vr5{mr1}, 0(r23)
003aa0  9f8b8630  addli r23, r13, 6208
003aa4  ca140c02  vloads_mask16.mz vr9{mr1}, 0(r24)
003aa8  9f058618  addli r11, r12, 3136
003aac  1f0c8619  addli r24, r12, 3264
003ab0  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
003ab4  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
003ab8  9f0b0619  addli r23, r12, 3200
003abc  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
003ac0  c2950502  vload_mask16.mz vr11{mr1}, 0(r11)
003ac4  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
003ac8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003acc  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
003ad0  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
003ad4  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
003ad8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003adc  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
003ae0  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
003ae4  9f8b0632  addli r23, r13, 6400
003ae8  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
003aec  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
003af0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003af4  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
003af8  1f0c061a  addli r24, r12, 3328
003afc  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
003b00  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
003b04  9f05061b  addli r11, r12, 3456
003b08  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
003b0c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
003b10  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
003b14  9f8b8632  addli r23, r13, 6464
003b18  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003b1c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003b20  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
003b24  9f8b0633  addli r23, r13, 6528
003b28  9f868633  addli r13, r13, 6592
003b2c  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
003b30  9f0b861a  addli r23, r12, 3392
003b34  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
003b38  1f06861b  addli r12, r12, 3520
003b3c  93866105  setlt.u r13, r3, r22
003b40  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
003b44  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003b48  c2930502  vload_mask16.mz vr7{mr1}, 0(r11)
003b4c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003b50  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
003b54  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003b58  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003b5c  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
003b60  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003b64  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
003b68  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003b6c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003b70  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003b74  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003b78  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003b7c  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
003b80  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
003b84  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003b88  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003b8c  bbbb06fe  bneq r13, zero, -276
003b90  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003b94  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003b98  1f010002  addli r2, zero, 256
003b9c  abf5ffff  lui r11, 1048575
003ba0  9f0b0000  addli r23, zero, 0
003ba4  1b9605f8  ori r12, r11, 3968
003ba8  ea7111c0  vsrl.p vr3, r2, vr1
003bac  6a7101c0  vsrl.p vr2, r2, vr0
003bb0  1f010001  addli r2, zero, 128
003bb4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003bb8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003bbc  ea7111c0  vsrl.p vr3, r2, vr1
003bc0  6a7101c0  vsrl.p vr2, r2, vr0
003bc4  1f018000  addli r2, zero, 64
003bc8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003bcc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003bd0  ea7111c0  vsrl.p vr3, r2, vr1
003bd4  6a7101c0  vsrl.p vr2, r2, vr0
003bd8  1f014000  addli r2, zero, 32
003bdc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003be0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003be4  ea7111c0  vsrl.p vr3, r2, vr1
003be8  6a7101c0  vsrl.p vr2, r2, vr0
003bec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003bf0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003bf4  fa910040  vextracti.f r3, 0(vr1)
003bf8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003bfc  7a110040  vextracti.f r2, 0(vr0)
003c00  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003c04  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003c08  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003c0c  8b9d7311  add.s r27, r7, r23
003c10  8b167711  add.s r13, r14, r23
003c14  1f060601  addli r12, r12, 128
003c18  9f8b0b04  addli r23, r23, 512
003c1c  9f850d18  addli r11, r27, 3072
003c20  1f8c0d19  addli r24, r27, 3200
003c24  42940602  vload_mask16.mz vr8{mr1}, 0(r13)
003c28  9f8c8601  addli r25, r13, 192
003c2c  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
003c30  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
003c34  9f858d18  addli r11, r27, 3136
003c38  1f8c8d19  addli r24, r27, 3264
003c3c  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
003c40  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
003c44  9f850601  addli r11, r13, 128
003c48  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
003c4c  1f8c8600  addli r24, r13, 64
003c50  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
003c54  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
003c58  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
003c5c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
003c60  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
003c64  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
003c68  46908502  vstore_mask16.mz vr8{mr1}, 0(r11)
003c6c  9f850d1a  addli r11, r27, 3328
003c70  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003c74  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003c78  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003c7c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003c80  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
003c84  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
003c88  9f858d1a  addli r11, r27, 3392
003c8c  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
003c90  9f8c0602  addli r25, r13, 256
003c94  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003c98  1f8c0603  addli r24, r13, 384
003c9c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003ca0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003ca4  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
003ca8  9f850d1b  addli r11, r27, 3456
003cac  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003cb0  9f8d8d1b  addli r27, r27, 3520
003cb4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003cb8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003cbc  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
003cc0  9f858602  addli r11, r13, 320
003cc4  4a950d02  vloads_mask16.mz vr10{mr1}, 0(r27)
003cc8  9f868603  addli r13, r13, 448
003ccc  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
003cd0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003cd4  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
003cd8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003cdc  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
003ce0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003ce4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003ce8  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003cec  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003cf0  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
003cf4  93055605  setlt.u r11, r12, r21
003cf8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003cfc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003d00  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003d04  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003d08  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003d0c  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003d10  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
003d14  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003d18  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003d1c  bbcb05fe  bneq r11, zero, -272
003d20  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003d24  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003d28  9f050002  addli r11, zero, 256
003d2c  e34ddfd3  loadli.w r27,  -5652(r30)
003d30  6af105c0  vsrl.p vr2, r11, vr0
003d34  eaf115c0  vsrl.p vr3, r11, vr1
003d38  9f050001  addli r11, zero, 128
003d3c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003d40  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003d44  6af105c0  vsrl.p vr2, r11, vr0
003d48  eaf115c0  vsrl.p vr3, r11, vr1
003d4c  9f058000  addli r11, zero, 64
003d50  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003d54  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003d58  6af105c0  vsrl.p vr2, r11, vr0
003d5c  eaf115c0  vsrl.p vr3, r11, vr1
003d60  9f054000  addli r11, zero, 32
003d64  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003d68  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003d6c  6af105c0  vsrl.p vr2, r11, vr0
003d70  eaf115c0  vsrl.p vr3, r11, vr1
003d74  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003d78  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003d7c  fa150040  vextracti.f r11, 0(vr0)
003d80  7a960040  vextracti.f r12, 0(vr1)
003d84  0b61b110  add.f.rn r2, r2, r11
003d88  8be1c110  add.f.rn r3, r3, r12
003d8c  2b860000  lui r12, 8
003d90  ab860000  lui r13, 8
003d94  9b352d00  slli r11, r26, 2
003d98  1f060608  addli r12, r12, 1024
003d9c  9f86060c  addli r13, r13, 1536
003da0  9f0b0600  addli r23, r12, 0
003da4  1f8c0600  addli r24, r13, 0
003da8  0b967511  add.s r12, r11, r23
003dac  8b968511  add.s r13, r11, r24
003db0  73e03600  stores.w r3, 0(r13)
003db4  73602600  stores.w r2, 0(r12)
003db8  9b914500  ori r3, r11, 4
003dbc  9f060000  addli r13, zero, 0
003dc0  00a00300  mfence { lm, sm, gm }
003dc4  63010fd7  loadli.w r2,  -5248(r30)
003dc8  8b957111  add.s r11, r3, r23
003dcc  8b918111  add.s r3, r3, r24
003dd0  80210104  csr_set csr3, r2
003dd4  1b01ed07  andi r2, r26, 126
003dd8  00d00100  sync_group
003ddc  efc50500  loads.w r11, 0(r11)
003de0  efc10100  loads.w r3, 0(r3)
003de4  1b312100  slli r2, r2, 2
003de8  0b167111  add.s r12, r2, r23
003dec  0b118111  add.s r2, r2, r24
003df0  6f460600  loads.w r12, 0(r12)
003df4  6f410100  loads.w r2, 0(r2)
003df8  8be5c510  add.f.rn r11, r11, r12
003dfc  2b06003a  lui r12, 237568
003e00  0be12110  add.f.rn r2, r3, r2
003e04  8be1c520  mul.f.rn r3, r11, r12
003e08  0b61c120  mul.f.rn r2, r2, r12
003e0c  1f068fd7  addli r12, r30, -5184
003e10  8be53120  mul.f.rn r11, r3, r3
003e14  8be10158  neg.f r3, r3
003e18  0b61b118  sub.f.rn r2, r2, r11
003e1c  e3053f00  loadli.w r11,  24(r30)
003e20  0b61b110  add.f.rn r2, r2, r11
003e24  0f010108  sqrt.f.rn r2, r2
003e28  0f012918  div.f.rn r2, r18, r2
003e2c  9f058600  addli r11, r12, 64
003e30  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
003e34  9f8b4600  addli r23, r13, 32
003e38  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
003e3c  938b7207  setle.u r23, r5, r23
003e40  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
003e44  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
003e48  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
003e4c  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
003e50  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
003e54  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
003e58  bbf00b00  bneq r23, zero, 60
003e5c  9f050601  addli r11, r12, 128
003e60  9f0b8601  addli r23, r12, 192
003e64  9f868600  addli r13, r13, 64
003e68  1f060602  addli r12, r12, 256
003e6c  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
003e70  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
003e74  138c5604  setlt.u r24, r13, r5
003e78  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
003e7c  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
003e80  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
003e84  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
003e88  46900502  vstore_mask16.mz vr0{mr1}, 0(r11)
003e8c  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
003e90  3b7e0cfe  bneq r24, zero, -100
003e94  1f018fd7  addli r2, r30, -5184
003e98  9f018fd7  addli r3, r30, -5184
003e9c  1f060000  addli r12, zero, 0
003ea0  00a00000  mfence { lm }
003ea4  9f858100  addli r11, r3, 64
003ea8  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
003eac  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003eb0  1f064600  addli r12, r12, 32
003eb4  9f810101  addli r3, r3, 128
003eb8  ea211a22  vor.u.mz vr3{mr1}, r20, vr1
003ebc  42910502  vload_mask16.mz vr2{mr1}, 0(r11)
003ec0  93055604  setlt.u r11, r12, r5
003ec4  6eb201c2  vsrl.s.mz vr4{mr1}, vr3, vr0
003ec8  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003ecc  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
003ed0  eab13002  vand.s.mz vr3{mr1}, r1, vr3
003ed4  16304002  vadd.s.mz vr0{mr1}, vr0, vr4
003ed8  6aa21422  vor.u.mz vr4{mr1}, r9, vr1
003edc  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
003ee0  eaa11722  vor.u.mz vr3{mr1}, r15, vr1
003ee4  ea201222  vor.u.mz vr1{mr1}, r4, vr1
003ee8  12300302  vadd.s.mz vr0{mr1}, r6, vr0
003eec  12312302  vadd.s.mz vr2{mr1}, r6, vr2
003ef0  eeb201c2  vsrl.s.mz vr5{mr1}, vr3, vr0
003ef4  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
003ef8  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003efc  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
003f00  6a325502  vand.s.mz vr4{mr1}, r10, vr5
003f04  6a300e02  vand.s.mz vr0{mr1}, r28, vr0
003f08  ea313502  vand.s.mz vr3{mr1}, r10, vr3
003f0c  6a312e02  vand.s.mz vr2{mr1}, r28, vr2
003f10  6a300922  vor.s.mz vr0{mr1}, r18, vr0
003f14  6a324922  vor.s.mz vr4{mr1}, r18, vr4
003f18  ea313922  vor.s.mz vr3{mr1}, r18, vr3
003f1c  6a312922  vor.s.mz vr2{mr1}, r18, vr2
003f20  06100020  vfloat2fp16_l.rz vr0, vr0
003f24  86d10120  vfloat2fp16_h.rz vr3, vr3
003f28  06500120  vfloat2fp16_h.rz vr0, vr2
003f2c  86110220  vfloat2fp16_l.rz vr3, vr4
003f30  6a300802  vand.s.mz vr0{mr1}, r16, vr0
003f34  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
003f38  eab01802  vand.s.mz vr1{mr1}, r17, vr1
003f3c  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
003f40  46000102  vstore.mz vr0{mr1}, 0(r2)
003f44  1f018100  addli r2, r2, 64
003f48  3bfd05fe  bneq r11, zero, -164
003f4c  9f018fd6  addli r3, r30, -5312
003f50  eb550f00  load.d r[12:13], 0(r30)
003f54  2b0100f0  lui r2, 983040
003f58  ebdb0100  load.d r[24:25], 0(r3)
003f5c  8ba57511  add.ul r[12:13], r[12:13], r[24:25]
003f60  e34bffd3  loadli.w r23,  -5636(r30)
003f64  00a00000  mfence { lm }
003f68  17912b00  or r2, r23, r2
003f6c  7fb1e500  s_lm2gm r2, r14, 0(r[12:13])
003f70  1f018fd5  addli r2, r30, -5440
003f74  00a00200  mfence { lm, gm }
003f78  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
003f7c  e3058fd4  loadli.w r11,  -5568(r30)
003f80  63060fd4  loadli.w r12,  -5632(r30)
003f84  5b15ffff  j -1880
003f88  003b0002  core_id r22
003f8c  63012f00  loadli.w r2,  16(r30)
003f90  9b305b00  slli r1, r22, 5
003f94  cb211100  ble.s r2, r1, 104
003f98  80530102  load_param_i r7, 2
003f9c  2bc40000  lui r8, 12
003fa0  1f110000  addli r2, zero, 1
003fa4  9f018fd7  addli r3, r30, -5184
003fa8  1f038000  addli r6, zero, 64
003fac  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003fb0  9bb35300  slli r7, r7, 5
003fb4  1f0404f0  addli r8, r8, -2048
003fb8  b3840028  zext_int2long r[10:11], r1
003fbc  ab0500f0  lui r11, 983040
003fc0  97b42402  sll.d r[10:11], r[10:11], r2
003fc4  9715b300  or r11, r6, r11
003fc8  8b249210  add.ul r[10:11], r[5:6], r[10:11]
003fcc  ffa53400  l_gm2lm r11, r3, 0(r[10:11])
003fd0  9bb42000  slli r9, r1, 2
003fd4  8b901310  add.s r1, r7, r1
003fd8  00a00200  mfence { lm, gm }
003fdc  c2800102  vload.mz vr1{mr1}, 0(r3)
003fe0  8b948410  add.s r9, r9, r8
003fe4  1f858400  addli r10, r9, 64
003fe8  66411080  vmerge_l.hf vr2, vr0, vr1
003fec  e64010a0  vmerge_h.hf vr1, vr0, vr1
003ff0  4e902402  vstores_mask16.mz vr2{mr1}, 0(r9)
003ff4  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
003ff8  3f8ff0fe  blt.s r1, r15, -64
003ffc  abf00000  lui r1, 15
004000  63411f00  loadli.w r2,  12(r30)
004004  00a00300  mfence { lm, sm, gm }
004008  9b90f0ff  ori r1, r1, 4095
00400c  80a10004  csr_set csr3, r1
004010  00d00100  sync_group
004014  cb3b6113  ble.s r2, r22, 9964
004018  e3002f00  loadli.w r1,  16(r30)
00401c  63412f00  loadli.w r2,  20(r30)
004020  9f038fd7  addli r7, r30, -5184
004024  1f150000  addli r10, zero, 1
004028  9f054000  addli r11, zero, 32
00402c  1f747000  addli r8, zero, 63
004030  1f080002  addli r16, zero, 256
004034  9f080001  addli r17, zero, 128
004038  1f098000  addli r18, zero, 64
00403c  ab09803f  lui r19, 260096
004040  abeb7f00  lui r23, 2046
004044  abec0700  lui r25, 126
004048  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00404c  8b912010  add.s r3, r1, r2
004050  33820008  fix2float.rn r4, r1
004054  1bb31000  slli r6, r1, 1
004058  9bb22000  slli r5, r1, 2
00405c  9f804000  addli r1, r1, 32
004060  9b342100  slli r9, r2, 2
004064  e74f1fd2  storeli.w r1, -5636(r30)
004068  8b907210  add.s r1, r5, r7
00406c  9ff1f1ff  addli r3, r3, -1
004070  67004fd4  storeli.w r4, -5632(r30)
004074  0b922130  div.s r4, r3, r2
004078  9f8080ff  addli r1, r1, -64
00407c  8b117310  add.s r3, r6, r7
004080  e70f1fd2  storeli.w r1, -5640(r30)
004084  9f8081ff  addli r1, r3, -64
004088  674f1fd2  storeli.w r1, -5644(r30)
00408c  abf0ffff  lui r1, 1048575
004090  00a00000  mfence { lm }
004094  67046fd4  storeli.w r6, -5568(r30)
004098  9b90f0ff  ori r1, r1, 4095
00409c  67041fd6  storeli.w r1, -5312(r30)
0040a0  ab700000  lui r1, 7
0040a4  9b9af0ff  ori r21, r1, 4095
0040a8  ab00ff03  lui r1, 16368
0040ac  1b9df03f  ori r26, r1, 1023
0040b0  abf000fc  lui r1, 1032207
0040b4  1b9e00c0  ori r28, r1, 3072
0040b8  9f000fd7  addli r1, r30, -5248
0040bc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0040c0  db080000  j 68
0040c4  9f010fd5  addli r3, r30, -5504
0040c8  eb500f00  load.d r[2:3], 0(r30)
0040cc  9f038fd7  addli r7, r30, -5184
0040d0  ebd20100  load.d r[6:7], 0(r3)
0040d4  00a00000  mfence { lm }
0040d8  ab0100f0  lui r3, 983040
0040dc  8ba05010  add.ul r[2:3], r[2:3], r[6:7]
0040e0  63038fd4  loadli.w r6,  -5568(r30)
0040e4  80520102  load_param_i r5, 2
0040e8  0b9b6211  add.s r22, r5, r22
0040ec  97113300  or r3, r6, r3
0040f0  ffb17000  s_lm2gm r3, r7, 0(r[2:3])
0040f4  00a00200  mfence { lm, gm }
0040f8  e3401f00  loadli.w r1,  12(r30)
0040fc  3f201b00  blt.s r22, r1, 8
004100  5bc00400  j 9728
004104  e3001f00  loadli.w r1,  8(r30)
004108  9f027fd6  addli r5, r30, -5320
00410c  8b101b10  add.s r1, r22, r1
004110  8b90f020  mul.s r1, r1, r15
004114  b3900028  sext_int2long r[2:3], r1
004118  17b6a002  sll.d r[13:14], r[2:3], r10
00411c  6bd10200  load.d r[3:4], 0(r5)
004120  ab0000f0  lui r1, 983040
004124  9f020fd5  addli r5, r30, -5504
004128  97101300  or r1, r6, r1
00412c  73b0c200  store.d r[13:14], 0(r5)
004130  0b21c110  add.ul r[3:4], r[3:4], r[13:14]
004134  ff207100  l_gm2lm r1, r7, 0(r[3:4])
004138  00a00200  mfence { lm, gm }
00413c  bff0b700  blt.s r15, r11, 60
004140  e340efd3  loadli.w r1,  -5644(r30)
004144  6301ffd3  loadli.w r2,  -5640(r30)
004148  e341ffd3  loadli.w r3,  -5636(r30)
00414c  c2800002  vload.mz vr1{mr1}, 0(r1)
004150  9f81c1ff  addli r3, r3, -32
004154  1f0381ff  addli r6, r2, -64
004158  9f8080ff  addli r1, r1, -64
00415c  93023404  setlt.u r5, r8, r3
004160  664110a0  vmerge_h.hf vr2, vr0, vr1
004164  e6401080  vmerge_l.hf vr1, vr0, vr1
004168  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
00416c  1f0101ff  addli r2, r2, -128
004170  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
004174  3bef02fe  bneq r5, zero, -40
004178  670c6fd5  storeli.w r22, -5440(r30)
00417c  00a00000  mfence { lm }
004180  bf57a200  blt.s r4, r10, 500
004184  9f010000  addli r3, zero, 0
004188  9f020000  addli r5, zero, 0
00418c  1f010000  addli r2, zero, 0
004190  db0d0000  j 108
004194  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004198  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00419c  1f110100  addli r2, r2, 1
0041a0  6a7108c0  vsrl.p vr2, r16, vr0
0041a4  ea7118c0  vsrl.p vr3, r16, vr1
0041a8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0041ac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0041b0  6af108c0  vsrl.p vr2, r17, vr0
0041b4  eaf118c0  vsrl.p vr3, r17, vr1
0041b8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0041bc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0041c0  6a7109c0  vsrl.p vr2, r18, vr0
0041c4  ea7119c0  vsrl.p vr3, r18, vr1
0041c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0041cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0041d0  6af105c0  vsrl.p vr2, r11, vr0
0041d4  eaf115c0  vsrl.p vr3, r11, vr1
0041d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0041dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0041e0  fa100040  vextracti.f r1, 0(vr0)
0041e4  7a930040  vextracti.f r6, 0(vr1)
0041e8  8be11110  add.f.rn r3, r3, r1
0041ec  9f000fd7  addli r1, r30, -5248
0041f0  8be26210  add.f.rn r5, r5, r6
0041f4  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0041f8  37164100  beq r2, r4, 388
0041fc  9f000100  addli r1, r2, 0
004200  37400701  beq r14, r16, 16
004204  e3008fd6  loadli.w r1,  -5312(r30)
004208  97201100  xor r1, r2, r1
00420c  8b101210  add.s r1, r4, r1
004210  0b93e020  mul.s r6, r1, r14
004214  12320002  vadd.s.mz vr4{mr1}, zero, vr0
004218  92310002  vadd.s.mz vr3{mr1}, zero, vr0
00421c  12310002  vadd.s.mz vr2{mr1}, zero, vr0
004220  92300002  vadd.s.mz vr1{mr1}, zero, vr0
004224  0b936718  sub.s r6, r15, r6
004228  8b13e340  min.s r7, r6, r14
00422c  bfada3fe  blt.s r7, r10, -152
004230  9f060fd7  addli r13, r30, -5248
004234  2bc60000  lui r12, 12
004238  0b931420  mul.s r6, r9, r1
00423c  1f040000  addli r8, zero, 0
004240  9f008fd7  addli r1, r30, -5184
004244  42920602  vload_mask16.mz vr4{mr1}, 0(r13)
004248  1f0606f0  addli r12, r12, -2048
00424c  92304002  vadd.s.mz vr1{mr1}, zero, vr4
004250  12314002  vadd.s.mz vr2{mr1}, zero, vr4
004254  92314002  vadd.s.mz vr3{mr1}, zero, vr4
004258  0b1a6610  add.s r20, r12, r6
00425c  8b966010  add.s r13, r1, r6
004260  1f0b8a00  addli r22, r20, 64
004264  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
004268  1f0c8a01  addli r24, r20, 192
00426c  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
004270  9f8d8601  addli r27, r13, 192
004274  4a130b02  vloads_mask16.mz vr6{mr1}, 0(r22)
004278  1f0b0a01  addli r22, r20, 128
00427c  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
004280  1f8c0601  addli r24, r13, 128
004284  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
004288  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
00428c  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
004290  1f8b8600  addli r22, r13, 64
004294  42150b02  vload_mask16.mz vr10{mr1}, 0(r22)
004298  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00429c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0042a0  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0042a4  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0042a8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0042ac  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0042b0  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
0042b4  46106b02  vstore_mask16.mz vr6{mr1}, 0(r22)
0042b8  1f0b8400  addli r22, r8, 64
0042bc  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
0042c0  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0042c4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0042c8  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0042cc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0042d0  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
0042d4  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
0042d8  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0042dc  cbea63ff  ble.s r7, r22, -328
0042e0  1f0c0a02  addli r24, r20, 256
0042e4  9f0d8a02  addli r27, r20, 320
0042e8  1f8b0602  addli r22, r13, 256
0042ec  1f040401  addli r8, r8, 128
0042f0  1f060604  addli r12, r12, 512
0042f4  9f800004  addli r1, r1, 512
0042f8  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
0042fc  1f0c0a03  addli r24, r20, 384
004300  1f0a8a03  addli r20, r20, 448
004304  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
004308  42130b02  vload_mask16.mz vr6{mr1}, 0(r22)
00430c  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
004310  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
004314  1f8a0603  addli r20, r13, 384
004318  1f8c8602  addli r24, r13, 320
00431c  9f868603  addli r13, r13, 448
004320  42150a02  vload_mask16.mz vr10{mr1}, 0(r20)
004324  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
004328  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
00432c  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
004330  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004334  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
004338  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00433c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004340  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
004344  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
004348  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
00434c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004350  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004354  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
004358  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00435c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004360  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
004364  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004368  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
00436c  bf3b74fe  blt.s r8, r7, -276
004370  dbc4ffff  j -476
004374  9f020000  addli r5, zero, 0
004378  9f010000  addli r3, zero, 0
00437c  00a00000  mfence { lm }
004380  3fd2a700  blt.s r15, r10, 148
004384  e3000fd4  loadli.w r1,  -5632(r30)
004388  0f811118  div.f.rn r2, r3, r1
00438c  8f801218  div.f.rn r1, r5, r1
004390  9f020000  addli r5, zero, 0
004394  8b612120  mul.f.rn r3, r2, r2
004398  0b610158  neg.f r2, r2
00439c  8be03018  sub.f.rn r1, r1, r3
0043a0  e3013f00  loadli.w r3,  24(r30)
0043a4  8be03010  add.f.rn r1, r1, r3
0043a8  9f018fd7  addli r3, r30, -5184
0043ac  8f800008  sqrt.f.rn r1, r1
0043b0  8f801918  div.f.rn r1, r19, r1
0043b4  1f838100  addli r6, r3, 64
0043b8  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0043bc  9f834200  addli r7, r5, 32
0043c0  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
0043c4  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0043c8  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
0043cc  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0043d0  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
0043d4  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0043d8  46102302  vstore_mask16.mz vr2{mr1}, 0(r6)
0043dc  cbe07700  ble.s r15, r7, 56
0043e0  1f830101  addli r6, r3, 128
0043e4  9f838101  addli r7, r3, 192
0043e8  9f828200  addli r5, r5, 64
0043ec  9f810102  addli r3, r3, 256
0043f0  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
0043f4  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
0043f8  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0043fc  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
004400  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004404  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
004408  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
00440c  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
004410  bf9ef2fe  blt.s r5, r15, -92
004414  00a00000  mfence { lm }
004418  1f747000  addli r8, zero, 63
00441c  1f032000  addli r6, zero, 16
004420  9f330000  addli r7, zero, 3
004424  9f561000  addli r13, zero, 13
004428  1f2a1000  addli r20, zero, 10
00442c  630b8fd5  loadli.w r22,  -5440(r30)
004430  3fd2a7fe  blt.s r15, r10, -876
004434  9f008fd7  addli r1, r30, -5184
004438  1f018fd7  addli r2, r30, -5184
00443c  9f010000  addli r3, zero, 0
004440  9f028100  addli r5, r2, 64
004444  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
004448  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00444c  9f814100  addli r3, r3, 32
004450  1f010101  addli r2, r2, 128
004454  6a221322  vor.u.mz vr4{mr1}, r6, vr1
004458  c2910202  vload_mask16.mz vr3{mr1}, 0(r5)
00445c  ee3222c2  vsrl.s.mz vr5{mr1}, vr4, vr2
004460  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
004464  ea325502  vand.s.mz vr5{mr1}, r10, vr5
004468  6a324502  vand.s.mz vr4{mr1}, r10, vr4
00446c  16315102  vadd.s.mz vr2{mr1}, vr2, vr5
004470  eaa21322  vor.u.mz vr5{mr1}, r7, vr1
004474  96b14102  vadd.s.mz vr3{mr1}, vr3, vr4
004478  6aa21622  vor.u.mz vr4{mr1}, r13, vr1
00447c  ea201a22  vor.u.mz vr1{mr1}, r20, vr1
004480  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
004484  92b13a02  vadd.s.mz vr3{mr1}, r21, vr3
004488  6e3322c2  vsrl.s.mz vr6{mr1}, vr4, vr2
00448c  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
004490  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
004494  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
004498  eab26c02  vand.s.mz vr5{mr1}, r25, vr6
00449c  6ab12b02  vand.s.mz vr2{mr1}, r23, vr2
0044a0  6ab24c02  vand.s.mz vr4{mr1}, r25, vr4
0044a4  eab13b02  vand.s.mz vr3{mr1}, r23, vr3
0044a8  6ab12922  vor.s.mz vr2{mr1}, r19, vr2
0044ac  eab25922  vor.s.mz vr5{mr1}, r19, vr5
0044b0  6ab24922  vor.s.mz vr4{mr1}, r19, vr4
0044b4  eab13922  vor.s.mz vr3{mr1}, r19, vr3
0044b8  06110120  vfloat2fp16_l.rz vr2, vr2
0044bc  06520220  vfloat2fp16_h.rz vr4, vr4
0044c0  06d10120  vfloat2fp16_h.rz vr2, vr3
0044c4  06920220  vfloat2fp16_l.rz vr4, vr5
0044c8  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
0044cc  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
0044d0  ea301e02  vand.s.mz vr1{mr1}, r28, vr1
0044d4  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
0044d8  46801002  vstore.mz vr1{mr1}, 0(r1)
0044dc  9f808000  addli r1, r1, 64
0044e0  bf8df1fe  blt.s r3, r15, -160
0044e4  5b7cffff  j -1056
0044e8  2b330100  lui r6, 19
0044ec  803a0002  core_id r21
0044f0  80500102  load_param_i r1, 2
0044f4  1f110000  addli r2, zero, 1
0044f8  9f038fd7  addli r7, r30, -5184
0044fc  1f048000  addli r8, zero, 64
004500  1f050010  addli r10, zero, 2048
004504  9bb15a00  slli r3, r21, 5
004508  9bb45000  slli r9, r1, 5
00450c  1f0303f8  addli r6, r6, -1024
004510  b3850128  zext_int2long r[12:13], r3
004514  ab0600f0  lui r13, 983040
004518  97b52502  sll.d r[12:13], r[12:13], r2
00451c  9716d400  or r13, r8, r13
004520  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
004524  ffa67500  l_gm2lm r13, r7, 0(r[12:13])
004528  9bb52100  slli r11, r3, 2
00452c  8b913410  add.s r3, r9, r3
004530  00a00200  mfence { lm, gm }
004534  42800302  vload.mz vr0{mr1}, 0(r7)
004538  1386a104  setlt.u r12, r3, r10
00453c  8b956510  add.s r11, r11, r6
004540  9f868500  addli r13, r11, 64
004544  86300000  vfp162float_l.rn vr1, vr0
004548  06700000  vfp162float_h.rn vr0, vr0
00454c  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
004550  4e900602  vstores_mask16.mz vr0{mr1}, 0(r13)
004554  bb7e06fe  bneq r12, zero, -68
004558  2bf10000  lui r2, 15
00455c  00a00300  mfence { lm, sm, gm }
004560  63421f00  loadli.w r4,  12(r30)
004564  9b8d1a00  andi r27, r21, 1
004568  9f020006  addli r5, zero, 768
00456c  1b11f1ff  ori r2, r2, 4095
004570  80210104  csr_set csr3, r2
004574  1f010006  addli r2, zero, 768
004578  00d00100  sync_group
00457c  37a00d00  beq r27, zero, 8
004580  9f02000a  addli r5, zero, 1280
004584  e3411f00  loadli.w r3,  12(r30)
004588  1f1b0000  addli r22, zero, 1
00458c  bfd56111  blt.s r3, r22, 8564
004590  0b912d20  mul.s r2, r27, r2
004594  1bc51000  srli r10, r1, 1
004598  9bb02200  slli r1, r5, 2
00459c  9f068fd7  addli r13, r30, -5184
0045a0  1bb61200  slli r12, r5, 1
0045a4  ab5c0100  lui r25, 21
0045a8  2b590100  lui r18, 21
0045ac  1f040000  addli r8, zero, 0
0045b0  9bc51a00  srli r11, r21, 1
0045b4  9f787000  addli r17, zero, 63
0045b8  1f0a0005  addli r20, zero, 640
0045bc  9f0b8000  addli r23, zero, 64
0045c0  1f0c4000  addli r24, zero, 32
0045c4  1f0e0003  addli r28, zero, 384
0045c8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0045cc  8b90d010  add.s r1, r1, r13
0045d0  67082fd6  storeli.w r2, -5248(r30)
0045d4  1f814200  addli r2, r5, 32
0045d8  9f8c0cf8  addli r25, r25, -1024
0045dc  1f0909fc  addli r18, r18, -512
0045e0  67042fd6  storeli.w r2, -5312(r30)
0045e4  9f8080ff  addli r1, r1, -64
0045e8  0b11d610  add.s r2, r12, r13
0045ec  670c1fd4  storeli.w r1, -5440(r30)
0045f0  9f0081ff  addli r1, r2, -64
0045f4  1f018fd4  addli r2, r30, -5568
0045f8  67081fd4  storeli.w r1, -5504(r30)
0045fc  abf0ffff  lui r1, 1048575
004600  00a00000  mfence { lm }
004604  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004608  9b9000f8  ori r1, r1, 3968
00460c  67001fd4  storeli.w r1, -5632(r30)
004610  abf00000  lui r1, 15
004614  1b9df0ff  ori r26, r1, 4095
004618  db030000  j 28
00461c  00a00300  mfence { lm, sm, gm }
004620  80210d04  csr_set csr3, r26
004624  00d00100  sync_group
004628  0b14a410  add.s r8, r8, r10
00462c  3f204400  blt.s r8, r4, 8
004630  dbc7f8ff  j -14788
004634  8b10b410  add.s r1, r8, r11
004638  cb1f12fe  ble.s r4, r1, -28
00463c  63011f00  loadli.w r2,  8(r30)
004640  e3010fd7  loadli.w r3,  -5248(r30)
004644  9f037fd6  addli r7, r30, -5320
004648  8b902010  add.s r1, r1, r2
00464c  0b01a430  div.u r2, r8, r10
004650  9bb0b000  slli r1, r1, 11
004654  97903000  or r1, r1, r3
004658  ebd10300  load.d r[4:5], 0(r7)
00465c  33970028  sext_int2long r[15:16], r1
004660  ab0000f0  lui r1, 983040
004664  1b316100  slli r2, r2, 6
004668  17376703  sll.d r[15:16], r[15:16], r22
00466c  97101600  or r1, r12, r1
004670  1b010104  andi r2, r2, 64
004674  8ba1e110  add.ul r[4:5], r[4:5], r[15:16]
004678  ffa0d100  l_gm2lm r1, r13, 0(r[4:5])
00467c  97105101  or r1, r2, r21
004680  00a00200  mfence { lm, gm }
004684  63010fd5  loadli.w r2,  -5504(r30)
004688  e3018fd5  loadli.w r3,  -5440(r30)
00468c  e3038fd6  loadli.w r7,  -5312(r30)
004690  c2000102  vload.mz vr1{mr1}, 0(r2)
004694  9f83c3ff  addli r7, r7, -32
004698  9f8481ff  addli r9, r3, -64
00469c  1f0181ff  addli r2, r2, -64
0046a0  13827804  setlt.u r4, r17, r7
0046a4  06f10000  vfp162float_h.rn vr2, vr1
0046a8  86b00000  vfp162float_l.rn vr1, vr1
0046ac  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
0046b0  9f8101ff  addli r3, r3, -128
0046b4  46901402  vstore_mask16.mz vr1{mr1}, 0(r9)
0046b8  3b6f02fe  bneq r4, zero, -40
0046bc  00a00000  mfence { lm }
0046c0  3bb60d00  bneq r27, zero, 396
0046c4  1f028fd4  addli r4, r30, -5568
0046c8  e3010fd4  loadli.w r3,  -5632(r30)
0046cc  1f010000  addli r2, zero, 0
0046d0  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
0046d4  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0046d8  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0046dc  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0046e0  8b136110  add.s r7, r2, r6
0046e4  8b942610  add.s r9, r13, r2
0046e8  9f810101  addli r3, r3, 128
0046ec  1f010104  addli r2, r2, 512
0046f0  1f820301  addli r4, r7, 128
0046f4  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
0046f8  1f888300  addli r16, r7, 64
0046fc  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
004700  9f898401  addli r19, r9, 192
004704  ca120202  vloads_mask16.mz vr5{mr1}, 0(r4)
004708  1f828301  addli r4, r7, 192
00470c  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
004710  1f888400  addli r16, r9, 64
004714  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
004718  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
00471c  1f820401  addli r4, r9, 128
004720  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
004724  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
004728  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00472c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004730  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004734  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004738  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00473c  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
004740  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
004744  1f820302  addli r4, r7, 256
004748  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00474c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004750  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004754  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
004758  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
00475c  1f828302  addli r4, r7, 320
004760  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
004764  9f890402  addli r19, r9, 256
004768  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00476c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004770  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004774  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
004778  1f820303  addli r4, r7, 384
00477c  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
004780  9f838303  addli r7, r7, 448
004784  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004788  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
00478c  1f828402  addli r4, r9, 320
004790  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
004794  9f830403  addli r7, r9, 384
004798  9f848403  addli r9, r9, 448
00479c  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
0047a0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0047a4  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
0047a8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0047ac  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
0047b0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0047b4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0047b8  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
0047bc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0047c0  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
0047c4  13824105  setlt.u r4, r3, r20
0047c8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0047cc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0047d0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0047d4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0047d8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0047dc  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
0047e0  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
0047e4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0047e8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0047ec  bb5b02fe  bneq r4, zero, -268
0047f0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0047f4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0047f8  1f010002  addli r2, zero, 256
0047fc  6a7101c0  vsrl.p vr2, r2, vr0
004800  ea7111c0  vsrl.p vr3, r2, vr1
004804  1f010001  addli r2, zero, 128
004808  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00480c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004810  6a7101c0  vsrl.p vr2, r2, vr0
004814  ea7111c0  vsrl.p vr3, r2, vr1
004818  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00481c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004820  6af10bc0  vsrl.p vr2, r23, vr0
004824  eaf11bc0  vsrl.p vr3, r23, vr1
004828  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00482c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004830  6a710cc0  vsrl.p vr2, r24, vr0
004834  ea711cc0  vsrl.p vr3, r24, vr1
004838  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00483c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004840  7a110040  vextracti.f r2, 0(vr0)
004844  fa910040  vextracti.f r3, 0(vr1)
004848  5b660000  j 816
00484c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004850  abf1ffff  lui r3, 1048575
004854  1f8b0d00  addli r22, r27, 0
004858  1f010000  addli r2, zero, 0
00485c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004860  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004864  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004868  9b9101f8  ori r3, r3, 3968
00486c  8b192310  add.s r19, r6, r2
004870  8b942610  add.s r9, r13, r2
004874  9f810101  addli r3, r3, 128
004878  1f010104  addli r2, r2, 512
00487c  9f8d0931  addli r27, r19, 6272
004880  1f820930  addli r4, r19, 6144
004884  1f888931  addli r16, r19, 6336
004888  9f830418  addli r7, r9, 3072
00488c  ca930d02  vloads_mask16.mz vr7{mr1}, 0(r27)
004890  ca120202  vloads_mask16.mz vr5{mr1}, 0(r4)
004894  1f828930  addli r4, r19, 6208
004898  ca140802  vloads_mask16.mz vr9{mr1}, 0(r16)
00489c  1f880419  addli r16, r9, 3200
0048a0  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
0048a4  9f8d8419  addli r27, r9, 3264
0048a8  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
0048ac  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
0048b0  1f828418  addli r4, r9, 3136
0048b4  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
0048b8  c2150202  vload_mask16.mz vr11{mr1}, 0(r4)
0048bc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0048c0  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0048c4  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0048c8  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0048cc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0048d0  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0048d4  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
0048d8  9f830932  addli r7, r19, 6400
0048dc  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0048e0  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
0048e4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0048e8  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
0048ec  1f88041a  addli r16, r9, 3328
0048f0  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
0048f4  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
0048f8  1f82041b  addli r4, r9, 3456
0048fc  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
004900  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
004904  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
004908  9f838932  addli r7, r19, 6464
00490c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004910  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004914  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
004918  9f830933  addli r7, r19, 6528
00491c  9f898933  addli r19, r19, 6592
004920  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
004924  9f83841a  addli r7, r9, 3392
004928  4a950902  vloads_mask16.mz vr10{mr1}, 0(r19)
00492c  9f84841b  addli r9, r9, 3520
004930  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
004934  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004938  c2130202  vload_mask16.mz vr7{mr1}, 0(r4)
00493c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004940  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
004944  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004948  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00494c  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
004950  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004954  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
004958  9383c105  setlt.u r7, r3, r28
00495c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004960  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004964  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004968  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00496c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004970  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
004974  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
004978  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00497c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004980  bbbb03fe  bneq r7, zero, -276
004984  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004988  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00498c  1f010002  addli r2, zero, 256
004990  2bf2ffff  lui r4, 1048575
004994  9f040000  addli r9, zero, 0
004998  9b1d02f8  ori r27, r4, 3968
00499c  ea7111c0  vsrl.p vr3, r2, vr1
0049a0  6a7101c0  vsrl.p vr2, r2, vr0
0049a4  1f010001  addli r2, zero, 128
0049a8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0049ac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0049b0  ea7111c0  vsrl.p vr3, r2, vr1
0049b4  6a7101c0  vsrl.p vr2, r2, vr0
0049b8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0049bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0049c0  eaf11bc0  vsrl.p vr3, r23, vr1
0049c4  6af10bc0  vsrl.p vr2, r23, vr0
0049c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0049cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0049d0  ea711cc0  vsrl.p vr3, r24, vr1
0049d4  6a710cc0  vsrl.p vr2, r24, vr0
0049d8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0049dc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0049e0  fa910040  vextracti.f r3, 0(vr1)
0049e4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0049e8  7a110040  vextracti.f r2, 0(vr0)
0049ec  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0049f0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0049f4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0049f8  8b139310  add.s r7, r6, r9
0049fc  8b999610  add.s r19, r13, r9
004a00  9f8d0d01  addli r27, r27, 128
004a04  9f840404  addli r9, r9, 512
004a08  1f820318  addli r4, r7, 3072
004a0c  1f880319  addli r16, r7, 3200
004a10  42940902  vload_mask16.mz vr8{mr1}, 0(r19)
004a14  9f8a8901  addli r21, r19, 192
004a18  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
004a1c  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
004a20  1f828318  addli r4, r7, 3136
004a24  1f888319  addli r16, r7, 3264
004a28  c2950a02  vload_mask16.mz vr11{mr1}, 0(r21)
004a2c  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
004a30  1f820901  addli r4, r19, 128
004a34  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
004a38  1f888900  addli r16, r19, 64
004a3c  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
004a40  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
004a44  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004a48  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004a4c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004a50  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004a54  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
004a58  1f82031a  addli r4, r7, 3328
004a5c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004a60  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004a64  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004a68  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004a6c  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
004a70  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
004a74  1f82831a  addli r4, r7, 3392
004a78  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
004a7c  9f8a0902  addli r21, r19, 256
004a80  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
004a84  1f888903  addli r16, r19, 448
004a88  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004a8c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004a90  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
004a94  1f82031b  addli r4, r7, 3456
004a98  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
004a9c  9f83831b  addli r7, r7, 3520
004aa0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004aa4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004aa8  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
004aac  1f828902  addli r4, r19, 320
004ab0  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
004ab4  9f830903  addli r7, r19, 384
004ab8  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
004abc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004ac0  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
004ac4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004ac8  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
004acc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004ad0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004ad4  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
004ad8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004adc  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
004ae0  13824d05  setlt.u r4, r27, r20
004ae4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004ae8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004aec  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004af0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004af4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004af8  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
004afc  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
004b00  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004b04  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004b08  bb4b02fe  bneq r4, zero, -272
004b0c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004b10  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004b14  1f020002  addli r4, zero, 256
004b18  9f0d0b00  addli r27, r22, 0
004b1c  803a0002  core_id r21
004b20  1f1b0000  addli r22, zero, 1
004b24  6a7102c0  vsrl.p vr2, r4, vr0
004b28  ea7112c0  vsrl.p vr3, r4, vr1
004b2c  1f020001  addli r4, zero, 128
004b30  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b34  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b38  6a7102c0  vsrl.p vr2, r4, vr0
004b3c  ea7112c0  vsrl.p vr3, r4, vr1
004b40  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b44  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b48  6af10bc0  vsrl.p vr2, r23, vr0
004b4c  eaf11bc0  vsrl.p vr3, r23, vr1
004b50  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b54  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b58  6a710cc0  vsrl.p vr2, r24, vr0
004b5c  ea711cc0  vsrl.p vr3, r24, vr1
004b60  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b64  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b68  7a120040  vextracti.f r4, 0(vr0)
004b6c  fa930040  vextracti.f r7, 0(vr1)
004b70  0b614110  add.f.rn r2, r2, r4
004b74  8be17110  add.f.rn r3, r3, r7
004b78  1bb22000  slli r4, r1, 2
004b7c  9b80e007  andi r1, r1, 126
004b80  8b139211  add.s r7, r4, r25
004b84  8b142211  add.s r9, r4, r18
004b88  9bb02000  slli r1, r1, 2
004b8c  73e02300  stores.w r2, 0(r7)
004b90  1b114200  ori r2, r4, 4
004b94  73e03400  stores.w r3, 0(r9)
004b98  0b929011  add.s r4, r1, r25
004b9c  8b902011  add.s r1, r1, r18
004ba0  9f030000  addli r7, zero, 0
004ba4  00a00300  mfence { lm, sm, gm }
004ba8  80210d04  csr_set csr3, r26
004bac  00d00100  sync_group
004bb0  8b119111  add.s r3, r2, r25
004bb4  6f420200  loads.w r4, 0(r4)
004bb8  0b112111  add.s r2, r2, r18
004bbc  efc00000  loads.w r1, 0(r1)
004bc0  efc10100  loads.w r3, 0(r3)
004bc4  6f410100  loads.w r2, 0(r2)
004bc8  8be14110  add.f.rn r3, r3, r4
004bcc  2b02003a  lui r4, 237568
004bd0  8b601110  add.f.rn r1, r2, r1
004bd4  0be14120  mul.f.rn r2, r3, r4
004bd8  8be04020  mul.f.rn r1, r1, r4
004bdc  8b612120  mul.f.rn r3, r2, r2
004be0  0b610158  neg.f r2, r2
004be4  8be03018  sub.f.rn r1, r1, r3
004be8  e3013f00  loadli.w r3,  24(r30)
004bec  8be03010  add.f.rn r1, r1, r3
004bf0  ab01803f  lui r3, 260096
004bf4  8f800008  sqrt.f.rn r1, r1
004bf8  8f801118  div.f.rn r1, r3, r1
004bfc  9f018fd7  addli r3, r30, -5184
004c00  1f828100  addli r4, r3, 64
004c04  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
004c08  9f844300  addli r9, r7, 32
004c0c  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
004c10  93849206  setle.u r9, r5, r9
004c14  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
004c18  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
004c1c  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
004c20  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004c24  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
004c28  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
004c2c  bbf00400  bneq r9, zero, 60
004c30  1f820101  addli r4, r3, 128
004c34  9f848101  addli r9, r3, 192
004c38  9f838300  addli r7, r7, 64
004c3c  9f810102  addli r3, r3, 256
004c40  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
004c44  c2900402  vload_mask16.mz vr1{mr1}, 0(r9)
004c48  13885304  setlt.u r16, r7, r5
004c4c  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
004c50  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
004c54  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
004c58  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004c5c  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
004c60  46901402  vstore_mask16.mz vr1{mr1}, 0(r9)
004c64  3b7e08fe  bneq r16, zero, -100
004c68  9f008fd7  addli r1, r30, -5184
004c6c  1f018fd7  addli r2, r30, -5184
004c70  9f010000  addli r3, zero, 0
004c74  00a00000  mfence { lm }
004c78  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
004c7c  1f028100  addli r4, r2, 64
004c80  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
004c84  9f814100  addli r3, r3, 32
004c88  1f010101  addli r2, r2, 128
004c8c  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
004c90  13825104  setlt.u r4, r3, r5
004c94  06110000  vfloat2fp16_l.rn vr2, vr0
004c98  06d10000  vfloat2fp16_h.rn vr2, vr1
004c9c  46802002  vstore.mz vr2{mr1}, 0(r1)
004ca0  9f808000  addli r1, r1, 64
004ca4  3b5f02fe  bneq r4, zero, -44
004ca8  6b510f00  load.d r[3:4], 0(r30)
004cac  ab0000f0  lui r1, 983040
004cb0  00a00000  mfence { lm }
004cb4  97101600  or r1, r12, r1
004cb8  0b21e110  add.ul r[3:4], r[3:4], r[15:16]
004cbc  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
004cc0  00a00200  mfence { lm, gm }
004cc4  63421f00  loadli.w r4,  12(r30)
004cc8  5b2cffff  j -1696
004ccc  80300002  core_id r1
004cd0  e3012f00  loadli.w r3,  16(r30)
004cd4  1bb15000  slli r2, r1, 5
004cd8  cb912100  ble.s r3, r2, 100
004cdc  00540102  load_param_i r8, 2
004ce0  ab840100  lui r9, 24
004ce4  9f110000  addli r3, zero, 1
004ce8  1f038fd7  addli r6, r30, -5184
004cec  9f038000  addli r7, zero, 64
004cf0  1b345400  slli r8, r8, 5
004cf4  9f840400  addli r9, r9, 0
004cf8  33050128  zext_int2long r[11:12], r2
004cfc  2b0600f0  lui r12, 983040
004d00  17353502  sll.d r[11:12], r[11:12], r3
004d04  1796c300  or r12, r7, r12
004d08  0b25a210  add.ul r[11:12], r[5:6], r[11:12]
004d0c  7f266500  l_gm2lm r12, r6, 0(r[11:12])
004d10  1b352100  slli r10, r2, 2
004d14  0b112410  add.s r2, r8, r2
004d18  00a00200  mfence { lm, gm }
004d1c  42000302  vload.mz vr0{mr1}, 0(r6)
004d20  0b159510  add.s r10, r10, r9
004d24  9f058500  addli r11, r10, 64
004d28  86300000  vfp162float_l.rn vr1, vr0
004d2c  06700000  vfp162float_h.rn vr0, vr0
004d30  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
004d34  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
004d38  3f0ff1fe  blt.s r2, r15, -64
004d3c  2bf10000  lui r2, 15
004d40  e3411f00  loadli.w r3,  12(r30)
004d44  00a00300  mfence { lm, sm, gm }
004d48  1b11f1ff  ori r2, r2, 4095
004d4c  80210104  csr_set csr3, r2
004d50  00d00100  sync_group
004d54  cbb6110c  ble.s r3, r1, 6572
004d58  63032f00  loadli.w r6,  16(r30)
004d5c  e3432f00  loadli.w r7,  20(r30)
004d60  9f0b8fd7  addli r23, r30, -5184
004d64  1f150000  addli r10, zero, 1
004d68  9f054000  addli r11, zero, 32
004d6c  1f767000  addli r12, zero, 63
004d70  1f080002  addli r16, zero, 256
004d74  9f080001  addli r17, zero, 128
004d78  1f098000  addli r18, zero, 64
004d7c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004d80  0b127310  add.s r4, r6, r7
004d84  33010308  fix2float.rn r2, r6
004d88  1b342300  slli r8, r6, 2
004d8c  9b321300  slli r5, r6, 1
004d90  9bb42300  slli r9, r7, 2
004d94  1f72f2ff  addli r4, r4, -1
004d98  670c2fd4  storeli.w r2, -5440(r30)
004d9c  1f014300  addli r2, r6, 32
004da0  0b137411  add.s r6, r8, r23
004da4  0b947211  add.s r8, r5, r23
004da8  67082fd4  storeli.w r2, -5504(r30)
004dac  1f0183ff  addli r2, r6, -64
004db0  2bf3ffff  lui r6, 1048575
004db4  0b127230  div.s r4, r4, r7
004db8  67042fd4  storeli.w r2, -5568(r30)
004dbc  1f0184ff  addli r2, r8, -64
004dc0  9b16f3ff  ori r13, r6, 4095
004dc4  2b830100  lui r6, 24
004dc8  67002fd4  storeli.w r2, -5632(r30)
004dcc  1f010fd7  addli r2, r30, -5248
004dd0  1f030300  addli r6, r6, 0
004dd4  00a00000  mfence { lm }
004dd8  67045fd6  storeli.w r5, -5312(r30)
004ddc  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004de0  5b070000  j 56
004de4  6b510f00  load.d r[3:4], 0(r30)
004de8  ab0900f0  lui r19, 983040
004dec  9f0b8fd7  addli r23, r30, -5184
004df0  00a00000  mfence { lm }
004df4  005a0102  load_param_i r20, 2
004df8  97993201  or r19, r5, r19
004dfc  8b101a10  add.s r1, r20, r1
004e00  8b235111  add.ul r[8:9], r[3:4], r[22:23]
004e04  ffb97301  s_lm2gm r19, r23, 0(r[8:9])
004e08  00a00200  mfence { lm, gm }
004e0c  63411f00  loadli.w r2,  12(r30)
004e10  3fa02000  blt.s r1, r2, 8
004e14  db1d0300  j 6380
004e18  63011f00  loadli.w r2,  8(r30)
004e1c  8b932010  add.s r7, r1, r2
004e20  8b93f320  mul.s r7, r7, r15
004e24  b3930328  sext_int2long r[8:9], r7
004e28  97baa302  sll.d r[22:23], r[8:9], r10
004e2c  1f047fd6  addli r8, r30, -5320
004e30  ab0300f0  lui r7, 983040
004e34  6b510400  load.d r[3:4], 0(r8)
004e38  97937200  or r7, r5, r7
004e3c  8b295111  add.ul r[20:21], r[3:4], r[22:23]
004e40  ffa37901  l_gm2lm r7, r23, 0(r[20:21])
004e44  00a00200  mfence { lm, gm }
004e48  bff0b700  blt.s r15, r11, 60
004e4c  e3030fd4  loadli.w r7,  -5632(r30)
004e50  63048fd4  loadli.w r8,  -5568(r30)
004e54  e3090fd5  loadli.w r19,  -5504(r30)
004e58  c2800302  vload.mz vr1{mr1}, 0(r7)
004e5c  9f89c9ff  addli r19, r19, -32
004e60  9f0b84ff  addli r23, r8, -64
004e64  9f8383ff  addli r7, r7, -64
004e68  130a3605  setlt.u r20, r12, r19
004e6c  06f10000  vfp162float_h.rn vr2, vr1
004e70  86b00000  vfp162float_l.rn vr1, vr1
004e74  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
004e78  1f0404ff  addli r8, r8, -128
004e7c  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
004e80  3b6f0afe  bneq r20, zero, -40
004e84  00a00000  mfence { lm }
004e88  bf17a200  blt.s r4, r10, 484
004e8c  1f0c0000  addli r24, zero, 0
004e90  9f0b0000  addli r23, zero, 0
004e94  9f0c0000  addli r25, zero, 0
004e98  db0c0000  j 100
004e9c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004ea0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004ea4  9f9c0c00  addli r25, r25, 1
004ea8  6a7108c0  vsrl.p vr2, r16, vr0
004eac  ea7118c0  vsrl.p vr3, r16, vr1
004eb0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004eb4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004eb8  6af108c0  vsrl.p vr2, r17, vr0
004ebc  eaf118c0  vsrl.p vr3, r17, vr1
004ec0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004ec4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004ec8  6a7109c0  vsrl.p vr2, r18, vr0
004ecc  ea7119c0  vsrl.p vr3, r18, vr1
004ed0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004ed4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004ed8  6af105c0  vsrl.p vr2, r11, vr0
004edc  eaf115c0  vsrl.p vr3, r11, vr1
004ee0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004ee4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004ee8  7a110040  vextracti.f r2, 0(vr0)
004eec  fa910040  vextracti.f r3, 0(vr1)
004ef0  0b6c2c10  add.f.rn r24, r24, r2
004ef4  8beb3b10  add.f.rn r23, r23, r3
004ef8  b7f54c00  beq r25, r4, 380
004efc  9f830c00  addli r7, r25, 0
004f00  37300701  beq r14, r16, 12
004f04  97a3dc00  xor r7, r25, r13
004f08  8b137210  add.s r7, r4, r7
004f0c  1f010fd7  addli r2, r30, -5248
004f10  0b94e320  mul.s r8, r7, r14
004f14  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004f18  0b948718  sub.s r8, r15, r8
004f1c  0b1de440  min.s r26, r8, r14
004f20  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004f24  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004f28  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004f2c  bf4dadfe  blt.s r26, r10, -144
004f30  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
004f34  9f0d0000  addli r27, zero, 0
004f38  0b9e7420  mul.s r28, r9, r7
004f3c  9f098fd7  addli r19, r30, -5184
004f40  1f0a0300  addli r20, r6, 0
004f44  92304002  vadd.s.mz vr1{mr1}, zero, vr4
004f48  12314002  vadd.s.mz vr2{mr1}, zero, vr4
004f4c  92314002  vadd.s.mz vr3{mr1}, zero, vr4
004f50  0b14ca11  add.s r8, r20, r28
004f54  8b93c911  add.s r7, r19, r28
004f58  9f028400  addli r5, r8, 64
004f5c  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
004f60  9f018401  addli r3, r8, 192
004f64  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
004f68  1f818301  addli r2, r7, 192
004f6c  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
004f70  9f020401  addli r5, r8, 128
004f74  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
004f78  9f818300  addli r3, r7, 64
004f7c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
004f80  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
004f84  9f820301  addli r5, r7, 128
004f88  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
004f8c  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
004f90  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004f94  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
004f98  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
004f9c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
004fa0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004fa4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004fa8  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
004fac  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
004fb0  9f818d00  addli r3, r27, 64
004fb4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004fb8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004fbc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004fc0  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
004fc4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004fc8  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
004fcc  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
004fd0  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
004fd4  4b2b3dfe  ble.s r26, r3, -312
004fd8  9f010402  addli r3, r8, 256
004fdc  9f028402  addli r5, r8, 320
004fe0  1f810302  addli r2, r7, 256
004fe4  9f8d0d01  addli r27, r27, 128
004fe8  1f0a0a04  addli r20, r20, 512
004fec  9f890904  addli r19, r19, 512
004ff0  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
004ff4  9f010403  addli r3, r8, 384
004ff8  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
004ffc  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
005000  9f828302  addli r5, r7, 320
005004  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
005008  9f018403  addli r3, r8, 448
00500c  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
005010  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
005014  9f810303  addli r3, r7, 384
005018  9f838303  addli r7, r7, 448
00501c  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
005020  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
005024  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
005028  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00502c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005030  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005034  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005038  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00503c  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
005040  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
005044  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
005048  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00504c  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
005050  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005054  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005058  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
00505c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005060  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
005064  bfbbadff  blt.s r27, r26, -276
005068  dbc6ffff  j -460
00506c  9f0b0000  addli r23, zero, 0
005070  1f0c0000  addli r24, zero, 0
005074  00a00000  mfence { lm }
005078  3fe2a700  blt.s r15, r10, 152
00507c  63018fd5  loadli.w r2,  -5440(r30)
005080  1f0a0000  addli r20, zero, 0
005084  0f042c18  div.f.rn r8, r24, r2
005088  8f832b18  div.f.rn r7, r23, r2
00508c  63013f00  loadli.w r2,  24(r30)
005090  8b698420  mul.f.rn r19, r8, r8
005094  0b640458  neg.f r8, r8
005098  8be33319  sub.f.rn r7, r7, r19
00509c  9f098fd7  addli r19, r30, -5184
0050a0  8be32310  add.f.rn r7, r7, r2
0050a4  2b01803f  lui r2, 260096
0050a8  8f830308  sqrt.f.rn r7, r7
0050ac  8f037118  div.f.rn r7, r2, r7
0050b0  9f8b8900  addli r23, r19, 64
0050b4  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
0050b8  1f0c4a00  addli r24, r20, 32
0050bc  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
0050c0  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
0050c4  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
0050c8  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
0050cc  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
0050d0  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
0050d4  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
0050d8  cbe08701  ble.s r15, r24, 56
0050dc  9f8b0901  addli r23, r19, 128
0050e0  1f8c8901  addli r24, r19, 192
0050e4  1f0a8a00  addli r20, r20, 64
0050e8  9f890902  addli r19, r19, 256
0050ec  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
0050f0  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
0050f4  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
0050f8  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
0050fc  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
005100  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
005104  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
005108  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
00510c  bf1efafe  blt.s r20, r15, -92
005110  00a00000  mfence { lm }
005114  e3028fd6  loadli.w r5,  -5312(r30)
005118  3fb3a7fe  blt.s r15, r10, -820
00511c  9f038fd7  addli r7, r30, -5184
005120  1f048fd7  addli r8, r30, -5184
005124  9f090000  addli r19, zero, 0
005128  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
00512c  1f0a8400  addli r20, r8, 64
005130  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
005134  9f894900  addli r19, r19, 32
005138  1f040401  addli r8, r8, 128
00513c  42110a02  vload_mask16.mz vr2{mr1}, 0(r20)
005140  86910000  vfloat2fp16_l.rn vr3, vr1
005144  86510100  vfloat2fp16_h.rn vr3, vr2
005148  46803302  vstore.mz vr3{mr1}, 0(r7)
00514c  9f838300  addli r7, r7, 64
005150  3feff9fe  blt.s r19, r15, -40
005154  5b92ffff  j -880
005158  63012f00  loadli.w r2,  16(r30)
00515c  ab0100f0  lui r3, 983040
005160  1b311100  slli r2, r2, 1
005164  17113100  or r2, r2, r3
005168  aba10100  lui r3, 26
00516c  9f810100  addli r3, r3, 0
005170  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005174  5b080000  j 64
005178  63012f00  loadli.w r2,  16(r30)
00517c  ab0100f0  lui r3, 983040
005180  1b311100  slli r2, r2, 1
005184  17113100  or r2, r2, r3
005188  abe10100  lui r3, 30
00518c  9f810100  addli r3, r3, 0
005190  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005194  5bc30000  j 1560
005198  63012f00  loadli.w r2,  16(r30)
00519c  ab0100f0  lui r3, 983040
0051a0  1b311100  slli r2, r2, 1
0051a4  17113100  or r2, r2, r3
0051a8  abb10100  lui r3, 27
0051ac  9f810100  addli r3, r3, 0
0051b0  7f013400  l_gm2sm r2, r3, 0(r[9:10])
0051b4  2bf10000  lui r2, 15
0051b8  e3411f00  loadli.w r3,  12(r30)
0051bc  00200300  mfence { sm, gm }
0051c0  1b11f1ff  ori r2, r2, 4095
0051c4  80210104  csr_set csr3, r2
0051c8  00d00100  sync_group
0051cc  cbd4110a  ble.s r3, r1, 5428
0051d0  63012f00  loadli.w r2,  16(r30)
0051d4  e3412f00  loadli.w r3,  20(r30)
0051d8  1f062000  addli r12, zero, 16
0051dc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0051e0  1f140000  addli r8, zero, 1
0051e4  9f068fd7  addli r13, r30, -5184
0051e8  9f050002  addli r11, zero, 256
0051ec  2b08ffff  lui r16, 1048560
0051f0  2b09807f  lui r18, 522240
0051f4  ab09c07f  lui r19, 523264
0051f8  1f0a0001  addli r20, zero, 128
0051fc  9f0a8000  addli r21, zero, 64
005200  1f0b4000  addli r22, zero, 32
005204  9b321100  slli r5, r2, 1
005208  0b123110  add.s r4, r2, r3
00520c  33010108  fix2float.rn r2, r2
005210  1bb31100  slli r6, r3, 1
005214  67042fd4  storeli.w r2, -5568(r30)
005218  1f71f2ff  addli r2, r4, -1
00521c  67085fd4  storeli.w r5, -5504(r30)
005220  8b133130  div.s r7, r2, r3
005224  2bf1ffff  lui r2, 1048575
005228  1b15f1ff  ori r10, r2, 4095
00522c  1f010fd7  addli r2, r30, -5248
005230  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005234  6a200622  vor.u.mz vr0{mr1}, r12, vr0
005238  1f018fd6  addli r2, r30, -5312
00523c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005240  2b710000  lui r2, 7
005244  9b18f1ff  ori r17, r2, 4095
005248  db080000  j 68
00524c  9f028fd5  addli r5, r30, -5440
005250  00a00000  mfence { lm }
005254  eb510f00  load.d r[4:5], 0(r30)
005258  2b0100f0  lui r2, 983040
00525c  9f068fd7  addli r13, r30, -5184
005260  80540102  load_param_i r9, 2
005264  ebdb0200  load.d r[24:25], 0(r5)
005268  e3020fd5  loadli.w r5,  -5504(r30)
00526c  8b901410  add.s r1, r9, r1
005270  8ba17111  add.ul r[4:5], r[4:5], r[24:25]
005274  17912200  or r2, r5, r2
005278  7fb1d100  s_lm2gm r2, r13, 0(r[4:5])
00527c  00a00200  mfence { lm, gm }
005280  63411f00  loadli.w r2,  12(r30)
005284  3fa02000  blt.s r1, r2, 8
005288  5b8f0200  j 5240
00528c  63011f00  loadli.w r2,  8(r30)
005290  9f047fd6  addli r9, r30, -5320
005294  0b912010  add.s r2, r1, r2
005298  0b11f120  mul.s r2, r2, r15
00529c  33110128  sext_int2long r[3:4], r2
0052a0  973b8102  sll.d r[24:25], r[3:4], r8
0052a4  ebd10400  load.d r[4:5], 0(r9)
0052a8  2b0100f0  lui r2, 983040
0052ac  9f048fd5  addli r9, r30, -5440
0052b0  17912200  or r2, r5, r2
0052b4  73b07401  store.d r[24:25], 0(r9)
0052b8  8ba17111  add.ul r[4:5], r[4:5], r[24:25]
0052bc  7fa1d100  l_gm2lm r2, r13, 0(r[4:5])
0052c0  00a00200  mfence { lm, gm }
0052c4  bfdc8300  blt.s r7, r8, 820
0052c8  9f010000  addli r3, zero, 0
0052cc  1f010000  addli r2, zero, 0
0052d0  1f0e0000  addli r28, zero, 0
0052d4  db0c0000  j 100
0052d8  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0052dc  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0052e0  1f1e0e00  addli r28, r28, 1
0052e4  6af105c0  vsrl.p vr2, r11, vr0
0052e8  eaf115c0  vsrl.p vr3, r11, vr1
0052ec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0052f0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0052f4  6a710ac0  vsrl.p vr2, r20, vr0
0052f8  ea711ac0  vsrl.p vr3, r20, vr1
0052fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005300  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005304  6af10ac0  vsrl.p vr2, r21, vr0
005308  eaf11ac0  vsrl.p vr3, r21, vr1
00530c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005310  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005314  6a710bc0  vsrl.p vr2, r22, vr0
005318  ea711bc0  vsrl.p vr3, r22, vr1
00531c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005320  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005324  7a120040  vextracti.f r4, 0(vr0)
005328  fa920040  vextracti.f r5, 0(vr1)
00532c  8be14110  add.f.rn r3, r3, r4
005330  0b615110  add.f.rn r2, r2, r5
005334  373b7e00  beq r28, r7, 716
005338  1f020e00  addli r4, r28, 0
00533c  3730b700  beq r14, r11, 12
005340  1722ae00  xor r4, r28, r10
005344  0b924310  add.s r4, r7, r4
005348  9f020fd7  addli r5, r30, -5248
00534c  8b14e220  mul.s r9, r4, r14
005350  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
005354  8b949718  sub.s r9, r15, r9
005358  8b9be440  min.s r23, r9, r14
00535c  92322002  vadd.s.mz vr5{mr1}, zero, vr2
005360  12322002  vadd.s.mz vr4{mr1}, zero, vr2
005364  92312002  vadd.s.mz vr3{mr1}, zero, vr2
005368  bfcd8bfe  blt.s r23, r8, -144
00536c  8b1c4320  mul.s r25, r6, r4
005370  1f020fd7  addli r4, r30, -5248
005374  ab960100  lui r13, 25
005378  1f0c0000  addli r24, zero, 0
00537c  9f048fd7  addli r9, r30, -5184
005380  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
005384  9f860600  addli r13, r13, 0
005388  12315002  vadd.s.mz vr2{mr1}, zero, vr5
00538c  92315002  vadd.s.mz vr3{mr1}, zero, vr5
005390  12325002  vadd.s.mz vr4{mr1}, zero, vr5
005394  0b9d9611  add.s r26, r13, r25
005398  0b929411  add.s r4, r9, r25
00539c  9f028fd6  addli r5, r30, -5312
0053a0  4a030d02  vloads.mz vr6{mr1}, 0(r26)
0053a4  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
0053a8  c2030202  vload.mz vr7{mr1}, 0(r4)
0053ac  9f020fd7  addli r5, r30, -5248
0053b0  9f0d8d00  addli r27, r26, 64
0053b4  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0053b8  9f028c00  addli r5, r24, 64
0053bc  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0053c0  6a357802  vand.s.mz vr10{mr1}, r16, vr7
0053c4  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0053c8  6a336802  vand.s.mz vr6{mr1}, r16, vr6
0053cc  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0053d0  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0053d4  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0053d8  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0053dc  669503c0  vabs.f vr10, vr7
0053e0  6a348402  vand.s.mz vr8{mr1}, r8, vr8
0053e4  ea349402  vand.s.mz vr9{mr1}, r8, vr9
0053e8  7221a942  vlt.u.mz mr2{mr1}, r18, vr10
0053ec  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
0053f0  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
0053f4  12b48802  vadd.s.mz vr8{mr1}, r17, vr8
0053f8  92b49802  vadd.s.mz vr9{mr1}, r17, vr9
0053fc  ea338802  vand.s.mz vr7{mr1}, r16, vr8
005400  661403c0  vabs.f vr8, vr6
005404  6a339802  vand.s.mz vr6{mr1}, r16, vr9
005408  eaa30934  vor.u.mh vr7{mr2}, r19, vr0
00540c  72218942  vlt.u.mz mr2{mr1}, r18, vr8
005410  6aa30934  vor.u.mh vr6{mr2}, r19, vr0
005414  4a840d02  vloads.mz vr8{mr1}, 0(r27)
005418  9f0d8200  addli r27, r4, 64
00541c  c2840d02  vload.mz vr9{mr1}, 0(r27)
005420  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
005424  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
005428  6a336802  vand.s.mz vr6{mr1}, r16, vr6
00542c  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
005430  ea349802  vand.s.mz vr9{mr1}, r16, vr9
005434  46007202  vstore.mz vr7{mr1}, 0(r4)
005438  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
00543c  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005440  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
005444  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
005448  6a348802  vand.s.mz vr8{mr1}, r16, vr8
00544c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005450  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005454  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
005458  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
00545c  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
005460  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
005464  ea349402  vand.s.mz vr9{mr1}, r8, vr9
005468  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
00546c  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
005470  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
005474  661505c0  vabs.f vr10, vr10
005478  661404c0  vabs.f vr8, vr8
00547c  92b49802  vadd.s.mz vr9{mr1}, r17, vr9
005480  92b5b802  vadd.s.mz vr11{mr1}, r17, vr11
005484  7221a942  vlt.u.mz mr2{mr1}, r18, vr10
005488  ea349802  vand.s.mz vr9{mr1}, r16, vr9
00548c  6a35b802  vand.s.mz vr10{mr1}, r16, vr11
005490  eaa40934  vor.u.mh vr9{mr2}, r19, vr0
005494  72218942  vlt.u.mz mr2{mr1}, r18, vr8
005498  6aa50934  vor.u.mh vr10{mr2}, r19, vr0
00549c  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
0054a0  ea34a802  vand.s.mz vr9{mr1}, r16, vr10
0054a4  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0054a8  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0054ac  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0054b0  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0054b4  46808d02  vstore.mz vr8{mr1}, 0(r27)
0054b8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0054bc  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0054c0  4be85bfe  ble.s r23, r5, -488
0054c4  9f020d01  addli r5, r26, 128
0054c8  9f0d0201  addli r27, r4, 128
0054cc  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0054d0  1f028201  addli r4, r4, 192
0054d4  1f0c0c01  addli r24, r24, 128
0054d8  9f860602  addli r13, r13, 256
0054dc  9f840402  addli r9, r9, 256
0054e0  6a237622  vor.u.mz vr6{mr1}, r12, vr7
0054e4  4a840202  vloads.mz vr8{mr1}, 0(r5)
0054e8  c2840d02  vload.mz vr9{mr1}, 0(r27)
0054ec  9f028d01  addli r5, r26, 192
0054f0  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
0054f4  6a309802  vand.s.mz vr0{mr1}, r16, vr9
0054f8  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
0054fc  6a348802  vand.s.mz vr8{mr1}, r16, vr8
005500  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
005504  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
005508  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
00550c  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
005510  e69504c0  vabs.f vr11, vr9
005514  6a300402  vand.s.mz vr0{mr1}, r8, vr0
005518  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
00551c  7221b942  vlt.u.mz mr2{mr1}, r18, vr11
005520  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
005524  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
005528  12b00802  vadd.s.mz vr0{mr1}, r17, vr0
00552c  12b5a802  vadd.s.mz vr10{mr1}, r17, vr10
005530  ea340802  vand.s.mz vr9{mr1}, r16, vr0
005534  661004c0  vabs.f vr0, vr8
005538  6a34a802  vand.s.mz vr8{mr1}, r16, vr10
00553c  eaa47934  vor.u.mh vr9{mr2}, r19, vr7
005540  72210942  vlt.u.mz mr2{mr1}, r18, vr0
005544  6aa47934  vor.u.mh vr8{mr2}, r19, vr7
005548  4a800202  vloads.mz vr0{mr1}, 0(r5)
00554c  42050202  vload.mz vr10{mr1}, 0(r4)
005550  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
005554  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
005558  6a35a802  vand.s.mz vr10{mr1}, r16, vr10
00555c  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
005560  6a348802  vand.s.mz vr8{mr1}, r16, vr8
005564  46809d02  vstore.mz vr9{mr1}, 0(r27)
005568  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
00556c  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
005570  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
005574  6a300802  vand.s.mz vr0{mr1}, r16, vr0
005578  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
00557c  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
005580  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
005584  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
005588  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
00558c  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
005590  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
005594  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
005598  e69000c0  vabs.f vr1, vr1
00559c  661000c0  vabs.f vr0, vr0
0055a0  12b5a802  vadd.s.mz vr10{mr1}, r17, vr10
0055a4  92b5b802  vadd.s.mz vr11{mr1}, r17, vr11
0055a8  72211942  vlt.u.mz mr2{mr1}, r18, vr1
0055ac  6a35a802  vand.s.mz vr10{mr1}, r16, vr10
0055b0  ea30b802  vand.s.mz vr1{mr1}, r16, vr11
0055b4  6aa57934  vor.u.mh vr10{mr2}, r19, vr7
0055b8  72210942  vlt.u.mz mr2{mr1}, r18, vr0
0055bc  eaa07934  vor.u.mh vr1{mr2}, r19, vr7
0055c0  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
0055c4  ea331802  vand.s.mz vr7{mr1}, r16, vr1
0055c8  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0055cc  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
0055d0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0055d4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0055d8  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
0055dc  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
0055e0  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
0055e4  46000202  vstore.mz vr0{mr1}, 0(r4)
0055e8  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0055ec  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0055f0  bf167cff  blt.s r24, r23, -604
0055f4  db9cffff  j -796
0055f8  1f010000  addli r2, zero, 0
0055fc  9f010000  addli r3, zero, 0
005600  00a00000  mfence { lm }
005604  3fa187fe  blt.s r15, r8, -952
005608  e3028fd4  loadli.w r5,  -5568(r30)
00560c  aba60100  lui r13, 26
005610  abbb0100  lui r23, 27
005614  1f020000  addli r4, zero, 0
005618  9f860600  addli r13, r13, 0
00561c  9f8b0b00  addli r23, r23, 0
005620  8f815118  div.f.rn r3, r3, r5
005624  0f015118  div.f.rn r2, r2, r5
005628  e3023f00  loadli.w r5,  24(r30)
00562c  8be43120  mul.f.rn r9, r3, r3
005630  8be10158  neg.f r3, r3
005634  0b619118  sub.f.rn r2, r2, r9
005638  9f048fd7  addli r9, r30, -5184
00563c  0b615110  add.f.rn r2, r2, r5
005640  ab02803f  lui r5, 260096
005644  0f010108  sqrt.f.rn r2, r2
005648  0f812218  div.f.rn r2, r5, r2
00564c  42820402  vload.mz vr4{mr1}, 0(r9)
005650  ca820602  vloads.mz vr5{mr1}, 0(r13)
005654  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
005658  4a830b02  vloads.mz vr6{mr1}, 0(r23)
00565c  1f0c4200  addli r24, r4, 32
005660  ea212622  vor.u.mz vr3{mr1}, r12, vr2
005664  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
005668  6a344802  vand.s.mz vr8{mr1}, r16, vr4
00566c  92937102  vadd.f.mz.rn vr7{mr1}, r3, vr7
005670  12948102  vadd.f.mz.rn vr8{mr1}, r3, vr8
005674  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
005678  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
00567c  6a355802  vand.s.mz vr10{mr1}, r16, vr5
005680  ea326802  vand.s.mz vr5{mr1}, r16, vr6
005684  8a137102  vmul.f.mz.rn vr7{mr1}, r2, vr7
005688  0a138102  vmul.f.mz.rn vr6{mr1}, r2, vr8
00568c  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
005690  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
005694  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
005698  6a337402  vand.s.mz vr6{mr1}, r8, vr7
00569c  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
0056a0  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
0056a4  ea337402  vand.s.mz vr7{mr1}, r8, vr7
0056a8  661202c0  vabs.f vr4, vr4
0056ac  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
0056b0  12b36802  vadd.s.mz vr6{mr1}, r17, vr6
0056b4  e69202c0  vabs.f vr5, vr5
0056b8  72214942  vlt.u.mz mr2{mr1}, r18, vr4
0056bc  6a336802  vand.s.mz vr6{mr1}, r16, vr6
0056c0  92b37802  vadd.s.mz vr7{mr1}, r17, vr7
0056c4  6aa32934  vor.u.mh vr6{mr2}, r19, vr2
0056c8  6a327802  vand.s.mz vr4{mr1}, r16, vr7
0056cc  72215942  vlt.u.mz mr2{mr1}, r18, vr5
0056d0  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
0056d4  6aa22934  vor.u.mh vr4{mr2}, r19, vr2
0056d8  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
0056dc  46804402  vstore.mz vr4{mr1}, 0(r9)
0056e0  cbbd87fd  ble.s r15, r24, -1172
0056e4  1f8c8600  addli r24, r13, 64
0056e8  9f8c8400  addli r25, r9, 64
0056ec  1f028200  addli r4, r4, 64
0056f0  9f860601  addli r13, r13, 128
0056f4  9f840401  addli r9, r9, 128
0056f8  4a020c02  vloads.mz vr4{mr1}, 0(r24)
0056fc  1f8c8b00  addli r24, r23, 64
005700  c2820c02  vload.mz vr5{mr1}, 0(r25)
005704  9f8b0b01  addli r23, r23, 128
005708  4a030c02  vloads.mz vr6{mr1}, 0(r24)
00570c  eeb351a2  vsll.s.mz vr7{mr1}, vr3, vr5
005710  ea325802  vand.s.mz vr5{mr1}, r16, vr5
005714  92937102  vadd.f.mz.rn vr7{mr1}, r3, vr7
005718  12945102  vadd.f.mz.rn vr8{mr1}, r3, vr5
00571c  eeb441a2  vsll.s.mz vr9{mr1}, vr3, vr4
005720  6a354802  vand.s.mz vr10{mr1}, r16, vr4
005724  8a137102  vmul.f.mz.rn vr7{mr1}, r2, vr7
005728  eeb261a2  vsll.s.mz vr5{mr1}, vr3, vr6
00572c  6a326802  vand.s.mz vr4{mr1}, r16, vr6
005730  0a138102  vmul.f.mz.rn vr6{mr1}, r2, vr8
005734  a6929302  vmac.f.mz.rn vr5{mr1}, vr7, vr9
005738  2612a302  vmac.f.mz.rn vr4{mr1}, vr6, vr10
00573c  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
005740  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
005744  6a336402  vand.s.mz vr6{mr1}, r8, vr6
005748  ea337402  vand.s.mz vr7{mr1}, r8, vr7
00574c  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
005750  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
005754  e69202c0  vabs.f vr5, vr5
005758  661202c0  vabs.f vr4, vr4
00575c  12b36802  vadd.s.mz vr6{mr1}, r17, vr6
005760  92b37802  vadd.s.mz vr7{mr1}, r17, vr7
005764  72215942  vlt.u.mz mr2{mr1}, r18, vr5
005768  6a336802  vand.s.mz vr6{mr1}, r16, vr6
00576c  ea327802  vand.s.mz vr5{mr1}, r16, vr7
005770  6aa32934  vor.u.mh vr6{mr2}, r19, vr2
005774  72214942  vlt.u.mz mr2{mr1}, r18, vr4
005778  eaa22934  vor.u.mh vr5{mr2}, r19, vr2
00577c  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
005780  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
005784  46802c02  vstore.mz vr2{mr1}, 0(r25)
005788  3f1bf2fe  blt.s r4, r15, -316
00578c  5b58ffff  j -1344
005790  63012f00  loadli.w r2,  16(r30)
005794  ab0100f0  lui r3, 983040
005798  1b311100  slli r2, r2, 1
00579c  17113100  or r2, r2, r3
0057a0  abf10100  lui r3, 31
0057a4  9f810100  addli r3, r3, 0
0057a8  7f013400  l_gm2sm r2, r3, 0(r[9:10])
0057ac  2bf10000  lui r2, 15
0057b0  e3411f00  loadli.w r3,  12(r30)
0057b4  00200300  mfence { sm, gm }
0057b8  1b11f1ff  ori r2, r2, 4095
0057bc  80210104  csr_set csr3, r2
0057c0  00d00100  sync_group
0057c4  cbfc1106  ble.s r3, r1, 3900
0057c8  e3012f00  loadli.w r3,  16(r30)
0057cc  e3422f00  loadli.w r5,  20(r30)
0057d0  2bf4ffff  lui r8, 1048575
0057d4  2bd50100  lui r10, 29
0057d8  9f0b8fd7  addli r23, r30, -5184
0057dc  9f040002  addli r9, zero, 256
0057e0  9f050001  addli r11, zero, 128
0057e4  1f068000  addli r12, zero, 64
0057e8  9f064000  addli r13, zero, 32
0057ec  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0057f0  1b14f4ff  ori r8, r8, 4095
0057f4  1f050500  addli r10, r10, 0
0057f8  0b925110  add.s r4, r3, r5
0057fc  1bb11100  slli r2, r3, 1
005800  b3810108  fix2float.rn r3, r3
005804  1f73f2ff  addli r6, r4, -1
005808  1bb21200  slli r4, r5, 1
00580c  8b125330  div.s r5, r6, r5
005810  1f130000  addli r6, zero, 1
005814  5b070000  j 56
005818  00a00000  mfence { lm }
00581c  eb580f00  load.d r[18:19], 0(r30)
005820  2b0800f0  lui r16, 983040
005824  9f0b8fd7  addli r23, r30, -5184
005828  17180101  or r16, r2, r16
00582c  8ba93811  add.ul r[20:21], r[18:19], r[20:21]
005830  80580102  load_param_i r17, 2
005834  7fb87901  s_lm2gm r16, r23, 0(r[20:21])
005838  8b901810  add.s r1, r17, r1
00583c  00a00200  mfence { lm, gm }
005840  e3431f00  loadli.w r7,  12(r30)
005844  3fa07000  blt.s r1, r7, 8
005848  5bd70100  j 3768
00584c  e3031f00  loadli.w r7,  8(r30)
005850  0b987010  add.s r16, r1, r7
005854  9f037fd6  addli r7, r30, -5320
005858  0b18f820  mul.s r16, r16, r15
00585c  33180828  sext_int2long r[17:18], r16
005860  97396802  sll.d r[20:21], r[17:18], r6
005864  ebd80300  load.d r[18:19], 0(r7)
005868  2b0800f0  lui r16, 983040
00586c  17180101  or r16, r2, r16
005870  8baa3811  add.ul r[22:23], r[18:19], r[20:21]
005874  7fa87a01  l_gm2lm r16, r23, 0(r[22:23])
005878  00a00200  mfence { lm, gm }
00587c  3fc76200  blt.s r5, r6, 464
005880  1f0b0000  addli r22, zero, 0
005884  9f0a0000  addli r21, zero, 0
005888  9f0b0000  addli r23, zero, 0
00588c  db0c0000  j 100
005890  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
005894  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005898  9f9b0b00  addli r23, r23, 1
00589c  6af134c0  vsrl.p vr2, r9, vr3
0058a0  6af214c0  vsrl.p vr4, r9, vr1
0058a4  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
0058a8  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0058ac  eaf125c0  vsrl.p vr3, r11, vr2
0058b0  6af215c0  vsrl.p vr4, r11, vr1
0058b4  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0058b8  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0058bc  ea7126c0  vsrl.p vr3, r12, vr2
0058c0  6a7216c0  vsrl.p vr4, r12, vr1
0058c4  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0058c8  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0058cc  eaf126c0  vsrl.p vr3, r13, vr2
0058d0  6af216c0  vsrl.p vr4, r13, vr1
0058d4  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0058d8  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0058dc  fa130140  vextracti.f r7, 0(vr2)
0058e0  7a980040  vextracti.f r16, 0(vr1)
0058e4  0b6b7b10  add.f.rn r22, r22, r7
0058e8  8bea0a11  add.f.rn r21, r21, r16
0058ec  b7a55b00  beq r23, r5, 360
0058f0  1f880b00  addli r16, r23, 0
0058f4  37309700  beq r14, r9, 12
0058f8  17a88b00  xor r16, r23, r8
0058fc  0b980211  add.s r16, r5, r16
005900  8b18e820  mul.s r17, r16, r14
005904  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005908  92310002  vadd.s.mz vr3{mr1}, zero, vr0
00590c  12310002  vadd.s.mz vr2{mr1}, zero, vr0
005910  92300002  vadd.s.mz vr1{mr1}, zero, vr0
005914  8b981719  sub.s r17, r15, r17
005918  0b9ce840  min.s r24, r17, r14
00591c  bf5d6cfe  blt.s r24, r6, -140
005920  92300002  vadd.s.mz vr1{mr1}, zero, vr0
005924  12310002  vadd.s.mz vr2{mr1}, zero, vr0
005928  92310002  vadd.s.mz vr3{mr1}, zero, vr0
00592c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005930  9f0c0000  addli r25, zero, 0
005934  0b1d0221  mul.s r26, r4, r16
005938  9f0d8fd7  addli r27, r30, -5184
00593c  1f0e0500  addli r28, r10, 0
005940  0b18ae11  add.s r16, r28, r26
005944  9f838c00  addli r7, r25, 64
005948  ca020802  vloads.mz vr5{mr1}, 0(r16)
00594c  9f088800  addli r17, r16, 64
005950  4a830802  vloads.mz vr6{mr1}, 0(r17)
005954  8b98ad11  add.s r17, r27, r26
005958  c2830802  vload.mz vr7{mr1}, 0(r17)
00595c  1f898800  addli r18, r17, 64
005960  42040902  vload.mz vr8{mr1}, 0(r18)
005964  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
005968  92320002  vadd.s.mz vr5{mr1}, zero, vr0
00596c  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
005970  06b40300  vfp162float_l.rn vr8, vr7
005974  86f30300  vfp162float_h.rn vr7, vr7
005978  86340300  vfp162float_l.rn vr9, vr6
00597c  06730300  vfp162float_h.rn vr6, vr6
005980  86120400  vfloat2fp16_l.rn vr5, vr8
005984  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
005988  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
00598c  12340002  vadd.s.mz vr8{mr1}, zero, vr0
005990  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005994  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005998  06940400  vfloat2fp16_l.rn vr8, vr9
00599c  86d20300  vfloat2fp16_h.rn vr5, vr7
0059a0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0059a4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0059a8  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0059ac  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0059b0  06540300  vfloat2fp16_h.rn vr8, vr6
0059b4  46805802  vstore.mz vr5{mr1}, 0(r17)
0059b8  46008902  vstore.mz vr8{mr1}, 0(r18)
0059bc  4b5b7cfe  ble.s r24, r7, -300
0059c0  9f030801  addli r7, r16, 128
0059c4  9f8c0c01  addli r25, r25, 128
0059c8  1f0e0e02  addli r28, r28, 256
0059cc  9f8d0d02  addli r27, r27, 256
0059d0  ca820302  vloads.mz vr5{mr1}, 0(r7)
0059d4  9f038801  addli r7, r16, 192
0059d8  1f880801  addli r16, r17, 128
0059dc  4a830302  vloads.mz vr6{mr1}, 0(r7)
0059e0  c2030802  vload.mz vr7{mr1}, 0(r16)
0059e4  9f838801  addli r7, r17, 192
0059e8  42840302  vload.mz vr8{mr1}, 0(r7)
0059ec  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
0059f0  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0059f4  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
0059f8  12330002  vadd.s.mz vr6{mr1}, zero, vr0
0059fc  86b40300  vfp162float_l.rn vr9, vr7
005a00  86f30300  vfp162float_h.rn vr7, vr7
005a04  86920400  vfloat2fp16_l.rn vr5, vr9
005a08  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
005a0c  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
005a10  86340400  vfp162float_l.rn vr9, vr8
005a14  06740400  vfp162float_h.rn vr8, vr8
005a18  06930400  vfloat2fp16_l.rn vr6, vr9
005a1c  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005a20  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005a24  86d20300  vfloat2fp16_h.rn vr5, vr7
005a28  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005a2c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005a30  06530400  vfloat2fp16_h.rn vr6, vr8
005a34  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
005a38  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005a3c  46005802  vstore.mz vr5{mr1}, 0(r16)
005a40  46806302  vstore.mz vr6{mr1}, 0(r7)
005a44  bffb8cff  blt.s r25, r24, -260
005a48  5bc9ffff  j -440
005a4c  9f0a0000  addli r21, zero, 0
005a50  1f0b0000  addli r22, zero, 0
005a54  00a00000  mfence { lm }
005a58  3f8767fe  blt.s r15, r6, -576
005a5c  0f083b18  div.f.rn r16, r22, r3
005a60  8f883a18  div.f.rn r17, r21, r3
005a64  e3033f00  loadli.w r7,  24(r30)
005a68  abec0100  lui r25, 30
005a6c  2bfd0100  lui r26, 31
005a70  9f0b0000  addli r23, zero, 0
005a74  1f0c8fd7  addli r24, r30, -5184
005a78  9f8c0c00  addli r25, r25, 0
005a7c  1f0d0d00  addli r26, r26, 0
005a80  8b6a0821  mul.f.rn r21, r16, r16
005a84  0b6b0858  neg.f r22, r16
005a88  8be85819  sub.f.rn r17, r17, r21
005a8c  8be87810  add.f.rn r17, r17, r7
005a90  ab03803f  lui r7, 260096
005a94  8f880808  sqrt.f.rn r17, r17
005a98  8f8a1319  div.f.rn r21, r7, r17
005a9c  c2000c02  vload.mz vr1{mr1}, 0(r24)
005aa0  4a810c02  vloads.mz vr2{mr1}, 0(r25)
005aa4  ca010d02  vloads.mz vr3{mr1}, 0(r26)
005aa8  1f884b00  addli r16, r23, 32
005aac  06b20000  vfp162float_l.rn vr4, vr1
005ab0  86f00000  vfp162float_h.rn vr1, vr1
005ab4  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
005ab8  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
005abc  86320100  vfp162float_l.rn vr5, vr2
005ac0  06b30100  vfp162float_l.rn vr6, vr3
005ac4  06710100  vfp162float_h.rn vr2, vr2
005ac8  86f10100  vfp162float_h.rn vr3, vr3
005acc  8a931a02  vmul.f.mz.rn vr7{mr1}, r21, vr1
005ad0  0a924a02  vmul.f.mz.rn vr4{mr1}, r21, vr4
005ad4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005ad8  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
005adc  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
005ae0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005ae4  06110300  vfloat2fp16_l.rn vr2, vr6
005ae8  06d10100  vfloat2fp16_h.rn vr2, vr3
005aec  46002c02  vstore.mz vr2{mr1}, 0(r24)
005af0  cba407ff  ble.s r15, r16, -728
005af4  1f888c00  addli r16, r25, 64
005af8  9f088c00  addli r17, r24, 64
005afc  9f8b8b00  addli r23, r23, 64
005b00  9f8c0c01  addli r25, r25, 128
005b04  1f0c0c01  addli r24, r24, 128
005b08  4a010802  vloads.mz vr2{mr1}, 0(r16)
005b0c  1f088d00  addli r16, r26, 64
005b10  c2810802  vload.mz vr3{mr1}, 0(r17)
005b14  1f0d0d01  addli r26, r26, 128
005b18  4a020802  vloads.mz vr4{mr1}, 0(r16)
005b1c  86b20100  vfp162float_l.rn vr5, vr3
005b20  86f10100  vfp162float_h.rn vr3, vr3
005b24  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
005b28  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
005b2c  06330100  vfp162float_l.rn vr6, vr2
005b30  06710100  vfp162float_h.rn vr2, vr2
005b34  8a925a02  vmul.f.mz.rn vr5{mr1}, r21, vr5
005b38  8a913a02  vmul.f.mz.rn vr3{mr1}, r21, vr3
005b3c  86330200  vfp162float_l.rn vr7, vr4
005b40  06720200  vfp162float_h.rn vr4, vr4
005b44  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
005b48  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
005b4c  86900300  vfloat2fp16_l.rn vr1, vr7
005b50  86500200  vfloat2fp16_h.rn vr1, vr4
005b54  46801802  vstore.mz vr1{mr1}, 0(r17)
005b58  3f9dfbfe  blt.s r23, r15, -188
005b5c  db97ffff  j -836
005b60  9f000040  addli r1, zero, 8192
005b64  2b0100f0  lui r2, 983040
005b68  97902000  or r1, r1, r2
005b6c  2b310200  lui r2, 35
005b70  1f010100  addli r2, r2, 0
005b74  ff002300  l_gm2sm r1, r2, 0(r[7:8])
005b78  db070000  j 60
005b7c  63012f00  loadli.w r2,  16(r30)
005b80  ab0100f0  lui r3, 983040
005b84  1b312100  slli r2, r2, 2
005b88  17113100  or r2, r2, r3
005b8c  ab810200  lui r3, 40
005b90  9f810108  addli r3, r3, 1024
005b94  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005b98  dbef0000  j 1916
005b9c  9f000040  addli r1, zero, 8192
005ba0  2b0100f0  lui r2, 983040
005ba4  97902000  or r1, r1, r2
005ba8  2b510200  lui r2, 37
005bac  1f010100  addli r2, r2, 0
005bb0  ff002400  l_gm2sm r1, r2, 0(r[9:10])
005bb4  abf00000  lui r1, 15
005bb8  00200300  mfence { sm, gm }
005bbc  1b011500  andi r2, r10, 1
005bc0  9f020006  addli r5, zero, 768
005bc4  9b90f0ff  ori r1, r1, 4095
005bc8  80a10004  csr_set csr3, r1
005bcc  9f000006  addli r1, zero, 768
005bd0  00d00100  sync_group
005bd4  67082fd6  storeli.w r2, -5248(r30)
005bd8  37200100  beq r2, zero, 8
005bdc  9f02000a  addli r5, zero, 1280
005be0  63411f00  loadli.w r2,  12(r30)
005be4  9f110000  addli r3, zero, 1
005be8  3f6c3104  blt.s r2, r3, 2840
005bec  e3010fd7  loadli.w r3,  -5248(r30)
005bf0  00510102  load_param_i r2, 2
005bf4  ab180200  lui r17, 33
005bf8  ab7b0200  lui r23, 39
005bfc  2b7e0200  lui r28, 39
005c00  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005c04  9b441500  srli r9, r10, 1
005c08  1f030000  addli r6, zero, 0
005c0c  1bb52200  slli r10, r5, 2
005c10  1f078fd7  addli r14, r30, -5184
005c14  1f090005  addli r18, zero, 640
005c18  1f0a0001  addli r20, zero, 128
005c1c  9f0a8000  addli r21, zero, 64
005c20  1f0b4000  addli r22, zero, 32
005c24  9f0d0003  addli r27, zero, 384
005c28  1b441100  srli r8, r2, 1
005c2c  2b310200  lui r2, 35
005c30  9f880800  addli r17, r17, 0
005c34  9f8b0b00  addli r23, r23, 0
005c38  1f0e0e04  addli r28, r28, 512
005c3c  8b901120  mul.s r1, r3, r1
005c40  1f010100  addli r2, r2, 0
005c44  67041fd6  storeli.w r1, -5312(r30)
005c48  9bb02000  slli r1, r1, 2
005c4c  8b952010  add.s r11, r1, r2
005c50  2b510200  lui r2, 37
005c54  1f010100  addli r2, r2, 0
005c58  0b962010  add.s r12, r1, r2
005c5c  abf0ffff  lui r1, 1048575
005c60  1f018fd5  addli r2, r30, -5440
005c64  9b9000f8  ori r1, r1, 3968
005c68  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005c6c  63411f00  loadli.w r2,  12(r30)
005c70  67081fd4  storeli.w r1, -5504(r30)
005c74  abf00000  lui r1, 15
005c78  1b9cf0ff  ori r24, r1, 4095
005c7c  5b040000  j 32
005c80  00a00300  mfence { lm, sm, gm }
005c84  80210c04  csr_set csr3, r24
005c88  00d00100  sync_group
005c8c  63411f00  loadli.w r2,  12(r30)
005c90  0b138310  add.s r6, r6, r8
005c94  3f202300  blt.s r6, r2, 8
005c98  dbfaf5ff  j -20524
005c9c  8b109310  add.s r1, r6, r9
005ca0  cb0f11fe  ble.s r2, r1, -32
005ca4  63011f00  loadli.w r2,  8(r30)
005ca8  9f210000  addli r3, zero, 2
005cac  1f027fd6  addli r4, r30, -5320
005cb0  8b902010  add.s r1, r1, r2
005cb4  63018fd6  loadli.w r2,  -5312(r30)
005cb8  9bb0b000  slli r1, r1, 11
005cbc  97902000  or r1, r1, r2
005cc0  b3900028  sext_int2long r[2:3], r1
005cc4  97b73002  sll.d r[16:17], r[2:3], r3
005cc8  6b510200  load.d r[3:4], 0(r4)
005ccc  ab0000f0  lui r1, 983040
005cd0  97101500  or r1, r10, r1
005cd4  0b21f110  add.ul r[3:4], r[3:4], r[16:17]
005cd8  ff20e100  l_gm2lm r1, r14, 0(r[3:4])
005cdc  00a00200  mfence { lm, gm }
005ce0  e3000fd7  loadli.w r1,  -5248(r30)
005ce4  3ba60000  bneq r1, zero, 392
005ce8  9f008fd5  addli r1, r30, -5440
005cec  e3010fd5  loadli.w r3,  -5504(r30)
005cf0  1f010000  addli r2, zero, 0
005cf4  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
005cf8  92303002  vadd.s.mz vr1{mr1}, zero, vr3
005cfc  12313002  vadd.s.mz vr2{mr1}, zero, vr3
005d00  12323002  vadd.s.mz vr4{mr1}, zero, vr3
005d04  8b161111  add.s r13, r2, r17
005d08  8b102710  add.s r1, r14, r2
005d0c  9f810101  addli r3, r3, 128
005d10  1f010104  addli r2, r2, 512
005d14  1f820601  addli r4, r13, 128
005d18  4a900602  vloads_mask16.mz vr0{mr1}, 0(r13)
005d1c  9f838600  addli r7, r13, 64
005d20  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
005d24  9f898001  addli r19, r1, 192
005d28  ca120202  vloads_mask16.mz vr5{mr1}, 0(r4)
005d2c  1f828601  addli r4, r13, 192
005d30  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
005d34  9f838000  addli r7, r1, 64
005d38  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
005d3c  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
005d40  1f820001  addli r4, r1, 128
005d44  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
005d48  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
005d4c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005d50  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
005d54  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005d58  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005d5c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005d60  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
005d64  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
005d68  1f820602  addli r4, r13, 256
005d6c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005d70  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
005d74  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
005d78  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
005d7c  9f830003  addli r7, r1, 384
005d80  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
005d84  1f828602  addli r4, r13, 320
005d88  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
005d8c  9f890002  addli r19, r1, 256
005d90  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005d94  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
005d98  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005d9c  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
005da0  1f820603  addli r4, r13, 384
005da4  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
005da8  9f868603  addli r13, r13, 448
005dac  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005db0  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
005db4  1f828002  addli r4, r1, 320
005db8  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
005dbc  9f808003  addli r1, r1, 448
005dc0  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
005dc4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005dc8  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
005dcc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005dd0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005dd4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005dd8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005ddc  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
005de0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005de4  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
005de8  13822105  setlt.u r4, r3, r18
005dec  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005df0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005df4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005df8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005dfc  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005e00  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
005e04  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
005e08  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005e0c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005e10  bb5b02fe  bneq r4, zero, -268
005e14  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005e18  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005e1c  9f000002  addli r1, zero, 256
005e20  6af100c0  vsrl.p vr2, r1, vr0
005e24  eaf110c0  vsrl.p vr3, r1, vr1
005e28  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005e2c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005e30  6a710ac0  vsrl.p vr2, r20, vr0
005e34  ea711ac0  vsrl.p vr3, r20, vr1
005e38  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005e3c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005e40  6af10ac0  vsrl.p vr2, r21, vr0
005e44  eaf11ac0  vsrl.p vr3, r21, vr1
005e48  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005e4c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005e50  6a710bc0  vsrl.p vr2, r22, vr0
005e54  ea711bc0  vsrl.p vr3, r22, vr1
005e58  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005e5c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005e60  fa130040  vextracti.f r7, 0(vr0)
005e64  fa900040  vextracti.f r1, 0(vr1)
005e68  5b630000  j 792
005e6c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005e70  abf0ffff  lui r1, 1048575
005e74  1f010000  addli r2, zero, 0
005e78  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005e7c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005e80  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005e84  9b9100f8  ori r3, r1, 3968
005e88  8b902810  add.s r1, r17, r2
005e8c  8b162710  add.s r13, r14, r2
005e90  9f810101  addli r3, r3, 128
005e94  1f010104  addli r2, r2, 512
005e98  1f8d0031  addli r26, r1, 6272
005e9c  9f830030  addli r7, r1, 6144
005ea0  1f828031  addli r4, r1, 6336
005ea4  9f8c0618  addli r25, r13, 3072
005ea8  ca130d02  vloads_mask16.mz vr7{mr1}, 0(r26)
005eac  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
005eb0  9f838030  addli r7, r1, 6208
005eb4  ca140202  vloads_mask16.mz vr9{mr1}, 0(r4)
005eb8  1f828618  addli r4, r13, 3136
005ebc  1f8d8619  addli r26, r13, 3264
005ec0  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
005ec4  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
005ec8  9f830619  addli r7, r13, 3200
005ecc  42100d02  vload_mask16.mz vr0{mr1}, 0(r26)
005ed0  c2150202  vload_mask16.mz vr11{mr1}, 0(r4)
005ed4  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
005ed8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005edc  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
005ee0  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
005ee4  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
005ee8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005eec  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
005ef0  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
005ef4  9f830032  addli r7, r1, 6400
005ef8  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
005efc  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
005f00  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005f04  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
005f08  9f8c061a  addli r25, r13, 3328
005f0c  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
005f10  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
005f14  1f82861b  addli r4, r13, 3520
005f18  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
005f1c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
005f20  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
005f24  9f838032  addli r7, r1, 6464
005f28  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005f2c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005f30  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
005f34  9f830033  addli r7, r1, 6528
005f38  9f808033  addli r1, r1, 6592
005f3c  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
005f40  9f83861a  addli r7, r13, 3392
005f44  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
005f48  9f80061b  addli r1, r13, 3456
005f4c  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
005f50  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005f54  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
005f58  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005f5c  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
005f60  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005f64  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005f68  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
005f6c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005f70  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
005f74  9383b105  setlt.u r7, r3, r27
005f78  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005f7c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005f80  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005f84  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005f88  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005f8c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005f90  46107202  vstore_mask16.mz vr7{mr1}, 0(r4)
005f94  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005f98  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005f9c  bbbb03fe  bneq r7, zero, -276
005fa0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005fa4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005fa8  9f000002  addli r1, zero, 256
005fac  9f060000  addli r13, zero, 0
005fb0  eaf110c0  vsrl.p vr3, r1, vr1
005fb4  6af100c0  vsrl.p vr2, r1, vr0
005fb8  abf0ffff  lui r1, 1048575
005fbc  1b9d00f8  ori r26, r1, 3968
005fc0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005fc4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005fc8  ea711ac0  vsrl.p vr3, r20, vr1
005fcc  6a710ac0  vsrl.p vr2, r20, vr0
005fd0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005fd4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005fd8  eaf11ac0  vsrl.p vr3, r21, vr1
005fdc  6af10ac0  vsrl.p vr2, r21, vr0
005fe0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005fe4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005fe8  ea711bc0  vsrl.p vr3, r22, vr1
005fec  6a710bc0  vsrl.p vr2, r22, vr0
005ff0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005ff4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005ff8  fa910040  vextracti.f r3, 0(vr1)
005ffc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
006000  7a110040  vextracti.f r2, 0(vr0)
006004  12311002  vadd.s.mz vr2{mr1}, zero, vr1
006008  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00600c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
006010  8b9cd810  add.s r25, r17, r13
006014  8b10d710  add.s r1, r14, r13
006018  1f0d0d01  addli r26, r26, 128
00601c  9f860604  addli r13, r13, 512
006020  1f820c18  addli r4, r25, 3072
006024  9f830c19  addli r7, r25, 3200
006028  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
00602c  9f898001  addli r19, r1, 192
006030  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
006034  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
006038  1f828c18  addli r4, r25, 3136
00603c  9f838c19  addli r7, r25, 3264
006040  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
006044  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
006048  1f820001  addli r4, r1, 128
00604c  ca930302  vloads_mask16.mz vr7{mr1}, 0(r7)
006050  9f838000  addli r7, r1, 64
006054  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
006058  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
00605c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
006060  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
006064  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
006068  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00606c  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
006070  1f820c1a  addli r4, r25, 3328
006074  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
006078  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00607c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
006080  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
006084  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
006088  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
00608c  1f828c1a  addli r4, r25, 3392
006090  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
006094  9f890002  addli r19, r1, 256
006098  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
00609c  9f830003  addli r7, r1, 384
0060a0  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0060a4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0060a8  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
0060ac  1f820c1b  addli r4, r25, 3456
0060b0  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
0060b4  9f8c8c1b  addli r25, r25, 3520
0060b8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0060bc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0060c0  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
0060c4  1f828002  addli r4, r1, 320
0060c8  4a950c02  vloads_mask16.mz vr10{mr1}, 0(r25)
0060cc  9f808003  addli r1, r1, 448
0060d0  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
0060d4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0060d8  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
0060dc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0060e0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0060e4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0060e8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0060ec  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
0060f0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0060f4  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
0060f8  13022d05  setlt.u r4, r26, r18
0060fc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
006100  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
006104  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
006108  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00610c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
006110  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
006114  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
006118  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00611c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006120  bb4b02fe  bneq r4, zero, -272
006124  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
006128  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00612c  9f000002  addli r1, zero, 256
006130  6af100c0  vsrl.p vr2, r1, vr0
006134  eaf110c0  vsrl.p vr3, r1, vr1
006138  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00613c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006140  6a710ac0  vsrl.p vr2, r20, vr0
006144  ea711ac0  vsrl.p vr3, r20, vr1
006148  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00614c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006150  6af10ac0  vsrl.p vr2, r21, vr0
006154  eaf11ac0  vsrl.p vr3, r21, vr1
006158  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00615c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006160  6a710bc0  vsrl.p vr2, r22, vr0
006164  ea711bc0  vsrl.p vr3, r22, vr1
006168  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00616c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006170  fa100040  vextracti.f r1, 0(vr0)
006174  7a920040  vextracti.f r4, 0(vr1)
006178  8b631110  add.f.rn r7, r2, r1
00617c  8be04110  add.f.rn r1, r3, r4
006180  8b018330  div.u r3, r6, r8
006184  00320002  core_id r4
006188  1f010000  addli r2, zero, 0
00618c  1f0d0000  addli r26, zero, 0
006190  9bb16100  slli r3, r3, 6
006194  9b810104  andi r3, r3, 64
006198  97914100  or r3, r3, r4
00619c  1bb22100  slli r4, r3, 2
0061a0  9b81e107  andi r3, r3, 126
0061a4  8b167211  add.s r13, r4, r23
0061a8  9bb12100  slli r3, r3, 2
0061ac  73e07600  stores.w r7, 0(r13)
0061b0  8b13c211  add.s r7, r4, r28
0061b4  1b124200  ori r4, r4, 4
0061b8  73e01300  stores.w r1, 0(r7)
0061bc  8b107211  add.s r1, r4, r23
0061c0  8b937111  add.s r7, r3, r23
0061c4  0b12c211  add.s r4, r4, r28
0061c8  8b91c111  add.s r3, r3, r28
0061cc  00a00300  mfence { lm, sm, gm }
0061d0  80210c04  csr_set csr3, r24
0061d4  00d00100  sync_group
0061d8  efc00000  loads.w r1, 0(r1)
0061dc  efc30300  loads.w r7, 0(r7)
0061e0  6f420200  loads.w r4, 0(r4)
0061e4  efc10100  loads.w r3, 0(r3)
0061e8  8be07010  add.f.rn r1, r1, r7
0061ec  8b613210  add.f.rn r3, r4, r3
0061f0  2b02003a  lui r4, 237568
0061f4  8be04020  mul.f.rn r1, r1, r4
0061f8  8be14120  mul.f.rn r3, r3, r4
0061fc  0be21020  mul.f.rn r4, r1, r1
006200  8be60058  neg.f r13, r1
006204  8be14118  sub.f.rn r3, r3, r4
006208  63023f00  loadli.w r4,  24(r30)
00620c  8be14110  add.f.rn r3, r3, r4
006210  2b02803f  lui r4, 260096
006214  8f810108  sqrt.f.rn r3, r3
006218  8f013218  div.f.rn r3, r4, r3
00621c  8b902510  add.s r1, r11, r2
006220  8b1c2710  add.s r25, r14, r2
006224  8b132610  add.s r7, r12, r2
006228  9f898000  addli r19, r1, 64
00622c  1f828c00  addli r4, r25, 64
006230  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
006234  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
006238  4a920302  vloads_mask16.mz vr4{mr1}, 0(r7)
00623c  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
006240  9f898300  addli r19, r7, 64
006244  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
006248  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
00624c  9f094d00  addli r19, r26, 32
006250  12900602  vadd.f.mz.rn vr0{mr1}, r13, vr0
006254  93893207  setle.u r19, r5, r19
006258  92901602  vadd.f.mz.rn vr1{mr1}, r13, vr1
00625c  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
006260  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
006264  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
006268  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
00626c  46904c02  vstore_mask16.mz vr4{mr1}, 0(r25)
006270  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
006274  bb910900  bneq r19, zero, 100
006278  1f820c01  addli r4, r25, 128
00627c  9f898c01  addli r19, r25, 192
006280  9f8c0001  addli r25, r1, 128
006284  9f808001  addli r1, r1, 192
006288  1f0d8d00  addli r26, r26, 64
00628c  1f010102  addli r2, r2, 256
006290  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
006294  9f8c0301  addli r25, r7, 128
006298  9f838301  addli r7, r7, 192
00629c  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0062a0  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
0062a4  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
0062a8  93005d04  setlt.u r1, r26, r5
0062ac  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
0062b0  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
0062b4  12900602  vadd.f.mz.rn vr0{mr1}, r13, vr0
0062b8  92901602  vadd.f.mz.rn vr1{mr1}, r13, vr1
0062bc  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
0062c0  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
0062c4  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
0062c8  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0062cc  46103202  vstore_mask16.mz vr3{mr1}, 0(r4)
0062d0  46905902  vstore_mask16.mz vr5{mr1}, 0(r19)
0062d4  3bad00fe  bneq r1, zero, -184
0062d8  6b510f00  load.d r[3:4], 0(r30)
0062dc  ab0000f0  lui r1, 983040
0062e0  00a00000  mfence { lm }
0062e4  97101500  or r1, r10, r1
0062e8  0b21f110  add.ul r[3:4], r[3:4], r[16:17]
0062ec  ff30e100  s_lm2gm r1, r14, 0(r[3:4])
0062f0  00a00200  mfence { lm, gm }
0062f4  5b33ffff  j -1640
0062f8  63012f00  loadli.w r2,  16(r30)
0062fc  ab0100f0  lui r3, 983040
006300  1b312100  slli r2, r2, 2
006304  17113100  or r2, r2, r3
006308  ab910200  lui r3, 41
00630c  9f810108  addli r3, r3, 1024
006310  7f013400  l_gm2sm r2, r3, 0(r[9:10])
006314  2bf10000  lui r2, 15
006318  e3411f00  loadli.w r3,  12(r30)
00631c  00200300  mfence { sm, gm }
006320  1b11f1ff  ori r2, r2, 4095
006324  80210104  csr_set csr3, r2
006328  00d00100  sync_group
00632c  4bdf1100  ble.s r3, r1, 980
006330  e3012f00  loadli.w r3,  16(r30)
006334  e3422f00  loadli.w r5,  20(r30)
006338  ab780200  lui r17, 39
00633c  2b890200  lui r18, 40
006340  ab990200  lui r19, 41
006344  9f038fd7  addli r7, r30, -5184
006348  1f140000  addli r8, zero, 1
00634c  1f050002  addli r10, zero, 256
006350  1f060001  addli r12, zero, 128
006354  9f068000  addli r13, zero, 64
006358  1f084000  addli r16, zero, 32
00635c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
006360  9f880808  addli r17, r17, 1024
006364  1f090908  addli r18, r18, 1024
006368  9f890908  addli r19, r19, 1024
00636c  0b925110  add.s r4, r3, r5
006370  9bb52100  slli r11, r3, 2
006374  33810108  fix2float.rn r2, r3
006378  9f71f2ff  addli r3, r4, -1
00637c  1bb22200  slli r4, r5, 2
006380  67082fd4  storeli.w r2, -5504(r30)
006384  1f010fd7  addli r2, r30, -5248
006388  670cbfd4  storeli.w r11, -5440(r30)
00638c  8b925130  div.s r5, r3, r5
006390  abf1ffff  lui r3, 1048575
006394  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
006398  9b94f1ff  ori r9, r3, 4095
00639c  5b080000  j 64
0063a0  1f018fd6  addli r2, r30, -5312
0063a4  00a00000  mfence { lm }
0063a8  6b5a0f00  load.d r[21:22], 0(r30)
0063ac  ab0100f0  lui r3, 983040
0063b0  00530102  load_param_i r6, 2
0063b4  e3058fd5  loadli.w r11,  -5440(r30)
0063b8  6b5b0100  load.d r[23:24], 0(r2)
0063bc  8b101310  add.s r1, r6, r1
0063c0  97913500  or r3, r11, r3
0063c4  0b2a6a11  add.ul r[21:22], r[21:22], r[23:24]
0063c8  ff317a00  s_lm2gm r3, r7, 0(r[21:22])
0063cc  00a00200  mfence { lm, gm }
0063d0  63411f00  loadli.w r2,  12(r30)
0063d4  3fa02000  blt.s r1, r2, 8
0063d8  5b650000  j 808
0063dc  63011f00  loadli.w r2,  8(r30)
0063e0  8b912010  add.s r3, r1, r2
0063e4  1f210000  addli r2, zero, 2
0063e8  8b91f120  mul.s r3, r3, r15
0063ec  339a0128  sext_int2long r[21:22], r3
0063f0  ab0100f0  lui r3, 983040
0063f4  173c2a02  sll.d r[25:26], r[21:22], r2
0063f8  1f017fd6  addli r2, r30, -5320
0063fc  97913500  or r3, r11, r3
006400  6b5a0100  load.d r[21:22], 0(r2)
006404  1f018fd6  addli r2, r30, -5312
006408  0b2b8a11  add.ul r[23:24], r[21:22], r[25:26]
00640c  ff217b00  l_gm2lm r3, r7, 0(r[23:24])
006410  00a00200  mfence { lm, gm }
006414  73308101  store.d r[25:26], 0(r2)
006418  bf978200  blt.s r5, r8, 484
00641c  9f0b0000  addli r23, zero, 0
006420  1f0b0000  addli r22, zero, 0
006424  1f0c0000  addli r24, zero, 0
006428  db0c0000  j 100
00642c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
006430  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006434  1f1c0c00  addli r24, r24, 1
006438  6a7105c0  vsrl.p vr2, r10, vr0
00643c  ea7115c0  vsrl.p vr3, r10, vr1
006440  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006444  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006448  6a7106c0  vsrl.p vr2, r12, vr0
00644c  ea7116c0  vsrl.p vr3, r12, vr1
006450  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006454  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006458  6af106c0  vsrl.p vr2, r13, vr0
00645c  eaf116c0  vsrl.p vr3, r13, vr1
006460  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006464  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006468  6a7108c0  vsrl.p vr2, r16, vr0
00646c  ea7118c0  vsrl.p vr3, r16, vr1
006470  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006474  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006478  7a110040  vextracti.f r2, 0(vr0)
00647c  fa910040  vextracti.f r3, 0(vr1)
006480  8beb2b10  add.f.rn r23, r23, r2
006484  0b6b3b10  add.f.rn r22, r22, r3
006488  b7755c00  beq r24, r5, 380
00648c  9f010c00  addli r3, r24, 0
006490  3730a700  beq r14, r10, 12
006494  97219c00  xor r3, r24, r9
006498  8b913210  add.s r3, r5, r3
00649c  1f010fd7  addli r2, r30, -5248
0064a0  0b93e120  mul.s r6, r3, r14
0064a4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0064a8  0b936718  sub.s r6, r15, r6
0064ac  8b1ce340  min.s r25, r6, r14
0064b0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0064b4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0064b8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0064bc  bfcd8cfe  blt.s r25, r8, -144
0064c0  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0064c4  1f0d0000  addli r26, zero, 0
0064c8  8b1d3220  mul.s r27, r4, r3
0064cc  1f0e8fd7  addli r28, r30, -5184
0064d0  9f850800  addli r11, r17, 0
0064d4  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0064d8  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0064dc  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0064e0  8b91b511  add.s r3, r11, r27
0064e4  0b13be11  add.s r6, r28, r27
0064e8  1f818100  addli r2, r3, 64
0064ec  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
0064f0  1f8a8101  addli r20, r3, 192
0064f4  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
0064f8  9f0a8301  addli r21, r6, 192
0064fc  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
006500  1f810101  addli r2, r3, 128
006504  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
006508  1f0a0301  addli r20, r6, 128
00650c  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
006510  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
006514  c2150a02  vload_mask16.mz vr11{mr1}, 0(r20)
006518  1f018300  addli r2, r6, 64
00651c  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
006520  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
006524  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
006528  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00652c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
006530  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006534  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006538  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
00653c  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
006540  1f018d00  addli r2, r26, 64
006544  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
006548  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00654c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006550  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
006554  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
006558  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
00655c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
006560  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
006564  4bab2cfe  ble.s r25, r2, -312
006568  1f8a0102  addli r20, r3, 256
00656c  9f8a8102  addli r21, r3, 320
006570  1f010302  addli r2, r6, 256
006574  1f0d0d01  addli r26, r26, 128
006578  9f850504  addli r11, r11, 512
00657c  1f0e0e04  addli r28, r28, 512
006580  4a100a02  vloads_mask16.mz vr0{mr1}, 0(r20)
006584  1f8a0103  addli r20, r3, 384
006588  9f818103  addli r3, r3, 448
00658c  ca920a02  vloads_mask16.mz vr5{mr1}, 0(r21)
006590  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
006594  ca130a02  vloads_mask16.mz vr7{mr1}, 0(r20)
006598  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
00659c  9f010303  addli r3, r6, 384
0065a0  1f0a8302  addli r20, r6, 320
0065a4  1f038303  addli r6, r6, 448
0065a8  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
0065ac  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
0065b0  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0065b4  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
0065b8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0065bc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0065c0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0065c4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0065c8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0065cc  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
0065d0  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0065d4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0065d8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0065dc  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
0065e0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0065e4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0065e8  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0065ec  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0065f0  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0065f4  bf3b9dff  blt.s r26, r25, -276
0065f8  dbc6ffff  j -460
0065fc  1f0b0000  addli r22, zero, 0
006600  9f0b0000  addli r23, zero, 0
006604  00a00000  mfence { lm }
006608  3fe687fe  blt.s r15, r8, -616
00660c  63010fd5  loadli.w r2,  -5504(r30)
006610  9f050000  addli r11, zero, 0
006614  1f0c0000  addli r24, zero, 0
006618  8f812b18  div.f.rn r3, r23, r2
00661c  0f032b18  div.f.rn r6, r22, r2
006620  63013f00  loadli.w r2,  24(r30)
006624  0beb3120  mul.f.rn r22, r3, r3
006628  8beb0158  neg.f r23, r3
00662c  0b636319  sub.f.rn r6, r6, r22
006630  0b632310  add.f.rn r6, r6, r2
006634  2b01803f  lui r2, 260096
006638  0f030308  sqrt.f.rn r6, r6
00663c  0f0b6118  div.f.rn r22, r2, r6
006640  0b932511  add.s r6, r11, r18
006644  8b91b310  add.s r3, r7, r11
006648  9f0c8300  addli r25, r6, 64
00664c  4a110302  vloads_mask16.mz vr2{mr1}, 0(r6)
006650  0b933511  add.s r6, r11, r19
006654  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
006658  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
00665c  9f8c8100  addli r25, r3, 64
006660  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
006664  1f038300  addli r6, r6, 64
006668  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
00666c  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
006670  1f034c00  addli r6, r24, 32
006674  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
006678  92925b02  vadd.f.mz.rn vr5{mr1}, r23, vr5
00667c  8a101b02  vmul.f.mz.rn vr1{mr1}, r22, vr1
006680  8a125b02  vmul.f.mz.rn vr5{mr1}, r22, vr5
006684  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
006688  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
00668c  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
006690  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
006694  4bb467fe  ble.s r15, r6, -756
006698  0b13b910  add.s r6, r18, r11
00669c  8b9cb910  add.s r25, r19, r11
0066a0  1f0c8c00  addli r24, r24, 64
0066a4  9f850502  addli r11, r11, 256
0066a8  1f0d0301  addli r26, r6, 128
0066ac  9f8d0c01  addli r27, r25, 128
0066b0  1f038301  addli r6, r6, 192
0066b4  9f8c8c01  addli r25, r25, 192
0066b8  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
0066bc  1f8d0101  addli r26, r3, 128
0066c0  9f818101  addli r3, r3, 192
0066c4  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
0066c8  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
0066cc  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
0066d0  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
0066d4  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0066d8  92913b02  vadd.f.mz.rn vr3{mr1}, r23, vr3
0066dc  12924b02  vadd.f.mz.rn vr4{mr1}, r23, vr4
0066e0  8a113b02  vmul.f.mz.rn vr3{mr1}, r22, vr3
0066e4  0a124b02  vmul.f.mz.rn vr4{mr1}, r22, vr4
0066e8  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
0066ec  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
0066f0  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
0066f4  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
0066f8  3f2dfcfe  blt.s r24, r15, -184
0066fc  db94ffff  j -860
006700  9f0e8fd3  addli sp, r30, -5696
006704  e38f2e2c  loadli.w r31,  5648(sp)
006708  63cf2e2c  loadli.w r30,  5652(sp)
00670c  638e3e2c  loadli.w r28,  5656(sp)
006710  e3cd3e2c  loadli.w r27,  5660(sp)
006714  638d4e2c  loadli.w r26,  5664(sp)
006718  e3cc4e2c  loadli.w r25,  5668(sp)
00671c  638c5e2c  loadli.w r24,  5672(sp)
006720  e3cb5e2c  loadli.w r23,  5676(sp)
006724  638b6e2c  loadli.w r22,  5680(sp)
006728  e3ca6e2c  loadli.w r21,  5684(sp)
00672c  638a7e2c  loadli.w r20,  5688(sp)
006730  e3c97e2c  loadli.w r19,  5692(sp)
006734  9f8e8e2c  addli sp, sp, 5696
006738  5f800f00  jr r31, 0
00673c  00100000  exit
006740  00100000  exit
006744  00100000  exit
006748  00100000  exit
00674c  00100000  exit
006750  00100000  exit
006754  00100000  exit
006758  00100000  exit
00675c  00100000  exit
006760  00100000  exit
006764  00100000  exit
006768  00100000  exit
00676c  00100000  exit
006770  00100000  exit
006774  00100000  exit
006778  00100000  exit
00677c  00100000  exit
006780  00100000  exit
006784  00100000  exit
006788  00100000  exit
00678c  00100000  exit
006790  00100000  exit
006794  00100000  exit
006798  00100000  exit
00679c  00100000  exit
0067a0  00100000  exit
0067a4  00100000  exit
0067a8  00100000  exit
0067ac  00100000  exit
0067b0  00100000  exit
0067b4  00100000  exit
0067b8  00100000  exit
0067bc  00100000  exit
0067c0  00100000  exit
0067c4  00100000  exit
0067c8  00100000  exit
0067cc  00100000  exit
0067d0  00100000  exit
0067d4  00100000  exit
0067d8  00100000  exit
0067dc  00100000  exit
0067e0  00100000  exit
0067e4  00100000  exit
0067e8  00100000  exit
0067ec  00100000  exit
0067f0  00100000  exit
0067f4  00100000  exit
0067f8  00100000  exit
0067fc  00100000  exit
006800  00100000  exit
006804  00100000  exit
006808  00100000  exit
00680c  00100000  exit
006810  00100000  exit
006814  00100000  exit
006818  00100000  exit
00681c  00100000  exit
006820  00100000  exit
006824  00100000  exit
006828  00100000  exit
00682c  00100000  exit
006830  00100000  exit
006834  00100000  exit
006838  00100000  exit
00683c  00100000  exit
006840  00100000  exit
006844  00100000  exit
006848  00100000  exit
00684c  00100000  exit
006850  00100000  exit
006854  00100000  exit
006858  00100000  exit
00685c  00100000  exit
006860  00100000  exit
006864  00100000  exit
006868  00100000  exit
00686c  00100000  exit
006870  00100000  exit
006874  00100000  exit
006878  00100000  exit
00687c  00100000  exit
006880  00100000  exit
006884  00100000  exit
006888  00100000  exit
00688c  00100000  exit
006890  00100000  exit
006894  00100000  exit
006898  00100000  exit
00689c  00100000  exit
0068a0  00100000  exit
0068a4  00100000  exit
0068a8  00100000  exit
0068ac  00100000  exit
0068b0  00100000  exit
0068b4  00100000  exit
0068b8  00100000  exit
0068bc  00100000  exit
0068c0  00100000  exit
0068c4  00100000  exit
0068c8  00100000  exit
0068cc  00100000  exit
0068d0  00100000  exit
0068d4  00100000  exit
0068d8  00100000  exit
0068dc  00100000  exit
0068e0  00100000  exit
0068e4  00100000  exit
0068e8  00100000  exit
0068ec  00100000  exit
0068f0  00100000  exit
0068f4  00100000  exit
0068f8  00100000  exit
0068fc  00100000  exit
006900  00100000  exit
006904  00100000  exit
006908  00100000  exit
00690c  00100000  exit
006910  00100000  exit
006914  00100000  exit
006918  00100000  exit
00691c  00100000  exit
006920  00100000  exit
006924  00100000  exit
006928  00100000  exit
00692c  00100000  exit
006930  00100000  exit
006934  00100000  exit
006938  00100000  exit
00693c  00100000  exit
006940  00100000  exit
006944  00100000  exit
006948  00100000  exit
00694c  00100000  exit
006950  00100000  exit
006954  00100000  exit
006958  00100000  exit
00695c  00100000  exit
006960  00100000  exit
006964  00100000  exit
006968  00100000  exit
00696c  00100000  exit
006970  00100000  exit
006974  00100000  exit
006978  00100000  exit
