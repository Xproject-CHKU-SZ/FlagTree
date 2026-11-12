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
000108  1f3c0000  addli r24, zero, 3
00010c  9f0c0006  addli r25, zero, 768
000110  1f0d0008  addli r26, zero, 1024
000114  9f0d0001  addli r27, zero, 128
000118  1b9ef026  ori r28, r1, 623
00011c  8b904a31  div.s r1, r21, r20
000120  6b510f02  load.d r[3:4], 32(r30)
000124  6b528f00  load.d r[5:6], 8(r30)
000128  6b530f01  load.d r[7:8], 16(r30)
00012c  6b548f01  load.d r[9:10], 24(r30)
000130  67828e01  storeli.w r24, 32(sp)
000134  e7c10e00  storeli.w zero, 28(sp)
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
0001bc  9f057fd6  addli r11, r30, -5320
0001c0  73b02500  store.d r[3:4], 0(r11)
0001c4  3f511500  blt.s r10, r1, 84
0001c8  1f110000  addli r2, zero, 1
0001cc  b7db2004  beq r1, r2, 2804
0001d0  1f210000  addli r2, zero, 2
0001d4  bb9a2004  bneq r1, r2, 2724
0001d8  e3403f00  loadli.w r1,  28(r30)
0001dc  b7bf0012  beq r1, zero, 10220
0001e0  80300002  core_id r1
0001e4  1f210000  addli r2, zero, 2
0001e8  b7ae2026  beq r1, r2, 20392
0001ec  1f110000  addli r2, zero, 1
0001f0  b78d2026  beq r1, r2, 20320
0001f4  bbee0026  bneq r1, zero, 20408
0001f8  63012f00  loadli.w r2,  16(r30)
0001fc  ab0100f0  lui r3, 983040
000200  1b311100  slli r2, r2, 1
000204  17113100  or r2, r2, r3
000208  ab910100  lui r3, 25
00020c  9f810100  addli r3, r3, 0
000210  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000214  5bf30900  j 20376
000218  1f310000  addli r2, zero, 3
00021c  b79b2004  beq r1, r2, 2788
000220  1f410000  addli r2, zero, 4
000224  3bd92004  bneq r1, r2, 2644
000228  e3002f00  loadli.w r1,  16(r30)
00022c  1f010010  addli r2, zero, 2048
000230  3bb0200a  bneq r1, r2, 5132
000234  e3403f00  loadli.w r1,  28(r30)
000238  b7c1001a  beq r1, zero, 13424
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
0003c8  bfcc6130  blt.s r3, r6, 25392
0003cc  e3018fd5  loadli.w r3,  -5440(r30)
0003d0  1f0a8fd7  addli r20, r30, -5184
0003d4  1bb71200  slli r14, r5, 1
0003d8  9f030000  addli r7, zero, 0
0003dc  9f7c7000  addli r25, zero, 63
0003e0  9f0d0005  addli r27, zero, 640
0003e4  ab06803f  lui r13, 260096
0003e8  1f062000  addli r12, zero, 16
0003ec  1f3b0000  addli r22, zero, 3
0003f0  1f5e1000  addli r28, zero, 13
0003f4  2bec0700  lui r24, 126
0003f8  1f2d1000  addli r26, zero, 10
0003fc  0b912120  mul.s r2, r3, r2
000400  9bc11000  srli r3, r1, 1
000404  80300002  core_id r1
000408  9bc51000  srli r11, r1, 1
00040c  9b302100  slli r1, r2, 2
000410  67042fd4  storeli.w r2, -5568(r30)
000414  1f814200  addli r2, r5, 32
000418  0b994010  add.s r18, r1, r4
00041c  8b99a010  add.s r19, r1, r10
000420  9bb02200  slli r1, r5, 2
000424  674f2fd2  storeli.w r2, -5644(r30)
000428  0b114711  add.s r2, r14, r20
00042c  2be27f00  lui r4, 2046
000430  8b904011  add.s r1, r1, r20
000434  9f8080ff  addli r1, r1, -64
000438  670f1fd2  storeli.w r1, -5648(r30)
00043c  9f0081ff  addli r1, r2, -64
000440  2bf100fc  lui r2, 1032207
000444  e74e1fd2  storeli.w r1, -5652(r30)
000448  abf0ffff  lui r1, 1048575
00044c  1b1401c0  ori r8, r2, 3072
000450  00a00000  mfence { lm }
000454  67003fd4  storeli.w r3, -5632(r30)
000458  e74fbfd2  storeli.w r11, -5636(r30)
00045c  e70fefd2  storeli.w r14, -5640(r30)
000460  9b9000f8  ori r1, r1, 3968
000464  674e1fd2  storeli.w r1, -5660(r30)
000468  abf00000  lui r1, 15
00046c  9b90f0ff  ori r1, r1, 4095
000470  67081fd6  storeli.w r1, -5248(r30)
000474  ab700000  lui r1, 7
000478  9b9af0ff  ori r21, r1, 4095
00047c  ab00ff03  lui r1, 16368
000480  9b9bf03f  ori r23, r1, 1023
000484  9f000fd5  addli r1, r30, -5504
000488  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
00048c  5b040000  j 32
000490  00a00300  mfence { lm, sm, gm }
000494  e3000fd7  loadli.w r1,  -5248(r30)
000498  80a10004  csr_set csr3, r1
00049c  00d00100  sync_group
0004a0  8b933310  add.s r7, r7, r3
0004a4  3fa09300  blt.s r7, r9, 8
0004a8  dbf70000  j 1980
0004ac  8b90b310  add.s r1, r7, r11
0004b0  cb8f14fe  ble.s r9, r1, -32
0004b4  63011f00  loadli.w r2,  8(r30)
0004b8  8b902010  add.s r1, r1, r2
0004bc  0b813330  div.u r2, r7, r3
0004c0  e3018fd4  loadli.w r3,  -5568(r30)
0004c4  9bb0b000  slli r1, r1, 11
0004c8  97903000  or r1, r1, r3
0004cc  9f017fd6  addli r3, r30, -5320
0004d0  b3940028  sext_int2long r[10:11], r1
0004d4  ab0000f0  lui r1, 983040
0004d8  1b316100  slli r2, r2, 6
0004dc  17b86402  sll.d r[17:18], r[10:11], r6
0004e0  ebd40100  load.d r[10:11], 0(r3)
0004e4  9f018fd6  addli r3, r30, -5312
0004e8  97101700  or r1, r14, r1
0004ec  1b010104  andi r2, r2, 64
0004f0  73b00101  store.d r[17:18], 0(r3)
0004f4  8ba40411  add.ul r[10:11], r[10:11], r[17:18]
0004f8  ffa04401  l_gm2lm r1, r20, 0(r[10:11])
0004fc  80300002  core_id r1
000500  00a00200  mfence { lm, gm }
000504  97181100  or r17, r2, r1
000508  6341dfd3  loadli.w r2,  -5652(r30)
00050c  e301efd3  loadli.w r3,  -5648(r30)
000510  e344efd3  loadli.w r9,  -5644(r30)
000514  c2000102  vload.mz vr1{mr1}, 0(r2)
000518  9f84c4ff  addli r9, r9, -32
00051c  9f8581ff  addli r11, r3, -64
000520  1f0181ff  addli r2, r2, -64
000524  13859c04  setlt.u r10, r25, r9
000528  66c111a0  vmerge_h.hf vr2, vr3, vr1
00052c  e6c01180  vmerge_l.hf vr1, vr3, vr1
000530  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
000534  9f8101ff  addli r3, r3, -128
000538  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
00053c  3b6f05fe  bneq r10, zero, -40
000540  00a00000  mfence { lm }
000544  1f070003  addli r14, zero, 384
000548  e3008fd5  loadli.w r1,  -5440(r30)
00054c  3bb60000  bneq r1, zero, 396
000550  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000554  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000558  12323002  vadd.s.mz vr4{mr1}, zero, vr3
00055c  e341cfd3  loadli.w r3,  -5660(r30)
000560  1f010000  addli r2, zero, 0
000564  0b15f110  add.s r10, r2, r15
000568  8b142a10  add.s r9, r20, r2
00056c  9f810101  addli r3, r3, 128
000570  1f010104  addli r2, r2, 512
000574  9f000501  addli r1, r10, 128
000578  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
00057c  9f058500  addli r11, r10, 64
000580  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
000584  1f888401  addli r16, r9, 192
000588  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
00058c  9f008501  addli r1, r10, 192
000590  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
000594  9f858400  addli r11, r9, 64
000598  c2150802  vload_mask16.mz vr11{mr1}, 0(r16)
00059c  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
0005a0  9f800401  addli r1, r9, 128
0005a4  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
0005a8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0005ac  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0005b0  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0005b4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0005b8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0005bc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0005c0  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
0005c4  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0005c8  9f000502  addli r1, r10, 256
0005cc  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0005d0  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0005d4  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0005d8  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
0005dc  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0005e0  9f008502  addli r1, r10, 320
0005e4  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0005e8  1f880402  addli r16, r9, 256
0005ec  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0005f0  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0005f4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0005f8  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0005fc  9f000503  addli r1, r10, 384
000600  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000604  1f058503  addli r10, r10, 448
000608  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00060c  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
000610  9f808402  addli r1, r9, 320
000614  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
000618  1f850403  addli r10, r9, 384
00061c  9f848403  addli r9, r9, 448
000620  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000624  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000628  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
00062c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000630  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
000634  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000638  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00063c  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
000640  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000644  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000648  9380b105  setlt.u r1, r3, r27
00064c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000650  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000654  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000658  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00065c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000660  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
000664  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000668  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00066c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000670  bbdb00fe  bneq r1, zero, -268
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
0006cc  fa140040  vextracti.f r9, 0(vr0)
0006d0  fa910040  vextracti.f r3, 0(vr1)
0006d4  5b670000  j 824
0006d8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0006dc  abf0ffff  lui r1, 1048575
0006e0  1f010000  addli r2, zero, 0
0006e4  e70e1fd3  storeli.w r17, -5656(r30)
0006e8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0006ec  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0006f0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0006f4  9b9100f8  ori r3, r1, 3968
0006f8  8b942710  add.s r9, r15, r2
0006fc  0b152a10  add.s r10, r20, r2
000700  9f810101  addli r3, r3, 128
000704  1f010104  addli r2, r2, 512
000708  9f880431  addli r17, r9, 6272
00070c  9f850430  addli r11, r9, 6144
000710  9f808431  addli r1, r9, 6336
000714  1f080518  addli r16, r10, 3072
000718  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
00071c  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
000720  9f858430  addli r11, r9, 6208
000724  ca940002  vloads_mask16.mz vr9{mr1}, 0(r1)
000728  9f008518  addli r1, r10, 3136
00072c  9f088519  addli r17, r10, 3264
000730  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
000734  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
000738  9f050519  addli r11, r10, 3200
00073c  42900802  vload_mask16.mz vr0{mr1}, 0(r17)
000740  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
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
000778  1f08051a  addli r16, r10, 3328
00077c  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000780  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000784  9f00051b  addli r1, r10, 3456
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
0007b0  9f05851a  addli r11, r10, 3392
0007b4  4a950402  vloads_mask16.mz vr10{mr1}, 0(r9)
0007b8  9f04851b  addli r9, r10, 3520
0007bc  1385e104  setlt.u r10, r3, r14
0007c0  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
0007c4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0007c8  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0007cc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0007d0  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
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
0007fc  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000800  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000804  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000808  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00080c  bb3b05fe  bneq r10, zero, -276
000810  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000814  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000818  9f000002  addli r1, zero, 256
00081c  1f050000  addli r10, zero, 0
000820  eaf110c0  vsrl.p vr3, r1, vr1
000824  6af100c0  vsrl.p vr2, r1, vr0
000828  9f000001  addli r1, zero, 128
00082c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000830  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000834  eaf110c0  vsrl.p vr3, r1, vr1
000838  6af100c0  vsrl.p vr2, r1, vr0
00083c  9f008000  addli r1, zero, 64
000840  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000844  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000848  eaf110c0  vsrl.p vr3, r1, vr1
00084c  6af100c0  vsrl.p vr2, r1, vr0
000850  9f004000  addli r1, zero, 32
000854  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000858  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00085c  eaf110c0  vsrl.p vr3, r1, vr1
000860  6af100c0  vsrl.p vr2, r1, vr0
000864  abf0ffff  lui r1, 1048575
000868  9b9500f8  ori r11, r1, 3968
00086c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000870  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000874  fa910040  vextracti.f r3, 0(vr1)
000878  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00087c  7a170040  vextracti.f r14, 0(vr0)
000880  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000884  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000888  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00088c  0b98a710  add.s r16, r15, r10
000890  8b14aa10  add.s r9, r20, r10
000894  9f850501  addli r11, r11, 128
000898  1f050504  addli r10, r10, 512
00089c  9f000818  addli r1, r16, 3072
0008a0  9f080819  addli r17, r16, 3200
0008a4  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
0008a8  1f818401  addli r2, r9, 192
0008ac  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0008b0  ca920802  vloads_mask16.mz vr5{mr1}, 0(r17)
0008b4  9f008818  addli r1, r16, 3136
0008b8  9f088819  addli r17, r16, 3264
0008bc  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
0008c0  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0008c4  9f800401  addli r1, r9, 128
0008c8  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
0008cc  9f888400  addli r17, r9, 64
0008d0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0008d4  42950802  vload_mask16.mz vr10{mr1}, 0(r17)
0008d8  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0008dc  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0008e0  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0008e4  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0008e8  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0008ec  9f00081a  addli r1, r16, 3328
0008f0  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0008f4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0008f8  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0008fc  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000900  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
000904  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
000908  9f00881a  addli r1, r16, 3392
00090c  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
000910  1f810402  addli r2, r9, 256
000914  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
000918  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00091c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000920  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
000924  9f00081b  addli r1, r16, 3456
000928  c2130102  vload_mask16.mz vr7{mr1}, 0(r2)
00092c  1f08881b  addli r16, r16, 3520
000930  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000934  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000938  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
00093c  9f808402  addli r1, r9, 320
000940  4a150802  vloads_mask16.mz vr10{mr1}, 0(r16)
000944  1f880403  addli r16, r9, 384
000948  9f848403  addli r9, r9, 448
00094c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000950  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000954  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000958  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00095c  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
000960  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000964  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000968  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00096c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000970  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000974  9380b505  setlt.u r1, r11, r27
000978  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00097c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000980  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000984  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000988  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00098c  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
000990  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000994  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000998  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00099c  bbcb00fe  bneq r1, zero, -272
0009a0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0009a4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0009a8  9f000002  addli r1, zero, 256
0009ac  e308dfd3  loadli.w r17,  -5656(r30)
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
000a04  8b641710  add.f.rn r9, r14, r1
000a08  8be12110  add.f.rn r3, r3, r2
000a0c  2b650000  lui r10, 6
000a10  ab650000  lui r11, 6
000a14  9bb02800  slli r1, r17, 2
000a18  1f010000  addli r2, zero, 0
000a1c  1f050500  addli r10, r10, 0
000a20  9f850504  addli r11, r11, 512
000a24  1f070500  addli r14, r10, 0
000a28  1f880500  addli r16, r11, 0
000a2c  0b95e010  add.s r10, r1, r14
000a30  8b950011  add.s r11, r1, r16
000a34  9b904000  ori r1, r1, 4
000a38  73609500  stores.w r9, 0(r10)
000a3c  73e03500  stores.w r3, 0(r11)
000a40  8b94e010  add.s r9, r1, r14
000a44  8b900011  add.s r1, r1, r16
000a48  00a00300  mfence { lm, sm, gm }
000a4c  e3010fd7  loadli.w r3,  -5248(r30)
000a50  80a10104  csr_set csr3, r3
000a54  9b81e807  andi r3, r17, 126
000a58  00d00100  sync_group
000a5c  efc40400  loads.w r9, 0(r9)
000a60  efc00000  loads.w r1, 0(r1)
000a64  9bb12100  slli r3, r3, 2
000a68  0b95e110  add.s r10, r3, r14
000a6c  8b910111  add.s r3, r3, r16
000a70  6f450500  loads.w r10, 0(r10)
000a74  efc10100  loads.w r3, 0(r3)
000a78  8be4a410  add.f.rn r9, r9, r10
000a7c  2b05003a  lui r10, 237568
000a80  8be03010  add.f.rn r1, r1, r3
000a84  8be1a420  mul.f.rn r3, r9, r10
000a88  8be0a020  mul.f.rn r1, r1, r10
000a8c  1f050000  addli r10, zero, 0
000a90  8be43120  mul.f.rn r9, r3, r3
000a94  8be10158  neg.f r3, r3
000a98  8be09018  sub.f.rn r1, r1, r9
000a9c  e3043f00  loadli.w r9,  24(r30)
000aa0  8be09010  add.f.rn r1, r1, r9
000aa4  8f800008  sqrt.f.rn r1, r1
000aa8  8f801618  div.f.rn r1, r13, r1
000aac  8b142910  add.s r9, r18, r2
000ab0  8b152a10  add.s r11, r20, r2
000ab4  0b982910  add.s r16, r19, r2
000ab8  1f878400  addli r14, r9, 64
000abc  9f888500  addli r17, r11, 64
000ac0  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
000ac4  4a910402  vloads_mask16.mz vr2{mr1}, 0(r9)
000ac8  4a120802  vloads_mask16.mz vr4{mr1}, 0(r16)
000acc  ca110702  vloads_mask16.mz vr3{mr1}, 0(r14)
000ad0  1f078800  addli r14, r16, 64
000ad4  c2900802  vload_mask16.mz vr1{mr1}, 0(r17)
000ad8  ca120702  vloads_mask16.mz vr5{mr1}, 0(r14)
000adc  1f074500  addli r14, r10, 32
000ae0  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000ae4  1387e206  setle.u r14, r5, r14
000ae8  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000aec  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
000af0  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
000af4  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
000af8  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
000afc  46904502  vstore_mask16.mz vr4{mr1}, 0(r11)
000b00  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
000b04  bb110700  bneq r14, zero, 100
000b08  9f880401  addli r17, r9, 128
000b0c  1f870501  addli r14, r11, 128
000b10  9f858501  addli r11, r11, 192
000b14  9f848401  addli r9, r9, 192
000b18  1f058500  addli r10, r10, 64
000b1c  1f010102  addli r2, r2, 256
000b20  4a910802  vloads_mask16.mz vr2{mr1}, 0(r17)
000b24  9f080801  addli r17, r16, 128
000b28  1f088801  addli r16, r16, 192
000b2c  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
000b30  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
000b34  4a920402  vloads_mask16.mz vr4{mr1}, 0(r9)
000b38  93045504  setlt.u r9, r10, r5
000b3c  ca910802  vloads_mask16.mz vr3{mr1}, 0(r17)
000b40  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
000b44  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000b48  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000b4c  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
000b50  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
000b54  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
000b58  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
000b5c  46103702  vstore_mask16.mz vr3{mr1}, 0(r14)
000b60  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
000b64  3bad04fe  bneq r9, zero, -184
000b68  9f008fd7  addli r1, r30, -5184
000b6c  1f018fd7  addli r2, r30, -5184
000b70  9f010000  addli r3, zero, 0
000b74  00a00000  mfence { lm }
000b78  9f048100  addli r9, r2, 64
000b7c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
000b80  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000b84  9f814100  addli r3, r3, 32
000b88  1f010101  addli r2, r2, 128
000b8c  ea211622  vor.u.mz vr3{mr1}, r12, vr1
000b90  42910402  vload_mask16.mz vr2{mr1}, 0(r9)
000b94  93845104  setlt.u r9, r3, r5
000b98  6eb201c2  vsrl.s.mz vr4{mr1}, vr3, vr0
000b9c  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
000ba0  6a324302  vand.s.mz vr4{mr1}, r6, vr4
000ba4  ea313302  vand.s.mz vr3{mr1}, r6, vr3
000ba8  16304002  vadd.s.mz vr0{mr1}, vr0, vr4
000bac  6a221b22  vor.u.mz vr4{mr1}, r22, vr1
000bb0  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
000bb4  ea211e22  vor.u.mz vr3{mr1}, r28, vr1
000bb8  ea201d22  vor.u.mz vr1{mr1}, r26, vr1
000bbc  12b00a02  vadd.s.mz vr0{mr1}, r21, vr0
000bc0  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
000bc4  eeb201c2  vsrl.s.mz vr5{mr1}, vr3, vr0
000bc8  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
000bcc  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
000bd0  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
000bd4  6a325c02  vand.s.mz vr4{mr1}, r24, vr5
000bd8  6a300202  vand.s.mz vr0{mr1}, r4, vr0
000bdc  ea313c02  vand.s.mz vr3{mr1}, r24, vr3
000be0  6a312202  vand.s.mz vr2{mr1}, r4, vr2
000be4  6ab00622  vor.s.mz vr0{mr1}, r13, vr0
000be8  6ab24622  vor.s.mz vr4{mr1}, r13, vr4
000bec  eab13622  vor.s.mz vr3{mr1}, r13, vr3
000bf0  6ab12622  vor.s.mz vr2{mr1}, r13, vr2
000bf4  06100020  vfloat2fp16_l.rz vr0, vr0
000bf8  86d10120  vfloat2fp16_h.rz vr3, vr3
000bfc  06500120  vfloat2fp16_h.rz vr0, vr2
000c00  86110220  vfloat2fp16_l.rz vr3, vr4
000c04  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000c08  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
000c0c  ea301402  vand.s.mz vr1{mr1}, r8, vr1
000c10  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
000c14  46800002  vstore.mz vr0{mr1}, 0(r1)
000c18  9f808000  addli r1, r1, 64
000c1c  3bfd04fe  bneq r9, zero, -164
000c20  9f058fd6  addli r11, r30, -5312
000c24  6b510f00  load.d r[3:4], 0(r30)
000c28  6307ffd3  loadli.w r14,  -5640(r30)
000c2c  ab0000f0  lui r1, 983040
000c30  ebd40500  load.d r[10:11], 0(r11)
000c34  00a00000  mfence { lm }
000c38  97101700  or r1, r14, r1
000c3c  0b219110  add.ul r[3:4], r[3:4], r[10:11]
000c40  ff304101  s_lm2gm r1, r20, 0(r[3:4])
000c44  9f000fd5  addli r1, r30, -5504
000c48  00a00200  mfence { lm, gm }
000c4c  e3441f00  loadli.w r9,  12(r30)
000c50  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000c54  e3010fd4  loadli.w r3,  -5632(r30)
000c58  e345ffd3  loadli.w r11,  -5636(r30)
000c5c  8b933310  add.s r7, r7, r3
000c60  3fb193fc  blt.s r7, r9, -1972
000c64  abf00000  lui r1, 15
000c68  9b90f0ff  ori r1, r1, 4095
000c6c  80a10004  csr_set csr3, r1
000c70  00d00100  sync_group
000c74  db500b00  j 23172
000c78  e3403f00  loadli.w r1,  28(r30)
000c7c  37f9000a  beq r1, zero, 5724
000c80  e3002f00  loadli.w r1,  16(r30)
000c84  1f010010  addli r2, zero, 2048
000c88  3be92012  bneq r1, r2, 9816
000c8c  00350002  core_id r10
000c90  9f200000  addli r1, zero, 2
000c94  370c1526  beq r10, r1, 20224
000c98  9f100000  addli r1, zero, 1
000c9c  b77a1526  beq r10, r1, 20156
000ca0  3b3c0526  bneq r10, zero, 20236
000ca4  9f000040  addli r1, zero, 8192
000ca8  2b0100f0  lui r2, 983040
000cac  97902000  or r1, r1, r2
000cb0  2b110200  lui r2, 33
000cb4  1f010100  addli r2, r2, 0
000cb8  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000cbc  5bde0900  j 20208
000cc0  e3403f00  loadli.w r1,  28(r30)
000cc4  b79a0010  beq r1, zero, 8868
000cc8  80300002  core_id r1
000ccc  1f210000  addli r2, zero, 2
000cd0  b7ea2024  beq r1, r2, 19128
000cd4  1f110000  addli r2, zero, 1
000cd8  37e22022  beq r1, r2, 17560
000cdc  3bab0024  bneq r1, zero, 19144
000ce0  63012f00  loadli.w r2,  16(r30)
000ce4  ab0100f0  lui r3, 983040
000ce8  1b311100  slli r2, r2, 1
000cec  17113100  or r2, r2, r3
000cf0  abd10100  lui r3, 29
000cf4  9f810100  addli r3, r3, 0
000cf8  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000cfc  5b550900  j 19112
000d00  e3002f00  loadli.w r1,  16(r30)
000d04  1f010010  addli r2, zero, 2048
000d08  bb9f2006  bneq r1, r2, 4068
000d0c  e3403f00  loadli.w r1,  28(r30)
000d10  37cf001a  beq r1, zero, 14288
000d14  003d0002  core_id r26
000d18  abd70000  lui r15, 13
000d1c  00510102  load_param_i r2, 2
000d20  1f150000  addli r10, zero, 1
000d24  9f058fd7  addli r11, r30, -5184
000d28  1f068000  addli r12, zero, 64
000d2c  9f060010  addli r13, zero, 2048
000d30  9b305d00  slli r1, r26, 5
000d34  9b315100  slli r3, r2, 5
000d38  9f8707f0  addli r15, r15, -2048
000d3c  1f870000  addli r14, r1, 0
000d40  33080728  zext_int2long r[17:18], r14
000d44  2b0900f0  lui r18, 983040
000d48  1738a802  sll.d r[17:18], r[17:18], r10
000d4c  17192601  or r18, r12, r18
000d50  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000d54  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000d58  1b382700  slli r16, r14, 2
000d5c  0b97e110  add.s r14, r3, r14
000d60  00a00200  mfence { lm, gm }
000d64  42800502  vload.mz vr0{mr1}, 0(r11)
000d68  9308d704  setlt.u r17, r14, r13
000d6c  0b18f810  add.s r16, r16, r15
000d70  1f098800  addli r18, r16, 64
000d74  86300000  vfp162float_l.rn vr1, vr0
000d78  06700000  vfp162float_h.rn vr0, vr0
000d7c  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000d80  4e100902  vstores_mask16.mz vr0{mr1}, 0(r18)
000d84  bbfe08fe  bneq r17, zero, -68
000d88  abf20000  lui r5, 15
000d8c  1b357d00  slli r10, r26, 7
000d90  1b327100  slli r4, r2, 7
000d94  1f160000  addli r12, zero, 1
000d98  9f068fd7  addli r13, r30, -5184
000d9c  1f078000  addli r14, zero, 64
000da0  1f080010  addli r16, zero, 2048
000da4  9f880000  addli r17, r1, 0
000da8  00a00000  mfence { lm }
000dac  9f8202f0  addli r5, r5, -2048
000db0  8b155510  add.s r11, r10, r5
000db4  33890828  zext_int2long r[19:20], r17
000db8  2b0a00f0  lui r20, 983040
000dbc  8b983810  add.s r17, r17, r3
000dc0  1739c902  sll.d r[19:20], r[19:20], r12
000dc4  171a4701  or r20, r14, r20
000dc8  0b292311  add.ul r[19:20], r[7:8], r[19:20]
000dcc  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
000dd0  13890805  setlt.u r18, r17, r16
000dd4  9f898500  addli r19, r11, 64
000dd8  00a00200  mfence { lm, gm }
000ddc  42800602  vload.mz vr0{mr1}, 0(r13)
000de0  86300000  vfp162float_l.rn vr1, vr0
000de4  06700000  vfp162float_h.rn vr0, vr0
000de8  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
000dec  8b954510  add.s r11, r11, r4
000df0  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
000df4  3b0f09fe  bneq r18, zero, -64
000df8  ab130100  lui r7, 17
000dfc  9f058fd7  addli r11, r30, -5184
000e00  1f068000  addli r12, zero, 64
000e04  9f060010  addli r13, zero, 2048
000e08  00a00000  mfence { lm }
000e0c  9f8303f0  addli r7, r7, -2048
000e10  0b137510  add.s r6, r10, r7
000e14  1f150000  addli r10, zero, 1
000e18  33880028  zext_int2long r[17:18], r1
000e1c  2b0700f0  lui r14, 983040
000e20  8b903010  add.s r1, r1, r3
000e24  1738a802  sll.d r[17:18], r[17:18], r10
000e28  1717e600  or r14, r12, r14
000e2c  0b280411  add.ul r[17:18], r[9:10], r[17:18]
000e30  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000e34  1387d004  setlt.u r14, r1, r13
000e38  1f088300  addli r16, r6, 64
000e3c  00a00200  mfence { lm, gm }
000e40  42800502  vload.mz vr0{mr1}, 0(r11)
000e44  86300000  vfp162float_l.rn vr1, vr0
000e48  06700000  vfp162float_h.rn vr0, vr0
000e4c  4e101302  vstores_mask16.mz vr1{mr1}, 0(r6)
000e50  0b134310  add.s r6, r6, r4
000e54  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
000e58  3b0f07fe  bneq r14, zero, -64
000e5c  abf00000  lui r1, 15
000e60  00a00300  mfence { lm, sm, gm }
000e64  9b011d00  andi r3, r26, 1
000e68  1f020006  addli r4, zero, 768
000e6c  9b90f0ff  ori r1, r1, 4095
000e70  80a10004  csr_set csr3, r1
000e74  9f000006  addli r1, zero, 768
000e78  00d00100  sync_group
000e7c  67083fd6  storeli.w r3, -5248(r30)
000e80  37a00100  beq r3, zero, 8
000e84  1f02000a  addli r4, zero, 1280
000e88  e3411f00  loadli.w r3,  12(r30)
000e8c  63471f00  loadli.w r14,  12(r30)
000e90  1f130000  addli r6, zero, 1
000e94  bf91612c  blt.s r3, r6, 22628
000e98  e3010fd7  loadli.w r3,  -5248(r30)
000e9c  1f088fd7  addli r16, r30, -5184
000ea0  1b441100  srli r8, r2, 1
000ea4  1f014200  addli r2, r4, 32
000ea8  9b351200  slli r11, r4, 1
000eac  2b350100  lui r10, 19
000eb0  1f030000  addli r6, zero, 0
000eb4  9b441d00  srli r9, r26, 1
000eb8  1f7a7000  addli r20, zero, 63
000ebc  9f0b0005  addli r23, zero, 640
000ec0  9f0d4000  addli r27, zero, 32
000ec4  1f0b0003  addli r22, zero, 384
000ec8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000ecc  670c2fd4  storeli.w r2, -5440(r30)
000ed0  0b910511  add.s r2, r11, r16
000ed4  1f0505f0  addli r10, r10, -2048
000ed8  8b901120  mul.s r1, r3, r1
000edc  67041fd6  storeli.w r1, -5312(r30)
000ee0  9bb02000  slli r1, r1, 2
000ee4  0b965010  add.s r12, r1, r5
000ee8  8b967010  add.s r13, r1, r7
000eec  9b302200  slli r1, r4, 2
000ef0  ab320100  lui r5, 19
000ef4  8b900011  add.s r1, r1, r16
000ef8  9f8202f4  addli r5, r5, -1536
000efc  9f8080ff  addli r1, r1, -64
000f00  67081fd4  storeli.w r1, -5504(r30)
000f04  9f0081ff  addli r1, r2, -64
000f08  1f010fd4  addli r2, r30, -5632
000f0c  67041fd4  storeli.w r1, -5568(r30)
000f10  abf0ffff  lui r1, 1048575
000f14  00a00000  mfence { lm }
000f18  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000f1c  9b9000f8  ori r1, r1, 3968
000f20  e74f1fd2  storeli.w r1, -5636(r30)
000f24  abf00000  lui r1, 15
000f28  1b9ef0ff  ori r28, r1, 4095
000f2c  db030000  j 28
000f30  00a00300  mfence { lm, sm, gm }
000f34  80210e04  csr_set csr3, r28
000f38  00d00100  sync_group
000f3c  0b138310  add.s r6, r6, r8
000f40  3f20e300  blt.s r6, r14, 8
000f44  5ba4ffff  j -736
000f48  8b109310  add.s r1, r6, r9
000f4c  cb1f17fe  ble.s r14, r1, -28
000f50  63011f00  loadli.w r2,  8(r30)
000f54  e3018fd6  loadli.w r3,  -5312(r30)
000f58  8b902010  add.s r1, r1, r2
000f5c  0b018330  div.u r2, r6, r8
000f60  9bb0b000  slli r1, r1, 11
000f64  97903000  or r1, r1, r3
000f68  9f110000  addli r3, zero, 1
000f6c  b3980028  sext_int2long r[18:19], r1
000f70  ab0000f0  lui r1, 983040
000f74  1b316100  slli r2, r2, 6
000f78  97b83802  sll.d r[18:19], r[18:19], r3
000f7c  9f017fd6  addli r3, r30, -5320
000f80  97901500  or r1, r11, r1
000f84  1b010104  andi r2, r2, 64
000f88  6bdc0100  load.d r[25:26], 0(r3)
000f8c  1717a101  or r14, r2, r26
000f90  0b2c1c11  add.ul r[25:26], r[25:26], r[18:19]
000f94  ff200c01  l_gm2lm r1, r16, 0(r[25:26])
000f98  00a00200  mfence { lm, gm }
000f9c  e3008fd4  loadli.w r1,  -5568(r30)
000fa0  63010fd5  loadli.w r2,  -5504(r30)
000fa4  e3018fd5  loadli.w r3,  -5440(r30)
000fa8  c2800002  vload.mz vr1{mr1}, 0(r1)
000fac  9f81c1ff  addli r3, r3, -32
000fb0  9f0981ff  addli r19, r2, -64
000fb4  9f8080ff  addli r1, r1, -64
000fb8  93033a04  setlt.u r7, r20, r3
000fbc  06f10000  vfp162float_h.rn vr2, vr1
000fc0  86b00000  vfp162float_l.rn vr1, vr1
000fc4  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
000fc8  1f0101ff  addli r2, r2, -128
000fcc  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
000fd0  3bef03fe  bneq r7, zero, -40
000fd4  00a00000  mfence { lm }
000fd8  e3000fd7  loadli.w r1,  -5248(r30)
000fdc  3bc60000  bneq r1, zero, 400
000fe0  9f000fd4  addli r1, r30, -5632
000fe4  e341ffd3  loadli.w r3,  -5636(r30)
000fe8  1f010000  addli r2, zero, 0
000fec  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000ff0  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000ff4  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000ff8  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000ffc  8b10f110  add.s r1, r2, r15
001000  8b132810  add.s r7, r16, r2
001004  9f810101  addli r3, r3, 128
001008  1f010104  addli r2, r2, 512
00100c  9f890001  addli r19, r1, 128
001010  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
001014  9f8a8000  addli r21, r1, 64
001018  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
00101c  1f8c8301  addli r24, r7, 192
001020  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
001024  9f898001  addli r19, r1, 192
001028  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
00102c  9f8a8300  addli r21, r7, 64
001030  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
001034  ca930902  vloads_mask16.mz vr7{mr1}, 0(r19)
001038  9f890301  addli r19, r7, 128
00103c  42950a02  vload_mask16.mz vr10{mr1}, 0(r21)
001040  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
001044  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001048  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00104c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
001050  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
001054  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001058  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
00105c  46908902  vstore_mask16.mz vr8{mr1}, 0(r19)
001060  9f890002  addli r19, r1, 256
001064  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
001068  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00106c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
001070  46905a02  vstore_mask16.mz vr5{mr1}, 0(r21)
001074  4a900902  vloads_mask16.mz vr0{mr1}, 0(r19)
001078  9f898002  addli r19, r1, 320
00107c  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
001080  1f8c0302  addli r24, r7, 256
001084  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001088  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00108c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001090  4a930902  vloads_mask16.mz vr6{mr1}, 0(r19)
001094  9f890003  addli r19, r1, 384
001098  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
00109c  9f808003  addli r1, r1, 448
0010a0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0010a4  4a940902  vloads_mask16.mz vr8{mr1}, 0(r19)
0010a8  9f898302  addli r19, r7, 320
0010ac  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
0010b0  9f800303  addli r1, r7, 384
0010b4  9f838303  addli r7, r7, 448
0010b8  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
0010bc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0010c0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0010c4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0010c8  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0010cc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0010d0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0010d4  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
0010d8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0010dc  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
0010e0  93897105  setlt.u r19, r3, r23
0010e4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0010e8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0010ec  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0010f0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0010f4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0010f8  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0010fc  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001100  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001104  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001108  bbdb09fe  bneq r19, zero, -268
00110c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001110  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001114  9f000002  addli r1, zero, 256
001118  6af100c0  vsrl.p vr2, r1, vr0
00111c  eaf110c0  vsrl.p vr3, r1, vr1
001120  9f000001  addli r1, zero, 128
001124  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001128  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00112c  6af100c0  vsrl.p vr2, r1, vr0
001130  eaf110c0  vsrl.p vr3, r1, vr1
001134  9f008000  addli r1, zero, 64
001138  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00113c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001140  6af100c0  vsrl.p vr2, r1, vr0
001144  eaf110c0  vsrl.p vr3, r1, vr1
001148  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00114c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001150  6af10dc0  vsrl.p vr2, r27, vr0
001154  eaf11dc0  vsrl.p vr3, r27, vr1
001158  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00115c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001160  fa100040  vextracti.f r1, 0(vr0)
001164  fa910040  vextracti.f r3, 0(vr1)
001168  db650000  j 812
00116c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001170  abf0ffff  lui r1, 1048575
001174  1f010000  addli r2, zero, 0
001178  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00117c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001180  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001184  9b9100f8  ori r3, r1, 3968
001188  8b932710  add.s r7, r15, r2
00118c  8b192810  add.s r19, r16, r2
001190  9f810101  addli r3, r3, 128
001194  1f010104  addli r2, r2, 512
001198  1f8c0331  addli r24, r7, 6272
00119c  9f800330  addli r1, r7, 6144
0011a0  9f8c8331  addli r25, r7, 6336
0011a4  9f8a0918  addli r21, r19, 3072
0011a8  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
0011ac  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
0011b0  9f808330  addli r1, r7, 6208
0011b4  ca940c02  vloads_mask16.mz vr9{mr1}, 0(r25)
0011b8  1f8c0919  addli r24, r19, 3200
0011bc  42930a02  vload_mask16.mz vr6{mr1}, 0(r21)
0011c0  9f8c8919  addli r25, r19, 3264
0011c4  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0011c8  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
0011cc  9f808918  addli r1, r19, 3136
0011d0  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
0011d4  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0011d8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0011dc  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0011e0  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0011e4  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0011e8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0011ec  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0011f0  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
0011f4  9f8a0332  addli r21, r7, 6400
0011f8  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0011fc  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
001200  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001204  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
001208  1f8c091a  addli r24, r19, 3328
00120c  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
001210  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001214  9f80091b  addli r1, r19, 3456
001218  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
00121c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001220  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
001224  9f8a8332  addli r21, r7, 6464
001228  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00122c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001230  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
001234  9f8a0333  addli r21, r7, 6528
001238  9f838333  addli r7, r7, 6592
00123c  4a940a02  vloads_mask16.mz vr8{mr1}, 0(r21)
001240  9f8a891a  addli r21, r19, 3392
001244  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
001248  9f83891b  addli r7, r19, 3520
00124c  93896105  setlt.u r19, r3, r22
001250  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
001254  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001258  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00125c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001260  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001264  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001268  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00126c  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
001270  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001274  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
001278  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00127c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001280  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001284  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001288  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00128c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001290  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001294  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001298  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00129c  bbbb09fe  bneq r19, zero, -276
0012a0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0012a4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0012a8  9f000002  addli r1, zero, 256
0012ac  9f0a0000  addli r21, zero, 0
0012b0  eaf110c0  vsrl.p vr3, r1, vr1
0012b4  6af100c0  vsrl.p vr2, r1, vr0
0012b8  9f000001  addli r1, zero, 128
0012bc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0012c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0012c4  eaf110c0  vsrl.p vr3, r1, vr1
0012c8  6af100c0  vsrl.p vr2, r1, vr0
0012cc  9f008000  addli r1, zero, 64
0012d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0012d4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0012d8  eaf110c0  vsrl.p vr3, r1, vr1
0012dc  6af100c0  vsrl.p vr2, r1, vr0
0012e0  abf0ffff  lui r1, 1048575
0012e4  9b9900f8  ori r19, r1, 3968
0012e8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0012ec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0012f0  eaf11dc0  vsrl.p vr3, r27, vr1
0012f4  6af10dc0  vsrl.p vr2, r27, vr0
0012f8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0012fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001300  fa910040  vextracti.f r3, 0(vr1)
001304  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001308  7a110040  vextracti.f r2, 0(vr0)
00130c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001310  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001314  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001318  8b905711  add.s r1, r15, r21
00131c  8b135811  add.s r7, r16, r21
001320  9f890901  addli r19, r19, 128
001324  9f8a0a04  addli r21, r21, 512
001328  1f8c0018  addli r24, r1, 3072
00132c  9f8c0019  addli r25, r1, 3200
001330  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
001334  1f8d8301  addli r26, r7, 192
001338  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
00133c  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
001340  1f8c8018  addli r24, r1, 3136
001344  9f8c8019  addli r25, r1, 3264
001348  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
00134c  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
001350  1f8c0301  addli r24, r7, 128
001354  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
001358  9f8c8300  addli r25, r7, 64
00135c  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
001360  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
001364  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001368  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00136c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
001370  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
001374  46108c02  vstore_mask16.mz vr8{mr1}, 0(r24)
001378  1f8c001a  addli r24, r1, 3328
00137c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
001380  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001384  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
001388  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00138c  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
001390  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
001394  1f8c801a  addli r24, r1, 3392
001398  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
00139c  1f8d0302  addli r26, r7, 256
0013a0  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
0013a4  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0013a8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0013ac  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0013b0  1f8c001b  addli r24, r1, 3456
0013b4  c2130d02  vload_mask16.mz vr7{mr1}, 0(r26)
0013b8  9f80801b  addli r1, r1, 3520
0013bc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0013c0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0013c4  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
0013c8  1f8c8302  addli r24, r7, 320
0013cc  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
0013d0  9f800303  addli r1, r7, 384
0013d4  9f838303  addli r7, r7, 448
0013d8  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
0013dc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0013e0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0013e4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0013e8  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0013ec  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0013f0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0013f4  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
0013f8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0013fc  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
001400  138c7905  setlt.u r24, r19, r23
001404  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001408  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00140c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001410  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001414  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001418  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00141c  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001420  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001424  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001428  bb4b0cfe  bneq r24, zero, -272
00142c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001430  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001434  9f000002  addli r1, zero, 256
001438  003d0002  core_id r26
00143c  6af100c0  vsrl.p vr2, r1, vr0
001440  eaf110c0  vsrl.p vr3, r1, vr1
001444  9f000001  addli r1, zero, 128
001448  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00144c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001450  6af100c0  vsrl.p vr2, r1, vr0
001454  eaf110c0  vsrl.p vr3, r1, vr1
001458  9f008000  addli r1, zero, 64
00145c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001460  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001464  6af100c0  vsrl.p vr2, r1, vr0
001468  eaf110c0  vsrl.p vr3, r1, vr1
00146c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001470  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001474  6af10dc0  vsrl.p vr2, r27, vr0
001478  eaf11dc0  vsrl.p vr3, r27, vr1
00147c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001480  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001484  fa100040  vextracti.f r1, 0(vr0)
001488  fa930040  vextracti.f r7, 0(vr1)
00148c  8b601110  add.f.rn r1, r2, r1
001490  8be17110  add.f.rn r3, r3, r7
001494  9b332700  slli r7, r14, 2
001498  1f010000  addli r2, zero, 0
00149c  8b99a310  add.s r19, r7, r10
0014a0  8b9a5310  add.s r21, r7, r5
0014a4  73e01900  stores.w r1, 0(r19)
0014a8  9b00e707  andi r1, r14, 126
0014ac  73e03a00  stores.w r3, 0(r21)
0014b0  9b914300  ori r3, r7, 4
0014b4  9f090000  addli r19, zero, 0
0014b8  00a00300  mfence { lm, sm, gm }
0014bc  80210e04  csr_set csr3, r28
0014c0  00d00100  sync_group
0014c4  9bb02000  slli r1, r1, 2
0014c8  8b93a110  add.s r7, r3, r10
0014cc  8b915110  add.s r3, r3, r5
0014d0  0b97a010  add.s r14, r1, r10
0014d4  efc30300  loads.w r7, 0(r7)
0014d8  8b905010  add.s r1, r1, r5
0014dc  efc10100  loads.w r3, 0(r3)
0014e0  6f470700  loads.w r14, 0(r14)
0014e4  efc00000  loads.w r1, 0(r1)
0014e8  8be3e310  add.f.rn r7, r7, r14
0014ec  8be01110  add.f.rn r1, r3, r1
0014f0  ab01003a  lui r3, 237568
0014f4  8be33320  mul.f.rn r7, r7, r3
0014f8  8be03020  mul.f.rn r1, r1, r3
0014fc  8be17320  mul.f.rn r3, r7, r7
001500  0be70358  neg.f r14, r7
001504  8be03018  sub.f.rn r1, r1, r3
001508  e3013f00  loadli.w r3,  24(r30)
00150c  8be03010  add.f.rn r1, r1, r3
001510  ab01803f  lui r3, 260096
001514  8f800008  sqrt.f.rn r1, r1
001518  8f811118  div.f.rn r3, r3, r1
00151c  8b102610  add.s r1, r12, r2
001520  8b132810  add.s r7, r16, r2
001524  8b9a2610  add.s r21, r13, r2
001528  9f8c8000  addli r25, r1, 64
00152c  1f8c8300  addli r24, r7, 64
001530  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
001534  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
001538  4a920a02  vloads_mask16.mz vr4{mr1}, 0(r21)
00153c  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
001540  9f8c8a00  addli r25, r21, 64
001544  c2100c02  vload_mask16.mz vr1{mr1}, 0(r24)
001548  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
00154c  9f8c4900  addli r25, r19, 32
001550  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
001554  930c9207  setle.u r25, r4, r25
001558  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
00155c  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
001560  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
001564  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
001568  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
00156c  46904302  vstore_mask16.mz vr4{mr1}, 0(r7)
001570  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
001574  bb910c00  bneq r25, zero, 100
001578  9f8c0001  addli r25, r1, 128
00157c  1f8c0301  addli r24, r7, 128
001580  9f838301  addli r7, r7, 192
001584  9f808001  addli r1, r1, 192
001588  9f898900  addli r19, r19, 64
00158c  1f010102  addli r2, r2, 256
001590  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
001594  9f8c0a01  addli r25, r21, 128
001598  9f8a8a01  addli r21, r21, 192
00159c  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
0015a0  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
0015a4  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
0015a8  93804904  setlt.u r1, r19, r4
0015ac  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
0015b0  ca920a02  vloads_mask16.mz vr5{mr1}, 0(r21)
0015b4  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
0015b8  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
0015bc  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
0015c0  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
0015c4  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
0015c8  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0015cc  46103c02  vstore_mask16.mz vr3{mr1}, 0(r24)
0015d0  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
0015d4  3bad00fe  bneq r1, zero, -184
0015d8  9f008fd7  addli r1, r30, -5184
0015dc  1f018fd7  addli r2, r30, -5184
0015e0  9f010000  addli r3, zero, 0
0015e4  00a00000  mfence { lm }
0015e8  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0015ec  9f038100  addli r7, r2, 64
0015f0  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
0015f4  9f814100  addli r3, r3, 32
0015f8  1f010101  addli r2, r2, 128
0015fc  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
001600  93834104  setlt.u r7, r3, r4
001604  06110000  vfloat2fp16_l.rn vr2, vr0
001608  06d10000  vfloat2fp16_h.rn vr2, vr1
00160c  46802002  vstore.mz vr2{mr1}, 0(r1)
001610  9f808000  addli r1, r1, 64
001614  3bdf03fe  bneq r7, zero, -44
001618  6b510f00  load.d r[3:4], 0(r30)
00161c  ab0000f0  lui r1, 983040
001620  00a00000  mfence { lm }
001624  97901500  or r1, r11, r1
001628  0b211111  add.ul r[3:4], r[3:4], r[18:19]
00162c  ff300101  s_lm2gm r1, r16, 0(r[3:4])
001630  00a00200  mfence { lm, gm }
001634  63471f00  loadli.w r14,  12(r30)
001638  db20ffff  j -1788
00163c  e3403f00  loadli.w r1,  28(r30)
001640  37850014  beq r1, zero, 10560
001644  003a0002  core_id r20
001648  63012f00  loadli.w r2,  16(r30)
00164c  005c0102  load_param_i r24, 2
001650  9b305a00  slli r1, r20, 5
001654  4b431100  ble.s r2, r1, 208
001658  2b960000  lui r12, 9
00165c  9f110000  addli r3, zero, 1
001660  1f058fd7  addli r10, r30, -5184
001664  9f058000  addli r11, zero, 64
001668  1b315c00  slli r2, r24, 5
00166c  9f860000  addli r13, r1, 0
001670  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001674  1f0606f0  addli r12, r12, -2048
001678  33880628  zext_int2long r[17:18], r13
00167c  2b0900f0  lui r18, 983040
001680  17383802  sll.d r[17:18], r[17:18], r3
001684  17992501  or r18, r11, r18
001688  0b280211  add.ul r[17:18], r[5:6], r[17:18]
00168c  7f29a800  l_gm2lm r18, r10, 0(r[17:18])
001690  1bb82600  slli r16, r13, 2
001694  8b16d110  add.s r13, r2, r13
001698  00a00200  mfence { lm, gm }
00169c  c2000502  vload.mz vr1{mr1}, 0(r10)
0016a0  0b18c810  add.s r16, r16, r12
0016a4  9f088800  addli r17, r16, 64
0016a8  66411080  vmerge_l.hf vr2, vr0, vr1
0016ac  e64010a0  vmerge_h.hf vr1, vr0, vr1
0016b0  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
0016b4  4e901802  vstores_mask16.mz vr1{mr1}, 0(r17)
0016b8  3f8ff6fe  blt.s r13, r15, -64
0016bc  2ba20000  lui r4, 10
0016c0  9b317a00  slli r3, r20, 7
0016c4  9f120000  addli r5, zero, 1
0016c8  1f058fd7  addli r10, r30, -5184
0016cc  9f058000  addli r11, zero, 64
0016d0  1f860000  addli r12, r1, 0
0016d4  00a00000  mfence { lm }
0016d8  1f0202f0  addli r4, r4, -2048
0016dc  8b914110  add.s r3, r3, r4
0016e0  1b327c00  slli r4, r24, 7
0016e4  33080628  zext_int2long r[17:18], r12
0016e8  ab0600f0  lui r13, 983040
0016ec  0b162610  add.s r12, r12, r2
0016f0  17385802  sll.d r[17:18], r[17:18], r5
0016f4  9796d500  or r13, r11, r13
0016f8  0b280311  add.ul r[17:18], r[7:8], r[17:18]
0016fc  ff26a800  l_gm2lm r13, r10, 0(r[17:18])
001700  9f868100  addli r13, r3, 64
001704  00a00200  mfence { lm, gm }
001708  c2000502  vload.mz vr1{mr1}, 0(r10)
00170c  66411080  vmerge_l.hf vr2, vr0, vr1
001710  e64010a0  vmerge_h.hf vr1, vr0, vr1
001714  4e902102  vstores_mask16.mz vr2{mr1}, 0(r3)
001718  8b914110  add.s r3, r3, r4
00171c  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
001720  3f1ff6fe  blt.s r12, r15, -60
001724  63012f00  loadli.w r2,  16(r30)
001728  cb211100  ble.s r2, r1, 104
00172c  2bb30000  lui r6, 11
001730  1f110000  addli r2, zero, 1
001734  9f018fd7  addli r3, r30, -5184
001738  1f028000  addli r4, zero, 64
00173c  9b325c00  slli r5, r24, 5
001740  00a00000  mfence { lm }
001744  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001748  1f0303f0  addli r6, r6, -2048
00174c  33850028  zext_int2long r[11:12], r1
001750  ab0300f0  lui r7, 983040
001754  17352502  sll.d r[11:12], r[11:12], r2
001758  97137200  or r7, r4, r7
00175c  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001760  ff233500  l_gm2lm r7, r3, 0(r[11:12])
001764  9bb32000  slli r7, r1, 2
001768  8b901210  add.s r1, r5, r1
00176c  00a00200  mfence { lm, gm }
001770  c2800102  vload.mz vr1{mr1}, 0(r3)
001774  8b936310  add.s r7, r7, r6
001778  1f858300  addli r10, r7, 64
00177c  66411080  vmerge_l.hf vr2, vr0, vr1
001780  e64010a0  vmerge_h.hf vr1, vr0, vr1
001784  4e902302  vstores_mask16.mz vr2{mr1}, 0(r7)
001788  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
00178c  3f8ff0fe  blt.s r1, r15, -64
001790  abf00000  lui r1, 15
001794  63411f00  loadli.w r2,  12(r30)
001798  00a00300  mfence { lm, sm, gm }
00179c  9b90f0ff  ori r1, r1, 4095
0017a0  80a10004  csr_set csr3, r1
0017a4  00d00100  sync_group
0017a8  4b4d4127  ble.s r2, r20, 20304
0017ac  e3002f00  loadli.w r1,  16(r30)
0017b0  63412f00  loadli.w r2,  20(r30)
0017b4  1f048fd7  addli r8, r30, -5184
0017b8  9f160000  addli r13, zero, 1
0017bc  1f084000  addli r16, zero, 32
0017c0  9f090002  addli r19, zero, 256
0017c4  9f0a0001  addli r21, zero, 128
0017c8  1f0b8000  addli r22, zero, 64
0017cc  ab0b803f  lui r23, 260096
0017d0  2bee7f00  lui r28, 2046
0017d4  abe40700  lui r9, 126
0017d8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0017dc  33820008  fix2float.rn r4, r1
0017e0  8b912010  add.s r3, r1, r2
0017e4  9bb31000  slli r7, r1, 1
0017e8  1b362100  slli r12, r2, 2
0017ec  e74f4fd2  storeli.w r4, -5636(r30)
0017f0  1bb22000  slli r4, r1, 2
0017f4  9f804000  addli r1, r1, 32
0017f8  9ff1f1ff  addli r3, r3, -1
0017fc  e70f1fd2  storeli.w r1, -5640(r30)
001800  8b108210  add.s r1, r4, r8
001804  0b932130  div.s r6, r3, r2
001808  8b918310  add.s r3, r7, r8
00180c  1f717000  addli r2, zero, 63
001810  9f8080ff  addli r1, r1, -64
001814  674f1fd2  storeli.w r1, -5644(r30)
001818  9f8081ff  addli r1, r3, -64
00181c  670f1fd2  storeli.w r1, -5648(r30)
001820  abf0ffff  lui r1, 1048575
001824  00a00000  mfence { lm }
001828  67048fd5  storeli.w r24, -5568(r30)
00182c  67007fd4  storeli.w r7, -5632(r30)
001830  9b90f0ff  ori r1, r1, 4095
001834  67041fd6  storeli.w r1, -5312(r30)
001838  ab700000  lui r1, 7
00183c  1b9df0ff  ori r26, r1, 4095
001840  ab00ff03  lui r1, 16368
001844  9b95f03f  ori r11, r1, 1023
001848  abf000fc  lui r1, 1032207
00184c  9b9100c0  ori r3, r1, 3072
001850  9f000fd7  addli r1, r30, -5248
001854  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001858  db080000  j 68
00185c  9f030fd5  addli r7, r30, -5504
001860  6b520f00  load.d r[5:6], 0(r30)
001864  ab0000f0  lui r1, 983040
001868  ebd80300  load.d r[18:19], 0(r7)
00186c  e3030fd4  loadli.w r7,  -5632(r30)
001870  00a00000  mfence { lm }
001874  630a8fd5  loadli.w r20,  -5440(r30)
001878  630c8fd4  loadli.w r24,  -5568(r30)
00187c  0b221211  add.ul r[5:6], r[5:6], r[18:19]
001880  97901300  or r1, r7, r1
001884  0b1a4c11  add.s r20, r24, r20
001888  ff308200  s_lm2gm r1, r8, 0(r[5:6])
00188c  00a00200  mfence { lm, gm }
001890  e3401f00  loadli.w r1,  12(r30)
001894  3f201a00  blt.s r20, r1, 8
001898  5bcc0900  j 20064
00189c  e3001f00  loadli.w r1,  8(r30)
0018a0  1f057fd6  addli r10, r30, -5320
0018a4  8b101a10  add.s r1, r20, r1
0018a8  8b90f020  mul.s r1, r1, r15
0018ac  33920028  sext_int2long r[5:6], r1
0018b0  ab0000f0  lui r1, 983040
0018b4  9738d202  sll.d r[18:19], r[5:6], r13
0018b8  6b520500  load.d r[5:6], 0(r10)
0018bc  97901300  or r1, r7, r1
0018c0  1f050fd5  addli r10, r30, -5504
0018c4  73301501  store.d r[18:19], 0(r10)
0018c8  0b221211  add.ul r[5:6], r[5:6], r[18:19]
0018cc  ff208200  l_gm2lm r1, r8, 0(r[5:6])
0018d0  00a00200  mfence { lm, gm }
0018d4  bff00701  blt.s r15, r16, 60
0018d8  e300efd3  loadli.w r1,  -5648(r30)
0018dc  6342efd3  loadli.w r4,  -5644(r30)
0018e0  e302ffd3  loadli.w r5,  -5640(r30)
0018e4  c2800002  vload.mz vr1{mr1}, 0(r1)
0018e8  9f82c2ff  addli r5, r5, -32
0018ec  9f0882ff  addli r17, r4, -64
0018f0  9f8080ff  addli r1, r1, -64
0018f4  93035104  setlt.u r7, r2, r5
0018f8  664110a0  vmerge_h.hf vr2, vr0, vr1
0018fc  e6401080  vmerge_l.hf vr1, vr0, vr1
001900  46102202  vstore_mask16.mz vr2{mr1}, 0(r4)
001904  1f0202ff  addli r4, r4, -128
001908  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
00190c  3bef03fe  bneq r7, zero, -40
001910  00a00000  mfence { lm }
001914  670c4fd5  storeli.w r20, -5440(r30)
001918  bf57d300  blt.s r6, r13, 500
00191c  9f020000  addli r5, zero, 0
001920  1f020000  addli r4, zero, 0
001924  9f030000  addli r7, zero, 0
001928  db0d0000  j 108
00192c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001930  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001934  9f930300  addli r7, r7, 1
001938  6af109c0  vsrl.p vr2, r19, vr0
00193c  eaf119c0  vsrl.p vr3, r19, vr1
001940  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001944  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001948  6af10ac0  vsrl.p vr2, r21, vr0
00194c  eaf11ac0  vsrl.p vr3, r21, vr1
001950  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001954  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001958  6a710bc0  vsrl.p vr2, r22, vr0
00195c  ea711bc0  vsrl.p vr3, r22, vr1
001960  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001964  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001968  6a7108c0  vsrl.p vr2, r16, vr0
00196c  ea7118c0  vsrl.p vr3, r16, vr1
001970  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001974  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001978  fa100040  vextracti.f r1, 0(vr0)
00197c  7a910040  vextracti.f r2, 0(vr1)
001980  8be21210  add.f.rn r5, r5, r1
001984  9f000fd7  addli r1, r30, -5248
001988  0b622210  add.f.rn r4, r4, r2
00198c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001990  37966300  beq r7, r6, 388
001994  9f880300  addli r17, r7, 0
001998  37403701  beq r14, r19, 16
00199c  e3008fd6  loadli.w r1,  -5312(r30)
0019a0  97a01300  xor r1, r7, r1
0019a4  8b181310  add.s r17, r6, r1
0019a8  8b90e820  mul.s r1, r17, r14
0019ac  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0019b0  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0019b4  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0019b8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0019bc  8b901718  sub.s r1, r15, r1
0019c0  8b90e040  min.s r1, r1, r14
0019c4  bfadd0fe  blt.s r1, r13, -152
0019c8  1f010fd7  addli r2, r30, -5248
0019cc  2b9c0000  lui r24, 9
0019d0  1f0a0000  addli r20, zero, 0
0019d4  8b181621  mul.s r17, r12, r17
0019d8  1f098fd7  addli r18, r30, -5184
0019dc  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0019e0  1f0c0cf0  addli r24, r24, -2048
0019e4  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0019e8  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0019ec  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0019f0  8b1d1c11  add.s r27, r24, r17
0019f4  8b1c1911  add.s r25, r18, r17
0019f8  1f848d00  addli r8, r27, 64
0019fc  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
001a00  1f858d01  addli r10, r27, 192
001a04  c2940c02  vload_mask16.mz vr9{mr1}, 0(r25)
001a08  1f818c01  addli r2, r25, 192
001a0c  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
001a10  1f840d01  addli r8, r27, 128
001a14  4a140502  vloads_mask16.mz vr8{mr1}, 0(r10)
001a18  1f850c01  addli r10, r25, 128
001a1c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
001a20  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
001a24  c2150502  vload_mask16.mz vr11{mr1}, 0(r10)
001a28  1f848c00  addli r8, r25, 64
001a2c  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
001a30  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001a34  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001a38  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001a3c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001a40  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001a44  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001a48  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
001a4c  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
001a50  1f048a00  addli r8, r20, 64
001a54  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001a58  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001a5c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001a60  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001a64  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001a68  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
001a6c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001a70  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001a74  cbea80fe  ble.s r1, r8, -328
001a78  1f840d02  addli r8, r27, 256
001a7c  1f858d02  addli r10, r27, 320
001a80  1f810c02  addli r2, r25, 256
001a84  1f0a0a01  addli r20, r20, 128
001a88  1f0c0c04  addli r24, r24, 512
001a8c  1f090904  addli r18, r18, 512
001a90  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
001a94  1f840d03  addli r8, r27, 384
001a98  ca120502  vloads_mask16.mz vr5{mr1}, 0(r10)
001a9c  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
001aa0  1f858c02  addli r10, r25, 320
001aa4  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
001aa8  1f848d03  addli r8, r27, 448
001aac  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
001ab0  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
001ab4  1f840c03  addli r8, r25, 384
001ab8  9f8c8c03  addli r25, r25, 448
001abc  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
001ac0  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
001ac4  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
001ac8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001acc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001ad0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001ad4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001ad8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001adc  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
001ae0  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
001ae4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001ae8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001aec  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
001af0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001af4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001af8  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001afc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001b00  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
001b04  bf3b1afe  blt.s r20, r1, -276
001b08  dbc4ffff  j -476
001b0c  1f020000  addli r4, zero, 0
001b10  9f020000  addli r5, zero, 0
001b14  2ba50000  lui r10, 10
001b18  abbd0000  lui r27, 11
001b1c  1f048fd7  addli r8, r30, -5184
001b20  00a00000  mfence { lm }
001b24  1f0505f0  addli r10, r10, -2048
001b28  9f8d0df0  addli r27, r27, -2048
001b2c  bfc3d700  blt.s r15, r13, 240
001b30  6341ffd3  loadli.w r2,  -5636(r30)
001b34  9f000000  addli r1, zero, 0
001b38  8f822218  div.f.rn r5, r5, r2
001b3c  0f022218  div.f.rn r4, r4, r2
001b40  63013f00  loadli.w r2,  24(r30)
001b44  8be35220  mul.f.rn r7, r5, r5
001b48  8be20258  neg.f r5, r5
001b4c  0b627218  sub.f.rn r4, r4, r7
001b50  9f030000  addli r7, zero, 0
001b54  0b622210  add.f.rn r4, r4, r2
001b58  0f020208  sqrt.f.rn r4, r4
001b5c  0f824b18  div.f.rn r4, r23, r4
001b60  0b99a010  add.s r18, r1, r10
001b64  8b181410  add.s r17, r8, r1
001b68  1f0a8900  addli r20, r18, 64
001b6c  4a110902  vloads_mask16.mz vr2{mr1}, 0(r18)
001b70  0b99b011  add.s r18, r1, r27
001b74  c2900802  vload_mask16.mz vr1{mr1}, 0(r17)
001b78  ca110a02  vloads_mask16.mz vr3{mr1}, 0(r20)
001b7c  1f8a8800  addli r20, r17, 64
001b80  4a120902  vloads_mask16.mz vr4{mr1}, 0(r18)
001b84  1f098900  addli r18, r18, 64
001b88  c2120a02  vload_mask16.mz vr5{mr1}, 0(r20)
001b8c  4a130902  vloads_mask16.mz vr6{mr1}, 0(r18)
001b90  1f894300  addli r18, r7, 32
001b94  92901202  vadd.f.mz.rn vr1{mr1}, r5, vr1
001b98  92925202  vadd.f.mz.rn vr5{mr1}, r5, vr5
001b9c  8a101202  vmul.f.mz.rn vr1{mr1}, r4, vr1
001ba0  8a125202  vmul.f.mz.rn vr5{mr1}, r4, vr5
001ba4  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
001ba8  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
001bac  46904802  vstore_mask16.mz vr4{mr1}, 0(r17)
001bb0  46106a02  vstore_mask16.mz vr6{mr1}, 0(r20)
001bb4  cba12701  ble.s r15, r18, 104
001bb8  0b191510  add.s r18, r10, r1
001bbc  0b9a1d10  add.s r20, r27, r1
001bc0  9f838300  addli r7, r7, 64
001bc4  9f800002  addli r1, r1, 256
001bc8  1f0c0901  addli r24, r18, 128
001bcc  9f0c0a01  addli r25, r20, 128
001bd0  1f098901  addli r18, r18, 192
001bd4  1f0a8a01  addli r20, r20, 192
001bd8  ca100c02  vloads_mask16.mz vr1{mr1}, 0(r24)
001bdc  1f8c0801  addli r24, r17, 128
001be0  9f888801  addli r17, r17, 192
001be4  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
001be8  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
001bec  4a130a02  vloads_mask16.mz vr6{mr1}, 0(r20)
001bf0  c2110c02  vload_mask16.mz vr3{mr1}, 0(r24)
001bf4  42920802  vload_mask16.mz vr4{mr1}, 0(r17)
001bf8  92913202  vadd.f.mz.rn vr3{mr1}, r5, vr3
001bfc  12924202  vadd.f.mz.rn vr4{mr1}, r5, vr4
001c00  8a113202  vmul.f.mz.rn vr3{mr1}, r4, vr3
001c04  0a124202  vmul.f.mz.rn vr4{mr1}, r4, vr4
001c08  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
001c0c  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
001c10  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
001c14  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
001c18  3fadf3fe  blt.s r7, r15, -184
001c1c  1f717000  addli r2, zero, 63
001c20  1f052000  addli r10, zero, 16
001c24  9f380000  addli r17, zero, 3
001c28  1f591000  addli r18, zero, 13
001c2c  1f2a1000  addli r20, zero, 10
001c30  00a00000  mfence { lm }
001c34  bfa0d7fe  blt.s r15, r13, -984
001c38  9f008fd7  addli r1, r30, -5184
001c3c  1f028fd7  addli r4, r30, -5184
001c40  9f020000  addli r5, zero, 0
001c44  9f038200  addli r7, r4, 64
001c48  42110202  vload_mask16.mz vr2{mr1}, 0(r4)
001c4c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001c50  9f824200  addli r5, r5, 32
001c54  1f020201  addli r4, r4, 128
001c58  6a221522  vor.u.mz vr4{mr1}, r10, vr1
001c5c  c2910302  vload_mask16.mz vr3{mr1}, 0(r7)
001c60  ee3222c2  vsrl.s.mz vr5{mr1}, vr4, vr2
001c64  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
001c68  eab25602  vand.s.mz vr5{mr1}, r13, vr5
001c6c  6ab24602  vand.s.mz vr4{mr1}, r13, vr4
001c70  16315102  vadd.s.mz vr2{mr1}, vr2, vr5
001c74  eaa21822  vor.u.mz vr5{mr1}, r17, vr1
001c78  96b14102  vadd.s.mz vr3{mr1}, vr3, vr4
001c7c  6a221922  vor.u.mz vr4{mr1}, r18, vr1
001c80  ea201a22  vor.u.mz vr1{mr1}, r20, vr1
001c84  12312d02  vadd.s.mz vr2{mr1}, r26, vr2
001c88  92313d02  vadd.s.mz vr3{mr1}, r26, vr3
001c8c  6e3322c2  vsrl.s.mz vr6{mr1}, vr4, vr2
001c90  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
001c94  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
001c98  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
001c9c  eab26402  vand.s.mz vr5{mr1}, r9, vr6
001ca0  6a312e02  vand.s.mz vr2{mr1}, r28, vr2
001ca4  6ab24402  vand.s.mz vr4{mr1}, r9, vr4
001ca8  ea313e02  vand.s.mz vr3{mr1}, r28, vr3
001cac  6ab12b22  vor.s.mz vr2{mr1}, r23, vr2
001cb0  eab25b22  vor.s.mz vr5{mr1}, r23, vr5
001cb4  6ab24b22  vor.s.mz vr4{mr1}, r23, vr4
001cb8  eab13b22  vor.s.mz vr3{mr1}, r23, vr3
001cbc  06110120  vfloat2fp16_l.rz vr2, vr2
001cc0  06520220  vfloat2fp16_h.rz vr4, vr4
001cc4  06d10120  vfloat2fp16_h.rz vr2, vr3
001cc8  06920220  vfloat2fp16_l.rz vr4, vr5
001ccc  6ab12502  vand.s.mz vr2{mr1}, r11, vr2
001cd0  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
001cd4  eab01102  vand.s.mz vr1{mr1}, r3, vr1
001cd8  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
001cdc  46801002  vstore.mz vr1{mr1}, 0(r1)
001ce0  9f808000  addli r1, r1, 64
001ce4  bf8df2fe  blt.s r5, r15, -160
001ce8  db6effff  j -1164
001cec  e3403f00  loadli.w r1,  28(r30)
001cf0  37df0016  beq r1, zero, 12244
001cf4  80300002  core_id r1
001cf8  e3012f00  loadli.w r3,  16(r30)
001cfc  1bb15000  slli r2, r1, 5
001d00  4bc32100  ble.s r3, r2, 208
001d04  2b580100  lui r16, 21
001d08  00550102  load_param_i r10, 2
001d0c  9f150000  addli r11, zero, 1
001d10  1f068fd7  addli r12, r30, -5184
001d14  9f068000  addli r13, zero, 64
001d18  9f080100  addli r17, r2, 0
001d1c  9b315500  slli r3, r10, 5
001d20  1f080800  addli r16, r16, 0
001d24  33890828  zext_int2long r[19:20], r17
001d28  2b0a00f0  lui r20, 983040
001d2c  1739b902  sll.d r[19:20], r[19:20], r11
001d30  179a4601  or r20, r13, r20
001d34  0b292211  add.ul r[19:20], r[5:6], r[19:20]
001d38  7f2ac900  l_gm2lm r20, r12, 0(r[19:20])
001d3c  1bb92800  slli r18, r17, 2
001d40  8b981111  add.s r17, r3, r17
001d44  00a00200  mfence { lm, gm }
001d48  42000602  vload.mz vr0{mr1}, 0(r12)
001d4c  0b190911  add.s r18, r18, r16
001d50  9f098900  addli r19, r18, 64
001d54  86300000  vfp162float_l.rn vr1, vr0
001d58  06700000  vfp162float_h.rn vr0, vr0
001d5c  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
001d60  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
001d64  3f8ff8fe  blt.s r17, r15, -64
001d68  ab620100  lui r5, 22
001d6c  1bb27000  slli r4, r1, 7
001d70  9f058fd7  addli r11, r30, -5184
001d74  1f068000  addli r12, zero, 64
001d78  9f060100  addli r13, r2, 0
001d7c  00a00000  mfence { lm }
001d80  9f820200  addli r5, r5, 0
001d84  0b125210  add.s r4, r4, r5
001d88  9b327500  slli r5, r10, 7
001d8c  1f150000  addli r10, zero, 1
001d90  33880628  zext_int2long r[17:18], r13
001d94  2b0900f0  lui r18, 983040
001d98  8b963610  add.s r13, r13, r3
001d9c  1738a802  sll.d r[17:18], r[17:18], r10
001da0  17192601  or r18, r12, r18
001da4  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001da8  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
001dac  1f088200  addli r16, r4, 64
001db0  00a00200  mfence { lm, gm }
001db4  42800502  vload.mz vr0{mr1}, 0(r11)
001db8  86300000  vfp162float_l.rn vr1, vr0
001dbc  06700000  vfp162float_h.rn vr0, vr0
001dc0  4e101202  vstores_mask16.mz vr1{mr1}, 0(r4)
001dc4  0b125210  add.s r4, r4, r5
001dc8  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
001dcc  3f9ff6fe  blt.s r13, r15, -60
001dd0  e3012f00  loadli.w r3,  16(r30)
001dd4  cba12100  ble.s r3, r2, 104
001dd8  00530102  load_param_i r6, 2
001ddc  ab730100  lui r7, 23
001de0  9f110000  addli r3, zero, 1
001de4  1f028fd7  addli r4, r30, -5184
001de8  9f028000  addli r5, zero, 64
001dec  00a00000  mfence { lm }
001df0  1b335300  slli r6, r6, 5
001df4  9f830300  addli r7, r7, 0
001df8  33050128  zext_int2long r[11:12], r2
001dfc  2b0600f0  lui r12, 983040
001e00  17353502  sll.d r[11:12], r[11:12], r3
001e04  1796c200  or r12, r5, r12
001e08  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001e0c  7f264500  l_gm2lm r12, r4, 0(r[11:12])
001e10  1b352100  slli r10, r2, 2
001e14  0b112310  add.s r2, r6, r2
001e18  00a00200  mfence { lm, gm }
001e1c  42000202  vload.mz vr0{mr1}, 0(r4)
001e20  0b157510  add.s r10, r10, r7
001e24  9f058500  addli r11, r10, 64
001e28  86300000  vfp162float_l.rn vr1, vr0
001e2c  06700000  vfp162float_h.rn vr0, vr0
001e30  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001e34  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
001e38  3f0ff1fe  blt.s r2, r15, -64
001e3c  2bf10000  lui r2, 15
001e40  e3411f00  loadli.w r3,  12(r30)
001e44  00a00300  mfence { lm, sm, gm }
001e48  1b11f1ff  ori r2, r2, 4095
001e4c  80210104  csr_set csr3, r2
001e50  00d00100  sync_group
001e54  cb921124  ble.s r3, r1, 18596
001e58  63012f00  loadli.w r2,  16(r30)
001e5c  e3412f00  loadli.w r3,  20(r30)
001e60  9f0b8fd7  addli r23, r30, -5184
001e64  2b540100  lui r8, 21
001e68  ab6a0100  lui r21, 22
001e6c  2b7b0100  lui r22, 23
001e70  1f150000  addli r10, zero, 1
001e74  9f054000  addli r11, zero, 32
001e78  1f767000  addli r12, zero, 63
001e7c  1f080002  addli r16, zero, 256
001e80  1f090001  addli r18, zero, 128
001e84  9f098000  addli r19, zero, 64
001e88  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001e8c  1f040400  addli r8, r8, 0
001e90  9f8a0a00  addli r21, r21, 0
001e94  1f0b0b00  addli r22, r22, 0
001e98  0b123110  add.s r4, r2, r3
001e9c  b3020108  fix2float.rn r5, r2
001ea0  9b381100  slli r17, r2, 1
001ea4  1b332100  slli r6, r2, 2
001ea8  1f014100  addli r2, r2, 32
001eac  9bb42100  slli r9, r3, 2
001eb0  67042fd4  storeli.w r2, -5568(r30)
001eb4  0b117311  add.s r2, r6, r23
001eb8  1f72f2ff  addli r4, r4, -1
001ebc  0b937811  add.s r6, r17, r23
001ec0  67085fd4  storeli.w r5, -5504(r30)
001ec4  1f0181ff  addli r2, r2, -64
001ec8  0b123230  div.s r4, r4, r3
001ecc  67002fd4  storeli.w r2, -5632(r30)
001ed0  1f0183ff  addli r2, r6, -64
001ed4  e74f2fd2  storeli.w r2, -5636(r30)
001ed8  2bf1ffff  lui r2, 1048575
001edc  00a00000  mfence { lm }
001ee0  670c1fd5  storeli.w r17, -5440(r30)
001ee4  9b16f1ff  ori r13, r2, 4095
001ee8  1f010fd7  addli r2, r30, -5248
001eec  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001ef0  5b080000  j 64
001ef4  9f038fd6  addli r7, r30, -5312
001ef8  6b510f00  load.d r[3:4], 0(r30)
001efc  ebd20300  load.d r[6:7], 0(r7)
001f00  00a00000  mfence { lm }
001f04  80530102  load_param_i r7, 2
001f08  e3088fd5  loadli.w r17,  -5440(r30)
001f0c  8b901310  add.s r1, r7, r1
001f10  0b215110  add.ul r[3:4], r[3:4], r[6:7]
001f14  2b0300f0  lui r6, 983040
001f18  17936800  or r6, r17, r6
001f1c  7f337101  s_lm2gm r6, r23, 0(r[3:4])
001f20  00a00200  mfence { lm, gm }
001f24  63411f00  loadli.w r2,  12(r30)
001f28  3fa02000  blt.s r1, r2, 8
001f2c  dbf90800  j 18380
001f30  63011f00  loadli.w r2,  8(r30)
001f34  0b912010  add.s r2, r1, r2
001f38  0b11f120  mul.s r2, r2, r15
001f3c  33110128  sext_int2long r[3:4], r2
001f40  173ca102  sll.d r[25:26], r[3:4], r10
001f44  9f017fd6  addli r3, r30, -5320
001f48  2b0100f0  lui r2, 983040
001f4c  ebd20100  load.d r[6:7], 0(r3)
001f50  17912800  or r2, r17, r2
001f54  9f018fd6  addli r3, r30, -5312
001f58  73b08101  store.d r[25:26], 0(r3)
001f5c  0ba38211  add.ul r[7:8], r[6:7], r[25:26]
001f60  7f217301  l_gm2lm r2, r23, 0(r[7:8])
001f64  00a00200  mfence { lm, gm }
001f68  bff0b700  blt.s r15, r11, 60
001f6c  6341ffd3  loadli.w r2,  -5636(r30)
001f70  e3010fd4  loadli.w r3,  -5632(r30)
001f74  63038fd4  loadli.w r6,  -5568(r30)
001f78  c2000102  vload.mz vr1{mr1}, 0(r2)
001f7c  1f03c3ff  addli r6, r6, -32
001f80  9f8881ff  addli r17, r3, -64
001f84  1f0181ff  addli r2, r2, -64
001f88  93036604  setlt.u r7, r12, r6
001f8c  06f10000  vfp162float_h.rn vr2, vr1
001f90  86b00000  vfp162float_l.rn vr1, vr1
001f94  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
001f98  9f8101ff  addli r3, r3, -128
001f9c  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
001fa0  3bef03fe  bneq r7, zero, -40
001fa4  00a00000  mfence { lm }
001fa8  bf27a200  blt.s r4, r10, 488
001fac  1f0d0000  addli r26, zero, 0
001fb0  9f0c0000  addli r25, zero, 0
001fb4  9f0d0000  addli r27, zero, 0
001fb8  db0c0000  j 100
001fbc  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001fc0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001fc4  9f9d0d00  addli r27, r27, 1
001fc8  6a7108c0  vsrl.p vr2, r16, vr0
001fcc  ea7118c0  vsrl.p vr3, r16, vr1
001fd0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001fd4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001fd8  6a7109c0  vsrl.p vr2, r18, vr0
001fdc  ea7119c0  vsrl.p vr3, r18, vr1
001fe0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001fe4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001fe8  6af109c0  vsrl.p vr2, r19, vr0
001fec  eaf119c0  vsrl.p vr3, r19, vr1
001ff0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001ff4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001ff8  6af105c0  vsrl.p vr2, r11, vr0
001ffc  eaf115c0  vsrl.p vr3, r11, vr1
002000  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002004  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002008  7a110040  vextracti.f r2, 0(vr0)
00200c  fa910040  vextracti.f r3, 0(vr1)
002010  0b6d2d10  add.f.rn r26, r26, r2
002014  8bec3c10  add.f.rn r25, r25, r3
002018  37864d00  beq r27, r4, 384
00201c  1f810d00  addli r2, r27, 0
002020  37300701  beq r14, r16, 12
002024  17a1dd00  xor r2, r27, r13
002028  0b112210  add.s r2, r4, r2
00202c  8b11e120  mul.s r3, r2, r14
002030  8b913718  sub.s r3, r15, r3
002034  0b9ee140  min.s r28, r3, r14
002038  9f010fd7  addli r3, r30, -5248
00203c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002040  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002044  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002048  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00204c  bf4daefe  blt.s r28, r10, -144
002050  0b932420  mul.s r6, r9, r2
002054  1f010fd7  addli r2, r30, -5248
002058  1f0a0000  addli r20, zero, 0
00205c  9f038fd7  addli r7, r30, -5184
002060  9f080400  addli r17, r8, 0
002064  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
002068  92304002  vadd.s.mz vr1{mr1}, zero, vr4
00206c  12314002  vadd.s.mz vr2{mr1}, zero, vr4
002070  92314002  vadd.s.mz vr3{mr1}, zero, vr4
002074  0b916810  add.s r2, r17, r6
002078  8b916310  add.s r3, r7, r6
00207c  9f0b8100  addli r23, r2, 64
002080  ca120102  vloads_mask16.mz vr5{mr1}, 0(r2)
002084  1f0c8101  addli r24, r2, 192
002088  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
00208c  9f828101  addli r5, r3, 192
002090  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
002094  9f0b0101  addli r23, r2, 128
002098  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
00209c  1f8c0101  addli r24, r3, 128
0020a0  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0020a4  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
0020a8  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
0020ac  9f8b8100  addli r23, r3, 64
0020b0  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
0020b4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0020b8  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0020bc  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0020c0  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0020c4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0020c8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0020cc  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
0020d0  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
0020d4  9f0b8a00  addli r23, r20, 64
0020d8  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
0020dc  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0020e0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0020e4  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0020e8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0020ec  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
0020f0  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
0020f4  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0020f8  4b1b7eff  ble.s r28, r23, -316
0020fc  9f0b0102  addli r23, r2, 256
002100  1f0c8102  addli r24, r2, 320
002104  9f820102  addli r5, r3, 256
002108  1f0a0a01  addli r20, r20, 128
00210c  9f880804  addli r17, r17, 512
002110  9f830304  addli r7, r7, 512
002114  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
002118  9f0b0103  addli r23, r2, 384
00211c  1f018103  addli r2, r2, 448
002120  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
002124  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
002128  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
00212c  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
002130  1f810103  addli r2, r3, 384
002134  9f8b8102  addli r23, r3, 320
002138  9f818103  addli r3, r3, 448
00213c  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
002140  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
002144  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
002148  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
00214c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
002150  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
002154  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002158  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00215c  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
002160  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
002164  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
002168  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00216c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002170  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
002174  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002178  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00217c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
002180  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002184  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
002188  bf3bcaff  blt.s r20, r28, -276
00218c  5bc6ffff  j -464
002190  9f0c0000  addli r25, zero, 0
002194  1f0d0000  addli r26, zero, 0
002198  9f0b8fd7  addli r23, r30, -5184
00219c  00a00000  mfence { lm }
0021a0  bfd3a700  blt.s r15, r10, 244
0021a4  e3010fd5  loadli.w r3,  -5504(r30)
0021a8  e3023f00  loadli.w r5,  24(r30)
0021ac  1f030000  addli r6, zero, 0
0021b0  1f0a0000  addli r20, zero, 0
0021b4  0f013d18  div.f.rn r2, r26, r3
0021b8  8f813c18  div.f.rn r3, r25, r3
0021bc  8b632120  mul.f.rn r7, r2, r2
0021c0  8b680158  neg.f r17, r2
0021c4  8be17118  sub.f.rn r3, r3, r7
0021c8  8be15110  add.f.rn r3, r3, r5
0021cc  ab02803f  lui r5, 260096
0021d0  8f810108  sqrt.f.rn r3, r3
0021d4  8f833218  div.f.rn r7, r5, r3
0021d8  8b115311  add.s r3, r6, r21
0021dc  0b916b10  add.s r2, r23, r6
0021e0  9f8c8100  addli r25, r3, 64
0021e4  4a910102  vloads_mask16.mz vr2{mr1}, 0(r3)
0021e8  8b116311  add.s r3, r6, r22
0021ec  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0021f0  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
0021f4  9f0c8100  addli r25, r2, 64
0021f8  4a920102  vloads_mask16.mz vr4{mr1}, 0(r3)
0021fc  9f818100  addli r3, r3, 64
002200  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
002204  4a930102  vloads_mask16.mz vr6{mr1}, 0(r3)
002208  9f014a00  addli r3, r20, 32
00220c  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
002210  92925802  vadd.f.mz.rn vr5{mr1}, r17, vr5
002214  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
002218  8a925302  vmul.f.mz.rn vr5{mr1}, r7, vr5
00221c  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
002220  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
002224  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
002228  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
00222c  cba13700  ble.s r15, r3, 104
002230  8b916a10  add.s r3, r21, r6
002234  8b1c6b10  add.s r25, r22, r6
002238  1f0a8a00  addli r20, r20, 64
00223c  1f030302  addli r6, r6, 256
002240  1f8d0101  addli r26, r3, 128
002244  9f8d0c01  addli r27, r25, 128
002248  9f818101  addli r3, r3, 192
00224c  9f8c8c01  addli r25, r25, 192
002250  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
002254  1f0d0101  addli r26, r2, 128
002258  1f018101  addli r2, r2, 192
00225c  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
002260  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
002264  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
002268  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
00226c  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
002270  92913802  vadd.f.mz.rn vr3{mr1}, r17, vr3
002274  12924802  vadd.f.mz.rn vr4{mr1}, r17, vr4
002278  8a913302  vmul.f.mz.rn vr3{mr1}, r7, vr3
00227c  0a924302  vmul.f.mz.rn vr4{mr1}, r7, vr4
002280  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
002284  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
002288  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
00228c  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
002290  3f2dfafe  blt.s r20, r15, -184
002294  00a00000  mfence { lm }
002298  3ff1a7fe  blt.s r15, r10, -932
00229c  1f018fd7  addli r2, r30, -5184
0022a0  9f018fd7  addli r3, r30, -5184
0022a4  1f030000  addli r6, zero, 0
0022a8  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0022ac  9f838100  addli r7, r3, 64
0022b0  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
0022b4  1f034300  addli r6, r6, 32
0022b8  9f810101  addli r3, r3, 128
0022bc  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
0022c0  86910000  vfloat2fp16_l.rn vr3, vr1
0022c4  86510100  vfloat2fp16_h.rn vr3, vr2
0022c8  46003102  vstore.mz vr3{mr1}, 0(r2)
0022cc  1f018100  addli r2, r2, 64
0022d0  3f6ff3fe  blt.s r6, r15, -40
0022d4  5b84ffff  j -992
0022d8  e3002f00  loadli.w r1,  16(r30)
0022dc  1f010010  addli r2, zero, 2048
0022e0  bbe02008  bneq r1, r2, 4152
0022e4  2ba30200  lui r6, 42
0022e8  803b0002  core_id r23
0022ec  1f030308  addli r6, r6, 1024
0022f0  3bd00b00  bneq r23, zero, 20
0022f4  1f010040  addli r2, zero, 8192
0022f8  ab0100f0  lui r3, 983040
0022fc  17113100  or r2, r2, r3
002300  7f016200  l_gm2sm r2, r6, 0(r[5:6])
002304  2bf10000  lui r2, 15
002308  e3401f00  loadli.w r1,  12(r30)
00230c  00200300  mfence { sm, gm }
002310  1b8c1b00  andi r24, r23, 1
002314  9f020006  addli r5, zero, 768
002318  1b11f1ff  ori r2, r2, 4095
00231c  80210104  csr_set csr3, r2
002320  1f010006  addli r2, zero, 768
002324  00d00100  sync_group
002328  37200c00  beq r24, zero, 8
00232c  9f02000a  addli r5, zero, 1280
002330  e3411f00  loadli.w r3,  12(r30)
002334  9f130000  addli r7, zero, 1
002338  3f8f7120  blt.s r3, r7, 17344
00233c  0b122c20  mul.s r4, r24, r2
002340  2bf1ffff  lui r2, 1048575
002344  abca0200  lui r21, 44
002348  2bcd0200  lui r26, 44
00234c  80510102  load_param_i r3, 2
002350  9f030000  addli r7, zero, 0
002354  1bc51b00  srli r10, r23, 1
002358  9bb52200  slli r11, r5, 2
00235c  9f280000  addli r17, zero, 2
002360  9f068fd7  addli r13, r30, -5184
002364  1f080005  addli r16, zero, 640
002368  1f090001  addli r18, zero, 128
00236c  9f098000  addli r19, zero, 64
002370  1f0a4000  addli r20, zero, 32
002374  9f0c0003  addli r25, zero, 384
002378  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00237c  1b1101f8  ori r2, r2, 3968
002380  9bc41100  srli r9, r3, 1
002384  9f010fd7  addli r3, r30, -5248
002388  9f8a0a08  addli r21, r21, 1024
00238c  1f0d0d0c  addli r26, r26, 1536
002390  67042fd6  storeli.w r2, -5312(r30)
002394  2bf10000  lui r2, 15
002398  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
00239c  1b1bf1ff  ori r22, r2, 4095
0023a0  db030000  j 28
0023a4  00a00300  mfence { lm, sm, gm }
0023a8  80210b04  csr_set csr3, r22
0023ac  00d00100  sync_group
0023b0  8b939310  add.s r7, r7, r9
0023b4  3fa01300  blt.s r7, r1, 8
0023b8  db15fdff  j -5972
0023bc  0b91a310  add.s r2, r7, r10
0023c0  cb9f20fe  ble.s r1, r2, -28
0023c4  e3001f00  loadli.w r1,  8(r30)
0023c8  0b111110  add.s r2, r2, r1
0023cc  9f007fd6  addli r1, r30, -5320
0023d0  1b31b100  slli r2, r2, 11
0023d4  6bd70000  load.d r[15:16], 0(r1)
0023d8  17114100  or r2, r2, r4
0023dc  33110128  sext_int2long r[3:4], r2
0023e0  973d1103  sll.d r[28:29], r[3:4], r17
0023e4  2b0100f0  lui r2, 983040
0023e8  0b27b711  add.ul r[15:16], r[15:16], r[28:29]
0023ec  17912500  or r2, r11, r2
0023f0  7f21d700  l_gm2lm r2, r13, 0(r[15:16])
0023f4  00a00200  mfence { lm, gm }
0023f8  3b260c00  bneq r24, zero, 392
0023fc  9f000fd7  addli r1, r30, -5248
002400  e3018fd6  loadli.w r3,  -5312(r30)
002404  1f010000  addli r2, zero, 0
002408  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
00240c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
002410  12313002  vadd.s.mz vr2{mr1}, zero, vr3
002414  12323002  vadd.s.mz vr4{mr1}, zero, vr3
002418  0b176110  add.s r14, r2, r6
00241c  0b962610  add.s r12, r13, r2
002420  9f810101  addli r3, r3, 128
002424  1f010104  addli r2, r2, 512
002428  9f000701  addli r1, r14, 128
00242c  4a100702  vloads_mask16.mz vr0{mr1}, 0(r14)
002430  1f048700  addli r8, r14, 64
002434  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
002438  9f078601  addli r15, r12, 192
00243c  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
002440  9f008701  addli r1, r14, 192
002444  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002448  1f048600  addli r8, r12, 64
00244c  c2950702  vload_mask16.mz vr11{mr1}, 0(r15)
002450  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
002454  9f000601  addli r1, r12, 128
002458  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
00245c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002460  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002464  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002468  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00246c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002470  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002474  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
002478  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
00247c  9f000702  addli r1, r14, 256
002480  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002484  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002488  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00248c  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002490  1f040603  addli r8, r12, 384
002494  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002498  9f008702  addli r1, r14, 320
00249c  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
0024a0  9f070602  addli r15, r12, 256
0024a4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0024a8  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0024ac  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0024b0  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0024b4  9f000703  addli r1, r14, 384
0024b8  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0024bc  1f078703  addli r14, r14, 448
0024c0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0024c4  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0024c8  9f008602  addli r1, r12, 320
0024cc  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
0024d0  1f068603  addli r12, r12, 448
0024d4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0024d8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0024dc  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0024e0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0024e4  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0024e8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0024ec  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0024f0  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
0024f4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0024f8  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0024fc  93800105  setlt.u r1, r3, r16
002500  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002504  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002508  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00250c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002510  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002514  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002518  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
00251c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002520  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002524  bbdb00fe  bneq r1, zero, -268
002528  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00252c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002530  9f000002  addli r1, zero, 256
002534  6af100c0  vsrl.p vr2, r1, vr0
002538  eaf110c0  vsrl.p vr3, r1, vr1
00253c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002540  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002544  6a7109c0  vsrl.p vr2, r18, vr0
002548  ea7119c0  vsrl.p vr3, r18, vr1
00254c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002550  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002554  6af109c0  vsrl.p vr2, r19, vr0
002558  eaf119c0  vsrl.p vr3, r19, vr1
00255c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002560  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002564  6a710ac0  vsrl.p vr2, r20, vr0
002568  ea711ac0  vsrl.p vr3, r20, vr1
00256c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002570  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002574  7a160040  vextracti.f r12, 0(vr0)
002578  7a910040  vextracti.f r2, 0(vr1)
00257c  5b650000  j 808
002580  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002584  abf0ffff  lui r1, 1048575
002588  9f080c00  addli r17, r24, 0
00258c  1f010000  addli r2, zero, 0
002590  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002594  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002598  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00259c  9b9100f8  ori r3, r1, 3968
0025a0  0b172310  add.s r14, r6, r2
0025a4  0b962610  add.s r12, r13, r2
0025a8  9f810101  addli r3, r3, 128
0025ac  1f010104  addli r2, r2, 512
0025b0  9f000731  addli r1, r14, 6272
0025b4  9f070730  addli r15, r14, 6144
0025b8  1f048731  addli r8, r14, 6336
0025bc  1f0c0618  addli r24, r12, 3072
0025c0  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
0025c4  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
0025c8  9f078730  addli r15, r14, 6208
0025cc  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
0025d0  1f040619  addli r8, r12, 3200
0025d4  9f008618  addli r1, r12, 3136
0025d8  42130c02  vload_mask16.mz vr6{mr1}, 0(r24)
0025dc  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
0025e0  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
0025e4  9f078619  addli r15, r12, 3264
0025e8  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0025ec  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
0025f0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0025f4  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0025f8  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0025fc  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
002600  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002604  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
002608  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
00260c  1f040732  addli r8, r14, 6400
002610  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
002614  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
002618  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00261c  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
002620  9f07061a  addli r15, r12, 3328
002624  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
002628  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00262c  9f00061b  addli r1, r12, 3456
002630  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
002634  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
002638  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
00263c  1f048732  addli r8, r14, 6464
002640  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002644  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002648  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
00264c  1f040733  addli r8, r14, 6528
002650  1f078733  addli r14, r14, 6592
002654  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
002658  1f04861a  addli r8, r12, 3392
00265c  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
002660  1f06861b  addli r12, r12, 3520
002664  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
002668  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00266c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
002670  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002674  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
002678  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00267c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002680  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
002684  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002688  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
00268c  13849105  setlt.u r8, r3, r25
002690  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002694  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002698  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00269c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0026a0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0026a4  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0026a8  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0026ac  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0026b0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0026b4  bb3b04fe  bneq r8, zero, -276
0026b8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0026bc  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0026c0  9f000002  addli r1, zero, 256
0026c4  1f060000  addli r12, zero, 0
0026c8  eaf110c0  vsrl.p vr3, r1, vr1
0026cc  6af100c0  vsrl.p vr2, r1, vr0
0026d0  abf0ffff  lui r1, 1048575
0026d4  1b9c00f8  ori r24, r1, 3968
0026d8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0026dc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0026e0  ea7119c0  vsrl.p vr3, r18, vr1
0026e4  6a7109c0  vsrl.p vr2, r18, vr0
0026e8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0026ec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0026f0  eaf119c0  vsrl.p vr3, r19, vr1
0026f4  6af109c0  vsrl.p vr2, r19, vr0
0026f8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0026fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002700  ea711ac0  vsrl.p vr3, r20, vr1
002704  6a710ac0  vsrl.p vr2, r20, vr0
002708  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00270c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002710  fa910040  vextracti.f r3, 0(vr1)
002714  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002718  7a110040  vextracti.f r2, 0(vr0)
00271c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002720  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002724  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002728  8b17c310  add.s r15, r6, r12
00272c  0b97c610  add.s r14, r13, r12
002730  1f0c0c01  addli r24, r24, 128
002734  1f060604  addli r12, r12, 512
002738  9f800718  addli r1, r15, 3072
00273c  1f840719  addli r8, r15, 3200
002740  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
002744  9f0b8701  addli r23, r14, 192
002748  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
00274c  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
002750  9f808718  addli r1, r15, 3136
002754  1f848719  addli r8, r15, 3264
002758  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
00275c  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002760  9f000701  addli r1, r14, 128
002764  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
002768  1f048700  addli r8, r14, 64
00276c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002770  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
002774  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002778  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00277c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002780  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002784  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002788  9f80071a  addli r1, r15, 3328
00278c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002790  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002794  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002798  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00279c  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
0027a0  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0027a4  9f80871a  addli r1, r15, 3392
0027a8  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
0027ac  9f0b0702  addli r23, r14, 256
0027b0  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0027b4  1f040703  addli r8, r14, 384
0027b8  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0027bc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0027c0  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0027c4  9f80071b  addli r1, r15, 3456
0027c8  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
0027cc  9f87871b  addli r15, r15, 3520
0027d0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0027d4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0027d8  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0027dc  9f008702  addli r1, r14, 320
0027e0  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
0027e4  1f078703  addli r14, r14, 448
0027e8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0027ec  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0027f0  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0027f4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0027f8  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
0027fc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002800  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002804  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
002808  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00280c  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
002810  93000c05  setlt.u r1, r24, r16
002814  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002818  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00281c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002820  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002824  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002828  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
00282c  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
002830  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002834  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002838  bbcb00fe  bneq r1, zero, -272
00283c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002840  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002844  9f000002  addli r1, zero, 256
002848  1f8c0800  addli r24, r17, 0
00284c  803b0002  core_id r23
002850  9f280000  addli r17, zero, 2
002854  6af100c0  vsrl.p vr2, r1, vr0
002858  eaf110c0  vsrl.p vr3, r1, vr1
00285c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002860  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002864  6a7109c0  vsrl.p vr2, r18, vr0
002868  ea7119c0  vsrl.p vr3, r18, vr1
00286c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002870  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002874  6af109c0  vsrl.p vr2, r19, vr0
002878  eaf119c0  vsrl.p vr3, r19, vr1
00287c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002880  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002884  6a710ac0  vsrl.p vr2, r20, vr0
002888  ea711ac0  vsrl.p vr3, r20, vr1
00288c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002890  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002894  fa100040  vextracti.f r1, 0(vr0)
002898  7a940040  vextracti.f r8, 0(vr1)
00289c  0b661110  add.f.rn r12, r2, r1
0028a0  0be18110  add.f.rn r2, r3, r8
0028a4  8b809330  div.u r1, r7, r9
0028a8  1f070000  addli r14, zero, 0
0028ac  9bb06000  slli r1, r1, 6
0028b0  9b800004  andi r1, r1, 64
0028b4  97907001  or r1, r1, r23
0028b8  9bb12000  slli r3, r1, 2
0028bc  9b80e007  andi r1, r1, 126
0028c0  0b945111  add.s r8, r3, r21
0028c4  9bb02000  slli r1, r1, 2
0028c8  7360c400  stores.w r12, 0(r8)
0028cc  0b94a111  add.s r8, r3, r26
0028d0  9b914100  ori r3, r3, 4
0028d4  1f068fd7  addli r12, r30, -5184
0028d8  73602400  stores.w r2, 0(r8)
0028dc  0b915111  add.s r2, r3, r21
0028e0  0b945011  add.s r8, r1, r21
0028e4  8b91a111  add.s r3, r3, r26
0028e8  8b90a011  add.s r1, r1, r26
0028ec  00a00300  mfence { lm, sm, gm }
0028f0  80210b04  csr_set csr3, r22
0028f4  00d00100  sync_group
0028f8  6f410100  loads.w r2, 0(r2)
0028fc  6f440400  loads.w r8, 0(r8)
002900  efc10100  loads.w r3, 0(r3)
002904  efc00000  loads.w r1, 0(r1)
002908  0b618110  add.f.rn r2, r2, r8
00290c  2b04003a  lui r8, 237568
002910  8be01110  add.f.rn r1, r3, r1
002914  8b618120  mul.f.rn r3, r2, r8
002918  8be08020  mul.f.rn r1, r1, r8
00291c  0be13120  mul.f.rn r2, r3, r3
002920  8be10158  neg.f r3, r3
002924  8be02018  sub.f.rn r1, r1, r2
002928  63013f00  loadli.w r2,  24(r30)
00292c  8be02010  add.f.rn r1, r1, r2
002930  2b01803f  lui r2, 260096
002934  8f800008  sqrt.f.rn r1, r1
002938  0f011118  div.f.rn r2, r2, r1
00293c  9f008600  addli r1, r12, 64
002940  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
002944  1f044700  addli r8, r14, 32
002948  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00294c  13848206  setle.u r8, r5, r8
002950  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
002954  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
002958  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
00295c  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
002960  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
002964  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002968  bb700400  bneq r8, zero, 60
00296c  9f000601  addli r1, r12, 128
002970  1f048601  addli r8, r12, 192
002974  1f078700  addli r14, r14, 64
002978  1f060602  addli r12, r12, 256
00297c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002980  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
002984  93075704  setlt.u r15, r14, r5
002988  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
00298c  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
002990  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
002994  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
002998  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00299c  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
0029a0  3bfe07fe  bneq r15, zero, -100
0029a4  6b510f00  load.d r[3:4], 0(r30)
0029a8  ab0000f0  lui r1, 983040
0029ac  00a00000  mfence { lm }
0029b0  97901500  or r1, r11, r1
0029b4  0b21b111  add.ul r[3:4], r[3:4], r[28:29]
0029b8  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
0029bc  00a00200  mfence { lm, gm }
0029c0  e3401f00  loadli.w r1,  12(r30)
0029c4  db3dffff  j -1556
0029c8  80300002  core_id r1
0029cc  bb800000  bneq r1, zero, 32
0029d0  63012f00  loadli.w r2,  16(r30)
0029d4  ab0100f0  lui r3, 983040
0029d8  1b311100  slli r2, r2, 1
0029dc  17113100  or r2, r2, r3
0029e0  abc10100  lui r3, 28
0029e4  9f810100  addli r3, r3, 0
0029e8  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0029ec  2bf10000  lui r2, 15
0029f0  e3411f00  loadli.w r3,  12(r30)
0029f4  00200300  mfence { sm, gm }
0029f8  1b11f1ff  ori r2, r2, 4095
0029fc  80210104  csr_set csr3, r2
002a00  00d00100  sync_group
002a04  cbd3111e  ble.s r3, r1, 15604
002a08  63012f00  loadli.w r2,  16(r30)
002a0c  e3412f00  loadli.w r3,  20(r30)
002a10  1f062000  addli r12, zero, 16
002a14  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002a18  1f140000  addli r8, zero, 1
002a1c  1f0b8fd7  addli r22, r30, -5184
002a20  9f050002  addli r11, zero, 256
002a24  ab06ffff  lui r13, 1048560
002a28  ab08807f  lui r17, 522240
002a2c  2b09c07f  lui r18, 523264
002a30  9f090001  addli r19, zero, 128
002a34  1f0a8000  addli r20, zero, 64
002a38  9f0a4000  addli r21, zero, 32
002a3c  9b321100  slli r5, r2, 1
002a40  0b123110  add.s r4, r2, r3
002a44  33010108  fix2float.rn r2, r2
002a48  1bb31100  slli r6, r3, 1
002a4c  67042fd4  storeli.w r2, -5568(r30)
002a50  1f71f2ff  addli r2, r4, -1
002a54  67085fd4  storeli.w r5, -5504(r30)
002a58  8b133130  div.s r7, r2, r3
002a5c  2bf1ffff  lui r2, 1048575
002a60  1b15f1ff  ori r10, r2, 4095
002a64  1f010fd7  addli r2, r30, -5248
002a68  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002a6c  6a200622  vor.u.mz vr0{mr1}, r12, vr0
002a70  1f018fd6  addli r2, r30, -5312
002a74  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002a78  2b710000  lui r2, 7
002a7c  1b18f1ff  ori r16, r2, 4095
002a80  db080000  j 68
002a84  9f028fd5  addli r5, r30, -5440
002a88  00a00000  mfence { lm }
002a8c  eb510f00  load.d r[4:5], 0(r30)
002a90  2b0100f0  lui r2, 983040
002a94  80540102  load_param_i r9, 2
002a98  6bdb0200  load.d r[23:24], 0(r5)
002a9c  e3020fd5  loadli.w r5,  -5504(r30)
002aa0  8b901410  add.s r1, r9, r1
002aa4  8ba16111  add.ul r[4:5], r[4:5], r[23:24]
002aa8  17912200  or r2, r5, r2
002aac  1f0b8fd7  addli r22, r30, -5184
002ab0  7fb16101  s_lm2gm r2, r22, 0(r[4:5])
002ab4  00a00200  mfence { lm, gm }
002ab8  63411f00  loadli.w r2,  12(r30)
002abc  3fa02000  blt.s r1, r2, 8
002ac0  5b870700  j 15416
002ac4  63011f00  loadli.w r2,  8(r30)
002ac8  9f047fd6  addli r9, r30, -5320
002acc  0b912010  add.s r2, r1, r2
002ad0  0b11f120  mul.s r2, r2, r15
002ad4  33110128  sext_int2long r[3:4], r2
002ad8  973b8102  sll.d r[24:25], r[3:4], r8
002adc  ebd10400  load.d r[4:5], 0(r9)
002ae0  2b0100f0  lui r2, 983040
002ae4  9f048fd5  addli r9, r30, -5440
002ae8  17912200  or r2, r5, r2
002aec  73b07401  store.d r[24:25], 0(r9)
002af0  8ba17111  add.ul r[4:5], r[4:5], r[24:25]
002af4  7fa16101  l_gm2lm r2, r22, 0(r[4:5])
002af8  00a00200  mfence { lm, gm }
002afc  bfdc8300  blt.s r7, r8, 820
002b00  9f010000  addli r3, zero, 0
002b04  1f010000  addli r2, zero, 0
002b08  1f0d0000  addli r26, zero, 0
002b0c  db0c0000  j 100
002b10  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
002b14  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
002b18  1f1d0d00  addli r26, r26, 1
002b1c  6af105c0  vsrl.p vr2, r11, vr0
002b20  eaf115c0  vsrl.p vr3, r11, vr1
002b24  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b28  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002b2c  6af109c0  vsrl.p vr2, r19, vr0
002b30  eaf119c0  vsrl.p vr3, r19, vr1
002b34  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b38  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002b3c  6a710ac0  vsrl.p vr2, r20, vr0
002b40  ea711ac0  vsrl.p vr3, r20, vr1
002b44  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b48  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002b4c  6af10ac0  vsrl.p vr2, r21, vr0
002b50  eaf11ac0  vsrl.p vr3, r21, vr1
002b54  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b58  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002b5c  7a120040  vextracti.f r4, 0(vr0)
002b60  fa920040  vextracti.f r5, 0(vr1)
002b64  8be14110  add.f.rn r3, r3, r4
002b68  0b615110  add.f.rn r2, r2, r5
002b6c  373b7d00  beq r26, r7, 716
002b70  1f020d00  addli r4, r26, 0
002b74  3730b700  beq r14, r11, 12
002b78  1722ad00  xor r4, r26, r10
002b7c  0b924310  add.s r4, r7, r4
002b80  9f020fd7  addli r5, r30, -5248
002b84  8b14e220  mul.s r9, r4, r14
002b88  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
002b8c  8b949718  sub.s r9, r15, r9
002b90  8b9de440  min.s r27, r9, r14
002b94  92322002  vadd.s.mz vr5{mr1}, zero, vr2
002b98  12322002  vadd.s.mz vr4{mr1}, zero, vr2
002b9c  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002ba0  bfcd8dfe  blt.s r27, r8, -144
002ba4  0b1b4320  mul.s r22, r6, r4
002ba8  1f020fd7  addli r4, r30, -5248
002bac  abcb0100  lui r23, 28
002bb0  1f0e0000  addli r28, zero, 0
002bb4  9f048fd7  addli r9, r30, -5184
002bb8  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
002bbc  9f8b0b00  addli r23, r23, 0
002bc0  12315002  vadd.s.mz vr2{mr1}, zero, vr5
002bc4  92315002  vadd.s.mz vr3{mr1}, zero, vr5
002bc8  12325002  vadd.s.mz vr4{mr1}, zero, vr5
002bcc  0b9c6b11  add.s r24, r23, r22
002bd0  0b926411  add.s r4, r9, r22
002bd4  9f028fd6  addli r5, r30, -5312
002bd8  4a030c02  vloads.mz vr6{mr1}, 0(r24)
002bdc  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
002be0  c2030202  vload.mz vr7{mr1}, 0(r4)
002be4  9f020fd7  addli r5, r30, -5248
002be8  9f0c8c00  addli r25, r24, 64
002bec  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
002bf0  9f028e00  addli r5, r28, 64
002bf4  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
002bf8  6ab57602  vand.s.mz vr10{mr1}, r13, vr7
002bfc  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
002c00  6ab36602  vand.s.mz vr6{mr1}, r13, vr6
002c04  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
002c08  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
002c0c  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
002c10  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
002c14  669503c0  vabs.f vr10, vr7
002c18  6a348402  vand.s.mz vr8{mr1}, r8, vr8
002c1c  ea349402  vand.s.mz vr9{mr1}, r8, vr9
002c20  72a1a842  vlt.u.mz mr2{mr1}, r17, vr10
002c24  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
002c28  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
002c2c  12348802  vadd.s.mz vr8{mr1}, r16, vr8
002c30  92349802  vadd.s.mz vr9{mr1}, r16, vr9
002c34  eab38602  vand.s.mz vr7{mr1}, r13, vr8
002c38  661403c0  vabs.f vr8, vr6
002c3c  6ab39602  vand.s.mz vr6{mr1}, r13, vr9
002c40  ea230934  vor.u.mh vr7{mr2}, r18, vr0
002c44  72a18842  vlt.u.mz mr2{mr1}, r17, vr8
002c48  6a230934  vor.u.mh vr6{mr2}, r18, vr0
002c4c  4a840c02  vloads.mz vr8{mr1}, 0(r25)
002c50  9f0c8200  addli r25, r4, 64
002c54  c2840c02  vload.mz vr9{mr1}, 0(r25)
002c58  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
002c5c  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
002c60  6ab36602  vand.s.mz vr6{mr1}, r13, vr6
002c64  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
002c68  eab49602  vand.s.mz vr9{mr1}, r13, vr9
002c6c  46007202  vstore.mz vr7{mr1}, 0(r4)
002c70  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002c74  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002c78  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
002c7c  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
002c80  6ab48602  vand.s.mz vr8{mr1}, r13, vr8
002c84  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002c88  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002c8c  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
002c90  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
002c94  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
002c98  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
002c9c  ea349402  vand.s.mz vr9{mr1}, r8, vr9
002ca0  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
002ca4  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
002ca8  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
002cac  661505c0  vabs.f vr10, vr10
002cb0  661404c0  vabs.f vr8, vr8
002cb4  92349802  vadd.s.mz vr9{mr1}, r16, vr9
002cb8  9235b802  vadd.s.mz vr11{mr1}, r16, vr11
002cbc  72a1a842  vlt.u.mz mr2{mr1}, r17, vr10
002cc0  eab49602  vand.s.mz vr9{mr1}, r13, vr9
002cc4  6ab5b602  vand.s.mz vr10{mr1}, r13, vr11
002cc8  ea240934  vor.u.mh vr9{mr2}, r18, vr0
002ccc  72a18842  vlt.u.mz mr2{mr1}, r17, vr8
002cd0  6a250934  vor.u.mh vr10{mr2}, r18, vr0
002cd4  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
002cd8  eab4a602  vand.s.mz vr9{mr1}, r13, vr10
002cdc  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
002ce0  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002ce4  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002ce8  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
002cec  46808c02  vstore.mz vr8{mr1}, 0(r25)
002cf0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002cf4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002cf8  4be85dfe  ble.s r27, r5, -488
002cfc  9f020c01  addli r5, r24, 128
002d00  9f0c0201  addli r25, r4, 128
002d04  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
002d08  1f028201  addli r4, r4, 192
002d0c  1f0e0e01  addli r28, r28, 128
002d10  9f8b0b02  addli r23, r23, 256
002d14  9f840402  addli r9, r9, 256
002d18  6a237622  vor.u.mz vr6{mr1}, r12, vr7
002d1c  4a840202  vloads.mz vr8{mr1}, 0(r5)
002d20  c2840c02  vload.mz vr9{mr1}, 0(r25)
002d24  9f028c01  addli r5, r24, 192
002d28  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
002d2c  6ab09602  vand.s.mz vr0{mr1}, r13, vr9
002d30  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
002d34  6ab48602  vand.s.mz vr8{mr1}, r13, vr8
002d38  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
002d3c  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
002d40  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
002d44  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
002d48  e69504c0  vabs.f vr11, vr9
002d4c  6a300402  vand.s.mz vr0{mr1}, r8, vr0
002d50  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
002d54  72a1b842  vlt.u.mz mr2{mr1}, r17, vr11
002d58  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
002d5c  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
002d60  12300802  vadd.s.mz vr0{mr1}, r16, vr0
002d64  1235a802  vadd.s.mz vr10{mr1}, r16, vr10
002d68  eab40602  vand.s.mz vr9{mr1}, r13, vr0
002d6c  661004c0  vabs.f vr0, vr8
002d70  6ab4a602  vand.s.mz vr8{mr1}, r13, vr10
002d74  ea247934  vor.u.mh vr9{mr2}, r18, vr7
002d78  72a10842  vlt.u.mz mr2{mr1}, r17, vr0
002d7c  6a247934  vor.u.mh vr8{mr2}, r18, vr7
002d80  4a800202  vloads.mz vr0{mr1}, 0(r5)
002d84  42050202  vload.mz vr10{mr1}, 0(r4)
002d88  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
002d8c  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
002d90  6ab5a602  vand.s.mz vr10{mr1}, r13, vr10
002d94  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
002d98  6ab48602  vand.s.mz vr8{mr1}, r13, vr8
002d9c  46809c02  vstore.mz vr9{mr1}, 0(r25)
002da0  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
002da4  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
002da8  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
002dac  6ab00602  vand.s.mz vr0{mr1}, r13, vr0
002db0  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
002db4  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
002db8  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
002dbc  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
002dc0  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
002dc4  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
002dc8  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
002dcc  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
002dd0  e69000c0  vabs.f vr1, vr1
002dd4  661000c0  vabs.f vr0, vr0
002dd8  1235a802  vadd.s.mz vr10{mr1}, r16, vr10
002ddc  9235b802  vadd.s.mz vr11{mr1}, r16, vr11
002de0  72a11842  vlt.u.mz mr2{mr1}, r17, vr1
002de4  6ab5a602  vand.s.mz vr10{mr1}, r13, vr10
002de8  eab0b602  vand.s.mz vr1{mr1}, r13, vr11
002dec  6a257934  vor.u.mh vr10{mr2}, r18, vr7
002df0  72a10842  vlt.u.mz mr2{mr1}, r17, vr0
002df4  ea207934  vor.u.mh vr1{mr2}, r18, vr7
002df8  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
002dfc  eab31602  vand.s.mz vr7{mr1}, r13, vr1
002e00  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
002e04  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
002e08  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002e0c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002e10  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
002e14  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
002e18  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
002e1c  46000202  vstore.mz vr0{mr1}, 0(r4)
002e20  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002e24  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002e28  bf16beff  blt.s r28, r27, -604
002e2c  db9cffff  j -796
002e30  1f010000  addli r2, zero, 0
002e34  9f010000  addli r3, zero, 0
002e38  00a00000  mfence { lm }
002e3c  3fa187fe  blt.s r15, r8, -952
002e40  63028fd4  loadli.w r4,  -5568(r30)
002e44  9f040000  addli r9, zero, 0
002e48  8f814118  div.f.rn r3, r3, r4
002e4c  0f014118  div.f.rn r2, r2, r4
002e50  0be23120  mul.f.rn r4, r3, r3
002e54  8be10158  neg.f r3, r3
002e58  0b614118  sub.f.rn r2, r2, r4
002e5c  63023f00  loadli.w r4,  24(r30)
002e60  0b614110  add.f.rn r2, r2, r4
002e64  2b02803f  lui r4, 260096
002e68  0f010108  sqrt.f.rn r2, r2
002e6c  0f012218  div.f.rn r2, r4, r2
002e70  1f028fd7  addli r4, r30, -5184
002e74  42020202  vload.mz vr4{mr1}, 0(r4)
002e78  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
002e7c  1f8b4400  addli r22, r9, 32
002e80  ea212622  vor.u.mz vr3{mr1}, r12, vr2
002e84  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002e88  6ab24602  vand.s.mz vr4{mr1}, r13, vr4
002e8c  92925102  vadd.f.mz.rn vr5{mr1}, r3, vr5
002e90  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
002e94  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002e98  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002e9c  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002ea0  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002ea4  6a336402  vand.s.mz vr6{mr1}, r8, vr6
002ea8  ea337402  vand.s.mz vr7{mr1}, r8, vr7
002eac  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002eb0  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002eb4  e69202c0  vabs.f vr5, vr5
002eb8  661202c0  vabs.f vr4, vr4
002ebc  12336802  vadd.s.mz vr6{mr1}, r16, vr6
002ec0  92337802  vadd.s.mz vr7{mr1}, r16, vr7
002ec4  72a15842  vlt.u.mz mr2{mr1}, r17, vr5
002ec8  6ab36602  vand.s.mz vr6{mr1}, r13, vr6
002ecc  eab27602  vand.s.mz vr5{mr1}, r13, vr7
002ed0  6a232934  vor.u.mh vr6{mr2}, r18, vr2
002ed4  72a14842  vlt.u.mz mr2{mr1}, r17, vr4
002ed8  ea222934  vor.u.mh vr5{mr2}, r18, vr2
002edc  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
002ee0  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
002ee4  46004202  vstore.mz vr4{mr1}, 0(r4)
002ee8  4bfe67fd  ble.s r15, r22, -1124
002eec  1f0b8200  addli r22, r4, 64
002ef0  9f848400  addli r9, r9, 64
002ef4  1f020201  addli r4, r4, 128
002ef8  42020b02  vload.mz vr4{mr1}, 0(r22)
002efc  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002f00  6ab24602  vand.s.mz vr4{mr1}, r13, vr4
002f04  92925102  vadd.f.mz.rn vr5{mr1}, r3, vr5
002f08  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
002f0c  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002f10  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002f14  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002f18  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002f1c  6a336402  vand.s.mz vr6{mr1}, r8, vr6
002f20  ea337402  vand.s.mz vr7{mr1}, r8, vr7
002f24  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002f28  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002f2c  e69202c0  vabs.f vr5, vr5
002f30  661202c0  vabs.f vr4, vr4
002f34  12336802  vadd.s.mz vr6{mr1}, r16, vr6
002f38  92337802  vadd.s.mz vr7{mr1}, r16, vr7
002f3c  72a15842  vlt.u.mz mr2{mr1}, r17, vr5
002f40  6ab36602  vand.s.mz vr6{mr1}, r13, vr6
002f44  eab27602  vand.s.mz vr5{mr1}, r13, vr7
002f48  6a232934  vor.u.mh vr6{mr2}, r18, vr2
002f4c  72a14842  vlt.u.mz mr2{mr1}, r17, vr4
002f50  ea222934  vor.u.mh vr5{mr2}, r18, vr2
002f54  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
002f58  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
002f5c  46002b02  vstore.mz vr2{mr1}, 0(r22)
002f60  3fdcf4fe  blt.s r9, r15, -236
002f64  5b64ffff  j -1248
002f68  80300002  core_id r1
002f6c  bb800000  bneq r1, zero, 32
002f70  63012f00  loadli.w r2,  16(r30)
002f74  ab0100f0  lui r3, 983040
002f78  1b311100  slli r2, r2, 1
002f7c  17113100  or r2, r2, r3
002f80  ab010200  lui r3, 32
002f84  9f810100  addli r3, r3, 0
002f88  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002f8c  2bf10000  lui r2, 15
002f90  e3411f00  loadli.w r3,  12(r30)
002f94  00200300  mfence { sm, gm }
002f98  1b11f1ff  ori r2, r2, 4095
002f9c  80210104  csr_set csr3, r2
002fa0  00d00100  sync_group
002fa4  4bdd111a  ble.s r3, r1, 14164
002fa8  e3012f00  loadli.w r3,  16(r30)
002fac  e3422f00  loadli.w r5,  20(r30)
002fb0  2bf4ffff  lui r8, 1048575
002fb4  2b080200  lui r16, 32
002fb8  9f068fd7  addli r13, r30, -5184
002fbc  9f040002  addli r9, zero, 256
002fc0  1f050001  addli r10, zero, 128
002fc4  9f058000  addli r11, zero, 64
002fc8  1f064000  addli r12, zero, 32
002fcc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002fd0  1b14f4ff  ori r8, r8, 4095
002fd4  1f080800  addli r16, r16, 0
002fd8  0b925110  add.s r4, r3, r5
002fdc  1bb11100  slli r2, r3, 1
002fe0  b3810108  fix2float.rn r3, r3
002fe4  1f73f2ff  addli r6, r4, -1
002fe8  1bb21200  slli r4, r5, 1
002fec  8b125330  div.s r5, r6, r5
002ff0  1f130000  addli r6, zero, 1
002ff4  5b070000  j 56
002ff8  00a00000  mfence { lm }
002ffc  6b5a0f00  load.d r[21:22], 0(r30)
003000  ab0900f0  lui r19, 983040
003004  9f068fd7  addli r13, r30, -5184
003008  97193101  or r19, r2, r19
00300c  8b281a11  add.ul r[18:19], r[21:22], r[18:19]
003010  005a0102  load_param_i r20, 2
003014  ffb9d800  s_lm2gm r19, r13, 0(r[18:19])
003018  8b101a10  add.s r1, r20, r1
00301c  00a00200  mfence { lm, gm }
003020  e3431f00  loadli.w r7,  12(r30)
003024  3fa07000  blt.s r1, r7, 8
003028  5bda0600  j 14032
00302c  e3031f00  loadli.w r7,  8(r30)
003030  ab0900f0  lui r19, 983040
003034  97193101  or r19, r2, r19
003038  8b987010  add.s r17, r1, r7
00303c  9f037fd6  addli r7, r30, -5320
003040  8b98f820  mul.s r17, r17, r15
003044  6bda0300  load.d r[21:22], 0(r7)
003048  b3980828  sext_int2long r[18:19], r17
00304c  97b86802  sll.d r[18:19], r[18:19], r6
003050  0b2a1a11  add.ul r[21:22], r[21:22], r[18:19]
003054  ff29da00  l_gm2lm r19, r13, 0(r[21:22])
003058  00a00200  mfence { lm, gm }
00305c  3fc76200  blt.s r5, r6, 464
003060  1f0a0000  addli r20, zero, 0
003064  9f090000  addli r19, zero, 0
003068  9f0a0000  addli r21, zero, 0
00306c  db0c0000  j 100
003070  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
003074  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003078  9f9a0a00  addli r21, r21, 1
00307c  6af134c0  vsrl.p vr2, r9, vr3
003080  6af214c0  vsrl.p vr4, r9, vr1
003084  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
003088  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00308c  ea7125c0  vsrl.p vr3, r10, vr2
003090  6a7215c0  vsrl.p vr4, r10, vr1
003094  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
003098  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00309c  eaf125c0  vsrl.p vr3, r11, vr2
0030a0  6af215c0  vsrl.p vr4, r11, vr1
0030a4  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0030a8  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0030ac  ea7126c0  vsrl.p vr3, r12, vr2
0030b0  6a7216c0  vsrl.p vr4, r12, vr1
0030b4  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0030b8  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0030bc  fa130140  vextracti.f r7, 0(vr2)
0030c0  fa960040  vextracti.f r13, 0(vr1)
0030c4  0b6a7a10  add.f.rn r20, r20, r7
0030c8  8be9d910  add.f.rn r19, r19, r13
0030cc  b7a55a00  beq r21, r5, 360
0030d0  1f8c0a00  addli r24, r21, 0
0030d4  37309700  beq r14, r9, 12
0030d8  17ab8a00  xor r22, r21, r8
0030dc  0b9c6211  add.s r24, r5, r22
0030e0  0b1bec20  mul.s r22, r24, r14
0030e4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0030e8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0030ec  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0030f0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0030f4  0b9b6719  sub.s r22, r15, r22
0030f8  0b1beb40  min.s r22, r22, r14
0030fc  bf5d6bfe  blt.s r22, r6, -140
003100  92300002  vadd.s.mz vr1{mr1}, zero, vr0
003104  12310002  vadd.s.mz vr2{mr1}, zero, vr0
003108  92310002  vadd.s.mz vr3{mr1}, zero, vr0
00310c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
003110  9f0b0000  addli r23, zero, 0
003114  0b1c8221  mul.s r24, r4, r24
003118  9f0c8fd7  addli r25, r30, -5184
00311c  1f0d0800  addli r26, r16, 0
003120  8b1d8d11  add.s r27, r26, r24
003124  9f838b00  addli r7, r23, 64
003128  ca820d02  vloads.mz vr5{mr1}, 0(r27)
00312c  1f8e8d00  addli r28, r27, 64
003130  4a030e02  vloads.mz vr6{mr1}, 0(r28)
003134  0b9e8c11  add.s r28, r25, r24
003138  c2030e02  vload.mz vr7{mr1}, 0(r28)
00313c  9f068e00  addli r13, r28, 64
003140  42840602  vload.mz vr8{mr1}, 0(r13)
003144  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
003148  92320002  vadd.s.mz vr5{mr1}, zero, vr0
00314c  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
003150  06b40300  vfp162float_l.rn vr8, vr7
003154  86f30300  vfp162float_h.rn vr7, vr7
003158  86340300  vfp162float_l.rn vr9, vr6
00315c  06730300  vfp162float_h.rn vr6, vr6
003160  86120400  vfloat2fp16_l.rn vr5, vr8
003164  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
003168  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
00316c  12340002  vadd.s.mz vr8{mr1}, zero, vr0
003170  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
003174  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
003178  06940400  vfloat2fp16_l.rn vr8, vr9
00317c  86d20300  vfloat2fp16_h.rn vr5, vr7
003180  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
003184  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
003188  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
00318c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003190  06540300  vfloat2fp16_h.rn vr8, vr6
003194  46005e02  vstore.mz vr5{mr1}, 0(r28)
003198  46808602  vstore.mz vr8{mr1}, 0(r13)
00319c  4b5b7bfe  ble.s r22, r7, -300
0031a0  9f830d01  addli r7, r27, 128
0031a4  9f060e01  addli r13, r28, 128
0031a8  9f8b0b01  addli r23, r23, 128
0031ac  1f0d0d02  addli r26, r26, 256
0031b0  9f8c0c02  addli r25, r25, 256
0031b4  ca820302  vloads.mz vr5{mr1}, 0(r7)
0031b8  9f838d01  addli r7, r27, 192
0031bc  c2830602  vload.mz vr7{mr1}, 0(r13)
0031c0  4a830302  vloads.mz vr6{mr1}, 0(r7)
0031c4  9f038e01  addli r7, r28, 192
0031c8  42840302  vload.mz vr8{mr1}, 0(r7)
0031cc  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
0031d0  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0031d4  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
0031d8  12330002  vadd.s.mz vr6{mr1}, zero, vr0
0031dc  86b40300  vfp162float_l.rn vr9, vr7
0031e0  86f30300  vfp162float_h.rn vr7, vr7
0031e4  86920400  vfloat2fp16_l.rn vr5, vr9
0031e8  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0031ec  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0031f0  86340400  vfp162float_l.rn vr9, vr8
0031f4  06740400  vfp162float_h.rn vr8, vr8
0031f8  06930400  vfloat2fp16_l.rn vr6, vr9
0031fc  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
003200  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
003204  86d20300  vfloat2fp16_h.rn vr5, vr7
003208  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
00320c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
003210  06530400  vfloat2fp16_h.rn vr6, vr8
003214  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
003218  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00321c  46805602  vstore.mz vr5{mr1}, 0(r13)
003220  46806302  vstore.mz vr6{mr1}, 0(r7)
003224  bffb6bff  blt.s r23, r22, -260
003228  5bc9ffff  j -440
00322c  9f090000  addli r19, zero, 0
003230  1f0a0000  addli r20, zero, 0
003234  00a00000  mfence { lm }
003238  3f8767fe  blt.s r15, r6, -576
00323c  0f0a3a18  div.f.rn r20, r20, r3
003240  8f893918  div.f.rn r19, r19, r3
003244  e3033f00  loadli.w r7,  24(r30)
003248  1f0b0000  addli r22, zero, 0
00324c  8b6a4a21  mul.f.rn r21, r20, r20
003250  0b6a0a58  neg.f r20, r20
003254  8be95919  sub.f.rn r19, r19, r21
003258  9f0a8fd7  addli r21, r30, -5184
00325c  8be97910  add.f.rn r19, r19, r7
003260  ab03803f  lui r7, 260096
003264  8f890908  sqrt.f.rn r19, r19
003268  8f893319  div.f.rn r19, r7, r19
00326c  c2800a02  vload.mz vr1{mr1}, 0(r21)
003270  9f0b4b00  addli r23, r22, 32
003274  06b10000  vfp162float_l.rn vr2, vr1
003278  86f00000  vfp162float_h.rn vr1, vr1
00327c  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003280  92111a02  vadd.f.mz.rn vr3{mr1}, r20, vr1
003284  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003288  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00328c  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
003290  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003294  06120100  vfloat2fp16_l.rn vr4, vr2
003298  06d20100  vfloat2fp16_h.rn vr4, vr3
00329c  46804a02  vstore.mz vr4{mr1}, 0(r21)
0032a0  4be577ff  ble.s r15, r23, -680
0032a4  9f8b8a00  addli r23, r21, 64
0032a8  1f0b8b00  addli r22, r22, 64
0032ac  9f8a0a01  addli r21, r21, 128
0032b0  42810b02  vload.mz vr2{mr1}, 0(r23)
0032b4  86310100  vfp162float_l.rn vr3, vr2
0032b8  06710100  vfp162float_h.rn vr2, vr2
0032bc  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
0032c0  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
0032c4  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
0032c8  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
0032cc  86900100  vfloat2fp16_l.rn vr1, vr3
0032d0  86500100  vfloat2fp16_h.rn vr1, vr2
0032d4  46801b02  vstore.mz vr1{mr1}, 0(r23)
0032d8  3f5efbfe  blt.s r22, r15, -108
0032dc  dba3ffff  j -740
0032e0  80300002  core_id r1
0032e4  1f210000  addli r2, zero, 2
0032e8  37a02018  beq r1, r2, 12296
0032ec  1f110000  addli r2, zero, 1
0032f0  37922014  beq r1, r2, 10372
0032f4  3be00018  bneq r1, zero, 12312
0032f8  63012f00  loadli.w r2,  16(r30)
0032fc  ab0100f0  lui r3, 983040
003300  1b312100  slli r2, r2, 2
003304  17113100  or r2, r2, r3
003308  ab710200  lui r3, 39
00330c  9f810108  addli r3, r3, 1024
003310  7f013200  l_gm2sm r2, r3, 0(r[5:6])
003314  5bff0500  j 12280
003318  80300002  core_id r1
00331c  bb800000  bneq r1, zero, 32
003320  63012f00  loadli.w r2,  16(r30)
003324  ab0100f0  lui r3, 983040
003328  1b312100  slli r2, r2, 2
00332c  17113100  or r2, r2, r3
003330  abd10200  lui r3, 45
003334  9f8101f0  addli r3, r3, -2048
003338  7f013200  l_gm2sm r2, r3, 0(r[5:6])
00333c  2bf10000  lui r2, 15
003340  e3411f00  loadli.w r3,  12(r30)
003344  00200300  mfence { sm, gm }
003348  1b11f1ff  ori r2, r2, 4095
00334c  80210104  csr_set csr3, r2
003350  00d00100  sync_group
003354  cb9e1118  ble.s r3, r1, 13220
003358  e3012f00  loadli.w r3,  16(r30)
00335c  e3422f00  loadli.w r5,  20(r30)
003360  abf4ffff  lui r9, 1048575
003364  abd80200  lui r17, 45
003368  1f0b8fd7  addli r22, r30, -5184
00336c  1f140000  addli r8, zero, 1
003370  1f050002  addli r10, zero, 256
003374  9f050001  addli r11, zero, 128
003378  1f068000  addli r12, zero, 64
00337c  9f064000  addli r13, zero, 32
003380  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003384  9b94f4ff  ori r9, r9, 4095
003388  9f8808f0  addli r17, r17, -2048
00338c  0b925110  add.s r4, r3, r5
003390  1bb12100  slli r2, r3, 2
003394  b3810108  fix2float.rn r3, r3
003398  1f73f2ff  addli r6, r4, -1
00339c  1bb22200  slli r4, r5, 2
0033a0  67043fd6  storeli.w r3, -5312(r30)
0033a4  9f010fd7  addli r3, r30, -5248
0033a8  8b125330  div.s r5, r6, r5
0033ac  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0033b0  5b070000  j 56
0033b4  00a00000  mfence { lm }
0033b8  6b530f00  load.d r[7:8], 0(r30)
0033bc  2b0800f0  lui r16, 983040
0033c0  1f0b8fd7  addli r22, r30, -5184
0033c4  005a0102  load_param_i r20, 2
0033c8  17180101  or r16, r2, r16
0033cc  8b101a10  add.s r1, r20, r1
0033d0  0b292311  add.ul r[19:20], r[7:8], r[19:20]
0033d4  7f386901  s_lm2gm r16, r22, 0(r[19:20])
0033d8  00a00200  mfence { lm, gm }
0033dc  e3411f00  loadli.w r3,  12(r30)
0033e0  3fa03000  blt.s r1, r3, 8
0033e4  db620600  j 13076
0033e8  e3011f00  loadli.w r3,  8(r30)
0033ec  0b983010  add.s r16, r1, r3
0033f0  9f210000  addli r3, zero, 2
0033f4  0b18f820  mul.s r16, r16, r15
0033f8  33190828  sext_int2long r[19:20], r16
0033fc  2b0800f0  lui r16, 983040
003400  17393902  sll.d r[19:20], r[19:20], r3
003404  9f017fd6  addli r3, r30, -5320
003408  17180101  or r16, r2, r16
00340c  6bd30100  load.d r[7:8], 0(r3)
003410  0b2a2311  add.ul r[21:22], r[7:8], r[19:20]
003414  7f286a01  l_gm2lm r16, r22, 0(r[21:22])
003418  00a00200  mfence { lm, gm }
00341c  bf978200  blt.s r5, r8, 484
003420  9f0a0000  addli r21, zero, 0
003424  1f0a0000  addli r20, zero, 0
003428  1f0b0000  addli r22, zero, 0
00342c  db0c0000  j 100
003430  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
003434  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003438  1f1b0b00  addli r22, r22, 1
00343c  6a7105c0  vsrl.p vr2, r10, vr0
003440  ea7115c0  vsrl.p vr3, r10, vr1
003444  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003448  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00344c  6af105c0  vsrl.p vr2, r11, vr0
003450  eaf115c0  vsrl.p vr3, r11, vr1
003454  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003458  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00345c  6a7106c0  vsrl.p vr2, r12, vr0
003460  ea7116c0  vsrl.p vr3, r12, vr1
003464  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003468  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00346c  6af106c0  vsrl.p vr2, r13, vr0
003470  eaf116c0  vsrl.p vr3, r13, vr1
003474  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003478  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00347c  fa110040  vextracti.f r3, 0(vr0)
003480  7a930040  vextracti.f r6, 0(vr1)
003484  8bea3a10  add.f.rn r21, r21, r3
003488  0b6a6a10  add.f.rn r20, r20, r6
00348c  b7755b00  beq r22, r5, 380
003490  1f080b00  addli r16, r22, 0
003494  3730a700  beq r14, r10, 12
003498  17289b00  xor r16, r22, r9
00349c  0b980211  add.s r16, r5, r16
0034a0  9f010fd7  addli r3, r30, -5248
0034a4  8b1be820  mul.s r23, r16, r14
0034a8  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0034ac  8b9b7719  sub.s r23, r15, r23
0034b0  8b9beb40  min.s r23, r23, r14
0034b4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0034b8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0034bc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0034c0  bfcd8bfe  blt.s r23, r8, -144
0034c4  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0034c8  1f0c0000  addli r24, zero, 0
0034cc  8b1c0221  mul.s r25, r4, r16
0034d0  1f0d8fd7  addli r26, r30, -5184
0034d4  9f8d0800  addli r27, r17, 0
0034d8  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0034dc  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0034e0  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0034e4  0b989d11  add.s r16, r27, r25
0034e8  0b1e9d11  add.s r28, r26, r25
0034ec  1f038800  addli r6, r16, 64
0034f0  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
0034f4  9f038801  addli r7, r16, 192
0034f8  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
0034fc  9f018e01  addli r3, r28, 192
003500  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
003504  1f030801  addli r6, r16, 128
003508  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
00350c  9f030e01  addli r7, r28, 128
003510  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
003514  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
003518  c2950302  vload_mask16.mz vr11{mr1}, 0(r7)
00351c  1f038e00  addli r6, r28, 64
003520  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
003524  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
003528  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
00352c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
003530  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
003534  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003538  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00353c  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
003540  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
003544  1f038c00  addli r6, r24, 64
003548  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
00354c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
003550  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003554  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
003558  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00355c  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
003560  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
003564  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
003568  4bab6bfe  ble.s r23, r6, -312
00356c  1f030802  addli r6, r16, 256
003570  9f038802  addli r7, r16, 320
003574  9f010e02  addli r3, r28, 256
003578  1f0c0c01  addli r24, r24, 128
00357c  9f8d0d04  addli r27, r27, 512
003580  1f0d0d04  addli r26, r26, 512
003584  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
003588  1f030803  addli r6, r16, 384
00358c  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
003590  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
003594  9f038e02  addli r7, r28, 320
003598  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
00359c  1f038803  addli r6, r16, 448
0035a0  1f088e03  addli r16, r28, 448
0035a4  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0035a8  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
0035ac  1f030e03  addli r6, r28, 384
0035b0  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0035b4  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0035b8  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
0035bc  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0035c0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0035c4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0035c8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0035cc  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0035d0  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
0035d4  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0035d8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0035dc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0035e0  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
0035e4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0035e8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0035ec  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0035f0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0035f4  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0035f8  bf3b7cff  blt.s r24, r23, -276
0035fc  dbc6ffff  j -460
003600  1f0a0000  addli r20, zero, 0
003604  9f0a0000  addli r21, zero, 0
003608  00a00000  mfence { lm }
00360c  bfa687fe  blt.s r15, r8, -600
003610  e3018fd6  loadli.w r3,  -5312(r30)
003614  1f0b0000  addli r22, zero, 0
003618  8f8a3a18  div.f.rn r21, r21, r3
00361c  0f083a18  div.f.rn r16, r20, r3
003620  e3013f00  loadli.w r3,  24(r30)
003624  0bea5a21  mul.f.rn r20, r21, r21
003628  0b684819  sub.f.rn r16, r16, r20
00362c  0bea0a58  neg.f r20, r21
003630  9f0a8fd7  addli r21, r30, -5184
003634  0b683810  add.f.rn r16, r16, r3
003638  ab01803f  lui r3, 260096
00363c  0f080808  sqrt.f.rn r16, r16
003640  0f880119  div.f.rn r16, r3, r16
003644  9f8b8a00  addli r23, r21, 64
003648  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
00364c  1f0c4b00  addli r24, r22, 32
003650  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
003654  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003658  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
00365c  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003660  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003664  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
003668  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
00366c  4ba587ff  ble.s r15, r24, -696
003670  9f8b0a01  addli r23, r21, 128
003674  1f8c8a01  addli r24, r21, 192
003678  1f0b8b00  addli r22, r22, 64
00367c  9f8a0a02  addli r21, r21, 256
003680  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
003684  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
003688  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
00368c  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003690  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003694  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003698  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
00369c  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
0036a0  bf1efbfe  blt.s r22, r15, -92
0036a4  5ba2ffff  j -752
0036a8  00310002  core_id r2
0036ac  ab630000  lui r7, 6
0036b0  9f100000  addli r1, zero, 1
0036b4  1f038fd7  addli r6, r30, -5184
0036b8  1f048000  addli r8, zero, 64
0036bc  1f050010  addli r10, zero, 2048
0036c0  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
0036c4  9b315100  slli r3, r2, 5
0036c8  00510102  load_param_i r2, 2
0036cc  9f830308  addli r7, r7, 1024
0036d0  9b345100  slli r9, r2, 5
0036d4  b3850128  zext_int2long r[12:13], r3
0036d8  ab0600f0  lui r13, 983040
0036dc  97b51502  sll.d r[12:13], r[12:13], r1
0036e0  9716d400  or r13, r8, r13
0036e4  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
0036e8  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
0036ec  9bb52100  slli r11, r3, 2
0036f0  8b913410  add.s r3, r9, r3
0036f4  00a00200  mfence { lm, gm }
0036f8  c2000302  vload.mz vr1{mr1}, 0(r6)
0036fc  1386a104  setlt.u r12, r3, r10
003700  8b957510  add.s r11, r11, r7
003704  9f868500  addli r13, r11, 64
003708  66c11180  vmerge_l.hf vr2, vr3, vr1
00370c  e6c011a0  vmerge_h.hf vr1, vr3, vr1
003710  4e902502  vstores_mask16.mz vr2{mr1}, 0(r11)
003714  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
003718  bb7e06fe  bneq r12, zero, -68
00371c  abf00000  lui r1, 15
003720  80310002  core_id r3
003724  9f020006  addli r5, zero, 768
003728  00a00300  mfence { lm, sm, gm }
00372c  9b90f0ff  ori r1, r1, 4095
003730  9b8d1100  andi r27, r3, 1
003734  9f010006  addli r3, zero, 768
003738  80a10004  csr_set csr3, r1
00373c  00d00100  sync_group
003740  37a00d00  beq r27, zero, 8
003744  9f02000a  addli r5, zero, 1280
003748  63421f00  loadli.w r4,  12(r30)
00374c  9f100000  addli r1, zero, 1
003750  bf2e1216  blt.s r4, r1, 12200
003754  9b451100  srli r11, r2, 1
003758  00310002  core_id r2
00375c  8b913d20  mul.s r3, r27, r3
003760  1f078fd7  addli r14, r30, -5184
003764  9bbb1200  slli r23, r5, 1
003768  1f040000  addli r8, zero, 0
00376c  9f797000  addli r19, zero, 63
003770  9f0a0005  addli r21, zero, 640
003774  2b09803f  lui r18, 260096
003778  1f0a2000  addli r20, zero, 16
00377c  9f340000  addli r9, zero, 3
003780  2bee7f00  lui r28, 2046
003784  9f571000  addli r15, zero, 13
003788  2be50700  lui r10, 126
00378c  1f221000  addli r4, zero, 10
003790  1f0b0003  addli r22, zero, 384
003794  1b461100  srli r12, r2, 1
003798  1bb12200  slli r2, r5, 2
00379c  67083fd4  storeli.w r3, -5504(r30)
0037a0  9f814200  addli r3, r5, 32
0037a4  0b11e110  add.s r2, r2, r14
0037a8  e70f3fd2  storeli.w r3, -5640(r30)
0037ac  8b91eb10  add.s r3, r23, r14
0037b0  1f0181ff  addli r2, r2, -64
0037b4  674f2fd2  storeli.w r2, -5644(r30)
0037b8  1f8181ff  addli r2, r3, -64
0037bc  abf100fc  lui r3, 1032207
0037c0  670f2fd2  storeli.w r2, -5648(r30)
0037c4  2bf1ffff  lui r2, 1048575
0037c8  9b9801c0  ori r17, r3, 3072
0037cc  00a00000  mfence { lm }
0037d0  e3411f00  loadli.w r3,  12(r30)
0037d4  e74ebfd3  storeli.w r27, -5652(r30)
0037d8  6704bfd4  storeli.w r11, -5568(r30)
0037dc  6700cfd4  storeli.w r12, -5632(r30)
0037e0  e74f7fd3  storeli.w r23, -5636(r30)
0037e4  1b1101f8  ori r2, r2, 3968
0037e8  e70e2fd2  storeli.w r2, -5656(r30)
0037ec  2bf10000  lui r2, 15
0037f0  1b11f1ff  ori r2, r2, 4095
0037f4  67082fd6  storeli.w r2, -5248(r30)
0037f8  2b710000  lui r2, 7
0037fc  1b13f1ff  ori r6, r2, 4095
003800  2b01ff03  lui r2, 16368
003804  1b18f13f  ori r16, r2, 1023
003808  1f018fd5  addli r2, r30, -5440
00380c  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
003810  db040000  j 36
003814  00a00300  mfence { lm, sm, gm }
003818  63010fd7  loadli.w r2,  -5248(r30)
00381c  80210104  csr_set csr3, r2
003820  00d00100  sync_group
003824  e3411f00  loadli.w r3,  12(r30)
003828  0b14b410  add.s r8, r8, r11
00382c  3f203400  blt.s r8, r3, 8
003830  db86faff  j -11212
003834  0b11c410  add.s r2, r8, r12
003838  4bff21fe  ble.s r3, r2, -36
00383c  e3011f00  loadli.w r3,  8(r30)
003840  0b113110  add.s r2, r2, r3
003844  8b01b430  div.u r3, r8, r11
003848  e3050fd5  loadli.w r11,  -5504(r30)
00384c  1b31b100  slli r2, r2, 11
003850  1711b100  or r2, r2, r11
003854  33160128  sext_int2long r[13:14], r2
003858  2b0100f0  lui r2, 983040
00385c  9bb16100  slli r3, r3, 6
003860  173c1602  sll.d r[25:26], r[13:14], r1
003864  9f067fd6  addli r13, r30, -5320
003868  17912b00  or r2, r23, r2
00386c  9b810104  andi r3, r3, 64
003870  ebd50600  load.d r[12:13], 0(r13)
003874  9f068fd6  addli r13, r30, -5312
003878  73b08601  store.d r[25:26], 0(r13)
00387c  0ba68511  add.ul r[13:14], r[12:13], r[25:26]
003880  7f21e600  l_gm2lm r2, r14, 0(r[13:14])
003884  00310002  core_id r2
003888  00a00200  mfence { lm, gm }
00388c  179d2100  or r26, r3, r2
003890  6301efd3  loadli.w r2,  -5648(r30)
003894  e341efd3  loadli.w r3,  -5644(r30)
003898  6306ffd3  loadli.w r12,  -5640(r30)
00389c  c2000102  vload.mz vr1{mr1}, 0(r2)
0038a0  1f06c6ff  addli r12, r12, -32
0038a4  9f8b81ff  addli r23, r3, -64
0038a8  1f0181ff  addli r2, r2, -64
0038ac  9386c904  setlt.u r13, r19, r12
0038b0  66c111a0  vmerge_h.hf vr2, vr3, vr1
0038b4  e6c01180  vmerge_l.hf vr1, vr3, vr1
0038b8  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
0038bc  9f8101ff  addli r3, r3, -128
0038c0  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
0038c4  3bef06fe  bneq r13, zero, -40
0038c8  1f010000  addli r2, zero, 0
0038cc  00a00000  mfence { lm }
0038d0  3ba60d00  bneq r27, zero, 392
0038d4  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0038d8  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0038dc  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0038e0  e301dfd3  loadli.w r3,  -5656(r30)
0038e4  8b167110  add.s r13, r2, r7
0038e8  0b162710  add.s r12, r14, r2
0038ec  9f810101  addli r3, r3, 128
0038f0  1f010104  addli r2, r2, 512
0038f4  9f850601  addli r11, r13, 128
0038f8  4a900602  vloads_mask16.mz vr0{mr1}, 0(r13)
0038fc  9f8b8600  addli r23, r13, 64
003900  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
003904  1f0c8601  addli r24, r12, 192
003908  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
00390c  9f858601  addli r11, r13, 192
003910  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
003914  9f0b8600  addli r23, r12, 64
003918  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
00391c  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
003920  9f050601  addli r11, r12, 128
003924  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
003928  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
00392c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
003930  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
003934  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
003938  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00393c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003940  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
003944  46908502  vstore_mask16.mz vr8{mr1}, 0(r11)
003948  9f850602  addli r11, r13, 256
00394c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003950  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003954  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003958  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
00395c  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
003960  9f858602  addli r11, r13, 320
003964  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
003968  1f0c0602  addli r24, r12, 256
00396c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003970  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003974  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003978  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
00397c  9f850603  addli r11, r13, 384
003980  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
003984  9f868603  addli r13, r13, 448
003988  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00398c  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
003990  9f058602  addli r11, r12, 320
003994  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
003998  9f060603  addli r13, r12, 384
00399c  1f068603  addli r12, r12, 448
0039a0  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
0039a4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0039a8  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
0039ac  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0039b0  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0039b4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0039b8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0039bc  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
0039c0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0039c4  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0039c8  93855105  setlt.u r11, r3, r21
0039cc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0039d0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0039d4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0039d8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0039dc  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0039e0  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
0039e4  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0039e8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0039ec  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0039f0  bbdb05fe  bneq r11, zero, -268
0039f4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0039f8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0039fc  1f010002  addli r2, zero, 256
003a00  6a7101c0  vsrl.p vr2, r2, vr0
003a04  ea7111c0  vsrl.p vr3, r2, vr1
003a08  1f010001  addli r2, zero, 128
003a0c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a10  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a14  6a7101c0  vsrl.p vr2, r2, vr0
003a18  ea7111c0  vsrl.p vr3, r2, vr1
003a1c  1f018000  addli r2, zero, 64
003a20  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a24  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a28  6a7101c0  vsrl.p vr2, r2, vr0
003a2c  ea7111c0  vsrl.p vr3, r2, vr1
003a30  1f014000  addli r2, zero, 32
003a34  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a38  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a3c  6a7101c0  vsrl.p vr2, r2, vr0
003a40  ea7111c0  vsrl.p vr3, r2, vr1
003a44  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a48  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a4c  7a110040  vextracti.f r2, 0(vr0)
003a50  fa910040  vextracti.f r3, 0(vr1)
003a54  5b660000  j 816
003a58  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003a5c  abf1ffff  lui r3, 1048575
003a60  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003a64  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003a68  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003a6c  9b9101f8  ori r3, r3, 3968
003a70  8b962310  add.s r13, r7, r2
003a74  0b162710  add.s r12, r14, r2
003a78  9f810101  addli r3, r3, 128
003a7c  1f010104  addli r2, r2, 512
003a80  9f850631  addli r11, r13, 6272
003a84  9f8b0630  addli r23, r13, 6144
003a88  1f8c8631  addli r24, r13, 6336
003a8c  9f0d0618  addli r27, r12, 3072
003a90  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
003a94  ca920b02  vloads_mask16.mz vr5{mr1}, 0(r23)
003a98  9f8b8630  addli r23, r13, 6208
003a9c  ca140c02  vloads_mask16.mz vr9{mr1}, 0(r24)
003aa0  9f058618  addli r11, r12, 3136
003aa4  1f0c8619  addli r24, r12, 3264
003aa8  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
003aac  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
003ab0  9f0b0619  addli r23, r12, 3200
003ab4  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
003ab8  c2950502  vload_mask16.mz vr11{mr1}, 0(r11)
003abc  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
003ac0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003ac4  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
003ac8  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
003acc  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
003ad0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003ad4  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
003ad8  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
003adc  9f8b0632  addli r23, r13, 6400
003ae0  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
003ae4  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
003ae8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003aec  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
003af0  1f0c061a  addli r24, r12, 3328
003af4  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
003af8  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
003afc  9f05061b  addli r11, r12, 3456
003b00  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
003b04  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
003b08  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
003b0c  9f8b8632  addli r23, r13, 6464
003b10  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003b14  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003b18  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
003b1c  9f8b0633  addli r23, r13, 6528
003b20  9f868633  addli r13, r13, 6592
003b24  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
003b28  9f0b861a  addli r23, r12, 3392
003b2c  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
003b30  1f06861b  addli r12, r12, 3520
003b34  93866105  setlt.u r13, r3, r22
003b38  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
003b3c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003b40  c2930502  vload_mask16.mz vr7{mr1}, 0(r11)
003b44  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003b48  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
003b4c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003b50  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003b54  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
003b58  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003b5c  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
003b60  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003b64  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003b68  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003b6c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003b70  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003b74  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
003b78  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
003b7c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003b80  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003b84  bbbb06fe  bneq r13, zero, -276
003b88  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003b8c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003b90  1f010002  addli r2, zero, 256
003b94  abf5ffff  lui r11, 1048575
003b98  9f0b0000  addli r23, zero, 0
003b9c  1b9605f8  ori r12, r11, 3968
003ba0  ea7111c0  vsrl.p vr3, r2, vr1
003ba4  6a7101c0  vsrl.p vr2, r2, vr0
003ba8  1f010001  addli r2, zero, 128
003bac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003bb0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003bb4  ea7111c0  vsrl.p vr3, r2, vr1
003bb8  6a7101c0  vsrl.p vr2, r2, vr0
003bbc  1f018000  addli r2, zero, 64
003bc0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003bc4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003bc8  ea7111c0  vsrl.p vr3, r2, vr1
003bcc  6a7101c0  vsrl.p vr2, r2, vr0
003bd0  1f014000  addli r2, zero, 32
003bd4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003bd8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003bdc  ea7111c0  vsrl.p vr3, r2, vr1
003be0  6a7101c0  vsrl.p vr2, r2, vr0
003be4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003be8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003bec  fa910040  vextracti.f r3, 0(vr1)
003bf0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003bf4  7a110040  vextracti.f r2, 0(vr0)
003bf8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003bfc  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003c00  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003c04  8b9d7311  add.s r27, r7, r23
003c08  8b167711  add.s r13, r14, r23
003c0c  1f060601  addli r12, r12, 128
003c10  9f8b0b04  addli r23, r23, 512
003c14  9f850d18  addli r11, r27, 3072
003c18  1f8c0d19  addli r24, r27, 3200
003c1c  42940602  vload_mask16.mz vr8{mr1}, 0(r13)
003c20  9f8c8601  addli r25, r13, 192
003c24  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
003c28  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
003c2c  9f858d18  addli r11, r27, 3136
003c30  1f8c8d19  addli r24, r27, 3264
003c34  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
003c38  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
003c3c  9f850601  addli r11, r13, 128
003c40  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
003c44  1f8c8600  addli r24, r13, 64
003c48  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
003c4c  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
003c50  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
003c54  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
003c58  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
003c5c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
003c60  46908502  vstore_mask16.mz vr8{mr1}, 0(r11)
003c64  9f850d1a  addli r11, r27, 3328
003c68  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003c6c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003c70  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003c74  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003c78  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
003c7c  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
003c80  9f858d1a  addli r11, r27, 3392
003c84  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
003c88  9f8c0602  addli r25, r13, 256
003c8c  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003c90  1f8c0603  addli r24, r13, 384
003c94  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003c98  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003c9c  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
003ca0  9f850d1b  addli r11, r27, 3456
003ca4  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003ca8  9f8d8d1b  addli r27, r27, 3520
003cac  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003cb0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003cb4  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
003cb8  9f858602  addli r11, r13, 320
003cbc  4a950d02  vloads_mask16.mz vr10{mr1}, 0(r27)
003cc0  9f868603  addli r13, r13, 448
003cc4  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
003cc8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003ccc  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
003cd0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003cd4  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
003cd8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003cdc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003ce0  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003ce4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003ce8  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
003cec  93055605  setlt.u r11, r12, r21
003cf0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003cf4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003cf8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003cfc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003d00  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003d04  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003d08  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
003d0c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003d10  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003d14  bbcb05fe  bneq r11, zero, -272
003d18  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003d1c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003d20  9f050002  addli r11, zero, 256
003d24  e34ddfd3  loadli.w r27,  -5652(r30)
003d28  6af105c0  vsrl.p vr2, r11, vr0
003d2c  eaf115c0  vsrl.p vr3, r11, vr1
003d30  9f050001  addli r11, zero, 128
003d34  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003d38  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003d3c  6af105c0  vsrl.p vr2, r11, vr0
003d40  eaf115c0  vsrl.p vr3, r11, vr1
003d44  9f058000  addli r11, zero, 64
003d48  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003d4c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003d50  6af105c0  vsrl.p vr2, r11, vr0
003d54  eaf115c0  vsrl.p vr3, r11, vr1
003d58  9f054000  addli r11, zero, 32
003d5c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003d60  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003d64  6af105c0  vsrl.p vr2, r11, vr0
003d68  eaf115c0  vsrl.p vr3, r11, vr1
003d6c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003d70  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003d74  fa150040  vextracti.f r11, 0(vr0)
003d78  7a960040  vextracti.f r12, 0(vr1)
003d7c  0b61b110  add.f.rn r2, r2, r11
003d80  8be1c110  add.f.rn r3, r3, r12
003d84  2b860000  lui r12, 8
003d88  ab860000  lui r13, 8
003d8c  9b352d00  slli r11, r26, 2
003d90  1f060608  addli r12, r12, 1024
003d94  9f86060c  addli r13, r13, 1536
003d98  9f0b0600  addli r23, r12, 0
003d9c  1f8c0600  addli r24, r13, 0
003da0  0b967511  add.s r12, r11, r23
003da4  8b968511  add.s r13, r11, r24
003da8  73e03600  stores.w r3, 0(r13)
003dac  73602600  stores.w r2, 0(r12)
003db0  9b914500  ori r3, r11, 4
003db4  9f060000  addli r13, zero, 0
003db8  00a00300  mfence { lm, sm, gm }
003dbc  63010fd7  loadli.w r2,  -5248(r30)
003dc0  8b957111  add.s r11, r3, r23
003dc4  8b918111  add.s r3, r3, r24
003dc8  80210104  csr_set csr3, r2
003dcc  1b01ed07  andi r2, r26, 126
003dd0  00d00100  sync_group
003dd4  efc50500  loads.w r11, 0(r11)
003dd8  efc10100  loads.w r3, 0(r3)
003ddc  1b312100  slli r2, r2, 2
003de0  0b167111  add.s r12, r2, r23
003de4  0b118111  add.s r2, r2, r24
003de8  6f460600  loads.w r12, 0(r12)
003dec  6f410100  loads.w r2, 0(r2)
003df0  8be5c510  add.f.rn r11, r11, r12
003df4  2b06003a  lui r12, 237568
003df8  0be12110  add.f.rn r2, r3, r2
003dfc  8be1c520  mul.f.rn r3, r11, r12
003e00  0b61c120  mul.f.rn r2, r2, r12
003e04  1f068fd7  addli r12, r30, -5184
003e08  8be53120  mul.f.rn r11, r3, r3
003e0c  8be10158  neg.f r3, r3
003e10  0b61b118  sub.f.rn r2, r2, r11
003e14  e3053f00  loadli.w r11,  24(r30)
003e18  0b61b110  add.f.rn r2, r2, r11
003e1c  0f010108  sqrt.f.rn r2, r2
003e20  0f012918  div.f.rn r2, r18, r2
003e24  9f058600  addli r11, r12, 64
003e28  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
003e2c  9f8b4600  addli r23, r13, 32
003e30  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
003e34  938b7207  setle.u r23, r5, r23
003e38  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
003e3c  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
003e40  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
003e44  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
003e48  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
003e4c  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
003e50  bbf00b00  bneq r23, zero, 60
003e54  9f050601  addli r11, r12, 128
003e58  9f0b8601  addli r23, r12, 192
003e5c  9f868600  addli r13, r13, 64
003e60  1f060602  addli r12, r12, 256
003e64  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
003e68  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
003e6c  138c5604  setlt.u r24, r13, r5
003e70  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
003e74  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
003e78  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
003e7c  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
003e80  46900502  vstore_mask16.mz vr0{mr1}, 0(r11)
003e84  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
003e88  3b7e0cfe  bneq r24, zero, -100
003e8c  1f018fd7  addli r2, r30, -5184
003e90  9f018fd7  addli r3, r30, -5184
003e94  1f060000  addli r12, zero, 0
003e98  00a00000  mfence { lm }
003e9c  9f858100  addli r11, r3, 64
003ea0  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
003ea4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003ea8  1f064600  addli r12, r12, 32
003eac  9f810101  addli r3, r3, 128
003eb0  ea211a22  vor.u.mz vr3{mr1}, r20, vr1
003eb4  42910502  vload_mask16.mz vr2{mr1}, 0(r11)
003eb8  93055604  setlt.u r11, r12, r5
003ebc  6eb201c2  vsrl.s.mz vr4{mr1}, vr3, vr0
003ec0  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003ec4  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
003ec8  eab13002  vand.s.mz vr3{mr1}, r1, vr3
003ecc  16304002  vadd.s.mz vr0{mr1}, vr0, vr4
003ed0  6aa21422  vor.u.mz vr4{mr1}, r9, vr1
003ed4  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
003ed8  eaa11722  vor.u.mz vr3{mr1}, r15, vr1
003edc  ea201222  vor.u.mz vr1{mr1}, r4, vr1
003ee0  12300302  vadd.s.mz vr0{mr1}, r6, vr0
003ee4  12312302  vadd.s.mz vr2{mr1}, r6, vr2
003ee8  eeb201c2  vsrl.s.mz vr5{mr1}, vr3, vr0
003eec  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
003ef0  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003ef4  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
003ef8  6a325502  vand.s.mz vr4{mr1}, r10, vr5
003efc  6a300e02  vand.s.mz vr0{mr1}, r28, vr0
003f00  ea313502  vand.s.mz vr3{mr1}, r10, vr3
003f04  6a312e02  vand.s.mz vr2{mr1}, r28, vr2
003f08  6a300922  vor.s.mz vr0{mr1}, r18, vr0
003f0c  6a324922  vor.s.mz vr4{mr1}, r18, vr4
003f10  ea313922  vor.s.mz vr3{mr1}, r18, vr3
003f14  6a312922  vor.s.mz vr2{mr1}, r18, vr2
003f18  06100020  vfloat2fp16_l.rz vr0, vr0
003f1c  86d10120  vfloat2fp16_h.rz vr3, vr3
003f20  06500120  vfloat2fp16_h.rz vr0, vr2
003f24  86110220  vfloat2fp16_l.rz vr3, vr4
003f28  6a300802  vand.s.mz vr0{mr1}, r16, vr0
003f2c  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
003f30  eab01802  vand.s.mz vr1{mr1}, r17, vr1
003f34  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
003f38  46000102  vstore.mz vr0{mr1}, 0(r2)
003f3c  1f018100  addli r2, r2, 64
003f40  3bfd05fe  bneq r11, zero, -164
003f44  9f018fd6  addli r3, r30, -5312
003f48  eb550f00  load.d r[12:13], 0(r30)
003f4c  2b0100f0  lui r2, 983040
003f50  ebdb0100  load.d r[24:25], 0(r3)
003f54  8ba57511  add.ul r[12:13], r[12:13], r[24:25]
003f58  e34bffd3  loadli.w r23,  -5636(r30)
003f5c  00a00000  mfence { lm }
003f60  17912b00  or r2, r23, r2
003f64  7fb1e500  s_lm2gm r2, r14, 0(r[12:13])
003f68  1f018fd5  addli r2, r30, -5440
003f6c  00a00200  mfence { lm, gm }
003f70  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
003f74  e3058fd4  loadli.w r11,  -5568(r30)
003f78  63060fd4  loadli.w r12,  -5632(r30)
003f7c  5b15ffff  j -1880
003f80  003b0002  core_id r22
003f84  63012f00  loadli.w r2,  16(r30)
003f88  9b305b00  slli r1, r22, 5
003f8c  cb211100  ble.s r2, r1, 104
003f90  80530102  load_param_i r7, 2
003f94  2bc40000  lui r8, 12
003f98  1f110000  addli r2, zero, 1
003f9c  9f018fd7  addli r3, r30, -5184
003fa0  1f038000  addli r6, zero, 64
003fa4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003fa8  9bb35300  slli r7, r7, 5
003fac  1f0404f0  addli r8, r8, -2048
003fb0  b3840028  zext_int2long r[10:11], r1
003fb4  ab0500f0  lui r11, 983040
003fb8  97b42402  sll.d r[10:11], r[10:11], r2
003fbc  9715b300  or r11, r6, r11
003fc0  8b249210  add.ul r[10:11], r[5:6], r[10:11]
003fc4  ffa53400  l_gm2lm r11, r3, 0(r[10:11])
003fc8  9bb42000  slli r9, r1, 2
003fcc  8b901310  add.s r1, r7, r1
003fd0  00a00200  mfence { lm, gm }
003fd4  c2800102  vload.mz vr1{mr1}, 0(r3)
003fd8  8b948410  add.s r9, r9, r8
003fdc  1f858400  addli r10, r9, 64
003fe0  66411080  vmerge_l.hf vr2, vr0, vr1
003fe4  e64010a0  vmerge_h.hf vr1, vr0, vr1
003fe8  4e902402  vstores_mask16.mz vr2{mr1}, 0(r9)
003fec  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
003ff0  3f8ff0fe  blt.s r1, r15, -64
003ff4  abf00000  lui r1, 15
003ff8  63411f00  loadli.w r2,  12(r30)
003ffc  00a00300  mfence { lm, sm, gm }
004000  9b90f0ff  ori r1, r1, 4095
004004  80a10004  csr_set csr3, r1
004008  00d00100  sync_group
00400c  cb3b6113  ble.s r2, r22, 9964
004010  e3002f00  loadli.w r1,  16(r30)
004014  63412f00  loadli.w r2,  20(r30)
004018  9f038fd7  addli r7, r30, -5184
00401c  1f150000  addli r10, zero, 1
004020  9f054000  addli r11, zero, 32
004024  1f747000  addli r8, zero, 63
004028  1f080002  addli r16, zero, 256
00402c  9f080001  addli r17, zero, 128
004030  1f098000  addli r18, zero, 64
004034  ab09803f  lui r19, 260096
004038  abeb7f00  lui r23, 2046
00403c  abec0700  lui r25, 126
004040  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004044  8b912010  add.s r3, r1, r2
004048  33820008  fix2float.rn r4, r1
00404c  1bb31000  slli r6, r1, 1
004050  9bb22000  slli r5, r1, 2
004054  9f804000  addli r1, r1, 32
004058  9b342100  slli r9, r2, 2
00405c  e74f1fd2  storeli.w r1, -5636(r30)
004060  8b907210  add.s r1, r5, r7
004064  9ff1f1ff  addli r3, r3, -1
004068  67004fd4  storeli.w r4, -5632(r30)
00406c  0b922130  div.s r4, r3, r2
004070  9f8080ff  addli r1, r1, -64
004074  8b117310  add.s r3, r6, r7
004078  e70f1fd2  storeli.w r1, -5640(r30)
00407c  9f8081ff  addli r1, r3, -64
004080  674f1fd2  storeli.w r1, -5644(r30)
004084  abf0ffff  lui r1, 1048575
004088  00a00000  mfence { lm }
00408c  67046fd4  storeli.w r6, -5568(r30)
004090  9b90f0ff  ori r1, r1, 4095
004094  67041fd6  storeli.w r1, -5312(r30)
004098  ab700000  lui r1, 7
00409c  9b9af0ff  ori r21, r1, 4095
0040a0  ab00ff03  lui r1, 16368
0040a4  1b9df03f  ori r26, r1, 1023
0040a8  abf000fc  lui r1, 1032207
0040ac  1b9e00c0  ori r28, r1, 3072
0040b0  9f000fd7  addli r1, r30, -5248
0040b4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0040b8  db080000  j 68
0040bc  9f010fd5  addli r3, r30, -5504
0040c0  eb500f00  load.d r[2:3], 0(r30)
0040c4  9f038fd7  addli r7, r30, -5184
0040c8  ebd20100  load.d r[6:7], 0(r3)
0040cc  00a00000  mfence { lm }
0040d0  ab0100f0  lui r3, 983040
0040d4  8ba05010  add.ul r[2:3], r[2:3], r[6:7]
0040d8  63038fd4  loadli.w r6,  -5568(r30)
0040dc  80520102  load_param_i r5, 2
0040e0  0b9b6211  add.s r22, r5, r22
0040e4  97113300  or r3, r6, r3
0040e8  ffb17000  s_lm2gm r3, r7, 0(r[2:3])
0040ec  00a00200  mfence { lm, gm }
0040f0  e3401f00  loadli.w r1,  12(r30)
0040f4  3f201b00  blt.s r22, r1, 8
0040f8  5bc00400  j 9728
0040fc  e3001f00  loadli.w r1,  8(r30)
004100  9f027fd6  addli r5, r30, -5320
004104  8b101b10  add.s r1, r22, r1
004108  8b90f020  mul.s r1, r1, r15
00410c  b3900028  sext_int2long r[2:3], r1
004110  17b6a002  sll.d r[13:14], r[2:3], r10
004114  6bd10200  load.d r[3:4], 0(r5)
004118  ab0000f0  lui r1, 983040
00411c  9f020fd5  addli r5, r30, -5504
004120  97101300  or r1, r6, r1
004124  73b0c200  store.d r[13:14], 0(r5)
004128  0b21c110  add.ul r[3:4], r[3:4], r[13:14]
00412c  ff207100  l_gm2lm r1, r7, 0(r[3:4])
004130  00a00200  mfence { lm, gm }
004134  bff0b700  blt.s r15, r11, 60
004138  e340efd3  loadli.w r1,  -5644(r30)
00413c  6301ffd3  loadli.w r2,  -5640(r30)
004140  e341ffd3  loadli.w r3,  -5636(r30)
004144  c2800002  vload.mz vr1{mr1}, 0(r1)
004148  9f81c1ff  addli r3, r3, -32
00414c  1f0381ff  addli r6, r2, -64
004150  9f8080ff  addli r1, r1, -64
004154  93023404  setlt.u r5, r8, r3
004158  664110a0  vmerge_h.hf vr2, vr0, vr1
00415c  e6401080  vmerge_l.hf vr1, vr0, vr1
004160  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
004164  1f0101ff  addli r2, r2, -128
004168  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
00416c  3bef02fe  bneq r5, zero, -40
004170  670c6fd5  storeli.w r22, -5440(r30)
004174  00a00000  mfence { lm }
004178  bf57a200  blt.s r4, r10, 500
00417c  9f010000  addli r3, zero, 0
004180  9f020000  addli r5, zero, 0
004184  1f010000  addli r2, zero, 0
004188  db0d0000  j 108
00418c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004190  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004194  1f110100  addli r2, r2, 1
004198  6a7108c0  vsrl.p vr2, r16, vr0
00419c  ea7118c0  vsrl.p vr3, r16, vr1
0041a0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0041a4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0041a8  6af108c0  vsrl.p vr2, r17, vr0
0041ac  eaf118c0  vsrl.p vr3, r17, vr1
0041b0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0041b4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0041b8  6a7109c0  vsrl.p vr2, r18, vr0
0041bc  ea7119c0  vsrl.p vr3, r18, vr1
0041c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0041c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0041c8  6af105c0  vsrl.p vr2, r11, vr0
0041cc  eaf115c0  vsrl.p vr3, r11, vr1
0041d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0041d4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0041d8  fa100040  vextracti.f r1, 0(vr0)
0041dc  7a930040  vextracti.f r6, 0(vr1)
0041e0  8be11110  add.f.rn r3, r3, r1
0041e4  9f000fd7  addli r1, r30, -5248
0041e8  8be26210  add.f.rn r5, r5, r6
0041ec  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0041f0  37164100  beq r2, r4, 388
0041f4  9f000100  addli r1, r2, 0
0041f8  37400701  beq r14, r16, 16
0041fc  e3008fd6  loadli.w r1,  -5312(r30)
004200  97201100  xor r1, r2, r1
004204  8b101210  add.s r1, r4, r1
004208  0b93e020  mul.s r6, r1, r14
00420c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
004210  92310002  vadd.s.mz vr3{mr1}, zero, vr0
004214  12310002  vadd.s.mz vr2{mr1}, zero, vr0
004218  92300002  vadd.s.mz vr1{mr1}, zero, vr0
00421c  0b936718  sub.s r6, r15, r6
004220  8b13e340  min.s r7, r6, r14
004224  bfada3fe  blt.s r7, r10, -152
004228  9f060fd7  addli r13, r30, -5248
00422c  2bc60000  lui r12, 12
004230  0b931420  mul.s r6, r9, r1
004234  1f040000  addli r8, zero, 0
004238  9f008fd7  addli r1, r30, -5184
00423c  42920602  vload_mask16.mz vr4{mr1}, 0(r13)
004240  1f0606f0  addli r12, r12, -2048
004244  92304002  vadd.s.mz vr1{mr1}, zero, vr4
004248  12314002  vadd.s.mz vr2{mr1}, zero, vr4
00424c  92314002  vadd.s.mz vr3{mr1}, zero, vr4
004250  0b1a6610  add.s r20, r12, r6
004254  8b966010  add.s r13, r1, r6
004258  1f0b8a00  addli r22, r20, 64
00425c  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
004260  1f0c8a01  addli r24, r20, 192
004264  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
004268  9f8d8601  addli r27, r13, 192
00426c  4a130b02  vloads_mask16.mz vr6{mr1}, 0(r22)
004270  1f0b0a01  addli r22, r20, 128
004274  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
004278  1f8c0601  addli r24, r13, 128
00427c  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
004280  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
004284  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
004288  1f8b8600  addli r22, r13, 64
00428c  42150b02  vload_mask16.mz vr10{mr1}, 0(r22)
004290  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004294  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
004298  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00429c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0042a0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0042a4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0042a8  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
0042ac  46106b02  vstore_mask16.mz vr6{mr1}, 0(r22)
0042b0  1f0b8400  addli r22, r8, 64
0042b4  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
0042b8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0042bc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0042c0  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0042c4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0042c8  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
0042cc  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
0042d0  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0042d4  cbea63ff  ble.s r7, r22, -328
0042d8  1f0c0a02  addli r24, r20, 256
0042dc  9f0d8a02  addli r27, r20, 320
0042e0  1f8b0602  addli r22, r13, 256
0042e4  1f040401  addli r8, r8, 128
0042e8  1f060604  addli r12, r12, 512
0042ec  9f800004  addli r1, r1, 512
0042f0  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
0042f4  1f0c0a03  addli r24, r20, 384
0042f8  1f0a8a03  addli r20, r20, 448
0042fc  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
004300  42130b02  vload_mask16.mz vr6{mr1}, 0(r22)
004304  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
004308  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
00430c  1f8a0603  addli r20, r13, 384
004310  1f8c8602  addli r24, r13, 320
004314  9f868603  addli r13, r13, 448
004318  42150a02  vload_mask16.mz vr10{mr1}, 0(r20)
00431c  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
004320  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
004324  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
004328  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00432c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
004330  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004334  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004338  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
00433c  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
004340  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
004344  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004348  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00434c  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
004350  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004354  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004358  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
00435c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004360  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
004364  bf3b74fe  blt.s r8, r7, -276
004368  dbc4ffff  j -476
00436c  9f020000  addli r5, zero, 0
004370  9f010000  addli r3, zero, 0
004374  00a00000  mfence { lm }
004378  3fd2a700  blt.s r15, r10, 148
00437c  e3000fd4  loadli.w r1,  -5632(r30)
004380  0f811118  div.f.rn r2, r3, r1
004384  8f801218  div.f.rn r1, r5, r1
004388  9f020000  addli r5, zero, 0
00438c  8b612120  mul.f.rn r3, r2, r2
004390  0b610158  neg.f r2, r2
004394  8be03018  sub.f.rn r1, r1, r3
004398  e3013f00  loadli.w r3,  24(r30)
00439c  8be03010  add.f.rn r1, r1, r3
0043a0  9f018fd7  addli r3, r30, -5184
0043a4  8f800008  sqrt.f.rn r1, r1
0043a8  8f801918  div.f.rn r1, r19, r1
0043ac  1f838100  addli r6, r3, 64
0043b0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0043b4  9f834200  addli r7, r5, 32
0043b8  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
0043bc  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0043c0  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
0043c4  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0043c8  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
0043cc  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0043d0  46102302  vstore_mask16.mz vr2{mr1}, 0(r6)
0043d4  cbe07700  ble.s r15, r7, 56
0043d8  1f830101  addli r6, r3, 128
0043dc  9f838101  addli r7, r3, 192
0043e0  9f828200  addli r5, r5, 64
0043e4  9f810102  addli r3, r3, 256
0043e8  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
0043ec  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
0043f0  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0043f4  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
0043f8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0043fc  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
004400  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
004404  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
004408  bf9ef2fe  blt.s r5, r15, -92
00440c  00a00000  mfence { lm }
004410  1f747000  addli r8, zero, 63
004414  1f032000  addli r6, zero, 16
004418  9f330000  addli r7, zero, 3
00441c  9f561000  addli r13, zero, 13
004420  1f2a1000  addli r20, zero, 10
004424  630b8fd5  loadli.w r22,  -5440(r30)
004428  3fd2a7fe  blt.s r15, r10, -876
00442c  9f008fd7  addli r1, r30, -5184
004430  1f018fd7  addli r2, r30, -5184
004434  9f010000  addli r3, zero, 0
004438  9f028100  addli r5, r2, 64
00443c  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
004440  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004444  9f814100  addli r3, r3, 32
004448  1f010101  addli r2, r2, 128
00444c  6a221322  vor.u.mz vr4{mr1}, r6, vr1
004450  c2910202  vload_mask16.mz vr3{mr1}, 0(r5)
004454  ee3222c2  vsrl.s.mz vr5{mr1}, vr4, vr2
004458  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
00445c  ea325502  vand.s.mz vr5{mr1}, r10, vr5
004460  6a324502  vand.s.mz vr4{mr1}, r10, vr4
004464  16315102  vadd.s.mz vr2{mr1}, vr2, vr5
004468  eaa21322  vor.u.mz vr5{mr1}, r7, vr1
00446c  96b14102  vadd.s.mz vr3{mr1}, vr3, vr4
004470  6aa21622  vor.u.mz vr4{mr1}, r13, vr1
004474  ea201a22  vor.u.mz vr1{mr1}, r20, vr1
004478  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
00447c  92b13a02  vadd.s.mz vr3{mr1}, r21, vr3
004480  6e3322c2  vsrl.s.mz vr6{mr1}, vr4, vr2
004484  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
004488  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
00448c  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
004490  eab26c02  vand.s.mz vr5{mr1}, r25, vr6
004494  6ab12b02  vand.s.mz vr2{mr1}, r23, vr2
004498  6ab24c02  vand.s.mz vr4{mr1}, r25, vr4
00449c  eab13b02  vand.s.mz vr3{mr1}, r23, vr3
0044a0  6ab12922  vor.s.mz vr2{mr1}, r19, vr2
0044a4  eab25922  vor.s.mz vr5{mr1}, r19, vr5
0044a8  6ab24922  vor.s.mz vr4{mr1}, r19, vr4
0044ac  eab13922  vor.s.mz vr3{mr1}, r19, vr3
0044b0  06110120  vfloat2fp16_l.rz vr2, vr2
0044b4  06520220  vfloat2fp16_h.rz vr4, vr4
0044b8  06d10120  vfloat2fp16_h.rz vr2, vr3
0044bc  06920220  vfloat2fp16_l.rz vr4, vr5
0044c0  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
0044c4  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
0044c8  ea301e02  vand.s.mz vr1{mr1}, r28, vr1
0044cc  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
0044d0  46801002  vstore.mz vr1{mr1}, 0(r1)
0044d4  9f808000  addli r1, r1, 64
0044d8  bf8df1fe  blt.s r3, r15, -160
0044dc  5b7cffff  j -1056
0044e0  2b330100  lui r6, 19
0044e4  803a0002  core_id r21
0044e8  80500102  load_param_i r1, 2
0044ec  1f110000  addli r2, zero, 1
0044f0  9f038fd7  addli r7, r30, -5184
0044f4  1f048000  addli r8, zero, 64
0044f8  1f050010  addli r10, zero, 2048
0044fc  9bb15a00  slli r3, r21, 5
004500  9bb45000  slli r9, r1, 5
004504  1f0303f8  addli r6, r6, -1024
004508  b3850128  zext_int2long r[12:13], r3
00450c  ab0600f0  lui r13, 983040
004510  97b52502  sll.d r[12:13], r[12:13], r2
004514  9716d400  or r13, r8, r13
004518  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
00451c  ffa67500  l_gm2lm r13, r7, 0(r[12:13])
004520  9bb52100  slli r11, r3, 2
004524  8b913410  add.s r3, r9, r3
004528  00a00200  mfence { lm, gm }
00452c  42800302  vload.mz vr0{mr1}, 0(r7)
004530  1386a104  setlt.u r12, r3, r10
004534  8b956510  add.s r11, r11, r6
004538  9f868500  addli r13, r11, 64
00453c  86300000  vfp162float_l.rn vr1, vr0
004540  06700000  vfp162float_h.rn vr0, vr0
004544  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
004548  4e900602  vstores_mask16.mz vr0{mr1}, 0(r13)
00454c  bb7e06fe  bneq r12, zero, -68
004550  2bf10000  lui r2, 15
004554  00a00300  mfence { lm, sm, gm }
004558  63421f00  loadli.w r4,  12(r30)
00455c  9b8d1a00  andi r27, r21, 1
004560  9f020006  addli r5, zero, 768
004564  1b11f1ff  ori r2, r2, 4095
004568  80210104  csr_set csr3, r2
00456c  1f010006  addli r2, zero, 768
004570  00d00100  sync_group
004574  37a00d00  beq r27, zero, 8
004578  9f02000a  addli r5, zero, 1280
00457c  e3411f00  loadli.w r3,  12(r30)
004580  1f1b0000  addli r22, zero, 1
004584  bfd56111  blt.s r3, r22, 8564
004588  0b912d20  mul.s r2, r27, r2
00458c  1bc51000  srli r10, r1, 1
004590  9bb02200  slli r1, r5, 2
004594  9f068fd7  addli r13, r30, -5184
004598  1bb61200  slli r12, r5, 1
00459c  ab5c0100  lui r25, 21
0045a0  2b590100  lui r18, 21
0045a4  1f040000  addli r8, zero, 0
0045a8  9bc51a00  srli r11, r21, 1
0045ac  9f787000  addli r17, zero, 63
0045b0  1f0a0005  addli r20, zero, 640
0045b4  9f0b8000  addli r23, zero, 64
0045b8  1f0c4000  addli r24, zero, 32
0045bc  1f0e0003  addli r28, zero, 384
0045c0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0045c4  8b90d010  add.s r1, r1, r13
0045c8  67082fd6  storeli.w r2, -5248(r30)
0045cc  1f814200  addli r2, r5, 32
0045d0  9f8c0cf8  addli r25, r25, -1024
0045d4  1f0909fc  addli r18, r18, -512
0045d8  67042fd6  storeli.w r2, -5312(r30)
0045dc  9f8080ff  addli r1, r1, -64
0045e0  0b11d610  add.s r2, r12, r13
0045e4  670c1fd4  storeli.w r1, -5440(r30)
0045e8  9f0081ff  addli r1, r2, -64
0045ec  1f018fd4  addli r2, r30, -5568
0045f0  67081fd4  storeli.w r1, -5504(r30)
0045f4  abf0ffff  lui r1, 1048575
0045f8  00a00000  mfence { lm }
0045fc  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004600  9b9000f8  ori r1, r1, 3968
004604  67001fd4  storeli.w r1, -5632(r30)
004608  abf00000  lui r1, 15
00460c  1b9df0ff  ori r26, r1, 4095
004610  db030000  j 28
004614  00a00300  mfence { lm, sm, gm }
004618  80210d04  csr_set csr3, r26
00461c  00d00100  sync_group
004620  0b14a410  add.s r8, r8, r10
004624  3f204400  blt.s r8, r4, 8
004628  dbc7f8ff  j -14788
00462c  8b10b410  add.s r1, r8, r11
004630  cb1f12fe  ble.s r4, r1, -28
004634  63011f00  loadli.w r2,  8(r30)
004638  e3010fd7  loadli.w r3,  -5248(r30)
00463c  9f037fd6  addli r7, r30, -5320
004640  8b902010  add.s r1, r1, r2
004644  0b01a430  div.u r2, r8, r10
004648  9bb0b000  slli r1, r1, 11
00464c  97903000  or r1, r1, r3
004650  ebd10300  load.d r[4:5], 0(r7)
004654  33970028  sext_int2long r[15:16], r1
004658  ab0000f0  lui r1, 983040
00465c  1b316100  slli r2, r2, 6
004660  17376703  sll.d r[15:16], r[15:16], r22
004664  97101600  or r1, r12, r1
004668  1b010104  andi r2, r2, 64
00466c  8ba1e110  add.ul r[4:5], r[4:5], r[15:16]
004670  ffa0d100  l_gm2lm r1, r13, 0(r[4:5])
004674  97105101  or r1, r2, r21
004678  00a00200  mfence { lm, gm }
00467c  63010fd5  loadli.w r2,  -5504(r30)
004680  e3018fd5  loadli.w r3,  -5440(r30)
004684  e3038fd6  loadli.w r7,  -5312(r30)
004688  c2000102  vload.mz vr1{mr1}, 0(r2)
00468c  9f83c3ff  addli r7, r7, -32
004690  9f8481ff  addli r9, r3, -64
004694  1f0181ff  addli r2, r2, -64
004698  13827804  setlt.u r4, r17, r7
00469c  06f10000  vfp162float_h.rn vr2, vr1
0046a0  86b00000  vfp162float_l.rn vr1, vr1
0046a4  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
0046a8  9f8101ff  addli r3, r3, -128
0046ac  46901402  vstore_mask16.mz vr1{mr1}, 0(r9)
0046b0  3b6f02fe  bneq r4, zero, -40
0046b4  00a00000  mfence { lm }
0046b8  3bb60d00  bneq r27, zero, 396
0046bc  1f028fd4  addli r4, r30, -5568
0046c0  e3010fd4  loadli.w r3,  -5632(r30)
0046c4  1f010000  addli r2, zero, 0
0046c8  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
0046cc  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0046d0  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0046d4  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0046d8  8b136110  add.s r7, r2, r6
0046dc  8b942610  add.s r9, r13, r2
0046e0  9f810101  addli r3, r3, 128
0046e4  1f010104  addli r2, r2, 512
0046e8  1f820301  addli r4, r7, 128
0046ec  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
0046f0  1f888300  addli r16, r7, 64
0046f4  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
0046f8  9f898401  addli r19, r9, 192
0046fc  ca120202  vloads_mask16.mz vr5{mr1}, 0(r4)
004700  1f828301  addli r4, r7, 192
004704  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
004708  1f888400  addli r16, r9, 64
00470c  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
004710  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
004714  1f820401  addli r4, r9, 128
004718  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
00471c  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
004720  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004724  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004728  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00472c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004730  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004734  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
004738  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
00473c  1f820302  addli r4, r7, 256
004740  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004744  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004748  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00474c  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
004750  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
004754  1f828302  addli r4, r7, 320
004758  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
00475c  9f890402  addli r19, r9, 256
004760  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004764  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004768  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00476c  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
004770  1f820303  addli r4, r7, 384
004774  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
004778  9f838303  addli r7, r7, 448
00477c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004780  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
004784  1f828402  addli r4, r9, 320
004788  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
00478c  9f830403  addli r7, r9, 384
004790  9f848403  addli r9, r9, 448
004794  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
004798  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00479c  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
0047a0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0047a4  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
0047a8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0047ac  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0047b0  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
0047b4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0047b8  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
0047bc  13824105  setlt.u r4, r3, r20
0047c0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0047c4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0047c8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0047cc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0047d0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0047d4  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
0047d8  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
0047dc  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0047e0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0047e4  bb5b02fe  bneq r4, zero, -268
0047e8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0047ec  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0047f0  1f010002  addli r2, zero, 256
0047f4  6a7101c0  vsrl.p vr2, r2, vr0
0047f8  ea7111c0  vsrl.p vr3, r2, vr1
0047fc  1f010001  addli r2, zero, 128
004800  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004804  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004808  6a7101c0  vsrl.p vr2, r2, vr0
00480c  ea7111c0  vsrl.p vr3, r2, vr1
004810  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004814  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004818  6af10bc0  vsrl.p vr2, r23, vr0
00481c  eaf11bc0  vsrl.p vr3, r23, vr1
004820  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004824  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004828  6a710cc0  vsrl.p vr2, r24, vr0
00482c  ea711cc0  vsrl.p vr3, r24, vr1
004830  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004834  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004838  7a110040  vextracti.f r2, 0(vr0)
00483c  fa910040  vextracti.f r3, 0(vr1)
004840  5b660000  j 816
004844  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004848  abf1ffff  lui r3, 1048575
00484c  1f8b0d00  addli r22, r27, 0
004850  1f010000  addli r2, zero, 0
004854  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004858  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00485c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004860  9b9101f8  ori r3, r3, 3968
004864  8b192310  add.s r19, r6, r2
004868  8b942610  add.s r9, r13, r2
00486c  9f810101  addli r3, r3, 128
004870  1f010104  addli r2, r2, 512
004874  9f8d0931  addli r27, r19, 6272
004878  1f820930  addli r4, r19, 6144
00487c  1f888931  addli r16, r19, 6336
004880  9f830418  addli r7, r9, 3072
004884  ca930d02  vloads_mask16.mz vr7{mr1}, 0(r27)
004888  ca120202  vloads_mask16.mz vr5{mr1}, 0(r4)
00488c  1f828930  addli r4, r19, 6208
004890  ca140802  vloads_mask16.mz vr9{mr1}, 0(r16)
004894  1f880419  addli r16, r9, 3200
004898  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
00489c  9f8d8419  addli r27, r9, 3264
0048a0  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
0048a4  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
0048a8  1f828418  addli r4, r9, 3136
0048ac  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
0048b0  c2150202  vload_mask16.mz vr11{mr1}, 0(r4)
0048b4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0048b8  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0048bc  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0048c0  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0048c4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0048c8  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0048cc  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
0048d0  9f830932  addli r7, r19, 6400
0048d4  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0048d8  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
0048dc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0048e0  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
0048e4  1f88041a  addli r16, r9, 3328
0048e8  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
0048ec  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
0048f0  1f82041b  addli r4, r9, 3456
0048f4  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0048f8  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0048fc  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
004900  9f838932  addli r7, r19, 6464
004904  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004908  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00490c  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
004910  9f830933  addli r7, r19, 6528
004914  9f898933  addli r19, r19, 6592
004918  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
00491c  9f83841a  addli r7, r9, 3392
004920  4a950902  vloads_mask16.mz vr10{mr1}, 0(r19)
004924  9f84841b  addli r9, r9, 3520
004928  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
00492c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004930  c2130202  vload_mask16.mz vr7{mr1}, 0(r4)
004934  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004938  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
00493c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004940  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004944  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
004948  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00494c  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
004950  9383c105  setlt.u r7, r3, r28
004954  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004958  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00495c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004960  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004964  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004968  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
00496c  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
004970  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004974  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004978  bbbb03fe  bneq r7, zero, -276
00497c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004980  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004984  1f010002  addli r2, zero, 256
004988  2bf2ffff  lui r4, 1048575
00498c  9f040000  addli r9, zero, 0
004990  9b1d02f8  ori r27, r4, 3968
004994  ea7111c0  vsrl.p vr3, r2, vr1
004998  6a7101c0  vsrl.p vr2, r2, vr0
00499c  1f010001  addli r2, zero, 128
0049a0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0049a4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0049a8  ea7111c0  vsrl.p vr3, r2, vr1
0049ac  6a7101c0  vsrl.p vr2, r2, vr0
0049b0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0049b4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0049b8  eaf11bc0  vsrl.p vr3, r23, vr1
0049bc  6af10bc0  vsrl.p vr2, r23, vr0
0049c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0049c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0049c8  ea711cc0  vsrl.p vr3, r24, vr1
0049cc  6a710cc0  vsrl.p vr2, r24, vr0
0049d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0049d4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0049d8  fa910040  vextracti.f r3, 0(vr1)
0049dc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0049e0  7a110040  vextracti.f r2, 0(vr0)
0049e4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0049e8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0049ec  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0049f0  8b139310  add.s r7, r6, r9
0049f4  8b999610  add.s r19, r13, r9
0049f8  9f8d0d01  addli r27, r27, 128
0049fc  9f840404  addli r9, r9, 512
004a00  1f820318  addli r4, r7, 3072
004a04  1f880319  addli r16, r7, 3200
004a08  42940902  vload_mask16.mz vr8{mr1}, 0(r19)
004a0c  9f8a8901  addli r21, r19, 192
004a10  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
004a14  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
004a18  1f828318  addli r4, r7, 3136
004a1c  1f888319  addli r16, r7, 3264
004a20  c2950a02  vload_mask16.mz vr11{mr1}, 0(r21)
004a24  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
004a28  1f820901  addli r4, r19, 128
004a2c  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
004a30  1f888900  addli r16, r19, 64
004a34  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
004a38  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
004a3c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004a40  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004a44  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004a48  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004a4c  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
004a50  1f82031a  addli r4, r7, 3328
004a54  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004a58  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004a5c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004a60  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004a64  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
004a68  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
004a6c  1f82831a  addli r4, r7, 3392
004a70  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
004a74  9f8a0902  addli r21, r19, 256
004a78  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
004a7c  1f888903  addli r16, r19, 448
004a80  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004a84  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004a88  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
004a8c  1f82031b  addli r4, r7, 3456
004a90  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
004a94  9f83831b  addli r7, r7, 3520
004a98  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004a9c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004aa0  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
004aa4  1f828902  addli r4, r19, 320
004aa8  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
004aac  9f830903  addli r7, r19, 384
004ab0  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
004ab4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004ab8  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
004abc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004ac0  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
004ac4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004ac8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004acc  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
004ad0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004ad4  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
004ad8  13824d05  setlt.u r4, r27, r20
004adc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004ae0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004ae4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004ae8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004aec  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004af0  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
004af4  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
004af8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004afc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004b00  bb4b02fe  bneq r4, zero, -272
004b04  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004b08  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004b0c  1f020002  addli r4, zero, 256
004b10  9f0d0b00  addli r27, r22, 0
004b14  803a0002  core_id r21
004b18  1f1b0000  addli r22, zero, 1
004b1c  6a7102c0  vsrl.p vr2, r4, vr0
004b20  ea7112c0  vsrl.p vr3, r4, vr1
004b24  1f020001  addli r4, zero, 128
004b28  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b2c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b30  6a7102c0  vsrl.p vr2, r4, vr0
004b34  ea7112c0  vsrl.p vr3, r4, vr1
004b38  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b3c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b40  6af10bc0  vsrl.p vr2, r23, vr0
004b44  eaf11bc0  vsrl.p vr3, r23, vr1
004b48  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b4c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b50  6a710cc0  vsrl.p vr2, r24, vr0
004b54  ea711cc0  vsrl.p vr3, r24, vr1
004b58  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b5c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b60  7a120040  vextracti.f r4, 0(vr0)
004b64  fa930040  vextracti.f r7, 0(vr1)
004b68  0b614110  add.f.rn r2, r2, r4
004b6c  8be17110  add.f.rn r3, r3, r7
004b70  1bb22000  slli r4, r1, 2
004b74  9b80e007  andi r1, r1, 126
004b78  8b139211  add.s r7, r4, r25
004b7c  8b142211  add.s r9, r4, r18
004b80  9bb02000  slli r1, r1, 2
004b84  73e02300  stores.w r2, 0(r7)
004b88  1b114200  ori r2, r4, 4
004b8c  73e03400  stores.w r3, 0(r9)
004b90  0b929011  add.s r4, r1, r25
004b94  8b902011  add.s r1, r1, r18
004b98  9f030000  addli r7, zero, 0
004b9c  00a00300  mfence { lm, sm, gm }
004ba0  80210d04  csr_set csr3, r26
004ba4  00d00100  sync_group
004ba8  8b119111  add.s r3, r2, r25
004bac  6f420200  loads.w r4, 0(r4)
004bb0  0b112111  add.s r2, r2, r18
004bb4  efc00000  loads.w r1, 0(r1)
004bb8  efc10100  loads.w r3, 0(r3)
004bbc  6f410100  loads.w r2, 0(r2)
004bc0  8be14110  add.f.rn r3, r3, r4
004bc4  2b02003a  lui r4, 237568
004bc8  8b601110  add.f.rn r1, r2, r1
004bcc  0be14120  mul.f.rn r2, r3, r4
004bd0  8be04020  mul.f.rn r1, r1, r4
004bd4  8b612120  mul.f.rn r3, r2, r2
004bd8  0b610158  neg.f r2, r2
004bdc  8be03018  sub.f.rn r1, r1, r3
004be0  e3013f00  loadli.w r3,  24(r30)
004be4  8be03010  add.f.rn r1, r1, r3
004be8  ab01803f  lui r3, 260096
004bec  8f800008  sqrt.f.rn r1, r1
004bf0  8f801118  div.f.rn r1, r3, r1
004bf4  9f018fd7  addli r3, r30, -5184
004bf8  1f828100  addli r4, r3, 64
004bfc  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
004c00  9f844300  addli r9, r7, 32
004c04  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
004c08  93849206  setle.u r9, r5, r9
004c0c  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
004c10  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
004c14  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
004c18  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004c1c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
004c20  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
004c24  bbf00400  bneq r9, zero, 60
004c28  1f820101  addli r4, r3, 128
004c2c  9f848101  addli r9, r3, 192
004c30  9f838300  addli r7, r7, 64
004c34  9f810102  addli r3, r3, 256
004c38  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
004c3c  c2900402  vload_mask16.mz vr1{mr1}, 0(r9)
004c40  13885304  setlt.u r16, r7, r5
004c44  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
004c48  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
004c4c  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
004c50  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004c54  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
004c58  46901402  vstore_mask16.mz vr1{mr1}, 0(r9)
004c5c  3b7e08fe  bneq r16, zero, -100
004c60  9f008fd7  addli r1, r30, -5184
004c64  1f018fd7  addli r2, r30, -5184
004c68  9f010000  addli r3, zero, 0
004c6c  00a00000  mfence { lm }
004c70  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
004c74  1f028100  addli r4, r2, 64
004c78  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
004c7c  9f814100  addli r3, r3, 32
004c80  1f010101  addli r2, r2, 128
004c84  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
004c88  13825104  setlt.u r4, r3, r5
004c8c  06110000  vfloat2fp16_l.rn vr2, vr0
004c90  06d10000  vfloat2fp16_h.rn vr2, vr1
004c94  46802002  vstore.mz vr2{mr1}, 0(r1)
004c98  9f808000  addli r1, r1, 64
004c9c  3b5f02fe  bneq r4, zero, -44
004ca0  6b510f00  load.d r[3:4], 0(r30)
004ca4  ab0000f0  lui r1, 983040
004ca8  00a00000  mfence { lm }
004cac  97101600  or r1, r12, r1
004cb0  0b21e110  add.ul r[3:4], r[3:4], r[15:16]
004cb4  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
004cb8  00a00200  mfence { lm, gm }
004cbc  63421f00  loadli.w r4,  12(r30)
004cc0  5b2cffff  j -1696
004cc4  80300002  core_id r1
004cc8  e3012f00  loadli.w r3,  16(r30)
004ccc  1bb15000  slli r2, r1, 5
004cd0  cb912100  ble.s r3, r2, 100
004cd4  00540102  load_param_i r8, 2
004cd8  ab840100  lui r9, 24
004cdc  9f110000  addli r3, zero, 1
004ce0  1f038fd7  addli r6, r30, -5184
004ce4  9f038000  addli r7, zero, 64
004ce8  1b345400  slli r8, r8, 5
004cec  9f840400  addli r9, r9, 0
004cf0  33050128  zext_int2long r[11:12], r2
004cf4  2b0600f0  lui r12, 983040
004cf8  17353502  sll.d r[11:12], r[11:12], r3
004cfc  1796c300  or r12, r7, r12
004d00  0b25a210  add.ul r[11:12], r[5:6], r[11:12]
004d04  7f266500  l_gm2lm r12, r6, 0(r[11:12])
004d08  1b352100  slli r10, r2, 2
004d0c  0b112410  add.s r2, r8, r2
004d10  00a00200  mfence { lm, gm }
004d14  42000302  vload.mz vr0{mr1}, 0(r6)
004d18  0b159510  add.s r10, r10, r9
004d1c  9f058500  addli r11, r10, 64
004d20  86300000  vfp162float_l.rn vr1, vr0
004d24  06700000  vfp162float_h.rn vr0, vr0
004d28  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
004d2c  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
004d30  3f0ff1fe  blt.s r2, r15, -64
004d34  2bf10000  lui r2, 15
004d38  e3411f00  loadli.w r3,  12(r30)
004d3c  00a00300  mfence { lm, sm, gm }
004d40  1b11f1ff  ori r2, r2, 4095
004d44  80210104  csr_set csr3, r2
004d48  00d00100  sync_group
004d4c  cbb6110c  ble.s r3, r1, 6572
004d50  63032f00  loadli.w r6,  16(r30)
004d54  e3432f00  loadli.w r7,  20(r30)
004d58  9f0b8fd7  addli r23, r30, -5184
004d5c  1f150000  addli r10, zero, 1
004d60  9f054000  addli r11, zero, 32
004d64  1f767000  addli r12, zero, 63
004d68  1f080002  addli r16, zero, 256
004d6c  9f080001  addli r17, zero, 128
004d70  1f098000  addli r18, zero, 64
004d74  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004d78  0b127310  add.s r4, r6, r7
004d7c  33010308  fix2float.rn r2, r6
004d80  1b342300  slli r8, r6, 2
004d84  9b321300  slli r5, r6, 1
004d88  9bb42300  slli r9, r7, 2
004d8c  1f72f2ff  addli r4, r4, -1
004d90  670c2fd4  storeli.w r2, -5440(r30)
004d94  1f014300  addli r2, r6, 32
004d98  0b137411  add.s r6, r8, r23
004d9c  0b947211  add.s r8, r5, r23
004da0  67082fd4  storeli.w r2, -5504(r30)
004da4  1f0183ff  addli r2, r6, -64
004da8  2bf3ffff  lui r6, 1048575
004dac  0b127230  div.s r4, r4, r7
004db0  67042fd4  storeli.w r2, -5568(r30)
004db4  1f0184ff  addli r2, r8, -64
004db8  9b16f3ff  ori r13, r6, 4095
004dbc  2b830100  lui r6, 24
004dc0  67002fd4  storeli.w r2, -5632(r30)
004dc4  1f010fd7  addli r2, r30, -5248
004dc8  1f030300  addli r6, r6, 0
004dcc  00a00000  mfence { lm }
004dd0  67045fd6  storeli.w r5, -5312(r30)
004dd4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004dd8  5b070000  j 56
004ddc  6b510f00  load.d r[3:4], 0(r30)
004de0  ab0900f0  lui r19, 983040
004de4  9f0b8fd7  addli r23, r30, -5184
004de8  00a00000  mfence { lm }
004dec  005a0102  load_param_i r20, 2
004df0  97993201  or r19, r5, r19
004df4  8b101a10  add.s r1, r20, r1
004df8  8b235111  add.ul r[8:9], r[3:4], r[22:23]
004dfc  ffb97301  s_lm2gm r19, r23, 0(r[8:9])
004e00  00a00200  mfence { lm, gm }
004e04  63411f00  loadli.w r2,  12(r30)
004e08  3fa02000  blt.s r1, r2, 8
004e0c  db1d0300  j 6380
004e10  63011f00  loadli.w r2,  8(r30)
004e14  8b932010  add.s r7, r1, r2
004e18  8b93f320  mul.s r7, r7, r15
004e1c  b3930328  sext_int2long r[8:9], r7
004e20  97baa302  sll.d r[22:23], r[8:9], r10
004e24  1f047fd6  addli r8, r30, -5320
004e28  ab0300f0  lui r7, 983040
004e2c  6b510400  load.d r[3:4], 0(r8)
004e30  97937200  or r7, r5, r7
004e34  8b295111  add.ul r[20:21], r[3:4], r[22:23]
004e38  ffa37901  l_gm2lm r7, r23, 0(r[20:21])
004e3c  00a00200  mfence { lm, gm }
004e40  bff0b700  blt.s r15, r11, 60
004e44  e3030fd4  loadli.w r7,  -5632(r30)
004e48  63048fd4  loadli.w r8,  -5568(r30)
004e4c  e3090fd5  loadli.w r19,  -5504(r30)
004e50  c2800302  vload.mz vr1{mr1}, 0(r7)
004e54  9f89c9ff  addli r19, r19, -32
004e58  9f0b84ff  addli r23, r8, -64
004e5c  9f8383ff  addli r7, r7, -64
004e60  130a3605  setlt.u r20, r12, r19
004e64  06f10000  vfp162float_h.rn vr2, vr1
004e68  86b00000  vfp162float_l.rn vr1, vr1
004e6c  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
004e70  1f0404ff  addli r8, r8, -128
004e74  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
004e78  3b6f0afe  bneq r20, zero, -40
004e7c  00a00000  mfence { lm }
004e80  bf17a200  blt.s r4, r10, 484
004e84  1f0c0000  addli r24, zero, 0
004e88  9f0b0000  addli r23, zero, 0
004e8c  9f0c0000  addli r25, zero, 0
004e90  db0c0000  j 100
004e94  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004e98  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004e9c  9f9c0c00  addli r25, r25, 1
004ea0  6a7108c0  vsrl.p vr2, r16, vr0
004ea4  ea7118c0  vsrl.p vr3, r16, vr1
004ea8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004eac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004eb0  6af108c0  vsrl.p vr2, r17, vr0
004eb4  eaf118c0  vsrl.p vr3, r17, vr1
004eb8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004ebc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004ec0  6a7109c0  vsrl.p vr2, r18, vr0
004ec4  ea7119c0  vsrl.p vr3, r18, vr1
004ec8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004ecc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004ed0  6af105c0  vsrl.p vr2, r11, vr0
004ed4  eaf115c0  vsrl.p vr3, r11, vr1
004ed8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004edc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004ee0  7a110040  vextracti.f r2, 0(vr0)
004ee4  fa910040  vextracti.f r3, 0(vr1)
004ee8  0b6c2c10  add.f.rn r24, r24, r2
004eec  8beb3b10  add.f.rn r23, r23, r3
004ef0  b7f54c00  beq r25, r4, 380
004ef4  9f830c00  addli r7, r25, 0
004ef8  37300701  beq r14, r16, 12
004efc  97a3dc00  xor r7, r25, r13
004f00  8b137210  add.s r7, r4, r7
004f04  1f010fd7  addli r2, r30, -5248
004f08  0b94e320  mul.s r8, r7, r14
004f0c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004f10  0b948718  sub.s r8, r15, r8
004f14  0b1de440  min.s r26, r8, r14
004f18  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004f1c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004f20  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004f24  bf4dadfe  blt.s r26, r10, -144
004f28  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
004f2c  9f0d0000  addli r27, zero, 0
004f30  0b9e7420  mul.s r28, r9, r7
004f34  9f098fd7  addli r19, r30, -5184
004f38  1f0a0300  addli r20, r6, 0
004f3c  92304002  vadd.s.mz vr1{mr1}, zero, vr4
004f40  12314002  vadd.s.mz vr2{mr1}, zero, vr4
004f44  92314002  vadd.s.mz vr3{mr1}, zero, vr4
004f48  0b14ca11  add.s r8, r20, r28
004f4c  8b93c911  add.s r7, r19, r28
004f50  9f028400  addli r5, r8, 64
004f54  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
004f58  9f018401  addli r3, r8, 192
004f5c  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
004f60  1f818301  addli r2, r7, 192
004f64  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
004f68  9f020401  addli r5, r8, 128
004f6c  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
004f70  9f818300  addli r3, r7, 64
004f74  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
004f78  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
004f7c  9f820301  addli r5, r7, 128
004f80  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
004f84  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
004f88  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004f8c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
004f90  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
004f94  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
004f98  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004f9c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004fa0  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
004fa4  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
004fa8  9f818d00  addli r3, r27, 64
004fac  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004fb0  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004fb4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004fb8  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
004fbc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004fc0  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
004fc4  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
004fc8  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
004fcc  4b2b3dfe  ble.s r26, r3, -312
004fd0  9f010402  addli r3, r8, 256
004fd4  9f028402  addli r5, r8, 320
004fd8  1f810302  addli r2, r7, 256
004fdc  9f8d0d01  addli r27, r27, 128
004fe0  1f0a0a04  addli r20, r20, 512
004fe4  9f890904  addli r19, r19, 512
004fe8  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
004fec  9f010403  addli r3, r8, 384
004ff0  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
004ff4  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
004ff8  9f828302  addli r5, r7, 320
004ffc  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
005000  9f018403  addli r3, r8, 448
005004  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
005008  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
00500c  9f810303  addli r3, r7, 384
005010  9f838303  addli r7, r7, 448
005014  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
005018  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
00501c  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
005020  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
005024  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005028  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00502c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005030  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005034  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
005038  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
00503c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
005040  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005044  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
005048  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00504c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005050  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
005054  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005058  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
00505c  bfbbadff  blt.s r27, r26, -276
005060  dbc6ffff  j -460
005064  9f0b0000  addli r23, zero, 0
005068  1f0c0000  addli r24, zero, 0
00506c  00a00000  mfence { lm }
005070  3fe2a700  blt.s r15, r10, 152
005074  63018fd5  loadli.w r2,  -5440(r30)
005078  1f0a0000  addli r20, zero, 0
00507c  0f042c18  div.f.rn r8, r24, r2
005080  8f832b18  div.f.rn r7, r23, r2
005084  63013f00  loadli.w r2,  24(r30)
005088  8b698420  mul.f.rn r19, r8, r8
00508c  0b640458  neg.f r8, r8
005090  8be33319  sub.f.rn r7, r7, r19
005094  9f098fd7  addli r19, r30, -5184
005098  8be32310  add.f.rn r7, r7, r2
00509c  2b01803f  lui r2, 260096
0050a0  8f830308  sqrt.f.rn r7, r7
0050a4  8f037118  div.f.rn r7, r2, r7
0050a8  9f8b8900  addli r23, r19, 64
0050ac  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
0050b0  1f0c4a00  addli r24, r20, 32
0050b4  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
0050b8  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
0050bc  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
0050c0  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
0050c4  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
0050c8  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
0050cc  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
0050d0  cbe08701  ble.s r15, r24, 56
0050d4  9f8b0901  addli r23, r19, 128
0050d8  1f8c8901  addli r24, r19, 192
0050dc  1f0a8a00  addli r20, r20, 64
0050e0  9f890902  addli r19, r19, 256
0050e4  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
0050e8  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
0050ec  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
0050f0  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
0050f4  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
0050f8  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
0050fc  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
005100  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
005104  bf1efafe  blt.s r20, r15, -92
005108  00a00000  mfence { lm }
00510c  e3028fd6  loadli.w r5,  -5312(r30)
005110  3fb3a7fe  blt.s r15, r10, -820
005114  9f038fd7  addli r7, r30, -5184
005118  1f048fd7  addli r8, r30, -5184
00511c  9f090000  addli r19, zero, 0
005120  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
005124  1f0a8400  addli r20, r8, 64
005128  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
00512c  9f894900  addli r19, r19, 32
005130  1f040401  addli r8, r8, 128
005134  42110a02  vload_mask16.mz vr2{mr1}, 0(r20)
005138  86910000  vfloat2fp16_l.rn vr3, vr1
00513c  86510100  vfloat2fp16_h.rn vr3, vr2
005140  46803302  vstore.mz vr3{mr1}, 0(r7)
005144  9f838300  addli r7, r7, 64
005148  3feff9fe  blt.s r19, r15, -40
00514c  5b92ffff  j -880
005150  63012f00  loadli.w r2,  16(r30)
005154  ab0100f0  lui r3, 983040
005158  1b311100  slli r2, r2, 1
00515c  17113100  or r2, r2, r3
005160  aba10100  lui r3, 26
005164  9f810100  addli r3, r3, 0
005168  7f013300  l_gm2sm r2, r3, 0(r[7:8])
00516c  5b080000  j 64
005170  63012f00  loadli.w r2,  16(r30)
005174  ab0100f0  lui r3, 983040
005178  1b311100  slli r2, r2, 1
00517c  17113100  or r2, r2, r3
005180  abe10100  lui r3, 30
005184  9f810100  addli r3, r3, 0
005188  7f013300  l_gm2sm r2, r3, 0(r[7:8])
00518c  5bc30000  j 1560
005190  63012f00  loadli.w r2,  16(r30)
005194  ab0100f0  lui r3, 983040
005198  1b311100  slli r2, r2, 1
00519c  17113100  or r2, r2, r3
0051a0  abb10100  lui r3, 27
0051a4  9f810100  addli r3, r3, 0
0051a8  7f013400  l_gm2sm r2, r3, 0(r[9:10])
0051ac  2bf10000  lui r2, 15
0051b0  e3411f00  loadli.w r3,  12(r30)
0051b4  00200300  mfence { sm, gm }
0051b8  1b11f1ff  ori r2, r2, 4095
0051bc  80210104  csr_set csr3, r2
0051c0  00d00100  sync_group
0051c4  cbd4110a  ble.s r3, r1, 5428
0051c8  63012f00  loadli.w r2,  16(r30)
0051cc  e3412f00  loadli.w r3,  20(r30)
0051d0  1f062000  addli r12, zero, 16
0051d4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0051d8  1f140000  addli r8, zero, 1
0051dc  9f068fd7  addli r13, r30, -5184
0051e0  9f050002  addli r11, zero, 256
0051e4  2b08ffff  lui r16, 1048560
0051e8  2b09807f  lui r18, 522240
0051ec  ab09c07f  lui r19, 523264
0051f0  1f0a0001  addli r20, zero, 128
0051f4  9f0a8000  addli r21, zero, 64
0051f8  1f0b4000  addli r22, zero, 32
0051fc  9b321100  slli r5, r2, 1
005200  0b123110  add.s r4, r2, r3
005204  33010108  fix2float.rn r2, r2
005208  1bb31100  slli r6, r3, 1
00520c  67042fd4  storeli.w r2, -5568(r30)
005210  1f71f2ff  addli r2, r4, -1
005214  67085fd4  storeli.w r5, -5504(r30)
005218  8b133130  div.s r7, r2, r3
00521c  2bf1ffff  lui r2, 1048575
005220  1b15f1ff  ori r10, r2, 4095
005224  1f010fd7  addli r2, r30, -5248
005228  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00522c  6a200622  vor.u.mz vr0{mr1}, r12, vr0
005230  1f018fd6  addli r2, r30, -5312
005234  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005238  2b710000  lui r2, 7
00523c  9b18f1ff  ori r17, r2, 4095
005240  db080000  j 68
005244  9f028fd5  addli r5, r30, -5440
005248  00a00000  mfence { lm }
00524c  eb510f00  load.d r[4:5], 0(r30)
005250  2b0100f0  lui r2, 983040
005254  9f068fd7  addli r13, r30, -5184
005258  80540102  load_param_i r9, 2
00525c  ebdb0200  load.d r[24:25], 0(r5)
005260  e3020fd5  loadli.w r5,  -5504(r30)
005264  8b901410  add.s r1, r9, r1
005268  8ba17111  add.ul r[4:5], r[4:5], r[24:25]
00526c  17912200  or r2, r5, r2
005270  7fb1d100  s_lm2gm r2, r13, 0(r[4:5])
005274  00a00200  mfence { lm, gm }
005278  63411f00  loadli.w r2,  12(r30)
00527c  3fa02000  blt.s r1, r2, 8
005280  5b8f0200  j 5240
005284  63011f00  loadli.w r2,  8(r30)
005288  9f047fd6  addli r9, r30, -5320
00528c  0b912010  add.s r2, r1, r2
005290  0b11f120  mul.s r2, r2, r15
005294  33110128  sext_int2long r[3:4], r2
005298  973b8102  sll.d r[24:25], r[3:4], r8
00529c  ebd10400  load.d r[4:5], 0(r9)
0052a0  2b0100f0  lui r2, 983040
0052a4  9f048fd5  addli r9, r30, -5440
0052a8  17912200  or r2, r5, r2
0052ac  73b07401  store.d r[24:25], 0(r9)
0052b0  8ba17111  add.ul r[4:5], r[4:5], r[24:25]
0052b4  7fa1d100  l_gm2lm r2, r13, 0(r[4:5])
0052b8  00a00200  mfence { lm, gm }
0052bc  bfdc8300  blt.s r7, r8, 820
0052c0  9f010000  addli r3, zero, 0
0052c4  1f010000  addli r2, zero, 0
0052c8  1f0e0000  addli r28, zero, 0
0052cc  db0c0000  j 100
0052d0  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0052d4  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0052d8  1f1e0e00  addli r28, r28, 1
0052dc  6af105c0  vsrl.p vr2, r11, vr0
0052e0  eaf115c0  vsrl.p vr3, r11, vr1
0052e4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0052e8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0052ec  6a710ac0  vsrl.p vr2, r20, vr0
0052f0  ea711ac0  vsrl.p vr3, r20, vr1
0052f4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0052f8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0052fc  6af10ac0  vsrl.p vr2, r21, vr0
005300  eaf11ac0  vsrl.p vr3, r21, vr1
005304  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005308  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00530c  6a710bc0  vsrl.p vr2, r22, vr0
005310  ea711bc0  vsrl.p vr3, r22, vr1
005314  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005318  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00531c  7a120040  vextracti.f r4, 0(vr0)
005320  fa920040  vextracti.f r5, 0(vr1)
005324  8be14110  add.f.rn r3, r3, r4
005328  0b615110  add.f.rn r2, r2, r5
00532c  373b7e00  beq r28, r7, 716
005330  1f020e00  addli r4, r28, 0
005334  3730b700  beq r14, r11, 12
005338  1722ae00  xor r4, r28, r10
00533c  0b924310  add.s r4, r7, r4
005340  9f020fd7  addli r5, r30, -5248
005344  8b14e220  mul.s r9, r4, r14
005348  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
00534c  8b949718  sub.s r9, r15, r9
005350  8b9be440  min.s r23, r9, r14
005354  92322002  vadd.s.mz vr5{mr1}, zero, vr2
005358  12322002  vadd.s.mz vr4{mr1}, zero, vr2
00535c  92312002  vadd.s.mz vr3{mr1}, zero, vr2
005360  bfcd8bfe  blt.s r23, r8, -144
005364  8b1c4320  mul.s r25, r6, r4
005368  1f020fd7  addli r4, r30, -5248
00536c  ab960100  lui r13, 25
005370  1f0c0000  addli r24, zero, 0
005374  9f048fd7  addli r9, r30, -5184
005378  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
00537c  9f860600  addli r13, r13, 0
005380  12315002  vadd.s.mz vr2{mr1}, zero, vr5
005384  92315002  vadd.s.mz vr3{mr1}, zero, vr5
005388  12325002  vadd.s.mz vr4{mr1}, zero, vr5
00538c  0b9d9611  add.s r26, r13, r25
005390  0b929411  add.s r4, r9, r25
005394  9f028fd6  addli r5, r30, -5312
005398  4a030d02  vloads.mz vr6{mr1}, 0(r26)
00539c  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
0053a0  c2030202  vload.mz vr7{mr1}, 0(r4)
0053a4  9f020fd7  addli r5, r30, -5248
0053a8  9f0d8d00  addli r27, r26, 64
0053ac  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0053b0  9f028c00  addli r5, r24, 64
0053b4  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0053b8  6a357802  vand.s.mz vr10{mr1}, r16, vr7
0053bc  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0053c0  6a336802  vand.s.mz vr6{mr1}, r16, vr6
0053c4  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0053c8  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0053cc  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0053d0  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0053d4  669503c0  vabs.f vr10, vr7
0053d8  6a348402  vand.s.mz vr8{mr1}, r8, vr8
0053dc  ea349402  vand.s.mz vr9{mr1}, r8, vr9
0053e0  7221a942  vlt.u.mz mr2{mr1}, r18, vr10
0053e4  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
0053e8  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
0053ec  12b48802  vadd.s.mz vr8{mr1}, r17, vr8
0053f0  92b49802  vadd.s.mz vr9{mr1}, r17, vr9
0053f4  ea338802  vand.s.mz vr7{mr1}, r16, vr8
0053f8  661403c0  vabs.f vr8, vr6
0053fc  6a339802  vand.s.mz vr6{mr1}, r16, vr9
005400  eaa30934  vor.u.mh vr7{mr2}, r19, vr0
005404  72218942  vlt.u.mz mr2{mr1}, r18, vr8
005408  6aa30934  vor.u.mh vr6{mr2}, r19, vr0
00540c  4a840d02  vloads.mz vr8{mr1}, 0(r27)
005410  9f0d8200  addli r27, r4, 64
005414  c2840d02  vload.mz vr9{mr1}, 0(r27)
005418  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
00541c  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
005420  6a336802  vand.s.mz vr6{mr1}, r16, vr6
005424  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
005428  ea349802  vand.s.mz vr9{mr1}, r16, vr9
00542c  46007202  vstore.mz vr7{mr1}, 0(r4)
005430  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005434  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005438  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
00543c  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
005440  6a348802  vand.s.mz vr8{mr1}, r16, vr8
005444  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005448  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
00544c  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
005450  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
005454  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
005458  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
00545c  ea349402  vand.s.mz vr9{mr1}, r8, vr9
005460  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
005464  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
005468  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
00546c  661505c0  vabs.f vr10, vr10
005470  661404c0  vabs.f vr8, vr8
005474  92b49802  vadd.s.mz vr9{mr1}, r17, vr9
005478  92b5b802  vadd.s.mz vr11{mr1}, r17, vr11
00547c  7221a942  vlt.u.mz mr2{mr1}, r18, vr10
005480  ea349802  vand.s.mz vr9{mr1}, r16, vr9
005484  6a35b802  vand.s.mz vr10{mr1}, r16, vr11
005488  eaa40934  vor.u.mh vr9{mr2}, r19, vr0
00548c  72218942  vlt.u.mz mr2{mr1}, r18, vr8
005490  6aa50934  vor.u.mh vr10{mr2}, r19, vr0
005494  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
005498  ea34a802  vand.s.mz vr9{mr1}, r16, vr10
00549c  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0054a0  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0054a4  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0054a8  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0054ac  46808d02  vstore.mz vr8{mr1}, 0(r27)
0054b0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0054b4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0054b8  4be85bfe  ble.s r23, r5, -488
0054bc  9f020d01  addli r5, r26, 128
0054c0  9f0d0201  addli r27, r4, 128
0054c4  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0054c8  1f028201  addli r4, r4, 192
0054cc  1f0c0c01  addli r24, r24, 128
0054d0  9f860602  addli r13, r13, 256
0054d4  9f840402  addli r9, r9, 256
0054d8  6a237622  vor.u.mz vr6{mr1}, r12, vr7
0054dc  4a840202  vloads.mz vr8{mr1}, 0(r5)
0054e0  c2840d02  vload.mz vr9{mr1}, 0(r27)
0054e4  9f028d01  addli r5, r26, 192
0054e8  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
0054ec  6a309802  vand.s.mz vr0{mr1}, r16, vr9
0054f0  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
0054f4  6a348802  vand.s.mz vr8{mr1}, r16, vr8
0054f8  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
0054fc  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
005500  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
005504  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
005508  e69504c0  vabs.f vr11, vr9
00550c  6a300402  vand.s.mz vr0{mr1}, r8, vr0
005510  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
005514  7221b942  vlt.u.mz mr2{mr1}, r18, vr11
005518  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
00551c  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
005520  12b00802  vadd.s.mz vr0{mr1}, r17, vr0
005524  12b5a802  vadd.s.mz vr10{mr1}, r17, vr10
005528  ea340802  vand.s.mz vr9{mr1}, r16, vr0
00552c  661004c0  vabs.f vr0, vr8
005530  6a34a802  vand.s.mz vr8{mr1}, r16, vr10
005534  eaa47934  vor.u.mh vr9{mr2}, r19, vr7
005538  72210942  vlt.u.mz mr2{mr1}, r18, vr0
00553c  6aa47934  vor.u.mh vr8{mr2}, r19, vr7
005540  4a800202  vloads.mz vr0{mr1}, 0(r5)
005544  42050202  vload.mz vr10{mr1}, 0(r4)
005548  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
00554c  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
005550  6a35a802  vand.s.mz vr10{mr1}, r16, vr10
005554  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
005558  6a348802  vand.s.mz vr8{mr1}, r16, vr8
00555c  46809d02  vstore.mz vr9{mr1}, 0(r27)
005560  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
005564  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
005568  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
00556c  6a300802  vand.s.mz vr0{mr1}, r16, vr0
005570  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
005574  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
005578  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
00557c  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
005580  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
005584  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
005588  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
00558c  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
005590  e69000c0  vabs.f vr1, vr1
005594  661000c0  vabs.f vr0, vr0
005598  12b5a802  vadd.s.mz vr10{mr1}, r17, vr10
00559c  92b5b802  vadd.s.mz vr11{mr1}, r17, vr11
0055a0  72211942  vlt.u.mz mr2{mr1}, r18, vr1
0055a4  6a35a802  vand.s.mz vr10{mr1}, r16, vr10
0055a8  ea30b802  vand.s.mz vr1{mr1}, r16, vr11
0055ac  6aa57934  vor.u.mh vr10{mr2}, r19, vr7
0055b0  72210942  vlt.u.mz mr2{mr1}, r18, vr0
0055b4  eaa07934  vor.u.mh vr1{mr2}, r19, vr7
0055b8  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
0055bc  ea331802  vand.s.mz vr7{mr1}, r16, vr1
0055c0  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0055c4  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
0055c8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0055cc  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0055d0  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
0055d4  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
0055d8  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
0055dc  46000202  vstore.mz vr0{mr1}, 0(r4)
0055e0  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0055e4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0055e8  bf167cff  blt.s r24, r23, -604
0055ec  db9cffff  j -796
0055f0  1f010000  addli r2, zero, 0
0055f4  9f010000  addli r3, zero, 0
0055f8  00a00000  mfence { lm }
0055fc  3fa187fe  blt.s r15, r8, -952
005600  e3028fd4  loadli.w r5,  -5568(r30)
005604  aba60100  lui r13, 26
005608  abbb0100  lui r23, 27
00560c  1f020000  addli r4, zero, 0
005610  9f860600  addli r13, r13, 0
005614  9f8b0b00  addli r23, r23, 0
005618  8f815118  div.f.rn r3, r3, r5
00561c  0f015118  div.f.rn r2, r2, r5
005620  e3023f00  loadli.w r5,  24(r30)
005624  8be43120  mul.f.rn r9, r3, r3
005628  8be10158  neg.f r3, r3
00562c  0b619118  sub.f.rn r2, r2, r9
005630  9f048fd7  addli r9, r30, -5184
005634  0b615110  add.f.rn r2, r2, r5
005638  ab02803f  lui r5, 260096
00563c  0f010108  sqrt.f.rn r2, r2
005640  0f812218  div.f.rn r2, r5, r2
005644  42820402  vload.mz vr4{mr1}, 0(r9)
005648  ca820602  vloads.mz vr5{mr1}, 0(r13)
00564c  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
005650  4a830b02  vloads.mz vr6{mr1}, 0(r23)
005654  1f0c4200  addli r24, r4, 32
005658  ea212622  vor.u.mz vr3{mr1}, r12, vr2
00565c  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
005660  6a344802  vand.s.mz vr8{mr1}, r16, vr4
005664  92937102  vadd.f.mz.rn vr7{mr1}, r3, vr7
005668  12948102  vadd.f.mz.rn vr8{mr1}, r3, vr8
00566c  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
005670  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
005674  6a355802  vand.s.mz vr10{mr1}, r16, vr5
005678  ea326802  vand.s.mz vr5{mr1}, r16, vr6
00567c  8a137102  vmul.f.mz.rn vr7{mr1}, r2, vr7
005680  0a138102  vmul.f.mz.rn vr6{mr1}, r2, vr8
005684  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
005688  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
00568c  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
005690  6a337402  vand.s.mz vr6{mr1}, r8, vr7
005694  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
005698  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
00569c  ea337402  vand.s.mz vr7{mr1}, r8, vr7
0056a0  661202c0  vabs.f vr4, vr4
0056a4  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
0056a8  12b36802  vadd.s.mz vr6{mr1}, r17, vr6
0056ac  e69202c0  vabs.f vr5, vr5
0056b0  72214942  vlt.u.mz mr2{mr1}, r18, vr4
0056b4  6a336802  vand.s.mz vr6{mr1}, r16, vr6
0056b8  92b37802  vadd.s.mz vr7{mr1}, r17, vr7
0056bc  6aa32934  vor.u.mh vr6{mr2}, r19, vr2
0056c0  6a327802  vand.s.mz vr4{mr1}, r16, vr7
0056c4  72215942  vlt.u.mz mr2{mr1}, r18, vr5
0056c8  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
0056cc  6aa22934  vor.u.mh vr4{mr2}, r19, vr2
0056d0  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
0056d4  46804402  vstore.mz vr4{mr1}, 0(r9)
0056d8  cbbd87fd  ble.s r15, r24, -1172
0056dc  1f8c8600  addli r24, r13, 64
0056e0  9f8c8400  addli r25, r9, 64
0056e4  1f028200  addli r4, r4, 64
0056e8  9f860601  addli r13, r13, 128
0056ec  9f840401  addli r9, r9, 128
0056f0  4a020c02  vloads.mz vr4{mr1}, 0(r24)
0056f4  1f8c8b00  addli r24, r23, 64
0056f8  c2820c02  vload.mz vr5{mr1}, 0(r25)
0056fc  9f8b0b01  addli r23, r23, 128
005700  4a030c02  vloads.mz vr6{mr1}, 0(r24)
005704  eeb351a2  vsll.s.mz vr7{mr1}, vr3, vr5
005708  ea325802  vand.s.mz vr5{mr1}, r16, vr5
00570c  92937102  vadd.f.mz.rn vr7{mr1}, r3, vr7
005710  12945102  vadd.f.mz.rn vr8{mr1}, r3, vr5
005714  eeb441a2  vsll.s.mz vr9{mr1}, vr3, vr4
005718  6a354802  vand.s.mz vr10{mr1}, r16, vr4
00571c  8a137102  vmul.f.mz.rn vr7{mr1}, r2, vr7
005720  eeb261a2  vsll.s.mz vr5{mr1}, vr3, vr6
005724  6a326802  vand.s.mz vr4{mr1}, r16, vr6
005728  0a138102  vmul.f.mz.rn vr6{mr1}, r2, vr8
00572c  a6929302  vmac.f.mz.rn vr5{mr1}, vr7, vr9
005730  2612a302  vmac.f.mz.rn vr4{mr1}, vr6, vr10
005734  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
005738  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
00573c  6a336402  vand.s.mz vr6{mr1}, r8, vr6
005740  ea337402  vand.s.mz vr7{mr1}, r8, vr7
005744  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
005748  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
00574c  e69202c0  vabs.f vr5, vr5
005750  661202c0  vabs.f vr4, vr4
005754  12b36802  vadd.s.mz vr6{mr1}, r17, vr6
005758  92b37802  vadd.s.mz vr7{mr1}, r17, vr7
00575c  72215942  vlt.u.mz mr2{mr1}, r18, vr5
005760  6a336802  vand.s.mz vr6{mr1}, r16, vr6
005764  ea327802  vand.s.mz vr5{mr1}, r16, vr7
005768  6aa32934  vor.u.mh vr6{mr2}, r19, vr2
00576c  72214942  vlt.u.mz mr2{mr1}, r18, vr4
005770  eaa22934  vor.u.mh vr5{mr2}, r19, vr2
005774  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
005778  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
00577c  46802c02  vstore.mz vr2{mr1}, 0(r25)
005780  3f1bf2fe  blt.s r4, r15, -316
005784  5b58ffff  j -1344
005788  63012f00  loadli.w r2,  16(r30)
00578c  ab0100f0  lui r3, 983040
005790  1b311100  slli r2, r2, 1
005794  17113100  or r2, r2, r3
005798  abf10100  lui r3, 31
00579c  9f810100  addli r3, r3, 0
0057a0  7f013400  l_gm2sm r2, r3, 0(r[9:10])
0057a4  2bf10000  lui r2, 15
0057a8  e3411f00  loadli.w r3,  12(r30)
0057ac  00200300  mfence { sm, gm }
0057b0  1b11f1ff  ori r2, r2, 4095
0057b4  80210104  csr_set csr3, r2
0057b8  00d00100  sync_group
0057bc  cbfc1106  ble.s r3, r1, 3900
0057c0  e3012f00  loadli.w r3,  16(r30)
0057c4  e3422f00  loadli.w r5,  20(r30)
0057c8  2bf4ffff  lui r8, 1048575
0057cc  2bd50100  lui r10, 29
0057d0  9f0b8fd7  addli r23, r30, -5184
0057d4  9f040002  addli r9, zero, 256
0057d8  9f050001  addli r11, zero, 128
0057dc  1f068000  addli r12, zero, 64
0057e0  9f064000  addli r13, zero, 32
0057e4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0057e8  1b14f4ff  ori r8, r8, 4095
0057ec  1f050500  addli r10, r10, 0
0057f0  0b925110  add.s r4, r3, r5
0057f4  1bb11100  slli r2, r3, 1
0057f8  b3810108  fix2float.rn r3, r3
0057fc  1f73f2ff  addli r6, r4, -1
005800  1bb21200  slli r4, r5, 1
005804  8b125330  div.s r5, r6, r5
005808  1f130000  addli r6, zero, 1
00580c  5b070000  j 56
005810  00a00000  mfence { lm }
005814  eb580f00  load.d r[18:19], 0(r30)
005818  2b0800f0  lui r16, 983040
00581c  9f0b8fd7  addli r23, r30, -5184
005820  17180101  or r16, r2, r16
005824  8ba93811  add.ul r[20:21], r[18:19], r[20:21]
005828  80580102  load_param_i r17, 2
00582c  7fb87901  s_lm2gm r16, r23, 0(r[20:21])
005830  8b901810  add.s r1, r17, r1
005834  00a00200  mfence { lm, gm }
005838  e3431f00  loadli.w r7,  12(r30)
00583c  3fa07000  blt.s r1, r7, 8
005840  5bd70100  j 3768
005844  e3031f00  loadli.w r7,  8(r30)
005848  0b987010  add.s r16, r1, r7
00584c  9f037fd6  addli r7, r30, -5320
005850  0b18f820  mul.s r16, r16, r15
005854  33180828  sext_int2long r[17:18], r16
005858  97396802  sll.d r[20:21], r[17:18], r6
00585c  ebd80300  load.d r[18:19], 0(r7)
005860  2b0800f0  lui r16, 983040
005864  17180101  or r16, r2, r16
005868  8baa3811  add.ul r[22:23], r[18:19], r[20:21]
00586c  7fa87a01  l_gm2lm r16, r23, 0(r[22:23])
005870  00a00200  mfence { lm, gm }
005874  3fc76200  blt.s r5, r6, 464
005878  1f0b0000  addli r22, zero, 0
00587c  9f0a0000  addli r21, zero, 0
005880  9f0b0000  addli r23, zero, 0
005884  db0c0000  j 100
005888  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
00588c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005890  9f9b0b00  addli r23, r23, 1
005894  6af134c0  vsrl.p vr2, r9, vr3
005898  6af214c0  vsrl.p vr4, r9, vr1
00589c  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
0058a0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0058a4  eaf125c0  vsrl.p vr3, r11, vr2
0058a8  6af215c0  vsrl.p vr4, r11, vr1
0058ac  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0058b0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0058b4  ea7126c0  vsrl.p vr3, r12, vr2
0058b8  6a7216c0  vsrl.p vr4, r12, vr1
0058bc  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0058c0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0058c4  eaf126c0  vsrl.p vr3, r13, vr2
0058c8  6af216c0  vsrl.p vr4, r13, vr1
0058cc  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0058d0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0058d4  fa130140  vextracti.f r7, 0(vr2)
0058d8  7a980040  vextracti.f r16, 0(vr1)
0058dc  0b6b7b10  add.f.rn r22, r22, r7
0058e0  8bea0a11  add.f.rn r21, r21, r16
0058e4  b7a55b00  beq r23, r5, 360
0058e8  1f880b00  addli r16, r23, 0
0058ec  37309700  beq r14, r9, 12
0058f0  17a88b00  xor r16, r23, r8
0058f4  0b980211  add.s r16, r5, r16
0058f8  8b18e820  mul.s r17, r16, r14
0058fc  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005900  92310002  vadd.s.mz vr3{mr1}, zero, vr0
005904  12310002  vadd.s.mz vr2{mr1}, zero, vr0
005908  92300002  vadd.s.mz vr1{mr1}, zero, vr0
00590c  8b981719  sub.s r17, r15, r17
005910  0b9ce840  min.s r24, r17, r14
005914  bf5d6cfe  blt.s r24, r6, -140
005918  92300002  vadd.s.mz vr1{mr1}, zero, vr0
00591c  12310002  vadd.s.mz vr2{mr1}, zero, vr0
005920  92310002  vadd.s.mz vr3{mr1}, zero, vr0
005924  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005928  9f0c0000  addli r25, zero, 0
00592c  0b1d0221  mul.s r26, r4, r16
005930  9f0d8fd7  addli r27, r30, -5184
005934  1f0e0500  addli r28, r10, 0
005938  0b18ae11  add.s r16, r28, r26
00593c  9f838c00  addli r7, r25, 64
005940  ca020802  vloads.mz vr5{mr1}, 0(r16)
005944  9f088800  addli r17, r16, 64
005948  4a830802  vloads.mz vr6{mr1}, 0(r17)
00594c  8b98ad11  add.s r17, r27, r26
005950  c2830802  vload.mz vr7{mr1}, 0(r17)
005954  1f898800  addli r18, r17, 64
005958  42040902  vload.mz vr8{mr1}, 0(r18)
00595c  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
005960  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005964  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
005968  06b40300  vfp162float_l.rn vr8, vr7
00596c  86f30300  vfp162float_h.rn vr7, vr7
005970  86340300  vfp162float_l.rn vr9, vr6
005974  06730300  vfp162float_h.rn vr6, vr6
005978  86120400  vfloat2fp16_l.rn vr5, vr8
00597c  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
005980  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
005984  12340002  vadd.s.mz vr8{mr1}, zero, vr0
005988  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
00598c  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005990  06940400  vfloat2fp16_l.rn vr8, vr9
005994  86d20300  vfloat2fp16_h.rn vr5, vr7
005998  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
00599c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0059a0  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0059a4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0059a8  06540300  vfloat2fp16_h.rn vr8, vr6
0059ac  46805802  vstore.mz vr5{mr1}, 0(r17)
0059b0  46008902  vstore.mz vr8{mr1}, 0(r18)
0059b4  4b5b7cfe  ble.s r24, r7, -300
0059b8  9f030801  addli r7, r16, 128
0059bc  9f8c0c01  addli r25, r25, 128
0059c0  1f0e0e02  addli r28, r28, 256
0059c4  9f8d0d02  addli r27, r27, 256
0059c8  ca820302  vloads.mz vr5{mr1}, 0(r7)
0059cc  9f038801  addli r7, r16, 192
0059d0  1f880801  addli r16, r17, 128
0059d4  4a830302  vloads.mz vr6{mr1}, 0(r7)
0059d8  c2030802  vload.mz vr7{mr1}, 0(r16)
0059dc  9f838801  addli r7, r17, 192
0059e0  42840302  vload.mz vr8{mr1}, 0(r7)
0059e4  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
0059e8  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0059ec  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
0059f0  12330002  vadd.s.mz vr6{mr1}, zero, vr0
0059f4  86b40300  vfp162float_l.rn vr9, vr7
0059f8  86f30300  vfp162float_h.rn vr7, vr7
0059fc  86920400  vfloat2fp16_l.rn vr5, vr9
005a00  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
005a04  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
005a08  86340400  vfp162float_l.rn vr9, vr8
005a0c  06740400  vfp162float_h.rn vr8, vr8
005a10  06930400  vfloat2fp16_l.rn vr6, vr9
005a14  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005a18  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005a1c  86d20300  vfloat2fp16_h.rn vr5, vr7
005a20  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005a24  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005a28  06530400  vfloat2fp16_h.rn vr6, vr8
005a2c  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
005a30  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005a34  46005802  vstore.mz vr5{mr1}, 0(r16)
005a38  46806302  vstore.mz vr6{mr1}, 0(r7)
005a3c  bffb8cff  blt.s r25, r24, -260
005a40  5bc9ffff  j -440
005a44  9f0a0000  addli r21, zero, 0
005a48  1f0b0000  addli r22, zero, 0
005a4c  00a00000  mfence { lm }
005a50  3f8767fe  blt.s r15, r6, -576
005a54  0f083b18  div.f.rn r16, r22, r3
005a58  8f883a18  div.f.rn r17, r21, r3
005a5c  e3033f00  loadli.w r7,  24(r30)
005a60  abec0100  lui r25, 30
005a64  2bfd0100  lui r26, 31
005a68  9f0b0000  addli r23, zero, 0
005a6c  1f0c8fd7  addli r24, r30, -5184
005a70  9f8c0c00  addli r25, r25, 0
005a74  1f0d0d00  addli r26, r26, 0
005a78  8b6a0821  mul.f.rn r21, r16, r16
005a7c  0b6b0858  neg.f r22, r16
005a80  8be85819  sub.f.rn r17, r17, r21
005a84  8be87810  add.f.rn r17, r17, r7
005a88  ab03803f  lui r7, 260096
005a8c  8f880808  sqrt.f.rn r17, r17
005a90  8f8a1319  div.f.rn r21, r7, r17
005a94  c2000c02  vload.mz vr1{mr1}, 0(r24)
005a98  4a810c02  vloads.mz vr2{mr1}, 0(r25)
005a9c  ca010d02  vloads.mz vr3{mr1}, 0(r26)
005aa0  1f884b00  addli r16, r23, 32
005aa4  06b20000  vfp162float_l.rn vr4, vr1
005aa8  86f00000  vfp162float_h.rn vr1, vr1
005aac  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
005ab0  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
005ab4  86320100  vfp162float_l.rn vr5, vr2
005ab8  06b30100  vfp162float_l.rn vr6, vr3
005abc  06710100  vfp162float_h.rn vr2, vr2
005ac0  86f10100  vfp162float_h.rn vr3, vr3
005ac4  8a931a02  vmul.f.mz.rn vr7{mr1}, r21, vr1
005ac8  0a924a02  vmul.f.mz.rn vr4{mr1}, r21, vr4
005acc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005ad0  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
005ad4  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
005ad8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005adc  06110300  vfloat2fp16_l.rn vr2, vr6
005ae0  06d10100  vfloat2fp16_h.rn vr2, vr3
005ae4  46002c02  vstore.mz vr2{mr1}, 0(r24)
005ae8  cba407ff  ble.s r15, r16, -728
005aec  1f888c00  addli r16, r25, 64
005af0  9f088c00  addli r17, r24, 64
005af4  9f8b8b00  addli r23, r23, 64
005af8  9f8c0c01  addli r25, r25, 128
005afc  1f0c0c01  addli r24, r24, 128
005b00  4a010802  vloads.mz vr2{mr1}, 0(r16)
005b04  1f088d00  addli r16, r26, 64
005b08  c2810802  vload.mz vr3{mr1}, 0(r17)
005b0c  1f0d0d01  addli r26, r26, 128
005b10  4a020802  vloads.mz vr4{mr1}, 0(r16)
005b14  86b20100  vfp162float_l.rn vr5, vr3
005b18  86f10100  vfp162float_h.rn vr3, vr3
005b1c  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
005b20  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
005b24  06330100  vfp162float_l.rn vr6, vr2
005b28  06710100  vfp162float_h.rn vr2, vr2
005b2c  8a925a02  vmul.f.mz.rn vr5{mr1}, r21, vr5
005b30  8a913a02  vmul.f.mz.rn vr3{mr1}, r21, vr3
005b34  86330200  vfp162float_l.rn vr7, vr4
005b38  06720200  vfp162float_h.rn vr4, vr4
005b3c  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
005b40  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
005b44  86900300  vfloat2fp16_l.rn vr1, vr7
005b48  86500200  vfloat2fp16_h.rn vr1, vr4
005b4c  46801802  vstore.mz vr1{mr1}, 0(r17)
005b50  3f9dfbfe  blt.s r23, r15, -188
005b54  db97ffff  j -836
005b58  9f000040  addli r1, zero, 8192
005b5c  2b0100f0  lui r2, 983040
005b60  97902000  or r1, r1, r2
005b64  2b310200  lui r2, 35
005b68  1f010100  addli r2, r2, 0
005b6c  ff002300  l_gm2sm r1, r2, 0(r[7:8])
005b70  db070000  j 60
005b74  63012f00  loadli.w r2,  16(r30)
005b78  ab0100f0  lui r3, 983040
005b7c  1b312100  slli r2, r2, 2
005b80  17113100  or r2, r2, r3
005b84  ab810200  lui r3, 40
005b88  9f810108  addli r3, r3, 1024
005b8c  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005b90  dbef0000  j 1916
005b94  9f000040  addli r1, zero, 8192
005b98  2b0100f0  lui r2, 983040
005b9c  97902000  or r1, r1, r2
005ba0  2b510200  lui r2, 37
005ba4  1f010100  addli r2, r2, 0
005ba8  ff002400  l_gm2sm r1, r2, 0(r[9:10])
005bac  abf00000  lui r1, 15
005bb0  00200300  mfence { sm, gm }
005bb4  1b011500  andi r2, r10, 1
005bb8  9f020006  addli r5, zero, 768
005bbc  9b90f0ff  ori r1, r1, 4095
005bc0  80a10004  csr_set csr3, r1
005bc4  9f000006  addli r1, zero, 768
005bc8  00d00100  sync_group
005bcc  67082fd6  storeli.w r2, -5248(r30)
005bd0  37200100  beq r2, zero, 8
005bd4  9f02000a  addli r5, zero, 1280
005bd8  63411f00  loadli.w r2,  12(r30)
005bdc  9f110000  addli r3, zero, 1
005be0  3f6c3104  blt.s r2, r3, 2840
005be4  e3010fd7  loadli.w r3,  -5248(r30)
005be8  00510102  load_param_i r2, 2
005bec  ab180200  lui r17, 33
005bf0  ab7b0200  lui r23, 39
005bf4  2b7e0200  lui r28, 39
005bf8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005bfc  9b441500  srli r9, r10, 1
005c00  1f030000  addli r6, zero, 0
005c04  1bb52200  slli r10, r5, 2
005c08  1f078fd7  addli r14, r30, -5184
005c0c  1f090005  addli r18, zero, 640
005c10  1f0a0001  addli r20, zero, 128
005c14  9f0a8000  addli r21, zero, 64
005c18  1f0b4000  addli r22, zero, 32
005c1c  9f0d0003  addli r27, zero, 384
005c20  1b441100  srli r8, r2, 1
005c24  2b310200  lui r2, 35
005c28  9f880800  addli r17, r17, 0
005c2c  9f8b0b00  addli r23, r23, 0
005c30  1f0e0e04  addli r28, r28, 512
005c34  8b901120  mul.s r1, r3, r1
005c38  1f010100  addli r2, r2, 0
005c3c  67041fd6  storeli.w r1, -5312(r30)
005c40  9bb02000  slli r1, r1, 2
005c44  8b952010  add.s r11, r1, r2
005c48  2b510200  lui r2, 37
005c4c  1f010100  addli r2, r2, 0
005c50  0b962010  add.s r12, r1, r2
005c54  abf0ffff  lui r1, 1048575
005c58  1f018fd5  addli r2, r30, -5440
005c5c  9b9000f8  ori r1, r1, 3968
005c60  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005c64  63411f00  loadli.w r2,  12(r30)
005c68  67081fd4  storeli.w r1, -5504(r30)
005c6c  abf00000  lui r1, 15
005c70  1b9cf0ff  ori r24, r1, 4095
005c74  5b040000  j 32
005c78  00a00300  mfence { lm, sm, gm }
005c7c  80210c04  csr_set csr3, r24
005c80  00d00100  sync_group
005c84  63411f00  loadli.w r2,  12(r30)
005c88  0b138310  add.s r6, r6, r8
005c8c  3f202300  blt.s r6, r2, 8
005c90  dbfaf5ff  j -20524
005c94  8b109310  add.s r1, r6, r9
005c98  cb0f11fe  ble.s r2, r1, -32
005c9c  63011f00  loadli.w r2,  8(r30)
005ca0  9f210000  addli r3, zero, 2
005ca4  1f027fd6  addli r4, r30, -5320
005ca8  8b902010  add.s r1, r1, r2
005cac  63018fd6  loadli.w r2,  -5312(r30)
005cb0  9bb0b000  slli r1, r1, 11
005cb4  97902000  or r1, r1, r2
005cb8  b3900028  sext_int2long r[2:3], r1
005cbc  97b73002  sll.d r[16:17], r[2:3], r3
005cc0  6b510200  load.d r[3:4], 0(r4)
005cc4  ab0000f0  lui r1, 983040
005cc8  97101500  or r1, r10, r1
005ccc  0b21f110  add.ul r[3:4], r[3:4], r[16:17]
005cd0  ff20e100  l_gm2lm r1, r14, 0(r[3:4])
005cd4  00a00200  mfence { lm, gm }
005cd8  e3000fd7  loadli.w r1,  -5248(r30)
005cdc  3ba60000  bneq r1, zero, 392
005ce0  9f008fd5  addli r1, r30, -5440
005ce4  e3010fd5  loadli.w r3,  -5504(r30)
005ce8  1f010000  addli r2, zero, 0
005cec  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
005cf0  92303002  vadd.s.mz vr1{mr1}, zero, vr3
005cf4  12313002  vadd.s.mz vr2{mr1}, zero, vr3
005cf8  12323002  vadd.s.mz vr4{mr1}, zero, vr3
005cfc  8b161111  add.s r13, r2, r17
005d00  8b102710  add.s r1, r14, r2
005d04  9f810101  addli r3, r3, 128
005d08  1f010104  addli r2, r2, 512
005d0c  1f820601  addli r4, r13, 128
005d10  4a900602  vloads_mask16.mz vr0{mr1}, 0(r13)
005d14  9f838600  addli r7, r13, 64
005d18  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
005d1c  9f898001  addli r19, r1, 192
005d20  ca120202  vloads_mask16.mz vr5{mr1}, 0(r4)
005d24  1f828601  addli r4, r13, 192
005d28  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
005d2c  9f838000  addli r7, r1, 64
005d30  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
005d34  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
005d38  1f820001  addli r4, r1, 128
005d3c  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
005d40  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
005d44  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005d48  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
005d4c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005d50  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005d54  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005d58  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
005d5c  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
005d60  1f820602  addli r4, r13, 256
005d64  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005d68  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
005d6c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
005d70  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
005d74  9f830003  addli r7, r1, 384
005d78  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
005d7c  1f828602  addli r4, r13, 320
005d80  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
005d84  9f890002  addli r19, r1, 256
005d88  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005d8c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
005d90  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005d94  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
005d98  1f820603  addli r4, r13, 384
005d9c  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
005da0  9f868603  addli r13, r13, 448
005da4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005da8  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
005dac  1f828002  addli r4, r1, 320
005db0  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
005db4  9f808003  addli r1, r1, 448
005db8  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
005dbc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005dc0  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
005dc4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005dc8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005dcc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005dd0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005dd4  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
005dd8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005ddc  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
005de0  13822105  setlt.u r4, r3, r18
005de4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005de8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005dec  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005df0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005df4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005df8  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
005dfc  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
005e00  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005e04  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005e08  bb5b02fe  bneq r4, zero, -268
005e0c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005e10  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005e14  9f000002  addli r1, zero, 256
005e18  6af100c0  vsrl.p vr2, r1, vr0
005e1c  eaf110c0  vsrl.p vr3, r1, vr1
005e20  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005e24  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005e28  6a710ac0  vsrl.p vr2, r20, vr0
005e2c  ea711ac0  vsrl.p vr3, r20, vr1
005e30  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005e34  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005e38  6af10ac0  vsrl.p vr2, r21, vr0
005e3c  eaf11ac0  vsrl.p vr3, r21, vr1
005e40  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005e44  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005e48  6a710bc0  vsrl.p vr2, r22, vr0
005e4c  ea711bc0  vsrl.p vr3, r22, vr1
005e50  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005e54  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005e58  fa130040  vextracti.f r7, 0(vr0)
005e5c  fa900040  vextracti.f r1, 0(vr1)
005e60  5b630000  j 792
005e64  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005e68  abf0ffff  lui r1, 1048575
005e6c  1f010000  addli r2, zero, 0
005e70  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005e74  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005e78  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005e7c  9b9100f8  ori r3, r1, 3968
005e80  8b902810  add.s r1, r17, r2
005e84  8b162710  add.s r13, r14, r2
005e88  9f810101  addli r3, r3, 128
005e8c  1f010104  addli r2, r2, 512
005e90  1f8d0031  addli r26, r1, 6272
005e94  9f830030  addli r7, r1, 6144
005e98  1f828031  addli r4, r1, 6336
005e9c  9f8c0618  addli r25, r13, 3072
005ea0  ca130d02  vloads_mask16.mz vr7{mr1}, 0(r26)
005ea4  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
005ea8  9f838030  addli r7, r1, 6208
005eac  ca140202  vloads_mask16.mz vr9{mr1}, 0(r4)
005eb0  1f828618  addli r4, r13, 3136
005eb4  1f8d8619  addli r26, r13, 3264
005eb8  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
005ebc  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
005ec0  9f830619  addli r7, r13, 3200
005ec4  42100d02  vload_mask16.mz vr0{mr1}, 0(r26)
005ec8  c2150202  vload_mask16.mz vr11{mr1}, 0(r4)
005ecc  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
005ed0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005ed4  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
005ed8  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
005edc  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
005ee0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005ee4  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
005ee8  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
005eec  9f830032  addli r7, r1, 6400
005ef0  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
005ef4  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
005ef8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005efc  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
005f00  9f8c061a  addli r25, r13, 3328
005f04  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
005f08  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
005f0c  1f82861b  addli r4, r13, 3520
005f10  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
005f14  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
005f18  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
005f1c  9f838032  addli r7, r1, 6464
005f20  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005f24  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005f28  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
005f2c  9f830033  addli r7, r1, 6528
005f30  9f808033  addli r1, r1, 6592
005f34  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
005f38  9f83861a  addli r7, r13, 3392
005f3c  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
005f40  9f80061b  addli r1, r13, 3456
005f44  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
005f48  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005f4c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
005f50  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005f54  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
005f58  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005f5c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005f60  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
005f64  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005f68  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
005f6c  9383b105  setlt.u r7, r3, r27
005f70  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005f74  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005f78  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005f7c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005f80  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005f84  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005f88  46107202  vstore_mask16.mz vr7{mr1}, 0(r4)
005f8c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005f90  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005f94  bbbb03fe  bneq r7, zero, -276
005f98  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005f9c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005fa0  9f000002  addli r1, zero, 256
005fa4  9f060000  addli r13, zero, 0
005fa8  eaf110c0  vsrl.p vr3, r1, vr1
005fac  6af100c0  vsrl.p vr2, r1, vr0
005fb0  abf0ffff  lui r1, 1048575
005fb4  1b9d00f8  ori r26, r1, 3968
005fb8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005fbc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005fc0  ea711ac0  vsrl.p vr3, r20, vr1
005fc4  6a710ac0  vsrl.p vr2, r20, vr0
005fc8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005fcc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005fd0  eaf11ac0  vsrl.p vr3, r21, vr1
005fd4  6af10ac0  vsrl.p vr2, r21, vr0
005fd8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005fdc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005fe0  ea711bc0  vsrl.p vr3, r22, vr1
005fe4  6a710bc0  vsrl.p vr2, r22, vr0
005fe8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005fec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005ff0  fa910040  vextracti.f r3, 0(vr1)
005ff4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005ff8  7a110040  vextracti.f r2, 0(vr0)
005ffc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
006000  12321002  vadd.s.mz vr4{mr1}, zero, vr1
006004  92311002  vadd.s.mz vr3{mr1}, zero, vr1
006008  8b9cd810  add.s r25, r17, r13
00600c  8b10d710  add.s r1, r14, r13
006010  1f0d0d01  addli r26, r26, 128
006014  9f860604  addli r13, r13, 512
006018  1f820c18  addli r4, r25, 3072
00601c  9f830c19  addli r7, r25, 3200
006020  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
006024  9f898001  addli r19, r1, 192
006028  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
00602c  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
006030  1f828c18  addli r4, r25, 3136
006034  9f838c19  addli r7, r25, 3264
006038  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
00603c  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
006040  1f820001  addli r4, r1, 128
006044  ca930302  vloads_mask16.mz vr7{mr1}, 0(r7)
006048  9f838000  addli r7, r1, 64
00604c  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
006050  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
006054  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
006058  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00605c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
006060  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
006064  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
006068  1f820c1a  addli r4, r25, 3328
00606c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
006070  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
006074  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
006078  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00607c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
006080  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
006084  1f828c1a  addli r4, r25, 3392
006088  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
00608c  9f890002  addli r19, r1, 256
006090  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
006094  9f830003  addli r7, r1, 384
006098  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00609c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0060a0  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
0060a4  1f820c1b  addli r4, r25, 3456
0060a8  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
0060ac  9f8c8c1b  addli r25, r25, 3520
0060b0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0060b4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0060b8  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
0060bc  1f828002  addli r4, r1, 320
0060c0  4a950c02  vloads_mask16.mz vr10{mr1}, 0(r25)
0060c4  9f808003  addli r1, r1, 448
0060c8  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
0060cc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0060d0  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
0060d4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0060d8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0060dc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0060e0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0060e4  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
0060e8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0060ec  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
0060f0  13022d05  setlt.u r4, r26, r18
0060f4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0060f8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0060fc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
006100  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
006104  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
006108  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
00610c  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
006110  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
006114  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006118  bb4b02fe  bneq r4, zero, -272
00611c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
006120  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006124  9f000002  addli r1, zero, 256
006128  6af100c0  vsrl.p vr2, r1, vr0
00612c  eaf110c0  vsrl.p vr3, r1, vr1
006130  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006134  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006138  6a710ac0  vsrl.p vr2, r20, vr0
00613c  ea711ac0  vsrl.p vr3, r20, vr1
006140  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006144  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006148  6af10ac0  vsrl.p vr2, r21, vr0
00614c  eaf11ac0  vsrl.p vr3, r21, vr1
006150  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006154  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006158  6a710bc0  vsrl.p vr2, r22, vr0
00615c  ea711bc0  vsrl.p vr3, r22, vr1
006160  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006164  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006168  fa100040  vextracti.f r1, 0(vr0)
00616c  7a920040  vextracti.f r4, 0(vr1)
006170  8b631110  add.f.rn r7, r2, r1
006174  8be04110  add.f.rn r1, r3, r4
006178  8b018330  div.u r3, r6, r8
00617c  00320002  core_id r4
006180  1f010000  addli r2, zero, 0
006184  1f0d0000  addli r26, zero, 0
006188  9bb16100  slli r3, r3, 6
00618c  9b810104  andi r3, r3, 64
006190  97914100  or r3, r3, r4
006194  1bb22100  slli r4, r3, 2
006198  9b81e107  andi r3, r3, 126
00619c  8b167211  add.s r13, r4, r23
0061a0  9bb12100  slli r3, r3, 2
0061a4  73e07600  stores.w r7, 0(r13)
0061a8  8b13c211  add.s r7, r4, r28
0061ac  1b124200  ori r4, r4, 4
0061b0  73e01300  stores.w r1, 0(r7)
0061b4  8b107211  add.s r1, r4, r23
0061b8  8b937111  add.s r7, r3, r23
0061bc  0b12c211  add.s r4, r4, r28
0061c0  8b91c111  add.s r3, r3, r28
0061c4  00a00300  mfence { lm, sm, gm }
0061c8  80210c04  csr_set csr3, r24
0061cc  00d00100  sync_group
0061d0  efc00000  loads.w r1, 0(r1)
0061d4  efc30300  loads.w r7, 0(r7)
0061d8  6f420200  loads.w r4, 0(r4)
0061dc  efc10100  loads.w r3, 0(r3)
0061e0  8be07010  add.f.rn r1, r1, r7
0061e4  8b613210  add.f.rn r3, r4, r3
0061e8  2b02003a  lui r4, 237568
0061ec  8be04020  mul.f.rn r1, r1, r4
0061f0  8be14120  mul.f.rn r3, r3, r4
0061f4  0be21020  mul.f.rn r4, r1, r1
0061f8  8be60058  neg.f r13, r1
0061fc  8be14118  sub.f.rn r3, r3, r4
006200  63023f00  loadli.w r4,  24(r30)
006204  8be14110  add.f.rn r3, r3, r4
006208  2b02803f  lui r4, 260096
00620c  8f810108  sqrt.f.rn r3, r3
006210  8f013218  div.f.rn r3, r4, r3
006214  8b902510  add.s r1, r11, r2
006218  8b1c2710  add.s r25, r14, r2
00621c  8b132610  add.s r7, r12, r2
006220  9f898000  addli r19, r1, 64
006224  1f828c00  addli r4, r25, 64
006228  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
00622c  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
006230  4a920302  vloads_mask16.mz vr4{mr1}, 0(r7)
006234  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
006238  9f898300  addli r19, r7, 64
00623c  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
006240  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
006244  9f094d00  addli r19, r26, 32
006248  12900602  vadd.f.mz.rn vr0{mr1}, r13, vr0
00624c  93893207  setle.u r19, r5, r19
006250  92901602  vadd.f.mz.rn vr1{mr1}, r13, vr1
006254  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
006258  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
00625c  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
006260  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
006264  46904c02  vstore_mask16.mz vr4{mr1}, 0(r25)
006268  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
00626c  bb910900  bneq r19, zero, 100
006270  1f820c01  addli r4, r25, 128
006274  9f898c01  addli r19, r25, 192
006278  9f8c0001  addli r25, r1, 128
00627c  9f808001  addli r1, r1, 192
006280  1f0d8d00  addli r26, r26, 64
006284  1f010102  addli r2, r2, 256
006288  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
00628c  9f8c0301  addli r25, r7, 128
006290  9f838301  addli r7, r7, 192
006294  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
006298  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
00629c  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
0062a0  93005d04  setlt.u r1, r26, r5
0062a4  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
0062a8  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
0062ac  12900602  vadd.f.mz.rn vr0{mr1}, r13, vr0
0062b0  92901602  vadd.f.mz.rn vr1{mr1}, r13, vr1
0062b4  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
0062b8  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
0062bc  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
0062c0  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0062c4  46103202  vstore_mask16.mz vr3{mr1}, 0(r4)
0062c8  46905902  vstore_mask16.mz vr5{mr1}, 0(r19)
0062cc  3bad00fe  bneq r1, zero, -184
0062d0  6b510f00  load.d r[3:4], 0(r30)
0062d4  ab0000f0  lui r1, 983040
0062d8  00a00000  mfence { lm }
0062dc  97101500  or r1, r10, r1
0062e0  0b21f110  add.ul r[3:4], r[3:4], r[16:17]
0062e4  ff30e100  s_lm2gm r1, r14, 0(r[3:4])
0062e8  00a00200  mfence { lm, gm }
0062ec  5b33ffff  j -1640
0062f0  63012f00  loadli.w r2,  16(r30)
0062f4  ab0100f0  lui r3, 983040
0062f8  1b312100  slli r2, r2, 2
0062fc  17113100  or r2, r2, r3
006300  ab910200  lui r3, 41
006304  9f810108  addli r3, r3, 1024
006308  7f013400  l_gm2sm r2, r3, 0(r[9:10])
00630c  2bf10000  lui r2, 15
006310  e3411f00  loadli.w r3,  12(r30)
006314  00200300  mfence { sm, gm }
006318  1b11f1ff  ori r2, r2, 4095
00631c  80210104  csr_set csr3, r2
006320  00d00100  sync_group
006324  4bdf1100  ble.s r3, r1, 980
006328  e3012f00  loadli.w r3,  16(r30)
00632c  e3422f00  loadli.w r5,  20(r30)
006330  ab780200  lui r17, 39
006334  2b890200  lui r18, 40
006338  ab990200  lui r19, 41
00633c  9f038fd7  addli r7, r30, -5184
006340  1f140000  addli r8, zero, 1
006344  1f050002  addli r10, zero, 256
006348  1f060001  addli r12, zero, 128
00634c  9f068000  addli r13, zero, 64
006350  1f084000  addli r16, zero, 32
006354  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
006358  9f880808  addli r17, r17, 1024
00635c  1f090908  addli r18, r18, 1024
006360  9f890908  addli r19, r19, 1024
006364  0b925110  add.s r4, r3, r5
006368  9bb52100  slli r11, r3, 2
00636c  33810108  fix2float.rn r2, r3
006370  9f71f2ff  addli r3, r4, -1
006374  1bb22200  slli r4, r5, 2
006378  67082fd4  storeli.w r2, -5504(r30)
00637c  1f010fd7  addli r2, r30, -5248
006380  670cbfd4  storeli.w r11, -5440(r30)
006384  8b925130  div.s r5, r3, r5
006388  abf1ffff  lui r3, 1048575
00638c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
006390  9b94f1ff  ori r9, r3, 4095
006394  5b080000  j 64
006398  1f018fd6  addli r2, r30, -5312
00639c  00a00000  mfence { lm }
0063a0  6b5a0f00  load.d r[21:22], 0(r30)
0063a4  ab0100f0  lui r3, 983040
0063a8  00530102  load_param_i r6, 2
0063ac  e3058fd5  loadli.w r11,  -5440(r30)
0063b0  6b5b0100  load.d r[23:24], 0(r2)
0063b4  8b101310  add.s r1, r6, r1
0063b8  97913500  or r3, r11, r3
0063bc  0b2a6a11  add.ul r[21:22], r[21:22], r[23:24]
0063c0  ff317a00  s_lm2gm r3, r7, 0(r[21:22])
0063c4  00a00200  mfence { lm, gm }
0063c8  63411f00  loadli.w r2,  12(r30)
0063cc  3fa02000  blt.s r1, r2, 8
0063d0  5b650000  j 808
0063d4  63011f00  loadli.w r2,  8(r30)
0063d8  8b912010  add.s r3, r1, r2
0063dc  1f210000  addli r2, zero, 2
0063e0  8b91f120  mul.s r3, r3, r15
0063e4  339a0128  sext_int2long r[21:22], r3
0063e8  ab0100f0  lui r3, 983040
0063ec  173c2a02  sll.d r[25:26], r[21:22], r2
0063f0  1f017fd6  addli r2, r30, -5320
0063f4  97913500  or r3, r11, r3
0063f8  6b5a0100  load.d r[21:22], 0(r2)
0063fc  1f018fd6  addli r2, r30, -5312
006400  0b2b8a11  add.ul r[23:24], r[21:22], r[25:26]
006404  ff217b00  l_gm2lm r3, r7, 0(r[23:24])
006408  00a00200  mfence { lm, gm }
00640c  73308101  store.d r[25:26], 0(r2)
006410  bf978200  blt.s r5, r8, 484
006414  9f0b0000  addli r23, zero, 0
006418  1f0b0000  addli r22, zero, 0
00641c  1f0c0000  addli r24, zero, 0
006420  db0c0000  j 100
006424  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
006428  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00642c  1f1c0c00  addli r24, r24, 1
006430  6a7105c0  vsrl.p vr2, r10, vr0
006434  ea7115c0  vsrl.p vr3, r10, vr1
006438  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00643c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006440  6a7106c0  vsrl.p vr2, r12, vr0
006444  ea7116c0  vsrl.p vr3, r12, vr1
006448  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00644c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006450  6af106c0  vsrl.p vr2, r13, vr0
006454  eaf116c0  vsrl.p vr3, r13, vr1
006458  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00645c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006460  6a7108c0  vsrl.p vr2, r16, vr0
006464  ea7118c0  vsrl.p vr3, r16, vr1
006468  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00646c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006470  7a110040  vextracti.f r2, 0(vr0)
006474  fa910040  vextracti.f r3, 0(vr1)
006478  8beb2b10  add.f.rn r23, r23, r2
00647c  0b6b3b10  add.f.rn r22, r22, r3
006480  b7755c00  beq r24, r5, 380
006484  9f010c00  addli r3, r24, 0
006488  3730a700  beq r14, r10, 12
00648c  97219c00  xor r3, r24, r9
006490  8b913210  add.s r3, r5, r3
006494  1f010fd7  addli r2, r30, -5248
006498  0b93e120  mul.s r6, r3, r14
00649c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0064a0  0b936718  sub.s r6, r15, r6
0064a4  8b1ce340  min.s r25, r6, r14
0064a8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0064ac  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0064b0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0064b4  bfcd8cfe  blt.s r25, r8, -144
0064b8  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0064bc  1f0d0000  addli r26, zero, 0
0064c0  8b1d3220  mul.s r27, r4, r3
0064c4  1f0e8fd7  addli r28, r30, -5184
0064c8  9f850800  addli r11, r17, 0
0064cc  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0064d0  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0064d4  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0064d8  8b91b511  add.s r3, r11, r27
0064dc  0b13be11  add.s r6, r28, r27
0064e0  1f818100  addli r2, r3, 64
0064e4  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
0064e8  1f8a8101  addli r20, r3, 192
0064ec  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
0064f0  9f0a8301  addli r21, r6, 192
0064f4  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
0064f8  1f810101  addli r2, r3, 128
0064fc  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
006500  1f0a0301  addli r20, r6, 128
006504  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
006508  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
00650c  c2150a02  vload_mask16.mz vr11{mr1}, 0(r20)
006510  1f018300  addli r2, r6, 64
006514  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
006518  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00651c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
006520  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
006524  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
006528  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00652c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006530  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
006534  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
006538  1f018d00  addli r2, r26, 64
00653c  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
006540  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
006544  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006548  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
00654c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
006550  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
006554  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
006558  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00655c  4bab2cfe  ble.s r25, r2, -312
006560  1f8a0102  addli r20, r3, 256
006564  9f8a8102  addli r21, r3, 320
006568  1f010302  addli r2, r6, 256
00656c  1f0d0d01  addli r26, r26, 128
006570  9f850504  addli r11, r11, 512
006574  1f0e0e04  addli r28, r28, 512
006578  4a100a02  vloads_mask16.mz vr0{mr1}, 0(r20)
00657c  1f8a0103  addli r20, r3, 384
006580  9f818103  addli r3, r3, 448
006584  ca920a02  vloads_mask16.mz vr5{mr1}, 0(r21)
006588  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
00658c  ca130a02  vloads_mask16.mz vr7{mr1}, 0(r20)
006590  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
006594  9f010303  addli r3, r6, 384
006598  1f0a8302  addli r20, r6, 320
00659c  1f038303  addli r6, r6, 448
0065a0  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
0065a4  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
0065a8  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0065ac  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
0065b0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0065b4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0065b8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0065bc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0065c0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0065c4  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
0065c8  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0065cc  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0065d0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0065d4  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
0065d8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0065dc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0065e0  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0065e4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0065e8  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0065ec  bf3b9dff  blt.s r26, r25, -276
0065f0  dbc6ffff  j -460
0065f4  1f0b0000  addli r22, zero, 0
0065f8  9f0b0000  addli r23, zero, 0
0065fc  00a00000  mfence { lm }
006600  3fe687fe  blt.s r15, r8, -616
006604  63010fd5  loadli.w r2,  -5504(r30)
006608  9f050000  addli r11, zero, 0
00660c  1f0c0000  addli r24, zero, 0
006610  8f812b18  div.f.rn r3, r23, r2
006614  0f032b18  div.f.rn r6, r22, r2
006618  63013f00  loadli.w r2,  24(r30)
00661c  0beb3120  mul.f.rn r22, r3, r3
006620  8beb0158  neg.f r23, r3
006624  0b636319  sub.f.rn r6, r6, r22
006628  0b632310  add.f.rn r6, r6, r2
00662c  2b01803f  lui r2, 260096
006630  0f030308  sqrt.f.rn r6, r6
006634  0f0b6118  div.f.rn r22, r2, r6
006638  0b932511  add.s r6, r11, r18
00663c  8b91b310  add.s r3, r7, r11
006640  9f0c8300  addli r25, r6, 64
006644  4a110302  vloads_mask16.mz vr2{mr1}, 0(r6)
006648  0b933511  add.s r6, r11, r19
00664c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
006650  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
006654  9f8c8100  addli r25, r3, 64
006658  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
00665c  1f038300  addli r6, r6, 64
006660  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
006664  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
006668  1f034c00  addli r6, r24, 32
00666c  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
006670  92925b02  vadd.f.mz.rn vr5{mr1}, r23, vr5
006674  8a101b02  vmul.f.mz.rn vr1{mr1}, r22, vr1
006678  8a125b02  vmul.f.mz.rn vr5{mr1}, r22, vr5
00667c  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
006680  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
006684  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
006688  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
00668c  4bb467fe  ble.s r15, r6, -756
006690  0b13b910  add.s r6, r18, r11
006694  8b9cb910  add.s r25, r19, r11
006698  1f0c8c00  addli r24, r24, 64
00669c  9f850502  addli r11, r11, 256
0066a0  1f0d0301  addli r26, r6, 128
0066a4  9f8d0c01  addli r27, r25, 128
0066a8  1f038301  addli r6, r6, 192
0066ac  9f8c8c01  addli r25, r25, 192
0066b0  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
0066b4  1f8d0101  addli r26, r3, 128
0066b8  9f818101  addli r3, r3, 192
0066bc  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
0066c0  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
0066c4  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
0066c8  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
0066cc  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0066d0  92913b02  vadd.f.mz.rn vr3{mr1}, r23, vr3
0066d4  12924b02  vadd.f.mz.rn vr4{mr1}, r23, vr4
0066d8  8a113b02  vmul.f.mz.rn vr3{mr1}, r22, vr3
0066dc  0a124b02  vmul.f.mz.rn vr4{mr1}, r22, vr4
0066e0  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
0066e4  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
0066e8  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
0066ec  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
0066f0  3f2dfcfe  blt.s r24, r15, -184
0066f4  db94ffff  j -860
0066f8  9f0e8fd3  addli sp, r30, -5696
0066fc  e38f2e2c  loadli.w r31,  5648(sp)
006700  63cf2e2c  loadli.w r30,  5652(sp)
006704  638e3e2c  loadli.w r28,  5656(sp)
006708  e3cd3e2c  loadli.w r27,  5660(sp)
00670c  638d4e2c  loadli.w r26,  5664(sp)
006710  e3cc4e2c  loadli.w r25,  5668(sp)
006714  638c5e2c  loadli.w r24,  5672(sp)
006718  e3cb5e2c  loadli.w r23,  5676(sp)
00671c  638b6e2c  loadli.w r22,  5680(sp)
006720  e3ca6e2c  loadli.w r21,  5684(sp)
006724  638a7e2c  loadli.w r20,  5688(sp)
006728  e3c97e2c  loadli.w r19,  5692(sp)
00672c  9f8e8e2c  addli sp, sp, 5696
006730  5f800f00  jr r31, 0
006734  00100000  exit
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
