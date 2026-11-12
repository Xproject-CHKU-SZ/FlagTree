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
000120  1f320000  addli r4, zero, 3
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
0001c8  9f057fd6  addli r11, r30, -5320
0001cc  73b02500  store.d r[3:4], 0(r11)
0001d0  3f511500  blt.s r10, r1, 84
0001d4  1f110000  addli r2, zero, 1
0001d8  b7db2004  beq r1, r2, 2804
0001dc  1f210000  addli r2, zero, 2
0001e0  bb9a2004  bneq r1, r2, 2724
0001e4  e3403f00  loadli.w r1,  28(r30)
0001e8  b7bf0012  beq r1, zero, 10220
0001ec  80300002  core_id r1
0001f0  1f210000  addli r2, zero, 2
0001f4  b7ae2026  beq r1, r2, 20392
0001f8  1f110000  addli r2, zero, 1
0001fc  b78d2026  beq r1, r2, 20320
000200  bbee0026  bneq r1, zero, 20408
000204  63012f00  loadli.w r2,  16(r30)
000208  ab0100f0  lui r3, 983040
00020c  1b311100  slli r2, r2, 1
000210  17113100  or r2, r2, r3
000214  ab910100  lui r3, 25
000218  9f810100  addli r3, r3, 0
00021c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000220  5bf30900  j 20376
000224  1f310000  addli r2, zero, 3
000228  b79b2004  beq r1, r2, 2788
00022c  1f410000  addli r2, zero, 4
000230  3bd92004  bneq r1, r2, 2644
000234  e3002f00  loadli.w r1,  16(r30)
000238  1f010010  addli r2, zero, 2048
00023c  3bb0200a  bneq r1, r2, 5132
000240  e3403f00  loadli.w r1,  28(r30)
000244  b7c1001a  beq r1, zero, 13424
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
0003d4  bfcc6130  blt.s r3, r6, 25392
0003d8  e3018fd5  loadli.w r3,  -5440(r30)
0003dc  1f0a8fd7  addli r20, r30, -5184
0003e0  1bb71200  slli r14, r5, 1
0003e4  9f030000  addli r7, zero, 0
0003e8  9f7c7000  addli r25, zero, 63
0003ec  9f0d0005  addli r27, zero, 640
0003f0  ab06803f  lui r13, 260096
0003f4  1f062000  addli r12, zero, 16
0003f8  1f3b0000  addli r22, zero, 3
0003fc  1f5e1000  addli r28, zero, 13
000400  2bec0700  lui r24, 126
000404  1f2d1000  addli r26, zero, 10
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
000434  0b114711  add.s r2, r14, r20
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
000468  e70fefd2  storeli.w r14, -5640(r30)
00046c  9b9000f8  ori r1, r1, 3968
000470  674e1fd2  storeli.w r1, -5660(r30)
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
0004b4  dbf70000  j 1980
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
0004e8  17b86402  sll.d r[17:18], r[10:11], r6
0004ec  ebd40100  load.d r[10:11], 0(r3)
0004f0  9f018fd6  addli r3, r30, -5312
0004f4  97101700  or r1, r14, r1
0004f8  1b010104  andi r2, r2, 64
0004fc  73b00101  store.d r[17:18], 0(r3)
000500  8ba40411  add.ul r[10:11], r[10:11], r[17:18]
000504  ffa04401  l_gm2lm r1, r20, 0(r[10:11])
000508  80300002  core_id r1
00050c  00a00200  mfence { lm, gm }
000510  97181100  or r17, r2, r1
000514  6341dfd3  loadli.w r2,  -5652(r30)
000518  e301efd3  loadli.w r3,  -5648(r30)
00051c  e344efd3  loadli.w r9,  -5644(r30)
000520  c2000102  vload.mz vr1{mr1}, 0(r2)
000524  9f84c4ff  addli r9, r9, -32
000528  9f8581ff  addli r11, r3, -64
00052c  1f0181ff  addli r2, r2, -64
000530  13859c04  setlt.u r10, r25, r9
000534  66c111a0  vmerge_h.hf vr2, vr3, vr1
000538  e6c01180  vmerge_l.hf vr1, vr3, vr1
00053c  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
000540  9f8101ff  addli r3, r3, -128
000544  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
000548  3b6f05fe  bneq r10, zero, -40
00054c  00a00000  mfence { lm }
000550  1f070003  addli r14, zero, 384
000554  e3008fd5  loadli.w r1,  -5440(r30)
000558  3bb60000  bneq r1, zero, 396
00055c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000560  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000564  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000568  e341cfd3  loadli.w r3,  -5660(r30)
00056c  1f010000  addli r2, zero, 0
000570  0b15f110  add.s r10, r2, r15
000574  8b142a10  add.s r9, r20, r2
000578  9f810101  addli r3, r3, 128
00057c  1f010104  addli r2, r2, 512
000580  9f000501  addli r1, r10, 128
000584  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
000588  9f058500  addli r11, r10, 64
00058c  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
000590  1f888401  addli r16, r9, 192
000594  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
000598  9f008501  addli r1, r10, 192
00059c  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
0005a0  9f858400  addli r11, r9, 64
0005a4  c2150802  vload_mask16.mz vr11{mr1}, 0(r16)
0005a8  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
0005ac  9f800401  addli r1, r9, 128
0005b0  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
0005b4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0005b8  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0005bc  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0005c0  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0005c4  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0005c8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0005cc  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
0005d0  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0005d4  9f000502  addli r1, r10, 256
0005d8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0005dc  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0005e0  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0005e4  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
0005e8  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0005ec  9f008502  addli r1, r10, 320
0005f0  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0005f4  1f880402  addli r16, r9, 256
0005f8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0005fc  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000600  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000604  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
000608  9f000503  addli r1, r10, 384
00060c  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000610  1f058503  addli r10, r10, 448
000614  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000618  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
00061c  9f808402  addli r1, r9, 320
000620  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
000624  1f850403  addli r10, r9, 384
000628  9f848403  addli r9, r9, 448
00062c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000630  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000634  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
000638  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00063c  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
000640  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000644  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000648  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
00064c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000650  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000654  9380b105  setlt.u r1, r3, r27
000658  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00065c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000660  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000664  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000668  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00066c  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
000670  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000674  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000678  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00067c  bbdb00fe  bneq r1, zero, -268
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
0006d8  fa140040  vextracti.f r9, 0(vr0)
0006dc  fa910040  vextracti.f r3, 0(vr1)
0006e0  5b670000  j 824
0006e4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0006e8  abf0ffff  lui r1, 1048575
0006ec  1f010000  addli r2, zero, 0
0006f0  e70e1fd3  storeli.w r17, -5656(r30)
0006f4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0006f8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0006fc  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000700  9b9100f8  ori r3, r1, 3968
000704  8b942710  add.s r9, r15, r2
000708  0b152a10  add.s r10, r20, r2
00070c  9f810101  addli r3, r3, 128
000710  1f010104  addli r2, r2, 512
000714  9f880431  addli r17, r9, 6272
000718  9f850430  addli r11, r9, 6144
00071c  9f808431  addli r1, r9, 6336
000720  1f080518  addli r16, r10, 3072
000724  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
000728  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
00072c  9f858430  addli r11, r9, 6208
000730  ca940002  vloads_mask16.mz vr9{mr1}, 0(r1)
000734  9f008518  addli r1, r10, 3136
000738  9f088519  addli r17, r10, 3264
00073c  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
000740  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
000744  9f050519  addli r11, r10, 3200
000748  42900802  vload_mask16.mz vr0{mr1}, 0(r17)
00074c  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
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
000784  1f08051a  addli r16, r10, 3328
000788  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
00078c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000790  9f00051b  addli r1, r10, 3456
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
0007bc  9f05851a  addli r11, r10, 3392
0007c0  4a950402  vloads_mask16.mz vr10{mr1}, 0(r9)
0007c4  9f04851b  addli r9, r10, 3520
0007c8  1385e104  setlt.u r10, r3, r14
0007cc  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
0007d0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0007d4  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0007d8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0007dc  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
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
000808  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00080c  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000810  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000814  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000818  bb3b05fe  bneq r10, zero, -276
00081c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000820  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000824  9f000002  addli r1, zero, 256
000828  1f050000  addli r10, zero, 0
00082c  eaf110c0  vsrl.p vr3, r1, vr1
000830  6af100c0  vsrl.p vr2, r1, vr0
000834  9f000001  addli r1, zero, 128
000838  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00083c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000840  eaf110c0  vsrl.p vr3, r1, vr1
000844  6af100c0  vsrl.p vr2, r1, vr0
000848  9f008000  addli r1, zero, 64
00084c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000850  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000854  eaf110c0  vsrl.p vr3, r1, vr1
000858  6af100c0  vsrl.p vr2, r1, vr0
00085c  9f004000  addli r1, zero, 32
000860  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000864  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000868  eaf110c0  vsrl.p vr3, r1, vr1
00086c  6af100c0  vsrl.p vr2, r1, vr0
000870  abf0ffff  lui r1, 1048575
000874  9b9500f8  ori r11, r1, 3968
000878  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00087c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000880  fa910040  vextracti.f r3, 0(vr1)
000884  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000888  7a170040  vextracti.f r14, 0(vr0)
00088c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000890  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000894  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000898  0b98a710  add.s r16, r15, r10
00089c  8b14aa10  add.s r9, r20, r10
0008a0  9f850501  addli r11, r11, 128
0008a4  1f050504  addli r10, r10, 512
0008a8  9f000818  addli r1, r16, 3072
0008ac  9f080819  addli r17, r16, 3200
0008b0  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
0008b4  1f818401  addli r2, r9, 192
0008b8  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0008bc  ca920802  vloads_mask16.mz vr5{mr1}, 0(r17)
0008c0  9f008818  addli r1, r16, 3136
0008c4  9f088819  addli r17, r16, 3264
0008c8  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
0008cc  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0008d0  9f800401  addli r1, r9, 128
0008d4  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
0008d8  9f888400  addli r17, r9, 64
0008dc  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0008e0  42950802  vload_mask16.mz vr10{mr1}, 0(r17)
0008e4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0008e8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0008ec  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0008f0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0008f4  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0008f8  9f00081a  addli r1, r16, 3328
0008fc  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000900  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000904  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
000908  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00090c  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
000910  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
000914  9f00881a  addli r1, r16, 3392
000918  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
00091c  1f810402  addli r2, r9, 256
000920  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
000924  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000928  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00092c  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
000930  9f00081b  addli r1, r16, 3456
000934  c2130102  vload_mask16.mz vr7{mr1}, 0(r2)
000938  1f08881b  addli r16, r16, 3520
00093c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000940  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000944  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
000948  9f808402  addli r1, r9, 320
00094c  4a150802  vloads_mask16.mz vr10{mr1}, 0(r16)
000950  1f880403  addli r16, r9, 384
000954  9f848403  addli r9, r9, 448
000958  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00095c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000960  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000964  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000968  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
00096c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000970  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000974  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000978  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00097c  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000980  9380b505  setlt.u r1, r11, r27
000984  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000988  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00098c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000990  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000994  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000998  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
00099c  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
0009a0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0009a4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0009a8  bbcb00fe  bneq r1, zero, -272
0009ac  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0009b0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0009b4  9f000002  addli r1, zero, 256
0009b8  e308dfd3  loadli.w r17,  -5656(r30)
0009bc  6af100c0  vsrl.p vr2, r1, vr0
0009c0  eaf110c0  vsrl.p vr3, r1, vr1
0009c4  9f000001  addli r1, zero, 128
0009c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009d0  6af100c0  vsrl.p vr2, r1, vr0
0009d4  eaf110c0  vsrl.p vr3, r1, vr1
0009d8  9f008000  addli r1, zero, 64
0009dc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009e0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009e4  6af100c0  vsrl.p vr2, r1, vr0
0009e8  eaf110c0  vsrl.p vr3, r1, vr1
0009ec  9f004000  addli r1, zero, 32
0009f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009f4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009f8  6af100c0  vsrl.p vr2, r1, vr0
0009fc  eaf110c0  vsrl.p vr3, r1, vr1
000a00  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000a04  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a08  fa100040  vextracti.f r1, 0(vr0)
000a0c  7a910040  vextracti.f r2, 0(vr1)
000a10  8b641710  add.f.rn r9, r14, r1
000a14  8be12110  add.f.rn r3, r3, r2
000a18  2b650000  lui r10, 6
000a1c  ab650000  lui r11, 6
000a20  9bb02800  slli r1, r17, 2
000a24  1f010000  addli r2, zero, 0
000a28  1f050500  addli r10, r10, 0
000a2c  9f850504  addli r11, r11, 512
000a30  1f070500  addli r14, r10, 0
000a34  1f880500  addli r16, r11, 0
000a38  0b95e010  add.s r10, r1, r14
000a3c  8b950011  add.s r11, r1, r16
000a40  9b904000  ori r1, r1, 4
000a44  73609500  stores.w r9, 0(r10)
000a48  73e03500  stores.w r3, 0(r11)
000a4c  8b94e010  add.s r9, r1, r14
000a50  8b900011  add.s r1, r1, r16
000a54  00a00300  mfence { lm, sm, gm }
000a58  e3010fd7  loadli.w r3,  -5248(r30)
000a5c  80a10104  csr_set csr3, r3
000a60  9b81e807  andi r3, r17, 126
000a64  00d00100  sync_group
000a68  efc40400  loads.w r9, 0(r9)
000a6c  efc00000  loads.w r1, 0(r1)
000a70  9bb12100  slli r3, r3, 2
000a74  0b95e110  add.s r10, r3, r14
000a78  8b910111  add.s r3, r3, r16
000a7c  6f450500  loads.w r10, 0(r10)
000a80  efc10100  loads.w r3, 0(r3)
000a84  8be4a410  add.f.rn r9, r9, r10
000a88  2b05003a  lui r10, 237568
000a8c  8be03010  add.f.rn r1, r1, r3
000a90  8be1a420  mul.f.rn r3, r9, r10
000a94  8be0a020  mul.f.rn r1, r1, r10
000a98  1f050000  addli r10, zero, 0
000a9c  8be43120  mul.f.rn r9, r3, r3
000aa0  8be10158  neg.f r3, r3
000aa4  8be09018  sub.f.rn r1, r1, r9
000aa8  e3043f00  loadli.w r9,  24(r30)
000aac  8be09010  add.f.rn r1, r1, r9
000ab0  8f800008  sqrt.f.rn r1, r1
000ab4  8f801618  div.f.rn r1, r13, r1
000ab8  8b142910  add.s r9, r18, r2
000abc  8b152a10  add.s r11, r20, r2
000ac0  0b982910  add.s r16, r19, r2
000ac4  1f878400  addli r14, r9, 64
000ac8  9f888500  addli r17, r11, 64
000acc  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
000ad0  4a910402  vloads_mask16.mz vr2{mr1}, 0(r9)
000ad4  4a120802  vloads_mask16.mz vr4{mr1}, 0(r16)
000ad8  ca110702  vloads_mask16.mz vr3{mr1}, 0(r14)
000adc  1f078800  addli r14, r16, 64
000ae0  c2900802  vload_mask16.mz vr1{mr1}, 0(r17)
000ae4  ca120702  vloads_mask16.mz vr5{mr1}, 0(r14)
000ae8  1f074500  addli r14, r10, 32
000aec  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000af0  1387e206  setle.u r14, r5, r14
000af4  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000af8  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
000afc  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
000b00  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
000b04  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
000b08  46904502  vstore_mask16.mz vr4{mr1}, 0(r11)
000b0c  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
000b10  bb110700  bneq r14, zero, 100
000b14  9f880401  addli r17, r9, 128
000b18  1f870501  addli r14, r11, 128
000b1c  9f858501  addli r11, r11, 192
000b20  9f848401  addli r9, r9, 192
000b24  1f058500  addli r10, r10, 64
000b28  1f010102  addli r2, r2, 256
000b2c  4a910802  vloads_mask16.mz vr2{mr1}, 0(r17)
000b30  9f080801  addli r17, r16, 128
000b34  1f088801  addli r16, r16, 192
000b38  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
000b3c  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
000b40  4a920402  vloads_mask16.mz vr4{mr1}, 0(r9)
000b44  93045504  setlt.u r9, r10, r5
000b48  ca910802  vloads_mask16.mz vr3{mr1}, 0(r17)
000b4c  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
000b50  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000b54  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000b58  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
000b5c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
000b60  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
000b64  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
000b68  46103702  vstore_mask16.mz vr3{mr1}, 0(r14)
000b6c  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
000b70  3bad04fe  bneq r9, zero, -184
000b74  9f008fd7  addli r1, r30, -5184
000b78  1f018fd7  addli r2, r30, -5184
000b7c  9f010000  addli r3, zero, 0
000b80  00a00000  mfence { lm }
000b84  9f048100  addli r9, r2, 64
000b88  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
000b8c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000b90  9f814100  addli r3, r3, 32
000b94  1f010101  addli r2, r2, 128
000b98  ea211622  vor.u.mz vr3{mr1}, r12, vr1
000b9c  42910402  vload_mask16.mz vr2{mr1}, 0(r9)
000ba0  93845104  setlt.u r9, r3, r5
000ba4  6eb201c2  vsrl.s.mz vr4{mr1}, vr3, vr0
000ba8  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
000bac  6a324302  vand.s.mz vr4{mr1}, r6, vr4
000bb0  ea313302  vand.s.mz vr3{mr1}, r6, vr3
000bb4  16304002  vadd.s.mz vr0{mr1}, vr0, vr4
000bb8  6a221b22  vor.u.mz vr4{mr1}, r22, vr1
000bbc  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
000bc0  ea211e22  vor.u.mz vr3{mr1}, r28, vr1
000bc4  ea201d22  vor.u.mz vr1{mr1}, r26, vr1
000bc8  12b00a02  vadd.s.mz vr0{mr1}, r21, vr0
000bcc  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
000bd0  eeb201c2  vsrl.s.mz vr5{mr1}, vr3, vr0
000bd4  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
000bd8  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
000bdc  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
000be0  6a325c02  vand.s.mz vr4{mr1}, r24, vr5
000be4  6a300202  vand.s.mz vr0{mr1}, r4, vr0
000be8  ea313c02  vand.s.mz vr3{mr1}, r24, vr3
000bec  6a312202  vand.s.mz vr2{mr1}, r4, vr2
000bf0  6ab00622  vor.s.mz vr0{mr1}, r13, vr0
000bf4  6ab24622  vor.s.mz vr4{mr1}, r13, vr4
000bf8  eab13622  vor.s.mz vr3{mr1}, r13, vr3
000bfc  6ab12622  vor.s.mz vr2{mr1}, r13, vr2
000c00  06100020  vfloat2fp16_l.rz vr0, vr0
000c04  86d10120  vfloat2fp16_h.rz vr3, vr3
000c08  06500120  vfloat2fp16_h.rz vr0, vr2
000c0c  86110220  vfloat2fp16_l.rz vr3, vr4
000c10  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000c14  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
000c18  ea301402  vand.s.mz vr1{mr1}, r8, vr1
000c1c  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
000c20  46800002  vstore.mz vr0{mr1}, 0(r1)
000c24  9f808000  addli r1, r1, 64
000c28  3bfd04fe  bneq r9, zero, -164
000c2c  9f058fd6  addli r11, r30, -5312
000c30  6b510f00  load.d r[3:4], 0(r30)
000c34  6307ffd3  loadli.w r14,  -5640(r30)
000c38  ab0000f0  lui r1, 983040
000c3c  ebd40500  load.d r[10:11], 0(r11)
000c40  00a00000  mfence { lm }
000c44  97101700  or r1, r14, r1
000c48  0b219110  add.ul r[3:4], r[3:4], r[10:11]
000c4c  ff304101  s_lm2gm r1, r20, 0(r[3:4])
000c50  9f000fd5  addli r1, r30, -5504
000c54  00a00200  mfence { lm, gm }
000c58  e3441f00  loadli.w r9,  12(r30)
000c5c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000c60  e3010fd4  loadli.w r3,  -5632(r30)
000c64  e345ffd3  loadli.w r11,  -5636(r30)
000c68  8b933310  add.s r7, r7, r3
000c6c  3fb193fc  blt.s r7, r9, -1972
000c70  abf00000  lui r1, 15
000c74  9b90f0ff  ori r1, r1, 4095
000c78  80a10004  csr_set csr3, r1
000c7c  00d00100  sync_group
000c80  db500b00  j 23172
000c84  e3403f00  loadli.w r1,  28(r30)
000c88  37f9000a  beq r1, zero, 5724
000c8c  e3002f00  loadli.w r1,  16(r30)
000c90  1f010010  addli r2, zero, 2048
000c94  3be92012  bneq r1, r2, 9816
000c98  00350002  core_id r10
000c9c  9f200000  addli r1, zero, 2
000ca0  370c1526  beq r10, r1, 20224
000ca4  9f100000  addli r1, zero, 1
000ca8  b77a1526  beq r10, r1, 20156
000cac  3b3c0526  bneq r10, zero, 20236
000cb0  9f000040  addli r1, zero, 8192
000cb4  2b0100f0  lui r2, 983040
000cb8  97902000  or r1, r1, r2
000cbc  2b110200  lui r2, 33
000cc0  1f010100  addli r2, r2, 0
000cc4  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000cc8  5bde0900  j 20208
000ccc  e3403f00  loadli.w r1,  28(r30)
000cd0  b79a0010  beq r1, zero, 8868
000cd4  80300002  core_id r1
000cd8  1f210000  addli r2, zero, 2
000cdc  b7ea2024  beq r1, r2, 19128
000ce0  1f110000  addli r2, zero, 1
000ce4  37e22022  beq r1, r2, 17560
000ce8  3bab0024  bneq r1, zero, 19144
000cec  63012f00  loadli.w r2,  16(r30)
000cf0  ab0100f0  lui r3, 983040
000cf4  1b311100  slli r2, r2, 1
000cf8  17113100  or r2, r2, r3
000cfc  abd10100  lui r3, 29
000d00  9f810100  addli r3, r3, 0
000d04  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000d08  5b550900  j 19112
000d0c  e3002f00  loadli.w r1,  16(r30)
000d10  1f010010  addli r2, zero, 2048
000d14  bb9f2006  bneq r1, r2, 4068
000d18  e3403f00  loadli.w r1,  28(r30)
000d1c  37cf001a  beq r1, zero, 14288
000d20  003d0002  core_id r26
000d24  abd70000  lui r15, 13
000d28  00510102  load_param_i r2, 2
000d2c  1f150000  addli r10, zero, 1
000d30  9f058fd7  addli r11, r30, -5184
000d34  1f068000  addli r12, zero, 64
000d38  9f060010  addli r13, zero, 2048
000d3c  9b305d00  slli r1, r26, 5
000d40  9b315100  slli r3, r2, 5
000d44  9f8707f0  addli r15, r15, -2048
000d48  1f870000  addli r14, r1, 0
000d4c  33080728  zext_int2long r[17:18], r14
000d50  2b0900f0  lui r18, 983040
000d54  1738a802  sll.d r[17:18], r[17:18], r10
000d58  17192601  or r18, r12, r18
000d5c  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000d60  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000d64  1b382700  slli r16, r14, 2
000d68  0b97e110  add.s r14, r3, r14
000d6c  00a00200  mfence { lm, gm }
000d70  42800502  vload.mz vr0{mr1}, 0(r11)
000d74  9308d704  setlt.u r17, r14, r13
000d78  0b18f810  add.s r16, r16, r15
000d7c  1f098800  addli r18, r16, 64
000d80  86300000  vfp162float_l.rn vr1, vr0
000d84  06700000  vfp162float_h.rn vr0, vr0
000d88  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000d8c  4e100902  vstores_mask16.mz vr0{mr1}, 0(r18)
000d90  bbfe08fe  bneq r17, zero, -68
000d94  abf20000  lui r5, 15
000d98  1b357d00  slli r10, r26, 7
000d9c  1b327100  slli r4, r2, 7
000da0  1f160000  addli r12, zero, 1
000da4  9f068fd7  addli r13, r30, -5184
000da8  1f078000  addli r14, zero, 64
000dac  1f080010  addli r16, zero, 2048
000db0  9f880000  addli r17, r1, 0
000db4  00a00000  mfence { lm }
000db8  9f8202f0  addli r5, r5, -2048
000dbc  8b155510  add.s r11, r10, r5
000dc0  33890828  zext_int2long r[19:20], r17
000dc4  2b0a00f0  lui r20, 983040
000dc8  8b983810  add.s r17, r17, r3
000dcc  1739c902  sll.d r[19:20], r[19:20], r12
000dd0  171a4701  or r20, r14, r20
000dd4  0b292311  add.ul r[19:20], r[7:8], r[19:20]
000dd8  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
000ddc  13890805  setlt.u r18, r17, r16
000de0  9f898500  addli r19, r11, 64
000de4  00a00200  mfence { lm, gm }
000de8  42800602  vload.mz vr0{mr1}, 0(r13)
000dec  86300000  vfp162float_l.rn vr1, vr0
000df0  06700000  vfp162float_h.rn vr0, vr0
000df4  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
000df8  8b954510  add.s r11, r11, r4
000dfc  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
000e00  3b0f09fe  bneq r18, zero, -64
000e04  ab130100  lui r7, 17
000e08  9f058fd7  addli r11, r30, -5184
000e0c  1f068000  addli r12, zero, 64
000e10  9f060010  addli r13, zero, 2048
000e14  00a00000  mfence { lm }
000e18  9f8303f0  addli r7, r7, -2048
000e1c  0b137510  add.s r6, r10, r7
000e20  1f150000  addli r10, zero, 1
000e24  33880028  zext_int2long r[17:18], r1
000e28  2b0700f0  lui r14, 983040
000e2c  8b903010  add.s r1, r1, r3
000e30  1738a802  sll.d r[17:18], r[17:18], r10
000e34  1717e600  or r14, r12, r14
000e38  0b280411  add.ul r[17:18], r[9:10], r[17:18]
000e3c  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000e40  1387d004  setlt.u r14, r1, r13
000e44  1f088300  addli r16, r6, 64
000e48  00a00200  mfence { lm, gm }
000e4c  42800502  vload.mz vr0{mr1}, 0(r11)
000e50  86300000  vfp162float_l.rn vr1, vr0
000e54  06700000  vfp162float_h.rn vr0, vr0
000e58  4e101302  vstores_mask16.mz vr1{mr1}, 0(r6)
000e5c  0b134310  add.s r6, r6, r4
000e60  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
000e64  3b0f07fe  bneq r14, zero, -64
000e68  abf00000  lui r1, 15
000e6c  00a00300  mfence { lm, sm, gm }
000e70  9b011d00  andi r3, r26, 1
000e74  1f020006  addli r4, zero, 768
000e78  9b90f0ff  ori r1, r1, 4095
000e7c  80a10004  csr_set csr3, r1
000e80  9f000006  addli r1, zero, 768
000e84  00d00100  sync_group
000e88  67083fd6  storeli.w r3, -5248(r30)
000e8c  37a00100  beq r3, zero, 8
000e90  1f02000a  addli r4, zero, 1280
000e94  e3411f00  loadli.w r3,  12(r30)
000e98  63471f00  loadli.w r14,  12(r30)
000e9c  1f130000  addli r6, zero, 1
000ea0  bf91612c  blt.s r3, r6, 22628
000ea4  e3010fd7  loadli.w r3,  -5248(r30)
000ea8  1f088fd7  addli r16, r30, -5184
000eac  1b441100  srli r8, r2, 1
000eb0  1f014200  addli r2, r4, 32
000eb4  9b351200  slli r11, r4, 1
000eb8  2b350100  lui r10, 19
000ebc  1f030000  addli r6, zero, 0
000ec0  9b441d00  srli r9, r26, 1
000ec4  1f7a7000  addli r20, zero, 63
000ec8  9f0b0005  addli r23, zero, 640
000ecc  9f0d4000  addli r27, zero, 32
000ed0  1f0b0003  addli r22, zero, 384
000ed4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000ed8  670c2fd4  storeli.w r2, -5440(r30)
000edc  0b910511  add.s r2, r11, r16
000ee0  1f0505f0  addli r10, r10, -2048
000ee4  8b901120  mul.s r1, r3, r1
000ee8  67041fd6  storeli.w r1, -5312(r30)
000eec  9bb02000  slli r1, r1, 2
000ef0  0b965010  add.s r12, r1, r5
000ef4  8b967010  add.s r13, r1, r7
000ef8  9b302200  slli r1, r4, 2
000efc  ab320100  lui r5, 19
000f00  8b900011  add.s r1, r1, r16
000f04  9f8202f4  addli r5, r5, -1536
000f08  9f8080ff  addli r1, r1, -64
000f0c  67081fd4  storeli.w r1, -5504(r30)
000f10  9f0081ff  addli r1, r2, -64
000f14  1f010fd4  addli r2, r30, -5632
000f18  67041fd4  storeli.w r1, -5568(r30)
000f1c  abf0ffff  lui r1, 1048575
000f20  00a00000  mfence { lm }
000f24  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000f28  9b9000f8  ori r1, r1, 3968
000f2c  e74f1fd2  storeli.w r1, -5636(r30)
000f30  abf00000  lui r1, 15
000f34  1b9ef0ff  ori r28, r1, 4095
000f38  db030000  j 28
000f3c  00a00300  mfence { lm, sm, gm }
000f40  80210e04  csr_set csr3, r28
000f44  00d00100  sync_group
000f48  0b138310  add.s r6, r6, r8
000f4c  3f20e300  blt.s r6, r14, 8
000f50  5ba4ffff  j -736
000f54  8b109310  add.s r1, r6, r9
000f58  cb1f17fe  ble.s r14, r1, -28
000f5c  63011f00  loadli.w r2,  8(r30)
000f60  e3018fd6  loadli.w r3,  -5312(r30)
000f64  8b902010  add.s r1, r1, r2
000f68  0b018330  div.u r2, r6, r8
000f6c  9bb0b000  slli r1, r1, 11
000f70  97903000  or r1, r1, r3
000f74  9f110000  addli r3, zero, 1
000f78  b3980028  sext_int2long r[18:19], r1
000f7c  ab0000f0  lui r1, 983040
000f80  1b316100  slli r2, r2, 6
000f84  97b83802  sll.d r[18:19], r[18:19], r3
000f88  9f017fd6  addli r3, r30, -5320
000f8c  97901500  or r1, r11, r1
000f90  1b010104  andi r2, r2, 64
000f94  6bdc0100  load.d r[25:26], 0(r3)
000f98  1717a101  or r14, r2, r26
000f9c  0b2c1c11  add.ul r[25:26], r[25:26], r[18:19]
000fa0  ff200c01  l_gm2lm r1, r16, 0(r[25:26])
000fa4  00a00200  mfence { lm, gm }
000fa8  e3008fd4  loadli.w r1,  -5568(r30)
000fac  63010fd5  loadli.w r2,  -5504(r30)
000fb0  e3018fd5  loadli.w r3,  -5440(r30)
000fb4  c2800002  vload.mz vr1{mr1}, 0(r1)
000fb8  9f81c1ff  addli r3, r3, -32
000fbc  9f0981ff  addli r19, r2, -64
000fc0  9f8080ff  addli r1, r1, -64
000fc4  93033a04  setlt.u r7, r20, r3
000fc8  06f10000  vfp162float_h.rn vr2, vr1
000fcc  86b00000  vfp162float_l.rn vr1, vr1
000fd0  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
000fd4  1f0101ff  addli r2, r2, -128
000fd8  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
000fdc  3bef03fe  bneq r7, zero, -40
000fe0  00a00000  mfence { lm }
000fe4  e3000fd7  loadli.w r1,  -5248(r30)
000fe8  3bc60000  bneq r1, zero, 400
000fec  9f000fd4  addli r1, r30, -5632
000ff0  e341ffd3  loadli.w r3,  -5636(r30)
000ff4  1f010000  addli r2, zero, 0
000ff8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000ffc  92303002  vadd.s.mz vr1{mr1}, zero, vr3
001000  12313002  vadd.s.mz vr2{mr1}, zero, vr3
001004  12323002  vadd.s.mz vr4{mr1}, zero, vr3
001008  8b10f110  add.s r1, r2, r15
00100c  8b132810  add.s r7, r16, r2
001010  9f810101  addli r3, r3, 128
001014  1f010104  addli r2, r2, 512
001018  9f890001  addli r19, r1, 128
00101c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
001020  9f8a8000  addli r21, r1, 64
001024  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
001028  1f8c8301  addli r24, r7, 192
00102c  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
001030  9f898001  addli r19, r1, 192
001034  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
001038  9f8a8300  addli r21, r7, 64
00103c  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
001040  ca930902  vloads_mask16.mz vr7{mr1}, 0(r19)
001044  9f890301  addli r19, r7, 128
001048  42950a02  vload_mask16.mz vr10{mr1}, 0(r21)
00104c  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
001050  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001054  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
001058  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00105c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
001060  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001064  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
001068  46908902  vstore_mask16.mz vr8{mr1}, 0(r19)
00106c  9f890002  addli r19, r1, 256
001070  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
001074  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
001078  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00107c  46905a02  vstore_mask16.mz vr5{mr1}, 0(r21)
001080  4a900902  vloads_mask16.mz vr0{mr1}, 0(r19)
001084  9f898002  addli r19, r1, 320
001088  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
00108c  1f8c0302  addli r24, r7, 256
001090  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001094  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
001098  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00109c  4a930902  vloads_mask16.mz vr6{mr1}, 0(r19)
0010a0  9f890003  addli r19, r1, 384
0010a4  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
0010a8  9f808003  addli r1, r1, 448
0010ac  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0010b0  4a940902  vloads_mask16.mz vr8{mr1}, 0(r19)
0010b4  9f898302  addli r19, r7, 320
0010b8  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
0010bc  9f800303  addli r1, r7, 384
0010c0  9f838303  addli r7, r7, 448
0010c4  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
0010c8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0010cc  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0010d0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0010d4  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0010d8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0010dc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0010e0  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
0010e4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0010e8  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
0010ec  93897105  setlt.u r19, r3, r23
0010f0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0010f4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0010f8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0010fc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001100  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001104  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001108  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
00110c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001110  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001114  bbdb09fe  bneq r19, zero, -268
001118  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00111c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001120  9f000002  addli r1, zero, 256
001124  6af100c0  vsrl.p vr2, r1, vr0
001128  eaf110c0  vsrl.p vr3, r1, vr1
00112c  9f000001  addli r1, zero, 128
001130  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001134  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001138  6af100c0  vsrl.p vr2, r1, vr0
00113c  eaf110c0  vsrl.p vr3, r1, vr1
001140  9f008000  addli r1, zero, 64
001144  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001148  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00114c  6af100c0  vsrl.p vr2, r1, vr0
001150  eaf110c0  vsrl.p vr3, r1, vr1
001154  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001158  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00115c  6af10dc0  vsrl.p vr2, r27, vr0
001160  eaf11dc0  vsrl.p vr3, r27, vr1
001164  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001168  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00116c  fa100040  vextracti.f r1, 0(vr0)
001170  fa910040  vextracti.f r3, 0(vr1)
001174  db650000  j 812
001178  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00117c  abf0ffff  lui r1, 1048575
001180  1f010000  addli r2, zero, 0
001184  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001188  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00118c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001190  9b9100f8  ori r3, r1, 3968
001194  8b932710  add.s r7, r15, r2
001198  8b192810  add.s r19, r16, r2
00119c  9f810101  addli r3, r3, 128
0011a0  1f010104  addli r2, r2, 512
0011a4  1f8c0331  addli r24, r7, 6272
0011a8  9f800330  addli r1, r7, 6144
0011ac  9f8c8331  addli r25, r7, 6336
0011b0  9f8a0918  addli r21, r19, 3072
0011b4  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
0011b8  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
0011bc  9f808330  addli r1, r7, 6208
0011c0  ca940c02  vloads_mask16.mz vr9{mr1}, 0(r25)
0011c4  1f8c0919  addli r24, r19, 3200
0011c8  42930a02  vload_mask16.mz vr6{mr1}, 0(r21)
0011cc  9f8c8919  addli r25, r19, 3264
0011d0  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0011d4  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
0011d8  9f808918  addli r1, r19, 3136
0011dc  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
0011e0  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0011e4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0011e8  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0011ec  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0011f0  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0011f4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0011f8  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0011fc  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
001200  9f8a0332  addli r21, r7, 6400
001204  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
001208  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
00120c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001210  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
001214  1f8c091a  addli r24, r19, 3328
001218  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
00121c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001220  9f80091b  addli r1, r19, 3456
001224  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
001228  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00122c  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
001230  9f8a8332  addli r21, r7, 6464
001234  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001238  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00123c  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
001240  9f8a0333  addli r21, r7, 6528
001244  9f838333  addli r7, r7, 6592
001248  4a940a02  vloads_mask16.mz vr8{mr1}, 0(r21)
00124c  9f8a891a  addli r21, r19, 3392
001250  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
001254  9f83891b  addli r7, r19, 3520
001258  93896105  setlt.u r19, r3, r22
00125c  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
001260  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001264  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001268  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00126c  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001270  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001274  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001278  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
00127c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001280  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
001284  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001288  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00128c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001290  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001294  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001298  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00129c  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
0012a0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0012a4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0012a8  bbbb09fe  bneq r19, zero, -276
0012ac  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0012b0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0012b4  9f000002  addli r1, zero, 256
0012b8  9f0a0000  addli r21, zero, 0
0012bc  eaf110c0  vsrl.p vr3, r1, vr1
0012c0  6af100c0  vsrl.p vr2, r1, vr0
0012c4  9f000001  addli r1, zero, 128
0012c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0012cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0012d0  eaf110c0  vsrl.p vr3, r1, vr1
0012d4  6af100c0  vsrl.p vr2, r1, vr0
0012d8  9f008000  addli r1, zero, 64
0012dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0012e0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0012e4  eaf110c0  vsrl.p vr3, r1, vr1
0012e8  6af100c0  vsrl.p vr2, r1, vr0
0012ec  abf0ffff  lui r1, 1048575
0012f0  9b9900f8  ori r19, r1, 3968
0012f4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0012f8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0012fc  eaf11dc0  vsrl.p vr3, r27, vr1
001300  6af10dc0  vsrl.p vr2, r27, vr0
001304  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001308  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00130c  fa910040  vextracti.f r3, 0(vr1)
001310  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001314  7a110040  vextracti.f r2, 0(vr0)
001318  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00131c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001320  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001324  8b905711  add.s r1, r15, r21
001328  8b135811  add.s r7, r16, r21
00132c  9f890901  addli r19, r19, 128
001330  9f8a0a04  addli r21, r21, 512
001334  1f8c0018  addli r24, r1, 3072
001338  9f8c0019  addli r25, r1, 3200
00133c  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
001340  1f8d8301  addli r26, r7, 192
001344  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
001348  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
00134c  1f8c8018  addli r24, r1, 3136
001350  9f8c8019  addli r25, r1, 3264
001354  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
001358  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
00135c  1f8c0301  addli r24, r7, 128
001360  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
001364  9f8c8300  addli r25, r7, 64
001368  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
00136c  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
001370  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001374  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
001378  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00137c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
001380  46108c02  vstore_mask16.mz vr8{mr1}, 0(r24)
001384  1f8c001a  addli r24, r1, 3328
001388  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00138c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001390  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
001394  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
001398  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
00139c  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
0013a0  1f8c801a  addli r24, r1, 3392
0013a4  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
0013a8  1f8d0302  addli r26, r7, 256
0013ac  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
0013b0  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0013b4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0013b8  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0013bc  1f8c001b  addli r24, r1, 3456
0013c0  c2130d02  vload_mask16.mz vr7{mr1}, 0(r26)
0013c4  9f80801b  addli r1, r1, 3520
0013c8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0013cc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0013d0  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
0013d4  1f8c8302  addli r24, r7, 320
0013d8  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
0013dc  9f800303  addli r1, r7, 384
0013e0  9f838303  addli r7, r7, 448
0013e4  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
0013e8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0013ec  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0013f0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0013f4  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0013f8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0013fc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001400  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
001404  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001408  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
00140c  138c7905  setlt.u r24, r19, r23
001410  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001414  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001418  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00141c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001420  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001424  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001428  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
00142c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001430  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001434  bb4b0cfe  bneq r24, zero, -272
001438  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00143c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001440  9f000002  addli r1, zero, 256
001444  003d0002  core_id r26
001448  6af100c0  vsrl.p vr2, r1, vr0
00144c  eaf110c0  vsrl.p vr3, r1, vr1
001450  9f000001  addli r1, zero, 128
001454  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001458  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00145c  6af100c0  vsrl.p vr2, r1, vr0
001460  eaf110c0  vsrl.p vr3, r1, vr1
001464  9f008000  addli r1, zero, 64
001468  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00146c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001470  6af100c0  vsrl.p vr2, r1, vr0
001474  eaf110c0  vsrl.p vr3, r1, vr1
001478  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00147c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001480  6af10dc0  vsrl.p vr2, r27, vr0
001484  eaf11dc0  vsrl.p vr3, r27, vr1
001488  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00148c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001490  fa100040  vextracti.f r1, 0(vr0)
001494  fa930040  vextracti.f r7, 0(vr1)
001498  8b601110  add.f.rn r1, r2, r1
00149c  8be17110  add.f.rn r3, r3, r7
0014a0  9b332700  slli r7, r14, 2
0014a4  1f010000  addli r2, zero, 0
0014a8  8b99a310  add.s r19, r7, r10
0014ac  8b9a5310  add.s r21, r7, r5
0014b0  73e01900  stores.w r1, 0(r19)
0014b4  9b00e707  andi r1, r14, 126
0014b8  73e03a00  stores.w r3, 0(r21)
0014bc  9b914300  ori r3, r7, 4
0014c0  9f090000  addli r19, zero, 0
0014c4  00a00300  mfence { lm, sm, gm }
0014c8  80210e04  csr_set csr3, r28
0014cc  00d00100  sync_group
0014d0  9bb02000  slli r1, r1, 2
0014d4  8b93a110  add.s r7, r3, r10
0014d8  8b915110  add.s r3, r3, r5
0014dc  0b97a010  add.s r14, r1, r10
0014e0  efc30300  loads.w r7, 0(r7)
0014e4  8b905010  add.s r1, r1, r5
0014e8  efc10100  loads.w r3, 0(r3)
0014ec  6f470700  loads.w r14, 0(r14)
0014f0  efc00000  loads.w r1, 0(r1)
0014f4  8be3e310  add.f.rn r7, r7, r14
0014f8  8be01110  add.f.rn r1, r3, r1
0014fc  ab01003a  lui r3, 237568
001500  8be33320  mul.f.rn r7, r7, r3
001504  8be03020  mul.f.rn r1, r1, r3
001508  8be17320  mul.f.rn r3, r7, r7
00150c  0be70358  neg.f r14, r7
001510  8be03018  sub.f.rn r1, r1, r3
001514  e3013f00  loadli.w r3,  24(r30)
001518  8be03010  add.f.rn r1, r1, r3
00151c  ab01803f  lui r3, 260096
001520  8f800008  sqrt.f.rn r1, r1
001524  8f811118  div.f.rn r3, r3, r1
001528  8b102610  add.s r1, r12, r2
00152c  8b132810  add.s r7, r16, r2
001530  8b9a2610  add.s r21, r13, r2
001534  9f8c8000  addli r25, r1, 64
001538  1f8c8300  addli r24, r7, 64
00153c  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
001540  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
001544  4a920a02  vloads_mask16.mz vr4{mr1}, 0(r21)
001548  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
00154c  9f8c8a00  addli r25, r21, 64
001550  c2100c02  vload_mask16.mz vr1{mr1}, 0(r24)
001554  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
001558  9f8c4900  addli r25, r19, 32
00155c  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
001560  930c9207  setle.u r25, r4, r25
001564  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
001568  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
00156c  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
001570  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
001574  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
001578  46904302  vstore_mask16.mz vr4{mr1}, 0(r7)
00157c  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
001580  bb910c00  bneq r25, zero, 100
001584  9f8c0001  addli r25, r1, 128
001588  1f8c0301  addli r24, r7, 128
00158c  9f838301  addli r7, r7, 192
001590  9f808001  addli r1, r1, 192
001594  9f898900  addli r19, r19, 64
001598  1f010102  addli r2, r2, 256
00159c  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
0015a0  9f8c0a01  addli r25, r21, 128
0015a4  9f8a8a01  addli r21, r21, 192
0015a8  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
0015ac  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
0015b0  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
0015b4  93804904  setlt.u r1, r19, r4
0015b8  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
0015bc  ca920a02  vloads_mask16.mz vr5{mr1}, 0(r21)
0015c0  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
0015c4  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
0015c8  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
0015cc  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
0015d0  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
0015d4  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0015d8  46103c02  vstore_mask16.mz vr3{mr1}, 0(r24)
0015dc  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
0015e0  3bad00fe  bneq r1, zero, -184
0015e4  9f008fd7  addli r1, r30, -5184
0015e8  1f018fd7  addli r2, r30, -5184
0015ec  9f010000  addli r3, zero, 0
0015f0  00a00000  mfence { lm }
0015f4  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0015f8  9f038100  addli r7, r2, 64
0015fc  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
001600  9f814100  addli r3, r3, 32
001604  1f010101  addli r2, r2, 128
001608  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
00160c  93834104  setlt.u r7, r3, r4
001610  06110000  vfloat2fp16_l.rn vr2, vr0
001614  06d10000  vfloat2fp16_h.rn vr2, vr1
001618  46802002  vstore.mz vr2{mr1}, 0(r1)
00161c  9f808000  addli r1, r1, 64
001620  3bdf03fe  bneq r7, zero, -44
001624  6b510f00  load.d r[3:4], 0(r30)
001628  ab0000f0  lui r1, 983040
00162c  00a00000  mfence { lm }
001630  97901500  or r1, r11, r1
001634  0b211111  add.ul r[3:4], r[3:4], r[18:19]
001638  ff300101  s_lm2gm r1, r16, 0(r[3:4])
00163c  00a00200  mfence { lm, gm }
001640  63471f00  loadli.w r14,  12(r30)
001644  db20ffff  j -1788
001648  e3403f00  loadli.w r1,  28(r30)
00164c  37850014  beq r1, zero, 10560
001650  003a0002  core_id r20
001654  63012f00  loadli.w r2,  16(r30)
001658  005c0102  load_param_i r24, 2
00165c  9b305a00  slli r1, r20, 5
001660  4b431100  ble.s r2, r1, 208
001664  2b960000  lui r12, 9
001668  9f110000  addli r3, zero, 1
00166c  1f058fd7  addli r10, r30, -5184
001670  9f058000  addli r11, zero, 64
001674  1b315c00  slli r2, r24, 5
001678  9f860000  addli r13, r1, 0
00167c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001680  1f0606f0  addli r12, r12, -2048
001684  33880628  zext_int2long r[17:18], r13
001688  2b0900f0  lui r18, 983040
00168c  17383802  sll.d r[17:18], r[17:18], r3
001690  17992501  or r18, r11, r18
001694  0b280211  add.ul r[17:18], r[5:6], r[17:18]
001698  7f29a800  l_gm2lm r18, r10, 0(r[17:18])
00169c  1bb82600  slli r16, r13, 2
0016a0  8b16d110  add.s r13, r2, r13
0016a4  00a00200  mfence { lm, gm }
0016a8  c2000502  vload.mz vr1{mr1}, 0(r10)
0016ac  0b18c810  add.s r16, r16, r12
0016b0  9f088800  addli r17, r16, 64
0016b4  66411080  vmerge_l.hf vr2, vr0, vr1
0016b8  e64010a0  vmerge_h.hf vr1, vr0, vr1
0016bc  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
0016c0  4e901802  vstores_mask16.mz vr1{mr1}, 0(r17)
0016c4  3f8ff6fe  blt.s r13, r15, -64
0016c8  2ba20000  lui r4, 10
0016cc  9b317a00  slli r3, r20, 7
0016d0  9f120000  addli r5, zero, 1
0016d4  1f058fd7  addli r10, r30, -5184
0016d8  9f058000  addli r11, zero, 64
0016dc  1f860000  addli r12, r1, 0
0016e0  00a00000  mfence { lm }
0016e4  1f0202f0  addli r4, r4, -2048
0016e8  8b914110  add.s r3, r3, r4
0016ec  1b327c00  slli r4, r24, 7
0016f0  33080628  zext_int2long r[17:18], r12
0016f4  ab0600f0  lui r13, 983040
0016f8  0b162610  add.s r12, r12, r2
0016fc  17385802  sll.d r[17:18], r[17:18], r5
001700  9796d500  or r13, r11, r13
001704  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001708  ff26a800  l_gm2lm r13, r10, 0(r[17:18])
00170c  9f868100  addli r13, r3, 64
001710  00a00200  mfence { lm, gm }
001714  c2000502  vload.mz vr1{mr1}, 0(r10)
001718  66411080  vmerge_l.hf vr2, vr0, vr1
00171c  e64010a0  vmerge_h.hf vr1, vr0, vr1
001720  4e902102  vstores_mask16.mz vr2{mr1}, 0(r3)
001724  8b914110  add.s r3, r3, r4
001728  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
00172c  3f1ff6fe  blt.s r12, r15, -60
001730  63012f00  loadli.w r2,  16(r30)
001734  cb211100  ble.s r2, r1, 104
001738  2bb30000  lui r6, 11
00173c  1f110000  addli r2, zero, 1
001740  9f018fd7  addli r3, r30, -5184
001744  1f028000  addli r4, zero, 64
001748  9b325c00  slli r5, r24, 5
00174c  00a00000  mfence { lm }
001750  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001754  1f0303f0  addli r6, r6, -2048
001758  33850028  zext_int2long r[11:12], r1
00175c  ab0300f0  lui r7, 983040
001760  17352502  sll.d r[11:12], r[11:12], r2
001764  97137200  or r7, r4, r7
001768  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
00176c  ff233500  l_gm2lm r7, r3, 0(r[11:12])
001770  9bb32000  slli r7, r1, 2
001774  8b901210  add.s r1, r5, r1
001778  00a00200  mfence { lm, gm }
00177c  c2800102  vload.mz vr1{mr1}, 0(r3)
001780  8b936310  add.s r7, r7, r6
001784  1f858300  addli r10, r7, 64
001788  66411080  vmerge_l.hf vr2, vr0, vr1
00178c  e64010a0  vmerge_h.hf vr1, vr0, vr1
001790  4e902302  vstores_mask16.mz vr2{mr1}, 0(r7)
001794  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001798  3f8ff0fe  blt.s r1, r15, -64
00179c  abf00000  lui r1, 15
0017a0  63411f00  loadli.w r2,  12(r30)
0017a4  00a00300  mfence { lm, sm, gm }
0017a8  9b90f0ff  ori r1, r1, 4095
0017ac  80a10004  csr_set csr3, r1
0017b0  00d00100  sync_group
0017b4  4b4d4127  ble.s r2, r20, 20304
0017b8  e3002f00  loadli.w r1,  16(r30)
0017bc  63412f00  loadli.w r2,  20(r30)
0017c0  1f048fd7  addli r8, r30, -5184
0017c4  9f160000  addli r13, zero, 1
0017c8  1f084000  addli r16, zero, 32
0017cc  9f090002  addli r19, zero, 256
0017d0  9f0a0001  addli r21, zero, 128
0017d4  1f0b8000  addli r22, zero, 64
0017d8  ab0b803f  lui r23, 260096
0017dc  2bee7f00  lui r28, 2046
0017e0  abe40700  lui r9, 126
0017e4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0017e8  33820008  fix2float.rn r4, r1
0017ec  8b912010  add.s r3, r1, r2
0017f0  9bb31000  slli r7, r1, 1
0017f4  1b362100  slli r12, r2, 2
0017f8  e74f4fd2  storeli.w r4, -5636(r30)
0017fc  1bb22000  slli r4, r1, 2
001800  9f804000  addli r1, r1, 32
001804  9ff1f1ff  addli r3, r3, -1
001808  e70f1fd2  storeli.w r1, -5640(r30)
00180c  8b108210  add.s r1, r4, r8
001810  0b932130  div.s r6, r3, r2
001814  8b918310  add.s r3, r7, r8
001818  1f717000  addli r2, zero, 63
00181c  9f8080ff  addli r1, r1, -64
001820  674f1fd2  storeli.w r1, -5644(r30)
001824  9f8081ff  addli r1, r3, -64
001828  670f1fd2  storeli.w r1, -5648(r30)
00182c  abf0ffff  lui r1, 1048575
001830  00a00000  mfence { lm }
001834  67048fd5  storeli.w r24, -5568(r30)
001838  67007fd4  storeli.w r7, -5632(r30)
00183c  9b90f0ff  ori r1, r1, 4095
001840  67041fd6  storeli.w r1, -5312(r30)
001844  ab700000  lui r1, 7
001848  1b9df0ff  ori r26, r1, 4095
00184c  ab00ff03  lui r1, 16368
001850  9b95f03f  ori r11, r1, 1023
001854  abf000fc  lui r1, 1032207
001858  9b9100c0  ori r3, r1, 3072
00185c  9f000fd7  addli r1, r30, -5248
001860  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001864  db080000  j 68
001868  9f030fd5  addli r7, r30, -5504
00186c  6b520f00  load.d r[5:6], 0(r30)
001870  ab0000f0  lui r1, 983040
001874  ebd80300  load.d r[18:19], 0(r7)
001878  e3030fd4  loadli.w r7,  -5632(r30)
00187c  00a00000  mfence { lm }
001880  630a8fd5  loadli.w r20,  -5440(r30)
001884  630c8fd4  loadli.w r24,  -5568(r30)
001888  0b221211  add.ul r[5:6], r[5:6], r[18:19]
00188c  97901300  or r1, r7, r1
001890  0b1a4c11  add.s r20, r24, r20
001894  ff308200  s_lm2gm r1, r8, 0(r[5:6])
001898  00a00200  mfence { lm, gm }
00189c  e3401f00  loadli.w r1,  12(r30)
0018a0  3f201a00  blt.s r20, r1, 8
0018a4  5bcc0900  j 20064
0018a8  e3001f00  loadli.w r1,  8(r30)
0018ac  1f057fd6  addli r10, r30, -5320
0018b0  8b101a10  add.s r1, r20, r1
0018b4  8b90f020  mul.s r1, r1, r15
0018b8  33920028  sext_int2long r[5:6], r1
0018bc  ab0000f0  lui r1, 983040
0018c0  9738d202  sll.d r[18:19], r[5:6], r13
0018c4  6b520500  load.d r[5:6], 0(r10)
0018c8  97901300  or r1, r7, r1
0018cc  1f050fd5  addli r10, r30, -5504
0018d0  73301501  store.d r[18:19], 0(r10)
0018d4  0b221211  add.ul r[5:6], r[5:6], r[18:19]
0018d8  ff208200  l_gm2lm r1, r8, 0(r[5:6])
0018dc  00a00200  mfence { lm, gm }
0018e0  bff00701  blt.s r15, r16, 60
0018e4  e300efd3  loadli.w r1,  -5648(r30)
0018e8  6342efd3  loadli.w r4,  -5644(r30)
0018ec  e302ffd3  loadli.w r5,  -5640(r30)
0018f0  c2800002  vload.mz vr1{mr1}, 0(r1)
0018f4  9f82c2ff  addli r5, r5, -32
0018f8  9f0882ff  addli r17, r4, -64
0018fc  9f8080ff  addli r1, r1, -64
001900  93035104  setlt.u r7, r2, r5
001904  664110a0  vmerge_h.hf vr2, vr0, vr1
001908  e6401080  vmerge_l.hf vr1, vr0, vr1
00190c  46102202  vstore_mask16.mz vr2{mr1}, 0(r4)
001910  1f0202ff  addli r4, r4, -128
001914  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
001918  3bef03fe  bneq r7, zero, -40
00191c  00a00000  mfence { lm }
001920  670c4fd5  storeli.w r20, -5440(r30)
001924  bf57d300  blt.s r6, r13, 500
001928  9f020000  addli r5, zero, 0
00192c  1f020000  addli r4, zero, 0
001930  9f030000  addli r7, zero, 0
001934  db0d0000  j 108
001938  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
00193c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001940  9f930300  addli r7, r7, 1
001944  6af109c0  vsrl.p vr2, r19, vr0
001948  eaf119c0  vsrl.p vr3, r19, vr1
00194c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001950  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001954  6af10ac0  vsrl.p vr2, r21, vr0
001958  eaf11ac0  vsrl.p vr3, r21, vr1
00195c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001960  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001964  6a710bc0  vsrl.p vr2, r22, vr0
001968  ea711bc0  vsrl.p vr3, r22, vr1
00196c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001970  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001974  6a7108c0  vsrl.p vr2, r16, vr0
001978  ea7118c0  vsrl.p vr3, r16, vr1
00197c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001980  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001984  fa100040  vextracti.f r1, 0(vr0)
001988  7a910040  vextracti.f r2, 0(vr1)
00198c  8be21210  add.f.rn r5, r5, r1
001990  9f000fd7  addli r1, r30, -5248
001994  0b622210  add.f.rn r4, r4, r2
001998  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00199c  37966300  beq r7, r6, 388
0019a0  9f880300  addli r17, r7, 0
0019a4  37403701  beq r14, r19, 16
0019a8  e3008fd6  loadli.w r1,  -5312(r30)
0019ac  97a01300  xor r1, r7, r1
0019b0  8b181310  add.s r17, r6, r1
0019b4  8b90e820  mul.s r1, r17, r14
0019b8  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0019bc  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0019c0  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0019c4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0019c8  8b901718  sub.s r1, r15, r1
0019cc  8b90e040  min.s r1, r1, r14
0019d0  bfadd0fe  blt.s r1, r13, -152
0019d4  1f010fd7  addli r2, r30, -5248
0019d8  2b9c0000  lui r24, 9
0019dc  1f0a0000  addli r20, zero, 0
0019e0  8b181621  mul.s r17, r12, r17
0019e4  1f098fd7  addli r18, r30, -5184
0019e8  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0019ec  1f0c0cf0  addli r24, r24, -2048
0019f0  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0019f4  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0019f8  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0019fc  8b1d1c11  add.s r27, r24, r17
001a00  8b1c1911  add.s r25, r18, r17
001a04  1f848d00  addli r8, r27, 64
001a08  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
001a0c  1f858d01  addli r10, r27, 192
001a10  c2940c02  vload_mask16.mz vr9{mr1}, 0(r25)
001a14  1f818c01  addli r2, r25, 192
001a18  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
001a1c  1f840d01  addli r8, r27, 128
001a20  4a140502  vloads_mask16.mz vr8{mr1}, 0(r10)
001a24  1f850c01  addli r10, r25, 128
001a28  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
001a2c  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
001a30  c2150502  vload_mask16.mz vr11{mr1}, 0(r10)
001a34  1f848c00  addli r8, r25, 64
001a38  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
001a3c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001a40  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001a44  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001a48  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001a4c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001a50  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001a54  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
001a58  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
001a5c  1f048a00  addli r8, r20, 64
001a60  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001a64  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001a68  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001a6c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001a70  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001a74  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
001a78  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001a7c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001a80  cbea80fe  ble.s r1, r8, -328
001a84  1f840d02  addli r8, r27, 256
001a88  1f858d02  addli r10, r27, 320
001a8c  1f810c02  addli r2, r25, 256
001a90  1f0a0a01  addli r20, r20, 128
001a94  1f0c0c04  addli r24, r24, 512
001a98  1f090904  addli r18, r18, 512
001a9c  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
001aa0  1f840d03  addli r8, r27, 384
001aa4  ca120502  vloads_mask16.mz vr5{mr1}, 0(r10)
001aa8  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
001aac  1f858c02  addli r10, r25, 320
001ab0  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
001ab4  1f848d03  addli r8, r27, 448
001ab8  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
001abc  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
001ac0  1f840c03  addli r8, r25, 384
001ac4  9f8c8c03  addli r25, r25, 448
001ac8  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
001acc  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
001ad0  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
001ad4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001ad8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001adc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001ae0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001ae4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001ae8  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
001aec  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
001af0  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001af4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001af8  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
001afc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001b00  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001b04  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001b08  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001b0c  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
001b10  bf3b1afe  blt.s r20, r1, -276
001b14  dbc4ffff  j -476
001b18  1f020000  addli r4, zero, 0
001b1c  9f020000  addli r5, zero, 0
001b20  2ba50000  lui r10, 10
001b24  abbd0000  lui r27, 11
001b28  1f048fd7  addli r8, r30, -5184
001b2c  00a00000  mfence { lm }
001b30  1f0505f0  addli r10, r10, -2048
001b34  9f8d0df0  addli r27, r27, -2048
001b38  bfc3d700  blt.s r15, r13, 240
001b3c  6341ffd3  loadli.w r2,  -5636(r30)
001b40  9f000000  addli r1, zero, 0
001b44  8f822218  div.f.rn r5, r5, r2
001b48  0f022218  div.f.rn r4, r4, r2
001b4c  63013f00  loadli.w r2,  24(r30)
001b50  8be35220  mul.f.rn r7, r5, r5
001b54  8be20258  neg.f r5, r5
001b58  0b627218  sub.f.rn r4, r4, r7
001b5c  9f030000  addli r7, zero, 0
001b60  0b622210  add.f.rn r4, r4, r2
001b64  0f020208  sqrt.f.rn r4, r4
001b68  0f824b18  div.f.rn r4, r23, r4
001b6c  0b99a010  add.s r18, r1, r10
001b70  8b181410  add.s r17, r8, r1
001b74  1f0a8900  addli r20, r18, 64
001b78  4a110902  vloads_mask16.mz vr2{mr1}, 0(r18)
001b7c  0b99b011  add.s r18, r1, r27
001b80  c2900802  vload_mask16.mz vr1{mr1}, 0(r17)
001b84  ca110a02  vloads_mask16.mz vr3{mr1}, 0(r20)
001b88  1f8a8800  addli r20, r17, 64
001b8c  4a120902  vloads_mask16.mz vr4{mr1}, 0(r18)
001b90  1f098900  addli r18, r18, 64
001b94  c2120a02  vload_mask16.mz vr5{mr1}, 0(r20)
001b98  4a130902  vloads_mask16.mz vr6{mr1}, 0(r18)
001b9c  1f894300  addli r18, r7, 32
001ba0  92901202  vadd.f.mz.rn vr1{mr1}, r5, vr1
001ba4  92925202  vadd.f.mz.rn vr5{mr1}, r5, vr5
001ba8  8a101202  vmul.f.mz.rn vr1{mr1}, r4, vr1
001bac  8a125202  vmul.f.mz.rn vr5{mr1}, r4, vr5
001bb0  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
001bb4  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
001bb8  46904802  vstore_mask16.mz vr4{mr1}, 0(r17)
001bbc  46106a02  vstore_mask16.mz vr6{mr1}, 0(r20)
001bc0  cba12701  ble.s r15, r18, 104
001bc4  0b191510  add.s r18, r10, r1
001bc8  0b9a1d10  add.s r20, r27, r1
001bcc  9f838300  addli r7, r7, 64
001bd0  9f800002  addli r1, r1, 256
001bd4  1f0c0901  addli r24, r18, 128
001bd8  9f0c0a01  addli r25, r20, 128
001bdc  1f098901  addli r18, r18, 192
001be0  1f0a8a01  addli r20, r20, 192
001be4  ca100c02  vloads_mask16.mz vr1{mr1}, 0(r24)
001be8  1f8c0801  addli r24, r17, 128
001bec  9f888801  addli r17, r17, 192
001bf0  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
001bf4  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
001bf8  4a130a02  vloads_mask16.mz vr6{mr1}, 0(r20)
001bfc  c2110c02  vload_mask16.mz vr3{mr1}, 0(r24)
001c00  42920802  vload_mask16.mz vr4{mr1}, 0(r17)
001c04  92913202  vadd.f.mz.rn vr3{mr1}, r5, vr3
001c08  12924202  vadd.f.mz.rn vr4{mr1}, r5, vr4
001c0c  8a113202  vmul.f.mz.rn vr3{mr1}, r4, vr3
001c10  0a124202  vmul.f.mz.rn vr4{mr1}, r4, vr4
001c14  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
001c18  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
001c1c  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
001c20  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
001c24  3fadf3fe  blt.s r7, r15, -184
001c28  1f717000  addli r2, zero, 63
001c2c  1f052000  addli r10, zero, 16
001c30  9f380000  addli r17, zero, 3
001c34  1f591000  addli r18, zero, 13
001c38  1f2a1000  addli r20, zero, 10
001c3c  00a00000  mfence { lm }
001c40  bfa0d7fe  blt.s r15, r13, -984
001c44  9f008fd7  addli r1, r30, -5184
001c48  1f028fd7  addli r4, r30, -5184
001c4c  9f020000  addli r5, zero, 0
001c50  9f038200  addli r7, r4, 64
001c54  42110202  vload_mask16.mz vr2{mr1}, 0(r4)
001c58  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001c5c  9f824200  addli r5, r5, 32
001c60  1f020201  addli r4, r4, 128
001c64  6a221522  vor.u.mz vr4{mr1}, r10, vr1
001c68  c2910302  vload_mask16.mz vr3{mr1}, 0(r7)
001c6c  ee3222c2  vsrl.s.mz vr5{mr1}, vr4, vr2
001c70  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
001c74  eab25602  vand.s.mz vr5{mr1}, r13, vr5
001c78  6ab24602  vand.s.mz vr4{mr1}, r13, vr4
001c7c  16315102  vadd.s.mz vr2{mr1}, vr2, vr5
001c80  eaa21822  vor.u.mz vr5{mr1}, r17, vr1
001c84  96b14102  vadd.s.mz vr3{mr1}, vr3, vr4
001c88  6a221922  vor.u.mz vr4{mr1}, r18, vr1
001c8c  ea201a22  vor.u.mz vr1{mr1}, r20, vr1
001c90  12312d02  vadd.s.mz vr2{mr1}, r26, vr2
001c94  92313d02  vadd.s.mz vr3{mr1}, r26, vr3
001c98  6e3322c2  vsrl.s.mz vr6{mr1}, vr4, vr2
001c9c  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
001ca0  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
001ca4  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
001ca8  eab26402  vand.s.mz vr5{mr1}, r9, vr6
001cac  6a312e02  vand.s.mz vr2{mr1}, r28, vr2
001cb0  6ab24402  vand.s.mz vr4{mr1}, r9, vr4
001cb4  ea313e02  vand.s.mz vr3{mr1}, r28, vr3
001cb8  6ab12b22  vor.s.mz vr2{mr1}, r23, vr2
001cbc  eab25b22  vor.s.mz vr5{mr1}, r23, vr5
001cc0  6ab24b22  vor.s.mz vr4{mr1}, r23, vr4
001cc4  eab13b22  vor.s.mz vr3{mr1}, r23, vr3
001cc8  06110120  vfloat2fp16_l.rz vr2, vr2
001ccc  06520220  vfloat2fp16_h.rz vr4, vr4
001cd0  06d10120  vfloat2fp16_h.rz vr2, vr3
001cd4  06920220  vfloat2fp16_l.rz vr4, vr5
001cd8  6ab12502  vand.s.mz vr2{mr1}, r11, vr2
001cdc  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
001ce0  eab01102  vand.s.mz vr1{mr1}, r3, vr1
001ce4  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
001ce8  46801002  vstore.mz vr1{mr1}, 0(r1)
001cec  9f808000  addli r1, r1, 64
001cf0  bf8df2fe  blt.s r5, r15, -160
001cf4  db6effff  j -1164
001cf8  e3403f00  loadli.w r1,  28(r30)
001cfc  37df0016  beq r1, zero, 12244
001d00  80300002  core_id r1
001d04  e3012f00  loadli.w r3,  16(r30)
001d08  1bb15000  slli r2, r1, 5
001d0c  4bc32100  ble.s r3, r2, 208
001d10  2b580100  lui r16, 21
001d14  00550102  load_param_i r10, 2
001d18  9f150000  addli r11, zero, 1
001d1c  1f068fd7  addli r12, r30, -5184
001d20  9f068000  addli r13, zero, 64
001d24  9f080100  addli r17, r2, 0
001d28  9b315500  slli r3, r10, 5
001d2c  1f080800  addli r16, r16, 0
001d30  33890828  zext_int2long r[19:20], r17
001d34  2b0a00f0  lui r20, 983040
001d38  1739b902  sll.d r[19:20], r[19:20], r11
001d3c  179a4601  or r20, r13, r20
001d40  0b292211  add.ul r[19:20], r[5:6], r[19:20]
001d44  7f2ac900  l_gm2lm r20, r12, 0(r[19:20])
001d48  1bb92800  slli r18, r17, 2
001d4c  8b981111  add.s r17, r3, r17
001d50  00a00200  mfence { lm, gm }
001d54  42000602  vload.mz vr0{mr1}, 0(r12)
001d58  0b190911  add.s r18, r18, r16
001d5c  9f098900  addli r19, r18, 64
001d60  86300000  vfp162float_l.rn vr1, vr0
001d64  06700000  vfp162float_h.rn vr0, vr0
001d68  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
001d6c  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
001d70  3f8ff8fe  blt.s r17, r15, -64
001d74  ab620100  lui r5, 22
001d78  1bb27000  slli r4, r1, 7
001d7c  9f058fd7  addli r11, r30, -5184
001d80  1f068000  addli r12, zero, 64
001d84  9f060100  addli r13, r2, 0
001d88  00a00000  mfence { lm }
001d8c  9f820200  addli r5, r5, 0
001d90  0b125210  add.s r4, r4, r5
001d94  9b327500  slli r5, r10, 7
001d98  1f150000  addli r10, zero, 1
001d9c  33880628  zext_int2long r[17:18], r13
001da0  2b0900f0  lui r18, 983040
001da4  8b963610  add.s r13, r13, r3
001da8  1738a802  sll.d r[17:18], r[17:18], r10
001dac  17192601  or r18, r12, r18
001db0  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001db4  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
001db8  1f088200  addli r16, r4, 64
001dbc  00a00200  mfence { lm, gm }
001dc0  42800502  vload.mz vr0{mr1}, 0(r11)
001dc4  86300000  vfp162float_l.rn vr1, vr0
001dc8  06700000  vfp162float_h.rn vr0, vr0
001dcc  4e101202  vstores_mask16.mz vr1{mr1}, 0(r4)
001dd0  0b125210  add.s r4, r4, r5
001dd4  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
001dd8  3f9ff6fe  blt.s r13, r15, -60
001ddc  e3012f00  loadli.w r3,  16(r30)
001de0  cba12100  ble.s r3, r2, 104
001de4  00530102  load_param_i r6, 2
001de8  ab730100  lui r7, 23
001dec  9f110000  addli r3, zero, 1
001df0  1f028fd7  addli r4, r30, -5184
001df4  9f028000  addli r5, zero, 64
001df8  00a00000  mfence { lm }
001dfc  1b335300  slli r6, r6, 5
001e00  9f830300  addli r7, r7, 0
001e04  33050128  zext_int2long r[11:12], r2
001e08  2b0600f0  lui r12, 983040
001e0c  17353502  sll.d r[11:12], r[11:12], r3
001e10  1796c200  or r12, r5, r12
001e14  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001e18  7f264500  l_gm2lm r12, r4, 0(r[11:12])
001e1c  1b352100  slli r10, r2, 2
001e20  0b112310  add.s r2, r6, r2
001e24  00a00200  mfence { lm, gm }
001e28  42000202  vload.mz vr0{mr1}, 0(r4)
001e2c  0b157510  add.s r10, r10, r7
001e30  9f058500  addli r11, r10, 64
001e34  86300000  vfp162float_l.rn vr1, vr0
001e38  06700000  vfp162float_h.rn vr0, vr0
001e3c  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001e40  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
001e44  3f0ff1fe  blt.s r2, r15, -64
001e48  2bf10000  lui r2, 15
001e4c  e3411f00  loadli.w r3,  12(r30)
001e50  00a00300  mfence { lm, sm, gm }
001e54  1b11f1ff  ori r2, r2, 4095
001e58  80210104  csr_set csr3, r2
001e5c  00d00100  sync_group
001e60  cb921124  ble.s r3, r1, 18596
001e64  63012f00  loadli.w r2,  16(r30)
001e68  e3412f00  loadli.w r3,  20(r30)
001e6c  9f0b8fd7  addli r23, r30, -5184
001e70  2b540100  lui r8, 21
001e74  ab6a0100  lui r21, 22
001e78  2b7b0100  lui r22, 23
001e7c  1f150000  addli r10, zero, 1
001e80  9f054000  addli r11, zero, 32
001e84  1f767000  addli r12, zero, 63
001e88  1f080002  addli r16, zero, 256
001e8c  1f090001  addli r18, zero, 128
001e90  9f098000  addli r19, zero, 64
001e94  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001e98  1f040400  addli r8, r8, 0
001e9c  9f8a0a00  addli r21, r21, 0
001ea0  1f0b0b00  addli r22, r22, 0
001ea4  0b123110  add.s r4, r2, r3
001ea8  b3020108  fix2float.rn r5, r2
001eac  9b381100  slli r17, r2, 1
001eb0  1b332100  slli r6, r2, 2
001eb4  1f014100  addli r2, r2, 32
001eb8  9bb42100  slli r9, r3, 2
001ebc  67042fd4  storeli.w r2, -5568(r30)
001ec0  0b117311  add.s r2, r6, r23
001ec4  1f72f2ff  addli r4, r4, -1
001ec8  0b937811  add.s r6, r17, r23
001ecc  67085fd4  storeli.w r5, -5504(r30)
001ed0  1f0181ff  addli r2, r2, -64
001ed4  0b123230  div.s r4, r4, r3
001ed8  67002fd4  storeli.w r2, -5632(r30)
001edc  1f0183ff  addli r2, r6, -64
001ee0  e74f2fd2  storeli.w r2, -5636(r30)
001ee4  2bf1ffff  lui r2, 1048575
001ee8  00a00000  mfence { lm }
001eec  670c1fd5  storeli.w r17, -5440(r30)
001ef0  9b16f1ff  ori r13, r2, 4095
001ef4  1f010fd7  addli r2, r30, -5248
001ef8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001efc  5b080000  j 64
001f00  9f038fd6  addli r7, r30, -5312
001f04  6b510f00  load.d r[3:4], 0(r30)
001f08  ebd20300  load.d r[6:7], 0(r7)
001f0c  00a00000  mfence { lm }
001f10  80530102  load_param_i r7, 2
001f14  e3088fd5  loadli.w r17,  -5440(r30)
001f18  8b901310  add.s r1, r7, r1
001f1c  0b215110  add.ul r[3:4], r[3:4], r[6:7]
001f20  2b0300f0  lui r6, 983040
001f24  17936800  or r6, r17, r6
001f28  7f337101  s_lm2gm r6, r23, 0(r[3:4])
001f2c  00a00200  mfence { lm, gm }
001f30  63411f00  loadli.w r2,  12(r30)
001f34  3fa02000  blt.s r1, r2, 8
001f38  dbf90800  j 18380
001f3c  63011f00  loadli.w r2,  8(r30)
001f40  0b912010  add.s r2, r1, r2
001f44  0b11f120  mul.s r2, r2, r15
001f48  33110128  sext_int2long r[3:4], r2
001f4c  173ca102  sll.d r[25:26], r[3:4], r10
001f50  9f017fd6  addli r3, r30, -5320
001f54  2b0100f0  lui r2, 983040
001f58  ebd20100  load.d r[6:7], 0(r3)
001f5c  17912800  or r2, r17, r2
001f60  9f018fd6  addli r3, r30, -5312
001f64  73b08101  store.d r[25:26], 0(r3)
001f68  0ba38211  add.ul r[7:8], r[6:7], r[25:26]
001f6c  7f217301  l_gm2lm r2, r23, 0(r[7:8])
001f70  00a00200  mfence { lm, gm }
001f74  bff0b700  blt.s r15, r11, 60
001f78  6341ffd3  loadli.w r2,  -5636(r30)
001f7c  e3010fd4  loadli.w r3,  -5632(r30)
001f80  63038fd4  loadli.w r6,  -5568(r30)
001f84  c2000102  vload.mz vr1{mr1}, 0(r2)
001f88  1f03c3ff  addli r6, r6, -32
001f8c  9f8881ff  addli r17, r3, -64
001f90  1f0181ff  addli r2, r2, -64
001f94  93036604  setlt.u r7, r12, r6
001f98  06f10000  vfp162float_h.rn vr2, vr1
001f9c  86b00000  vfp162float_l.rn vr1, vr1
001fa0  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
001fa4  9f8101ff  addli r3, r3, -128
001fa8  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
001fac  3bef03fe  bneq r7, zero, -40
001fb0  00a00000  mfence { lm }
001fb4  bf27a200  blt.s r4, r10, 488
001fb8  1f0d0000  addli r26, zero, 0
001fbc  9f0c0000  addli r25, zero, 0
001fc0  9f0d0000  addli r27, zero, 0
001fc4  db0c0000  j 100
001fc8  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001fcc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001fd0  9f9d0d00  addli r27, r27, 1
001fd4  6a7108c0  vsrl.p vr2, r16, vr0
001fd8  ea7118c0  vsrl.p vr3, r16, vr1
001fdc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001fe0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001fe4  6a7109c0  vsrl.p vr2, r18, vr0
001fe8  ea7119c0  vsrl.p vr3, r18, vr1
001fec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001ff0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001ff4  6af109c0  vsrl.p vr2, r19, vr0
001ff8  eaf119c0  vsrl.p vr3, r19, vr1
001ffc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002000  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002004  6af105c0  vsrl.p vr2, r11, vr0
002008  eaf115c0  vsrl.p vr3, r11, vr1
00200c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002010  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002014  7a110040  vextracti.f r2, 0(vr0)
002018  fa910040  vextracti.f r3, 0(vr1)
00201c  0b6d2d10  add.f.rn r26, r26, r2
002020  8bec3c10  add.f.rn r25, r25, r3
002024  37864d00  beq r27, r4, 384
002028  1f810d00  addli r2, r27, 0
00202c  37300701  beq r14, r16, 12
002030  17a1dd00  xor r2, r27, r13
002034  0b112210  add.s r2, r4, r2
002038  8b11e120  mul.s r3, r2, r14
00203c  8b913718  sub.s r3, r15, r3
002040  0b9ee140  min.s r28, r3, r14
002044  9f010fd7  addli r3, r30, -5248
002048  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00204c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002050  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002054  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002058  bf4daefe  blt.s r28, r10, -144
00205c  0b932420  mul.s r6, r9, r2
002060  1f010fd7  addli r2, r30, -5248
002064  1f0a0000  addli r20, zero, 0
002068  9f038fd7  addli r7, r30, -5184
00206c  9f080400  addli r17, r8, 0
002070  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
002074  92304002  vadd.s.mz vr1{mr1}, zero, vr4
002078  12314002  vadd.s.mz vr2{mr1}, zero, vr4
00207c  92314002  vadd.s.mz vr3{mr1}, zero, vr4
002080  0b916810  add.s r2, r17, r6
002084  8b916310  add.s r3, r7, r6
002088  9f0b8100  addli r23, r2, 64
00208c  ca120102  vloads_mask16.mz vr5{mr1}, 0(r2)
002090  1f0c8101  addli r24, r2, 192
002094  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
002098  9f828101  addli r5, r3, 192
00209c  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
0020a0  9f0b0101  addli r23, r2, 128
0020a4  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
0020a8  1f8c0101  addli r24, r3, 128
0020ac  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0020b0  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
0020b4  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
0020b8  9f8b8100  addli r23, r3, 64
0020bc  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
0020c0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0020c4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0020c8  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0020cc  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0020d0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0020d4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0020d8  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
0020dc  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
0020e0  9f0b8a00  addli r23, r20, 64
0020e4  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
0020e8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0020ec  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0020f0  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0020f4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0020f8  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
0020fc  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
002100  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
002104  4b1b7eff  ble.s r28, r23, -316
002108  9f0b0102  addli r23, r2, 256
00210c  1f0c8102  addli r24, r2, 320
002110  9f820102  addli r5, r3, 256
002114  1f0a0a01  addli r20, r20, 128
002118  9f880804  addli r17, r17, 512
00211c  9f830304  addli r7, r7, 512
002120  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
002124  9f0b0103  addli r23, r2, 384
002128  1f018103  addli r2, r2, 448
00212c  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
002130  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
002134  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
002138  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
00213c  1f810103  addli r2, r3, 384
002140  9f8b8102  addli r23, r3, 320
002144  9f818103  addli r3, r3, 448
002148  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
00214c  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
002150  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
002154  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
002158  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00215c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
002160  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002164  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002168  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
00216c  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
002170  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
002174  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
002178  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00217c  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
002180  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002184  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002188  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
00218c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002190  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
002194  bf3bcaff  blt.s r20, r28, -276
002198  5bc6ffff  j -464
00219c  9f0c0000  addli r25, zero, 0
0021a0  1f0d0000  addli r26, zero, 0
0021a4  9f0b8fd7  addli r23, r30, -5184
0021a8  00a00000  mfence { lm }
0021ac  bfd3a700  blt.s r15, r10, 244
0021b0  e3010fd5  loadli.w r3,  -5504(r30)
0021b4  e3023f00  loadli.w r5,  24(r30)
0021b8  1f030000  addli r6, zero, 0
0021bc  1f0a0000  addli r20, zero, 0
0021c0  0f013d18  div.f.rn r2, r26, r3
0021c4  8f813c18  div.f.rn r3, r25, r3
0021c8  8b632120  mul.f.rn r7, r2, r2
0021cc  8b680158  neg.f r17, r2
0021d0  8be17118  sub.f.rn r3, r3, r7
0021d4  8be15110  add.f.rn r3, r3, r5
0021d8  ab02803f  lui r5, 260096
0021dc  8f810108  sqrt.f.rn r3, r3
0021e0  8f833218  div.f.rn r7, r5, r3
0021e4  8b115311  add.s r3, r6, r21
0021e8  0b916b10  add.s r2, r23, r6
0021ec  9f8c8100  addli r25, r3, 64
0021f0  4a910102  vloads_mask16.mz vr2{mr1}, 0(r3)
0021f4  8b116311  add.s r3, r6, r22
0021f8  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0021fc  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
002200  9f0c8100  addli r25, r2, 64
002204  4a920102  vloads_mask16.mz vr4{mr1}, 0(r3)
002208  9f818100  addli r3, r3, 64
00220c  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
002210  4a930102  vloads_mask16.mz vr6{mr1}, 0(r3)
002214  9f014a00  addli r3, r20, 32
002218  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
00221c  92925802  vadd.f.mz.rn vr5{mr1}, r17, vr5
002220  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
002224  8a925302  vmul.f.mz.rn vr5{mr1}, r7, vr5
002228  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
00222c  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
002230  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
002234  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
002238  cba13700  ble.s r15, r3, 104
00223c  8b916a10  add.s r3, r21, r6
002240  8b1c6b10  add.s r25, r22, r6
002244  1f0a8a00  addli r20, r20, 64
002248  1f030302  addli r6, r6, 256
00224c  1f8d0101  addli r26, r3, 128
002250  9f8d0c01  addli r27, r25, 128
002254  9f818101  addli r3, r3, 192
002258  9f8c8c01  addli r25, r25, 192
00225c  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
002260  1f0d0101  addli r26, r2, 128
002264  1f018101  addli r2, r2, 192
002268  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
00226c  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
002270  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
002274  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
002278  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
00227c  92913802  vadd.f.mz.rn vr3{mr1}, r17, vr3
002280  12924802  vadd.f.mz.rn vr4{mr1}, r17, vr4
002284  8a913302  vmul.f.mz.rn vr3{mr1}, r7, vr3
002288  0a924302  vmul.f.mz.rn vr4{mr1}, r7, vr4
00228c  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
002290  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
002294  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
002298  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
00229c  3f2dfafe  blt.s r20, r15, -184
0022a0  00a00000  mfence { lm }
0022a4  3ff1a7fe  blt.s r15, r10, -932
0022a8  1f018fd7  addli r2, r30, -5184
0022ac  9f018fd7  addli r3, r30, -5184
0022b0  1f030000  addli r6, zero, 0
0022b4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0022b8  9f838100  addli r7, r3, 64
0022bc  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
0022c0  1f034300  addli r6, r6, 32
0022c4  9f810101  addli r3, r3, 128
0022c8  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
0022cc  86910000  vfloat2fp16_l.rn vr3, vr1
0022d0  86510100  vfloat2fp16_h.rn vr3, vr2
0022d4  46003102  vstore.mz vr3{mr1}, 0(r2)
0022d8  1f018100  addli r2, r2, 64
0022dc  3f6ff3fe  blt.s r6, r15, -40
0022e0  5b84ffff  j -992
0022e4  e3002f00  loadli.w r1,  16(r30)
0022e8  1f010010  addli r2, zero, 2048
0022ec  bbe02008  bneq r1, r2, 4152
0022f0  2ba30200  lui r6, 42
0022f4  803b0002  core_id r23
0022f8  1f030308  addli r6, r6, 1024
0022fc  3bd00b00  bneq r23, zero, 20
002300  1f010040  addli r2, zero, 8192
002304  ab0100f0  lui r3, 983040
002308  17113100  or r2, r2, r3
00230c  7f016200  l_gm2sm r2, r6, 0(r[5:6])
002310  2bf10000  lui r2, 15
002314  e3401f00  loadli.w r1,  12(r30)
002318  00200300  mfence { sm, gm }
00231c  1b8c1b00  andi r24, r23, 1
002320  9f020006  addli r5, zero, 768
002324  1b11f1ff  ori r2, r2, 4095
002328  80210104  csr_set csr3, r2
00232c  1f010006  addli r2, zero, 768
002330  00d00100  sync_group
002334  37200c00  beq r24, zero, 8
002338  9f02000a  addli r5, zero, 1280
00233c  e3411f00  loadli.w r3,  12(r30)
002340  9f130000  addli r7, zero, 1
002344  3f8f7120  blt.s r3, r7, 17344
002348  0b122c20  mul.s r4, r24, r2
00234c  2bf1ffff  lui r2, 1048575
002350  abca0200  lui r21, 44
002354  2bcd0200  lui r26, 44
002358  80510102  load_param_i r3, 2
00235c  9f030000  addli r7, zero, 0
002360  1bc51b00  srli r10, r23, 1
002364  9bb52200  slli r11, r5, 2
002368  9f280000  addli r17, zero, 2
00236c  9f068fd7  addli r13, r30, -5184
002370  1f080005  addli r16, zero, 640
002374  1f090001  addli r18, zero, 128
002378  9f098000  addli r19, zero, 64
00237c  1f0a4000  addli r20, zero, 32
002380  9f0c0003  addli r25, zero, 384
002384  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002388  1b1101f8  ori r2, r2, 3968
00238c  9bc41100  srli r9, r3, 1
002390  9f010fd7  addli r3, r30, -5248
002394  9f8a0a08  addli r21, r21, 1024
002398  1f0d0d0c  addli r26, r26, 1536
00239c  67042fd6  storeli.w r2, -5312(r30)
0023a0  2bf10000  lui r2, 15
0023a4  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0023a8  1b1bf1ff  ori r22, r2, 4095
0023ac  db030000  j 28
0023b0  00a00300  mfence { lm, sm, gm }
0023b4  80210b04  csr_set csr3, r22
0023b8  00d00100  sync_group
0023bc  8b939310  add.s r7, r7, r9
0023c0  3fa01300  blt.s r7, r1, 8
0023c4  db15fdff  j -5972
0023c8  0b91a310  add.s r2, r7, r10
0023cc  cb9f20fe  ble.s r1, r2, -28
0023d0  e3001f00  loadli.w r1,  8(r30)
0023d4  0b111110  add.s r2, r2, r1
0023d8  9f007fd6  addli r1, r30, -5320
0023dc  1b31b100  slli r2, r2, 11
0023e0  6bd70000  load.d r[15:16], 0(r1)
0023e4  17114100  or r2, r2, r4
0023e8  33110128  sext_int2long r[3:4], r2
0023ec  973d1103  sll.d r[28:29], r[3:4], r17
0023f0  2b0100f0  lui r2, 983040
0023f4  0b27b711  add.ul r[15:16], r[15:16], r[28:29]
0023f8  17912500  or r2, r11, r2
0023fc  7f21d700  l_gm2lm r2, r13, 0(r[15:16])
002400  00a00200  mfence { lm, gm }
002404  3b260c00  bneq r24, zero, 392
002408  9f000fd7  addli r1, r30, -5248
00240c  e3018fd6  loadli.w r3,  -5312(r30)
002410  1f010000  addli r2, zero, 0
002414  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
002418  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00241c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
002420  12323002  vadd.s.mz vr4{mr1}, zero, vr3
002424  0b176110  add.s r14, r2, r6
002428  0b962610  add.s r12, r13, r2
00242c  9f810101  addli r3, r3, 128
002430  1f010104  addli r2, r2, 512
002434  9f000701  addli r1, r14, 128
002438  4a100702  vloads_mask16.mz vr0{mr1}, 0(r14)
00243c  1f048700  addli r8, r14, 64
002440  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
002444  9f078601  addli r15, r12, 192
002448  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
00244c  9f008701  addli r1, r14, 192
002450  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002454  1f048600  addli r8, r12, 64
002458  c2950702  vload_mask16.mz vr11{mr1}, 0(r15)
00245c  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
002460  9f000601  addli r1, r12, 128
002464  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
002468  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00246c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002470  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002474  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002478  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00247c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002480  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
002484  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002488  9f000702  addli r1, r14, 256
00248c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002490  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002494  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002498  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
00249c  1f040603  addli r8, r12, 384
0024a0  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0024a4  9f008702  addli r1, r14, 320
0024a8  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
0024ac  9f070602  addli r15, r12, 256
0024b0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0024b4  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0024b8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0024bc  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0024c0  9f000703  addli r1, r14, 384
0024c4  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0024c8  1f078703  addli r14, r14, 448
0024cc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0024d0  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0024d4  9f008602  addli r1, r12, 320
0024d8  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
0024dc  1f068603  addli r12, r12, 448
0024e0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0024e4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0024e8  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0024ec  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0024f0  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0024f4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0024f8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0024fc  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
002500  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002504  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
002508  93800105  setlt.u r1, r3, r16
00250c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002510  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002514  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002518  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00251c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002520  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002524  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
002528  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00252c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002530  bbdb00fe  bneq r1, zero, -268
002534  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002538  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00253c  9f000002  addli r1, zero, 256
002540  6af100c0  vsrl.p vr2, r1, vr0
002544  eaf110c0  vsrl.p vr3, r1, vr1
002548  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00254c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002550  6a7109c0  vsrl.p vr2, r18, vr0
002554  ea7119c0  vsrl.p vr3, r18, vr1
002558  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00255c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002560  6af109c0  vsrl.p vr2, r19, vr0
002564  eaf119c0  vsrl.p vr3, r19, vr1
002568  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00256c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002570  6a710ac0  vsrl.p vr2, r20, vr0
002574  ea711ac0  vsrl.p vr3, r20, vr1
002578  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00257c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002580  7a160040  vextracti.f r12, 0(vr0)
002584  7a910040  vextracti.f r2, 0(vr1)
002588  5b650000  j 808
00258c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002590  abf0ffff  lui r1, 1048575
002594  9f080c00  addli r17, r24, 0
002598  1f010000  addli r2, zero, 0
00259c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0025a0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0025a4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0025a8  9b9100f8  ori r3, r1, 3968
0025ac  0b172310  add.s r14, r6, r2
0025b0  0b962610  add.s r12, r13, r2
0025b4  9f810101  addli r3, r3, 128
0025b8  1f010104  addli r2, r2, 512
0025bc  9f000731  addli r1, r14, 6272
0025c0  9f070730  addli r15, r14, 6144
0025c4  1f048731  addli r8, r14, 6336
0025c8  1f0c0618  addli r24, r12, 3072
0025cc  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
0025d0  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
0025d4  9f078730  addli r15, r14, 6208
0025d8  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
0025dc  1f040619  addli r8, r12, 3200
0025e0  9f008618  addli r1, r12, 3136
0025e4  42130c02  vload_mask16.mz vr6{mr1}, 0(r24)
0025e8  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
0025ec  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
0025f0  9f078619  addli r15, r12, 3264
0025f4  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0025f8  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
0025fc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
002600  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
002604  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
002608  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
00260c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002610  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
002614  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
002618  1f040732  addli r8, r14, 6400
00261c  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
002620  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
002624  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002628  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
00262c  9f07061a  addli r15, r12, 3328
002630  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
002634  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
002638  9f00061b  addli r1, r12, 3456
00263c  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
002640  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
002644  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
002648  1f048732  addli r8, r14, 6464
00264c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002650  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002654  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002658  1f040733  addli r8, r14, 6528
00265c  1f078733  addli r14, r14, 6592
002660  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
002664  1f04861a  addli r8, r12, 3392
002668  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
00266c  1f06861b  addli r12, r12, 3520
002670  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
002674  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
002678  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00267c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002680  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
002684  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002688  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00268c  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
002690  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002694  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
002698  13849105  setlt.u r8, r3, r25
00269c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0026a0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0026a4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0026a8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0026ac  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0026b0  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0026b4  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0026b8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0026bc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0026c0  bb3b04fe  bneq r8, zero, -276
0026c4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0026c8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0026cc  9f000002  addli r1, zero, 256
0026d0  1f060000  addli r12, zero, 0
0026d4  eaf110c0  vsrl.p vr3, r1, vr1
0026d8  6af100c0  vsrl.p vr2, r1, vr0
0026dc  abf0ffff  lui r1, 1048575
0026e0  1b9c00f8  ori r24, r1, 3968
0026e4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0026e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0026ec  ea7119c0  vsrl.p vr3, r18, vr1
0026f0  6a7109c0  vsrl.p vr2, r18, vr0
0026f4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0026f8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0026fc  eaf119c0  vsrl.p vr3, r19, vr1
002700  6af109c0  vsrl.p vr2, r19, vr0
002704  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002708  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00270c  ea711ac0  vsrl.p vr3, r20, vr1
002710  6a710ac0  vsrl.p vr2, r20, vr0
002714  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002718  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00271c  fa910040  vextracti.f r3, 0(vr1)
002720  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002724  7a110040  vextracti.f r2, 0(vr0)
002728  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00272c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002730  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002734  8b17c310  add.s r15, r6, r12
002738  0b97c610  add.s r14, r13, r12
00273c  1f0c0c01  addli r24, r24, 128
002740  1f060604  addli r12, r12, 512
002744  9f800718  addli r1, r15, 3072
002748  1f840719  addli r8, r15, 3200
00274c  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
002750  9f0b8701  addli r23, r14, 192
002754  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002758  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
00275c  9f808718  addli r1, r15, 3136
002760  1f848719  addli r8, r15, 3264
002764  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
002768  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
00276c  9f000701  addli r1, r14, 128
002770  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
002774  1f048700  addli r8, r14, 64
002778  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00277c  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
002780  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002784  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002788  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00278c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002790  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002794  9f80071a  addli r1, r15, 3328
002798  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00279c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0027a0  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0027a4  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0027a8  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
0027ac  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0027b0  9f80871a  addli r1, r15, 3392
0027b4  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
0027b8  9f0b0702  addli r23, r14, 256
0027bc  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0027c0  1f040703  addli r8, r14, 384
0027c4  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0027c8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0027cc  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0027d0  9f80071b  addli r1, r15, 3456
0027d4  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
0027d8  9f87871b  addli r15, r15, 3520
0027dc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0027e0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0027e4  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0027e8  9f008702  addli r1, r14, 320
0027ec  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
0027f0  1f078703  addli r14, r14, 448
0027f4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0027f8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0027fc  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
002800  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002804  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
002808  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00280c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002810  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
002814  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002818  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
00281c  93000c05  setlt.u r1, r24, r16
002820  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002824  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002828  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00282c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002830  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002834  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002838  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
00283c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002840  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002844  bbcb00fe  bneq r1, zero, -272
002848  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00284c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002850  9f000002  addli r1, zero, 256
002854  1f8c0800  addli r24, r17, 0
002858  803b0002  core_id r23
00285c  9f280000  addli r17, zero, 2
002860  6af100c0  vsrl.p vr2, r1, vr0
002864  eaf110c0  vsrl.p vr3, r1, vr1
002868  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00286c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002870  6a7109c0  vsrl.p vr2, r18, vr0
002874  ea7119c0  vsrl.p vr3, r18, vr1
002878  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00287c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002880  6af109c0  vsrl.p vr2, r19, vr0
002884  eaf119c0  vsrl.p vr3, r19, vr1
002888  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00288c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002890  6a710ac0  vsrl.p vr2, r20, vr0
002894  ea711ac0  vsrl.p vr3, r20, vr1
002898  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00289c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028a0  fa100040  vextracti.f r1, 0(vr0)
0028a4  7a940040  vextracti.f r8, 0(vr1)
0028a8  0b661110  add.f.rn r12, r2, r1
0028ac  0be18110  add.f.rn r2, r3, r8
0028b0  8b809330  div.u r1, r7, r9
0028b4  1f070000  addli r14, zero, 0
0028b8  9bb06000  slli r1, r1, 6
0028bc  9b800004  andi r1, r1, 64
0028c0  97907001  or r1, r1, r23
0028c4  9bb12000  slli r3, r1, 2
0028c8  9b80e007  andi r1, r1, 126
0028cc  0b945111  add.s r8, r3, r21
0028d0  9bb02000  slli r1, r1, 2
0028d4  7360c400  stores.w r12, 0(r8)
0028d8  0b94a111  add.s r8, r3, r26
0028dc  9b914100  ori r3, r3, 4
0028e0  1f068fd7  addli r12, r30, -5184
0028e4  73602400  stores.w r2, 0(r8)
0028e8  0b915111  add.s r2, r3, r21
0028ec  0b945011  add.s r8, r1, r21
0028f0  8b91a111  add.s r3, r3, r26
0028f4  8b90a011  add.s r1, r1, r26
0028f8  00a00300  mfence { lm, sm, gm }
0028fc  80210b04  csr_set csr3, r22
002900  00d00100  sync_group
002904  6f410100  loads.w r2, 0(r2)
002908  6f440400  loads.w r8, 0(r8)
00290c  efc10100  loads.w r3, 0(r3)
002910  efc00000  loads.w r1, 0(r1)
002914  0b618110  add.f.rn r2, r2, r8
002918  2b04003a  lui r8, 237568
00291c  8be01110  add.f.rn r1, r3, r1
002920  8b618120  mul.f.rn r3, r2, r8
002924  8be08020  mul.f.rn r1, r1, r8
002928  0be13120  mul.f.rn r2, r3, r3
00292c  8be10158  neg.f r3, r3
002930  8be02018  sub.f.rn r1, r1, r2
002934  63013f00  loadli.w r2,  24(r30)
002938  8be02010  add.f.rn r1, r1, r2
00293c  2b01803f  lui r2, 260096
002940  8f800008  sqrt.f.rn r1, r1
002944  0f011118  div.f.rn r2, r2, r1
002948  9f008600  addli r1, r12, 64
00294c  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
002950  1f044700  addli r8, r14, 32
002954  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002958  13848206  setle.u r8, r5, r8
00295c  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
002960  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
002964  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
002968  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
00296c  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
002970  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002974  bb700400  bneq r8, zero, 60
002978  9f000601  addli r1, r12, 128
00297c  1f048601  addli r8, r12, 192
002980  1f078700  addli r14, r14, 64
002984  1f060602  addli r12, r12, 256
002988  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00298c  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
002990  93075704  setlt.u r15, r14, r5
002994  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
002998  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
00299c  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
0029a0  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
0029a4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0029a8  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
0029ac  3bfe07fe  bneq r15, zero, -100
0029b0  6b510f00  load.d r[3:4], 0(r30)
0029b4  ab0000f0  lui r1, 983040
0029b8  00a00000  mfence { lm }
0029bc  97901500  or r1, r11, r1
0029c0  0b21b111  add.ul r[3:4], r[3:4], r[28:29]
0029c4  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
0029c8  00a00200  mfence { lm, gm }
0029cc  e3401f00  loadli.w r1,  12(r30)
0029d0  db3dffff  j -1556
0029d4  80300002  core_id r1
0029d8  bb800000  bneq r1, zero, 32
0029dc  63012f00  loadli.w r2,  16(r30)
0029e0  ab0100f0  lui r3, 983040
0029e4  1b311100  slli r2, r2, 1
0029e8  17113100  or r2, r2, r3
0029ec  abc10100  lui r3, 28
0029f0  9f810100  addli r3, r3, 0
0029f4  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0029f8  2bf10000  lui r2, 15
0029fc  e3411f00  loadli.w r3,  12(r30)
002a00  00200300  mfence { sm, gm }
002a04  1b11f1ff  ori r2, r2, 4095
002a08  80210104  csr_set csr3, r2
002a0c  00d00100  sync_group
002a10  cbd3111e  ble.s r3, r1, 15604
002a14  63012f00  loadli.w r2,  16(r30)
002a18  e3412f00  loadli.w r3,  20(r30)
002a1c  1f062000  addli r12, zero, 16
002a20  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002a24  1f140000  addli r8, zero, 1
002a28  1f0b8fd7  addli r22, r30, -5184
002a2c  9f050002  addli r11, zero, 256
002a30  ab06ffff  lui r13, 1048560
002a34  ab08807f  lui r17, 522240
002a38  2b09c07f  lui r18, 523264
002a3c  9f090001  addli r19, zero, 128
002a40  1f0a8000  addli r20, zero, 64
002a44  9f0a4000  addli r21, zero, 32
002a48  9b321100  slli r5, r2, 1
002a4c  0b123110  add.s r4, r2, r3
002a50  33010108  fix2float.rn r2, r2
002a54  1bb31100  slli r6, r3, 1
002a58  67042fd4  storeli.w r2, -5568(r30)
002a5c  1f71f2ff  addli r2, r4, -1
002a60  67085fd4  storeli.w r5, -5504(r30)
002a64  8b133130  div.s r7, r2, r3
002a68  2bf1ffff  lui r2, 1048575
002a6c  1b15f1ff  ori r10, r2, 4095
002a70  1f010fd7  addli r2, r30, -5248
002a74  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002a78  6a200622  vor.u.mz vr0{mr1}, r12, vr0
002a7c  1f018fd6  addli r2, r30, -5312
002a80  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002a84  2b710000  lui r2, 7
002a88  1b18f1ff  ori r16, r2, 4095
002a8c  db080000  j 68
002a90  9f028fd5  addli r5, r30, -5440
002a94  00a00000  mfence { lm }
002a98  eb510f00  load.d r[4:5], 0(r30)
002a9c  2b0100f0  lui r2, 983040
002aa0  80540102  load_param_i r9, 2
002aa4  6bdb0200  load.d r[23:24], 0(r5)
002aa8  e3020fd5  loadli.w r5,  -5504(r30)
002aac  8b901410  add.s r1, r9, r1
002ab0  8ba16111  add.ul r[4:5], r[4:5], r[23:24]
002ab4  17912200  or r2, r5, r2
002ab8  1f0b8fd7  addli r22, r30, -5184
002abc  7fb16101  s_lm2gm r2, r22, 0(r[4:5])
002ac0  00a00200  mfence { lm, gm }
002ac4  63411f00  loadli.w r2,  12(r30)
002ac8  3fa02000  blt.s r1, r2, 8
002acc  5b870700  j 15416
002ad0  63011f00  loadli.w r2,  8(r30)
002ad4  9f047fd6  addli r9, r30, -5320
002ad8  0b912010  add.s r2, r1, r2
002adc  0b11f120  mul.s r2, r2, r15
002ae0  33110128  sext_int2long r[3:4], r2
002ae4  973b8102  sll.d r[24:25], r[3:4], r8
002ae8  ebd10400  load.d r[4:5], 0(r9)
002aec  2b0100f0  lui r2, 983040
002af0  9f048fd5  addli r9, r30, -5440
002af4  17912200  or r2, r5, r2
002af8  73b07401  store.d r[24:25], 0(r9)
002afc  8ba17111  add.ul r[4:5], r[4:5], r[24:25]
002b00  7fa16101  l_gm2lm r2, r22, 0(r[4:5])
002b04  00a00200  mfence { lm, gm }
002b08  bfdc8300  blt.s r7, r8, 820
002b0c  9f010000  addli r3, zero, 0
002b10  1f010000  addli r2, zero, 0
002b14  1f0d0000  addli r26, zero, 0
002b18  db0c0000  j 100
002b1c  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
002b20  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
002b24  1f1d0d00  addli r26, r26, 1
002b28  6af105c0  vsrl.p vr2, r11, vr0
002b2c  eaf115c0  vsrl.p vr3, r11, vr1
002b30  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b34  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002b38  6af109c0  vsrl.p vr2, r19, vr0
002b3c  eaf119c0  vsrl.p vr3, r19, vr1
002b40  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b44  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002b48  6a710ac0  vsrl.p vr2, r20, vr0
002b4c  ea711ac0  vsrl.p vr3, r20, vr1
002b50  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b54  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002b58  6af10ac0  vsrl.p vr2, r21, vr0
002b5c  eaf11ac0  vsrl.p vr3, r21, vr1
002b60  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b64  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002b68  7a120040  vextracti.f r4, 0(vr0)
002b6c  fa920040  vextracti.f r5, 0(vr1)
002b70  8be14110  add.f.rn r3, r3, r4
002b74  0b615110  add.f.rn r2, r2, r5
002b78  373b7d00  beq r26, r7, 716
002b7c  1f020d00  addli r4, r26, 0
002b80  3730b700  beq r14, r11, 12
002b84  1722ad00  xor r4, r26, r10
002b88  0b924310  add.s r4, r7, r4
002b8c  9f020fd7  addli r5, r30, -5248
002b90  8b14e220  mul.s r9, r4, r14
002b94  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
002b98  8b949718  sub.s r9, r15, r9
002b9c  8b9de440  min.s r27, r9, r14
002ba0  92322002  vadd.s.mz vr5{mr1}, zero, vr2
002ba4  12322002  vadd.s.mz vr4{mr1}, zero, vr2
002ba8  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002bac  bfcd8dfe  blt.s r27, r8, -144
002bb0  0b1b4320  mul.s r22, r6, r4
002bb4  1f020fd7  addli r4, r30, -5248
002bb8  abcb0100  lui r23, 28
002bbc  1f0e0000  addli r28, zero, 0
002bc0  9f048fd7  addli r9, r30, -5184
002bc4  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
002bc8  9f8b0b00  addli r23, r23, 0
002bcc  12315002  vadd.s.mz vr2{mr1}, zero, vr5
002bd0  92315002  vadd.s.mz vr3{mr1}, zero, vr5
002bd4  12325002  vadd.s.mz vr4{mr1}, zero, vr5
002bd8  0b9c6b11  add.s r24, r23, r22
002bdc  0b926411  add.s r4, r9, r22
002be0  9f028fd6  addli r5, r30, -5312
002be4  4a030c02  vloads.mz vr6{mr1}, 0(r24)
002be8  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
002bec  c2030202  vload.mz vr7{mr1}, 0(r4)
002bf0  9f020fd7  addli r5, r30, -5248
002bf4  9f0c8c00  addli r25, r24, 64
002bf8  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
002bfc  9f028e00  addli r5, r28, 64
002c00  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
002c04  6ab57602  vand.s.mz vr10{mr1}, r13, vr7
002c08  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
002c0c  6ab36602  vand.s.mz vr6{mr1}, r13, vr6
002c10  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
002c14  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
002c18  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
002c1c  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
002c20  669503c0  vabs.f vr10, vr7
002c24  6a348402  vand.s.mz vr8{mr1}, r8, vr8
002c28  ea349402  vand.s.mz vr9{mr1}, r8, vr9
002c2c  72a1a842  vlt.u.mz mr2{mr1}, r17, vr10
002c30  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
002c34  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
002c38  12348802  vadd.s.mz vr8{mr1}, r16, vr8
002c3c  92349802  vadd.s.mz vr9{mr1}, r16, vr9
002c40  eab38602  vand.s.mz vr7{mr1}, r13, vr8
002c44  661403c0  vabs.f vr8, vr6
002c48  6ab39602  vand.s.mz vr6{mr1}, r13, vr9
002c4c  ea230934  vor.u.mh vr7{mr2}, r18, vr0
002c50  72a18842  vlt.u.mz mr2{mr1}, r17, vr8
002c54  6a230934  vor.u.mh vr6{mr2}, r18, vr0
002c58  4a840c02  vloads.mz vr8{mr1}, 0(r25)
002c5c  9f0c8200  addli r25, r4, 64
002c60  c2840c02  vload.mz vr9{mr1}, 0(r25)
002c64  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
002c68  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
002c6c  6ab36602  vand.s.mz vr6{mr1}, r13, vr6
002c70  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
002c74  eab49602  vand.s.mz vr9{mr1}, r13, vr9
002c78  46007202  vstore.mz vr7{mr1}, 0(r4)
002c7c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002c80  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002c84  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
002c88  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
002c8c  6ab48602  vand.s.mz vr8{mr1}, r13, vr8
002c90  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002c94  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002c98  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
002c9c  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
002ca0  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
002ca4  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
002ca8  ea349402  vand.s.mz vr9{mr1}, r8, vr9
002cac  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
002cb0  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
002cb4  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
002cb8  661505c0  vabs.f vr10, vr10
002cbc  661404c0  vabs.f vr8, vr8
002cc0  92349802  vadd.s.mz vr9{mr1}, r16, vr9
002cc4  9235b802  vadd.s.mz vr11{mr1}, r16, vr11
002cc8  72a1a842  vlt.u.mz mr2{mr1}, r17, vr10
002ccc  eab49602  vand.s.mz vr9{mr1}, r13, vr9
002cd0  6ab5b602  vand.s.mz vr10{mr1}, r13, vr11
002cd4  ea240934  vor.u.mh vr9{mr2}, r18, vr0
002cd8  72a18842  vlt.u.mz mr2{mr1}, r17, vr8
002cdc  6a250934  vor.u.mh vr10{mr2}, r18, vr0
002ce0  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
002ce4  eab4a602  vand.s.mz vr9{mr1}, r13, vr10
002ce8  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
002cec  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002cf0  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002cf4  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
002cf8  46808c02  vstore.mz vr8{mr1}, 0(r25)
002cfc  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002d00  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002d04  4be85dfe  ble.s r27, r5, -488
002d08  9f020c01  addli r5, r24, 128
002d0c  9f0c0201  addli r25, r4, 128
002d10  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
002d14  1f028201  addli r4, r4, 192
002d18  1f0e0e01  addli r28, r28, 128
002d1c  9f8b0b02  addli r23, r23, 256
002d20  9f840402  addli r9, r9, 256
002d24  6a237622  vor.u.mz vr6{mr1}, r12, vr7
002d28  4a840202  vloads.mz vr8{mr1}, 0(r5)
002d2c  c2840c02  vload.mz vr9{mr1}, 0(r25)
002d30  9f028c01  addli r5, r24, 192
002d34  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
002d38  6ab09602  vand.s.mz vr0{mr1}, r13, vr9
002d3c  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
002d40  6ab48602  vand.s.mz vr8{mr1}, r13, vr8
002d44  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
002d48  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
002d4c  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
002d50  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
002d54  e69504c0  vabs.f vr11, vr9
002d58  6a300402  vand.s.mz vr0{mr1}, r8, vr0
002d5c  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
002d60  72a1b842  vlt.u.mz mr2{mr1}, r17, vr11
002d64  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
002d68  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
002d6c  12300802  vadd.s.mz vr0{mr1}, r16, vr0
002d70  1235a802  vadd.s.mz vr10{mr1}, r16, vr10
002d74  eab40602  vand.s.mz vr9{mr1}, r13, vr0
002d78  661004c0  vabs.f vr0, vr8
002d7c  6ab4a602  vand.s.mz vr8{mr1}, r13, vr10
002d80  ea247934  vor.u.mh vr9{mr2}, r18, vr7
002d84  72a10842  vlt.u.mz mr2{mr1}, r17, vr0
002d88  6a247934  vor.u.mh vr8{mr2}, r18, vr7
002d8c  4a800202  vloads.mz vr0{mr1}, 0(r5)
002d90  42050202  vload.mz vr10{mr1}, 0(r4)
002d94  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
002d98  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
002d9c  6ab5a602  vand.s.mz vr10{mr1}, r13, vr10
002da0  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
002da4  6ab48602  vand.s.mz vr8{mr1}, r13, vr8
002da8  46809c02  vstore.mz vr9{mr1}, 0(r25)
002dac  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
002db0  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
002db4  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
002db8  6ab00602  vand.s.mz vr0{mr1}, r13, vr0
002dbc  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
002dc0  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
002dc4  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
002dc8  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
002dcc  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
002dd0  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
002dd4  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
002dd8  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
002ddc  e69000c0  vabs.f vr1, vr1
002de0  661000c0  vabs.f vr0, vr0
002de4  1235a802  vadd.s.mz vr10{mr1}, r16, vr10
002de8  9235b802  vadd.s.mz vr11{mr1}, r16, vr11
002dec  72a11842  vlt.u.mz mr2{mr1}, r17, vr1
002df0  6ab5a602  vand.s.mz vr10{mr1}, r13, vr10
002df4  eab0b602  vand.s.mz vr1{mr1}, r13, vr11
002df8  6a257934  vor.u.mh vr10{mr2}, r18, vr7
002dfc  72a10842  vlt.u.mz mr2{mr1}, r17, vr0
002e00  ea207934  vor.u.mh vr1{mr2}, r18, vr7
002e04  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
002e08  eab31602  vand.s.mz vr7{mr1}, r13, vr1
002e0c  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
002e10  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
002e14  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002e18  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002e1c  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
002e20  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
002e24  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
002e28  46000202  vstore.mz vr0{mr1}, 0(r4)
002e2c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002e30  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002e34  bf16beff  blt.s r28, r27, -604
002e38  db9cffff  j -796
002e3c  1f010000  addli r2, zero, 0
002e40  9f010000  addli r3, zero, 0
002e44  00a00000  mfence { lm }
002e48  3fa187fe  blt.s r15, r8, -952
002e4c  63028fd4  loadli.w r4,  -5568(r30)
002e50  9f040000  addli r9, zero, 0
002e54  8f814118  div.f.rn r3, r3, r4
002e58  0f014118  div.f.rn r2, r2, r4
002e5c  0be23120  mul.f.rn r4, r3, r3
002e60  8be10158  neg.f r3, r3
002e64  0b614118  sub.f.rn r2, r2, r4
002e68  63023f00  loadli.w r4,  24(r30)
002e6c  0b614110  add.f.rn r2, r2, r4
002e70  2b02803f  lui r4, 260096
002e74  0f010108  sqrt.f.rn r2, r2
002e78  0f012218  div.f.rn r2, r4, r2
002e7c  1f028fd7  addli r4, r30, -5184
002e80  42020202  vload.mz vr4{mr1}, 0(r4)
002e84  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
002e88  1f8b4400  addli r22, r9, 32
002e8c  ea212622  vor.u.mz vr3{mr1}, r12, vr2
002e90  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002e94  6ab24602  vand.s.mz vr4{mr1}, r13, vr4
002e98  92925102  vadd.f.mz.rn vr5{mr1}, r3, vr5
002e9c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
002ea0  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002ea4  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002ea8  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002eac  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002eb0  6a336402  vand.s.mz vr6{mr1}, r8, vr6
002eb4  ea337402  vand.s.mz vr7{mr1}, r8, vr7
002eb8  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002ebc  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002ec0  e69202c0  vabs.f vr5, vr5
002ec4  661202c0  vabs.f vr4, vr4
002ec8  12336802  vadd.s.mz vr6{mr1}, r16, vr6
002ecc  92337802  vadd.s.mz vr7{mr1}, r16, vr7
002ed0  72a15842  vlt.u.mz mr2{mr1}, r17, vr5
002ed4  6ab36602  vand.s.mz vr6{mr1}, r13, vr6
002ed8  eab27602  vand.s.mz vr5{mr1}, r13, vr7
002edc  6a232934  vor.u.mh vr6{mr2}, r18, vr2
002ee0  72a14842  vlt.u.mz mr2{mr1}, r17, vr4
002ee4  ea222934  vor.u.mh vr5{mr2}, r18, vr2
002ee8  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
002eec  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
002ef0  46004202  vstore.mz vr4{mr1}, 0(r4)
002ef4  4bfe67fd  ble.s r15, r22, -1124
002ef8  1f0b8200  addli r22, r4, 64
002efc  9f848400  addli r9, r9, 64
002f00  1f020201  addli r4, r4, 128
002f04  42020b02  vload.mz vr4{mr1}, 0(r22)
002f08  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002f0c  6ab24602  vand.s.mz vr4{mr1}, r13, vr4
002f10  92925102  vadd.f.mz.rn vr5{mr1}, r3, vr5
002f14  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
002f18  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002f1c  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002f20  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002f24  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002f28  6a336402  vand.s.mz vr6{mr1}, r8, vr6
002f2c  ea337402  vand.s.mz vr7{mr1}, r8, vr7
002f30  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002f34  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002f38  e69202c0  vabs.f vr5, vr5
002f3c  661202c0  vabs.f vr4, vr4
002f40  12336802  vadd.s.mz vr6{mr1}, r16, vr6
002f44  92337802  vadd.s.mz vr7{mr1}, r16, vr7
002f48  72a15842  vlt.u.mz mr2{mr1}, r17, vr5
002f4c  6ab36602  vand.s.mz vr6{mr1}, r13, vr6
002f50  eab27602  vand.s.mz vr5{mr1}, r13, vr7
002f54  6a232934  vor.u.mh vr6{mr2}, r18, vr2
002f58  72a14842  vlt.u.mz mr2{mr1}, r17, vr4
002f5c  ea222934  vor.u.mh vr5{mr2}, r18, vr2
002f60  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
002f64  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
002f68  46002b02  vstore.mz vr2{mr1}, 0(r22)
002f6c  3fdcf4fe  blt.s r9, r15, -236
002f70  5b64ffff  j -1248
002f74  80300002  core_id r1
002f78  bb800000  bneq r1, zero, 32
002f7c  63012f00  loadli.w r2,  16(r30)
002f80  ab0100f0  lui r3, 983040
002f84  1b311100  slli r2, r2, 1
002f88  17113100  or r2, r2, r3
002f8c  ab010200  lui r3, 32
002f90  9f810100  addli r3, r3, 0
002f94  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002f98  2bf10000  lui r2, 15
002f9c  e3411f00  loadli.w r3,  12(r30)
002fa0  00200300  mfence { sm, gm }
002fa4  1b11f1ff  ori r2, r2, 4095
002fa8  80210104  csr_set csr3, r2
002fac  00d00100  sync_group
002fb0  4bdd111a  ble.s r3, r1, 14164
002fb4  e3012f00  loadli.w r3,  16(r30)
002fb8  e3422f00  loadli.w r5,  20(r30)
002fbc  2bf4ffff  lui r8, 1048575
002fc0  2b080200  lui r16, 32
002fc4  9f068fd7  addli r13, r30, -5184
002fc8  9f040002  addli r9, zero, 256
002fcc  1f050001  addli r10, zero, 128
002fd0  9f058000  addli r11, zero, 64
002fd4  1f064000  addli r12, zero, 32
002fd8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002fdc  1b14f4ff  ori r8, r8, 4095
002fe0  1f080800  addli r16, r16, 0
002fe4  0b925110  add.s r4, r3, r5
002fe8  1bb11100  slli r2, r3, 1
002fec  b3810108  fix2float.rn r3, r3
002ff0  1f73f2ff  addli r6, r4, -1
002ff4  1bb21200  slli r4, r5, 1
002ff8  8b125330  div.s r5, r6, r5
002ffc  1f130000  addli r6, zero, 1
003000  5b070000  j 56
003004  00a00000  mfence { lm }
003008  6b5a0f00  load.d r[21:22], 0(r30)
00300c  ab0900f0  lui r19, 983040
003010  9f068fd7  addli r13, r30, -5184
003014  97193101  or r19, r2, r19
003018  8b281a11  add.ul r[18:19], r[21:22], r[18:19]
00301c  005a0102  load_param_i r20, 2
003020  ffb9d800  s_lm2gm r19, r13, 0(r[18:19])
003024  8b101a10  add.s r1, r20, r1
003028  00a00200  mfence { lm, gm }
00302c  e3431f00  loadli.w r7,  12(r30)
003030  3fa07000  blt.s r1, r7, 8
003034  5bda0600  j 14032
003038  e3031f00  loadli.w r7,  8(r30)
00303c  ab0900f0  lui r19, 983040
003040  97193101  or r19, r2, r19
003044  8b987010  add.s r17, r1, r7
003048  9f037fd6  addli r7, r30, -5320
00304c  8b98f820  mul.s r17, r17, r15
003050  6bda0300  load.d r[21:22], 0(r7)
003054  b3980828  sext_int2long r[18:19], r17
003058  97b86802  sll.d r[18:19], r[18:19], r6
00305c  0b2a1a11  add.ul r[21:22], r[21:22], r[18:19]
003060  ff29da00  l_gm2lm r19, r13, 0(r[21:22])
003064  00a00200  mfence { lm, gm }
003068  3fc76200  blt.s r5, r6, 464
00306c  1f0a0000  addli r20, zero, 0
003070  9f090000  addli r19, zero, 0
003074  9f0a0000  addli r21, zero, 0
003078  db0c0000  j 100
00307c  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
003080  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003084  9f9a0a00  addli r21, r21, 1
003088  6af134c0  vsrl.p vr2, r9, vr3
00308c  6af214c0  vsrl.p vr4, r9, vr1
003090  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
003094  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
003098  ea7125c0  vsrl.p vr3, r10, vr2
00309c  6a7215c0  vsrl.p vr4, r10, vr1
0030a0  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0030a4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0030a8  eaf125c0  vsrl.p vr3, r11, vr2
0030ac  6af215c0  vsrl.p vr4, r11, vr1
0030b0  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0030b4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0030b8  ea7126c0  vsrl.p vr3, r12, vr2
0030bc  6a7216c0  vsrl.p vr4, r12, vr1
0030c0  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0030c4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0030c8  fa130140  vextracti.f r7, 0(vr2)
0030cc  fa960040  vextracti.f r13, 0(vr1)
0030d0  0b6a7a10  add.f.rn r20, r20, r7
0030d4  8be9d910  add.f.rn r19, r19, r13
0030d8  b7a55a00  beq r21, r5, 360
0030dc  1f8c0a00  addli r24, r21, 0
0030e0  37309700  beq r14, r9, 12
0030e4  17ab8a00  xor r22, r21, r8
0030e8  0b9c6211  add.s r24, r5, r22
0030ec  0b1bec20  mul.s r22, r24, r14
0030f0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0030f4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0030f8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0030fc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
003100  0b9b6719  sub.s r22, r15, r22
003104  0b1beb40  min.s r22, r22, r14
003108  bf5d6bfe  blt.s r22, r6, -140
00310c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
003110  12310002  vadd.s.mz vr2{mr1}, zero, vr0
003114  92310002  vadd.s.mz vr3{mr1}, zero, vr0
003118  12320002  vadd.s.mz vr4{mr1}, zero, vr0
00311c  9f0b0000  addli r23, zero, 0
003120  0b1c8221  mul.s r24, r4, r24
003124  9f0c8fd7  addli r25, r30, -5184
003128  1f0d0800  addli r26, r16, 0
00312c  8b1d8d11  add.s r27, r26, r24
003130  9f838b00  addli r7, r23, 64
003134  ca820d02  vloads.mz vr5{mr1}, 0(r27)
003138  1f8e8d00  addli r28, r27, 64
00313c  4a030e02  vloads.mz vr6{mr1}, 0(r28)
003140  0b9e8c11  add.s r28, r25, r24
003144  c2030e02  vload.mz vr7{mr1}, 0(r28)
003148  9f068e00  addli r13, r28, 64
00314c  42840602  vload.mz vr8{mr1}, 0(r13)
003150  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
003154  92320002  vadd.s.mz vr5{mr1}, zero, vr0
003158  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
00315c  06b40300  vfp162float_l.rn vr8, vr7
003160  86f30300  vfp162float_h.rn vr7, vr7
003164  86340300  vfp162float_l.rn vr9, vr6
003168  06730300  vfp162float_h.rn vr6, vr6
00316c  86120400  vfloat2fp16_l.rn vr5, vr8
003170  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
003174  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
003178  12340002  vadd.s.mz vr8{mr1}, zero, vr0
00317c  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
003180  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
003184  06940400  vfloat2fp16_l.rn vr8, vr9
003188  86d20300  vfloat2fp16_h.rn vr5, vr7
00318c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
003190  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
003194  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
003198  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00319c  06540300  vfloat2fp16_h.rn vr8, vr6
0031a0  46005e02  vstore.mz vr5{mr1}, 0(r28)
0031a4  46808602  vstore.mz vr8{mr1}, 0(r13)
0031a8  4b5b7bfe  ble.s r22, r7, -300
0031ac  9f830d01  addli r7, r27, 128
0031b0  9f060e01  addli r13, r28, 128
0031b4  9f8b0b01  addli r23, r23, 128
0031b8  1f0d0d02  addli r26, r26, 256
0031bc  9f8c0c02  addli r25, r25, 256
0031c0  ca820302  vloads.mz vr5{mr1}, 0(r7)
0031c4  9f838d01  addli r7, r27, 192
0031c8  c2830602  vload.mz vr7{mr1}, 0(r13)
0031cc  4a830302  vloads.mz vr6{mr1}, 0(r7)
0031d0  9f038e01  addli r7, r28, 192
0031d4  42840302  vload.mz vr8{mr1}, 0(r7)
0031d8  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
0031dc  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0031e0  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
0031e4  12330002  vadd.s.mz vr6{mr1}, zero, vr0
0031e8  86b40300  vfp162float_l.rn vr9, vr7
0031ec  86f30300  vfp162float_h.rn vr7, vr7
0031f0  86920400  vfloat2fp16_l.rn vr5, vr9
0031f4  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0031f8  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0031fc  86340400  vfp162float_l.rn vr9, vr8
003200  06740400  vfp162float_h.rn vr8, vr8
003204  06930400  vfloat2fp16_l.rn vr6, vr9
003208  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
00320c  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
003210  86d20300  vfloat2fp16_h.rn vr5, vr7
003214  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
003218  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
00321c  06530400  vfloat2fp16_h.rn vr6, vr8
003220  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
003224  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003228  46805602  vstore.mz vr5{mr1}, 0(r13)
00322c  46806302  vstore.mz vr6{mr1}, 0(r7)
003230  bffb6bff  blt.s r23, r22, -260
003234  5bc9ffff  j -440
003238  9f090000  addli r19, zero, 0
00323c  1f0a0000  addli r20, zero, 0
003240  00a00000  mfence { lm }
003244  3f8767fe  blt.s r15, r6, -576
003248  0f0a3a18  div.f.rn r20, r20, r3
00324c  8f893918  div.f.rn r19, r19, r3
003250  e3033f00  loadli.w r7,  24(r30)
003254  1f0b0000  addli r22, zero, 0
003258  8b6a4a21  mul.f.rn r21, r20, r20
00325c  0b6a0a58  neg.f r20, r20
003260  8be95919  sub.f.rn r19, r19, r21
003264  9f0a8fd7  addli r21, r30, -5184
003268  8be97910  add.f.rn r19, r19, r7
00326c  ab03803f  lui r7, 260096
003270  8f890908  sqrt.f.rn r19, r19
003274  8f893319  div.f.rn r19, r7, r19
003278  c2800a02  vload.mz vr1{mr1}, 0(r21)
00327c  9f0b4b00  addli r23, r22, 32
003280  06b10000  vfp162float_l.rn vr2, vr1
003284  86f00000  vfp162float_h.rn vr1, vr1
003288  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
00328c  92111a02  vadd.f.mz.rn vr3{mr1}, r20, vr1
003290  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003294  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003298  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
00329c  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
0032a0  06120100  vfloat2fp16_l.rn vr4, vr2
0032a4  06d20100  vfloat2fp16_h.rn vr4, vr3
0032a8  46804a02  vstore.mz vr4{mr1}, 0(r21)
0032ac  4be577ff  ble.s r15, r23, -680
0032b0  9f8b8a00  addli r23, r21, 64
0032b4  1f0b8b00  addli r22, r22, 64
0032b8  9f8a0a01  addli r21, r21, 128
0032bc  42810b02  vload.mz vr2{mr1}, 0(r23)
0032c0  86310100  vfp162float_l.rn vr3, vr2
0032c4  06710100  vfp162float_h.rn vr2, vr2
0032c8  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
0032cc  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
0032d0  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
0032d4  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
0032d8  86900100  vfloat2fp16_l.rn vr1, vr3
0032dc  86500100  vfloat2fp16_h.rn vr1, vr2
0032e0  46801b02  vstore.mz vr1{mr1}, 0(r23)
0032e4  3f5efbfe  blt.s r22, r15, -108
0032e8  dba3ffff  j -740
0032ec  80300002  core_id r1
0032f0  1f210000  addli r2, zero, 2
0032f4  37a02018  beq r1, r2, 12296
0032f8  1f110000  addli r2, zero, 1
0032fc  37922014  beq r1, r2, 10372
003300  3be00018  bneq r1, zero, 12312
003304  63012f00  loadli.w r2,  16(r30)
003308  ab0100f0  lui r3, 983040
00330c  1b312100  slli r2, r2, 2
003310  17113100  or r2, r2, r3
003314  ab710200  lui r3, 39
003318  9f810108  addli r3, r3, 1024
00331c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
003320  5bff0500  j 12280
003324  80300002  core_id r1
003328  bb800000  bneq r1, zero, 32
00332c  63012f00  loadli.w r2,  16(r30)
003330  ab0100f0  lui r3, 983040
003334  1b312100  slli r2, r2, 2
003338  17113100  or r2, r2, r3
00333c  abd10200  lui r3, 45
003340  9f8101f0  addli r3, r3, -2048
003344  7f013200  l_gm2sm r2, r3, 0(r[5:6])
003348  2bf10000  lui r2, 15
00334c  e3411f00  loadli.w r3,  12(r30)
003350  00200300  mfence { sm, gm }
003354  1b11f1ff  ori r2, r2, 4095
003358  80210104  csr_set csr3, r2
00335c  00d00100  sync_group
003360  cb9e1118  ble.s r3, r1, 13220
003364  e3012f00  loadli.w r3,  16(r30)
003368  e3422f00  loadli.w r5,  20(r30)
00336c  abf4ffff  lui r9, 1048575
003370  abd80200  lui r17, 45
003374  1f0b8fd7  addli r22, r30, -5184
003378  1f140000  addli r8, zero, 1
00337c  1f050002  addli r10, zero, 256
003380  9f050001  addli r11, zero, 128
003384  1f068000  addli r12, zero, 64
003388  9f064000  addli r13, zero, 32
00338c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003390  9b94f4ff  ori r9, r9, 4095
003394  9f8808f0  addli r17, r17, -2048
003398  0b925110  add.s r4, r3, r5
00339c  1bb12100  slli r2, r3, 2
0033a0  b3810108  fix2float.rn r3, r3
0033a4  1f73f2ff  addli r6, r4, -1
0033a8  1bb22200  slli r4, r5, 2
0033ac  67043fd6  storeli.w r3, -5312(r30)
0033b0  9f010fd7  addli r3, r30, -5248
0033b4  8b125330  div.s r5, r6, r5
0033b8  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0033bc  5b070000  j 56
0033c0  00a00000  mfence { lm }
0033c4  6b530f00  load.d r[7:8], 0(r30)
0033c8  2b0800f0  lui r16, 983040
0033cc  1f0b8fd7  addli r22, r30, -5184
0033d0  005a0102  load_param_i r20, 2
0033d4  17180101  or r16, r2, r16
0033d8  8b101a10  add.s r1, r20, r1
0033dc  0b292311  add.ul r[19:20], r[7:8], r[19:20]
0033e0  7f386901  s_lm2gm r16, r22, 0(r[19:20])
0033e4  00a00200  mfence { lm, gm }
0033e8  e3411f00  loadli.w r3,  12(r30)
0033ec  3fa03000  blt.s r1, r3, 8
0033f0  db620600  j 13076
0033f4  e3011f00  loadli.w r3,  8(r30)
0033f8  0b983010  add.s r16, r1, r3
0033fc  9f210000  addli r3, zero, 2
003400  0b18f820  mul.s r16, r16, r15
003404  33190828  sext_int2long r[19:20], r16
003408  2b0800f0  lui r16, 983040
00340c  17393902  sll.d r[19:20], r[19:20], r3
003410  9f017fd6  addli r3, r30, -5320
003414  17180101  or r16, r2, r16
003418  6bd30100  load.d r[7:8], 0(r3)
00341c  0b2a2311  add.ul r[21:22], r[7:8], r[19:20]
003420  7f286a01  l_gm2lm r16, r22, 0(r[21:22])
003424  00a00200  mfence { lm, gm }
003428  bf978200  blt.s r5, r8, 484
00342c  9f0a0000  addli r21, zero, 0
003430  1f0a0000  addli r20, zero, 0
003434  1f0b0000  addli r22, zero, 0
003438  db0c0000  j 100
00343c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
003440  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003444  1f1b0b00  addli r22, r22, 1
003448  6a7105c0  vsrl.p vr2, r10, vr0
00344c  ea7115c0  vsrl.p vr3, r10, vr1
003450  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003454  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003458  6af105c0  vsrl.p vr2, r11, vr0
00345c  eaf115c0  vsrl.p vr3, r11, vr1
003460  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003464  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003468  6a7106c0  vsrl.p vr2, r12, vr0
00346c  ea7116c0  vsrl.p vr3, r12, vr1
003470  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003474  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003478  6af106c0  vsrl.p vr2, r13, vr0
00347c  eaf116c0  vsrl.p vr3, r13, vr1
003480  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003484  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003488  fa110040  vextracti.f r3, 0(vr0)
00348c  7a930040  vextracti.f r6, 0(vr1)
003490  8bea3a10  add.f.rn r21, r21, r3
003494  0b6a6a10  add.f.rn r20, r20, r6
003498  b7755b00  beq r22, r5, 380
00349c  1f080b00  addli r16, r22, 0
0034a0  3730a700  beq r14, r10, 12
0034a4  17289b00  xor r16, r22, r9
0034a8  0b980211  add.s r16, r5, r16
0034ac  9f010fd7  addli r3, r30, -5248
0034b0  8b1be820  mul.s r23, r16, r14
0034b4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0034b8  8b9b7719  sub.s r23, r15, r23
0034bc  8b9beb40  min.s r23, r23, r14
0034c0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0034c4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0034c8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0034cc  bfcd8bfe  blt.s r23, r8, -144
0034d0  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0034d4  1f0c0000  addli r24, zero, 0
0034d8  8b1c0221  mul.s r25, r4, r16
0034dc  1f0d8fd7  addli r26, r30, -5184
0034e0  9f8d0800  addli r27, r17, 0
0034e4  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0034e8  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0034ec  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0034f0  0b989d11  add.s r16, r27, r25
0034f4  0b1e9d11  add.s r28, r26, r25
0034f8  1f038800  addli r6, r16, 64
0034fc  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
003500  9f038801  addli r7, r16, 192
003504  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
003508  9f018e01  addli r3, r28, 192
00350c  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
003510  1f030801  addli r6, r16, 128
003514  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
003518  9f030e01  addli r7, r28, 128
00351c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
003520  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
003524  c2950302  vload_mask16.mz vr11{mr1}, 0(r7)
003528  1f038e00  addli r6, r28, 64
00352c  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
003530  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
003534  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
003538  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00353c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
003540  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003544  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003548  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
00354c  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
003550  1f038c00  addli r6, r24, 64
003554  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003558  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00355c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003560  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
003564  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003568  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
00356c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
003570  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
003574  4bab6bfe  ble.s r23, r6, -312
003578  1f030802  addli r6, r16, 256
00357c  9f038802  addli r7, r16, 320
003580  9f010e02  addli r3, r28, 256
003584  1f0c0c01  addli r24, r24, 128
003588  9f8d0d04  addli r27, r27, 512
00358c  1f0d0d04  addli r26, r26, 512
003590  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
003594  1f030803  addli r6, r16, 384
003598  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
00359c  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
0035a0  9f038e02  addli r7, r28, 320
0035a4  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
0035a8  1f038803  addli r6, r16, 448
0035ac  1f088e03  addli r16, r28, 448
0035b0  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0035b4  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
0035b8  1f030e03  addli r6, r28, 384
0035bc  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0035c0  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0035c4  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
0035c8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0035cc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0035d0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0035d4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0035d8  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0035dc  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
0035e0  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0035e4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0035e8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0035ec  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
0035f0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0035f4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0035f8  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0035fc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003600  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
003604  bf3b7cff  blt.s r24, r23, -276
003608  dbc6ffff  j -460
00360c  1f0a0000  addli r20, zero, 0
003610  9f0a0000  addli r21, zero, 0
003614  00a00000  mfence { lm }
003618  bfa687fe  blt.s r15, r8, -600
00361c  e3018fd6  loadli.w r3,  -5312(r30)
003620  1f0b0000  addli r22, zero, 0
003624  8f8a3a18  div.f.rn r21, r21, r3
003628  0f083a18  div.f.rn r16, r20, r3
00362c  e3013f00  loadli.w r3,  24(r30)
003630  0bea5a21  mul.f.rn r20, r21, r21
003634  0b684819  sub.f.rn r16, r16, r20
003638  0bea0a58  neg.f r20, r21
00363c  9f0a8fd7  addli r21, r30, -5184
003640  0b683810  add.f.rn r16, r16, r3
003644  ab01803f  lui r3, 260096
003648  0f080808  sqrt.f.rn r16, r16
00364c  0f880119  div.f.rn r16, r3, r16
003650  9f8b8a00  addli r23, r21, 64
003654  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
003658  1f0c4b00  addli r24, r22, 32
00365c  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
003660  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003664  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003668  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
00366c  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003670  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
003674  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
003678  4ba587ff  ble.s r15, r24, -696
00367c  9f8b0a01  addli r23, r21, 128
003680  1f8c8a01  addli r24, r21, 192
003684  1f0b8b00  addli r22, r22, 64
003688  9f8a0a02  addli r21, r21, 256
00368c  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
003690  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
003694  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003698  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
00369c  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
0036a0  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
0036a4  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
0036a8  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
0036ac  bf1efbfe  blt.s r22, r15, -92
0036b0  5ba2ffff  j -752
0036b4  00310002  core_id r2
0036b8  ab630000  lui r7, 6
0036bc  9f100000  addli r1, zero, 1
0036c0  1f038fd7  addli r6, r30, -5184
0036c4  1f048000  addli r8, zero, 64
0036c8  1f050010  addli r10, zero, 2048
0036cc  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
0036d0  9b315100  slli r3, r2, 5
0036d4  00510102  load_param_i r2, 2
0036d8  9f830308  addli r7, r7, 1024
0036dc  9b345100  slli r9, r2, 5
0036e0  b3850128  zext_int2long r[12:13], r3
0036e4  ab0600f0  lui r13, 983040
0036e8  97b51502  sll.d r[12:13], r[12:13], r1
0036ec  9716d400  or r13, r8, r13
0036f0  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
0036f4  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
0036f8  9bb52100  slli r11, r3, 2
0036fc  8b913410  add.s r3, r9, r3
003700  00a00200  mfence { lm, gm }
003704  c2000302  vload.mz vr1{mr1}, 0(r6)
003708  1386a104  setlt.u r12, r3, r10
00370c  8b957510  add.s r11, r11, r7
003710  9f868500  addli r13, r11, 64
003714  66c11180  vmerge_l.hf vr2, vr3, vr1
003718  e6c011a0  vmerge_h.hf vr1, vr3, vr1
00371c  4e902502  vstores_mask16.mz vr2{mr1}, 0(r11)
003720  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
003724  bb7e06fe  bneq r12, zero, -68
003728  abf00000  lui r1, 15
00372c  80310002  core_id r3
003730  9f020006  addli r5, zero, 768
003734  00a00300  mfence { lm, sm, gm }
003738  9b90f0ff  ori r1, r1, 4095
00373c  9b8d1100  andi r27, r3, 1
003740  9f010006  addli r3, zero, 768
003744  80a10004  csr_set csr3, r1
003748  00d00100  sync_group
00374c  37a00d00  beq r27, zero, 8
003750  9f02000a  addli r5, zero, 1280
003754  63421f00  loadli.w r4,  12(r30)
003758  9f100000  addli r1, zero, 1
00375c  bf2e1216  blt.s r4, r1, 12200
003760  9b451100  srli r11, r2, 1
003764  00310002  core_id r2
003768  8b913d20  mul.s r3, r27, r3
00376c  1f078fd7  addli r14, r30, -5184
003770  9bbb1200  slli r23, r5, 1
003774  1f040000  addli r8, zero, 0
003778  9f797000  addli r19, zero, 63
00377c  9f0a0005  addli r21, zero, 640
003780  2b09803f  lui r18, 260096
003784  1f0a2000  addli r20, zero, 16
003788  9f340000  addli r9, zero, 3
00378c  2bee7f00  lui r28, 2046
003790  9f571000  addli r15, zero, 13
003794  2be50700  lui r10, 126
003798  1f221000  addli r4, zero, 10
00379c  1f0b0003  addli r22, zero, 384
0037a0  1b461100  srli r12, r2, 1
0037a4  1bb12200  slli r2, r5, 2
0037a8  67083fd4  storeli.w r3, -5504(r30)
0037ac  9f814200  addli r3, r5, 32
0037b0  0b11e110  add.s r2, r2, r14
0037b4  e70f3fd2  storeli.w r3, -5640(r30)
0037b8  8b91eb10  add.s r3, r23, r14
0037bc  1f0181ff  addli r2, r2, -64
0037c0  674f2fd2  storeli.w r2, -5644(r30)
0037c4  1f8181ff  addli r2, r3, -64
0037c8  abf100fc  lui r3, 1032207
0037cc  670f2fd2  storeli.w r2, -5648(r30)
0037d0  2bf1ffff  lui r2, 1048575
0037d4  9b9801c0  ori r17, r3, 3072
0037d8  00a00000  mfence { lm }
0037dc  e3411f00  loadli.w r3,  12(r30)
0037e0  e74ebfd3  storeli.w r27, -5652(r30)
0037e4  6704bfd4  storeli.w r11, -5568(r30)
0037e8  6700cfd4  storeli.w r12, -5632(r30)
0037ec  e74f7fd3  storeli.w r23, -5636(r30)
0037f0  1b1101f8  ori r2, r2, 3968
0037f4  e70e2fd2  storeli.w r2, -5656(r30)
0037f8  2bf10000  lui r2, 15
0037fc  1b11f1ff  ori r2, r2, 4095
003800  67082fd6  storeli.w r2, -5248(r30)
003804  2b710000  lui r2, 7
003808  1b13f1ff  ori r6, r2, 4095
00380c  2b01ff03  lui r2, 16368
003810  1b18f13f  ori r16, r2, 1023
003814  1f018fd5  addli r2, r30, -5440
003818  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
00381c  db040000  j 36
003820  00a00300  mfence { lm, sm, gm }
003824  63010fd7  loadli.w r2,  -5248(r30)
003828  80210104  csr_set csr3, r2
00382c  00d00100  sync_group
003830  e3411f00  loadli.w r3,  12(r30)
003834  0b14b410  add.s r8, r8, r11
003838  3f203400  blt.s r8, r3, 8
00383c  db86faff  j -11212
003840  0b11c410  add.s r2, r8, r12
003844  4bff21fe  ble.s r3, r2, -36
003848  e3011f00  loadli.w r3,  8(r30)
00384c  0b113110  add.s r2, r2, r3
003850  8b01b430  div.u r3, r8, r11
003854  e3050fd5  loadli.w r11,  -5504(r30)
003858  1b31b100  slli r2, r2, 11
00385c  1711b100  or r2, r2, r11
003860  33160128  sext_int2long r[13:14], r2
003864  2b0100f0  lui r2, 983040
003868  9bb16100  slli r3, r3, 6
00386c  173c1602  sll.d r[25:26], r[13:14], r1
003870  9f067fd6  addli r13, r30, -5320
003874  17912b00  or r2, r23, r2
003878  9b810104  andi r3, r3, 64
00387c  ebd50600  load.d r[12:13], 0(r13)
003880  9f068fd6  addli r13, r30, -5312
003884  73b08601  store.d r[25:26], 0(r13)
003888  0ba68511  add.ul r[13:14], r[12:13], r[25:26]
00388c  7f21e600  l_gm2lm r2, r14, 0(r[13:14])
003890  00310002  core_id r2
003894  00a00200  mfence { lm, gm }
003898  179d2100  or r26, r3, r2
00389c  6301efd3  loadli.w r2,  -5648(r30)
0038a0  e341efd3  loadli.w r3,  -5644(r30)
0038a4  6306ffd3  loadli.w r12,  -5640(r30)
0038a8  c2000102  vload.mz vr1{mr1}, 0(r2)
0038ac  1f06c6ff  addli r12, r12, -32
0038b0  9f8b81ff  addli r23, r3, -64
0038b4  1f0181ff  addli r2, r2, -64
0038b8  9386c904  setlt.u r13, r19, r12
0038bc  66c111a0  vmerge_h.hf vr2, vr3, vr1
0038c0  e6c01180  vmerge_l.hf vr1, vr3, vr1
0038c4  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
0038c8  9f8101ff  addli r3, r3, -128
0038cc  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
0038d0  3bef06fe  bneq r13, zero, -40
0038d4  1f010000  addli r2, zero, 0
0038d8  00a00000  mfence { lm }
0038dc  3ba60d00  bneq r27, zero, 392
0038e0  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0038e4  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0038e8  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0038ec  e301dfd3  loadli.w r3,  -5656(r30)
0038f0  8b167110  add.s r13, r2, r7
0038f4  0b162710  add.s r12, r14, r2
0038f8  9f810101  addli r3, r3, 128
0038fc  1f010104  addli r2, r2, 512
003900  9f850601  addli r11, r13, 128
003904  4a900602  vloads_mask16.mz vr0{mr1}, 0(r13)
003908  9f8b8600  addli r23, r13, 64
00390c  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
003910  1f0c8601  addli r24, r12, 192
003914  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
003918  9f858601  addli r11, r13, 192
00391c  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
003920  9f0b8600  addli r23, r12, 64
003924  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
003928  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
00392c  9f050601  addli r11, r12, 128
003930  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
003934  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
003938  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00393c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
003940  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
003944  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
003948  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00394c  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
003950  46908502  vstore_mask16.mz vr8{mr1}, 0(r11)
003954  9f850602  addli r11, r13, 256
003958  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00395c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003960  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003964  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
003968  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
00396c  9f858602  addli r11, r13, 320
003970  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
003974  1f0c0602  addli r24, r12, 256
003978  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00397c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003980  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003984  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
003988  9f850603  addli r11, r13, 384
00398c  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
003990  9f868603  addli r13, r13, 448
003994  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003998  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
00399c  9f058602  addli r11, r12, 320
0039a0  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
0039a4  9f060603  addli r13, r12, 384
0039a8  1f068603  addli r12, r12, 448
0039ac  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
0039b0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0039b4  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
0039b8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0039bc  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0039c0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0039c4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0039c8  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
0039cc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0039d0  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0039d4  93855105  setlt.u r11, r3, r21
0039d8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0039dc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0039e0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0039e4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0039e8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0039ec  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
0039f0  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0039f4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0039f8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0039fc  bbdb05fe  bneq r11, zero, -268
003a00  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003a04  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003a08  1f010002  addli r2, zero, 256
003a0c  6a7101c0  vsrl.p vr2, r2, vr0
003a10  ea7111c0  vsrl.p vr3, r2, vr1
003a14  1f010001  addli r2, zero, 128
003a18  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a1c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a20  6a7101c0  vsrl.p vr2, r2, vr0
003a24  ea7111c0  vsrl.p vr3, r2, vr1
003a28  1f018000  addli r2, zero, 64
003a2c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a30  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a34  6a7101c0  vsrl.p vr2, r2, vr0
003a38  ea7111c0  vsrl.p vr3, r2, vr1
003a3c  1f014000  addli r2, zero, 32
003a40  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a44  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a48  6a7101c0  vsrl.p vr2, r2, vr0
003a4c  ea7111c0  vsrl.p vr3, r2, vr1
003a50  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a54  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a58  7a110040  vextracti.f r2, 0(vr0)
003a5c  fa910040  vextracti.f r3, 0(vr1)
003a60  5b660000  j 816
003a64  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003a68  abf1ffff  lui r3, 1048575
003a6c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003a70  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003a74  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003a78  9b9101f8  ori r3, r3, 3968
003a7c  8b962310  add.s r13, r7, r2
003a80  0b162710  add.s r12, r14, r2
003a84  9f810101  addli r3, r3, 128
003a88  1f010104  addli r2, r2, 512
003a8c  9f850631  addli r11, r13, 6272
003a90  9f8b0630  addli r23, r13, 6144
003a94  1f8c8631  addli r24, r13, 6336
003a98  9f0d0618  addli r27, r12, 3072
003a9c  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
003aa0  ca920b02  vloads_mask16.mz vr5{mr1}, 0(r23)
003aa4  9f8b8630  addli r23, r13, 6208
003aa8  ca140c02  vloads_mask16.mz vr9{mr1}, 0(r24)
003aac  9f058618  addli r11, r12, 3136
003ab0  1f0c8619  addli r24, r12, 3264
003ab4  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
003ab8  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
003abc  9f0b0619  addli r23, r12, 3200
003ac0  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
003ac4  c2950502  vload_mask16.mz vr11{mr1}, 0(r11)
003ac8  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
003acc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003ad0  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
003ad4  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
003ad8  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
003adc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003ae0  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
003ae4  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
003ae8  9f8b0632  addli r23, r13, 6400
003aec  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
003af0  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
003af4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003af8  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
003afc  1f0c061a  addli r24, r12, 3328
003b00  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
003b04  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
003b08  9f05061b  addli r11, r12, 3456
003b0c  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
003b10  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
003b14  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
003b18  9f8b8632  addli r23, r13, 6464
003b1c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003b20  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003b24  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
003b28  9f8b0633  addli r23, r13, 6528
003b2c  9f868633  addli r13, r13, 6592
003b30  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
003b34  9f0b861a  addli r23, r12, 3392
003b38  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
003b3c  1f06861b  addli r12, r12, 3520
003b40  93866105  setlt.u r13, r3, r22
003b44  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
003b48  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003b4c  c2930502  vload_mask16.mz vr7{mr1}, 0(r11)
003b50  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003b54  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
003b58  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003b5c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003b60  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
003b64  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003b68  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
003b6c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003b70  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003b74  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003b78  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003b7c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003b80  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
003b84  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
003b88  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003b8c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003b90  bbbb06fe  bneq r13, zero, -276
003b94  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003b98  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003b9c  1f010002  addli r2, zero, 256
003ba0  abf5ffff  lui r11, 1048575
003ba4  9f0b0000  addli r23, zero, 0
003ba8  1b9605f8  ori r12, r11, 3968
003bac  ea7111c0  vsrl.p vr3, r2, vr1
003bb0  6a7101c0  vsrl.p vr2, r2, vr0
003bb4  1f010001  addli r2, zero, 128
003bb8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003bbc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003bc0  ea7111c0  vsrl.p vr3, r2, vr1
003bc4  6a7101c0  vsrl.p vr2, r2, vr0
003bc8  1f018000  addli r2, zero, 64
003bcc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003bd0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003bd4  ea7111c0  vsrl.p vr3, r2, vr1
003bd8  6a7101c0  vsrl.p vr2, r2, vr0
003bdc  1f014000  addli r2, zero, 32
003be0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003be4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003be8  ea7111c0  vsrl.p vr3, r2, vr1
003bec  6a7101c0  vsrl.p vr2, r2, vr0
003bf0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003bf4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003bf8  fa910040  vextracti.f r3, 0(vr1)
003bfc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003c00  7a110040  vextracti.f r2, 0(vr0)
003c04  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003c08  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003c0c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003c10  8b9d7311  add.s r27, r7, r23
003c14  8b167711  add.s r13, r14, r23
003c18  1f060601  addli r12, r12, 128
003c1c  9f8b0b04  addli r23, r23, 512
003c20  9f850d18  addli r11, r27, 3072
003c24  1f8c0d19  addli r24, r27, 3200
003c28  42940602  vload_mask16.mz vr8{mr1}, 0(r13)
003c2c  9f8c8601  addli r25, r13, 192
003c30  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
003c34  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
003c38  9f858d18  addli r11, r27, 3136
003c3c  1f8c8d19  addli r24, r27, 3264
003c40  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
003c44  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
003c48  9f850601  addli r11, r13, 128
003c4c  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
003c50  1f8c8600  addli r24, r13, 64
003c54  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
003c58  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
003c5c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
003c60  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
003c64  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
003c68  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
003c6c  46908502  vstore_mask16.mz vr8{mr1}, 0(r11)
003c70  9f850d1a  addli r11, r27, 3328
003c74  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003c78  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003c7c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003c80  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003c84  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
003c88  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
003c8c  9f858d1a  addli r11, r27, 3392
003c90  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
003c94  9f8c0602  addli r25, r13, 256
003c98  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003c9c  1f8c0603  addli r24, r13, 384
003ca0  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003ca4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003ca8  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
003cac  9f850d1b  addli r11, r27, 3456
003cb0  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003cb4  9f8d8d1b  addli r27, r27, 3520
003cb8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003cbc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003cc0  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
003cc4  9f858602  addli r11, r13, 320
003cc8  4a950d02  vloads_mask16.mz vr10{mr1}, 0(r27)
003ccc  9f868603  addli r13, r13, 448
003cd0  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
003cd4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003cd8  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
003cdc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003ce0  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
003ce4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003ce8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003cec  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003cf0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003cf4  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
003cf8  93055605  setlt.u r11, r12, r21
003cfc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003d00  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003d04  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003d08  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003d0c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003d10  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003d14  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
003d18  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003d1c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003d20  bbcb05fe  bneq r11, zero, -272
003d24  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003d28  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003d2c  9f050002  addli r11, zero, 256
003d30  e34ddfd3  loadli.w r27,  -5652(r30)
003d34  6af105c0  vsrl.p vr2, r11, vr0
003d38  eaf115c0  vsrl.p vr3, r11, vr1
003d3c  9f050001  addli r11, zero, 128
003d40  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003d44  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003d48  6af105c0  vsrl.p vr2, r11, vr0
003d4c  eaf115c0  vsrl.p vr3, r11, vr1
003d50  9f058000  addli r11, zero, 64
003d54  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003d58  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003d5c  6af105c0  vsrl.p vr2, r11, vr0
003d60  eaf115c0  vsrl.p vr3, r11, vr1
003d64  9f054000  addli r11, zero, 32
003d68  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003d6c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003d70  6af105c0  vsrl.p vr2, r11, vr0
003d74  eaf115c0  vsrl.p vr3, r11, vr1
003d78  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003d7c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003d80  fa150040  vextracti.f r11, 0(vr0)
003d84  7a960040  vextracti.f r12, 0(vr1)
003d88  0b61b110  add.f.rn r2, r2, r11
003d8c  8be1c110  add.f.rn r3, r3, r12
003d90  2b860000  lui r12, 8
003d94  ab860000  lui r13, 8
003d98  9b352d00  slli r11, r26, 2
003d9c  1f060608  addli r12, r12, 1024
003da0  9f86060c  addli r13, r13, 1536
003da4  9f0b0600  addli r23, r12, 0
003da8  1f8c0600  addli r24, r13, 0
003dac  0b967511  add.s r12, r11, r23
003db0  8b968511  add.s r13, r11, r24
003db4  73e03600  stores.w r3, 0(r13)
003db8  73602600  stores.w r2, 0(r12)
003dbc  9b914500  ori r3, r11, 4
003dc0  9f060000  addli r13, zero, 0
003dc4  00a00300  mfence { lm, sm, gm }
003dc8  63010fd7  loadli.w r2,  -5248(r30)
003dcc  8b957111  add.s r11, r3, r23
003dd0  8b918111  add.s r3, r3, r24
003dd4  80210104  csr_set csr3, r2
003dd8  1b01ed07  andi r2, r26, 126
003ddc  00d00100  sync_group
003de0  efc50500  loads.w r11, 0(r11)
003de4  efc10100  loads.w r3, 0(r3)
003de8  1b312100  slli r2, r2, 2
003dec  0b167111  add.s r12, r2, r23
003df0  0b118111  add.s r2, r2, r24
003df4  6f460600  loads.w r12, 0(r12)
003df8  6f410100  loads.w r2, 0(r2)
003dfc  8be5c510  add.f.rn r11, r11, r12
003e00  2b06003a  lui r12, 237568
003e04  0be12110  add.f.rn r2, r3, r2
003e08  8be1c520  mul.f.rn r3, r11, r12
003e0c  0b61c120  mul.f.rn r2, r2, r12
003e10  1f068fd7  addli r12, r30, -5184
003e14  8be53120  mul.f.rn r11, r3, r3
003e18  8be10158  neg.f r3, r3
003e1c  0b61b118  sub.f.rn r2, r2, r11
003e20  e3053f00  loadli.w r11,  24(r30)
003e24  0b61b110  add.f.rn r2, r2, r11
003e28  0f010108  sqrt.f.rn r2, r2
003e2c  0f012918  div.f.rn r2, r18, r2
003e30  9f058600  addli r11, r12, 64
003e34  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
003e38  9f8b4600  addli r23, r13, 32
003e3c  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
003e40  938b7207  setle.u r23, r5, r23
003e44  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
003e48  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
003e4c  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
003e50  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
003e54  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
003e58  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
003e5c  bbf00b00  bneq r23, zero, 60
003e60  9f050601  addli r11, r12, 128
003e64  9f0b8601  addli r23, r12, 192
003e68  9f868600  addli r13, r13, 64
003e6c  1f060602  addli r12, r12, 256
003e70  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
003e74  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
003e78  138c5604  setlt.u r24, r13, r5
003e7c  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
003e80  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
003e84  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
003e88  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
003e8c  46900502  vstore_mask16.mz vr0{mr1}, 0(r11)
003e90  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
003e94  3b7e0cfe  bneq r24, zero, -100
003e98  1f018fd7  addli r2, r30, -5184
003e9c  9f018fd7  addli r3, r30, -5184
003ea0  1f060000  addli r12, zero, 0
003ea4  00a00000  mfence { lm }
003ea8  9f858100  addli r11, r3, 64
003eac  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
003eb0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003eb4  1f064600  addli r12, r12, 32
003eb8  9f810101  addli r3, r3, 128
003ebc  ea211a22  vor.u.mz vr3{mr1}, r20, vr1
003ec0  42910502  vload_mask16.mz vr2{mr1}, 0(r11)
003ec4  93055604  setlt.u r11, r12, r5
003ec8  6eb201c2  vsrl.s.mz vr4{mr1}, vr3, vr0
003ecc  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003ed0  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
003ed4  eab13002  vand.s.mz vr3{mr1}, r1, vr3
003ed8  16304002  vadd.s.mz vr0{mr1}, vr0, vr4
003edc  6aa21422  vor.u.mz vr4{mr1}, r9, vr1
003ee0  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
003ee4  eaa11722  vor.u.mz vr3{mr1}, r15, vr1
003ee8  ea201222  vor.u.mz vr1{mr1}, r4, vr1
003eec  12300302  vadd.s.mz vr0{mr1}, r6, vr0
003ef0  12312302  vadd.s.mz vr2{mr1}, r6, vr2
003ef4  eeb201c2  vsrl.s.mz vr5{mr1}, vr3, vr0
003ef8  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
003efc  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003f00  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
003f04  6a325502  vand.s.mz vr4{mr1}, r10, vr5
003f08  6a300e02  vand.s.mz vr0{mr1}, r28, vr0
003f0c  ea313502  vand.s.mz vr3{mr1}, r10, vr3
003f10  6a312e02  vand.s.mz vr2{mr1}, r28, vr2
003f14  6a300922  vor.s.mz vr0{mr1}, r18, vr0
003f18  6a324922  vor.s.mz vr4{mr1}, r18, vr4
003f1c  ea313922  vor.s.mz vr3{mr1}, r18, vr3
003f20  6a312922  vor.s.mz vr2{mr1}, r18, vr2
003f24  06100020  vfloat2fp16_l.rz vr0, vr0
003f28  86d10120  vfloat2fp16_h.rz vr3, vr3
003f2c  06500120  vfloat2fp16_h.rz vr0, vr2
003f30  86110220  vfloat2fp16_l.rz vr3, vr4
003f34  6a300802  vand.s.mz vr0{mr1}, r16, vr0
003f38  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
003f3c  eab01802  vand.s.mz vr1{mr1}, r17, vr1
003f40  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
003f44  46000102  vstore.mz vr0{mr1}, 0(r2)
003f48  1f018100  addli r2, r2, 64
003f4c  3bfd05fe  bneq r11, zero, -164
003f50  9f018fd6  addli r3, r30, -5312
003f54  eb550f00  load.d r[12:13], 0(r30)
003f58  2b0100f0  lui r2, 983040
003f5c  ebdb0100  load.d r[24:25], 0(r3)
003f60  8ba57511  add.ul r[12:13], r[12:13], r[24:25]
003f64  e34bffd3  loadli.w r23,  -5636(r30)
003f68  00a00000  mfence { lm }
003f6c  17912b00  or r2, r23, r2
003f70  7fb1e500  s_lm2gm r2, r14, 0(r[12:13])
003f74  1f018fd5  addli r2, r30, -5440
003f78  00a00200  mfence { lm, gm }
003f7c  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
003f80  e3058fd4  loadli.w r11,  -5568(r30)
003f84  63060fd4  loadli.w r12,  -5632(r30)
003f88  5b15ffff  j -1880
003f8c  003b0002  core_id r22
003f90  63012f00  loadli.w r2,  16(r30)
003f94  9b305b00  slli r1, r22, 5
003f98  cb211100  ble.s r2, r1, 104
003f9c  80530102  load_param_i r7, 2
003fa0  2bc40000  lui r8, 12
003fa4  1f110000  addli r2, zero, 1
003fa8  9f018fd7  addli r3, r30, -5184
003fac  1f038000  addli r6, zero, 64
003fb0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003fb4  9bb35300  slli r7, r7, 5
003fb8  1f0404f0  addli r8, r8, -2048
003fbc  b3840028  zext_int2long r[10:11], r1
003fc0  ab0500f0  lui r11, 983040
003fc4  97b42402  sll.d r[10:11], r[10:11], r2
003fc8  9715b300  or r11, r6, r11
003fcc  8b249210  add.ul r[10:11], r[5:6], r[10:11]
003fd0  ffa53400  l_gm2lm r11, r3, 0(r[10:11])
003fd4  9bb42000  slli r9, r1, 2
003fd8  8b901310  add.s r1, r7, r1
003fdc  00a00200  mfence { lm, gm }
003fe0  c2800102  vload.mz vr1{mr1}, 0(r3)
003fe4  8b948410  add.s r9, r9, r8
003fe8  1f858400  addli r10, r9, 64
003fec  66411080  vmerge_l.hf vr2, vr0, vr1
003ff0  e64010a0  vmerge_h.hf vr1, vr0, vr1
003ff4  4e902402  vstores_mask16.mz vr2{mr1}, 0(r9)
003ff8  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
003ffc  3f8ff0fe  blt.s r1, r15, -64
004000  abf00000  lui r1, 15
004004  63411f00  loadli.w r2,  12(r30)
004008  00a00300  mfence { lm, sm, gm }
00400c  9b90f0ff  ori r1, r1, 4095
004010  80a10004  csr_set csr3, r1
004014  00d00100  sync_group
004018  cb3b6113  ble.s r2, r22, 9964
00401c  e3002f00  loadli.w r1,  16(r30)
004020  63412f00  loadli.w r2,  20(r30)
004024  9f038fd7  addli r7, r30, -5184
004028  1f150000  addli r10, zero, 1
00402c  9f054000  addli r11, zero, 32
004030  1f747000  addli r8, zero, 63
004034  1f080002  addli r16, zero, 256
004038  9f080001  addli r17, zero, 128
00403c  1f098000  addli r18, zero, 64
004040  ab09803f  lui r19, 260096
004044  abeb7f00  lui r23, 2046
004048  abec0700  lui r25, 126
00404c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004050  8b912010  add.s r3, r1, r2
004054  33820008  fix2float.rn r4, r1
004058  1bb31000  slli r6, r1, 1
00405c  9bb22000  slli r5, r1, 2
004060  9f804000  addli r1, r1, 32
004064  9b342100  slli r9, r2, 2
004068  e74f1fd2  storeli.w r1, -5636(r30)
00406c  8b907210  add.s r1, r5, r7
004070  9ff1f1ff  addli r3, r3, -1
004074  67004fd4  storeli.w r4, -5632(r30)
004078  0b922130  div.s r4, r3, r2
00407c  9f8080ff  addli r1, r1, -64
004080  8b117310  add.s r3, r6, r7
004084  e70f1fd2  storeli.w r1, -5640(r30)
004088  9f8081ff  addli r1, r3, -64
00408c  674f1fd2  storeli.w r1, -5644(r30)
004090  abf0ffff  lui r1, 1048575
004094  00a00000  mfence { lm }
004098  67046fd4  storeli.w r6, -5568(r30)
00409c  9b90f0ff  ori r1, r1, 4095
0040a0  67041fd6  storeli.w r1, -5312(r30)
0040a4  ab700000  lui r1, 7
0040a8  9b9af0ff  ori r21, r1, 4095
0040ac  ab00ff03  lui r1, 16368
0040b0  1b9df03f  ori r26, r1, 1023
0040b4  abf000fc  lui r1, 1032207
0040b8  1b9e00c0  ori r28, r1, 3072
0040bc  9f000fd7  addli r1, r30, -5248
0040c0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0040c4  db080000  j 68
0040c8  9f010fd5  addli r3, r30, -5504
0040cc  eb500f00  load.d r[2:3], 0(r30)
0040d0  9f038fd7  addli r7, r30, -5184
0040d4  ebd20100  load.d r[6:7], 0(r3)
0040d8  00a00000  mfence { lm }
0040dc  ab0100f0  lui r3, 983040
0040e0  8ba05010  add.ul r[2:3], r[2:3], r[6:7]
0040e4  63038fd4  loadli.w r6,  -5568(r30)
0040e8  80520102  load_param_i r5, 2
0040ec  0b9b6211  add.s r22, r5, r22
0040f0  97113300  or r3, r6, r3
0040f4  ffb17000  s_lm2gm r3, r7, 0(r[2:3])
0040f8  00a00200  mfence { lm, gm }
0040fc  e3401f00  loadli.w r1,  12(r30)
004100  3f201b00  blt.s r22, r1, 8
004104  5bc00400  j 9728
004108  e3001f00  loadli.w r1,  8(r30)
00410c  9f027fd6  addli r5, r30, -5320
004110  8b101b10  add.s r1, r22, r1
004114  8b90f020  mul.s r1, r1, r15
004118  b3900028  sext_int2long r[2:3], r1
00411c  17b6a002  sll.d r[13:14], r[2:3], r10
004120  6bd10200  load.d r[3:4], 0(r5)
004124  ab0000f0  lui r1, 983040
004128  9f020fd5  addli r5, r30, -5504
00412c  97101300  or r1, r6, r1
004130  73b0c200  store.d r[13:14], 0(r5)
004134  0b21c110  add.ul r[3:4], r[3:4], r[13:14]
004138  ff207100  l_gm2lm r1, r7, 0(r[3:4])
00413c  00a00200  mfence { lm, gm }
004140  bff0b700  blt.s r15, r11, 60
004144  e340efd3  loadli.w r1,  -5644(r30)
004148  6301ffd3  loadli.w r2,  -5640(r30)
00414c  e341ffd3  loadli.w r3,  -5636(r30)
004150  c2800002  vload.mz vr1{mr1}, 0(r1)
004154  9f81c1ff  addli r3, r3, -32
004158  1f0381ff  addli r6, r2, -64
00415c  9f8080ff  addli r1, r1, -64
004160  93023404  setlt.u r5, r8, r3
004164  664110a0  vmerge_h.hf vr2, vr0, vr1
004168  e6401080  vmerge_l.hf vr1, vr0, vr1
00416c  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
004170  1f0101ff  addli r2, r2, -128
004174  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
004178  3bef02fe  bneq r5, zero, -40
00417c  670c6fd5  storeli.w r22, -5440(r30)
004180  00a00000  mfence { lm }
004184  bf57a200  blt.s r4, r10, 500
004188  9f010000  addli r3, zero, 0
00418c  9f020000  addli r5, zero, 0
004190  1f010000  addli r2, zero, 0
004194  db0d0000  j 108
004198  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
00419c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0041a0  1f110100  addli r2, r2, 1
0041a4  6a7108c0  vsrl.p vr2, r16, vr0
0041a8  ea7118c0  vsrl.p vr3, r16, vr1
0041ac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0041b0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0041b4  6af108c0  vsrl.p vr2, r17, vr0
0041b8  eaf118c0  vsrl.p vr3, r17, vr1
0041bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0041c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0041c4  6a7109c0  vsrl.p vr2, r18, vr0
0041c8  ea7119c0  vsrl.p vr3, r18, vr1
0041cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0041d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0041d4  6af105c0  vsrl.p vr2, r11, vr0
0041d8  eaf115c0  vsrl.p vr3, r11, vr1
0041dc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0041e0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0041e4  fa100040  vextracti.f r1, 0(vr0)
0041e8  7a930040  vextracti.f r6, 0(vr1)
0041ec  8be11110  add.f.rn r3, r3, r1
0041f0  9f000fd7  addli r1, r30, -5248
0041f4  8be26210  add.f.rn r5, r5, r6
0041f8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0041fc  37164100  beq r2, r4, 388
004200  9f000100  addli r1, r2, 0
004204  37400701  beq r14, r16, 16
004208  e3008fd6  loadli.w r1,  -5312(r30)
00420c  97201100  xor r1, r2, r1
004210  8b101210  add.s r1, r4, r1
004214  0b93e020  mul.s r6, r1, r14
004218  12320002  vadd.s.mz vr4{mr1}, zero, vr0
00421c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
004220  12310002  vadd.s.mz vr2{mr1}, zero, vr0
004224  92300002  vadd.s.mz vr1{mr1}, zero, vr0
004228  0b936718  sub.s r6, r15, r6
00422c  8b13e340  min.s r7, r6, r14
004230  bfada3fe  blt.s r7, r10, -152
004234  9f060fd7  addli r13, r30, -5248
004238  2bc60000  lui r12, 12
00423c  0b931420  mul.s r6, r9, r1
004240  1f040000  addli r8, zero, 0
004244  9f008fd7  addli r1, r30, -5184
004248  42920602  vload_mask16.mz vr4{mr1}, 0(r13)
00424c  1f0606f0  addli r12, r12, -2048
004250  92304002  vadd.s.mz vr1{mr1}, zero, vr4
004254  12314002  vadd.s.mz vr2{mr1}, zero, vr4
004258  92314002  vadd.s.mz vr3{mr1}, zero, vr4
00425c  0b1a6610  add.s r20, r12, r6
004260  8b966010  add.s r13, r1, r6
004264  1f0b8a00  addli r22, r20, 64
004268  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
00426c  1f0c8a01  addli r24, r20, 192
004270  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
004274  9f8d8601  addli r27, r13, 192
004278  4a130b02  vloads_mask16.mz vr6{mr1}, 0(r22)
00427c  1f0b0a01  addli r22, r20, 128
004280  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
004284  1f8c0601  addli r24, r13, 128
004288  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
00428c  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
004290  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
004294  1f8b8600  addli r22, r13, 64
004298  42150b02  vload_mask16.mz vr10{mr1}, 0(r22)
00429c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0042a0  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0042a4  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0042a8  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0042ac  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0042b0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0042b4  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
0042b8  46106b02  vstore_mask16.mz vr6{mr1}, 0(r22)
0042bc  1f0b8400  addli r22, r8, 64
0042c0  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
0042c4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0042c8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0042cc  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0042d0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0042d4  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
0042d8  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
0042dc  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0042e0  cbea63ff  ble.s r7, r22, -328
0042e4  1f0c0a02  addli r24, r20, 256
0042e8  9f0d8a02  addli r27, r20, 320
0042ec  1f8b0602  addli r22, r13, 256
0042f0  1f040401  addli r8, r8, 128
0042f4  1f060604  addli r12, r12, 512
0042f8  9f800004  addli r1, r1, 512
0042fc  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
004300  1f0c0a03  addli r24, r20, 384
004304  1f0a8a03  addli r20, r20, 448
004308  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
00430c  42130b02  vload_mask16.mz vr6{mr1}, 0(r22)
004310  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
004314  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
004318  1f8a0603  addli r20, r13, 384
00431c  1f8c8602  addli r24, r13, 320
004320  9f868603  addli r13, r13, 448
004324  42150a02  vload_mask16.mz vr10{mr1}, 0(r20)
004328  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
00432c  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
004330  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
004334  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004338  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
00433c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004340  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004344  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
004348  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
00434c  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
004350  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004354  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004358  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
00435c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004360  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004364  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
004368  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00436c  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
004370  bf3b74fe  blt.s r8, r7, -276
004374  dbc4ffff  j -476
004378  9f020000  addli r5, zero, 0
00437c  9f010000  addli r3, zero, 0
004380  00a00000  mfence { lm }
004384  3fd2a700  blt.s r15, r10, 148
004388  e3000fd4  loadli.w r1,  -5632(r30)
00438c  0f811118  div.f.rn r2, r3, r1
004390  8f801218  div.f.rn r1, r5, r1
004394  9f020000  addli r5, zero, 0
004398  8b612120  mul.f.rn r3, r2, r2
00439c  0b610158  neg.f r2, r2
0043a0  8be03018  sub.f.rn r1, r1, r3
0043a4  e3013f00  loadli.w r3,  24(r30)
0043a8  8be03010  add.f.rn r1, r1, r3
0043ac  9f018fd7  addli r3, r30, -5184
0043b0  8f800008  sqrt.f.rn r1, r1
0043b4  8f801918  div.f.rn r1, r19, r1
0043b8  1f838100  addli r6, r3, 64
0043bc  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0043c0  9f834200  addli r7, r5, 32
0043c4  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
0043c8  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0043cc  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
0043d0  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0043d4  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
0043d8  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0043dc  46102302  vstore_mask16.mz vr2{mr1}, 0(r6)
0043e0  cbe07700  ble.s r15, r7, 56
0043e4  1f830101  addli r6, r3, 128
0043e8  9f838101  addli r7, r3, 192
0043ec  9f828200  addli r5, r5, 64
0043f0  9f810102  addli r3, r3, 256
0043f4  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
0043f8  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
0043fc  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
004400  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
004404  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004408  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
00440c  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
004410  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
004414  bf9ef2fe  blt.s r5, r15, -92
004418  00a00000  mfence { lm }
00441c  1f747000  addli r8, zero, 63
004420  1f032000  addli r6, zero, 16
004424  9f330000  addli r7, zero, 3
004428  9f561000  addli r13, zero, 13
00442c  1f2a1000  addli r20, zero, 10
004430  630b8fd5  loadli.w r22,  -5440(r30)
004434  3fd2a7fe  blt.s r15, r10, -876
004438  9f008fd7  addli r1, r30, -5184
00443c  1f018fd7  addli r2, r30, -5184
004440  9f010000  addli r3, zero, 0
004444  9f028100  addli r5, r2, 64
004448  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
00444c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004450  9f814100  addli r3, r3, 32
004454  1f010101  addli r2, r2, 128
004458  6a221322  vor.u.mz vr4{mr1}, r6, vr1
00445c  c2910202  vload_mask16.mz vr3{mr1}, 0(r5)
004460  ee3222c2  vsrl.s.mz vr5{mr1}, vr4, vr2
004464  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
004468  ea325502  vand.s.mz vr5{mr1}, r10, vr5
00446c  6a324502  vand.s.mz vr4{mr1}, r10, vr4
004470  16315102  vadd.s.mz vr2{mr1}, vr2, vr5
004474  eaa21322  vor.u.mz vr5{mr1}, r7, vr1
004478  96b14102  vadd.s.mz vr3{mr1}, vr3, vr4
00447c  6aa21622  vor.u.mz vr4{mr1}, r13, vr1
004480  ea201a22  vor.u.mz vr1{mr1}, r20, vr1
004484  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
004488  92b13a02  vadd.s.mz vr3{mr1}, r21, vr3
00448c  6e3322c2  vsrl.s.mz vr6{mr1}, vr4, vr2
004490  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
004494  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
004498  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
00449c  eab26c02  vand.s.mz vr5{mr1}, r25, vr6
0044a0  6ab12b02  vand.s.mz vr2{mr1}, r23, vr2
0044a4  6ab24c02  vand.s.mz vr4{mr1}, r25, vr4
0044a8  eab13b02  vand.s.mz vr3{mr1}, r23, vr3
0044ac  6ab12922  vor.s.mz vr2{mr1}, r19, vr2
0044b0  eab25922  vor.s.mz vr5{mr1}, r19, vr5
0044b4  6ab24922  vor.s.mz vr4{mr1}, r19, vr4
0044b8  eab13922  vor.s.mz vr3{mr1}, r19, vr3
0044bc  06110120  vfloat2fp16_l.rz vr2, vr2
0044c0  06520220  vfloat2fp16_h.rz vr4, vr4
0044c4  06d10120  vfloat2fp16_h.rz vr2, vr3
0044c8  06920220  vfloat2fp16_l.rz vr4, vr5
0044cc  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
0044d0  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
0044d4  ea301e02  vand.s.mz vr1{mr1}, r28, vr1
0044d8  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
0044dc  46801002  vstore.mz vr1{mr1}, 0(r1)
0044e0  9f808000  addli r1, r1, 64
0044e4  bf8df1fe  blt.s r3, r15, -160
0044e8  5b7cffff  j -1056
0044ec  2b330100  lui r6, 19
0044f0  803a0002  core_id r21
0044f4  80500102  load_param_i r1, 2
0044f8  1f110000  addli r2, zero, 1
0044fc  9f038fd7  addli r7, r30, -5184
004500  1f048000  addli r8, zero, 64
004504  1f050010  addli r10, zero, 2048
004508  9bb15a00  slli r3, r21, 5
00450c  9bb45000  slli r9, r1, 5
004510  1f0303f8  addli r6, r6, -1024
004514  b3850128  zext_int2long r[12:13], r3
004518  ab0600f0  lui r13, 983040
00451c  97b52502  sll.d r[12:13], r[12:13], r2
004520  9716d400  or r13, r8, r13
004524  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
004528  ffa67500  l_gm2lm r13, r7, 0(r[12:13])
00452c  9bb52100  slli r11, r3, 2
004530  8b913410  add.s r3, r9, r3
004534  00a00200  mfence { lm, gm }
004538  42800302  vload.mz vr0{mr1}, 0(r7)
00453c  1386a104  setlt.u r12, r3, r10
004540  8b956510  add.s r11, r11, r6
004544  9f868500  addli r13, r11, 64
004548  86300000  vfp162float_l.rn vr1, vr0
00454c  06700000  vfp162float_h.rn vr0, vr0
004550  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
004554  4e900602  vstores_mask16.mz vr0{mr1}, 0(r13)
004558  bb7e06fe  bneq r12, zero, -68
00455c  2bf10000  lui r2, 15
004560  00a00300  mfence { lm, sm, gm }
004564  63421f00  loadli.w r4,  12(r30)
004568  9b8d1a00  andi r27, r21, 1
00456c  9f020006  addli r5, zero, 768
004570  1b11f1ff  ori r2, r2, 4095
004574  80210104  csr_set csr3, r2
004578  1f010006  addli r2, zero, 768
00457c  00d00100  sync_group
004580  37a00d00  beq r27, zero, 8
004584  9f02000a  addli r5, zero, 1280
004588  e3411f00  loadli.w r3,  12(r30)
00458c  1f1b0000  addli r22, zero, 1
004590  bfd56111  blt.s r3, r22, 8564
004594  0b912d20  mul.s r2, r27, r2
004598  1bc51000  srli r10, r1, 1
00459c  9bb02200  slli r1, r5, 2
0045a0  9f068fd7  addli r13, r30, -5184
0045a4  1bb61200  slli r12, r5, 1
0045a8  ab5c0100  lui r25, 21
0045ac  2b590100  lui r18, 21
0045b0  1f040000  addli r8, zero, 0
0045b4  9bc51a00  srli r11, r21, 1
0045b8  9f787000  addli r17, zero, 63
0045bc  1f0a0005  addli r20, zero, 640
0045c0  9f0b8000  addli r23, zero, 64
0045c4  1f0c4000  addli r24, zero, 32
0045c8  1f0e0003  addli r28, zero, 384
0045cc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0045d0  8b90d010  add.s r1, r1, r13
0045d4  67082fd6  storeli.w r2, -5248(r30)
0045d8  1f814200  addli r2, r5, 32
0045dc  9f8c0cf8  addli r25, r25, -1024
0045e0  1f0909fc  addli r18, r18, -512
0045e4  67042fd6  storeli.w r2, -5312(r30)
0045e8  9f8080ff  addli r1, r1, -64
0045ec  0b11d610  add.s r2, r12, r13
0045f0  670c1fd4  storeli.w r1, -5440(r30)
0045f4  9f0081ff  addli r1, r2, -64
0045f8  1f018fd4  addli r2, r30, -5568
0045fc  67081fd4  storeli.w r1, -5504(r30)
004600  abf0ffff  lui r1, 1048575
004604  00a00000  mfence { lm }
004608  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00460c  9b9000f8  ori r1, r1, 3968
004610  67001fd4  storeli.w r1, -5632(r30)
004614  abf00000  lui r1, 15
004618  1b9df0ff  ori r26, r1, 4095
00461c  db030000  j 28
004620  00a00300  mfence { lm, sm, gm }
004624  80210d04  csr_set csr3, r26
004628  00d00100  sync_group
00462c  0b14a410  add.s r8, r8, r10
004630  3f204400  blt.s r8, r4, 8
004634  dbc7f8ff  j -14788
004638  8b10b410  add.s r1, r8, r11
00463c  cb1f12fe  ble.s r4, r1, -28
004640  63011f00  loadli.w r2,  8(r30)
004644  e3010fd7  loadli.w r3,  -5248(r30)
004648  9f037fd6  addli r7, r30, -5320
00464c  8b902010  add.s r1, r1, r2
004650  0b01a430  div.u r2, r8, r10
004654  9bb0b000  slli r1, r1, 11
004658  97903000  or r1, r1, r3
00465c  ebd10300  load.d r[4:5], 0(r7)
004660  33970028  sext_int2long r[15:16], r1
004664  ab0000f0  lui r1, 983040
004668  1b316100  slli r2, r2, 6
00466c  17376703  sll.d r[15:16], r[15:16], r22
004670  97101600  or r1, r12, r1
004674  1b010104  andi r2, r2, 64
004678  8ba1e110  add.ul r[4:5], r[4:5], r[15:16]
00467c  ffa0d100  l_gm2lm r1, r13, 0(r[4:5])
004680  97105101  or r1, r2, r21
004684  00a00200  mfence { lm, gm }
004688  63010fd5  loadli.w r2,  -5504(r30)
00468c  e3018fd5  loadli.w r3,  -5440(r30)
004690  e3038fd6  loadli.w r7,  -5312(r30)
004694  c2000102  vload.mz vr1{mr1}, 0(r2)
004698  9f83c3ff  addli r7, r7, -32
00469c  9f8481ff  addli r9, r3, -64
0046a0  1f0181ff  addli r2, r2, -64
0046a4  13827804  setlt.u r4, r17, r7
0046a8  06f10000  vfp162float_h.rn vr2, vr1
0046ac  86b00000  vfp162float_l.rn vr1, vr1
0046b0  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
0046b4  9f8101ff  addli r3, r3, -128
0046b8  46901402  vstore_mask16.mz vr1{mr1}, 0(r9)
0046bc  3b6f02fe  bneq r4, zero, -40
0046c0  00a00000  mfence { lm }
0046c4  3bb60d00  bneq r27, zero, 396
0046c8  1f028fd4  addli r4, r30, -5568
0046cc  e3010fd4  loadli.w r3,  -5632(r30)
0046d0  1f010000  addli r2, zero, 0
0046d4  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
0046d8  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0046dc  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0046e0  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0046e4  8b136110  add.s r7, r2, r6
0046e8  8b942610  add.s r9, r13, r2
0046ec  9f810101  addli r3, r3, 128
0046f0  1f010104  addli r2, r2, 512
0046f4  1f820301  addli r4, r7, 128
0046f8  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
0046fc  1f888300  addli r16, r7, 64
004700  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
004704  9f898401  addli r19, r9, 192
004708  ca120202  vloads_mask16.mz vr5{mr1}, 0(r4)
00470c  1f828301  addli r4, r7, 192
004710  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
004714  1f888400  addli r16, r9, 64
004718  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
00471c  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
004720  1f820401  addli r4, r9, 128
004724  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
004728  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
00472c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004730  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004734  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004738  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00473c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004740  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
004744  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
004748  1f820302  addli r4, r7, 256
00474c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004750  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004754  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004758  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
00475c  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
004760  1f828302  addli r4, r7, 320
004764  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
004768  9f890402  addli r19, r9, 256
00476c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004770  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004774  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004778  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
00477c  1f820303  addli r4, r7, 384
004780  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
004784  9f838303  addli r7, r7, 448
004788  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00478c  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
004790  1f828402  addli r4, r9, 320
004794  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
004798  9f830403  addli r7, r9, 384
00479c  9f848403  addli r9, r9, 448
0047a0  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
0047a4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0047a8  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
0047ac  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0047b0  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
0047b4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0047b8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0047bc  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
0047c0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0047c4  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
0047c8  13824105  setlt.u r4, r3, r20
0047cc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0047d0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0047d4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0047d8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0047dc  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0047e0  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
0047e4  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
0047e8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0047ec  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0047f0  bb5b02fe  bneq r4, zero, -268
0047f4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0047f8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0047fc  1f010002  addli r2, zero, 256
004800  6a7101c0  vsrl.p vr2, r2, vr0
004804  ea7111c0  vsrl.p vr3, r2, vr1
004808  1f010001  addli r2, zero, 128
00480c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004810  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004814  6a7101c0  vsrl.p vr2, r2, vr0
004818  ea7111c0  vsrl.p vr3, r2, vr1
00481c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004820  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004824  6af10bc0  vsrl.p vr2, r23, vr0
004828  eaf11bc0  vsrl.p vr3, r23, vr1
00482c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004830  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004834  6a710cc0  vsrl.p vr2, r24, vr0
004838  ea711cc0  vsrl.p vr3, r24, vr1
00483c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004840  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004844  7a110040  vextracti.f r2, 0(vr0)
004848  fa910040  vextracti.f r3, 0(vr1)
00484c  5b660000  j 816
004850  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004854  abf1ffff  lui r3, 1048575
004858  1f8b0d00  addli r22, r27, 0
00485c  1f010000  addli r2, zero, 0
004860  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004864  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004868  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00486c  9b9101f8  ori r3, r3, 3968
004870  8b192310  add.s r19, r6, r2
004874  8b942610  add.s r9, r13, r2
004878  9f810101  addli r3, r3, 128
00487c  1f010104  addli r2, r2, 512
004880  9f8d0931  addli r27, r19, 6272
004884  1f820930  addli r4, r19, 6144
004888  1f888931  addli r16, r19, 6336
00488c  9f830418  addli r7, r9, 3072
004890  ca930d02  vloads_mask16.mz vr7{mr1}, 0(r27)
004894  ca120202  vloads_mask16.mz vr5{mr1}, 0(r4)
004898  1f828930  addli r4, r19, 6208
00489c  ca140802  vloads_mask16.mz vr9{mr1}, 0(r16)
0048a0  1f880419  addli r16, r9, 3200
0048a4  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
0048a8  9f8d8419  addli r27, r9, 3264
0048ac  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
0048b0  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
0048b4  1f828418  addli r4, r9, 3136
0048b8  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
0048bc  c2150202  vload_mask16.mz vr11{mr1}, 0(r4)
0048c0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0048c4  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0048c8  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0048cc  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0048d0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0048d4  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0048d8  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
0048dc  9f830932  addli r7, r19, 6400
0048e0  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0048e4  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
0048e8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0048ec  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
0048f0  1f88041a  addli r16, r9, 3328
0048f4  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
0048f8  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
0048fc  1f82041b  addli r4, r9, 3456
004900  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
004904  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
004908  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
00490c  9f838932  addli r7, r19, 6464
004910  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004914  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004918  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
00491c  9f830933  addli r7, r19, 6528
004920  9f898933  addli r19, r19, 6592
004924  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
004928  9f83841a  addli r7, r9, 3392
00492c  4a950902  vloads_mask16.mz vr10{mr1}, 0(r19)
004930  9f84841b  addli r9, r9, 3520
004934  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
004938  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00493c  c2130202  vload_mask16.mz vr7{mr1}, 0(r4)
004940  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004944  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
004948  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00494c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004950  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
004954  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004958  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
00495c  9383c105  setlt.u r7, r3, r28
004960  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004964  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004968  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00496c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004970  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004974  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
004978  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
00497c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004980  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004984  bbbb03fe  bneq r7, zero, -276
004988  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00498c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004990  1f010002  addli r2, zero, 256
004994  2bf2ffff  lui r4, 1048575
004998  9f040000  addli r9, zero, 0
00499c  9b1d02f8  ori r27, r4, 3968
0049a0  ea7111c0  vsrl.p vr3, r2, vr1
0049a4  6a7101c0  vsrl.p vr2, r2, vr0
0049a8  1f010001  addli r2, zero, 128
0049ac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0049b0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0049b4  ea7111c0  vsrl.p vr3, r2, vr1
0049b8  6a7101c0  vsrl.p vr2, r2, vr0
0049bc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0049c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0049c4  eaf11bc0  vsrl.p vr3, r23, vr1
0049c8  6af10bc0  vsrl.p vr2, r23, vr0
0049cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0049d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0049d4  ea711cc0  vsrl.p vr3, r24, vr1
0049d8  6a710cc0  vsrl.p vr2, r24, vr0
0049dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0049e0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0049e4  fa910040  vextracti.f r3, 0(vr1)
0049e8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0049ec  7a110040  vextracti.f r2, 0(vr0)
0049f0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0049f4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0049f8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0049fc  8b139310  add.s r7, r6, r9
004a00  8b999610  add.s r19, r13, r9
004a04  9f8d0d01  addli r27, r27, 128
004a08  9f840404  addli r9, r9, 512
004a0c  1f820318  addli r4, r7, 3072
004a10  1f880319  addli r16, r7, 3200
004a14  42940902  vload_mask16.mz vr8{mr1}, 0(r19)
004a18  9f8a8901  addli r21, r19, 192
004a1c  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
004a20  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
004a24  1f828318  addli r4, r7, 3136
004a28  1f888319  addli r16, r7, 3264
004a2c  c2950a02  vload_mask16.mz vr11{mr1}, 0(r21)
004a30  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
004a34  1f820901  addli r4, r19, 128
004a38  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
004a3c  1f888900  addli r16, r19, 64
004a40  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
004a44  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
004a48  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004a4c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004a50  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004a54  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004a58  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
004a5c  1f82031a  addli r4, r7, 3328
004a60  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004a64  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004a68  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004a6c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004a70  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
004a74  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
004a78  1f82831a  addli r4, r7, 3392
004a7c  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
004a80  9f8a0902  addli r21, r19, 256
004a84  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
004a88  1f888903  addli r16, r19, 448
004a8c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004a90  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004a94  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
004a98  1f82031b  addli r4, r7, 3456
004a9c  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
004aa0  9f83831b  addli r7, r7, 3520
004aa4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004aa8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004aac  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
004ab0  1f828902  addli r4, r19, 320
004ab4  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
004ab8  9f830903  addli r7, r19, 384
004abc  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
004ac0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004ac4  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
004ac8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004acc  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
004ad0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004ad4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004ad8  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
004adc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004ae0  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
004ae4  13824d05  setlt.u r4, r27, r20
004ae8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004aec  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004af0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004af4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004af8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004afc  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
004b00  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
004b04  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004b08  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004b0c  bb4b02fe  bneq r4, zero, -272
004b10  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004b14  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004b18  1f020002  addli r4, zero, 256
004b1c  9f0d0b00  addli r27, r22, 0
004b20  803a0002  core_id r21
004b24  1f1b0000  addli r22, zero, 1
004b28  6a7102c0  vsrl.p vr2, r4, vr0
004b2c  ea7112c0  vsrl.p vr3, r4, vr1
004b30  1f020001  addli r4, zero, 128
004b34  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b38  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b3c  6a7102c0  vsrl.p vr2, r4, vr0
004b40  ea7112c0  vsrl.p vr3, r4, vr1
004b44  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b48  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b4c  6af10bc0  vsrl.p vr2, r23, vr0
004b50  eaf11bc0  vsrl.p vr3, r23, vr1
004b54  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b58  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b5c  6a710cc0  vsrl.p vr2, r24, vr0
004b60  ea711cc0  vsrl.p vr3, r24, vr1
004b64  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b68  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b6c  7a120040  vextracti.f r4, 0(vr0)
004b70  fa930040  vextracti.f r7, 0(vr1)
004b74  0b614110  add.f.rn r2, r2, r4
004b78  8be17110  add.f.rn r3, r3, r7
004b7c  1bb22000  slli r4, r1, 2
004b80  9b80e007  andi r1, r1, 126
004b84  8b139211  add.s r7, r4, r25
004b88  8b142211  add.s r9, r4, r18
004b8c  9bb02000  slli r1, r1, 2
004b90  73e02300  stores.w r2, 0(r7)
004b94  1b114200  ori r2, r4, 4
004b98  73e03400  stores.w r3, 0(r9)
004b9c  0b929011  add.s r4, r1, r25
004ba0  8b902011  add.s r1, r1, r18
004ba4  9f030000  addli r7, zero, 0
004ba8  00a00300  mfence { lm, sm, gm }
004bac  80210d04  csr_set csr3, r26
004bb0  00d00100  sync_group
004bb4  8b119111  add.s r3, r2, r25
004bb8  6f420200  loads.w r4, 0(r4)
004bbc  0b112111  add.s r2, r2, r18
004bc0  efc00000  loads.w r1, 0(r1)
004bc4  efc10100  loads.w r3, 0(r3)
004bc8  6f410100  loads.w r2, 0(r2)
004bcc  8be14110  add.f.rn r3, r3, r4
004bd0  2b02003a  lui r4, 237568
004bd4  8b601110  add.f.rn r1, r2, r1
004bd8  0be14120  mul.f.rn r2, r3, r4
004bdc  8be04020  mul.f.rn r1, r1, r4
004be0  8b612120  mul.f.rn r3, r2, r2
004be4  0b610158  neg.f r2, r2
004be8  8be03018  sub.f.rn r1, r1, r3
004bec  e3013f00  loadli.w r3,  24(r30)
004bf0  8be03010  add.f.rn r1, r1, r3
004bf4  ab01803f  lui r3, 260096
004bf8  8f800008  sqrt.f.rn r1, r1
004bfc  8f801118  div.f.rn r1, r3, r1
004c00  9f018fd7  addli r3, r30, -5184
004c04  1f828100  addli r4, r3, 64
004c08  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
004c0c  9f844300  addli r9, r7, 32
004c10  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
004c14  93849206  setle.u r9, r5, r9
004c18  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
004c1c  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
004c20  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
004c24  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004c28  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
004c2c  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
004c30  bbf00400  bneq r9, zero, 60
004c34  1f820101  addli r4, r3, 128
004c38  9f848101  addli r9, r3, 192
004c3c  9f838300  addli r7, r7, 64
004c40  9f810102  addli r3, r3, 256
004c44  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
004c48  c2900402  vload_mask16.mz vr1{mr1}, 0(r9)
004c4c  13885304  setlt.u r16, r7, r5
004c50  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
004c54  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
004c58  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
004c5c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004c60  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
004c64  46901402  vstore_mask16.mz vr1{mr1}, 0(r9)
004c68  3b7e08fe  bneq r16, zero, -100
004c6c  9f008fd7  addli r1, r30, -5184
004c70  1f018fd7  addli r2, r30, -5184
004c74  9f010000  addli r3, zero, 0
004c78  00a00000  mfence { lm }
004c7c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
004c80  1f028100  addli r4, r2, 64
004c84  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
004c88  9f814100  addli r3, r3, 32
004c8c  1f010101  addli r2, r2, 128
004c90  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
004c94  13825104  setlt.u r4, r3, r5
004c98  06110000  vfloat2fp16_l.rn vr2, vr0
004c9c  06d10000  vfloat2fp16_h.rn vr2, vr1
004ca0  46802002  vstore.mz vr2{mr1}, 0(r1)
004ca4  9f808000  addli r1, r1, 64
004ca8  3b5f02fe  bneq r4, zero, -44
004cac  6b510f00  load.d r[3:4], 0(r30)
004cb0  ab0000f0  lui r1, 983040
004cb4  00a00000  mfence { lm }
004cb8  97101600  or r1, r12, r1
004cbc  0b21e110  add.ul r[3:4], r[3:4], r[15:16]
004cc0  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
004cc4  00a00200  mfence { lm, gm }
004cc8  63421f00  loadli.w r4,  12(r30)
004ccc  5b2cffff  j -1696
004cd0  80300002  core_id r1
004cd4  e3012f00  loadli.w r3,  16(r30)
004cd8  1bb15000  slli r2, r1, 5
004cdc  cb912100  ble.s r3, r2, 100
004ce0  00540102  load_param_i r8, 2
004ce4  ab840100  lui r9, 24
004ce8  9f110000  addli r3, zero, 1
004cec  1f038fd7  addli r6, r30, -5184
004cf0  9f038000  addli r7, zero, 64
004cf4  1b345400  slli r8, r8, 5
004cf8  9f840400  addli r9, r9, 0
004cfc  33050128  zext_int2long r[11:12], r2
004d00  2b0600f0  lui r12, 983040
004d04  17353502  sll.d r[11:12], r[11:12], r3
004d08  1796c300  or r12, r7, r12
004d0c  0b25a210  add.ul r[11:12], r[5:6], r[11:12]
004d10  7f266500  l_gm2lm r12, r6, 0(r[11:12])
004d14  1b352100  slli r10, r2, 2
004d18  0b112410  add.s r2, r8, r2
004d1c  00a00200  mfence { lm, gm }
004d20  42000302  vload.mz vr0{mr1}, 0(r6)
004d24  0b159510  add.s r10, r10, r9
004d28  9f058500  addli r11, r10, 64
004d2c  86300000  vfp162float_l.rn vr1, vr0
004d30  06700000  vfp162float_h.rn vr0, vr0
004d34  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
004d38  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
004d3c  3f0ff1fe  blt.s r2, r15, -64
004d40  2bf10000  lui r2, 15
004d44  e3411f00  loadli.w r3,  12(r30)
004d48  00a00300  mfence { lm, sm, gm }
004d4c  1b11f1ff  ori r2, r2, 4095
004d50  80210104  csr_set csr3, r2
004d54  00d00100  sync_group
004d58  cbb6110c  ble.s r3, r1, 6572
004d5c  63032f00  loadli.w r6,  16(r30)
004d60  e3432f00  loadli.w r7,  20(r30)
004d64  9f0b8fd7  addli r23, r30, -5184
004d68  1f150000  addli r10, zero, 1
004d6c  9f054000  addli r11, zero, 32
004d70  1f767000  addli r12, zero, 63
004d74  1f080002  addli r16, zero, 256
004d78  9f080001  addli r17, zero, 128
004d7c  1f098000  addli r18, zero, 64
004d80  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004d84  0b127310  add.s r4, r6, r7
004d88  33010308  fix2float.rn r2, r6
004d8c  1b342300  slli r8, r6, 2
004d90  9b321300  slli r5, r6, 1
004d94  9bb42300  slli r9, r7, 2
004d98  1f72f2ff  addli r4, r4, -1
004d9c  670c2fd4  storeli.w r2, -5440(r30)
004da0  1f014300  addli r2, r6, 32
004da4  0b137411  add.s r6, r8, r23
004da8  0b947211  add.s r8, r5, r23
004dac  67082fd4  storeli.w r2, -5504(r30)
004db0  1f0183ff  addli r2, r6, -64
004db4  2bf3ffff  lui r6, 1048575
004db8  0b127230  div.s r4, r4, r7
004dbc  67042fd4  storeli.w r2, -5568(r30)
004dc0  1f0184ff  addli r2, r8, -64
004dc4  9b16f3ff  ori r13, r6, 4095
004dc8  2b830100  lui r6, 24
004dcc  67002fd4  storeli.w r2, -5632(r30)
004dd0  1f010fd7  addli r2, r30, -5248
004dd4  1f030300  addli r6, r6, 0
004dd8  00a00000  mfence { lm }
004ddc  67045fd6  storeli.w r5, -5312(r30)
004de0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004de4  5b070000  j 56
004de8  6b510f00  load.d r[3:4], 0(r30)
004dec  ab0900f0  lui r19, 983040
004df0  9f0b8fd7  addli r23, r30, -5184
004df4  00a00000  mfence { lm }
004df8  005a0102  load_param_i r20, 2
004dfc  97993201  or r19, r5, r19
004e00  8b101a10  add.s r1, r20, r1
004e04  8b235111  add.ul r[8:9], r[3:4], r[22:23]
004e08  ffb97301  s_lm2gm r19, r23, 0(r[8:9])
004e0c  00a00200  mfence { lm, gm }
004e10  63411f00  loadli.w r2,  12(r30)
004e14  3fa02000  blt.s r1, r2, 8
004e18  db1d0300  j 6380
004e1c  63011f00  loadli.w r2,  8(r30)
004e20  8b932010  add.s r7, r1, r2
004e24  8b93f320  mul.s r7, r7, r15
004e28  b3930328  sext_int2long r[8:9], r7
004e2c  97baa302  sll.d r[22:23], r[8:9], r10
004e30  1f047fd6  addli r8, r30, -5320
004e34  ab0300f0  lui r7, 983040
004e38  6b510400  load.d r[3:4], 0(r8)
004e3c  97937200  or r7, r5, r7
004e40  8b295111  add.ul r[20:21], r[3:4], r[22:23]
004e44  ffa37901  l_gm2lm r7, r23, 0(r[20:21])
004e48  00a00200  mfence { lm, gm }
004e4c  bff0b700  blt.s r15, r11, 60
004e50  e3030fd4  loadli.w r7,  -5632(r30)
004e54  63048fd4  loadli.w r8,  -5568(r30)
004e58  e3090fd5  loadli.w r19,  -5504(r30)
004e5c  c2800302  vload.mz vr1{mr1}, 0(r7)
004e60  9f89c9ff  addli r19, r19, -32
004e64  9f0b84ff  addli r23, r8, -64
004e68  9f8383ff  addli r7, r7, -64
004e6c  130a3605  setlt.u r20, r12, r19
004e70  06f10000  vfp162float_h.rn vr2, vr1
004e74  86b00000  vfp162float_l.rn vr1, vr1
004e78  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
004e7c  1f0404ff  addli r8, r8, -128
004e80  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
004e84  3b6f0afe  bneq r20, zero, -40
004e88  00a00000  mfence { lm }
004e8c  bf17a200  blt.s r4, r10, 484
004e90  1f0c0000  addli r24, zero, 0
004e94  9f0b0000  addli r23, zero, 0
004e98  9f0c0000  addli r25, zero, 0
004e9c  db0c0000  j 100
004ea0  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004ea4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004ea8  9f9c0c00  addli r25, r25, 1
004eac  6a7108c0  vsrl.p vr2, r16, vr0
004eb0  ea7118c0  vsrl.p vr3, r16, vr1
004eb4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004eb8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004ebc  6af108c0  vsrl.p vr2, r17, vr0
004ec0  eaf118c0  vsrl.p vr3, r17, vr1
004ec4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004ec8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004ecc  6a7109c0  vsrl.p vr2, r18, vr0
004ed0  ea7119c0  vsrl.p vr3, r18, vr1
004ed4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004ed8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004edc  6af105c0  vsrl.p vr2, r11, vr0
004ee0  eaf115c0  vsrl.p vr3, r11, vr1
004ee4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004ee8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004eec  7a110040  vextracti.f r2, 0(vr0)
004ef0  fa910040  vextracti.f r3, 0(vr1)
004ef4  0b6c2c10  add.f.rn r24, r24, r2
004ef8  8beb3b10  add.f.rn r23, r23, r3
004efc  b7f54c00  beq r25, r4, 380
004f00  9f830c00  addli r7, r25, 0
004f04  37300701  beq r14, r16, 12
004f08  97a3dc00  xor r7, r25, r13
004f0c  8b137210  add.s r7, r4, r7
004f10  1f010fd7  addli r2, r30, -5248
004f14  0b94e320  mul.s r8, r7, r14
004f18  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004f1c  0b948718  sub.s r8, r15, r8
004f20  0b1de440  min.s r26, r8, r14
004f24  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004f28  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004f2c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004f30  bf4dadfe  blt.s r26, r10, -144
004f34  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
004f38  9f0d0000  addli r27, zero, 0
004f3c  0b9e7420  mul.s r28, r9, r7
004f40  9f098fd7  addli r19, r30, -5184
004f44  1f0a0300  addli r20, r6, 0
004f48  92304002  vadd.s.mz vr1{mr1}, zero, vr4
004f4c  12314002  vadd.s.mz vr2{mr1}, zero, vr4
004f50  92314002  vadd.s.mz vr3{mr1}, zero, vr4
004f54  0b14ca11  add.s r8, r20, r28
004f58  8b93c911  add.s r7, r19, r28
004f5c  9f028400  addli r5, r8, 64
004f60  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
004f64  9f018401  addli r3, r8, 192
004f68  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
004f6c  1f818301  addli r2, r7, 192
004f70  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
004f74  9f020401  addli r5, r8, 128
004f78  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
004f7c  9f818300  addli r3, r7, 64
004f80  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
004f84  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
004f88  9f820301  addli r5, r7, 128
004f8c  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
004f90  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
004f94  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004f98  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
004f9c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
004fa0  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
004fa4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004fa8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004fac  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
004fb0  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
004fb4  9f818d00  addli r3, r27, 64
004fb8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004fbc  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004fc0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004fc4  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
004fc8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004fcc  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
004fd0  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
004fd4  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
004fd8  4b2b3dfe  ble.s r26, r3, -312
004fdc  9f010402  addli r3, r8, 256
004fe0  9f028402  addli r5, r8, 320
004fe4  1f810302  addli r2, r7, 256
004fe8  9f8d0d01  addli r27, r27, 128
004fec  1f0a0a04  addli r20, r20, 512
004ff0  9f890904  addli r19, r19, 512
004ff4  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
004ff8  9f010403  addli r3, r8, 384
004ffc  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
005000  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
005004  9f828302  addli r5, r7, 320
005008  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
00500c  9f018403  addli r3, r8, 448
005010  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
005014  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
005018  9f810303  addli r3, r7, 384
00501c  9f838303  addli r7, r7, 448
005020  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
005024  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
005028  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
00502c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
005030  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005034  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005038  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00503c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005040  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
005044  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
005048  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00504c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005050  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
005054  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005058  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00505c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
005060  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005064  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
005068  bfbbadff  blt.s r27, r26, -276
00506c  dbc6ffff  j -460
005070  9f0b0000  addli r23, zero, 0
005074  1f0c0000  addli r24, zero, 0
005078  00a00000  mfence { lm }
00507c  3fe2a700  blt.s r15, r10, 152
005080  63018fd5  loadli.w r2,  -5440(r30)
005084  1f0a0000  addli r20, zero, 0
005088  0f042c18  div.f.rn r8, r24, r2
00508c  8f832b18  div.f.rn r7, r23, r2
005090  63013f00  loadli.w r2,  24(r30)
005094  8b698420  mul.f.rn r19, r8, r8
005098  0b640458  neg.f r8, r8
00509c  8be33319  sub.f.rn r7, r7, r19
0050a0  9f098fd7  addli r19, r30, -5184
0050a4  8be32310  add.f.rn r7, r7, r2
0050a8  2b01803f  lui r2, 260096
0050ac  8f830308  sqrt.f.rn r7, r7
0050b0  8f037118  div.f.rn r7, r2, r7
0050b4  9f8b8900  addli r23, r19, 64
0050b8  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
0050bc  1f0c4a00  addli r24, r20, 32
0050c0  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
0050c4  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
0050c8  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
0050cc  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
0050d0  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
0050d4  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
0050d8  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
0050dc  cbe08701  ble.s r15, r24, 56
0050e0  9f8b0901  addli r23, r19, 128
0050e4  1f8c8901  addli r24, r19, 192
0050e8  1f0a8a00  addli r20, r20, 64
0050ec  9f890902  addli r19, r19, 256
0050f0  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
0050f4  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
0050f8  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
0050fc  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
005100  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
005104  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
005108  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
00510c  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
005110  bf1efafe  blt.s r20, r15, -92
005114  00a00000  mfence { lm }
005118  e3028fd6  loadli.w r5,  -5312(r30)
00511c  3fb3a7fe  blt.s r15, r10, -820
005120  9f038fd7  addli r7, r30, -5184
005124  1f048fd7  addli r8, r30, -5184
005128  9f090000  addli r19, zero, 0
00512c  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
005130  1f0a8400  addli r20, r8, 64
005134  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
005138  9f894900  addli r19, r19, 32
00513c  1f040401  addli r8, r8, 128
005140  42110a02  vload_mask16.mz vr2{mr1}, 0(r20)
005144  86910000  vfloat2fp16_l.rn vr3, vr1
005148  86510100  vfloat2fp16_h.rn vr3, vr2
00514c  46803302  vstore.mz vr3{mr1}, 0(r7)
005150  9f838300  addli r7, r7, 64
005154  3feff9fe  blt.s r19, r15, -40
005158  5b92ffff  j -880
00515c  63012f00  loadli.w r2,  16(r30)
005160  ab0100f0  lui r3, 983040
005164  1b311100  slli r2, r2, 1
005168  17113100  or r2, r2, r3
00516c  aba10100  lui r3, 26
005170  9f810100  addli r3, r3, 0
005174  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005178  5b080000  j 64
00517c  63012f00  loadli.w r2,  16(r30)
005180  ab0100f0  lui r3, 983040
005184  1b311100  slli r2, r2, 1
005188  17113100  or r2, r2, r3
00518c  abe10100  lui r3, 30
005190  9f810100  addli r3, r3, 0
005194  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005198  5bc30000  j 1560
00519c  63012f00  loadli.w r2,  16(r30)
0051a0  ab0100f0  lui r3, 983040
0051a4  1b311100  slli r2, r2, 1
0051a8  17113100  or r2, r2, r3
0051ac  abb10100  lui r3, 27
0051b0  9f810100  addli r3, r3, 0
0051b4  7f013400  l_gm2sm r2, r3, 0(r[9:10])
0051b8  2bf10000  lui r2, 15
0051bc  e3411f00  loadli.w r3,  12(r30)
0051c0  00200300  mfence { sm, gm }
0051c4  1b11f1ff  ori r2, r2, 4095
0051c8  80210104  csr_set csr3, r2
0051cc  00d00100  sync_group
0051d0  cbd4110a  ble.s r3, r1, 5428
0051d4  63012f00  loadli.w r2,  16(r30)
0051d8  e3412f00  loadli.w r3,  20(r30)
0051dc  1f062000  addli r12, zero, 16
0051e0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0051e4  1f140000  addli r8, zero, 1
0051e8  9f068fd7  addli r13, r30, -5184
0051ec  9f050002  addli r11, zero, 256
0051f0  2b08ffff  lui r16, 1048560
0051f4  2b09807f  lui r18, 522240
0051f8  ab09c07f  lui r19, 523264
0051fc  1f0a0001  addli r20, zero, 128
005200  9f0a8000  addli r21, zero, 64
005204  1f0b4000  addli r22, zero, 32
005208  9b321100  slli r5, r2, 1
00520c  0b123110  add.s r4, r2, r3
005210  33010108  fix2float.rn r2, r2
005214  1bb31100  slli r6, r3, 1
005218  67042fd4  storeli.w r2, -5568(r30)
00521c  1f71f2ff  addli r2, r4, -1
005220  67085fd4  storeli.w r5, -5504(r30)
005224  8b133130  div.s r7, r2, r3
005228  2bf1ffff  lui r2, 1048575
00522c  1b15f1ff  ori r10, r2, 4095
005230  1f010fd7  addli r2, r30, -5248
005234  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005238  6a200622  vor.u.mz vr0{mr1}, r12, vr0
00523c  1f018fd6  addli r2, r30, -5312
005240  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005244  2b710000  lui r2, 7
005248  9b18f1ff  ori r17, r2, 4095
00524c  db080000  j 68
005250  9f028fd5  addli r5, r30, -5440
005254  00a00000  mfence { lm }
005258  eb510f00  load.d r[4:5], 0(r30)
00525c  2b0100f0  lui r2, 983040
005260  9f068fd7  addli r13, r30, -5184
005264  80540102  load_param_i r9, 2
005268  ebdb0200  load.d r[24:25], 0(r5)
00526c  e3020fd5  loadli.w r5,  -5504(r30)
005270  8b901410  add.s r1, r9, r1
005274  8ba17111  add.ul r[4:5], r[4:5], r[24:25]
005278  17912200  or r2, r5, r2
00527c  7fb1d100  s_lm2gm r2, r13, 0(r[4:5])
005280  00a00200  mfence { lm, gm }
005284  63411f00  loadli.w r2,  12(r30)
005288  3fa02000  blt.s r1, r2, 8
00528c  5b8f0200  j 5240
005290  63011f00  loadli.w r2,  8(r30)
005294  9f047fd6  addli r9, r30, -5320
005298  0b912010  add.s r2, r1, r2
00529c  0b11f120  mul.s r2, r2, r15
0052a0  33110128  sext_int2long r[3:4], r2
0052a4  973b8102  sll.d r[24:25], r[3:4], r8
0052a8  ebd10400  load.d r[4:5], 0(r9)
0052ac  2b0100f0  lui r2, 983040
0052b0  9f048fd5  addli r9, r30, -5440
0052b4  17912200  or r2, r5, r2
0052b8  73b07401  store.d r[24:25], 0(r9)
0052bc  8ba17111  add.ul r[4:5], r[4:5], r[24:25]
0052c0  7fa1d100  l_gm2lm r2, r13, 0(r[4:5])
0052c4  00a00200  mfence { lm, gm }
0052c8  bfdc8300  blt.s r7, r8, 820
0052cc  9f010000  addli r3, zero, 0
0052d0  1f010000  addli r2, zero, 0
0052d4  1f0e0000  addli r28, zero, 0
0052d8  db0c0000  j 100
0052dc  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0052e0  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0052e4  1f1e0e00  addli r28, r28, 1
0052e8  6af105c0  vsrl.p vr2, r11, vr0
0052ec  eaf115c0  vsrl.p vr3, r11, vr1
0052f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0052f4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0052f8  6a710ac0  vsrl.p vr2, r20, vr0
0052fc  ea711ac0  vsrl.p vr3, r20, vr1
005300  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005304  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005308  6af10ac0  vsrl.p vr2, r21, vr0
00530c  eaf11ac0  vsrl.p vr3, r21, vr1
005310  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005314  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005318  6a710bc0  vsrl.p vr2, r22, vr0
00531c  ea711bc0  vsrl.p vr3, r22, vr1
005320  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005324  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005328  7a120040  vextracti.f r4, 0(vr0)
00532c  fa920040  vextracti.f r5, 0(vr1)
005330  8be14110  add.f.rn r3, r3, r4
005334  0b615110  add.f.rn r2, r2, r5
005338  373b7e00  beq r28, r7, 716
00533c  1f020e00  addli r4, r28, 0
005340  3730b700  beq r14, r11, 12
005344  1722ae00  xor r4, r28, r10
005348  0b924310  add.s r4, r7, r4
00534c  9f020fd7  addli r5, r30, -5248
005350  8b14e220  mul.s r9, r4, r14
005354  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
005358  8b949718  sub.s r9, r15, r9
00535c  8b9be440  min.s r23, r9, r14
005360  92322002  vadd.s.mz vr5{mr1}, zero, vr2
005364  12322002  vadd.s.mz vr4{mr1}, zero, vr2
005368  92312002  vadd.s.mz vr3{mr1}, zero, vr2
00536c  bfcd8bfe  blt.s r23, r8, -144
005370  8b1c4320  mul.s r25, r6, r4
005374  1f020fd7  addli r4, r30, -5248
005378  ab960100  lui r13, 25
00537c  1f0c0000  addli r24, zero, 0
005380  9f048fd7  addli r9, r30, -5184
005384  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
005388  9f860600  addli r13, r13, 0
00538c  12315002  vadd.s.mz vr2{mr1}, zero, vr5
005390  92315002  vadd.s.mz vr3{mr1}, zero, vr5
005394  12325002  vadd.s.mz vr4{mr1}, zero, vr5
005398  0b9d9611  add.s r26, r13, r25
00539c  0b929411  add.s r4, r9, r25
0053a0  9f028fd6  addli r5, r30, -5312
0053a4  4a030d02  vloads.mz vr6{mr1}, 0(r26)
0053a8  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
0053ac  c2030202  vload.mz vr7{mr1}, 0(r4)
0053b0  9f020fd7  addli r5, r30, -5248
0053b4  9f0d8d00  addli r27, r26, 64
0053b8  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0053bc  9f028c00  addli r5, r24, 64
0053c0  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0053c4  6a357802  vand.s.mz vr10{mr1}, r16, vr7
0053c8  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0053cc  6a336802  vand.s.mz vr6{mr1}, r16, vr6
0053d0  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0053d4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0053d8  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0053dc  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0053e0  669503c0  vabs.f vr10, vr7
0053e4  6a348402  vand.s.mz vr8{mr1}, r8, vr8
0053e8  ea349402  vand.s.mz vr9{mr1}, r8, vr9
0053ec  7221a942  vlt.u.mz mr2{mr1}, r18, vr10
0053f0  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
0053f4  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
0053f8  12b48802  vadd.s.mz vr8{mr1}, r17, vr8
0053fc  92b49802  vadd.s.mz vr9{mr1}, r17, vr9
005400  ea338802  vand.s.mz vr7{mr1}, r16, vr8
005404  661403c0  vabs.f vr8, vr6
005408  6a339802  vand.s.mz vr6{mr1}, r16, vr9
00540c  eaa30934  vor.u.mh vr7{mr2}, r19, vr0
005410  72218942  vlt.u.mz mr2{mr1}, r18, vr8
005414  6aa30934  vor.u.mh vr6{mr2}, r19, vr0
005418  4a840d02  vloads.mz vr8{mr1}, 0(r27)
00541c  9f0d8200  addli r27, r4, 64
005420  c2840d02  vload.mz vr9{mr1}, 0(r27)
005424  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
005428  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
00542c  6a336802  vand.s.mz vr6{mr1}, r16, vr6
005430  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
005434  ea349802  vand.s.mz vr9{mr1}, r16, vr9
005438  46007202  vstore.mz vr7{mr1}, 0(r4)
00543c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005440  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005444  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
005448  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
00544c  6a348802  vand.s.mz vr8{mr1}, r16, vr8
005450  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005454  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005458  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
00545c  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
005460  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
005464  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
005468  ea349402  vand.s.mz vr9{mr1}, r8, vr9
00546c  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
005470  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
005474  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
005478  661505c0  vabs.f vr10, vr10
00547c  661404c0  vabs.f vr8, vr8
005480  92b49802  vadd.s.mz vr9{mr1}, r17, vr9
005484  92b5b802  vadd.s.mz vr11{mr1}, r17, vr11
005488  7221a942  vlt.u.mz mr2{mr1}, r18, vr10
00548c  ea349802  vand.s.mz vr9{mr1}, r16, vr9
005490  6a35b802  vand.s.mz vr10{mr1}, r16, vr11
005494  eaa40934  vor.u.mh vr9{mr2}, r19, vr0
005498  72218942  vlt.u.mz mr2{mr1}, r18, vr8
00549c  6aa50934  vor.u.mh vr10{mr2}, r19, vr0
0054a0  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
0054a4  ea34a802  vand.s.mz vr9{mr1}, r16, vr10
0054a8  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0054ac  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0054b0  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0054b4  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0054b8  46808d02  vstore.mz vr8{mr1}, 0(r27)
0054bc  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0054c0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0054c4  4be85bfe  ble.s r23, r5, -488
0054c8  9f020d01  addli r5, r26, 128
0054cc  9f0d0201  addli r27, r4, 128
0054d0  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0054d4  1f028201  addli r4, r4, 192
0054d8  1f0c0c01  addli r24, r24, 128
0054dc  9f860602  addli r13, r13, 256
0054e0  9f840402  addli r9, r9, 256
0054e4  6a237622  vor.u.mz vr6{mr1}, r12, vr7
0054e8  4a840202  vloads.mz vr8{mr1}, 0(r5)
0054ec  c2840d02  vload.mz vr9{mr1}, 0(r27)
0054f0  9f028d01  addli r5, r26, 192
0054f4  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
0054f8  6a309802  vand.s.mz vr0{mr1}, r16, vr9
0054fc  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
005500  6a348802  vand.s.mz vr8{mr1}, r16, vr8
005504  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
005508  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
00550c  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
005510  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
005514  e69504c0  vabs.f vr11, vr9
005518  6a300402  vand.s.mz vr0{mr1}, r8, vr0
00551c  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
005520  7221b942  vlt.u.mz mr2{mr1}, r18, vr11
005524  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
005528  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
00552c  12b00802  vadd.s.mz vr0{mr1}, r17, vr0
005530  12b5a802  vadd.s.mz vr10{mr1}, r17, vr10
005534  ea340802  vand.s.mz vr9{mr1}, r16, vr0
005538  661004c0  vabs.f vr0, vr8
00553c  6a34a802  vand.s.mz vr8{mr1}, r16, vr10
005540  eaa47934  vor.u.mh vr9{mr2}, r19, vr7
005544  72210942  vlt.u.mz mr2{mr1}, r18, vr0
005548  6aa47934  vor.u.mh vr8{mr2}, r19, vr7
00554c  4a800202  vloads.mz vr0{mr1}, 0(r5)
005550  42050202  vload.mz vr10{mr1}, 0(r4)
005554  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
005558  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
00555c  6a35a802  vand.s.mz vr10{mr1}, r16, vr10
005560  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
005564  6a348802  vand.s.mz vr8{mr1}, r16, vr8
005568  46809d02  vstore.mz vr9{mr1}, 0(r27)
00556c  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
005570  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
005574  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
005578  6a300802  vand.s.mz vr0{mr1}, r16, vr0
00557c  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
005580  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
005584  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
005588  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
00558c  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
005590  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
005594  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
005598  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
00559c  e69000c0  vabs.f vr1, vr1
0055a0  661000c0  vabs.f vr0, vr0
0055a4  12b5a802  vadd.s.mz vr10{mr1}, r17, vr10
0055a8  92b5b802  vadd.s.mz vr11{mr1}, r17, vr11
0055ac  72211942  vlt.u.mz mr2{mr1}, r18, vr1
0055b0  6a35a802  vand.s.mz vr10{mr1}, r16, vr10
0055b4  ea30b802  vand.s.mz vr1{mr1}, r16, vr11
0055b8  6aa57934  vor.u.mh vr10{mr2}, r19, vr7
0055bc  72210942  vlt.u.mz mr2{mr1}, r18, vr0
0055c0  eaa07934  vor.u.mh vr1{mr2}, r19, vr7
0055c4  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
0055c8  ea331802  vand.s.mz vr7{mr1}, r16, vr1
0055cc  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0055d0  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
0055d4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0055d8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0055dc  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
0055e0  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
0055e4  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
0055e8  46000202  vstore.mz vr0{mr1}, 0(r4)
0055ec  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0055f0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0055f4  bf167cff  blt.s r24, r23, -604
0055f8  db9cffff  j -796
0055fc  1f010000  addli r2, zero, 0
005600  9f010000  addli r3, zero, 0
005604  00a00000  mfence { lm }
005608  3fa187fe  blt.s r15, r8, -952
00560c  e3028fd4  loadli.w r5,  -5568(r30)
005610  aba60100  lui r13, 26
005614  abbb0100  lui r23, 27
005618  1f020000  addli r4, zero, 0
00561c  9f860600  addli r13, r13, 0
005620  9f8b0b00  addli r23, r23, 0
005624  8f815118  div.f.rn r3, r3, r5
005628  0f015118  div.f.rn r2, r2, r5
00562c  e3023f00  loadli.w r5,  24(r30)
005630  8be43120  mul.f.rn r9, r3, r3
005634  8be10158  neg.f r3, r3
005638  0b619118  sub.f.rn r2, r2, r9
00563c  9f048fd7  addli r9, r30, -5184
005640  0b615110  add.f.rn r2, r2, r5
005644  ab02803f  lui r5, 260096
005648  0f010108  sqrt.f.rn r2, r2
00564c  0f812218  div.f.rn r2, r5, r2
005650  42820402  vload.mz vr4{mr1}, 0(r9)
005654  ca820602  vloads.mz vr5{mr1}, 0(r13)
005658  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
00565c  4a830b02  vloads.mz vr6{mr1}, 0(r23)
005660  1f0c4200  addli r24, r4, 32
005664  ea212622  vor.u.mz vr3{mr1}, r12, vr2
005668  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
00566c  6a344802  vand.s.mz vr8{mr1}, r16, vr4
005670  92937102  vadd.f.mz.rn vr7{mr1}, r3, vr7
005674  12948102  vadd.f.mz.rn vr8{mr1}, r3, vr8
005678  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
00567c  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
005680  6a355802  vand.s.mz vr10{mr1}, r16, vr5
005684  ea326802  vand.s.mz vr5{mr1}, r16, vr6
005688  8a137102  vmul.f.mz.rn vr7{mr1}, r2, vr7
00568c  0a138102  vmul.f.mz.rn vr6{mr1}, r2, vr8
005690  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
005694  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
005698  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
00569c  6a337402  vand.s.mz vr6{mr1}, r8, vr7
0056a0  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
0056a4  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
0056a8  ea337402  vand.s.mz vr7{mr1}, r8, vr7
0056ac  661202c0  vabs.f vr4, vr4
0056b0  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
0056b4  12b36802  vadd.s.mz vr6{mr1}, r17, vr6
0056b8  e69202c0  vabs.f vr5, vr5
0056bc  72214942  vlt.u.mz mr2{mr1}, r18, vr4
0056c0  6a336802  vand.s.mz vr6{mr1}, r16, vr6
0056c4  92b37802  vadd.s.mz vr7{mr1}, r17, vr7
0056c8  6aa32934  vor.u.mh vr6{mr2}, r19, vr2
0056cc  6a327802  vand.s.mz vr4{mr1}, r16, vr7
0056d0  72215942  vlt.u.mz mr2{mr1}, r18, vr5
0056d4  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
0056d8  6aa22934  vor.u.mh vr4{mr2}, r19, vr2
0056dc  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
0056e0  46804402  vstore.mz vr4{mr1}, 0(r9)
0056e4  cbbd87fd  ble.s r15, r24, -1172
0056e8  1f8c8600  addli r24, r13, 64
0056ec  9f8c8400  addli r25, r9, 64
0056f0  1f028200  addli r4, r4, 64
0056f4  9f860601  addli r13, r13, 128
0056f8  9f840401  addli r9, r9, 128
0056fc  4a020c02  vloads.mz vr4{mr1}, 0(r24)
005700  1f8c8b00  addli r24, r23, 64
005704  c2820c02  vload.mz vr5{mr1}, 0(r25)
005708  9f8b0b01  addli r23, r23, 128
00570c  4a030c02  vloads.mz vr6{mr1}, 0(r24)
005710  eeb351a2  vsll.s.mz vr7{mr1}, vr3, vr5
005714  ea325802  vand.s.mz vr5{mr1}, r16, vr5
005718  92937102  vadd.f.mz.rn vr7{mr1}, r3, vr7
00571c  12945102  vadd.f.mz.rn vr8{mr1}, r3, vr5
005720  eeb441a2  vsll.s.mz vr9{mr1}, vr3, vr4
005724  6a354802  vand.s.mz vr10{mr1}, r16, vr4
005728  8a137102  vmul.f.mz.rn vr7{mr1}, r2, vr7
00572c  eeb261a2  vsll.s.mz vr5{mr1}, vr3, vr6
005730  6a326802  vand.s.mz vr4{mr1}, r16, vr6
005734  0a138102  vmul.f.mz.rn vr6{mr1}, r2, vr8
005738  a6929302  vmac.f.mz.rn vr5{mr1}, vr7, vr9
00573c  2612a302  vmac.f.mz.rn vr4{mr1}, vr6, vr10
005740  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
005744  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
005748  6a336402  vand.s.mz vr6{mr1}, r8, vr6
00574c  ea337402  vand.s.mz vr7{mr1}, r8, vr7
005750  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
005754  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
005758  e69202c0  vabs.f vr5, vr5
00575c  661202c0  vabs.f vr4, vr4
005760  12b36802  vadd.s.mz vr6{mr1}, r17, vr6
005764  92b37802  vadd.s.mz vr7{mr1}, r17, vr7
005768  72215942  vlt.u.mz mr2{mr1}, r18, vr5
00576c  6a336802  vand.s.mz vr6{mr1}, r16, vr6
005770  ea327802  vand.s.mz vr5{mr1}, r16, vr7
005774  6aa32934  vor.u.mh vr6{mr2}, r19, vr2
005778  72214942  vlt.u.mz mr2{mr1}, r18, vr4
00577c  eaa22934  vor.u.mh vr5{mr2}, r19, vr2
005780  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
005784  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
005788  46802c02  vstore.mz vr2{mr1}, 0(r25)
00578c  3f1bf2fe  blt.s r4, r15, -316
005790  5b58ffff  j -1344
005794  63012f00  loadli.w r2,  16(r30)
005798  ab0100f0  lui r3, 983040
00579c  1b311100  slli r2, r2, 1
0057a0  17113100  or r2, r2, r3
0057a4  abf10100  lui r3, 31
0057a8  9f810100  addli r3, r3, 0
0057ac  7f013400  l_gm2sm r2, r3, 0(r[9:10])
0057b0  2bf10000  lui r2, 15
0057b4  e3411f00  loadli.w r3,  12(r30)
0057b8  00200300  mfence { sm, gm }
0057bc  1b11f1ff  ori r2, r2, 4095
0057c0  80210104  csr_set csr3, r2
0057c4  00d00100  sync_group
0057c8  cbfc1106  ble.s r3, r1, 3900
0057cc  e3012f00  loadli.w r3,  16(r30)
0057d0  e3422f00  loadli.w r5,  20(r30)
0057d4  2bf4ffff  lui r8, 1048575
0057d8  2bd50100  lui r10, 29
0057dc  9f0b8fd7  addli r23, r30, -5184
0057e0  9f040002  addli r9, zero, 256
0057e4  9f050001  addli r11, zero, 128
0057e8  1f068000  addli r12, zero, 64
0057ec  9f064000  addli r13, zero, 32
0057f0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0057f4  1b14f4ff  ori r8, r8, 4095
0057f8  1f050500  addli r10, r10, 0
0057fc  0b925110  add.s r4, r3, r5
005800  1bb11100  slli r2, r3, 1
005804  b3810108  fix2float.rn r3, r3
005808  1f73f2ff  addli r6, r4, -1
00580c  1bb21200  slli r4, r5, 1
005810  8b125330  div.s r5, r6, r5
005814  1f130000  addli r6, zero, 1
005818  5b070000  j 56
00581c  00a00000  mfence { lm }
005820  eb580f00  load.d r[18:19], 0(r30)
005824  2b0800f0  lui r16, 983040
005828  9f0b8fd7  addli r23, r30, -5184
00582c  17180101  or r16, r2, r16
005830  8ba93811  add.ul r[20:21], r[18:19], r[20:21]
005834  80580102  load_param_i r17, 2
005838  7fb87901  s_lm2gm r16, r23, 0(r[20:21])
00583c  8b901810  add.s r1, r17, r1
005840  00a00200  mfence { lm, gm }
005844  e3431f00  loadli.w r7,  12(r30)
005848  3fa07000  blt.s r1, r7, 8
00584c  5bd70100  j 3768
005850  e3031f00  loadli.w r7,  8(r30)
005854  0b987010  add.s r16, r1, r7
005858  9f037fd6  addli r7, r30, -5320
00585c  0b18f820  mul.s r16, r16, r15
005860  33180828  sext_int2long r[17:18], r16
005864  97396802  sll.d r[20:21], r[17:18], r6
005868  ebd80300  load.d r[18:19], 0(r7)
00586c  2b0800f0  lui r16, 983040
005870  17180101  or r16, r2, r16
005874  8baa3811  add.ul r[22:23], r[18:19], r[20:21]
005878  7fa87a01  l_gm2lm r16, r23, 0(r[22:23])
00587c  00a00200  mfence { lm, gm }
005880  3fc76200  blt.s r5, r6, 464
005884  1f0b0000  addli r22, zero, 0
005888  9f0a0000  addli r21, zero, 0
00588c  9f0b0000  addli r23, zero, 0
005890  db0c0000  j 100
005894  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
005898  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00589c  9f9b0b00  addli r23, r23, 1
0058a0  6af134c0  vsrl.p vr2, r9, vr3
0058a4  6af214c0  vsrl.p vr4, r9, vr1
0058a8  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
0058ac  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0058b0  eaf125c0  vsrl.p vr3, r11, vr2
0058b4  6af215c0  vsrl.p vr4, r11, vr1
0058b8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0058bc  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0058c0  ea7126c0  vsrl.p vr3, r12, vr2
0058c4  6a7216c0  vsrl.p vr4, r12, vr1
0058c8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0058cc  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0058d0  eaf126c0  vsrl.p vr3, r13, vr2
0058d4  6af216c0  vsrl.p vr4, r13, vr1
0058d8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0058dc  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0058e0  fa130140  vextracti.f r7, 0(vr2)
0058e4  7a980040  vextracti.f r16, 0(vr1)
0058e8  0b6b7b10  add.f.rn r22, r22, r7
0058ec  8bea0a11  add.f.rn r21, r21, r16
0058f0  b7a55b00  beq r23, r5, 360
0058f4  1f880b00  addli r16, r23, 0
0058f8  37309700  beq r14, r9, 12
0058fc  17a88b00  xor r16, r23, r8
005900  0b980211  add.s r16, r5, r16
005904  8b18e820  mul.s r17, r16, r14
005908  12320002  vadd.s.mz vr4{mr1}, zero, vr0
00590c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
005910  12310002  vadd.s.mz vr2{mr1}, zero, vr0
005914  92300002  vadd.s.mz vr1{mr1}, zero, vr0
005918  8b981719  sub.s r17, r15, r17
00591c  0b9ce840  min.s r24, r17, r14
005920  bf5d6cfe  blt.s r24, r6, -140
005924  92300002  vadd.s.mz vr1{mr1}, zero, vr0
005928  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00592c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
005930  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005934  9f0c0000  addli r25, zero, 0
005938  0b1d0221  mul.s r26, r4, r16
00593c  9f0d8fd7  addli r27, r30, -5184
005940  1f0e0500  addli r28, r10, 0
005944  0b18ae11  add.s r16, r28, r26
005948  9f838c00  addli r7, r25, 64
00594c  ca020802  vloads.mz vr5{mr1}, 0(r16)
005950  9f088800  addli r17, r16, 64
005954  4a830802  vloads.mz vr6{mr1}, 0(r17)
005958  8b98ad11  add.s r17, r27, r26
00595c  c2830802  vload.mz vr7{mr1}, 0(r17)
005960  1f898800  addli r18, r17, 64
005964  42040902  vload.mz vr8{mr1}, 0(r18)
005968  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
00596c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005970  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
005974  06b40300  vfp162float_l.rn vr8, vr7
005978  86f30300  vfp162float_h.rn vr7, vr7
00597c  86340300  vfp162float_l.rn vr9, vr6
005980  06730300  vfp162float_h.rn vr6, vr6
005984  86120400  vfloat2fp16_l.rn vr5, vr8
005988  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
00598c  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
005990  12340002  vadd.s.mz vr8{mr1}, zero, vr0
005994  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005998  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
00599c  06940400  vfloat2fp16_l.rn vr8, vr9
0059a0  86d20300  vfloat2fp16_h.rn vr5, vr7
0059a4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0059a8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0059ac  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0059b0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0059b4  06540300  vfloat2fp16_h.rn vr8, vr6
0059b8  46805802  vstore.mz vr5{mr1}, 0(r17)
0059bc  46008902  vstore.mz vr8{mr1}, 0(r18)
0059c0  4b5b7cfe  ble.s r24, r7, -300
0059c4  9f030801  addli r7, r16, 128
0059c8  9f8c0c01  addli r25, r25, 128
0059cc  1f0e0e02  addli r28, r28, 256
0059d0  9f8d0d02  addli r27, r27, 256
0059d4  ca820302  vloads.mz vr5{mr1}, 0(r7)
0059d8  9f038801  addli r7, r16, 192
0059dc  1f880801  addli r16, r17, 128
0059e0  4a830302  vloads.mz vr6{mr1}, 0(r7)
0059e4  c2030802  vload.mz vr7{mr1}, 0(r16)
0059e8  9f838801  addli r7, r17, 192
0059ec  42840302  vload.mz vr8{mr1}, 0(r7)
0059f0  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
0059f4  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0059f8  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
0059fc  12330002  vadd.s.mz vr6{mr1}, zero, vr0
005a00  86b40300  vfp162float_l.rn vr9, vr7
005a04  86f30300  vfp162float_h.rn vr7, vr7
005a08  86920400  vfloat2fp16_l.rn vr5, vr9
005a0c  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
005a10  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
005a14  86340400  vfp162float_l.rn vr9, vr8
005a18  06740400  vfp162float_h.rn vr8, vr8
005a1c  06930400  vfloat2fp16_l.rn vr6, vr9
005a20  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005a24  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005a28  86d20300  vfloat2fp16_h.rn vr5, vr7
005a2c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005a30  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005a34  06530400  vfloat2fp16_h.rn vr6, vr8
005a38  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
005a3c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005a40  46005802  vstore.mz vr5{mr1}, 0(r16)
005a44  46806302  vstore.mz vr6{mr1}, 0(r7)
005a48  bffb8cff  blt.s r25, r24, -260
005a4c  5bc9ffff  j -440
005a50  9f0a0000  addli r21, zero, 0
005a54  1f0b0000  addli r22, zero, 0
005a58  00a00000  mfence { lm }
005a5c  3f8767fe  blt.s r15, r6, -576
005a60  0f083b18  div.f.rn r16, r22, r3
005a64  8f883a18  div.f.rn r17, r21, r3
005a68  e3033f00  loadli.w r7,  24(r30)
005a6c  abec0100  lui r25, 30
005a70  2bfd0100  lui r26, 31
005a74  9f0b0000  addli r23, zero, 0
005a78  1f0c8fd7  addli r24, r30, -5184
005a7c  9f8c0c00  addli r25, r25, 0
005a80  1f0d0d00  addli r26, r26, 0
005a84  8b6a0821  mul.f.rn r21, r16, r16
005a88  0b6b0858  neg.f r22, r16
005a8c  8be85819  sub.f.rn r17, r17, r21
005a90  8be87810  add.f.rn r17, r17, r7
005a94  ab03803f  lui r7, 260096
005a98  8f880808  sqrt.f.rn r17, r17
005a9c  8f8a1319  div.f.rn r21, r7, r17
005aa0  c2000c02  vload.mz vr1{mr1}, 0(r24)
005aa4  4a810c02  vloads.mz vr2{mr1}, 0(r25)
005aa8  ca010d02  vloads.mz vr3{mr1}, 0(r26)
005aac  1f884b00  addli r16, r23, 32
005ab0  06b20000  vfp162float_l.rn vr4, vr1
005ab4  86f00000  vfp162float_h.rn vr1, vr1
005ab8  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
005abc  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
005ac0  86320100  vfp162float_l.rn vr5, vr2
005ac4  06b30100  vfp162float_l.rn vr6, vr3
005ac8  06710100  vfp162float_h.rn vr2, vr2
005acc  86f10100  vfp162float_h.rn vr3, vr3
005ad0  8a931a02  vmul.f.mz.rn vr7{mr1}, r21, vr1
005ad4  0a924a02  vmul.f.mz.rn vr4{mr1}, r21, vr4
005ad8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005adc  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
005ae0  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
005ae4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005ae8  06110300  vfloat2fp16_l.rn vr2, vr6
005aec  06d10100  vfloat2fp16_h.rn vr2, vr3
005af0  46002c02  vstore.mz vr2{mr1}, 0(r24)
005af4  cba407ff  ble.s r15, r16, -728
005af8  1f888c00  addli r16, r25, 64
005afc  9f088c00  addli r17, r24, 64
005b00  9f8b8b00  addli r23, r23, 64
005b04  9f8c0c01  addli r25, r25, 128
005b08  1f0c0c01  addli r24, r24, 128
005b0c  4a010802  vloads.mz vr2{mr1}, 0(r16)
005b10  1f088d00  addli r16, r26, 64
005b14  c2810802  vload.mz vr3{mr1}, 0(r17)
005b18  1f0d0d01  addli r26, r26, 128
005b1c  4a020802  vloads.mz vr4{mr1}, 0(r16)
005b20  86b20100  vfp162float_l.rn vr5, vr3
005b24  86f10100  vfp162float_h.rn vr3, vr3
005b28  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
005b2c  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
005b30  06330100  vfp162float_l.rn vr6, vr2
005b34  06710100  vfp162float_h.rn vr2, vr2
005b38  8a925a02  vmul.f.mz.rn vr5{mr1}, r21, vr5
005b3c  8a913a02  vmul.f.mz.rn vr3{mr1}, r21, vr3
005b40  86330200  vfp162float_l.rn vr7, vr4
005b44  06720200  vfp162float_h.rn vr4, vr4
005b48  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
005b4c  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
005b50  86900300  vfloat2fp16_l.rn vr1, vr7
005b54  86500200  vfloat2fp16_h.rn vr1, vr4
005b58  46801802  vstore.mz vr1{mr1}, 0(r17)
005b5c  3f9dfbfe  blt.s r23, r15, -188
005b60  db97ffff  j -836
005b64  9f000040  addli r1, zero, 8192
005b68  2b0100f0  lui r2, 983040
005b6c  97902000  or r1, r1, r2
005b70  2b310200  lui r2, 35
005b74  1f010100  addli r2, r2, 0
005b78  ff002300  l_gm2sm r1, r2, 0(r[7:8])
005b7c  db070000  j 60
005b80  63012f00  loadli.w r2,  16(r30)
005b84  ab0100f0  lui r3, 983040
005b88  1b312100  slli r2, r2, 2
005b8c  17113100  or r2, r2, r3
005b90  ab810200  lui r3, 40
005b94  9f810108  addli r3, r3, 1024
005b98  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005b9c  dbef0000  j 1916
005ba0  9f000040  addli r1, zero, 8192
005ba4  2b0100f0  lui r2, 983040
005ba8  97902000  or r1, r1, r2
005bac  2b510200  lui r2, 37
005bb0  1f010100  addli r2, r2, 0
005bb4  ff002400  l_gm2sm r1, r2, 0(r[9:10])
005bb8  abf00000  lui r1, 15
005bbc  00200300  mfence { sm, gm }
005bc0  1b011500  andi r2, r10, 1
005bc4  9f020006  addli r5, zero, 768
005bc8  9b90f0ff  ori r1, r1, 4095
005bcc  80a10004  csr_set csr3, r1
005bd0  9f000006  addli r1, zero, 768
005bd4  00d00100  sync_group
005bd8  67082fd6  storeli.w r2, -5248(r30)
005bdc  37200100  beq r2, zero, 8
005be0  9f02000a  addli r5, zero, 1280
005be4  63411f00  loadli.w r2,  12(r30)
005be8  9f110000  addli r3, zero, 1
005bec  3f6c3104  blt.s r2, r3, 2840
005bf0  e3010fd7  loadli.w r3,  -5248(r30)
005bf4  00510102  load_param_i r2, 2
005bf8  ab180200  lui r17, 33
005bfc  ab7b0200  lui r23, 39
005c00  2b7e0200  lui r28, 39
005c04  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005c08  9b441500  srli r9, r10, 1
005c0c  1f030000  addli r6, zero, 0
005c10  1bb52200  slli r10, r5, 2
005c14  1f078fd7  addli r14, r30, -5184
005c18  1f090005  addli r18, zero, 640
005c1c  1f0a0001  addli r20, zero, 128
005c20  9f0a8000  addli r21, zero, 64
005c24  1f0b4000  addli r22, zero, 32
005c28  9f0d0003  addli r27, zero, 384
005c2c  1b441100  srli r8, r2, 1
005c30  2b310200  lui r2, 35
005c34  9f880800  addli r17, r17, 0
005c38  9f8b0b00  addli r23, r23, 0
005c3c  1f0e0e04  addli r28, r28, 512
005c40  8b901120  mul.s r1, r3, r1
005c44  1f010100  addli r2, r2, 0
005c48  67041fd6  storeli.w r1, -5312(r30)
005c4c  9bb02000  slli r1, r1, 2
005c50  8b952010  add.s r11, r1, r2
005c54  2b510200  lui r2, 37
005c58  1f010100  addli r2, r2, 0
005c5c  0b962010  add.s r12, r1, r2
005c60  abf0ffff  lui r1, 1048575
005c64  1f018fd5  addli r2, r30, -5440
005c68  9b9000f8  ori r1, r1, 3968
005c6c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005c70  63411f00  loadli.w r2,  12(r30)
005c74  67081fd4  storeli.w r1, -5504(r30)
005c78  abf00000  lui r1, 15
005c7c  1b9cf0ff  ori r24, r1, 4095
005c80  5b040000  j 32
005c84  00a00300  mfence { lm, sm, gm }
005c88  80210c04  csr_set csr3, r24
005c8c  00d00100  sync_group
005c90  63411f00  loadli.w r2,  12(r30)
005c94  0b138310  add.s r6, r6, r8
005c98  3f202300  blt.s r6, r2, 8
005c9c  dbfaf5ff  j -20524
005ca0  8b109310  add.s r1, r6, r9
005ca4  cb0f11fe  ble.s r2, r1, -32
005ca8  63011f00  loadli.w r2,  8(r30)
005cac  9f210000  addli r3, zero, 2
005cb0  1f027fd6  addli r4, r30, -5320
005cb4  8b902010  add.s r1, r1, r2
005cb8  63018fd6  loadli.w r2,  -5312(r30)
005cbc  9bb0b000  slli r1, r1, 11
005cc0  97902000  or r1, r1, r2
005cc4  b3900028  sext_int2long r[2:3], r1
005cc8  97b73002  sll.d r[16:17], r[2:3], r3
005ccc  6b510200  load.d r[3:4], 0(r4)
005cd0  ab0000f0  lui r1, 983040
005cd4  97101500  or r1, r10, r1
005cd8  0b21f110  add.ul r[3:4], r[3:4], r[16:17]
005cdc  ff20e100  l_gm2lm r1, r14, 0(r[3:4])
005ce0  00a00200  mfence { lm, gm }
005ce4  e3000fd7  loadli.w r1,  -5248(r30)
005ce8  3ba60000  bneq r1, zero, 392
005cec  9f008fd5  addli r1, r30, -5440
005cf0  e3010fd5  loadli.w r3,  -5504(r30)
005cf4  1f010000  addli r2, zero, 0
005cf8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
005cfc  92303002  vadd.s.mz vr1{mr1}, zero, vr3
005d00  12313002  vadd.s.mz vr2{mr1}, zero, vr3
005d04  12323002  vadd.s.mz vr4{mr1}, zero, vr3
005d08  8b161111  add.s r13, r2, r17
005d0c  8b102710  add.s r1, r14, r2
005d10  9f810101  addli r3, r3, 128
005d14  1f010104  addli r2, r2, 512
005d18  1f820601  addli r4, r13, 128
005d1c  4a900602  vloads_mask16.mz vr0{mr1}, 0(r13)
005d20  9f838600  addli r7, r13, 64
005d24  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
005d28  9f898001  addli r19, r1, 192
005d2c  ca120202  vloads_mask16.mz vr5{mr1}, 0(r4)
005d30  1f828601  addli r4, r13, 192
005d34  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
005d38  9f838000  addli r7, r1, 64
005d3c  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
005d40  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
005d44  1f820001  addli r4, r1, 128
005d48  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
005d4c  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
005d50  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005d54  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
005d58  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005d5c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005d60  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005d64  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
005d68  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
005d6c  1f820602  addli r4, r13, 256
005d70  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005d74  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
005d78  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
005d7c  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
005d80  9f830003  addli r7, r1, 384
005d84  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
005d88  1f828602  addli r4, r13, 320
005d8c  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
005d90  9f890002  addli r19, r1, 256
005d94  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005d98  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
005d9c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005da0  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
005da4  1f820603  addli r4, r13, 384
005da8  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
005dac  9f868603  addli r13, r13, 448
005db0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005db4  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
005db8  1f828002  addli r4, r1, 320
005dbc  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
005dc0  9f808003  addli r1, r1, 448
005dc4  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
005dc8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005dcc  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
005dd0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005dd4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005dd8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005ddc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005de0  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
005de4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005de8  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
005dec  13822105  setlt.u r4, r3, r18
005df0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005df4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005df8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005dfc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005e00  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005e04  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
005e08  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
005e0c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005e10  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005e14  bb5b02fe  bneq r4, zero, -268
005e18  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005e1c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005e20  9f000002  addli r1, zero, 256
005e24  6af100c0  vsrl.p vr2, r1, vr0
005e28  eaf110c0  vsrl.p vr3, r1, vr1
005e2c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005e30  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005e34  6a710ac0  vsrl.p vr2, r20, vr0
005e38  ea711ac0  vsrl.p vr3, r20, vr1
005e3c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005e40  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005e44  6af10ac0  vsrl.p vr2, r21, vr0
005e48  eaf11ac0  vsrl.p vr3, r21, vr1
005e4c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005e50  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005e54  6a710bc0  vsrl.p vr2, r22, vr0
005e58  ea711bc0  vsrl.p vr3, r22, vr1
005e5c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005e60  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005e64  fa130040  vextracti.f r7, 0(vr0)
005e68  fa900040  vextracti.f r1, 0(vr1)
005e6c  5b630000  j 792
005e70  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005e74  abf0ffff  lui r1, 1048575
005e78  1f010000  addli r2, zero, 0
005e7c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005e80  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005e84  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005e88  9b9100f8  ori r3, r1, 3968
005e8c  8b902810  add.s r1, r17, r2
005e90  8b162710  add.s r13, r14, r2
005e94  9f810101  addli r3, r3, 128
005e98  1f010104  addli r2, r2, 512
005e9c  1f8d0031  addli r26, r1, 6272
005ea0  9f830030  addli r7, r1, 6144
005ea4  1f828031  addli r4, r1, 6336
005ea8  9f8c0618  addli r25, r13, 3072
005eac  ca130d02  vloads_mask16.mz vr7{mr1}, 0(r26)
005eb0  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
005eb4  9f838030  addli r7, r1, 6208
005eb8  ca140202  vloads_mask16.mz vr9{mr1}, 0(r4)
005ebc  1f828618  addli r4, r13, 3136
005ec0  1f8d8619  addli r26, r13, 3264
005ec4  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
005ec8  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
005ecc  9f830619  addli r7, r13, 3200
005ed0  42100d02  vload_mask16.mz vr0{mr1}, 0(r26)
005ed4  c2150202  vload_mask16.mz vr11{mr1}, 0(r4)
005ed8  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
005edc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005ee0  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
005ee4  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
005ee8  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
005eec  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005ef0  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
005ef4  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
005ef8  9f830032  addli r7, r1, 6400
005efc  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
005f00  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
005f04  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005f08  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
005f0c  9f8c061a  addli r25, r13, 3328
005f10  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
005f14  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
005f18  1f82861b  addli r4, r13, 3520
005f1c  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
005f20  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
005f24  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
005f28  9f838032  addli r7, r1, 6464
005f2c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005f30  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005f34  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
005f38  9f830033  addli r7, r1, 6528
005f3c  9f808033  addli r1, r1, 6592
005f40  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
005f44  9f83861a  addli r7, r13, 3392
005f48  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
005f4c  9f80061b  addli r1, r13, 3456
005f50  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
005f54  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005f58  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
005f5c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005f60  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
005f64  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005f68  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005f6c  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
005f70  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005f74  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
005f78  9383b105  setlt.u r7, r3, r27
005f7c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005f80  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005f84  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005f88  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005f8c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005f90  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005f94  46107202  vstore_mask16.mz vr7{mr1}, 0(r4)
005f98  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005f9c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005fa0  bbbb03fe  bneq r7, zero, -276
005fa4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005fa8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005fac  9f000002  addli r1, zero, 256
005fb0  9f060000  addli r13, zero, 0
005fb4  eaf110c0  vsrl.p vr3, r1, vr1
005fb8  6af100c0  vsrl.p vr2, r1, vr0
005fbc  abf0ffff  lui r1, 1048575
005fc0  1b9d00f8  ori r26, r1, 3968
005fc4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005fc8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005fcc  ea711ac0  vsrl.p vr3, r20, vr1
005fd0  6a710ac0  vsrl.p vr2, r20, vr0
005fd4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005fd8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005fdc  eaf11ac0  vsrl.p vr3, r21, vr1
005fe0  6af10ac0  vsrl.p vr2, r21, vr0
005fe4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005fe8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005fec  ea711bc0  vsrl.p vr3, r22, vr1
005ff0  6a710bc0  vsrl.p vr2, r22, vr0
005ff4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005ff8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005ffc  fa910040  vextracti.f r3, 0(vr1)
006000  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
006004  7a110040  vextracti.f r2, 0(vr0)
006008  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00600c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
006010  92311002  vadd.s.mz vr3{mr1}, zero, vr1
006014  8b9cd810  add.s r25, r17, r13
006018  8b10d710  add.s r1, r14, r13
00601c  1f0d0d01  addli r26, r26, 128
006020  9f860604  addli r13, r13, 512
006024  1f820c18  addli r4, r25, 3072
006028  9f830c19  addli r7, r25, 3200
00602c  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
006030  9f898001  addli r19, r1, 192
006034  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
006038  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
00603c  1f828c18  addli r4, r25, 3136
006040  9f838c19  addli r7, r25, 3264
006044  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
006048  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
00604c  1f820001  addli r4, r1, 128
006050  ca930302  vloads_mask16.mz vr7{mr1}, 0(r7)
006054  9f838000  addli r7, r1, 64
006058  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
00605c  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
006060  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
006064  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
006068  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00606c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
006070  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
006074  1f820c1a  addli r4, r25, 3328
006078  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00607c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
006080  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
006084  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
006088  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00608c  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
006090  1f828c1a  addli r4, r25, 3392
006094  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
006098  9f890002  addli r19, r1, 256
00609c  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
0060a0  9f830003  addli r7, r1, 384
0060a4  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0060a8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0060ac  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
0060b0  1f820c1b  addli r4, r25, 3456
0060b4  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
0060b8  9f8c8c1b  addli r25, r25, 3520
0060bc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0060c0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0060c4  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
0060c8  1f828002  addli r4, r1, 320
0060cc  4a950c02  vloads_mask16.mz vr10{mr1}, 0(r25)
0060d0  9f808003  addli r1, r1, 448
0060d4  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
0060d8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0060dc  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
0060e0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0060e4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0060e8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0060ec  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0060f0  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
0060f4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0060f8  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
0060fc  13022d05  setlt.u r4, r26, r18
006100  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
006104  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
006108  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00610c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
006110  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
006114  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
006118  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
00611c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
006120  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006124  bb4b02fe  bneq r4, zero, -272
006128  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00612c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006130  9f000002  addli r1, zero, 256
006134  6af100c0  vsrl.p vr2, r1, vr0
006138  eaf110c0  vsrl.p vr3, r1, vr1
00613c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006140  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006144  6a710ac0  vsrl.p vr2, r20, vr0
006148  ea711ac0  vsrl.p vr3, r20, vr1
00614c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006150  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006154  6af10ac0  vsrl.p vr2, r21, vr0
006158  eaf11ac0  vsrl.p vr3, r21, vr1
00615c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006160  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006164  6a710bc0  vsrl.p vr2, r22, vr0
006168  ea711bc0  vsrl.p vr3, r22, vr1
00616c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006170  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006174  fa100040  vextracti.f r1, 0(vr0)
006178  7a920040  vextracti.f r4, 0(vr1)
00617c  8b631110  add.f.rn r7, r2, r1
006180  8be04110  add.f.rn r1, r3, r4
006184  8b018330  div.u r3, r6, r8
006188  00320002  core_id r4
00618c  1f010000  addli r2, zero, 0
006190  1f0d0000  addli r26, zero, 0
006194  9bb16100  slli r3, r3, 6
006198  9b810104  andi r3, r3, 64
00619c  97914100  or r3, r3, r4
0061a0  1bb22100  slli r4, r3, 2
0061a4  9b81e107  andi r3, r3, 126
0061a8  8b167211  add.s r13, r4, r23
0061ac  9bb12100  slli r3, r3, 2
0061b0  73e07600  stores.w r7, 0(r13)
0061b4  8b13c211  add.s r7, r4, r28
0061b8  1b124200  ori r4, r4, 4
0061bc  73e01300  stores.w r1, 0(r7)
0061c0  8b107211  add.s r1, r4, r23
0061c4  8b937111  add.s r7, r3, r23
0061c8  0b12c211  add.s r4, r4, r28
0061cc  8b91c111  add.s r3, r3, r28
0061d0  00a00300  mfence { lm, sm, gm }
0061d4  80210c04  csr_set csr3, r24
0061d8  00d00100  sync_group
0061dc  efc00000  loads.w r1, 0(r1)
0061e0  efc30300  loads.w r7, 0(r7)
0061e4  6f420200  loads.w r4, 0(r4)
0061e8  efc10100  loads.w r3, 0(r3)
0061ec  8be07010  add.f.rn r1, r1, r7
0061f0  8b613210  add.f.rn r3, r4, r3
0061f4  2b02003a  lui r4, 237568
0061f8  8be04020  mul.f.rn r1, r1, r4
0061fc  8be14120  mul.f.rn r3, r3, r4
006200  0be21020  mul.f.rn r4, r1, r1
006204  8be60058  neg.f r13, r1
006208  8be14118  sub.f.rn r3, r3, r4
00620c  63023f00  loadli.w r4,  24(r30)
006210  8be14110  add.f.rn r3, r3, r4
006214  2b02803f  lui r4, 260096
006218  8f810108  sqrt.f.rn r3, r3
00621c  8f013218  div.f.rn r3, r4, r3
006220  8b902510  add.s r1, r11, r2
006224  8b1c2710  add.s r25, r14, r2
006228  8b132610  add.s r7, r12, r2
00622c  9f898000  addli r19, r1, 64
006230  1f828c00  addli r4, r25, 64
006234  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
006238  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
00623c  4a920302  vloads_mask16.mz vr4{mr1}, 0(r7)
006240  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
006244  9f898300  addli r19, r7, 64
006248  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
00624c  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
006250  9f094d00  addli r19, r26, 32
006254  12900602  vadd.f.mz.rn vr0{mr1}, r13, vr0
006258  93893207  setle.u r19, r5, r19
00625c  92901602  vadd.f.mz.rn vr1{mr1}, r13, vr1
006260  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
006264  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
006268  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
00626c  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
006270  46904c02  vstore_mask16.mz vr4{mr1}, 0(r25)
006274  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
006278  bb910900  bneq r19, zero, 100
00627c  1f820c01  addli r4, r25, 128
006280  9f898c01  addli r19, r25, 192
006284  9f8c0001  addli r25, r1, 128
006288  9f808001  addli r1, r1, 192
00628c  1f0d8d00  addli r26, r26, 64
006290  1f010102  addli r2, r2, 256
006294  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
006298  9f8c0301  addli r25, r7, 128
00629c  9f838301  addli r7, r7, 192
0062a0  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0062a4  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
0062a8  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
0062ac  93005d04  setlt.u r1, r26, r5
0062b0  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
0062b4  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
0062b8  12900602  vadd.f.mz.rn vr0{mr1}, r13, vr0
0062bc  92901602  vadd.f.mz.rn vr1{mr1}, r13, vr1
0062c0  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
0062c4  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
0062c8  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
0062cc  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0062d0  46103202  vstore_mask16.mz vr3{mr1}, 0(r4)
0062d4  46905902  vstore_mask16.mz vr5{mr1}, 0(r19)
0062d8  3bad00fe  bneq r1, zero, -184
0062dc  6b510f00  load.d r[3:4], 0(r30)
0062e0  ab0000f0  lui r1, 983040
0062e4  00a00000  mfence { lm }
0062e8  97101500  or r1, r10, r1
0062ec  0b21f110  add.ul r[3:4], r[3:4], r[16:17]
0062f0  ff30e100  s_lm2gm r1, r14, 0(r[3:4])
0062f4  00a00200  mfence { lm, gm }
0062f8  5b33ffff  j -1640
0062fc  63012f00  loadli.w r2,  16(r30)
006300  ab0100f0  lui r3, 983040
006304  1b312100  slli r2, r2, 2
006308  17113100  or r2, r2, r3
00630c  ab910200  lui r3, 41
006310  9f810108  addli r3, r3, 1024
006314  7f013400  l_gm2sm r2, r3, 0(r[9:10])
006318  2bf10000  lui r2, 15
00631c  e3411f00  loadli.w r3,  12(r30)
006320  00200300  mfence { sm, gm }
006324  1b11f1ff  ori r2, r2, 4095
006328  80210104  csr_set csr3, r2
00632c  00d00100  sync_group
006330  4bdf1100  ble.s r3, r1, 980
006334  e3012f00  loadli.w r3,  16(r30)
006338  e3422f00  loadli.w r5,  20(r30)
00633c  ab780200  lui r17, 39
006340  2b890200  lui r18, 40
006344  ab990200  lui r19, 41
006348  9f038fd7  addli r7, r30, -5184
00634c  1f140000  addli r8, zero, 1
006350  1f050002  addli r10, zero, 256
006354  1f060001  addli r12, zero, 128
006358  9f068000  addli r13, zero, 64
00635c  1f084000  addli r16, zero, 32
006360  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
006364  9f880808  addli r17, r17, 1024
006368  1f090908  addli r18, r18, 1024
00636c  9f890908  addli r19, r19, 1024
006370  0b925110  add.s r4, r3, r5
006374  9bb52100  slli r11, r3, 2
006378  33810108  fix2float.rn r2, r3
00637c  9f71f2ff  addli r3, r4, -1
006380  1bb22200  slli r4, r5, 2
006384  67082fd4  storeli.w r2, -5504(r30)
006388  1f010fd7  addli r2, r30, -5248
00638c  670cbfd4  storeli.w r11, -5440(r30)
006390  8b925130  div.s r5, r3, r5
006394  abf1ffff  lui r3, 1048575
006398  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00639c  9b94f1ff  ori r9, r3, 4095
0063a0  5b080000  j 64
0063a4  1f018fd6  addli r2, r30, -5312
0063a8  00a00000  mfence { lm }
0063ac  6b5a0f00  load.d r[21:22], 0(r30)
0063b0  ab0100f0  lui r3, 983040
0063b4  00530102  load_param_i r6, 2
0063b8  e3058fd5  loadli.w r11,  -5440(r30)
0063bc  6b5b0100  load.d r[23:24], 0(r2)
0063c0  8b101310  add.s r1, r6, r1
0063c4  97913500  or r3, r11, r3
0063c8  0b2a6a11  add.ul r[21:22], r[21:22], r[23:24]
0063cc  ff317a00  s_lm2gm r3, r7, 0(r[21:22])
0063d0  00a00200  mfence { lm, gm }
0063d4  63411f00  loadli.w r2,  12(r30)
0063d8  3fa02000  blt.s r1, r2, 8
0063dc  5b650000  j 808
0063e0  63011f00  loadli.w r2,  8(r30)
0063e4  8b912010  add.s r3, r1, r2
0063e8  1f210000  addli r2, zero, 2
0063ec  8b91f120  mul.s r3, r3, r15
0063f0  339a0128  sext_int2long r[21:22], r3
0063f4  ab0100f0  lui r3, 983040
0063f8  173c2a02  sll.d r[25:26], r[21:22], r2
0063fc  1f017fd6  addli r2, r30, -5320
006400  97913500  or r3, r11, r3
006404  6b5a0100  load.d r[21:22], 0(r2)
006408  1f018fd6  addli r2, r30, -5312
00640c  0b2b8a11  add.ul r[23:24], r[21:22], r[25:26]
006410  ff217b00  l_gm2lm r3, r7, 0(r[23:24])
006414  00a00200  mfence { lm, gm }
006418  73308101  store.d r[25:26], 0(r2)
00641c  bf978200  blt.s r5, r8, 484
006420  9f0b0000  addli r23, zero, 0
006424  1f0b0000  addli r22, zero, 0
006428  1f0c0000  addli r24, zero, 0
00642c  db0c0000  j 100
006430  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
006434  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006438  1f1c0c00  addli r24, r24, 1
00643c  6a7105c0  vsrl.p vr2, r10, vr0
006440  ea7115c0  vsrl.p vr3, r10, vr1
006444  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006448  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00644c  6a7106c0  vsrl.p vr2, r12, vr0
006450  ea7116c0  vsrl.p vr3, r12, vr1
006454  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006458  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00645c  6af106c0  vsrl.p vr2, r13, vr0
006460  eaf116c0  vsrl.p vr3, r13, vr1
006464  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006468  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00646c  6a7108c0  vsrl.p vr2, r16, vr0
006470  ea7118c0  vsrl.p vr3, r16, vr1
006474  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006478  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00647c  7a110040  vextracti.f r2, 0(vr0)
006480  fa910040  vextracti.f r3, 0(vr1)
006484  8beb2b10  add.f.rn r23, r23, r2
006488  0b6b3b10  add.f.rn r22, r22, r3
00648c  b7755c00  beq r24, r5, 380
006490  9f010c00  addli r3, r24, 0
006494  3730a700  beq r14, r10, 12
006498  97219c00  xor r3, r24, r9
00649c  8b913210  add.s r3, r5, r3
0064a0  1f010fd7  addli r2, r30, -5248
0064a4  0b93e120  mul.s r6, r3, r14
0064a8  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0064ac  0b936718  sub.s r6, r15, r6
0064b0  8b1ce340  min.s r25, r6, r14
0064b4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0064b8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0064bc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0064c0  bfcd8cfe  blt.s r25, r8, -144
0064c4  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0064c8  1f0d0000  addli r26, zero, 0
0064cc  8b1d3220  mul.s r27, r4, r3
0064d0  1f0e8fd7  addli r28, r30, -5184
0064d4  9f850800  addli r11, r17, 0
0064d8  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0064dc  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0064e0  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0064e4  8b91b511  add.s r3, r11, r27
0064e8  0b13be11  add.s r6, r28, r27
0064ec  1f818100  addli r2, r3, 64
0064f0  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
0064f4  1f8a8101  addli r20, r3, 192
0064f8  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
0064fc  9f0a8301  addli r21, r6, 192
006500  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
006504  1f810101  addli r2, r3, 128
006508  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
00650c  1f0a0301  addli r20, r6, 128
006510  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
006514  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
006518  c2150a02  vload_mask16.mz vr11{mr1}, 0(r20)
00651c  1f018300  addli r2, r6, 64
006520  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
006524  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
006528  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
00652c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
006530  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
006534  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006538  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00653c  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
006540  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
006544  1f018d00  addli r2, r26, 64
006548  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
00654c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
006550  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006554  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
006558  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00655c  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
006560  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
006564  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
006568  4bab2cfe  ble.s r25, r2, -312
00656c  1f8a0102  addli r20, r3, 256
006570  9f8a8102  addli r21, r3, 320
006574  1f010302  addli r2, r6, 256
006578  1f0d0d01  addli r26, r26, 128
00657c  9f850504  addli r11, r11, 512
006580  1f0e0e04  addli r28, r28, 512
006584  4a100a02  vloads_mask16.mz vr0{mr1}, 0(r20)
006588  1f8a0103  addli r20, r3, 384
00658c  9f818103  addli r3, r3, 448
006590  ca920a02  vloads_mask16.mz vr5{mr1}, 0(r21)
006594  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
006598  ca130a02  vloads_mask16.mz vr7{mr1}, 0(r20)
00659c  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
0065a0  9f010303  addli r3, r6, 384
0065a4  1f0a8302  addli r20, r6, 320
0065a8  1f038303  addli r6, r6, 448
0065ac  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
0065b0  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
0065b4  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0065b8  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
0065bc  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0065c0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0065c4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0065c8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0065cc  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0065d0  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
0065d4  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0065d8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0065dc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0065e0  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
0065e4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0065e8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0065ec  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0065f0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0065f4  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0065f8  bf3b9dff  blt.s r26, r25, -276
0065fc  dbc6ffff  j -460
006600  1f0b0000  addli r22, zero, 0
006604  9f0b0000  addli r23, zero, 0
006608  00a00000  mfence { lm }
00660c  3fe687fe  blt.s r15, r8, -616
006610  63010fd5  loadli.w r2,  -5504(r30)
006614  9f050000  addli r11, zero, 0
006618  1f0c0000  addli r24, zero, 0
00661c  8f812b18  div.f.rn r3, r23, r2
006620  0f032b18  div.f.rn r6, r22, r2
006624  63013f00  loadli.w r2,  24(r30)
006628  0beb3120  mul.f.rn r22, r3, r3
00662c  8beb0158  neg.f r23, r3
006630  0b636319  sub.f.rn r6, r6, r22
006634  0b632310  add.f.rn r6, r6, r2
006638  2b01803f  lui r2, 260096
00663c  0f030308  sqrt.f.rn r6, r6
006640  0f0b6118  div.f.rn r22, r2, r6
006644  0b932511  add.s r6, r11, r18
006648  8b91b310  add.s r3, r7, r11
00664c  9f0c8300  addli r25, r6, 64
006650  4a110302  vloads_mask16.mz vr2{mr1}, 0(r6)
006654  0b933511  add.s r6, r11, r19
006658  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00665c  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
006660  9f8c8100  addli r25, r3, 64
006664  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
006668  1f038300  addli r6, r6, 64
00666c  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
006670  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
006674  1f034c00  addli r6, r24, 32
006678  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
00667c  92925b02  vadd.f.mz.rn vr5{mr1}, r23, vr5
006680  8a101b02  vmul.f.mz.rn vr1{mr1}, r22, vr1
006684  8a125b02  vmul.f.mz.rn vr5{mr1}, r22, vr5
006688  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
00668c  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
006690  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
006694  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
006698  4bb467fe  ble.s r15, r6, -756
00669c  0b13b910  add.s r6, r18, r11
0066a0  8b9cb910  add.s r25, r19, r11
0066a4  1f0c8c00  addli r24, r24, 64
0066a8  9f850502  addli r11, r11, 256
0066ac  1f0d0301  addli r26, r6, 128
0066b0  9f8d0c01  addli r27, r25, 128
0066b4  1f038301  addli r6, r6, 192
0066b8  9f8c8c01  addli r25, r25, 192
0066bc  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
0066c0  1f8d0101  addli r26, r3, 128
0066c4  9f818101  addli r3, r3, 192
0066c8  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
0066cc  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
0066d0  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
0066d4  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
0066d8  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0066dc  92913b02  vadd.f.mz.rn vr3{mr1}, r23, vr3
0066e0  12924b02  vadd.f.mz.rn vr4{mr1}, r23, vr4
0066e4  8a113b02  vmul.f.mz.rn vr3{mr1}, r22, vr3
0066e8  0a124b02  vmul.f.mz.rn vr4{mr1}, r22, vr4
0066ec  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
0066f0  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
0066f4  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
0066f8  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
0066fc  3f2dfcfe  blt.s r24, r15, -184
006700  db94ffff  j -860
006704  9f0e8fd3  addli sp, r30, -5696
006708  e38f2e2c  loadli.w r31,  5648(sp)
00670c  63cf2e2c  loadli.w r30,  5652(sp)
006710  638e3e2c  loadli.w r28,  5656(sp)
006714  e3cd3e2c  loadli.w r27,  5660(sp)
006718  638d4e2c  loadli.w r26,  5664(sp)
00671c  e3cc4e2c  loadli.w r25,  5668(sp)
006720  638c5e2c  loadli.w r24,  5672(sp)
006724  e3cb5e2c  loadli.w r23,  5676(sp)
006728  638b6e2c  loadli.w r22,  5680(sp)
00672c  e3ca6e2c  loadli.w r21,  5684(sp)
006730  638a7e2c  loadli.w r20,  5688(sp)
006734  e3c97e2c  loadli.w r19,  5692(sp)
006738  9f8e8e2c  addli sp, sp, 5696
00673c  5f800f00  jr r31, 0
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
00697c  00100000  exit
