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
0001d4  37f92004  beq r1, r2, 2652
0001d8  1f210000  addli r2, zero, 2
0001dc  3bb82004  bneq r1, r2, 2572
0001e0  e3403f00  loadli.w r1,  28(r30)
0001e4  37b60012  beq r1, zero, 9612
0001e8  80300002  core_id r1
0001ec  1f210000  addli r2, zero, 2
0001f0  37cf2024  beq r1, r2, 19408
0001f4  1f110000  addli r2, zero, 1
0001f8  37ae2024  beq r1, r2, 19336
0001fc  bb8f0024  bneq r1, zero, 19424
000200  63012f00  loadli.w r2,  16(r30)
000204  ab0100f0  lui r3, 983040
000208  1b311100  slli r2, r2, 1
00020c  17113100  or r2, r2, r3
000210  ab910100  lui r3, 25
000214  9f810100  addli r3, r3, 0
000218  7f013200  l_gm2sm r2, r3, 0(r[5:6])
00021c  5b780900  j 19392
000220  1f310000  addli r2, zero, 3
000224  37b92004  beq r1, r2, 2636
000228  1f410000  addli r2, zero, 4
00022c  bbf62004  bneq r1, r2, 2492
000230  e3002f00  loadli.w r1,  16(r30)
000234  1f010010  addli r2, zero, 2048
000238  bbab2008  bneq r1, r2, 4840
00023c  e3403f00  loadli.w r1,  28(r30)
000240  37c80018  beq r1, zero, 12816
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
0003a8  9b881100  andi r17, r3, 1
0003ac  80210104  csr_set csr3, r2
0003b0  1f010006  addli r2, zero, 768
0003b4  00d00100  sync_group
0003b8  37a00800  beq r17, zero, 8
0003bc  9f02000a  addli r5, zero, 1280
0003c0  e3411f00  loadli.w r3,  12(r30)
0003c4  e3441f00  loadli.w r9,  12(r30)
0003c8  1f130000  addli r6, zero, 1
0003cc  3fed612e  blt.s r3, r6, 24408
0003d0  0b912820  mul.s r2, r17, r2
0003d4  9bc11000  srli r3, r1, 1
0003d8  80300002  core_id r1
0003dc  1f0a8fd7  addli r20, r30, -5184
0003e0  1bb81200  slli r16, r5, 1
0003e4  9f030000  addli r7, zero, 0
0003e8  9f7c7000  addli r25, zero, 63
0003ec  9f0d0005  addli r27, zero, 640
0003f0  ab06803f  lui r13, 260096
0003f4  1f072000  addli r14, zero, 16
0003f8  1f3b0000  addli r22, zero, 3
0003fc  1f5e1000  addli r28, zero, 13
000400  2bec0700  lui r24, 126
000404  1f2d1000  addli r26, zero, 10
000408  9bc51000  srli r11, r1, 1
00040c  9b302100  slli r1, r2, 2
000410  67002fd4  storeli.w r2, -5632(r30)
000414  1f814200  addli r2, r5, 32
000418  0b994010  add.s r18, r1, r4
00041c  8b99a010  add.s r19, r1, r10
000420  9bb02200  slli r1, r5, 2
000424  670f2fd2  storeli.w r2, -5648(r30)
000428  0b114811  add.s r2, r16, r20
00042c  2be27f00  lui r4, 2046
000430  8b904011  add.s r1, r1, r20
000434  9f8080ff  addli r1, r1, -64
000438  e74e1fd2  storeli.w r1, -5652(r30)
00043c  9f0081ff  addli r1, r2, -64
000440  2bf100fc  lui r2, 1032207
000444  e70e1fd2  storeli.w r1, -5656(r30)
000448  abf0ffff  lui r1, 1048575
00044c  1b1401c0  ori r8, r2, 3072
000450  00a00000  mfence { lm }
000454  674f0fd3  storeli.w r16, -5644(r30)
000458  67041fd5  storeli.w r17, -5568(r30)
00045c  e74f3fd2  storeli.w r3, -5636(r30)
000460  e70fbfd2  storeli.w r11, -5640(r30)
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
0004ac  5be50000  j 1832
0004b0  8b90b310  add.s r1, r7, r11
0004b4  cb8f14fe  ble.s r9, r1, -32
0004b8  63011f00  loadli.w r2,  8(r30)
0004bc  8b902010  add.s r1, r1, r2
0004c0  0b813330  div.u r2, r7, r3
0004c4  e3010fd4  loadli.w r3,  -5632(r30)
0004c8  9bb0b000  slli r1, r1, 11
0004cc  97903000  or r1, r1, r3
0004d0  9f017fd6  addli r3, r30, -5320
0004d4  b3940028  sext_int2long r[10:11], r1
0004d8  ab0000f0  lui r1, 983040
0004dc  1b316100  slli r2, r2, 6
0004e0  97b56402  sll.d r[12:13], r[10:11], r6
0004e4  ebd40100  load.d r[10:11], 0(r3)
0004e8  97101800  or r1, r16, r1
0004ec  1b010104  andi r2, r2, 64
0004f0  9f018fd6  addli r3, r30, -5312
0004f4  73b0b100  store.d r[12:13], 0(r3)
0004f8  8ba4b410  add.ul r[10:11], r[10:11], r[12:13]
0004fc  ffa04401  l_gm2lm r1, r20, 0(r[10:11])
000500  80300002  core_id r1
000504  97101100  or r1, r2, r1
000508  670c1fd4  storeli.w r1, -5440(r30)
00050c  00a00200  mfence { lm, gm }
000510  6301dfd3  loadli.w r2,  -5656(r30)
000514  e341dfd3  loadli.w r3,  -5652(r30)
000518  e304efd3  loadli.w r9,  -5648(r30)
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
000548  1f060003  addli r12, zero, 384
00054c  1f010000  addli r2, zero, 0
000550  00a00000  mfence { lm }
000554  3ba60800  bneq r17, zero, 392
000558  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00055c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000560  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000564  e341cfd3  loadli.w r3,  -5660(r30)
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
0006d0  fa110040  vextracti.f r3, 0(vr0)
0006d4  fa940040  vextracti.f r9, 0(vr1)
0006d8  db650000  j 812
0006dc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0006e0  abf0ffff  lui r1, 1048575
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
0007b8  1385c104  setlt.u r10, r3, r12
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
000870  7a960040  vextracti.f r12, 0(vr1)
000874  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000878  fa110040  vextracti.f r3, 0(vr0)
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
000a00  8b642610  add.f.rn r9, r12, r2
000a04  2b650000  lui r10, 6
000a08  63068fd5  loadli.w r12,  -5440(r30)
000a0c  ab680000  lui r17, 6
000a10  1f010000  addli r2, zero, 0
000a14  1f050500  addli r10, r10, 0
000a18  9f880804  addli r17, r17, 512
000a1c  9b302600  slli r1, r12, 2
000a20  1f080500  addli r16, r10, 0
000a24  8b951011  add.s r11, r1, r17
000a28  0b950011  add.s r10, r1, r16
000a2c  9b904000  ori r1, r1, 4
000a30  73e09500  stores.w r9, 0(r11)
000a34  9f050000  addli r11, zero, 0
000a38  73603500  stores.w r3, 0(r10)
000a3c  8b940011  add.s r9, r1, r16
000a40  8b901011  add.s r1, r1, r17
000a44  00a00300  mfence { lm, sm, gm }
000a48  e3010fd7  loadli.w r3,  -5248(r30)
000a4c  80a10104  csr_set csr3, r3
000a50  9b01e607  andi r3, r12, 126
000a54  00d00100  sync_group
000a58  efc40400  loads.w r9, 0(r9)
000a5c  efc00000  loads.w r1, 0(r1)
000a60  9bb12100  slli r3, r3, 2
000a64  0b950111  add.s r10, r3, r16
000a68  8b911111  add.s r3, r3, r17
000a6c  6f450500  loads.w r10, 0(r10)
000a70  efc10100  loads.w r3, 0(r3)
000a74  8be4a410  add.f.rn r9, r9, r10
000a78  2b05003a  lui r10, 237568
000a7c  8be03010  add.f.rn r1, r1, r3
000a80  8be1a420  mul.f.rn r3, r9, r10
000a84  8be0a020  mul.f.rn r1, r1, r10
000a88  1f058fd7  addli r10, r30, -5184
000a8c  8be43120  mul.f.rn r9, r3, r3
000a90  8be10158  neg.f r3, r3
000a94  8be09018  sub.f.rn r1, r1, r9
000a98  e3043f00  loadli.w r9,  24(r30)
000a9c  8be09010  add.f.rn r1, r1, r9
000aa0  8f800008  sqrt.f.rn r1, r1
000aa4  8f801618  div.f.rn r1, r13, r1
000aa8  8b142a10  add.s r9, r20, r2
000aac  0b182910  add.s r16, r18, r2
000ab0  9f854500  addli r11, r11, 32
000ab4  42900402  vload_mask16.mz vr0{mr1}, 0(r9)
000ab8  9f848400  addli r9, r9, 64
000abc  4a110802  vloads_mask16.mz vr2{mr1}, 0(r16)
000ac0  1f088800  addli r16, r16, 64
000ac4  c2900402  vload_mask16.mz vr1{mr1}, 0(r9)
000ac8  8b942910  add.s r9, r19, r2
000acc  4a120802  vloads_mask16.mz vr4{mr1}, 0(r16)
000ad0  1f010101  addli r2, r2, 128
000ad4  ca910402  vloads_mask16.mz vr3{mr1}, 0(r9)
000ad8  9f848400  addli r9, r9, 64
000adc  ca920402  vloads_mask16.mz vr5{mr1}, 0(r9)
000ae0  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000ae4  93845504  setlt.u r9, r11, r5
000ae8  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000aec  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
000af0  0a931002  vmul.f.mz.rn vr6{mr1}, r1, vr1
000af4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000af8  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
000afc  6a201722  vor.u.mz vr0{mr1}, r14, vr1
000b00  a6124302  vmac.f.mz.rn vr5{mr1}, vr6, vr4
000b04  6a221b22  vor.u.mz vr4{mr1}, r22, vr1
000b08  6e3130c2  vsrl.s.mz vr2{mr1}, vr0, vr3
000b0c  6e3050c2  vsrl.s.mz vr0{mr1}, vr0, vr5
000b10  6a312302  vand.s.mz vr2{mr1}, r6, vr2
000b14  6a300302  vand.s.mz vr0{mr1}, r6, vr0
000b18  16b12102  vadd.s.mz vr2{mr1}, vr3, vr2
000b1c  ea211e22  vor.u.mz vr3{mr1}, r28, vr1
000b20  ea201d22  vor.u.mz vr1{mr1}, r26, vr1
000b24  16b00202  vadd.s.mz vr0{mr1}, vr5, vr0
000b28  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
000b2c  12b00a02  vadd.s.mz vr0{mr1}, r21, vr0
000b30  eeb221c2  vsrl.s.mz vr5{mr1}, vr3, vr2
000b34  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
000b38  eeb101c2  vsrl.s.mz vr3{mr1}, vr3, vr0
000b3c  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
000b40  6a325c02  vand.s.mz vr4{mr1}, r24, vr5
000b44  6a312202  vand.s.mz vr2{mr1}, r4, vr2
000b48  ea313c02  vand.s.mz vr3{mr1}, r24, vr3
000b4c  6a300202  vand.s.mz vr0{mr1}, r4, vr0
000b50  6ab24622  vor.s.mz vr4{mr1}, r13, vr4
000b54  6ab12622  vor.s.mz vr2{mr1}, r13, vr2
000b58  eab13622  vor.s.mz vr3{mr1}, r13, vr3
000b5c  6ab00622  vor.s.mz vr0{mr1}, r13, vr0
000b60  86d10120  vfloat2fp16_h.rz vr3, vr3
000b64  06500020  vfloat2fp16_h.rz vr0, vr0
000b68  86110220  vfloat2fp16_l.rz vr3, vr4
000b6c  06100120  vfloat2fp16_l.rz vr0, vr2
000b70  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
000b74  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000b78  ea301402  vand.s.mz vr1{mr1}, r8, vr1
000b7c  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
000b80  46000502  vstore.mz vr0{mr1}, 0(r10)
000b84  1f058500  addli r10, r10, 64
000b88  bb8c04fe  bneq r9, zero, -224
000b8c  9f058fd6  addli r11, r30, -5312
000b90  6b510f00  load.d r[3:4], 0(r30)
000b94  6348efd3  loadli.w r16,  -5644(r30)
000b98  ab0000f0  lui r1, 983040
000b9c  ebd40500  load.d r[10:11], 0(r11)
000ba0  00a00000  mfence { lm }
000ba4  97101800  or r1, r16, r1
000ba8  0b219110  add.ul r[3:4], r[3:4], r[10:11]
000bac  ff304101  s_lm2gm r1, r20, 0(r[3:4])
000bb0  9f000fd5  addli r1, r30, -5504
000bb4  00a00200  mfence { lm, gm }
000bb8  e3441f00  loadli.w r9,  12(r30)
000bbc  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000bc0  e341ffd3  loadli.w r3,  -5636(r30)
000bc4  e305ffd3  loadli.w r11,  -5640(r30)
000bc8  e3088fd4  loadli.w r17,  -5568(r30)
000bcc  8b933310  add.s r7, r7, r3
000bd0  bf8393fc  blt.s r7, r9, -1824
000bd4  abf00000  lui r1, 15
000bd8  9b90f0ff  ori r1, r1, 4095
000bdc  80a10004  csr_set csr3, r1
000be0  00d00100  sync_group
000be4  5be80a00  j 22336
000be8  e3403f00  loadli.w r1,  28(r30)
000bec  b792000a  beq r1, zero, 5284
000bf0  e3002f00  loadli.w r1,  16(r30)
000bf4  1f010010  addli r2, zero, 2048
000bf8  3bc22012  bneq r1, r2, 9360
000bfc  00350002  core_id r10
000c00  9f200000  addli r1, zero, 2
000c04  370f1524  beq r10, r1, 19392
000c08  9f100000  addli r1, zero, 1
000c0c  b77d1524  beq r10, r1, 19324
000c10  3b3f0524  bneq r10, zero, 19404
000c14  9f000040  addli r1, zero, 8192
000c18  2b0100f0  lui r2, 983040
000c1c  97902000  or r1, r1, r2
000c20  2b110200  lui r2, 33
000c24  1f010100  addli r2, r2, 0
000c28  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000c2c  5b760900  j 19376
000c30  e3403f00  loadli.w r1,  28(r30)
000c34  37f30010  beq r1, zero, 8412
000c38  80300002  core_id r1
000c3c  1f210000  addli r2, zero, 2
000c40  b7ed2022  beq r1, r2, 18296
000c44  1f110000  addli r2, zero, 1
000c48  37e52020  beq r1, r2, 16728
000c4c  3bae0022  bneq r1, zero, 18312
000c50  63012f00  loadli.w r2,  16(r30)
000c54  ab0100f0  lui r3, 983040
000c58  1b311100  slli r2, r2, 1
000c5c  17113100  or r2, r2, r3
000c60  abd10100  lui r3, 29
000c64  9f810100  addli r3, r3, 0
000c68  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000c6c  5bed0800  j 18280
000c70  e3002f00  loadli.w r1,  16(r30)
000c74  1f010010  addli r2, zero, 2048
000c78  3bcb2006  bneq r1, r2, 3792
000c7c  e3403f00  loadli.w r1,  28(r30)
000c80  37e5001a  beq r1, zero, 13656
000c84  803c0002  core_id r25
000c88  abd70000  lui r15, 13
000c8c  00510102  load_param_i r2, 2
000c90  1f150000  addli r10, zero, 1
000c94  9f058fd7  addli r11, r30, -5184
000c98  1f068000  addli r12, zero, 64
000c9c  9f060010  addli r13, zero, 2048
000ca0  9bb05c00  slli r1, r25, 5
000ca4  9b315100  slli r3, r2, 5
000ca8  9f8707f0  addli r15, r15, -2048
000cac  1f870000  addli r14, r1, 0
000cb0  33080728  zext_int2long r[17:18], r14
000cb4  2b0900f0  lui r18, 983040
000cb8  1738a802  sll.d r[17:18], r[17:18], r10
000cbc  17192601  or r18, r12, r18
000cc0  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000cc4  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000cc8  1b382700  slli r16, r14, 2
000ccc  0b97e110  add.s r14, r3, r14
000cd0  00a00200  mfence { lm, gm }
000cd4  42800502  vload.mz vr0{mr1}, 0(r11)
000cd8  9308d704  setlt.u r17, r14, r13
000cdc  0b18f810  add.s r16, r16, r15
000ce0  1f098800  addli r18, r16, 64
000ce4  86300000  vfp162float_l.rn vr1, vr0
000ce8  06700000  vfp162float_h.rn vr0, vr0
000cec  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000cf0  4e100902  vstores_mask16.mz vr0{mr1}, 0(r18)
000cf4  bbfe08fe  bneq r17, zero, -68
000cf8  abf20000  lui r5, 15
000cfc  1bb57c00  slli r10, r25, 7
000d00  1b327100  slli r4, r2, 7
000d04  1f160000  addli r12, zero, 1
000d08  9f068fd7  addli r13, r30, -5184
000d0c  1f078000  addli r14, zero, 64
000d10  1f080010  addli r16, zero, 2048
000d14  9f880000  addli r17, r1, 0
000d18  00a00000  mfence { lm }
000d1c  9f8202f0  addli r5, r5, -2048
000d20  8b155510  add.s r11, r10, r5
000d24  33890828  zext_int2long r[19:20], r17
000d28  2b0a00f0  lui r20, 983040
000d2c  8b983810  add.s r17, r17, r3
000d30  1739c902  sll.d r[19:20], r[19:20], r12
000d34  171a4701  or r20, r14, r20
000d38  0b292311  add.ul r[19:20], r[7:8], r[19:20]
000d3c  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
000d40  13890805  setlt.u r18, r17, r16
000d44  9f898500  addli r19, r11, 64
000d48  00a00200  mfence { lm, gm }
000d4c  42800602  vload.mz vr0{mr1}, 0(r13)
000d50  86300000  vfp162float_l.rn vr1, vr0
000d54  06700000  vfp162float_h.rn vr0, vr0
000d58  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
000d5c  8b954510  add.s r11, r11, r4
000d60  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
000d64  3b0f09fe  bneq r18, zero, -64
000d68  ab130100  lui r7, 17
000d6c  9f058fd7  addli r11, r30, -5184
000d70  1f068000  addli r12, zero, 64
000d74  9f060010  addli r13, zero, 2048
000d78  00a00000  mfence { lm }
000d7c  9f8303f0  addli r7, r7, -2048
000d80  0b137510  add.s r6, r10, r7
000d84  1f150000  addli r10, zero, 1
000d88  33880028  zext_int2long r[17:18], r1
000d8c  2b0700f0  lui r14, 983040
000d90  8b903010  add.s r1, r1, r3
000d94  1738a802  sll.d r[17:18], r[17:18], r10
000d98  1717e600  or r14, r12, r14
000d9c  0b280411  add.ul r[17:18], r[9:10], r[17:18]
000da0  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000da4  1387d004  setlt.u r14, r1, r13
000da8  1f088300  addli r16, r6, 64
000dac  00a00200  mfence { lm, gm }
000db0  42800502  vload.mz vr0{mr1}, 0(r11)
000db4  86300000  vfp162float_l.rn vr1, vr0
000db8  06700000  vfp162float_h.rn vr0, vr0
000dbc  4e101302  vstores_mask16.mz vr1{mr1}, 0(r6)
000dc0  0b134310  add.s r6, r6, r4
000dc4  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
000dc8  3b0f07fe  bneq r14, zero, -64
000dcc  abf00000  lui r1, 15
000dd0  00a00300  mfence { lm, sm, gm }
000dd4  9b811c00  andi r3, r25, 1
000dd8  1f020006  addli r4, zero, 768
000ddc  9b90f0ff  ori r1, r1, 4095
000de0  80a10004  csr_set csr3, r1
000de4  9f000006  addli r1, zero, 768
000de8  00d00100  sync_group
000dec  67083fd6  storeli.w r3, -5248(r30)
000df0  37a00100  beq r3, zero, 8
000df4  1f02000a  addli r4, zero, 1280
000df8  e3411f00  loadli.w r3,  12(r30)
000dfc  63471f00  loadli.w r14,  12(r30)
000e00  1f130000  addli r6, zero, 1
000e04  bf84612a  blt.s r3, r6, 21792
000e08  e3010fd7  loadli.w r3,  -5248(r30)
000e0c  9f068fd7  addli r13, r30, -5184
000e10  1b441100  srli r8, r2, 1
000e14  1f014200  addli r2, r4, 32
000e18  1b351200  slli r10, r4, 1
000e1c  ab3d0100  lui r27, 19
000e20  1f030000  addli r6, zero, 0
000e24  9bc41c00  srli r9, r25, 1
000e28  9f797000  addli r19, zero, 63
000e2c  1f0b0005  addli r22, zero, 640
000e30  1f0d4000  addli r26, zero, 32
000e34  9f0a0003  addli r21, zero, 384
000e38  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000e3c  670c2fd4  storeli.w r2, -5440(r30)
000e40  0b11d510  add.s r2, r10, r13
000e44  9f8d0df0  addli r27, r27, -2048
000e48  8b901120  mul.s r1, r3, r1
000e4c  67041fd6  storeli.w r1, -5312(r30)
000e50  9bb02000  slli r1, r1, 2
000e54  8b955010  add.s r11, r1, r5
000e58  0b967010  add.s r12, r1, r7
000e5c  9b302200  slli r1, r4, 2
000e60  ab320100  lui r5, 19
000e64  8b90d010  add.s r1, r1, r13
000e68  9f8202f4  addli r5, r5, -1536
000e6c  9f8080ff  addli r1, r1, -64
000e70  67081fd4  storeli.w r1, -5504(r30)
000e74  9f0081ff  addli r1, r2, -64
000e78  1f010fd4  addli r2, r30, -5632
000e7c  67041fd4  storeli.w r1, -5568(r30)
000e80  abf0ffff  lui r1, 1048575
000e84  00a00000  mfence { lm }
000e88  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000e8c  9b9000f8  ori r1, r1, 3968
000e90  e74f1fd2  storeli.w r1, -5636(r30)
000e94  abf00000  lui r1, 15
000e98  1b9ef0ff  ori r28, r1, 4095
000e9c  db030000  j 28
000ea0  00a00300  mfence { lm, sm, gm }
000ea4  80210e04  csr_set csr3, r28
000ea8  00d00100  sync_group
000eac  0b138310  add.s r6, r6, r8
000eb0  3f20e300  blt.s r6, r14, 8
000eb4  5ba4ffff  j -736
000eb8  8b109310  add.s r1, r6, r9
000ebc  cb1f17fe  ble.s r14, r1, -28
000ec0  63011f00  loadli.w r2,  8(r30)
000ec4  e3018fd6  loadli.w r3,  -5312(r30)
000ec8  8b902010  add.s r1, r1, r2
000ecc  0b018330  div.u r2, r6, r8
000ed0  9bb0b000  slli r1, r1, 11
000ed4  97903000  or r1, r1, r3
000ed8  9f110000  addli r3, zero, 1
000edc  33980028  sext_int2long r[17:18], r1
000ee0  ab0000f0  lui r1, 983040
000ee4  1b316100  slli r2, r2, 6
000ee8  17383802  sll.d r[17:18], r[17:18], r3
000eec  9f017fd6  addli r3, r30, -5320
000ef0  97101500  or r1, r10, r1
000ef4  1b010104  andi r2, r2, 64
000ef8  ebdb0100  load.d r[24:25], 0(r3)
000efc  17119101  or r2, r2, r25
000f00  8bab0b11  add.ul r[24:25], r[24:25], r[17:18]
000f04  ffa0db00  l_gm2lm r1, r13, 0(r[24:25])
000f08  00a00200  mfence { lm, gm }
000f0c  e3008fd4  loadli.w r1,  -5568(r30)
000f10  e3010fd5  loadli.w r3,  -5504(r30)
000f14  e3038fd5  loadli.w r7,  -5440(r30)
000f18  c2800002  vload.mz vr1{mr1}, 0(r1)
000f1c  9f83c3ff  addli r7, r7, -32
000f20  1f8981ff  addli r18, r3, -64
000f24  9f8080ff  addli r1, r1, -64
000f28  13877904  setlt.u r14, r19, r7
000f2c  06f10000  vfp162float_h.rn vr2, vr1
000f30  86b00000  vfp162float_l.rn vr1, vr1
000f34  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
000f38  9f8101ff  addli r3, r3, -128
000f3c  46101902  vstore_mask16.mz vr1{mr1}, 0(r18)
000f40  3b6f07fe  bneq r14, zero, -40
000f44  00a00000  mfence { lm }
000f48  e3000fd7  loadli.w r1,  -5248(r30)
000f4c  3bc60000  bneq r1, zero, 400
000f50  9f000fd4  addli r1, r30, -5632
000f54  6347ffd3  loadli.w r14,  -5636(r30)
000f58  9f010000  addli r3, zero, 0
000f5c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000f60  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000f64  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000f68  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000f6c  8b90f110  add.s r1, r3, r15
000f70  8b933610  add.s r7, r13, r3
000f74  1f070701  addli r14, r14, 128
000f78  9f810104  addli r3, r3, 512
000f7c  1f890001  addli r18, r1, 128
000f80  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
000f84  1f8a8000  addli r20, r1, 64
000f88  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
000f8c  9f8b8301  addli r23, r7, 192
000f90  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
000f94  1f898001  addli r18, r1, 192
000f98  4a130a02  vloads_mask16.mz vr6{mr1}, 0(r20)
000f9c  1f8a8300  addli r20, r7, 64
000fa0  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
000fa4  ca130902  vloads_mask16.mz vr7{mr1}, 0(r18)
000fa8  1f890301  addli r18, r7, 128
000fac  42150a02  vload_mask16.mz vr10{mr1}, 0(r20)
000fb0  c2140902  vload_mask16.mz vr9{mr1}, 0(r18)
000fb4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
000fb8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
000fbc  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
000fc0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
000fc4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000fc8  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
000fcc  46108902  vstore_mask16.mz vr8{mr1}, 0(r18)
000fd0  1f890002  addli r18, r1, 256
000fd4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000fd8  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
000fdc  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000fe0  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
000fe4  4a100902  vloads_mask16.mz vr0{mr1}, 0(r18)
000fe8  1f898002  addli r18, r1, 320
000fec  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
000ff0  9f8b0302  addli r23, r7, 256
000ff4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000ff8  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000ffc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001000  4a130902  vloads_mask16.mz vr6{mr1}, 0(r18)
001004  1f890003  addli r18, r1, 384
001008  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
00100c  9f808003  addli r1, r1, 448
001010  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001014  4a140902  vloads_mask16.mz vr8{mr1}, 0(r18)
001018  1f898302  addli r18, r7, 320
00101c  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
001020  9f800303  addli r1, r7, 384
001024  9f838303  addli r7, r7, 448
001028  c2140902  vload_mask16.mz vr9{mr1}, 0(r18)
00102c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001030  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001034  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001038  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
00103c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001040  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001044  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
001048  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00104c  46106902  vstore_mask16.mz vr6{mr1}, 0(r18)
001050  13096705  setlt.u r18, r14, r22
001054  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001058  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00105c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001060  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001064  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001068  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00106c  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001070  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001074  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001078  bb5b09fe  bneq r18, zero, -268
00107c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001080  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001084  9f000002  addli r1, zero, 256
001088  6af100c0  vsrl.p vr2, r1, vr0
00108c  eaf110c0  vsrl.p vr3, r1, vr1
001090  9f000001  addli r1, zero, 128
001094  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001098  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00109c  6af100c0  vsrl.p vr2, r1, vr0
0010a0  eaf110c0  vsrl.p vr3, r1, vr1
0010a4  9f008000  addli r1, zero, 64
0010a8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010ac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010b0  6af100c0  vsrl.p vr2, r1, vr0
0010b4  eaf110c0  vsrl.p vr3, r1, vr1
0010b8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010bc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010c0  6a710dc0  vsrl.p vr2, r26, vr0
0010c4  ea711dc0  vsrl.p vr3, r26, vr1
0010c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010d0  fa100040  vextracti.f r1, 0(vr0)
0010d4  fa930040  vextracti.f r7, 0(vr1)
0010d8  db650000  j 812
0010dc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0010e0  abf0ffff  lui r1, 1048575
0010e4  9f010000  addli r3, zero, 0
0010e8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0010ec  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0010f0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0010f4  1b9700f8  ori r14, r1, 3968
0010f8  8b933710  add.s r7, r15, r3
0010fc  0b993610  add.s r18, r13, r3
001100  1f070701  addli r14, r14, 128
001104  9f810104  addli r3, r3, 512
001108  9f8b0331  addli r23, r7, 6272
00110c  9f800330  addli r1, r7, 6144
001110  1f8c8331  addli r24, r7, 6336
001114  1f0a0918  addli r20, r18, 3072
001118  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
00111c  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
001120  9f808330  addli r1, r7, 6208
001124  ca140c02  vloads_mask16.mz vr9{mr1}, 0(r24)
001128  9f0b0919  addli r23, r18, 3200
00112c  42130a02  vload_mask16.mz vr6{mr1}, 0(r20)
001130  1f0c8919  addli r24, r18, 3264
001134  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
001138  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
00113c  9f008918  addli r1, r18, 3136
001140  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
001144  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
001148  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
00114c  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
001150  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
001154  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
001158  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00115c  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
001160  46106a02  vstore_mask16.mz vr6{mr1}, 0(r20)
001164  1f8a0332  addli r20, r7, 6400
001168  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
00116c  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
001170  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001174  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
001178  9f0b091a  addli r23, r18, 3328
00117c  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
001180  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001184  9f00091b  addli r1, r18, 3456
001188  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
00118c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001190  4a100a02  vloads_mask16.mz vr0{mr1}, 0(r20)
001194  1f8a8332  addli r20, r7, 6464
001198  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00119c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0011a0  4a130a02  vloads_mask16.mz vr6{mr1}, 0(r20)
0011a4  1f8a0333  addli r20, r7, 6528
0011a8  9f838333  addli r7, r7, 6592
0011ac  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
0011b0  1f0a891a  addli r20, r18, 3392
0011b4  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
0011b8  9f03891b  addli r7, r18, 3520
0011bc  13095705  setlt.u r18, r14, r21
0011c0  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
0011c4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0011c8  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0011cc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0011d0  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0011d4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0011d8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0011dc  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
0011e0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0011e4  46106a02  vstore_mask16.mz vr6{mr1}, 0(r20)
0011e8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0011ec  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0011f0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0011f4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0011f8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0011fc  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001200  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001204  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001208  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00120c  bb3b09fe  bneq r18, zero, -276
001210  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001214  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001218  9f000002  addli r1, zero, 256
00121c  1f0a0000  addli r20, zero, 0
001220  eaf110c0  vsrl.p vr3, r1, vr1
001224  6af100c0  vsrl.p vr2, r1, vr0
001228  9f000001  addli r1, zero, 128
00122c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001230  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001234  eaf110c0  vsrl.p vr3, r1, vr1
001238  6af100c0  vsrl.p vr2, r1, vr0
00123c  9f008000  addli r1, zero, 64
001240  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001244  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001248  eaf110c0  vsrl.p vr3, r1, vr1
00124c  6af100c0  vsrl.p vr2, r1, vr0
001250  abf0ffff  lui r1, 1048575
001254  1b9900f8  ori r18, r1, 3968
001258  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00125c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001260  ea711dc0  vsrl.p vr3, r26, vr1
001264  6a710dc0  vsrl.p vr2, r26, vr0
001268  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00126c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001270  7a970040  vextracti.f r14, 0(vr1)
001274  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001278  fa110040  vextracti.f r3, 0(vr0)
00127c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001280  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001284  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001288  8b904711  add.s r1, r15, r20
00128c  8b934611  add.s r7, r13, r20
001290  1f090901  addli r18, r18, 128
001294  1f0a0a04  addli r20, r20, 512
001298  9f8b0018  addli r23, r1, 3072
00129c  1f8c0019  addli r24, r1, 3200
0012a0  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
0012a4  9f8c8301  addli r25, r7, 192
0012a8  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
0012ac  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
0012b0  9f8b8018  addli r23, r1, 3136
0012b4  1f8c8019  addli r24, r1, 3264
0012b8  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0012bc  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
0012c0  9f8b0301  addli r23, r7, 128
0012c4  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
0012c8  1f8c8300  addli r24, r7, 64
0012cc  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
0012d0  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
0012d4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0012d8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0012dc  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0012e0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0012e4  46908b02  vstore_mask16.mz vr8{mr1}, 0(r23)
0012e8  9f8b001a  addli r23, r1, 3328
0012ec  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0012f0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0012f4  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0012f8  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0012fc  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
001300  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
001304  9f8b801a  addli r23, r1, 3392
001308  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
00130c  9f8c0302  addli r25, r7, 256
001310  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
001314  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
001318  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00131c  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
001320  9f8b001b  addli r23, r1, 3456
001324  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
001328  9f80801b  addli r1, r1, 3520
00132c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001330  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001334  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
001338  9f8b8302  addli r23, r7, 320
00133c  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
001340  9f800303  addli r1, r7, 384
001344  9f838303  addli r7, r7, 448
001348  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
00134c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001350  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001354  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001358  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
00135c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001360  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001364  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
001368  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00136c  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
001370  930b6905  setlt.u r23, r18, r22
001374  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001378  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00137c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001380  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001384  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001388  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00138c  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001390  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001394  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001398  bbcb0bfe  bneq r23, zero, -272
00139c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0013a0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0013a4  9f000002  addli r1, zero, 256
0013a8  803c0002  core_id r25
0013ac  6af100c0  vsrl.p vr2, r1, vr0
0013b0  eaf110c0  vsrl.p vr3, r1, vr1
0013b4  9f000001  addli r1, zero, 128
0013b8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013bc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013c0  6af100c0  vsrl.p vr2, r1, vr0
0013c4  eaf110c0  vsrl.p vr3, r1, vr1
0013c8  9f008000  addli r1, zero, 64
0013cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013d4  6af100c0  vsrl.p vr2, r1, vr0
0013d8  eaf110c0  vsrl.p vr3, r1, vr1
0013dc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013e0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013e4  6a710dc0  vsrl.p vr2, r26, vr0
0013e8  ea711dc0  vsrl.p vr3, r26, vr1
0013ec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013f0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013f4  fa100040  vextracti.f r1, 0(vr0)
0013f8  fa930040  vextracti.f r7, 0(vr1)
0013fc  8be01110  add.f.rn r1, r3, r1
001400  8b637710  add.f.rn r7, r14, r7
001404  1b372100  slli r14, r2, 2
001408  9f010000  addli r3, zero, 0
00140c  0b19b711  add.s r18, r14, r27
001410  0b1a5710  add.s r20, r14, r5
001414  73601900  stores.w r1, 0(r18)
001418  9b00e107  andi r1, r2, 126
00141c  1b114700  ori r2, r14, 4
001420  73607a00  stores.w r7, 0(r20)
001424  00a00300  mfence { lm, sm, gm }
001428  80210e04  csr_set csr3, r28
00142c  00d00100  sync_group
001430  9bb02000  slli r1, r1, 2
001434  8b13b111  add.s r7, r2, r27
001438  0b115110  add.s r2, r2, r5
00143c  0b97b011  add.s r14, r1, r27
001440  efc30300  loads.w r7, 0(r7)
001444  8b905010  add.s r1, r1, r5
001448  6f410100  loads.w r2, 0(r2)
00144c  6f470700  loads.w r14, 0(r14)
001450  efc00000  loads.w r1, 0(r1)
001454  8be3e310  add.f.rn r7, r7, r14
001458  2b07003a  lui r14, 237568
00145c  8b601110  add.f.rn r1, r2, r1
001460  0be1e320  mul.f.rn r2, r7, r14
001464  8be0e020  mul.f.rn r1, r1, r14
001468  1f070000  addli r14, zero, 0
00146c  8b632120  mul.f.rn r7, r2, r2
001470  0b610158  neg.f r2, r2
001474  8be07018  sub.f.rn r1, r1, r7
001478  e3033f00  loadli.w r7,  24(r30)
00147c  8be07010  add.f.rn r1, r1, r7
001480  ab03803f  lui r7, 260096
001484  8f800008  sqrt.f.rn r1, r1
001488  8f801318  div.f.rn r1, r7, r1
00148c  9f038fd7  addli r7, r30, -5184
001490  0b993610  add.s r18, r13, r3
001494  0b9a3510  add.s r20, r11, r3
001498  1f074700  addli r14, r14, 32
00149c  42100902  vload_mask16.mz vr0{mr1}, 0(r18)
0014a0  1f098900  addli r18, r18, 64
0014a4  4a110a02  vloads_mask16.mz vr2{mr1}, 0(r20)
0014a8  1f0a8a00  addli r20, r20, 64
0014ac  c2100902  vload_mask16.mz vr1{mr1}, 0(r18)
0014b0  0b193610  add.s r18, r12, r3
0014b4  4a120a02  vloads_mask16.mz vr4{mr1}, 0(r20)
0014b8  9f810101  addli r3, r3, 128
0014bc  ca110902  vloads_mask16.mz vr3{mr1}, 0(r18)
0014c0  1f098900  addli r18, r18, 64
0014c4  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
0014c8  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
0014cc  13094704  setlt.u r18, r14, r4
0014d0  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0014d4  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
0014d8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0014dc  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
0014e0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0014e4  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0014e8  06900100  vfloat2fp16_l.rn vr0, vr3
0014ec  06d00200  vfloat2fp16_h.rn vr0, vr5
0014f0  46800302  vstore.mz vr0{mr1}, 0(r7)
0014f4  9f838300  addli r7, r7, 64
0014f8  3b6e09fe  bneq r18, zero, -104
0014fc  6b510f00  load.d r[3:4], 0(r30)
001500  ab0000f0  lui r1, 983040
001504  00a00000  mfence { lm }
001508  97101500  or r1, r10, r1
00150c  0b210111  add.ul r[3:4], r[3:4], r[17:18]
001510  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
001514  00a00200  mfence { lm, gm }
001518  63471f00  loadli.w r14,  12(r30)
00151c  5b32ffff  j -1648
001520  e3403f00  loadli.w r1,  28(r30)
001524  b7ae0012  beq r1, zero, 10152
001528  803b0002  core_id r23
00152c  63012f00  loadli.w r2,  16(r30)
001530  805c0102  load_param_i r25, 2
001534  9bb05b00  slli r1, r23, 5
001538  4b431100  ble.s r2, r1, 208
00153c  2b960000  lui r12, 9
001540  9f110000  addli r3, zero, 1
001544  1f058fd7  addli r10, r30, -5184
001548  9f058000  addli r11, zero, 64
00154c  1bb15c00  slli r2, r25, 5
001550  9f860000  addli r13, r1, 0
001554  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001558  1f0606f0  addli r12, r12, -2048
00155c  33880628  zext_int2long r[17:18], r13
001560  2b0900f0  lui r18, 983040
001564  17383802  sll.d r[17:18], r[17:18], r3
001568  17992501  or r18, r11, r18
00156c  0b280211  add.ul r[17:18], r[5:6], r[17:18]
001570  7f29a800  l_gm2lm r18, r10, 0(r[17:18])
001574  1bb82600  slli r16, r13, 2
001578  8b16d110  add.s r13, r2, r13
00157c  00a00200  mfence { lm, gm }
001580  c2000502  vload.mz vr1{mr1}, 0(r10)
001584  0b18c810  add.s r16, r16, r12
001588  9f088800  addli r17, r16, 64
00158c  66411080  vmerge_l.hf vr2, vr0, vr1
001590  e64010a0  vmerge_h.hf vr1, vr0, vr1
001594  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
001598  4e901802  vstores_mask16.mz vr1{mr1}, 0(r17)
00159c  3f8ff6fe  blt.s r13, r15, -64
0015a0  2ba20000  lui r4, 10
0015a4  9bb17b00  slli r3, r23, 7
0015a8  9f120000  addli r5, zero, 1
0015ac  1f058fd7  addli r10, r30, -5184
0015b0  9f058000  addli r11, zero, 64
0015b4  1f860000  addli r12, r1, 0
0015b8  00a00000  mfence { lm }
0015bc  1f0202f0  addli r4, r4, -2048
0015c0  8b914110  add.s r3, r3, r4
0015c4  1bb27c00  slli r4, r25, 7
0015c8  33080628  zext_int2long r[17:18], r12
0015cc  ab0600f0  lui r13, 983040
0015d0  0b162610  add.s r12, r12, r2
0015d4  17385802  sll.d r[17:18], r[17:18], r5
0015d8  9796d500  or r13, r11, r13
0015dc  0b280311  add.ul r[17:18], r[7:8], r[17:18]
0015e0  ff26a800  l_gm2lm r13, r10, 0(r[17:18])
0015e4  9f868100  addli r13, r3, 64
0015e8  00a00200  mfence { lm, gm }
0015ec  c2000502  vload.mz vr1{mr1}, 0(r10)
0015f0  66411080  vmerge_l.hf vr2, vr0, vr1
0015f4  e64010a0  vmerge_h.hf vr1, vr0, vr1
0015f8  4e902102  vstores_mask16.mz vr2{mr1}, 0(r3)
0015fc  8b914110  add.s r3, r3, r4
001600  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
001604  3f1ff6fe  blt.s r12, r15, -60
001608  63012f00  loadli.w r2,  16(r30)
00160c  cb211100  ble.s r2, r1, 104
001610  2bb30000  lui r6, 11
001614  1f110000  addli r2, zero, 1
001618  9f018fd7  addli r3, r30, -5184
00161c  1f028000  addli r4, zero, 64
001620  9bb25c00  slli r5, r25, 5
001624  00a00000  mfence { lm }
001628  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00162c  1f0303f0  addli r6, r6, -2048
001630  33850028  zext_int2long r[11:12], r1
001634  ab0300f0  lui r7, 983040
001638  17352502  sll.d r[11:12], r[11:12], r2
00163c  97137200  or r7, r4, r7
001640  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001644  ff233500  l_gm2lm r7, r3, 0(r[11:12])
001648  9bb32000  slli r7, r1, 2
00164c  8b901210  add.s r1, r5, r1
001650  00a00200  mfence { lm, gm }
001654  c2800102  vload.mz vr1{mr1}, 0(r3)
001658  8b936310  add.s r7, r7, r6
00165c  1f858300  addli r10, r7, 64
001660  66411080  vmerge_l.hf vr2, vr0, vr1
001664  e64010a0  vmerge_h.hf vr1, vr0, vr1
001668  4e902302  vstores_mask16.mz vr2{mr1}, 0(r7)
00166c  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001670  3f8ff0fe  blt.s r1, r15, -64
001674  abf00000  lui r1, 15
001678  63411f00  loadli.w r2,  12(r30)
00167c  00a00300  mfence { lm, sm, gm }
001680  9b90f0ff  ori r1, r1, 4095
001684  80a10004  csr_set csr3, r1
001688  00d00100  sync_group
00168c  4b627127  ble.s r2, r23, 19608
001690  e3002f00  loadli.w r1,  16(r30)
001694  63412f00  loadli.w r2,  20(r30)
001698  1f048fd7  addli r8, r30, -5184
00169c  9f150000  addli r11, zero, 1
0016a0  1f064000  addli r12, zero, 32
0016a4  1f757000  addli r10, zero, 63
0016a8  9f080002  addli r17, zero, 256
0016ac  9f040001  addli r9, zero, 128
0016b0  1f0a8000  addli r20, zero, 64
0016b4  ab0a803f  lui r21, 260096
0016b8  2bed7f00  lui r26, 2046
0016bc  2bee0700  lui r28, 126
0016c0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0016c4  8b912010  add.s r3, r1, r2
0016c8  33820008  fix2float.rn r4, r1
0016cc  1bb31000  slli r6, r1, 1
0016d0  9bb22000  slli r5, r1, 2
0016d4  9f804000  addli r1, r1, 32
0016d8  9b392100  slli r19, r2, 2
0016dc  e70f1fd2  storeli.w r1, -5640(r30)
0016e0  8b908210  add.s r1, r5, r8
0016e4  9ff1f1ff  addli r3, r3, -1
0016e8  e74f4fd2  storeli.w r4, -5636(r30)
0016ec  0b922130  div.s r4, r3, r2
0016f0  9f8080ff  addli r1, r1, -64
0016f4  8b118310  add.s r3, r6, r8
0016f8  674f1fd2  storeli.w r1, -5644(r30)
0016fc  9f8081ff  addli r1, r3, -64
001700  670f1fd2  storeli.w r1, -5648(r30)
001704  abf0ffff  lui r1, 1048575
001708  00a00000  mfence { lm }
00170c  67049fd5  storeli.w r25, -5568(r30)
001710  67006fd4  storeli.w r6, -5632(r30)
001714  9b90f0ff  ori r1, r1, 4095
001718  67041fd6  storeli.w r1, -5312(r30)
00171c  ab700000  lui r1, 7
001720  1b9cf0ff  ori r24, r1, 4095
001724  ab00ff03  lui r1, 16368
001728  1b9bf03f  ori r22, r1, 1023
00172c  abf000fc  lui r1, 1032207
001730  9b9300c0  ori r7, r1, 3072
001734  9f000fd7  addli r1, r30, -5248
001738  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00173c  db090000  j 76
001740  1f040fd5  addli r8, r30, -5504
001744  6b510f00  load.d r[3:4], 0(r30)
001748  ab0000f0  lui r1, 983040
00174c  1f757000  addli r10, zero, 63
001750  eb520400  load.d r[6:7], 0(r8)
001754  1f048fd7  addli r8, r30, -5184
001758  0b215110  add.ul r[3:4], r[3:4], r[6:7]
00175c  63030fd4  loadli.w r6,  -5632(r30)
001760  00a00000  mfence { lm }
001764  e30b8fd5  loadli.w r23,  -5440(r30)
001768  e30c8fd4  loadli.w r25,  -5568(r30)
00176c  97101300  or r1, r6, r1
001770  8b9b7c11  add.s r23, r25, r23
001774  ff308100  s_lm2gm r1, r8, 0(r[3:4])
001778  00a00200  mfence { lm, gm }
00177c  e3401f00  loadli.w r1,  12(r30)
001780  3fa01b00  blt.s r23, r1, 8
001784  5b740900  j 19360
001788  e3001f00  loadli.w r1,  8(r30)
00178c  9f027fd6  addli r5, r30, -5320
001790  9f860900  addli r13, r19, 0
001794  8b901b10  add.s r1, r23, r1
001798  8b90f020  mul.s r1, r1, r15
00179c  b3900028  sext_int2long r[2:3], r1
0017a0  17b9b002  sll.d r[19:20], r[2:3], r11
0017a4  6bd10200  load.d r[3:4], 0(r5)
0017a8  ab0000f0  lui r1, 983040
0017ac  9f020fd5  addli r5, r30, -5504
0017b0  97101300  or r1, r6, r1
0017b4  73b02201  store.d r[19:20], 0(r5)
0017b8  0b212111  add.ul r[3:4], r[3:4], r[19:20]
0017bc  ff208100  l_gm2lm r1, r8, 0(r[3:4])
0017c0  00a00200  mfence { lm, gm }
0017c4  bff0c700  blt.s r15, r12, 60
0017c8  e300efd3  loadli.w r1,  -5648(r30)
0017cc  6341efd3  loadli.w r2,  -5644(r30)
0017d0  e301ffd3  loadli.w r3,  -5640(r30)
0017d4  c2800002  vload.mz vr1{mr1}, 0(r1)
0017d8  9f81c1ff  addli r3, r3, -32
0017dc  1f0481ff  addli r8, r2, -64
0017e0  9f8080ff  addli r1, r1, -64
0017e4  93023504  setlt.u r5, r10, r3
0017e8  664110a0  vmerge_h.hf vr2, vr0, vr1
0017ec  e6401080  vmerge_l.hf vr1, vr0, vr1
0017f0  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
0017f4  1f0101ff  addli r2, r2, -128
0017f8  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
0017fc  3bef02fe  bneq r5, zero, -40
001800  670c7fd5  storeli.w r23, -5440(r30)
001804  00a00000  mfence { lm }
001808  bf67b200  blt.s r4, r11, 504
00180c  1f050000  addli r10, zero, 0
001810  9f020000  addli r5, zero, 0
001814  1f040000  addli r8, zero, 0
001818  9f890600  addli r19, r13, 0
00181c  db0d0000  j 108
001820  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001824  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001828  1f140400  addli r8, r8, 1
00182c  6af108c0  vsrl.p vr2, r17, vr0
001830  eaf118c0  vsrl.p vr3, r17, vr1
001834  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001838  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00183c  6af104c0  vsrl.p vr2, r9, vr0
001840  eaf114c0  vsrl.p vr3, r9, vr1
001844  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001848  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00184c  6a710ac0  vsrl.p vr2, r20, vr0
001850  ea711ac0  vsrl.p vr3, r20, vr1
001854  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001858  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00185c  6a7106c0  vsrl.p vr2, r12, vr0
001860  ea7116c0  vsrl.p vr3, r12, vr1
001864  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001868  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00186c  fa100040  vextracti.f r1, 0(vr0)
001870  7a910040  vextracti.f r2, 0(vr1)
001874  0b651510  add.f.rn r10, r10, r1
001878  9f000fd7  addli r1, r30, -5248
00187c  8be22210  add.f.rn r5, r5, r2
001880  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001884  37264400  beq r8, r4, 392
001888  9f000400  addli r1, r8, 0
00188c  37401701  beq r14, r17, 16
001890  e3008fd6  loadli.w r1,  -5312(r30)
001894  97201400  xor r1, r8, r1
001898  8b101210  add.s r1, r4, r1
00189c  0b91e020  mul.s r2, r1, r14
0018a0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0018a4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0018a8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0018ac  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0018b0  0b912718  sub.s r2, r15, r2
0018b4  0b11e140  min.s r2, r2, r14
0018b8  bf2db1fe  blt.s r2, r11, -152
0018bc  1f030fd7  addli r6, r30, -5248
0018c0  ab960000  lui r13, 9
0018c4  9f010000  addli r3, zero, 0
0018c8  8b901920  mul.s r1, r19, r1
0018cc  1f098fd7  addli r18, r30, -5184
0018d0  42120302  vload_mask16.mz vr4{mr1}, 0(r6)
0018d4  9f8606f0  addli r13, r13, -2048
0018d8  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0018dc  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0018e0  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0018e4  8b9b1610  add.s r23, r13, r1
0018e8  0b181910  add.s r16, r18, r1
0018ec  9f8c8b00  addli r25, r23, 64
0018f0  ca920b02  vloads_mask16.mz vr5{mr1}, 0(r23)
0018f4  9f8d8b01  addli r27, r23, 192
0018f8  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
0018fc  1f038801  addli r6, r16, 192
001900  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
001904  9f8c0b01  addli r25, r23, 128
001908  4a940d02  vloads_mask16.mz vr8{mr1}, 0(r27)
00190c  9f0d0801  addli r27, r16, 128
001910  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
001914  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
001918  c2950d02  vload_mask16.mz vr11{mr1}, 0(r27)
00191c  9f0c8800  addli r25, r16, 64
001920  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
001924  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001928  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
00192c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001930  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001934  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001938  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00193c  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
001940  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
001944  9f8c8100  addli r25, r3, 64
001948  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
00194c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001950  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001954  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001958  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00195c  46907d02  vstore_mask16.mz vr7{mr1}, 0(r27)
001960  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001964  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001968  cb6a91ff  ble.s r2, r25, -328
00196c  9f8c0b02  addli r25, r23, 256
001970  9f8d8b02  addli r27, r23, 320
001974  1f030802  addli r6, r16, 256
001978  9f810101  addli r3, r3, 128
00197c  9f860604  addli r13, r13, 512
001980  1f090904  addli r18, r18, 512
001984  4a900c02  vloads_mask16.mz vr0{mr1}, 0(r25)
001988  9f8c0b03  addli r25, r23, 384
00198c  9f8b8b03  addli r23, r23, 448
001990  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
001994  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
001998  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
00199c  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
0019a0  9f0b0803  addli r23, r16, 384
0019a4  9f0c8802  addli r25, r16, 320
0019a8  1f088803  addli r16, r16, 448
0019ac  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
0019b0  c2940c02  vload_mask16.mz vr9{mr1}, 0(r25)
0019b4  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0019b8  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
0019bc  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0019c0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0019c4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0019c8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0019cc  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
0019d0  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
0019d4  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0019d8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0019dc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0019e0  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
0019e4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0019e8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0019ec  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0019f0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0019f4  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0019f8  bfbb21fe  blt.s r3, r2, -276
0019fc  dbc4ffff  j -476
001a00  9f020000  addli r5, zero, 0
001a04  1f050000  addli r10, zero, 0
001a08  9f890600  addli r19, r13, 0
001a0c  1f032000  addli r6, zero, 16
001a10  9f3b0000  addli r23, zero, 3
001a14  9f5c1000  addli r25, zero, 13
001a18  9f2d1000  addli r27, zero, 10
001a1c  00a00000  mfence { lm }
001a20  bf84b7fe  blt.s r15, r11, -736
001a24  6341ffd3  loadli.w r2,  -5636(r30)
001a28  abb60000  lui r13, 11
001a2c  9f000000  addli r1, zero, 0
001a30  1f048fd7  addli r8, r30, -5184
001a34  9f8606f0  addli r13, r13, -2048
001a38  8f012518  div.f.rn r3, r10, r2
001a3c  0f812218  div.f.rn r2, r5, r2
001a40  2ba50000  lui r10, 10
001a44  1f0505f0  addli r10, r10, -2048
001a48  8be23120  mul.f.rn r5, r3, r3
001a4c  8be10158  neg.f r3, r3
001a50  0b615118  sub.f.rn r2, r2, r5
001a54  e3023f00  loadli.w r5,  24(r30)
001a58  0b615110  add.f.rn r2, r2, r5
001a5c  9f028fd7  addli r5, r30, -5184
001a60  0f010108  sqrt.f.rn r2, r2
001a64  0f812a18  div.f.rn r2, r21, r2
001a68  1f888200  addli r16, r5, 64
001a6c  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
001a70  1f898600  addli r18, r13, 64
001a74  4a920602  vloads_mask16.mz vr4{mr1}, 0(r13)
001a78  ca110502  vloads_mask16.mz vr3{mr1}, 0(r10)
001a7c  9f804000  addli r1, r1, 32
001a80  9f860601  addli r13, r13, 128
001a84  9f820201  addli r5, r5, 128
001a88  42110802  vload_mask16.mz vr2{mr1}, 0(r16)
001a8c  1f088500  addli r16, r10, 64
001a90  4a130902  vloads_mask16.mz vr6{mr1}, 0(r18)
001a94  1f050501  addli r10, r10, 128
001a98  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
001a9c  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001aa0  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
001aa4  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
001aa8  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
001aac  26923002  vmac.f.mz.rn vr4{mr1}, vr1, vr3
001ab0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001ab4  ea211322  vor.u.mz vr3{mr1}, r6, vr1
001ab8  26135102  vmac.f.mz.rn vr6{mr1}, vr2, vr5
001abc  eaa21b22  vor.u.mz vr5{mr1}, r23, vr1
001ac0  6eb141c2  vsrl.s.mz vr2{mr1}, vr3, vr4
001ac4  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
001ac8  6ab12502  vand.s.mz vr2{mr1}, r11, vr2
001acc  eab13502  vand.s.mz vr3{mr1}, r11, vr3
001ad0  16312202  vadd.s.mz vr2{mr1}, vr4, vr2
001ad4  6aa21c22  vor.u.mz vr4{mr1}, r25, vr1
001ad8  eaa01d22  vor.u.mz vr1{mr1}, r27, vr1
001adc  96313302  vadd.s.mz vr3{mr1}, vr6, vr3
001ae0  12312c02  vadd.s.mz vr2{mr1}, r24, vr2
001ae4  92313c02  vadd.s.mz vr3{mr1}, r24, vr3
001ae8  6e3322c2  vsrl.s.mz vr6{mr1}, vr4, vr2
001aec  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
001af0  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
001af4  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
001af8  ea326e02  vand.s.mz vr5{mr1}, r28, vr6
001afc  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
001b00  6a324e02  vand.s.mz vr4{mr1}, r28, vr4
001b04  ea313d02  vand.s.mz vr3{mr1}, r26, vr3
001b08  6ab12a22  vor.s.mz vr2{mr1}, r21, vr2
001b0c  eab25a22  vor.s.mz vr5{mr1}, r21, vr5
001b10  6ab24a22  vor.s.mz vr4{mr1}, r21, vr4
001b14  eab13a22  vor.s.mz vr3{mr1}, r21, vr3
001b18  06110120  vfloat2fp16_l.rz vr2, vr2
001b1c  06520220  vfloat2fp16_h.rz vr4, vr4
001b20  06d10120  vfloat2fp16_h.rz vr2, vr3
001b24  06920220  vfloat2fp16_l.rz vr4, vr5
001b28  6a312b02  vand.s.mz vr2{mr1}, r22, vr2
001b2c  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
001b30  eab01302  vand.s.mz vr1{mr1}, r7, vr1
001b34  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
001b38  46001402  vstore.mz vr1{mr1}, 0(r8)
001b3c  1f048400  addli r8, r8, 64
001b40  bfacf0fe  blt.s r1, r15, -216
001b44  db7fffff  j -1028
001b48  e3403f00  loadli.w r1,  28(r30)
001b4c  37a80016  beq r1, zero, 11784
001b50  80300002  core_id r1
001b54  e3012f00  loadli.w r3,  16(r30)
001b58  1bb15000  slli r2, r1, 5
001b5c  4bc32100  ble.s r3, r2, 208
001b60  2b580100  lui r16, 21
001b64  00550102  load_param_i r10, 2
001b68  9f150000  addli r11, zero, 1
001b6c  1f068fd7  addli r12, r30, -5184
001b70  9f068000  addli r13, zero, 64
001b74  9f080100  addli r17, r2, 0
001b78  9b315500  slli r3, r10, 5
001b7c  1f080800  addli r16, r16, 0
001b80  33890828  zext_int2long r[19:20], r17
001b84  2b0a00f0  lui r20, 983040
001b88  1739b902  sll.d r[19:20], r[19:20], r11
001b8c  179a4601  or r20, r13, r20
001b90  0b292211  add.ul r[19:20], r[5:6], r[19:20]
001b94  7f2ac900  l_gm2lm r20, r12, 0(r[19:20])
001b98  1bb92800  slli r18, r17, 2
001b9c  8b981111  add.s r17, r3, r17
001ba0  00a00200  mfence { lm, gm }
001ba4  42000602  vload.mz vr0{mr1}, 0(r12)
001ba8  0b190911  add.s r18, r18, r16
001bac  9f098900  addli r19, r18, 64
001bb0  86300000  vfp162float_l.rn vr1, vr0
001bb4  06700000  vfp162float_h.rn vr0, vr0
001bb8  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
001bbc  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
001bc0  3f8ff8fe  blt.s r17, r15, -64
001bc4  ab620100  lui r5, 22
001bc8  1bb27000  slli r4, r1, 7
001bcc  9f058fd7  addli r11, r30, -5184
001bd0  1f068000  addli r12, zero, 64
001bd4  9f060100  addli r13, r2, 0
001bd8  00a00000  mfence { lm }
001bdc  9f820200  addli r5, r5, 0
001be0  0b125210  add.s r4, r4, r5
001be4  9b327500  slli r5, r10, 7
001be8  1f150000  addli r10, zero, 1
001bec  33880628  zext_int2long r[17:18], r13
001bf0  2b0900f0  lui r18, 983040
001bf4  8b963610  add.s r13, r13, r3
001bf8  1738a802  sll.d r[17:18], r[17:18], r10
001bfc  17192601  or r18, r12, r18
001c00  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001c04  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
001c08  1f088200  addli r16, r4, 64
001c0c  00a00200  mfence { lm, gm }
001c10  42800502  vload.mz vr0{mr1}, 0(r11)
001c14  86300000  vfp162float_l.rn vr1, vr0
001c18  06700000  vfp162float_h.rn vr0, vr0
001c1c  4e101202  vstores_mask16.mz vr1{mr1}, 0(r4)
001c20  0b125210  add.s r4, r4, r5
001c24  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
001c28  3f9ff6fe  blt.s r13, r15, -60
001c2c  e3012f00  loadli.w r3,  16(r30)
001c30  cba12100  ble.s r3, r2, 104
001c34  00530102  load_param_i r6, 2
001c38  ab730100  lui r7, 23
001c3c  9f110000  addli r3, zero, 1
001c40  1f028fd7  addli r4, r30, -5184
001c44  9f028000  addli r5, zero, 64
001c48  00a00000  mfence { lm }
001c4c  1b335300  slli r6, r6, 5
001c50  9f830300  addli r7, r7, 0
001c54  33050128  zext_int2long r[11:12], r2
001c58  2b0600f0  lui r12, 983040
001c5c  17353502  sll.d r[11:12], r[11:12], r3
001c60  1796c200  or r12, r5, r12
001c64  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001c68  7f264500  l_gm2lm r12, r4, 0(r[11:12])
001c6c  1b352100  slli r10, r2, 2
001c70  0b112310  add.s r2, r6, r2
001c74  00a00200  mfence { lm, gm }
001c78  42000202  vload.mz vr0{mr1}, 0(r4)
001c7c  0b157510  add.s r10, r10, r7
001c80  9f058500  addli r11, r10, 64
001c84  86300000  vfp162float_l.rn vr1, vr0
001c88  06700000  vfp162float_h.rn vr0, vr0
001c8c  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001c90  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
001c94  3f0ff1fe  blt.s r2, r15, -64
001c98  2bf10000  lui r2, 15
001c9c  e3411f00  loadli.w r3,  12(r30)
001ca0  00a00300  mfence { lm, sm, gm }
001ca4  1b11f1ff  ori r2, r2, 4095
001ca8  80210104  csr_set csr3, r2
001cac  00d00100  sync_group
001cb0  cbd91122  ble.s r3, r1, 18036
001cb4  63032f00  loadli.w r6,  16(r30)
001cb8  e3432f00  loadli.w r7,  20(r30)
001cbc  9f088fd7  addli r17, r30, -5184
001cc0  1f150000  addli r10, zero, 1
001cc4  9f054000  addli r11, zero, 32
001cc8  1f767000  addli r12, zero, 63
001ccc  1f080002  addli r16, zero, 256
001cd0  1f090001  addli r18, zero, 128
001cd4  9f098000  addli r19, zero, 64
001cd8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001cdc  0b127310  add.s r4, r6, r7
001ce0  33010308  fix2float.rn r2, r6
001ce4  1b342300  slli r8, r6, 2
001ce8  9b321300  slli r5, r6, 1
001cec  9bb42300  slli r9, r7, 2
001cf0  1f72f2ff  addli r4, r4, -1
001cf4  670c2fd4  storeli.w r2, -5440(r30)
001cf8  1f014300  addli r2, r6, 32
001cfc  0b131411  add.s r6, r8, r17
001d00  0b941211  add.s r8, r5, r17
001d04  67082fd4  storeli.w r2, -5504(r30)
001d08  1f0183ff  addli r2, r6, -64
001d0c  2bf3ffff  lui r6, 1048575
001d10  0b127230  div.s r4, r4, r7
001d14  67042fd4  storeli.w r2, -5568(r30)
001d18  1f0184ff  addli r2, r8, -64
001d1c  9b16f3ff  ori r13, r6, 4095
001d20  2b530100  lui r6, 21
001d24  67002fd4  storeli.w r2, -5632(r30)
001d28  1f010fd7  addli r2, r30, -5248
001d2c  1f030300  addli r6, r6, 0
001d30  00a00000  mfence { lm }
001d34  67045fd6  storeli.w r5, -5312(r30)
001d38  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001d3c  5b080000  j 64
001d40  6b510f00  load.d r[3:4], 0(r30)
001d44  00a00000  mfence { lm }
001d48  ab0800f0  lui r17, 983040
001d4c  005a0102  load_param_i r20, 2
001d50  e3028fd6  loadli.w r5,  -5312(r30)
001d54  8b101a10  add.s r1, r20, r1
001d58  8b237111  add.ul r[8:9], r[3:4], r[24:25]
001d5c  1f018fd7  addli r2, r30, -5184
001d60  97981201  or r17, r5, r17
001d64  ffb82300  s_lm2gm r17, r2, 0(r[8:9])
001d68  9f088fd7  addli r17, r30, -5184
001d6c  00a00200  mfence { lm, gm }
001d70  63411f00  loadli.w r2,  12(r30)
001d74  3fa02000  blt.s r1, r2, 8
001d78  dbb50800  j 17836
001d7c  63011f00  loadli.w r2,  8(r30)
001d80  8b932010  add.s r7, r1, r2
001d84  8b93f320  mul.s r7, r7, r15
001d88  b3930328  sext_int2long r[8:9], r7
001d8c  97bba302  sll.d r[24:25], r[8:9], r10
001d90  1f047fd6  addli r8, r30, -5320
001d94  ab0300f0  lui r7, 983040
001d98  6b510400  load.d r[3:4], 0(r8)
001d9c  97937200  or r7, r5, r7
001da0  0b2a7111  add.ul r[21:22], r[3:4], r[24:25]
001da4  ff231a01  l_gm2lm r7, r17, 0(r[21:22])
001da8  00a00200  mfence { lm, gm }
001dac  bff0b700  blt.s r15, r11, 60
001db0  e3030fd4  loadli.w r7,  -5632(r30)
001db4  63048fd4  loadli.w r8,  -5568(r30)
001db8  e3080fd5  loadli.w r17,  -5504(r30)
001dbc  c2800302  vload.mz vr1{mr1}, 0(r7)
001dc0  9f88c8ff  addli r17, r17, -32
001dc4  9f0a84ff  addli r21, r8, -64
001dc8  9f8383ff  addli r7, r7, -64
001dcc  130a1605  setlt.u r20, r12, r17
001dd0  06f10000  vfp162float_h.rn vr2, vr1
001dd4  86b00000  vfp162float_l.rn vr1, vr1
001dd8  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
001ddc  1f0404ff  addli r8, r8, -128
001de0  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
001de4  3b6f0afe  bneq r20, zero, -40
001de8  00a00000  mfence { lm }
001dec  bf17a200  blt.s r4, r10, 484
001df0  1f0d0000  addli r26, zero, 0
001df4  9f0c0000  addli r25, zero, 0
001df8  9f0d0000  addli r27, zero, 0
001dfc  db0c0000  j 100
001e00  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001e04  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001e08  9f9d0d00  addli r27, r27, 1
001e0c  6a7108c0  vsrl.p vr2, r16, vr0
001e10  ea7118c0  vsrl.p vr3, r16, vr1
001e14  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e18  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e1c  6a7109c0  vsrl.p vr2, r18, vr0
001e20  ea7119c0  vsrl.p vr3, r18, vr1
001e24  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e28  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e2c  6af109c0  vsrl.p vr2, r19, vr0
001e30  eaf119c0  vsrl.p vr3, r19, vr1
001e34  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e38  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e3c  6af105c0  vsrl.p vr2, r11, vr0
001e40  eaf115c0  vsrl.p vr3, r11, vr1
001e44  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e48  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e4c  7a110040  vextracti.f r2, 0(vr0)
001e50  fa910040  vextracti.f r3, 0(vr1)
001e54  0b6d2d10  add.f.rn r26, r26, r2
001e58  8bec3c10  add.f.rn r25, r25, r3
001e5c  b7f54d00  beq r27, r4, 380
001e60  9f830d00  addli r7, r27, 0
001e64  37300701  beq r14, r16, 12
001e68  97a3dd00  xor r7, r27, r13
001e6c  8b137210  add.s r7, r4, r7
001e70  1f010fd7  addli r2, r30, -5248
001e74  0b94e320  mul.s r8, r7, r14
001e78  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
001e7c  0b948718  sub.s r8, r15, r8
001e80  0b1ee440  min.s r28, r8, r14
001e84  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001e88  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001e8c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001e90  bf4daefe  blt.s r28, r10, -144
001e94  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
001e98  1f0a0000  addli r20, zero, 0
001e9c  8b9a7420  mul.s r21, r9, r7
001ea0  1f0b8fd7  addli r22, r30, -5184
001ea4  9f080300  addli r17, r6, 0
001ea8  92304002  vadd.s.mz vr1{mr1}, zero, vr4
001eac  12314002  vadd.s.mz vr2{mr1}, zero, vr4
001eb0  92314002  vadd.s.mz vr3{mr1}, zero, vr4
001eb4  0b945811  add.s r8, r17, r21
001eb8  8b135b11  add.s r7, r22, r21
001ebc  9f028400  addli r5, r8, 64
001ec0  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
001ec4  9f018401  addli r3, r8, 192
001ec8  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001ecc  1f818301  addli r2, r7, 192
001ed0  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
001ed4  9f020401  addli r5, r8, 128
001ed8  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
001edc  9f818300  addli r3, r7, 64
001ee0  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
001ee4  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
001ee8  9f820301  addli r5, r7, 128
001eec  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
001ef0  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
001ef4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001ef8  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001efc  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001f00  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001f04  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001f08  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001f0c  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
001f10  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001f14  9f018a00  addli r3, r20, 64
001f18  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001f1c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001f20  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001f24  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001f28  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001f2c  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
001f30  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001f34  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001f38  4b2b3efe  ble.s r28, r3, -312
001f3c  9f010402  addli r3, r8, 256
001f40  9f028402  addli r5, r8, 320
001f44  1f810302  addli r2, r7, 256
001f48  1f0a0a01  addli r20, r20, 128
001f4c  9f880804  addli r17, r17, 512
001f50  1f0b0b04  addli r22, r22, 512
001f54  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
001f58  9f010403  addli r3, r8, 384
001f5c  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
001f60  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
001f64  9f828302  addli r5, r7, 320
001f68  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
001f6c  9f018403  addli r3, r8, 448
001f70  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
001f74  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
001f78  9f810303  addli r3, r7, 384
001f7c  9f838303  addli r7, r7, 448
001f80  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
001f84  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
001f88  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
001f8c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001f90  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001f94  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001f98  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001f9c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001fa0  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
001fa4  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
001fa8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001fac  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001fb0  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
001fb4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001fb8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001fbc  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001fc0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001fc4  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
001fc8  bf3bcaff  blt.s r20, r28, -276
001fcc  dbc6ffff  j -460
001fd0  9f0c0000  addli r25, zero, 0
001fd4  1f0d0000  addli r26, zero, 0
001fd8  00a00000  mfence { lm }
001fdc  bf95a7fe  blt.s r15, r10, -668
001fe0  63018fd5  loadli.w r2,  -5440(r30)
001fe4  2b6b0100  lui r22, 22
001fe8  9f030000  addli r7, zero, 0
001fec  9f0a8fd7  addli r21, r30, -5184
001ff0  1f0b0b00  addli r22, r22, 0
001ff4  8f082d18  div.f.rn r17, r26, r2
001ff8  0f842c18  div.f.rn r8, r25, r2
001ffc  63013f00  loadli.w r2,  24(r30)
002000  ab7c0100  lui r25, 23
002004  9f8c0c00  addli r25, r25, 0
002008  0bea1821  mul.f.rn r20, r17, r17
00200c  8be80858  neg.f r17, r17
002010  0b644419  sub.f.rn r8, r8, r20
002014  1f0a8fd7  addli r20, r30, -5184
002018  0b642410  add.f.rn r8, r8, r2
00201c  2b01803f  lui r2, 260096
002020  0f040408  sqrt.f.rn r8, r8
002024  0f048118  div.f.rn r8, r2, r8
002028  c2100a02  vload_mask16.mz vr1{mr1}, 0(r20)
00202c  1f0d8a00  addli r26, r20, 64
002030  ca110b02  vloads_mask16.mz vr3{mr1}, 0(r22)
002034  4a920c02  vloads_mask16.mz vr4{mr1}, 0(r25)
002038  9f8d8c00  addli r27, r25, 64
00203c  9f834300  addli r7, r7, 32
002040  9f8c0c01  addli r25, r25, 128
002044  1f0a0a01  addli r20, r20, 128
002048  42110d02  vload_mask16.mz vr2{mr1}, 0(r26)
00204c  1f0d8b00  addli r26, r22, 64
002050  4a930d02  vloads_mask16.mz vr6{mr1}, 0(r27)
002054  1f0b0b01  addli r22, r22, 128
002058  ca120d02  vloads_mask16.mz vr5{mr1}, 0(r26)
00205c  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
002060  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
002064  8a101402  vmul.f.mz.rn vr1{mr1}, r8, vr1
002068  0a112402  vmul.f.mz.rn vr2{mr1}, r8, vr2
00206c  26923002  vmac.f.mz.rn vr4{mr1}, vr1, vr3
002070  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002074  26135102  vmac.f.mz.rn vr6{mr1}, vr2, vr5
002078  86100200  vfloat2fp16_l.rn vr1, vr4
00207c  86500300  vfloat2fp16_h.rn vr1, vr6
002080  46801a02  vstore.mz vr1{mr1}, 0(r21)
002084  9f8a8a00  addli r21, r21, 64
002088  bf8ef3fe  blt.s r7, r15, -96
00208c  db96ffff  j -844
002090  e3002f00  loadli.w r1,  16(r30)
002094  1f010010  addli r2, zero, 2048
002098  bba02008  bneq r1, r2, 4136
00209c  2ba30200  lui r6, 42
0020a0  80300002  core_id r1
0020a4  1f030308  addli r6, r6, 1024
0020a8  3bd00000  bneq r1, zero, 20
0020ac  1f010040  addli r2, zero, 8192
0020b0  ab0100f0  lui r3, 983040
0020b4  17113100  or r2, r2, r3
0020b8  7f016200  l_gm2sm r2, r6, 0(r[5:6])
0020bc  2bf10000  lui r2, 15
0020c0  00200300  mfence { sm, gm }
0020c4  1b821000  andi r4, r1, 1
0020c8  9f020006  addli r5, zero, 768
0020cc  1b11f1ff  ori r2, r2, 4095
0020d0  80210104  csr_set csr3, r2
0020d4  1f010006  addli r2, zero, 768
0020d8  00d00100  sync_group
0020dc  37200200  beq r4, zero, 8
0020e0  9f02000a  addli r5, zero, 1280
0020e4  e3411f00  loadli.w r3,  12(r30)
0020e8  9f130000  addli r7, zero, 1
0020ec  bfe87120  blt.s r3, r7, 16952
0020f0  0b112220  mul.s r2, r4, r2
0020f4  1bc51000  srli r10, r1, 1
0020f8  abf0ffff  lui r1, 1048575
0020fc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002100  abca0200  lui r21, 44
002104  2bcd0200  lui r26, 44
002108  80510102  load_param_i r3, 2
00210c  9f030000  addli r7, zero, 0
002110  9bb52200  slli r11, r5, 2
002114  9f068fd7  addli r13, r30, -5184
002118  9f080002  addli r17, zero, 256
00211c  1f090001  addli r18, zero, 128
002120  9f098000  addli r19, zero, 64
002124  1f0a4000  addli r20, zero, 32
002128  9f0c0003  addli r25, zero, 384
00212c  67082fd6  storeli.w r2, -5248(r30)
002130  1f018fd6  addli r2, r30, -5312
002134  9b9000f8  ori r1, r1, 3968
002138  9bc41100  srli r9, r3, 1
00213c  9f8a0a08  addli r21, r21, 1024
002140  1f0d0d0c  addli r26, r26, 1536
002144  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002148  2bf10000  lui r2, 15
00214c  670c1fd4  storeli.w r1, -5440(r30)
002150  9f000800  addli r1, r16, 0
002154  1f080005  addli r16, zero, 640
002158  1b1bf1ff  ori r22, r2, 4095
00215c  5b040000  j 32
002160  00a00300  mfence { lm, sm, gm }
002164  80210b04  csr_set csr3, r22
002168  00d00100  sync_group
00216c  e3401f00  loadli.w r1,  12(r30)
002170  8b939310  add.s r7, r7, r9
002174  3fa01300  blt.s r7, r1, 8
002178  db4bfdff  j -5540
00217c  0b91a310  add.s r2, r7, r10
002180  cb8f20fe  ble.s r1, r2, -32
002184  e3001f00  loadli.w r1,  8(r30)
002188  0b111110  add.s r2, r2, r1
00218c  e3000fd7  loadli.w r1,  -5248(r30)
002190  1b31b100  slli r2, r2, 11
002194  17111100  or r2, r2, r1
002198  9f200000  addli r1, zero, 2
00219c  33110128  sext_int2long r[3:4], r2
0021a0  973d1102  sll.d r[28:29], r[3:4], r1
0021a4  9f007fd6  addli r1, r30, -5320
0021a8  2b0100f0  lui r2, 983040
0021ac  6bd70000  load.d r[15:16], 0(r1)
0021b0  17912500  or r2, r11, r2
0021b4  0b27b711  add.ul r[15:16], r[15:16], r[28:29]
0021b8  7f21d700  l_gm2lm r2, r13, 0(r[15:16])
0021bc  1f010000  addli r2, zero, 0
0021c0  00a00200  mfence { lm, gm }
0021c4  3b060200  bneq r4, zero, 384
0021c8  9f008fd6  addli r1, r30, -5312
0021cc  e3018fd5  loadli.w r3,  -5440(r30)
0021d0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0021d4  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0021d8  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0021dc  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0021e0  0b176110  add.s r14, r2, r6
0021e4  0b962610  add.s r12, r13, r2
0021e8  9f810101  addli r3, r3, 128
0021ec  1f010104  addli r2, r2, 512
0021f0  9f000701  addli r1, r14, 128
0021f4  4a100702  vloads_mask16.mz vr0{mr1}, 0(r14)
0021f8  1f048700  addli r8, r14, 64
0021fc  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
002200  9f078601  addli r15, r12, 192
002204  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
002208  9f008701  addli r1, r14, 192
00220c  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002210  1f048600  addli r8, r12, 64
002214  c2950702  vload_mask16.mz vr11{mr1}, 0(r15)
002218  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
00221c  9f000601  addli r1, r12, 128
002220  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
002224  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002228  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00222c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002230  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002234  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002238  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00223c  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
002240  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002244  9f000702  addli r1, r14, 256
002248  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00224c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002250  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002254  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002258  1f040603  addli r8, r12, 384
00225c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002260  9f008702  addli r1, r14, 320
002264  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
002268  9f070602  addli r15, r12, 256
00226c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002270  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
002274  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002278  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
00227c  9f000703  addli r1, r14, 384
002280  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
002284  1f078703  addli r14, r14, 448
002288  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00228c  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
002290  9f008602  addli r1, r12, 320
002294  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
002298  1f068603  addli r12, r12, 448
00229c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0022a0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0022a4  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0022a8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0022ac  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0022b0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0022b4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0022b8  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
0022bc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0022c0  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0022c4  93800105  setlt.u r1, r3, r16
0022c8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0022cc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0022d0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0022d4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0022d8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0022dc  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0022e0  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0022e4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0022e8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0022ec  bbdb00fe  bneq r1, zero, -268
0022f0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0022f4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0022f8  6af108c0  vsrl.p vr2, r17, vr0
0022fc  eaf118c0  vsrl.p vr3, r17, vr1
002300  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002304  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002308  6a7109c0  vsrl.p vr2, r18, vr0
00230c  ea7119c0  vsrl.p vr3, r18, vr1
002310  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002314  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002318  6af109c0  vsrl.p vr2, r19, vr0
00231c  eaf119c0  vsrl.p vr3, r19, vr1
002320  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002324  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002328  6a710ac0  vsrl.p vr2, r20, vr0
00232c  ea711ac0  vsrl.p vr3, r20, vr1
002330  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002334  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002338  7a160040  vextracti.f r12, 0(vr0)
00233c  7a910040  vextracti.f r2, 0(vr1)
002340  db610000  j 780
002344  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002348  abf0ffff  lui r1, 1048575
00234c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002350  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002354  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002358  9b9100f8  ori r3, r1, 3968
00235c  0b172310  add.s r14, r6, r2
002360  0b962610  add.s r12, r13, r2
002364  9f810101  addli r3, r3, 128
002368  1f010104  addli r2, r2, 512
00236c  9f000731  addli r1, r14, 6272
002370  9f070730  addli r15, r14, 6144
002374  1f048731  addli r8, r14, 6336
002378  1f0c0618  addli r24, r12, 3072
00237c  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
002380  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
002384  9f078730  addli r15, r14, 6208
002388  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
00238c  1f040619  addli r8, r12, 3200
002390  9f008618  addli r1, r12, 3136
002394  42130c02  vload_mask16.mz vr6{mr1}, 0(r24)
002398  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
00239c  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
0023a0  9f078619  addli r15, r12, 3264
0023a4  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0023a8  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
0023ac  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0023b0  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0023b4  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0023b8  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0023bc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0023c0  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0023c4  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
0023c8  1f040732  addli r8, r14, 6400
0023cc  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0023d0  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
0023d4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0023d8  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
0023dc  9f07061a  addli r15, r12, 3328
0023e0  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0023e4  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0023e8  9f00061b  addli r1, r12, 3456
0023ec  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0023f0  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0023f4  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
0023f8  1f048732  addli r8, r14, 6464
0023fc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002400  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002404  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002408  1f040733  addli r8, r14, 6528
00240c  1f078733  addli r14, r14, 6592
002410  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
002414  1f04861a  addli r8, r12, 3392
002418  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
00241c  1f06861b  addli r12, r12, 3520
002420  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
002424  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
002428  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00242c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002430  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
002434  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002438  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00243c  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
002440  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002444  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
002448  13849105  setlt.u r8, r3, r25
00244c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002450  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002454  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002458  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00245c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002460  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
002464  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
002468  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00246c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002470  bb3b04fe  bneq r8, zero, -276
002474  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002478  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00247c  abf0ffff  lui r1, 1048575
002480  1f060000  addli r12, zero, 0
002484  1b9c00f8  ori r24, r1, 3968
002488  eaf118c0  vsrl.p vr3, r17, vr1
00248c  6af108c0  vsrl.p vr2, r17, vr0
002490  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002494  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002498  ea7119c0  vsrl.p vr3, r18, vr1
00249c  6a7109c0  vsrl.p vr2, r18, vr0
0024a0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024a4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024a8  eaf119c0  vsrl.p vr3, r19, vr1
0024ac  6af109c0  vsrl.p vr2, r19, vr0
0024b0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024b4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024b8  ea711ac0  vsrl.p vr3, r20, vr1
0024bc  6a710ac0  vsrl.p vr2, r20, vr0
0024c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024c8  fa910040  vextracti.f r3, 0(vr1)
0024cc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0024d0  7a110040  vextracti.f r2, 0(vr0)
0024d4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0024d8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0024dc  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0024e0  8b17c310  add.s r15, r6, r12
0024e4  0b97c610  add.s r14, r13, r12
0024e8  1f0c0c01  addli r24, r24, 128
0024ec  1f060604  addli r12, r12, 512
0024f0  9f800718  addli r1, r15, 3072
0024f4  1f840719  addli r8, r15, 3200
0024f8  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
0024fc  9f0b8701  addli r23, r14, 192
002500  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002504  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
002508  9f808718  addli r1, r15, 3136
00250c  1f848719  addli r8, r15, 3264
002510  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
002514  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002518  9f000701  addli r1, r14, 128
00251c  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
002520  1f048700  addli r8, r14, 64
002524  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002528  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
00252c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002530  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002534  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002538  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00253c  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002540  9f80071a  addli r1, r15, 3328
002544  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002548  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00254c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002550  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002554  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
002558  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
00255c  9f80871a  addli r1, r15, 3392
002560  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
002564  9f0b0702  addli r23, r14, 256
002568  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
00256c  1f040703  addli r8, r14, 384
002570  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
002574  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002578  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
00257c  9f80071b  addli r1, r15, 3456
002580  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
002584  9f87871b  addli r15, r15, 3520
002588  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00258c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002590  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
002594  9f008702  addli r1, r14, 320
002598  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
00259c  1f078703  addli r14, r14, 448
0025a0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0025a4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0025a8  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0025ac  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0025b0  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
0025b4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0025b8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0025bc  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
0025c0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0025c4  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0025c8  93000c05  setlt.u r1, r24, r16
0025cc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0025d0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0025d4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0025d8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0025dc  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0025e0  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0025e4  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
0025e8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0025ec  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0025f0  bbcb00fe  bneq r1, zero, -272
0025f4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0025f8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0025fc  6af108c0  vsrl.p vr2, r17, vr0
002600  eaf118c0  vsrl.p vr3, r17, vr1
002604  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002608  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00260c  6a7109c0  vsrl.p vr2, r18, vr0
002610  ea7119c0  vsrl.p vr3, r18, vr1
002614  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002618  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00261c  6af109c0  vsrl.p vr2, r19, vr0
002620  eaf119c0  vsrl.p vr3, r19, vr1
002624  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002628  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00262c  6a710ac0  vsrl.p vr2, r20, vr0
002630  ea711ac0  vsrl.p vr3, r20, vr1
002634  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002638  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00263c  fa100040  vextracti.f r1, 0(vr0)
002640  7a940040  vextracti.f r8, 0(vr1)
002644  0b661110  add.f.rn r12, r2, r1
002648  0be18110  add.f.rn r2, r3, r8
00264c  8b809330  div.u r1, r7, r9
002650  80310002  core_id r3
002654  9f078fd7  addli r15, r30, -5184
002658  1f0c0000  addli r24, zero, 0
00265c  9bb06000  slli r1, r1, 6
002660  9b800004  andi r1, r1, 64
002664  97903000  or r1, r1, r3
002668  9bb12000  slli r3, r1, 2
00266c  9b80e007  andi r1, r1, 126
002670  0b945111  add.s r8, r3, r21
002674  9bb02000  slli r1, r1, 2
002678  7360c400  stores.w r12, 0(r8)
00267c  0b94a111  add.s r8, r3, r26
002680  9b914100  ori r3, r3, 4
002684  73602400  stores.w r2, 0(r8)
002688  0b915111  add.s r2, r3, r21
00268c  0b945011  add.s r8, r1, r21
002690  8b91a111  add.s r3, r3, r26
002694  8b90a011  add.s r1, r1, r26
002698  00a00300  mfence { lm, sm, gm }
00269c  80210b04  csr_set csr3, r22
0026a0  00d00100  sync_group
0026a4  6f410100  loads.w r2, 0(r2)
0026a8  6f440400  loads.w r8, 0(r8)
0026ac  efc10100  loads.w r3, 0(r3)
0026b0  efc00000  loads.w r1, 0(r1)
0026b4  0b618110  add.f.rn r2, r2, r8
0026b8  8be01110  add.f.rn r1, r3, r1
0026bc  ab01003a  lui r3, 237568
0026c0  0b643120  mul.f.rn r8, r2, r3
0026c4  8be03020  mul.f.rn r1, r1, r3
0026c8  0b618420  mul.f.rn r2, r8, r8
0026cc  0b670458  neg.f r14, r8
0026d0  8be02018  sub.f.rn r1, r1, r2
0026d4  63013f00  loadli.w r2,  24(r30)
0026d8  8be02010  add.f.rn r1, r1, r2
0026dc  2b01803f  lui r2, 260096
0026e0  8f800008  sqrt.f.rn r1, r1
0026e4  0f061118  div.f.rn r12, r2, r1
0026e8  eb500f00  load.d r[2:3], 0(r30)
0026ec  0ba1b011  add.ul r[3:4], r[2:3], r[28:29]
0026f0  9f808700  addli r1, r15, 64
0026f4  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
0026f8  1f044c00  addli r8, r24, 32
0026fc  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002700  13848206  setle.u r8, r5, r8
002704  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
002708  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
00270c  0a100602  vmul.f.mz.rn vr0{mr1}, r12, vr0
002710  8a101602  vmul.f.mz.rn vr1{mr1}, r12, vr1
002714  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
002718  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00271c  bb700400  bneq r8, zero, 60
002720  9f800701  addli r1, r15, 128
002724  1f848701  addli r8, r15, 192
002728  1f0c8c00  addli r24, r24, 64
00272c  9f870702  addli r15, r15, 256
002730  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002734  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
002738  930b5c04  setlt.u r23, r24, r5
00273c  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
002740  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
002744  0a100602  vmul.f.mz.rn vr0{mr1}, r12, vr0
002748  8a101602  vmul.f.mz.rn vr1{mr1}, r12, vr1
00274c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002750  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
002754  3bfe0bfe  bneq r23, zero, -100
002758  ab0000f0  lui r1, 983040
00275c  00a00000  mfence { lm }
002760  97901500  or r1, r11, r1
002764  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
002768  00a00200  mfence { lm, gm }
00276c  5b40ffff  j -1536
002770  80300002  core_id r1
002774  bb800000  bneq r1, zero, 32
002778  63012f00  loadli.w r2,  16(r30)
00277c  ab0100f0  lui r3, 983040
002780  1b311100  slli r2, r2, 1
002784  17113100  or r2, r2, r3
002788  abc10100  lui r3, 28
00278c  9f810100  addli r3, r3, 0
002790  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002794  2bf10000  lui r2, 15
002798  e3411f00  loadli.w r3,  12(r30)
00279c  00200300  mfence { sm, gm }
0027a0  1b11f1ff  ori r2, r2, 4095
0027a4  80210104  csr_set csr3, r2
0027a8  00d00100  sync_group
0027ac  cbed111c  ble.s r3, r1, 15224
0027b0  63012f00  loadli.w r2,  16(r30)
0027b4  e3412f00  loadli.w r3,  20(r30)
0027b8  1f052000  addli r10, zero, 16
0027bc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0027c0  1f130000  addli r6, zero, 1
0027c4  9f040002  addli r9, zero, 256
0027c8  ab05ffff  lui r11, 1048560
0027cc  ab06807f  lui r13, 522240
0027d0  2b08c07f  lui r16, 523264
0027d4  9f080001  addli r17, zero, 128
0027d8  1f098000  addli r18, zero, 64
0027dc  9f094000  addli r19, zero, 32
0027e0  1b3b1100  slli r22, r2, 1
0027e4  0b123110  add.s r4, r2, r3
0027e8  33010108  fix2float.rn r2, r2
0027ec  67042fd4  storeli.w r2, -5568(r30)
0027f0  1f71f2ff  addli r2, r4, -1
0027f4  1bb21100  slli r4, r3, 1
0027f8  67086fd5  storeli.w r22, -5504(r30)
0027fc  8b123130  div.s r5, r2, r3
002800  2bf1ffff  lui r2, 1048575
002804  9f018fd7  addli r3, r30, -5184
002808  1b14f1ff  ori r8, r2, 4095
00280c  1f010fd7  addli r2, r30, -5248
002810  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002814  6a200522  vor.u.mz vr0{mr1}, r10, vr0
002818  1f018fd6  addli r2, r30, -5312
00281c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002820  2b710000  lui r2, 7
002824  1b16f1ff  ori r12, r2, 4095
002828  db080000  j 68
00282c  9f038fd5  addli r7, r30, -5440
002830  6b510f00  load.d r[3:4], 0(r30)
002834  6bda0300  load.d r[21:22], 0(r7)
002838  00a00000  mfence { lm }
00283c  80530102  load_param_i r7, 2
002840  630b0fd5  loadli.w r22,  -5504(r30)
002844  8b901310  add.s r1, r7, r1
002848  0b2a4111  add.ul r[21:22], r[3:4], r[21:22]
00284c  2b0100f0  lui r2, 983040
002850  9f018fd7  addli r3, r30, -5184
002854  17112b00  or r2, r22, r2
002858  7f313a00  s_lm2gm r2, r3, 0(r[21:22])
00285c  00a00200  mfence { lm, gm }
002860  63411f00  loadli.w r2,  12(r30)
002864  3fa02000  blt.s r1, r2, 8
002868  db570700  j 15036
00286c  63011f00  loadli.w r2,  8(r30)
002870  9f037fd6  addli r7, r30, -5320
002874  0b912010  add.s r2, r1, r2
002878  0b11f120  mul.s r2, r2, r15
00287c  331a0128  sext_int2long r[21:22], r2
002880  2b0100f0  lui r2, 983040
002884  973b6a02  sll.d r[24:25], r[21:22], r6
002888  6bda0300  load.d r[21:22], 0(r7)
00288c  17112b00  or r2, r22, r2
002890  9f038fd5  addli r7, r30, -5440
002894  73b07301  store.d r[24:25], 0(r7)
002898  0b2a7a11  add.ul r[21:22], r[21:22], r[24:25]
00289c  7f213a00  l_gm2lm r2, r3, 0(r[21:22])
0028a0  00a00200  mfence { lm, gm }
0028a4  bfdc6200  blt.s r5, r6, 820
0028a8  9f0c0000  addli r25, zero, 0
0028ac  1f0c0000  addli r24, zero, 0
0028b0  1f0d0000  addli r26, zero, 0
0028b4  db0c0000  j 100
0028b8  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0028bc  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0028c0  1f1d0d00  addli r26, r26, 1
0028c4  6af104c0  vsrl.p vr2, r9, vr0
0028c8  eaf114c0  vsrl.p vr3, r9, vr1
0028cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028d4  6af108c0  vsrl.p vr2, r17, vr0
0028d8  eaf118c0  vsrl.p vr3, r17, vr1
0028dc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028e0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028e4  6a7109c0  vsrl.p vr2, r18, vr0
0028e8  ea7119c0  vsrl.p vr3, r18, vr1
0028ec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028f0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028f4  6af109c0  vsrl.p vr2, r19, vr0
0028f8  eaf119c0  vsrl.p vr3, r19, vr1
0028fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002900  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002904  7a110040  vextracti.f r2, 0(vr0)
002908  fa910040  vextracti.f r3, 0(vr1)
00290c  8bec2c10  add.f.rn r25, r25, r2
002910  0b6c3c10  add.f.rn r24, r24, r3
002914  373b5d00  beq r26, r5, 716
002918  1f010d00  addli r2, r26, 0
00291c  37309700  beq r14, r9, 12
002920  17218d00  xor r2, r26, r8
002924  0b912210  add.s r2, r5, r2
002928  9f010fd7  addli r3, r30, -5248
00292c  8b13e120  mul.s r7, r2, r14
002930  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
002934  8b937718  sub.s r7, r15, r7
002938  8b9de340  min.s r27, r7, r14
00293c  92322002  vadd.s.mz vr5{mr1}, zero, vr2
002940  12322002  vadd.s.mz vr4{mr1}, zero, vr2
002944  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002948  bfcd6dfe  blt.s r27, r6, -144
00294c  0b1a2220  mul.s r20, r4, r2
002950  1f010fd7  addli r2, r30, -5248
002954  abca0100  lui r21, 28
002958  1f0e0000  addli r28, zero, 0
00295c  9f038fd7  addli r7, r30, -5184
002960  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
002964  9f8a0a00  addli r21, r21, 0
002968  12315002  vadd.s.mz vr2{mr1}, zero, vr5
00296c  92315002  vadd.s.mz vr3{mr1}, zero, vr5
002970  12325002  vadd.s.mz vr4{mr1}, zero, vr5
002974  0b9b4a11  add.s r22, r21, r20
002978  0b914311  add.s r2, r7, r20
00297c  9f018fd6  addli r3, r30, -5312
002980  4a030b02  vloads.mz vr6{mr1}, 0(r22)
002984  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002988  c2030102  vload.mz vr7{mr1}, 0(r2)
00298c  9f010fd7  addli r3, r30, -5248
002990  9f0b8b00  addli r23, r22, 64
002994  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
002998  9f018e00  addli r3, r28, 64
00299c  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0029a0  6ab57502  vand.s.mz vr10{mr1}, r11, vr7
0029a4  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0029a8  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
0029ac  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0029b0  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0029b4  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0029b8  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0029bc  669503c0  vabs.f vr10, vr7
0029c0  6a348302  vand.s.mz vr8{mr1}, r6, vr8
0029c4  ea349302  vand.s.mz vr9{mr1}, r6, vr9
0029c8  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
0029cc  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
0029d0  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
0029d4  12348602  vadd.s.mz vr8{mr1}, r12, vr8
0029d8  92349602  vadd.s.mz vr9{mr1}, r12, vr9
0029dc  eab38502  vand.s.mz vr7{mr1}, r11, vr8
0029e0  661403c0  vabs.f vr8, vr6
0029e4  6ab39502  vand.s.mz vr6{mr1}, r11, vr9
0029e8  ea230834  vor.u.mh vr7{mr2}, r16, vr0
0029ec  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
0029f0  6a230834  vor.u.mh vr6{mr2}, r16, vr0
0029f4  4a840b02  vloads.mz vr8{mr1}, 0(r23)
0029f8  9f0b8100  addli r23, r2, 64
0029fc  c2840b02  vload.mz vr9{mr1}, 0(r23)
002a00  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
002a04  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
002a08  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002a0c  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
002a10  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002a14  46007102  vstore.mz vr7{mr1}, 0(r2)
002a18  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002a1c  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002a20  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
002a24  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
002a28  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002a2c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002a30  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002a34  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
002a38  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
002a3c  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
002a40  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
002a44  ea349302  vand.s.mz vr9{mr1}, r6, vr9
002a48  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002a4c  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
002a50  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
002a54  661505c0  vabs.f vr10, vr10
002a58  661404c0  vabs.f vr8, vr8
002a5c  92349602  vadd.s.mz vr9{mr1}, r12, vr9
002a60  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002a64  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
002a68  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002a6c  6ab5b502  vand.s.mz vr10{mr1}, r11, vr11
002a70  ea240834  vor.u.mh vr9{mr2}, r16, vr0
002a74  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
002a78  6a250834  vor.u.mh vr10{mr2}, r16, vr0
002a7c  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
002a80  eab4a502  vand.s.mz vr9{mr1}, r11, vr10
002a84  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
002a88  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002a8c  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002a90  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
002a94  46808b02  vstore.mz vr8{mr1}, 0(r23)
002a98  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002a9c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002aa0  4be83dfe  ble.s r27, r3, -488
002aa4  9f010b01  addli r3, r22, 128
002aa8  9f0b0101  addli r23, r2, 128
002aac  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
002ab0  1f018101  addli r2, r2, 192
002ab4  1f0e0e01  addli r28, r28, 128
002ab8  9f8a0a02  addli r21, r21, 256
002abc  9f830302  addli r7, r7, 256
002ac0  6a237522  vor.u.mz vr6{mr1}, r10, vr7
002ac4  4a840102  vloads.mz vr8{mr1}, 0(r3)
002ac8  c2840b02  vload.mz vr9{mr1}, 0(r23)
002acc  9f018b01  addli r3, r22, 192
002ad0  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
002ad4  6ab09502  vand.s.mz vr0{mr1}, r11, vr9
002ad8  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
002adc  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002ae0  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
002ae4  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
002ae8  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
002aec  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
002af0  e69504c0  vabs.f vr11, vr9
002af4  6a300302  vand.s.mz vr0{mr1}, r6, vr0
002af8  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002afc  72a1b642  vlt.u.mz mr2{mr1}, r13, vr11
002b00  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
002b04  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
002b08  12300602  vadd.s.mz vr0{mr1}, r12, vr0
002b0c  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002b10  eab40502  vand.s.mz vr9{mr1}, r11, vr0
002b14  661004c0  vabs.f vr0, vr8
002b18  6ab4a502  vand.s.mz vr8{mr1}, r11, vr10
002b1c  ea247834  vor.u.mh vr9{mr2}, r16, vr7
002b20  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002b24  6a247834  vor.u.mh vr8{mr2}, r16, vr7
002b28  4a800102  vloads.mz vr0{mr1}, 0(r3)
002b2c  42050102  vload.mz vr10{mr1}, 0(r2)
002b30  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
002b34  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
002b38  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002b3c  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
002b40  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002b44  46809b02  vstore.mz vr9{mr1}, 0(r23)
002b48  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
002b4c  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
002b50  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
002b54  6ab00502  vand.s.mz vr0{mr1}, r11, vr0
002b58  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
002b5c  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
002b60  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
002b64  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
002b68  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002b6c  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002b70  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
002b74  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
002b78  e69000c0  vabs.f vr1, vr1
002b7c  661000c0  vabs.f vr0, vr0
002b80  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002b84  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002b88  72a11642  vlt.u.mz mr2{mr1}, r13, vr1
002b8c  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002b90  eab0b502  vand.s.mz vr1{mr1}, r11, vr11
002b94  6a257834  vor.u.mh vr10{mr2}, r16, vr7
002b98  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002b9c  ea207834  vor.u.mh vr1{mr2}, r16, vr7
002ba0  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
002ba4  eab31502  vand.s.mz vr7{mr1}, r11, vr1
002ba8  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
002bac  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
002bb0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002bb4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002bb8  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
002bbc  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
002bc0  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
002bc4  46000102  vstore.mz vr0{mr1}, 0(r2)
002bc8  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002bcc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002bd0  bf16beff  blt.s r28, r27, -604
002bd4  db9cffff  j -796
002bd8  1f0c0000  addli r24, zero, 0
002bdc  9f0c0000  addli r25, zero, 0
002be0  00a00000  mfence { lm }
002be4  3fa167fe  blt.s r15, r6, -952
002be8  63018fd4  loadli.w r2,  -5568(r30)
002bec  e3013f00  loadli.w r3,  24(r30)
002bf0  9f0a0000  addli r21, zero, 0
002bf4  8f832c18  div.f.rn r7, r25, r2
002bf8  0f012c18  div.f.rn r2, r24, r2
002bfc  0bea7320  mul.f.rn r20, r7, r7
002c00  8be30358  neg.f r7, r7
002c04  0b614119  sub.f.rn r2, r2, r20
002c08  1f0a8fd7  addli r20, r30, -5184
002c0c  0b613110  add.f.rn r2, r2, r3
002c10  ab01803f  lui r3, 260096
002c14  0f010108  sqrt.f.rn r2, r2
002c18  0f812118  div.f.rn r2, r3, r2
002c1c  42020a02  vload.mz vr4{mr1}, 0(r20)
002c20  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
002c24  1f8b4a00  addli r22, r21, 32
002c28  ea212522  vor.u.mz vr3{mr1}, r10, vr2
002c2c  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002c30  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002c34  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002c38  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002c3c  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002c40  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002c44  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002c48  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002c4c  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002c50  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002c54  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002c58  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002c5c  e69202c0  vabs.f vr5, vr5
002c60  661202c0  vabs.f vr4, vr4
002c64  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002c68  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002c6c  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002c70  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002c74  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002c78  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002c7c  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002c80  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002c84  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
002c88  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
002c8c  46004a02  vstore.mz vr4{mr1}, 0(r20)
002c90  4bfe67fd  ble.s r15, r22, -1124
002c94  1f0b8a00  addli r22, r20, 64
002c98  9f8a8a00  addli r21, r21, 64
002c9c  1f0a0a01  addli r20, r20, 128
002ca0  42020b02  vload.mz vr4{mr1}, 0(r22)
002ca4  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002ca8  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002cac  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002cb0  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002cb4  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002cb8  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002cbc  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002cc0  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002cc4  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002cc8  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002ccc  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002cd0  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002cd4  e69202c0  vabs.f vr5, vr5
002cd8  661202c0  vabs.f vr4, vr4
002cdc  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002ce0  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002ce4  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002ce8  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002cec  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002cf0  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002cf4  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002cf8  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002cfc  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
002d00  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
002d04  46002b02  vstore.mz vr2{mr1}, 0(r22)
002d08  3fdcfafe  blt.s r21, r15, -236
002d0c  5b64ffff  j -1248
002d10  80300002  core_id r1
002d14  bb800000  bneq r1, zero, 32
002d18  63012f00  loadli.w r2,  16(r30)
002d1c  ab0100f0  lui r3, 983040
002d20  1b311100  slli r2, r2, 1
002d24  17113100  or r2, r2, r3
002d28  ab010200  lui r3, 32
002d2c  9f810100  addli r3, r3, 0
002d30  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002d34  2bf10000  lui r2, 15
002d38  e3411f00  loadli.w r3,  12(r30)
002d3c  00200300  mfence { sm, gm }
002d40  1b11f1ff  ori r2, r2, 4095
002d44  80210104  csr_set csr3, r2
002d48  00d00100  sync_group
002d4c  4be7111a  ble.s r3, r1, 13784
002d50  e3012f00  loadli.w r3,  16(r30)
002d54  e3422f00  loadli.w r5,  20(r30)
002d58  2bf4ffff  lui r8, 1048575
002d5c  2b080200  lui r16, 32
002d60  9f068fd7  addli r13, r30, -5184
002d64  9f040002  addli r9, zero, 256
002d68  1f050001  addli r10, zero, 128
002d6c  9f058000  addli r11, zero, 64
002d70  1f064000  addli r12, zero, 32
002d74  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002d78  1b14f4ff  ori r8, r8, 4095
002d7c  1f080800  addli r16, r16, 0
002d80  0b925110  add.s r4, r3, r5
002d84  1bb11100  slli r2, r3, 1
002d88  b3810108  fix2float.rn r3, r3
002d8c  1f73f2ff  addli r6, r4, -1
002d90  1bb21200  slli r4, r5, 1
002d94  8b125330  div.s r5, r6, r5
002d98  1f130000  addli r6, zero, 1
002d9c  5b070000  j 56
002da0  eb590f00  load.d r[20:21], 0(r30)
002da4  9f068fd7  addli r13, r30, -5184
002da8  00a00000  mfence { lm }
002dac  8ba81911  add.ul r[18:19], r[20:21], r[18:19]
002db0  ab0900f0  lui r19, 983040
002db4  005a0102  load_param_i r20, 2
002db8  97193101  or r19, r2, r19
002dbc  8b101a10  add.s r1, r20, r1
002dc0  ffb9d800  s_lm2gm r19, r13, 0(r[18:19])
002dc4  00a00200  mfence { lm, gm }
002dc8  e3431f00  loadli.w r7,  12(r30)
002dcc  3fa07000  blt.s r1, r7, 8
002dd0  dbaa0600  j 13652
002dd4  e3031f00  loadli.w r7,  8(r30)
002dd8  ab0900f0  lui r19, 983040
002ddc  97193101  or r19, r2, r19
002de0  8b987010  add.s r17, r1, r7
002de4  9f037fd6  addli r7, r30, -5320
002de8  8b98f820  mul.s r17, r17, r15
002dec  6bda0300  load.d r[21:22], 0(r7)
002df0  b3980828  sext_int2long r[18:19], r17
002df4  97b86802  sll.d r[18:19], r[18:19], r6
002df8  0b2a1a11  add.ul r[21:22], r[21:22], r[18:19]
002dfc  ff29da00  l_gm2lm r19, r13, 0(r[21:22])
002e00  00a00200  mfence { lm, gm }
002e04  3fc76200  blt.s r5, r6, 464
002e08  1f0a0000  addli r20, zero, 0
002e0c  9f090000  addli r19, zero, 0
002e10  9f0a0000  addli r21, zero, 0
002e14  db0c0000  j 100
002e18  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
002e1c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002e20  9f9a0a00  addli r21, r21, 1
002e24  6af134c0  vsrl.p vr2, r9, vr3
002e28  6af214c0  vsrl.p vr4, r9, vr1
002e2c  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
002e30  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e34  ea7125c0  vsrl.p vr3, r10, vr2
002e38  6a7215c0  vsrl.p vr4, r10, vr1
002e3c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e40  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e44  eaf125c0  vsrl.p vr3, r11, vr2
002e48  6af215c0  vsrl.p vr4, r11, vr1
002e4c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e50  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e54  ea7126c0  vsrl.p vr3, r12, vr2
002e58  6a7216c0  vsrl.p vr4, r12, vr1
002e5c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e60  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e64  fa130140  vextracti.f r7, 0(vr2)
002e68  fa960040  vextracti.f r13, 0(vr1)
002e6c  0b6a7a10  add.f.rn r20, r20, r7
002e70  8be9d910  add.f.rn r19, r19, r13
002e74  b7a55a00  beq r21, r5, 360
002e78  1f8c0a00  addli r24, r21, 0
002e7c  37309700  beq r14, r9, 12
002e80  17ab8a00  xor r22, r21, r8
002e84  0b9c6211  add.s r24, r5, r22
002e88  0b1bec20  mul.s r22, r24, r14
002e8c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
002e90  92310002  vadd.s.mz vr3{mr1}, zero, vr0
002e94  12310002  vadd.s.mz vr2{mr1}, zero, vr0
002e98  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002e9c  0b9b6719  sub.s r22, r15, r22
002ea0  0b1beb40  min.s r22, r22, r14
002ea4  bf5d6bfe  blt.s r22, r6, -140
002ea8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002eac  12310002  vadd.s.mz vr2{mr1}, zero, vr0
002eb0  92310002  vadd.s.mz vr3{mr1}, zero, vr0
002eb4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
002eb8  9f0b0000  addli r23, zero, 0
002ebc  0b1c8221  mul.s r24, r4, r24
002ec0  9f0c8fd7  addli r25, r30, -5184
002ec4  1f0d0800  addli r26, r16, 0
002ec8  8b1d8d11  add.s r27, r26, r24
002ecc  9f838b00  addli r7, r23, 64
002ed0  ca820d02  vloads.mz vr5{mr1}, 0(r27)
002ed4  1f8e8d00  addli r28, r27, 64
002ed8  4a030e02  vloads.mz vr6{mr1}, 0(r28)
002edc  0b9e8c11  add.s r28, r25, r24
002ee0  c2030e02  vload.mz vr7{mr1}, 0(r28)
002ee4  9f068e00  addli r13, r28, 64
002ee8  42840602  vload.mz vr8{mr1}, 0(r13)
002eec  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
002ef0  92320002  vadd.s.mz vr5{mr1}, zero, vr0
002ef4  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
002ef8  06b40300  vfp162float_l.rn vr8, vr7
002efc  86f30300  vfp162float_h.rn vr7, vr7
002f00  86340300  vfp162float_l.rn vr9, vr6
002f04  06730300  vfp162float_h.rn vr6, vr6
002f08  86120400  vfloat2fp16_l.rn vr5, vr8
002f0c  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
002f10  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
002f14  12340002  vadd.s.mz vr8{mr1}, zero, vr0
002f18  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
002f1c  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
002f20  06940400  vfloat2fp16_l.rn vr8, vr9
002f24  86d20300  vfloat2fp16_h.rn vr5, vr7
002f28  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002f2c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002f30  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
002f34  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002f38  06540300  vfloat2fp16_h.rn vr8, vr6
002f3c  46005e02  vstore.mz vr5{mr1}, 0(r28)
002f40  46808602  vstore.mz vr8{mr1}, 0(r13)
002f44  4b5b7bfe  ble.s r22, r7, -300
002f48  9f830d01  addli r7, r27, 128
002f4c  9f060e01  addli r13, r28, 128
002f50  9f8b0b01  addli r23, r23, 128
002f54  1f0d0d02  addli r26, r26, 256
002f58  9f8c0c02  addli r25, r25, 256
002f5c  ca820302  vloads.mz vr5{mr1}, 0(r7)
002f60  9f838d01  addli r7, r27, 192
002f64  c2830602  vload.mz vr7{mr1}, 0(r13)
002f68  4a830302  vloads.mz vr6{mr1}, 0(r7)
002f6c  9f038e01  addli r7, r28, 192
002f70  42840302  vload.mz vr8{mr1}, 0(r7)
002f74  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
002f78  92320002  vadd.s.mz vr5{mr1}, zero, vr0
002f7c  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
002f80  12330002  vadd.s.mz vr6{mr1}, zero, vr0
002f84  86b40300  vfp162float_l.rn vr9, vr7
002f88  86f30300  vfp162float_h.rn vr7, vr7
002f8c  86920400  vfloat2fp16_l.rn vr5, vr9
002f90  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002f94  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002f98  86340400  vfp162float_l.rn vr9, vr8
002f9c  06740400  vfp162float_h.rn vr8, vr8
002fa0  06930400  vfloat2fp16_l.rn vr6, vr9
002fa4  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
002fa8  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
002fac  86d20300  vfloat2fp16_h.rn vr5, vr7
002fb0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002fb4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002fb8  06530400  vfloat2fp16_h.rn vr6, vr8
002fbc  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
002fc0  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002fc4  46805602  vstore.mz vr5{mr1}, 0(r13)
002fc8  46806302  vstore.mz vr6{mr1}, 0(r7)
002fcc  bffb6bff  blt.s r23, r22, -260
002fd0  5bc9ffff  j -440
002fd4  9f090000  addli r19, zero, 0
002fd8  1f0a0000  addli r20, zero, 0
002fdc  00a00000  mfence { lm }
002fe0  3f8767fe  blt.s r15, r6, -576
002fe4  0f0a3a18  div.f.rn r20, r20, r3
002fe8  8f893918  div.f.rn r19, r19, r3
002fec  e3033f00  loadli.w r7,  24(r30)
002ff0  1f0b0000  addli r22, zero, 0
002ff4  8b6a4a21  mul.f.rn r21, r20, r20
002ff8  0b6a0a58  neg.f r20, r20
002ffc  8be95919  sub.f.rn r19, r19, r21
003000  9f0a8fd7  addli r21, r30, -5184
003004  8be97910  add.f.rn r19, r19, r7
003008  ab03803f  lui r7, 260096
00300c  8f890908  sqrt.f.rn r19, r19
003010  8f893319  div.f.rn r19, r7, r19
003014  c2800a02  vload.mz vr1{mr1}, 0(r21)
003018  9f0b4b00  addli r23, r22, 32
00301c  06b10000  vfp162float_l.rn vr2, vr1
003020  86f00000  vfp162float_h.rn vr1, vr1
003024  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003028  92111a02  vadd.f.mz.rn vr3{mr1}, r20, vr1
00302c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003030  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003034  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
003038  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
00303c  06120100  vfloat2fp16_l.rn vr4, vr2
003040  06d20100  vfloat2fp16_h.rn vr4, vr3
003044  46804a02  vstore.mz vr4{mr1}, 0(r21)
003048  4be577ff  ble.s r15, r23, -680
00304c  9f8b8a00  addli r23, r21, 64
003050  1f0b8b00  addli r22, r22, 64
003054  9f8a0a01  addli r21, r21, 128
003058  42810b02  vload.mz vr2{mr1}, 0(r23)
00305c  86310100  vfp162float_l.rn vr3, vr2
003060  06710100  vfp162float_h.rn vr2, vr2
003064  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
003068  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
00306c  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003070  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
003074  86900100  vfloat2fp16_l.rn vr1, vr3
003078  86500100  vfloat2fp16_h.rn vr1, vr2
00307c  46801b02  vstore.mz vr1{mr1}, 0(r23)
003080  3f5efbfe  blt.s r22, r15, -108
003084  dba3ffff  j -740
003088  80300002  core_id r1
00308c  1f210000  addli r2, zero, 2
003090  37ba2016  beq r1, r2, 11916
003094  1f110000  addli r2, zero, 1
003098  37bc2012  beq r1, r2, 9996
00309c  3bfa0016  bneq r1, zero, 11932
0030a0  63012f00  loadli.w r2,  16(r30)
0030a4  ab0100f0  lui r3, 983040
0030a8  1b312100  slli r2, r2, 2
0030ac  17113100  or r2, r2, r3
0030b0  ab710200  lui r3, 39
0030b4  9f810108  addli r3, r3, 1024
0030b8  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0030bc  dbcf0500  j 11900
0030c0  80300002  core_id r1
0030c4  bb800000  bneq r1, zero, 32
0030c8  63012f00  loadli.w r2,  16(r30)
0030cc  ab0100f0  lui r3, 983040
0030d0  1b312100  slli r2, r2, 2
0030d4  17113100  or r2, r2, r3
0030d8  abd10200  lui r3, 45
0030dc  9f8101f0  addli r3, r3, -2048
0030e0  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0030e4  2bf10000  lui r2, 15
0030e8  e3411f00  loadli.w r3,  12(r30)
0030ec  00200300  mfence { sm, gm }
0030f0  1b11f1ff  ori r2, r2, 4095
0030f4  80210104  csr_set csr3, r2
0030f8  00d00100  sync_group
0030fc  cba81118  ble.s r3, r1, 12840
003100  e3012f00  loadli.w r3,  16(r30)
003104  e3422f00  loadli.w r5,  20(r30)
003108  abf4ffff  lui r9, 1048575
00310c  abd80200  lui r17, 45
003110  1f0b8fd7  addli r22, r30, -5184
003114  1f140000  addli r8, zero, 1
003118  1f050002  addli r10, zero, 256
00311c  9f050001  addli r11, zero, 128
003120  1f068000  addli r12, zero, 64
003124  9f064000  addli r13, zero, 32
003128  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00312c  9b94f4ff  ori r9, r9, 4095
003130  9f8808f0  addli r17, r17, -2048
003134  0b925110  add.s r4, r3, r5
003138  1bb12100  slli r2, r3, 2
00313c  b3810108  fix2float.rn r3, r3
003140  1f73f2ff  addli r6, r4, -1
003144  1bb22200  slli r4, r5, 2
003148  67043fd6  storeli.w r3, -5312(r30)
00314c  9f010fd7  addli r3, r30, -5248
003150  8b125330  div.s r5, r6, r5
003154  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003158  5b070000  j 56
00315c  6b530f00  load.d r[7:8], 0(r30)
003160  2b0800f0  lui r16, 983040
003164  1f0b8fd7  addli r22, r30, -5184
003168  00a00000  mfence { lm }
00316c  005a0102  load_param_i r20, 2
003170  17180101  or r16, r2, r16
003174  8b101a10  add.s r1, r20, r1
003178  0b292311  add.ul r[19:20], r[7:8], r[19:20]
00317c  7f386901  s_lm2gm r16, r22, 0(r[19:20])
003180  00a00200  mfence { lm, gm }
003184  e3411f00  loadli.w r3,  12(r30)
003188  3fa03000  blt.s r1, r3, 8
00318c  5b330600  j 12696
003190  e3011f00  loadli.w r3,  8(r30)
003194  0b983010  add.s r16, r1, r3
003198  9f210000  addli r3, zero, 2
00319c  0b18f820  mul.s r16, r16, r15
0031a0  33190828  sext_int2long r[19:20], r16
0031a4  2b0800f0  lui r16, 983040
0031a8  17393902  sll.d r[19:20], r[19:20], r3
0031ac  9f017fd6  addli r3, r30, -5320
0031b0  17180101  or r16, r2, r16
0031b4  6bd30100  load.d r[7:8], 0(r3)
0031b8  0b2a2311  add.ul r[21:22], r[7:8], r[19:20]
0031bc  7f286a01  l_gm2lm r16, r22, 0(r[21:22])
0031c0  00a00200  mfence { lm, gm }
0031c4  bf978200  blt.s r5, r8, 484
0031c8  9f0a0000  addli r21, zero, 0
0031cc  1f0a0000  addli r20, zero, 0
0031d0  1f0b0000  addli r22, zero, 0
0031d4  db0c0000  j 100
0031d8  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
0031dc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0031e0  1f1b0b00  addli r22, r22, 1
0031e4  6a7105c0  vsrl.p vr2, r10, vr0
0031e8  ea7115c0  vsrl.p vr3, r10, vr1
0031ec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0031f0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0031f4  6af105c0  vsrl.p vr2, r11, vr0
0031f8  eaf115c0  vsrl.p vr3, r11, vr1
0031fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003200  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003204  6a7106c0  vsrl.p vr2, r12, vr0
003208  ea7116c0  vsrl.p vr3, r12, vr1
00320c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003210  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003214  6af106c0  vsrl.p vr2, r13, vr0
003218  eaf116c0  vsrl.p vr3, r13, vr1
00321c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003220  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003224  fa110040  vextracti.f r3, 0(vr0)
003228  7a930040  vextracti.f r6, 0(vr1)
00322c  8bea3a10  add.f.rn r21, r21, r3
003230  0b6a6a10  add.f.rn r20, r20, r6
003234  b7755b00  beq r22, r5, 380
003238  1f080b00  addli r16, r22, 0
00323c  3730a700  beq r14, r10, 12
003240  17289b00  xor r16, r22, r9
003244  0b980211  add.s r16, r5, r16
003248  9f010fd7  addli r3, r30, -5248
00324c  8b1be820  mul.s r23, r16, r14
003250  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
003254  8b9b7719  sub.s r23, r15, r23
003258  8b9beb40  min.s r23, r23, r14
00325c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003260  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003264  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003268  bfcd8bfe  blt.s r23, r8, -144
00326c  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003270  1f0c0000  addli r24, zero, 0
003274  8b1c0221  mul.s r25, r4, r16
003278  1f0d8fd7  addli r26, r30, -5184
00327c  9f8d0800  addli r27, r17, 0
003280  92304002  vadd.s.mz vr1{mr1}, zero, vr4
003284  12314002  vadd.s.mz vr2{mr1}, zero, vr4
003288  92314002  vadd.s.mz vr3{mr1}, zero, vr4
00328c  0b989d11  add.s r16, r27, r25
003290  0b1e9d11  add.s r28, r26, r25
003294  1f038800  addli r6, r16, 64
003298  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
00329c  9f038801  addli r7, r16, 192
0032a0  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
0032a4  9f018e01  addli r3, r28, 192
0032a8  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0032ac  1f030801  addli r6, r16, 128
0032b0  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
0032b4  9f030e01  addli r7, r28, 128
0032b8  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0032bc  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
0032c0  c2950302  vload_mask16.mz vr11{mr1}, 0(r7)
0032c4  1f038e00  addli r6, r28, 64
0032c8  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0032cc  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0032d0  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0032d4  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0032d8  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0032dc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0032e0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0032e4  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
0032e8  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0032ec  1f038c00  addli r6, r24, 64
0032f0  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0032f4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0032f8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0032fc  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
003300  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003304  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
003308  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
00330c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
003310  4bab6bfe  ble.s r23, r6, -312
003314  1f030802  addli r6, r16, 256
003318  9f038802  addli r7, r16, 320
00331c  9f010e02  addli r3, r28, 256
003320  1f0c0c01  addli r24, r24, 128
003324  9f8d0d04  addli r27, r27, 512
003328  1f0d0d04  addli r26, r26, 512
00332c  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
003330  1f030803  addli r6, r16, 384
003334  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
003338  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
00333c  9f038e02  addli r7, r28, 320
003340  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
003344  1f038803  addli r6, r16, 448
003348  1f088e03  addli r16, r28, 448
00334c  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
003350  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
003354  1f030e03  addli r6, r28, 384
003358  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
00335c  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
003360  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
003364  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
003368  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
00336c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003370  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003374  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003378  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
00337c  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
003380  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
003384  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003388  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
00338c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003390  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003394  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
003398  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00339c  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0033a0  bf3b7cff  blt.s r24, r23, -276
0033a4  dbc6ffff  j -460
0033a8  1f0a0000  addli r20, zero, 0
0033ac  9f0a0000  addli r21, zero, 0
0033b0  00a00000  mfence { lm }
0033b4  bfa687fe  blt.s r15, r8, -600
0033b8  e3018fd6  loadli.w r3,  -5312(r30)
0033bc  1f0b0000  addli r22, zero, 0
0033c0  8f8a3a18  div.f.rn r21, r21, r3
0033c4  0f083a18  div.f.rn r16, r20, r3
0033c8  e3013f00  loadli.w r3,  24(r30)
0033cc  0bea5a21  mul.f.rn r20, r21, r21
0033d0  0b684819  sub.f.rn r16, r16, r20
0033d4  0bea0a58  neg.f r20, r21
0033d8  9f0a8fd7  addli r21, r30, -5184
0033dc  0b683810  add.f.rn r16, r16, r3
0033e0  ab01803f  lui r3, 260096
0033e4  0f080808  sqrt.f.rn r16, r16
0033e8  0f880119  div.f.rn r16, r3, r16
0033ec  9f8b8a00  addli r23, r21, 64
0033f0  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
0033f4  1f0c4b00  addli r24, r22, 32
0033f8  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
0033fc  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003400  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003404  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003408  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
00340c  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
003410  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
003414  4ba587ff  ble.s r15, r24, -696
003418  9f8b0a01  addli r23, r21, 128
00341c  1f8c8a01  addli r24, r21, 192
003420  1f0b8b00  addli r22, r22, 64
003424  9f8a0a02  addli r21, r21, 256
003428  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
00342c  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
003430  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003434  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003438  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
00343c  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003440  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
003444  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
003448  bf1efbfe  blt.s r22, r15, -92
00344c  5ba2ffff  j -752
003450  80300002  core_id r1
003454  ab630000  lui r7, 6
003458  1f110000  addli r2, zero, 1
00345c  1f038fd7  addli r6, r30, -5184
003460  1f048000  addli r8, zero, 64
003464  1f050010  addli r10, zero, 2048
003468  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
00346c  9bb15000  slli r3, r1, 5
003470  80500102  load_param_i r1, 2
003474  9f830308  addli r7, r7, 1024
003478  9bb45000  slli r9, r1, 5
00347c  b3850128  zext_int2long r[12:13], r3
003480  ab0600f0  lui r13, 983040
003484  97b52502  sll.d r[12:13], r[12:13], r2
003488  9716d400  or r13, r8, r13
00348c  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
003490  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
003494  9bb52100  slli r11, r3, 2
003498  8b913410  add.s r3, r9, r3
00349c  00a00200  mfence { lm, gm }
0034a0  c2000302  vload.mz vr1{mr1}, 0(r6)
0034a4  1386a104  setlt.u r12, r3, r10
0034a8  8b957510  add.s r11, r11, r7
0034ac  9f868500  addli r13, r11, 64
0034b0  66c11180  vmerge_l.hf vr2, vr3, vr1
0034b4  e6c011a0  vmerge_h.hf vr1, vr3, vr1
0034b8  4e902502  vstores_mask16.mz vr2{mr1}, 0(r11)
0034bc  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
0034c0  bb7e06fe  bneq r12, zero, -68
0034c4  2bf10000  lui r2, 15
0034c8  80310002  core_id r3
0034cc  00a00300  mfence { lm, sm, gm }
0034d0  9f020006  addli r5, zero, 768
0034d4  1b11f1ff  ori r2, r2, 4095
0034d8  9b811100  andi r3, r3, 1
0034dc  80210104  csr_set csr3, r2
0034e0  1f010006  addli r2, zero, 768
0034e4  00d00100  sync_group
0034e8  670c3fd4  storeli.w r3, -5440(r30)
0034ec  37a00100  beq r3, zero, 8
0034f0  9f02000a  addli r5, zero, 1280
0034f4  e3411f00  loadli.w r3,  12(r30)
0034f8  1f140000  addli r8, zero, 1
0034fc  bfa88116  blt.s r3, r8, 11816
003500  e3018fd5  loadli.w r3,  -5440(r30)
003504  1bcc1000  srli r24, r1, 1
003508  80300002  core_id r1
00350c  1f098fd7  addli r18, r30, -5184
003510  9bbb1200  slli r23, r5, 1
003514  9f040000  addli r9, zero, 0
003518  9f767000  addli r13, zero, 63
00351c  9f0a0005  addli r21, zero, 640
003520  2b05803f  lui r10, 260096
003524  1f062000  addli r12, zero, 16
003528  1f330000  addli r6, zero, 3
00352c  2be77f00  lui r14, 2046
003530  1f5e1000  addli r28, zero, 13
003534  abe50700  lui r11, 126
003538  1f221000  addli r4, zero, 10
00353c  1f0b0003  addli r22, zero, 384
003540  9bcd1000  srli r27, r1, 1
003544  9bb02200  slli r1, r5, 2
003548  0b912120  mul.s r2, r3, r2
00354c  8b902011  add.s r1, r1, r18
003550  67042fd4  storeli.w r2, -5568(r30)
003554  1f814200  addli r2, r5, 32
003558  9f8080ff  addli r1, r1, -64
00355c  674f2fd2  storeli.w r2, -5644(r30)
003560  0b912b11  add.s r2, r23, r18
003564  670f1fd2  storeli.w r1, -5648(r30)
003568  9f0081ff  addli r1, r2, -64
00356c  2bf100fc  lui r2, 1032207
003570  e74e1fd2  storeli.w r1, -5652(r30)
003574  abf0ffff  lui r1, 1048575
003578  00a00000  mfence { lm }
00357c  67008fd5  storeli.w r24, -5632(r30)
003580  e74fbfd3  storeli.w r27, -5636(r30)
003584  e70f7fd3  storeli.w r23, -5640(r30)
003588  9b9000f8  ori r1, r1, 3968
00358c  e70e1fd2  storeli.w r1, -5656(r30)
003590  abf00000  lui r1, 15
003594  9b90f0ff  ori r1, r1, 4095
003598  67081fd6  storeli.w r1, -5248(r30)
00359c  ab700000  lui r1, 7
0035a0  1b9af0ff  ori r20, r1, 4095
0035a4  ab00ff03  lui r1, 16368
0035a8  9b99f03f  ori r19, r1, 1023
0035ac  9b1001c0  ori r1, r2, 3072
0035b0  1f010fd5  addli r2, r30, -5504
0035b4  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0035b8  5b040000  j 32
0035bc  00a00300  mfence { lm, sm, gm }
0035c0  63010fd7  loadli.w r2,  -5248(r30)
0035c4  80210104  csr_set csr3, r2
0035c8  00d00100  sync_group
0035cc  8b948411  add.s r9, r9, r24
0035d0  3fa00401  blt.s r9, r16, 8
0035d4  5bc0faff  j -10752
0035d8  0b91b411  add.s r2, r9, r27
0035dc  cb0f28fe  ble.s r16, r2, -32
0035e0  e3011f00  loadli.w r3,  8(r30)
0035e4  e3078fd4  loadli.w r15,  -5568(r30)
0035e8  0b113110  add.s r2, r2, r3
0035ec  8b818431  div.u r3, r9, r24
0035f0  1b31b100  slli r2, r2, 11
0035f4  1711f100  or r2, r2, r15
0035f8  33180128  sext_int2long r[17:18], r2
0035fc  2b0100f0  lui r2, 983040
003600  9bb16100  slli r3, r3, 6
003604  973c8802  sll.d r[26:27], r[17:18], r8
003608  9f087fd6  addli r17, r30, -5320
00360c  17912b00  or r2, r23, r2
003610  9b810104  andi r3, r3, 64
003614  ebd70800  load.d r[16:17], 0(r17)
003618  9f088fd6  addli r17, r30, -5312
00361c  73b09801  store.d r[26:27], 0(r17)
003620  0ba89711  add.ul r[17:18], r[16:17], r[26:27]
003624  7f212801  l_gm2lm r2, r18, 0(r[17:18])
003628  00310002  core_id r2
00362c  00a00200  mfence { lm, gm }
003630  17912100  or r2, r3, r2
003634  e341dfd3  loadli.w r3,  -5652(r30)
003638  6308efd3  loadli.w r16,  -5648(r30)
00363c  e348efd3  loadli.w r17,  -5644(r30)
003640  c2800102  vload.mz vr1{mr1}, 0(r3)
003644  9f88c8ff  addli r17, r17, -32
003648  1f0d88ff  addli r26, r16, -64
00364c  9f8181ff  addli r3, r3, -64
003650  938b1605  setlt.u r23, r13, r17
003654  66c111a0  vmerge_h.hf vr2, vr3, vr1
003658  e6c01180  vmerge_l.hf vr1, vr3, vr1
00365c  46102802  vstore_mask16.mz vr2{mr1}, 0(r16)
003660  1f0808ff  addli r16, r16, -128
003664  46101d02  vstore_mask16.mz vr1{mr1}, 0(r26)
003668  3bef0bfe  bneq r23, zero, -40
00366c  00a00000  mfence { lm }
003670  e3018fd5  loadli.w r3,  -5440(r30)
003674  3bb60100  bneq r3, zero, 396
003678  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00367c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
003680  12323002  vadd.s.mz vr4{mr1}, zero, vr3
003684  6308dfd3  loadli.w r16,  -5656(r30)
003688  9f010000  addli r3, zero, 0
00368c  8b9b7110  add.s r23, r3, r7
003690  8b183910  add.s r17, r18, r3
003694  1f080801  addli r16, r16, 128
003698  9f810104  addli r3, r3, 512
00369c  9f870b01  addli r15, r23, 128
0036a0  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
0036a4  1f8c8b00  addli r24, r23, 64
0036a8  42940802  vload_mask16.mz vr8{mr1}, 0(r17)
0036ac  9f8c8801  addli r25, r17, 192
0036b0  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
0036b4  9f878b01  addli r15, r23, 192
0036b8  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0036bc  1f8c8800  addli r24, r17, 64
0036c0  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0036c4  ca930702  vloads_mask16.mz vr7{mr1}, 0(r15)
0036c8  9f870801  addli r15, r17, 128
0036cc  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
0036d0  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
0036d4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0036d8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0036dc  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0036e0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0036e4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0036e8  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
0036ec  46908702  vstore_mask16.mz vr8{mr1}, 0(r15)
0036f0  9f870b02  addli r15, r23, 256
0036f4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0036f8  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0036fc  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003700  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003704  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
003708  9f878b02  addli r15, r23, 320
00370c  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
003710  9f8c0802  addli r25, r17, 256
003714  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003718  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00371c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003720  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
003724  9f870b03  addli r15, r23, 384
003728  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
00372c  9f8b8b03  addli r23, r23, 448
003730  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003734  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
003738  9f878802  addli r15, r17, 320
00373c  4a950b02  vloads_mask16.mz vr10{mr1}, 0(r23)
003740  9f8b0803  addli r23, r17, 384
003744  9f888803  addli r17, r17, 448
003748  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
00374c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003750  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
003754  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003758  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
00375c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003760  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003764  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003768  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00376c  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
003770  93075805  setlt.u r15, r16, r21
003774  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003778  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00377c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003780  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003784  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003788  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
00378c  46907802  vstore_mask16.mz vr7{mr1}, 0(r17)
003790  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003794  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003798  bbdb07fe  bneq r15, zero, -268
00379c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0037a0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0037a4  9f010002  addli r3, zero, 256
0037a8  6af101c0  vsrl.p vr2, r3, vr0
0037ac  eaf111c0  vsrl.p vr3, r3, vr1
0037b0  9f010001  addli r3, zero, 128
0037b4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037b8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037bc  6af101c0  vsrl.p vr2, r3, vr0
0037c0  eaf111c0  vsrl.p vr3, r3, vr1
0037c4  9f018000  addli r3, zero, 64
0037c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037d0  6af101c0  vsrl.p vr2, r3, vr0
0037d4  eaf111c0  vsrl.p vr3, r3, vr1
0037d8  9f014000  addli r3, zero, 32
0037dc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037e0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037e4  6af101c0  vsrl.p vr2, r3, vr0
0037e8  eaf111c0  vsrl.p vr3, r3, vr1
0037ec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037f0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037f4  fa110040  vextracti.f r3, 0(vr0)
0037f8  7a980040  vextracti.f r16, 0(vr1)
0037fc  5b660000  j 816
003800  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003804  abf7ffff  lui r15, 1048575
003808  9f010000  addli r3, zero, 0
00380c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003810  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003814  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003818  9b9b07f8  ori r23, r15, 3968
00381c  8b983310  add.s r17, r7, r3
003820  0b183910  add.s r16, r18, r3
003824  9f8b0b01  addli r23, r23, 128
003828  9f810104  addli r3, r3, 512
00382c  9f870831  addli r15, r17, 6272
003830  1f8d0830  addli r26, r17, 6144
003834  1f8c8831  addli r24, r17, 6336
003838  9f0d0818  addli r27, r16, 3072
00383c  9f0c8819  addli r25, r16, 3264
003840  ca930702  vloads_mask16.mz vr7{mr1}, 0(r15)
003844  ca120d02  vloads_mask16.mz vr5{mr1}, 0(r26)
003848  1f8d8830  addli r26, r17, 6208
00384c  ca140c02  vloads_mask16.mz vr9{mr1}, 0(r24)
003850  1f0c0819  addli r24, r16, 3200
003854  9f078818  addli r15, r16, 3136
003858  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
00385c  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
003860  4a140d02  vloads_mask16.mz vr8{mr1}, 0(r26)
003864  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
003868  c2950702  vload_mask16.mz vr11{mr1}, 0(r15)
00386c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003870  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
003874  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
003878  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
00387c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003880  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
003884  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
003888  1f8c0832  addli r24, r17, 6400
00388c  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
003890  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003894  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003898  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
00389c  9f0c081a  addli r25, r16, 3328
0038a0  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
0038a4  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
0038a8  9f07081b  addli r15, r16, 3456
0038ac  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0038b0  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0038b4  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
0038b8  1f8c8832  addli r24, r17, 6464
0038bc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0038c0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0038c4  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0038c8  1f8c0833  addli r24, r17, 6528
0038cc  9f888833  addli r17, r17, 6592
0038d0  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
0038d4  1f0c881a  addli r24, r16, 3392
0038d8  4a950802  vloads_mask16.mz vr10{mr1}, 0(r17)
0038dc  1f08881b  addli r16, r16, 3520
0038e0  93886b05  setlt.u r17, r23, r22
0038e4  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
0038e8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0038ec  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0038f0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0038f4  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
0038f8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0038fc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003900  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003904  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003908  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
00390c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003910  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003914  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003918  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00391c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003920  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
003924  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
003928  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00392c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003930  bbbb08fe  bneq r17, zero, -276
003934  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003938  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00393c  9f010002  addli r3, zero, 256
003940  abf7ffff  lui r15, 1048575
003944  9f0b0000  addli r23, zero, 0
003948  1b9807f8  ori r16, r15, 3968
00394c  eaf111c0  vsrl.p vr3, r3, vr1
003950  6af101c0  vsrl.p vr2, r3, vr0
003954  9f010001  addli r3, zero, 128
003958  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00395c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003960  eaf111c0  vsrl.p vr3, r3, vr1
003964  6af101c0  vsrl.p vr2, r3, vr0
003968  9f018000  addli r3, zero, 64
00396c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003970  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003974  eaf111c0  vsrl.p vr3, r3, vr1
003978  6af101c0  vsrl.p vr2, r3, vr0
00397c  9f014000  addli r3, zero, 32
003980  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003984  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003988  eaf111c0  vsrl.p vr3, r3, vr1
00398c  6af101c0  vsrl.p vr2, r3, vr0
003990  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003994  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003998  7a9d0040  vextracti.f r26, 0(vr1)
00399c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0039a0  fa110040  vextracti.f r3, 0(vr0)
0039a4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0039a8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0039ac  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0039b0  8b9d7311  add.s r27, r7, r23
0039b4  8b187911  add.s r17, r18, r23
0039b8  1f080801  addli r16, r16, 128
0039bc  9f8b0b04  addli r23, r23, 512
0039c0  9f870d18  addli r15, r27, 3072
0039c4  1f8c0d19  addli r24, r27, 3200
0039c8  42940802  vload_mask16.mz vr8{mr1}, 0(r17)
0039cc  9f8c8801  addli r25, r17, 192
0039d0  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
0039d4  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
0039d8  9f878d18  addli r15, r27, 3136
0039dc  1f8c8d19  addli r24, r27, 3264
0039e0  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0039e4  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
0039e8  9f870801  addli r15, r17, 128
0039ec  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
0039f0  1f8c8800  addli r24, r17, 64
0039f4  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
0039f8  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
0039fc  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
003a00  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
003a04  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
003a08  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
003a0c  46908702  vstore_mask16.mz vr8{mr1}, 0(r15)
003a10  9f870d1a  addli r15, r27, 3328
003a14  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003a18  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003a1c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003a20  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003a24  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
003a28  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
003a2c  9f878d1a  addli r15, r27, 3392
003a30  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
003a34  9f8c0802  addli r25, r17, 256
003a38  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003a3c  1f8c0803  addli r24, r17, 384
003a40  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003a44  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003a48  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
003a4c  9f870d1b  addli r15, r27, 3456
003a50  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003a54  9f8d8d1b  addli r27, r27, 3520
003a58  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003a5c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003a60  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
003a64  9f878802  addli r15, r17, 320
003a68  4a950d02  vloads_mask16.mz vr10{mr1}, 0(r27)
003a6c  9f888803  addli r17, r17, 448
003a70  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
003a74  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003a78  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
003a7c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003a80  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
003a84  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003a88  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003a8c  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003a90  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003a94  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
003a98  93075805  setlt.u r15, r16, r21
003a9c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003aa0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003aa4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003aa8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003aac  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003ab0  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003ab4  46907802  vstore_mask16.mz vr7{mr1}, 0(r17)
003ab8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003abc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003ac0  bbcb07fe  bneq r15, zero, -272
003ac4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003ac8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003acc  9f070002  addli r15, zero, 256
003ad0  6af107c0  vsrl.p vr2, r15, vr0
003ad4  eaf117c0  vsrl.p vr3, r15, vr1
003ad8  9f070001  addli r15, zero, 128
003adc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003ae0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003ae4  6af107c0  vsrl.p vr2, r15, vr0
003ae8  eaf117c0  vsrl.p vr3, r15, vr1
003aec  9f078000  addli r15, zero, 64
003af0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003af4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003af8  6af107c0  vsrl.p vr2, r15, vr0
003afc  eaf117c0  vsrl.p vr3, r15, vr1
003b00  9f074000  addli r15, zero, 32
003b04  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003b08  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003b0c  6af107c0  vsrl.p vr2, r15, vr0
003b10  eaf117c0  vsrl.p vr3, r15, vr1
003b14  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003b18  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003b1c  7a980040  vextracti.f r16, 0(vr1)
003b20  fa170040  vextracti.f r15, 0(vr0)
003b24  8be1f110  add.f.rn r3, r3, r15
003b28  0b680d11  add.f.rn r16, r26, r16
003b2c  ab8d0000  lui r27, 8
003b30  2b8b0000  lui r22, 8
003b34  9b372100  slli r15, r2, 2
003b38  630c0fd4  loadli.w r24,  -5632(r30)
003b3c  e34cffd3  loadli.w r25,  -5636(r30)
003b40  630dffd3  loadli.w r26,  -5640(r30)
003b44  1b01e107  andi r2, r2, 126
003b48  9f8d0d08  addli r27, r27, 1024
003b4c  1f0b0b0c  addli r22, r22, 1536
003b50  1b312100  slli r2, r2, 2
003b54  8b98b711  add.s r17, r15, r27
003b58  8b9b6711  add.s r23, r15, r22
003b5c  73e00b01  stores.w r16, 0(r23)
003b60  73e03800  stores.w r3, 0(r17)
003b64  0b18b111  add.s r16, r2, r27
003b68  0b116111  add.s r2, r2, r22
003b6c  9f088fd7  addli r17, r30, -5184
003b70  9f0b0000  addli r23, zero, 0
003b74  00a00300  mfence { lm, sm, gm }
003b78  e3010fd7  loadli.w r3,  -5248(r30)
003b7c  80a10104  csr_set csr3, r3
003b80  9b914700  ori r3, r15, 4
003b84  00d00100  sync_group
003b88  6f480800  loads.w r16, 0(r16)
003b8c  6f410100  loads.w r2, 0(r2)
003b90  8b97b111  add.s r15, r3, r27
003b94  8b916111  add.s r3, r3, r22
003b98  efc70700  loads.w r15, 0(r15)
003b9c  efc10100  loads.w r3, 0(r3)
003ba0  8be70711  add.f.rn r15, r15, r16
003ba4  2b08003a  lui r16, 237568
003ba8  0be12110  add.f.rn r2, r3, r2
003bac  8be10721  mul.f.rn r3, r15, r16
003bb0  0b610121  mul.f.rn r2, r2, r16
003bb4  1f088fd7  addli r16, r30, -5184
003bb8  8be73120  mul.f.rn r15, r3, r3
003bbc  8be10158  neg.f r3, r3
003bc0  0b61f118  sub.f.rn r2, r2, r15
003bc4  e3073f00  loadli.w r15,  24(r30)
003bc8  0b61f110  add.f.rn r2, r2, r15
003bcc  0f010108  sqrt.f.rn r2, r2
003bd0  0f012518  div.f.rn r2, r10, r2
003bd4  9f078800  addli r15, r16, 64
003bd8  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
003bdc  9f8b4b00  addli r23, r23, 32
003be0  1f080801  addli r16, r16, 128
003be4  c2900702  vload_mask16.mz vr1{mr1}, 0(r15)
003be8  93875b04  setlt.u r15, r23, r5
003bec  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
003bf0  12911102  vadd.f.mz.rn vr2{mr1}, r3, vr1
003bf4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003bf8  ea211622  vor.u.mz vr3{mr1}, r12, vr1
003bfc  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
003c00  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
003c04  6eb201c2  vsrl.s.mz vr4{mr1}, vr3, vr0
003c08  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003c0c  6a324402  vand.s.mz vr4{mr1}, r8, vr4
003c10  ea313402  vand.s.mz vr3{mr1}, r8, vr3
003c14  16304002  vadd.s.mz vr0{mr1}, vr0, vr4
003c18  6a221322  vor.u.mz vr4{mr1}, r6, vr1
003c1c  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
003c20  ea211e22  vor.u.mz vr3{mr1}, r28, vr1
003c24  ea201222  vor.u.mz vr1{mr1}, r4, vr1
003c28  12300a02  vadd.s.mz vr0{mr1}, r20, vr0
003c2c  12312a02  vadd.s.mz vr2{mr1}, r20, vr2
003c30  eeb201c2  vsrl.s.mz vr5{mr1}, vr3, vr0
003c34  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
003c38  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003c3c  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
003c40  6ab25502  vand.s.mz vr4{mr1}, r11, vr5
003c44  6a300702  vand.s.mz vr0{mr1}, r14, vr0
003c48  eab13502  vand.s.mz vr3{mr1}, r11, vr3
003c4c  6a312702  vand.s.mz vr2{mr1}, r14, vr2
003c50  6a300522  vor.s.mz vr0{mr1}, r10, vr0
003c54  6a324522  vor.s.mz vr4{mr1}, r10, vr4
003c58  ea313522  vor.s.mz vr3{mr1}, r10, vr3
003c5c  6a312522  vor.s.mz vr2{mr1}, r10, vr2
003c60  06100020  vfloat2fp16_l.rz vr0, vr0
003c64  86d10120  vfloat2fp16_h.rz vr3, vr3
003c68  06500120  vfloat2fp16_h.rz vr0, vr2
003c6c  86110220  vfloat2fp16_l.rz vr3, vr4
003c70  6ab00902  vand.s.mz vr0{mr1}, r19, vr0
003c74  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
003c78  eab01002  vand.s.mz vr1{mr1}, r1, vr1
003c7c  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
003c80  46800802  vstore.mz vr0{mr1}, 0(r17)
003c84  9f888800  addli r17, r17, 64
003c88  3bbd07fe  bneq r15, zero, -180
003c8c  9f018fd6  addli r3, r30, -5312
003c90  eb570f00  load.d r[16:17], 0(r30)
003c94  2b0100f0  lui r2, 983040
003c98  9f8d0c00  addli r27, r25, 0
003c9c  6bdb0100  load.d r[23:24], 0(r3)
003ca0  00a00000  mfence { lm }
003ca4  8ba76711  add.ul r[16:17], r[16:17], r[23:24]
003ca8  9f0b0d00  addli r23, r26, 0
003cac  1f0b0003  addli r22, zero, 384
003cb0  17912b00  or r2, r23, r2
003cb4  7fb12701  s_lm2gm r2, r18, 0(r[16:17])
003cb8  1f010fd5  addli r2, r30, -5504
003cbc  00a00200  mfence { lm, gm }
003cc0  63481f00  loadli.w r16,  12(r30)
003cc4  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
003cc8  db20ffff  j -1788
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
003d58  4b37c112  ble.s r2, r12, 9676
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
003e48  db9b0400  j 9436
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
004120  9f838100  addli r7, r3, 64
004124  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
004128  1f034300  addli r6, r6, 32
00412c  9f810101  addli r3, r3, 128
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
0041c8  46801202  vstore.mz vr1{mr1}, 0(r5)
0041cc  9f828200  addli r5, r5, 64
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
004278  bfb26211  blt.s r5, r22, 8364
00427c  8b903d20  mul.s r1, r27, r3
004280  1b451100  srli r10, r2, 1
004284  1b312200  slli r2, r4, 2
004288  9f068fd7  addli r13, r30, -5184
00428c  1b361200  slli r12, r4, 1
004290  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004294  ab5c0100  lui r25, 21
004298  2b590100  lui r18, 21
00429c  1f040000  addli r8, zero, 0
0042a0  9bc51a00  srli r11, r21, 1
0042a4  9f787000  addli r17, zero, 63
0042a8  1f0a0005  addli r20, zero, 640
0042ac  9f0b8000  addli r23, zero, 64
0042b0  1f0c4000  addli r24, zero, 32
0042b4  1f0e0003  addli r28, zero, 384
0042b8  67081fd6  storeli.w r1, -5248(r30)
0042bc  9f004200  addli r1, r4, 32
0042c0  0b11d110  add.s r2, r2, r13
0042c4  8b11d610  add.s r3, r12, r13
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
004314  0b14a410  add.s r8, r8, r10
004318  3f200401  blt.s r8, r16, 8
00431c  5b17f9ff  j -14152
004320  0b11b410  add.s r2, r8, r11
004324  cb1f28fe  ble.s r16, r2, -28
004328  e3001f00  loadli.w r1,  8(r30)
00432c  8b01a430  div.u r3, r8, r10
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
00435c  17112600  or r2, r12, r2
004360  0b275710  add.ul r[15:16], r[15:16], r[6:7]
004364  7f21d700  l_gm2lm r2, r13, 0(r[15:16])
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
0043d0  0b973610  add.s r14, r13, r3
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
00455c  8b993610  add.s r19, r13, r3
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
0046e8  0b979610  add.s r14, r13, r9
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
0048f4  42900402  vload_mask16.mz vr0{mr1}, 0(r9)
0048f8  9f808400  addli r1, r9, 64
0048fc  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
004900  9f874700  addli r15, r15, 32
004904  9f840401  addli r9, r9, 128
004908  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00490c  93804704  setlt.u r1, r15, r4
004910  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
004914  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
004918  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
00491c  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
004920  06110000  vfloat2fp16_l.rn vr2, vr0
004924  06d10000  vfloat2fp16_h.rn vr2, vr1
004928  46002702  vstore.mz vr2{mr1}, 0(r14)
00492c  1f078700  addli r14, r14, 64
004930  3b9f00fe  bneq r1, zero, -60
004934  6b510f00  load.d r[3:4], 0(r30)
004938  ab0000f0  lui r1, 983040
00493c  00a00000  mfence { lm }
004940  97101600  or r1, r12, r1
004944  0b215110  add.ul r[3:4], r[3:4], r[6:7]
004948  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
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
0049dc  4ba5110c  ble.s r3, r1, 6472
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
004aa0  db100300  j 6276
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
004d40  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
004d44  1f8c8900  addli r24, r19, 64
004d48  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
004d4c  9f8b4b00  addli r23, r23, 32
004d50  9f890901  addli r19, r19, 128
004d54  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
004d58  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
004d5c  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
004d60  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
004d64  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
004d68  86910000  vfloat2fp16_l.rn vr3, vr1
004d6c  86510100  vfloat2fp16_h.rn vr3, vr2
004d70  46003a02  vstore.mz vr3{mr1}, 0(r20)
004d74  1f0a8a00  addli r20, r20, 64
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
004df4  cbc4110a  ble.s r3, r1, 5424
004df8  63012f00  loadli.w r2,  16(r30)
004dfc  e3412f00  loadli.w r3,  20(r30)
004e00  1f062000  addli r12, zero, 16
004e04  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004e08  1f140000  addli r8, zero, 1
004e0c  9f068fd7  addli r13, r30, -5184
004e10  9f050002  addli r11, zero, 256
004e14  2b08807f  lui r16, 522240
004e18  ab08c07f  lui r17, 523264
004e1c  1f090001  addli r18, zero, 128
004e20  9f098000  addli r19, zero, 64
004e24  1f0a4000  addli r20, zero, 32
004e28  9b321100  slli r5, r2, 1
004e2c  0b123110  add.s r4, r2, r3
004e30  33010108  fix2float.rn r2, r2
004e34  1bb31100  slli r6, r3, 1
004e38  67042fd4  storeli.w r2, -5568(r30)
004e3c  1f71f2ff  addli r2, r4, -1
004e40  67085fd4  storeli.w r5, -5504(r30)
004e44  8b133130  div.s r7, r2, r3
004e48  2bf1ffff  lui r2, 1048575
004e4c  ab710000  lui r3, 7
004e50  1b15f1ff  ori r10, r2, 4095
004e54  1f010fd7  addli r2, r30, -5248
004e58  9b91f1ff  ori r3, r3, 4095
004e5c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004e60  6a200622  vor.u.mz vr0{mr1}, r12, vr0
004e64  1f018fd6  addli r2, r30, -5312
004e68  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004e6c  2b01ffff  lui r2, 1048560
004e70  db080000  j 68
004e74  9f048fd5  addli r9, r30, -5440
004e78  6b520f00  load.d r[5:6], 0(r30)
004e7c  9f068fd7  addli r13, r30, -5184
004e80  ebda0400  load.d r[22:23], 0(r9)
004e84  00a00000  mfence { lm }
004e88  80540102  load_param_i r9, 2
004e8c  8b901410  add.s r1, r9, r1
004e90  8b2a5211  add.ul r[22:23], r[5:6], r[22:23]
004e94  e3020fd5  loadli.w r5,  -5504(r30)
004e98  2b0200f0  lui r4, 983040
004e9c  17924200  or r4, r5, r4
004ea0  7fb2da00  s_lm2gm r4, r13, 0(r[22:23])
004ea4  00a00200  mfence { lm, gm }
004ea8  63421f00  loadli.w r4,  12(r30)
004eac  3fa04000  blt.s r1, r4, 8
004eb0  db8e0200  j 5236
004eb4  63021f00  loadli.w r4,  8(r30)
004eb8  9f047fd6  addli r9, r30, -5320
004ebc  0b924010  add.s r4, r1, r4
004ec0  0b12f220  mul.s r4, r4, r15
004ec4  b31a0228  sext_int2long r[22:23], r4
004ec8  2b0200f0  lui r4, 983040
004ecc  97bb8a02  sll.d r[24:25], r[22:23], r8
004ed0  ebda0400  load.d r[22:23], 0(r9)
004ed4  17924200  or r4, r5, r4
004ed8  9f048fd5  addli r9, r30, -5440
004edc  73b07401  store.d r[24:25], 0(r9)
004ee0  8baa7a11  add.ul r[22:23], r[22:23], r[24:25]
004ee4  7fa2da00  l_gm2lm r4, r13, 0(r[22:23])
004ee8  00a00200  mfence { lm, gm }
004eec  bfdc8300  blt.s r7, r8, 820
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
004f4c  7a120040  vextracti.f r4, 0(vr0)
004f50  fa920040  vextracti.f r5, 0(vr1)
004f54  8bed4d10  add.f.rn r27, r27, r4
004f58  0b6d5d10  add.f.rn r26, r26, r5
004f5c  373b7e00  beq r28, r7, 716
004f60  1f020e00  addli r4, r28, 0
004f64  3730b700  beq r14, r11, 12
004f68  1722ae00  xor r4, r28, r10
004f6c  0b924310  add.s r4, r7, r4
004f70  9f020fd7  addli r5, r30, -5248
004f74  8b14e220  mul.s r9, r4, r14
004f78  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
004f7c  8b949718  sub.s r9, r15, r9
004f80  8b9ae440  min.s r21, r9, r14
004f84  92322002  vadd.s.mz vr5{mr1}, zero, vr2
004f88  12322002  vadd.s.mz vr4{mr1}, zero, vr2
004f8c  92312002  vadd.s.mz vr3{mr1}, zero, vr2
004f90  bfcd8afe  blt.s r21, r8, -144
004f94  8b1b4320  mul.s r23, r6, r4
004f98  1f020fd7  addli r4, r30, -5248
004f9c  ab960100  lui r13, 25
004fa0  1f0b0000  addli r22, zero, 0
004fa4  9f048fd7  addli r9, r30, -5184
004fa8  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
004fac  9f860600  addli r13, r13, 0
004fb0  12315002  vadd.s.mz vr2{mr1}, zero, vr5
004fb4  92315002  vadd.s.mz vr3{mr1}, zero, vr5
004fb8  12325002  vadd.s.mz vr4{mr1}, zero, vr5
004fbc  0b9c7611  add.s r24, r13, r23
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
004fe8  6a357102  vand.s.mz vr10{mr1}, r2, vr7
004fec  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
004ff0  6a336102  vand.s.mz vr6{mr1}, r2, vr6
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
00501c  12b48102  vadd.s.mz vr8{mr1}, r3, vr8
005020  92b49102  vadd.s.mz vr9{mr1}, r3, vr9
005024  ea338102  vand.s.mz vr7{mr1}, r2, vr8
005028  661403c0  vabs.f vr8, vr6
00502c  6a339102  vand.s.mz vr6{mr1}, r2, vr9
005030  eaa30834  vor.u.mh vr7{mr2}, r17, vr0
005034  72218842  vlt.u.mz mr2{mr1}, r16, vr8
005038  6aa30834  vor.u.mh vr6{mr2}, r17, vr0
00503c  4a840c02  vloads.mz vr8{mr1}, 0(r25)
005040  9f0c8200  addli r25, r4, 64
005044  c2840c02  vload.mz vr9{mr1}, 0(r25)
005048  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
00504c  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
005050  6a336102  vand.s.mz vr6{mr1}, r2, vr6
005054  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
005058  ea349102  vand.s.mz vr9{mr1}, r2, vr9
00505c  46007202  vstore.mz vr7{mr1}, 0(r4)
005060  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005064  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005068  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
00506c  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
005070  6a348102  vand.s.mz vr8{mr1}, r2, vr8
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
0050a4  92b49102  vadd.s.mz vr9{mr1}, r3, vr9
0050a8  92b5b102  vadd.s.mz vr11{mr1}, r3, vr11
0050ac  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
0050b0  ea349102  vand.s.mz vr9{mr1}, r2, vr9
0050b4  6a35b102  vand.s.mz vr10{mr1}, r2, vr11
0050b8  eaa40834  vor.u.mh vr9{mr2}, r17, vr0
0050bc  72218842  vlt.u.mz mr2{mr1}, r16, vr8
0050c0  6aa50834  vor.u.mh vr10{mr2}, r17, vr0
0050c4  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
0050c8  ea34a102  vand.s.mz vr9{mr1}, r2, vr10
0050cc  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0050d0  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0050d4  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0050d8  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0050dc  46808c02  vstore.mz vr8{mr1}, 0(r25)
0050e0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0050e4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0050e8  4be85afe  ble.s r21, r5, -488
0050ec  9f020c01  addli r5, r24, 128
0050f0  9f0c0201  addli r25, r4, 128
0050f4  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0050f8  1f028201  addli r4, r4, 192
0050fc  1f0b0b01  addli r22, r22, 128
005100  9f860602  addli r13, r13, 256
005104  9f840402  addli r9, r9, 256
005108  6a237622  vor.u.mz vr6{mr1}, r12, vr7
00510c  4a840202  vloads.mz vr8{mr1}, 0(r5)
005110  c2840c02  vload.mz vr9{mr1}, 0(r25)
005114  9f028c01  addli r5, r24, 192
005118  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
00511c  6a309102  vand.s.mz vr0{mr1}, r2, vr9
005120  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
005124  6a348102  vand.s.mz vr8{mr1}, r2, vr8
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
005150  12b00102  vadd.s.mz vr0{mr1}, r3, vr0
005154  12b5a102  vadd.s.mz vr10{mr1}, r3, vr10
005158  ea340102  vand.s.mz vr9{mr1}, r2, vr0
00515c  661004c0  vabs.f vr0, vr8
005160  6a34a102  vand.s.mz vr8{mr1}, r2, vr10
005164  eaa47834  vor.u.mh vr9{mr2}, r17, vr7
005168  72210842  vlt.u.mz mr2{mr1}, r16, vr0
00516c  6aa47834  vor.u.mh vr8{mr2}, r17, vr7
005170  4a800202  vloads.mz vr0{mr1}, 0(r5)
005174  42050202  vload.mz vr10{mr1}, 0(r4)
005178  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
00517c  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
005180  6a35a102  vand.s.mz vr10{mr1}, r2, vr10
005184  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
005188  6a348102  vand.s.mz vr8{mr1}, r2, vr8
00518c  46809c02  vstore.mz vr9{mr1}, 0(r25)
005190  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
005194  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
005198  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
00519c  6a300102  vand.s.mz vr0{mr1}, r2, vr0
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
0051c8  12b5a102  vadd.s.mz vr10{mr1}, r3, vr10
0051cc  92b5b102  vadd.s.mz vr11{mr1}, r3, vr11
0051d0  72211842  vlt.u.mz mr2{mr1}, r16, vr1
0051d4  6a35a102  vand.s.mz vr10{mr1}, r2, vr10
0051d8  ea30b102  vand.s.mz vr1{mr1}, r2, vr11
0051dc  6aa57834  vor.u.mh vr10{mr2}, r17, vr7
0051e0  72210842  vlt.u.mz mr2{mr1}, r16, vr0
0051e4  eaa07834  vor.u.mh vr1{mr2}, r17, vr7
0051e8  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
0051ec  ea331102  vand.s.mz vr7{mr1}, r2, vr1
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
00521c  db9cffff  j -796
005220  1f0d0000  addli r26, zero, 0
005224  9f0d0000  addli r27, zero, 0
005228  00a00000  mfence { lm }
00522c  3fa187fe  blt.s r15, r8, -952
005230  e3028fd4  loadli.w r5,  -5568(r30)
005234  2bab0100  lui r22, 26
005238  abbb0100  lui r23, 27
00523c  1f020000  addli r4, zero, 0
005240  1f0b0b00  addli r22, r22, 0
005244  9f8b0b00  addli r23, r23, 0
005248  8f865d18  div.f.rn r13, r27, r5
00524c  8f045d18  div.f.rn r9, r26, r5
005250  e3023f00  loadli.w r5,  24(r30)
005254  8bead620  mul.f.rn r21, r13, r13
005258  8be60658  neg.f r13, r13
00525c  8be45419  sub.f.rn r9, r9, r21
005260  9f0a8fd7  addli r21, r30, -5184
005264  8be45410  add.f.rn r9, r9, r5
005268  ab02803f  lui r5, 260096
00526c  8f840408  sqrt.f.rn r9, r9
005270  8f849218  div.f.rn r9, r5, r9
005274  42820a02  vload.mz vr4{mr1}, 0(r21)
005278  ca020b02  vloads.mz vr5{mr1}, 0(r22)
00527c  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
005280  4a830b02  vloads.mz vr6{mr1}, 0(r23)
005284  1f0c4200  addli r24, r4, 32
005288  ea212622  vor.u.mz vr3{mr1}, r12, vr2
00528c  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
005290  6a344102  vand.s.mz vr8{mr1}, r2, vr4
005294  92937602  vadd.f.mz.rn vr7{mr1}, r13, vr7
005298  12948602  vadd.f.mz.rn vr8{mr1}, r13, vr8
00529c  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
0052a0  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
0052a4  6a355102  vand.s.mz vr10{mr1}, r2, vr5
0052a8  ea326102  vand.s.mz vr5{mr1}, r2, vr6
0052ac  8a937402  vmul.f.mz.rn vr7{mr1}, r9, vr7
0052b0  0a938402  vmul.f.mz.rn vr6{mr1}, r9, vr8
0052b4  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
0052b8  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
0052bc  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
0052c0  6a337402  vand.s.mz vr6{mr1}, r8, vr7
0052c4  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
0052c8  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
0052cc  ea337402  vand.s.mz vr7{mr1}, r8, vr7
0052d0  661202c0  vabs.f vr4, vr4
0052d4  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
0052d8  12b36102  vadd.s.mz vr6{mr1}, r3, vr6
0052dc  e69202c0  vabs.f vr5, vr5
0052e0  72214842  vlt.u.mz mr2{mr1}, r16, vr4
0052e4  6a336102  vand.s.mz vr6{mr1}, r2, vr6
0052e8  92b37102  vadd.s.mz vr7{mr1}, r3, vr7
0052ec  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
0052f0  6a327102  vand.s.mz vr4{mr1}, r2, vr7
0052f4  72215842  vlt.u.mz mr2{mr1}, r16, vr5
0052f8  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
0052fc  6aa22834  vor.u.mh vr4{mr2}, r17, vr2
005300  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
005304  46804a02  vstore.mz vr4{mr1}, 0(r21)
005308  cbbd87fd  ble.s r15, r24, -1172
00530c  1f0c8b00  addli r24, r22, 64
005310  9f8c8a00  addli r25, r21, 64
005314  1f028200  addli r4, r4, 64
005318  1f0b0b01  addli r22, r22, 128
00531c  9f8a0a01  addli r21, r21, 128
005320  4a020c02  vloads.mz vr4{mr1}, 0(r24)
005324  1f8c8b00  addli r24, r23, 64
005328  c2820c02  vload.mz vr5{mr1}, 0(r25)
00532c  9f8b0b01  addli r23, r23, 128
005330  4a030c02  vloads.mz vr6{mr1}, 0(r24)
005334  eeb351a2  vsll.s.mz vr7{mr1}, vr3, vr5
005338  ea325102  vand.s.mz vr5{mr1}, r2, vr5
00533c  92937602  vadd.f.mz.rn vr7{mr1}, r13, vr7
005340  12945602  vadd.f.mz.rn vr8{mr1}, r13, vr5
005344  eeb441a2  vsll.s.mz vr9{mr1}, vr3, vr4
005348  6a354102  vand.s.mz vr10{mr1}, r2, vr4
00534c  8a937402  vmul.f.mz.rn vr7{mr1}, r9, vr7
005350  eeb261a2  vsll.s.mz vr5{mr1}, vr3, vr6
005354  6a326102  vand.s.mz vr4{mr1}, r2, vr6
005358  0a938402  vmul.f.mz.rn vr6{mr1}, r9, vr8
00535c  a6929302  vmac.f.mz.rn vr5{mr1}, vr7, vr9
005360  2612a302  vmac.f.mz.rn vr4{mr1}, vr6, vr10
005364  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
005368  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
00536c  6a336402  vand.s.mz vr6{mr1}, r8, vr6
005370  ea337402  vand.s.mz vr7{mr1}, r8, vr7
005374  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
005378  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
00537c  e69202c0  vabs.f vr5, vr5
005380  661202c0  vabs.f vr4, vr4
005384  12b36102  vadd.s.mz vr6{mr1}, r3, vr6
005388  92b37102  vadd.s.mz vr7{mr1}, r3, vr7
00538c  72215842  vlt.u.mz mr2{mr1}, r16, vr5
005390  6a336102  vand.s.mz vr6{mr1}, r2, vr6
005394  ea327102  vand.s.mz vr5{mr1}, r2, vr7
005398  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
00539c  72214842  vlt.u.mz mr2{mr1}, r16, vr4
0053a0  eaa22834  vor.u.mh vr5{mr2}, r17, vr2
0053a4  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
0053a8  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
0053ac  46802c02  vstore.mz vr2{mr1}, 0(r25)
0053b0  3f1bf2fe  blt.s r4, r15, -316
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
0053ec  cbec1106  ble.s r3, r1, 3896
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
005470  dbd60100  j 3764
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
00571c  1f888c00  addli r16, r25, 64
005720  9f088c00  addli r17, r24, 64
005724  9f8b8b00  addli r23, r23, 64
005728  9f8c0c01  addli r25, r25, 128
00572c  1f0c0c01  addli r24, r24, 128
005730  4a010802  vloads.mz vr2{mr1}, 0(r16)
005734  1f088d00  addli r16, r26, 64
005738  c2810802  vload.mz vr3{mr1}, 0(r17)
00573c  1f0d0d01  addli r26, r26, 128
005740  4a020802  vloads.mz vr4{mr1}, 0(r16)
005744  86b20100  vfp162float_l.rn vr5, vr3
005748  86f10100  vfp162float_h.rn vr3, vr3
00574c  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
005750  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
005754  06330100  vfp162float_l.rn vr6, vr2
005758  06710100  vfp162float_h.rn vr2, vr2
00575c  8a925a02  vmul.f.mz.rn vr5{mr1}, r21, vr5
005760  8a913a02  vmul.f.mz.rn vr3{mr1}, r21, vr3
005764  86330200  vfp162float_l.rn vr7, vr4
005768  06720200  vfp162float_h.rn vr4, vr4
00576c  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
005770  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
005774  86900300  vfloat2fp16_l.rn vr1, vr7
005778  86500200  vfloat2fp16_h.rn vr1, vr4
00577c  46801802  vstore.mz vr1{mr1}, 0(r17)
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
0057c0  5bef0000  j 1912
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
005810  3fdc5104  blt.s r3, r5, 2836
005814  e3000fd7  loadli.w r1,  -5248(r30)
005818  80510102  load_param_i r3, 2
00581c  1b441500  srli r8, r10, 1
005820  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005824  ab180200  lui r17, 33
005828  ab7b0200  lui r23, 39
00582c  2b7e0200  lui r28, 39
005830  9f020000  addli r5, zero, 0
005834  9b342200  slli r9, r4, 2
005838  9f068fd7  addli r13, r30, -5184
00583c  1f090005  addli r18, zero, 640
005840  1f0a0001  addli r20, zero, 128
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
005878  0b153110  add.s r10, r2, r3
00587c  ab510200  lui r3, 37
005880  9b9000f8  ori r1, r1, 3968
005884  9f810100  addli r3, r3, 0
005888  67081fd4  storeli.w r1, -5504(r30)
00588c  8b153110  add.s r11, r2, r3
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
0058b8  db63f6ff  j -19684
0058bc  0b918210  add.s r2, r5, r8
0058c0  cb1f28fe  ble.s r16, r2, -28
0058c4  e3001f00  loadli.w r1,  8(r30)
0058c8  0b111110  add.s r2, r2, r1
0058cc  e3008fd6  loadli.w r1,  -5312(r30)
0058d0  1b31b100  slli r2, r2, 11
0058d4  17111100  or r2, r2, r1
0058d8  9f200000  addli r1, zero, 2
0058dc  33110128  sext_int2long r[3:4], r2
0058e0  97371102  sll.d r[16:17], r[3:4], r1
0058e4  9f007fd6  addli r1, r30, -5320
0058e8  2b0100f0  lui r2, 983040
0058ec  ebdc0000  load.d r[26:27], 0(r1)
0058f0  17912400  or r2, r9, r2
0058f4  8bacfc10  add.ul r[26:27], r[26:27], r[16:17]
0058f8  7fa1dc00  l_gm2lm r2, r13, 0(r[26:27])
0058fc  00a00200  mfence { lm, gm }
005900  e3000fd7  loadli.w r1,  -5248(r30)
005904  3ba60000  bneq r1, zero, 392
005908  9f008fd5  addli r1, r30, -5440
00590c  e3010fd5  loadli.w r3,  -5504(r30)
005910  1f010000  addli r2, zero, 0
005914  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
005918  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00591c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
005920  12323002  vadd.s.mz vr4{mr1}, zero, vr3
005924  0b171111  add.s r14, r2, r17
005928  0b962610  add.s r12, r13, r2
00592c  9f810101  addli r3, r3, 128
005930  1f010104  addli r2, r2, 512
005934  9f000701  addli r1, r14, 128
005938  4a100702  vloads_mask16.mz vr0{mr1}, 0(r14)
00593c  1f038700  addli r6, r14, 64
005940  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
005944  9f098601  addli r19, r12, 192
005948  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
00594c  9f008701  addli r1, r14, 192
005950  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
005954  1f038600  addli r6, r12, 64
005958  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
00595c  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
005960  9f000601  addli r1, r12, 128
005964  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
005968  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00596c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005970  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
005974  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005978  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00597c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005980  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
005984  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
005988  9f000702  addli r1, r14, 256
00598c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005990  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
005994  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
005998  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
00599c  1f030603  addli r6, r12, 384
0059a0  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0059a4  9f008702  addli r1, r14, 320
0059a8  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
0059ac  9f090602  addli r19, r12, 256
0059b0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0059b4  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0059b8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0059bc  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0059c0  9f000703  addli r1, r14, 384
0059c4  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
0059c8  1f078703  addli r14, r14, 448
0059cc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0059d0  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0059d4  9f008602  addli r1, r12, 320
0059d8  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
0059dc  1f068603  addli r12, r12, 448
0059e0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0059e4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0059e8  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
0059ec  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0059f0  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
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
005a24  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
005a28  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005a2c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005a30  bbdb00fe  bneq r1, zero, -268
005a34  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005a38  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005a3c  9f000002  addli r1, zero, 256
005a40  6af100c0  vsrl.p vr2, r1, vr0
005a44  eaf110c0  vsrl.p vr3, r1, vr1
005a48  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a4c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a50  6a710ac0  vsrl.p vr2, r20, vr0
005a54  ea711ac0  vsrl.p vr3, r20, vr1
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
005a88  5b630000  j 792
005a8c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005a90  abf0ffff  lui r1, 1048575
005a94  1f010000  addli r2, zero, 0
005a98  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005a9c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005aa0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005aa4  9b9100f8  ori r3, r1, 3968
005aa8  0b972810  add.s r14, r17, r2
005aac  0b962610  add.s r12, r13, r2
005ab0  9f810101  addli r3, r3, 128
005ab4  1f010104  addli r2, r2, 512
005ab8  1f0d0731  addli r26, r14, 6272
005abc  1f030730  addli r6, r14, 6144
005ac0  9f008731  addli r1, r14, 6336
005ac4  9f0c0618  addli r25, r12, 3072
005ac8  ca130d02  vloads_mask16.mz vr7{mr1}, 0(r26)
005acc  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
005ad0  1f038730  addli r6, r14, 6208
005ad4  ca940002  vloads_mask16.mz vr9{mr1}, 0(r1)
005ad8  9f008618  addli r1, r12, 3136
005adc  1f0d8619  addli r26, r12, 3264
005ae0  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
005ae4  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
005ae8  1f030619  addli r6, r12, 3200
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
005b14  1f030732  addli r6, r14, 6400
005b18  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
005b1c  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
005b20  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005b24  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
005b28  9f0c061a  addli r25, r12, 3328
005b2c  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
005b30  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005b34  9f00061b  addli r1, r12, 3456
005b38  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
005b3c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
005b40  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
005b44  1f038732  addli r6, r14, 6464
005b48  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005b4c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005b50  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
005b54  1f030733  addli r6, r14, 6528
005b58  1f078733  addli r14, r14, 6592
005b5c  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
005b60  1f03861a  addli r6, r12, 3392
005b64  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
005b68  1f06861b  addli r12, r12, 3520
005b6c  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
005b70  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005b74  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
005b78  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005b7c  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
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
005bb0  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
005bb4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005bb8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005bbc  bb3b03fe  bneq r6, zero, -276
005bc0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005bc4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005bc8  9f000002  addli r1, zero, 256
005bcc  1f060000  addli r12, zero, 0
005bd0  eaf110c0  vsrl.p vr3, r1, vr1
005bd4  6af100c0  vsrl.p vr2, r1, vr0
005bd8  abf0ffff  lui r1, 1048575
005bdc  1b9d00f8  ori r26, r1, 3968
005be0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005be4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005be8  ea711ac0  vsrl.p vr3, r20, vr1
005bec  6a710ac0  vsrl.p vr2, r20, vr0
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
005c30  8b9cc810  add.s r25, r17, r12
005c34  0b97c610  add.s r14, r13, r12
005c38  1f0d0d01  addli r26, r26, 128
005c3c  1f060604  addli r12, r12, 512
005c40  9f800c18  addli r1, r25, 3072
005c44  1f830c19  addli r6, r25, 3200
005c48  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
005c4c  9f098701  addli r19, r14, 192
005c50  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
005c54  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
005c58  9f808c18  addli r1, r25, 3136
005c5c  1f838c19  addli r6, r25, 3264
005c60  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
005c64  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
005c68  9f000701  addli r1, r14, 128
005c6c  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
005c70  1f038700  addli r6, r14, 64
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
005ca4  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
005ca8  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
005cac  9f808c1a  addli r1, r25, 3392
005cb0  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
005cb4  9f090702  addli r19, r14, 256
005cb8  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005cbc  1f030703  addli r6, r14, 384
005cc0  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
005cc4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005cc8  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
005ccc  9f800c1b  addli r1, r25, 3456
005cd0  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
005cd4  9f8c8c1b  addli r25, r25, 3520
005cd8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005cdc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005ce0  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
005ce4  9f008702  addli r1, r14, 320
005ce8  4a950c02  vloads_mask16.mz vr10{mr1}, 0(r25)
005cec  1f078703  addli r14, r14, 448
005cf0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005cf4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005cf8  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
005cfc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005d00  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
005d04  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005d08  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005d0c  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
005d10  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005d14  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
005d18  93002d05  setlt.u r1, r26, r18
005d1c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005d20  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005d24  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005d28  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005d2c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005d30  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005d34  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
005d38  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005d3c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005d40  bbcb00fe  bneq r1, zero, -272
005d44  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005d48  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005d4c  9f000002  addli r1, zero, 256
005d50  6af100c0  vsrl.p vr2, r1, vr0
005d54  eaf110c0  vsrl.p vr3, r1, vr1
005d58  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d5c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d60  6a710ac0  vsrl.p vr2, r20, vr0
005d64  ea711ac0  vsrl.p vr3, r20, vr1
005d68  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d6c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d70  6af10ac0  vsrl.p vr2, r21, vr0
005d74  eaf11ac0  vsrl.p vr3, r21, vr1
005d78  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d7c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d80  6a710bc0  vsrl.p vr2, r22, vr0
005d84  ea711bc0  vsrl.p vr3, r22, vr1
005d88  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d8c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d90  fa100040  vextracti.f r1, 0(vr0)
005d94  7a960040  vextracti.f r12, 0(vr1)
005d98  0b631110  add.f.rn r6, r2, r1
005d9c  8be1c110  add.f.rn r3, r3, r12
005da0  8b807230  div.u r1, r5, r7
005da4  00360002  core_id r12
005da8  1f010000  addli r2, zero, 0
005dac  9bb06000  slli r1, r1, 6
005db0  9b800004  andi r1, r1, 64
005db4  9790c000  or r1, r1, r12
005db8  1bb62000  slli r12, r1, 2
005dbc  9b80e007  andi r1, r1, 126
005dc0  0b177611  add.s r14, r12, r23
005dc4  9bb02000  slli r1, r1, 2
005dc8  73606700  stores.w r6, 0(r14)
005dcc  0b13c611  add.s r6, r12, r28
005dd0  1b164600  ori r12, r12, 4
005dd4  73603300  stores.w r3, 0(r6)
005dd8  8b117611  add.s r3, r12, r23
005ddc  0b937011  add.s r6, r1, r23
005de0  0b16c611  add.s r12, r12, r28
005de4  8b90c011  add.s r1, r1, r28
005de8  00a00300  mfence { lm, sm, gm }
005dec  80210c04  csr_set csr3, r24
005df0  00d00100  sync_group
005df4  eb5c0f00  load.d r[26:27], 0(r30)
005df8  efc10100  loads.w r3, 0(r3)
005dfc  6f430300  loads.w r6, 0(r6)
005e00  6f460600  loads.w r12, 0(r12)
005e04  efc00000  loads.w r1, 0(r1)
005e08  8ba7fc10  add.ul r[16:17], r[26:27], r[16:17]
005e0c  1f0d0000  addli r26, zero, 0
005e10  8be16110  add.f.rn r3, r3, r6
005e14  8b601610  add.f.rn r1, r12, r1
005e18  2b06003a  lui r12, 237568
005e1c  0be3c120  mul.f.rn r6, r3, r12
005e20  8be0c020  mul.f.rn r1, r1, r12
005e24  8b616320  mul.f.rn r3, r6, r6
005e28  0b660358  neg.f r12, r6
005e2c  8be03018  sub.f.rn r1, r1, r3
005e30  e3013f00  loadli.w r3,  24(r30)
005e34  8be03010  add.f.rn r1, r1, r3
005e38  ab01803f  lui r3, 260096
005e3c  8f800008  sqrt.f.rn r1, r1
005e40  8f811118  div.f.rn r3, r3, r1
005e44  0b172510  add.s r14, r10, r2
005e48  8b9c2610  add.s r25, r13, r2
005e4c  0b932510  add.s r6, r11, r2
005e50  9f098700  addli r19, r14, 64
005e54  9f808c00  addli r1, r25, 64
005e58  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
005e5c  4a110702  vloads_mask16.mz vr2{mr1}, 0(r14)
005e60  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
005e64  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
005e68  9f098300  addli r19, r6, 64
005e6c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
005e70  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
005e74  9f094d00  addli r19, r26, 32
005e78  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
005e7c  93093207  setle.u r19, r4, r19
005e80  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
005e84  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
005e88  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
005e8c  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
005e90  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
005e94  46904c02  vstore_mask16.mz vr4{mr1}, 0(r25)
005e98  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005e9c  bb910900  bneq r19, zero, 100
005ea0  9f800c01  addli r1, r25, 128
005ea4  9f898c01  addli r19, r25, 192
005ea8  9f0c0701  addli r25, r14, 128
005eac  1f078701  addli r14, r14, 192
005eb0  1f0d8d00  addli r26, r26, 64
005eb4  1f010102  addli r2, r2, 256
005eb8  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
005ebc  9f0c0301  addli r25, r6, 128
005ec0  1f038301  addli r6, r6, 192
005ec4  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
005ec8  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
005ecc  4a120702  vloads_mask16.mz vr4{mr1}, 0(r14)
005ed0  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
005ed4  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
005ed8  13034d04  setlt.u r6, r26, r4
005edc  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
005ee0  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
005ee4  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
005ee8  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
005eec  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
005ef0  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
005ef4  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
005ef8  46905902  vstore_mask16.mz vr5{mr1}, 0(r19)
005efc  3b2d03fe  bneq r6, zero, -184
005f00  ab0000f0  lui r1, 983040
005f04  00a00000  mfence { lm }
005f08  97901400  or r1, r9, r1
005f0c  ffb0d700  s_lm2gm r1, r13, 0(r[16:17])
005f10  00a00200  mfence { lm, gm }
005f14  63481f00  loadli.w r16,  12(r30)
005f18  5b33ffff  j -1640
005f1c  63012f00  loadli.w r2,  16(r30)
005f20  ab0100f0  lui r3, 983040
005f24  1b312100  slli r2, r2, 2
005f28  17113100  or r2, r2, r3
005f2c  ab910200  lui r3, 41
005f30  9f810108  addli r3, r3, 1024
005f34  7f013400  l_gm2sm r2, r3, 0(r[9:10])
005f38  2bf10000  lui r2, 15
005f3c  e3411f00  loadli.w r3,  12(r30)
005f40  00200300  mfence { sm, gm }
005f44  1b11f1ff  ori r2, r2, 4095
005f48  80210104  csr_set csr3, r2
005f4c  00d00100  sync_group
005f50  4bdf1100  ble.s r3, r1, 980
005f54  e3012f00  loadli.w r3,  16(r30)
005f58  e3422f00  loadli.w r5,  20(r30)
005f5c  ab780200  lui r17, 39
005f60  2b890200  lui r18, 40
005f64  ab990200  lui r19, 41
005f68  9f038fd7  addli r7, r30, -5184
005f6c  1f140000  addli r8, zero, 1
005f70  1f050002  addli r10, zero, 256
005f74  1f060001  addli r12, zero, 128
005f78  9f068000  addli r13, zero, 64
005f7c  1f084000  addli r16, zero, 32
005f80  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005f84  9f880808  addli r17, r17, 1024
005f88  1f090908  addli r18, r18, 1024
005f8c  9f890908  addli r19, r19, 1024
005f90  0b925110  add.s r4, r3, r5
005f94  9bb52100  slli r11, r3, 2
005f98  33810108  fix2float.rn r2, r3
005f9c  9f71f2ff  addli r3, r4, -1
005fa0  1bb22200  slli r4, r5, 2
005fa4  67082fd4  storeli.w r2, -5504(r30)
005fa8  1f010fd7  addli r2, r30, -5248
005fac  670cbfd4  storeli.w r11, -5440(r30)
005fb0  8b925130  div.s r5, r3, r5
005fb4  abf1ffff  lui r3, 1048575
005fb8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005fbc  9b94f1ff  ori r9, r3, 4095
005fc0  5b080000  j 64
005fc4  1f038fd6  addli r6, r30, -5312
005fc8  6b510f00  load.d r[3:4], 0(r30)
005fcc  6b5a0300  load.d r[21:22], 0(r6)
005fd0  00a00000  mfence { lm }
005fd4  00530102  load_param_i r6, 2
005fd8  e3058fd5  loadli.w r11,  -5440(r30)
005fdc  8b101310  add.s r1, r6, r1
005fe0  0b2a4111  add.ul r[21:22], r[3:4], r[21:22]
005fe4  ab0100f0  lui r3, 983040
005fe8  97913500  or r3, r11, r3
005fec  ff317a00  s_lm2gm r3, r7, 0(r[21:22])
005ff0  00a00200  mfence { lm, gm }
005ff4  63411f00  loadli.w r2,  12(r30)
005ff8  3fa02000  blt.s r1, r2, 8
005ffc  5b650000  j 808
006000  63011f00  loadli.w r2,  8(r30)
006004  8b912010  add.s r3, r1, r2
006008  1f210000  addli r2, zero, 2
00600c  8b91f120  mul.s r3, r3, r15
006010  339a0128  sext_int2long r[21:22], r3
006014  ab0100f0  lui r3, 983040
006018  173c2a02  sll.d r[25:26], r[21:22], r2
00601c  1f017fd6  addli r2, r30, -5320
006020  97913500  or r3, r11, r3
006024  6b5a0100  load.d r[21:22], 0(r2)
006028  1f018fd6  addli r2, r30, -5312
00602c  0b2b8a11  add.ul r[23:24], r[21:22], r[25:26]
006030  ff217b00  l_gm2lm r3, r7, 0(r[23:24])
006034  00a00200  mfence { lm, gm }
006038  73308101  store.d r[25:26], 0(r2)
00603c  bf978200  blt.s r5, r8, 484
006040  9f0b0000  addli r23, zero, 0
006044  1f0b0000  addli r22, zero, 0
006048  1f0c0000  addli r24, zero, 0
00604c  db0c0000  j 100
006050  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
006054  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006058  1f1c0c00  addli r24, r24, 1
00605c  6a7105c0  vsrl.p vr2, r10, vr0
006060  ea7115c0  vsrl.p vr3, r10, vr1
006064  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006068  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00606c  6a7106c0  vsrl.p vr2, r12, vr0
006070  ea7116c0  vsrl.p vr3, r12, vr1
006074  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006078  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00607c  6af106c0  vsrl.p vr2, r13, vr0
006080  eaf116c0  vsrl.p vr3, r13, vr1
006084  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006088  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00608c  6a7108c0  vsrl.p vr2, r16, vr0
006090  ea7118c0  vsrl.p vr3, r16, vr1
006094  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006098  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00609c  7a110040  vextracti.f r2, 0(vr0)
0060a0  fa910040  vextracti.f r3, 0(vr1)
0060a4  8beb2b10  add.f.rn r23, r23, r2
0060a8  0b6b3b10  add.f.rn r22, r22, r3
0060ac  b7755c00  beq r24, r5, 380
0060b0  9f010c00  addli r3, r24, 0
0060b4  3730a700  beq r14, r10, 12
0060b8  97219c00  xor r3, r24, r9
0060bc  8b913210  add.s r3, r5, r3
0060c0  1f010fd7  addli r2, r30, -5248
0060c4  0b93e120  mul.s r6, r3, r14
0060c8  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0060cc  0b936718  sub.s r6, r15, r6
0060d0  8b1ce340  min.s r25, r6, r14
0060d4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0060d8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0060dc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0060e0  bfcd8cfe  blt.s r25, r8, -144
0060e4  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0060e8  1f0d0000  addli r26, zero, 0
0060ec  8b1d3220  mul.s r27, r4, r3
0060f0  1f0e8fd7  addli r28, r30, -5184
0060f4  9f850800  addli r11, r17, 0
0060f8  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0060fc  12314002  vadd.s.mz vr2{mr1}, zero, vr4
006100  92314002  vadd.s.mz vr3{mr1}, zero, vr4
006104  8b91b511  add.s r3, r11, r27
006108  0b13be11  add.s r6, r28, r27
00610c  1f818100  addli r2, r3, 64
006110  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
006114  1f8a8101  addli r20, r3, 192
006118  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
00611c  9f0a8301  addli r21, r6, 192
006120  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
006124  1f810101  addli r2, r3, 128
006128  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
00612c  1f0a0301  addli r20, r6, 128
006130  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
006134  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
006138  c2150a02  vload_mask16.mz vr11{mr1}, 0(r20)
00613c  1f018300  addli r2, r6, 64
006140  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
006144  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
006148  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
00614c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
006150  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
006154  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006158  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00615c  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
006160  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
006164  1f018d00  addli r2, r26, 64
006168  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
00616c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
006170  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006174  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
006178  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00617c  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
006180  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
006184  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
006188  4bab2cfe  ble.s r25, r2, -312
00618c  1f8a0102  addli r20, r3, 256
006190  9f8a8102  addli r21, r3, 320
006194  1f010302  addli r2, r6, 256
006198  1f0d0d01  addli r26, r26, 128
00619c  9f850504  addli r11, r11, 512
0061a0  1f0e0e04  addli r28, r28, 512
0061a4  4a100a02  vloads_mask16.mz vr0{mr1}, 0(r20)
0061a8  1f8a0103  addli r20, r3, 384
0061ac  9f818103  addli r3, r3, 448
0061b0  ca920a02  vloads_mask16.mz vr5{mr1}, 0(r21)
0061b4  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
0061b8  ca130a02  vloads_mask16.mz vr7{mr1}, 0(r20)
0061bc  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
0061c0  9f010303  addli r3, r6, 384
0061c4  1f0a8302  addli r20, r6, 320
0061c8  1f038303  addli r6, r6, 448
0061cc  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
0061d0  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
0061d4  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0061d8  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
0061dc  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0061e0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0061e4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0061e8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0061ec  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0061f0  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
0061f4  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0061f8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0061fc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006200  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
006204  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006208  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00620c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
006210  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
006214  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
006218  bf3b9dff  blt.s r26, r25, -276
00621c  dbc6ffff  j -460
006220  1f0b0000  addli r22, zero, 0
006224  9f0b0000  addli r23, zero, 0
006228  00a00000  mfence { lm }
00622c  3fe687fe  blt.s r15, r8, -616
006230  63010fd5  loadli.w r2,  -5504(r30)
006234  9f050000  addli r11, zero, 0
006238  1f0c0000  addli r24, zero, 0
00623c  8f812b18  div.f.rn r3, r23, r2
006240  0f032b18  div.f.rn r6, r22, r2
006244  63013f00  loadli.w r2,  24(r30)
006248  0beb3120  mul.f.rn r22, r3, r3
00624c  8beb0158  neg.f r23, r3
006250  0b636319  sub.f.rn r6, r6, r22
006254  0b632310  add.f.rn r6, r6, r2
006258  2b01803f  lui r2, 260096
00625c  0f030308  sqrt.f.rn r6, r6
006260  0f0b6118  div.f.rn r22, r2, r6
006264  0b932511  add.s r6, r11, r18
006268  8b91b310  add.s r3, r7, r11
00626c  9f0c8300  addli r25, r6, 64
006270  4a110302  vloads_mask16.mz vr2{mr1}, 0(r6)
006274  0b933511  add.s r6, r11, r19
006278  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00627c  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
006280  9f8c8100  addli r25, r3, 64
006284  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
006288  1f038300  addli r6, r6, 64
00628c  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
006290  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
006294  1f034c00  addli r6, r24, 32
006298  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
00629c  92925b02  vadd.f.mz.rn vr5{mr1}, r23, vr5
0062a0  8a101b02  vmul.f.mz.rn vr1{mr1}, r22, vr1
0062a4  8a125b02  vmul.f.mz.rn vr5{mr1}, r22, vr5
0062a8  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
0062ac  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
0062b0  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
0062b4  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
0062b8  4bb467fe  ble.s r15, r6, -756
0062bc  0b13b910  add.s r6, r18, r11
0062c0  8b9cb910  add.s r25, r19, r11
0062c4  1f0c8c00  addli r24, r24, 64
0062c8  9f850502  addli r11, r11, 256
0062cc  1f0d0301  addli r26, r6, 128
0062d0  9f8d0c01  addli r27, r25, 128
0062d4  1f038301  addli r6, r6, 192
0062d8  9f8c8c01  addli r25, r25, 192
0062dc  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
0062e0  1f8d0101  addli r26, r3, 128
0062e4  9f818101  addli r3, r3, 192
0062e8  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
0062ec  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
0062f0  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
0062f4  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
0062f8  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0062fc  92913b02  vadd.f.mz.rn vr3{mr1}, r23, vr3
006300  12924b02  vadd.f.mz.rn vr4{mr1}, r23, vr4
006304  8a113b02  vmul.f.mz.rn vr3{mr1}, r22, vr3
006308  0a124b02  vmul.f.mz.rn vr4{mr1}, r22, vr4
00630c  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
006310  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
006314  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
006318  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
00631c  3f2dfcfe  blt.s r24, r15, -184
006320  db94ffff  j -860
006324  9f0e8fd3  addli sp, r30, -5696
006328  e38f2e2c  loadli.w r31,  5648(sp)
00632c  63cf2e2c  loadli.w r30,  5652(sp)
006330  638e3e2c  loadli.w r28,  5656(sp)
006334  e3cd3e2c  loadli.w r27,  5660(sp)
006338  638d4e2c  loadli.w r26,  5664(sp)
00633c  e3cc4e2c  loadli.w r25,  5668(sp)
006340  638c5e2c  loadli.w r24,  5672(sp)
006344  e3cb5e2c  loadli.w r23,  5676(sp)
006348  638b6e2c  loadli.w r22,  5680(sp)
00634c  e3ca6e2c  loadli.w r21,  5684(sp)
006350  638a7e2c  loadli.w r20,  5688(sp)
006354  e3c97e2c  loadli.w r19,  5692(sp)
006358  9f8e8e2c  addli sp, sp, 5696
00635c  5f800f00  jr r31, 0
006360  00100000  exit
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
