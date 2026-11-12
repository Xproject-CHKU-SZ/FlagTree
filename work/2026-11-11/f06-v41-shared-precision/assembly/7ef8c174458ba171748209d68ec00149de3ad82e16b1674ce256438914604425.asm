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
00010c  1f0d0002  addli r26, zero, 256
000110  9f0d0008  addli r27, zero, 1024
000114  1f0e2000  addli r28, zero, 16
000118  9b99f026  ori r19, r1, 623
00011c  8b908a31  div.s r1, r21, r24
000120  1f420000  addli r4, zero, 4
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
000158  9bb04000  slli r1, r1, 4
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
0001c0  9f057fd6  addli r11, r30, -5320
0001c4  73b02500  store.d r[3:4], 0(r11)
0001c8  3f511500  blt.s r10, r1, 84
0001cc  1f110000  addli r2, zero, 1
0001d0  b7db2004  beq r1, r2, 2804
0001d4  1f210000  addli r2, zero, 2
0001d8  bb9a2004  bneq r1, r2, 2724
0001dc  e3403f00  loadli.w r1,  28(r30)
0001e0  b7bf0012  beq r1, zero, 10220
0001e4  80300002  core_id r1
0001e8  1f210000  addli r2, zero, 2
0001ec  b7ae2026  beq r1, r2, 20392
0001f0  1f110000  addli r2, zero, 1
0001f4  b78d2026  beq r1, r2, 20320
0001f8  bbee0026  bneq r1, zero, 20408
0001fc  63012f00  loadli.w r2,  16(r30)
000200  ab0100f0  lui r3, 983040
000204  1b311100  slli r2, r2, 1
000208  17113100  or r2, r2, r3
00020c  ab910100  lui r3, 25
000210  9f810100  addli r3, r3, 0
000214  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000218  5bf30900  j 20376
00021c  1f310000  addli r2, zero, 3
000220  b79b2004  beq r1, r2, 2788
000224  1f410000  addli r2, zero, 4
000228  3bd92004  bneq r1, r2, 2644
00022c  e3002f00  loadli.w r1,  16(r30)
000230  1f010010  addli r2, zero, 2048
000234  3bb0200a  bneq r1, r2, 5132
000238  e3403f00  loadli.w r1,  28(r30)
00023c  b7c1001a  beq r1, zero, 13424
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
0003cc  bfcc6130  blt.s r3, r6, 25392
0003d0  e3018fd5  loadli.w r3,  -5440(r30)
0003d4  1f0a8fd7  addli r20, r30, -5184
0003d8  1bb71200  slli r14, r5, 1
0003dc  9f030000  addli r7, zero, 0
0003e0  9f7c7000  addli r25, zero, 63
0003e4  9f0d0005  addli r27, zero, 640
0003e8  ab06803f  lui r13, 260096
0003ec  1f062000  addli r12, zero, 16
0003f0  1f3b0000  addli r22, zero, 3
0003f4  1f5e1000  addli r28, zero, 13
0003f8  2bec0700  lui r24, 126
0003fc  1f2d1000  addli r26, zero, 10
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
00042c  0b114711  add.s r2, r14, r20
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
000460  e70fefd2  storeli.w r14, -5640(r30)
000464  9b9000f8  ori r1, r1, 3968
000468  674e1fd2  storeli.w r1, -5660(r30)
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
0004ac  dbf70000  j 1980
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
0004e0  17b86402  sll.d r[17:18], r[10:11], r6
0004e4  ebd40100  load.d r[10:11], 0(r3)
0004e8  9f018fd6  addli r3, r30, -5312
0004ec  97101700  or r1, r14, r1
0004f0  1b010104  andi r2, r2, 64
0004f4  73b00101  store.d r[17:18], 0(r3)
0004f8  8ba40411  add.ul r[10:11], r[10:11], r[17:18]
0004fc  ffa04401  l_gm2lm r1, r20, 0(r[10:11])
000500  80300002  core_id r1
000504  00a00200  mfence { lm, gm }
000508  97181100  or r17, r2, r1
00050c  6341dfd3  loadli.w r2,  -5652(r30)
000510  e301efd3  loadli.w r3,  -5648(r30)
000514  e344efd3  loadli.w r9,  -5644(r30)
000518  c2000102  vload.mz vr1{mr1}, 0(r2)
00051c  9f84c4ff  addli r9, r9, -32
000520  9f8581ff  addli r11, r3, -64
000524  1f0181ff  addli r2, r2, -64
000528  13859c04  setlt.u r10, r25, r9
00052c  66c111a0  vmerge_h.hf vr2, vr3, vr1
000530  e6c01180  vmerge_l.hf vr1, vr3, vr1
000534  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
000538  9f8101ff  addli r3, r3, -128
00053c  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
000540  3b6f05fe  bneq r10, zero, -40
000544  00a00000  mfence { lm }
000548  1f070003  addli r14, zero, 384
00054c  e3008fd5  loadli.w r1,  -5440(r30)
000550  3bb60000  bneq r1, zero, 396
000554  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000558  12313002  vadd.s.mz vr2{mr1}, zero, vr3
00055c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000560  e341cfd3  loadli.w r3,  -5660(r30)
000564  1f010000  addli r2, zero, 0
000568  0b15f110  add.s r10, r2, r15
00056c  8b142a10  add.s r9, r20, r2
000570  9f810101  addli r3, r3, 128
000574  1f010104  addli r2, r2, 512
000578  9f000501  addli r1, r10, 128
00057c  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
000580  9f058500  addli r11, r10, 64
000584  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
000588  1f888401  addli r16, r9, 192
00058c  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
000590  9f008501  addli r1, r10, 192
000594  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
000598  9f858400  addli r11, r9, 64
00059c  c2150802  vload_mask16.mz vr11{mr1}, 0(r16)
0005a0  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
0005a4  9f800401  addli r1, r9, 128
0005a8  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
0005ac  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0005b0  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0005b4  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0005b8  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0005bc  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0005c0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0005c4  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
0005c8  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0005cc  9f000502  addli r1, r10, 256
0005d0  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0005d4  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0005d8  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0005dc  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
0005e0  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0005e4  9f008502  addli r1, r10, 320
0005e8  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0005ec  1f880402  addli r16, r9, 256
0005f0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0005f4  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0005f8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0005fc  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
000600  9f000503  addli r1, r10, 384
000604  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000608  1f058503  addli r10, r10, 448
00060c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000610  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
000614  9f808402  addli r1, r9, 320
000618  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
00061c  1f850403  addli r10, r9, 384
000620  9f848403  addli r9, r9, 448
000624  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000628  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00062c  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
000630  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000634  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
000638  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00063c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000640  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
000644  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000648  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
00064c  9380b105  setlt.u r1, r3, r27
000650  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000654  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000658  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00065c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000660  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000664  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
000668  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
00066c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000670  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000674  bbdb00fe  bneq r1, zero, -268
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
0006d0  fa140040  vextracti.f r9, 0(vr0)
0006d4  fa910040  vextracti.f r3, 0(vr1)
0006d8  5b670000  j 824
0006dc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0006e0  abf0ffff  lui r1, 1048575
0006e4  1f010000  addli r2, zero, 0
0006e8  e70e1fd3  storeli.w r17, -5656(r30)
0006ec  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0006f0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0006f4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0006f8  9b9100f8  ori r3, r1, 3968
0006fc  8b942710  add.s r9, r15, r2
000700  0b152a10  add.s r10, r20, r2
000704  9f810101  addli r3, r3, 128
000708  1f010104  addli r2, r2, 512
00070c  9f880431  addli r17, r9, 6272
000710  9f850430  addli r11, r9, 6144
000714  9f808431  addli r1, r9, 6336
000718  1f080518  addli r16, r10, 3072
00071c  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
000720  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
000724  9f858430  addli r11, r9, 6208
000728  ca940002  vloads_mask16.mz vr9{mr1}, 0(r1)
00072c  9f008518  addli r1, r10, 3136
000730  9f088519  addli r17, r10, 3264
000734  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
000738  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
00073c  9f050519  addli r11, r10, 3200
000740  42900802  vload_mask16.mz vr0{mr1}, 0(r17)
000744  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
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
00077c  1f08051a  addli r16, r10, 3328
000780  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000784  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000788  9f00051b  addli r1, r10, 3456
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
0007b4  9f05851a  addli r11, r10, 3392
0007b8  4a950402  vloads_mask16.mz vr10{mr1}, 0(r9)
0007bc  9f04851b  addli r9, r10, 3520
0007c0  1385e104  setlt.u r10, r3, r14
0007c4  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
0007c8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0007cc  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0007d0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0007d4  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
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
000800  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000804  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000808  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00080c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000810  bb3b05fe  bneq r10, zero, -276
000814  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000818  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00081c  9f000002  addli r1, zero, 256
000820  1f050000  addli r10, zero, 0
000824  eaf110c0  vsrl.p vr3, r1, vr1
000828  6af100c0  vsrl.p vr2, r1, vr0
00082c  9f000001  addli r1, zero, 128
000830  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000834  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000838  eaf110c0  vsrl.p vr3, r1, vr1
00083c  6af100c0  vsrl.p vr2, r1, vr0
000840  9f008000  addli r1, zero, 64
000844  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000848  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00084c  eaf110c0  vsrl.p vr3, r1, vr1
000850  6af100c0  vsrl.p vr2, r1, vr0
000854  9f004000  addli r1, zero, 32
000858  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00085c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000860  eaf110c0  vsrl.p vr3, r1, vr1
000864  6af100c0  vsrl.p vr2, r1, vr0
000868  abf0ffff  lui r1, 1048575
00086c  9b9500f8  ori r11, r1, 3968
000870  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000874  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000878  fa910040  vextracti.f r3, 0(vr1)
00087c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000880  7a170040  vextracti.f r14, 0(vr0)
000884  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000888  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00088c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000890  0b98a710  add.s r16, r15, r10
000894  8b14aa10  add.s r9, r20, r10
000898  9f850501  addli r11, r11, 128
00089c  1f050504  addli r10, r10, 512
0008a0  9f000818  addli r1, r16, 3072
0008a4  9f080819  addli r17, r16, 3200
0008a8  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
0008ac  1f818401  addli r2, r9, 192
0008b0  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0008b4  ca920802  vloads_mask16.mz vr5{mr1}, 0(r17)
0008b8  9f008818  addli r1, r16, 3136
0008bc  9f088819  addli r17, r16, 3264
0008c0  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
0008c4  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0008c8  9f800401  addli r1, r9, 128
0008cc  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
0008d0  9f888400  addli r17, r9, 64
0008d4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0008d8  42950802  vload_mask16.mz vr10{mr1}, 0(r17)
0008dc  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0008e0  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0008e4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0008e8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0008ec  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0008f0  9f00081a  addli r1, r16, 3328
0008f4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0008f8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0008fc  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
000900  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000904  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
000908  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
00090c  9f00881a  addli r1, r16, 3392
000910  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
000914  1f810402  addli r2, r9, 256
000918  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
00091c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000920  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000924  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
000928  9f00081b  addli r1, r16, 3456
00092c  c2130102  vload_mask16.mz vr7{mr1}, 0(r2)
000930  1f08881b  addli r16, r16, 3520
000934  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000938  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00093c  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
000940  9f808402  addli r1, r9, 320
000944  4a150802  vloads_mask16.mz vr10{mr1}, 0(r16)
000948  1f880403  addli r16, r9, 384
00094c  9f848403  addli r9, r9, 448
000950  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000954  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000958  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
00095c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000960  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
000964  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000968  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00096c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000970  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000974  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000978  9380b505  setlt.u r1, r11, r27
00097c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000980  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000984  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000988  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00098c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000990  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
000994  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000998  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00099c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0009a0  bbcb00fe  bneq r1, zero, -272
0009a4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0009a8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0009ac  9f000002  addli r1, zero, 256
0009b0  e308dfd3  loadli.w r17,  -5656(r30)
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
000a08  8b641710  add.f.rn r9, r14, r1
000a0c  8be12110  add.f.rn r3, r3, r2
000a10  2b650000  lui r10, 6
000a14  ab650000  lui r11, 6
000a18  9bb02800  slli r1, r17, 2
000a1c  1f010000  addli r2, zero, 0
000a20  1f050500  addli r10, r10, 0
000a24  9f850504  addli r11, r11, 512
000a28  1f070500  addli r14, r10, 0
000a2c  1f880500  addli r16, r11, 0
000a30  0b95e010  add.s r10, r1, r14
000a34  8b950011  add.s r11, r1, r16
000a38  9b904000  ori r1, r1, 4
000a3c  73609500  stores.w r9, 0(r10)
000a40  73e03500  stores.w r3, 0(r11)
000a44  8b94e010  add.s r9, r1, r14
000a48  8b900011  add.s r1, r1, r16
000a4c  00a00300  mfence { lm, sm, gm }
000a50  e3010fd7  loadli.w r3,  -5248(r30)
000a54  80a10104  csr_set csr3, r3
000a58  9b81e807  andi r3, r17, 126
000a5c  00d00100  sync_group
000a60  efc40400  loads.w r9, 0(r9)
000a64  efc00000  loads.w r1, 0(r1)
000a68  9bb12100  slli r3, r3, 2
000a6c  0b95e110  add.s r10, r3, r14
000a70  8b910111  add.s r3, r3, r16
000a74  6f450500  loads.w r10, 0(r10)
000a78  efc10100  loads.w r3, 0(r3)
000a7c  8be4a410  add.f.rn r9, r9, r10
000a80  2b05003a  lui r10, 237568
000a84  8be03010  add.f.rn r1, r1, r3
000a88  8be1a420  mul.f.rn r3, r9, r10
000a8c  8be0a020  mul.f.rn r1, r1, r10
000a90  1f050000  addli r10, zero, 0
000a94  8be43120  mul.f.rn r9, r3, r3
000a98  8be10158  neg.f r3, r3
000a9c  8be09018  sub.f.rn r1, r1, r9
000aa0  e3043f00  loadli.w r9,  24(r30)
000aa4  8be09010  add.f.rn r1, r1, r9
000aa8  8f800008  sqrt.f.rn r1, r1
000aac  8f801618  div.f.rn r1, r13, r1
000ab0  8b142910  add.s r9, r18, r2
000ab4  8b152a10  add.s r11, r20, r2
000ab8  0b982910  add.s r16, r19, r2
000abc  1f878400  addli r14, r9, 64
000ac0  9f888500  addli r17, r11, 64
000ac4  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
000ac8  4a910402  vloads_mask16.mz vr2{mr1}, 0(r9)
000acc  4a120802  vloads_mask16.mz vr4{mr1}, 0(r16)
000ad0  ca110702  vloads_mask16.mz vr3{mr1}, 0(r14)
000ad4  1f078800  addli r14, r16, 64
000ad8  c2900802  vload_mask16.mz vr1{mr1}, 0(r17)
000adc  ca120702  vloads_mask16.mz vr5{mr1}, 0(r14)
000ae0  1f074500  addli r14, r10, 32
000ae4  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000ae8  1387e206  setle.u r14, r5, r14
000aec  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000af0  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
000af4  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
000af8  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
000afc  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
000b00  46904502  vstore_mask16.mz vr4{mr1}, 0(r11)
000b04  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
000b08  bb110700  bneq r14, zero, 100
000b0c  9f880401  addli r17, r9, 128
000b10  1f870501  addli r14, r11, 128
000b14  9f858501  addli r11, r11, 192
000b18  9f848401  addli r9, r9, 192
000b1c  1f058500  addli r10, r10, 64
000b20  1f010102  addli r2, r2, 256
000b24  4a910802  vloads_mask16.mz vr2{mr1}, 0(r17)
000b28  9f080801  addli r17, r16, 128
000b2c  1f088801  addli r16, r16, 192
000b30  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
000b34  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
000b38  4a920402  vloads_mask16.mz vr4{mr1}, 0(r9)
000b3c  93045504  setlt.u r9, r10, r5
000b40  ca910802  vloads_mask16.mz vr3{mr1}, 0(r17)
000b44  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
000b48  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000b4c  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000b50  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
000b54  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
000b58  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
000b5c  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
000b60  46103702  vstore_mask16.mz vr3{mr1}, 0(r14)
000b64  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
000b68  3bad04fe  bneq r9, zero, -184
000b6c  9f008fd7  addli r1, r30, -5184
000b70  1f018fd7  addli r2, r30, -5184
000b74  9f010000  addli r3, zero, 0
000b78  00a00000  mfence { lm }
000b7c  9f048100  addli r9, r2, 64
000b80  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
000b84  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000b88  9f814100  addli r3, r3, 32
000b8c  1f010101  addli r2, r2, 128
000b90  ea211622  vor.u.mz vr3{mr1}, r12, vr1
000b94  42910402  vload_mask16.mz vr2{mr1}, 0(r9)
000b98  93845104  setlt.u r9, r3, r5
000b9c  6eb201c2  vsrl.s.mz vr4{mr1}, vr3, vr0
000ba0  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
000ba4  6a324302  vand.s.mz vr4{mr1}, r6, vr4
000ba8  ea313302  vand.s.mz vr3{mr1}, r6, vr3
000bac  16304002  vadd.s.mz vr0{mr1}, vr0, vr4
000bb0  6a221b22  vor.u.mz vr4{mr1}, r22, vr1
000bb4  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
000bb8  ea211e22  vor.u.mz vr3{mr1}, r28, vr1
000bbc  ea201d22  vor.u.mz vr1{mr1}, r26, vr1
000bc0  12b00a02  vadd.s.mz vr0{mr1}, r21, vr0
000bc4  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
000bc8  eeb201c2  vsrl.s.mz vr5{mr1}, vr3, vr0
000bcc  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
000bd0  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
000bd4  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
000bd8  6a325c02  vand.s.mz vr4{mr1}, r24, vr5
000bdc  6a300202  vand.s.mz vr0{mr1}, r4, vr0
000be0  ea313c02  vand.s.mz vr3{mr1}, r24, vr3
000be4  6a312202  vand.s.mz vr2{mr1}, r4, vr2
000be8  6ab00622  vor.s.mz vr0{mr1}, r13, vr0
000bec  6ab24622  vor.s.mz vr4{mr1}, r13, vr4
000bf0  eab13622  vor.s.mz vr3{mr1}, r13, vr3
000bf4  6ab12622  vor.s.mz vr2{mr1}, r13, vr2
000bf8  06100020  vfloat2fp16_l.rz vr0, vr0
000bfc  86d10120  vfloat2fp16_h.rz vr3, vr3
000c00  06500120  vfloat2fp16_h.rz vr0, vr2
000c04  86110220  vfloat2fp16_l.rz vr3, vr4
000c08  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000c0c  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
000c10  ea301402  vand.s.mz vr1{mr1}, r8, vr1
000c14  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
000c18  46800002  vstore.mz vr0{mr1}, 0(r1)
000c1c  9f808000  addli r1, r1, 64
000c20  3bfd04fe  bneq r9, zero, -164
000c24  9f058fd6  addli r11, r30, -5312
000c28  6b510f00  load.d r[3:4], 0(r30)
000c2c  6307ffd3  loadli.w r14,  -5640(r30)
000c30  ab0000f0  lui r1, 983040
000c34  ebd40500  load.d r[10:11], 0(r11)
000c38  00a00000  mfence { lm }
000c3c  97101700  or r1, r14, r1
000c40  0b219110  add.ul r[3:4], r[3:4], r[10:11]
000c44  ff304101  s_lm2gm r1, r20, 0(r[3:4])
000c48  9f000fd5  addli r1, r30, -5504
000c4c  00a00200  mfence { lm, gm }
000c50  e3441f00  loadli.w r9,  12(r30)
000c54  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000c58  e3010fd4  loadli.w r3,  -5632(r30)
000c5c  e345ffd3  loadli.w r11,  -5636(r30)
000c60  8b933310  add.s r7, r7, r3
000c64  3fb193fc  blt.s r7, r9, -1972
000c68  abf00000  lui r1, 15
000c6c  9b90f0ff  ori r1, r1, 4095
000c70  80a10004  csr_set csr3, r1
000c74  00d00100  sync_group
000c78  db500b00  j 23172
000c7c  e3403f00  loadli.w r1,  28(r30)
000c80  37f9000a  beq r1, zero, 5724
000c84  e3002f00  loadli.w r1,  16(r30)
000c88  1f010010  addli r2, zero, 2048
000c8c  3be92012  bneq r1, r2, 9816
000c90  00350002  core_id r10
000c94  9f200000  addli r1, zero, 2
000c98  370c1526  beq r10, r1, 20224
000c9c  9f100000  addli r1, zero, 1
000ca0  b77a1526  beq r10, r1, 20156
000ca4  3b3c0526  bneq r10, zero, 20236
000ca8  9f000040  addli r1, zero, 8192
000cac  2b0100f0  lui r2, 983040
000cb0  97902000  or r1, r1, r2
000cb4  2b110200  lui r2, 33
000cb8  1f010100  addli r2, r2, 0
000cbc  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000cc0  5bde0900  j 20208
000cc4  e3403f00  loadli.w r1,  28(r30)
000cc8  b79a0010  beq r1, zero, 8868
000ccc  80300002  core_id r1
000cd0  1f210000  addli r2, zero, 2
000cd4  b7ea2024  beq r1, r2, 19128
000cd8  1f110000  addli r2, zero, 1
000cdc  37e22022  beq r1, r2, 17560
000ce0  3bab0024  bneq r1, zero, 19144
000ce4  63012f00  loadli.w r2,  16(r30)
000ce8  ab0100f0  lui r3, 983040
000cec  1b311100  slli r2, r2, 1
000cf0  17113100  or r2, r2, r3
000cf4  abd10100  lui r3, 29
000cf8  9f810100  addli r3, r3, 0
000cfc  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000d00  5b550900  j 19112
000d04  e3002f00  loadli.w r1,  16(r30)
000d08  1f010010  addli r2, zero, 2048
000d0c  bb9f2006  bneq r1, r2, 4068
000d10  e3403f00  loadli.w r1,  28(r30)
000d14  37cf001a  beq r1, zero, 14288
000d18  003d0002  core_id r26
000d1c  abd70000  lui r15, 13
000d20  00510102  load_param_i r2, 2
000d24  1f150000  addli r10, zero, 1
000d28  9f058fd7  addli r11, r30, -5184
000d2c  1f068000  addli r12, zero, 64
000d30  9f060010  addli r13, zero, 2048
000d34  9b305d00  slli r1, r26, 5
000d38  9b315100  slli r3, r2, 5
000d3c  9f8707f0  addli r15, r15, -2048
000d40  1f870000  addli r14, r1, 0
000d44  33080728  zext_int2long r[17:18], r14
000d48  2b0900f0  lui r18, 983040
000d4c  1738a802  sll.d r[17:18], r[17:18], r10
000d50  17192601  or r18, r12, r18
000d54  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000d58  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000d5c  1b382700  slli r16, r14, 2
000d60  0b97e110  add.s r14, r3, r14
000d64  00a00200  mfence { lm, gm }
000d68  42800502  vload.mz vr0{mr1}, 0(r11)
000d6c  9308d704  setlt.u r17, r14, r13
000d70  0b18f810  add.s r16, r16, r15
000d74  1f098800  addli r18, r16, 64
000d78  86300000  vfp162float_l.rn vr1, vr0
000d7c  06700000  vfp162float_h.rn vr0, vr0
000d80  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000d84  4e100902  vstores_mask16.mz vr0{mr1}, 0(r18)
000d88  bbfe08fe  bneq r17, zero, -68
000d8c  abf20000  lui r5, 15
000d90  1b357d00  slli r10, r26, 7
000d94  1b327100  slli r4, r2, 7
000d98  1f160000  addli r12, zero, 1
000d9c  9f068fd7  addli r13, r30, -5184
000da0  1f078000  addli r14, zero, 64
000da4  1f080010  addli r16, zero, 2048
000da8  9f880000  addli r17, r1, 0
000dac  00a00000  mfence { lm }
000db0  9f8202f0  addli r5, r5, -2048
000db4  8b155510  add.s r11, r10, r5
000db8  33890828  zext_int2long r[19:20], r17
000dbc  2b0a00f0  lui r20, 983040
000dc0  8b983810  add.s r17, r17, r3
000dc4  1739c902  sll.d r[19:20], r[19:20], r12
000dc8  171a4701  or r20, r14, r20
000dcc  0b292311  add.ul r[19:20], r[7:8], r[19:20]
000dd0  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
000dd4  13890805  setlt.u r18, r17, r16
000dd8  9f898500  addli r19, r11, 64
000ddc  00a00200  mfence { lm, gm }
000de0  42800602  vload.mz vr0{mr1}, 0(r13)
000de4  86300000  vfp162float_l.rn vr1, vr0
000de8  06700000  vfp162float_h.rn vr0, vr0
000dec  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
000df0  8b954510  add.s r11, r11, r4
000df4  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
000df8  3b0f09fe  bneq r18, zero, -64
000dfc  ab130100  lui r7, 17
000e00  9f058fd7  addli r11, r30, -5184
000e04  1f068000  addli r12, zero, 64
000e08  9f060010  addli r13, zero, 2048
000e0c  00a00000  mfence { lm }
000e10  9f8303f0  addli r7, r7, -2048
000e14  0b137510  add.s r6, r10, r7
000e18  1f150000  addli r10, zero, 1
000e1c  33880028  zext_int2long r[17:18], r1
000e20  2b0700f0  lui r14, 983040
000e24  8b903010  add.s r1, r1, r3
000e28  1738a802  sll.d r[17:18], r[17:18], r10
000e2c  1717e600  or r14, r12, r14
000e30  0b280411  add.ul r[17:18], r[9:10], r[17:18]
000e34  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000e38  1387d004  setlt.u r14, r1, r13
000e3c  1f088300  addli r16, r6, 64
000e40  00a00200  mfence { lm, gm }
000e44  42800502  vload.mz vr0{mr1}, 0(r11)
000e48  86300000  vfp162float_l.rn vr1, vr0
000e4c  06700000  vfp162float_h.rn vr0, vr0
000e50  4e101302  vstores_mask16.mz vr1{mr1}, 0(r6)
000e54  0b134310  add.s r6, r6, r4
000e58  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
000e5c  3b0f07fe  bneq r14, zero, -64
000e60  abf00000  lui r1, 15
000e64  00a00300  mfence { lm, sm, gm }
000e68  9b011d00  andi r3, r26, 1
000e6c  1f020006  addli r4, zero, 768
000e70  9b90f0ff  ori r1, r1, 4095
000e74  80a10004  csr_set csr3, r1
000e78  9f000006  addli r1, zero, 768
000e7c  00d00100  sync_group
000e80  67083fd6  storeli.w r3, -5248(r30)
000e84  37a00100  beq r3, zero, 8
000e88  1f02000a  addli r4, zero, 1280
000e8c  e3411f00  loadli.w r3,  12(r30)
000e90  63471f00  loadli.w r14,  12(r30)
000e94  1f130000  addli r6, zero, 1
000e98  bf91612c  blt.s r3, r6, 22628
000e9c  e3010fd7  loadli.w r3,  -5248(r30)
000ea0  1f088fd7  addli r16, r30, -5184
000ea4  1b441100  srli r8, r2, 1
000ea8  1f014200  addli r2, r4, 32
000eac  9b351200  slli r11, r4, 1
000eb0  2b350100  lui r10, 19
000eb4  1f030000  addli r6, zero, 0
000eb8  9b441d00  srli r9, r26, 1
000ebc  1f7a7000  addli r20, zero, 63
000ec0  9f0b0005  addli r23, zero, 640
000ec4  9f0d4000  addli r27, zero, 32
000ec8  1f0b0003  addli r22, zero, 384
000ecc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000ed0  670c2fd4  storeli.w r2, -5440(r30)
000ed4  0b910511  add.s r2, r11, r16
000ed8  1f0505f0  addli r10, r10, -2048
000edc  8b901120  mul.s r1, r3, r1
000ee0  67041fd6  storeli.w r1, -5312(r30)
000ee4  9bb02000  slli r1, r1, 2
000ee8  0b965010  add.s r12, r1, r5
000eec  8b967010  add.s r13, r1, r7
000ef0  9b302200  slli r1, r4, 2
000ef4  ab320100  lui r5, 19
000ef8  8b900011  add.s r1, r1, r16
000efc  9f8202f4  addli r5, r5, -1536
000f00  9f8080ff  addli r1, r1, -64
000f04  67081fd4  storeli.w r1, -5504(r30)
000f08  9f0081ff  addli r1, r2, -64
000f0c  1f010fd4  addli r2, r30, -5632
000f10  67041fd4  storeli.w r1, -5568(r30)
000f14  abf0ffff  lui r1, 1048575
000f18  00a00000  mfence { lm }
000f1c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000f20  9b9000f8  ori r1, r1, 3968
000f24  e74f1fd2  storeli.w r1, -5636(r30)
000f28  abf00000  lui r1, 15
000f2c  1b9ef0ff  ori r28, r1, 4095
000f30  db030000  j 28
000f34  00a00300  mfence { lm, sm, gm }
000f38  80210e04  csr_set csr3, r28
000f3c  00d00100  sync_group
000f40  0b138310  add.s r6, r6, r8
000f44  3f20e300  blt.s r6, r14, 8
000f48  5ba4ffff  j -736
000f4c  8b109310  add.s r1, r6, r9
000f50  cb1f17fe  ble.s r14, r1, -28
000f54  63011f00  loadli.w r2,  8(r30)
000f58  e3018fd6  loadli.w r3,  -5312(r30)
000f5c  8b902010  add.s r1, r1, r2
000f60  0b018330  div.u r2, r6, r8
000f64  9bb0b000  slli r1, r1, 11
000f68  97903000  or r1, r1, r3
000f6c  9f110000  addli r3, zero, 1
000f70  b3980028  sext_int2long r[18:19], r1
000f74  ab0000f0  lui r1, 983040
000f78  1b316100  slli r2, r2, 6
000f7c  97b83802  sll.d r[18:19], r[18:19], r3
000f80  9f017fd6  addli r3, r30, -5320
000f84  97901500  or r1, r11, r1
000f88  1b010104  andi r2, r2, 64
000f8c  6bdc0100  load.d r[25:26], 0(r3)
000f90  1717a101  or r14, r2, r26
000f94  0b2c1c11  add.ul r[25:26], r[25:26], r[18:19]
000f98  ff200c01  l_gm2lm r1, r16, 0(r[25:26])
000f9c  00a00200  mfence { lm, gm }
000fa0  e3008fd4  loadli.w r1,  -5568(r30)
000fa4  63010fd5  loadli.w r2,  -5504(r30)
000fa8  e3018fd5  loadli.w r3,  -5440(r30)
000fac  c2800002  vload.mz vr1{mr1}, 0(r1)
000fb0  9f81c1ff  addli r3, r3, -32
000fb4  9f0981ff  addli r19, r2, -64
000fb8  9f8080ff  addli r1, r1, -64
000fbc  93033a04  setlt.u r7, r20, r3
000fc0  06f10000  vfp162float_h.rn vr2, vr1
000fc4  86b00000  vfp162float_l.rn vr1, vr1
000fc8  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
000fcc  1f0101ff  addli r2, r2, -128
000fd0  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
000fd4  3bef03fe  bneq r7, zero, -40
000fd8  00a00000  mfence { lm }
000fdc  e3000fd7  loadli.w r1,  -5248(r30)
000fe0  3bc60000  bneq r1, zero, 400
000fe4  9f000fd4  addli r1, r30, -5632
000fe8  e341ffd3  loadli.w r3,  -5636(r30)
000fec  1f010000  addli r2, zero, 0
000ff0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000ff4  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000ff8  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000ffc  12323002  vadd.s.mz vr4{mr1}, zero, vr3
001000  8b10f110  add.s r1, r2, r15
001004  8b132810  add.s r7, r16, r2
001008  9f810101  addli r3, r3, 128
00100c  1f010104  addli r2, r2, 512
001010  9f890001  addli r19, r1, 128
001014  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
001018  9f8a8000  addli r21, r1, 64
00101c  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
001020  1f8c8301  addli r24, r7, 192
001024  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
001028  9f898001  addli r19, r1, 192
00102c  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
001030  9f8a8300  addli r21, r7, 64
001034  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
001038  ca930902  vloads_mask16.mz vr7{mr1}, 0(r19)
00103c  9f890301  addli r19, r7, 128
001040  42950a02  vload_mask16.mz vr10{mr1}, 0(r21)
001044  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
001048  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00104c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
001050  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
001054  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
001058  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00105c  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
001060  46908902  vstore_mask16.mz vr8{mr1}, 0(r19)
001064  9f890002  addli r19, r1, 256
001068  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00106c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
001070  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
001074  46905a02  vstore_mask16.mz vr5{mr1}, 0(r21)
001078  4a900902  vloads_mask16.mz vr0{mr1}, 0(r19)
00107c  9f898002  addli r19, r1, 320
001080  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
001084  1f8c0302  addli r24, r7, 256
001088  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00108c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
001090  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001094  4a930902  vloads_mask16.mz vr6{mr1}, 0(r19)
001098  9f890003  addli r19, r1, 384
00109c  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
0010a0  9f808003  addli r1, r1, 448
0010a4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0010a8  4a940902  vloads_mask16.mz vr8{mr1}, 0(r19)
0010ac  9f898302  addli r19, r7, 320
0010b0  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
0010b4  9f800303  addli r1, r7, 384
0010b8  9f838303  addli r7, r7, 448
0010bc  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
0010c0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0010c4  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0010c8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0010cc  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0010d0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0010d4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0010d8  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
0010dc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0010e0  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
0010e4  93897105  setlt.u r19, r3, r23
0010e8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0010ec  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0010f0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0010f4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0010f8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0010fc  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001100  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001104  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001108  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00110c  bbdb09fe  bneq r19, zero, -268
001110  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001114  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001118  9f000002  addli r1, zero, 256
00111c  6af100c0  vsrl.p vr2, r1, vr0
001120  eaf110c0  vsrl.p vr3, r1, vr1
001124  9f000001  addli r1, zero, 128
001128  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00112c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001130  6af100c0  vsrl.p vr2, r1, vr0
001134  eaf110c0  vsrl.p vr3, r1, vr1
001138  9f008000  addli r1, zero, 64
00113c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001140  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001144  6af100c0  vsrl.p vr2, r1, vr0
001148  eaf110c0  vsrl.p vr3, r1, vr1
00114c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001150  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001154  6af10dc0  vsrl.p vr2, r27, vr0
001158  eaf11dc0  vsrl.p vr3, r27, vr1
00115c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001160  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001164  fa100040  vextracti.f r1, 0(vr0)
001168  fa910040  vextracti.f r3, 0(vr1)
00116c  db650000  j 812
001170  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001174  abf0ffff  lui r1, 1048575
001178  1f010000  addli r2, zero, 0
00117c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001180  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001184  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001188  9b9100f8  ori r3, r1, 3968
00118c  8b932710  add.s r7, r15, r2
001190  8b192810  add.s r19, r16, r2
001194  9f810101  addli r3, r3, 128
001198  1f010104  addli r2, r2, 512
00119c  1f8c0331  addli r24, r7, 6272
0011a0  9f800330  addli r1, r7, 6144
0011a4  9f8c8331  addli r25, r7, 6336
0011a8  9f8a0918  addli r21, r19, 3072
0011ac  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
0011b0  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
0011b4  9f808330  addli r1, r7, 6208
0011b8  ca940c02  vloads_mask16.mz vr9{mr1}, 0(r25)
0011bc  1f8c0919  addli r24, r19, 3200
0011c0  42930a02  vload_mask16.mz vr6{mr1}, 0(r21)
0011c4  9f8c8919  addli r25, r19, 3264
0011c8  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0011cc  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
0011d0  9f808918  addli r1, r19, 3136
0011d4  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
0011d8  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0011dc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0011e0  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0011e4  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0011e8  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0011ec  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0011f0  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0011f4  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
0011f8  9f8a0332  addli r21, r7, 6400
0011fc  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
001200  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
001204  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001208  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
00120c  1f8c091a  addli r24, r19, 3328
001210  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
001214  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001218  9f80091b  addli r1, r19, 3456
00121c  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
001220  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001224  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
001228  9f8a8332  addli r21, r7, 6464
00122c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001230  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001234  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
001238  9f8a0333  addli r21, r7, 6528
00123c  9f838333  addli r7, r7, 6592
001240  4a940a02  vloads_mask16.mz vr8{mr1}, 0(r21)
001244  9f8a891a  addli r21, r19, 3392
001248  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
00124c  9f83891b  addli r7, r19, 3520
001250  93896105  setlt.u r19, r3, r22
001254  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
001258  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00125c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001260  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001264  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001268  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00126c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001270  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
001274  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001278  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
00127c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001280  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001284  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001288  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00128c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001290  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001294  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001298  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00129c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0012a0  bbbb09fe  bneq r19, zero, -276
0012a4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0012a8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0012ac  9f000002  addli r1, zero, 256
0012b0  9f0a0000  addli r21, zero, 0
0012b4  eaf110c0  vsrl.p vr3, r1, vr1
0012b8  6af100c0  vsrl.p vr2, r1, vr0
0012bc  9f000001  addli r1, zero, 128
0012c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0012c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0012c8  eaf110c0  vsrl.p vr3, r1, vr1
0012cc  6af100c0  vsrl.p vr2, r1, vr0
0012d0  9f008000  addli r1, zero, 64
0012d4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0012d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0012dc  eaf110c0  vsrl.p vr3, r1, vr1
0012e0  6af100c0  vsrl.p vr2, r1, vr0
0012e4  abf0ffff  lui r1, 1048575
0012e8  9b9900f8  ori r19, r1, 3968
0012ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0012f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0012f4  eaf11dc0  vsrl.p vr3, r27, vr1
0012f8  6af10dc0  vsrl.p vr2, r27, vr0
0012fc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001300  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001304  fa910040  vextracti.f r3, 0(vr1)
001308  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00130c  7a110040  vextracti.f r2, 0(vr0)
001310  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001314  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001318  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00131c  8b905711  add.s r1, r15, r21
001320  8b135811  add.s r7, r16, r21
001324  9f890901  addli r19, r19, 128
001328  9f8a0a04  addli r21, r21, 512
00132c  1f8c0018  addli r24, r1, 3072
001330  9f8c0019  addli r25, r1, 3200
001334  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
001338  1f8d8301  addli r26, r7, 192
00133c  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
001340  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
001344  1f8c8018  addli r24, r1, 3136
001348  9f8c8019  addli r25, r1, 3264
00134c  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
001350  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
001354  1f8c0301  addli r24, r7, 128
001358  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
00135c  9f8c8300  addli r25, r7, 64
001360  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
001364  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
001368  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00136c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
001370  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
001374  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
001378  46108c02  vstore_mask16.mz vr8{mr1}, 0(r24)
00137c  1f8c001a  addli r24, r1, 3328
001380  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
001384  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001388  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00138c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
001390  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
001394  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
001398  1f8c801a  addli r24, r1, 3392
00139c  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
0013a0  1f8d0302  addli r26, r7, 256
0013a4  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
0013a8  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0013ac  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0013b0  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0013b4  1f8c001b  addli r24, r1, 3456
0013b8  c2130d02  vload_mask16.mz vr7{mr1}, 0(r26)
0013bc  9f80801b  addli r1, r1, 3520
0013c0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0013c4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0013c8  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
0013cc  1f8c8302  addli r24, r7, 320
0013d0  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
0013d4  9f800303  addli r1, r7, 384
0013d8  9f838303  addli r7, r7, 448
0013dc  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
0013e0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0013e4  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0013e8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0013ec  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0013f0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0013f4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0013f8  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
0013fc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001400  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
001404  138c7905  setlt.u r24, r19, r23
001408  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00140c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001410  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001414  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001418  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00141c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001420  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001424  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001428  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00142c  bb4b0cfe  bneq r24, zero, -272
001430  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001434  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001438  9f000002  addli r1, zero, 256
00143c  003d0002  core_id r26
001440  6af100c0  vsrl.p vr2, r1, vr0
001444  eaf110c0  vsrl.p vr3, r1, vr1
001448  9f000001  addli r1, zero, 128
00144c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001450  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001454  6af100c0  vsrl.p vr2, r1, vr0
001458  eaf110c0  vsrl.p vr3, r1, vr1
00145c  9f008000  addli r1, zero, 64
001460  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001464  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001468  6af100c0  vsrl.p vr2, r1, vr0
00146c  eaf110c0  vsrl.p vr3, r1, vr1
001470  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001474  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001478  6af10dc0  vsrl.p vr2, r27, vr0
00147c  eaf11dc0  vsrl.p vr3, r27, vr1
001480  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001484  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001488  fa100040  vextracti.f r1, 0(vr0)
00148c  fa930040  vextracti.f r7, 0(vr1)
001490  8b601110  add.f.rn r1, r2, r1
001494  8be17110  add.f.rn r3, r3, r7
001498  9b332700  slli r7, r14, 2
00149c  1f010000  addli r2, zero, 0
0014a0  8b99a310  add.s r19, r7, r10
0014a4  8b9a5310  add.s r21, r7, r5
0014a8  73e01900  stores.w r1, 0(r19)
0014ac  9b00e707  andi r1, r14, 126
0014b0  73e03a00  stores.w r3, 0(r21)
0014b4  9b914300  ori r3, r7, 4
0014b8  9f090000  addli r19, zero, 0
0014bc  00a00300  mfence { lm, sm, gm }
0014c0  80210e04  csr_set csr3, r28
0014c4  00d00100  sync_group
0014c8  9bb02000  slli r1, r1, 2
0014cc  8b93a110  add.s r7, r3, r10
0014d0  8b915110  add.s r3, r3, r5
0014d4  0b97a010  add.s r14, r1, r10
0014d8  efc30300  loads.w r7, 0(r7)
0014dc  8b905010  add.s r1, r1, r5
0014e0  efc10100  loads.w r3, 0(r3)
0014e4  6f470700  loads.w r14, 0(r14)
0014e8  efc00000  loads.w r1, 0(r1)
0014ec  8be3e310  add.f.rn r7, r7, r14
0014f0  8be01110  add.f.rn r1, r3, r1
0014f4  ab01003a  lui r3, 237568
0014f8  8be33320  mul.f.rn r7, r7, r3
0014fc  8be03020  mul.f.rn r1, r1, r3
001500  8be17320  mul.f.rn r3, r7, r7
001504  0be70358  neg.f r14, r7
001508  8be03018  sub.f.rn r1, r1, r3
00150c  e3013f00  loadli.w r3,  24(r30)
001510  8be03010  add.f.rn r1, r1, r3
001514  ab01803f  lui r3, 260096
001518  8f800008  sqrt.f.rn r1, r1
00151c  8f811118  div.f.rn r3, r3, r1
001520  8b102610  add.s r1, r12, r2
001524  8b132810  add.s r7, r16, r2
001528  8b9a2610  add.s r21, r13, r2
00152c  9f8c8000  addli r25, r1, 64
001530  1f8c8300  addli r24, r7, 64
001534  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
001538  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
00153c  4a920a02  vloads_mask16.mz vr4{mr1}, 0(r21)
001540  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
001544  9f8c8a00  addli r25, r21, 64
001548  c2100c02  vload_mask16.mz vr1{mr1}, 0(r24)
00154c  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
001550  9f8c4900  addli r25, r19, 32
001554  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
001558  930c9207  setle.u r25, r4, r25
00155c  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
001560  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
001564  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
001568  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
00156c  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
001570  46904302  vstore_mask16.mz vr4{mr1}, 0(r7)
001574  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
001578  bb910c00  bneq r25, zero, 100
00157c  9f8c0001  addli r25, r1, 128
001580  1f8c0301  addli r24, r7, 128
001584  9f838301  addli r7, r7, 192
001588  9f808001  addli r1, r1, 192
00158c  9f898900  addli r19, r19, 64
001590  1f010102  addli r2, r2, 256
001594  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
001598  9f8c0a01  addli r25, r21, 128
00159c  9f8a8a01  addli r21, r21, 192
0015a0  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
0015a4  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
0015a8  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
0015ac  93804904  setlt.u r1, r19, r4
0015b0  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
0015b4  ca920a02  vloads_mask16.mz vr5{mr1}, 0(r21)
0015b8  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
0015bc  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
0015c0  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
0015c4  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
0015c8  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
0015cc  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0015d0  46103c02  vstore_mask16.mz vr3{mr1}, 0(r24)
0015d4  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
0015d8  3bad00fe  bneq r1, zero, -184
0015dc  9f008fd7  addli r1, r30, -5184
0015e0  1f018fd7  addli r2, r30, -5184
0015e4  9f010000  addli r3, zero, 0
0015e8  00a00000  mfence { lm }
0015ec  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0015f0  9f038100  addli r7, r2, 64
0015f4  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
0015f8  9f814100  addli r3, r3, 32
0015fc  1f010101  addli r2, r2, 128
001600  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
001604  93834104  setlt.u r7, r3, r4
001608  06110000  vfloat2fp16_l.rn vr2, vr0
00160c  06d10000  vfloat2fp16_h.rn vr2, vr1
001610  46802002  vstore.mz vr2{mr1}, 0(r1)
001614  9f808000  addli r1, r1, 64
001618  3bdf03fe  bneq r7, zero, -44
00161c  6b510f00  load.d r[3:4], 0(r30)
001620  ab0000f0  lui r1, 983040
001624  00a00000  mfence { lm }
001628  97901500  or r1, r11, r1
00162c  0b211111  add.ul r[3:4], r[3:4], r[18:19]
001630  ff300101  s_lm2gm r1, r16, 0(r[3:4])
001634  00a00200  mfence { lm, gm }
001638  63471f00  loadli.w r14,  12(r30)
00163c  db20ffff  j -1788
001640  e3403f00  loadli.w r1,  28(r30)
001644  37850014  beq r1, zero, 10560
001648  003a0002  core_id r20
00164c  63012f00  loadli.w r2,  16(r30)
001650  005c0102  load_param_i r24, 2
001654  9b305a00  slli r1, r20, 5
001658  4b431100  ble.s r2, r1, 208
00165c  2b960000  lui r12, 9
001660  9f110000  addli r3, zero, 1
001664  1f058fd7  addli r10, r30, -5184
001668  9f058000  addli r11, zero, 64
00166c  1b315c00  slli r2, r24, 5
001670  9f860000  addli r13, r1, 0
001674  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001678  1f0606f0  addli r12, r12, -2048
00167c  33880628  zext_int2long r[17:18], r13
001680  2b0900f0  lui r18, 983040
001684  17383802  sll.d r[17:18], r[17:18], r3
001688  17992501  or r18, r11, r18
00168c  0b280211  add.ul r[17:18], r[5:6], r[17:18]
001690  7f29a800  l_gm2lm r18, r10, 0(r[17:18])
001694  1bb82600  slli r16, r13, 2
001698  8b16d110  add.s r13, r2, r13
00169c  00a00200  mfence { lm, gm }
0016a0  c2000502  vload.mz vr1{mr1}, 0(r10)
0016a4  0b18c810  add.s r16, r16, r12
0016a8  9f088800  addli r17, r16, 64
0016ac  66411080  vmerge_l.hf vr2, vr0, vr1
0016b0  e64010a0  vmerge_h.hf vr1, vr0, vr1
0016b4  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
0016b8  4e901802  vstores_mask16.mz vr1{mr1}, 0(r17)
0016bc  3f8ff6fe  blt.s r13, r15, -64
0016c0  2ba20000  lui r4, 10
0016c4  9b317a00  slli r3, r20, 7
0016c8  9f120000  addli r5, zero, 1
0016cc  1f058fd7  addli r10, r30, -5184
0016d0  9f058000  addli r11, zero, 64
0016d4  1f860000  addli r12, r1, 0
0016d8  00a00000  mfence { lm }
0016dc  1f0202f0  addli r4, r4, -2048
0016e0  8b914110  add.s r3, r3, r4
0016e4  1b327c00  slli r4, r24, 7
0016e8  33080628  zext_int2long r[17:18], r12
0016ec  ab0600f0  lui r13, 983040
0016f0  0b162610  add.s r12, r12, r2
0016f4  17385802  sll.d r[17:18], r[17:18], r5
0016f8  9796d500  or r13, r11, r13
0016fc  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001700  ff26a800  l_gm2lm r13, r10, 0(r[17:18])
001704  9f868100  addli r13, r3, 64
001708  00a00200  mfence { lm, gm }
00170c  c2000502  vload.mz vr1{mr1}, 0(r10)
001710  66411080  vmerge_l.hf vr2, vr0, vr1
001714  e64010a0  vmerge_h.hf vr1, vr0, vr1
001718  4e902102  vstores_mask16.mz vr2{mr1}, 0(r3)
00171c  8b914110  add.s r3, r3, r4
001720  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
001724  3f1ff6fe  blt.s r12, r15, -60
001728  63012f00  loadli.w r2,  16(r30)
00172c  cb211100  ble.s r2, r1, 104
001730  2bb30000  lui r6, 11
001734  1f110000  addli r2, zero, 1
001738  9f018fd7  addli r3, r30, -5184
00173c  1f028000  addli r4, zero, 64
001740  9b325c00  slli r5, r24, 5
001744  00a00000  mfence { lm }
001748  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00174c  1f0303f0  addli r6, r6, -2048
001750  33850028  zext_int2long r[11:12], r1
001754  ab0300f0  lui r7, 983040
001758  17352502  sll.d r[11:12], r[11:12], r2
00175c  97137200  or r7, r4, r7
001760  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001764  ff233500  l_gm2lm r7, r3, 0(r[11:12])
001768  9bb32000  slli r7, r1, 2
00176c  8b901210  add.s r1, r5, r1
001770  00a00200  mfence { lm, gm }
001774  c2800102  vload.mz vr1{mr1}, 0(r3)
001778  8b936310  add.s r7, r7, r6
00177c  1f858300  addli r10, r7, 64
001780  66411080  vmerge_l.hf vr2, vr0, vr1
001784  e64010a0  vmerge_h.hf vr1, vr0, vr1
001788  4e902302  vstores_mask16.mz vr2{mr1}, 0(r7)
00178c  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001790  3f8ff0fe  blt.s r1, r15, -64
001794  abf00000  lui r1, 15
001798  63411f00  loadli.w r2,  12(r30)
00179c  00a00300  mfence { lm, sm, gm }
0017a0  9b90f0ff  ori r1, r1, 4095
0017a4  80a10004  csr_set csr3, r1
0017a8  00d00100  sync_group
0017ac  4b4d4127  ble.s r2, r20, 20304
0017b0  e3002f00  loadli.w r1,  16(r30)
0017b4  63412f00  loadli.w r2,  20(r30)
0017b8  1f048fd7  addli r8, r30, -5184
0017bc  9f160000  addli r13, zero, 1
0017c0  1f084000  addli r16, zero, 32
0017c4  9f090002  addli r19, zero, 256
0017c8  9f0a0001  addli r21, zero, 128
0017cc  1f0b8000  addli r22, zero, 64
0017d0  ab0b803f  lui r23, 260096
0017d4  2bee7f00  lui r28, 2046
0017d8  abe40700  lui r9, 126
0017dc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0017e0  33820008  fix2float.rn r4, r1
0017e4  8b912010  add.s r3, r1, r2
0017e8  9bb31000  slli r7, r1, 1
0017ec  1b362100  slli r12, r2, 2
0017f0  e74f4fd2  storeli.w r4, -5636(r30)
0017f4  1bb22000  slli r4, r1, 2
0017f8  9f804000  addli r1, r1, 32
0017fc  9ff1f1ff  addli r3, r3, -1
001800  e70f1fd2  storeli.w r1, -5640(r30)
001804  8b108210  add.s r1, r4, r8
001808  0b932130  div.s r6, r3, r2
00180c  8b918310  add.s r3, r7, r8
001810  1f717000  addli r2, zero, 63
001814  9f8080ff  addli r1, r1, -64
001818  674f1fd2  storeli.w r1, -5644(r30)
00181c  9f8081ff  addli r1, r3, -64
001820  670f1fd2  storeli.w r1, -5648(r30)
001824  abf0ffff  lui r1, 1048575
001828  00a00000  mfence { lm }
00182c  67048fd5  storeli.w r24, -5568(r30)
001830  67007fd4  storeli.w r7, -5632(r30)
001834  9b90f0ff  ori r1, r1, 4095
001838  67041fd6  storeli.w r1, -5312(r30)
00183c  ab700000  lui r1, 7
001840  1b9df0ff  ori r26, r1, 4095
001844  ab00ff03  lui r1, 16368
001848  9b95f03f  ori r11, r1, 1023
00184c  abf000fc  lui r1, 1032207
001850  9b9100c0  ori r3, r1, 3072
001854  9f000fd7  addli r1, r30, -5248
001858  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00185c  db080000  j 68
001860  9f030fd5  addli r7, r30, -5504
001864  6b520f00  load.d r[5:6], 0(r30)
001868  ab0000f0  lui r1, 983040
00186c  ebd80300  load.d r[18:19], 0(r7)
001870  e3030fd4  loadli.w r7,  -5632(r30)
001874  00a00000  mfence { lm }
001878  630a8fd5  loadli.w r20,  -5440(r30)
00187c  630c8fd4  loadli.w r24,  -5568(r30)
001880  0b221211  add.ul r[5:6], r[5:6], r[18:19]
001884  97901300  or r1, r7, r1
001888  0b1a4c11  add.s r20, r24, r20
00188c  ff308200  s_lm2gm r1, r8, 0(r[5:6])
001890  00a00200  mfence { lm, gm }
001894  e3401f00  loadli.w r1,  12(r30)
001898  3f201a00  blt.s r20, r1, 8
00189c  5bcc0900  j 20064
0018a0  e3001f00  loadli.w r1,  8(r30)
0018a4  1f057fd6  addli r10, r30, -5320
0018a8  8b101a10  add.s r1, r20, r1
0018ac  8b90f020  mul.s r1, r1, r15
0018b0  33920028  sext_int2long r[5:6], r1
0018b4  ab0000f0  lui r1, 983040
0018b8  9738d202  sll.d r[18:19], r[5:6], r13
0018bc  6b520500  load.d r[5:6], 0(r10)
0018c0  97901300  or r1, r7, r1
0018c4  1f050fd5  addli r10, r30, -5504
0018c8  73301501  store.d r[18:19], 0(r10)
0018cc  0b221211  add.ul r[5:6], r[5:6], r[18:19]
0018d0  ff208200  l_gm2lm r1, r8, 0(r[5:6])
0018d4  00a00200  mfence { lm, gm }
0018d8  bff00701  blt.s r15, r16, 60
0018dc  e300efd3  loadli.w r1,  -5648(r30)
0018e0  6342efd3  loadli.w r4,  -5644(r30)
0018e4  e302ffd3  loadli.w r5,  -5640(r30)
0018e8  c2800002  vload.mz vr1{mr1}, 0(r1)
0018ec  9f82c2ff  addli r5, r5, -32
0018f0  9f0882ff  addli r17, r4, -64
0018f4  9f8080ff  addli r1, r1, -64
0018f8  93035104  setlt.u r7, r2, r5
0018fc  664110a0  vmerge_h.hf vr2, vr0, vr1
001900  e6401080  vmerge_l.hf vr1, vr0, vr1
001904  46102202  vstore_mask16.mz vr2{mr1}, 0(r4)
001908  1f0202ff  addli r4, r4, -128
00190c  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
001910  3bef03fe  bneq r7, zero, -40
001914  00a00000  mfence { lm }
001918  670c4fd5  storeli.w r20, -5440(r30)
00191c  bf57d300  blt.s r6, r13, 500
001920  9f020000  addli r5, zero, 0
001924  1f020000  addli r4, zero, 0
001928  9f030000  addli r7, zero, 0
00192c  db0d0000  j 108
001930  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001934  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001938  9f930300  addli r7, r7, 1
00193c  6af109c0  vsrl.p vr2, r19, vr0
001940  eaf119c0  vsrl.p vr3, r19, vr1
001944  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001948  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00194c  6af10ac0  vsrl.p vr2, r21, vr0
001950  eaf11ac0  vsrl.p vr3, r21, vr1
001954  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001958  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00195c  6a710bc0  vsrl.p vr2, r22, vr0
001960  ea711bc0  vsrl.p vr3, r22, vr1
001964  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001968  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00196c  6a7108c0  vsrl.p vr2, r16, vr0
001970  ea7118c0  vsrl.p vr3, r16, vr1
001974  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001978  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00197c  fa100040  vextracti.f r1, 0(vr0)
001980  7a910040  vextracti.f r2, 0(vr1)
001984  8be21210  add.f.rn r5, r5, r1
001988  9f000fd7  addli r1, r30, -5248
00198c  0b622210  add.f.rn r4, r4, r2
001990  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001994  37966300  beq r7, r6, 388
001998  9f880300  addli r17, r7, 0
00199c  37403701  beq r14, r19, 16
0019a0  e3008fd6  loadli.w r1,  -5312(r30)
0019a4  97a01300  xor r1, r7, r1
0019a8  8b181310  add.s r17, r6, r1
0019ac  8b90e820  mul.s r1, r17, r14
0019b0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0019b4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0019b8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0019bc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0019c0  8b901718  sub.s r1, r15, r1
0019c4  8b90e040  min.s r1, r1, r14
0019c8  bfadd0fe  blt.s r1, r13, -152
0019cc  1f010fd7  addli r2, r30, -5248
0019d0  2b9c0000  lui r24, 9
0019d4  1f0a0000  addli r20, zero, 0
0019d8  8b181621  mul.s r17, r12, r17
0019dc  1f098fd7  addli r18, r30, -5184
0019e0  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0019e4  1f0c0cf0  addli r24, r24, -2048
0019e8  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0019ec  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0019f0  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0019f4  8b1d1c11  add.s r27, r24, r17
0019f8  8b1c1911  add.s r25, r18, r17
0019fc  1f848d00  addli r8, r27, 64
001a00  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
001a04  1f858d01  addli r10, r27, 192
001a08  c2940c02  vload_mask16.mz vr9{mr1}, 0(r25)
001a0c  1f818c01  addli r2, r25, 192
001a10  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
001a14  1f840d01  addli r8, r27, 128
001a18  4a140502  vloads_mask16.mz vr8{mr1}, 0(r10)
001a1c  1f850c01  addli r10, r25, 128
001a20  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
001a24  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
001a28  c2150502  vload_mask16.mz vr11{mr1}, 0(r10)
001a2c  1f848c00  addli r8, r25, 64
001a30  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
001a34  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001a38  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001a3c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001a40  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001a44  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001a48  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001a4c  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
001a50  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
001a54  1f048a00  addli r8, r20, 64
001a58  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001a5c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001a60  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001a64  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001a68  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001a6c  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
001a70  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001a74  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001a78  cbea80fe  ble.s r1, r8, -328
001a7c  1f840d02  addli r8, r27, 256
001a80  1f858d02  addli r10, r27, 320
001a84  1f810c02  addli r2, r25, 256
001a88  1f0a0a01  addli r20, r20, 128
001a8c  1f0c0c04  addli r24, r24, 512
001a90  1f090904  addli r18, r18, 512
001a94  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
001a98  1f840d03  addli r8, r27, 384
001a9c  ca120502  vloads_mask16.mz vr5{mr1}, 0(r10)
001aa0  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
001aa4  1f858c02  addli r10, r25, 320
001aa8  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
001aac  1f848d03  addli r8, r27, 448
001ab0  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
001ab4  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
001ab8  1f840c03  addli r8, r25, 384
001abc  9f8c8c03  addli r25, r25, 448
001ac0  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
001ac4  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
001ac8  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
001acc  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001ad0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001ad4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001ad8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001adc  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001ae0  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
001ae4  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
001ae8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001aec  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001af0  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
001af4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001af8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001afc  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001b00  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001b04  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
001b08  bf3b1afe  blt.s r20, r1, -276
001b0c  dbc4ffff  j -476
001b10  1f020000  addli r4, zero, 0
001b14  9f020000  addli r5, zero, 0
001b18  2ba50000  lui r10, 10
001b1c  abbd0000  lui r27, 11
001b20  1f048fd7  addli r8, r30, -5184
001b24  00a00000  mfence { lm }
001b28  1f0505f0  addli r10, r10, -2048
001b2c  9f8d0df0  addli r27, r27, -2048
001b30  bfc3d700  blt.s r15, r13, 240
001b34  6341ffd3  loadli.w r2,  -5636(r30)
001b38  9f000000  addli r1, zero, 0
001b3c  8f822218  div.f.rn r5, r5, r2
001b40  0f022218  div.f.rn r4, r4, r2
001b44  63013f00  loadli.w r2,  24(r30)
001b48  8be35220  mul.f.rn r7, r5, r5
001b4c  8be20258  neg.f r5, r5
001b50  0b627218  sub.f.rn r4, r4, r7
001b54  9f030000  addli r7, zero, 0
001b58  0b622210  add.f.rn r4, r4, r2
001b5c  0f020208  sqrt.f.rn r4, r4
001b60  0f824b18  div.f.rn r4, r23, r4
001b64  0b99a010  add.s r18, r1, r10
001b68  8b181410  add.s r17, r8, r1
001b6c  1f0a8900  addli r20, r18, 64
001b70  4a110902  vloads_mask16.mz vr2{mr1}, 0(r18)
001b74  0b99b011  add.s r18, r1, r27
001b78  c2900802  vload_mask16.mz vr1{mr1}, 0(r17)
001b7c  ca110a02  vloads_mask16.mz vr3{mr1}, 0(r20)
001b80  1f8a8800  addli r20, r17, 64
001b84  4a120902  vloads_mask16.mz vr4{mr1}, 0(r18)
001b88  1f098900  addli r18, r18, 64
001b8c  c2120a02  vload_mask16.mz vr5{mr1}, 0(r20)
001b90  4a130902  vloads_mask16.mz vr6{mr1}, 0(r18)
001b94  1f894300  addli r18, r7, 32
001b98  92901202  vadd.f.mz.rn vr1{mr1}, r5, vr1
001b9c  92925202  vadd.f.mz.rn vr5{mr1}, r5, vr5
001ba0  8a101202  vmul.f.mz.rn vr1{mr1}, r4, vr1
001ba4  8a125202  vmul.f.mz.rn vr5{mr1}, r4, vr5
001ba8  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
001bac  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
001bb0  46904802  vstore_mask16.mz vr4{mr1}, 0(r17)
001bb4  46106a02  vstore_mask16.mz vr6{mr1}, 0(r20)
001bb8  cba12701  ble.s r15, r18, 104
001bbc  0b191510  add.s r18, r10, r1
001bc0  0b9a1d10  add.s r20, r27, r1
001bc4  9f838300  addli r7, r7, 64
001bc8  9f800002  addli r1, r1, 256
001bcc  1f0c0901  addli r24, r18, 128
001bd0  9f0c0a01  addli r25, r20, 128
001bd4  1f098901  addli r18, r18, 192
001bd8  1f0a8a01  addli r20, r20, 192
001bdc  ca100c02  vloads_mask16.mz vr1{mr1}, 0(r24)
001be0  1f8c0801  addli r24, r17, 128
001be4  9f888801  addli r17, r17, 192
001be8  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
001bec  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
001bf0  4a130a02  vloads_mask16.mz vr6{mr1}, 0(r20)
001bf4  c2110c02  vload_mask16.mz vr3{mr1}, 0(r24)
001bf8  42920802  vload_mask16.mz vr4{mr1}, 0(r17)
001bfc  92913202  vadd.f.mz.rn vr3{mr1}, r5, vr3
001c00  12924202  vadd.f.mz.rn vr4{mr1}, r5, vr4
001c04  8a113202  vmul.f.mz.rn vr3{mr1}, r4, vr3
001c08  0a124202  vmul.f.mz.rn vr4{mr1}, r4, vr4
001c0c  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
001c10  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
001c14  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
001c18  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
001c1c  3fadf3fe  blt.s r7, r15, -184
001c20  1f717000  addli r2, zero, 63
001c24  1f052000  addli r10, zero, 16
001c28  9f380000  addli r17, zero, 3
001c2c  1f591000  addli r18, zero, 13
001c30  1f2a1000  addli r20, zero, 10
001c34  00a00000  mfence { lm }
001c38  bfa0d7fe  blt.s r15, r13, -984
001c3c  9f008fd7  addli r1, r30, -5184
001c40  1f028fd7  addli r4, r30, -5184
001c44  9f020000  addli r5, zero, 0
001c48  9f038200  addli r7, r4, 64
001c4c  42110202  vload_mask16.mz vr2{mr1}, 0(r4)
001c50  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001c54  9f824200  addli r5, r5, 32
001c58  1f020201  addli r4, r4, 128
001c5c  6a221522  vor.u.mz vr4{mr1}, r10, vr1
001c60  c2910302  vload_mask16.mz vr3{mr1}, 0(r7)
001c64  ee3222c2  vsrl.s.mz vr5{mr1}, vr4, vr2
001c68  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
001c6c  eab25602  vand.s.mz vr5{mr1}, r13, vr5
001c70  6ab24602  vand.s.mz vr4{mr1}, r13, vr4
001c74  16315102  vadd.s.mz vr2{mr1}, vr2, vr5
001c78  eaa21822  vor.u.mz vr5{mr1}, r17, vr1
001c7c  96b14102  vadd.s.mz vr3{mr1}, vr3, vr4
001c80  6a221922  vor.u.mz vr4{mr1}, r18, vr1
001c84  ea201a22  vor.u.mz vr1{mr1}, r20, vr1
001c88  12312d02  vadd.s.mz vr2{mr1}, r26, vr2
001c8c  92313d02  vadd.s.mz vr3{mr1}, r26, vr3
001c90  6e3322c2  vsrl.s.mz vr6{mr1}, vr4, vr2
001c94  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
001c98  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
001c9c  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
001ca0  eab26402  vand.s.mz vr5{mr1}, r9, vr6
001ca4  6a312e02  vand.s.mz vr2{mr1}, r28, vr2
001ca8  6ab24402  vand.s.mz vr4{mr1}, r9, vr4
001cac  ea313e02  vand.s.mz vr3{mr1}, r28, vr3
001cb0  6ab12b22  vor.s.mz vr2{mr1}, r23, vr2
001cb4  eab25b22  vor.s.mz vr5{mr1}, r23, vr5
001cb8  6ab24b22  vor.s.mz vr4{mr1}, r23, vr4
001cbc  eab13b22  vor.s.mz vr3{mr1}, r23, vr3
001cc0  06110120  vfloat2fp16_l.rz vr2, vr2
001cc4  06520220  vfloat2fp16_h.rz vr4, vr4
001cc8  06d10120  vfloat2fp16_h.rz vr2, vr3
001ccc  06920220  vfloat2fp16_l.rz vr4, vr5
001cd0  6ab12502  vand.s.mz vr2{mr1}, r11, vr2
001cd4  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
001cd8  eab01102  vand.s.mz vr1{mr1}, r3, vr1
001cdc  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
001ce0  46801002  vstore.mz vr1{mr1}, 0(r1)
001ce4  9f808000  addli r1, r1, 64
001ce8  bf8df2fe  blt.s r5, r15, -160
001cec  db6effff  j -1164
001cf0  e3403f00  loadli.w r1,  28(r30)
001cf4  37df0016  beq r1, zero, 12244
001cf8  80300002  core_id r1
001cfc  e3012f00  loadli.w r3,  16(r30)
001d00  1bb15000  slli r2, r1, 5
001d04  4bc32100  ble.s r3, r2, 208
001d08  2b580100  lui r16, 21
001d0c  00550102  load_param_i r10, 2
001d10  9f150000  addli r11, zero, 1
001d14  1f068fd7  addli r12, r30, -5184
001d18  9f068000  addli r13, zero, 64
001d1c  9f080100  addli r17, r2, 0
001d20  9b315500  slli r3, r10, 5
001d24  1f080800  addli r16, r16, 0
001d28  33890828  zext_int2long r[19:20], r17
001d2c  2b0a00f0  lui r20, 983040
001d30  1739b902  sll.d r[19:20], r[19:20], r11
001d34  179a4601  or r20, r13, r20
001d38  0b292211  add.ul r[19:20], r[5:6], r[19:20]
001d3c  7f2ac900  l_gm2lm r20, r12, 0(r[19:20])
001d40  1bb92800  slli r18, r17, 2
001d44  8b981111  add.s r17, r3, r17
001d48  00a00200  mfence { lm, gm }
001d4c  42000602  vload.mz vr0{mr1}, 0(r12)
001d50  0b190911  add.s r18, r18, r16
001d54  9f098900  addli r19, r18, 64
001d58  86300000  vfp162float_l.rn vr1, vr0
001d5c  06700000  vfp162float_h.rn vr0, vr0
001d60  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
001d64  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
001d68  3f8ff8fe  blt.s r17, r15, -64
001d6c  ab620100  lui r5, 22
001d70  1bb27000  slli r4, r1, 7
001d74  9f058fd7  addli r11, r30, -5184
001d78  1f068000  addli r12, zero, 64
001d7c  9f060100  addli r13, r2, 0
001d80  00a00000  mfence { lm }
001d84  9f820200  addli r5, r5, 0
001d88  0b125210  add.s r4, r4, r5
001d8c  9b327500  slli r5, r10, 7
001d90  1f150000  addli r10, zero, 1
001d94  33880628  zext_int2long r[17:18], r13
001d98  2b0900f0  lui r18, 983040
001d9c  8b963610  add.s r13, r13, r3
001da0  1738a802  sll.d r[17:18], r[17:18], r10
001da4  17192601  or r18, r12, r18
001da8  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001dac  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
001db0  1f088200  addli r16, r4, 64
001db4  00a00200  mfence { lm, gm }
001db8  42800502  vload.mz vr0{mr1}, 0(r11)
001dbc  86300000  vfp162float_l.rn vr1, vr0
001dc0  06700000  vfp162float_h.rn vr0, vr0
001dc4  4e101202  vstores_mask16.mz vr1{mr1}, 0(r4)
001dc8  0b125210  add.s r4, r4, r5
001dcc  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
001dd0  3f9ff6fe  blt.s r13, r15, -60
001dd4  e3012f00  loadli.w r3,  16(r30)
001dd8  cba12100  ble.s r3, r2, 104
001ddc  00530102  load_param_i r6, 2
001de0  ab730100  lui r7, 23
001de4  9f110000  addli r3, zero, 1
001de8  1f028fd7  addli r4, r30, -5184
001dec  9f028000  addli r5, zero, 64
001df0  00a00000  mfence { lm }
001df4  1b335300  slli r6, r6, 5
001df8  9f830300  addli r7, r7, 0
001dfc  33050128  zext_int2long r[11:12], r2
001e00  2b0600f0  lui r12, 983040
001e04  17353502  sll.d r[11:12], r[11:12], r3
001e08  1796c200  or r12, r5, r12
001e0c  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001e10  7f264500  l_gm2lm r12, r4, 0(r[11:12])
001e14  1b352100  slli r10, r2, 2
001e18  0b112310  add.s r2, r6, r2
001e1c  00a00200  mfence { lm, gm }
001e20  42000202  vload.mz vr0{mr1}, 0(r4)
001e24  0b157510  add.s r10, r10, r7
001e28  9f058500  addli r11, r10, 64
001e2c  86300000  vfp162float_l.rn vr1, vr0
001e30  06700000  vfp162float_h.rn vr0, vr0
001e34  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001e38  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
001e3c  3f0ff1fe  blt.s r2, r15, -64
001e40  2bf10000  lui r2, 15
001e44  e3411f00  loadli.w r3,  12(r30)
001e48  00a00300  mfence { lm, sm, gm }
001e4c  1b11f1ff  ori r2, r2, 4095
001e50  80210104  csr_set csr3, r2
001e54  00d00100  sync_group
001e58  cb921124  ble.s r3, r1, 18596
001e5c  63012f00  loadli.w r2,  16(r30)
001e60  e3412f00  loadli.w r3,  20(r30)
001e64  9f0b8fd7  addli r23, r30, -5184
001e68  2b540100  lui r8, 21
001e6c  ab6a0100  lui r21, 22
001e70  2b7b0100  lui r22, 23
001e74  1f150000  addli r10, zero, 1
001e78  9f054000  addli r11, zero, 32
001e7c  1f767000  addli r12, zero, 63
001e80  1f080002  addli r16, zero, 256
001e84  1f090001  addli r18, zero, 128
001e88  9f098000  addli r19, zero, 64
001e8c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001e90  1f040400  addli r8, r8, 0
001e94  9f8a0a00  addli r21, r21, 0
001e98  1f0b0b00  addli r22, r22, 0
001e9c  0b123110  add.s r4, r2, r3
001ea0  b3020108  fix2float.rn r5, r2
001ea4  9b381100  slli r17, r2, 1
001ea8  1b332100  slli r6, r2, 2
001eac  1f014100  addli r2, r2, 32
001eb0  9bb42100  slli r9, r3, 2
001eb4  67042fd4  storeli.w r2, -5568(r30)
001eb8  0b117311  add.s r2, r6, r23
001ebc  1f72f2ff  addli r4, r4, -1
001ec0  0b937811  add.s r6, r17, r23
001ec4  67085fd4  storeli.w r5, -5504(r30)
001ec8  1f0181ff  addli r2, r2, -64
001ecc  0b123230  div.s r4, r4, r3
001ed0  67002fd4  storeli.w r2, -5632(r30)
001ed4  1f0183ff  addli r2, r6, -64
001ed8  e74f2fd2  storeli.w r2, -5636(r30)
001edc  2bf1ffff  lui r2, 1048575
001ee0  00a00000  mfence { lm }
001ee4  670c1fd5  storeli.w r17, -5440(r30)
001ee8  9b16f1ff  ori r13, r2, 4095
001eec  1f010fd7  addli r2, r30, -5248
001ef0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001ef4  5b080000  j 64
001ef8  9f038fd6  addli r7, r30, -5312
001efc  6b510f00  load.d r[3:4], 0(r30)
001f00  ebd20300  load.d r[6:7], 0(r7)
001f04  00a00000  mfence { lm }
001f08  80530102  load_param_i r7, 2
001f0c  e3088fd5  loadli.w r17,  -5440(r30)
001f10  8b901310  add.s r1, r7, r1
001f14  0b215110  add.ul r[3:4], r[3:4], r[6:7]
001f18  2b0300f0  lui r6, 983040
001f1c  17936800  or r6, r17, r6
001f20  7f337101  s_lm2gm r6, r23, 0(r[3:4])
001f24  00a00200  mfence { lm, gm }
001f28  63411f00  loadli.w r2,  12(r30)
001f2c  3fa02000  blt.s r1, r2, 8
001f30  dbf90800  j 18380
001f34  63011f00  loadli.w r2,  8(r30)
001f38  0b912010  add.s r2, r1, r2
001f3c  0b11f120  mul.s r2, r2, r15
001f40  33110128  sext_int2long r[3:4], r2
001f44  173ca102  sll.d r[25:26], r[3:4], r10
001f48  9f017fd6  addli r3, r30, -5320
001f4c  2b0100f0  lui r2, 983040
001f50  ebd20100  load.d r[6:7], 0(r3)
001f54  17912800  or r2, r17, r2
001f58  9f018fd6  addli r3, r30, -5312
001f5c  73b08101  store.d r[25:26], 0(r3)
001f60  0ba38211  add.ul r[7:8], r[6:7], r[25:26]
001f64  7f217301  l_gm2lm r2, r23, 0(r[7:8])
001f68  00a00200  mfence { lm, gm }
001f6c  bff0b700  blt.s r15, r11, 60
001f70  6341ffd3  loadli.w r2,  -5636(r30)
001f74  e3010fd4  loadli.w r3,  -5632(r30)
001f78  63038fd4  loadli.w r6,  -5568(r30)
001f7c  c2000102  vload.mz vr1{mr1}, 0(r2)
001f80  1f03c3ff  addli r6, r6, -32
001f84  9f8881ff  addli r17, r3, -64
001f88  1f0181ff  addli r2, r2, -64
001f8c  93036604  setlt.u r7, r12, r6
001f90  06f10000  vfp162float_h.rn vr2, vr1
001f94  86b00000  vfp162float_l.rn vr1, vr1
001f98  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
001f9c  9f8101ff  addli r3, r3, -128
001fa0  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
001fa4  3bef03fe  bneq r7, zero, -40
001fa8  00a00000  mfence { lm }
001fac  bf27a200  blt.s r4, r10, 488
001fb0  1f0d0000  addli r26, zero, 0
001fb4  9f0c0000  addli r25, zero, 0
001fb8  9f0d0000  addli r27, zero, 0
001fbc  db0c0000  j 100
001fc0  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001fc4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001fc8  9f9d0d00  addli r27, r27, 1
001fcc  6a7108c0  vsrl.p vr2, r16, vr0
001fd0  ea7118c0  vsrl.p vr3, r16, vr1
001fd4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001fd8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001fdc  6a7109c0  vsrl.p vr2, r18, vr0
001fe0  ea7119c0  vsrl.p vr3, r18, vr1
001fe4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001fe8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001fec  6af109c0  vsrl.p vr2, r19, vr0
001ff0  eaf119c0  vsrl.p vr3, r19, vr1
001ff4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001ff8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001ffc  6af105c0  vsrl.p vr2, r11, vr0
002000  eaf115c0  vsrl.p vr3, r11, vr1
002004  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002008  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00200c  7a110040  vextracti.f r2, 0(vr0)
002010  fa910040  vextracti.f r3, 0(vr1)
002014  0b6d2d10  add.f.rn r26, r26, r2
002018  8bec3c10  add.f.rn r25, r25, r3
00201c  37864d00  beq r27, r4, 384
002020  1f810d00  addli r2, r27, 0
002024  37300701  beq r14, r16, 12
002028  17a1dd00  xor r2, r27, r13
00202c  0b112210  add.s r2, r4, r2
002030  8b11e120  mul.s r3, r2, r14
002034  8b913718  sub.s r3, r15, r3
002038  0b9ee140  min.s r28, r3, r14
00203c  9f010fd7  addli r3, r30, -5248
002040  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002044  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002048  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00204c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002050  bf4daefe  blt.s r28, r10, -144
002054  0b932420  mul.s r6, r9, r2
002058  1f010fd7  addli r2, r30, -5248
00205c  1f0a0000  addli r20, zero, 0
002060  9f038fd7  addli r7, r30, -5184
002064  9f080400  addli r17, r8, 0
002068  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
00206c  92304002  vadd.s.mz vr1{mr1}, zero, vr4
002070  12314002  vadd.s.mz vr2{mr1}, zero, vr4
002074  92314002  vadd.s.mz vr3{mr1}, zero, vr4
002078  0b916810  add.s r2, r17, r6
00207c  8b916310  add.s r3, r7, r6
002080  9f0b8100  addli r23, r2, 64
002084  ca120102  vloads_mask16.mz vr5{mr1}, 0(r2)
002088  1f0c8101  addli r24, r2, 192
00208c  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
002090  9f828101  addli r5, r3, 192
002094  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
002098  9f0b0101  addli r23, r2, 128
00209c  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
0020a0  1f8c0101  addli r24, r3, 128
0020a4  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0020a8  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
0020ac  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
0020b0  9f8b8100  addli r23, r3, 64
0020b4  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
0020b8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0020bc  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0020c0  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0020c4  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0020c8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0020cc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0020d0  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
0020d4  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
0020d8  9f0b8a00  addli r23, r20, 64
0020dc  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
0020e0  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0020e4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0020e8  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0020ec  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0020f0  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
0020f4  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
0020f8  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0020fc  4b1b7eff  ble.s r28, r23, -316
002100  9f0b0102  addli r23, r2, 256
002104  1f0c8102  addli r24, r2, 320
002108  9f820102  addli r5, r3, 256
00210c  1f0a0a01  addli r20, r20, 128
002110  9f880804  addli r17, r17, 512
002114  9f830304  addli r7, r7, 512
002118  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
00211c  9f0b0103  addli r23, r2, 384
002120  1f018103  addli r2, r2, 448
002124  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
002128  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
00212c  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
002130  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
002134  1f810103  addli r2, r3, 384
002138  9f8b8102  addli r23, r3, 320
00213c  9f818103  addli r3, r3, 448
002140  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
002144  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
002148  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
00214c  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
002150  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
002154  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
002158  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00215c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002160  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
002164  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
002168  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
00216c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
002170  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002174  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
002178  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00217c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002180  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
002184  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002188  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
00218c  bf3bcaff  blt.s r20, r28, -276
002190  5bc6ffff  j -464
002194  9f0c0000  addli r25, zero, 0
002198  1f0d0000  addli r26, zero, 0
00219c  9f0b8fd7  addli r23, r30, -5184
0021a0  00a00000  mfence { lm }
0021a4  bfd3a700  blt.s r15, r10, 244
0021a8  e3010fd5  loadli.w r3,  -5504(r30)
0021ac  e3023f00  loadli.w r5,  24(r30)
0021b0  1f030000  addli r6, zero, 0
0021b4  1f0a0000  addli r20, zero, 0
0021b8  0f013d18  div.f.rn r2, r26, r3
0021bc  8f813c18  div.f.rn r3, r25, r3
0021c0  8b632120  mul.f.rn r7, r2, r2
0021c4  8b680158  neg.f r17, r2
0021c8  8be17118  sub.f.rn r3, r3, r7
0021cc  8be15110  add.f.rn r3, r3, r5
0021d0  ab02803f  lui r5, 260096
0021d4  8f810108  sqrt.f.rn r3, r3
0021d8  8f833218  div.f.rn r7, r5, r3
0021dc  8b115311  add.s r3, r6, r21
0021e0  0b916b10  add.s r2, r23, r6
0021e4  9f8c8100  addli r25, r3, 64
0021e8  4a910102  vloads_mask16.mz vr2{mr1}, 0(r3)
0021ec  8b116311  add.s r3, r6, r22
0021f0  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0021f4  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
0021f8  9f0c8100  addli r25, r2, 64
0021fc  4a920102  vloads_mask16.mz vr4{mr1}, 0(r3)
002200  9f818100  addli r3, r3, 64
002204  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
002208  4a930102  vloads_mask16.mz vr6{mr1}, 0(r3)
00220c  9f014a00  addli r3, r20, 32
002210  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
002214  92925802  vadd.f.mz.rn vr5{mr1}, r17, vr5
002218  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
00221c  8a925302  vmul.f.mz.rn vr5{mr1}, r7, vr5
002220  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
002224  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
002228  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
00222c  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
002230  cba13700  ble.s r15, r3, 104
002234  8b916a10  add.s r3, r21, r6
002238  8b1c6b10  add.s r25, r22, r6
00223c  1f0a8a00  addli r20, r20, 64
002240  1f030302  addli r6, r6, 256
002244  1f8d0101  addli r26, r3, 128
002248  9f8d0c01  addli r27, r25, 128
00224c  9f818101  addli r3, r3, 192
002250  9f8c8c01  addli r25, r25, 192
002254  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
002258  1f0d0101  addli r26, r2, 128
00225c  1f018101  addli r2, r2, 192
002260  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
002264  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
002268  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
00226c  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
002270  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
002274  92913802  vadd.f.mz.rn vr3{mr1}, r17, vr3
002278  12924802  vadd.f.mz.rn vr4{mr1}, r17, vr4
00227c  8a913302  vmul.f.mz.rn vr3{mr1}, r7, vr3
002280  0a924302  vmul.f.mz.rn vr4{mr1}, r7, vr4
002284  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
002288  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
00228c  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
002290  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
002294  3f2dfafe  blt.s r20, r15, -184
002298  00a00000  mfence { lm }
00229c  3ff1a7fe  blt.s r15, r10, -932
0022a0  1f018fd7  addli r2, r30, -5184
0022a4  9f018fd7  addli r3, r30, -5184
0022a8  1f030000  addli r6, zero, 0
0022ac  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0022b0  9f838100  addli r7, r3, 64
0022b4  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
0022b8  1f034300  addli r6, r6, 32
0022bc  9f810101  addli r3, r3, 128
0022c0  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
0022c4  86910000  vfloat2fp16_l.rn vr3, vr1
0022c8  86510100  vfloat2fp16_h.rn vr3, vr2
0022cc  46003102  vstore.mz vr3{mr1}, 0(r2)
0022d0  1f018100  addli r2, r2, 64
0022d4  3f6ff3fe  blt.s r6, r15, -40
0022d8  5b84ffff  j -992
0022dc  e3002f00  loadli.w r1,  16(r30)
0022e0  1f010010  addli r2, zero, 2048
0022e4  bbe02008  bneq r1, r2, 4152
0022e8  2ba30200  lui r6, 42
0022ec  803b0002  core_id r23
0022f0  1f030308  addli r6, r6, 1024
0022f4  3bd00b00  bneq r23, zero, 20
0022f8  1f010040  addli r2, zero, 8192
0022fc  ab0100f0  lui r3, 983040
002300  17113100  or r2, r2, r3
002304  7f016200  l_gm2sm r2, r6, 0(r[5:6])
002308  2bf10000  lui r2, 15
00230c  e3401f00  loadli.w r1,  12(r30)
002310  00200300  mfence { sm, gm }
002314  1b8c1b00  andi r24, r23, 1
002318  9f020006  addli r5, zero, 768
00231c  1b11f1ff  ori r2, r2, 4095
002320  80210104  csr_set csr3, r2
002324  1f010006  addli r2, zero, 768
002328  00d00100  sync_group
00232c  37200c00  beq r24, zero, 8
002330  9f02000a  addli r5, zero, 1280
002334  e3411f00  loadli.w r3,  12(r30)
002338  9f130000  addli r7, zero, 1
00233c  3f8f7120  blt.s r3, r7, 17344
002340  0b122c20  mul.s r4, r24, r2
002344  2bf1ffff  lui r2, 1048575
002348  abca0200  lui r21, 44
00234c  2bcd0200  lui r26, 44
002350  80510102  load_param_i r3, 2
002354  9f030000  addli r7, zero, 0
002358  1bc51b00  srli r10, r23, 1
00235c  9bb52200  slli r11, r5, 2
002360  9f280000  addli r17, zero, 2
002364  9f068fd7  addli r13, r30, -5184
002368  1f080005  addli r16, zero, 640
00236c  1f090001  addli r18, zero, 128
002370  9f098000  addli r19, zero, 64
002374  1f0a4000  addli r20, zero, 32
002378  9f0c0003  addli r25, zero, 384
00237c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002380  1b1101f8  ori r2, r2, 3968
002384  9bc41100  srli r9, r3, 1
002388  9f010fd7  addli r3, r30, -5248
00238c  9f8a0a08  addli r21, r21, 1024
002390  1f0d0d0c  addli r26, r26, 1536
002394  67042fd6  storeli.w r2, -5312(r30)
002398  2bf10000  lui r2, 15
00239c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0023a0  1b1bf1ff  ori r22, r2, 4095
0023a4  db030000  j 28
0023a8  00a00300  mfence { lm, sm, gm }
0023ac  80210b04  csr_set csr3, r22
0023b0  00d00100  sync_group
0023b4  8b939310  add.s r7, r7, r9
0023b8  3fa01300  blt.s r7, r1, 8
0023bc  db15fdff  j -5972
0023c0  0b91a310  add.s r2, r7, r10
0023c4  cb9f20fe  ble.s r1, r2, -28
0023c8  e3001f00  loadli.w r1,  8(r30)
0023cc  0b111110  add.s r2, r2, r1
0023d0  9f007fd6  addli r1, r30, -5320
0023d4  1b31b100  slli r2, r2, 11
0023d8  6bd70000  load.d r[15:16], 0(r1)
0023dc  17114100  or r2, r2, r4
0023e0  33110128  sext_int2long r[3:4], r2
0023e4  973d1103  sll.d r[28:29], r[3:4], r17
0023e8  2b0100f0  lui r2, 983040
0023ec  0b27b711  add.ul r[15:16], r[15:16], r[28:29]
0023f0  17912500  or r2, r11, r2
0023f4  7f21d700  l_gm2lm r2, r13, 0(r[15:16])
0023f8  00a00200  mfence { lm, gm }
0023fc  3b260c00  bneq r24, zero, 392
002400  9f000fd7  addli r1, r30, -5248
002404  e3018fd6  loadli.w r3,  -5312(r30)
002408  1f010000  addli r2, zero, 0
00240c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
002410  92303002  vadd.s.mz vr1{mr1}, zero, vr3
002414  12313002  vadd.s.mz vr2{mr1}, zero, vr3
002418  12323002  vadd.s.mz vr4{mr1}, zero, vr3
00241c  0b176110  add.s r14, r2, r6
002420  0b962610  add.s r12, r13, r2
002424  9f810101  addli r3, r3, 128
002428  1f010104  addli r2, r2, 512
00242c  9f000701  addli r1, r14, 128
002430  4a100702  vloads_mask16.mz vr0{mr1}, 0(r14)
002434  1f048700  addli r8, r14, 64
002438  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
00243c  9f078601  addli r15, r12, 192
002440  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
002444  9f008701  addli r1, r14, 192
002448  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
00244c  1f048600  addli r8, r12, 64
002450  c2950702  vload_mask16.mz vr11{mr1}, 0(r15)
002454  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
002458  9f000601  addli r1, r12, 128
00245c  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
002460  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002464  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002468  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00246c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002470  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002474  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002478  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
00247c  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002480  9f000702  addli r1, r14, 256
002484  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002488  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00248c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002490  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002494  1f040603  addli r8, r12, 384
002498  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
00249c  9f008702  addli r1, r14, 320
0024a0  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
0024a4  9f070602  addli r15, r12, 256
0024a8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0024ac  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0024b0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0024b4  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0024b8  9f000703  addli r1, r14, 384
0024bc  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0024c0  1f078703  addli r14, r14, 448
0024c4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0024c8  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0024cc  9f008602  addli r1, r12, 320
0024d0  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
0024d4  1f068603  addli r12, r12, 448
0024d8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0024dc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0024e0  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0024e4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0024e8  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0024ec  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0024f0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0024f4  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
0024f8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0024fc  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
002500  93800105  setlt.u r1, r3, r16
002504  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002508  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00250c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002510  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002514  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002518  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
00251c  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
002520  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002524  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002528  bbdb00fe  bneq r1, zero, -268
00252c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002530  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002534  9f000002  addli r1, zero, 256
002538  6af100c0  vsrl.p vr2, r1, vr0
00253c  eaf110c0  vsrl.p vr3, r1, vr1
002540  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002544  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002548  6a7109c0  vsrl.p vr2, r18, vr0
00254c  ea7119c0  vsrl.p vr3, r18, vr1
002550  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002554  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002558  6af109c0  vsrl.p vr2, r19, vr0
00255c  eaf119c0  vsrl.p vr3, r19, vr1
002560  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002564  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002568  6a710ac0  vsrl.p vr2, r20, vr0
00256c  ea711ac0  vsrl.p vr3, r20, vr1
002570  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002574  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002578  7a160040  vextracti.f r12, 0(vr0)
00257c  7a910040  vextracti.f r2, 0(vr1)
002580  5b650000  j 808
002584  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002588  abf0ffff  lui r1, 1048575
00258c  9f080c00  addli r17, r24, 0
002590  1f010000  addli r2, zero, 0
002594  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002598  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00259c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0025a0  9b9100f8  ori r3, r1, 3968
0025a4  0b172310  add.s r14, r6, r2
0025a8  0b962610  add.s r12, r13, r2
0025ac  9f810101  addli r3, r3, 128
0025b0  1f010104  addli r2, r2, 512
0025b4  9f000731  addli r1, r14, 6272
0025b8  9f070730  addli r15, r14, 6144
0025bc  1f048731  addli r8, r14, 6336
0025c0  1f0c0618  addli r24, r12, 3072
0025c4  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
0025c8  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
0025cc  9f078730  addli r15, r14, 6208
0025d0  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
0025d4  1f040619  addli r8, r12, 3200
0025d8  9f008618  addli r1, r12, 3136
0025dc  42130c02  vload_mask16.mz vr6{mr1}, 0(r24)
0025e0  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
0025e4  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
0025e8  9f078619  addli r15, r12, 3264
0025ec  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0025f0  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
0025f4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0025f8  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0025fc  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
002600  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
002604  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002608  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
00260c  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
002610  1f040732  addli r8, r14, 6400
002614  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
002618  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
00261c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002620  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
002624  9f07061a  addli r15, r12, 3328
002628  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
00262c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
002630  9f00061b  addli r1, r12, 3456
002634  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
002638  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00263c  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
002640  1f048732  addli r8, r14, 6464
002644  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002648  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00264c  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002650  1f040733  addli r8, r14, 6528
002654  1f078733  addli r14, r14, 6592
002658  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
00265c  1f04861a  addli r8, r12, 3392
002660  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
002664  1f06861b  addli r12, r12, 3520
002668  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
00266c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
002670  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
002674  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002678  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
00267c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002680  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002684  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
002688  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00268c  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
002690  13849105  setlt.u r8, r3, r25
002694  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002698  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00269c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0026a0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0026a4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0026a8  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0026ac  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0026b0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0026b4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0026b8  bb3b04fe  bneq r8, zero, -276
0026bc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0026c0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0026c4  9f000002  addli r1, zero, 256
0026c8  1f060000  addli r12, zero, 0
0026cc  eaf110c0  vsrl.p vr3, r1, vr1
0026d0  6af100c0  vsrl.p vr2, r1, vr0
0026d4  abf0ffff  lui r1, 1048575
0026d8  1b9c00f8  ori r24, r1, 3968
0026dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0026e0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0026e4  ea7119c0  vsrl.p vr3, r18, vr1
0026e8  6a7109c0  vsrl.p vr2, r18, vr0
0026ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0026f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0026f4  eaf119c0  vsrl.p vr3, r19, vr1
0026f8  6af109c0  vsrl.p vr2, r19, vr0
0026fc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002700  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002704  ea711ac0  vsrl.p vr3, r20, vr1
002708  6a710ac0  vsrl.p vr2, r20, vr0
00270c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002710  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002714  fa910040  vextracti.f r3, 0(vr1)
002718  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00271c  7a110040  vextracti.f r2, 0(vr0)
002720  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002724  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002728  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00272c  8b17c310  add.s r15, r6, r12
002730  0b97c610  add.s r14, r13, r12
002734  1f0c0c01  addli r24, r24, 128
002738  1f060604  addli r12, r12, 512
00273c  9f800718  addli r1, r15, 3072
002740  1f840719  addli r8, r15, 3200
002744  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
002748  9f0b8701  addli r23, r14, 192
00274c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002750  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
002754  9f808718  addli r1, r15, 3136
002758  1f848719  addli r8, r15, 3264
00275c  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
002760  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002764  9f000701  addli r1, r14, 128
002768  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
00276c  1f048700  addli r8, r14, 64
002770  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002774  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
002778  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00277c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002780  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002784  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002788  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
00278c  9f80071a  addli r1, r15, 3328
002790  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002794  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002798  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00279c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0027a0  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
0027a4  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0027a8  9f80871a  addli r1, r15, 3392
0027ac  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
0027b0  9f0b0702  addli r23, r14, 256
0027b4  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0027b8  1f040703  addli r8, r14, 384
0027bc  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0027c0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0027c4  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0027c8  9f80071b  addli r1, r15, 3456
0027cc  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
0027d0  9f87871b  addli r15, r15, 3520
0027d4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0027d8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0027dc  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0027e0  9f008702  addli r1, r14, 320
0027e4  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
0027e8  1f078703  addli r14, r14, 448
0027ec  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0027f0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0027f4  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0027f8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0027fc  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
002800  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002804  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002808  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
00280c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002810  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
002814  93000c05  setlt.u r1, r24, r16
002818  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00281c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002820  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002824  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002828  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00282c  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002830  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
002834  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002838  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00283c  bbcb00fe  bneq r1, zero, -272
002840  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002844  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002848  9f000002  addli r1, zero, 256
00284c  1f8c0800  addli r24, r17, 0
002850  803b0002  core_id r23
002854  9f280000  addli r17, zero, 2
002858  6af100c0  vsrl.p vr2, r1, vr0
00285c  eaf110c0  vsrl.p vr3, r1, vr1
002860  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002864  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002868  6a7109c0  vsrl.p vr2, r18, vr0
00286c  ea7119c0  vsrl.p vr3, r18, vr1
002870  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002874  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002878  6af109c0  vsrl.p vr2, r19, vr0
00287c  eaf119c0  vsrl.p vr3, r19, vr1
002880  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002884  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002888  6a710ac0  vsrl.p vr2, r20, vr0
00288c  ea711ac0  vsrl.p vr3, r20, vr1
002890  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002894  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002898  fa100040  vextracti.f r1, 0(vr0)
00289c  7a940040  vextracti.f r8, 0(vr1)
0028a0  0b661110  add.f.rn r12, r2, r1
0028a4  0be18110  add.f.rn r2, r3, r8
0028a8  8b809330  div.u r1, r7, r9
0028ac  1f070000  addli r14, zero, 0
0028b0  9bb06000  slli r1, r1, 6
0028b4  9b800004  andi r1, r1, 64
0028b8  97907001  or r1, r1, r23
0028bc  9bb12000  slli r3, r1, 2
0028c0  9b80e007  andi r1, r1, 126
0028c4  0b945111  add.s r8, r3, r21
0028c8  9bb02000  slli r1, r1, 2
0028cc  7360c400  stores.w r12, 0(r8)
0028d0  0b94a111  add.s r8, r3, r26
0028d4  9b914100  ori r3, r3, 4
0028d8  1f068fd7  addli r12, r30, -5184
0028dc  73602400  stores.w r2, 0(r8)
0028e0  0b915111  add.s r2, r3, r21
0028e4  0b945011  add.s r8, r1, r21
0028e8  8b91a111  add.s r3, r3, r26
0028ec  8b90a011  add.s r1, r1, r26
0028f0  00a00300  mfence { lm, sm, gm }
0028f4  80210b04  csr_set csr3, r22
0028f8  00d00100  sync_group
0028fc  6f410100  loads.w r2, 0(r2)
002900  6f440400  loads.w r8, 0(r8)
002904  efc10100  loads.w r3, 0(r3)
002908  efc00000  loads.w r1, 0(r1)
00290c  0b618110  add.f.rn r2, r2, r8
002910  2b04003a  lui r8, 237568
002914  8be01110  add.f.rn r1, r3, r1
002918  8b618120  mul.f.rn r3, r2, r8
00291c  8be08020  mul.f.rn r1, r1, r8
002920  0be13120  mul.f.rn r2, r3, r3
002924  8be10158  neg.f r3, r3
002928  8be02018  sub.f.rn r1, r1, r2
00292c  63013f00  loadli.w r2,  24(r30)
002930  8be02010  add.f.rn r1, r1, r2
002934  2b01803f  lui r2, 260096
002938  8f800008  sqrt.f.rn r1, r1
00293c  0f011118  div.f.rn r2, r2, r1
002940  9f008600  addli r1, r12, 64
002944  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
002948  1f044700  addli r8, r14, 32
00294c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002950  13848206  setle.u r8, r5, r8
002954  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
002958  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
00295c  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
002960  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
002964  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
002968  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00296c  bb700400  bneq r8, zero, 60
002970  9f000601  addli r1, r12, 128
002974  1f048601  addli r8, r12, 192
002978  1f078700  addli r14, r14, 64
00297c  1f060602  addli r12, r12, 256
002980  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002984  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
002988  93075704  setlt.u r15, r14, r5
00298c  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
002990  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
002994  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
002998  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
00299c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0029a0  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
0029a4  3bfe07fe  bneq r15, zero, -100
0029a8  6b510f00  load.d r[3:4], 0(r30)
0029ac  ab0000f0  lui r1, 983040
0029b0  00a00000  mfence { lm }
0029b4  97901500  or r1, r11, r1
0029b8  0b21b111  add.ul r[3:4], r[3:4], r[28:29]
0029bc  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
0029c0  00a00200  mfence { lm, gm }
0029c4  e3401f00  loadli.w r1,  12(r30)
0029c8  db3dffff  j -1556
0029cc  80300002  core_id r1
0029d0  bb800000  bneq r1, zero, 32
0029d4  63012f00  loadli.w r2,  16(r30)
0029d8  ab0100f0  lui r3, 983040
0029dc  1b311100  slli r2, r2, 1
0029e0  17113100  or r2, r2, r3
0029e4  abc10100  lui r3, 28
0029e8  9f810100  addli r3, r3, 0
0029ec  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0029f0  2bf10000  lui r2, 15
0029f4  e3411f00  loadli.w r3,  12(r30)
0029f8  00200300  mfence { sm, gm }
0029fc  1b11f1ff  ori r2, r2, 4095
002a00  80210104  csr_set csr3, r2
002a04  00d00100  sync_group
002a08  cbd3111e  ble.s r3, r1, 15604
002a0c  63012f00  loadli.w r2,  16(r30)
002a10  e3412f00  loadli.w r3,  20(r30)
002a14  1f062000  addli r12, zero, 16
002a18  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002a1c  1f140000  addli r8, zero, 1
002a20  1f0b8fd7  addli r22, r30, -5184
002a24  9f050002  addli r11, zero, 256
002a28  ab06ffff  lui r13, 1048560
002a2c  ab08807f  lui r17, 522240
002a30  2b09c07f  lui r18, 523264
002a34  9f090001  addli r19, zero, 128
002a38  1f0a8000  addli r20, zero, 64
002a3c  9f0a4000  addli r21, zero, 32
002a40  9b321100  slli r5, r2, 1
002a44  0b123110  add.s r4, r2, r3
002a48  33010108  fix2float.rn r2, r2
002a4c  1bb31100  slli r6, r3, 1
002a50  67042fd4  storeli.w r2, -5568(r30)
002a54  1f71f2ff  addli r2, r4, -1
002a58  67085fd4  storeli.w r5, -5504(r30)
002a5c  8b133130  div.s r7, r2, r3
002a60  2bf1ffff  lui r2, 1048575
002a64  1b15f1ff  ori r10, r2, 4095
002a68  1f010fd7  addli r2, r30, -5248
002a6c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002a70  6a200622  vor.u.mz vr0{mr1}, r12, vr0
002a74  1f018fd6  addli r2, r30, -5312
002a78  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002a7c  2b710000  lui r2, 7
002a80  1b18f1ff  ori r16, r2, 4095
002a84  db080000  j 68
002a88  9f028fd5  addli r5, r30, -5440
002a8c  00a00000  mfence { lm }
002a90  eb510f00  load.d r[4:5], 0(r30)
002a94  2b0100f0  lui r2, 983040
002a98  80540102  load_param_i r9, 2
002a9c  6bdb0200  load.d r[23:24], 0(r5)
002aa0  e3020fd5  loadli.w r5,  -5504(r30)
002aa4  8b901410  add.s r1, r9, r1
002aa8  8ba16111  add.ul r[4:5], r[4:5], r[23:24]
002aac  17912200  or r2, r5, r2
002ab0  1f0b8fd7  addli r22, r30, -5184
002ab4  7fb16101  s_lm2gm r2, r22, 0(r[4:5])
002ab8  00a00200  mfence { lm, gm }
002abc  63411f00  loadli.w r2,  12(r30)
002ac0  3fa02000  blt.s r1, r2, 8
002ac4  5b870700  j 15416
002ac8  63011f00  loadli.w r2,  8(r30)
002acc  9f047fd6  addli r9, r30, -5320
002ad0  0b912010  add.s r2, r1, r2
002ad4  0b11f120  mul.s r2, r2, r15
002ad8  33110128  sext_int2long r[3:4], r2
002adc  973b8102  sll.d r[24:25], r[3:4], r8
002ae0  ebd10400  load.d r[4:5], 0(r9)
002ae4  2b0100f0  lui r2, 983040
002ae8  9f048fd5  addli r9, r30, -5440
002aec  17912200  or r2, r5, r2
002af0  73b07401  store.d r[24:25], 0(r9)
002af4  8ba17111  add.ul r[4:5], r[4:5], r[24:25]
002af8  7fa16101  l_gm2lm r2, r22, 0(r[4:5])
002afc  00a00200  mfence { lm, gm }
002b00  bfdc8300  blt.s r7, r8, 820
002b04  9f010000  addli r3, zero, 0
002b08  1f010000  addli r2, zero, 0
002b0c  1f0d0000  addli r26, zero, 0
002b10  db0c0000  j 100
002b14  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
002b18  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
002b1c  1f1d0d00  addli r26, r26, 1
002b20  6af105c0  vsrl.p vr2, r11, vr0
002b24  eaf115c0  vsrl.p vr3, r11, vr1
002b28  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b2c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002b30  6af109c0  vsrl.p vr2, r19, vr0
002b34  eaf119c0  vsrl.p vr3, r19, vr1
002b38  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b3c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002b40  6a710ac0  vsrl.p vr2, r20, vr0
002b44  ea711ac0  vsrl.p vr3, r20, vr1
002b48  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b4c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002b50  6af10ac0  vsrl.p vr2, r21, vr0
002b54  eaf11ac0  vsrl.p vr3, r21, vr1
002b58  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b5c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002b60  7a120040  vextracti.f r4, 0(vr0)
002b64  fa920040  vextracti.f r5, 0(vr1)
002b68  8be14110  add.f.rn r3, r3, r4
002b6c  0b615110  add.f.rn r2, r2, r5
002b70  373b7d00  beq r26, r7, 716
002b74  1f020d00  addli r4, r26, 0
002b78  3730b700  beq r14, r11, 12
002b7c  1722ad00  xor r4, r26, r10
002b80  0b924310  add.s r4, r7, r4
002b84  9f020fd7  addli r5, r30, -5248
002b88  8b14e220  mul.s r9, r4, r14
002b8c  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
002b90  8b949718  sub.s r9, r15, r9
002b94  8b9de440  min.s r27, r9, r14
002b98  92322002  vadd.s.mz vr5{mr1}, zero, vr2
002b9c  12322002  vadd.s.mz vr4{mr1}, zero, vr2
002ba0  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002ba4  bfcd8dfe  blt.s r27, r8, -144
002ba8  0b1b4320  mul.s r22, r6, r4
002bac  1f020fd7  addli r4, r30, -5248
002bb0  abcb0100  lui r23, 28
002bb4  1f0e0000  addli r28, zero, 0
002bb8  9f048fd7  addli r9, r30, -5184
002bbc  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
002bc0  9f8b0b00  addli r23, r23, 0
002bc4  12315002  vadd.s.mz vr2{mr1}, zero, vr5
002bc8  92315002  vadd.s.mz vr3{mr1}, zero, vr5
002bcc  12325002  vadd.s.mz vr4{mr1}, zero, vr5
002bd0  0b9c6b11  add.s r24, r23, r22
002bd4  0b926411  add.s r4, r9, r22
002bd8  9f028fd6  addli r5, r30, -5312
002bdc  4a030c02  vloads.mz vr6{mr1}, 0(r24)
002be0  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
002be4  c2030202  vload.mz vr7{mr1}, 0(r4)
002be8  9f020fd7  addli r5, r30, -5248
002bec  9f0c8c00  addli r25, r24, 64
002bf0  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
002bf4  9f028e00  addli r5, r28, 64
002bf8  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
002bfc  6ab57602  vand.s.mz vr10{mr1}, r13, vr7
002c00  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
002c04  6ab36602  vand.s.mz vr6{mr1}, r13, vr6
002c08  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
002c0c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
002c10  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
002c14  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
002c18  669503c0  vabs.f vr10, vr7
002c1c  6a348402  vand.s.mz vr8{mr1}, r8, vr8
002c20  ea349402  vand.s.mz vr9{mr1}, r8, vr9
002c24  72a1a842  vlt.u.mz mr2{mr1}, r17, vr10
002c28  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
002c2c  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
002c30  12348802  vadd.s.mz vr8{mr1}, r16, vr8
002c34  92349802  vadd.s.mz vr9{mr1}, r16, vr9
002c38  eab38602  vand.s.mz vr7{mr1}, r13, vr8
002c3c  661403c0  vabs.f vr8, vr6
002c40  6ab39602  vand.s.mz vr6{mr1}, r13, vr9
002c44  ea230934  vor.u.mh vr7{mr2}, r18, vr0
002c48  72a18842  vlt.u.mz mr2{mr1}, r17, vr8
002c4c  6a230934  vor.u.mh vr6{mr2}, r18, vr0
002c50  4a840c02  vloads.mz vr8{mr1}, 0(r25)
002c54  9f0c8200  addli r25, r4, 64
002c58  c2840c02  vload.mz vr9{mr1}, 0(r25)
002c5c  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
002c60  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
002c64  6ab36602  vand.s.mz vr6{mr1}, r13, vr6
002c68  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
002c6c  eab49602  vand.s.mz vr9{mr1}, r13, vr9
002c70  46007202  vstore.mz vr7{mr1}, 0(r4)
002c74  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002c78  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002c7c  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
002c80  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
002c84  6ab48602  vand.s.mz vr8{mr1}, r13, vr8
002c88  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002c8c  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002c90  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
002c94  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
002c98  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
002c9c  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
002ca0  ea349402  vand.s.mz vr9{mr1}, r8, vr9
002ca4  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
002ca8  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
002cac  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
002cb0  661505c0  vabs.f vr10, vr10
002cb4  661404c0  vabs.f vr8, vr8
002cb8  92349802  vadd.s.mz vr9{mr1}, r16, vr9
002cbc  9235b802  vadd.s.mz vr11{mr1}, r16, vr11
002cc0  72a1a842  vlt.u.mz mr2{mr1}, r17, vr10
002cc4  eab49602  vand.s.mz vr9{mr1}, r13, vr9
002cc8  6ab5b602  vand.s.mz vr10{mr1}, r13, vr11
002ccc  ea240934  vor.u.mh vr9{mr2}, r18, vr0
002cd0  72a18842  vlt.u.mz mr2{mr1}, r17, vr8
002cd4  6a250934  vor.u.mh vr10{mr2}, r18, vr0
002cd8  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
002cdc  eab4a602  vand.s.mz vr9{mr1}, r13, vr10
002ce0  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
002ce4  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002ce8  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002cec  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
002cf0  46808c02  vstore.mz vr8{mr1}, 0(r25)
002cf4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002cf8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002cfc  4be85dfe  ble.s r27, r5, -488
002d00  9f020c01  addli r5, r24, 128
002d04  9f0c0201  addli r25, r4, 128
002d08  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
002d0c  1f028201  addli r4, r4, 192
002d10  1f0e0e01  addli r28, r28, 128
002d14  9f8b0b02  addli r23, r23, 256
002d18  9f840402  addli r9, r9, 256
002d1c  6a237622  vor.u.mz vr6{mr1}, r12, vr7
002d20  4a840202  vloads.mz vr8{mr1}, 0(r5)
002d24  c2840c02  vload.mz vr9{mr1}, 0(r25)
002d28  9f028c01  addli r5, r24, 192
002d2c  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
002d30  6ab09602  vand.s.mz vr0{mr1}, r13, vr9
002d34  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
002d38  6ab48602  vand.s.mz vr8{mr1}, r13, vr8
002d3c  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
002d40  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
002d44  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
002d48  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
002d4c  e69504c0  vabs.f vr11, vr9
002d50  6a300402  vand.s.mz vr0{mr1}, r8, vr0
002d54  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
002d58  72a1b842  vlt.u.mz mr2{mr1}, r17, vr11
002d5c  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
002d60  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
002d64  12300802  vadd.s.mz vr0{mr1}, r16, vr0
002d68  1235a802  vadd.s.mz vr10{mr1}, r16, vr10
002d6c  eab40602  vand.s.mz vr9{mr1}, r13, vr0
002d70  661004c0  vabs.f vr0, vr8
002d74  6ab4a602  vand.s.mz vr8{mr1}, r13, vr10
002d78  ea247934  vor.u.mh vr9{mr2}, r18, vr7
002d7c  72a10842  vlt.u.mz mr2{mr1}, r17, vr0
002d80  6a247934  vor.u.mh vr8{mr2}, r18, vr7
002d84  4a800202  vloads.mz vr0{mr1}, 0(r5)
002d88  42050202  vload.mz vr10{mr1}, 0(r4)
002d8c  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
002d90  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
002d94  6ab5a602  vand.s.mz vr10{mr1}, r13, vr10
002d98  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
002d9c  6ab48602  vand.s.mz vr8{mr1}, r13, vr8
002da0  46809c02  vstore.mz vr9{mr1}, 0(r25)
002da4  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
002da8  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
002dac  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
002db0  6ab00602  vand.s.mz vr0{mr1}, r13, vr0
002db4  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
002db8  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
002dbc  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
002dc0  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
002dc4  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
002dc8  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
002dcc  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
002dd0  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
002dd4  e69000c0  vabs.f vr1, vr1
002dd8  661000c0  vabs.f vr0, vr0
002ddc  1235a802  vadd.s.mz vr10{mr1}, r16, vr10
002de0  9235b802  vadd.s.mz vr11{mr1}, r16, vr11
002de4  72a11842  vlt.u.mz mr2{mr1}, r17, vr1
002de8  6ab5a602  vand.s.mz vr10{mr1}, r13, vr10
002dec  eab0b602  vand.s.mz vr1{mr1}, r13, vr11
002df0  6a257934  vor.u.mh vr10{mr2}, r18, vr7
002df4  72a10842  vlt.u.mz mr2{mr1}, r17, vr0
002df8  ea207934  vor.u.mh vr1{mr2}, r18, vr7
002dfc  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
002e00  eab31602  vand.s.mz vr7{mr1}, r13, vr1
002e04  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
002e08  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
002e0c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002e10  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002e14  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
002e18  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
002e1c  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
002e20  46000202  vstore.mz vr0{mr1}, 0(r4)
002e24  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002e28  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002e2c  bf16beff  blt.s r28, r27, -604
002e30  db9cffff  j -796
002e34  1f010000  addli r2, zero, 0
002e38  9f010000  addli r3, zero, 0
002e3c  00a00000  mfence { lm }
002e40  3fa187fe  blt.s r15, r8, -952
002e44  63028fd4  loadli.w r4,  -5568(r30)
002e48  9f040000  addli r9, zero, 0
002e4c  8f814118  div.f.rn r3, r3, r4
002e50  0f014118  div.f.rn r2, r2, r4
002e54  0be23120  mul.f.rn r4, r3, r3
002e58  8be10158  neg.f r3, r3
002e5c  0b614118  sub.f.rn r2, r2, r4
002e60  63023f00  loadli.w r4,  24(r30)
002e64  0b614110  add.f.rn r2, r2, r4
002e68  2b02803f  lui r4, 260096
002e6c  0f010108  sqrt.f.rn r2, r2
002e70  0f012218  div.f.rn r2, r4, r2
002e74  1f028fd7  addli r4, r30, -5184
002e78  42020202  vload.mz vr4{mr1}, 0(r4)
002e7c  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
002e80  1f8b4400  addli r22, r9, 32
002e84  ea212622  vor.u.mz vr3{mr1}, r12, vr2
002e88  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002e8c  6ab24602  vand.s.mz vr4{mr1}, r13, vr4
002e90  92925102  vadd.f.mz.rn vr5{mr1}, r3, vr5
002e94  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
002e98  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002e9c  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002ea0  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002ea4  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002ea8  6a336402  vand.s.mz vr6{mr1}, r8, vr6
002eac  ea337402  vand.s.mz vr7{mr1}, r8, vr7
002eb0  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002eb4  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002eb8  e69202c0  vabs.f vr5, vr5
002ebc  661202c0  vabs.f vr4, vr4
002ec0  12336802  vadd.s.mz vr6{mr1}, r16, vr6
002ec4  92337802  vadd.s.mz vr7{mr1}, r16, vr7
002ec8  72a15842  vlt.u.mz mr2{mr1}, r17, vr5
002ecc  6ab36602  vand.s.mz vr6{mr1}, r13, vr6
002ed0  eab27602  vand.s.mz vr5{mr1}, r13, vr7
002ed4  6a232934  vor.u.mh vr6{mr2}, r18, vr2
002ed8  72a14842  vlt.u.mz mr2{mr1}, r17, vr4
002edc  ea222934  vor.u.mh vr5{mr2}, r18, vr2
002ee0  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
002ee4  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
002ee8  46004202  vstore.mz vr4{mr1}, 0(r4)
002eec  4bfe67fd  ble.s r15, r22, -1124
002ef0  1f0b8200  addli r22, r4, 64
002ef4  9f848400  addli r9, r9, 64
002ef8  1f020201  addli r4, r4, 128
002efc  42020b02  vload.mz vr4{mr1}, 0(r22)
002f00  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002f04  6ab24602  vand.s.mz vr4{mr1}, r13, vr4
002f08  92925102  vadd.f.mz.rn vr5{mr1}, r3, vr5
002f0c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
002f10  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002f14  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002f18  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002f1c  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002f20  6a336402  vand.s.mz vr6{mr1}, r8, vr6
002f24  ea337402  vand.s.mz vr7{mr1}, r8, vr7
002f28  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002f2c  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002f30  e69202c0  vabs.f vr5, vr5
002f34  661202c0  vabs.f vr4, vr4
002f38  12336802  vadd.s.mz vr6{mr1}, r16, vr6
002f3c  92337802  vadd.s.mz vr7{mr1}, r16, vr7
002f40  72a15842  vlt.u.mz mr2{mr1}, r17, vr5
002f44  6ab36602  vand.s.mz vr6{mr1}, r13, vr6
002f48  eab27602  vand.s.mz vr5{mr1}, r13, vr7
002f4c  6a232934  vor.u.mh vr6{mr2}, r18, vr2
002f50  72a14842  vlt.u.mz mr2{mr1}, r17, vr4
002f54  ea222934  vor.u.mh vr5{mr2}, r18, vr2
002f58  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
002f5c  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
002f60  46002b02  vstore.mz vr2{mr1}, 0(r22)
002f64  3fdcf4fe  blt.s r9, r15, -236
002f68  5b64ffff  j -1248
002f6c  80300002  core_id r1
002f70  bb800000  bneq r1, zero, 32
002f74  63012f00  loadli.w r2,  16(r30)
002f78  ab0100f0  lui r3, 983040
002f7c  1b311100  slli r2, r2, 1
002f80  17113100  or r2, r2, r3
002f84  ab010200  lui r3, 32
002f88  9f810100  addli r3, r3, 0
002f8c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002f90  2bf10000  lui r2, 15
002f94  e3411f00  loadli.w r3,  12(r30)
002f98  00200300  mfence { sm, gm }
002f9c  1b11f1ff  ori r2, r2, 4095
002fa0  80210104  csr_set csr3, r2
002fa4  00d00100  sync_group
002fa8  4bdd111a  ble.s r3, r1, 14164
002fac  e3012f00  loadli.w r3,  16(r30)
002fb0  e3422f00  loadli.w r5,  20(r30)
002fb4  2bf4ffff  lui r8, 1048575
002fb8  2b080200  lui r16, 32
002fbc  9f068fd7  addli r13, r30, -5184
002fc0  9f040002  addli r9, zero, 256
002fc4  1f050001  addli r10, zero, 128
002fc8  9f058000  addli r11, zero, 64
002fcc  1f064000  addli r12, zero, 32
002fd0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002fd4  1b14f4ff  ori r8, r8, 4095
002fd8  1f080800  addli r16, r16, 0
002fdc  0b925110  add.s r4, r3, r5
002fe0  1bb11100  slli r2, r3, 1
002fe4  b3810108  fix2float.rn r3, r3
002fe8  1f73f2ff  addli r6, r4, -1
002fec  1bb21200  slli r4, r5, 1
002ff0  8b125330  div.s r5, r6, r5
002ff4  1f130000  addli r6, zero, 1
002ff8  5b070000  j 56
002ffc  00a00000  mfence { lm }
003000  6b5a0f00  load.d r[21:22], 0(r30)
003004  ab0900f0  lui r19, 983040
003008  9f068fd7  addli r13, r30, -5184
00300c  97193101  or r19, r2, r19
003010  8b281a11  add.ul r[18:19], r[21:22], r[18:19]
003014  005a0102  load_param_i r20, 2
003018  ffb9d800  s_lm2gm r19, r13, 0(r[18:19])
00301c  8b101a10  add.s r1, r20, r1
003020  00a00200  mfence { lm, gm }
003024  e3431f00  loadli.w r7,  12(r30)
003028  3fa07000  blt.s r1, r7, 8
00302c  5bda0600  j 14032
003030  e3031f00  loadli.w r7,  8(r30)
003034  ab0900f0  lui r19, 983040
003038  97193101  or r19, r2, r19
00303c  8b987010  add.s r17, r1, r7
003040  9f037fd6  addli r7, r30, -5320
003044  8b98f820  mul.s r17, r17, r15
003048  6bda0300  load.d r[21:22], 0(r7)
00304c  b3980828  sext_int2long r[18:19], r17
003050  97b86802  sll.d r[18:19], r[18:19], r6
003054  0b2a1a11  add.ul r[21:22], r[21:22], r[18:19]
003058  ff29da00  l_gm2lm r19, r13, 0(r[21:22])
00305c  00a00200  mfence { lm, gm }
003060  3fc76200  blt.s r5, r6, 464
003064  1f0a0000  addli r20, zero, 0
003068  9f090000  addli r19, zero, 0
00306c  9f0a0000  addli r21, zero, 0
003070  db0c0000  j 100
003074  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
003078  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00307c  9f9a0a00  addli r21, r21, 1
003080  6af134c0  vsrl.p vr2, r9, vr3
003084  6af214c0  vsrl.p vr4, r9, vr1
003088  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
00308c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
003090  ea7125c0  vsrl.p vr3, r10, vr2
003094  6a7215c0  vsrl.p vr4, r10, vr1
003098  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
00309c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0030a0  eaf125c0  vsrl.p vr3, r11, vr2
0030a4  6af215c0  vsrl.p vr4, r11, vr1
0030a8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0030ac  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0030b0  ea7126c0  vsrl.p vr3, r12, vr2
0030b4  6a7216c0  vsrl.p vr4, r12, vr1
0030b8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0030bc  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0030c0  fa130140  vextracti.f r7, 0(vr2)
0030c4  fa960040  vextracti.f r13, 0(vr1)
0030c8  0b6a7a10  add.f.rn r20, r20, r7
0030cc  8be9d910  add.f.rn r19, r19, r13
0030d0  b7a55a00  beq r21, r5, 360
0030d4  1f8c0a00  addli r24, r21, 0
0030d8  37309700  beq r14, r9, 12
0030dc  17ab8a00  xor r22, r21, r8
0030e0  0b9c6211  add.s r24, r5, r22
0030e4  0b1bec20  mul.s r22, r24, r14
0030e8  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0030ec  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0030f0  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0030f4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0030f8  0b9b6719  sub.s r22, r15, r22
0030fc  0b1beb40  min.s r22, r22, r14
003100  bf5d6bfe  blt.s r22, r6, -140
003104  92300002  vadd.s.mz vr1{mr1}, zero, vr0
003108  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00310c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
003110  12320002  vadd.s.mz vr4{mr1}, zero, vr0
003114  9f0b0000  addli r23, zero, 0
003118  0b1c8221  mul.s r24, r4, r24
00311c  9f0c8fd7  addli r25, r30, -5184
003120  1f0d0800  addli r26, r16, 0
003124  8b1d8d11  add.s r27, r26, r24
003128  9f838b00  addli r7, r23, 64
00312c  ca820d02  vloads.mz vr5{mr1}, 0(r27)
003130  1f8e8d00  addli r28, r27, 64
003134  4a030e02  vloads.mz vr6{mr1}, 0(r28)
003138  0b9e8c11  add.s r28, r25, r24
00313c  c2030e02  vload.mz vr7{mr1}, 0(r28)
003140  9f068e00  addli r13, r28, 64
003144  42840602  vload.mz vr8{mr1}, 0(r13)
003148  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
00314c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
003150  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
003154  06b40300  vfp162float_l.rn vr8, vr7
003158  86f30300  vfp162float_h.rn vr7, vr7
00315c  86340300  vfp162float_l.rn vr9, vr6
003160  06730300  vfp162float_h.rn vr6, vr6
003164  86120400  vfloat2fp16_l.rn vr5, vr8
003168  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
00316c  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
003170  12340002  vadd.s.mz vr8{mr1}, zero, vr0
003174  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
003178  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
00317c  06940400  vfloat2fp16_l.rn vr8, vr9
003180  86d20300  vfloat2fp16_h.rn vr5, vr7
003184  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
003188  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
00318c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
003190  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003194  06540300  vfloat2fp16_h.rn vr8, vr6
003198  46005e02  vstore.mz vr5{mr1}, 0(r28)
00319c  46808602  vstore.mz vr8{mr1}, 0(r13)
0031a0  4b5b7bfe  ble.s r22, r7, -300
0031a4  9f830d01  addli r7, r27, 128
0031a8  9f060e01  addli r13, r28, 128
0031ac  9f8b0b01  addli r23, r23, 128
0031b0  1f0d0d02  addli r26, r26, 256
0031b4  9f8c0c02  addli r25, r25, 256
0031b8  ca820302  vloads.mz vr5{mr1}, 0(r7)
0031bc  9f838d01  addli r7, r27, 192
0031c0  c2830602  vload.mz vr7{mr1}, 0(r13)
0031c4  4a830302  vloads.mz vr6{mr1}, 0(r7)
0031c8  9f038e01  addli r7, r28, 192
0031cc  42840302  vload.mz vr8{mr1}, 0(r7)
0031d0  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
0031d4  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0031d8  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
0031dc  12330002  vadd.s.mz vr6{mr1}, zero, vr0
0031e0  86b40300  vfp162float_l.rn vr9, vr7
0031e4  86f30300  vfp162float_h.rn vr7, vr7
0031e8  86920400  vfloat2fp16_l.rn vr5, vr9
0031ec  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0031f0  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0031f4  86340400  vfp162float_l.rn vr9, vr8
0031f8  06740400  vfp162float_h.rn vr8, vr8
0031fc  06930400  vfloat2fp16_l.rn vr6, vr9
003200  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
003204  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
003208  86d20300  vfloat2fp16_h.rn vr5, vr7
00320c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
003210  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
003214  06530400  vfloat2fp16_h.rn vr6, vr8
003218  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
00321c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003220  46805602  vstore.mz vr5{mr1}, 0(r13)
003224  46806302  vstore.mz vr6{mr1}, 0(r7)
003228  bffb6bff  blt.s r23, r22, -260
00322c  5bc9ffff  j -440
003230  9f090000  addli r19, zero, 0
003234  1f0a0000  addli r20, zero, 0
003238  00a00000  mfence { lm }
00323c  3f8767fe  blt.s r15, r6, -576
003240  0f0a3a18  div.f.rn r20, r20, r3
003244  8f893918  div.f.rn r19, r19, r3
003248  e3033f00  loadli.w r7,  24(r30)
00324c  1f0b0000  addli r22, zero, 0
003250  8b6a4a21  mul.f.rn r21, r20, r20
003254  0b6a0a58  neg.f r20, r20
003258  8be95919  sub.f.rn r19, r19, r21
00325c  9f0a8fd7  addli r21, r30, -5184
003260  8be97910  add.f.rn r19, r19, r7
003264  ab03803f  lui r7, 260096
003268  8f890908  sqrt.f.rn r19, r19
00326c  8f893319  div.f.rn r19, r7, r19
003270  c2800a02  vload.mz vr1{mr1}, 0(r21)
003274  9f0b4b00  addli r23, r22, 32
003278  06b10000  vfp162float_l.rn vr2, vr1
00327c  86f00000  vfp162float_h.rn vr1, vr1
003280  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003284  92111a02  vadd.f.mz.rn vr3{mr1}, r20, vr1
003288  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00328c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003290  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
003294  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003298  06120100  vfloat2fp16_l.rn vr4, vr2
00329c  06d20100  vfloat2fp16_h.rn vr4, vr3
0032a0  46804a02  vstore.mz vr4{mr1}, 0(r21)
0032a4  4be577ff  ble.s r15, r23, -680
0032a8  9f8b8a00  addli r23, r21, 64
0032ac  1f0b8b00  addli r22, r22, 64
0032b0  9f8a0a01  addli r21, r21, 128
0032b4  42810b02  vload.mz vr2{mr1}, 0(r23)
0032b8  86310100  vfp162float_l.rn vr3, vr2
0032bc  06710100  vfp162float_h.rn vr2, vr2
0032c0  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
0032c4  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
0032c8  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
0032cc  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
0032d0  86900100  vfloat2fp16_l.rn vr1, vr3
0032d4  86500100  vfloat2fp16_h.rn vr1, vr2
0032d8  46801b02  vstore.mz vr1{mr1}, 0(r23)
0032dc  3f5efbfe  blt.s r22, r15, -108
0032e0  dba3ffff  j -740
0032e4  80300002  core_id r1
0032e8  1f210000  addli r2, zero, 2
0032ec  37a02018  beq r1, r2, 12296
0032f0  1f110000  addli r2, zero, 1
0032f4  37922014  beq r1, r2, 10372
0032f8  3be00018  bneq r1, zero, 12312
0032fc  63012f00  loadli.w r2,  16(r30)
003300  ab0100f0  lui r3, 983040
003304  1b312100  slli r2, r2, 2
003308  17113100  or r2, r2, r3
00330c  ab710200  lui r3, 39
003310  9f810108  addli r3, r3, 1024
003314  7f013200  l_gm2sm r2, r3, 0(r[5:6])
003318  5bff0500  j 12280
00331c  80300002  core_id r1
003320  bb800000  bneq r1, zero, 32
003324  63012f00  loadli.w r2,  16(r30)
003328  ab0100f0  lui r3, 983040
00332c  1b312100  slli r2, r2, 2
003330  17113100  or r2, r2, r3
003334  abd10200  lui r3, 45
003338  9f8101f0  addli r3, r3, -2048
00333c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
003340  2bf10000  lui r2, 15
003344  e3411f00  loadli.w r3,  12(r30)
003348  00200300  mfence { sm, gm }
00334c  1b11f1ff  ori r2, r2, 4095
003350  80210104  csr_set csr3, r2
003354  00d00100  sync_group
003358  cb9e1118  ble.s r3, r1, 13220
00335c  e3012f00  loadli.w r3,  16(r30)
003360  e3422f00  loadli.w r5,  20(r30)
003364  abf4ffff  lui r9, 1048575
003368  abd80200  lui r17, 45
00336c  1f0b8fd7  addli r22, r30, -5184
003370  1f140000  addli r8, zero, 1
003374  1f050002  addli r10, zero, 256
003378  9f050001  addli r11, zero, 128
00337c  1f068000  addli r12, zero, 64
003380  9f064000  addli r13, zero, 32
003384  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003388  9b94f4ff  ori r9, r9, 4095
00338c  9f8808f0  addli r17, r17, -2048
003390  0b925110  add.s r4, r3, r5
003394  1bb12100  slli r2, r3, 2
003398  b3810108  fix2float.rn r3, r3
00339c  1f73f2ff  addli r6, r4, -1
0033a0  1bb22200  slli r4, r5, 2
0033a4  67043fd6  storeli.w r3, -5312(r30)
0033a8  9f010fd7  addli r3, r30, -5248
0033ac  8b125330  div.s r5, r6, r5
0033b0  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0033b4  5b070000  j 56
0033b8  00a00000  mfence { lm }
0033bc  6b530f00  load.d r[7:8], 0(r30)
0033c0  2b0800f0  lui r16, 983040
0033c4  1f0b8fd7  addli r22, r30, -5184
0033c8  005a0102  load_param_i r20, 2
0033cc  17180101  or r16, r2, r16
0033d0  8b101a10  add.s r1, r20, r1
0033d4  0b292311  add.ul r[19:20], r[7:8], r[19:20]
0033d8  7f386901  s_lm2gm r16, r22, 0(r[19:20])
0033dc  00a00200  mfence { lm, gm }
0033e0  e3411f00  loadli.w r3,  12(r30)
0033e4  3fa03000  blt.s r1, r3, 8
0033e8  db620600  j 13076
0033ec  e3011f00  loadli.w r3,  8(r30)
0033f0  0b983010  add.s r16, r1, r3
0033f4  9f210000  addli r3, zero, 2
0033f8  0b18f820  mul.s r16, r16, r15
0033fc  33190828  sext_int2long r[19:20], r16
003400  2b0800f0  lui r16, 983040
003404  17393902  sll.d r[19:20], r[19:20], r3
003408  9f017fd6  addli r3, r30, -5320
00340c  17180101  or r16, r2, r16
003410  6bd30100  load.d r[7:8], 0(r3)
003414  0b2a2311  add.ul r[21:22], r[7:8], r[19:20]
003418  7f286a01  l_gm2lm r16, r22, 0(r[21:22])
00341c  00a00200  mfence { lm, gm }
003420  bf978200  blt.s r5, r8, 484
003424  9f0a0000  addli r21, zero, 0
003428  1f0a0000  addli r20, zero, 0
00342c  1f0b0000  addli r22, zero, 0
003430  db0c0000  j 100
003434  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
003438  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00343c  1f1b0b00  addli r22, r22, 1
003440  6a7105c0  vsrl.p vr2, r10, vr0
003444  ea7115c0  vsrl.p vr3, r10, vr1
003448  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00344c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003450  6af105c0  vsrl.p vr2, r11, vr0
003454  eaf115c0  vsrl.p vr3, r11, vr1
003458  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00345c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003460  6a7106c0  vsrl.p vr2, r12, vr0
003464  ea7116c0  vsrl.p vr3, r12, vr1
003468  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00346c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003470  6af106c0  vsrl.p vr2, r13, vr0
003474  eaf116c0  vsrl.p vr3, r13, vr1
003478  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00347c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003480  fa110040  vextracti.f r3, 0(vr0)
003484  7a930040  vextracti.f r6, 0(vr1)
003488  8bea3a10  add.f.rn r21, r21, r3
00348c  0b6a6a10  add.f.rn r20, r20, r6
003490  b7755b00  beq r22, r5, 380
003494  1f080b00  addli r16, r22, 0
003498  3730a700  beq r14, r10, 12
00349c  17289b00  xor r16, r22, r9
0034a0  0b980211  add.s r16, r5, r16
0034a4  9f010fd7  addli r3, r30, -5248
0034a8  8b1be820  mul.s r23, r16, r14
0034ac  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0034b0  8b9b7719  sub.s r23, r15, r23
0034b4  8b9beb40  min.s r23, r23, r14
0034b8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0034bc  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0034c0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0034c4  bfcd8bfe  blt.s r23, r8, -144
0034c8  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0034cc  1f0c0000  addli r24, zero, 0
0034d0  8b1c0221  mul.s r25, r4, r16
0034d4  1f0d8fd7  addli r26, r30, -5184
0034d8  9f8d0800  addli r27, r17, 0
0034dc  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0034e0  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0034e4  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0034e8  0b989d11  add.s r16, r27, r25
0034ec  0b1e9d11  add.s r28, r26, r25
0034f0  1f038800  addli r6, r16, 64
0034f4  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
0034f8  9f038801  addli r7, r16, 192
0034fc  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
003500  9f018e01  addli r3, r28, 192
003504  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
003508  1f030801  addli r6, r16, 128
00350c  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
003510  9f030e01  addli r7, r28, 128
003514  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
003518  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
00351c  c2950302  vload_mask16.mz vr11{mr1}, 0(r7)
003520  1f038e00  addli r6, r28, 64
003524  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
003528  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00352c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
003530  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
003534  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
003538  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00353c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003540  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
003544  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
003548  1f038c00  addli r6, r24, 64
00354c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003550  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
003554  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003558  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
00355c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003560  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
003564  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
003568  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00356c  4bab6bfe  ble.s r23, r6, -312
003570  1f030802  addli r6, r16, 256
003574  9f038802  addli r7, r16, 320
003578  9f010e02  addli r3, r28, 256
00357c  1f0c0c01  addli r24, r24, 128
003580  9f8d0d04  addli r27, r27, 512
003584  1f0d0d04  addli r26, r26, 512
003588  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
00358c  1f030803  addli r6, r16, 384
003590  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
003594  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
003598  9f038e02  addli r7, r28, 320
00359c  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
0035a0  1f038803  addli r6, r16, 448
0035a4  1f088e03  addli r16, r28, 448
0035a8  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0035ac  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
0035b0  1f030e03  addli r6, r28, 384
0035b4  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0035b8  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0035bc  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
0035c0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0035c4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0035c8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0035cc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0035d0  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0035d4  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
0035d8  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0035dc  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0035e0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0035e4  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
0035e8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0035ec  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0035f0  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0035f4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0035f8  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0035fc  bf3b7cff  blt.s r24, r23, -276
003600  dbc6ffff  j -460
003604  1f0a0000  addli r20, zero, 0
003608  9f0a0000  addli r21, zero, 0
00360c  00a00000  mfence { lm }
003610  bfa687fe  blt.s r15, r8, -600
003614  e3018fd6  loadli.w r3,  -5312(r30)
003618  1f0b0000  addli r22, zero, 0
00361c  8f8a3a18  div.f.rn r21, r21, r3
003620  0f083a18  div.f.rn r16, r20, r3
003624  e3013f00  loadli.w r3,  24(r30)
003628  0bea5a21  mul.f.rn r20, r21, r21
00362c  0b684819  sub.f.rn r16, r16, r20
003630  0bea0a58  neg.f r20, r21
003634  9f0a8fd7  addli r21, r30, -5184
003638  0b683810  add.f.rn r16, r16, r3
00363c  ab01803f  lui r3, 260096
003640  0f080808  sqrt.f.rn r16, r16
003644  0f880119  div.f.rn r16, r3, r16
003648  9f8b8a00  addli r23, r21, 64
00364c  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
003650  1f0c4b00  addli r24, r22, 32
003654  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
003658  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
00365c  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003660  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003664  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003668  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
00366c  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
003670  4ba587ff  ble.s r15, r24, -696
003674  9f8b0a01  addli r23, r21, 128
003678  1f8c8a01  addli r24, r21, 192
00367c  1f0b8b00  addli r22, r22, 64
003680  9f8a0a02  addli r21, r21, 256
003684  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
003688  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
00368c  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003690  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003694  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003698  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
00369c  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
0036a0  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
0036a4  bf1efbfe  blt.s r22, r15, -92
0036a8  5ba2ffff  j -752
0036ac  00310002  core_id r2
0036b0  ab630000  lui r7, 6
0036b4  9f100000  addli r1, zero, 1
0036b8  1f038fd7  addli r6, r30, -5184
0036bc  1f048000  addli r8, zero, 64
0036c0  1f050010  addli r10, zero, 2048
0036c4  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
0036c8  9b315100  slli r3, r2, 5
0036cc  00510102  load_param_i r2, 2
0036d0  9f830308  addli r7, r7, 1024
0036d4  9b345100  slli r9, r2, 5
0036d8  b3850128  zext_int2long r[12:13], r3
0036dc  ab0600f0  lui r13, 983040
0036e0  97b51502  sll.d r[12:13], r[12:13], r1
0036e4  9716d400  or r13, r8, r13
0036e8  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
0036ec  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
0036f0  9bb52100  slli r11, r3, 2
0036f4  8b913410  add.s r3, r9, r3
0036f8  00a00200  mfence { lm, gm }
0036fc  c2000302  vload.mz vr1{mr1}, 0(r6)
003700  1386a104  setlt.u r12, r3, r10
003704  8b957510  add.s r11, r11, r7
003708  9f868500  addli r13, r11, 64
00370c  66c11180  vmerge_l.hf vr2, vr3, vr1
003710  e6c011a0  vmerge_h.hf vr1, vr3, vr1
003714  4e902502  vstores_mask16.mz vr2{mr1}, 0(r11)
003718  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
00371c  bb7e06fe  bneq r12, zero, -68
003720  abf00000  lui r1, 15
003724  80310002  core_id r3
003728  9f020006  addli r5, zero, 768
00372c  00a00300  mfence { lm, sm, gm }
003730  9b90f0ff  ori r1, r1, 4095
003734  9b8d1100  andi r27, r3, 1
003738  9f010006  addli r3, zero, 768
00373c  80a10004  csr_set csr3, r1
003740  00d00100  sync_group
003744  37a00d00  beq r27, zero, 8
003748  9f02000a  addli r5, zero, 1280
00374c  63421f00  loadli.w r4,  12(r30)
003750  9f100000  addli r1, zero, 1
003754  bf2e1216  blt.s r4, r1, 12200
003758  9b451100  srli r11, r2, 1
00375c  00310002  core_id r2
003760  8b913d20  mul.s r3, r27, r3
003764  1f078fd7  addli r14, r30, -5184
003768  9bbb1200  slli r23, r5, 1
00376c  1f040000  addli r8, zero, 0
003770  9f797000  addli r19, zero, 63
003774  9f0a0005  addli r21, zero, 640
003778  2b09803f  lui r18, 260096
00377c  1f0a2000  addli r20, zero, 16
003780  9f340000  addli r9, zero, 3
003784  2bee7f00  lui r28, 2046
003788  9f571000  addli r15, zero, 13
00378c  2be50700  lui r10, 126
003790  1f221000  addli r4, zero, 10
003794  1f0b0003  addli r22, zero, 384
003798  1b461100  srli r12, r2, 1
00379c  1bb12200  slli r2, r5, 2
0037a0  67083fd4  storeli.w r3, -5504(r30)
0037a4  9f814200  addli r3, r5, 32
0037a8  0b11e110  add.s r2, r2, r14
0037ac  e70f3fd2  storeli.w r3, -5640(r30)
0037b0  8b91eb10  add.s r3, r23, r14
0037b4  1f0181ff  addli r2, r2, -64
0037b8  674f2fd2  storeli.w r2, -5644(r30)
0037bc  1f8181ff  addli r2, r3, -64
0037c0  abf100fc  lui r3, 1032207
0037c4  670f2fd2  storeli.w r2, -5648(r30)
0037c8  2bf1ffff  lui r2, 1048575
0037cc  9b9801c0  ori r17, r3, 3072
0037d0  00a00000  mfence { lm }
0037d4  e3411f00  loadli.w r3,  12(r30)
0037d8  e74ebfd3  storeli.w r27, -5652(r30)
0037dc  6704bfd4  storeli.w r11, -5568(r30)
0037e0  6700cfd4  storeli.w r12, -5632(r30)
0037e4  e74f7fd3  storeli.w r23, -5636(r30)
0037e8  1b1101f8  ori r2, r2, 3968
0037ec  e70e2fd2  storeli.w r2, -5656(r30)
0037f0  2bf10000  lui r2, 15
0037f4  1b11f1ff  ori r2, r2, 4095
0037f8  67082fd6  storeli.w r2, -5248(r30)
0037fc  2b710000  lui r2, 7
003800  1b13f1ff  ori r6, r2, 4095
003804  2b01ff03  lui r2, 16368
003808  1b18f13f  ori r16, r2, 1023
00380c  1f018fd5  addli r2, r30, -5440
003810  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
003814  db040000  j 36
003818  00a00300  mfence { lm, sm, gm }
00381c  63010fd7  loadli.w r2,  -5248(r30)
003820  80210104  csr_set csr3, r2
003824  00d00100  sync_group
003828  e3411f00  loadli.w r3,  12(r30)
00382c  0b14b410  add.s r8, r8, r11
003830  3f203400  blt.s r8, r3, 8
003834  db86faff  j -11212
003838  0b11c410  add.s r2, r8, r12
00383c  4bff21fe  ble.s r3, r2, -36
003840  e3011f00  loadli.w r3,  8(r30)
003844  0b113110  add.s r2, r2, r3
003848  8b01b430  div.u r3, r8, r11
00384c  e3050fd5  loadli.w r11,  -5504(r30)
003850  1b31b100  slli r2, r2, 11
003854  1711b100  or r2, r2, r11
003858  33160128  sext_int2long r[13:14], r2
00385c  2b0100f0  lui r2, 983040
003860  9bb16100  slli r3, r3, 6
003864  173c1602  sll.d r[25:26], r[13:14], r1
003868  9f067fd6  addli r13, r30, -5320
00386c  17912b00  or r2, r23, r2
003870  9b810104  andi r3, r3, 64
003874  ebd50600  load.d r[12:13], 0(r13)
003878  9f068fd6  addli r13, r30, -5312
00387c  73b08601  store.d r[25:26], 0(r13)
003880  0ba68511  add.ul r[13:14], r[12:13], r[25:26]
003884  7f21e600  l_gm2lm r2, r14, 0(r[13:14])
003888  00310002  core_id r2
00388c  00a00200  mfence { lm, gm }
003890  179d2100  or r26, r3, r2
003894  6301efd3  loadli.w r2,  -5648(r30)
003898  e341efd3  loadli.w r3,  -5644(r30)
00389c  6306ffd3  loadli.w r12,  -5640(r30)
0038a0  c2000102  vload.mz vr1{mr1}, 0(r2)
0038a4  1f06c6ff  addli r12, r12, -32
0038a8  9f8b81ff  addli r23, r3, -64
0038ac  1f0181ff  addli r2, r2, -64
0038b0  9386c904  setlt.u r13, r19, r12
0038b4  66c111a0  vmerge_h.hf vr2, vr3, vr1
0038b8  e6c01180  vmerge_l.hf vr1, vr3, vr1
0038bc  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
0038c0  9f8101ff  addli r3, r3, -128
0038c4  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
0038c8  3bef06fe  bneq r13, zero, -40
0038cc  1f010000  addli r2, zero, 0
0038d0  00a00000  mfence { lm }
0038d4  3ba60d00  bneq r27, zero, 392
0038d8  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0038dc  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0038e0  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0038e4  e301dfd3  loadli.w r3,  -5656(r30)
0038e8  8b167110  add.s r13, r2, r7
0038ec  0b162710  add.s r12, r14, r2
0038f0  9f810101  addli r3, r3, 128
0038f4  1f010104  addli r2, r2, 512
0038f8  9f850601  addli r11, r13, 128
0038fc  4a900602  vloads_mask16.mz vr0{mr1}, 0(r13)
003900  9f8b8600  addli r23, r13, 64
003904  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
003908  1f0c8601  addli r24, r12, 192
00390c  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
003910  9f858601  addli r11, r13, 192
003914  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
003918  9f0b8600  addli r23, r12, 64
00391c  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
003920  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
003924  9f050601  addli r11, r12, 128
003928  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
00392c  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
003930  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
003934  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
003938  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00393c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
003940  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003944  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
003948  46908502  vstore_mask16.mz vr8{mr1}, 0(r11)
00394c  9f850602  addli r11, r13, 256
003950  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003954  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003958  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00395c  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
003960  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
003964  9f858602  addli r11, r13, 320
003968  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
00396c  1f0c0602  addli r24, r12, 256
003970  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003974  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003978  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00397c  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
003980  9f850603  addli r11, r13, 384
003984  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
003988  9f868603  addli r13, r13, 448
00398c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003990  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
003994  9f058602  addli r11, r12, 320
003998  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
00399c  9f060603  addli r13, r12, 384
0039a0  1f068603  addli r12, r12, 448
0039a4  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
0039a8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0039ac  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
0039b0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0039b4  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0039b8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0039bc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0039c0  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
0039c4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0039c8  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0039cc  93855105  setlt.u r11, r3, r21
0039d0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0039d4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0039d8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0039dc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0039e0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0039e4  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
0039e8  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0039ec  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0039f0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0039f4  bbdb05fe  bneq r11, zero, -268
0039f8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0039fc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003a00  1f010002  addli r2, zero, 256
003a04  6a7101c0  vsrl.p vr2, r2, vr0
003a08  ea7111c0  vsrl.p vr3, r2, vr1
003a0c  1f010001  addli r2, zero, 128
003a10  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a14  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a18  6a7101c0  vsrl.p vr2, r2, vr0
003a1c  ea7111c0  vsrl.p vr3, r2, vr1
003a20  1f018000  addli r2, zero, 64
003a24  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a28  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a2c  6a7101c0  vsrl.p vr2, r2, vr0
003a30  ea7111c0  vsrl.p vr3, r2, vr1
003a34  1f014000  addli r2, zero, 32
003a38  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a3c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a40  6a7101c0  vsrl.p vr2, r2, vr0
003a44  ea7111c0  vsrl.p vr3, r2, vr1
003a48  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a4c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a50  7a110040  vextracti.f r2, 0(vr0)
003a54  fa910040  vextracti.f r3, 0(vr1)
003a58  5b660000  j 816
003a5c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003a60  abf1ffff  lui r3, 1048575
003a64  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003a68  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003a6c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003a70  9b9101f8  ori r3, r3, 3968
003a74  8b962310  add.s r13, r7, r2
003a78  0b162710  add.s r12, r14, r2
003a7c  9f810101  addli r3, r3, 128
003a80  1f010104  addli r2, r2, 512
003a84  9f850631  addli r11, r13, 6272
003a88  9f8b0630  addli r23, r13, 6144
003a8c  1f8c8631  addli r24, r13, 6336
003a90  9f0d0618  addli r27, r12, 3072
003a94  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
003a98  ca920b02  vloads_mask16.mz vr5{mr1}, 0(r23)
003a9c  9f8b8630  addli r23, r13, 6208
003aa0  ca140c02  vloads_mask16.mz vr9{mr1}, 0(r24)
003aa4  9f058618  addli r11, r12, 3136
003aa8  1f0c8619  addli r24, r12, 3264
003aac  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
003ab0  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
003ab4  9f0b0619  addli r23, r12, 3200
003ab8  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
003abc  c2950502  vload_mask16.mz vr11{mr1}, 0(r11)
003ac0  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
003ac4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003ac8  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
003acc  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
003ad0  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
003ad4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003ad8  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
003adc  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
003ae0  9f8b0632  addli r23, r13, 6400
003ae4  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
003ae8  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
003aec  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003af0  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
003af4  1f0c061a  addli r24, r12, 3328
003af8  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
003afc  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
003b00  9f05061b  addli r11, r12, 3456
003b04  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
003b08  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
003b0c  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
003b10  9f8b8632  addli r23, r13, 6464
003b14  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003b18  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003b1c  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
003b20  9f8b0633  addli r23, r13, 6528
003b24  9f868633  addli r13, r13, 6592
003b28  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
003b2c  9f0b861a  addli r23, r12, 3392
003b30  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
003b34  1f06861b  addli r12, r12, 3520
003b38  93866105  setlt.u r13, r3, r22
003b3c  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
003b40  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003b44  c2930502  vload_mask16.mz vr7{mr1}, 0(r11)
003b48  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003b4c  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
003b50  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003b54  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003b58  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
003b5c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003b60  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
003b64  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003b68  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003b6c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003b70  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003b74  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003b78  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
003b7c  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
003b80  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003b84  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003b88  bbbb06fe  bneq r13, zero, -276
003b8c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003b90  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003b94  1f010002  addli r2, zero, 256
003b98  abf5ffff  lui r11, 1048575
003b9c  9f0b0000  addli r23, zero, 0
003ba0  1b9605f8  ori r12, r11, 3968
003ba4  ea7111c0  vsrl.p vr3, r2, vr1
003ba8  6a7101c0  vsrl.p vr2, r2, vr0
003bac  1f010001  addli r2, zero, 128
003bb0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003bb4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003bb8  ea7111c0  vsrl.p vr3, r2, vr1
003bbc  6a7101c0  vsrl.p vr2, r2, vr0
003bc0  1f018000  addli r2, zero, 64
003bc4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003bc8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003bcc  ea7111c0  vsrl.p vr3, r2, vr1
003bd0  6a7101c0  vsrl.p vr2, r2, vr0
003bd4  1f014000  addli r2, zero, 32
003bd8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003bdc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003be0  ea7111c0  vsrl.p vr3, r2, vr1
003be4  6a7101c0  vsrl.p vr2, r2, vr0
003be8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003bec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003bf0  fa910040  vextracti.f r3, 0(vr1)
003bf4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003bf8  7a110040  vextracti.f r2, 0(vr0)
003bfc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003c00  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003c04  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003c08  8b9d7311  add.s r27, r7, r23
003c0c  8b167711  add.s r13, r14, r23
003c10  1f060601  addli r12, r12, 128
003c14  9f8b0b04  addli r23, r23, 512
003c18  9f850d18  addli r11, r27, 3072
003c1c  1f8c0d19  addli r24, r27, 3200
003c20  42940602  vload_mask16.mz vr8{mr1}, 0(r13)
003c24  9f8c8601  addli r25, r13, 192
003c28  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
003c2c  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
003c30  9f858d18  addli r11, r27, 3136
003c34  1f8c8d19  addli r24, r27, 3264
003c38  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
003c3c  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
003c40  9f850601  addli r11, r13, 128
003c44  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
003c48  1f8c8600  addli r24, r13, 64
003c4c  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
003c50  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
003c54  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
003c58  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
003c5c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
003c60  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
003c64  46908502  vstore_mask16.mz vr8{mr1}, 0(r11)
003c68  9f850d1a  addli r11, r27, 3328
003c6c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003c70  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003c74  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003c78  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003c7c  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
003c80  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
003c84  9f858d1a  addli r11, r27, 3392
003c88  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
003c8c  9f8c0602  addli r25, r13, 256
003c90  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003c94  1f8c0603  addli r24, r13, 384
003c98  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003c9c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003ca0  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
003ca4  9f850d1b  addli r11, r27, 3456
003ca8  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003cac  9f8d8d1b  addli r27, r27, 3520
003cb0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003cb4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003cb8  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
003cbc  9f858602  addli r11, r13, 320
003cc0  4a950d02  vloads_mask16.mz vr10{mr1}, 0(r27)
003cc4  9f868603  addli r13, r13, 448
003cc8  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
003ccc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003cd0  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
003cd4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003cd8  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
003cdc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003ce0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003ce4  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003ce8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003cec  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
003cf0  93055605  setlt.u r11, r12, r21
003cf4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003cf8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003cfc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003d00  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003d04  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003d08  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003d0c  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
003d10  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003d14  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003d18  bbcb05fe  bneq r11, zero, -272
003d1c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003d20  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003d24  9f050002  addli r11, zero, 256
003d28  e34ddfd3  loadli.w r27,  -5652(r30)
003d2c  6af105c0  vsrl.p vr2, r11, vr0
003d30  eaf115c0  vsrl.p vr3, r11, vr1
003d34  9f050001  addli r11, zero, 128
003d38  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003d3c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003d40  6af105c0  vsrl.p vr2, r11, vr0
003d44  eaf115c0  vsrl.p vr3, r11, vr1
003d48  9f058000  addli r11, zero, 64
003d4c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003d50  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003d54  6af105c0  vsrl.p vr2, r11, vr0
003d58  eaf115c0  vsrl.p vr3, r11, vr1
003d5c  9f054000  addli r11, zero, 32
003d60  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003d64  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003d68  6af105c0  vsrl.p vr2, r11, vr0
003d6c  eaf115c0  vsrl.p vr3, r11, vr1
003d70  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003d74  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003d78  fa150040  vextracti.f r11, 0(vr0)
003d7c  7a960040  vextracti.f r12, 0(vr1)
003d80  0b61b110  add.f.rn r2, r2, r11
003d84  8be1c110  add.f.rn r3, r3, r12
003d88  2b860000  lui r12, 8
003d8c  ab860000  lui r13, 8
003d90  9b352d00  slli r11, r26, 2
003d94  1f060608  addli r12, r12, 1024
003d98  9f86060c  addli r13, r13, 1536
003d9c  9f0b0600  addli r23, r12, 0
003da0  1f8c0600  addli r24, r13, 0
003da4  0b967511  add.s r12, r11, r23
003da8  8b968511  add.s r13, r11, r24
003dac  73e03600  stores.w r3, 0(r13)
003db0  73602600  stores.w r2, 0(r12)
003db4  9b914500  ori r3, r11, 4
003db8  9f060000  addli r13, zero, 0
003dbc  00a00300  mfence { lm, sm, gm }
003dc0  63010fd7  loadli.w r2,  -5248(r30)
003dc4  8b957111  add.s r11, r3, r23
003dc8  8b918111  add.s r3, r3, r24
003dcc  80210104  csr_set csr3, r2
003dd0  1b01ed07  andi r2, r26, 126
003dd4  00d00100  sync_group
003dd8  efc50500  loads.w r11, 0(r11)
003ddc  efc10100  loads.w r3, 0(r3)
003de0  1b312100  slli r2, r2, 2
003de4  0b167111  add.s r12, r2, r23
003de8  0b118111  add.s r2, r2, r24
003dec  6f460600  loads.w r12, 0(r12)
003df0  6f410100  loads.w r2, 0(r2)
003df4  8be5c510  add.f.rn r11, r11, r12
003df8  2b06003a  lui r12, 237568
003dfc  0be12110  add.f.rn r2, r3, r2
003e00  8be1c520  mul.f.rn r3, r11, r12
003e04  0b61c120  mul.f.rn r2, r2, r12
003e08  1f068fd7  addli r12, r30, -5184
003e0c  8be53120  mul.f.rn r11, r3, r3
003e10  8be10158  neg.f r3, r3
003e14  0b61b118  sub.f.rn r2, r2, r11
003e18  e3053f00  loadli.w r11,  24(r30)
003e1c  0b61b110  add.f.rn r2, r2, r11
003e20  0f010108  sqrt.f.rn r2, r2
003e24  0f012918  div.f.rn r2, r18, r2
003e28  9f058600  addli r11, r12, 64
003e2c  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
003e30  9f8b4600  addli r23, r13, 32
003e34  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
003e38  938b7207  setle.u r23, r5, r23
003e3c  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
003e40  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
003e44  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
003e48  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
003e4c  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
003e50  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
003e54  bbf00b00  bneq r23, zero, 60
003e58  9f050601  addli r11, r12, 128
003e5c  9f0b8601  addli r23, r12, 192
003e60  9f868600  addli r13, r13, 64
003e64  1f060602  addli r12, r12, 256
003e68  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
003e6c  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
003e70  138c5604  setlt.u r24, r13, r5
003e74  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
003e78  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
003e7c  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
003e80  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
003e84  46900502  vstore_mask16.mz vr0{mr1}, 0(r11)
003e88  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
003e8c  3b7e0cfe  bneq r24, zero, -100
003e90  1f018fd7  addli r2, r30, -5184
003e94  9f018fd7  addli r3, r30, -5184
003e98  1f060000  addli r12, zero, 0
003e9c  00a00000  mfence { lm }
003ea0  9f858100  addli r11, r3, 64
003ea4  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
003ea8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003eac  1f064600  addli r12, r12, 32
003eb0  9f810101  addli r3, r3, 128
003eb4  ea211a22  vor.u.mz vr3{mr1}, r20, vr1
003eb8  42910502  vload_mask16.mz vr2{mr1}, 0(r11)
003ebc  93055604  setlt.u r11, r12, r5
003ec0  6eb201c2  vsrl.s.mz vr4{mr1}, vr3, vr0
003ec4  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003ec8  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
003ecc  eab13002  vand.s.mz vr3{mr1}, r1, vr3
003ed0  16304002  vadd.s.mz vr0{mr1}, vr0, vr4
003ed4  6aa21422  vor.u.mz vr4{mr1}, r9, vr1
003ed8  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
003edc  eaa11722  vor.u.mz vr3{mr1}, r15, vr1
003ee0  ea201222  vor.u.mz vr1{mr1}, r4, vr1
003ee4  12300302  vadd.s.mz vr0{mr1}, r6, vr0
003ee8  12312302  vadd.s.mz vr2{mr1}, r6, vr2
003eec  eeb201c2  vsrl.s.mz vr5{mr1}, vr3, vr0
003ef0  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
003ef4  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003ef8  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
003efc  6a325502  vand.s.mz vr4{mr1}, r10, vr5
003f00  6a300e02  vand.s.mz vr0{mr1}, r28, vr0
003f04  ea313502  vand.s.mz vr3{mr1}, r10, vr3
003f08  6a312e02  vand.s.mz vr2{mr1}, r28, vr2
003f0c  6a300922  vor.s.mz vr0{mr1}, r18, vr0
003f10  6a324922  vor.s.mz vr4{mr1}, r18, vr4
003f14  ea313922  vor.s.mz vr3{mr1}, r18, vr3
003f18  6a312922  vor.s.mz vr2{mr1}, r18, vr2
003f1c  06100020  vfloat2fp16_l.rz vr0, vr0
003f20  86d10120  vfloat2fp16_h.rz vr3, vr3
003f24  06500120  vfloat2fp16_h.rz vr0, vr2
003f28  86110220  vfloat2fp16_l.rz vr3, vr4
003f2c  6a300802  vand.s.mz vr0{mr1}, r16, vr0
003f30  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
003f34  eab01802  vand.s.mz vr1{mr1}, r17, vr1
003f38  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
003f3c  46000102  vstore.mz vr0{mr1}, 0(r2)
003f40  1f018100  addli r2, r2, 64
003f44  3bfd05fe  bneq r11, zero, -164
003f48  9f018fd6  addli r3, r30, -5312
003f4c  eb550f00  load.d r[12:13], 0(r30)
003f50  2b0100f0  lui r2, 983040
003f54  ebdb0100  load.d r[24:25], 0(r3)
003f58  8ba57511  add.ul r[12:13], r[12:13], r[24:25]
003f5c  e34bffd3  loadli.w r23,  -5636(r30)
003f60  00a00000  mfence { lm }
003f64  17912b00  or r2, r23, r2
003f68  7fb1e500  s_lm2gm r2, r14, 0(r[12:13])
003f6c  1f018fd5  addli r2, r30, -5440
003f70  00a00200  mfence { lm, gm }
003f74  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
003f78  e3058fd4  loadli.w r11,  -5568(r30)
003f7c  63060fd4  loadli.w r12,  -5632(r30)
003f80  5b15ffff  j -1880
003f84  003b0002  core_id r22
003f88  63012f00  loadli.w r2,  16(r30)
003f8c  9b305b00  slli r1, r22, 5
003f90  cb211100  ble.s r2, r1, 104
003f94  80530102  load_param_i r7, 2
003f98  2bc40000  lui r8, 12
003f9c  1f110000  addli r2, zero, 1
003fa0  9f018fd7  addli r3, r30, -5184
003fa4  1f038000  addli r6, zero, 64
003fa8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003fac  9bb35300  slli r7, r7, 5
003fb0  1f0404f0  addli r8, r8, -2048
003fb4  b3840028  zext_int2long r[10:11], r1
003fb8  ab0500f0  lui r11, 983040
003fbc  97b42402  sll.d r[10:11], r[10:11], r2
003fc0  9715b300  or r11, r6, r11
003fc4  8b249210  add.ul r[10:11], r[5:6], r[10:11]
003fc8  ffa53400  l_gm2lm r11, r3, 0(r[10:11])
003fcc  9bb42000  slli r9, r1, 2
003fd0  8b901310  add.s r1, r7, r1
003fd4  00a00200  mfence { lm, gm }
003fd8  c2800102  vload.mz vr1{mr1}, 0(r3)
003fdc  8b948410  add.s r9, r9, r8
003fe0  1f858400  addli r10, r9, 64
003fe4  66411080  vmerge_l.hf vr2, vr0, vr1
003fe8  e64010a0  vmerge_h.hf vr1, vr0, vr1
003fec  4e902402  vstores_mask16.mz vr2{mr1}, 0(r9)
003ff0  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
003ff4  3f8ff0fe  blt.s r1, r15, -64
003ff8  abf00000  lui r1, 15
003ffc  63411f00  loadli.w r2,  12(r30)
004000  00a00300  mfence { lm, sm, gm }
004004  9b90f0ff  ori r1, r1, 4095
004008  80a10004  csr_set csr3, r1
00400c  00d00100  sync_group
004010  cb3b6113  ble.s r2, r22, 9964
004014  e3002f00  loadli.w r1,  16(r30)
004018  63412f00  loadli.w r2,  20(r30)
00401c  9f038fd7  addli r7, r30, -5184
004020  1f150000  addli r10, zero, 1
004024  9f054000  addli r11, zero, 32
004028  1f747000  addli r8, zero, 63
00402c  1f080002  addli r16, zero, 256
004030  9f080001  addli r17, zero, 128
004034  1f098000  addli r18, zero, 64
004038  ab09803f  lui r19, 260096
00403c  abeb7f00  lui r23, 2046
004040  abec0700  lui r25, 126
004044  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004048  8b912010  add.s r3, r1, r2
00404c  33820008  fix2float.rn r4, r1
004050  1bb31000  slli r6, r1, 1
004054  9bb22000  slli r5, r1, 2
004058  9f804000  addli r1, r1, 32
00405c  9b342100  slli r9, r2, 2
004060  e74f1fd2  storeli.w r1, -5636(r30)
004064  8b907210  add.s r1, r5, r7
004068  9ff1f1ff  addli r3, r3, -1
00406c  67004fd4  storeli.w r4, -5632(r30)
004070  0b922130  div.s r4, r3, r2
004074  9f8080ff  addli r1, r1, -64
004078  8b117310  add.s r3, r6, r7
00407c  e70f1fd2  storeli.w r1, -5640(r30)
004080  9f8081ff  addli r1, r3, -64
004084  674f1fd2  storeli.w r1, -5644(r30)
004088  abf0ffff  lui r1, 1048575
00408c  00a00000  mfence { lm }
004090  67046fd4  storeli.w r6, -5568(r30)
004094  9b90f0ff  ori r1, r1, 4095
004098  67041fd6  storeli.w r1, -5312(r30)
00409c  ab700000  lui r1, 7
0040a0  9b9af0ff  ori r21, r1, 4095
0040a4  ab00ff03  lui r1, 16368
0040a8  1b9df03f  ori r26, r1, 1023
0040ac  abf000fc  lui r1, 1032207
0040b0  1b9e00c0  ori r28, r1, 3072
0040b4  9f000fd7  addli r1, r30, -5248
0040b8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0040bc  db080000  j 68
0040c0  9f010fd5  addli r3, r30, -5504
0040c4  eb500f00  load.d r[2:3], 0(r30)
0040c8  9f038fd7  addli r7, r30, -5184
0040cc  ebd20100  load.d r[6:7], 0(r3)
0040d0  00a00000  mfence { lm }
0040d4  ab0100f0  lui r3, 983040
0040d8  8ba05010  add.ul r[2:3], r[2:3], r[6:7]
0040dc  63038fd4  loadli.w r6,  -5568(r30)
0040e0  80520102  load_param_i r5, 2
0040e4  0b9b6211  add.s r22, r5, r22
0040e8  97113300  or r3, r6, r3
0040ec  ffb17000  s_lm2gm r3, r7, 0(r[2:3])
0040f0  00a00200  mfence { lm, gm }
0040f4  e3401f00  loadli.w r1,  12(r30)
0040f8  3f201b00  blt.s r22, r1, 8
0040fc  5bc00400  j 9728
004100  e3001f00  loadli.w r1,  8(r30)
004104  9f027fd6  addli r5, r30, -5320
004108  8b101b10  add.s r1, r22, r1
00410c  8b90f020  mul.s r1, r1, r15
004110  b3900028  sext_int2long r[2:3], r1
004114  17b6a002  sll.d r[13:14], r[2:3], r10
004118  6bd10200  load.d r[3:4], 0(r5)
00411c  ab0000f0  lui r1, 983040
004120  9f020fd5  addli r5, r30, -5504
004124  97101300  or r1, r6, r1
004128  73b0c200  store.d r[13:14], 0(r5)
00412c  0b21c110  add.ul r[3:4], r[3:4], r[13:14]
004130  ff207100  l_gm2lm r1, r7, 0(r[3:4])
004134  00a00200  mfence { lm, gm }
004138  bff0b700  blt.s r15, r11, 60
00413c  e340efd3  loadli.w r1,  -5644(r30)
004140  6301ffd3  loadli.w r2,  -5640(r30)
004144  e341ffd3  loadli.w r3,  -5636(r30)
004148  c2800002  vload.mz vr1{mr1}, 0(r1)
00414c  9f81c1ff  addli r3, r3, -32
004150  1f0381ff  addli r6, r2, -64
004154  9f8080ff  addli r1, r1, -64
004158  93023404  setlt.u r5, r8, r3
00415c  664110a0  vmerge_h.hf vr2, vr0, vr1
004160  e6401080  vmerge_l.hf vr1, vr0, vr1
004164  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
004168  1f0101ff  addli r2, r2, -128
00416c  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
004170  3bef02fe  bneq r5, zero, -40
004174  670c6fd5  storeli.w r22, -5440(r30)
004178  00a00000  mfence { lm }
00417c  bf57a200  blt.s r4, r10, 500
004180  9f010000  addli r3, zero, 0
004184  9f020000  addli r5, zero, 0
004188  1f010000  addli r2, zero, 0
00418c  db0d0000  j 108
004190  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004194  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004198  1f110100  addli r2, r2, 1
00419c  6a7108c0  vsrl.p vr2, r16, vr0
0041a0  ea7118c0  vsrl.p vr3, r16, vr1
0041a4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0041a8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0041ac  6af108c0  vsrl.p vr2, r17, vr0
0041b0  eaf118c0  vsrl.p vr3, r17, vr1
0041b4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0041b8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0041bc  6a7109c0  vsrl.p vr2, r18, vr0
0041c0  ea7119c0  vsrl.p vr3, r18, vr1
0041c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0041c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0041cc  6af105c0  vsrl.p vr2, r11, vr0
0041d0  eaf115c0  vsrl.p vr3, r11, vr1
0041d4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0041d8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0041dc  fa100040  vextracti.f r1, 0(vr0)
0041e0  7a930040  vextracti.f r6, 0(vr1)
0041e4  8be11110  add.f.rn r3, r3, r1
0041e8  9f000fd7  addli r1, r30, -5248
0041ec  8be26210  add.f.rn r5, r5, r6
0041f0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0041f4  37164100  beq r2, r4, 388
0041f8  9f000100  addli r1, r2, 0
0041fc  37400701  beq r14, r16, 16
004200  e3008fd6  loadli.w r1,  -5312(r30)
004204  97201100  xor r1, r2, r1
004208  8b101210  add.s r1, r4, r1
00420c  0b93e020  mul.s r6, r1, r14
004210  12320002  vadd.s.mz vr4{mr1}, zero, vr0
004214  92310002  vadd.s.mz vr3{mr1}, zero, vr0
004218  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00421c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
004220  0b936718  sub.s r6, r15, r6
004224  8b13e340  min.s r7, r6, r14
004228  bfada3fe  blt.s r7, r10, -152
00422c  9f060fd7  addli r13, r30, -5248
004230  2bc60000  lui r12, 12
004234  0b931420  mul.s r6, r9, r1
004238  1f040000  addli r8, zero, 0
00423c  9f008fd7  addli r1, r30, -5184
004240  42920602  vload_mask16.mz vr4{mr1}, 0(r13)
004244  1f0606f0  addli r12, r12, -2048
004248  92304002  vadd.s.mz vr1{mr1}, zero, vr4
00424c  12314002  vadd.s.mz vr2{mr1}, zero, vr4
004250  92314002  vadd.s.mz vr3{mr1}, zero, vr4
004254  0b1a6610  add.s r20, r12, r6
004258  8b966010  add.s r13, r1, r6
00425c  1f0b8a00  addli r22, r20, 64
004260  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
004264  1f0c8a01  addli r24, r20, 192
004268  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
00426c  9f8d8601  addli r27, r13, 192
004270  4a130b02  vloads_mask16.mz vr6{mr1}, 0(r22)
004274  1f0b0a01  addli r22, r20, 128
004278  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
00427c  1f8c0601  addli r24, r13, 128
004280  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
004284  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
004288  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
00428c  1f8b8600  addli r22, r13, 64
004290  42150b02  vload_mask16.mz vr10{mr1}, 0(r22)
004294  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004298  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
00429c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0042a0  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0042a4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0042a8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0042ac  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
0042b0  46106b02  vstore_mask16.mz vr6{mr1}, 0(r22)
0042b4  1f0b8400  addli r22, r8, 64
0042b8  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
0042bc  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0042c0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0042c4  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0042c8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0042cc  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
0042d0  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
0042d4  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0042d8  cbea63ff  ble.s r7, r22, -328
0042dc  1f0c0a02  addli r24, r20, 256
0042e0  9f0d8a02  addli r27, r20, 320
0042e4  1f8b0602  addli r22, r13, 256
0042e8  1f040401  addli r8, r8, 128
0042ec  1f060604  addli r12, r12, 512
0042f0  9f800004  addli r1, r1, 512
0042f4  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
0042f8  1f0c0a03  addli r24, r20, 384
0042fc  1f0a8a03  addli r20, r20, 448
004300  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
004304  42130b02  vload_mask16.mz vr6{mr1}, 0(r22)
004308  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
00430c  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
004310  1f8a0603  addli r20, r13, 384
004314  1f8c8602  addli r24, r13, 320
004318  9f868603  addli r13, r13, 448
00431c  42150a02  vload_mask16.mz vr10{mr1}, 0(r20)
004320  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
004324  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
004328  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
00432c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004330  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
004334  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004338  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00433c  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
004340  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
004344  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
004348  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00434c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004350  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
004354  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004358  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00435c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
004360  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004364  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
004368  bf3b74fe  blt.s r8, r7, -276
00436c  dbc4ffff  j -476
004370  9f020000  addli r5, zero, 0
004374  9f010000  addli r3, zero, 0
004378  00a00000  mfence { lm }
00437c  3fd2a700  blt.s r15, r10, 148
004380  e3000fd4  loadli.w r1,  -5632(r30)
004384  0f811118  div.f.rn r2, r3, r1
004388  8f801218  div.f.rn r1, r5, r1
00438c  9f020000  addli r5, zero, 0
004390  8b612120  mul.f.rn r3, r2, r2
004394  0b610158  neg.f r2, r2
004398  8be03018  sub.f.rn r1, r1, r3
00439c  e3013f00  loadli.w r3,  24(r30)
0043a0  8be03010  add.f.rn r1, r1, r3
0043a4  9f018fd7  addli r3, r30, -5184
0043a8  8f800008  sqrt.f.rn r1, r1
0043ac  8f801918  div.f.rn r1, r19, r1
0043b0  1f838100  addli r6, r3, 64
0043b4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0043b8  9f834200  addli r7, r5, 32
0043bc  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
0043c0  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0043c4  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
0043c8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0043cc  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
0043d0  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0043d4  46102302  vstore_mask16.mz vr2{mr1}, 0(r6)
0043d8  cbe07700  ble.s r15, r7, 56
0043dc  1f830101  addli r6, r3, 128
0043e0  9f838101  addli r7, r3, 192
0043e4  9f828200  addli r5, r5, 64
0043e8  9f810102  addli r3, r3, 256
0043ec  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
0043f0  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
0043f4  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0043f8  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
0043fc  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004400  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
004404  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
004408  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
00440c  bf9ef2fe  blt.s r5, r15, -92
004410  00a00000  mfence { lm }
004414  1f747000  addli r8, zero, 63
004418  1f032000  addli r6, zero, 16
00441c  9f330000  addli r7, zero, 3
004420  9f561000  addli r13, zero, 13
004424  1f2a1000  addli r20, zero, 10
004428  630b8fd5  loadli.w r22,  -5440(r30)
00442c  3fd2a7fe  blt.s r15, r10, -876
004430  9f008fd7  addli r1, r30, -5184
004434  1f018fd7  addli r2, r30, -5184
004438  9f010000  addli r3, zero, 0
00443c  9f028100  addli r5, r2, 64
004440  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
004444  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004448  9f814100  addli r3, r3, 32
00444c  1f010101  addli r2, r2, 128
004450  6a221322  vor.u.mz vr4{mr1}, r6, vr1
004454  c2910202  vload_mask16.mz vr3{mr1}, 0(r5)
004458  ee3222c2  vsrl.s.mz vr5{mr1}, vr4, vr2
00445c  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
004460  ea325502  vand.s.mz vr5{mr1}, r10, vr5
004464  6a324502  vand.s.mz vr4{mr1}, r10, vr4
004468  16315102  vadd.s.mz vr2{mr1}, vr2, vr5
00446c  eaa21322  vor.u.mz vr5{mr1}, r7, vr1
004470  96b14102  vadd.s.mz vr3{mr1}, vr3, vr4
004474  6aa21622  vor.u.mz vr4{mr1}, r13, vr1
004478  ea201a22  vor.u.mz vr1{mr1}, r20, vr1
00447c  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
004480  92b13a02  vadd.s.mz vr3{mr1}, r21, vr3
004484  6e3322c2  vsrl.s.mz vr6{mr1}, vr4, vr2
004488  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
00448c  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
004490  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
004494  eab26c02  vand.s.mz vr5{mr1}, r25, vr6
004498  6ab12b02  vand.s.mz vr2{mr1}, r23, vr2
00449c  6ab24c02  vand.s.mz vr4{mr1}, r25, vr4
0044a0  eab13b02  vand.s.mz vr3{mr1}, r23, vr3
0044a4  6ab12922  vor.s.mz vr2{mr1}, r19, vr2
0044a8  eab25922  vor.s.mz vr5{mr1}, r19, vr5
0044ac  6ab24922  vor.s.mz vr4{mr1}, r19, vr4
0044b0  eab13922  vor.s.mz vr3{mr1}, r19, vr3
0044b4  06110120  vfloat2fp16_l.rz vr2, vr2
0044b8  06520220  vfloat2fp16_h.rz vr4, vr4
0044bc  06d10120  vfloat2fp16_h.rz vr2, vr3
0044c0  06920220  vfloat2fp16_l.rz vr4, vr5
0044c4  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
0044c8  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
0044cc  ea301e02  vand.s.mz vr1{mr1}, r28, vr1
0044d0  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
0044d4  46801002  vstore.mz vr1{mr1}, 0(r1)
0044d8  9f808000  addli r1, r1, 64
0044dc  bf8df1fe  blt.s r3, r15, -160
0044e0  5b7cffff  j -1056
0044e4  2b330100  lui r6, 19
0044e8  803a0002  core_id r21
0044ec  80500102  load_param_i r1, 2
0044f0  1f110000  addli r2, zero, 1
0044f4  9f038fd7  addli r7, r30, -5184
0044f8  1f048000  addli r8, zero, 64
0044fc  1f050010  addli r10, zero, 2048
004500  9bb15a00  slli r3, r21, 5
004504  9bb45000  slli r9, r1, 5
004508  1f0303f8  addli r6, r6, -1024
00450c  b3850128  zext_int2long r[12:13], r3
004510  ab0600f0  lui r13, 983040
004514  97b52502  sll.d r[12:13], r[12:13], r2
004518  9716d400  or r13, r8, r13
00451c  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
004520  ffa67500  l_gm2lm r13, r7, 0(r[12:13])
004524  9bb52100  slli r11, r3, 2
004528  8b913410  add.s r3, r9, r3
00452c  00a00200  mfence { lm, gm }
004530  42800302  vload.mz vr0{mr1}, 0(r7)
004534  1386a104  setlt.u r12, r3, r10
004538  8b956510  add.s r11, r11, r6
00453c  9f868500  addli r13, r11, 64
004540  86300000  vfp162float_l.rn vr1, vr0
004544  06700000  vfp162float_h.rn vr0, vr0
004548  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
00454c  4e900602  vstores_mask16.mz vr0{mr1}, 0(r13)
004550  bb7e06fe  bneq r12, zero, -68
004554  2bf10000  lui r2, 15
004558  00a00300  mfence { lm, sm, gm }
00455c  63421f00  loadli.w r4,  12(r30)
004560  9b8d1a00  andi r27, r21, 1
004564  9f020006  addli r5, zero, 768
004568  1b11f1ff  ori r2, r2, 4095
00456c  80210104  csr_set csr3, r2
004570  1f010006  addli r2, zero, 768
004574  00d00100  sync_group
004578  37a00d00  beq r27, zero, 8
00457c  9f02000a  addli r5, zero, 1280
004580  e3411f00  loadli.w r3,  12(r30)
004584  1f1b0000  addli r22, zero, 1
004588  bfd56111  blt.s r3, r22, 8564
00458c  0b912d20  mul.s r2, r27, r2
004590  1bc51000  srli r10, r1, 1
004594  9bb02200  slli r1, r5, 2
004598  9f068fd7  addli r13, r30, -5184
00459c  1bb61200  slli r12, r5, 1
0045a0  ab5c0100  lui r25, 21
0045a4  2b590100  lui r18, 21
0045a8  1f040000  addli r8, zero, 0
0045ac  9bc51a00  srli r11, r21, 1
0045b0  9f787000  addli r17, zero, 63
0045b4  1f0a0005  addli r20, zero, 640
0045b8  9f0b8000  addli r23, zero, 64
0045bc  1f0c4000  addli r24, zero, 32
0045c0  1f0e0003  addli r28, zero, 384
0045c4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0045c8  8b90d010  add.s r1, r1, r13
0045cc  67082fd6  storeli.w r2, -5248(r30)
0045d0  1f814200  addli r2, r5, 32
0045d4  9f8c0cf8  addli r25, r25, -1024
0045d8  1f0909fc  addli r18, r18, -512
0045dc  67042fd6  storeli.w r2, -5312(r30)
0045e0  9f8080ff  addli r1, r1, -64
0045e4  0b11d610  add.s r2, r12, r13
0045e8  670c1fd4  storeli.w r1, -5440(r30)
0045ec  9f0081ff  addli r1, r2, -64
0045f0  1f018fd4  addli r2, r30, -5568
0045f4  67081fd4  storeli.w r1, -5504(r30)
0045f8  abf0ffff  lui r1, 1048575
0045fc  00a00000  mfence { lm }
004600  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004604  9b9000f8  ori r1, r1, 3968
004608  67001fd4  storeli.w r1, -5632(r30)
00460c  abf00000  lui r1, 15
004610  1b9df0ff  ori r26, r1, 4095
004614  db030000  j 28
004618  00a00300  mfence { lm, sm, gm }
00461c  80210d04  csr_set csr3, r26
004620  00d00100  sync_group
004624  0b14a410  add.s r8, r8, r10
004628  3f204400  blt.s r8, r4, 8
00462c  dbc7f8ff  j -14788
004630  8b10b410  add.s r1, r8, r11
004634  cb1f12fe  ble.s r4, r1, -28
004638  63011f00  loadli.w r2,  8(r30)
00463c  e3010fd7  loadli.w r3,  -5248(r30)
004640  9f037fd6  addli r7, r30, -5320
004644  8b902010  add.s r1, r1, r2
004648  0b01a430  div.u r2, r8, r10
00464c  9bb0b000  slli r1, r1, 11
004650  97903000  or r1, r1, r3
004654  ebd10300  load.d r[4:5], 0(r7)
004658  33970028  sext_int2long r[15:16], r1
00465c  ab0000f0  lui r1, 983040
004660  1b316100  slli r2, r2, 6
004664  17376703  sll.d r[15:16], r[15:16], r22
004668  97101600  or r1, r12, r1
00466c  1b010104  andi r2, r2, 64
004670  8ba1e110  add.ul r[4:5], r[4:5], r[15:16]
004674  ffa0d100  l_gm2lm r1, r13, 0(r[4:5])
004678  97105101  or r1, r2, r21
00467c  00a00200  mfence { lm, gm }
004680  63010fd5  loadli.w r2,  -5504(r30)
004684  e3018fd5  loadli.w r3,  -5440(r30)
004688  e3038fd6  loadli.w r7,  -5312(r30)
00468c  c2000102  vload.mz vr1{mr1}, 0(r2)
004690  9f83c3ff  addli r7, r7, -32
004694  9f8481ff  addli r9, r3, -64
004698  1f0181ff  addli r2, r2, -64
00469c  13827804  setlt.u r4, r17, r7
0046a0  06f10000  vfp162float_h.rn vr2, vr1
0046a4  86b00000  vfp162float_l.rn vr1, vr1
0046a8  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
0046ac  9f8101ff  addli r3, r3, -128
0046b0  46901402  vstore_mask16.mz vr1{mr1}, 0(r9)
0046b4  3b6f02fe  bneq r4, zero, -40
0046b8  00a00000  mfence { lm }
0046bc  3bb60d00  bneq r27, zero, 396
0046c0  1f028fd4  addli r4, r30, -5568
0046c4  e3010fd4  loadli.w r3,  -5632(r30)
0046c8  1f010000  addli r2, zero, 0
0046cc  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
0046d0  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0046d4  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0046d8  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0046dc  8b136110  add.s r7, r2, r6
0046e0  8b942610  add.s r9, r13, r2
0046e4  9f810101  addli r3, r3, 128
0046e8  1f010104  addli r2, r2, 512
0046ec  1f820301  addli r4, r7, 128
0046f0  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
0046f4  1f888300  addli r16, r7, 64
0046f8  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
0046fc  9f898401  addli r19, r9, 192
004700  ca120202  vloads_mask16.mz vr5{mr1}, 0(r4)
004704  1f828301  addli r4, r7, 192
004708  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
00470c  1f888400  addli r16, r9, 64
004710  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
004714  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
004718  1f820401  addli r4, r9, 128
00471c  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
004720  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
004724  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004728  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00472c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004730  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004734  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004738  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
00473c  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
004740  1f820302  addli r4, r7, 256
004744  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004748  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00474c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004750  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
004754  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
004758  1f828302  addli r4, r7, 320
00475c  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
004760  9f890402  addli r19, r9, 256
004764  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004768  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00476c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004770  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
004774  1f820303  addli r4, r7, 384
004778  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
00477c  9f838303  addli r7, r7, 448
004780  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004784  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
004788  1f828402  addli r4, r9, 320
00478c  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
004790  9f830403  addli r7, r9, 384
004794  9f848403  addli r9, r9, 448
004798  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
00479c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0047a0  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
0047a4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0047a8  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
0047ac  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0047b0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0047b4  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
0047b8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0047bc  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
0047c0  13824105  setlt.u r4, r3, r20
0047c4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0047c8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0047cc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0047d0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0047d4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0047d8  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
0047dc  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
0047e0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0047e4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0047e8  bb5b02fe  bneq r4, zero, -268
0047ec  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0047f0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0047f4  1f010002  addli r2, zero, 256
0047f8  6a7101c0  vsrl.p vr2, r2, vr0
0047fc  ea7111c0  vsrl.p vr3, r2, vr1
004800  1f010001  addli r2, zero, 128
004804  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004808  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00480c  6a7101c0  vsrl.p vr2, r2, vr0
004810  ea7111c0  vsrl.p vr3, r2, vr1
004814  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004818  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00481c  6af10bc0  vsrl.p vr2, r23, vr0
004820  eaf11bc0  vsrl.p vr3, r23, vr1
004824  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004828  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00482c  6a710cc0  vsrl.p vr2, r24, vr0
004830  ea711cc0  vsrl.p vr3, r24, vr1
004834  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004838  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00483c  7a110040  vextracti.f r2, 0(vr0)
004840  fa910040  vextracti.f r3, 0(vr1)
004844  5b660000  j 816
004848  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00484c  abf1ffff  lui r3, 1048575
004850  1f8b0d00  addli r22, r27, 0
004854  1f010000  addli r2, zero, 0
004858  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00485c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004860  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004864  9b9101f8  ori r3, r3, 3968
004868  8b192310  add.s r19, r6, r2
00486c  8b942610  add.s r9, r13, r2
004870  9f810101  addli r3, r3, 128
004874  1f010104  addli r2, r2, 512
004878  9f8d0931  addli r27, r19, 6272
00487c  1f820930  addli r4, r19, 6144
004880  1f888931  addli r16, r19, 6336
004884  9f830418  addli r7, r9, 3072
004888  ca930d02  vloads_mask16.mz vr7{mr1}, 0(r27)
00488c  ca120202  vloads_mask16.mz vr5{mr1}, 0(r4)
004890  1f828930  addli r4, r19, 6208
004894  ca140802  vloads_mask16.mz vr9{mr1}, 0(r16)
004898  1f880419  addli r16, r9, 3200
00489c  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
0048a0  9f8d8419  addli r27, r9, 3264
0048a4  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
0048a8  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
0048ac  1f828418  addli r4, r9, 3136
0048b0  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
0048b4  c2150202  vload_mask16.mz vr11{mr1}, 0(r4)
0048b8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0048bc  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0048c0  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0048c4  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0048c8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0048cc  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0048d0  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
0048d4  9f830932  addli r7, r19, 6400
0048d8  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0048dc  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
0048e0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0048e4  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
0048e8  1f88041a  addli r16, r9, 3328
0048ec  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
0048f0  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
0048f4  1f82041b  addli r4, r9, 3456
0048f8  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0048fc  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
004900  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
004904  9f838932  addli r7, r19, 6464
004908  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00490c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004910  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
004914  9f830933  addli r7, r19, 6528
004918  9f898933  addli r19, r19, 6592
00491c  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
004920  9f83841a  addli r7, r9, 3392
004924  4a950902  vloads_mask16.mz vr10{mr1}, 0(r19)
004928  9f84841b  addli r9, r9, 3520
00492c  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
004930  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004934  c2130202  vload_mask16.mz vr7{mr1}, 0(r4)
004938  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00493c  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
004940  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004944  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004948  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
00494c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004950  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
004954  9383c105  setlt.u r7, r3, r28
004958  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00495c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004960  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004964  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004968  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00496c  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
004970  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
004974  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004978  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00497c  bbbb03fe  bneq r7, zero, -276
004980  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004984  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004988  1f010002  addli r2, zero, 256
00498c  2bf2ffff  lui r4, 1048575
004990  9f040000  addli r9, zero, 0
004994  9b1d02f8  ori r27, r4, 3968
004998  ea7111c0  vsrl.p vr3, r2, vr1
00499c  6a7101c0  vsrl.p vr2, r2, vr0
0049a0  1f010001  addli r2, zero, 128
0049a4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0049a8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0049ac  ea7111c0  vsrl.p vr3, r2, vr1
0049b0  6a7101c0  vsrl.p vr2, r2, vr0
0049b4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0049b8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0049bc  eaf11bc0  vsrl.p vr3, r23, vr1
0049c0  6af10bc0  vsrl.p vr2, r23, vr0
0049c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0049c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0049cc  ea711cc0  vsrl.p vr3, r24, vr1
0049d0  6a710cc0  vsrl.p vr2, r24, vr0
0049d4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0049d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0049dc  fa910040  vextracti.f r3, 0(vr1)
0049e0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0049e4  7a110040  vextracti.f r2, 0(vr0)
0049e8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0049ec  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0049f0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0049f4  8b139310  add.s r7, r6, r9
0049f8  8b999610  add.s r19, r13, r9
0049fc  9f8d0d01  addli r27, r27, 128
004a00  9f840404  addli r9, r9, 512
004a04  1f820318  addli r4, r7, 3072
004a08  1f880319  addli r16, r7, 3200
004a0c  42940902  vload_mask16.mz vr8{mr1}, 0(r19)
004a10  9f8a8901  addli r21, r19, 192
004a14  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
004a18  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
004a1c  1f828318  addli r4, r7, 3136
004a20  1f888319  addli r16, r7, 3264
004a24  c2950a02  vload_mask16.mz vr11{mr1}, 0(r21)
004a28  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
004a2c  1f820901  addli r4, r19, 128
004a30  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
004a34  1f888900  addli r16, r19, 64
004a38  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
004a3c  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
004a40  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004a44  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004a48  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004a4c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004a50  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
004a54  1f82031a  addli r4, r7, 3328
004a58  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004a5c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004a60  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004a64  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004a68  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
004a6c  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
004a70  1f82831a  addli r4, r7, 3392
004a74  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
004a78  9f8a0902  addli r21, r19, 256
004a7c  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
004a80  1f888903  addli r16, r19, 448
004a84  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004a88  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004a8c  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
004a90  1f82031b  addli r4, r7, 3456
004a94  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
004a98  9f83831b  addli r7, r7, 3520
004a9c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004aa0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004aa4  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
004aa8  1f828902  addli r4, r19, 320
004aac  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
004ab0  9f830903  addli r7, r19, 384
004ab4  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
004ab8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004abc  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
004ac0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004ac4  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
004ac8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004acc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004ad0  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
004ad4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004ad8  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
004adc  13824d05  setlt.u r4, r27, r20
004ae0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004ae4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004ae8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004aec  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004af0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004af4  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
004af8  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
004afc  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004b00  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004b04  bb4b02fe  bneq r4, zero, -272
004b08  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004b0c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004b10  1f020002  addli r4, zero, 256
004b14  9f0d0b00  addli r27, r22, 0
004b18  803a0002  core_id r21
004b1c  1f1b0000  addli r22, zero, 1
004b20  6a7102c0  vsrl.p vr2, r4, vr0
004b24  ea7112c0  vsrl.p vr3, r4, vr1
004b28  1f020001  addli r4, zero, 128
004b2c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b30  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b34  6a7102c0  vsrl.p vr2, r4, vr0
004b38  ea7112c0  vsrl.p vr3, r4, vr1
004b3c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b40  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b44  6af10bc0  vsrl.p vr2, r23, vr0
004b48  eaf11bc0  vsrl.p vr3, r23, vr1
004b4c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b50  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b54  6a710cc0  vsrl.p vr2, r24, vr0
004b58  ea711cc0  vsrl.p vr3, r24, vr1
004b5c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b60  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b64  7a120040  vextracti.f r4, 0(vr0)
004b68  fa930040  vextracti.f r7, 0(vr1)
004b6c  0b614110  add.f.rn r2, r2, r4
004b70  8be17110  add.f.rn r3, r3, r7
004b74  1bb22000  slli r4, r1, 2
004b78  9b80e007  andi r1, r1, 126
004b7c  8b139211  add.s r7, r4, r25
004b80  8b142211  add.s r9, r4, r18
004b84  9bb02000  slli r1, r1, 2
004b88  73e02300  stores.w r2, 0(r7)
004b8c  1b114200  ori r2, r4, 4
004b90  73e03400  stores.w r3, 0(r9)
004b94  0b929011  add.s r4, r1, r25
004b98  8b902011  add.s r1, r1, r18
004b9c  9f030000  addli r7, zero, 0
004ba0  00a00300  mfence { lm, sm, gm }
004ba4  80210d04  csr_set csr3, r26
004ba8  00d00100  sync_group
004bac  8b119111  add.s r3, r2, r25
004bb0  6f420200  loads.w r4, 0(r4)
004bb4  0b112111  add.s r2, r2, r18
004bb8  efc00000  loads.w r1, 0(r1)
004bbc  efc10100  loads.w r3, 0(r3)
004bc0  6f410100  loads.w r2, 0(r2)
004bc4  8be14110  add.f.rn r3, r3, r4
004bc8  2b02003a  lui r4, 237568
004bcc  8b601110  add.f.rn r1, r2, r1
004bd0  0be14120  mul.f.rn r2, r3, r4
004bd4  8be04020  mul.f.rn r1, r1, r4
004bd8  8b612120  mul.f.rn r3, r2, r2
004bdc  0b610158  neg.f r2, r2
004be0  8be03018  sub.f.rn r1, r1, r3
004be4  e3013f00  loadli.w r3,  24(r30)
004be8  8be03010  add.f.rn r1, r1, r3
004bec  ab01803f  lui r3, 260096
004bf0  8f800008  sqrt.f.rn r1, r1
004bf4  8f801118  div.f.rn r1, r3, r1
004bf8  9f018fd7  addli r3, r30, -5184
004bfc  1f828100  addli r4, r3, 64
004c00  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
004c04  9f844300  addli r9, r7, 32
004c08  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
004c0c  93849206  setle.u r9, r5, r9
004c10  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
004c14  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
004c18  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
004c1c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004c20  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
004c24  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
004c28  bbf00400  bneq r9, zero, 60
004c2c  1f820101  addli r4, r3, 128
004c30  9f848101  addli r9, r3, 192
004c34  9f838300  addli r7, r7, 64
004c38  9f810102  addli r3, r3, 256
004c3c  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
004c40  c2900402  vload_mask16.mz vr1{mr1}, 0(r9)
004c44  13885304  setlt.u r16, r7, r5
004c48  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
004c4c  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
004c50  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
004c54  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004c58  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
004c5c  46901402  vstore_mask16.mz vr1{mr1}, 0(r9)
004c60  3b7e08fe  bneq r16, zero, -100
004c64  9f008fd7  addli r1, r30, -5184
004c68  1f018fd7  addli r2, r30, -5184
004c6c  9f010000  addli r3, zero, 0
004c70  00a00000  mfence { lm }
004c74  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
004c78  1f028100  addli r4, r2, 64
004c7c  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
004c80  9f814100  addli r3, r3, 32
004c84  1f010101  addli r2, r2, 128
004c88  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
004c8c  13825104  setlt.u r4, r3, r5
004c90  06110000  vfloat2fp16_l.rn vr2, vr0
004c94  06d10000  vfloat2fp16_h.rn vr2, vr1
004c98  46802002  vstore.mz vr2{mr1}, 0(r1)
004c9c  9f808000  addli r1, r1, 64
004ca0  3b5f02fe  bneq r4, zero, -44
004ca4  6b510f00  load.d r[3:4], 0(r30)
004ca8  ab0000f0  lui r1, 983040
004cac  00a00000  mfence { lm }
004cb0  97101600  or r1, r12, r1
004cb4  0b21e110  add.ul r[3:4], r[3:4], r[15:16]
004cb8  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
004cbc  00a00200  mfence { lm, gm }
004cc0  63421f00  loadli.w r4,  12(r30)
004cc4  5b2cffff  j -1696
004cc8  80300002  core_id r1
004ccc  e3012f00  loadli.w r3,  16(r30)
004cd0  1bb15000  slli r2, r1, 5
004cd4  cb912100  ble.s r3, r2, 100
004cd8  00540102  load_param_i r8, 2
004cdc  ab840100  lui r9, 24
004ce0  9f110000  addli r3, zero, 1
004ce4  1f038fd7  addli r6, r30, -5184
004ce8  9f038000  addli r7, zero, 64
004cec  1b345400  slli r8, r8, 5
004cf0  9f840400  addli r9, r9, 0
004cf4  33050128  zext_int2long r[11:12], r2
004cf8  2b0600f0  lui r12, 983040
004cfc  17353502  sll.d r[11:12], r[11:12], r3
004d00  1796c300  or r12, r7, r12
004d04  0b25a210  add.ul r[11:12], r[5:6], r[11:12]
004d08  7f266500  l_gm2lm r12, r6, 0(r[11:12])
004d0c  1b352100  slli r10, r2, 2
004d10  0b112410  add.s r2, r8, r2
004d14  00a00200  mfence { lm, gm }
004d18  42000302  vload.mz vr0{mr1}, 0(r6)
004d1c  0b159510  add.s r10, r10, r9
004d20  9f058500  addli r11, r10, 64
004d24  86300000  vfp162float_l.rn vr1, vr0
004d28  06700000  vfp162float_h.rn vr0, vr0
004d2c  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
004d30  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
004d34  3f0ff1fe  blt.s r2, r15, -64
004d38  2bf10000  lui r2, 15
004d3c  e3411f00  loadli.w r3,  12(r30)
004d40  00a00300  mfence { lm, sm, gm }
004d44  1b11f1ff  ori r2, r2, 4095
004d48  80210104  csr_set csr3, r2
004d4c  00d00100  sync_group
004d50  cbb6110c  ble.s r3, r1, 6572
004d54  63032f00  loadli.w r6,  16(r30)
004d58  e3432f00  loadli.w r7,  20(r30)
004d5c  9f0b8fd7  addli r23, r30, -5184
004d60  1f150000  addli r10, zero, 1
004d64  9f054000  addli r11, zero, 32
004d68  1f767000  addli r12, zero, 63
004d6c  1f080002  addli r16, zero, 256
004d70  9f080001  addli r17, zero, 128
004d74  1f098000  addli r18, zero, 64
004d78  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004d7c  0b127310  add.s r4, r6, r7
004d80  33010308  fix2float.rn r2, r6
004d84  1b342300  slli r8, r6, 2
004d88  9b321300  slli r5, r6, 1
004d8c  9bb42300  slli r9, r7, 2
004d90  1f72f2ff  addli r4, r4, -1
004d94  670c2fd4  storeli.w r2, -5440(r30)
004d98  1f014300  addli r2, r6, 32
004d9c  0b137411  add.s r6, r8, r23
004da0  0b947211  add.s r8, r5, r23
004da4  67082fd4  storeli.w r2, -5504(r30)
004da8  1f0183ff  addli r2, r6, -64
004dac  2bf3ffff  lui r6, 1048575
004db0  0b127230  div.s r4, r4, r7
004db4  67042fd4  storeli.w r2, -5568(r30)
004db8  1f0184ff  addli r2, r8, -64
004dbc  9b16f3ff  ori r13, r6, 4095
004dc0  2b830100  lui r6, 24
004dc4  67002fd4  storeli.w r2, -5632(r30)
004dc8  1f010fd7  addli r2, r30, -5248
004dcc  1f030300  addli r6, r6, 0
004dd0  00a00000  mfence { lm }
004dd4  67045fd6  storeli.w r5, -5312(r30)
004dd8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004ddc  5b070000  j 56
004de0  6b510f00  load.d r[3:4], 0(r30)
004de4  ab0900f0  lui r19, 983040
004de8  9f0b8fd7  addli r23, r30, -5184
004dec  00a00000  mfence { lm }
004df0  005a0102  load_param_i r20, 2
004df4  97993201  or r19, r5, r19
004df8  8b101a10  add.s r1, r20, r1
004dfc  8b235111  add.ul r[8:9], r[3:4], r[22:23]
004e00  ffb97301  s_lm2gm r19, r23, 0(r[8:9])
004e04  00a00200  mfence { lm, gm }
004e08  63411f00  loadli.w r2,  12(r30)
004e0c  3fa02000  blt.s r1, r2, 8
004e10  db1d0300  j 6380
004e14  63011f00  loadli.w r2,  8(r30)
004e18  8b932010  add.s r7, r1, r2
004e1c  8b93f320  mul.s r7, r7, r15
004e20  b3930328  sext_int2long r[8:9], r7
004e24  97baa302  sll.d r[22:23], r[8:9], r10
004e28  1f047fd6  addli r8, r30, -5320
004e2c  ab0300f0  lui r7, 983040
004e30  6b510400  load.d r[3:4], 0(r8)
004e34  97937200  or r7, r5, r7
004e38  8b295111  add.ul r[20:21], r[3:4], r[22:23]
004e3c  ffa37901  l_gm2lm r7, r23, 0(r[20:21])
004e40  00a00200  mfence { lm, gm }
004e44  bff0b700  blt.s r15, r11, 60
004e48  e3030fd4  loadli.w r7,  -5632(r30)
004e4c  63048fd4  loadli.w r8,  -5568(r30)
004e50  e3090fd5  loadli.w r19,  -5504(r30)
004e54  c2800302  vload.mz vr1{mr1}, 0(r7)
004e58  9f89c9ff  addli r19, r19, -32
004e5c  9f0b84ff  addli r23, r8, -64
004e60  9f8383ff  addli r7, r7, -64
004e64  130a3605  setlt.u r20, r12, r19
004e68  06f10000  vfp162float_h.rn vr2, vr1
004e6c  86b00000  vfp162float_l.rn vr1, vr1
004e70  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
004e74  1f0404ff  addli r8, r8, -128
004e78  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
004e7c  3b6f0afe  bneq r20, zero, -40
004e80  00a00000  mfence { lm }
004e84  bf17a200  blt.s r4, r10, 484
004e88  1f0c0000  addli r24, zero, 0
004e8c  9f0b0000  addli r23, zero, 0
004e90  9f0c0000  addli r25, zero, 0
004e94  db0c0000  j 100
004e98  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004e9c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004ea0  9f9c0c00  addli r25, r25, 1
004ea4  6a7108c0  vsrl.p vr2, r16, vr0
004ea8  ea7118c0  vsrl.p vr3, r16, vr1
004eac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004eb0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004eb4  6af108c0  vsrl.p vr2, r17, vr0
004eb8  eaf118c0  vsrl.p vr3, r17, vr1
004ebc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004ec0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004ec4  6a7109c0  vsrl.p vr2, r18, vr0
004ec8  ea7119c0  vsrl.p vr3, r18, vr1
004ecc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004ed0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004ed4  6af105c0  vsrl.p vr2, r11, vr0
004ed8  eaf115c0  vsrl.p vr3, r11, vr1
004edc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004ee0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004ee4  7a110040  vextracti.f r2, 0(vr0)
004ee8  fa910040  vextracti.f r3, 0(vr1)
004eec  0b6c2c10  add.f.rn r24, r24, r2
004ef0  8beb3b10  add.f.rn r23, r23, r3
004ef4  b7f54c00  beq r25, r4, 380
004ef8  9f830c00  addli r7, r25, 0
004efc  37300701  beq r14, r16, 12
004f00  97a3dc00  xor r7, r25, r13
004f04  8b137210  add.s r7, r4, r7
004f08  1f010fd7  addli r2, r30, -5248
004f0c  0b94e320  mul.s r8, r7, r14
004f10  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004f14  0b948718  sub.s r8, r15, r8
004f18  0b1de440  min.s r26, r8, r14
004f1c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004f20  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004f24  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004f28  bf4dadfe  blt.s r26, r10, -144
004f2c  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
004f30  9f0d0000  addli r27, zero, 0
004f34  0b9e7420  mul.s r28, r9, r7
004f38  9f098fd7  addli r19, r30, -5184
004f3c  1f0a0300  addli r20, r6, 0
004f40  92304002  vadd.s.mz vr1{mr1}, zero, vr4
004f44  12314002  vadd.s.mz vr2{mr1}, zero, vr4
004f48  92314002  vadd.s.mz vr3{mr1}, zero, vr4
004f4c  0b14ca11  add.s r8, r20, r28
004f50  8b93c911  add.s r7, r19, r28
004f54  9f028400  addli r5, r8, 64
004f58  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
004f5c  9f018401  addli r3, r8, 192
004f60  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
004f64  1f818301  addli r2, r7, 192
004f68  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
004f6c  9f020401  addli r5, r8, 128
004f70  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
004f74  9f818300  addli r3, r7, 64
004f78  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
004f7c  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
004f80  9f820301  addli r5, r7, 128
004f84  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
004f88  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
004f8c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004f90  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
004f94  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
004f98  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
004f9c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004fa0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004fa4  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
004fa8  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
004fac  9f818d00  addli r3, r27, 64
004fb0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004fb4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004fb8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004fbc  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
004fc0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004fc4  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
004fc8  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
004fcc  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
004fd0  4b2b3dfe  ble.s r26, r3, -312
004fd4  9f010402  addli r3, r8, 256
004fd8  9f028402  addli r5, r8, 320
004fdc  1f810302  addli r2, r7, 256
004fe0  9f8d0d01  addli r27, r27, 128
004fe4  1f0a0a04  addli r20, r20, 512
004fe8  9f890904  addli r19, r19, 512
004fec  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
004ff0  9f010403  addli r3, r8, 384
004ff4  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
004ff8  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
004ffc  9f828302  addli r5, r7, 320
005000  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
005004  9f018403  addli r3, r8, 448
005008  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
00500c  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
005010  9f810303  addli r3, r7, 384
005014  9f838303  addli r7, r7, 448
005018  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
00501c  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
005020  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
005024  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
005028  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
00502c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005030  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005034  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005038  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
00503c  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
005040  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
005044  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005048  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
00504c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005050  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005054  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
005058  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00505c  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
005060  bfbbadff  blt.s r27, r26, -276
005064  dbc6ffff  j -460
005068  9f0b0000  addli r23, zero, 0
00506c  1f0c0000  addli r24, zero, 0
005070  00a00000  mfence { lm }
005074  3fe2a700  blt.s r15, r10, 152
005078  63018fd5  loadli.w r2,  -5440(r30)
00507c  1f0a0000  addli r20, zero, 0
005080  0f042c18  div.f.rn r8, r24, r2
005084  8f832b18  div.f.rn r7, r23, r2
005088  63013f00  loadli.w r2,  24(r30)
00508c  8b698420  mul.f.rn r19, r8, r8
005090  0b640458  neg.f r8, r8
005094  8be33319  sub.f.rn r7, r7, r19
005098  9f098fd7  addli r19, r30, -5184
00509c  8be32310  add.f.rn r7, r7, r2
0050a0  2b01803f  lui r2, 260096
0050a4  8f830308  sqrt.f.rn r7, r7
0050a8  8f037118  div.f.rn r7, r2, r7
0050ac  9f8b8900  addli r23, r19, 64
0050b0  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
0050b4  1f0c4a00  addli r24, r20, 32
0050b8  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
0050bc  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
0050c0  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
0050c4  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
0050c8  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
0050cc  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
0050d0  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
0050d4  cbe08701  ble.s r15, r24, 56
0050d8  9f8b0901  addli r23, r19, 128
0050dc  1f8c8901  addli r24, r19, 192
0050e0  1f0a8a00  addli r20, r20, 64
0050e4  9f890902  addli r19, r19, 256
0050e8  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
0050ec  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
0050f0  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
0050f4  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
0050f8  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
0050fc  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
005100  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
005104  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
005108  bf1efafe  blt.s r20, r15, -92
00510c  00a00000  mfence { lm }
005110  e3028fd6  loadli.w r5,  -5312(r30)
005114  3fb3a7fe  blt.s r15, r10, -820
005118  9f038fd7  addli r7, r30, -5184
00511c  1f048fd7  addli r8, r30, -5184
005120  9f090000  addli r19, zero, 0
005124  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
005128  1f0a8400  addli r20, r8, 64
00512c  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
005130  9f894900  addli r19, r19, 32
005134  1f040401  addli r8, r8, 128
005138  42110a02  vload_mask16.mz vr2{mr1}, 0(r20)
00513c  86910000  vfloat2fp16_l.rn vr3, vr1
005140  86510100  vfloat2fp16_h.rn vr3, vr2
005144  46803302  vstore.mz vr3{mr1}, 0(r7)
005148  9f838300  addli r7, r7, 64
00514c  3feff9fe  blt.s r19, r15, -40
005150  5b92ffff  j -880
005154  63012f00  loadli.w r2,  16(r30)
005158  ab0100f0  lui r3, 983040
00515c  1b311100  slli r2, r2, 1
005160  17113100  or r2, r2, r3
005164  aba10100  lui r3, 26
005168  9f810100  addli r3, r3, 0
00516c  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005170  5b080000  j 64
005174  63012f00  loadli.w r2,  16(r30)
005178  ab0100f0  lui r3, 983040
00517c  1b311100  slli r2, r2, 1
005180  17113100  or r2, r2, r3
005184  abe10100  lui r3, 30
005188  9f810100  addli r3, r3, 0
00518c  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005190  5bc30000  j 1560
005194  63012f00  loadli.w r2,  16(r30)
005198  ab0100f0  lui r3, 983040
00519c  1b311100  slli r2, r2, 1
0051a0  17113100  or r2, r2, r3
0051a4  abb10100  lui r3, 27
0051a8  9f810100  addli r3, r3, 0
0051ac  7f013400  l_gm2sm r2, r3, 0(r[9:10])
0051b0  2bf10000  lui r2, 15
0051b4  e3411f00  loadli.w r3,  12(r30)
0051b8  00200300  mfence { sm, gm }
0051bc  1b11f1ff  ori r2, r2, 4095
0051c0  80210104  csr_set csr3, r2
0051c4  00d00100  sync_group
0051c8  cbd4110a  ble.s r3, r1, 5428
0051cc  63012f00  loadli.w r2,  16(r30)
0051d0  e3412f00  loadli.w r3,  20(r30)
0051d4  1f062000  addli r12, zero, 16
0051d8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0051dc  1f140000  addli r8, zero, 1
0051e0  9f068fd7  addli r13, r30, -5184
0051e4  9f050002  addli r11, zero, 256
0051e8  2b08ffff  lui r16, 1048560
0051ec  2b09807f  lui r18, 522240
0051f0  ab09c07f  lui r19, 523264
0051f4  1f0a0001  addli r20, zero, 128
0051f8  9f0a8000  addli r21, zero, 64
0051fc  1f0b4000  addli r22, zero, 32
005200  9b321100  slli r5, r2, 1
005204  0b123110  add.s r4, r2, r3
005208  33010108  fix2float.rn r2, r2
00520c  1bb31100  slli r6, r3, 1
005210  67042fd4  storeli.w r2, -5568(r30)
005214  1f71f2ff  addli r2, r4, -1
005218  67085fd4  storeli.w r5, -5504(r30)
00521c  8b133130  div.s r7, r2, r3
005220  2bf1ffff  lui r2, 1048575
005224  1b15f1ff  ori r10, r2, 4095
005228  1f010fd7  addli r2, r30, -5248
00522c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005230  6a200622  vor.u.mz vr0{mr1}, r12, vr0
005234  1f018fd6  addli r2, r30, -5312
005238  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00523c  2b710000  lui r2, 7
005240  9b18f1ff  ori r17, r2, 4095
005244  db080000  j 68
005248  9f028fd5  addli r5, r30, -5440
00524c  00a00000  mfence { lm }
005250  eb510f00  load.d r[4:5], 0(r30)
005254  2b0100f0  lui r2, 983040
005258  9f068fd7  addli r13, r30, -5184
00525c  80540102  load_param_i r9, 2
005260  ebdb0200  load.d r[24:25], 0(r5)
005264  e3020fd5  loadli.w r5,  -5504(r30)
005268  8b901410  add.s r1, r9, r1
00526c  8ba17111  add.ul r[4:5], r[4:5], r[24:25]
005270  17912200  or r2, r5, r2
005274  7fb1d100  s_lm2gm r2, r13, 0(r[4:5])
005278  00a00200  mfence { lm, gm }
00527c  63411f00  loadli.w r2,  12(r30)
005280  3fa02000  blt.s r1, r2, 8
005284  5b8f0200  j 5240
005288  63011f00  loadli.w r2,  8(r30)
00528c  9f047fd6  addli r9, r30, -5320
005290  0b912010  add.s r2, r1, r2
005294  0b11f120  mul.s r2, r2, r15
005298  33110128  sext_int2long r[3:4], r2
00529c  973b8102  sll.d r[24:25], r[3:4], r8
0052a0  ebd10400  load.d r[4:5], 0(r9)
0052a4  2b0100f0  lui r2, 983040
0052a8  9f048fd5  addli r9, r30, -5440
0052ac  17912200  or r2, r5, r2
0052b0  73b07401  store.d r[24:25], 0(r9)
0052b4  8ba17111  add.ul r[4:5], r[4:5], r[24:25]
0052b8  7fa1d100  l_gm2lm r2, r13, 0(r[4:5])
0052bc  00a00200  mfence { lm, gm }
0052c0  bfdc8300  blt.s r7, r8, 820
0052c4  9f010000  addli r3, zero, 0
0052c8  1f010000  addli r2, zero, 0
0052cc  1f0e0000  addli r28, zero, 0
0052d0  db0c0000  j 100
0052d4  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0052d8  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0052dc  1f1e0e00  addli r28, r28, 1
0052e0  6af105c0  vsrl.p vr2, r11, vr0
0052e4  eaf115c0  vsrl.p vr3, r11, vr1
0052e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0052ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0052f0  6a710ac0  vsrl.p vr2, r20, vr0
0052f4  ea711ac0  vsrl.p vr3, r20, vr1
0052f8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0052fc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005300  6af10ac0  vsrl.p vr2, r21, vr0
005304  eaf11ac0  vsrl.p vr3, r21, vr1
005308  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00530c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005310  6a710bc0  vsrl.p vr2, r22, vr0
005314  ea711bc0  vsrl.p vr3, r22, vr1
005318  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00531c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005320  7a120040  vextracti.f r4, 0(vr0)
005324  fa920040  vextracti.f r5, 0(vr1)
005328  8be14110  add.f.rn r3, r3, r4
00532c  0b615110  add.f.rn r2, r2, r5
005330  373b7e00  beq r28, r7, 716
005334  1f020e00  addli r4, r28, 0
005338  3730b700  beq r14, r11, 12
00533c  1722ae00  xor r4, r28, r10
005340  0b924310  add.s r4, r7, r4
005344  9f020fd7  addli r5, r30, -5248
005348  8b14e220  mul.s r9, r4, r14
00534c  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
005350  8b949718  sub.s r9, r15, r9
005354  8b9be440  min.s r23, r9, r14
005358  92322002  vadd.s.mz vr5{mr1}, zero, vr2
00535c  12322002  vadd.s.mz vr4{mr1}, zero, vr2
005360  92312002  vadd.s.mz vr3{mr1}, zero, vr2
005364  bfcd8bfe  blt.s r23, r8, -144
005368  8b1c4320  mul.s r25, r6, r4
00536c  1f020fd7  addli r4, r30, -5248
005370  ab960100  lui r13, 25
005374  1f0c0000  addli r24, zero, 0
005378  9f048fd7  addli r9, r30, -5184
00537c  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
005380  9f860600  addli r13, r13, 0
005384  12315002  vadd.s.mz vr2{mr1}, zero, vr5
005388  92315002  vadd.s.mz vr3{mr1}, zero, vr5
00538c  12325002  vadd.s.mz vr4{mr1}, zero, vr5
005390  0b9d9611  add.s r26, r13, r25
005394  0b929411  add.s r4, r9, r25
005398  9f028fd6  addli r5, r30, -5312
00539c  4a030d02  vloads.mz vr6{mr1}, 0(r26)
0053a0  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
0053a4  c2030202  vload.mz vr7{mr1}, 0(r4)
0053a8  9f020fd7  addli r5, r30, -5248
0053ac  9f0d8d00  addli r27, r26, 64
0053b0  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0053b4  9f028c00  addli r5, r24, 64
0053b8  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0053bc  6a357802  vand.s.mz vr10{mr1}, r16, vr7
0053c0  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0053c4  6a336802  vand.s.mz vr6{mr1}, r16, vr6
0053c8  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0053cc  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0053d0  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0053d4  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0053d8  669503c0  vabs.f vr10, vr7
0053dc  6a348402  vand.s.mz vr8{mr1}, r8, vr8
0053e0  ea349402  vand.s.mz vr9{mr1}, r8, vr9
0053e4  7221a942  vlt.u.mz mr2{mr1}, r18, vr10
0053e8  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
0053ec  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
0053f0  12b48802  vadd.s.mz vr8{mr1}, r17, vr8
0053f4  92b49802  vadd.s.mz vr9{mr1}, r17, vr9
0053f8  ea338802  vand.s.mz vr7{mr1}, r16, vr8
0053fc  661403c0  vabs.f vr8, vr6
005400  6a339802  vand.s.mz vr6{mr1}, r16, vr9
005404  eaa30934  vor.u.mh vr7{mr2}, r19, vr0
005408  72218942  vlt.u.mz mr2{mr1}, r18, vr8
00540c  6aa30934  vor.u.mh vr6{mr2}, r19, vr0
005410  4a840d02  vloads.mz vr8{mr1}, 0(r27)
005414  9f0d8200  addli r27, r4, 64
005418  c2840d02  vload.mz vr9{mr1}, 0(r27)
00541c  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
005420  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
005424  6a336802  vand.s.mz vr6{mr1}, r16, vr6
005428  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
00542c  ea349802  vand.s.mz vr9{mr1}, r16, vr9
005430  46007202  vstore.mz vr7{mr1}, 0(r4)
005434  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005438  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
00543c  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
005440  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
005444  6a348802  vand.s.mz vr8{mr1}, r16, vr8
005448  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
00544c  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005450  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
005454  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
005458  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
00545c  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
005460  ea349402  vand.s.mz vr9{mr1}, r8, vr9
005464  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
005468  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
00546c  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
005470  661505c0  vabs.f vr10, vr10
005474  661404c0  vabs.f vr8, vr8
005478  92b49802  vadd.s.mz vr9{mr1}, r17, vr9
00547c  92b5b802  vadd.s.mz vr11{mr1}, r17, vr11
005480  7221a942  vlt.u.mz mr2{mr1}, r18, vr10
005484  ea349802  vand.s.mz vr9{mr1}, r16, vr9
005488  6a35b802  vand.s.mz vr10{mr1}, r16, vr11
00548c  eaa40934  vor.u.mh vr9{mr2}, r19, vr0
005490  72218942  vlt.u.mz mr2{mr1}, r18, vr8
005494  6aa50934  vor.u.mh vr10{mr2}, r19, vr0
005498  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
00549c  ea34a802  vand.s.mz vr9{mr1}, r16, vr10
0054a0  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0054a4  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0054a8  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0054ac  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0054b0  46808d02  vstore.mz vr8{mr1}, 0(r27)
0054b4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0054b8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0054bc  4be85bfe  ble.s r23, r5, -488
0054c0  9f020d01  addli r5, r26, 128
0054c4  9f0d0201  addli r27, r4, 128
0054c8  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0054cc  1f028201  addli r4, r4, 192
0054d0  1f0c0c01  addli r24, r24, 128
0054d4  9f860602  addli r13, r13, 256
0054d8  9f840402  addli r9, r9, 256
0054dc  6a237622  vor.u.mz vr6{mr1}, r12, vr7
0054e0  4a840202  vloads.mz vr8{mr1}, 0(r5)
0054e4  c2840d02  vload.mz vr9{mr1}, 0(r27)
0054e8  9f028d01  addli r5, r26, 192
0054ec  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
0054f0  6a309802  vand.s.mz vr0{mr1}, r16, vr9
0054f4  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
0054f8  6a348802  vand.s.mz vr8{mr1}, r16, vr8
0054fc  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
005500  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
005504  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
005508  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
00550c  e69504c0  vabs.f vr11, vr9
005510  6a300402  vand.s.mz vr0{mr1}, r8, vr0
005514  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
005518  7221b942  vlt.u.mz mr2{mr1}, r18, vr11
00551c  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
005520  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
005524  12b00802  vadd.s.mz vr0{mr1}, r17, vr0
005528  12b5a802  vadd.s.mz vr10{mr1}, r17, vr10
00552c  ea340802  vand.s.mz vr9{mr1}, r16, vr0
005530  661004c0  vabs.f vr0, vr8
005534  6a34a802  vand.s.mz vr8{mr1}, r16, vr10
005538  eaa47934  vor.u.mh vr9{mr2}, r19, vr7
00553c  72210942  vlt.u.mz mr2{mr1}, r18, vr0
005540  6aa47934  vor.u.mh vr8{mr2}, r19, vr7
005544  4a800202  vloads.mz vr0{mr1}, 0(r5)
005548  42050202  vload.mz vr10{mr1}, 0(r4)
00554c  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
005550  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
005554  6a35a802  vand.s.mz vr10{mr1}, r16, vr10
005558  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
00555c  6a348802  vand.s.mz vr8{mr1}, r16, vr8
005560  46809d02  vstore.mz vr9{mr1}, 0(r27)
005564  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
005568  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
00556c  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
005570  6a300802  vand.s.mz vr0{mr1}, r16, vr0
005574  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
005578  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
00557c  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
005580  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
005584  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
005588  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
00558c  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
005590  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
005594  e69000c0  vabs.f vr1, vr1
005598  661000c0  vabs.f vr0, vr0
00559c  12b5a802  vadd.s.mz vr10{mr1}, r17, vr10
0055a0  92b5b802  vadd.s.mz vr11{mr1}, r17, vr11
0055a4  72211942  vlt.u.mz mr2{mr1}, r18, vr1
0055a8  6a35a802  vand.s.mz vr10{mr1}, r16, vr10
0055ac  ea30b802  vand.s.mz vr1{mr1}, r16, vr11
0055b0  6aa57934  vor.u.mh vr10{mr2}, r19, vr7
0055b4  72210942  vlt.u.mz mr2{mr1}, r18, vr0
0055b8  eaa07934  vor.u.mh vr1{mr2}, r19, vr7
0055bc  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
0055c0  ea331802  vand.s.mz vr7{mr1}, r16, vr1
0055c4  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0055c8  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
0055cc  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0055d0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0055d4  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
0055d8  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
0055dc  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
0055e0  46000202  vstore.mz vr0{mr1}, 0(r4)
0055e4  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0055e8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0055ec  bf167cff  blt.s r24, r23, -604
0055f0  db9cffff  j -796
0055f4  1f010000  addli r2, zero, 0
0055f8  9f010000  addli r3, zero, 0
0055fc  00a00000  mfence { lm }
005600  3fa187fe  blt.s r15, r8, -952
005604  e3028fd4  loadli.w r5,  -5568(r30)
005608  aba60100  lui r13, 26
00560c  abbb0100  lui r23, 27
005610  1f020000  addli r4, zero, 0
005614  9f860600  addli r13, r13, 0
005618  9f8b0b00  addli r23, r23, 0
00561c  8f815118  div.f.rn r3, r3, r5
005620  0f015118  div.f.rn r2, r2, r5
005624  e3023f00  loadli.w r5,  24(r30)
005628  8be43120  mul.f.rn r9, r3, r3
00562c  8be10158  neg.f r3, r3
005630  0b619118  sub.f.rn r2, r2, r9
005634  9f048fd7  addli r9, r30, -5184
005638  0b615110  add.f.rn r2, r2, r5
00563c  ab02803f  lui r5, 260096
005640  0f010108  sqrt.f.rn r2, r2
005644  0f812218  div.f.rn r2, r5, r2
005648  42820402  vload.mz vr4{mr1}, 0(r9)
00564c  ca820602  vloads.mz vr5{mr1}, 0(r13)
005650  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
005654  4a830b02  vloads.mz vr6{mr1}, 0(r23)
005658  1f0c4200  addli r24, r4, 32
00565c  ea212622  vor.u.mz vr3{mr1}, r12, vr2
005660  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
005664  6a344802  vand.s.mz vr8{mr1}, r16, vr4
005668  92937102  vadd.f.mz.rn vr7{mr1}, r3, vr7
00566c  12948102  vadd.f.mz.rn vr8{mr1}, r3, vr8
005670  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
005674  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
005678  6a355802  vand.s.mz vr10{mr1}, r16, vr5
00567c  ea326802  vand.s.mz vr5{mr1}, r16, vr6
005680  8a137102  vmul.f.mz.rn vr7{mr1}, r2, vr7
005684  0a138102  vmul.f.mz.rn vr6{mr1}, r2, vr8
005688  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
00568c  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
005690  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
005694  6a337402  vand.s.mz vr6{mr1}, r8, vr7
005698  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
00569c  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
0056a0  ea337402  vand.s.mz vr7{mr1}, r8, vr7
0056a4  661202c0  vabs.f vr4, vr4
0056a8  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
0056ac  12b36802  vadd.s.mz vr6{mr1}, r17, vr6
0056b0  e69202c0  vabs.f vr5, vr5
0056b4  72214942  vlt.u.mz mr2{mr1}, r18, vr4
0056b8  6a336802  vand.s.mz vr6{mr1}, r16, vr6
0056bc  92b37802  vadd.s.mz vr7{mr1}, r17, vr7
0056c0  6aa32934  vor.u.mh vr6{mr2}, r19, vr2
0056c4  6a327802  vand.s.mz vr4{mr1}, r16, vr7
0056c8  72215942  vlt.u.mz mr2{mr1}, r18, vr5
0056cc  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
0056d0  6aa22934  vor.u.mh vr4{mr2}, r19, vr2
0056d4  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
0056d8  46804402  vstore.mz vr4{mr1}, 0(r9)
0056dc  cbbd87fd  ble.s r15, r24, -1172
0056e0  1f8c8600  addli r24, r13, 64
0056e4  9f8c8400  addli r25, r9, 64
0056e8  1f028200  addli r4, r4, 64
0056ec  9f860601  addli r13, r13, 128
0056f0  9f840401  addli r9, r9, 128
0056f4  4a020c02  vloads.mz vr4{mr1}, 0(r24)
0056f8  1f8c8b00  addli r24, r23, 64
0056fc  c2820c02  vload.mz vr5{mr1}, 0(r25)
005700  9f8b0b01  addli r23, r23, 128
005704  4a030c02  vloads.mz vr6{mr1}, 0(r24)
005708  eeb351a2  vsll.s.mz vr7{mr1}, vr3, vr5
00570c  ea325802  vand.s.mz vr5{mr1}, r16, vr5
005710  92937102  vadd.f.mz.rn vr7{mr1}, r3, vr7
005714  12945102  vadd.f.mz.rn vr8{mr1}, r3, vr5
005718  eeb441a2  vsll.s.mz vr9{mr1}, vr3, vr4
00571c  6a354802  vand.s.mz vr10{mr1}, r16, vr4
005720  8a137102  vmul.f.mz.rn vr7{mr1}, r2, vr7
005724  eeb261a2  vsll.s.mz vr5{mr1}, vr3, vr6
005728  6a326802  vand.s.mz vr4{mr1}, r16, vr6
00572c  0a138102  vmul.f.mz.rn vr6{mr1}, r2, vr8
005730  a6929302  vmac.f.mz.rn vr5{mr1}, vr7, vr9
005734  2612a302  vmac.f.mz.rn vr4{mr1}, vr6, vr10
005738  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
00573c  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
005740  6a336402  vand.s.mz vr6{mr1}, r8, vr6
005744  ea337402  vand.s.mz vr7{mr1}, r8, vr7
005748  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
00574c  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
005750  e69202c0  vabs.f vr5, vr5
005754  661202c0  vabs.f vr4, vr4
005758  12b36802  vadd.s.mz vr6{mr1}, r17, vr6
00575c  92b37802  vadd.s.mz vr7{mr1}, r17, vr7
005760  72215942  vlt.u.mz mr2{mr1}, r18, vr5
005764  6a336802  vand.s.mz vr6{mr1}, r16, vr6
005768  ea327802  vand.s.mz vr5{mr1}, r16, vr7
00576c  6aa32934  vor.u.mh vr6{mr2}, r19, vr2
005770  72214942  vlt.u.mz mr2{mr1}, r18, vr4
005774  eaa22934  vor.u.mh vr5{mr2}, r19, vr2
005778  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
00577c  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
005780  46802c02  vstore.mz vr2{mr1}, 0(r25)
005784  3f1bf2fe  blt.s r4, r15, -316
005788  5b58ffff  j -1344
00578c  63012f00  loadli.w r2,  16(r30)
005790  ab0100f0  lui r3, 983040
005794  1b311100  slli r2, r2, 1
005798  17113100  or r2, r2, r3
00579c  abf10100  lui r3, 31
0057a0  9f810100  addli r3, r3, 0
0057a4  7f013400  l_gm2sm r2, r3, 0(r[9:10])
0057a8  2bf10000  lui r2, 15
0057ac  e3411f00  loadli.w r3,  12(r30)
0057b0  00200300  mfence { sm, gm }
0057b4  1b11f1ff  ori r2, r2, 4095
0057b8  80210104  csr_set csr3, r2
0057bc  00d00100  sync_group
0057c0  cbfc1106  ble.s r3, r1, 3900
0057c4  e3012f00  loadli.w r3,  16(r30)
0057c8  e3422f00  loadli.w r5,  20(r30)
0057cc  2bf4ffff  lui r8, 1048575
0057d0  2bd50100  lui r10, 29
0057d4  9f0b8fd7  addli r23, r30, -5184
0057d8  9f040002  addli r9, zero, 256
0057dc  9f050001  addli r11, zero, 128
0057e0  1f068000  addli r12, zero, 64
0057e4  9f064000  addli r13, zero, 32
0057e8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0057ec  1b14f4ff  ori r8, r8, 4095
0057f0  1f050500  addli r10, r10, 0
0057f4  0b925110  add.s r4, r3, r5
0057f8  1bb11100  slli r2, r3, 1
0057fc  b3810108  fix2float.rn r3, r3
005800  1f73f2ff  addli r6, r4, -1
005804  1bb21200  slli r4, r5, 1
005808  8b125330  div.s r5, r6, r5
00580c  1f130000  addli r6, zero, 1
005810  5b070000  j 56
005814  00a00000  mfence { lm }
005818  eb580f00  load.d r[18:19], 0(r30)
00581c  2b0800f0  lui r16, 983040
005820  9f0b8fd7  addli r23, r30, -5184
005824  17180101  or r16, r2, r16
005828  8ba93811  add.ul r[20:21], r[18:19], r[20:21]
00582c  80580102  load_param_i r17, 2
005830  7fb87901  s_lm2gm r16, r23, 0(r[20:21])
005834  8b901810  add.s r1, r17, r1
005838  00a00200  mfence { lm, gm }
00583c  e3431f00  loadli.w r7,  12(r30)
005840  3fa07000  blt.s r1, r7, 8
005844  5bd70100  j 3768
005848  e3031f00  loadli.w r7,  8(r30)
00584c  0b987010  add.s r16, r1, r7
005850  9f037fd6  addli r7, r30, -5320
005854  0b18f820  mul.s r16, r16, r15
005858  33180828  sext_int2long r[17:18], r16
00585c  97396802  sll.d r[20:21], r[17:18], r6
005860  ebd80300  load.d r[18:19], 0(r7)
005864  2b0800f0  lui r16, 983040
005868  17180101  or r16, r2, r16
00586c  8baa3811  add.ul r[22:23], r[18:19], r[20:21]
005870  7fa87a01  l_gm2lm r16, r23, 0(r[22:23])
005874  00a00200  mfence { lm, gm }
005878  3fc76200  blt.s r5, r6, 464
00587c  1f0b0000  addli r22, zero, 0
005880  9f0a0000  addli r21, zero, 0
005884  9f0b0000  addli r23, zero, 0
005888  db0c0000  j 100
00588c  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
005890  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005894  9f9b0b00  addli r23, r23, 1
005898  6af134c0  vsrl.p vr2, r9, vr3
00589c  6af214c0  vsrl.p vr4, r9, vr1
0058a0  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
0058a4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0058a8  eaf125c0  vsrl.p vr3, r11, vr2
0058ac  6af215c0  vsrl.p vr4, r11, vr1
0058b0  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0058b4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0058b8  ea7126c0  vsrl.p vr3, r12, vr2
0058bc  6a7216c0  vsrl.p vr4, r12, vr1
0058c0  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0058c4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0058c8  eaf126c0  vsrl.p vr3, r13, vr2
0058cc  6af216c0  vsrl.p vr4, r13, vr1
0058d0  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0058d4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0058d8  fa130140  vextracti.f r7, 0(vr2)
0058dc  7a980040  vextracti.f r16, 0(vr1)
0058e0  0b6b7b10  add.f.rn r22, r22, r7
0058e4  8bea0a11  add.f.rn r21, r21, r16
0058e8  b7a55b00  beq r23, r5, 360
0058ec  1f880b00  addli r16, r23, 0
0058f0  37309700  beq r14, r9, 12
0058f4  17a88b00  xor r16, r23, r8
0058f8  0b980211  add.s r16, r5, r16
0058fc  8b18e820  mul.s r17, r16, r14
005900  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005904  92310002  vadd.s.mz vr3{mr1}, zero, vr0
005908  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00590c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
005910  8b981719  sub.s r17, r15, r17
005914  0b9ce840  min.s r24, r17, r14
005918  bf5d6cfe  blt.s r24, r6, -140
00591c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
005920  12310002  vadd.s.mz vr2{mr1}, zero, vr0
005924  92310002  vadd.s.mz vr3{mr1}, zero, vr0
005928  12320002  vadd.s.mz vr4{mr1}, zero, vr0
00592c  9f0c0000  addli r25, zero, 0
005930  0b1d0221  mul.s r26, r4, r16
005934  9f0d8fd7  addli r27, r30, -5184
005938  1f0e0500  addli r28, r10, 0
00593c  0b18ae11  add.s r16, r28, r26
005940  9f838c00  addli r7, r25, 64
005944  ca020802  vloads.mz vr5{mr1}, 0(r16)
005948  9f088800  addli r17, r16, 64
00594c  4a830802  vloads.mz vr6{mr1}, 0(r17)
005950  8b98ad11  add.s r17, r27, r26
005954  c2830802  vload.mz vr7{mr1}, 0(r17)
005958  1f898800  addli r18, r17, 64
00595c  42040902  vload.mz vr8{mr1}, 0(r18)
005960  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
005964  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005968  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
00596c  06b40300  vfp162float_l.rn vr8, vr7
005970  86f30300  vfp162float_h.rn vr7, vr7
005974  86340300  vfp162float_l.rn vr9, vr6
005978  06730300  vfp162float_h.rn vr6, vr6
00597c  86120400  vfloat2fp16_l.rn vr5, vr8
005980  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
005984  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
005988  12340002  vadd.s.mz vr8{mr1}, zero, vr0
00598c  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005990  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005994  06940400  vfloat2fp16_l.rn vr8, vr9
005998  86d20300  vfloat2fp16_h.rn vr5, vr7
00599c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0059a0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0059a4  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0059a8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0059ac  06540300  vfloat2fp16_h.rn vr8, vr6
0059b0  46805802  vstore.mz vr5{mr1}, 0(r17)
0059b4  46008902  vstore.mz vr8{mr1}, 0(r18)
0059b8  4b5b7cfe  ble.s r24, r7, -300
0059bc  9f030801  addli r7, r16, 128
0059c0  9f8c0c01  addli r25, r25, 128
0059c4  1f0e0e02  addli r28, r28, 256
0059c8  9f8d0d02  addli r27, r27, 256
0059cc  ca820302  vloads.mz vr5{mr1}, 0(r7)
0059d0  9f038801  addli r7, r16, 192
0059d4  1f880801  addli r16, r17, 128
0059d8  4a830302  vloads.mz vr6{mr1}, 0(r7)
0059dc  c2030802  vload.mz vr7{mr1}, 0(r16)
0059e0  9f838801  addli r7, r17, 192
0059e4  42840302  vload.mz vr8{mr1}, 0(r7)
0059e8  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
0059ec  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0059f0  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
0059f4  12330002  vadd.s.mz vr6{mr1}, zero, vr0
0059f8  86b40300  vfp162float_l.rn vr9, vr7
0059fc  86f30300  vfp162float_h.rn vr7, vr7
005a00  86920400  vfloat2fp16_l.rn vr5, vr9
005a04  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
005a08  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
005a0c  86340400  vfp162float_l.rn vr9, vr8
005a10  06740400  vfp162float_h.rn vr8, vr8
005a14  06930400  vfloat2fp16_l.rn vr6, vr9
005a18  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005a1c  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005a20  86d20300  vfloat2fp16_h.rn vr5, vr7
005a24  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005a28  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005a2c  06530400  vfloat2fp16_h.rn vr6, vr8
005a30  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
005a34  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005a38  46005802  vstore.mz vr5{mr1}, 0(r16)
005a3c  46806302  vstore.mz vr6{mr1}, 0(r7)
005a40  bffb8cff  blt.s r25, r24, -260
005a44  5bc9ffff  j -440
005a48  9f0a0000  addli r21, zero, 0
005a4c  1f0b0000  addli r22, zero, 0
005a50  00a00000  mfence { lm }
005a54  3f8767fe  blt.s r15, r6, -576
005a58  0f083b18  div.f.rn r16, r22, r3
005a5c  8f883a18  div.f.rn r17, r21, r3
005a60  e3033f00  loadli.w r7,  24(r30)
005a64  abec0100  lui r25, 30
005a68  2bfd0100  lui r26, 31
005a6c  9f0b0000  addli r23, zero, 0
005a70  1f0c8fd7  addli r24, r30, -5184
005a74  9f8c0c00  addli r25, r25, 0
005a78  1f0d0d00  addli r26, r26, 0
005a7c  8b6a0821  mul.f.rn r21, r16, r16
005a80  0b6b0858  neg.f r22, r16
005a84  8be85819  sub.f.rn r17, r17, r21
005a88  8be87810  add.f.rn r17, r17, r7
005a8c  ab03803f  lui r7, 260096
005a90  8f880808  sqrt.f.rn r17, r17
005a94  8f8a1319  div.f.rn r21, r7, r17
005a98  c2000c02  vload.mz vr1{mr1}, 0(r24)
005a9c  4a810c02  vloads.mz vr2{mr1}, 0(r25)
005aa0  ca010d02  vloads.mz vr3{mr1}, 0(r26)
005aa4  1f884b00  addli r16, r23, 32
005aa8  06b20000  vfp162float_l.rn vr4, vr1
005aac  86f00000  vfp162float_h.rn vr1, vr1
005ab0  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
005ab4  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
005ab8  86320100  vfp162float_l.rn vr5, vr2
005abc  06b30100  vfp162float_l.rn vr6, vr3
005ac0  06710100  vfp162float_h.rn vr2, vr2
005ac4  86f10100  vfp162float_h.rn vr3, vr3
005ac8  8a931a02  vmul.f.mz.rn vr7{mr1}, r21, vr1
005acc  0a924a02  vmul.f.mz.rn vr4{mr1}, r21, vr4
005ad0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005ad4  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
005ad8  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
005adc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005ae0  06110300  vfloat2fp16_l.rn vr2, vr6
005ae4  06d10100  vfloat2fp16_h.rn vr2, vr3
005ae8  46002c02  vstore.mz vr2{mr1}, 0(r24)
005aec  cba407ff  ble.s r15, r16, -728
005af0  1f888c00  addli r16, r25, 64
005af4  9f088c00  addli r17, r24, 64
005af8  9f8b8b00  addli r23, r23, 64
005afc  9f8c0c01  addli r25, r25, 128
005b00  1f0c0c01  addli r24, r24, 128
005b04  4a010802  vloads.mz vr2{mr1}, 0(r16)
005b08  1f088d00  addli r16, r26, 64
005b0c  c2810802  vload.mz vr3{mr1}, 0(r17)
005b10  1f0d0d01  addli r26, r26, 128
005b14  4a020802  vloads.mz vr4{mr1}, 0(r16)
005b18  86b20100  vfp162float_l.rn vr5, vr3
005b1c  86f10100  vfp162float_h.rn vr3, vr3
005b20  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
005b24  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
005b28  06330100  vfp162float_l.rn vr6, vr2
005b2c  06710100  vfp162float_h.rn vr2, vr2
005b30  8a925a02  vmul.f.mz.rn vr5{mr1}, r21, vr5
005b34  8a913a02  vmul.f.mz.rn vr3{mr1}, r21, vr3
005b38  86330200  vfp162float_l.rn vr7, vr4
005b3c  06720200  vfp162float_h.rn vr4, vr4
005b40  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
005b44  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
005b48  86900300  vfloat2fp16_l.rn vr1, vr7
005b4c  86500200  vfloat2fp16_h.rn vr1, vr4
005b50  46801802  vstore.mz vr1{mr1}, 0(r17)
005b54  3f9dfbfe  blt.s r23, r15, -188
005b58  db97ffff  j -836
005b5c  9f000040  addli r1, zero, 8192
005b60  2b0100f0  lui r2, 983040
005b64  97902000  or r1, r1, r2
005b68  2b310200  lui r2, 35
005b6c  1f010100  addli r2, r2, 0
005b70  ff002300  l_gm2sm r1, r2, 0(r[7:8])
005b74  db070000  j 60
005b78  63012f00  loadli.w r2,  16(r30)
005b7c  ab0100f0  lui r3, 983040
005b80  1b312100  slli r2, r2, 2
005b84  17113100  or r2, r2, r3
005b88  ab810200  lui r3, 40
005b8c  9f810108  addli r3, r3, 1024
005b90  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005b94  dbef0000  j 1916
005b98  9f000040  addli r1, zero, 8192
005b9c  2b0100f0  lui r2, 983040
005ba0  97902000  or r1, r1, r2
005ba4  2b510200  lui r2, 37
005ba8  1f010100  addli r2, r2, 0
005bac  ff002400  l_gm2sm r1, r2, 0(r[9:10])
005bb0  abf00000  lui r1, 15
005bb4  00200300  mfence { sm, gm }
005bb8  1b011500  andi r2, r10, 1
005bbc  9f020006  addli r5, zero, 768
005bc0  9b90f0ff  ori r1, r1, 4095
005bc4  80a10004  csr_set csr3, r1
005bc8  9f000006  addli r1, zero, 768
005bcc  00d00100  sync_group
005bd0  67082fd6  storeli.w r2, -5248(r30)
005bd4  37200100  beq r2, zero, 8
005bd8  9f02000a  addli r5, zero, 1280
005bdc  63411f00  loadli.w r2,  12(r30)
005be0  9f110000  addli r3, zero, 1
005be4  3f6c3104  blt.s r2, r3, 2840
005be8  e3010fd7  loadli.w r3,  -5248(r30)
005bec  00510102  load_param_i r2, 2
005bf0  ab180200  lui r17, 33
005bf4  ab7b0200  lui r23, 39
005bf8  2b7e0200  lui r28, 39
005bfc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005c00  9b441500  srli r9, r10, 1
005c04  1f030000  addli r6, zero, 0
005c08  1bb52200  slli r10, r5, 2
005c0c  1f078fd7  addli r14, r30, -5184
005c10  1f090005  addli r18, zero, 640
005c14  1f0a0001  addli r20, zero, 128
005c18  9f0a8000  addli r21, zero, 64
005c1c  1f0b4000  addli r22, zero, 32
005c20  9f0d0003  addli r27, zero, 384
005c24  1b441100  srli r8, r2, 1
005c28  2b310200  lui r2, 35
005c2c  9f880800  addli r17, r17, 0
005c30  9f8b0b00  addli r23, r23, 0
005c34  1f0e0e04  addli r28, r28, 512
005c38  8b901120  mul.s r1, r3, r1
005c3c  1f010100  addli r2, r2, 0
005c40  67041fd6  storeli.w r1, -5312(r30)
005c44  9bb02000  slli r1, r1, 2
005c48  8b952010  add.s r11, r1, r2
005c4c  2b510200  lui r2, 37
005c50  1f010100  addli r2, r2, 0
005c54  0b962010  add.s r12, r1, r2
005c58  abf0ffff  lui r1, 1048575
005c5c  1f018fd5  addli r2, r30, -5440
005c60  9b9000f8  ori r1, r1, 3968
005c64  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005c68  63411f00  loadli.w r2,  12(r30)
005c6c  67081fd4  storeli.w r1, -5504(r30)
005c70  abf00000  lui r1, 15
005c74  1b9cf0ff  ori r24, r1, 4095
005c78  5b040000  j 32
005c7c  00a00300  mfence { lm, sm, gm }
005c80  80210c04  csr_set csr3, r24
005c84  00d00100  sync_group
005c88  63411f00  loadli.w r2,  12(r30)
005c8c  0b138310  add.s r6, r6, r8
005c90  3f202300  blt.s r6, r2, 8
005c94  dbfaf5ff  j -20524
005c98  8b109310  add.s r1, r6, r9
005c9c  cb0f11fe  ble.s r2, r1, -32
005ca0  63011f00  loadli.w r2,  8(r30)
005ca4  9f210000  addli r3, zero, 2
005ca8  1f027fd6  addli r4, r30, -5320
005cac  8b902010  add.s r1, r1, r2
005cb0  63018fd6  loadli.w r2,  -5312(r30)
005cb4  9bb0b000  slli r1, r1, 11
005cb8  97902000  or r1, r1, r2
005cbc  b3900028  sext_int2long r[2:3], r1
005cc0  97b73002  sll.d r[16:17], r[2:3], r3
005cc4  6b510200  load.d r[3:4], 0(r4)
005cc8  ab0000f0  lui r1, 983040
005ccc  97101500  or r1, r10, r1
005cd0  0b21f110  add.ul r[3:4], r[3:4], r[16:17]
005cd4  ff20e100  l_gm2lm r1, r14, 0(r[3:4])
005cd8  00a00200  mfence { lm, gm }
005cdc  e3000fd7  loadli.w r1,  -5248(r30)
005ce0  3ba60000  bneq r1, zero, 392
005ce4  9f008fd5  addli r1, r30, -5440
005ce8  e3010fd5  loadli.w r3,  -5504(r30)
005cec  1f010000  addli r2, zero, 0
005cf0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
005cf4  92303002  vadd.s.mz vr1{mr1}, zero, vr3
005cf8  12313002  vadd.s.mz vr2{mr1}, zero, vr3
005cfc  12323002  vadd.s.mz vr4{mr1}, zero, vr3
005d00  8b161111  add.s r13, r2, r17
005d04  8b102710  add.s r1, r14, r2
005d08  9f810101  addli r3, r3, 128
005d0c  1f010104  addli r2, r2, 512
005d10  1f820601  addli r4, r13, 128
005d14  4a900602  vloads_mask16.mz vr0{mr1}, 0(r13)
005d18  9f838600  addli r7, r13, 64
005d1c  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
005d20  9f898001  addli r19, r1, 192
005d24  ca120202  vloads_mask16.mz vr5{mr1}, 0(r4)
005d28  1f828601  addli r4, r13, 192
005d2c  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
005d30  9f838000  addli r7, r1, 64
005d34  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
005d38  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
005d3c  1f820001  addli r4, r1, 128
005d40  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
005d44  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
005d48  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005d4c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
005d50  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005d54  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005d58  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005d5c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
005d60  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
005d64  1f820602  addli r4, r13, 256
005d68  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005d6c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
005d70  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
005d74  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
005d78  9f830003  addli r7, r1, 384
005d7c  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
005d80  1f828602  addli r4, r13, 320
005d84  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
005d88  9f890002  addli r19, r1, 256
005d8c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005d90  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
005d94  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005d98  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
005d9c  1f820603  addli r4, r13, 384
005da0  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
005da4  9f868603  addli r13, r13, 448
005da8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005dac  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
005db0  1f828002  addli r4, r1, 320
005db4  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
005db8  9f808003  addli r1, r1, 448
005dbc  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
005dc0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005dc4  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
005dc8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005dcc  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005dd0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005dd4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005dd8  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
005ddc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005de0  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
005de4  13822105  setlt.u r4, r3, r18
005de8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005dec  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005df0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005df4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005df8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005dfc  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
005e00  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
005e04  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005e08  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005e0c  bb5b02fe  bneq r4, zero, -268
005e10  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005e14  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005e18  9f000002  addli r1, zero, 256
005e1c  6af100c0  vsrl.p vr2, r1, vr0
005e20  eaf110c0  vsrl.p vr3, r1, vr1
005e24  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005e28  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005e2c  6a710ac0  vsrl.p vr2, r20, vr0
005e30  ea711ac0  vsrl.p vr3, r20, vr1
005e34  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005e38  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005e3c  6af10ac0  vsrl.p vr2, r21, vr0
005e40  eaf11ac0  vsrl.p vr3, r21, vr1
005e44  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005e48  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005e4c  6a710bc0  vsrl.p vr2, r22, vr0
005e50  ea711bc0  vsrl.p vr3, r22, vr1
005e54  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005e58  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005e5c  fa130040  vextracti.f r7, 0(vr0)
005e60  fa900040  vextracti.f r1, 0(vr1)
005e64  5b630000  j 792
005e68  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005e6c  abf0ffff  lui r1, 1048575
005e70  1f010000  addli r2, zero, 0
005e74  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005e78  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005e7c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005e80  9b9100f8  ori r3, r1, 3968
005e84  8b902810  add.s r1, r17, r2
005e88  8b162710  add.s r13, r14, r2
005e8c  9f810101  addli r3, r3, 128
005e90  1f010104  addli r2, r2, 512
005e94  1f8d0031  addli r26, r1, 6272
005e98  9f830030  addli r7, r1, 6144
005e9c  1f828031  addli r4, r1, 6336
005ea0  9f8c0618  addli r25, r13, 3072
005ea4  ca130d02  vloads_mask16.mz vr7{mr1}, 0(r26)
005ea8  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
005eac  9f838030  addli r7, r1, 6208
005eb0  ca140202  vloads_mask16.mz vr9{mr1}, 0(r4)
005eb4  1f828618  addli r4, r13, 3136
005eb8  1f8d8619  addli r26, r13, 3264
005ebc  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
005ec0  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
005ec4  9f830619  addli r7, r13, 3200
005ec8  42100d02  vload_mask16.mz vr0{mr1}, 0(r26)
005ecc  c2150202  vload_mask16.mz vr11{mr1}, 0(r4)
005ed0  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
005ed4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005ed8  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
005edc  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
005ee0  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
005ee4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005ee8  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
005eec  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
005ef0  9f830032  addli r7, r1, 6400
005ef4  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
005ef8  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
005efc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005f00  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
005f04  9f8c061a  addli r25, r13, 3328
005f08  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
005f0c  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
005f10  1f82861b  addli r4, r13, 3520
005f14  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
005f18  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
005f1c  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
005f20  9f838032  addli r7, r1, 6464
005f24  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005f28  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005f2c  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
005f30  9f830033  addli r7, r1, 6528
005f34  9f808033  addli r1, r1, 6592
005f38  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
005f3c  9f83861a  addli r7, r13, 3392
005f40  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
005f44  9f80061b  addli r1, r13, 3456
005f48  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
005f4c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005f50  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
005f54  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005f58  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
005f5c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005f60  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005f64  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
005f68  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005f6c  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
005f70  9383b105  setlt.u r7, r3, r27
005f74  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005f78  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005f7c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005f80  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005f84  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005f88  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005f8c  46107202  vstore_mask16.mz vr7{mr1}, 0(r4)
005f90  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005f94  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005f98  bbbb03fe  bneq r7, zero, -276
005f9c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005fa0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005fa4  9f000002  addli r1, zero, 256
005fa8  9f060000  addli r13, zero, 0
005fac  eaf110c0  vsrl.p vr3, r1, vr1
005fb0  6af100c0  vsrl.p vr2, r1, vr0
005fb4  abf0ffff  lui r1, 1048575
005fb8  1b9d00f8  ori r26, r1, 3968
005fbc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005fc0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005fc4  ea711ac0  vsrl.p vr3, r20, vr1
005fc8  6a710ac0  vsrl.p vr2, r20, vr0
005fcc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005fd0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005fd4  eaf11ac0  vsrl.p vr3, r21, vr1
005fd8  6af10ac0  vsrl.p vr2, r21, vr0
005fdc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005fe0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005fe4  ea711bc0  vsrl.p vr3, r22, vr1
005fe8  6a710bc0  vsrl.p vr2, r22, vr0
005fec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005ff0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005ff4  fa910040  vextracti.f r3, 0(vr1)
005ff8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005ffc  7a110040  vextracti.f r2, 0(vr0)
006000  12311002  vadd.s.mz vr2{mr1}, zero, vr1
006004  12321002  vadd.s.mz vr4{mr1}, zero, vr1
006008  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00600c  8b9cd810  add.s r25, r17, r13
006010  8b10d710  add.s r1, r14, r13
006014  1f0d0d01  addli r26, r26, 128
006018  9f860604  addli r13, r13, 512
00601c  1f820c18  addli r4, r25, 3072
006020  9f830c19  addli r7, r25, 3200
006024  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
006028  9f898001  addli r19, r1, 192
00602c  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
006030  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
006034  1f828c18  addli r4, r25, 3136
006038  9f838c19  addli r7, r25, 3264
00603c  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
006040  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
006044  1f820001  addli r4, r1, 128
006048  ca930302  vloads_mask16.mz vr7{mr1}, 0(r7)
00604c  9f838000  addli r7, r1, 64
006050  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
006054  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
006058  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00605c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
006060  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
006064  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
006068  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
00606c  1f820c1a  addli r4, r25, 3328
006070  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
006074  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
006078  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00607c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
006080  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
006084  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
006088  1f828c1a  addli r4, r25, 3392
00608c  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
006090  9f890002  addli r19, r1, 256
006094  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
006098  9f830003  addli r7, r1, 384
00609c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0060a0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0060a4  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
0060a8  1f820c1b  addli r4, r25, 3456
0060ac  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
0060b0  9f8c8c1b  addli r25, r25, 3520
0060b4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0060b8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0060bc  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
0060c0  1f828002  addli r4, r1, 320
0060c4  4a950c02  vloads_mask16.mz vr10{mr1}, 0(r25)
0060c8  9f808003  addli r1, r1, 448
0060cc  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
0060d0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0060d4  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
0060d8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0060dc  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0060e0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0060e4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0060e8  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
0060ec  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0060f0  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
0060f4  13022d05  setlt.u r4, r26, r18
0060f8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0060fc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
006100  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
006104  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
006108  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00610c  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
006110  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
006114  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
006118  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00611c  bb4b02fe  bneq r4, zero, -272
006120  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
006124  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006128  9f000002  addli r1, zero, 256
00612c  6af100c0  vsrl.p vr2, r1, vr0
006130  eaf110c0  vsrl.p vr3, r1, vr1
006134  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006138  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00613c  6a710ac0  vsrl.p vr2, r20, vr0
006140  ea711ac0  vsrl.p vr3, r20, vr1
006144  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006148  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00614c  6af10ac0  vsrl.p vr2, r21, vr0
006150  eaf11ac0  vsrl.p vr3, r21, vr1
006154  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006158  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00615c  6a710bc0  vsrl.p vr2, r22, vr0
006160  ea711bc0  vsrl.p vr3, r22, vr1
006164  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006168  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00616c  fa100040  vextracti.f r1, 0(vr0)
006170  7a920040  vextracti.f r4, 0(vr1)
006174  8b631110  add.f.rn r7, r2, r1
006178  8be04110  add.f.rn r1, r3, r4
00617c  8b018330  div.u r3, r6, r8
006180  00320002  core_id r4
006184  1f010000  addli r2, zero, 0
006188  1f0d0000  addli r26, zero, 0
00618c  9bb16100  slli r3, r3, 6
006190  9b810104  andi r3, r3, 64
006194  97914100  or r3, r3, r4
006198  1bb22100  slli r4, r3, 2
00619c  9b81e107  andi r3, r3, 126
0061a0  8b167211  add.s r13, r4, r23
0061a4  9bb12100  slli r3, r3, 2
0061a8  73e07600  stores.w r7, 0(r13)
0061ac  8b13c211  add.s r7, r4, r28
0061b0  1b124200  ori r4, r4, 4
0061b4  73e01300  stores.w r1, 0(r7)
0061b8  8b107211  add.s r1, r4, r23
0061bc  8b937111  add.s r7, r3, r23
0061c0  0b12c211  add.s r4, r4, r28
0061c4  8b91c111  add.s r3, r3, r28
0061c8  00a00300  mfence { lm, sm, gm }
0061cc  80210c04  csr_set csr3, r24
0061d0  00d00100  sync_group
0061d4  efc00000  loads.w r1, 0(r1)
0061d8  efc30300  loads.w r7, 0(r7)
0061dc  6f420200  loads.w r4, 0(r4)
0061e0  efc10100  loads.w r3, 0(r3)
0061e4  8be07010  add.f.rn r1, r1, r7
0061e8  8b613210  add.f.rn r3, r4, r3
0061ec  2b02003a  lui r4, 237568
0061f0  8be04020  mul.f.rn r1, r1, r4
0061f4  8be14120  mul.f.rn r3, r3, r4
0061f8  0be21020  mul.f.rn r4, r1, r1
0061fc  8be60058  neg.f r13, r1
006200  8be14118  sub.f.rn r3, r3, r4
006204  63023f00  loadli.w r4,  24(r30)
006208  8be14110  add.f.rn r3, r3, r4
00620c  2b02803f  lui r4, 260096
006210  8f810108  sqrt.f.rn r3, r3
006214  8f013218  div.f.rn r3, r4, r3
006218  8b902510  add.s r1, r11, r2
00621c  8b1c2710  add.s r25, r14, r2
006220  8b132610  add.s r7, r12, r2
006224  9f898000  addli r19, r1, 64
006228  1f828c00  addli r4, r25, 64
00622c  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
006230  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
006234  4a920302  vloads_mask16.mz vr4{mr1}, 0(r7)
006238  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
00623c  9f898300  addli r19, r7, 64
006240  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
006244  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
006248  9f094d00  addli r19, r26, 32
00624c  12900602  vadd.f.mz.rn vr0{mr1}, r13, vr0
006250  93893207  setle.u r19, r5, r19
006254  92901602  vadd.f.mz.rn vr1{mr1}, r13, vr1
006258  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
00625c  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
006260  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
006264  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
006268  46904c02  vstore_mask16.mz vr4{mr1}, 0(r25)
00626c  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
006270  bb910900  bneq r19, zero, 100
006274  1f820c01  addli r4, r25, 128
006278  9f898c01  addli r19, r25, 192
00627c  9f8c0001  addli r25, r1, 128
006280  9f808001  addli r1, r1, 192
006284  1f0d8d00  addli r26, r26, 64
006288  1f010102  addli r2, r2, 256
00628c  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
006290  9f8c0301  addli r25, r7, 128
006294  9f838301  addli r7, r7, 192
006298  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
00629c  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
0062a0  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
0062a4  93005d04  setlt.u r1, r26, r5
0062a8  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
0062ac  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
0062b0  12900602  vadd.f.mz.rn vr0{mr1}, r13, vr0
0062b4  92901602  vadd.f.mz.rn vr1{mr1}, r13, vr1
0062b8  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
0062bc  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
0062c0  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
0062c4  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0062c8  46103202  vstore_mask16.mz vr3{mr1}, 0(r4)
0062cc  46905902  vstore_mask16.mz vr5{mr1}, 0(r19)
0062d0  3bad00fe  bneq r1, zero, -184
0062d4  6b510f00  load.d r[3:4], 0(r30)
0062d8  ab0000f0  lui r1, 983040
0062dc  00a00000  mfence { lm }
0062e0  97101500  or r1, r10, r1
0062e4  0b21f110  add.ul r[3:4], r[3:4], r[16:17]
0062e8  ff30e100  s_lm2gm r1, r14, 0(r[3:4])
0062ec  00a00200  mfence { lm, gm }
0062f0  5b33ffff  j -1640
0062f4  63012f00  loadli.w r2,  16(r30)
0062f8  ab0100f0  lui r3, 983040
0062fc  1b312100  slli r2, r2, 2
006300  17113100  or r2, r2, r3
006304  ab910200  lui r3, 41
006308  9f810108  addli r3, r3, 1024
00630c  7f013400  l_gm2sm r2, r3, 0(r[9:10])
006310  2bf10000  lui r2, 15
006314  e3411f00  loadli.w r3,  12(r30)
006318  00200300  mfence { sm, gm }
00631c  1b11f1ff  ori r2, r2, 4095
006320  80210104  csr_set csr3, r2
006324  00d00100  sync_group
006328  4bdf1100  ble.s r3, r1, 980
00632c  e3012f00  loadli.w r3,  16(r30)
006330  e3422f00  loadli.w r5,  20(r30)
006334  ab780200  lui r17, 39
006338  2b890200  lui r18, 40
00633c  ab990200  lui r19, 41
006340  9f038fd7  addli r7, r30, -5184
006344  1f140000  addli r8, zero, 1
006348  1f050002  addli r10, zero, 256
00634c  1f060001  addli r12, zero, 128
006350  9f068000  addli r13, zero, 64
006354  1f084000  addli r16, zero, 32
006358  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00635c  9f880808  addli r17, r17, 1024
006360  1f090908  addli r18, r18, 1024
006364  9f890908  addli r19, r19, 1024
006368  0b925110  add.s r4, r3, r5
00636c  9bb52100  slli r11, r3, 2
006370  33810108  fix2float.rn r2, r3
006374  9f71f2ff  addli r3, r4, -1
006378  1bb22200  slli r4, r5, 2
00637c  67082fd4  storeli.w r2, -5504(r30)
006380  1f010fd7  addli r2, r30, -5248
006384  670cbfd4  storeli.w r11, -5440(r30)
006388  8b925130  div.s r5, r3, r5
00638c  abf1ffff  lui r3, 1048575
006390  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
006394  9b94f1ff  ori r9, r3, 4095
006398  5b080000  j 64
00639c  1f018fd6  addli r2, r30, -5312
0063a0  00a00000  mfence { lm }
0063a4  6b5a0f00  load.d r[21:22], 0(r30)
0063a8  ab0100f0  lui r3, 983040
0063ac  00530102  load_param_i r6, 2
0063b0  e3058fd5  loadli.w r11,  -5440(r30)
0063b4  6b5b0100  load.d r[23:24], 0(r2)
0063b8  8b101310  add.s r1, r6, r1
0063bc  97913500  or r3, r11, r3
0063c0  0b2a6a11  add.ul r[21:22], r[21:22], r[23:24]
0063c4  ff317a00  s_lm2gm r3, r7, 0(r[21:22])
0063c8  00a00200  mfence { lm, gm }
0063cc  63411f00  loadli.w r2,  12(r30)
0063d0  3fa02000  blt.s r1, r2, 8
0063d4  5b650000  j 808
0063d8  63011f00  loadli.w r2,  8(r30)
0063dc  8b912010  add.s r3, r1, r2
0063e0  1f210000  addli r2, zero, 2
0063e4  8b91f120  mul.s r3, r3, r15
0063e8  339a0128  sext_int2long r[21:22], r3
0063ec  ab0100f0  lui r3, 983040
0063f0  173c2a02  sll.d r[25:26], r[21:22], r2
0063f4  1f017fd6  addli r2, r30, -5320
0063f8  97913500  or r3, r11, r3
0063fc  6b5a0100  load.d r[21:22], 0(r2)
006400  1f018fd6  addli r2, r30, -5312
006404  0b2b8a11  add.ul r[23:24], r[21:22], r[25:26]
006408  ff217b00  l_gm2lm r3, r7, 0(r[23:24])
00640c  00a00200  mfence { lm, gm }
006410  73308101  store.d r[25:26], 0(r2)
006414  bf978200  blt.s r5, r8, 484
006418  9f0b0000  addli r23, zero, 0
00641c  1f0b0000  addli r22, zero, 0
006420  1f0c0000  addli r24, zero, 0
006424  db0c0000  j 100
006428  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
00642c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006430  1f1c0c00  addli r24, r24, 1
006434  6a7105c0  vsrl.p vr2, r10, vr0
006438  ea7115c0  vsrl.p vr3, r10, vr1
00643c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006440  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006444  6a7106c0  vsrl.p vr2, r12, vr0
006448  ea7116c0  vsrl.p vr3, r12, vr1
00644c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006450  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006454  6af106c0  vsrl.p vr2, r13, vr0
006458  eaf116c0  vsrl.p vr3, r13, vr1
00645c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006460  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006464  6a7108c0  vsrl.p vr2, r16, vr0
006468  ea7118c0  vsrl.p vr3, r16, vr1
00646c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006470  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006474  7a110040  vextracti.f r2, 0(vr0)
006478  fa910040  vextracti.f r3, 0(vr1)
00647c  8beb2b10  add.f.rn r23, r23, r2
006480  0b6b3b10  add.f.rn r22, r22, r3
006484  b7755c00  beq r24, r5, 380
006488  9f010c00  addli r3, r24, 0
00648c  3730a700  beq r14, r10, 12
006490  97219c00  xor r3, r24, r9
006494  8b913210  add.s r3, r5, r3
006498  1f010fd7  addli r2, r30, -5248
00649c  0b93e120  mul.s r6, r3, r14
0064a0  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0064a4  0b936718  sub.s r6, r15, r6
0064a8  8b1ce340  min.s r25, r6, r14
0064ac  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0064b0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0064b4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0064b8  bfcd8cfe  blt.s r25, r8, -144
0064bc  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0064c0  1f0d0000  addli r26, zero, 0
0064c4  8b1d3220  mul.s r27, r4, r3
0064c8  1f0e8fd7  addli r28, r30, -5184
0064cc  9f850800  addli r11, r17, 0
0064d0  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0064d4  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0064d8  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0064dc  8b91b511  add.s r3, r11, r27
0064e0  0b13be11  add.s r6, r28, r27
0064e4  1f818100  addli r2, r3, 64
0064e8  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
0064ec  1f8a8101  addli r20, r3, 192
0064f0  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
0064f4  9f0a8301  addli r21, r6, 192
0064f8  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
0064fc  1f810101  addli r2, r3, 128
006500  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
006504  1f0a0301  addli r20, r6, 128
006508  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
00650c  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
006510  c2150a02  vload_mask16.mz vr11{mr1}, 0(r20)
006514  1f018300  addli r2, r6, 64
006518  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
00651c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
006520  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
006524  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
006528  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
00652c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006530  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006534  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
006538  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
00653c  1f018d00  addli r2, r26, 64
006540  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
006544  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
006548  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00654c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
006550  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
006554  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
006558  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
00655c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
006560  4bab2cfe  ble.s r25, r2, -312
006564  1f8a0102  addli r20, r3, 256
006568  9f8a8102  addli r21, r3, 320
00656c  1f010302  addli r2, r6, 256
006570  1f0d0d01  addli r26, r26, 128
006574  9f850504  addli r11, r11, 512
006578  1f0e0e04  addli r28, r28, 512
00657c  4a100a02  vloads_mask16.mz vr0{mr1}, 0(r20)
006580  1f8a0103  addli r20, r3, 384
006584  9f818103  addli r3, r3, 448
006588  ca920a02  vloads_mask16.mz vr5{mr1}, 0(r21)
00658c  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
006590  ca130a02  vloads_mask16.mz vr7{mr1}, 0(r20)
006594  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
006598  9f010303  addli r3, r6, 384
00659c  1f0a8302  addli r20, r6, 320
0065a0  1f038303  addli r6, r6, 448
0065a4  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
0065a8  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
0065ac  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0065b0  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
0065b4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0065b8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0065bc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0065c0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0065c4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0065c8  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
0065cc  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0065d0  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0065d4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0065d8  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
0065dc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0065e0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0065e4  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0065e8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0065ec  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0065f0  bf3b9dff  blt.s r26, r25, -276
0065f4  dbc6ffff  j -460
0065f8  1f0b0000  addli r22, zero, 0
0065fc  9f0b0000  addli r23, zero, 0
006600  00a00000  mfence { lm }
006604  3fe687fe  blt.s r15, r8, -616
006608  63010fd5  loadli.w r2,  -5504(r30)
00660c  9f050000  addli r11, zero, 0
006610  1f0c0000  addli r24, zero, 0
006614  8f812b18  div.f.rn r3, r23, r2
006618  0f032b18  div.f.rn r6, r22, r2
00661c  63013f00  loadli.w r2,  24(r30)
006620  0beb3120  mul.f.rn r22, r3, r3
006624  8beb0158  neg.f r23, r3
006628  0b636319  sub.f.rn r6, r6, r22
00662c  0b632310  add.f.rn r6, r6, r2
006630  2b01803f  lui r2, 260096
006634  0f030308  sqrt.f.rn r6, r6
006638  0f0b6118  div.f.rn r22, r2, r6
00663c  0b932511  add.s r6, r11, r18
006640  8b91b310  add.s r3, r7, r11
006644  9f0c8300  addli r25, r6, 64
006648  4a110302  vloads_mask16.mz vr2{mr1}, 0(r6)
00664c  0b933511  add.s r6, r11, r19
006650  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
006654  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
006658  9f8c8100  addli r25, r3, 64
00665c  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
006660  1f038300  addli r6, r6, 64
006664  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
006668  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
00666c  1f034c00  addli r6, r24, 32
006670  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
006674  92925b02  vadd.f.mz.rn vr5{mr1}, r23, vr5
006678  8a101b02  vmul.f.mz.rn vr1{mr1}, r22, vr1
00667c  8a125b02  vmul.f.mz.rn vr5{mr1}, r22, vr5
006680  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
006684  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
006688  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
00668c  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
006690  4bb467fe  ble.s r15, r6, -756
006694  0b13b910  add.s r6, r18, r11
006698  8b9cb910  add.s r25, r19, r11
00669c  1f0c8c00  addli r24, r24, 64
0066a0  9f850502  addli r11, r11, 256
0066a4  1f0d0301  addli r26, r6, 128
0066a8  9f8d0c01  addli r27, r25, 128
0066ac  1f038301  addli r6, r6, 192
0066b0  9f8c8c01  addli r25, r25, 192
0066b4  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
0066b8  1f8d0101  addli r26, r3, 128
0066bc  9f818101  addli r3, r3, 192
0066c0  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
0066c4  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
0066c8  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
0066cc  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
0066d0  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0066d4  92913b02  vadd.f.mz.rn vr3{mr1}, r23, vr3
0066d8  12924b02  vadd.f.mz.rn vr4{mr1}, r23, vr4
0066dc  8a113b02  vmul.f.mz.rn vr3{mr1}, r22, vr3
0066e0  0a124b02  vmul.f.mz.rn vr4{mr1}, r22, vr4
0066e4  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
0066e8  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
0066ec  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
0066f0  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
0066f4  3f2dfcfe  blt.s r24, r15, -184
0066f8  db94ffff  j -860
0066fc  9f0e8fd3  addli sp, r30, -5696
006700  e38f2e2c  loadli.w r31,  5648(sp)
006704  63cf2e2c  loadli.w r30,  5652(sp)
006708  638e3e2c  loadli.w r28,  5656(sp)
00670c  e3cd3e2c  loadli.w r27,  5660(sp)
006710  638d4e2c  loadli.w r26,  5664(sp)
006714  e3cc4e2c  loadli.w r25,  5668(sp)
006718  638c5e2c  loadli.w r24,  5672(sp)
00671c  e3cb5e2c  loadli.w r23,  5676(sp)
006720  638b6e2c  loadli.w r22,  5680(sp)
006724  e3ca6e2c  loadli.w r21,  5684(sp)
006728  638a7e2c  loadli.w r20,  5688(sp)
00672c  e3c97e2c  loadli.w r19,  5692(sp)
006730  9f8e8e2c  addli sp, sp, 5696
006734  5f800f00  jr r31, 0
006738  00100000  exit
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
