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
0001b8  9f057fd6  addli r11, r30, -5320
0001bc  73b02500  store.d r[3:4], 0(r11)
0001c0  3f511500  blt.s r10, r1, 84
0001c4  1f110000  addli r2, zero, 1
0001c8  b7db2004  beq r1, r2, 2804
0001cc  1f210000  addli r2, zero, 2
0001d0  bb9a2004  bneq r1, r2, 2724
0001d4  e3403f00  loadli.w r1,  28(r30)
0001d8  b7bf0012  beq r1, zero, 10220
0001dc  80300002  core_id r1
0001e0  1f210000  addli r2, zero, 2
0001e4  b7ae2026  beq r1, r2, 20392
0001e8  1f110000  addli r2, zero, 1
0001ec  b78d2026  beq r1, r2, 20320
0001f0  bbee0026  bneq r1, zero, 20408
0001f4  63012f00  loadli.w r2,  16(r30)
0001f8  ab0100f0  lui r3, 983040
0001fc  1b311100  slli r2, r2, 1
000200  17113100  or r2, r2, r3
000204  ab910100  lui r3, 25
000208  9f810100  addli r3, r3, 0
00020c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000210  5bf30900  j 20376
000214  1f310000  addli r2, zero, 3
000218  b79b2004  beq r1, r2, 2788
00021c  1f410000  addli r2, zero, 4
000220  3bd92004  bneq r1, r2, 2644
000224  e3002f00  loadli.w r1,  16(r30)
000228  1f010010  addli r2, zero, 2048
00022c  3bb0200a  bneq r1, r2, 5132
000230  e3403f00  loadli.w r1,  28(r30)
000234  b7c1001a  beq r1, zero, 13424
000238  80300002  core_id r1
00023c  ab070000  lui r15, 0
000240  1f150000  addli r10, zero, 1
000244  9f058fd7  addli r11, r30, -5184
000248  1f068000  addli r12, zero, 64
00024c  9f060010  addli r13, zero, 2048
000250  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
000254  1bb15000  slli r2, r1, 5
000258  80500102  load_param_i r1, 2
00025c  9f870700  addli r15, r15, 0
000260  9bb15000  slli r3, r1, 5
000264  1f070100  addli r14, r2, 0
000268  33080728  zext_int2long r[17:18], r14
00026c  2b0900f0  lui r18, 983040
000270  1738a802  sll.d r[17:18], r[17:18], r10
000274  17192601  or r18, r12, r18
000278  0b280211  add.ul r[17:18], r[5:6], r[17:18]
00027c  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000280  1b382700  slli r16, r14, 2
000284  0b97e110  add.s r14, r3, r14
000288  00a00200  mfence { lm, gm }
00028c  c2800502  vload.mz vr1{mr1}, 0(r11)
000290  9308d704  setlt.u r17, r14, r13
000294  0b18f810  add.s r16, r16, r15
000298  1f098800  addli r18, r16, 64
00029c  66c11180  vmerge_l.hf vr2, vr3, vr1
0002a0  e6c011a0  vmerge_h.hf vr1, vr3, vr1
0002a4  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
0002a8  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
0002ac  bbfe08fe  bneq r17, zero, -68
0002b0  00320002  core_id r4
0002b4  9bb27000  slli r5, r1, 7
0002b8  1f160000  addli r12, zero, 1
0002bc  9f068fd7  addli r13, r30, -5184
0002c0  1f078000  addli r14, zero, 64
0002c4  1f080010  addli r16, zero, 2048
0002c8  9f080100  addli r17, r2, 0
0002cc  00a00000  mfence { lm }
0002d0  9b357200  slli r11, r4, 7
0002d4  2b220000  lui r4, 2
0002d8  1f020200  addli r4, r4, 0
0002dc  0b954510  add.s r10, r11, r4
0002e0  33890828  zext_int2long r[19:20], r17
0002e4  2b0a00f0  lui r20, 983040
0002e8  8b983810  add.s r17, r17, r3
0002ec  1739c902  sll.d r[19:20], r[19:20], r12
0002f0  171a4701  or r20, r14, r20
0002f4  0b292311  add.ul r[19:20], r[7:8], r[19:20]
0002f8  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
0002fc  13890805  setlt.u r18, r17, r16
000300  9f098500  addli r19, r10, 64
000304  00a00200  mfence { lm, gm }
000308  c2800602  vload.mz vr1{mr1}, 0(r13)
00030c  66c11180  vmerge_l.hf vr2, vr3, vr1
000310  e6c011a0  vmerge_h.hf vr1, vr3, vr1
000314  4e102502  vstores_mask16.mz vr2{mr1}, 0(r10)
000318  0b155510  add.s r10, r10, r5
00031c  4e901902  vstores_mask16.mz vr1{mr1}, 0(r19)
000320  3b0f09fe  bneq r18, zero, -64
000324  2b450000  lui r10, 4
000328  9f130000  addli r7, zero, 1
00032c  1f068000  addli r12, zero, 64
000330  9f060010  addli r13, zero, 2048
000334  00a00000  mfence { lm }
000338  1f050500  addli r10, r10, 0
00033c  0b93a510  add.s r6, r11, r10
000340  9f058fd7  addli r11, r30, -5184
000344  33080128  zext_int2long r[17:18], r2
000348  2b0700f0  lui r14, 983040
00034c  0b113110  add.s r2, r2, r3
000350  17387802  sll.d r[17:18], r[17:18], r7
000354  1717e600  or r14, r12, r14
000358  0b280411  add.ul r[17:18], r[9:10], r[17:18]
00035c  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000360  1307d104  setlt.u r14, r2, r13
000364  1f088300  addli r16, r6, 64
000368  00a00200  mfence { lm, gm }
00036c  c2800502  vload.mz vr1{mr1}, 0(r11)
000370  66c11180  vmerge_l.hf vr2, vr3, vr1
000374  e6c011a0  vmerge_h.hf vr1, vr3, vr1
000378  4e102302  vstores_mask16.mz vr2{mr1}, 0(r6)
00037c  0b135310  add.s r6, r6, r5
000380  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000384  3b0f07fe  bneq r14, zero, -64
000388  2bf10000  lui r2, 15
00038c  80310002  core_id r3
000390  00a00300  mfence { lm, sm, gm }
000394  9f020006  addli r5, zero, 768
000398  1b11f1ff  ori r2, r2, 4095
00039c  9b811100  andi r3, r3, 1
0003a0  80210104  csr_set csr3, r2
0003a4  1f010006  addli r2, zero, 768
0003a8  00d00100  sync_group
0003ac  670c3fd4  storeli.w r3, -5440(r30)
0003b0  37a00100  beq r3, zero, 8
0003b4  9f02000a  addli r5, zero, 1280
0003b8  e3411f00  loadli.w r3,  12(r30)
0003bc  e3441f00  loadli.w r9,  12(r30)
0003c0  1f130000  addli r6, zero, 1
0003c4  bfcc6130  blt.s r3, r6, 25392
0003c8  e3018fd5  loadli.w r3,  -5440(r30)
0003cc  1f0a8fd7  addli r20, r30, -5184
0003d0  1bb71200  slli r14, r5, 1
0003d4  9f030000  addli r7, zero, 0
0003d8  9f7c7000  addli r25, zero, 63
0003dc  9f0d0005  addli r27, zero, 640
0003e0  ab06803f  lui r13, 260096
0003e4  1f062000  addli r12, zero, 16
0003e8  1f3b0000  addli r22, zero, 3
0003ec  1f5e1000  addli r28, zero, 13
0003f0  2bec0700  lui r24, 126
0003f4  1f2d1000  addli r26, zero, 10
0003f8  0b912120  mul.s r2, r3, r2
0003fc  9bc11000  srli r3, r1, 1
000400  80300002  core_id r1
000404  9bc51000  srli r11, r1, 1
000408  9b302100  slli r1, r2, 2
00040c  67042fd4  storeli.w r2, -5568(r30)
000410  1f814200  addli r2, r5, 32
000414  0b994010  add.s r18, r1, r4
000418  8b99a010  add.s r19, r1, r10
00041c  9bb02200  slli r1, r5, 2
000420  674f2fd2  storeli.w r2, -5644(r30)
000424  0b114711  add.s r2, r14, r20
000428  2be27f00  lui r4, 2046
00042c  8b904011  add.s r1, r1, r20
000430  9f8080ff  addli r1, r1, -64
000434  670f1fd2  storeli.w r1, -5648(r30)
000438  9f0081ff  addli r1, r2, -64
00043c  2bf100fc  lui r2, 1032207
000440  e74e1fd2  storeli.w r1, -5652(r30)
000444  abf0ffff  lui r1, 1048575
000448  1b1401c0  ori r8, r2, 3072
00044c  00a00000  mfence { lm }
000450  67003fd4  storeli.w r3, -5632(r30)
000454  e74fbfd2  storeli.w r11, -5636(r30)
000458  e70fefd2  storeli.w r14, -5640(r30)
00045c  9b9000f8  ori r1, r1, 3968
000460  674e1fd2  storeli.w r1, -5660(r30)
000464  abf00000  lui r1, 15
000468  9b90f0ff  ori r1, r1, 4095
00046c  67081fd6  storeli.w r1, -5248(r30)
000470  ab700000  lui r1, 7
000474  9b9af0ff  ori r21, r1, 4095
000478  ab00ff03  lui r1, 16368
00047c  9b9bf03f  ori r23, r1, 1023
000480  9f000fd5  addli r1, r30, -5504
000484  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
000488  5b040000  j 32
00048c  00a00300  mfence { lm, sm, gm }
000490  e3000fd7  loadli.w r1,  -5248(r30)
000494  80a10004  csr_set csr3, r1
000498  00d00100  sync_group
00049c  8b933310  add.s r7, r7, r3
0004a0  3fa09300  blt.s r7, r9, 8
0004a4  dbf70000  j 1980
0004a8  8b90b310  add.s r1, r7, r11
0004ac  cb8f14fe  ble.s r9, r1, -32
0004b0  63011f00  loadli.w r2,  8(r30)
0004b4  8b902010  add.s r1, r1, r2
0004b8  0b813330  div.u r2, r7, r3
0004bc  e3018fd4  loadli.w r3,  -5568(r30)
0004c0  9bb0b000  slli r1, r1, 11
0004c4  97903000  or r1, r1, r3
0004c8  9f017fd6  addli r3, r30, -5320
0004cc  b3940028  sext_int2long r[10:11], r1
0004d0  ab0000f0  lui r1, 983040
0004d4  1b316100  slli r2, r2, 6
0004d8  17b86402  sll.d r[17:18], r[10:11], r6
0004dc  ebd40100  load.d r[10:11], 0(r3)
0004e0  9f018fd6  addli r3, r30, -5312
0004e4  97101700  or r1, r14, r1
0004e8  1b010104  andi r2, r2, 64
0004ec  73b00101  store.d r[17:18], 0(r3)
0004f0  8ba40411  add.ul r[10:11], r[10:11], r[17:18]
0004f4  ffa04401  l_gm2lm r1, r20, 0(r[10:11])
0004f8  80300002  core_id r1
0004fc  00a00200  mfence { lm, gm }
000500  97181100  or r17, r2, r1
000504  6341dfd3  loadli.w r2,  -5652(r30)
000508  e301efd3  loadli.w r3,  -5648(r30)
00050c  e344efd3  loadli.w r9,  -5644(r30)
000510  c2000102  vload.mz vr1{mr1}, 0(r2)
000514  9f84c4ff  addli r9, r9, -32
000518  9f8581ff  addli r11, r3, -64
00051c  1f0181ff  addli r2, r2, -64
000520  13859c04  setlt.u r10, r25, r9
000524  66c111a0  vmerge_h.hf vr2, vr3, vr1
000528  e6c01180  vmerge_l.hf vr1, vr3, vr1
00052c  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
000530  9f8101ff  addli r3, r3, -128
000534  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
000538  3b6f05fe  bneq r10, zero, -40
00053c  00a00000  mfence { lm }
000540  1f070003  addli r14, zero, 384
000544  e3008fd5  loadli.w r1,  -5440(r30)
000548  3bb60000  bneq r1, zero, 396
00054c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000550  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000554  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000558  e341cfd3  loadli.w r3,  -5660(r30)
00055c  1f010000  addli r2, zero, 0
000560  0b15f110  add.s r10, r2, r15
000564  8b142a10  add.s r9, r20, r2
000568  9f810101  addli r3, r3, 128
00056c  1f010104  addli r2, r2, 512
000570  9f000501  addli r1, r10, 128
000574  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
000578  9f058500  addli r11, r10, 64
00057c  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
000580  1f888401  addli r16, r9, 192
000584  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
000588  9f008501  addli r1, r10, 192
00058c  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
000590  9f858400  addli r11, r9, 64
000594  c2150802  vload_mask16.mz vr11{mr1}, 0(r16)
000598  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
00059c  9f800401  addli r1, r9, 128
0005a0  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
0005a4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0005a8  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0005ac  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0005b0  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0005b4  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0005b8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0005bc  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
0005c0  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0005c4  9f000502  addli r1, r10, 256
0005c8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0005cc  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0005d0  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0005d4  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
0005d8  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0005dc  9f008502  addli r1, r10, 320
0005e0  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0005e4  1f880402  addli r16, r9, 256
0005e8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0005ec  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0005f0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0005f4  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0005f8  9f000503  addli r1, r10, 384
0005fc  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000600  1f058503  addli r10, r10, 448
000604  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000608  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
00060c  9f808402  addli r1, r9, 320
000610  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
000614  1f850403  addli r10, r9, 384
000618  9f848403  addli r9, r9, 448
00061c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000620  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000624  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
000628  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00062c  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
000630  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000634  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000638  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
00063c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000640  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000644  9380b105  setlt.u r1, r3, r27
000648  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00064c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000650  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000654  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000658  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00065c  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
000660  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000664  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000668  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00066c  bbdb00fe  bneq r1, zero, -268
000670  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000674  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000678  9f000002  addli r1, zero, 256
00067c  6af100c0  vsrl.p vr2, r1, vr0
000680  eaf110c0  vsrl.p vr3, r1, vr1
000684  9f000001  addli r1, zero, 128
000688  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00068c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000690  6af100c0  vsrl.p vr2, r1, vr0
000694  eaf110c0  vsrl.p vr3, r1, vr1
000698  9f008000  addli r1, zero, 64
00069c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006a0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006a4  6af100c0  vsrl.p vr2, r1, vr0
0006a8  eaf110c0  vsrl.p vr3, r1, vr1
0006ac  9f004000  addli r1, zero, 32
0006b0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006b4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006b8  6af100c0  vsrl.p vr2, r1, vr0
0006bc  eaf110c0  vsrl.p vr3, r1, vr1
0006c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006c8  fa140040  vextracti.f r9, 0(vr0)
0006cc  fa910040  vextracti.f r3, 0(vr1)
0006d0  5b670000  j 824
0006d4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0006d8  abf0ffff  lui r1, 1048575
0006dc  1f010000  addli r2, zero, 0
0006e0  e70e1fd3  storeli.w r17, -5656(r30)
0006e4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0006e8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0006ec  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0006f0  9b9100f8  ori r3, r1, 3968
0006f4  8b942710  add.s r9, r15, r2
0006f8  0b152a10  add.s r10, r20, r2
0006fc  9f810101  addli r3, r3, 128
000700  1f010104  addli r2, r2, 512
000704  9f880431  addli r17, r9, 6272
000708  9f850430  addli r11, r9, 6144
00070c  9f808431  addli r1, r9, 6336
000710  1f080518  addli r16, r10, 3072
000714  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
000718  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
00071c  9f858430  addli r11, r9, 6208
000720  ca940002  vloads_mask16.mz vr9{mr1}, 0(r1)
000724  9f008518  addli r1, r10, 3136
000728  9f088519  addli r17, r10, 3264
00072c  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
000730  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
000734  9f050519  addli r11, r10, 3200
000738  42900802  vload_mask16.mz vr0{mr1}, 0(r17)
00073c  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
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
000774  1f08051a  addli r16, r10, 3328
000778  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
00077c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000780  9f00051b  addli r1, r10, 3456
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
0007ac  9f05851a  addli r11, r10, 3392
0007b0  4a950402  vloads_mask16.mz vr10{mr1}, 0(r9)
0007b4  9f04851b  addli r9, r10, 3520
0007b8  1385e104  setlt.u r10, r3, r14
0007bc  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
0007c0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0007c4  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0007c8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0007cc  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
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
0007f8  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0007fc  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000800  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000804  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000808  bb3b05fe  bneq r10, zero, -276
00080c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000810  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000814  9f000002  addli r1, zero, 256
000818  1f050000  addli r10, zero, 0
00081c  eaf110c0  vsrl.p vr3, r1, vr1
000820  6af100c0  vsrl.p vr2, r1, vr0
000824  9f000001  addli r1, zero, 128
000828  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00082c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000830  eaf110c0  vsrl.p vr3, r1, vr1
000834  6af100c0  vsrl.p vr2, r1, vr0
000838  9f008000  addli r1, zero, 64
00083c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000840  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000844  eaf110c0  vsrl.p vr3, r1, vr1
000848  6af100c0  vsrl.p vr2, r1, vr0
00084c  9f004000  addli r1, zero, 32
000850  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000854  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000858  eaf110c0  vsrl.p vr3, r1, vr1
00085c  6af100c0  vsrl.p vr2, r1, vr0
000860  abf0ffff  lui r1, 1048575
000864  9b9500f8  ori r11, r1, 3968
000868  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00086c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000870  fa910040  vextracti.f r3, 0(vr1)
000874  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000878  7a170040  vextracti.f r14, 0(vr0)
00087c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000880  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000884  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000888  0b98a710  add.s r16, r15, r10
00088c  8b14aa10  add.s r9, r20, r10
000890  9f850501  addli r11, r11, 128
000894  1f050504  addli r10, r10, 512
000898  9f000818  addli r1, r16, 3072
00089c  9f080819  addli r17, r16, 3200
0008a0  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
0008a4  1f818401  addli r2, r9, 192
0008a8  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0008ac  ca920802  vloads_mask16.mz vr5{mr1}, 0(r17)
0008b0  9f008818  addli r1, r16, 3136
0008b4  9f088819  addli r17, r16, 3264
0008b8  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
0008bc  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0008c0  9f800401  addli r1, r9, 128
0008c4  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
0008c8  9f888400  addli r17, r9, 64
0008cc  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0008d0  42950802  vload_mask16.mz vr10{mr1}, 0(r17)
0008d4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0008d8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0008dc  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0008e0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0008e4  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0008e8  9f00081a  addli r1, r16, 3328
0008ec  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0008f0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0008f4  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0008f8  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0008fc  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
000900  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
000904  9f00881a  addli r1, r16, 3392
000908  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
00090c  1f810402  addli r2, r9, 256
000910  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
000914  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000918  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00091c  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
000920  9f00081b  addli r1, r16, 3456
000924  c2130102  vload_mask16.mz vr7{mr1}, 0(r2)
000928  1f08881b  addli r16, r16, 3520
00092c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000930  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000934  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
000938  9f808402  addli r1, r9, 320
00093c  4a150802  vloads_mask16.mz vr10{mr1}, 0(r16)
000940  1f880403  addli r16, r9, 384
000944  9f848403  addli r9, r9, 448
000948  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00094c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000950  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000954  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000958  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
00095c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000960  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000964  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000968  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00096c  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000970  9380b505  setlt.u r1, r11, r27
000974  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000978  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00097c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000980  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000984  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000988  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
00098c  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000990  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000994  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000998  bbcb00fe  bneq r1, zero, -272
00099c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0009a0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0009a4  9f000002  addli r1, zero, 256
0009a8  e308dfd3  loadli.w r17,  -5656(r30)
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
000a00  8b641710  add.f.rn r9, r14, r1
000a04  8be12110  add.f.rn r3, r3, r2
000a08  2b650000  lui r10, 6
000a0c  ab650000  lui r11, 6
000a10  9bb02800  slli r1, r17, 2
000a14  1f010000  addli r2, zero, 0
000a18  1f050500  addli r10, r10, 0
000a1c  9f850504  addli r11, r11, 512
000a20  1f070500  addli r14, r10, 0
000a24  1f880500  addli r16, r11, 0
000a28  0b95e010  add.s r10, r1, r14
000a2c  8b950011  add.s r11, r1, r16
000a30  9b904000  ori r1, r1, 4
000a34  73609500  stores.w r9, 0(r10)
000a38  73e03500  stores.w r3, 0(r11)
000a3c  8b94e010  add.s r9, r1, r14
000a40  8b900011  add.s r1, r1, r16
000a44  00a00300  mfence { lm, sm, gm }
000a48  e3010fd7  loadli.w r3,  -5248(r30)
000a4c  80a10104  csr_set csr3, r3
000a50  9b81e807  andi r3, r17, 126
000a54  00d00100  sync_group
000a58  efc40400  loads.w r9, 0(r9)
000a5c  efc00000  loads.w r1, 0(r1)
000a60  9bb12100  slli r3, r3, 2
000a64  0b95e110  add.s r10, r3, r14
000a68  8b910111  add.s r3, r3, r16
000a6c  6f450500  loads.w r10, 0(r10)
000a70  efc10100  loads.w r3, 0(r3)
000a74  8be4a410  add.f.rn r9, r9, r10
000a78  2b05003a  lui r10, 237568
000a7c  8be03010  add.f.rn r1, r1, r3
000a80  8be1a420  mul.f.rn r3, r9, r10
000a84  8be0a020  mul.f.rn r1, r1, r10
000a88  1f050000  addli r10, zero, 0
000a8c  8be43120  mul.f.rn r9, r3, r3
000a90  8be10158  neg.f r3, r3
000a94  8be09018  sub.f.rn r1, r1, r9
000a98  e3043f00  loadli.w r9,  24(r30)
000a9c  8be09010  add.f.rn r1, r1, r9
000aa0  8f800008  sqrt.f.rn r1, r1
000aa4  8f801618  div.f.rn r1, r13, r1
000aa8  8b142910  add.s r9, r18, r2
000aac  8b152a10  add.s r11, r20, r2
000ab0  0b982910  add.s r16, r19, r2
000ab4  1f878400  addli r14, r9, 64
000ab8  9f888500  addli r17, r11, 64
000abc  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
000ac0  4a910402  vloads_mask16.mz vr2{mr1}, 0(r9)
000ac4  4a120802  vloads_mask16.mz vr4{mr1}, 0(r16)
000ac8  ca110702  vloads_mask16.mz vr3{mr1}, 0(r14)
000acc  1f078800  addli r14, r16, 64
000ad0  c2900802  vload_mask16.mz vr1{mr1}, 0(r17)
000ad4  ca120702  vloads_mask16.mz vr5{mr1}, 0(r14)
000ad8  1f074500  addli r14, r10, 32
000adc  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000ae0  1387e206  setle.u r14, r5, r14
000ae4  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000ae8  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
000aec  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
000af0  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
000af4  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
000af8  46904502  vstore_mask16.mz vr4{mr1}, 0(r11)
000afc  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
000b00  bb110700  bneq r14, zero, 100
000b04  9f880401  addli r17, r9, 128
000b08  1f870501  addli r14, r11, 128
000b0c  9f858501  addli r11, r11, 192
000b10  9f848401  addli r9, r9, 192
000b14  1f058500  addli r10, r10, 64
000b18  1f010102  addli r2, r2, 256
000b1c  4a910802  vloads_mask16.mz vr2{mr1}, 0(r17)
000b20  9f080801  addli r17, r16, 128
000b24  1f088801  addli r16, r16, 192
000b28  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
000b2c  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
000b30  4a920402  vloads_mask16.mz vr4{mr1}, 0(r9)
000b34  93045504  setlt.u r9, r10, r5
000b38  ca910802  vloads_mask16.mz vr3{mr1}, 0(r17)
000b3c  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
000b40  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000b44  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000b48  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
000b4c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
000b50  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
000b54  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
000b58  46103702  vstore_mask16.mz vr3{mr1}, 0(r14)
000b5c  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
000b60  3bad04fe  bneq r9, zero, -184
000b64  9f008fd7  addli r1, r30, -5184
000b68  1f018fd7  addli r2, r30, -5184
000b6c  9f010000  addli r3, zero, 0
000b70  00a00000  mfence { lm }
000b74  9f048100  addli r9, r2, 64
000b78  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
000b7c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000b80  9f814100  addli r3, r3, 32
000b84  1f010101  addli r2, r2, 128
000b88  ea211622  vor.u.mz vr3{mr1}, r12, vr1
000b8c  42910402  vload_mask16.mz vr2{mr1}, 0(r9)
000b90  93845104  setlt.u r9, r3, r5
000b94  6eb201c2  vsrl.s.mz vr4{mr1}, vr3, vr0
000b98  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
000b9c  6a324302  vand.s.mz vr4{mr1}, r6, vr4
000ba0  ea313302  vand.s.mz vr3{mr1}, r6, vr3
000ba4  16304002  vadd.s.mz vr0{mr1}, vr0, vr4
000ba8  6a221b22  vor.u.mz vr4{mr1}, r22, vr1
000bac  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
000bb0  ea211e22  vor.u.mz vr3{mr1}, r28, vr1
000bb4  ea201d22  vor.u.mz vr1{mr1}, r26, vr1
000bb8  12b00a02  vadd.s.mz vr0{mr1}, r21, vr0
000bbc  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
000bc0  eeb201c2  vsrl.s.mz vr5{mr1}, vr3, vr0
000bc4  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
000bc8  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
000bcc  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
000bd0  6a325c02  vand.s.mz vr4{mr1}, r24, vr5
000bd4  6a300202  vand.s.mz vr0{mr1}, r4, vr0
000bd8  ea313c02  vand.s.mz vr3{mr1}, r24, vr3
000bdc  6a312202  vand.s.mz vr2{mr1}, r4, vr2
000be0  6ab00622  vor.s.mz vr0{mr1}, r13, vr0
000be4  6ab24622  vor.s.mz vr4{mr1}, r13, vr4
000be8  eab13622  vor.s.mz vr3{mr1}, r13, vr3
000bec  6ab12622  vor.s.mz vr2{mr1}, r13, vr2
000bf0  06100020  vfloat2fp16_l.rz vr0, vr0
000bf4  86d10120  vfloat2fp16_h.rz vr3, vr3
000bf8  06500120  vfloat2fp16_h.rz vr0, vr2
000bfc  86110220  vfloat2fp16_l.rz vr3, vr4
000c00  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000c04  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
000c08  ea301402  vand.s.mz vr1{mr1}, r8, vr1
000c0c  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
000c10  46800002  vstore.mz vr0{mr1}, 0(r1)
000c14  9f808000  addli r1, r1, 64
000c18  3bfd04fe  bneq r9, zero, -164
000c1c  9f058fd6  addli r11, r30, -5312
000c20  6b510f00  load.d r[3:4], 0(r30)
000c24  6307ffd3  loadli.w r14,  -5640(r30)
000c28  ab0000f0  lui r1, 983040
000c2c  ebd40500  load.d r[10:11], 0(r11)
000c30  00a00000  mfence { lm }
000c34  97101700  or r1, r14, r1
000c38  0b219110  add.ul r[3:4], r[3:4], r[10:11]
000c3c  ff304101  s_lm2gm r1, r20, 0(r[3:4])
000c40  9f000fd5  addli r1, r30, -5504
000c44  00a00200  mfence { lm, gm }
000c48  e3441f00  loadli.w r9,  12(r30)
000c4c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000c50  e3010fd4  loadli.w r3,  -5632(r30)
000c54  e345ffd3  loadli.w r11,  -5636(r30)
000c58  8b933310  add.s r7, r7, r3
000c5c  3fb193fc  blt.s r7, r9, -1972
000c60  abf00000  lui r1, 15
000c64  9b90f0ff  ori r1, r1, 4095
000c68  80a10004  csr_set csr3, r1
000c6c  00d00100  sync_group
000c70  db500b00  j 23172
000c74  e3403f00  loadli.w r1,  28(r30)
000c78  37f9000a  beq r1, zero, 5724
000c7c  e3002f00  loadli.w r1,  16(r30)
000c80  1f010010  addli r2, zero, 2048
000c84  3be92012  bneq r1, r2, 9816
000c88  00350002  core_id r10
000c8c  9f200000  addli r1, zero, 2
000c90  370c1526  beq r10, r1, 20224
000c94  9f100000  addli r1, zero, 1
000c98  b77a1526  beq r10, r1, 20156
000c9c  3b3c0526  bneq r10, zero, 20236
000ca0  9f000040  addli r1, zero, 8192
000ca4  2b0100f0  lui r2, 983040
000ca8  97902000  or r1, r1, r2
000cac  2b110200  lui r2, 33
000cb0  1f010100  addli r2, r2, 0
000cb4  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000cb8  5bde0900  j 20208
000cbc  e3403f00  loadli.w r1,  28(r30)
000cc0  b79a0010  beq r1, zero, 8868
000cc4  80300002  core_id r1
000cc8  1f210000  addli r2, zero, 2
000ccc  b7ea2024  beq r1, r2, 19128
000cd0  1f110000  addli r2, zero, 1
000cd4  37e22022  beq r1, r2, 17560
000cd8  3bab0024  bneq r1, zero, 19144
000cdc  63012f00  loadli.w r2,  16(r30)
000ce0  ab0100f0  lui r3, 983040
000ce4  1b311100  slli r2, r2, 1
000ce8  17113100  or r2, r2, r3
000cec  abd10100  lui r3, 29
000cf0  9f810100  addli r3, r3, 0
000cf4  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000cf8  5b550900  j 19112
000cfc  e3002f00  loadli.w r1,  16(r30)
000d00  1f010010  addli r2, zero, 2048
000d04  bb9f2006  bneq r1, r2, 4068
000d08  e3403f00  loadli.w r1,  28(r30)
000d0c  37cf001a  beq r1, zero, 14288
000d10  003d0002  core_id r26
000d14  abd70000  lui r15, 13
000d18  00510102  load_param_i r2, 2
000d1c  1f150000  addli r10, zero, 1
000d20  9f058fd7  addli r11, r30, -5184
000d24  1f068000  addli r12, zero, 64
000d28  9f060010  addli r13, zero, 2048
000d2c  9b305d00  slli r1, r26, 5
000d30  9b315100  slli r3, r2, 5
000d34  9f8707f0  addli r15, r15, -2048
000d38  1f870000  addli r14, r1, 0
000d3c  33080728  zext_int2long r[17:18], r14
000d40  2b0900f0  lui r18, 983040
000d44  1738a802  sll.d r[17:18], r[17:18], r10
000d48  17192601  or r18, r12, r18
000d4c  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000d50  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000d54  1b382700  slli r16, r14, 2
000d58  0b97e110  add.s r14, r3, r14
000d5c  00a00200  mfence { lm, gm }
000d60  42800502  vload.mz vr0{mr1}, 0(r11)
000d64  9308d704  setlt.u r17, r14, r13
000d68  0b18f810  add.s r16, r16, r15
000d6c  1f098800  addli r18, r16, 64
000d70  86300000  vfp162float_l.rn vr1, vr0
000d74  06700000  vfp162float_h.rn vr0, vr0
000d78  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000d7c  4e100902  vstores_mask16.mz vr0{mr1}, 0(r18)
000d80  bbfe08fe  bneq r17, zero, -68
000d84  abf20000  lui r5, 15
000d88  1b357d00  slli r10, r26, 7
000d8c  1b327100  slli r4, r2, 7
000d90  1f160000  addli r12, zero, 1
000d94  9f068fd7  addli r13, r30, -5184
000d98  1f078000  addli r14, zero, 64
000d9c  1f080010  addli r16, zero, 2048
000da0  9f880000  addli r17, r1, 0
000da4  00a00000  mfence { lm }
000da8  9f8202f0  addli r5, r5, -2048
000dac  8b155510  add.s r11, r10, r5
000db0  33890828  zext_int2long r[19:20], r17
000db4  2b0a00f0  lui r20, 983040
000db8  8b983810  add.s r17, r17, r3
000dbc  1739c902  sll.d r[19:20], r[19:20], r12
000dc0  171a4701  or r20, r14, r20
000dc4  0b292311  add.ul r[19:20], r[7:8], r[19:20]
000dc8  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
000dcc  13890805  setlt.u r18, r17, r16
000dd0  9f898500  addli r19, r11, 64
000dd4  00a00200  mfence { lm, gm }
000dd8  42800602  vload.mz vr0{mr1}, 0(r13)
000ddc  86300000  vfp162float_l.rn vr1, vr0
000de0  06700000  vfp162float_h.rn vr0, vr0
000de4  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
000de8  8b954510  add.s r11, r11, r4
000dec  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
000df0  3b0f09fe  bneq r18, zero, -64
000df4  ab130100  lui r7, 17
000df8  9f058fd7  addli r11, r30, -5184
000dfc  1f068000  addli r12, zero, 64
000e00  9f060010  addli r13, zero, 2048
000e04  00a00000  mfence { lm }
000e08  9f8303f0  addli r7, r7, -2048
000e0c  0b137510  add.s r6, r10, r7
000e10  1f150000  addli r10, zero, 1
000e14  33880028  zext_int2long r[17:18], r1
000e18  2b0700f0  lui r14, 983040
000e1c  8b903010  add.s r1, r1, r3
000e20  1738a802  sll.d r[17:18], r[17:18], r10
000e24  1717e600  or r14, r12, r14
000e28  0b280411  add.ul r[17:18], r[9:10], r[17:18]
000e2c  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000e30  1387d004  setlt.u r14, r1, r13
000e34  1f088300  addli r16, r6, 64
000e38  00a00200  mfence { lm, gm }
000e3c  42800502  vload.mz vr0{mr1}, 0(r11)
000e40  86300000  vfp162float_l.rn vr1, vr0
000e44  06700000  vfp162float_h.rn vr0, vr0
000e48  4e101302  vstores_mask16.mz vr1{mr1}, 0(r6)
000e4c  0b134310  add.s r6, r6, r4
000e50  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
000e54  3b0f07fe  bneq r14, zero, -64
000e58  abf00000  lui r1, 15
000e5c  00a00300  mfence { lm, sm, gm }
000e60  9b011d00  andi r3, r26, 1
000e64  1f020006  addli r4, zero, 768
000e68  9b90f0ff  ori r1, r1, 4095
000e6c  80a10004  csr_set csr3, r1
000e70  9f000006  addli r1, zero, 768
000e74  00d00100  sync_group
000e78  67083fd6  storeli.w r3, -5248(r30)
000e7c  37a00100  beq r3, zero, 8
000e80  1f02000a  addli r4, zero, 1280
000e84  e3411f00  loadli.w r3,  12(r30)
000e88  63471f00  loadli.w r14,  12(r30)
000e8c  1f130000  addli r6, zero, 1
000e90  bf91612c  blt.s r3, r6, 22628
000e94  e3010fd7  loadli.w r3,  -5248(r30)
000e98  1f088fd7  addli r16, r30, -5184
000e9c  1b441100  srli r8, r2, 1
000ea0  1f014200  addli r2, r4, 32
000ea4  9b351200  slli r11, r4, 1
000ea8  2b350100  lui r10, 19
000eac  1f030000  addli r6, zero, 0
000eb0  9b441d00  srli r9, r26, 1
000eb4  1f7a7000  addli r20, zero, 63
000eb8  9f0b0005  addli r23, zero, 640
000ebc  9f0d4000  addli r27, zero, 32
000ec0  1f0b0003  addli r22, zero, 384
000ec4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000ec8  670c2fd4  storeli.w r2, -5440(r30)
000ecc  0b910511  add.s r2, r11, r16
000ed0  1f0505f0  addli r10, r10, -2048
000ed4  8b901120  mul.s r1, r3, r1
000ed8  67041fd6  storeli.w r1, -5312(r30)
000edc  9bb02000  slli r1, r1, 2
000ee0  0b965010  add.s r12, r1, r5
000ee4  8b967010  add.s r13, r1, r7
000ee8  9b302200  slli r1, r4, 2
000eec  ab320100  lui r5, 19
000ef0  8b900011  add.s r1, r1, r16
000ef4  9f8202f4  addli r5, r5, -1536
000ef8  9f8080ff  addli r1, r1, -64
000efc  67081fd4  storeli.w r1, -5504(r30)
000f00  9f0081ff  addli r1, r2, -64
000f04  1f010fd4  addli r2, r30, -5632
000f08  67041fd4  storeli.w r1, -5568(r30)
000f0c  abf0ffff  lui r1, 1048575
000f10  00a00000  mfence { lm }
000f14  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000f18  9b9000f8  ori r1, r1, 3968
000f1c  e74f1fd2  storeli.w r1, -5636(r30)
000f20  abf00000  lui r1, 15
000f24  1b9ef0ff  ori r28, r1, 4095
000f28  db030000  j 28
000f2c  00a00300  mfence { lm, sm, gm }
000f30  80210e04  csr_set csr3, r28
000f34  00d00100  sync_group
000f38  0b138310  add.s r6, r6, r8
000f3c  3f20e300  blt.s r6, r14, 8
000f40  5ba4ffff  j -736
000f44  8b109310  add.s r1, r6, r9
000f48  cb1f17fe  ble.s r14, r1, -28
000f4c  63011f00  loadli.w r2,  8(r30)
000f50  e3018fd6  loadli.w r3,  -5312(r30)
000f54  8b902010  add.s r1, r1, r2
000f58  0b018330  div.u r2, r6, r8
000f5c  9bb0b000  slli r1, r1, 11
000f60  97903000  or r1, r1, r3
000f64  9f110000  addli r3, zero, 1
000f68  b3980028  sext_int2long r[18:19], r1
000f6c  ab0000f0  lui r1, 983040
000f70  1b316100  slli r2, r2, 6
000f74  97b83802  sll.d r[18:19], r[18:19], r3
000f78  9f017fd6  addli r3, r30, -5320
000f7c  97901500  or r1, r11, r1
000f80  1b010104  andi r2, r2, 64
000f84  6bdc0100  load.d r[25:26], 0(r3)
000f88  1717a101  or r14, r2, r26
000f8c  0b2c1c11  add.ul r[25:26], r[25:26], r[18:19]
000f90  ff200c01  l_gm2lm r1, r16, 0(r[25:26])
000f94  00a00200  mfence { lm, gm }
000f98  e3008fd4  loadli.w r1,  -5568(r30)
000f9c  63010fd5  loadli.w r2,  -5504(r30)
000fa0  e3018fd5  loadli.w r3,  -5440(r30)
000fa4  c2800002  vload.mz vr1{mr1}, 0(r1)
000fa8  9f81c1ff  addli r3, r3, -32
000fac  9f0981ff  addli r19, r2, -64
000fb0  9f8080ff  addli r1, r1, -64
000fb4  93033a04  setlt.u r7, r20, r3
000fb8  06f10000  vfp162float_h.rn vr2, vr1
000fbc  86b00000  vfp162float_l.rn vr1, vr1
000fc0  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
000fc4  1f0101ff  addli r2, r2, -128
000fc8  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
000fcc  3bef03fe  bneq r7, zero, -40
000fd0  00a00000  mfence { lm }
000fd4  e3000fd7  loadli.w r1,  -5248(r30)
000fd8  3bc60000  bneq r1, zero, 400
000fdc  9f000fd4  addli r1, r30, -5632
000fe0  e341ffd3  loadli.w r3,  -5636(r30)
000fe4  1f010000  addli r2, zero, 0
000fe8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000fec  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000ff0  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000ff4  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000ff8  8b10f110  add.s r1, r2, r15
000ffc  8b132810  add.s r7, r16, r2
001000  9f810101  addli r3, r3, 128
001004  1f010104  addli r2, r2, 512
001008  9f890001  addli r19, r1, 128
00100c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
001010  9f8a8000  addli r21, r1, 64
001014  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
001018  1f8c8301  addli r24, r7, 192
00101c  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
001020  9f898001  addli r19, r1, 192
001024  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
001028  9f8a8300  addli r21, r7, 64
00102c  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
001030  ca930902  vloads_mask16.mz vr7{mr1}, 0(r19)
001034  9f890301  addli r19, r7, 128
001038  42950a02  vload_mask16.mz vr10{mr1}, 0(r21)
00103c  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
001040  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001044  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
001048  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00104c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
001050  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001054  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
001058  46908902  vstore_mask16.mz vr8{mr1}, 0(r19)
00105c  9f890002  addli r19, r1, 256
001060  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
001064  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
001068  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00106c  46905a02  vstore_mask16.mz vr5{mr1}, 0(r21)
001070  4a900902  vloads_mask16.mz vr0{mr1}, 0(r19)
001074  9f898002  addli r19, r1, 320
001078  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
00107c  1f8c0302  addli r24, r7, 256
001080  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001084  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
001088  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00108c  4a930902  vloads_mask16.mz vr6{mr1}, 0(r19)
001090  9f890003  addli r19, r1, 384
001094  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
001098  9f808003  addli r1, r1, 448
00109c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0010a0  4a940902  vloads_mask16.mz vr8{mr1}, 0(r19)
0010a4  9f898302  addli r19, r7, 320
0010a8  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
0010ac  9f800303  addli r1, r7, 384
0010b0  9f838303  addli r7, r7, 448
0010b4  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
0010b8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0010bc  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0010c0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0010c4  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0010c8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0010cc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0010d0  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
0010d4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0010d8  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
0010dc  93897105  setlt.u r19, r3, r23
0010e0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0010e4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0010e8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0010ec  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0010f0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0010f4  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0010f8  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
0010fc  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001100  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001104  bbdb09fe  bneq r19, zero, -268
001108  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00110c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001110  9f000002  addli r1, zero, 256
001114  6af100c0  vsrl.p vr2, r1, vr0
001118  eaf110c0  vsrl.p vr3, r1, vr1
00111c  9f000001  addli r1, zero, 128
001120  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001124  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001128  6af100c0  vsrl.p vr2, r1, vr0
00112c  eaf110c0  vsrl.p vr3, r1, vr1
001130  9f008000  addli r1, zero, 64
001134  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001138  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00113c  6af100c0  vsrl.p vr2, r1, vr0
001140  eaf110c0  vsrl.p vr3, r1, vr1
001144  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001148  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00114c  6af10dc0  vsrl.p vr2, r27, vr0
001150  eaf11dc0  vsrl.p vr3, r27, vr1
001154  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001158  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00115c  fa100040  vextracti.f r1, 0(vr0)
001160  fa910040  vextracti.f r3, 0(vr1)
001164  db650000  j 812
001168  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00116c  abf0ffff  lui r1, 1048575
001170  1f010000  addli r2, zero, 0
001174  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001178  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00117c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001180  9b9100f8  ori r3, r1, 3968
001184  8b932710  add.s r7, r15, r2
001188  8b192810  add.s r19, r16, r2
00118c  9f810101  addli r3, r3, 128
001190  1f010104  addli r2, r2, 512
001194  1f8c0331  addli r24, r7, 6272
001198  9f800330  addli r1, r7, 6144
00119c  9f8c8331  addli r25, r7, 6336
0011a0  9f8a0918  addli r21, r19, 3072
0011a4  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
0011a8  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
0011ac  9f808330  addli r1, r7, 6208
0011b0  ca940c02  vloads_mask16.mz vr9{mr1}, 0(r25)
0011b4  1f8c0919  addli r24, r19, 3200
0011b8  42930a02  vload_mask16.mz vr6{mr1}, 0(r21)
0011bc  9f8c8919  addli r25, r19, 3264
0011c0  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0011c4  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
0011c8  9f808918  addli r1, r19, 3136
0011cc  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
0011d0  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0011d4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0011d8  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0011dc  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0011e0  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0011e4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0011e8  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0011ec  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
0011f0  9f8a0332  addli r21, r7, 6400
0011f4  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0011f8  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
0011fc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001200  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
001204  1f8c091a  addli r24, r19, 3328
001208  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
00120c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001210  9f80091b  addli r1, r19, 3456
001214  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
001218  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00121c  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
001220  9f8a8332  addli r21, r7, 6464
001224  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001228  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00122c  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
001230  9f8a0333  addli r21, r7, 6528
001234  9f838333  addli r7, r7, 6592
001238  4a940a02  vloads_mask16.mz vr8{mr1}, 0(r21)
00123c  9f8a891a  addli r21, r19, 3392
001240  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
001244  9f83891b  addli r7, r19, 3520
001248  93896105  setlt.u r19, r3, r22
00124c  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
001250  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001254  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001258  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00125c  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001260  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001264  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001268  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
00126c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001270  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
001274  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001278  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00127c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001280  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001284  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001288  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00128c  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001290  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001294  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001298  bbbb09fe  bneq r19, zero, -276
00129c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0012a0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0012a4  9f000002  addli r1, zero, 256
0012a8  9f0a0000  addli r21, zero, 0
0012ac  eaf110c0  vsrl.p vr3, r1, vr1
0012b0  6af100c0  vsrl.p vr2, r1, vr0
0012b4  9f000001  addli r1, zero, 128
0012b8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0012bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0012c0  eaf110c0  vsrl.p vr3, r1, vr1
0012c4  6af100c0  vsrl.p vr2, r1, vr0
0012c8  9f008000  addli r1, zero, 64
0012cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0012d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0012d4  eaf110c0  vsrl.p vr3, r1, vr1
0012d8  6af100c0  vsrl.p vr2, r1, vr0
0012dc  abf0ffff  lui r1, 1048575
0012e0  9b9900f8  ori r19, r1, 3968
0012e4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0012e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0012ec  eaf11dc0  vsrl.p vr3, r27, vr1
0012f0  6af10dc0  vsrl.p vr2, r27, vr0
0012f4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0012f8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0012fc  fa910040  vextracti.f r3, 0(vr1)
001300  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001304  7a110040  vextracti.f r2, 0(vr0)
001308  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00130c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001310  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001314  8b905711  add.s r1, r15, r21
001318  8b135811  add.s r7, r16, r21
00131c  9f890901  addli r19, r19, 128
001320  9f8a0a04  addli r21, r21, 512
001324  1f8c0018  addli r24, r1, 3072
001328  9f8c0019  addli r25, r1, 3200
00132c  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
001330  1f8d8301  addli r26, r7, 192
001334  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
001338  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
00133c  1f8c8018  addli r24, r1, 3136
001340  9f8c8019  addli r25, r1, 3264
001344  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
001348  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
00134c  1f8c0301  addli r24, r7, 128
001350  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
001354  9f8c8300  addli r25, r7, 64
001358  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
00135c  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
001360  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001364  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
001368  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00136c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
001370  46108c02  vstore_mask16.mz vr8{mr1}, 0(r24)
001374  1f8c001a  addli r24, r1, 3328
001378  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00137c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001380  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
001384  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
001388  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
00138c  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
001390  1f8c801a  addli r24, r1, 3392
001394  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
001398  1f8d0302  addli r26, r7, 256
00139c  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
0013a0  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0013a4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0013a8  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0013ac  1f8c001b  addli r24, r1, 3456
0013b0  c2130d02  vload_mask16.mz vr7{mr1}, 0(r26)
0013b4  9f80801b  addli r1, r1, 3520
0013b8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0013bc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0013c0  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
0013c4  1f8c8302  addli r24, r7, 320
0013c8  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
0013cc  9f800303  addli r1, r7, 384
0013d0  9f838303  addli r7, r7, 448
0013d4  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
0013d8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0013dc  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0013e0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0013e4  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0013e8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0013ec  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0013f0  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
0013f4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0013f8  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
0013fc  138c7905  setlt.u r24, r19, r23
001400  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001404  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001408  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00140c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001410  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001414  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001418  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
00141c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001420  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001424  bb4b0cfe  bneq r24, zero, -272
001428  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00142c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001430  9f000002  addli r1, zero, 256
001434  003d0002  core_id r26
001438  6af100c0  vsrl.p vr2, r1, vr0
00143c  eaf110c0  vsrl.p vr3, r1, vr1
001440  9f000001  addli r1, zero, 128
001444  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001448  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00144c  6af100c0  vsrl.p vr2, r1, vr0
001450  eaf110c0  vsrl.p vr3, r1, vr1
001454  9f008000  addli r1, zero, 64
001458  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00145c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001460  6af100c0  vsrl.p vr2, r1, vr0
001464  eaf110c0  vsrl.p vr3, r1, vr1
001468  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00146c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001470  6af10dc0  vsrl.p vr2, r27, vr0
001474  eaf11dc0  vsrl.p vr3, r27, vr1
001478  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00147c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001480  fa100040  vextracti.f r1, 0(vr0)
001484  fa930040  vextracti.f r7, 0(vr1)
001488  8b601110  add.f.rn r1, r2, r1
00148c  8be17110  add.f.rn r3, r3, r7
001490  9b332700  slli r7, r14, 2
001494  1f010000  addli r2, zero, 0
001498  8b99a310  add.s r19, r7, r10
00149c  8b9a5310  add.s r21, r7, r5
0014a0  73e01900  stores.w r1, 0(r19)
0014a4  9b00e707  andi r1, r14, 126
0014a8  73e03a00  stores.w r3, 0(r21)
0014ac  9b914300  ori r3, r7, 4
0014b0  9f090000  addli r19, zero, 0
0014b4  00a00300  mfence { lm, sm, gm }
0014b8  80210e04  csr_set csr3, r28
0014bc  00d00100  sync_group
0014c0  9bb02000  slli r1, r1, 2
0014c4  8b93a110  add.s r7, r3, r10
0014c8  8b915110  add.s r3, r3, r5
0014cc  0b97a010  add.s r14, r1, r10
0014d0  efc30300  loads.w r7, 0(r7)
0014d4  8b905010  add.s r1, r1, r5
0014d8  efc10100  loads.w r3, 0(r3)
0014dc  6f470700  loads.w r14, 0(r14)
0014e0  efc00000  loads.w r1, 0(r1)
0014e4  8be3e310  add.f.rn r7, r7, r14
0014e8  8be01110  add.f.rn r1, r3, r1
0014ec  ab01003a  lui r3, 237568
0014f0  8be33320  mul.f.rn r7, r7, r3
0014f4  8be03020  mul.f.rn r1, r1, r3
0014f8  8be17320  mul.f.rn r3, r7, r7
0014fc  0be70358  neg.f r14, r7
001500  8be03018  sub.f.rn r1, r1, r3
001504  e3013f00  loadli.w r3,  24(r30)
001508  8be03010  add.f.rn r1, r1, r3
00150c  ab01803f  lui r3, 260096
001510  8f800008  sqrt.f.rn r1, r1
001514  8f811118  div.f.rn r3, r3, r1
001518  8b102610  add.s r1, r12, r2
00151c  8b132810  add.s r7, r16, r2
001520  8b9a2610  add.s r21, r13, r2
001524  9f8c8000  addli r25, r1, 64
001528  1f8c8300  addli r24, r7, 64
00152c  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
001530  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
001534  4a920a02  vloads_mask16.mz vr4{mr1}, 0(r21)
001538  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
00153c  9f8c8a00  addli r25, r21, 64
001540  c2100c02  vload_mask16.mz vr1{mr1}, 0(r24)
001544  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
001548  9f8c4900  addli r25, r19, 32
00154c  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
001550  930c9207  setle.u r25, r4, r25
001554  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
001558  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
00155c  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
001560  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
001564  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
001568  46904302  vstore_mask16.mz vr4{mr1}, 0(r7)
00156c  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
001570  bb910c00  bneq r25, zero, 100
001574  9f8c0001  addli r25, r1, 128
001578  1f8c0301  addli r24, r7, 128
00157c  9f838301  addli r7, r7, 192
001580  9f808001  addli r1, r1, 192
001584  9f898900  addli r19, r19, 64
001588  1f010102  addli r2, r2, 256
00158c  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
001590  9f8c0a01  addli r25, r21, 128
001594  9f8a8a01  addli r21, r21, 192
001598  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
00159c  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
0015a0  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
0015a4  93804904  setlt.u r1, r19, r4
0015a8  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
0015ac  ca920a02  vloads_mask16.mz vr5{mr1}, 0(r21)
0015b0  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
0015b4  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
0015b8  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
0015bc  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
0015c0  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
0015c4  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0015c8  46103c02  vstore_mask16.mz vr3{mr1}, 0(r24)
0015cc  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
0015d0  3bad00fe  bneq r1, zero, -184
0015d4  9f008fd7  addli r1, r30, -5184
0015d8  1f018fd7  addli r2, r30, -5184
0015dc  9f010000  addli r3, zero, 0
0015e0  00a00000  mfence { lm }
0015e4  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0015e8  9f038100  addli r7, r2, 64
0015ec  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
0015f0  9f814100  addli r3, r3, 32
0015f4  1f010101  addli r2, r2, 128
0015f8  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
0015fc  93834104  setlt.u r7, r3, r4
001600  06110000  vfloat2fp16_l.rn vr2, vr0
001604  06d10000  vfloat2fp16_h.rn vr2, vr1
001608  46802002  vstore.mz vr2{mr1}, 0(r1)
00160c  9f808000  addli r1, r1, 64
001610  3bdf03fe  bneq r7, zero, -44
001614  6b510f00  load.d r[3:4], 0(r30)
001618  ab0000f0  lui r1, 983040
00161c  00a00000  mfence { lm }
001620  97901500  or r1, r11, r1
001624  0b211111  add.ul r[3:4], r[3:4], r[18:19]
001628  ff300101  s_lm2gm r1, r16, 0(r[3:4])
00162c  00a00200  mfence { lm, gm }
001630  63471f00  loadli.w r14,  12(r30)
001634  db20ffff  j -1788
001638  e3403f00  loadli.w r1,  28(r30)
00163c  37850014  beq r1, zero, 10560
001640  003a0002  core_id r20
001644  63012f00  loadli.w r2,  16(r30)
001648  005c0102  load_param_i r24, 2
00164c  9b305a00  slli r1, r20, 5
001650  4b431100  ble.s r2, r1, 208
001654  2b960000  lui r12, 9
001658  9f110000  addli r3, zero, 1
00165c  1f058fd7  addli r10, r30, -5184
001660  9f058000  addli r11, zero, 64
001664  1b315c00  slli r2, r24, 5
001668  9f860000  addli r13, r1, 0
00166c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001670  1f0606f0  addli r12, r12, -2048
001674  33880628  zext_int2long r[17:18], r13
001678  2b0900f0  lui r18, 983040
00167c  17383802  sll.d r[17:18], r[17:18], r3
001680  17992501  or r18, r11, r18
001684  0b280211  add.ul r[17:18], r[5:6], r[17:18]
001688  7f29a800  l_gm2lm r18, r10, 0(r[17:18])
00168c  1bb82600  slli r16, r13, 2
001690  8b16d110  add.s r13, r2, r13
001694  00a00200  mfence { lm, gm }
001698  c2000502  vload.mz vr1{mr1}, 0(r10)
00169c  0b18c810  add.s r16, r16, r12
0016a0  9f088800  addli r17, r16, 64
0016a4  66411080  vmerge_l.hf vr2, vr0, vr1
0016a8  e64010a0  vmerge_h.hf vr1, vr0, vr1
0016ac  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
0016b0  4e901802  vstores_mask16.mz vr1{mr1}, 0(r17)
0016b4  3f8ff6fe  blt.s r13, r15, -64
0016b8  2ba20000  lui r4, 10
0016bc  9b317a00  slli r3, r20, 7
0016c0  9f120000  addli r5, zero, 1
0016c4  1f058fd7  addli r10, r30, -5184
0016c8  9f058000  addli r11, zero, 64
0016cc  1f860000  addli r12, r1, 0
0016d0  00a00000  mfence { lm }
0016d4  1f0202f0  addli r4, r4, -2048
0016d8  8b914110  add.s r3, r3, r4
0016dc  1b327c00  slli r4, r24, 7
0016e0  33080628  zext_int2long r[17:18], r12
0016e4  ab0600f0  lui r13, 983040
0016e8  0b162610  add.s r12, r12, r2
0016ec  17385802  sll.d r[17:18], r[17:18], r5
0016f0  9796d500  or r13, r11, r13
0016f4  0b280311  add.ul r[17:18], r[7:8], r[17:18]
0016f8  ff26a800  l_gm2lm r13, r10, 0(r[17:18])
0016fc  9f868100  addli r13, r3, 64
001700  00a00200  mfence { lm, gm }
001704  c2000502  vload.mz vr1{mr1}, 0(r10)
001708  66411080  vmerge_l.hf vr2, vr0, vr1
00170c  e64010a0  vmerge_h.hf vr1, vr0, vr1
001710  4e902102  vstores_mask16.mz vr2{mr1}, 0(r3)
001714  8b914110  add.s r3, r3, r4
001718  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
00171c  3f1ff6fe  blt.s r12, r15, -60
001720  63012f00  loadli.w r2,  16(r30)
001724  cb211100  ble.s r2, r1, 104
001728  2bb30000  lui r6, 11
00172c  1f110000  addli r2, zero, 1
001730  9f018fd7  addli r3, r30, -5184
001734  1f028000  addli r4, zero, 64
001738  9b325c00  slli r5, r24, 5
00173c  00a00000  mfence { lm }
001740  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001744  1f0303f0  addli r6, r6, -2048
001748  33850028  zext_int2long r[11:12], r1
00174c  ab0300f0  lui r7, 983040
001750  17352502  sll.d r[11:12], r[11:12], r2
001754  97137200  or r7, r4, r7
001758  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
00175c  ff233500  l_gm2lm r7, r3, 0(r[11:12])
001760  9bb32000  slli r7, r1, 2
001764  8b901210  add.s r1, r5, r1
001768  00a00200  mfence { lm, gm }
00176c  c2800102  vload.mz vr1{mr1}, 0(r3)
001770  8b936310  add.s r7, r7, r6
001774  1f858300  addli r10, r7, 64
001778  66411080  vmerge_l.hf vr2, vr0, vr1
00177c  e64010a0  vmerge_h.hf vr1, vr0, vr1
001780  4e902302  vstores_mask16.mz vr2{mr1}, 0(r7)
001784  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001788  3f8ff0fe  blt.s r1, r15, -64
00178c  abf00000  lui r1, 15
001790  63411f00  loadli.w r2,  12(r30)
001794  00a00300  mfence { lm, sm, gm }
001798  9b90f0ff  ori r1, r1, 4095
00179c  80a10004  csr_set csr3, r1
0017a0  00d00100  sync_group
0017a4  4b4d4127  ble.s r2, r20, 20304
0017a8  e3002f00  loadli.w r1,  16(r30)
0017ac  63412f00  loadli.w r2,  20(r30)
0017b0  1f048fd7  addli r8, r30, -5184
0017b4  9f160000  addli r13, zero, 1
0017b8  1f084000  addli r16, zero, 32
0017bc  9f090002  addli r19, zero, 256
0017c0  9f0a0001  addli r21, zero, 128
0017c4  1f0b8000  addli r22, zero, 64
0017c8  ab0b803f  lui r23, 260096
0017cc  2bee7f00  lui r28, 2046
0017d0  abe40700  lui r9, 126
0017d4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0017d8  33820008  fix2float.rn r4, r1
0017dc  8b912010  add.s r3, r1, r2
0017e0  9bb31000  slli r7, r1, 1
0017e4  1b362100  slli r12, r2, 2
0017e8  e74f4fd2  storeli.w r4, -5636(r30)
0017ec  1bb22000  slli r4, r1, 2
0017f0  9f804000  addli r1, r1, 32
0017f4  9ff1f1ff  addli r3, r3, -1
0017f8  e70f1fd2  storeli.w r1, -5640(r30)
0017fc  8b108210  add.s r1, r4, r8
001800  0b932130  div.s r6, r3, r2
001804  8b918310  add.s r3, r7, r8
001808  1f717000  addli r2, zero, 63
00180c  9f8080ff  addli r1, r1, -64
001810  674f1fd2  storeli.w r1, -5644(r30)
001814  9f8081ff  addli r1, r3, -64
001818  670f1fd2  storeli.w r1, -5648(r30)
00181c  abf0ffff  lui r1, 1048575
001820  00a00000  mfence { lm }
001824  67048fd5  storeli.w r24, -5568(r30)
001828  67007fd4  storeli.w r7, -5632(r30)
00182c  9b90f0ff  ori r1, r1, 4095
001830  67041fd6  storeli.w r1, -5312(r30)
001834  ab700000  lui r1, 7
001838  1b9df0ff  ori r26, r1, 4095
00183c  ab00ff03  lui r1, 16368
001840  9b95f03f  ori r11, r1, 1023
001844  abf000fc  lui r1, 1032207
001848  9b9100c0  ori r3, r1, 3072
00184c  9f000fd7  addli r1, r30, -5248
001850  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001854  db080000  j 68
001858  9f030fd5  addli r7, r30, -5504
00185c  6b520f00  load.d r[5:6], 0(r30)
001860  ab0000f0  lui r1, 983040
001864  ebd80300  load.d r[18:19], 0(r7)
001868  e3030fd4  loadli.w r7,  -5632(r30)
00186c  00a00000  mfence { lm }
001870  630a8fd5  loadli.w r20,  -5440(r30)
001874  630c8fd4  loadli.w r24,  -5568(r30)
001878  0b221211  add.ul r[5:6], r[5:6], r[18:19]
00187c  97901300  or r1, r7, r1
001880  0b1a4c11  add.s r20, r24, r20
001884  ff308200  s_lm2gm r1, r8, 0(r[5:6])
001888  00a00200  mfence { lm, gm }
00188c  e3401f00  loadli.w r1,  12(r30)
001890  3f201a00  blt.s r20, r1, 8
001894  5bcc0900  j 20064
001898  e3001f00  loadli.w r1,  8(r30)
00189c  1f057fd6  addli r10, r30, -5320
0018a0  8b101a10  add.s r1, r20, r1
0018a4  8b90f020  mul.s r1, r1, r15
0018a8  33920028  sext_int2long r[5:6], r1
0018ac  ab0000f0  lui r1, 983040
0018b0  9738d202  sll.d r[18:19], r[5:6], r13
0018b4  6b520500  load.d r[5:6], 0(r10)
0018b8  97901300  or r1, r7, r1
0018bc  1f050fd5  addli r10, r30, -5504
0018c0  73301501  store.d r[18:19], 0(r10)
0018c4  0b221211  add.ul r[5:6], r[5:6], r[18:19]
0018c8  ff208200  l_gm2lm r1, r8, 0(r[5:6])
0018cc  00a00200  mfence { lm, gm }
0018d0  bff00701  blt.s r15, r16, 60
0018d4  e300efd3  loadli.w r1,  -5648(r30)
0018d8  6342efd3  loadli.w r4,  -5644(r30)
0018dc  e302ffd3  loadli.w r5,  -5640(r30)
0018e0  c2800002  vload.mz vr1{mr1}, 0(r1)
0018e4  9f82c2ff  addli r5, r5, -32
0018e8  9f0882ff  addli r17, r4, -64
0018ec  9f8080ff  addli r1, r1, -64
0018f0  93035104  setlt.u r7, r2, r5
0018f4  664110a0  vmerge_h.hf vr2, vr0, vr1
0018f8  e6401080  vmerge_l.hf vr1, vr0, vr1
0018fc  46102202  vstore_mask16.mz vr2{mr1}, 0(r4)
001900  1f0202ff  addli r4, r4, -128
001904  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
001908  3bef03fe  bneq r7, zero, -40
00190c  00a00000  mfence { lm }
001910  670c4fd5  storeli.w r20, -5440(r30)
001914  bf57d300  blt.s r6, r13, 500
001918  9f020000  addli r5, zero, 0
00191c  1f020000  addli r4, zero, 0
001920  9f030000  addli r7, zero, 0
001924  db0d0000  j 108
001928  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
00192c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001930  9f930300  addli r7, r7, 1
001934  6af109c0  vsrl.p vr2, r19, vr0
001938  eaf119c0  vsrl.p vr3, r19, vr1
00193c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001940  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001944  6af10ac0  vsrl.p vr2, r21, vr0
001948  eaf11ac0  vsrl.p vr3, r21, vr1
00194c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001950  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001954  6a710bc0  vsrl.p vr2, r22, vr0
001958  ea711bc0  vsrl.p vr3, r22, vr1
00195c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001960  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001964  6a7108c0  vsrl.p vr2, r16, vr0
001968  ea7118c0  vsrl.p vr3, r16, vr1
00196c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001970  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001974  fa100040  vextracti.f r1, 0(vr0)
001978  7a910040  vextracti.f r2, 0(vr1)
00197c  8be21210  add.f.rn r5, r5, r1
001980  9f000fd7  addli r1, r30, -5248
001984  0b622210  add.f.rn r4, r4, r2
001988  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00198c  37966300  beq r7, r6, 388
001990  9f880300  addli r17, r7, 0
001994  37403701  beq r14, r19, 16
001998  e3008fd6  loadli.w r1,  -5312(r30)
00199c  97a01300  xor r1, r7, r1
0019a0  8b181310  add.s r17, r6, r1
0019a4  8b90e820  mul.s r1, r17, r14
0019a8  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0019ac  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0019b0  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0019b4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0019b8  8b901718  sub.s r1, r15, r1
0019bc  8b90e040  min.s r1, r1, r14
0019c0  bfadd0fe  blt.s r1, r13, -152
0019c4  1f010fd7  addli r2, r30, -5248
0019c8  2b9c0000  lui r24, 9
0019cc  1f0a0000  addli r20, zero, 0
0019d0  8b181621  mul.s r17, r12, r17
0019d4  1f098fd7  addli r18, r30, -5184
0019d8  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0019dc  1f0c0cf0  addli r24, r24, -2048
0019e0  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0019e4  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0019e8  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0019ec  8b1d1c11  add.s r27, r24, r17
0019f0  8b1c1911  add.s r25, r18, r17
0019f4  1f848d00  addli r8, r27, 64
0019f8  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
0019fc  1f858d01  addli r10, r27, 192
001a00  c2940c02  vload_mask16.mz vr9{mr1}, 0(r25)
001a04  1f818c01  addli r2, r25, 192
001a08  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
001a0c  1f840d01  addli r8, r27, 128
001a10  4a140502  vloads_mask16.mz vr8{mr1}, 0(r10)
001a14  1f850c01  addli r10, r25, 128
001a18  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
001a1c  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
001a20  c2150502  vload_mask16.mz vr11{mr1}, 0(r10)
001a24  1f848c00  addli r8, r25, 64
001a28  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
001a2c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001a30  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001a34  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001a38  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001a3c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001a40  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001a44  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
001a48  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
001a4c  1f048a00  addli r8, r20, 64
001a50  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001a54  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001a58  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001a5c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001a60  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001a64  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
001a68  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001a6c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001a70  cbea80fe  ble.s r1, r8, -328
001a74  1f840d02  addli r8, r27, 256
001a78  1f858d02  addli r10, r27, 320
001a7c  1f810c02  addli r2, r25, 256
001a80  1f0a0a01  addli r20, r20, 128
001a84  1f0c0c04  addli r24, r24, 512
001a88  1f090904  addli r18, r18, 512
001a8c  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
001a90  1f840d03  addli r8, r27, 384
001a94  ca120502  vloads_mask16.mz vr5{mr1}, 0(r10)
001a98  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
001a9c  1f858c02  addli r10, r25, 320
001aa0  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
001aa4  1f848d03  addli r8, r27, 448
001aa8  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
001aac  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
001ab0  1f840c03  addli r8, r25, 384
001ab4  9f8c8c03  addli r25, r25, 448
001ab8  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
001abc  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
001ac0  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
001ac4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001ac8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001acc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001ad0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001ad4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001ad8  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
001adc  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
001ae0  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001ae4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001ae8  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
001aec  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001af0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001af4  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001af8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001afc  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
001b00  bf3b1afe  blt.s r20, r1, -276
001b04  dbc4ffff  j -476
001b08  1f020000  addli r4, zero, 0
001b0c  9f020000  addli r5, zero, 0
001b10  2ba50000  lui r10, 10
001b14  abbd0000  lui r27, 11
001b18  1f048fd7  addli r8, r30, -5184
001b1c  00a00000  mfence { lm }
001b20  1f0505f0  addli r10, r10, -2048
001b24  9f8d0df0  addli r27, r27, -2048
001b28  bfc3d700  blt.s r15, r13, 240
001b2c  6341ffd3  loadli.w r2,  -5636(r30)
001b30  9f000000  addli r1, zero, 0
001b34  8f822218  div.f.rn r5, r5, r2
001b38  0f022218  div.f.rn r4, r4, r2
001b3c  63013f00  loadli.w r2,  24(r30)
001b40  8be35220  mul.f.rn r7, r5, r5
001b44  8be20258  neg.f r5, r5
001b48  0b627218  sub.f.rn r4, r4, r7
001b4c  9f030000  addli r7, zero, 0
001b50  0b622210  add.f.rn r4, r4, r2
001b54  0f020208  sqrt.f.rn r4, r4
001b58  0f824b18  div.f.rn r4, r23, r4
001b5c  0b99a010  add.s r18, r1, r10
001b60  8b181410  add.s r17, r8, r1
001b64  1f0a8900  addli r20, r18, 64
001b68  4a110902  vloads_mask16.mz vr2{mr1}, 0(r18)
001b6c  0b99b011  add.s r18, r1, r27
001b70  c2900802  vload_mask16.mz vr1{mr1}, 0(r17)
001b74  ca110a02  vloads_mask16.mz vr3{mr1}, 0(r20)
001b78  1f8a8800  addli r20, r17, 64
001b7c  4a120902  vloads_mask16.mz vr4{mr1}, 0(r18)
001b80  1f098900  addli r18, r18, 64
001b84  c2120a02  vload_mask16.mz vr5{mr1}, 0(r20)
001b88  4a130902  vloads_mask16.mz vr6{mr1}, 0(r18)
001b8c  1f894300  addli r18, r7, 32
001b90  92901202  vadd.f.mz.rn vr1{mr1}, r5, vr1
001b94  92925202  vadd.f.mz.rn vr5{mr1}, r5, vr5
001b98  8a101202  vmul.f.mz.rn vr1{mr1}, r4, vr1
001b9c  8a125202  vmul.f.mz.rn vr5{mr1}, r4, vr5
001ba0  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
001ba4  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
001ba8  46904802  vstore_mask16.mz vr4{mr1}, 0(r17)
001bac  46106a02  vstore_mask16.mz vr6{mr1}, 0(r20)
001bb0  cba12701  ble.s r15, r18, 104
001bb4  0b191510  add.s r18, r10, r1
001bb8  0b9a1d10  add.s r20, r27, r1
001bbc  9f838300  addli r7, r7, 64
001bc0  9f800002  addli r1, r1, 256
001bc4  1f0c0901  addli r24, r18, 128
001bc8  9f0c0a01  addli r25, r20, 128
001bcc  1f098901  addli r18, r18, 192
001bd0  1f0a8a01  addli r20, r20, 192
001bd4  ca100c02  vloads_mask16.mz vr1{mr1}, 0(r24)
001bd8  1f8c0801  addli r24, r17, 128
001bdc  9f888801  addli r17, r17, 192
001be0  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
001be4  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
001be8  4a130a02  vloads_mask16.mz vr6{mr1}, 0(r20)
001bec  c2110c02  vload_mask16.mz vr3{mr1}, 0(r24)
001bf0  42920802  vload_mask16.mz vr4{mr1}, 0(r17)
001bf4  92913202  vadd.f.mz.rn vr3{mr1}, r5, vr3
001bf8  12924202  vadd.f.mz.rn vr4{mr1}, r5, vr4
001bfc  8a113202  vmul.f.mz.rn vr3{mr1}, r4, vr3
001c00  0a124202  vmul.f.mz.rn vr4{mr1}, r4, vr4
001c04  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
001c08  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
001c0c  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
001c10  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
001c14  3fadf3fe  blt.s r7, r15, -184
001c18  1f717000  addli r2, zero, 63
001c1c  1f052000  addli r10, zero, 16
001c20  9f380000  addli r17, zero, 3
001c24  1f591000  addli r18, zero, 13
001c28  1f2a1000  addli r20, zero, 10
001c2c  00a00000  mfence { lm }
001c30  bfa0d7fe  blt.s r15, r13, -984
001c34  9f008fd7  addli r1, r30, -5184
001c38  1f028fd7  addli r4, r30, -5184
001c3c  9f020000  addli r5, zero, 0
001c40  9f038200  addli r7, r4, 64
001c44  42110202  vload_mask16.mz vr2{mr1}, 0(r4)
001c48  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001c4c  9f824200  addli r5, r5, 32
001c50  1f020201  addli r4, r4, 128
001c54  6a221522  vor.u.mz vr4{mr1}, r10, vr1
001c58  c2910302  vload_mask16.mz vr3{mr1}, 0(r7)
001c5c  ee3222c2  vsrl.s.mz vr5{mr1}, vr4, vr2
001c60  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
001c64  eab25602  vand.s.mz vr5{mr1}, r13, vr5
001c68  6ab24602  vand.s.mz vr4{mr1}, r13, vr4
001c6c  16315102  vadd.s.mz vr2{mr1}, vr2, vr5
001c70  eaa21822  vor.u.mz vr5{mr1}, r17, vr1
001c74  96b14102  vadd.s.mz vr3{mr1}, vr3, vr4
001c78  6a221922  vor.u.mz vr4{mr1}, r18, vr1
001c7c  ea201a22  vor.u.mz vr1{mr1}, r20, vr1
001c80  12312d02  vadd.s.mz vr2{mr1}, r26, vr2
001c84  92313d02  vadd.s.mz vr3{mr1}, r26, vr3
001c88  6e3322c2  vsrl.s.mz vr6{mr1}, vr4, vr2
001c8c  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
001c90  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
001c94  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
001c98  eab26402  vand.s.mz vr5{mr1}, r9, vr6
001c9c  6a312e02  vand.s.mz vr2{mr1}, r28, vr2
001ca0  6ab24402  vand.s.mz vr4{mr1}, r9, vr4
001ca4  ea313e02  vand.s.mz vr3{mr1}, r28, vr3
001ca8  6ab12b22  vor.s.mz vr2{mr1}, r23, vr2
001cac  eab25b22  vor.s.mz vr5{mr1}, r23, vr5
001cb0  6ab24b22  vor.s.mz vr4{mr1}, r23, vr4
001cb4  eab13b22  vor.s.mz vr3{mr1}, r23, vr3
001cb8  06110120  vfloat2fp16_l.rz vr2, vr2
001cbc  06520220  vfloat2fp16_h.rz vr4, vr4
001cc0  06d10120  vfloat2fp16_h.rz vr2, vr3
001cc4  06920220  vfloat2fp16_l.rz vr4, vr5
001cc8  6ab12502  vand.s.mz vr2{mr1}, r11, vr2
001ccc  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
001cd0  eab01102  vand.s.mz vr1{mr1}, r3, vr1
001cd4  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
001cd8  46801002  vstore.mz vr1{mr1}, 0(r1)
001cdc  9f808000  addli r1, r1, 64
001ce0  bf8df2fe  blt.s r5, r15, -160
001ce4  db6effff  j -1164
001ce8  e3403f00  loadli.w r1,  28(r30)
001cec  37df0016  beq r1, zero, 12244
001cf0  80300002  core_id r1
001cf4  e3012f00  loadli.w r3,  16(r30)
001cf8  1bb15000  slli r2, r1, 5
001cfc  4bc32100  ble.s r3, r2, 208
001d00  2b580100  lui r16, 21
001d04  00550102  load_param_i r10, 2
001d08  9f150000  addli r11, zero, 1
001d0c  1f068fd7  addli r12, r30, -5184
001d10  9f068000  addli r13, zero, 64
001d14  9f080100  addli r17, r2, 0
001d18  9b315500  slli r3, r10, 5
001d1c  1f080800  addli r16, r16, 0
001d20  33890828  zext_int2long r[19:20], r17
001d24  2b0a00f0  lui r20, 983040
001d28  1739b902  sll.d r[19:20], r[19:20], r11
001d2c  179a4601  or r20, r13, r20
001d30  0b292211  add.ul r[19:20], r[5:6], r[19:20]
001d34  7f2ac900  l_gm2lm r20, r12, 0(r[19:20])
001d38  1bb92800  slli r18, r17, 2
001d3c  8b981111  add.s r17, r3, r17
001d40  00a00200  mfence { lm, gm }
001d44  42000602  vload.mz vr0{mr1}, 0(r12)
001d48  0b190911  add.s r18, r18, r16
001d4c  9f098900  addli r19, r18, 64
001d50  86300000  vfp162float_l.rn vr1, vr0
001d54  06700000  vfp162float_h.rn vr0, vr0
001d58  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
001d5c  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
001d60  3f8ff8fe  blt.s r17, r15, -64
001d64  ab620100  lui r5, 22
001d68  1bb27000  slli r4, r1, 7
001d6c  9f058fd7  addli r11, r30, -5184
001d70  1f068000  addli r12, zero, 64
001d74  9f060100  addli r13, r2, 0
001d78  00a00000  mfence { lm }
001d7c  9f820200  addli r5, r5, 0
001d80  0b125210  add.s r4, r4, r5
001d84  9b327500  slli r5, r10, 7
001d88  1f150000  addli r10, zero, 1
001d8c  33880628  zext_int2long r[17:18], r13
001d90  2b0900f0  lui r18, 983040
001d94  8b963610  add.s r13, r13, r3
001d98  1738a802  sll.d r[17:18], r[17:18], r10
001d9c  17192601  or r18, r12, r18
001da0  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001da4  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
001da8  1f088200  addli r16, r4, 64
001dac  00a00200  mfence { lm, gm }
001db0  42800502  vload.mz vr0{mr1}, 0(r11)
001db4  86300000  vfp162float_l.rn vr1, vr0
001db8  06700000  vfp162float_h.rn vr0, vr0
001dbc  4e101202  vstores_mask16.mz vr1{mr1}, 0(r4)
001dc0  0b125210  add.s r4, r4, r5
001dc4  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
001dc8  3f9ff6fe  blt.s r13, r15, -60
001dcc  e3012f00  loadli.w r3,  16(r30)
001dd0  cba12100  ble.s r3, r2, 104
001dd4  00530102  load_param_i r6, 2
001dd8  ab730100  lui r7, 23
001ddc  9f110000  addli r3, zero, 1
001de0  1f028fd7  addli r4, r30, -5184
001de4  9f028000  addli r5, zero, 64
001de8  00a00000  mfence { lm }
001dec  1b335300  slli r6, r6, 5
001df0  9f830300  addli r7, r7, 0
001df4  33050128  zext_int2long r[11:12], r2
001df8  2b0600f0  lui r12, 983040
001dfc  17353502  sll.d r[11:12], r[11:12], r3
001e00  1796c200  or r12, r5, r12
001e04  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001e08  7f264500  l_gm2lm r12, r4, 0(r[11:12])
001e0c  1b352100  slli r10, r2, 2
001e10  0b112310  add.s r2, r6, r2
001e14  00a00200  mfence { lm, gm }
001e18  42000202  vload.mz vr0{mr1}, 0(r4)
001e1c  0b157510  add.s r10, r10, r7
001e20  9f058500  addli r11, r10, 64
001e24  86300000  vfp162float_l.rn vr1, vr0
001e28  06700000  vfp162float_h.rn vr0, vr0
001e2c  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001e30  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
001e34  3f0ff1fe  blt.s r2, r15, -64
001e38  2bf10000  lui r2, 15
001e3c  e3411f00  loadli.w r3,  12(r30)
001e40  00a00300  mfence { lm, sm, gm }
001e44  1b11f1ff  ori r2, r2, 4095
001e48  80210104  csr_set csr3, r2
001e4c  00d00100  sync_group
001e50  cb921124  ble.s r3, r1, 18596
001e54  63012f00  loadli.w r2,  16(r30)
001e58  e3412f00  loadli.w r3,  20(r30)
001e5c  9f0b8fd7  addli r23, r30, -5184
001e60  2b540100  lui r8, 21
001e64  ab6a0100  lui r21, 22
001e68  2b7b0100  lui r22, 23
001e6c  1f150000  addli r10, zero, 1
001e70  9f054000  addli r11, zero, 32
001e74  1f767000  addli r12, zero, 63
001e78  1f080002  addli r16, zero, 256
001e7c  1f090001  addli r18, zero, 128
001e80  9f098000  addli r19, zero, 64
001e84  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001e88  1f040400  addli r8, r8, 0
001e8c  9f8a0a00  addli r21, r21, 0
001e90  1f0b0b00  addli r22, r22, 0
001e94  0b123110  add.s r4, r2, r3
001e98  b3020108  fix2float.rn r5, r2
001e9c  9b381100  slli r17, r2, 1
001ea0  1b332100  slli r6, r2, 2
001ea4  1f014100  addli r2, r2, 32
001ea8  9bb42100  slli r9, r3, 2
001eac  67042fd4  storeli.w r2, -5568(r30)
001eb0  0b117311  add.s r2, r6, r23
001eb4  1f72f2ff  addli r4, r4, -1
001eb8  0b937811  add.s r6, r17, r23
001ebc  67085fd4  storeli.w r5, -5504(r30)
001ec0  1f0181ff  addli r2, r2, -64
001ec4  0b123230  div.s r4, r4, r3
001ec8  67002fd4  storeli.w r2, -5632(r30)
001ecc  1f0183ff  addli r2, r6, -64
001ed0  e74f2fd2  storeli.w r2, -5636(r30)
001ed4  2bf1ffff  lui r2, 1048575
001ed8  00a00000  mfence { lm }
001edc  670c1fd5  storeli.w r17, -5440(r30)
001ee0  9b16f1ff  ori r13, r2, 4095
001ee4  1f010fd7  addli r2, r30, -5248
001ee8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001eec  5b080000  j 64
001ef0  9f038fd6  addli r7, r30, -5312
001ef4  6b510f00  load.d r[3:4], 0(r30)
001ef8  ebd20300  load.d r[6:7], 0(r7)
001efc  00a00000  mfence { lm }
001f00  80530102  load_param_i r7, 2
001f04  e3088fd5  loadli.w r17,  -5440(r30)
001f08  8b901310  add.s r1, r7, r1
001f0c  0b215110  add.ul r[3:4], r[3:4], r[6:7]
001f10  2b0300f0  lui r6, 983040
001f14  17936800  or r6, r17, r6
001f18  7f337101  s_lm2gm r6, r23, 0(r[3:4])
001f1c  00a00200  mfence { lm, gm }
001f20  63411f00  loadli.w r2,  12(r30)
001f24  3fa02000  blt.s r1, r2, 8
001f28  dbf90800  j 18380
001f2c  63011f00  loadli.w r2,  8(r30)
001f30  0b912010  add.s r2, r1, r2
001f34  0b11f120  mul.s r2, r2, r15
001f38  33110128  sext_int2long r[3:4], r2
001f3c  173ca102  sll.d r[25:26], r[3:4], r10
001f40  9f017fd6  addli r3, r30, -5320
001f44  2b0100f0  lui r2, 983040
001f48  ebd20100  load.d r[6:7], 0(r3)
001f4c  17912800  or r2, r17, r2
001f50  9f018fd6  addli r3, r30, -5312
001f54  73b08101  store.d r[25:26], 0(r3)
001f58  0ba38211  add.ul r[7:8], r[6:7], r[25:26]
001f5c  7f217301  l_gm2lm r2, r23, 0(r[7:8])
001f60  00a00200  mfence { lm, gm }
001f64  bff0b700  blt.s r15, r11, 60
001f68  6341ffd3  loadli.w r2,  -5636(r30)
001f6c  e3010fd4  loadli.w r3,  -5632(r30)
001f70  63038fd4  loadli.w r6,  -5568(r30)
001f74  c2000102  vload.mz vr1{mr1}, 0(r2)
001f78  1f03c3ff  addli r6, r6, -32
001f7c  9f8881ff  addli r17, r3, -64
001f80  1f0181ff  addli r2, r2, -64
001f84  93036604  setlt.u r7, r12, r6
001f88  06f10000  vfp162float_h.rn vr2, vr1
001f8c  86b00000  vfp162float_l.rn vr1, vr1
001f90  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
001f94  9f8101ff  addli r3, r3, -128
001f98  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
001f9c  3bef03fe  bneq r7, zero, -40
001fa0  00a00000  mfence { lm }
001fa4  bf27a200  blt.s r4, r10, 488
001fa8  1f0d0000  addli r26, zero, 0
001fac  9f0c0000  addli r25, zero, 0
001fb0  9f0d0000  addli r27, zero, 0
001fb4  db0c0000  j 100
001fb8  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001fbc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001fc0  9f9d0d00  addli r27, r27, 1
001fc4  6a7108c0  vsrl.p vr2, r16, vr0
001fc8  ea7118c0  vsrl.p vr3, r16, vr1
001fcc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001fd0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001fd4  6a7109c0  vsrl.p vr2, r18, vr0
001fd8  ea7119c0  vsrl.p vr3, r18, vr1
001fdc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001fe0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001fe4  6af109c0  vsrl.p vr2, r19, vr0
001fe8  eaf119c0  vsrl.p vr3, r19, vr1
001fec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001ff0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001ff4  6af105c0  vsrl.p vr2, r11, vr0
001ff8  eaf115c0  vsrl.p vr3, r11, vr1
001ffc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002000  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002004  7a110040  vextracti.f r2, 0(vr0)
002008  fa910040  vextracti.f r3, 0(vr1)
00200c  0b6d2d10  add.f.rn r26, r26, r2
002010  8bec3c10  add.f.rn r25, r25, r3
002014  37864d00  beq r27, r4, 384
002018  1f810d00  addli r2, r27, 0
00201c  37300701  beq r14, r16, 12
002020  17a1dd00  xor r2, r27, r13
002024  0b112210  add.s r2, r4, r2
002028  8b11e120  mul.s r3, r2, r14
00202c  8b913718  sub.s r3, r15, r3
002030  0b9ee140  min.s r28, r3, r14
002034  9f010fd7  addli r3, r30, -5248
002038  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00203c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002040  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002044  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002048  bf4daefe  blt.s r28, r10, -144
00204c  0b932420  mul.s r6, r9, r2
002050  1f010fd7  addli r2, r30, -5248
002054  1f0a0000  addli r20, zero, 0
002058  9f038fd7  addli r7, r30, -5184
00205c  9f080400  addli r17, r8, 0
002060  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
002064  92304002  vadd.s.mz vr1{mr1}, zero, vr4
002068  12314002  vadd.s.mz vr2{mr1}, zero, vr4
00206c  92314002  vadd.s.mz vr3{mr1}, zero, vr4
002070  0b916810  add.s r2, r17, r6
002074  8b916310  add.s r3, r7, r6
002078  9f0b8100  addli r23, r2, 64
00207c  ca120102  vloads_mask16.mz vr5{mr1}, 0(r2)
002080  1f0c8101  addli r24, r2, 192
002084  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
002088  9f828101  addli r5, r3, 192
00208c  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
002090  9f0b0101  addli r23, r2, 128
002094  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
002098  1f8c0101  addli r24, r3, 128
00209c  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0020a0  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
0020a4  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
0020a8  9f8b8100  addli r23, r3, 64
0020ac  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
0020b0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0020b4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0020b8  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0020bc  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0020c0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0020c4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0020c8  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
0020cc  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
0020d0  9f0b8a00  addli r23, r20, 64
0020d4  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
0020d8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0020dc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0020e0  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0020e4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0020e8  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
0020ec  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
0020f0  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0020f4  4b1b7eff  ble.s r28, r23, -316
0020f8  9f0b0102  addli r23, r2, 256
0020fc  1f0c8102  addli r24, r2, 320
002100  9f820102  addli r5, r3, 256
002104  1f0a0a01  addli r20, r20, 128
002108  9f880804  addli r17, r17, 512
00210c  9f830304  addli r7, r7, 512
002110  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
002114  9f0b0103  addli r23, r2, 384
002118  1f018103  addli r2, r2, 448
00211c  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
002120  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
002124  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
002128  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
00212c  1f810103  addli r2, r3, 384
002130  9f8b8102  addli r23, r3, 320
002134  9f818103  addli r3, r3, 448
002138  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
00213c  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
002140  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
002144  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
002148  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00214c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
002150  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002154  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002158  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
00215c  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
002160  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
002164  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
002168  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00216c  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
002170  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002174  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002178  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
00217c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002180  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
002184  bf3bcaff  blt.s r20, r28, -276
002188  5bc6ffff  j -464
00218c  9f0c0000  addli r25, zero, 0
002190  1f0d0000  addli r26, zero, 0
002194  9f0b8fd7  addli r23, r30, -5184
002198  00a00000  mfence { lm }
00219c  bfd3a700  blt.s r15, r10, 244
0021a0  e3010fd5  loadli.w r3,  -5504(r30)
0021a4  e3023f00  loadli.w r5,  24(r30)
0021a8  1f030000  addli r6, zero, 0
0021ac  1f0a0000  addli r20, zero, 0
0021b0  0f013d18  div.f.rn r2, r26, r3
0021b4  8f813c18  div.f.rn r3, r25, r3
0021b8  8b632120  mul.f.rn r7, r2, r2
0021bc  8b680158  neg.f r17, r2
0021c0  8be17118  sub.f.rn r3, r3, r7
0021c4  8be15110  add.f.rn r3, r3, r5
0021c8  ab02803f  lui r5, 260096
0021cc  8f810108  sqrt.f.rn r3, r3
0021d0  8f833218  div.f.rn r7, r5, r3
0021d4  8b115311  add.s r3, r6, r21
0021d8  0b916b10  add.s r2, r23, r6
0021dc  9f8c8100  addli r25, r3, 64
0021e0  4a910102  vloads_mask16.mz vr2{mr1}, 0(r3)
0021e4  8b116311  add.s r3, r6, r22
0021e8  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0021ec  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
0021f0  9f0c8100  addli r25, r2, 64
0021f4  4a920102  vloads_mask16.mz vr4{mr1}, 0(r3)
0021f8  9f818100  addli r3, r3, 64
0021fc  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
002200  4a930102  vloads_mask16.mz vr6{mr1}, 0(r3)
002204  9f014a00  addli r3, r20, 32
002208  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
00220c  92925802  vadd.f.mz.rn vr5{mr1}, r17, vr5
002210  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
002214  8a925302  vmul.f.mz.rn vr5{mr1}, r7, vr5
002218  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
00221c  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
002220  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
002224  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
002228  cba13700  ble.s r15, r3, 104
00222c  8b916a10  add.s r3, r21, r6
002230  8b1c6b10  add.s r25, r22, r6
002234  1f0a8a00  addli r20, r20, 64
002238  1f030302  addli r6, r6, 256
00223c  1f8d0101  addli r26, r3, 128
002240  9f8d0c01  addli r27, r25, 128
002244  9f818101  addli r3, r3, 192
002248  9f8c8c01  addli r25, r25, 192
00224c  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
002250  1f0d0101  addli r26, r2, 128
002254  1f018101  addli r2, r2, 192
002258  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
00225c  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
002260  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
002264  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
002268  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
00226c  92913802  vadd.f.mz.rn vr3{mr1}, r17, vr3
002270  12924802  vadd.f.mz.rn vr4{mr1}, r17, vr4
002274  8a913302  vmul.f.mz.rn vr3{mr1}, r7, vr3
002278  0a924302  vmul.f.mz.rn vr4{mr1}, r7, vr4
00227c  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
002280  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
002284  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
002288  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
00228c  3f2dfafe  blt.s r20, r15, -184
002290  00a00000  mfence { lm }
002294  3ff1a7fe  blt.s r15, r10, -932
002298  1f018fd7  addli r2, r30, -5184
00229c  9f018fd7  addli r3, r30, -5184
0022a0  1f030000  addli r6, zero, 0
0022a4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0022a8  9f838100  addli r7, r3, 64
0022ac  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
0022b0  1f034300  addli r6, r6, 32
0022b4  9f810101  addli r3, r3, 128
0022b8  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
0022bc  86910000  vfloat2fp16_l.rn vr3, vr1
0022c0  86510100  vfloat2fp16_h.rn vr3, vr2
0022c4  46003102  vstore.mz vr3{mr1}, 0(r2)
0022c8  1f018100  addli r2, r2, 64
0022cc  3f6ff3fe  blt.s r6, r15, -40
0022d0  5b84ffff  j -992
0022d4  e3002f00  loadli.w r1,  16(r30)
0022d8  1f010010  addli r2, zero, 2048
0022dc  bbe02008  bneq r1, r2, 4152
0022e0  2ba30200  lui r6, 42
0022e4  803b0002  core_id r23
0022e8  1f030308  addli r6, r6, 1024
0022ec  3bd00b00  bneq r23, zero, 20
0022f0  1f010040  addli r2, zero, 8192
0022f4  ab0100f0  lui r3, 983040
0022f8  17113100  or r2, r2, r3
0022fc  7f016200  l_gm2sm r2, r6, 0(r[5:6])
002300  2bf10000  lui r2, 15
002304  e3401f00  loadli.w r1,  12(r30)
002308  00200300  mfence { sm, gm }
00230c  1b8c1b00  andi r24, r23, 1
002310  9f020006  addli r5, zero, 768
002314  1b11f1ff  ori r2, r2, 4095
002318  80210104  csr_set csr3, r2
00231c  1f010006  addli r2, zero, 768
002320  00d00100  sync_group
002324  37200c00  beq r24, zero, 8
002328  9f02000a  addli r5, zero, 1280
00232c  e3411f00  loadli.w r3,  12(r30)
002330  9f130000  addli r7, zero, 1
002334  3f8f7120  blt.s r3, r7, 17344
002338  0b122c20  mul.s r4, r24, r2
00233c  2bf1ffff  lui r2, 1048575
002340  abca0200  lui r21, 44
002344  2bcd0200  lui r26, 44
002348  80510102  load_param_i r3, 2
00234c  9f030000  addli r7, zero, 0
002350  1bc51b00  srli r10, r23, 1
002354  9bb52200  slli r11, r5, 2
002358  9f280000  addli r17, zero, 2
00235c  9f068fd7  addli r13, r30, -5184
002360  1f080005  addli r16, zero, 640
002364  1f090001  addli r18, zero, 128
002368  9f098000  addli r19, zero, 64
00236c  1f0a4000  addli r20, zero, 32
002370  9f0c0003  addli r25, zero, 384
002374  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002378  1b1101f8  ori r2, r2, 3968
00237c  9bc41100  srli r9, r3, 1
002380  9f010fd7  addli r3, r30, -5248
002384  9f8a0a08  addli r21, r21, 1024
002388  1f0d0d0c  addli r26, r26, 1536
00238c  67042fd6  storeli.w r2, -5312(r30)
002390  2bf10000  lui r2, 15
002394  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
002398  1b1bf1ff  ori r22, r2, 4095
00239c  db030000  j 28
0023a0  00a00300  mfence { lm, sm, gm }
0023a4  80210b04  csr_set csr3, r22
0023a8  00d00100  sync_group
0023ac  8b939310  add.s r7, r7, r9
0023b0  3fa01300  blt.s r7, r1, 8
0023b4  db15fdff  j -5972
0023b8  0b91a310  add.s r2, r7, r10
0023bc  cb9f20fe  ble.s r1, r2, -28
0023c0  e3001f00  loadli.w r1,  8(r30)
0023c4  0b111110  add.s r2, r2, r1
0023c8  9f007fd6  addli r1, r30, -5320
0023cc  1b31b100  slli r2, r2, 11
0023d0  6bd70000  load.d r[15:16], 0(r1)
0023d4  17114100  or r2, r2, r4
0023d8  33110128  sext_int2long r[3:4], r2
0023dc  973d1103  sll.d r[28:29], r[3:4], r17
0023e0  2b0100f0  lui r2, 983040
0023e4  0b27b711  add.ul r[15:16], r[15:16], r[28:29]
0023e8  17912500  or r2, r11, r2
0023ec  7f21d700  l_gm2lm r2, r13, 0(r[15:16])
0023f0  00a00200  mfence { lm, gm }
0023f4  3b260c00  bneq r24, zero, 392
0023f8  9f000fd7  addli r1, r30, -5248
0023fc  e3018fd6  loadli.w r3,  -5312(r30)
002400  1f010000  addli r2, zero, 0
002404  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
002408  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00240c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
002410  12323002  vadd.s.mz vr4{mr1}, zero, vr3
002414  0b176110  add.s r14, r2, r6
002418  0b962610  add.s r12, r13, r2
00241c  9f810101  addli r3, r3, 128
002420  1f010104  addli r2, r2, 512
002424  9f000701  addli r1, r14, 128
002428  4a100702  vloads_mask16.mz vr0{mr1}, 0(r14)
00242c  1f048700  addli r8, r14, 64
002430  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
002434  9f078601  addli r15, r12, 192
002438  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
00243c  9f008701  addli r1, r14, 192
002440  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002444  1f048600  addli r8, r12, 64
002448  c2950702  vload_mask16.mz vr11{mr1}, 0(r15)
00244c  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
002450  9f000601  addli r1, r12, 128
002454  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
002458  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00245c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002460  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002464  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002468  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00246c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002470  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
002474  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002478  9f000702  addli r1, r14, 256
00247c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002480  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002484  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002488  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
00248c  1f040603  addli r8, r12, 384
002490  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002494  9f008702  addli r1, r14, 320
002498  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
00249c  9f070602  addli r15, r12, 256
0024a0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0024a4  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0024a8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0024ac  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0024b0  9f000703  addli r1, r14, 384
0024b4  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0024b8  1f078703  addli r14, r14, 448
0024bc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0024c0  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0024c4  9f008602  addli r1, r12, 320
0024c8  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
0024cc  1f068603  addli r12, r12, 448
0024d0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0024d4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0024d8  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0024dc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0024e0  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0024e4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0024e8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0024ec  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
0024f0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0024f4  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0024f8  93800105  setlt.u r1, r3, r16
0024fc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002500  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002504  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002508  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00250c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002510  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002514  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
002518  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00251c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002520  bbdb00fe  bneq r1, zero, -268
002524  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002528  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00252c  9f000002  addli r1, zero, 256
002530  6af100c0  vsrl.p vr2, r1, vr0
002534  eaf110c0  vsrl.p vr3, r1, vr1
002538  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00253c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002540  6a7109c0  vsrl.p vr2, r18, vr0
002544  ea7119c0  vsrl.p vr3, r18, vr1
002548  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00254c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002550  6af109c0  vsrl.p vr2, r19, vr0
002554  eaf119c0  vsrl.p vr3, r19, vr1
002558  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00255c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002560  6a710ac0  vsrl.p vr2, r20, vr0
002564  ea711ac0  vsrl.p vr3, r20, vr1
002568  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00256c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002570  7a160040  vextracti.f r12, 0(vr0)
002574  7a910040  vextracti.f r2, 0(vr1)
002578  5b650000  j 808
00257c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002580  abf0ffff  lui r1, 1048575
002584  9f080c00  addli r17, r24, 0
002588  1f010000  addli r2, zero, 0
00258c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002590  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002594  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002598  9b9100f8  ori r3, r1, 3968
00259c  0b172310  add.s r14, r6, r2
0025a0  0b962610  add.s r12, r13, r2
0025a4  9f810101  addli r3, r3, 128
0025a8  1f010104  addli r2, r2, 512
0025ac  9f000731  addli r1, r14, 6272
0025b0  9f070730  addli r15, r14, 6144
0025b4  1f048731  addli r8, r14, 6336
0025b8  1f0c0618  addli r24, r12, 3072
0025bc  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
0025c0  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
0025c4  9f078730  addli r15, r14, 6208
0025c8  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
0025cc  1f040619  addli r8, r12, 3200
0025d0  9f008618  addli r1, r12, 3136
0025d4  42130c02  vload_mask16.mz vr6{mr1}, 0(r24)
0025d8  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
0025dc  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
0025e0  9f078619  addli r15, r12, 3264
0025e4  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0025e8  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
0025ec  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0025f0  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0025f4  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0025f8  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0025fc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002600  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
002604  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
002608  1f040732  addli r8, r14, 6400
00260c  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
002610  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
002614  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002618  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
00261c  9f07061a  addli r15, r12, 3328
002620  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
002624  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
002628  9f00061b  addli r1, r12, 3456
00262c  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
002630  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
002634  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
002638  1f048732  addli r8, r14, 6464
00263c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002640  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002644  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002648  1f040733  addli r8, r14, 6528
00264c  1f078733  addli r14, r14, 6592
002650  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
002654  1f04861a  addli r8, r12, 3392
002658  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
00265c  1f06861b  addli r12, r12, 3520
002660  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
002664  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
002668  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00266c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002670  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
002674  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002678  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00267c  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
002680  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002684  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
002688  13849105  setlt.u r8, r3, r25
00268c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002690  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002694  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002698  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00269c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0026a0  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0026a4  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0026a8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0026ac  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0026b0  bb3b04fe  bneq r8, zero, -276
0026b4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0026b8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0026bc  9f000002  addli r1, zero, 256
0026c0  1f060000  addli r12, zero, 0
0026c4  eaf110c0  vsrl.p vr3, r1, vr1
0026c8  6af100c0  vsrl.p vr2, r1, vr0
0026cc  abf0ffff  lui r1, 1048575
0026d0  1b9c00f8  ori r24, r1, 3968
0026d4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0026d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0026dc  ea7119c0  vsrl.p vr3, r18, vr1
0026e0  6a7109c0  vsrl.p vr2, r18, vr0
0026e4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0026e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0026ec  eaf119c0  vsrl.p vr3, r19, vr1
0026f0  6af109c0  vsrl.p vr2, r19, vr0
0026f4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0026f8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0026fc  ea711ac0  vsrl.p vr3, r20, vr1
002700  6a710ac0  vsrl.p vr2, r20, vr0
002704  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002708  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00270c  fa910040  vextracti.f r3, 0(vr1)
002710  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002714  7a110040  vextracti.f r2, 0(vr0)
002718  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00271c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002720  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002724  8b17c310  add.s r15, r6, r12
002728  0b97c610  add.s r14, r13, r12
00272c  1f0c0c01  addli r24, r24, 128
002730  1f060604  addli r12, r12, 512
002734  9f800718  addli r1, r15, 3072
002738  1f840719  addli r8, r15, 3200
00273c  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
002740  9f0b8701  addli r23, r14, 192
002744  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002748  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
00274c  9f808718  addli r1, r15, 3136
002750  1f848719  addli r8, r15, 3264
002754  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
002758  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
00275c  9f000701  addli r1, r14, 128
002760  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
002764  1f048700  addli r8, r14, 64
002768  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00276c  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
002770  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002774  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002778  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00277c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002780  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002784  9f80071a  addli r1, r15, 3328
002788  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00278c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002790  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002794  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002798  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
00279c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0027a0  9f80871a  addli r1, r15, 3392
0027a4  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
0027a8  9f0b0702  addli r23, r14, 256
0027ac  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0027b0  1f040703  addli r8, r14, 384
0027b4  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0027b8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0027bc  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0027c0  9f80071b  addli r1, r15, 3456
0027c4  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
0027c8  9f87871b  addli r15, r15, 3520
0027cc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0027d0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0027d4  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0027d8  9f008702  addli r1, r14, 320
0027dc  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
0027e0  1f078703  addli r14, r14, 448
0027e4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0027e8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0027ec  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0027f0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0027f4  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
0027f8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0027fc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002800  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
002804  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002808  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
00280c  93000c05  setlt.u r1, r24, r16
002810  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002814  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002818  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00281c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002820  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002824  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002828  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
00282c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002830  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002834  bbcb00fe  bneq r1, zero, -272
002838  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00283c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002840  9f000002  addli r1, zero, 256
002844  1f8c0800  addli r24, r17, 0
002848  803b0002  core_id r23
00284c  9f280000  addli r17, zero, 2
002850  6af100c0  vsrl.p vr2, r1, vr0
002854  eaf110c0  vsrl.p vr3, r1, vr1
002858  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00285c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002860  6a7109c0  vsrl.p vr2, r18, vr0
002864  ea7119c0  vsrl.p vr3, r18, vr1
002868  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00286c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002870  6af109c0  vsrl.p vr2, r19, vr0
002874  eaf119c0  vsrl.p vr3, r19, vr1
002878  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00287c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002880  6a710ac0  vsrl.p vr2, r20, vr0
002884  ea711ac0  vsrl.p vr3, r20, vr1
002888  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00288c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002890  fa100040  vextracti.f r1, 0(vr0)
002894  7a940040  vextracti.f r8, 0(vr1)
002898  0b661110  add.f.rn r12, r2, r1
00289c  0be18110  add.f.rn r2, r3, r8
0028a0  8b809330  div.u r1, r7, r9
0028a4  1f070000  addli r14, zero, 0
0028a8  9bb06000  slli r1, r1, 6
0028ac  9b800004  andi r1, r1, 64
0028b0  97907001  or r1, r1, r23
0028b4  9bb12000  slli r3, r1, 2
0028b8  9b80e007  andi r1, r1, 126
0028bc  0b945111  add.s r8, r3, r21
0028c0  9bb02000  slli r1, r1, 2
0028c4  7360c400  stores.w r12, 0(r8)
0028c8  0b94a111  add.s r8, r3, r26
0028cc  9b914100  ori r3, r3, 4
0028d0  1f068fd7  addli r12, r30, -5184
0028d4  73602400  stores.w r2, 0(r8)
0028d8  0b915111  add.s r2, r3, r21
0028dc  0b945011  add.s r8, r1, r21
0028e0  8b91a111  add.s r3, r3, r26
0028e4  8b90a011  add.s r1, r1, r26
0028e8  00a00300  mfence { lm, sm, gm }
0028ec  80210b04  csr_set csr3, r22
0028f0  00d00100  sync_group
0028f4  6f410100  loads.w r2, 0(r2)
0028f8  6f440400  loads.w r8, 0(r8)
0028fc  efc10100  loads.w r3, 0(r3)
002900  efc00000  loads.w r1, 0(r1)
002904  0b618110  add.f.rn r2, r2, r8
002908  2b04003a  lui r8, 237568
00290c  8be01110  add.f.rn r1, r3, r1
002910  8b618120  mul.f.rn r3, r2, r8
002914  8be08020  mul.f.rn r1, r1, r8
002918  0be13120  mul.f.rn r2, r3, r3
00291c  8be10158  neg.f r3, r3
002920  8be02018  sub.f.rn r1, r1, r2
002924  63013f00  loadli.w r2,  24(r30)
002928  8be02010  add.f.rn r1, r1, r2
00292c  2b01803f  lui r2, 260096
002930  8f800008  sqrt.f.rn r1, r1
002934  0f011118  div.f.rn r2, r2, r1
002938  9f008600  addli r1, r12, 64
00293c  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
002940  1f044700  addli r8, r14, 32
002944  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002948  13848206  setle.u r8, r5, r8
00294c  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
002950  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
002954  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
002958  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
00295c  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
002960  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002964  bb700400  bneq r8, zero, 60
002968  9f000601  addli r1, r12, 128
00296c  1f048601  addli r8, r12, 192
002970  1f078700  addli r14, r14, 64
002974  1f060602  addli r12, r12, 256
002978  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00297c  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
002980  93075704  setlt.u r15, r14, r5
002984  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
002988  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
00298c  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
002990  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
002994  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002998  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
00299c  3bfe07fe  bneq r15, zero, -100
0029a0  6b510f00  load.d r[3:4], 0(r30)
0029a4  ab0000f0  lui r1, 983040
0029a8  00a00000  mfence { lm }
0029ac  97901500  or r1, r11, r1
0029b0  0b21b111  add.ul r[3:4], r[3:4], r[28:29]
0029b4  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
0029b8  00a00200  mfence { lm, gm }
0029bc  e3401f00  loadli.w r1,  12(r30)
0029c0  db3dffff  j -1556
0029c4  80300002  core_id r1
0029c8  bb800000  bneq r1, zero, 32
0029cc  63012f00  loadli.w r2,  16(r30)
0029d0  ab0100f0  lui r3, 983040
0029d4  1b311100  slli r2, r2, 1
0029d8  17113100  or r2, r2, r3
0029dc  abc10100  lui r3, 28
0029e0  9f810100  addli r3, r3, 0
0029e4  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0029e8  2bf10000  lui r2, 15
0029ec  e3411f00  loadli.w r3,  12(r30)
0029f0  00200300  mfence { sm, gm }
0029f4  1b11f1ff  ori r2, r2, 4095
0029f8  80210104  csr_set csr3, r2
0029fc  00d00100  sync_group
002a00  cbd3111e  ble.s r3, r1, 15604
002a04  63012f00  loadli.w r2,  16(r30)
002a08  e3412f00  loadli.w r3,  20(r30)
002a0c  1f062000  addli r12, zero, 16
002a10  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002a14  1f140000  addli r8, zero, 1
002a18  1f0b8fd7  addli r22, r30, -5184
002a1c  9f050002  addli r11, zero, 256
002a20  ab06ffff  lui r13, 1048560
002a24  ab08807f  lui r17, 522240
002a28  2b09c07f  lui r18, 523264
002a2c  9f090001  addli r19, zero, 128
002a30  1f0a8000  addli r20, zero, 64
002a34  9f0a4000  addli r21, zero, 32
002a38  9b321100  slli r5, r2, 1
002a3c  0b123110  add.s r4, r2, r3
002a40  33010108  fix2float.rn r2, r2
002a44  1bb31100  slli r6, r3, 1
002a48  67042fd4  storeli.w r2, -5568(r30)
002a4c  1f71f2ff  addli r2, r4, -1
002a50  67085fd4  storeli.w r5, -5504(r30)
002a54  8b133130  div.s r7, r2, r3
002a58  2bf1ffff  lui r2, 1048575
002a5c  1b15f1ff  ori r10, r2, 4095
002a60  1f010fd7  addli r2, r30, -5248
002a64  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002a68  6a200622  vor.u.mz vr0{mr1}, r12, vr0
002a6c  1f018fd6  addli r2, r30, -5312
002a70  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002a74  2b710000  lui r2, 7
002a78  1b18f1ff  ori r16, r2, 4095
002a7c  db080000  j 68
002a80  9f028fd5  addli r5, r30, -5440
002a84  00a00000  mfence { lm }
002a88  eb510f00  load.d r[4:5], 0(r30)
002a8c  2b0100f0  lui r2, 983040
002a90  80540102  load_param_i r9, 2
002a94  6bdb0200  load.d r[23:24], 0(r5)
002a98  e3020fd5  loadli.w r5,  -5504(r30)
002a9c  8b901410  add.s r1, r9, r1
002aa0  8ba16111  add.ul r[4:5], r[4:5], r[23:24]
002aa4  17912200  or r2, r5, r2
002aa8  1f0b8fd7  addli r22, r30, -5184
002aac  7fb16101  s_lm2gm r2, r22, 0(r[4:5])
002ab0  00a00200  mfence { lm, gm }
002ab4  63411f00  loadli.w r2,  12(r30)
002ab8  3fa02000  blt.s r1, r2, 8
002abc  5b870700  j 15416
002ac0  63011f00  loadli.w r2,  8(r30)
002ac4  9f047fd6  addli r9, r30, -5320
002ac8  0b912010  add.s r2, r1, r2
002acc  0b11f120  mul.s r2, r2, r15
002ad0  33110128  sext_int2long r[3:4], r2
002ad4  973b8102  sll.d r[24:25], r[3:4], r8
002ad8  ebd10400  load.d r[4:5], 0(r9)
002adc  2b0100f0  lui r2, 983040
002ae0  9f048fd5  addli r9, r30, -5440
002ae4  17912200  or r2, r5, r2
002ae8  73b07401  store.d r[24:25], 0(r9)
002aec  8ba17111  add.ul r[4:5], r[4:5], r[24:25]
002af0  7fa16101  l_gm2lm r2, r22, 0(r[4:5])
002af4  00a00200  mfence { lm, gm }
002af8  bfdc8300  blt.s r7, r8, 820
002afc  9f010000  addli r3, zero, 0
002b00  1f010000  addli r2, zero, 0
002b04  1f0d0000  addli r26, zero, 0
002b08  db0c0000  j 100
002b0c  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
002b10  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
002b14  1f1d0d00  addli r26, r26, 1
002b18  6af105c0  vsrl.p vr2, r11, vr0
002b1c  eaf115c0  vsrl.p vr3, r11, vr1
002b20  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b24  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002b28  6af109c0  vsrl.p vr2, r19, vr0
002b2c  eaf119c0  vsrl.p vr3, r19, vr1
002b30  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b34  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002b38  6a710ac0  vsrl.p vr2, r20, vr0
002b3c  ea711ac0  vsrl.p vr3, r20, vr1
002b40  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b44  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002b48  6af10ac0  vsrl.p vr2, r21, vr0
002b4c  eaf11ac0  vsrl.p vr3, r21, vr1
002b50  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b54  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002b58  7a120040  vextracti.f r4, 0(vr0)
002b5c  fa920040  vextracti.f r5, 0(vr1)
002b60  8be14110  add.f.rn r3, r3, r4
002b64  0b615110  add.f.rn r2, r2, r5
002b68  373b7d00  beq r26, r7, 716
002b6c  1f020d00  addli r4, r26, 0
002b70  3730b700  beq r14, r11, 12
002b74  1722ad00  xor r4, r26, r10
002b78  0b924310  add.s r4, r7, r4
002b7c  9f020fd7  addli r5, r30, -5248
002b80  8b14e220  mul.s r9, r4, r14
002b84  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
002b88  8b949718  sub.s r9, r15, r9
002b8c  8b9de440  min.s r27, r9, r14
002b90  92322002  vadd.s.mz vr5{mr1}, zero, vr2
002b94  12322002  vadd.s.mz vr4{mr1}, zero, vr2
002b98  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002b9c  bfcd8dfe  blt.s r27, r8, -144
002ba0  0b1b4320  mul.s r22, r6, r4
002ba4  1f020fd7  addli r4, r30, -5248
002ba8  abcb0100  lui r23, 28
002bac  1f0e0000  addli r28, zero, 0
002bb0  9f048fd7  addli r9, r30, -5184
002bb4  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
002bb8  9f8b0b00  addli r23, r23, 0
002bbc  12315002  vadd.s.mz vr2{mr1}, zero, vr5
002bc0  92315002  vadd.s.mz vr3{mr1}, zero, vr5
002bc4  12325002  vadd.s.mz vr4{mr1}, zero, vr5
002bc8  0b9c6b11  add.s r24, r23, r22
002bcc  0b926411  add.s r4, r9, r22
002bd0  9f028fd6  addli r5, r30, -5312
002bd4  4a030c02  vloads.mz vr6{mr1}, 0(r24)
002bd8  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
002bdc  c2030202  vload.mz vr7{mr1}, 0(r4)
002be0  9f020fd7  addli r5, r30, -5248
002be4  9f0c8c00  addli r25, r24, 64
002be8  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
002bec  9f028e00  addli r5, r28, 64
002bf0  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
002bf4  6ab57602  vand.s.mz vr10{mr1}, r13, vr7
002bf8  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
002bfc  6ab36602  vand.s.mz vr6{mr1}, r13, vr6
002c00  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
002c04  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
002c08  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
002c0c  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
002c10  669503c0  vabs.f vr10, vr7
002c14  6a348402  vand.s.mz vr8{mr1}, r8, vr8
002c18  ea349402  vand.s.mz vr9{mr1}, r8, vr9
002c1c  72a1a842  vlt.u.mz mr2{mr1}, r17, vr10
002c20  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
002c24  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
002c28  12348802  vadd.s.mz vr8{mr1}, r16, vr8
002c2c  92349802  vadd.s.mz vr9{mr1}, r16, vr9
002c30  eab38602  vand.s.mz vr7{mr1}, r13, vr8
002c34  661403c0  vabs.f vr8, vr6
002c38  6ab39602  vand.s.mz vr6{mr1}, r13, vr9
002c3c  ea230934  vor.u.mh vr7{mr2}, r18, vr0
002c40  72a18842  vlt.u.mz mr2{mr1}, r17, vr8
002c44  6a230934  vor.u.mh vr6{mr2}, r18, vr0
002c48  4a840c02  vloads.mz vr8{mr1}, 0(r25)
002c4c  9f0c8200  addli r25, r4, 64
002c50  c2840c02  vload.mz vr9{mr1}, 0(r25)
002c54  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
002c58  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
002c5c  6ab36602  vand.s.mz vr6{mr1}, r13, vr6
002c60  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
002c64  eab49602  vand.s.mz vr9{mr1}, r13, vr9
002c68  46007202  vstore.mz vr7{mr1}, 0(r4)
002c6c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002c70  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002c74  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
002c78  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
002c7c  6ab48602  vand.s.mz vr8{mr1}, r13, vr8
002c80  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002c84  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002c88  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
002c8c  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
002c90  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
002c94  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
002c98  ea349402  vand.s.mz vr9{mr1}, r8, vr9
002c9c  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
002ca0  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
002ca4  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
002ca8  661505c0  vabs.f vr10, vr10
002cac  661404c0  vabs.f vr8, vr8
002cb0  92349802  vadd.s.mz vr9{mr1}, r16, vr9
002cb4  9235b802  vadd.s.mz vr11{mr1}, r16, vr11
002cb8  72a1a842  vlt.u.mz mr2{mr1}, r17, vr10
002cbc  eab49602  vand.s.mz vr9{mr1}, r13, vr9
002cc0  6ab5b602  vand.s.mz vr10{mr1}, r13, vr11
002cc4  ea240934  vor.u.mh vr9{mr2}, r18, vr0
002cc8  72a18842  vlt.u.mz mr2{mr1}, r17, vr8
002ccc  6a250934  vor.u.mh vr10{mr2}, r18, vr0
002cd0  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
002cd4  eab4a602  vand.s.mz vr9{mr1}, r13, vr10
002cd8  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
002cdc  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002ce0  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002ce4  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
002ce8  46808c02  vstore.mz vr8{mr1}, 0(r25)
002cec  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002cf0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002cf4  4be85dfe  ble.s r27, r5, -488
002cf8  9f020c01  addli r5, r24, 128
002cfc  9f0c0201  addli r25, r4, 128
002d00  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
002d04  1f028201  addli r4, r4, 192
002d08  1f0e0e01  addli r28, r28, 128
002d0c  9f8b0b02  addli r23, r23, 256
002d10  9f840402  addli r9, r9, 256
002d14  6a237622  vor.u.mz vr6{mr1}, r12, vr7
002d18  4a840202  vloads.mz vr8{mr1}, 0(r5)
002d1c  c2840c02  vload.mz vr9{mr1}, 0(r25)
002d20  9f028c01  addli r5, r24, 192
002d24  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
002d28  6ab09602  vand.s.mz vr0{mr1}, r13, vr9
002d2c  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
002d30  6ab48602  vand.s.mz vr8{mr1}, r13, vr8
002d34  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
002d38  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
002d3c  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
002d40  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
002d44  e69504c0  vabs.f vr11, vr9
002d48  6a300402  vand.s.mz vr0{mr1}, r8, vr0
002d4c  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
002d50  72a1b842  vlt.u.mz mr2{mr1}, r17, vr11
002d54  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
002d58  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
002d5c  12300802  vadd.s.mz vr0{mr1}, r16, vr0
002d60  1235a802  vadd.s.mz vr10{mr1}, r16, vr10
002d64  eab40602  vand.s.mz vr9{mr1}, r13, vr0
002d68  661004c0  vabs.f vr0, vr8
002d6c  6ab4a602  vand.s.mz vr8{mr1}, r13, vr10
002d70  ea247934  vor.u.mh vr9{mr2}, r18, vr7
002d74  72a10842  vlt.u.mz mr2{mr1}, r17, vr0
002d78  6a247934  vor.u.mh vr8{mr2}, r18, vr7
002d7c  4a800202  vloads.mz vr0{mr1}, 0(r5)
002d80  42050202  vload.mz vr10{mr1}, 0(r4)
002d84  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
002d88  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
002d8c  6ab5a602  vand.s.mz vr10{mr1}, r13, vr10
002d90  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
002d94  6ab48602  vand.s.mz vr8{mr1}, r13, vr8
002d98  46809c02  vstore.mz vr9{mr1}, 0(r25)
002d9c  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
002da0  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
002da4  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
002da8  6ab00602  vand.s.mz vr0{mr1}, r13, vr0
002dac  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
002db0  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
002db4  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
002db8  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
002dbc  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
002dc0  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
002dc4  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
002dc8  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
002dcc  e69000c0  vabs.f vr1, vr1
002dd0  661000c0  vabs.f vr0, vr0
002dd4  1235a802  vadd.s.mz vr10{mr1}, r16, vr10
002dd8  9235b802  vadd.s.mz vr11{mr1}, r16, vr11
002ddc  72a11842  vlt.u.mz mr2{mr1}, r17, vr1
002de0  6ab5a602  vand.s.mz vr10{mr1}, r13, vr10
002de4  eab0b602  vand.s.mz vr1{mr1}, r13, vr11
002de8  6a257934  vor.u.mh vr10{mr2}, r18, vr7
002dec  72a10842  vlt.u.mz mr2{mr1}, r17, vr0
002df0  ea207934  vor.u.mh vr1{mr2}, r18, vr7
002df4  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
002df8  eab31602  vand.s.mz vr7{mr1}, r13, vr1
002dfc  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
002e00  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
002e04  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002e08  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002e0c  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
002e10  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
002e14  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
002e18  46000202  vstore.mz vr0{mr1}, 0(r4)
002e1c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002e20  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002e24  bf16beff  blt.s r28, r27, -604
002e28  db9cffff  j -796
002e2c  1f010000  addli r2, zero, 0
002e30  9f010000  addli r3, zero, 0
002e34  00a00000  mfence { lm }
002e38  3fa187fe  blt.s r15, r8, -952
002e3c  63028fd4  loadli.w r4,  -5568(r30)
002e40  9f040000  addli r9, zero, 0
002e44  8f814118  div.f.rn r3, r3, r4
002e48  0f014118  div.f.rn r2, r2, r4
002e4c  0be23120  mul.f.rn r4, r3, r3
002e50  8be10158  neg.f r3, r3
002e54  0b614118  sub.f.rn r2, r2, r4
002e58  63023f00  loadli.w r4,  24(r30)
002e5c  0b614110  add.f.rn r2, r2, r4
002e60  2b02803f  lui r4, 260096
002e64  0f010108  sqrt.f.rn r2, r2
002e68  0f012218  div.f.rn r2, r4, r2
002e6c  1f028fd7  addli r4, r30, -5184
002e70  42020202  vload.mz vr4{mr1}, 0(r4)
002e74  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
002e78  1f8b4400  addli r22, r9, 32
002e7c  ea212622  vor.u.mz vr3{mr1}, r12, vr2
002e80  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002e84  6ab24602  vand.s.mz vr4{mr1}, r13, vr4
002e88  92925102  vadd.f.mz.rn vr5{mr1}, r3, vr5
002e8c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
002e90  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002e94  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002e98  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002e9c  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002ea0  6a336402  vand.s.mz vr6{mr1}, r8, vr6
002ea4  ea337402  vand.s.mz vr7{mr1}, r8, vr7
002ea8  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002eac  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002eb0  e69202c0  vabs.f vr5, vr5
002eb4  661202c0  vabs.f vr4, vr4
002eb8  12336802  vadd.s.mz vr6{mr1}, r16, vr6
002ebc  92337802  vadd.s.mz vr7{mr1}, r16, vr7
002ec0  72a15842  vlt.u.mz mr2{mr1}, r17, vr5
002ec4  6ab36602  vand.s.mz vr6{mr1}, r13, vr6
002ec8  eab27602  vand.s.mz vr5{mr1}, r13, vr7
002ecc  6a232934  vor.u.mh vr6{mr2}, r18, vr2
002ed0  72a14842  vlt.u.mz mr2{mr1}, r17, vr4
002ed4  ea222934  vor.u.mh vr5{mr2}, r18, vr2
002ed8  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
002edc  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
002ee0  46004202  vstore.mz vr4{mr1}, 0(r4)
002ee4  4bfe67fd  ble.s r15, r22, -1124
002ee8  1f0b8200  addli r22, r4, 64
002eec  9f848400  addli r9, r9, 64
002ef0  1f020201  addli r4, r4, 128
002ef4  42020b02  vload.mz vr4{mr1}, 0(r22)
002ef8  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002efc  6ab24602  vand.s.mz vr4{mr1}, r13, vr4
002f00  92925102  vadd.f.mz.rn vr5{mr1}, r3, vr5
002f04  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
002f08  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002f0c  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002f10  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002f14  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002f18  6a336402  vand.s.mz vr6{mr1}, r8, vr6
002f1c  ea337402  vand.s.mz vr7{mr1}, r8, vr7
002f20  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002f24  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002f28  e69202c0  vabs.f vr5, vr5
002f2c  661202c0  vabs.f vr4, vr4
002f30  12336802  vadd.s.mz vr6{mr1}, r16, vr6
002f34  92337802  vadd.s.mz vr7{mr1}, r16, vr7
002f38  72a15842  vlt.u.mz mr2{mr1}, r17, vr5
002f3c  6ab36602  vand.s.mz vr6{mr1}, r13, vr6
002f40  eab27602  vand.s.mz vr5{mr1}, r13, vr7
002f44  6a232934  vor.u.mh vr6{mr2}, r18, vr2
002f48  72a14842  vlt.u.mz mr2{mr1}, r17, vr4
002f4c  ea222934  vor.u.mh vr5{mr2}, r18, vr2
002f50  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
002f54  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
002f58  46002b02  vstore.mz vr2{mr1}, 0(r22)
002f5c  3fdcf4fe  blt.s r9, r15, -236
002f60  5b64ffff  j -1248
002f64  80300002  core_id r1
002f68  bb800000  bneq r1, zero, 32
002f6c  63012f00  loadli.w r2,  16(r30)
002f70  ab0100f0  lui r3, 983040
002f74  1b311100  slli r2, r2, 1
002f78  17113100  or r2, r2, r3
002f7c  ab010200  lui r3, 32
002f80  9f810100  addli r3, r3, 0
002f84  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002f88  2bf10000  lui r2, 15
002f8c  e3411f00  loadli.w r3,  12(r30)
002f90  00200300  mfence { sm, gm }
002f94  1b11f1ff  ori r2, r2, 4095
002f98  80210104  csr_set csr3, r2
002f9c  00d00100  sync_group
002fa0  4bdd111a  ble.s r3, r1, 14164
002fa4  e3012f00  loadli.w r3,  16(r30)
002fa8  e3422f00  loadli.w r5,  20(r30)
002fac  2bf4ffff  lui r8, 1048575
002fb0  2b080200  lui r16, 32
002fb4  9f068fd7  addli r13, r30, -5184
002fb8  9f040002  addli r9, zero, 256
002fbc  1f050001  addli r10, zero, 128
002fc0  9f058000  addli r11, zero, 64
002fc4  1f064000  addli r12, zero, 32
002fc8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002fcc  1b14f4ff  ori r8, r8, 4095
002fd0  1f080800  addli r16, r16, 0
002fd4  0b925110  add.s r4, r3, r5
002fd8  1bb11100  slli r2, r3, 1
002fdc  b3810108  fix2float.rn r3, r3
002fe0  1f73f2ff  addli r6, r4, -1
002fe4  1bb21200  slli r4, r5, 1
002fe8  8b125330  div.s r5, r6, r5
002fec  1f130000  addli r6, zero, 1
002ff0  5b070000  j 56
002ff4  00a00000  mfence { lm }
002ff8  6b5a0f00  load.d r[21:22], 0(r30)
002ffc  ab0900f0  lui r19, 983040
003000  9f068fd7  addli r13, r30, -5184
003004  97193101  or r19, r2, r19
003008  8b281a11  add.ul r[18:19], r[21:22], r[18:19]
00300c  005a0102  load_param_i r20, 2
003010  ffb9d800  s_lm2gm r19, r13, 0(r[18:19])
003014  8b101a10  add.s r1, r20, r1
003018  00a00200  mfence { lm, gm }
00301c  e3431f00  loadli.w r7,  12(r30)
003020  3fa07000  blt.s r1, r7, 8
003024  5bda0600  j 14032
003028  e3031f00  loadli.w r7,  8(r30)
00302c  ab0900f0  lui r19, 983040
003030  97193101  or r19, r2, r19
003034  8b987010  add.s r17, r1, r7
003038  9f037fd6  addli r7, r30, -5320
00303c  8b98f820  mul.s r17, r17, r15
003040  6bda0300  load.d r[21:22], 0(r7)
003044  b3980828  sext_int2long r[18:19], r17
003048  97b86802  sll.d r[18:19], r[18:19], r6
00304c  0b2a1a11  add.ul r[21:22], r[21:22], r[18:19]
003050  ff29da00  l_gm2lm r19, r13, 0(r[21:22])
003054  00a00200  mfence { lm, gm }
003058  3fc76200  blt.s r5, r6, 464
00305c  1f0a0000  addli r20, zero, 0
003060  9f090000  addli r19, zero, 0
003064  9f0a0000  addli r21, zero, 0
003068  db0c0000  j 100
00306c  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
003070  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003074  9f9a0a00  addli r21, r21, 1
003078  6af134c0  vsrl.p vr2, r9, vr3
00307c  6af214c0  vsrl.p vr4, r9, vr1
003080  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
003084  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
003088  ea7125c0  vsrl.p vr3, r10, vr2
00308c  6a7215c0  vsrl.p vr4, r10, vr1
003090  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
003094  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
003098  eaf125c0  vsrl.p vr3, r11, vr2
00309c  6af215c0  vsrl.p vr4, r11, vr1
0030a0  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0030a4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0030a8  ea7126c0  vsrl.p vr3, r12, vr2
0030ac  6a7216c0  vsrl.p vr4, r12, vr1
0030b0  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0030b4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0030b8  fa130140  vextracti.f r7, 0(vr2)
0030bc  fa960040  vextracti.f r13, 0(vr1)
0030c0  0b6a7a10  add.f.rn r20, r20, r7
0030c4  8be9d910  add.f.rn r19, r19, r13
0030c8  b7a55a00  beq r21, r5, 360
0030cc  1f8c0a00  addli r24, r21, 0
0030d0  37309700  beq r14, r9, 12
0030d4  17ab8a00  xor r22, r21, r8
0030d8  0b9c6211  add.s r24, r5, r22
0030dc  0b1bec20  mul.s r22, r24, r14
0030e0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0030e4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0030e8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0030ec  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0030f0  0b9b6719  sub.s r22, r15, r22
0030f4  0b1beb40  min.s r22, r22, r14
0030f8  bf5d6bfe  blt.s r22, r6, -140
0030fc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
003100  12310002  vadd.s.mz vr2{mr1}, zero, vr0
003104  92310002  vadd.s.mz vr3{mr1}, zero, vr0
003108  12320002  vadd.s.mz vr4{mr1}, zero, vr0
00310c  9f0b0000  addli r23, zero, 0
003110  0b1c8221  mul.s r24, r4, r24
003114  9f0c8fd7  addli r25, r30, -5184
003118  1f0d0800  addli r26, r16, 0
00311c  8b1d8d11  add.s r27, r26, r24
003120  9f838b00  addli r7, r23, 64
003124  ca820d02  vloads.mz vr5{mr1}, 0(r27)
003128  1f8e8d00  addli r28, r27, 64
00312c  4a030e02  vloads.mz vr6{mr1}, 0(r28)
003130  0b9e8c11  add.s r28, r25, r24
003134  c2030e02  vload.mz vr7{mr1}, 0(r28)
003138  9f068e00  addli r13, r28, 64
00313c  42840602  vload.mz vr8{mr1}, 0(r13)
003140  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
003144  92320002  vadd.s.mz vr5{mr1}, zero, vr0
003148  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
00314c  06b40300  vfp162float_l.rn vr8, vr7
003150  86f30300  vfp162float_h.rn vr7, vr7
003154  86340300  vfp162float_l.rn vr9, vr6
003158  06730300  vfp162float_h.rn vr6, vr6
00315c  86120400  vfloat2fp16_l.rn vr5, vr8
003160  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
003164  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
003168  12340002  vadd.s.mz vr8{mr1}, zero, vr0
00316c  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
003170  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
003174  06940400  vfloat2fp16_l.rn vr8, vr9
003178  86d20300  vfloat2fp16_h.rn vr5, vr7
00317c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
003180  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
003184  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
003188  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00318c  06540300  vfloat2fp16_h.rn vr8, vr6
003190  46005e02  vstore.mz vr5{mr1}, 0(r28)
003194  46808602  vstore.mz vr8{mr1}, 0(r13)
003198  4b5b7bfe  ble.s r22, r7, -300
00319c  9f830d01  addli r7, r27, 128
0031a0  9f060e01  addli r13, r28, 128
0031a4  9f8b0b01  addli r23, r23, 128
0031a8  1f0d0d02  addli r26, r26, 256
0031ac  9f8c0c02  addli r25, r25, 256
0031b0  ca820302  vloads.mz vr5{mr1}, 0(r7)
0031b4  9f838d01  addli r7, r27, 192
0031b8  c2830602  vload.mz vr7{mr1}, 0(r13)
0031bc  4a830302  vloads.mz vr6{mr1}, 0(r7)
0031c0  9f038e01  addli r7, r28, 192
0031c4  42840302  vload.mz vr8{mr1}, 0(r7)
0031c8  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
0031cc  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0031d0  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
0031d4  12330002  vadd.s.mz vr6{mr1}, zero, vr0
0031d8  86b40300  vfp162float_l.rn vr9, vr7
0031dc  86f30300  vfp162float_h.rn vr7, vr7
0031e0  86920400  vfloat2fp16_l.rn vr5, vr9
0031e4  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0031e8  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0031ec  86340400  vfp162float_l.rn vr9, vr8
0031f0  06740400  vfp162float_h.rn vr8, vr8
0031f4  06930400  vfloat2fp16_l.rn vr6, vr9
0031f8  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
0031fc  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
003200  86d20300  vfloat2fp16_h.rn vr5, vr7
003204  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
003208  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
00320c  06530400  vfloat2fp16_h.rn vr6, vr8
003210  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
003214  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003218  46805602  vstore.mz vr5{mr1}, 0(r13)
00321c  46806302  vstore.mz vr6{mr1}, 0(r7)
003220  bffb6bff  blt.s r23, r22, -260
003224  5bc9ffff  j -440
003228  9f090000  addli r19, zero, 0
00322c  1f0a0000  addli r20, zero, 0
003230  00a00000  mfence { lm }
003234  3f8767fe  blt.s r15, r6, -576
003238  0f0a3a18  div.f.rn r20, r20, r3
00323c  8f893918  div.f.rn r19, r19, r3
003240  e3033f00  loadli.w r7,  24(r30)
003244  1f0b0000  addli r22, zero, 0
003248  8b6a4a21  mul.f.rn r21, r20, r20
00324c  0b6a0a58  neg.f r20, r20
003250  8be95919  sub.f.rn r19, r19, r21
003254  9f0a8fd7  addli r21, r30, -5184
003258  8be97910  add.f.rn r19, r19, r7
00325c  ab03803f  lui r7, 260096
003260  8f890908  sqrt.f.rn r19, r19
003264  8f893319  div.f.rn r19, r7, r19
003268  c2800a02  vload.mz vr1{mr1}, 0(r21)
00326c  9f0b4b00  addli r23, r22, 32
003270  06b10000  vfp162float_l.rn vr2, vr1
003274  86f00000  vfp162float_h.rn vr1, vr1
003278  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
00327c  92111a02  vadd.f.mz.rn vr3{mr1}, r20, vr1
003280  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003284  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003288  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
00328c  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003290  06120100  vfloat2fp16_l.rn vr4, vr2
003294  06d20100  vfloat2fp16_h.rn vr4, vr3
003298  46804a02  vstore.mz vr4{mr1}, 0(r21)
00329c  4be577ff  ble.s r15, r23, -680
0032a0  9f8b8a00  addli r23, r21, 64
0032a4  1f0b8b00  addli r22, r22, 64
0032a8  9f8a0a01  addli r21, r21, 128
0032ac  42810b02  vload.mz vr2{mr1}, 0(r23)
0032b0  86310100  vfp162float_l.rn vr3, vr2
0032b4  06710100  vfp162float_h.rn vr2, vr2
0032b8  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
0032bc  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
0032c0  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
0032c4  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
0032c8  86900100  vfloat2fp16_l.rn vr1, vr3
0032cc  86500100  vfloat2fp16_h.rn vr1, vr2
0032d0  46801b02  vstore.mz vr1{mr1}, 0(r23)
0032d4  3f5efbfe  blt.s r22, r15, -108
0032d8  dba3ffff  j -740
0032dc  80300002  core_id r1
0032e0  1f210000  addli r2, zero, 2
0032e4  37a02018  beq r1, r2, 12296
0032e8  1f110000  addli r2, zero, 1
0032ec  37922014  beq r1, r2, 10372
0032f0  3be00018  bneq r1, zero, 12312
0032f4  63012f00  loadli.w r2,  16(r30)
0032f8  ab0100f0  lui r3, 983040
0032fc  1b312100  slli r2, r2, 2
003300  17113100  or r2, r2, r3
003304  ab710200  lui r3, 39
003308  9f810108  addli r3, r3, 1024
00330c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
003310  5bff0500  j 12280
003314  80300002  core_id r1
003318  bb800000  bneq r1, zero, 32
00331c  63012f00  loadli.w r2,  16(r30)
003320  ab0100f0  lui r3, 983040
003324  1b312100  slli r2, r2, 2
003328  17113100  or r2, r2, r3
00332c  abd10200  lui r3, 45
003330  9f8101f0  addli r3, r3, -2048
003334  7f013200  l_gm2sm r2, r3, 0(r[5:6])
003338  2bf10000  lui r2, 15
00333c  e3411f00  loadli.w r3,  12(r30)
003340  00200300  mfence { sm, gm }
003344  1b11f1ff  ori r2, r2, 4095
003348  80210104  csr_set csr3, r2
00334c  00d00100  sync_group
003350  cb9e1118  ble.s r3, r1, 13220
003354  e3012f00  loadli.w r3,  16(r30)
003358  e3422f00  loadli.w r5,  20(r30)
00335c  abf4ffff  lui r9, 1048575
003360  abd80200  lui r17, 45
003364  1f0b8fd7  addli r22, r30, -5184
003368  1f140000  addli r8, zero, 1
00336c  1f050002  addli r10, zero, 256
003370  9f050001  addli r11, zero, 128
003374  1f068000  addli r12, zero, 64
003378  9f064000  addli r13, zero, 32
00337c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003380  9b94f4ff  ori r9, r9, 4095
003384  9f8808f0  addli r17, r17, -2048
003388  0b925110  add.s r4, r3, r5
00338c  1bb12100  slli r2, r3, 2
003390  b3810108  fix2float.rn r3, r3
003394  1f73f2ff  addli r6, r4, -1
003398  1bb22200  slli r4, r5, 2
00339c  67043fd6  storeli.w r3, -5312(r30)
0033a0  9f010fd7  addli r3, r30, -5248
0033a4  8b125330  div.s r5, r6, r5
0033a8  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0033ac  5b070000  j 56
0033b0  00a00000  mfence { lm }
0033b4  6b530f00  load.d r[7:8], 0(r30)
0033b8  2b0800f0  lui r16, 983040
0033bc  1f0b8fd7  addli r22, r30, -5184
0033c0  005a0102  load_param_i r20, 2
0033c4  17180101  or r16, r2, r16
0033c8  8b101a10  add.s r1, r20, r1
0033cc  0b292311  add.ul r[19:20], r[7:8], r[19:20]
0033d0  7f386901  s_lm2gm r16, r22, 0(r[19:20])
0033d4  00a00200  mfence { lm, gm }
0033d8  e3411f00  loadli.w r3,  12(r30)
0033dc  3fa03000  blt.s r1, r3, 8
0033e0  db620600  j 13076
0033e4  e3011f00  loadli.w r3,  8(r30)
0033e8  0b983010  add.s r16, r1, r3
0033ec  9f210000  addli r3, zero, 2
0033f0  0b18f820  mul.s r16, r16, r15
0033f4  33190828  sext_int2long r[19:20], r16
0033f8  2b0800f0  lui r16, 983040
0033fc  17393902  sll.d r[19:20], r[19:20], r3
003400  9f017fd6  addli r3, r30, -5320
003404  17180101  or r16, r2, r16
003408  6bd30100  load.d r[7:8], 0(r3)
00340c  0b2a2311  add.ul r[21:22], r[7:8], r[19:20]
003410  7f286a01  l_gm2lm r16, r22, 0(r[21:22])
003414  00a00200  mfence { lm, gm }
003418  bf978200  blt.s r5, r8, 484
00341c  9f0a0000  addli r21, zero, 0
003420  1f0a0000  addli r20, zero, 0
003424  1f0b0000  addli r22, zero, 0
003428  db0c0000  j 100
00342c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
003430  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003434  1f1b0b00  addli r22, r22, 1
003438  6a7105c0  vsrl.p vr2, r10, vr0
00343c  ea7115c0  vsrl.p vr3, r10, vr1
003440  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003444  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003448  6af105c0  vsrl.p vr2, r11, vr0
00344c  eaf115c0  vsrl.p vr3, r11, vr1
003450  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003454  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003458  6a7106c0  vsrl.p vr2, r12, vr0
00345c  ea7116c0  vsrl.p vr3, r12, vr1
003460  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003464  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003468  6af106c0  vsrl.p vr2, r13, vr0
00346c  eaf116c0  vsrl.p vr3, r13, vr1
003470  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003474  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003478  fa110040  vextracti.f r3, 0(vr0)
00347c  7a930040  vextracti.f r6, 0(vr1)
003480  8bea3a10  add.f.rn r21, r21, r3
003484  0b6a6a10  add.f.rn r20, r20, r6
003488  b7755b00  beq r22, r5, 380
00348c  1f080b00  addli r16, r22, 0
003490  3730a700  beq r14, r10, 12
003494  17289b00  xor r16, r22, r9
003498  0b980211  add.s r16, r5, r16
00349c  9f010fd7  addli r3, r30, -5248
0034a0  8b1be820  mul.s r23, r16, r14
0034a4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0034a8  8b9b7719  sub.s r23, r15, r23
0034ac  8b9beb40  min.s r23, r23, r14
0034b0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0034b4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0034b8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0034bc  bfcd8bfe  blt.s r23, r8, -144
0034c0  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0034c4  1f0c0000  addli r24, zero, 0
0034c8  8b1c0221  mul.s r25, r4, r16
0034cc  1f0d8fd7  addli r26, r30, -5184
0034d0  9f8d0800  addli r27, r17, 0
0034d4  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0034d8  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0034dc  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0034e0  0b989d11  add.s r16, r27, r25
0034e4  0b1e9d11  add.s r28, r26, r25
0034e8  1f038800  addli r6, r16, 64
0034ec  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
0034f0  9f038801  addli r7, r16, 192
0034f4  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
0034f8  9f018e01  addli r3, r28, 192
0034fc  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
003500  1f030801  addli r6, r16, 128
003504  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
003508  9f030e01  addli r7, r28, 128
00350c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
003510  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
003514  c2950302  vload_mask16.mz vr11{mr1}, 0(r7)
003518  1f038e00  addli r6, r28, 64
00351c  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
003520  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
003524  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
003528  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00352c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
003530  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003534  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003538  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
00353c  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
003540  1f038c00  addli r6, r24, 64
003544  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003548  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00354c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003550  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
003554  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003558  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
00355c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
003560  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
003564  4bab6bfe  ble.s r23, r6, -312
003568  1f030802  addli r6, r16, 256
00356c  9f038802  addli r7, r16, 320
003570  9f010e02  addli r3, r28, 256
003574  1f0c0c01  addli r24, r24, 128
003578  9f8d0d04  addli r27, r27, 512
00357c  1f0d0d04  addli r26, r26, 512
003580  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
003584  1f030803  addli r6, r16, 384
003588  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
00358c  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
003590  9f038e02  addli r7, r28, 320
003594  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
003598  1f038803  addli r6, r16, 448
00359c  1f088e03  addli r16, r28, 448
0035a0  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0035a4  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
0035a8  1f030e03  addli r6, r28, 384
0035ac  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0035b0  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0035b4  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
0035b8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0035bc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0035c0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0035c4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0035c8  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0035cc  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
0035d0  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0035d4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0035d8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0035dc  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
0035e0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0035e4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0035e8  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0035ec  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0035f0  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0035f4  bf3b7cff  blt.s r24, r23, -276
0035f8  dbc6ffff  j -460
0035fc  1f0a0000  addli r20, zero, 0
003600  9f0a0000  addli r21, zero, 0
003604  00a00000  mfence { lm }
003608  bfa687fe  blt.s r15, r8, -600
00360c  e3018fd6  loadli.w r3,  -5312(r30)
003610  1f0b0000  addli r22, zero, 0
003614  8f8a3a18  div.f.rn r21, r21, r3
003618  0f083a18  div.f.rn r16, r20, r3
00361c  e3013f00  loadli.w r3,  24(r30)
003620  0bea5a21  mul.f.rn r20, r21, r21
003624  0b684819  sub.f.rn r16, r16, r20
003628  0bea0a58  neg.f r20, r21
00362c  9f0a8fd7  addli r21, r30, -5184
003630  0b683810  add.f.rn r16, r16, r3
003634  ab01803f  lui r3, 260096
003638  0f080808  sqrt.f.rn r16, r16
00363c  0f880119  div.f.rn r16, r3, r16
003640  9f8b8a00  addli r23, r21, 64
003644  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
003648  1f0c4b00  addli r24, r22, 32
00364c  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
003650  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003654  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003658  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
00365c  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003660  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
003664  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
003668  4ba587ff  ble.s r15, r24, -696
00366c  9f8b0a01  addli r23, r21, 128
003670  1f8c8a01  addli r24, r21, 192
003674  1f0b8b00  addli r22, r22, 64
003678  9f8a0a02  addli r21, r21, 256
00367c  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
003680  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
003684  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003688  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
00368c  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003690  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003694  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
003698  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
00369c  bf1efbfe  blt.s r22, r15, -92
0036a0  5ba2ffff  j -752
0036a4  00310002  core_id r2
0036a8  ab630000  lui r7, 6
0036ac  9f100000  addli r1, zero, 1
0036b0  1f038fd7  addli r6, r30, -5184
0036b4  1f048000  addli r8, zero, 64
0036b8  1f050010  addli r10, zero, 2048
0036bc  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
0036c0  9b315100  slli r3, r2, 5
0036c4  00510102  load_param_i r2, 2
0036c8  9f830308  addli r7, r7, 1024
0036cc  9b345100  slli r9, r2, 5
0036d0  b3850128  zext_int2long r[12:13], r3
0036d4  ab0600f0  lui r13, 983040
0036d8  97b51502  sll.d r[12:13], r[12:13], r1
0036dc  9716d400  or r13, r8, r13
0036e0  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
0036e4  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
0036e8  9bb52100  slli r11, r3, 2
0036ec  8b913410  add.s r3, r9, r3
0036f0  00a00200  mfence { lm, gm }
0036f4  c2000302  vload.mz vr1{mr1}, 0(r6)
0036f8  1386a104  setlt.u r12, r3, r10
0036fc  8b957510  add.s r11, r11, r7
003700  9f868500  addli r13, r11, 64
003704  66c11180  vmerge_l.hf vr2, vr3, vr1
003708  e6c011a0  vmerge_h.hf vr1, vr3, vr1
00370c  4e902502  vstores_mask16.mz vr2{mr1}, 0(r11)
003710  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
003714  bb7e06fe  bneq r12, zero, -68
003718  abf00000  lui r1, 15
00371c  80310002  core_id r3
003720  9f020006  addli r5, zero, 768
003724  00a00300  mfence { lm, sm, gm }
003728  9b90f0ff  ori r1, r1, 4095
00372c  9b8d1100  andi r27, r3, 1
003730  9f010006  addli r3, zero, 768
003734  80a10004  csr_set csr3, r1
003738  00d00100  sync_group
00373c  37a00d00  beq r27, zero, 8
003740  9f02000a  addli r5, zero, 1280
003744  63421f00  loadli.w r4,  12(r30)
003748  9f100000  addli r1, zero, 1
00374c  bf2e1216  blt.s r4, r1, 12200
003750  9b451100  srli r11, r2, 1
003754  00310002  core_id r2
003758  8b913d20  mul.s r3, r27, r3
00375c  1f078fd7  addli r14, r30, -5184
003760  9bbb1200  slli r23, r5, 1
003764  1f040000  addli r8, zero, 0
003768  9f797000  addli r19, zero, 63
00376c  9f0a0005  addli r21, zero, 640
003770  2b09803f  lui r18, 260096
003774  1f0a2000  addli r20, zero, 16
003778  9f340000  addli r9, zero, 3
00377c  2bee7f00  lui r28, 2046
003780  9f571000  addli r15, zero, 13
003784  2be50700  lui r10, 126
003788  1f221000  addli r4, zero, 10
00378c  1f0b0003  addli r22, zero, 384
003790  1b461100  srli r12, r2, 1
003794  1bb12200  slli r2, r5, 2
003798  67083fd4  storeli.w r3, -5504(r30)
00379c  9f814200  addli r3, r5, 32
0037a0  0b11e110  add.s r2, r2, r14
0037a4  e70f3fd2  storeli.w r3, -5640(r30)
0037a8  8b91eb10  add.s r3, r23, r14
0037ac  1f0181ff  addli r2, r2, -64
0037b0  674f2fd2  storeli.w r2, -5644(r30)
0037b4  1f8181ff  addli r2, r3, -64
0037b8  abf100fc  lui r3, 1032207
0037bc  670f2fd2  storeli.w r2, -5648(r30)
0037c0  2bf1ffff  lui r2, 1048575
0037c4  9b9801c0  ori r17, r3, 3072
0037c8  00a00000  mfence { lm }
0037cc  e3411f00  loadli.w r3,  12(r30)
0037d0  e74ebfd3  storeli.w r27, -5652(r30)
0037d4  6704bfd4  storeli.w r11, -5568(r30)
0037d8  6700cfd4  storeli.w r12, -5632(r30)
0037dc  e74f7fd3  storeli.w r23, -5636(r30)
0037e0  1b1101f8  ori r2, r2, 3968
0037e4  e70e2fd2  storeli.w r2, -5656(r30)
0037e8  2bf10000  lui r2, 15
0037ec  1b11f1ff  ori r2, r2, 4095
0037f0  67082fd6  storeli.w r2, -5248(r30)
0037f4  2b710000  lui r2, 7
0037f8  1b13f1ff  ori r6, r2, 4095
0037fc  2b01ff03  lui r2, 16368
003800  1b18f13f  ori r16, r2, 1023
003804  1f018fd5  addli r2, r30, -5440
003808  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
00380c  db040000  j 36
003810  00a00300  mfence { lm, sm, gm }
003814  63010fd7  loadli.w r2,  -5248(r30)
003818  80210104  csr_set csr3, r2
00381c  00d00100  sync_group
003820  e3411f00  loadli.w r3,  12(r30)
003824  0b14b410  add.s r8, r8, r11
003828  3f203400  blt.s r8, r3, 8
00382c  db86faff  j -11212
003830  0b11c410  add.s r2, r8, r12
003834  4bff21fe  ble.s r3, r2, -36
003838  e3011f00  loadli.w r3,  8(r30)
00383c  0b113110  add.s r2, r2, r3
003840  8b01b430  div.u r3, r8, r11
003844  e3050fd5  loadli.w r11,  -5504(r30)
003848  1b31b100  slli r2, r2, 11
00384c  1711b100  or r2, r2, r11
003850  33160128  sext_int2long r[13:14], r2
003854  2b0100f0  lui r2, 983040
003858  9bb16100  slli r3, r3, 6
00385c  173c1602  sll.d r[25:26], r[13:14], r1
003860  9f067fd6  addli r13, r30, -5320
003864  17912b00  or r2, r23, r2
003868  9b810104  andi r3, r3, 64
00386c  ebd50600  load.d r[12:13], 0(r13)
003870  9f068fd6  addli r13, r30, -5312
003874  73b08601  store.d r[25:26], 0(r13)
003878  0ba68511  add.ul r[13:14], r[12:13], r[25:26]
00387c  7f21e600  l_gm2lm r2, r14, 0(r[13:14])
003880  00310002  core_id r2
003884  00a00200  mfence { lm, gm }
003888  179d2100  or r26, r3, r2
00388c  6301efd3  loadli.w r2,  -5648(r30)
003890  e341efd3  loadli.w r3,  -5644(r30)
003894  6306ffd3  loadli.w r12,  -5640(r30)
003898  c2000102  vload.mz vr1{mr1}, 0(r2)
00389c  1f06c6ff  addli r12, r12, -32
0038a0  9f8b81ff  addli r23, r3, -64
0038a4  1f0181ff  addli r2, r2, -64
0038a8  9386c904  setlt.u r13, r19, r12
0038ac  66c111a0  vmerge_h.hf vr2, vr3, vr1
0038b0  e6c01180  vmerge_l.hf vr1, vr3, vr1
0038b4  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
0038b8  9f8101ff  addli r3, r3, -128
0038bc  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
0038c0  3bef06fe  bneq r13, zero, -40
0038c4  1f010000  addli r2, zero, 0
0038c8  00a00000  mfence { lm }
0038cc  3ba60d00  bneq r27, zero, 392
0038d0  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0038d4  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0038d8  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0038dc  e301dfd3  loadli.w r3,  -5656(r30)
0038e0  8b167110  add.s r13, r2, r7
0038e4  0b162710  add.s r12, r14, r2
0038e8  9f810101  addli r3, r3, 128
0038ec  1f010104  addli r2, r2, 512
0038f0  9f850601  addli r11, r13, 128
0038f4  4a900602  vloads_mask16.mz vr0{mr1}, 0(r13)
0038f8  9f8b8600  addli r23, r13, 64
0038fc  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
003900  1f0c8601  addli r24, r12, 192
003904  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
003908  9f858601  addli r11, r13, 192
00390c  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
003910  9f0b8600  addli r23, r12, 64
003914  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
003918  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
00391c  9f050601  addli r11, r12, 128
003920  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
003924  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
003928  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00392c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
003930  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
003934  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
003938  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00393c  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
003940  46908502  vstore_mask16.mz vr8{mr1}, 0(r11)
003944  9f850602  addli r11, r13, 256
003948  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00394c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003950  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003954  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
003958  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
00395c  9f858602  addli r11, r13, 320
003960  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
003964  1f0c0602  addli r24, r12, 256
003968  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00396c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003970  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003974  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
003978  9f850603  addli r11, r13, 384
00397c  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
003980  9f868603  addli r13, r13, 448
003984  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003988  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
00398c  9f058602  addli r11, r12, 320
003990  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
003994  9f060603  addli r13, r12, 384
003998  1f068603  addli r12, r12, 448
00399c  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
0039a0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0039a4  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
0039a8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0039ac  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0039b0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0039b4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0039b8  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
0039bc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0039c0  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0039c4  93855105  setlt.u r11, r3, r21
0039c8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0039cc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0039d0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0039d4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0039d8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0039dc  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
0039e0  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0039e4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0039e8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0039ec  bbdb05fe  bneq r11, zero, -268
0039f0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0039f4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0039f8  1f010002  addli r2, zero, 256
0039fc  6a7101c0  vsrl.p vr2, r2, vr0
003a00  ea7111c0  vsrl.p vr3, r2, vr1
003a04  1f010001  addli r2, zero, 128
003a08  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a0c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a10  6a7101c0  vsrl.p vr2, r2, vr0
003a14  ea7111c0  vsrl.p vr3, r2, vr1
003a18  1f018000  addli r2, zero, 64
003a1c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a20  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a24  6a7101c0  vsrl.p vr2, r2, vr0
003a28  ea7111c0  vsrl.p vr3, r2, vr1
003a2c  1f014000  addli r2, zero, 32
003a30  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a34  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a38  6a7101c0  vsrl.p vr2, r2, vr0
003a3c  ea7111c0  vsrl.p vr3, r2, vr1
003a40  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a44  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a48  7a110040  vextracti.f r2, 0(vr0)
003a4c  fa910040  vextracti.f r3, 0(vr1)
003a50  5b660000  j 816
003a54  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003a58  abf1ffff  lui r3, 1048575
003a5c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003a60  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003a64  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003a68  9b9101f8  ori r3, r3, 3968
003a6c  8b962310  add.s r13, r7, r2
003a70  0b162710  add.s r12, r14, r2
003a74  9f810101  addli r3, r3, 128
003a78  1f010104  addli r2, r2, 512
003a7c  9f850631  addli r11, r13, 6272
003a80  9f8b0630  addli r23, r13, 6144
003a84  1f8c8631  addli r24, r13, 6336
003a88  9f0d0618  addli r27, r12, 3072
003a8c  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
003a90  ca920b02  vloads_mask16.mz vr5{mr1}, 0(r23)
003a94  9f8b8630  addli r23, r13, 6208
003a98  ca140c02  vloads_mask16.mz vr9{mr1}, 0(r24)
003a9c  9f058618  addli r11, r12, 3136
003aa0  1f0c8619  addli r24, r12, 3264
003aa4  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
003aa8  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
003aac  9f0b0619  addli r23, r12, 3200
003ab0  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
003ab4  c2950502  vload_mask16.mz vr11{mr1}, 0(r11)
003ab8  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
003abc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003ac0  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
003ac4  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
003ac8  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
003acc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003ad0  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
003ad4  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
003ad8  9f8b0632  addli r23, r13, 6400
003adc  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
003ae0  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
003ae4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003ae8  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
003aec  1f0c061a  addli r24, r12, 3328
003af0  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
003af4  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
003af8  9f05061b  addli r11, r12, 3456
003afc  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
003b00  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
003b04  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
003b08  9f8b8632  addli r23, r13, 6464
003b0c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003b10  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003b14  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
003b18  9f8b0633  addli r23, r13, 6528
003b1c  9f868633  addli r13, r13, 6592
003b20  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
003b24  9f0b861a  addli r23, r12, 3392
003b28  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
003b2c  1f06861b  addli r12, r12, 3520
003b30  93866105  setlt.u r13, r3, r22
003b34  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
003b38  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003b3c  c2930502  vload_mask16.mz vr7{mr1}, 0(r11)
003b40  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003b44  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
003b48  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003b4c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003b50  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
003b54  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003b58  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
003b5c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003b60  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003b64  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003b68  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003b6c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003b70  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
003b74  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
003b78  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003b7c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003b80  bbbb06fe  bneq r13, zero, -276
003b84  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003b88  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003b8c  1f010002  addli r2, zero, 256
003b90  abf5ffff  lui r11, 1048575
003b94  9f0b0000  addli r23, zero, 0
003b98  1b9605f8  ori r12, r11, 3968
003b9c  ea7111c0  vsrl.p vr3, r2, vr1
003ba0  6a7101c0  vsrl.p vr2, r2, vr0
003ba4  1f010001  addli r2, zero, 128
003ba8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003bac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003bb0  ea7111c0  vsrl.p vr3, r2, vr1
003bb4  6a7101c0  vsrl.p vr2, r2, vr0
003bb8  1f018000  addli r2, zero, 64
003bbc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003bc0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003bc4  ea7111c0  vsrl.p vr3, r2, vr1
003bc8  6a7101c0  vsrl.p vr2, r2, vr0
003bcc  1f014000  addli r2, zero, 32
003bd0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003bd4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003bd8  ea7111c0  vsrl.p vr3, r2, vr1
003bdc  6a7101c0  vsrl.p vr2, r2, vr0
003be0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003be4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003be8  fa910040  vextracti.f r3, 0(vr1)
003bec  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003bf0  7a110040  vextracti.f r2, 0(vr0)
003bf4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003bf8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003bfc  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003c00  8b9d7311  add.s r27, r7, r23
003c04  8b167711  add.s r13, r14, r23
003c08  1f060601  addli r12, r12, 128
003c0c  9f8b0b04  addli r23, r23, 512
003c10  9f850d18  addli r11, r27, 3072
003c14  1f8c0d19  addli r24, r27, 3200
003c18  42940602  vload_mask16.mz vr8{mr1}, 0(r13)
003c1c  9f8c8601  addli r25, r13, 192
003c20  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
003c24  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
003c28  9f858d18  addli r11, r27, 3136
003c2c  1f8c8d19  addli r24, r27, 3264
003c30  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
003c34  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
003c38  9f850601  addli r11, r13, 128
003c3c  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
003c40  1f8c8600  addli r24, r13, 64
003c44  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
003c48  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
003c4c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
003c50  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
003c54  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
003c58  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
003c5c  46908502  vstore_mask16.mz vr8{mr1}, 0(r11)
003c60  9f850d1a  addli r11, r27, 3328
003c64  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003c68  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003c6c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003c70  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003c74  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
003c78  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
003c7c  9f858d1a  addli r11, r27, 3392
003c80  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
003c84  9f8c0602  addli r25, r13, 256
003c88  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003c8c  1f8c0603  addli r24, r13, 384
003c90  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003c94  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003c98  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
003c9c  9f850d1b  addli r11, r27, 3456
003ca0  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003ca4  9f8d8d1b  addli r27, r27, 3520
003ca8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003cac  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003cb0  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
003cb4  9f858602  addli r11, r13, 320
003cb8  4a950d02  vloads_mask16.mz vr10{mr1}, 0(r27)
003cbc  9f868603  addli r13, r13, 448
003cc0  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
003cc4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003cc8  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
003ccc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003cd0  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
003cd4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003cd8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003cdc  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003ce0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003ce4  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
003ce8  93055605  setlt.u r11, r12, r21
003cec  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003cf0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003cf4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003cf8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003cfc  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003d00  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003d04  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
003d08  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003d0c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003d10  bbcb05fe  bneq r11, zero, -272
003d14  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003d18  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003d1c  9f050002  addli r11, zero, 256
003d20  e34ddfd3  loadli.w r27,  -5652(r30)
003d24  6af105c0  vsrl.p vr2, r11, vr0
003d28  eaf115c0  vsrl.p vr3, r11, vr1
003d2c  9f050001  addli r11, zero, 128
003d30  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003d34  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003d38  6af105c0  vsrl.p vr2, r11, vr0
003d3c  eaf115c0  vsrl.p vr3, r11, vr1
003d40  9f058000  addli r11, zero, 64
003d44  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003d48  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003d4c  6af105c0  vsrl.p vr2, r11, vr0
003d50  eaf115c0  vsrl.p vr3, r11, vr1
003d54  9f054000  addli r11, zero, 32
003d58  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003d5c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003d60  6af105c0  vsrl.p vr2, r11, vr0
003d64  eaf115c0  vsrl.p vr3, r11, vr1
003d68  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003d6c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003d70  fa150040  vextracti.f r11, 0(vr0)
003d74  7a960040  vextracti.f r12, 0(vr1)
003d78  0b61b110  add.f.rn r2, r2, r11
003d7c  8be1c110  add.f.rn r3, r3, r12
003d80  2b860000  lui r12, 8
003d84  ab860000  lui r13, 8
003d88  9b352d00  slli r11, r26, 2
003d8c  1f060608  addli r12, r12, 1024
003d90  9f86060c  addli r13, r13, 1536
003d94  9f0b0600  addli r23, r12, 0
003d98  1f8c0600  addli r24, r13, 0
003d9c  0b967511  add.s r12, r11, r23
003da0  8b968511  add.s r13, r11, r24
003da4  73e03600  stores.w r3, 0(r13)
003da8  73602600  stores.w r2, 0(r12)
003dac  9b914500  ori r3, r11, 4
003db0  9f060000  addli r13, zero, 0
003db4  00a00300  mfence { lm, sm, gm }
003db8  63010fd7  loadli.w r2,  -5248(r30)
003dbc  8b957111  add.s r11, r3, r23
003dc0  8b918111  add.s r3, r3, r24
003dc4  80210104  csr_set csr3, r2
003dc8  1b01ed07  andi r2, r26, 126
003dcc  00d00100  sync_group
003dd0  efc50500  loads.w r11, 0(r11)
003dd4  efc10100  loads.w r3, 0(r3)
003dd8  1b312100  slli r2, r2, 2
003ddc  0b167111  add.s r12, r2, r23
003de0  0b118111  add.s r2, r2, r24
003de4  6f460600  loads.w r12, 0(r12)
003de8  6f410100  loads.w r2, 0(r2)
003dec  8be5c510  add.f.rn r11, r11, r12
003df0  2b06003a  lui r12, 237568
003df4  0be12110  add.f.rn r2, r3, r2
003df8  8be1c520  mul.f.rn r3, r11, r12
003dfc  0b61c120  mul.f.rn r2, r2, r12
003e00  1f068fd7  addli r12, r30, -5184
003e04  8be53120  mul.f.rn r11, r3, r3
003e08  8be10158  neg.f r3, r3
003e0c  0b61b118  sub.f.rn r2, r2, r11
003e10  e3053f00  loadli.w r11,  24(r30)
003e14  0b61b110  add.f.rn r2, r2, r11
003e18  0f010108  sqrt.f.rn r2, r2
003e1c  0f012918  div.f.rn r2, r18, r2
003e20  9f058600  addli r11, r12, 64
003e24  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
003e28  9f8b4600  addli r23, r13, 32
003e2c  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
003e30  938b7207  setle.u r23, r5, r23
003e34  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
003e38  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
003e3c  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
003e40  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
003e44  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
003e48  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
003e4c  bbf00b00  bneq r23, zero, 60
003e50  9f050601  addli r11, r12, 128
003e54  9f0b8601  addli r23, r12, 192
003e58  9f868600  addli r13, r13, 64
003e5c  1f060602  addli r12, r12, 256
003e60  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
003e64  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
003e68  138c5604  setlt.u r24, r13, r5
003e6c  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
003e70  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
003e74  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
003e78  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
003e7c  46900502  vstore_mask16.mz vr0{mr1}, 0(r11)
003e80  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
003e84  3b7e0cfe  bneq r24, zero, -100
003e88  1f018fd7  addli r2, r30, -5184
003e8c  9f018fd7  addli r3, r30, -5184
003e90  1f060000  addli r12, zero, 0
003e94  00a00000  mfence { lm }
003e98  9f858100  addli r11, r3, 64
003e9c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
003ea0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003ea4  1f064600  addli r12, r12, 32
003ea8  9f810101  addli r3, r3, 128
003eac  ea211a22  vor.u.mz vr3{mr1}, r20, vr1
003eb0  42910502  vload_mask16.mz vr2{mr1}, 0(r11)
003eb4  93055604  setlt.u r11, r12, r5
003eb8  6eb201c2  vsrl.s.mz vr4{mr1}, vr3, vr0
003ebc  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003ec0  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
003ec4  eab13002  vand.s.mz vr3{mr1}, r1, vr3
003ec8  16304002  vadd.s.mz vr0{mr1}, vr0, vr4
003ecc  6aa21422  vor.u.mz vr4{mr1}, r9, vr1
003ed0  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
003ed4  eaa11722  vor.u.mz vr3{mr1}, r15, vr1
003ed8  ea201222  vor.u.mz vr1{mr1}, r4, vr1
003edc  12300302  vadd.s.mz vr0{mr1}, r6, vr0
003ee0  12312302  vadd.s.mz vr2{mr1}, r6, vr2
003ee4  eeb201c2  vsrl.s.mz vr5{mr1}, vr3, vr0
003ee8  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
003eec  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003ef0  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
003ef4  6a325502  vand.s.mz vr4{mr1}, r10, vr5
003ef8  6a300e02  vand.s.mz vr0{mr1}, r28, vr0
003efc  ea313502  vand.s.mz vr3{mr1}, r10, vr3
003f00  6a312e02  vand.s.mz vr2{mr1}, r28, vr2
003f04  6a300922  vor.s.mz vr0{mr1}, r18, vr0
003f08  6a324922  vor.s.mz vr4{mr1}, r18, vr4
003f0c  ea313922  vor.s.mz vr3{mr1}, r18, vr3
003f10  6a312922  vor.s.mz vr2{mr1}, r18, vr2
003f14  06100020  vfloat2fp16_l.rz vr0, vr0
003f18  86d10120  vfloat2fp16_h.rz vr3, vr3
003f1c  06500120  vfloat2fp16_h.rz vr0, vr2
003f20  86110220  vfloat2fp16_l.rz vr3, vr4
003f24  6a300802  vand.s.mz vr0{mr1}, r16, vr0
003f28  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
003f2c  eab01802  vand.s.mz vr1{mr1}, r17, vr1
003f30  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
003f34  46000102  vstore.mz vr0{mr1}, 0(r2)
003f38  1f018100  addli r2, r2, 64
003f3c  3bfd05fe  bneq r11, zero, -164
003f40  9f018fd6  addli r3, r30, -5312
003f44  eb550f00  load.d r[12:13], 0(r30)
003f48  2b0100f0  lui r2, 983040
003f4c  ebdb0100  load.d r[24:25], 0(r3)
003f50  8ba57511  add.ul r[12:13], r[12:13], r[24:25]
003f54  e34bffd3  loadli.w r23,  -5636(r30)
003f58  00a00000  mfence { lm }
003f5c  17912b00  or r2, r23, r2
003f60  7fb1e500  s_lm2gm r2, r14, 0(r[12:13])
003f64  1f018fd5  addli r2, r30, -5440
003f68  00a00200  mfence { lm, gm }
003f6c  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
003f70  e3058fd4  loadli.w r11,  -5568(r30)
003f74  63060fd4  loadli.w r12,  -5632(r30)
003f78  5b15ffff  j -1880
003f7c  003b0002  core_id r22
003f80  63012f00  loadli.w r2,  16(r30)
003f84  9b305b00  slli r1, r22, 5
003f88  cb211100  ble.s r2, r1, 104
003f8c  80530102  load_param_i r7, 2
003f90  2bc40000  lui r8, 12
003f94  1f110000  addli r2, zero, 1
003f98  9f018fd7  addli r3, r30, -5184
003f9c  1f038000  addli r6, zero, 64
003fa0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003fa4  9bb35300  slli r7, r7, 5
003fa8  1f0404f0  addli r8, r8, -2048
003fac  b3840028  zext_int2long r[10:11], r1
003fb0  ab0500f0  lui r11, 983040
003fb4  97b42402  sll.d r[10:11], r[10:11], r2
003fb8  9715b300  or r11, r6, r11
003fbc  8b249210  add.ul r[10:11], r[5:6], r[10:11]
003fc0  ffa53400  l_gm2lm r11, r3, 0(r[10:11])
003fc4  9bb42000  slli r9, r1, 2
003fc8  8b901310  add.s r1, r7, r1
003fcc  00a00200  mfence { lm, gm }
003fd0  c2800102  vload.mz vr1{mr1}, 0(r3)
003fd4  8b948410  add.s r9, r9, r8
003fd8  1f858400  addli r10, r9, 64
003fdc  66411080  vmerge_l.hf vr2, vr0, vr1
003fe0  e64010a0  vmerge_h.hf vr1, vr0, vr1
003fe4  4e902402  vstores_mask16.mz vr2{mr1}, 0(r9)
003fe8  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
003fec  3f8ff0fe  blt.s r1, r15, -64
003ff0  abf00000  lui r1, 15
003ff4  63411f00  loadli.w r2,  12(r30)
003ff8  00a00300  mfence { lm, sm, gm }
003ffc  9b90f0ff  ori r1, r1, 4095
004000  80a10004  csr_set csr3, r1
004004  00d00100  sync_group
004008  cb3b6113  ble.s r2, r22, 9964
00400c  e3002f00  loadli.w r1,  16(r30)
004010  63412f00  loadli.w r2,  20(r30)
004014  9f038fd7  addli r7, r30, -5184
004018  1f150000  addli r10, zero, 1
00401c  9f054000  addli r11, zero, 32
004020  1f747000  addli r8, zero, 63
004024  1f080002  addli r16, zero, 256
004028  9f080001  addli r17, zero, 128
00402c  1f098000  addli r18, zero, 64
004030  ab09803f  lui r19, 260096
004034  abeb7f00  lui r23, 2046
004038  abec0700  lui r25, 126
00403c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004040  8b912010  add.s r3, r1, r2
004044  33820008  fix2float.rn r4, r1
004048  1bb31000  slli r6, r1, 1
00404c  9bb22000  slli r5, r1, 2
004050  9f804000  addli r1, r1, 32
004054  9b342100  slli r9, r2, 2
004058  e74f1fd2  storeli.w r1, -5636(r30)
00405c  8b907210  add.s r1, r5, r7
004060  9ff1f1ff  addli r3, r3, -1
004064  67004fd4  storeli.w r4, -5632(r30)
004068  0b922130  div.s r4, r3, r2
00406c  9f8080ff  addli r1, r1, -64
004070  8b117310  add.s r3, r6, r7
004074  e70f1fd2  storeli.w r1, -5640(r30)
004078  9f8081ff  addli r1, r3, -64
00407c  674f1fd2  storeli.w r1, -5644(r30)
004080  abf0ffff  lui r1, 1048575
004084  00a00000  mfence { lm }
004088  67046fd4  storeli.w r6, -5568(r30)
00408c  9b90f0ff  ori r1, r1, 4095
004090  67041fd6  storeli.w r1, -5312(r30)
004094  ab700000  lui r1, 7
004098  9b9af0ff  ori r21, r1, 4095
00409c  ab00ff03  lui r1, 16368
0040a0  1b9df03f  ori r26, r1, 1023
0040a4  abf000fc  lui r1, 1032207
0040a8  1b9e00c0  ori r28, r1, 3072
0040ac  9f000fd7  addli r1, r30, -5248
0040b0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0040b4  db080000  j 68
0040b8  9f010fd5  addli r3, r30, -5504
0040bc  eb500f00  load.d r[2:3], 0(r30)
0040c0  9f038fd7  addli r7, r30, -5184
0040c4  ebd20100  load.d r[6:7], 0(r3)
0040c8  00a00000  mfence { lm }
0040cc  ab0100f0  lui r3, 983040
0040d0  8ba05010  add.ul r[2:3], r[2:3], r[6:7]
0040d4  63038fd4  loadli.w r6,  -5568(r30)
0040d8  80520102  load_param_i r5, 2
0040dc  0b9b6211  add.s r22, r5, r22
0040e0  97113300  or r3, r6, r3
0040e4  ffb17000  s_lm2gm r3, r7, 0(r[2:3])
0040e8  00a00200  mfence { lm, gm }
0040ec  e3401f00  loadli.w r1,  12(r30)
0040f0  3f201b00  blt.s r22, r1, 8
0040f4  5bc00400  j 9728
0040f8  e3001f00  loadli.w r1,  8(r30)
0040fc  9f027fd6  addli r5, r30, -5320
004100  8b101b10  add.s r1, r22, r1
004104  8b90f020  mul.s r1, r1, r15
004108  b3900028  sext_int2long r[2:3], r1
00410c  17b6a002  sll.d r[13:14], r[2:3], r10
004110  6bd10200  load.d r[3:4], 0(r5)
004114  ab0000f0  lui r1, 983040
004118  9f020fd5  addli r5, r30, -5504
00411c  97101300  or r1, r6, r1
004120  73b0c200  store.d r[13:14], 0(r5)
004124  0b21c110  add.ul r[3:4], r[3:4], r[13:14]
004128  ff207100  l_gm2lm r1, r7, 0(r[3:4])
00412c  00a00200  mfence { lm, gm }
004130  bff0b700  blt.s r15, r11, 60
004134  e340efd3  loadli.w r1,  -5644(r30)
004138  6301ffd3  loadli.w r2,  -5640(r30)
00413c  e341ffd3  loadli.w r3,  -5636(r30)
004140  c2800002  vload.mz vr1{mr1}, 0(r1)
004144  9f81c1ff  addli r3, r3, -32
004148  1f0381ff  addli r6, r2, -64
00414c  9f8080ff  addli r1, r1, -64
004150  93023404  setlt.u r5, r8, r3
004154  664110a0  vmerge_h.hf vr2, vr0, vr1
004158  e6401080  vmerge_l.hf vr1, vr0, vr1
00415c  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
004160  1f0101ff  addli r2, r2, -128
004164  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
004168  3bef02fe  bneq r5, zero, -40
00416c  670c6fd5  storeli.w r22, -5440(r30)
004170  00a00000  mfence { lm }
004174  bf57a200  blt.s r4, r10, 500
004178  9f010000  addli r3, zero, 0
00417c  9f020000  addli r5, zero, 0
004180  1f010000  addli r2, zero, 0
004184  db0d0000  j 108
004188  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
00418c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004190  1f110100  addli r2, r2, 1
004194  6a7108c0  vsrl.p vr2, r16, vr0
004198  ea7118c0  vsrl.p vr3, r16, vr1
00419c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0041a0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0041a4  6af108c0  vsrl.p vr2, r17, vr0
0041a8  eaf118c0  vsrl.p vr3, r17, vr1
0041ac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0041b0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0041b4  6a7109c0  vsrl.p vr2, r18, vr0
0041b8  ea7119c0  vsrl.p vr3, r18, vr1
0041bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0041c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0041c4  6af105c0  vsrl.p vr2, r11, vr0
0041c8  eaf115c0  vsrl.p vr3, r11, vr1
0041cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0041d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0041d4  fa100040  vextracti.f r1, 0(vr0)
0041d8  7a930040  vextracti.f r6, 0(vr1)
0041dc  8be11110  add.f.rn r3, r3, r1
0041e0  9f000fd7  addli r1, r30, -5248
0041e4  8be26210  add.f.rn r5, r5, r6
0041e8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0041ec  37164100  beq r2, r4, 388
0041f0  9f000100  addli r1, r2, 0
0041f4  37400701  beq r14, r16, 16
0041f8  e3008fd6  loadli.w r1,  -5312(r30)
0041fc  97201100  xor r1, r2, r1
004200  8b101210  add.s r1, r4, r1
004204  0b93e020  mul.s r6, r1, r14
004208  12320002  vadd.s.mz vr4{mr1}, zero, vr0
00420c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
004210  12310002  vadd.s.mz vr2{mr1}, zero, vr0
004214  92300002  vadd.s.mz vr1{mr1}, zero, vr0
004218  0b936718  sub.s r6, r15, r6
00421c  8b13e340  min.s r7, r6, r14
004220  bfada3fe  blt.s r7, r10, -152
004224  9f060fd7  addli r13, r30, -5248
004228  2bc60000  lui r12, 12
00422c  0b931420  mul.s r6, r9, r1
004230  1f040000  addli r8, zero, 0
004234  9f008fd7  addli r1, r30, -5184
004238  42920602  vload_mask16.mz vr4{mr1}, 0(r13)
00423c  1f0606f0  addli r12, r12, -2048
004240  92304002  vadd.s.mz vr1{mr1}, zero, vr4
004244  12314002  vadd.s.mz vr2{mr1}, zero, vr4
004248  92314002  vadd.s.mz vr3{mr1}, zero, vr4
00424c  0b1a6610  add.s r20, r12, r6
004250  8b966010  add.s r13, r1, r6
004254  1f0b8a00  addli r22, r20, 64
004258  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
00425c  1f0c8a01  addli r24, r20, 192
004260  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
004264  9f8d8601  addli r27, r13, 192
004268  4a130b02  vloads_mask16.mz vr6{mr1}, 0(r22)
00426c  1f0b0a01  addli r22, r20, 128
004270  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
004274  1f8c0601  addli r24, r13, 128
004278  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
00427c  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
004280  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
004284  1f8b8600  addli r22, r13, 64
004288  42150b02  vload_mask16.mz vr10{mr1}, 0(r22)
00428c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004290  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
004294  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
004298  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
00429c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0042a0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0042a4  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
0042a8  46106b02  vstore_mask16.mz vr6{mr1}, 0(r22)
0042ac  1f0b8400  addli r22, r8, 64
0042b0  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
0042b4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0042b8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0042bc  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0042c0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0042c4  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
0042c8  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
0042cc  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0042d0  cbea63ff  ble.s r7, r22, -328
0042d4  1f0c0a02  addli r24, r20, 256
0042d8  9f0d8a02  addli r27, r20, 320
0042dc  1f8b0602  addli r22, r13, 256
0042e0  1f040401  addli r8, r8, 128
0042e4  1f060604  addli r12, r12, 512
0042e8  9f800004  addli r1, r1, 512
0042ec  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
0042f0  1f0c0a03  addli r24, r20, 384
0042f4  1f0a8a03  addli r20, r20, 448
0042f8  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
0042fc  42130b02  vload_mask16.mz vr6{mr1}, 0(r22)
004300  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
004304  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
004308  1f8a0603  addli r20, r13, 384
00430c  1f8c8602  addli r24, r13, 320
004310  9f868603  addli r13, r13, 448
004314  42150a02  vload_mask16.mz vr10{mr1}, 0(r20)
004318  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
00431c  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
004320  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
004324  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004328  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
00432c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004330  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004334  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
004338  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
00433c  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
004340  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004344  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004348  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
00434c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004350  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004354  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
004358  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00435c  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
004360  bf3b74fe  blt.s r8, r7, -276
004364  dbc4ffff  j -476
004368  9f020000  addli r5, zero, 0
00436c  9f010000  addli r3, zero, 0
004370  00a00000  mfence { lm }
004374  3fd2a700  blt.s r15, r10, 148
004378  e3000fd4  loadli.w r1,  -5632(r30)
00437c  0f811118  div.f.rn r2, r3, r1
004380  8f801218  div.f.rn r1, r5, r1
004384  9f020000  addli r5, zero, 0
004388  8b612120  mul.f.rn r3, r2, r2
00438c  0b610158  neg.f r2, r2
004390  8be03018  sub.f.rn r1, r1, r3
004394  e3013f00  loadli.w r3,  24(r30)
004398  8be03010  add.f.rn r1, r1, r3
00439c  9f018fd7  addli r3, r30, -5184
0043a0  8f800008  sqrt.f.rn r1, r1
0043a4  8f801918  div.f.rn r1, r19, r1
0043a8  1f838100  addli r6, r3, 64
0043ac  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0043b0  9f834200  addli r7, r5, 32
0043b4  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
0043b8  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0043bc  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
0043c0  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0043c4  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
0043c8  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0043cc  46102302  vstore_mask16.mz vr2{mr1}, 0(r6)
0043d0  cbe07700  ble.s r15, r7, 56
0043d4  1f830101  addli r6, r3, 128
0043d8  9f838101  addli r7, r3, 192
0043dc  9f828200  addli r5, r5, 64
0043e0  9f810102  addli r3, r3, 256
0043e4  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
0043e8  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
0043ec  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0043f0  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
0043f4  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0043f8  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
0043fc  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
004400  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
004404  bf9ef2fe  blt.s r5, r15, -92
004408  00a00000  mfence { lm }
00440c  1f747000  addli r8, zero, 63
004410  1f032000  addli r6, zero, 16
004414  9f330000  addli r7, zero, 3
004418  9f561000  addli r13, zero, 13
00441c  1f2a1000  addli r20, zero, 10
004420  630b8fd5  loadli.w r22,  -5440(r30)
004424  3fd2a7fe  blt.s r15, r10, -876
004428  9f008fd7  addli r1, r30, -5184
00442c  1f018fd7  addli r2, r30, -5184
004430  9f010000  addli r3, zero, 0
004434  9f028100  addli r5, r2, 64
004438  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
00443c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004440  9f814100  addli r3, r3, 32
004444  1f010101  addli r2, r2, 128
004448  6a221322  vor.u.mz vr4{mr1}, r6, vr1
00444c  c2910202  vload_mask16.mz vr3{mr1}, 0(r5)
004450  ee3222c2  vsrl.s.mz vr5{mr1}, vr4, vr2
004454  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
004458  ea325502  vand.s.mz vr5{mr1}, r10, vr5
00445c  6a324502  vand.s.mz vr4{mr1}, r10, vr4
004460  16315102  vadd.s.mz vr2{mr1}, vr2, vr5
004464  eaa21322  vor.u.mz vr5{mr1}, r7, vr1
004468  96b14102  vadd.s.mz vr3{mr1}, vr3, vr4
00446c  6aa21622  vor.u.mz vr4{mr1}, r13, vr1
004470  ea201a22  vor.u.mz vr1{mr1}, r20, vr1
004474  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
004478  92b13a02  vadd.s.mz vr3{mr1}, r21, vr3
00447c  6e3322c2  vsrl.s.mz vr6{mr1}, vr4, vr2
004480  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
004484  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
004488  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
00448c  eab26c02  vand.s.mz vr5{mr1}, r25, vr6
004490  6ab12b02  vand.s.mz vr2{mr1}, r23, vr2
004494  6ab24c02  vand.s.mz vr4{mr1}, r25, vr4
004498  eab13b02  vand.s.mz vr3{mr1}, r23, vr3
00449c  6ab12922  vor.s.mz vr2{mr1}, r19, vr2
0044a0  eab25922  vor.s.mz vr5{mr1}, r19, vr5
0044a4  6ab24922  vor.s.mz vr4{mr1}, r19, vr4
0044a8  eab13922  vor.s.mz vr3{mr1}, r19, vr3
0044ac  06110120  vfloat2fp16_l.rz vr2, vr2
0044b0  06520220  vfloat2fp16_h.rz vr4, vr4
0044b4  06d10120  vfloat2fp16_h.rz vr2, vr3
0044b8  06920220  vfloat2fp16_l.rz vr4, vr5
0044bc  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
0044c0  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
0044c4  ea301e02  vand.s.mz vr1{mr1}, r28, vr1
0044c8  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
0044cc  46801002  vstore.mz vr1{mr1}, 0(r1)
0044d0  9f808000  addli r1, r1, 64
0044d4  bf8df1fe  blt.s r3, r15, -160
0044d8  5b7cffff  j -1056
0044dc  2b330100  lui r6, 19
0044e0  803a0002  core_id r21
0044e4  80500102  load_param_i r1, 2
0044e8  1f110000  addli r2, zero, 1
0044ec  9f038fd7  addli r7, r30, -5184
0044f0  1f048000  addli r8, zero, 64
0044f4  1f050010  addli r10, zero, 2048
0044f8  9bb15a00  slli r3, r21, 5
0044fc  9bb45000  slli r9, r1, 5
004500  1f0303f8  addli r6, r6, -1024
004504  b3850128  zext_int2long r[12:13], r3
004508  ab0600f0  lui r13, 983040
00450c  97b52502  sll.d r[12:13], r[12:13], r2
004510  9716d400  or r13, r8, r13
004514  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
004518  ffa67500  l_gm2lm r13, r7, 0(r[12:13])
00451c  9bb52100  slli r11, r3, 2
004520  8b913410  add.s r3, r9, r3
004524  00a00200  mfence { lm, gm }
004528  42800302  vload.mz vr0{mr1}, 0(r7)
00452c  1386a104  setlt.u r12, r3, r10
004530  8b956510  add.s r11, r11, r6
004534  9f868500  addli r13, r11, 64
004538  86300000  vfp162float_l.rn vr1, vr0
00453c  06700000  vfp162float_h.rn vr0, vr0
004540  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
004544  4e900602  vstores_mask16.mz vr0{mr1}, 0(r13)
004548  bb7e06fe  bneq r12, zero, -68
00454c  2bf10000  lui r2, 15
004550  00a00300  mfence { lm, sm, gm }
004554  63421f00  loadli.w r4,  12(r30)
004558  9b8d1a00  andi r27, r21, 1
00455c  9f020006  addli r5, zero, 768
004560  1b11f1ff  ori r2, r2, 4095
004564  80210104  csr_set csr3, r2
004568  1f010006  addli r2, zero, 768
00456c  00d00100  sync_group
004570  37a00d00  beq r27, zero, 8
004574  9f02000a  addli r5, zero, 1280
004578  e3411f00  loadli.w r3,  12(r30)
00457c  1f1b0000  addli r22, zero, 1
004580  bfd56111  blt.s r3, r22, 8564
004584  0b912d20  mul.s r2, r27, r2
004588  1bc51000  srli r10, r1, 1
00458c  9bb02200  slli r1, r5, 2
004590  9f068fd7  addli r13, r30, -5184
004594  1bb61200  slli r12, r5, 1
004598  ab5c0100  lui r25, 21
00459c  2b590100  lui r18, 21
0045a0  1f040000  addli r8, zero, 0
0045a4  9bc51a00  srli r11, r21, 1
0045a8  9f787000  addli r17, zero, 63
0045ac  1f0a0005  addli r20, zero, 640
0045b0  9f0b8000  addli r23, zero, 64
0045b4  1f0c4000  addli r24, zero, 32
0045b8  1f0e0003  addli r28, zero, 384
0045bc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0045c0  8b90d010  add.s r1, r1, r13
0045c4  67082fd6  storeli.w r2, -5248(r30)
0045c8  1f814200  addli r2, r5, 32
0045cc  9f8c0cf8  addli r25, r25, -1024
0045d0  1f0909fc  addli r18, r18, -512
0045d4  67042fd6  storeli.w r2, -5312(r30)
0045d8  9f8080ff  addli r1, r1, -64
0045dc  0b11d610  add.s r2, r12, r13
0045e0  670c1fd4  storeli.w r1, -5440(r30)
0045e4  9f0081ff  addli r1, r2, -64
0045e8  1f018fd4  addli r2, r30, -5568
0045ec  67081fd4  storeli.w r1, -5504(r30)
0045f0  abf0ffff  lui r1, 1048575
0045f4  00a00000  mfence { lm }
0045f8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0045fc  9b9000f8  ori r1, r1, 3968
004600  67001fd4  storeli.w r1, -5632(r30)
004604  abf00000  lui r1, 15
004608  1b9df0ff  ori r26, r1, 4095
00460c  db030000  j 28
004610  00a00300  mfence { lm, sm, gm }
004614  80210d04  csr_set csr3, r26
004618  00d00100  sync_group
00461c  0b14a410  add.s r8, r8, r10
004620  3f204400  blt.s r8, r4, 8
004624  dbc7f8ff  j -14788
004628  8b10b410  add.s r1, r8, r11
00462c  cb1f12fe  ble.s r4, r1, -28
004630  63011f00  loadli.w r2,  8(r30)
004634  e3010fd7  loadli.w r3,  -5248(r30)
004638  9f037fd6  addli r7, r30, -5320
00463c  8b902010  add.s r1, r1, r2
004640  0b01a430  div.u r2, r8, r10
004644  9bb0b000  slli r1, r1, 11
004648  97903000  or r1, r1, r3
00464c  ebd10300  load.d r[4:5], 0(r7)
004650  33970028  sext_int2long r[15:16], r1
004654  ab0000f0  lui r1, 983040
004658  1b316100  slli r2, r2, 6
00465c  17376703  sll.d r[15:16], r[15:16], r22
004660  97101600  or r1, r12, r1
004664  1b010104  andi r2, r2, 64
004668  8ba1e110  add.ul r[4:5], r[4:5], r[15:16]
00466c  ffa0d100  l_gm2lm r1, r13, 0(r[4:5])
004670  97105101  or r1, r2, r21
004674  00a00200  mfence { lm, gm }
004678  63010fd5  loadli.w r2,  -5504(r30)
00467c  e3018fd5  loadli.w r3,  -5440(r30)
004680  e3038fd6  loadli.w r7,  -5312(r30)
004684  c2000102  vload.mz vr1{mr1}, 0(r2)
004688  9f83c3ff  addli r7, r7, -32
00468c  9f8481ff  addli r9, r3, -64
004690  1f0181ff  addli r2, r2, -64
004694  13827804  setlt.u r4, r17, r7
004698  06f10000  vfp162float_h.rn vr2, vr1
00469c  86b00000  vfp162float_l.rn vr1, vr1
0046a0  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
0046a4  9f8101ff  addli r3, r3, -128
0046a8  46901402  vstore_mask16.mz vr1{mr1}, 0(r9)
0046ac  3b6f02fe  bneq r4, zero, -40
0046b0  00a00000  mfence { lm }
0046b4  3bb60d00  bneq r27, zero, 396
0046b8  1f028fd4  addli r4, r30, -5568
0046bc  e3010fd4  loadli.w r3,  -5632(r30)
0046c0  1f010000  addli r2, zero, 0
0046c4  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
0046c8  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0046cc  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0046d0  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0046d4  8b136110  add.s r7, r2, r6
0046d8  8b942610  add.s r9, r13, r2
0046dc  9f810101  addli r3, r3, 128
0046e0  1f010104  addli r2, r2, 512
0046e4  1f820301  addli r4, r7, 128
0046e8  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
0046ec  1f888300  addli r16, r7, 64
0046f0  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
0046f4  9f898401  addli r19, r9, 192
0046f8  ca120202  vloads_mask16.mz vr5{mr1}, 0(r4)
0046fc  1f828301  addli r4, r7, 192
004700  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
004704  1f888400  addli r16, r9, 64
004708  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
00470c  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
004710  1f820401  addli r4, r9, 128
004714  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
004718  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
00471c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004720  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004724  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004728  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00472c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004730  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
004734  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
004738  1f820302  addli r4, r7, 256
00473c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004740  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004744  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004748  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
00474c  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
004750  1f828302  addli r4, r7, 320
004754  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
004758  9f890402  addli r19, r9, 256
00475c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004760  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004764  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004768  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
00476c  1f820303  addli r4, r7, 384
004770  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
004774  9f838303  addli r7, r7, 448
004778  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00477c  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
004780  1f828402  addli r4, r9, 320
004784  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
004788  9f830403  addli r7, r9, 384
00478c  9f848403  addli r9, r9, 448
004790  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
004794  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004798  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
00479c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0047a0  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
0047a4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0047a8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0047ac  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
0047b0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0047b4  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
0047b8  13824105  setlt.u r4, r3, r20
0047bc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0047c0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0047c4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0047c8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0047cc  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0047d0  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
0047d4  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
0047d8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0047dc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0047e0  bb5b02fe  bneq r4, zero, -268
0047e4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0047e8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0047ec  1f010002  addli r2, zero, 256
0047f0  6a7101c0  vsrl.p vr2, r2, vr0
0047f4  ea7111c0  vsrl.p vr3, r2, vr1
0047f8  1f010001  addli r2, zero, 128
0047fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004800  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004804  6a7101c0  vsrl.p vr2, r2, vr0
004808  ea7111c0  vsrl.p vr3, r2, vr1
00480c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004810  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004814  6af10bc0  vsrl.p vr2, r23, vr0
004818  eaf11bc0  vsrl.p vr3, r23, vr1
00481c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004820  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004824  6a710cc0  vsrl.p vr2, r24, vr0
004828  ea711cc0  vsrl.p vr3, r24, vr1
00482c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004830  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004834  7a110040  vextracti.f r2, 0(vr0)
004838  fa910040  vextracti.f r3, 0(vr1)
00483c  5b660000  j 816
004840  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004844  abf1ffff  lui r3, 1048575
004848  1f8b0d00  addli r22, r27, 0
00484c  1f010000  addli r2, zero, 0
004850  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004854  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004858  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00485c  9b9101f8  ori r3, r3, 3968
004860  8b192310  add.s r19, r6, r2
004864  8b942610  add.s r9, r13, r2
004868  9f810101  addli r3, r3, 128
00486c  1f010104  addli r2, r2, 512
004870  9f8d0931  addli r27, r19, 6272
004874  1f820930  addli r4, r19, 6144
004878  1f888931  addli r16, r19, 6336
00487c  9f830418  addli r7, r9, 3072
004880  ca930d02  vloads_mask16.mz vr7{mr1}, 0(r27)
004884  ca120202  vloads_mask16.mz vr5{mr1}, 0(r4)
004888  1f828930  addli r4, r19, 6208
00488c  ca140802  vloads_mask16.mz vr9{mr1}, 0(r16)
004890  1f880419  addli r16, r9, 3200
004894  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
004898  9f8d8419  addli r27, r9, 3264
00489c  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
0048a0  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
0048a4  1f828418  addli r4, r9, 3136
0048a8  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
0048ac  c2150202  vload_mask16.mz vr11{mr1}, 0(r4)
0048b0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0048b4  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0048b8  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0048bc  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0048c0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0048c4  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0048c8  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
0048cc  9f830932  addli r7, r19, 6400
0048d0  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0048d4  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
0048d8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0048dc  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
0048e0  1f88041a  addli r16, r9, 3328
0048e4  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
0048e8  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
0048ec  1f82041b  addli r4, r9, 3456
0048f0  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0048f4  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0048f8  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
0048fc  9f838932  addli r7, r19, 6464
004900  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004904  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004908  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
00490c  9f830933  addli r7, r19, 6528
004910  9f898933  addli r19, r19, 6592
004914  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
004918  9f83841a  addli r7, r9, 3392
00491c  4a950902  vloads_mask16.mz vr10{mr1}, 0(r19)
004920  9f84841b  addli r9, r9, 3520
004924  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
004928  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00492c  c2130202  vload_mask16.mz vr7{mr1}, 0(r4)
004930  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004934  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
004938  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00493c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004940  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
004944  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004948  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
00494c  9383c105  setlt.u r7, r3, r28
004950  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004954  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004958  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00495c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004960  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004964  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
004968  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
00496c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004970  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004974  bbbb03fe  bneq r7, zero, -276
004978  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00497c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004980  1f010002  addli r2, zero, 256
004984  2bf2ffff  lui r4, 1048575
004988  9f040000  addli r9, zero, 0
00498c  9b1d02f8  ori r27, r4, 3968
004990  ea7111c0  vsrl.p vr3, r2, vr1
004994  6a7101c0  vsrl.p vr2, r2, vr0
004998  1f010001  addli r2, zero, 128
00499c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0049a0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0049a4  ea7111c0  vsrl.p vr3, r2, vr1
0049a8  6a7101c0  vsrl.p vr2, r2, vr0
0049ac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0049b0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0049b4  eaf11bc0  vsrl.p vr3, r23, vr1
0049b8  6af10bc0  vsrl.p vr2, r23, vr0
0049bc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0049c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0049c4  ea711cc0  vsrl.p vr3, r24, vr1
0049c8  6a710cc0  vsrl.p vr2, r24, vr0
0049cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0049d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0049d4  fa910040  vextracti.f r3, 0(vr1)
0049d8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0049dc  7a110040  vextracti.f r2, 0(vr0)
0049e0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0049e4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0049e8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0049ec  8b139310  add.s r7, r6, r9
0049f0  8b999610  add.s r19, r13, r9
0049f4  9f8d0d01  addli r27, r27, 128
0049f8  9f840404  addli r9, r9, 512
0049fc  1f820318  addli r4, r7, 3072
004a00  1f880319  addli r16, r7, 3200
004a04  42940902  vload_mask16.mz vr8{mr1}, 0(r19)
004a08  9f8a8901  addli r21, r19, 192
004a0c  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
004a10  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
004a14  1f828318  addli r4, r7, 3136
004a18  1f888319  addli r16, r7, 3264
004a1c  c2950a02  vload_mask16.mz vr11{mr1}, 0(r21)
004a20  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
004a24  1f820901  addli r4, r19, 128
004a28  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
004a2c  1f888900  addli r16, r19, 64
004a30  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
004a34  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
004a38  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004a3c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004a40  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004a44  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004a48  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
004a4c  1f82031a  addli r4, r7, 3328
004a50  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004a54  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004a58  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004a5c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004a60  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
004a64  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
004a68  1f82831a  addli r4, r7, 3392
004a6c  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
004a70  9f8a0902  addli r21, r19, 256
004a74  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
004a78  1f888903  addli r16, r19, 448
004a7c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004a80  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004a84  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
004a88  1f82031b  addli r4, r7, 3456
004a8c  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
004a90  9f83831b  addli r7, r7, 3520
004a94  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004a98  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004a9c  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
004aa0  1f828902  addli r4, r19, 320
004aa4  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
004aa8  9f830903  addli r7, r19, 384
004aac  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
004ab0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004ab4  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
004ab8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004abc  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
004ac0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004ac4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004ac8  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
004acc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004ad0  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
004ad4  13824d05  setlt.u r4, r27, r20
004ad8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004adc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004ae0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004ae4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004ae8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004aec  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
004af0  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
004af4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004af8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004afc  bb4b02fe  bneq r4, zero, -272
004b00  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004b04  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004b08  1f020002  addli r4, zero, 256
004b0c  9f0d0b00  addli r27, r22, 0
004b10  803a0002  core_id r21
004b14  1f1b0000  addli r22, zero, 1
004b18  6a7102c0  vsrl.p vr2, r4, vr0
004b1c  ea7112c0  vsrl.p vr3, r4, vr1
004b20  1f020001  addli r4, zero, 128
004b24  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b28  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b2c  6a7102c0  vsrl.p vr2, r4, vr0
004b30  ea7112c0  vsrl.p vr3, r4, vr1
004b34  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b38  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b3c  6af10bc0  vsrl.p vr2, r23, vr0
004b40  eaf11bc0  vsrl.p vr3, r23, vr1
004b44  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b48  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b4c  6a710cc0  vsrl.p vr2, r24, vr0
004b50  ea711cc0  vsrl.p vr3, r24, vr1
004b54  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b58  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b5c  7a120040  vextracti.f r4, 0(vr0)
004b60  fa930040  vextracti.f r7, 0(vr1)
004b64  0b614110  add.f.rn r2, r2, r4
004b68  8be17110  add.f.rn r3, r3, r7
004b6c  1bb22000  slli r4, r1, 2
004b70  9b80e007  andi r1, r1, 126
004b74  8b139211  add.s r7, r4, r25
004b78  8b142211  add.s r9, r4, r18
004b7c  9bb02000  slli r1, r1, 2
004b80  73e02300  stores.w r2, 0(r7)
004b84  1b114200  ori r2, r4, 4
004b88  73e03400  stores.w r3, 0(r9)
004b8c  0b929011  add.s r4, r1, r25
004b90  8b902011  add.s r1, r1, r18
004b94  9f030000  addli r7, zero, 0
004b98  00a00300  mfence { lm, sm, gm }
004b9c  80210d04  csr_set csr3, r26
004ba0  00d00100  sync_group
004ba4  8b119111  add.s r3, r2, r25
004ba8  6f420200  loads.w r4, 0(r4)
004bac  0b112111  add.s r2, r2, r18
004bb0  efc00000  loads.w r1, 0(r1)
004bb4  efc10100  loads.w r3, 0(r3)
004bb8  6f410100  loads.w r2, 0(r2)
004bbc  8be14110  add.f.rn r3, r3, r4
004bc0  2b02003a  lui r4, 237568
004bc4  8b601110  add.f.rn r1, r2, r1
004bc8  0be14120  mul.f.rn r2, r3, r4
004bcc  8be04020  mul.f.rn r1, r1, r4
004bd0  8b612120  mul.f.rn r3, r2, r2
004bd4  0b610158  neg.f r2, r2
004bd8  8be03018  sub.f.rn r1, r1, r3
004bdc  e3013f00  loadli.w r3,  24(r30)
004be0  8be03010  add.f.rn r1, r1, r3
004be4  ab01803f  lui r3, 260096
004be8  8f800008  sqrt.f.rn r1, r1
004bec  8f801118  div.f.rn r1, r3, r1
004bf0  9f018fd7  addli r3, r30, -5184
004bf4  1f828100  addli r4, r3, 64
004bf8  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
004bfc  9f844300  addli r9, r7, 32
004c00  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
004c04  93849206  setle.u r9, r5, r9
004c08  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
004c0c  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
004c10  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
004c14  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004c18  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
004c1c  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
004c20  bbf00400  bneq r9, zero, 60
004c24  1f820101  addli r4, r3, 128
004c28  9f848101  addli r9, r3, 192
004c2c  9f838300  addli r7, r7, 64
004c30  9f810102  addli r3, r3, 256
004c34  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
004c38  c2900402  vload_mask16.mz vr1{mr1}, 0(r9)
004c3c  13885304  setlt.u r16, r7, r5
004c40  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
004c44  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
004c48  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
004c4c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004c50  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
004c54  46901402  vstore_mask16.mz vr1{mr1}, 0(r9)
004c58  3b7e08fe  bneq r16, zero, -100
004c5c  9f008fd7  addli r1, r30, -5184
004c60  1f018fd7  addli r2, r30, -5184
004c64  9f010000  addli r3, zero, 0
004c68  00a00000  mfence { lm }
004c6c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
004c70  1f028100  addli r4, r2, 64
004c74  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
004c78  9f814100  addli r3, r3, 32
004c7c  1f010101  addli r2, r2, 128
004c80  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
004c84  13825104  setlt.u r4, r3, r5
004c88  06110000  vfloat2fp16_l.rn vr2, vr0
004c8c  06d10000  vfloat2fp16_h.rn vr2, vr1
004c90  46802002  vstore.mz vr2{mr1}, 0(r1)
004c94  9f808000  addli r1, r1, 64
004c98  3b5f02fe  bneq r4, zero, -44
004c9c  6b510f00  load.d r[3:4], 0(r30)
004ca0  ab0000f0  lui r1, 983040
004ca4  00a00000  mfence { lm }
004ca8  97101600  or r1, r12, r1
004cac  0b21e110  add.ul r[3:4], r[3:4], r[15:16]
004cb0  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
004cb4  00a00200  mfence { lm, gm }
004cb8  63421f00  loadli.w r4,  12(r30)
004cbc  5b2cffff  j -1696
004cc0  80300002  core_id r1
004cc4  e3012f00  loadli.w r3,  16(r30)
004cc8  1bb15000  slli r2, r1, 5
004ccc  cb912100  ble.s r3, r2, 100
004cd0  00540102  load_param_i r8, 2
004cd4  ab840100  lui r9, 24
004cd8  9f110000  addli r3, zero, 1
004cdc  1f038fd7  addli r6, r30, -5184
004ce0  9f038000  addli r7, zero, 64
004ce4  1b345400  slli r8, r8, 5
004ce8  9f840400  addli r9, r9, 0
004cec  33050128  zext_int2long r[11:12], r2
004cf0  2b0600f0  lui r12, 983040
004cf4  17353502  sll.d r[11:12], r[11:12], r3
004cf8  1796c300  or r12, r7, r12
004cfc  0b25a210  add.ul r[11:12], r[5:6], r[11:12]
004d00  7f266500  l_gm2lm r12, r6, 0(r[11:12])
004d04  1b352100  slli r10, r2, 2
004d08  0b112410  add.s r2, r8, r2
004d0c  00a00200  mfence { lm, gm }
004d10  42000302  vload.mz vr0{mr1}, 0(r6)
004d14  0b159510  add.s r10, r10, r9
004d18  9f058500  addli r11, r10, 64
004d1c  86300000  vfp162float_l.rn vr1, vr0
004d20  06700000  vfp162float_h.rn vr0, vr0
004d24  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
004d28  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
004d2c  3f0ff1fe  blt.s r2, r15, -64
004d30  2bf10000  lui r2, 15
004d34  e3411f00  loadli.w r3,  12(r30)
004d38  00a00300  mfence { lm, sm, gm }
004d3c  1b11f1ff  ori r2, r2, 4095
004d40  80210104  csr_set csr3, r2
004d44  00d00100  sync_group
004d48  cbb6110c  ble.s r3, r1, 6572
004d4c  63032f00  loadli.w r6,  16(r30)
004d50  e3432f00  loadli.w r7,  20(r30)
004d54  9f0b8fd7  addli r23, r30, -5184
004d58  1f150000  addli r10, zero, 1
004d5c  9f054000  addli r11, zero, 32
004d60  1f767000  addli r12, zero, 63
004d64  1f080002  addli r16, zero, 256
004d68  9f080001  addli r17, zero, 128
004d6c  1f098000  addli r18, zero, 64
004d70  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004d74  0b127310  add.s r4, r6, r7
004d78  33010308  fix2float.rn r2, r6
004d7c  1b342300  slli r8, r6, 2
004d80  9b321300  slli r5, r6, 1
004d84  9bb42300  slli r9, r7, 2
004d88  1f72f2ff  addli r4, r4, -1
004d8c  670c2fd4  storeli.w r2, -5440(r30)
004d90  1f014300  addli r2, r6, 32
004d94  0b137411  add.s r6, r8, r23
004d98  0b947211  add.s r8, r5, r23
004d9c  67082fd4  storeli.w r2, -5504(r30)
004da0  1f0183ff  addli r2, r6, -64
004da4  2bf3ffff  lui r6, 1048575
004da8  0b127230  div.s r4, r4, r7
004dac  67042fd4  storeli.w r2, -5568(r30)
004db0  1f0184ff  addli r2, r8, -64
004db4  9b16f3ff  ori r13, r6, 4095
004db8  2b830100  lui r6, 24
004dbc  67002fd4  storeli.w r2, -5632(r30)
004dc0  1f010fd7  addli r2, r30, -5248
004dc4  1f030300  addli r6, r6, 0
004dc8  00a00000  mfence { lm }
004dcc  67045fd6  storeli.w r5, -5312(r30)
004dd0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004dd4  5b070000  j 56
004dd8  6b510f00  load.d r[3:4], 0(r30)
004ddc  ab0900f0  lui r19, 983040
004de0  9f0b8fd7  addli r23, r30, -5184
004de4  00a00000  mfence { lm }
004de8  005a0102  load_param_i r20, 2
004dec  97993201  or r19, r5, r19
004df0  8b101a10  add.s r1, r20, r1
004df4  8b235111  add.ul r[8:9], r[3:4], r[22:23]
004df8  ffb97301  s_lm2gm r19, r23, 0(r[8:9])
004dfc  00a00200  mfence { lm, gm }
004e00  63411f00  loadli.w r2,  12(r30)
004e04  3fa02000  blt.s r1, r2, 8
004e08  db1d0300  j 6380
004e0c  63011f00  loadli.w r2,  8(r30)
004e10  8b932010  add.s r7, r1, r2
004e14  8b93f320  mul.s r7, r7, r15
004e18  b3930328  sext_int2long r[8:9], r7
004e1c  97baa302  sll.d r[22:23], r[8:9], r10
004e20  1f047fd6  addli r8, r30, -5320
004e24  ab0300f0  lui r7, 983040
004e28  6b510400  load.d r[3:4], 0(r8)
004e2c  97937200  or r7, r5, r7
004e30  8b295111  add.ul r[20:21], r[3:4], r[22:23]
004e34  ffa37901  l_gm2lm r7, r23, 0(r[20:21])
004e38  00a00200  mfence { lm, gm }
004e3c  bff0b700  blt.s r15, r11, 60
004e40  e3030fd4  loadli.w r7,  -5632(r30)
004e44  63048fd4  loadli.w r8,  -5568(r30)
004e48  e3090fd5  loadli.w r19,  -5504(r30)
004e4c  c2800302  vload.mz vr1{mr1}, 0(r7)
004e50  9f89c9ff  addli r19, r19, -32
004e54  9f0b84ff  addli r23, r8, -64
004e58  9f8383ff  addli r7, r7, -64
004e5c  130a3605  setlt.u r20, r12, r19
004e60  06f10000  vfp162float_h.rn vr2, vr1
004e64  86b00000  vfp162float_l.rn vr1, vr1
004e68  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
004e6c  1f0404ff  addli r8, r8, -128
004e70  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
004e74  3b6f0afe  bneq r20, zero, -40
004e78  00a00000  mfence { lm }
004e7c  bf17a200  blt.s r4, r10, 484
004e80  1f0c0000  addli r24, zero, 0
004e84  9f0b0000  addli r23, zero, 0
004e88  9f0c0000  addli r25, zero, 0
004e8c  db0c0000  j 100
004e90  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004e94  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004e98  9f9c0c00  addli r25, r25, 1
004e9c  6a7108c0  vsrl.p vr2, r16, vr0
004ea0  ea7118c0  vsrl.p vr3, r16, vr1
004ea4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004ea8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004eac  6af108c0  vsrl.p vr2, r17, vr0
004eb0  eaf118c0  vsrl.p vr3, r17, vr1
004eb4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004eb8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004ebc  6a7109c0  vsrl.p vr2, r18, vr0
004ec0  ea7119c0  vsrl.p vr3, r18, vr1
004ec4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004ec8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004ecc  6af105c0  vsrl.p vr2, r11, vr0
004ed0  eaf115c0  vsrl.p vr3, r11, vr1
004ed4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004ed8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004edc  7a110040  vextracti.f r2, 0(vr0)
004ee0  fa910040  vextracti.f r3, 0(vr1)
004ee4  0b6c2c10  add.f.rn r24, r24, r2
004ee8  8beb3b10  add.f.rn r23, r23, r3
004eec  b7f54c00  beq r25, r4, 380
004ef0  9f830c00  addli r7, r25, 0
004ef4  37300701  beq r14, r16, 12
004ef8  97a3dc00  xor r7, r25, r13
004efc  8b137210  add.s r7, r4, r7
004f00  1f010fd7  addli r2, r30, -5248
004f04  0b94e320  mul.s r8, r7, r14
004f08  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004f0c  0b948718  sub.s r8, r15, r8
004f10  0b1de440  min.s r26, r8, r14
004f14  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004f18  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004f1c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004f20  bf4dadfe  blt.s r26, r10, -144
004f24  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
004f28  9f0d0000  addli r27, zero, 0
004f2c  0b9e7420  mul.s r28, r9, r7
004f30  9f098fd7  addli r19, r30, -5184
004f34  1f0a0300  addli r20, r6, 0
004f38  92304002  vadd.s.mz vr1{mr1}, zero, vr4
004f3c  12314002  vadd.s.mz vr2{mr1}, zero, vr4
004f40  92314002  vadd.s.mz vr3{mr1}, zero, vr4
004f44  0b14ca11  add.s r8, r20, r28
004f48  8b93c911  add.s r7, r19, r28
004f4c  9f028400  addli r5, r8, 64
004f50  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
004f54  9f018401  addli r3, r8, 192
004f58  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
004f5c  1f818301  addli r2, r7, 192
004f60  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
004f64  9f020401  addli r5, r8, 128
004f68  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
004f6c  9f818300  addli r3, r7, 64
004f70  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
004f74  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
004f78  9f820301  addli r5, r7, 128
004f7c  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
004f80  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
004f84  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004f88  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
004f8c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
004f90  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
004f94  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004f98  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004f9c  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
004fa0  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
004fa4  9f818d00  addli r3, r27, 64
004fa8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004fac  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004fb0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004fb4  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
004fb8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004fbc  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
004fc0  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
004fc4  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
004fc8  4b2b3dfe  ble.s r26, r3, -312
004fcc  9f010402  addli r3, r8, 256
004fd0  9f028402  addli r5, r8, 320
004fd4  1f810302  addli r2, r7, 256
004fd8  9f8d0d01  addli r27, r27, 128
004fdc  1f0a0a04  addli r20, r20, 512
004fe0  9f890904  addli r19, r19, 512
004fe4  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
004fe8  9f010403  addli r3, r8, 384
004fec  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
004ff0  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
004ff4  9f828302  addli r5, r7, 320
004ff8  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
004ffc  9f018403  addli r3, r8, 448
005000  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
005004  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
005008  9f810303  addli r3, r7, 384
00500c  9f838303  addli r7, r7, 448
005010  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
005014  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
005018  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
00501c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
005020  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005024  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005028  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00502c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005030  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
005034  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
005038  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00503c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005040  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
005044  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005048  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00504c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
005050  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005054  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
005058  bfbbadff  blt.s r27, r26, -276
00505c  dbc6ffff  j -460
005060  9f0b0000  addli r23, zero, 0
005064  1f0c0000  addli r24, zero, 0
005068  00a00000  mfence { lm }
00506c  3fe2a700  blt.s r15, r10, 152
005070  63018fd5  loadli.w r2,  -5440(r30)
005074  1f0a0000  addli r20, zero, 0
005078  0f042c18  div.f.rn r8, r24, r2
00507c  8f832b18  div.f.rn r7, r23, r2
005080  63013f00  loadli.w r2,  24(r30)
005084  8b698420  mul.f.rn r19, r8, r8
005088  0b640458  neg.f r8, r8
00508c  8be33319  sub.f.rn r7, r7, r19
005090  9f098fd7  addli r19, r30, -5184
005094  8be32310  add.f.rn r7, r7, r2
005098  2b01803f  lui r2, 260096
00509c  8f830308  sqrt.f.rn r7, r7
0050a0  8f037118  div.f.rn r7, r2, r7
0050a4  9f8b8900  addli r23, r19, 64
0050a8  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
0050ac  1f0c4a00  addli r24, r20, 32
0050b0  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
0050b4  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
0050b8  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
0050bc  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
0050c0  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
0050c4  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
0050c8  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
0050cc  cbe08701  ble.s r15, r24, 56
0050d0  9f8b0901  addli r23, r19, 128
0050d4  1f8c8901  addli r24, r19, 192
0050d8  1f0a8a00  addli r20, r20, 64
0050dc  9f890902  addli r19, r19, 256
0050e0  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
0050e4  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
0050e8  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
0050ec  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
0050f0  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
0050f4  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
0050f8  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
0050fc  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
005100  bf1efafe  blt.s r20, r15, -92
005104  00a00000  mfence { lm }
005108  e3028fd6  loadli.w r5,  -5312(r30)
00510c  3fb3a7fe  blt.s r15, r10, -820
005110  9f038fd7  addli r7, r30, -5184
005114  1f048fd7  addli r8, r30, -5184
005118  9f090000  addli r19, zero, 0
00511c  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
005120  1f0a8400  addli r20, r8, 64
005124  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
005128  9f894900  addli r19, r19, 32
00512c  1f040401  addli r8, r8, 128
005130  42110a02  vload_mask16.mz vr2{mr1}, 0(r20)
005134  86910000  vfloat2fp16_l.rn vr3, vr1
005138  86510100  vfloat2fp16_h.rn vr3, vr2
00513c  46803302  vstore.mz vr3{mr1}, 0(r7)
005140  9f838300  addli r7, r7, 64
005144  3feff9fe  blt.s r19, r15, -40
005148  5b92ffff  j -880
00514c  63012f00  loadli.w r2,  16(r30)
005150  ab0100f0  lui r3, 983040
005154  1b311100  slli r2, r2, 1
005158  17113100  or r2, r2, r3
00515c  aba10100  lui r3, 26
005160  9f810100  addli r3, r3, 0
005164  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005168  5b080000  j 64
00516c  63012f00  loadli.w r2,  16(r30)
005170  ab0100f0  lui r3, 983040
005174  1b311100  slli r2, r2, 1
005178  17113100  or r2, r2, r3
00517c  abe10100  lui r3, 30
005180  9f810100  addli r3, r3, 0
005184  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005188  5bc30000  j 1560
00518c  63012f00  loadli.w r2,  16(r30)
005190  ab0100f0  lui r3, 983040
005194  1b311100  slli r2, r2, 1
005198  17113100  or r2, r2, r3
00519c  abb10100  lui r3, 27
0051a0  9f810100  addli r3, r3, 0
0051a4  7f013400  l_gm2sm r2, r3, 0(r[9:10])
0051a8  2bf10000  lui r2, 15
0051ac  e3411f00  loadli.w r3,  12(r30)
0051b0  00200300  mfence { sm, gm }
0051b4  1b11f1ff  ori r2, r2, 4095
0051b8  80210104  csr_set csr3, r2
0051bc  00d00100  sync_group
0051c0  cbd4110a  ble.s r3, r1, 5428
0051c4  63012f00  loadli.w r2,  16(r30)
0051c8  e3412f00  loadli.w r3,  20(r30)
0051cc  1f062000  addli r12, zero, 16
0051d0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0051d4  1f140000  addli r8, zero, 1
0051d8  9f068fd7  addli r13, r30, -5184
0051dc  9f050002  addli r11, zero, 256
0051e0  2b08ffff  lui r16, 1048560
0051e4  2b09807f  lui r18, 522240
0051e8  ab09c07f  lui r19, 523264
0051ec  1f0a0001  addli r20, zero, 128
0051f0  9f0a8000  addli r21, zero, 64
0051f4  1f0b4000  addli r22, zero, 32
0051f8  9b321100  slli r5, r2, 1
0051fc  0b123110  add.s r4, r2, r3
005200  33010108  fix2float.rn r2, r2
005204  1bb31100  slli r6, r3, 1
005208  67042fd4  storeli.w r2, -5568(r30)
00520c  1f71f2ff  addli r2, r4, -1
005210  67085fd4  storeli.w r5, -5504(r30)
005214  8b133130  div.s r7, r2, r3
005218  2bf1ffff  lui r2, 1048575
00521c  1b15f1ff  ori r10, r2, 4095
005220  1f010fd7  addli r2, r30, -5248
005224  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005228  6a200622  vor.u.mz vr0{mr1}, r12, vr0
00522c  1f018fd6  addli r2, r30, -5312
005230  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005234  2b710000  lui r2, 7
005238  9b18f1ff  ori r17, r2, 4095
00523c  db080000  j 68
005240  9f028fd5  addli r5, r30, -5440
005244  00a00000  mfence { lm }
005248  eb510f00  load.d r[4:5], 0(r30)
00524c  2b0100f0  lui r2, 983040
005250  9f068fd7  addli r13, r30, -5184
005254  80540102  load_param_i r9, 2
005258  ebdb0200  load.d r[24:25], 0(r5)
00525c  e3020fd5  loadli.w r5,  -5504(r30)
005260  8b901410  add.s r1, r9, r1
005264  8ba17111  add.ul r[4:5], r[4:5], r[24:25]
005268  17912200  or r2, r5, r2
00526c  7fb1d100  s_lm2gm r2, r13, 0(r[4:5])
005270  00a00200  mfence { lm, gm }
005274  63411f00  loadli.w r2,  12(r30)
005278  3fa02000  blt.s r1, r2, 8
00527c  5b8f0200  j 5240
005280  63011f00  loadli.w r2,  8(r30)
005284  9f047fd6  addli r9, r30, -5320
005288  0b912010  add.s r2, r1, r2
00528c  0b11f120  mul.s r2, r2, r15
005290  33110128  sext_int2long r[3:4], r2
005294  973b8102  sll.d r[24:25], r[3:4], r8
005298  ebd10400  load.d r[4:5], 0(r9)
00529c  2b0100f0  lui r2, 983040
0052a0  9f048fd5  addli r9, r30, -5440
0052a4  17912200  or r2, r5, r2
0052a8  73b07401  store.d r[24:25], 0(r9)
0052ac  8ba17111  add.ul r[4:5], r[4:5], r[24:25]
0052b0  7fa1d100  l_gm2lm r2, r13, 0(r[4:5])
0052b4  00a00200  mfence { lm, gm }
0052b8  bfdc8300  blt.s r7, r8, 820
0052bc  9f010000  addli r3, zero, 0
0052c0  1f010000  addli r2, zero, 0
0052c4  1f0e0000  addli r28, zero, 0
0052c8  db0c0000  j 100
0052cc  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0052d0  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0052d4  1f1e0e00  addli r28, r28, 1
0052d8  6af105c0  vsrl.p vr2, r11, vr0
0052dc  eaf115c0  vsrl.p vr3, r11, vr1
0052e0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0052e4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0052e8  6a710ac0  vsrl.p vr2, r20, vr0
0052ec  ea711ac0  vsrl.p vr3, r20, vr1
0052f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0052f4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0052f8  6af10ac0  vsrl.p vr2, r21, vr0
0052fc  eaf11ac0  vsrl.p vr3, r21, vr1
005300  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005304  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005308  6a710bc0  vsrl.p vr2, r22, vr0
00530c  ea711bc0  vsrl.p vr3, r22, vr1
005310  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005314  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005318  7a120040  vextracti.f r4, 0(vr0)
00531c  fa920040  vextracti.f r5, 0(vr1)
005320  8be14110  add.f.rn r3, r3, r4
005324  0b615110  add.f.rn r2, r2, r5
005328  373b7e00  beq r28, r7, 716
00532c  1f020e00  addli r4, r28, 0
005330  3730b700  beq r14, r11, 12
005334  1722ae00  xor r4, r28, r10
005338  0b924310  add.s r4, r7, r4
00533c  9f020fd7  addli r5, r30, -5248
005340  8b14e220  mul.s r9, r4, r14
005344  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
005348  8b949718  sub.s r9, r15, r9
00534c  8b9be440  min.s r23, r9, r14
005350  92322002  vadd.s.mz vr5{mr1}, zero, vr2
005354  12322002  vadd.s.mz vr4{mr1}, zero, vr2
005358  92312002  vadd.s.mz vr3{mr1}, zero, vr2
00535c  bfcd8bfe  blt.s r23, r8, -144
005360  8b1c4320  mul.s r25, r6, r4
005364  1f020fd7  addli r4, r30, -5248
005368  ab960100  lui r13, 25
00536c  1f0c0000  addli r24, zero, 0
005370  9f048fd7  addli r9, r30, -5184
005374  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
005378  9f860600  addli r13, r13, 0
00537c  12315002  vadd.s.mz vr2{mr1}, zero, vr5
005380  92315002  vadd.s.mz vr3{mr1}, zero, vr5
005384  12325002  vadd.s.mz vr4{mr1}, zero, vr5
005388  0b9d9611  add.s r26, r13, r25
00538c  0b929411  add.s r4, r9, r25
005390  9f028fd6  addli r5, r30, -5312
005394  4a030d02  vloads.mz vr6{mr1}, 0(r26)
005398  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
00539c  c2030202  vload.mz vr7{mr1}, 0(r4)
0053a0  9f020fd7  addli r5, r30, -5248
0053a4  9f0d8d00  addli r27, r26, 64
0053a8  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0053ac  9f028c00  addli r5, r24, 64
0053b0  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0053b4  6a357802  vand.s.mz vr10{mr1}, r16, vr7
0053b8  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0053bc  6a336802  vand.s.mz vr6{mr1}, r16, vr6
0053c0  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0053c4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0053c8  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0053cc  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0053d0  669503c0  vabs.f vr10, vr7
0053d4  6a348402  vand.s.mz vr8{mr1}, r8, vr8
0053d8  ea349402  vand.s.mz vr9{mr1}, r8, vr9
0053dc  7221a942  vlt.u.mz mr2{mr1}, r18, vr10
0053e0  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
0053e4  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
0053e8  12b48802  vadd.s.mz vr8{mr1}, r17, vr8
0053ec  92b49802  vadd.s.mz vr9{mr1}, r17, vr9
0053f0  ea338802  vand.s.mz vr7{mr1}, r16, vr8
0053f4  661403c0  vabs.f vr8, vr6
0053f8  6a339802  vand.s.mz vr6{mr1}, r16, vr9
0053fc  eaa30934  vor.u.mh vr7{mr2}, r19, vr0
005400  72218942  vlt.u.mz mr2{mr1}, r18, vr8
005404  6aa30934  vor.u.mh vr6{mr2}, r19, vr0
005408  4a840d02  vloads.mz vr8{mr1}, 0(r27)
00540c  9f0d8200  addli r27, r4, 64
005410  c2840d02  vload.mz vr9{mr1}, 0(r27)
005414  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
005418  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
00541c  6a336802  vand.s.mz vr6{mr1}, r16, vr6
005420  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
005424  ea349802  vand.s.mz vr9{mr1}, r16, vr9
005428  46007202  vstore.mz vr7{mr1}, 0(r4)
00542c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005430  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005434  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
005438  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
00543c  6a348802  vand.s.mz vr8{mr1}, r16, vr8
005440  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005444  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005448  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
00544c  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
005450  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
005454  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
005458  ea349402  vand.s.mz vr9{mr1}, r8, vr9
00545c  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
005460  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
005464  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
005468  661505c0  vabs.f vr10, vr10
00546c  661404c0  vabs.f vr8, vr8
005470  92b49802  vadd.s.mz vr9{mr1}, r17, vr9
005474  92b5b802  vadd.s.mz vr11{mr1}, r17, vr11
005478  7221a942  vlt.u.mz mr2{mr1}, r18, vr10
00547c  ea349802  vand.s.mz vr9{mr1}, r16, vr9
005480  6a35b802  vand.s.mz vr10{mr1}, r16, vr11
005484  eaa40934  vor.u.mh vr9{mr2}, r19, vr0
005488  72218942  vlt.u.mz mr2{mr1}, r18, vr8
00548c  6aa50934  vor.u.mh vr10{mr2}, r19, vr0
005490  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
005494  ea34a802  vand.s.mz vr9{mr1}, r16, vr10
005498  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
00549c  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0054a0  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0054a4  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0054a8  46808d02  vstore.mz vr8{mr1}, 0(r27)
0054ac  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0054b0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0054b4  4be85bfe  ble.s r23, r5, -488
0054b8  9f020d01  addli r5, r26, 128
0054bc  9f0d0201  addli r27, r4, 128
0054c0  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0054c4  1f028201  addli r4, r4, 192
0054c8  1f0c0c01  addli r24, r24, 128
0054cc  9f860602  addli r13, r13, 256
0054d0  9f840402  addli r9, r9, 256
0054d4  6a237622  vor.u.mz vr6{mr1}, r12, vr7
0054d8  4a840202  vloads.mz vr8{mr1}, 0(r5)
0054dc  c2840d02  vload.mz vr9{mr1}, 0(r27)
0054e0  9f028d01  addli r5, r26, 192
0054e4  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
0054e8  6a309802  vand.s.mz vr0{mr1}, r16, vr9
0054ec  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
0054f0  6a348802  vand.s.mz vr8{mr1}, r16, vr8
0054f4  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
0054f8  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
0054fc  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
005500  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
005504  e69504c0  vabs.f vr11, vr9
005508  6a300402  vand.s.mz vr0{mr1}, r8, vr0
00550c  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
005510  7221b942  vlt.u.mz mr2{mr1}, r18, vr11
005514  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
005518  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
00551c  12b00802  vadd.s.mz vr0{mr1}, r17, vr0
005520  12b5a802  vadd.s.mz vr10{mr1}, r17, vr10
005524  ea340802  vand.s.mz vr9{mr1}, r16, vr0
005528  661004c0  vabs.f vr0, vr8
00552c  6a34a802  vand.s.mz vr8{mr1}, r16, vr10
005530  eaa47934  vor.u.mh vr9{mr2}, r19, vr7
005534  72210942  vlt.u.mz mr2{mr1}, r18, vr0
005538  6aa47934  vor.u.mh vr8{mr2}, r19, vr7
00553c  4a800202  vloads.mz vr0{mr1}, 0(r5)
005540  42050202  vload.mz vr10{mr1}, 0(r4)
005544  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
005548  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
00554c  6a35a802  vand.s.mz vr10{mr1}, r16, vr10
005550  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
005554  6a348802  vand.s.mz vr8{mr1}, r16, vr8
005558  46809d02  vstore.mz vr9{mr1}, 0(r27)
00555c  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
005560  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
005564  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
005568  6a300802  vand.s.mz vr0{mr1}, r16, vr0
00556c  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
005570  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
005574  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
005578  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
00557c  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
005580  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
005584  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
005588  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
00558c  e69000c0  vabs.f vr1, vr1
005590  661000c0  vabs.f vr0, vr0
005594  12b5a802  vadd.s.mz vr10{mr1}, r17, vr10
005598  92b5b802  vadd.s.mz vr11{mr1}, r17, vr11
00559c  72211942  vlt.u.mz mr2{mr1}, r18, vr1
0055a0  6a35a802  vand.s.mz vr10{mr1}, r16, vr10
0055a4  ea30b802  vand.s.mz vr1{mr1}, r16, vr11
0055a8  6aa57934  vor.u.mh vr10{mr2}, r19, vr7
0055ac  72210942  vlt.u.mz mr2{mr1}, r18, vr0
0055b0  eaa07934  vor.u.mh vr1{mr2}, r19, vr7
0055b4  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
0055b8  ea331802  vand.s.mz vr7{mr1}, r16, vr1
0055bc  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0055c0  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
0055c4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0055c8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0055cc  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
0055d0  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
0055d4  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
0055d8  46000202  vstore.mz vr0{mr1}, 0(r4)
0055dc  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0055e0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0055e4  bf167cff  blt.s r24, r23, -604
0055e8  db9cffff  j -796
0055ec  1f010000  addli r2, zero, 0
0055f0  9f010000  addli r3, zero, 0
0055f4  00a00000  mfence { lm }
0055f8  3fa187fe  blt.s r15, r8, -952
0055fc  e3028fd4  loadli.w r5,  -5568(r30)
005600  aba60100  lui r13, 26
005604  abbb0100  lui r23, 27
005608  1f020000  addli r4, zero, 0
00560c  9f860600  addli r13, r13, 0
005610  9f8b0b00  addli r23, r23, 0
005614  8f815118  div.f.rn r3, r3, r5
005618  0f015118  div.f.rn r2, r2, r5
00561c  e3023f00  loadli.w r5,  24(r30)
005620  8be43120  mul.f.rn r9, r3, r3
005624  8be10158  neg.f r3, r3
005628  0b619118  sub.f.rn r2, r2, r9
00562c  9f048fd7  addli r9, r30, -5184
005630  0b615110  add.f.rn r2, r2, r5
005634  ab02803f  lui r5, 260096
005638  0f010108  sqrt.f.rn r2, r2
00563c  0f812218  div.f.rn r2, r5, r2
005640  42820402  vload.mz vr4{mr1}, 0(r9)
005644  ca820602  vloads.mz vr5{mr1}, 0(r13)
005648  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
00564c  4a830b02  vloads.mz vr6{mr1}, 0(r23)
005650  1f0c4200  addli r24, r4, 32
005654  ea212622  vor.u.mz vr3{mr1}, r12, vr2
005658  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
00565c  6a344802  vand.s.mz vr8{mr1}, r16, vr4
005660  92937102  vadd.f.mz.rn vr7{mr1}, r3, vr7
005664  12948102  vadd.f.mz.rn vr8{mr1}, r3, vr8
005668  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
00566c  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
005670  6a355802  vand.s.mz vr10{mr1}, r16, vr5
005674  ea326802  vand.s.mz vr5{mr1}, r16, vr6
005678  8a137102  vmul.f.mz.rn vr7{mr1}, r2, vr7
00567c  0a138102  vmul.f.mz.rn vr6{mr1}, r2, vr8
005680  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
005684  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
005688  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
00568c  6a337402  vand.s.mz vr6{mr1}, r8, vr7
005690  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
005694  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
005698  ea337402  vand.s.mz vr7{mr1}, r8, vr7
00569c  661202c0  vabs.f vr4, vr4
0056a0  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
0056a4  12b36802  vadd.s.mz vr6{mr1}, r17, vr6
0056a8  e69202c0  vabs.f vr5, vr5
0056ac  72214942  vlt.u.mz mr2{mr1}, r18, vr4
0056b0  6a336802  vand.s.mz vr6{mr1}, r16, vr6
0056b4  92b37802  vadd.s.mz vr7{mr1}, r17, vr7
0056b8  6aa32934  vor.u.mh vr6{mr2}, r19, vr2
0056bc  6a327802  vand.s.mz vr4{mr1}, r16, vr7
0056c0  72215942  vlt.u.mz mr2{mr1}, r18, vr5
0056c4  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
0056c8  6aa22934  vor.u.mh vr4{mr2}, r19, vr2
0056cc  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
0056d0  46804402  vstore.mz vr4{mr1}, 0(r9)
0056d4  cbbd87fd  ble.s r15, r24, -1172
0056d8  1f8c8600  addli r24, r13, 64
0056dc  9f8c8400  addli r25, r9, 64
0056e0  1f028200  addli r4, r4, 64
0056e4  9f860601  addli r13, r13, 128
0056e8  9f840401  addli r9, r9, 128
0056ec  4a020c02  vloads.mz vr4{mr1}, 0(r24)
0056f0  1f8c8b00  addli r24, r23, 64
0056f4  c2820c02  vload.mz vr5{mr1}, 0(r25)
0056f8  9f8b0b01  addli r23, r23, 128
0056fc  4a030c02  vloads.mz vr6{mr1}, 0(r24)
005700  eeb351a2  vsll.s.mz vr7{mr1}, vr3, vr5
005704  ea325802  vand.s.mz vr5{mr1}, r16, vr5
005708  92937102  vadd.f.mz.rn vr7{mr1}, r3, vr7
00570c  12945102  vadd.f.mz.rn vr8{mr1}, r3, vr5
005710  eeb441a2  vsll.s.mz vr9{mr1}, vr3, vr4
005714  6a354802  vand.s.mz vr10{mr1}, r16, vr4
005718  8a137102  vmul.f.mz.rn vr7{mr1}, r2, vr7
00571c  eeb261a2  vsll.s.mz vr5{mr1}, vr3, vr6
005720  6a326802  vand.s.mz vr4{mr1}, r16, vr6
005724  0a138102  vmul.f.mz.rn vr6{mr1}, r2, vr8
005728  a6929302  vmac.f.mz.rn vr5{mr1}, vr7, vr9
00572c  2612a302  vmac.f.mz.rn vr4{mr1}, vr6, vr10
005730  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
005734  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
005738  6a336402  vand.s.mz vr6{mr1}, r8, vr6
00573c  ea337402  vand.s.mz vr7{mr1}, r8, vr7
005740  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
005744  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
005748  e69202c0  vabs.f vr5, vr5
00574c  661202c0  vabs.f vr4, vr4
005750  12b36802  vadd.s.mz vr6{mr1}, r17, vr6
005754  92b37802  vadd.s.mz vr7{mr1}, r17, vr7
005758  72215942  vlt.u.mz mr2{mr1}, r18, vr5
00575c  6a336802  vand.s.mz vr6{mr1}, r16, vr6
005760  ea327802  vand.s.mz vr5{mr1}, r16, vr7
005764  6aa32934  vor.u.mh vr6{mr2}, r19, vr2
005768  72214942  vlt.u.mz mr2{mr1}, r18, vr4
00576c  eaa22934  vor.u.mh vr5{mr2}, r19, vr2
005770  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
005774  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
005778  46802c02  vstore.mz vr2{mr1}, 0(r25)
00577c  3f1bf2fe  blt.s r4, r15, -316
005780  5b58ffff  j -1344
005784  63012f00  loadli.w r2,  16(r30)
005788  ab0100f0  lui r3, 983040
00578c  1b311100  slli r2, r2, 1
005790  17113100  or r2, r2, r3
005794  abf10100  lui r3, 31
005798  9f810100  addli r3, r3, 0
00579c  7f013400  l_gm2sm r2, r3, 0(r[9:10])
0057a0  2bf10000  lui r2, 15
0057a4  e3411f00  loadli.w r3,  12(r30)
0057a8  00200300  mfence { sm, gm }
0057ac  1b11f1ff  ori r2, r2, 4095
0057b0  80210104  csr_set csr3, r2
0057b4  00d00100  sync_group
0057b8  cbfc1106  ble.s r3, r1, 3900
0057bc  e3012f00  loadli.w r3,  16(r30)
0057c0  e3422f00  loadli.w r5,  20(r30)
0057c4  2bf4ffff  lui r8, 1048575
0057c8  2bd50100  lui r10, 29
0057cc  9f0b8fd7  addli r23, r30, -5184
0057d0  9f040002  addli r9, zero, 256
0057d4  9f050001  addli r11, zero, 128
0057d8  1f068000  addli r12, zero, 64
0057dc  9f064000  addli r13, zero, 32
0057e0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0057e4  1b14f4ff  ori r8, r8, 4095
0057e8  1f050500  addli r10, r10, 0
0057ec  0b925110  add.s r4, r3, r5
0057f0  1bb11100  slli r2, r3, 1
0057f4  b3810108  fix2float.rn r3, r3
0057f8  1f73f2ff  addli r6, r4, -1
0057fc  1bb21200  slli r4, r5, 1
005800  8b125330  div.s r5, r6, r5
005804  1f130000  addli r6, zero, 1
005808  5b070000  j 56
00580c  00a00000  mfence { lm }
005810  eb580f00  load.d r[18:19], 0(r30)
005814  2b0800f0  lui r16, 983040
005818  9f0b8fd7  addli r23, r30, -5184
00581c  17180101  or r16, r2, r16
005820  8ba93811  add.ul r[20:21], r[18:19], r[20:21]
005824  80580102  load_param_i r17, 2
005828  7fb87901  s_lm2gm r16, r23, 0(r[20:21])
00582c  8b901810  add.s r1, r17, r1
005830  00a00200  mfence { lm, gm }
005834  e3431f00  loadli.w r7,  12(r30)
005838  3fa07000  blt.s r1, r7, 8
00583c  5bd70100  j 3768
005840  e3031f00  loadli.w r7,  8(r30)
005844  0b987010  add.s r16, r1, r7
005848  9f037fd6  addli r7, r30, -5320
00584c  0b18f820  mul.s r16, r16, r15
005850  33180828  sext_int2long r[17:18], r16
005854  97396802  sll.d r[20:21], r[17:18], r6
005858  ebd80300  load.d r[18:19], 0(r7)
00585c  2b0800f0  lui r16, 983040
005860  17180101  or r16, r2, r16
005864  8baa3811  add.ul r[22:23], r[18:19], r[20:21]
005868  7fa87a01  l_gm2lm r16, r23, 0(r[22:23])
00586c  00a00200  mfence { lm, gm }
005870  3fc76200  blt.s r5, r6, 464
005874  1f0b0000  addli r22, zero, 0
005878  9f0a0000  addli r21, zero, 0
00587c  9f0b0000  addli r23, zero, 0
005880  db0c0000  j 100
005884  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
005888  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00588c  9f9b0b00  addli r23, r23, 1
005890  6af134c0  vsrl.p vr2, r9, vr3
005894  6af214c0  vsrl.p vr4, r9, vr1
005898  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
00589c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0058a0  eaf125c0  vsrl.p vr3, r11, vr2
0058a4  6af215c0  vsrl.p vr4, r11, vr1
0058a8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0058ac  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0058b0  ea7126c0  vsrl.p vr3, r12, vr2
0058b4  6a7216c0  vsrl.p vr4, r12, vr1
0058b8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0058bc  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0058c0  eaf126c0  vsrl.p vr3, r13, vr2
0058c4  6af216c0  vsrl.p vr4, r13, vr1
0058c8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0058cc  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0058d0  fa130140  vextracti.f r7, 0(vr2)
0058d4  7a980040  vextracti.f r16, 0(vr1)
0058d8  0b6b7b10  add.f.rn r22, r22, r7
0058dc  8bea0a11  add.f.rn r21, r21, r16
0058e0  b7a55b00  beq r23, r5, 360
0058e4  1f880b00  addli r16, r23, 0
0058e8  37309700  beq r14, r9, 12
0058ec  17a88b00  xor r16, r23, r8
0058f0  0b980211  add.s r16, r5, r16
0058f4  8b18e820  mul.s r17, r16, r14
0058f8  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0058fc  92310002  vadd.s.mz vr3{mr1}, zero, vr0
005900  12310002  vadd.s.mz vr2{mr1}, zero, vr0
005904  92300002  vadd.s.mz vr1{mr1}, zero, vr0
005908  8b981719  sub.s r17, r15, r17
00590c  0b9ce840  min.s r24, r17, r14
005910  bf5d6cfe  blt.s r24, r6, -140
005914  92300002  vadd.s.mz vr1{mr1}, zero, vr0
005918  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00591c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
005920  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005924  9f0c0000  addli r25, zero, 0
005928  0b1d0221  mul.s r26, r4, r16
00592c  9f0d8fd7  addli r27, r30, -5184
005930  1f0e0500  addli r28, r10, 0
005934  0b18ae11  add.s r16, r28, r26
005938  9f838c00  addli r7, r25, 64
00593c  ca020802  vloads.mz vr5{mr1}, 0(r16)
005940  9f088800  addli r17, r16, 64
005944  4a830802  vloads.mz vr6{mr1}, 0(r17)
005948  8b98ad11  add.s r17, r27, r26
00594c  c2830802  vload.mz vr7{mr1}, 0(r17)
005950  1f898800  addli r18, r17, 64
005954  42040902  vload.mz vr8{mr1}, 0(r18)
005958  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
00595c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005960  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
005964  06b40300  vfp162float_l.rn vr8, vr7
005968  86f30300  vfp162float_h.rn vr7, vr7
00596c  86340300  vfp162float_l.rn vr9, vr6
005970  06730300  vfp162float_h.rn vr6, vr6
005974  86120400  vfloat2fp16_l.rn vr5, vr8
005978  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
00597c  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
005980  12340002  vadd.s.mz vr8{mr1}, zero, vr0
005984  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005988  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
00598c  06940400  vfloat2fp16_l.rn vr8, vr9
005990  86d20300  vfloat2fp16_h.rn vr5, vr7
005994  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005998  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
00599c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0059a0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0059a4  06540300  vfloat2fp16_h.rn vr8, vr6
0059a8  46805802  vstore.mz vr5{mr1}, 0(r17)
0059ac  46008902  vstore.mz vr8{mr1}, 0(r18)
0059b0  4b5b7cfe  ble.s r24, r7, -300
0059b4  9f030801  addli r7, r16, 128
0059b8  9f8c0c01  addli r25, r25, 128
0059bc  1f0e0e02  addli r28, r28, 256
0059c0  9f8d0d02  addli r27, r27, 256
0059c4  ca820302  vloads.mz vr5{mr1}, 0(r7)
0059c8  9f038801  addli r7, r16, 192
0059cc  1f880801  addli r16, r17, 128
0059d0  4a830302  vloads.mz vr6{mr1}, 0(r7)
0059d4  c2030802  vload.mz vr7{mr1}, 0(r16)
0059d8  9f838801  addli r7, r17, 192
0059dc  42840302  vload.mz vr8{mr1}, 0(r7)
0059e0  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
0059e4  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0059e8  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
0059ec  12330002  vadd.s.mz vr6{mr1}, zero, vr0
0059f0  86b40300  vfp162float_l.rn vr9, vr7
0059f4  86f30300  vfp162float_h.rn vr7, vr7
0059f8  86920400  vfloat2fp16_l.rn vr5, vr9
0059fc  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
005a00  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
005a04  86340400  vfp162float_l.rn vr9, vr8
005a08  06740400  vfp162float_h.rn vr8, vr8
005a0c  06930400  vfloat2fp16_l.rn vr6, vr9
005a10  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005a14  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005a18  86d20300  vfloat2fp16_h.rn vr5, vr7
005a1c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005a20  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005a24  06530400  vfloat2fp16_h.rn vr6, vr8
005a28  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
005a2c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005a30  46005802  vstore.mz vr5{mr1}, 0(r16)
005a34  46806302  vstore.mz vr6{mr1}, 0(r7)
005a38  bffb8cff  blt.s r25, r24, -260
005a3c  5bc9ffff  j -440
005a40  9f0a0000  addli r21, zero, 0
005a44  1f0b0000  addli r22, zero, 0
005a48  00a00000  mfence { lm }
005a4c  3f8767fe  blt.s r15, r6, -576
005a50  0f083b18  div.f.rn r16, r22, r3
005a54  8f883a18  div.f.rn r17, r21, r3
005a58  e3033f00  loadli.w r7,  24(r30)
005a5c  abec0100  lui r25, 30
005a60  2bfd0100  lui r26, 31
005a64  9f0b0000  addli r23, zero, 0
005a68  1f0c8fd7  addli r24, r30, -5184
005a6c  9f8c0c00  addli r25, r25, 0
005a70  1f0d0d00  addli r26, r26, 0
005a74  8b6a0821  mul.f.rn r21, r16, r16
005a78  0b6b0858  neg.f r22, r16
005a7c  8be85819  sub.f.rn r17, r17, r21
005a80  8be87810  add.f.rn r17, r17, r7
005a84  ab03803f  lui r7, 260096
005a88  8f880808  sqrt.f.rn r17, r17
005a8c  8f8a1319  div.f.rn r21, r7, r17
005a90  c2000c02  vload.mz vr1{mr1}, 0(r24)
005a94  4a810c02  vloads.mz vr2{mr1}, 0(r25)
005a98  ca010d02  vloads.mz vr3{mr1}, 0(r26)
005a9c  1f884b00  addli r16, r23, 32
005aa0  06b20000  vfp162float_l.rn vr4, vr1
005aa4  86f00000  vfp162float_h.rn vr1, vr1
005aa8  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
005aac  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
005ab0  86320100  vfp162float_l.rn vr5, vr2
005ab4  06b30100  vfp162float_l.rn vr6, vr3
005ab8  06710100  vfp162float_h.rn vr2, vr2
005abc  86f10100  vfp162float_h.rn vr3, vr3
005ac0  8a931a02  vmul.f.mz.rn vr7{mr1}, r21, vr1
005ac4  0a924a02  vmul.f.mz.rn vr4{mr1}, r21, vr4
005ac8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005acc  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
005ad0  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
005ad4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005ad8  06110300  vfloat2fp16_l.rn vr2, vr6
005adc  06d10100  vfloat2fp16_h.rn vr2, vr3
005ae0  46002c02  vstore.mz vr2{mr1}, 0(r24)
005ae4  cba407ff  ble.s r15, r16, -728
005ae8  1f888c00  addli r16, r25, 64
005aec  9f088c00  addli r17, r24, 64
005af0  9f8b8b00  addli r23, r23, 64
005af4  9f8c0c01  addli r25, r25, 128
005af8  1f0c0c01  addli r24, r24, 128
005afc  4a010802  vloads.mz vr2{mr1}, 0(r16)
005b00  1f088d00  addli r16, r26, 64
005b04  c2810802  vload.mz vr3{mr1}, 0(r17)
005b08  1f0d0d01  addli r26, r26, 128
005b0c  4a020802  vloads.mz vr4{mr1}, 0(r16)
005b10  86b20100  vfp162float_l.rn vr5, vr3
005b14  86f10100  vfp162float_h.rn vr3, vr3
005b18  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
005b1c  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
005b20  06330100  vfp162float_l.rn vr6, vr2
005b24  06710100  vfp162float_h.rn vr2, vr2
005b28  8a925a02  vmul.f.mz.rn vr5{mr1}, r21, vr5
005b2c  8a913a02  vmul.f.mz.rn vr3{mr1}, r21, vr3
005b30  86330200  vfp162float_l.rn vr7, vr4
005b34  06720200  vfp162float_h.rn vr4, vr4
005b38  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
005b3c  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
005b40  86900300  vfloat2fp16_l.rn vr1, vr7
005b44  86500200  vfloat2fp16_h.rn vr1, vr4
005b48  46801802  vstore.mz vr1{mr1}, 0(r17)
005b4c  3f9dfbfe  blt.s r23, r15, -188
005b50  db97ffff  j -836
005b54  9f000040  addli r1, zero, 8192
005b58  2b0100f0  lui r2, 983040
005b5c  97902000  or r1, r1, r2
005b60  2b310200  lui r2, 35
005b64  1f010100  addli r2, r2, 0
005b68  ff002300  l_gm2sm r1, r2, 0(r[7:8])
005b6c  db070000  j 60
005b70  63012f00  loadli.w r2,  16(r30)
005b74  ab0100f0  lui r3, 983040
005b78  1b312100  slli r2, r2, 2
005b7c  17113100  or r2, r2, r3
005b80  ab810200  lui r3, 40
005b84  9f810108  addli r3, r3, 1024
005b88  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005b8c  dbef0000  j 1916
005b90  9f000040  addli r1, zero, 8192
005b94  2b0100f0  lui r2, 983040
005b98  97902000  or r1, r1, r2
005b9c  2b510200  lui r2, 37
005ba0  1f010100  addli r2, r2, 0
005ba4  ff002400  l_gm2sm r1, r2, 0(r[9:10])
005ba8  abf00000  lui r1, 15
005bac  00200300  mfence { sm, gm }
005bb0  1b011500  andi r2, r10, 1
005bb4  9f020006  addli r5, zero, 768
005bb8  9b90f0ff  ori r1, r1, 4095
005bbc  80a10004  csr_set csr3, r1
005bc0  9f000006  addli r1, zero, 768
005bc4  00d00100  sync_group
005bc8  67082fd6  storeli.w r2, -5248(r30)
005bcc  37200100  beq r2, zero, 8
005bd0  9f02000a  addli r5, zero, 1280
005bd4  63411f00  loadli.w r2,  12(r30)
005bd8  9f110000  addli r3, zero, 1
005bdc  3f6c3104  blt.s r2, r3, 2840
005be0  e3010fd7  loadli.w r3,  -5248(r30)
005be4  00510102  load_param_i r2, 2
005be8  ab180200  lui r17, 33
005bec  ab7b0200  lui r23, 39
005bf0  2b7e0200  lui r28, 39
005bf4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005bf8  9b441500  srli r9, r10, 1
005bfc  1f030000  addli r6, zero, 0
005c00  1bb52200  slli r10, r5, 2
005c04  1f078fd7  addli r14, r30, -5184
005c08  1f090005  addli r18, zero, 640
005c0c  1f0a0001  addli r20, zero, 128
005c10  9f0a8000  addli r21, zero, 64
005c14  1f0b4000  addli r22, zero, 32
005c18  9f0d0003  addli r27, zero, 384
005c1c  1b441100  srli r8, r2, 1
005c20  2b310200  lui r2, 35
005c24  9f880800  addli r17, r17, 0
005c28  9f8b0b00  addli r23, r23, 0
005c2c  1f0e0e04  addli r28, r28, 512
005c30  8b901120  mul.s r1, r3, r1
005c34  1f010100  addli r2, r2, 0
005c38  67041fd6  storeli.w r1, -5312(r30)
005c3c  9bb02000  slli r1, r1, 2
005c40  8b952010  add.s r11, r1, r2
005c44  2b510200  lui r2, 37
005c48  1f010100  addli r2, r2, 0
005c4c  0b962010  add.s r12, r1, r2
005c50  abf0ffff  lui r1, 1048575
005c54  1f018fd5  addli r2, r30, -5440
005c58  9b9000f8  ori r1, r1, 3968
005c5c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005c60  63411f00  loadli.w r2,  12(r30)
005c64  67081fd4  storeli.w r1, -5504(r30)
005c68  abf00000  lui r1, 15
005c6c  1b9cf0ff  ori r24, r1, 4095
005c70  5b040000  j 32
005c74  00a00300  mfence { lm, sm, gm }
005c78  80210c04  csr_set csr3, r24
005c7c  00d00100  sync_group
005c80  63411f00  loadli.w r2,  12(r30)
005c84  0b138310  add.s r6, r6, r8
005c88  3f202300  blt.s r6, r2, 8
005c8c  dbfaf5ff  j -20524
005c90  8b109310  add.s r1, r6, r9
005c94  cb0f11fe  ble.s r2, r1, -32
005c98  63011f00  loadli.w r2,  8(r30)
005c9c  9f210000  addli r3, zero, 2
005ca0  1f027fd6  addli r4, r30, -5320
005ca4  8b902010  add.s r1, r1, r2
005ca8  63018fd6  loadli.w r2,  -5312(r30)
005cac  9bb0b000  slli r1, r1, 11
005cb0  97902000  or r1, r1, r2
005cb4  b3900028  sext_int2long r[2:3], r1
005cb8  97b73002  sll.d r[16:17], r[2:3], r3
005cbc  6b510200  load.d r[3:4], 0(r4)
005cc0  ab0000f0  lui r1, 983040
005cc4  97101500  or r1, r10, r1
005cc8  0b21f110  add.ul r[3:4], r[3:4], r[16:17]
005ccc  ff20e100  l_gm2lm r1, r14, 0(r[3:4])
005cd0  00a00200  mfence { lm, gm }
005cd4  e3000fd7  loadli.w r1,  -5248(r30)
005cd8  3ba60000  bneq r1, zero, 392
005cdc  9f008fd5  addli r1, r30, -5440
005ce0  e3010fd5  loadli.w r3,  -5504(r30)
005ce4  1f010000  addli r2, zero, 0
005ce8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
005cec  92303002  vadd.s.mz vr1{mr1}, zero, vr3
005cf0  12313002  vadd.s.mz vr2{mr1}, zero, vr3
005cf4  12323002  vadd.s.mz vr4{mr1}, zero, vr3
005cf8  8b161111  add.s r13, r2, r17
005cfc  8b102710  add.s r1, r14, r2
005d00  9f810101  addli r3, r3, 128
005d04  1f010104  addli r2, r2, 512
005d08  1f820601  addli r4, r13, 128
005d0c  4a900602  vloads_mask16.mz vr0{mr1}, 0(r13)
005d10  9f838600  addli r7, r13, 64
005d14  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
005d18  9f898001  addli r19, r1, 192
005d1c  ca120202  vloads_mask16.mz vr5{mr1}, 0(r4)
005d20  1f828601  addli r4, r13, 192
005d24  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
005d28  9f838000  addli r7, r1, 64
005d2c  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
005d30  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
005d34  1f820001  addli r4, r1, 128
005d38  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
005d3c  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
005d40  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005d44  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
005d48  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005d4c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005d50  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005d54  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
005d58  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
005d5c  1f820602  addli r4, r13, 256
005d60  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005d64  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
005d68  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
005d6c  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
005d70  9f830003  addli r7, r1, 384
005d74  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
005d78  1f828602  addli r4, r13, 320
005d7c  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
005d80  9f890002  addli r19, r1, 256
005d84  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005d88  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
005d8c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005d90  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
005d94  1f820603  addli r4, r13, 384
005d98  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
005d9c  9f868603  addli r13, r13, 448
005da0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005da4  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
005da8  1f828002  addli r4, r1, 320
005dac  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
005db0  9f808003  addli r1, r1, 448
005db4  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
005db8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005dbc  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
005dc0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005dc4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005dc8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005dcc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005dd0  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
005dd4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005dd8  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
005ddc  13822105  setlt.u r4, r3, r18
005de0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005de4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005de8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005dec  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005df0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005df4  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
005df8  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
005dfc  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005e00  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005e04  bb5b02fe  bneq r4, zero, -268
005e08  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005e0c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005e10  9f000002  addli r1, zero, 256
005e14  6af100c0  vsrl.p vr2, r1, vr0
005e18  eaf110c0  vsrl.p vr3, r1, vr1
005e1c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005e20  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005e24  6a710ac0  vsrl.p vr2, r20, vr0
005e28  ea711ac0  vsrl.p vr3, r20, vr1
005e2c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005e30  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005e34  6af10ac0  vsrl.p vr2, r21, vr0
005e38  eaf11ac0  vsrl.p vr3, r21, vr1
005e3c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005e40  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005e44  6a710bc0  vsrl.p vr2, r22, vr0
005e48  ea711bc0  vsrl.p vr3, r22, vr1
005e4c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005e50  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005e54  fa130040  vextracti.f r7, 0(vr0)
005e58  fa900040  vextracti.f r1, 0(vr1)
005e5c  5b630000  j 792
005e60  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005e64  abf0ffff  lui r1, 1048575
005e68  1f010000  addli r2, zero, 0
005e6c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005e70  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005e74  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005e78  9b9100f8  ori r3, r1, 3968
005e7c  8b902810  add.s r1, r17, r2
005e80  8b162710  add.s r13, r14, r2
005e84  9f810101  addli r3, r3, 128
005e88  1f010104  addli r2, r2, 512
005e8c  1f8d0031  addli r26, r1, 6272
005e90  9f830030  addli r7, r1, 6144
005e94  1f828031  addli r4, r1, 6336
005e98  9f8c0618  addli r25, r13, 3072
005e9c  ca130d02  vloads_mask16.mz vr7{mr1}, 0(r26)
005ea0  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
005ea4  9f838030  addli r7, r1, 6208
005ea8  ca140202  vloads_mask16.mz vr9{mr1}, 0(r4)
005eac  1f828618  addli r4, r13, 3136
005eb0  1f8d8619  addli r26, r13, 3264
005eb4  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
005eb8  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
005ebc  9f830619  addli r7, r13, 3200
005ec0  42100d02  vload_mask16.mz vr0{mr1}, 0(r26)
005ec4  c2150202  vload_mask16.mz vr11{mr1}, 0(r4)
005ec8  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
005ecc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005ed0  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
005ed4  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
005ed8  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
005edc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005ee0  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
005ee4  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
005ee8  9f830032  addli r7, r1, 6400
005eec  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
005ef0  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
005ef4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005ef8  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
005efc  9f8c061a  addli r25, r13, 3328
005f00  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
005f04  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
005f08  1f82861b  addli r4, r13, 3520
005f0c  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
005f10  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
005f14  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
005f18  9f838032  addli r7, r1, 6464
005f1c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005f20  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005f24  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
005f28  9f830033  addli r7, r1, 6528
005f2c  9f808033  addli r1, r1, 6592
005f30  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
005f34  9f83861a  addli r7, r13, 3392
005f38  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
005f3c  9f80061b  addli r1, r13, 3456
005f40  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
005f44  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005f48  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
005f4c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005f50  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
005f54  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005f58  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005f5c  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
005f60  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005f64  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
005f68  9383b105  setlt.u r7, r3, r27
005f6c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005f70  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005f74  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005f78  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005f7c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005f80  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005f84  46107202  vstore_mask16.mz vr7{mr1}, 0(r4)
005f88  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005f8c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005f90  bbbb03fe  bneq r7, zero, -276
005f94  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005f98  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005f9c  9f000002  addli r1, zero, 256
005fa0  9f060000  addli r13, zero, 0
005fa4  eaf110c0  vsrl.p vr3, r1, vr1
005fa8  6af100c0  vsrl.p vr2, r1, vr0
005fac  abf0ffff  lui r1, 1048575
005fb0  1b9d00f8  ori r26, r1, 3968
005fb4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005fb8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005fbc  ea711ac0  vsrl.p vr3, r20, vr1
005fc0  6a710ac0  vsrl.p vr2, r20, vr0
005fc4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005fc8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005fcc  eaf11ac0  vsrl.p vr3, r21, vr1
005fd0  6af10ac0  vsrl.p vr2, r21, vr0
005fd4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005fd8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005fdc  ea711bc0  vsrl.p vr3, r22, vr1
005fe0  6a710bc0  vsrl.p vr2, r22, vr0
005fe4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005fe8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005fec  fa910040  vextracti.f r3, 0(vr1)
005ff0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005ff4  7a110040  vextracti.f r2, 0(vr0)
005ff8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005ffc  12321002  vadd.s.mz vr4{mr1}, zero, vr1
006000  92311002  vadd.s.mz vr3{mr1}, zero, vr1
006004  8b9cd810  add.s r25, r17, r13
006008  8b10d710  add.s r1, r14, r13
00600c  1f0d0d01  addli r26, r26, 128
006010  9f860604  addli r13, r13, 512
006014  1f820c18  addli r4, r25, 3072
006018  9f830c19  addli r7, r25, 3200
00601c  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
006020  9f898001  addli r19, r1, 192
006024  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
006028  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
00602c  1f828c18  addli r4, r25, 3136
006030  9f838c19  addli r7, r25, 3264
006034  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
006038  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
00603c  1f820001  addli r4, r1, 128
006040  ca930302  vloads_mask16.mz vr7{mr1}, 0(r7)
006044  9f838000  addli r7, r1, 64
006048  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
00604c  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
006050  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
006054  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
006058  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00605c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
006060  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
006064  1f820c1a  addli r4, r25, 3328
006068  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00606c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
006070  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
006074  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
006078  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00607c  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
006080  1f828c1a  addli r4, r25, 3392
006084  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
006088  9f890002  addli r19, r1, 256
00608c  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
006090  9f830003  addli r7, r1, 384
006094  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
006098  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00609c  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
0060a0  1f820c1b  addli r4, r25, 3456
0060a4  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
0060a8  9f8c8c1b  addli r25, r25, 3520
0060ac  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0060b0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0060b4  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
0060b8  1f828002  addli r4, r1, 320
0060bc  4a950c02  vloads_mask16.mz vr10{mr1}, 0(r25)
0060c0  9f808003  addli r1, r1, 448
0060c4  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
0060c8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0060cc  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
0060d0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0060d4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0060d8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0060dc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0060e0  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
0060e4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0060e8  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
0060ec  13022d05  setlt.u r4, r26, r18
0060f0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0060f4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0060f8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0060fc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
006100  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
006104  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
006108  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
00610c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
006110  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006114  bb4b02fe  bneq r4, zero, -272
006118  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00611c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006120  9f000002  addli r1, zero, 256
006124  6af100c0  vsrl.p vr2, r1, vr0
006128  eaf110c0  vsrl.p vr3, r1, vr1
00612c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006130  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006134  6a710ac0  vsrl.p vr2, r20, vr0
006138  ea711ac0  vsrl.p vr3, r20, vr1
00613c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006140  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006144  6af10ac0  vsrl.p vr2, r21, vr0
006148  eaf11ac0  vsrl.p vr3, r21, vr1
00614c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006150  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006154  6a710bc0  vsrl.p vr2, r22, vr0
006158  ea711bc0  vsrl.p vr3, r22, vr1
00615c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006160  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006164  fa100040  vextracti.f r1, 0(vr0)
006168  7a920040  vextracti.f r4, 0(vr1)
00616c  8b631110  add.f.rn r7, r2, r1
006170  8be04110  add.f.rn r1, r3, r4
006174  8b018330  div.u r3, r6, r8
006178  00320002  core_id r4
00617c  1f010000  addli r2, zero, 0
006180  1f0d0000  addli r26, zero, 0
006184  9bb16100  slli r3, r3, 6
006188  9b810104  andi r3, r3, 64
00618c  97914100  or r3, r3, r4
006190  1bb22100  slli r4, r3, 2
006194  9b81e107  andi r3, r3, 126
006198  8b167211  add.s r13, r4, r23
00619c  9bb12100  slli r3, r3, 2
0061a0  73e07600  stores.w r7, 0(r13)
0061a4  8b13c211  add.s r7, r4, r28
0061a8  1b124200  ori r4, r4, 4
0061ac  73e01300  stores.w r1, 0(r7)
0061b0  8b107211  add.s r1, r4, r23
0061b4  8b937111  add.s r7, r3, r23
0061b8  0b12c211  add.s r4, r4, r28
0061bc  8b91c111  add.s r3, r3, r28
0061c0  00a00300  mfence { lm, sm, gm }
0061c4  80210c04  csr_set csr3, r24
0061c8  00d00100  sync_group
0061cc  efc00000  loads.w r1, 0(r1)
0061d0  efc30300  loads.w r7, 0(r7)
0061d4  6f420200  loads.w r4, 0(r4)
0061d8  efc10100  loads.w r3, 0(r3)
0061dc  8be07010  add.f.rn r1, r1, r7
0061e0  8b613210  add.f.rn r3, r4, r3
0061e4  2b02003a  lui r4, 237568
0061e8  8be04020  mul.f.rn r1, r1, r4
0061ec  8be14120  mul.f.rn r3, r3, r4
0061f0  0be21020  mul.f.rn r4, r1, r1
0061f4  8be60058  neg.f r13, r1
0061f8  8be14118  sub.f.rn r3, r3, r4
0061fc  63023f00  loadli.w r4,  24(r30)
006200  8be14110  add.f.rn r3, r3, r4
006204  2b02803f  lui r4, 260096
006208  8f810108  sqrt.f.rn r3, r3
00620c  8f013218  div.f.rn r3, r4, r3
006210  8b902510  add.s r1, r11, r2
006214  8b1c2710  add.s r25, r14, r2
006218  8b132610  add.s r7, r12, r2
00621c  9f898000  addli r19, r1, 64
006220  1f828c00  addli r4, r25, 64
006224  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
006228  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
00622c  4a920302  vloads_mask16.mz vr4{mr1}, 0(r7)
006230  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
006234  9f898300  addli r19, r7, 64
006238  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
00623c  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
006240  9f094d00  addli r19, r26, 32
006244  12900602  vadd.f.mz.rn vr0{mr1}, r13, vr0
006248  93893207  setle.u r19, r5, r19
00624c  92901602  vadd.f.mz.rn vr1{mr1}, r13, vr1
006250  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
006254  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
006258  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
00625c  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
006260  46904c02  vstore_mask16.mz vr4{mr1}, 0(r25)
006264  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
006268  bb910900  bneq r19, zero, 100
00626c  1f820c01  addli r4, r25, 128
006270  9f898c01  addli r19, r25, 192
006274  9f8c0001  addli r25, r1, 128
006278  9f808001  addli r1, r1, 192
00627c  1f0d8d00  addli r26, r26, 64
006280  1f010102  addli r2, r2, 256
006284  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
006288  9f8c0301  addli r25, r7, 128
00628c  9f838301  addli r7, r7, 192
006290  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
006294  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
006298  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
00629c  93005d04  setlt.u r1, r26, r5
0062a0  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
0062a4  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
0062a8  12900602  vadd.f.mz.rn vr0{mr1}, r13, vr0
0062ac  92901602  vadd.f.mz.rn vr1{mr1}, r13, vr1
0062b0  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
0062b4  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
0062b8  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
0062bc  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0062c0  46103202  vstore_mask16.mz vr3{mr1}, 0(r4)
0062c4  46905902  vstore_mask16.mz vr5{mr1}, 0(r19)
0062c8  3bad00fe  bneq r1, zero, -184
0062cc  6b510f00  load.d r[3:4], 0(r30)
0062d0  ab0000f0  lui r1, 983040
0062d4  00a00000  mfence { lm }
0062d8  97101500  or r1, r10, r1
0062dc  0b21f110  add.ul r[3:4], r[3:4], r[16:17]
0062e0  ff30e100  s_lm2gm r1, r14, 0(r[3:4])
0062e4  00a00200  mfence { lm, gm }
0062e8  5b33ffff  j -1640
0062ec  63012f00  loadli.w r2,  16(r30)
0062f0  ab0100f0  lui r3, 983040
0062f4  1b312100  slli r2, r2, 2
0062f8  17113100  or r2, r2, r3
0062fc  ab910200  lui r3, 41
006300  9f810108  addli r3, r3, 1024
006304  7f013400  l_gm2sm r2, r3, 0(r[9:10])
006308  2bf10000  lui r2, 15
00630c  e3411f00  loadli.w r3,  12(r30)
006310  00200300  mfence { sm, gm }
006314  1b11f1ff  ori r2, r2, 4095
006318  80210104  csr_set csr3, r2
00631c  00d00100  sync_group
006320  4bdf1100  ble.s r3, r1, 980
006324  e3012f00  loadli.w r3,  16(r30)
006328  e3422f00  loadli.w r5,  20(r30)
00632c  ab780200  lui r17, 39
006330  2b890200  lui r18, 40
006334  ab990200  lui r19, 41
006338  9f038fd7  addli r7, r30, -5184
00633c  1f140000  addli r8, zero, 1
006340  1f050002  addli r10, zero, 256
006344  1f060001  addli r12, zero, 128
006348  9f068000  addli r13, zero, 64
00634c  1f084000  addli r16, zero, 32
006350  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
006354  9f880808  addli r17, r17, 1024
006358  1f090908  addli r18, r18, 1024
00635c  9f890908  addli r19, r19, 1024
006360  0b925110  add.s r4, r3, r5
006364  9bb52100  slli r11, r3, 2
006368  33810108  fix2float.rn r2, r3
00636c  9f71f2ff  addli r3, r4, -1
006370  1bb22200  slli r4, r5, 2
006374  67082fd4  storeli.w r2, -5504(r30)
006378  1f010fd7  addli r2, r30, -5248
00637c  670cbfd4  storeli.w r11, -5440(r30)
006380  8b925130  div.s r5, r3, r5
006384  abf1ffff  lui r3, 1048575
006388  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00638c  9b94f1ff  ori r9, r3, 4095
006390  5b080000  j 64
006394  1f018fd6  addli r2, r30, -5312
006398  00a00000  mfence { lm }
00639c  6b5a0f00  load.d r[21:22], 0(r30)
0063a0  ab0100f0  lui r3, 983040
0063a4  00530102  load_param_i r6, 2
0063a8  e3058fd5  loadli.w r11,  -5440(r30)
0063ac  6b5b0100  load.d r[23:24], 0(r2)
0063b0  8b101310  add.s r1, r6, r1
0063b4  97913500  or r3, r11, r3
0063b8  0b2a6a11  add.ul r[21:22], r[21:22], r[23:24]
0063bc  ff317a00  s_lm2gm r3, r7, 0(r[21:22])
0063c0  00a00200  mfence { lm, gm }
0063c4  63411f00  loadli.w r2,  12(r30)
0063c8  3fa02000  blt.s r1, r2, 8
0063cc  5b650000  j 808
0063d0  63011f00  loadli.w r2,  8(r30)
0063d4  8b912010  add.s r3, r1, r2
0063d8  1f210000  addli r2, zero, 2
0063dc  8b91f120  mul.s r3, r3, r15
0063e0  339a0128  sext_int2long r[21:22], r3
0063e4  ab0100f0  lui r3, 983040
0063e8  173c2a02  sll.d r[25:26], r[21:22], r2
0063ec  1f017fd6  addli r2, r30, -5320
0063f0  97913500  or r3, r11, r3
0063f4  6b5a0100  load.d r[21:22], 0(r2)
0063f8  1f018fd6  addli r2, r30, -5312
0063fc  0b2b8a11  add.ul r[23:24], r[21:22], r[25:26]
006400  ff217b00  l_gm2lm r3, r7, 0(r[23:24])
006404  00a00200  mfence { lm, gm }
006408  73308101  store.d r[25:26], 0(r2)
00640c  bf978200  blt.s r5, r8, 484
006410  9f0b0000  addli r23, zero, 0
006414  1f0b0000  addli r22, zero, 0
006418  1f0c0000  addli r24, zero, 0
00641c  db0c0000  j 100
006420  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
006424  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006428  1f1c0c00  addli r24, r24, 1
00642c  6a7105c0  vsrl.p vr2, r10, vr0
006430  ea7115c0  vsrl.p vr3, r10, vr1
006434  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006438  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00643c  6a7106c0  vsrl.p vr2, r12, vr0
006440  ea7116c0  vsrl.p vr3, r12, vr1
006444  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006448  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00644c  6af106c0  vsrl.p vr2, r13, vr0
006450  eaf116c0  vsrl.p vr3, r13, vr1
006454  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006458  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00645c  6a7108c0  vsrl.p vr2, r16, vr0
006460  ea7118c0  vsrl.p vr3, r16, vr1
006464  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006468  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00646c  7a110040  vextracti.f r2, 0(vr0)
006470  fa910040  vextracti.f r3, 0(vr1)
006474  8beb2b10  add.f.rn r23, r23, r2
006478  0b6b3b10  add.f.rn r22, r22, r3
00647c  b7755c00  beq r24, r5, 380
006480  9f010c00  addli r3, r24, 0
006484  3730a700  beq r14, r10, 12
006488  97219c00  xor r3, r24, r9
00648c  8b913210  add.s r3, r5, r3
006490  1f010fd7  addli r2, r30, -5248
006494  0b93e120  mul.s r6, r3, r14
006498  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
00649c  0b936718  sub.s r6, r15, r6
0064a0  8b1ce340  min.s r25, r6, r14
0064a4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0064a8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0064ac  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0064b0  bfcd8cfe  blt.s r25, r8, -144
0064b4  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0064b8  1f0d0000  addli r26, zero, 0
0064bc  8b1d3220  mul.s r27, r4, r3
0064c0  1f0e8fd7  addli r28, r30, -5184
0064c4  9f850800  addli r11, r17, 0
0064c8  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0064cc  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0064d0  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0064d4  8b91b511  add.s r3, r11, r27
0064d8  0b13be11  add.s r6, r28, r27
0064dc  1f818100  addli r2, r3, 64
0064e0  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
0064e4  1f8a8101  addli r20, r3, 192
0064e8  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
0064ec  9f0a8301  addli r21, r6, 192
0064f0  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
0064f4  1f810101  addli r2, r3, 128
0064f8  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
0064fc  1f0a0301  addli r20, r6, 128
006500  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
006504  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
006508  c2150a02  vload_mask16.mz vr11{mr1}, 0(r20)
00650c  1f018300  addli r2, r6, 64
006510  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
006514  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
006518  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
00651c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
006520  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
006524  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006528  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00652c  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
006530  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
006534  1f018d00  addli r2, r26, 64
006538  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
00653c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
006540  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006544  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
006548  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00654c  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
006550  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
006554  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
006558  4bab2cfe  ble.s r25, r2, -312
00655c  1f8a0102  addli r20, r3, 256
006560  9f8a8102  addli r21, r3, 320
006564  1f010302  addli r2, r6, 256
006568  1f0d0d01  addli r26, r26, 128
00656c  9f850504  addli r11, r11, 512
006570  1f0e0e04  addli r28, r28, 512
006574  4a100a02  vloads_mask16.mz vr0{mr1}, 0(r20)
006578  1f8a0103  addli r20, r3, 384
00657c  9f818103  addli r3, r3, 448
006580  ca920a02  vloads_mask16.mz vr5{mr1}, 0(r21)
006584  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
006588  ca130a02  vloads_mask16.mz vr7{mr1}, 0(r20)
00658c  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
006590  9f010303  addli r3, r6, 384
006594  1f0a8302  addli r20, r6, 320
006598  1f038303  addli r6, r6, 448
00659c  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
0065a0  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
0065a4  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0065a8  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
0065ac  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0065b0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0065b4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0065b8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0065bc  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0065c0  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
0065c4  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0065c8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0065cc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0065d0  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
0065d4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0065d8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0065dc  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0065e0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0065e4  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0065e8  bf3b9dff  blt.s r26, r25, -276
0065ec  dbc6ffff  j -460
0065f0  1f0b0000  addli r22, zero, 0
0065f4  9f0b0000  addli r23, zero, 0
0065f8  00a00000  mfence { lm }
0065fc  3fe687fe  blt.s r15, r8, -616
006600  63010fd5  loadli.w r2,  -5504(r30)
006604  9f050000  addli r11, zero, 0
006608  1f0c0000  addli r24, zero, 0
00660c  8f812b18  div.f.rn r3, r23, r2
006610  0f032b18  div.f.rn r6, r22, r2
006614  63013f00  loadli.w r2,  24(r30)
006618  0beb3120  mul.f.rn r22, r3, r3
00661c  8beb0158  neg.f r23, r3
006620  0b636319  sub.f.rn r6, r6, r22
006624  0b632310  add.f.rn r6, r6, r2
006628  2b01803f  lui r2, 260096
00662c  0f030308  sqrt.f.rn r6, r6
006630  0f0b6118  div.f.rn r22, r2, r6
006634  0b932511  add.s r6, r11, r18
006638  8b91b310  add.s r3, r7, r11
00663c  9f0c8300  addli r25, r6, 64
006640  4a110302  vloads_mask16.mz vr2{mr1}, 0(r6)
006644  0b933511  add.s r6, r11, r19
006648  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00664c  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
006650  9f8c8100  addli r25, r3, 64
006654  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
006658  1f038300  addli r6, r6, 64
00665c  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
006660  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
006664  1f034c00  addli r6, r24, 32
006668  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
00666c  92925b02  vadd.f.mz.rn vr5{mr1}, r23, vr5
006670  8a101b02  vmul.f.mz.rn vr1{mr1}, r22, vr1
006674  8a125b02  vmul.f.mz.rn vr5{mr1}, r22, vr5
006678  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
00667c  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
006680  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
006684  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
006688  4bb467fe  ble.s r15, r6, -756
00668c  0b13b910  add.s r6, r18, r11
006690  8b9cb910  add.s r25, r19, r11
006694  1f0c8c00  addli r24, r24, 64
006698  9f850502  addli r11, r11, 256
00669c  1f0d0301  addli r26, r6, 128
0066a0  9f8d0c01  addli r27, r25, 128
0066a4  1f038301  addli r6, r6, 192
0066a8  9f8c8c01  addli r25, r25, 192
0066ac  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
0066b0  1f8d0101  addli r26, r3, 128
0066b4  9f818101  addli r3, r3, 192
0066b8  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
0066bc  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
0066c0  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
0066c4  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
0066c8  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0066cc  92913b02  vadd.f.mz.rn vr3{mr1}, r23, vr3
0066d0  12924b02  vadd.f.mz.rn vr4{mr1}, r23, vr4
0066d4  8a113b02  vmul.f.mz.rn vr3{mr1}, r22, vr3
0066d8  0a124b02  vmul.f.mz.rn vr4{mr1}, r22, vr4
0066dc  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
0066e0  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
0066e4  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
0066e8  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
0066ec  3f2dfcfe  blt.s r24, r15, -184
0066f0  db94ffff  j -860
0066f4  9f0e8fd3  addli sp, r30, -5696
0066f8  e38f2e2c  loadli.w r31,  5648(sp)
0066fc  63cf2e2c  loadli.w r30,  5652(sp)
006700  638e3e2c  loadli.w r28,  5656(sp)
006704  e3cd3e2c  loadli.w r27,  5660(sp)
006708  638d4e2c  loadli.w r26,  5664(sp)
00670c  e3cc4e2c  loadli.w r25,  5668(sp)
006710  638c5e2c  loadli.w r24,  5672(sp)
006714  e3cb5e2c  loadli.w r23,  5676(sp)
006718  638b6e2c  loadli.w r22,  5680(sp)
00671c  e3ca6e2c  loadli.w r21,  5684(sp)
006720  638a7e2c  loadli.w r20,  5688(sp)
006724  e3c97e2c  loadli.w r19,  5692(sp)
006728  9f8e8e2c  addli sp, sp, 5696
00672c  5f800f00  jr r31, 0
006730  00100000  exit
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
