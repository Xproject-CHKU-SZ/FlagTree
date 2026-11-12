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
0001c8  63481f00  loadli.w r16,  12(r30)
0001cc  9f057fd6  addli r11, r30, -5320
0001d0  73b02500  store.d r[3:4], 0(r11)
0001d4  3f511500  blt.s r10, r1, 84
0001d8  1f110000  addli r2, zero, 1
0001dc  37f92004  beq r1, r2, 2652
0001e0  1f210000  addli r2, zero, 2
0001e4  3bb82004  bneq r1, r2, 2572
0001e8  e3403f00  loadli.w r1,  28(r30)
0001ec  37b60012  beq r1, zero, 9612
0001f0  80300002  core_id r1
0001f4  1f210000  addli r2, zero, 2
0001f8  37cf2024  beq r1, r2, 19408
0001fc  1f110000  addli r2, zero, 1
000200  37ae2024  beq r1, r2, 19336
000204  bb8f0024  bneq r1, zero, 19424
000208  63012f00  loadli.w r2,  16(r30)
00020c  ab0100f0  lui r3, 983040
000210  1b311100  slli r2, r2, 1
000214  17113100  or r2, r2, r3
000218  ab910100  lui r3, 25
00021c  9f810100  addli r3, r3, 0
000220  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000224  5b780900  j 19392
000228  1f310000  addli r2, zero, 3
00022c  37b92004  beq r1, r2, 2636
000230  1f410000  addli r2, zero, 4
000234  bbf62004  bneq r1, r2, 2492
000238  e3002f00  loadli.w r1,  16(r30)
00023c  1f010010  addli r2, zero, 2048
000240  bbab2008  bneq r1, r2, 4840
000244  e3403f00  loadli.w r1,  28(r30)
000248  37c80018  beq r1, zero, 12816
00024c  80300002  core_id r1
000250  ab070000  lui r15, 0
000254  1f150000  addli r10, zero, 1
000258  9f058fd7  addli r11, r30, -5184
00025c  1f068000  addli r12, zero, 64
000260  9f060010  addli r13, zero, 2048
000264  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
000268  1bb15000  slli r2, r1, 5
00026c  80500102  load_param_i r1, 2
000270  9f870700  addli r15, r15, 0
000274  9bb15000  slli r3, r1, 5
000278  1f070100  addli r14, r2, 0
00027c  33080728  zext_int2long r[17:18], r14
000280  2b0900f0  lui r18, 983040
000284  1738a802  sll.d r[17:18], r[17:18], r10
000288  17192601  or r18, r12, r18
00028c  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000290  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000294  1b382700  slli r16, r14, 2
000298  0b97e110  add.s r14, r3, r14
00029c  00a00200  mfence { lm, gm }
0002a0  c2800502  vload.mz vr1{mr1}, 0(r11)
0002a4  9308d704  setlt.u r17, r14, r13
0002a8  0b18f810  add.s r16, r16, r15
0002ac  1f098800  addli r18, r16, 64
0002b0  66c11180  vmerge_l.hf vr2, vr3, vr1
0002b4  e6c011a0  vmerge_h.hf vr1, vr3, vr1
0002b8  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
0002bc  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
0002c0  bbfe08fe  bneq r17, zero, -68
0002c4  00320002  core_id r4
0002c8  9bb27000  slli r5, r1, 7
0002cc  1f160000  addli r12, zero, 1
0002d0  9f068fd7  addli r13, r30, -5184
0002d4  1f078000  addli r14, zero, 64
0002d8  1f080010  addli r16, zero, 2048
0002dc  9f080100  addli r17, r2, 0
0002e0  00a00000  mfence { lm }
0002e4  9b357200  slli r11, r4, 7
0002e8  2b220000  lui r4, 2
0002ec  1f020200  addli r4, r4, 0
0002f0  0b954510  add.s r10, r11, r4
0002f4  33890828  zext_int2long r[19:20], r17
0002f8  2b0a00f0  lui r20, 983040
0002fc  8b983810  add.s r17, r17, r3
000300  1739c902  sll.d r[19:20], r[19:20], r12
000304  171a4701  or r20, r14, r20
000308  0b292311  add.ul r[19:20], r[7:8], r[19:20]
00030c  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
000310  13890805  setlt.u r18, r17, r16
000314  9f098500  addli r19, r10, 64
000318  00a00200  mfence { lm, gm }
00031c  c2800602  vload.mz vr1{mr1}, 0(r13)
000320  66c11180  vmerge_l.hf vr2, vr3, vr1
000324  e6c011a0  vmerge_h.hf vr1, vr3, vr1
000328  4e102502  vstores_mask16.mz vr2{mr1}, 0(r10)
00032c  0b155510  add.s r10, r10, r5
000330  4e901902  vstores_mask16.mz vr1{mr1}, 0(r19)
000334  3b0f09fe  bneq r18, zero, -64
000338  2b450000  lui r10, 4
00033c  9f130000  addli r7, zero, 1
000340  1f068000  addli r12, zero, 64
000344  9f060010  addli r13, zero, 2048
000348  00a00000  mfence { lm }
00034c  1f050500  addli r10, r10, 0
000350  0b93a510  add.s r6, r11, r10
000354  9f058fd7  addli r11, r30, -5184
000358  33080128  zext_int2long r[17:18], r2
00035c  2b0700f0  lui r14, 983040
000360  0b113110  add.s r2, r2, r3
000364  17387802  sll.d r[17:18], r[17:18], r7
000368  1717e600  or r14, r12, r14
00036c  0b280411  add.ul r[17:18], r[9:10], r[17:18]
000370  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000374  1307d104  setlt.u r14, r2, r13
000378  1f088300  addli r16, r6, 64
00037c  00a00200  mfence { lm, gm }
000380  c2800502  vload.mz vr1{mr1}, 0(r11)
000384  66c11180  vmerge_l.hf vr2, vr3, vr1
000388  e6c011a0  vmerge_h.hf vr1, vr3, vr1
00038c  4e102302  vstores_mask16.mz vr2{mr1}, 0(r6)
000390  0b135310  add.s r6, r6, r5
000394  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000398  3b0f07fe  bneq r14, zero, -64
00039c  2bf10000  lui r2, 15
0003a0  80310002  core_id r3
0003a4  00a00300  mfence { lm, sm, gm }
0003a8  9f020006  addli r5, zero, 768
0003ac  1b11f1ff  ori r2, r2, 4095
0003b0  9b881100  andi r17, r3, 1
0003b4  80210104  csr_set csr3, r2
0003b8  1f010006  addli r2, zero, 768
0003bc  00d00100  sync_group
0003c0  37a00800  beq r17, zero, 8
0003c4  9f02000a  addli r5, zero, 1280
0003c8  e3411f00  loadli.w r3,  12(r30)
0003cc  e3441f00  loadli.w r9,  12(r30)
0003d0  1f130000  addli r6, zero, 1
0003d4  3fed612e  blt.s r3, r6, 24408
0003d8  0b912820  mul.s r2, r17, r2
0003dc  9bc11000  srli r3, r1, 1
0003e0  80300002  core_id r1
0003e4  1f0a8fd7  addli r20, r30, -5184
0003e8  1bb81200  slli r16, r5, 1
0003ec  9f030000  addli r7, zero, 0
0003f0  9f7c7000  addli r25, zero, 63
0003f4  9f0d0005  addli r27, zero, 640
0003f8  ab06803f  lui r13, 260096
0003fc  1f072000  addli r14, zero, 16
000400  1f3b0000  addli r22, zero, 3
000404  1f5e1000  addli r28, zero, 13
000408  2bec0700  lui r24, 126
00040c  1f2d1000  addli r26, zero, 10
000410  9bc51000  srli r11, r1, 1
000414  9b302100  slli r1, r2, 2
000418  67002fd4  storeli.w r2, -5632(r30)
00041c  1f814200  addli r2, r5, 32
000420  0b994010  add.s r18, r1, r4
000424  8b99a010  add.s r19, r1, r10
000428  9bb02200  slli r1, r5, 2
00042c  670f2fd2  storeli.w r2, -5648(r30)
000430  0b114811  add.s r2, r16, r20
000434  2be27f00  lui r4, 2046
000438  8b904011  add.s r1, r1, r20
00043c  9f8080ff  addli r1, r1, -64
000440  e74e1fd2  storeli.w r1, -5652(r30)
000444  9f0081ff  addli r1, r2, -64
000448  2bf100fc  lui r2, 1032207
00044c  e70e1fd2  storeli.w r1, -5656(r30)
000450  abf0ffff  lui r1, 1048575
000454  1b1401c0  ori r8, r2, 3072
000458  00a00000  mfence { lm }
00045c  674f0fd3  storeli.w r16, -5644(r30)
000460  67041fd5  storeli.w r17, -5568(r30)
000464  e74f3fd2  storeli.w r3, -5636(r30)
000468  e70fbfd2  storeli.w r11, -5640(r30)
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
0004b4  5be50000  j 1832
0004b8  8b90b310  add.s r1, r7, r11
0004bc  cb8f14fe  ble.s r9, r1, -32
0004c0  63011f00  loadli.w r2,  8(r30)
0004c4  8b902010  add.s r1, r1, r2
0004c8  0b813330  div.u r2, r7, r3
0004cc  e3010fd4  loadli.w r3,  -5632(r30)
0004d0  9bb0b000  slli r1, r1, 11
0004d4  97903000  or r1, r1, r3
0004d8  9f017fd6  addli r3, r30, -5320
0004dc  b3940028  sext_int2long r[10:11], r1
0004e0  ab0000f0  lui r1, 983040
0004e4  1b316100  slli r2, r2, 6
0004e8  97b56402  sll.d r[12:13], r[10:11], r6
0004ec  ebd40100  load.d r[10:11], 0(r3)
0004f0  97101800  or r1, r16, r1
0004f4  1b010104  andi r2, r2, 64
0004f8  9f018fd6  addli r3, r30, -5312
0004fc  73b0b100  store.d r[12:13], 0(r3)
000500  8ba4b410  add.ul r[10:11], r[10:11], r[12:13]
000504  ffa04401  l_gm2lm r1, r20, 0(r[10:11])
000508  80300002  core_id r1
00050c  97101100  or r1, r2, r1
000510  670c1fd4  storeli.w r1, -5440(r30)
000514  00a00200  mfence { lm, gm }
000518  6301dfd3  loadli.w r2,  -5656(r30)
00051c  e341dfd3  loadli.w r3,  -5652(r30)
000520  e304efd3  loadli.w r9,  -5648(r30)
000524  c2000102  vload.mz vr1{mr1}, 0(r2)
000528  9f84c4ff  addli r9, r9, -32
00052c  9f8581ff  addli r11, r3, -64
000530  1f0181ff  addli r2, r2, -64
000534  13859c04  setlt.u r10, r25, r9
000538  66c111a0  vmerge_h.hf vr2, vr3, vr1
00053c  e6c01180  vmerge_l.hf vr1, vr3, vr1
000540  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
000544  9f8101ff  addli r3, r3, -128
000548  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
00054c  3b6f05fe  bneq r10, zero, -40
000550  1f060003  addli r12, zero, 384
000554  1f010000  addli r2, zero, 0
000558  00a00000  mfence { lm }
00055c  3ba60800  bneq r17, zero, 392
000560  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000564  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000568  12323002  vadd.s.mz vr4{mr1}, zero, vr3
00056c  e341cfd3  loadli.w r3,  -5660(r30)
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
0006d8  fa110040  vextracti.f r3, 0(vr0)
0006dc  fa940040  vextracti.f r9, 0(vr1)
0006e0  db650000  j 812
0006e4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0006e8  abf0ffff  lui r1, 1048575
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
0007c0  1385c104  setlt.u r10, r3, r12
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
000878  7a960040  vextracti.f r12, 0(vr1)
00087c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000880  fa110040  vextracti.f r3, 0(vr0)
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
000a08  8b642610  add.f.rn r9, r12, r2
000a0c  2b650000  lui r10, 6
000a10  63068fd5  loadli.w r12,  -5440(r30)
000a14  ab680000  lui r17, 6
000a18  1f010000  addli r2, zero, 0
000a1c  1f050500  addli r10, r10, 0
000a20  9f880804  addli r17, r17, 512
000a24  9b302600  slli r1, r12, 2
000a28  1f080500  addli r16, r10, 0
000a2c  8b951011  add.s r11, r1, r17
000a30  0b950011  add.s r10, r1, r16
000a34  9b904000  ori r1, r1, 4
000a38  73e09500  stores.w r9, 0(r11)
000a3c  9f050000  addli r11, zero, 0
000a40  73603500  stores.w r3, 0(r10)
000a44  8b940011  add.s r9, r1, r16
000a48  8b901011  add.s r1, r1, r17
000a4c  00a00300  mfence { lm, sm, gm }
000a50  e3010fd7  loadli.w r3,  -5248(r30)
000a54  80a10104  csr_set csr3, r3
000a58  9b01e607  andi r3, r12, 126
000a5c  00d00100  sync_group
000a60  efc40400  loads.w r9, 0(r9)
000a64  efc00000  loads.w r1, 0(r1)
000a68  9bb12100  slli r3, r3, 2
000a6c  0b950111  add.s r10, r3, r16
000a70  8b911111  add.s r3, r3, r17
000a74  6f450500  loads.w r10, 0(r10)
000a78  efc10100  loads.w r3, 0(r3)
000a7c  8be4a410  add.f.rn r9, r9, r10
000a80  2b05003a  lui r10, 237568
000a84  8be03010  add.f.rn r1, r1, r3
000a88  8be1a420  mul.f.rn r3, r9, r10
000a8c  8be0a020  mul.f.rn r1, r1, r10
000a90  1f058fd7  addli r10, r30, -5184
000a94  8be43120  mul.f.rn r9, r3, r3
000a98  8be10158  neg.f r3, r3
000a9c  8be09018  sub.f.rn r1, r1, r9
000aa0  e3043f00  loadli.w r9,  24(r30)
000aa4  8be09010  add.f.rn r1, r1, r9
000aa8  8f800008  sqrt.f.rn r1, r1
000aac  8f801618  div.f.rn r1, r13, r1
000ab0  8b142a10  add.s r9, r20, r2
000ab4  0b182910  add.s r16, r18, r2
000ab8  9f854500  addli r11, r11, 32
000abc  42900402  vload_mask16.mz vr0{mr1}, 0(r9)
000ac0  9f848400  addli r9, r9, 64
000ac4  4a110802  vloads_mask16.mz vr2{mr1}, 0(r16)
000ac8  1f088800  addli r16, r16, 64
000acc  c2900402  vload_mask16.mz vr1{mr1}, 0(r9)
000ad0  8b942910  add.s r9, r19, r2
000ad4  4a120802  vloads_mask16.mz vr4{mr1}, 0(r16)
000ad8  1f010101  addli r2, r2, 128
000adc  ca910402  vloads_mask16.mz vr3{mr1}, 0(r9)
000ae0  9f848400  addli r9, r9, 64
000ae4  ca920402  vloads_mask16.mz vr5{mr1}, 0(r9)
000ae8  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000aec  93845504  setlt.u r9, r11, r5
000af0  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000af4  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
000af8  0a931002  vmul.f.mz.rn vr6{mr1}, r1, vr1
000afc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000b00  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
000b04  6a201722  vor.u.mz vr0{mr1}, r14, vr1
000b08  a6124302  vmac.f.mz.rn vr5{mr1}, vr6, vr4
000b0c  6a221b22  vor.u.mz vr4{mr1}, r22, vr1
000b10  6e3130c2  vsrl.s.mz vr2{mr1}, vr0, vr3
000b14  6e3050c2  vsrl.s.mz vr0{mr1}, vr0, vr5
000b18  6a312302  vand.s.mz vr2{mr1}, r6, vr2
000b1c  6a300302  vand.s.mz vr0{mr1}, r6, vr0
000b20  16b12102  vadd.s.mz vr2{mr1}, vr3, vr2
000b24  ea211e22  vor.u.mz vr3{mr1}, r28, vr1
000b28  ea201d22  vor.u.mz vr1{mr1}, r26, vr1
000b2c  16b00202  vadd.s.mz vr0{mr1}, vr5, vr0
000b30  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
000b34  12b00a02  vadd.s.mz vr0{mr1}, r21, vr0
000b38  eeb221c2  vsrl.s.mz vr5{mr1}, vr3, vr2
000b3c  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
000b40  eeb101c2  vsrl.s.mz vr3{mr1}, vr3, vr0
000b44  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
000b48  6a325c02  vand.s.mz vr4{mr1}, r24, vr5
000b4c  6a312202  vand.s.mz vr2{mr1}, r4, vr2
000b50  ea313c02  vand.s.mz vr3{mr1}, r24, vr3
000b54  6a300202  vand.s.mz vr0{mr1}, r4, vr0
000b58  6ab24622  vor.s.mz vr4{mr1}, r13, vr4
000b5c  6ab12622  vor.s.mz vr2{mr1}, r13, vr2
000b60  eab13622  vor.s.mz vr3{mr1}, r13, vr3
000b64  6ab00622  vor.s.mz vr0{mr1}, r13, vr0
000b68  86d10120  vfloat2fp16_h.rz vr3, vr3
000b6c  06500020  vfloat2fp16_h.rz vr0, vr0
000b70  86110220  vfloat2fp16_l.rz vr3, vr4
000b74  06100120  vfloat2fp16_l.rz vr0, vr2
000b78  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
000b7c  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000b80  ea301402  vand.s.mz vr1{mr1}, r8, vr1
000b84  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
000b88  46000502  vstore.mz vr0{mr1}, 0(r10)
000b8c  1f058500  addli r10, r10, 64
000b90  bb8c04fe  bneq r9, zero, -224
000b94  9f058fd6  addli r11, r30, -5312
000b98  6b510f00  load.d r[3:4], 0(r30)
000b9c  6348efd3  loadli.w r16,  -5644(r30)
000ba0  ab0000f0  lui r1, 983040
000ba4  ebd40500  load.d r[10:11], 0(r11)
000ba8  00a00000  mfence { lm }
000bac  97101800  or r1, r16, r1
000bb0  0b219110  add.ul r[3:4], r[3:4], r[10:11]
000bb4  ff304101  s_lm2gm r1, r20, 0(r[3:4])
000bb8  9f000fd5  addli r1, r30, -5504
000bbc  00a00200  mfence { lm, gm }
000bc0  e3441f00  loadli.w r9,  12(r30)
000bc4  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000bc8  e341ffd3  loadli.w r3,  -5636(r30)
000bcc  e305ffd3  loadli.w r11,  -5640(r30)
000bd0  e3088fd4  loadli.w r17,  -5568(r30)
000bd4  8b933310  add.s r7, r7, r3
000bd8  bf8393fc  blt.s r7, r9, -1824
000bdc  abf00000  lui r1, 15
000be0  9b90f0ff  ori r1, r1, 4095
000be4  80a10004  csr_set csr3, r1
000be8  00d00100  sync_group
000bec  5be80a00  j 22336
000bf0  e3403f00  loadli.w r1,  28(r30)
000bf4  b792000a  beq r1, zero, 5284
000bf8  e3002f00  loadli.w r1,  16(r30)
000bfc  1f010010  addli r2, zero, 2048
000c00  3bc22012  bneq r1, r2, 9360
000c04  00350002  core_id r10
000c08  9f200000  addli r1, zero, 2
000c0c  370f1524  beq r10, r1, 19392
000c10  9f100000  addli r1, zero, 1
000c14  b77d1524  beq r10, r1, 19324
000c18  3b3f0524  bneq r10, zero, 19404
000c1c  9f000040  addli r1, zero, 8192
000c20  2b0100f0  lui r2, 983040
000c24  97902000  or r1, r1, r2
000c28  2b110200  lui r2, 33
000c2c  1f010100  addli r2, r2, 0
000c30  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000c34  5b760900  j 19376
000c38  e3403f00  loadli.w r1,  28(r30)
000c3c  37f30010  beq r1, zero, 8412
000c40  80300002  core_id r1
000c44  1f210000  addli r2, zero, 2
000c48  b7ed2022  beq r1, r2, 18296
000c4c  1f110000  addli r2, zero, 1
000c50  37e52020  beq r1, r2, 16728
000c54  3bae0022  bneq r1, zero, 18312
000c58  63012f00  loadli.w r2,  16(r30)
000c5c  ab0100f0  lui r3, 983040
000c60  1b311100  slli r2, r2, 1
000c64  17113100  or r2, r2, r3
000c68  abd10100  lui r3, 29
000c6c  9f810100  addli r3, r3, 0
000c70  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000c74  5bed0800  j 18280
000c78  e3002f00  loadli.w r1,  16(r30)
000c7c  1f010010  addli r2, zero, 2048
000c80  3bcb2006  bneq r1, r2, 3792
000c84  e3403f00  loadli.w r1,  28(r30)
000c88  37e5001a  beq r1, zero, 13656
000c8c  803c0002  core_id r25
000c90  abd70000  lui r15, 13
000c94  00510102  load_param_i r2, 2
000c98  1f150000  addli r10, zero, 1
000c9c  9f058fd7  addli r11, r30, -5184
000ca0  1f068000  addli r12, zero, 64
000ca4  9f060010  addli r13, zero, 2048
000ca8  9bb05c00  slli r1, r25, 5
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
000d04  1bb57c00  slli r10, r25, 7
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
000ddc  9b811c00  andi r3, r25, 1
000de0  1f020006  addli r4, zero, 768
000de4  9b90f0ff  ori r1, r1, 4095
000de8  80a10004  csr_set csr3, r1
000dec  9f000006  addli r1, zero, 768
000df0  00d00100  sync_group
000df4  67083fd6  storeli.w r3, -5248(r30)
000df8  37a00100  beq r3, zero, 8
000dfc  1f02000a  addli r4, zero, 1280
000e00  e3411f00  loadli.w r3,  12(r30)
000e04  63471f00  loadli.w r14,  12(r30)
000e08  1f130000  addli r6, zero, 1
000e0c  bf84612a  blt.s r3, r6, 21792
000e10  e3010fd7  loadli.w r3,  -5248(r30)
000e14  9f068fd7  addli r13, r30, -5184
000e18  1b441100  srli r8, r2, 1
000e1c  1f014200  addli r2, r4, 32
000e20  1b351200  slli r10, r4, 1
000e24  ab3d0100  lui r27, 19
000e28  1f030000  addli r6, zero, 0
000e2c  9bc41c00  srli r9, r25, 1
000e30  9f797000  addli r19, zero, 63
000e34  1f0b0005  addli r22, zero, 640
000e38  1f0d4000  addli r26, zero, 32
000e3c  9f0a0003  addli r21, zero, 384
000e40  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000e44  670c2fd4  storeli.w r2, -5440(r30)
000e48  0b11d510  add.s r2, r10, r13
000e4c  9f8d0df0  addli r27, r27, -2048
000e50  8b901120  mul.s r1, r3, r1
000e54  67041fd6  storeli.w r1, -5312(r30)
000e58  9bb02000  slli r1, r1, 2
000e5c  8b955010  add.s r11, r1, r5
000e60  0b967010  add.s r12, r1, r7
000e64  9b302200  slli r1, r4, 2
000e68  ab320100  lui r5, 19
000e6c  8b90d010  add.s r1, r1, r13
000e70  9f8202f4  addli r5, r5, -1536
000e74  9f8080ff  addli r1, r1, -64
000e78  67081fd4  storeli.w r1, -5504(r30)
000e7c  9f0081ff  addli r1, r2, -64
000e80  1f010fd4  addli r2, r30, -5632
000e84  67041fd4  storeli.w r1, -5568(r30)
000e88  abf0ffff  lui r1, 1048575
000e8c  00a00000  mfence { lm }
000e90  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000e94  9b9000f8  ori r1, r1, 3968
000e98  e74f1fd2  storeli.w r1, -5636(r30)
000e9c  abf00000  lui r1, 15
000ea0  1b9ef0ff  ori r28, r1, 4095
000ea4  db030000  j 28
000ea8  00a00300  mfence { lm, sm, gm }
000eac  80210e04  csr_set csr3, r28
000eb0  00d00100  sync_group
000eb4  0b138310  add.s r6, r6, r8
000eb8  3f20e300  blt.s r6, r14, 8
000ebc  5ba4ffff  j -736
000ec0  8b109310  add.s r1, r6, r9
000ec4  cb1f17fe  ble.s r14, r1, -28
000ec8  63011f00  loadli.w r2,  8(r30)
000ecc  e3018fd6  loadli.w r3,  -5312(r30)
000ed0  8b902010  add.s r1, r1, r2
000ed4  0b018330  div.u r2, r6, r8
000ed8  9bb0b000  slli r1, r1, 11
000edc  97903000  or r1, r1, r3
000ee0  9f110000  addli r3, zero, 1
000ee4  33980028  sext_int2long r[17:18], r1
000ee8  ab0000f0  lui r1, 983040
000eec  1b316100  slli r2, r2, 6
000ef0  17383802  sll.d r[17:18], r[17:18], r3
000ef4  9f017fd6  addli r3, r30, -5320
000ef8  97101500  or r1, r10, r1
000efc  1b010104  andi r2, r2, 64
000f00  ebdb0100  load.d r[24:25], 0(r3)
000f04  17119101  or r2, r2, r25
000f08  8bab0b11  add.ul r[24:25], r[24:25], r[17:18]
000f0c  ffa0db00  l_gm2lm r1, r13, 0(r[24:25])
000f10  00a00200  mfence { lm, gm }
000f14  e3008fd4  loadli.w r1,  -5568(r30)
000f18  e3010fd5  loadli.w r3,  -5504(r30)
000f1c  e3038fd5  loadli.w r7,  -5440(r30)
000f20  c2800002  vload.mz vr1{mr1}, 0(r1)
000f24  9f83c3ff  addli r7, r7, -32
000f28  1f8981ff  addli r18, r3, -64
000f2c  9f8080ff  addli r1, r1, -64
000f30  13877904  setlt.u r14, r19, r7
000f34  06f10000  vfp162float_h.rn vr2, vr1
000f38  86b00000  vfp162float_l.rn vr1, vr1
000f3c  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
000f40  9f8101ff  addli r3, r3, -128
000f44  46101902  vstore_mask16.mz vr1{mr1}, 0(r18)
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
000f78  8b933610  add.s r7, r13, r3
000f7c  1f070701  addli r14, r14, 128
000f80  9f810104  addli r3, r3, 512
000f84  1f890001  addli r18, r1, 128
000f88  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
000f8c  1f8a8000  addli r20, r1, 64
000f90  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
000f94  9f8b8301  addli r23, r7, 192
000f98  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
000f9c  1f898001  addli r18, r1, 192
000fa0  4a130a02  vloads_mask16.mz vr6{mr1}, 0(r20)
000fa4  1f8a8300  addli r20, r7, 64
000fa8  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
000fac  ca130902  vloads_mask16.mz vr7{mr1}, 0(r18)
000fb0  1f890301  addli r18, r7, 128
000fb4  42150a02  vload_mask16.mz vr10{mr1}, 0(r20)
000fb8  c2140902  vload_mask16.mz vr9{mr1}, 0(r18)
000fbc  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
000fc0  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
000fc4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
000fc8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
000fcc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000fd0  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
000fd4  46108902  vstore_mask16.mz vr8{mr1}, 0(r18)
000fd8  1f890002  addli r18, r1, 256
000fdc  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000fe0  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
000fe4  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000fe8  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
000fec  4a100902  vloads_mask16.mz vr0{mr1}, 0(r18)
000ff0  1f898002  addli r18, r1, 320
000ff4  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
000ff8  9f8b0302  addli r23, r7, 256
000ffc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001000  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
001004  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001008  4a130902  vloads_mask16.mz vr6{mr1}, 0(r18)
00100c  1f890003  addli r18, r1, 384
001010  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
001014  9f808003  addli r1, r1, 448
001018  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00101c  4a140902  vloads_mask16.mz vr8{mr1}, 0(r18)
001020  1f898302  addli r18, r7, 320
001024  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
001028  9f800303  addli r1, r7, 384
00102c  9f838303  addli r7, r7, 448
001030  c2140902  vload_mask16.mz vr9{mr1}, 0(r18)
001034  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001038  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00103c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001040  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001044  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001048  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00104c  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
001050  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001054  46106902  vstore_mask16.mz vr6{mr1}, 0(r18)
001058  13096705  setlt.u r18, r14, r22
00105c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001060  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001064  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001068  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00106c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001070  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001074  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001078  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00107c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001080  bb5b09fe  bneq r18, zero, -268
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
0010c8  6a710dc0  vsrl.p vr2, r26, vr0
0010cc  ea711dc0  vsrl.p vr3, r26, vr1
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
001104  0b993610  add.s r18, r13, r3
001108  1f070701  addli r14, r14, 128
00110c  9f810104  addli r3, r3, 512
001110  9f8b0331  addli r23, r7, 6272
001114  9f800330  addli r1, r7, 6144
001118  1f8c8331  addli r24, r7, 6336
00111c  1f0a0918  addli r20, r18, 3072
001120  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
001124  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
001128  9f808330  addli r1, r7, 6208
00112c  ca140c02  vloads_mask16.mz vr9{mr1}, 0(r24)
001130  9f0b0919  addli r23, r18, 3200
001134  42130a02  vload_mask16.mz vr6{mr1}, 0(r20)
001138  1f0c8919  addli r24, r18, 3264
00113c  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
001140  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
001144  9f008918  addli r1, r18, 3136
001148  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
00114c  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
001150  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001154  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
001158  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
00115c  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
001160  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001164  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
001168  46106a02  vstore_mask16.mz vr6{mr1}, 0(r20)
00116c  1f8a0332  addli r20, r7, 6400
001170  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
001174  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
001178  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00117c  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
001180  9f0b091a  addli r23, r18, 3328
001184  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
001188  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00118c  9f00091b  addli r1, r18, 3456
001190  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
001194  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001198  4a100a02  vloads_mask16.mz vr0{mr1}, 0(r20)
00119c  1f8a8332  addli r20, r7, 6464
0011a0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0011a4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0011a8  4a130a02  vloads_mask16.mz vr6{mr1}, 0(r20)
0011ac  1f8a0333  addli r20, r7, 6528
0011b0  9f838333  addli r7, r7, 6592
0011b4  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
0011b8  1f0a891a  addli r20, r18, 3392
0011bc  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
0011c0  9f03891b  addli r7, r18, 3520
0011c4  13095705  setlt.u r18, r14, r21
0011c8  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
0011cc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0011d0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0011d4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0011d8  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0011dc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0011e0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0011e4  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
0011e8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0011ec  46106a02  vstore_mask16.mz vr6{mr1}, 0(r20)
0011f0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0011f4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0011f8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0011fc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001200  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001204  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001208  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
00120c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001210  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001214  bb3b09fe  bneq r18, zero, -276
001218  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00121c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001220  9f000002  addli r1, zero, 256
001224  1f0a0000  addli r20, zero, 0
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
00125c  1b9900f8  ori r18, r1, 3968
001260  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001264  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001268  ea711dc0  vsrl.p vr3, r26, vr1
00126c  6a710dc0  vsrl.p vr2, r26, vr0
001270  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001274  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001278  7a970040  vextracti.f r14, 0(vr1)
00127c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001280  fa110040  vextracti.f r3, 0(vr0)
001284  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001288  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00128c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001290  8b904711  add.s r1, r15, r20
001294  8b934611  add.s r7, r13, r20
001298  1f090901  addli r18, r18, 128
00129c  1f0a0a04  addli r20, r20, 512
0012a0  9f8b0018  addli r23, r1, 3072
0012a4  1f8c0019  addli r24, r1, 3200
0012a8  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
0012ac  9f8c8301  addli r25, r7, 192
0012b0  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
0012b4  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
0012b8  9f8b8018  addli r23, r1, 3136
0012bc  1f8c8019  addli r24, r1, 3264
0012c0  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0012c4  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
0012c8  9f8b0301  addli r23, r7, 128
0012cc  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
0012d0  1f8c8300  addli r24, r7, 64
0012d4  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
0012d8  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
0012dc  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0012e0  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0012e4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0012e8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0012ec  46908b02  vstore_mask16.mz vr8{mr1}, 0(r23)
0012f0  9f8b001a  addli r23, r1, 3328
0012f4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0012f8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0012fc  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
001300  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
001304  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
001308  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
00130c  9f8b801a  addli r23, r1, 3392
001310  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
001314  9f8c0302  addli r25, r7, 256
001318  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
00131c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
001320  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001324  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
001328  9f8b001b  addli r23, r1, 3456
00132c  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
001330  9f80801b  addli r1, r1, 3520
001334  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001338  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00133c  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
001340  9f8b8302  addli r23, r7, 320
001344  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
001348  9f800303  addli r1, r7, 384
00134c  9f838303  addli r7, r7, 448
001350  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
001354  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001358  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00135c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001360  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001364  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001368  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00136c  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
001370  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001374  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
001378  930b6905  setlt.u r23, r18, r22
00137c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001380  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001384  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001388  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00138c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001390  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001394  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001398  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00139c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0013a0  bbcb0bfe  bneq r23, zero, -272
0013a4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0013a8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0013ac  9f000002  addli r1, zero, 256
0013b0  803c0002  core_id r25
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
0013ec  6a710dc0  vsrl.p vr2, r26, vr0
0013f0  ea711dc0  vsrl.p vr3, r26, vr1
0013f4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013f8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013fc  fa100040  vextracti.f r1, 0(vr0)
001400  fa930040  vextracti.f r7, 0(vr1)
001404  8be01110  add.f.rn r1, r3, r1
001408  8b637710  add.f.rn r7, r14, r7
00140c  1b372100  slli r14, r2, 2
001410  9f010000  addli r3, zero, 0
001414  0b19b711  add.s r18, r14, r27
001418  0b1a5710  add.s r20, r14, r5
00141c  73601900  stores.w r1, 0(r18)
001420  9b00e107  andi r1, r2, 126
001424  1b114700  ori r2, r14, 4
001428  73607a00  stores.w r7, 0(r20)
00142c  00a00300  mfence { lm, sm, gm }
001430  80210e04  csr_set csr3, r28
001434  00d00100  sync_group
001438  9bb02000  slli r1, r1, 2
00143c  8b13b111  add.s r7, r2, r27
001440  0b115110  add.s r2, r2, r5
001444  0b97b011  add.s r14, r1, r27
001448  efc30300  loads.w r7, 0(r7)
00144c  8b905010  add.s r1, r1, r5
001450  6f410100  loads.w r2, 0(r2)
001454  6f470700  loads.w r14, 0(r14)
001458  efc00000  loads.w r1, 0(r1)
00145c  8be3e310  add.f.rn r7, r7, r14
001460  2b07003a  lui r14, 237568
001464  8b601110  add.f.rn r1, r2, r1
001468  0be1e320  mul.f.rn r2, r7, r14
00146c  8be0e020  mul.f.rn r1, r1, r14
001470  1f070000  addli r14, zero, 0
001474  8b632120  mul.f.rn r7, r2, r2
001478  0b610158  neg.f r2, r2
00147c  8be07018  sub.f.rn r1, r1, r7
001480  e3033f00  loadli.w r7,  24(r30)
001484  8be07010  add.f.rn r1, r1, r7
001488  ab03803f  lui r7, 260096
00148c  8f800008  sqrt.f.rn r1, r1
001490  8f801318  div.f.rn r1, r7, r1
001494  9f038fd7  addli r7, r30, -5184
001498  0b993610  add.s r18, r13, r3
00149c  0b9a3510  add.s r20, r11, r3
0014a0  1f074700  addli r14, r14, 32
0014a4  42100902  vload_mask16.mz vr0{mr1}, 0(r18)
0014a8  1f098900  addli r18, r18, 64
0014ac  4a110a02  vloads_mask16.mz vr2{mr1}, 0(r20)
0014b0  1f0a8a00  addli r20, r20, 64
0014b4  c2100902  vload_mask16.mz vr1{mr1}, 0(r18)
0014b8  0b193610  add.s r18, r12, r3
0014bc  4a120a02  vloads_mask16.mz vr4{mr1}, 0(r20)
0014c0  9f810101  addli r3, r3, 128
0014c4  ca110902  vloads_mask16.mz vr3{mr1}, 0(r18)
0014c8  1f098900  addli r18, r18, 64
0014cc  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
0014d0  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
0014d4  13094704  setlt.u r18, r14, r4
0014d8  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0014dc  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
0014e0  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0014e4  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
0014e8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0014ec  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0014f0  06900100  vfloat2fp16_l.rn vr0, vr3
0014f4  06d00200  vfloat2fp16_h.rn vr0, vr5
0014f8  46800302  vstore.mz vr0{mr1}, 0(r7)
0014fc  9f838300  addli r7, r7, 64
001500  3b6e09fe  bneq r18, zero, -104
001504  6b510f00  load.d r[3:4], 0(r30)
001508  ab0000f0  lui r1, 983040
00150c  00a00000  mfence { lm }
001510  97101500  or r1, r10, r1
001514  0b210111  add.ul r[3:4], r[3:4], r[17:18]
001518  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
00151c  00a00200  mfence { lm, gm }
001520  63471f00  loadli.w r14,  12(r30)
001524  5b32ffff  j -1648
001528  e3403f00  loadli.w r1,  28(r30)
00152c  b7ae0012  beq r1, zero, 10152
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
001694  4b627127  ble.s r2, r23, 19608
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
00178c  5b740900  j 19360
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
001a70  1f888200  addli r16, r5, 64
001a74  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
001a78  1f898600  addli r18, r13, 64
001a7c  4a920602  vloads_mask16.mz vr4{mr1}, 0(r13)
001a80  ca110502  vloads_mask16.mz vr3{mr1}, 0(r10)
001a84  9f804000  addli r1, r1, 32
001a88  9f860601  addli r13, r13, 128
001a8c  9f820201  addli r5, r5, 128
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
001b40  46001402  vstore.mz vr1{mr1}, 0(r8)
001b44  1f048400  addli r8, r8, 64
001b48  bfacf0fe  blt.s r1, r15, -216
001b4c  db7fffff  j -1028
001b50  e3403f00  loadli.w r1,  28(r30)
001b54  37a80016  beq r1, zero, 11784
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
001cb8  cbd91122  ble.s r3, r1, 18036
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
001d80  dbb50800  j 17836
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
002030  c2100a02  vload_mask16.mz vr1{mr1}, 0(r20)
002034  1f0d8a00  addli r26, r20, 64
002038  ca110b02  vloads_mask16.mz vr3{mr1}, 0(r22)
00203c  4a920c02  vloads_mask16.mz vr4{mr1}, 0(r25)
002040  9f8d8c00  addli r27, r25, 64
002044  9f834300  addli r7, r7, 32
002048  9f8c0c01  addli r25, r25, 128
00204c  1f0a0a01  addli r20, r20, 128
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
002088  46801a02  vstore.mz vr1{mr1}, 0(r21)
00208c  9f8a8a00  addli r21, r21, 64
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
0020f4  bfe87120  blt.s r3, r7, 16952
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
002180  db4bfdff  j -5540
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
0027b4  cbed111c  ble.s r3, r1, 15224
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
002870  db570700  j 15036
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
002d54  4be7111a  ble.s r3, r1, 13784
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
002dd8  dbaa0600  j 13652
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
003098  37ba2016  beq r1, r2, 11916
00309c  1f110000  addli r2, zero, 1
0030a0  37bc2012  beq r1, r2, 9996
0030a4  3bfa0016  bneq r1, zero, 11932
0030a8  63012f00  loadli.w r2,  16(r30)
0030ac  ab0100f0  lui r3, 983040
0030b0  1b312100  slli r2, r2, 2
0030b4  17113100  or r2, r2, r3
0030b8  ab710200  lui r3, 39
0030bc  9f810108  addli r3, r3, 1024
0030c0  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0030c4  dbcf0500  j 11900
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
003104  cba81118  ble.s r3, r1, 12840
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
003194  5b330600  j 12696
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
0034e0  9b811100  andi r3, r3, 1
0034e4  80210104  csr_set csr3, r2
0034e8  1f010006  addli r2, zero, 768
0034ec  00d00100  sync_group
0034f0  670c3fd4  storeli.w r3, -5440(r30)
0034f4  37a00100  beq r3, zero, 8
0034f8  9f02000a  addli r5, zero, 1280
0034fc  e3411f00  loadli.w r3,  12(r30)
003500  1f140000  addli r8, zero, 1
003504  bfa88116  blt.s r3, r8, 11816
003508  e3018fd5  loadli.w r3,  -5440(r30)
00350c  1bcc1000  srli r24, r1, 1
003510  80300002  core_id r1
003514  1f098fd7  addli r18, r30, -5184
003518  9bbb1200  slli r23, r5, 1
00351c  9f040000  addli r9, zero, 0
003520  9f767000  addli r13, zero, 63
003524  9f0a0005  addli r21, zero, 640
003528  2b05803f  lui r10, 260096
00352c  1f062000  addli r12, zero, 16
003530  1f330000  addli r6, zero, 3
003534  2be77f00  lui r14, 2046
003538  1f5e1000  addli r28, zero, 13
00353c  abe50700  lui r11, 126
003540  1f221000  addli r4, zero, 10
003544  1f0b0003  addli r22, zero, 384
003548  9bcd1000  srli r27, r1, 1
00354c  9bb02200  slli r1, r5, 2
003550  0b912120  mul.s r2, r3, r2
003554  8b902011  add.s r1, r1, r18
003558  67042fd4  storeli.w r2, -5568(r30)
00355c  1f814200  addli r2, r5, 32
003560  9f8080ff  addli r1, r1, -64
003564  674f2fd2  storeli.w r2, -5644(r30)
003568  0b912b11  add.s r2, r23, r18
00356c  670f1fd2  storeli.w r1, -5648(r30)
003570  9f0081ff  addli r1, r2, -64
003574  2bf100fc  lui r2, 1032207
003578  e74e1fd2  storeli.w r1, -5652(r30)
00357c  abf0ffff  lui r1, 1048575
003580  00a00000  mfence { lm }
003584  67008fd5  storeli.w r24, -5632(r30)
003588  e74fbfd3  storeli.w r27, -5636(r30)
00358c  e70f7fd3  storeli.w r23, -5640(r30)
003590  9b9000f8  ori r1, r1, 3968
003594  e70e1fd2  storeli.w r1, -5656(r30)
003598  abf00000  lui r1, 15
00359c  9b90f0ff  ori r1, r1, 4095
0035a0  67081fd6  storeli.w r1, -5248(r30)
0035a4  ab700000  lui r1, 7
0035a8  1b9af0ff  ori r20, r1, 4095
0035ac  ab00ff03  lui r1, 16368
0035b0  9b99f03f  ori r19, r1, 1023
0035b4  9b1001c0  ori r1, r2, 3072
0035b8  1f010fd5  addli r2, r30, -5504
0035bc  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0035c0  5b040000  j 32
0035c4  00a00300  mfence { lm, sm, gm }
0035c8  63010fd7  loadli.w r2,  -5248(r30)
0035cc  80210104  csr_set csr3, r2
0035d0  00d00100  sync_group
0035d4  8b948411  add.s r9, r9, r24
0035d8  3fa00401  blt.s r9, r16, 8
0035dc  5bc0faff  j -10752
0035e0  0b91b411  add.s r2, r9, r27
0035e4  cb0f28fe  ble.s r16, r2, -32
0035e8  e3011f00  loadli.w r3,  8(r30)
0035ec  e3078fd4  loadli.w r15,  -5568(r30)
0035f0  0b113110  add.s r2, r2, r3
0035f4  8b818431  div.u r3, r9, r24
0035f8  1b31b100  slli r2, r2, 11
0035fc  1711f100  or r2, r2, r15
003600  33180128  sext_int2long r[17:18], r2
003604  2b0100f0  lui r2, 983040
003608  9bb16100  slli r3, r3, 6
00360c  973c8802  sll.d r[26:27], r[17:18], r8
003610  9f087fd6  addli r17, r30, -5320
003614  17912b00  or r2, r23, r2
003618  9b810104  andi r3, r3, 64
00361c  ebd70800  load.d r[16:17], 0(r17)
003620  9f088fd6  addli r17, r30, -5312
003624  73b09801  store.d r[26:27], 0(r17)
003628  0ba89711  add.ul r[17:18], r[16:17], r[26:27]
00362c  7f212801  l_gm2lm r2, r18, 0(r[17:18])
003630  00310002  core_id r2
003634  00a00200  mfence { lm, gm }
003638  17912100  or r2, r3, r2
00363c  e341dfd3  loadli.w r3,  -5652(r30)
003640  6308efd3  loadli.w r16,  -5648(r30)
003644  e348efd3  loadli.w r17,  -5644(r30)
003648  c2800102  vload.mz vr1{mr1}, 0(r3)
00364c  9f88c8ff  addli r17, r17, -32
003650  1f0d88ff  addli r26, r16, -64
003654  9f8181ff  addli r3, r3, -64
003658  938b1605  setlt.u r23, r13, r17
00365c  66c111a0  vmerge_h.hf vr2, vr3, vr1
003660  e6c01180  vmerge_l.hf vr1, vr3, vr1
003664  46102802  vstore_mask16.mz vr2{mr1}, 0(r16)
003668  1f0808ff  addli r16, r16, -128
00366c  46101d02  vstore_mask16.mz vr1{mr1}, 0(r26)
003670  3bef0bfe  bneq r23, zero, -40
003674  00a00000  mfence { lm }
003678  e3018fd5  loadli.w r3,  -5440(r30)
00367c  3bb60100  bneq r3, zero, 396
003680  92303002  vadd.s.mz vr1{mr1}, zero, vr3
003684  12313002  vadd.s.mz vr2{mr1}, zero, vr3
003688  12323002  vadd.s.mz vr4{mr1}, zero, vr3
00368c  6308dfd3  loadli.w r16,  -5656(r30)
003690  9f010000  addli r3, zero, 0
003694  8b9b7110  add.s r23, r3, r7
003698  8b183910  add.s r17, r18, r3
00369c  1f080801  addli r16, r16, 128
0036a0  9f810104  addli r3, r3, 512
0036a4  9f870b01  addli r15, r23, 128
0036a8  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
0036ac  1f8c8b00  addli r24, r23, 64
0036b0  42940802  vload_mask16.mz vr8{mr1}, 0(r17)
0036b4  9f8c8801  addli r25, r17, 192
0036b8  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
0036bc  9f878b01  addli r15, r23, 192
0036c0  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0036c4  1f8c8800  addli r24, r17, 64
0036c8  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0036cc  ca930702  vloads_mask16.mz vr7{mr1}, 0(r15)
0036d0  9f870801  addli r15, r17, 128
0036d4  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
0036d8  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
0036dc  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0036e0  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0036e4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0036e8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0036ec  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0036f0  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
0036f4  46908702  vstore_mask16.mz vr8{mr1}, 0(r15)
0036f8  9f870b02  addli r15, r23, 256
0036fc  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003700  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003704  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003708  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
00370c  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
003710  9f878b02  addli r15, r23, 320
003714  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
003718  9f8c0802  addli r25, r17, 256
00371c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003720  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003724  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003728  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
00372c  9f870b03  addli r15, r23, 384
003730  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003734  9f8b8b03  addli r23, r23, 448
003738  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00373c  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
003740  9f878802  addli r15, r17, 320
003744  4a950b02  vloads_mask16.mz vr10{mr1}, 0(r23)
003748  9f8b0803  addli r23, r17, 384
00374c  9f888803  addli r17, r17, 448
003750  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
003754  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003758  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
00375c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003760  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
003764  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003768  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00376c  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003770  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003774  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
003778  93075805  setlt.u r15, r16, r21
00377c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003780  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003784  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003788  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00378c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003790  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
003794  46907802  vstore_mask16.mz vr7{mr1}, 0(r17)
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
003800  7a980040  vextracti.f r16, 0(vr1)
003804  5b660000  j 816
003808  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00380c  abf7ffff  lui r15, 1048575
003810  9f010000  addli r3, zero, 0
003814  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003818  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00381c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003820  9b9b07f8  ori r23, r15, 3968
003824  8b983310  add.s r17, r7, r3
003828  0b183910  add.s r16, r18, r3
00382c  9f8b0b01  addli r23, r23, 128
003830  9f810104  addli r3, r3, 512
003834  9f870831  addli r15, r17, 6272
003838  1f8d0830  addli r26, r17, 6144
00383c  1f8c8831  addli r24, r17, 6336
003840  9f0d0818  addli r27, r16, 3072
003844  9f0c8819  addli r25, r16, 3264
003848  ca930702  vloads_mask16.mz vr7{mr1}, 0(r15)
00384c  ca120d02  vloads_mask16.mz vr5{mr1}, 0(r26)
003850  1f8d8830  addli r26, r17, 6208
003854  ca140c02  vloads_mask16.mz vr9{mr1}, 0(r24)
003858  1f0c0819  addli r24, r16, 3200
00385c  9f078818  addli r15, r16, 3136
003860  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
003864  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
003868  4a140d02  vloads_mask16.mz vr8{mr1}, 0(r26)
00386c  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
003870  c2950702  vload_mask16.mz vr11{mr1}, 0(r15)
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
0038e8  93886b05  setlt.u r17, r23, r22
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
00394c  9f0b0000  addli r23, zero, 0
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
0039a0  7a9d0040  vextracti.f r26, 0(vr1)
0039a4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0039a8  fa110040  vextracti.f r3, 0(vr0)
0039ac  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0039b0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0039b4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0039b8  8b9d7311  add.s r27, r7, r23
0039bc  8b187911  add.s r17, r18, r23
0039c0  1f080801  addli r16, r16, 128
0039c4  9f8b0b04  addli r23, r23, 512
0039c8  9f870d18  addli r15, r27, 3072
0039cc  1f8c0d19  addli r24, r27, 3200
0039d0  42940802  vload_mask16.mz vr8{mr1}, 0(r17)
0039d4  9f8c8801  addli r25, r17, 192
0039d8  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
0039dc  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
0039e0  9f878d18  addli r15, r27, 3136
0039e4  1f8c8d19  addli r24, r27, 3264
0039e8  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0039ec  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
0039f0  9f870801  addli r15, r17, 128
0039f4  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
0039f8  1f8c8800  addli r24, r17, 64
0039fc  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
003a00  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
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
003a38  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
003a3c  9f8c0802  addli r25, r17, 256
003a40  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003a44  1f8c0803  addli r24, r17, 384
003a48  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003a4c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003a50  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
003a54  9f870d1b  addli r15, r27, 3456
003a58  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003a5c  9f8d8d1b  addli r27, r27, 3520
003a60  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003a64  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003a68  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
003a6c  9f878802  addli r15, r17, 320
003a70  4a950d02  vloads_mask16.mz vr10{mr1}, 0(r27)
003a74  9f888803  addli r17, r17, 448
003a78  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
003a7c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003a80  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
003a84  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003a88  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
003a8c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003a90  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003a94  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003a98  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003a9c  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
003aa0  93075805  setlt.u r15, r16, r21
003aa4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003aa8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003aac  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003ab0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003ab4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003ab8  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
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
003b24  7a980040  vextracti.f r16, 0(vr1)
003b28  fa170040  vextracti.f r15, 0(vr0)
003b2c  8be1f110  add.f.rn r3, r3, r15
003b30  0b680d11  add.f.rn r16, r26, r16
003b34  ab8d0000  lui r27, 8
003b38  2b8b0000  lui r22, 8
003b3c  9b372100  slli r15, r2, 2
003b40  630c0fd4  loadli.w r24,  -5632(r30)
003b44  e34cffd3  loadli.w r25,  -5636(r30)
003b48  630dffd3  loadli.w r26,  -5640(r30)
003b4c  1b01e107  andi r2, r2, 126
003b50  9f8d0d08  addli r27, r27, 1024
003b54  1f0b0b0c  addli r22, r22, 1536
003b58  1b312100  slli r2, r2, 2
003b5c  8b98b711  add.s r17, r15, r27
003b60  8b9b6711  add.s r23, r15, r22
003b64  73e00b01  stores.w r16, 0(r23)
003b68  73e03800  stores.w r3, 0(r17)
003b6c  0b18b111  add.s r16, r2, r27
003b70  0b116111  add.s r2, r2, r22
003b74  9f088fd7  addli r17, r30, -5184
003b78  9f0b0000  addli r23, zero, 0
003b7c  00a00300  mfence { lm, sm, gm }
003b80  e3010fd7  loadli.w r3,  -5248(r30)
003b84  80a10104  csr_set csr3, r3
003b88  9b914700  ori r3, r15, 4
003b8c  00d00100  sync_group
003b90  6f480800  loads.w r16, 0(r16)
003b94  6f410100  loads.w r2, 0(r2)
003b98  8b97b111  add.s r15, r3, r27
003b9c  8b916111  add.s r3, r3, r22
003ba0  efc70700  loads.w r15, 0(r15)
003ba4  efc10100  loads.w r3, 0(r3)
003ba8  8be70711  add.f.rn r15, r15, r16
003bac  2b08003a  lui r16, 237568
003bb0  0be12110  add.f.rn r2, r3, r2
003bb4  8be10721  mul.f.rn r3, r15, r16
003bb8  0b610121  mul.f.rn r2, r2, r16
003bbc  1f088fd7  addli r16, r30, -5184
003bc0  8be73120  mul.f.rn r15, r3, r3
003bc4  8be10158  neg.f r3, r3
003bc8  0b61f118  sub.f.rn r2, r2, r15
003bcc  e3073f00  loadli.w r15,  24(r30)
003bd0  0b61f110  add.f.rn r2, r2, r15
003bd4  0f010108  sqrt.f.rn r2, r2
003bd8  0f012518  div.f.rn r2, r10, r2
003bdc  9f078800  addli r15, r16, 64
003be0  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
003be4  9f8b4b00  addli r23, r23, 32
003be8  1f080801  addli r16, r16, 128
003bec  c2900702  vload_mask16.mz vr1{mr1}, 0(r15)
003bf0  93875b04  setlt.u r15, r23, r5
003bf4  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
003bf8  12911102  vadd.f.mz.rn vr2{mr1}, r3, vr1
003bfc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003c00  ea211622  vor.u.mz vr3{mr1}, r12, vr1
003c04  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
003c08  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
003c0c  6eb201c2  vsrl.s.mz vr4{mr1}, vr3, vr0
003c10  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003c14  6a324402  vand.s.mz vr4{mr1}, r8, vr4
003c18  ea313402  vand.s.mz vr3{mr1}, r8, vr3
003c1c  16304002  vadd.s.mz vr0{mr1}, vr0, vr4
003c20  6a221322  vor.u.mz vr4{mr1}, r6, vr1
003c24  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
003c28  ea211e22  vor.u.mz vr3{mr1}, r28, vr1
003c2c  ea201222  vor.u.mz vr1{mr1}, r4, vr1
003c30  12300a02  vadd.s.mz vr0{mr1}, r20, vr0
003c34  12312a02  vadd.s.mz vr2{mr1}, r20, vr2
003c38  eeb201c2  vsrl.s.mz vr5{mr1}, vr3, vr0
003c3c  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
003c40  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003c44  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
003c48  6ab25502  vand.s.mz vr4{mr1}, r11, vr5
003c4c  6a300702  vand.s.mz vr0{mr1}, r14, vr0
003c50  eab13502  vand.s.mz vr3{mr1}, r11, vr3
003c54  6a312702  vand.s.mz vr2{mr1}, r14, vr2
003c58  6a300522  vor.s.mz vr0{mr1}, r10, vr0
003c5c  6a324522  vor.s.mz vr4{mr1}, r10, vr4
003c60  ea313522  vor.s.mz vr3{mr1}, r10, vr3
003c64  6a312522  vor.s.mz vr2{mr1}, r10, vr2
003c68  06100020  vfloat2fp16_l.rz vr0, vr0
003c6c  86d10120  vfloat2fp16_h.rz vr3, vr3
003c70  06500120  vfloat2fp16_h.rz vr0, vr2
003c74  86110220  vfloat2fp16_l.rz vr3, vr4
003c78  6ab00902  vand.s.mz vr0{mr1}, r19, vr0
003c7c  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
003c80  eab01002  vand.s.mz vr1{mr1}, r1, vr1
003c84  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
003c88  46800802  vstore.mz vr0{mr1}, 0(r17)
003c8c  9f888800  addli r17, r17, 64
003c90  3bbd07fe  bneq r15, zero, -180
003c94  9f018fd6  addli r3, r30, -5312
003c98  eb570f00  load.d r[16:17], 0(r30)
003c9c  2b0100f0  lui r2, 983040
003ca0  9f8d0c00  addli r27, r25, 0
003ca4  6bdb0100  load.d r[23:24], 0(r3)
003ca8  00a00000  mfence { lm }
003cac  8ba76711  add.ul r[16:17], r[16:17], r[23:24]
003cb0  9f0b0d00  addli r23, r26, 0
003cb4  1f0b0003  addli r22, zero, 384
003cb8  17912b00  or r2, r23, r2
003cbc  7fb12701  s_lm2gm r2, r18, 0(r[16:17])
003cc0  1f010fd5  addli r2, r30, -5504
003cc4  00a00200  mfence { lm, gm }
003cc8  63481f00  loadli.w r16,  12(r30)
003ccc  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
003cd0  db20ffff  j -1788
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
003d60  4b37c112  ble.s r2, r12, 9676
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
003e50  db9b0400  j 9436
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
004128  9f838100  addli r7, r3, 64
00412c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
004130  1f034300  addli r6, r6, 32
004134  9f810101  addli r3, r3, 128
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
0041d0  46801202  vstore.mz vr1{mr1}, 0(r5)
0041d4  9f828200  addli r5, r5, 64
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
004280  bfb26211  blt.s r5, r22, 8364
004284  8b903d20  mul.s r1, r27, r3
004288  1b451100  srli r10, r2, 1
00428c  1b312200  slli r2, r4, 2
004290  9f068fd7  addli r13, r30, -5184
004294  1b361200  slli r12, r4, 1
004298  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00429c  ab5c0100  lui r25, 21
0042a0  2b590100  lui r18, 21
0042a4  1f040000  addli r8, zero, 0
0042a8  9bc51a00  srli r11, r21, 1
0042ac  9f787000  addli r17, zero, 63
0042b0  1f0a0005  addli r20, zero, 640
0042b4  9f0b8000  addli r23, zero, 64
0042b8  1f0c4000  addli r24, zero, 32
0042bc  1f0e0003  addli r28, zero, 384
0042c0  67081fd6  storeli.w r1, -5248(r30)
0042c4  9f004200  addli r1, r4, 32
0042c8  0b11d110  add.s r2, r2, r13
0042cc  8b11d610  add.s r3, r12, r13
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
00431c  0b14a410  add.s r8, r8, r10
004320  3f200401  blt.s r8, r16, 8
004324  5b17f9ff  j -14152
004328  0b11b410  add.s r2, r8, r11
00432c  cb1f28fe  ble.s r16, r2, -28
004330  e3001f00  loadli.w r1,  8(r30)
004334  8b01a430  div.u r3, r8, r10
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
004364  17112600  or r2, r12, r2
004368  0b275710  add.ul r[15:16], r[15:16], r[6:7]
00436c  7f21d700  l_gm2lm r2, r13, 0(r[15:16])
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
0043d8  0b973610  add.s r14, r13, r3
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
004564  8b993610  add.s r19, r13, r3
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
0046f0  0b979610  add.s r14, r13, r9
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
0048fc  42900402  vload_mask16.mz vr0{mr1}, 0(r9)
004900  9f808400  addli r1, r9, 64
004904  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
004908  9f874700  addli r15, r15, 32
00490c  9f840401  addli r9, r9, 128
004910  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
004914  93804704  setlt.u r1, r15, r4
004918  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
00491c  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
004920  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
004924  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
004928  06110000  vfloat2fp16_l.rn vr2, vr0
00492c  06d10000  vfloat2fp16_h.rn vr2, vr1
004930  46002702  vstore.mz vr2{mr1}, 0(r14)
004934  1f078700  addli r14, r14, 64
004938  3b9f00fe  bneq r1, zero, -60
00493c  6b510f00  load.d r[3:4], 0(r30)
004940  ab0000f0  lui r1, 983040
004944  00a00000  mfence { lm }
004948  97101600  or r1, r12, r1
00494c  0b215110  add.ul r[3:4], r[3:4], r[6:7]
004950  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
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
0049e4  4ba5110c  ble.s r3, r1, 6472
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
004aa8  db100300  j 6276
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
004d48  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
004d4c  1f8c8900  addli r24, r19, 64
004d50  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
004d54  9f8b4b00  addli r23, r23, 32
004d58  9f890901  addli r19, r19, 128
004d5c  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
004d60  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
004d64  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
004d68  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
004d6c  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
004d70  86910000  vfloat2fp16_l.rn vr3, vr1
004d74  86510100  vfloat2fp16_h.rn vr3, vr2
004d78  46003a02  vstore.mz vr3{mr1}, 0(r20)
004d7c  1f0a8a00  addli r20, r20, 64
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
004dfc  cbc4110a  ble.s r3, r1, 5424
004e00  63012f00  loadli.w r2,  16(r30)
004e04  e3412f00  loadli.w r3,  20(r30)
004e08  1f062000  addli r12, zero, 16
004e0c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004e10  1f140000  addli r8, zero, 1
004e14  9f068fd7  addli r13, r30, -5184
004e18  9f050002  addli r11, zero, 256
004e1c  2b08807f  lui r16, 522240
004e20  ab08c07f  lui r17, 523264
004e24  1f090001  addli r18, zero, 128
004e28  9f098000  addli r19, zero, 64
004e2c  1f0a4000  addli r20, zero, 32
004e30  9b321100  slli r5, r2, 1
004e34  0b123110  add.s r4, r2, r3
004e38  33010108  fix2float.rn r2, r2
004e3c  1bb31100  slli r6, r3, 1
004e40  67042fd4  storeli.w r2, -5568(r30)
004e44  1f71f2ff  addli r2, r4, -1
004e48  67085fd4  storeli.w r5, -5504(r30)
004e4c  8b133130  div.s r7, r2, r3
004e50  2bf1ffff  lui r2, 1048575
004e54  ab710000  lui r3, 7
004e58  1b15f1ff  ori r10, r2, 4095
004e5c  1f010fd7  addli r2, r30, -5248
004e60  9b91f1ff  ori r3, r3, 4095
004e64  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004e68  6a200622  vor.u.mz vr0{mr1}, r12, vr0
004e6c  1f018fd6  addli r2, r30, -5312
004e70  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004e74  2b01ffff  lui r2, 1048560
004e78  db080000  j 68
004e7c  9f048fd5  addli r9, r30, -5440
004e80  6b520f00  load.d r[5:6], 0(r30)
004e84  9f068fd7  addli r13, r30, -5184
004e88  ebda0400  load.d r[22:23], 0(r9)
004e8c  00a00000  mfence { lm }
004e90  80540102  load_param_i r9, 2
004e94  8b901410  add.s r1, r9, r1
004e98  8b2a5211  add.ul r[22:23], r[5:6], r[22:23]
004e9c  e3020fd5  loadli.w r5,  -5504(r30)
004ea0  2b0200f0  lui r4, 983040
004ea4  17924200  or r4, r5, r4
004ea8  7fb2da00  s_lm2gm r4, r13, 0(r[22:23])
004eac  00a00200  mfence { lm, gm }
004eb0  63421f00  loadli.w r4,  12(r30)
004eb4  3fa04000  blt.s r1, r4, 8
004eb8  db8e0200  j 5236
004ebc  63021f00  loadli.w r4,  8(r30)
004ec0  9f047fd6  addli r9, r30, -5320
004ec4  0b924010  add.s r4, r1, r4
004ec8  0b12f220  mul.s r4, r4, r15
004ecc  b31a0228  sext_int2long r[22:23], r4
004ed0  2b0200f0  lui r4, 983040
004ed4  97bb8a02  sll.d r[24:25], r[22:23], r8
004ed8  ebda0400  load.d r[22:23], 0(r9)
004edc  17924200  or r4, r5, r4
004ee0  9f048fd5  addli r9, r30, -5440
004ee4  73b07401  store.d r[24:25], 0(r9)
004ee8  8baa7a11  add.ul r[22:23], r[22:23], r[24:25]
004eec  7fa2da00  l_gm2lm r4, r13, 0(r[22:23])
004ef0  00a00200  mfence { lm, gm }
004ef4  bfdc8300  blt.s r7, r8, 820
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
004f54  7a120040  vextracti.f r4, 0(vr0)
004f58  fa920040  vextracti.f r5, 0(vr1)
004f5c  8bed4d10  add.f.rn r27, r27, r4
004f60  0b6d5d10  add.f.rn r26, r26, r5
004f64  373b7e00  beq r28, r7, 716
004f68  1f020e00  addli r4, r28, 0
004f6c  3730b700  beq r14, r11, 12
004f70  1722ae00  xor r4, r28, r10
004f74  0b924310  add.s r4, r7, r4
004f78  9f020fd7  addli r5, r30, -5248
004f7c  8b14e220  mul.s r9, r4, r14
004f80  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
004f84  8b949718  sub.s r9, r15, r9
004f88  8b9ae440  min.s r21, r9, r14
004f8c  92322002  vadd.s.mz vr5{mr1}, zero, vr2
004f90  12322002  vadd.s.mz vr4{mr1}, zero, vr2
004f94  92312002  vadd.s.mz vr3{mr1}, zero, vr2
004f98  bfcd8afe  blt.s r21, r8, -144
004f9c  8b1b4320  mul.s r23, r6, r4
004fa0  1f020fd7  addli r4, r30, -5248
004fa4  ab960100  lui r13, 25
004fa8  1f0b0000  addli r22, zero, 0
004fac  9f048fd7  addli r9, r30, -5184
004fb0  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
004fb4  9f860600  addli r13, r13, 0
004fb8  12315002  vadd.s.mz vr2{mr1}, zero, vr5
004fbc  92315002  vadd.s.mz vr3{mr1}, zero, vr5
004fc0  12325002  vadd.s.mz vr4{mr1}, zero, vr5
004fc4  0b9c7611  add.s r24, r13, r23
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
004ff0  6a357102  vand.s.mz vr10{mr1}, r2, vr7
004ff4  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
004ff8  6a336102  vand.s.mz vr6{mr1}, r2, vr6
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
005024  12b48102  vadd.s.mz vr8{mr1}, r3, vr8
005028  92b49102  vadd.s.mz vr9{mr1}, r3, vr9
00502c  ea338102  vand.s.mz vr7{mr1}, r2, vr8
005030  661403c0  vabs.f vr8, vr6
005034  6a339102  vand.s.mz vr6{mr1}, r2, vr9
005038  eaa30834  vor.u.mh vr7{mr2}, r17, vr0
00503c  72218842  vlt.u.mz mr2{mr1}, r16, vr8
005040  6aa30834  vor.u.mh vr6{mr2}, r17, vr0
005044  4a840c02  vloads.mz vr8{mr1}, 0(r25)
005048  9f0c8200  addli r25, r4, 64
00504c  c2840c02  vload.mz vr9{mr1}, 0(r25)
005050  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
005054  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
005058  6a336102  vand.s.mz vr6{mr1}, r2, vr6
00505c  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
005060  ea349102  vand.s.mz vr9{mr1}, r2, vr9
005064  46007202  vstore.mz vr7{mr1}, 0(r4)
005068  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
00506c  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005070  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
005074  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
005078  6a348102  vand.s.mz vr8{mr1}, r2, vr8
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
0050ac  92b49102  vadd.s.mz vr9{mr1}, r3, vr9
0050b0  92b5b102  vadd.s.mz vr11{mr1}, r3, vr11
0050b4  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
0050b8  ea349102  vand.s.mz vr9{mr1}, r2, vr9
0050bc  6a35b102  vand.s.mz vr10{mr1}, r2, vr11
0050c0  eaa40834  vor.u.mh vr9{mr2}, r17, vr0
0050c4  72218842  vlt.u.mz mr2{mr1}, r16, vr8
0050c8  6aa50834  vor.u.mh vr10{mr2}, r17, vr0
0050cc  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
0050d0  ea34a102  vand.s.mz vr9{mr1}, r2, vr10
0050d4  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0050d8  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0050dc  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0050e0  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0050e4  46808c02  vstore.mz vr8{mr1}, 0(r25)
0050e8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0050ec  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0050f0  4be85afe  ble.s r21, r5, -488
0050f4  9f020c01  addli r5, r24, 128
0050f8  9f0c0201  addli r25, r4, 128
0050fc  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
005100  1f028201  addli r4, r4, 192
005104  1f0b0b01  addli r22, r22, 128
005108  9f860602  addli r13, r13, 256
00510c  9f840402  addli r9, r9, 256
005110  6a237622  vor.u.mz vr6{mr1}, r12, vr7
005114  4a840202  vloads.mz vr8{mr1}, 0(r5)
005118  c2840c02  vload.mz vr9{mr1}, 0(r25)
00511c  9f028c01  addli r5, r24, 192
005120  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
005124  6a309102  vand.s.mz vr0{mr1}, r2, vr9
005128  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
00512c  6a348102  vand.s.mz vr8{mr1}, r2, vr8
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
005158  12b00102  vadd.s.mz vr0{mr1}, r3, vr0
00515c  12b5a102  vadd.s.mz vr10{mr1}, r3, vr10
005160  ea340102  vand.s.mz vr9{mr1}, r2, vr0
005164  661004c0  vabs.f vr0, vr8
005168  6a34a102  vand.s.mz vr8{mr1}, r2, vr10
00516c  eaa47834  vor.u.mh vr9{mr2}, r17, vr7
005170  72210842  vlt.u.mz mr2{mr1}, r16, vr0
005174  6aa47834  vor.u.mh vr8{mr2}, r17, vr7
005178  4a800202  vloads.mz vr0{mr1}, 0(r5)
00517c  42050202  vload.mz vr10{mr1}, 0(r4)
005180  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
005184  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
005188  6a35a102  vand.s.mz vr10{mr1}, r2, vr10
00518c  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
005190  6a348102  vand.s.mz vr8{mr1}, r2, vr8
005194  46809c02  vstore.mz vr9{mr1}, 0(r25)
005198  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
00519c  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
0051a0  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
0051a4  6a300102  vand.s.mz vr0{mr1}, r2, vr0
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
0051d0  12b5a102  vadd.s.mz vr10{mr1}, r3, vr10
0051d4  92b5b102  vadd.s.mz vr11{mr1}, r3, vr11
0051d8  72211842  vlt.u.mz mr2{mr1}, r16, vr1
0051dc  6a35a102  vand.s.mz vr10{mr1}, r2, vr10
0051e0  ea30b102  vand.s.mz vr1{mr1}, r2, vr11
0051e4  6aa57834  vor.u.mh vr10{mr2}, r17, vr7
0051e8  72210842  vlt.u.mz mr2{mr1}, r16, vr0
0051ec  eaa07834  vor.u.mh vr1{mr2}, r17, vr7
0051f0  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
0051f4  ea331102  vand.s.mz vr7{mr1}, r2, vr1
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
005224  db9cffff  j -796
005228  1f0d0000  addli r26, zero, 0
00522c  9f0d0000  addli r27, zero, 0
005230  00a00000  mfence { lm }
005234  3fa187fe  blt.s r15, r8, -952
005238  e3028fd4  loadli.w r5,  -5568(r30)
00523c  2bab0100  lui r22, 26
005240  abbb0100  lui r23, 27
005244  1f020000  addli r4, zero, 0
005248  1f0b0b00  addli r22, r22, 0
00524c  9f8b0b00  addli r23, r23, 0
005250  8f865d18  div.f.rn r13, r27, r5
005254  8f045d18  div.f.rn r9, r26, r5
005258  e3023f00  loadli.w r5,  24(r30)
00525c  8bead620  mul.f.rn r21, r13, r13
005260  8be60658  neg.f r13, r13
005264  8be45419  sub.f.rn r9, r9, r21
005268  9f0a8fd7  addli r21, r30, -5184
00526c  8be45410  add.f.rn r9, r9, r5
005270  ab02803f  lui r5, 260096
005274  8f840408  sqrt.f.rn r9, r9
005278  8f849218  div.f.rn r9, r5, r9
00527c  42820a02  vload.mz vr4{mr1}, 0(r21)
005280  ca020b02  vloads.mz vr5{mr1}, 0(r22)
005284  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
005288  4a830b02  vloads.mz vr6{mr1}, 0(r23)
00528c  1f0c4200  addli r24, r4, 32
005290  ea212622  vor.u.mz vr3{mr1}, r12, vr2
005294  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
005298  6a344102  vand.s.mz vr8{mr1}, r2, vr4
00529c  92937602  vadd.f.mz.rn vr7{mr1}, r13, vr7
0052a0  12948602  vadd.f.mz.rn vr8{mr1}, r13, vr8
0052a4  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
0052a8  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
0052ac  6a355102  vand.s.mz vr10{mr1}, r2, vr5
0052b0  ea326102  vand.s.mz vr5{mr1}, r2, vr6
0052b4  8a937402  vmul.f.mz.rn vr7{mr1}, r9, vr7
0052b8  0a938402  vmul.f.mz.rn vr6{mr1}, r9, vr8
0052bc  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
0052c0  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
0052c4  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
0052c8  6a337402  vand.s.mz vr6{mr1}, r8, vr7
0052cc  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
0052d0  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
0052d4  ea337402  vand.s.mz vr7{mr1}, r8, vr7
0052d8  661202c0  vabs.f vr4, vr4
0052dc  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
0052e0  12b36102  vadd.s.mz vr6{mr1}, r3, vr6
0052e4  e69202c0  vabs.f vr5, vr5
0052e8  72214842  vlt.u.mz mr2{mr1}, r16, vr4
0052ec  6a336102  vand.s.mz vr6{mr1}, r2, vr6
0052f0  92b37102  vadd.s.mz vr7{mr1}, r3, vr7
0052f4  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
0052f8  6a327102  vand.s.mz vr4{mr1}, r2, vr7
0052fc  72215842  vlt.u.mz mr2{mr1}, r16, vr5
005300  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
005304  6aa22834  vor.u.mh vr4{mr2}, r17, vr2
005308  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
00530c  46804a02  vstore.mz vr4{mr1}, 0(r21)
005310  cbbd87fd  ble.s r15, r24, -1172
005314  1f0c8b00  addli r24, r22, 64
005318  9f8c8a00  addli r25, r21, 64
00531c  1f028200  addli r4, r4, 64
005320  1f0b0b01  addli r22, r22, 128
005324  9f8a0a01  addli r21, r21, 128
005328  4a020c02  vloads.mz vr4{mr1}, 0(r24)
00532c  1f8c8b00  addli r24, r23, 64
005330  c2820c02  vload.mz vr5{mr1}, 0(r25)
005334  9f8b0b01  addli r23, r23, 128
005338  4a030c02  vloads.mz vr6{mr1}, 0(r24)
00533c  eeb351a2  vsll.s.mz vr7{mr1}, vr3, vr5
005340  ea325102  vand.s.mz vr5{mr1}, r2, vr5
005344  92937602  vadd.f.mz.rn vr7{mr1}, r13, vr7
005348  12945602  vadd.f.mz.rn vr8{mr1}, r13, vr5
00534c  eeb441a2  vsll.s.mz vr9{mr1}, vr3, vr4
005350  6a354102  vand.s.mz vr10{mr1}, r2, vr4
005354  8a937402  vmul.f.mz.rn vr7{mr1}, r9, vr7
005358  eeb261a2  vsll.s.mz vr5{mr1}, vr3, vr6
00535c  6a326102  vand.s.mz vr4{mr1}, r2, vr6
005360  0a938402  vmul.f.mz.rn vr6{mr1}, r9, vr8
005364  a6929302  vmac.f.mz.rn vr5{mr1}, vr7, vr9
005368  2612a302  vmac.f.mz.rn vr4{mr1}, vr6, vr10
00536c  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
005370  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
005374  6a336402  vand.s.mz vr6{mr1}, r8, vr6
005378  ea337402  vand.s.mz vr7{mr1}, r8, vr7
00537c  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
005380  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
005384  e69202c0  vabs.f vr5, vr5
005388  661202c0  vabs.f vr4, vr4
00538c  12b36102  vadd.s.mz vr6{mr1}, r3, vr6
005390  92b37102  vadd.s.mz vr7{mr1}, r3, vr7
005394  72215842  vlt.u.mz mr2{mr1}, r16, vr5
005398  6a336102  vand.s.mz vr6{mr1}, r2, vr6
00539c  ea327102  vand.s.mz vr5{mr1}, r2, vr7
0053a0  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
0053a4  72214842  vlt.u.mz mr2{mr1}, r16, vr4
0053a8  eaa22834  vor.u.mh vr5{mr2}, r17, vr2
0053ac  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
0053b0  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
0053b4  46802c02  vstore.mz vr2{mr1}, 0(r25)
0053b8  3f1bf2fe  blt.s r4, r15, -316
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
0053f4  cbec1106  ble.s r3, r1, 3896
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
005478  dbd60100  j 3764
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
005724  1f888c00  addli r16, r25, 64
005728  9f088c00  addli r17, r24, 64
00572c  9f8b8b00  addli r23, r23, 64
005730  9f8c0c01  addli r25, r25, 128
005734  1f0c0c01  addli r24, r24, 128
005738  4a010802  vloads.mz vr2{mr1}, 0(r16)
00573c  1f088d00  addli r16, r26, 64
005740  c2810802  vload.mz vr3{mr1}, 0(r17)
005744  1f0d0d01  addli r26, r26, 128
005748  4a020802  vloads.mz vr4{mr1}, 0(r16)
00574c  86b20100  vfp162float_l.rn vr5, vr3
005750  86f10100  vfp162float_h.rn vr3, vr3
005754  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
005758  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
00575c  06330100  vfp162float_l.rn vr6, vr2
005760  06710100  vfp162float_h.rn vr2, vr2
005764  8a925a02  vmul.f.mz.rn vr5{mr1}, r21, vr5
005768  8a913a02  vmul.f.mz.rn vr3{mr1}, r21, vr3
00576c  86330200  vfp162float_l.rn vr7, vr4
005770  06720200  vfp162float_h.rn vr4, vr4
005774  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
005778  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
00577c  86900300  vfloat2fp16_l.rn vr1, vr7
005780  86500200  vfloat2fp16_h.rn vr1, vr4
005784  46801802  vstore.mz vr1{mr1}, 0(r17)
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
0057c8  5bef0000  j 1912
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
005818  3fdc5104  blt.s r3, r5, 2836
00581c  e3000fd7  loadli.w r1,  -5248(r30)
005820  80510102  load_param_i r3, 2
005824  1b441500  srli r8, r10, 1
005828  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00582c  ab180200  lui r17, 33
005830  ab7b0200  lui r23, 39
005834  2b7e0200  lui r28, 39
005838  9f020000  addli r5, zero, 0
00583c  9b342200  slli r9, r4, 2
005840  9f068fd7  addli r13, r30, -5184
005844  1f090005  addli r18, zero, 640
005848  1f0a0001  addli r20, zero, 128
00584c  9f0a8000  addli r21, zero, 64
005850  1f0b4000  addli r22, zero, 32
005854  9f0d0003  addli r27, zero, 384
005858  9bc31100  srli r7, r3, 1
00585c  ab310200  lui r3, 35
005860  9f880800  addli r17, r17, 0
005864  9f8b0b00  addli r23, r23, 0
005868  1f0e0e04  addli r28, r28, 512
00586c  8b902020  mul.s r1, r1, r2
005870  9f810100  addli r3, r3, 0
005874  1bb12000  slli r2, r1, 2
005878  67041fd6  storeli.w r1, -5312(r30)
00587c  abf0ffff  lui r1, 1048575
005880  0b153110  add.s r10, r2, r3
005884  ab510200  lui r3, 37
005888  9b9000f8  ori r1, r1, 3968
00588c  9f810100  addli r3, r3, 0
005890  67081fd4  storeli.w r1, -5504(r30)
005894  8b153110  add.s r11, r2, r3
005898  1f018fd5  addli r2, r30, -5440
00589c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0058a0  2bf10000  lui r2, 15
0058a4  1b1cf1ff  ori r24, r2, 4095
0058a8  db030000  j 28
0058ac  00a00300  mfence { lm, sm, gm }
0058b0  80210c04  csr_set csr3, r24
0058b4  00d00100  sync_group
0058b8  8b927210  add.s r5, r5, r7
0058bc  3fa00201  blt.s r5, r16, 8
0058c0  db63f6ff  j -19684
0058c4  0b918210  add.s r2, r5, r8
0058c8  cb1f28fe  ble.s r16, r2, -28
0058cc  e3001f00  loadli.w r1,  8(r30)
0058d0  0b111110  add.s r2, r2, r1
0058d4  e3008fd6  loadli.w r1,  -5312(r30)
0058d8  1b31b100  slli r2, r2, 11
0058dc  17111100  or r2, r2, r1
0058e0  9f200000  addli r1, zero, 2
0058e4  33110128  sext_int2long r[3:4], r2
0058e8  97371102  sll.d r[16:17], r[3:4], r1
0058ec  9f007fd6  addli r1, r30, -5320
0058f0  2b0100f0  lui r2, 983040
0058f4  ebdc0000  load.d r[26:27], 0(r1)
0058f8  17912400  or r2, r9, r2
0058fc  8bacfc10  add.ul r[26:27], r[26:27], r[16:17]
005900  7fa1dc00  l_gm2lm r2, r13, 0(r[26:27])
005904  00a00200  mfence { lm, gm }
005908  e3000fd7  loadli.w r1,  -5248(r30)
00590c  3ba60000  bneq r1, zero, 392
005910  9f008fd5  addli r1, r30, -5440
005914  e3010fd5  loadli.w r3,  -5504(r30)
005918  1f010000  addli r2, zero, 0
00591c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
005920  92303002  vadd.s.mz vr1{mr1}, zero, vr3
005924  12313002  vadd.s.mz vr2{mr1}, zero, vr3
005928  12323002  vadd.s.mz vr4{mr1}, zero, vr3
00592c  0b171111  add.s r14, r2, r17
005930  0b962610  add.s r12, r13, r2
005934  9f810101  addli r3, r3, 128
005938  1f010104  addli r2, r2, 512
00593c  9f000701  addli r1, r14, 128
005940  4a100702  vloads_mask16.mz vr0{mr1}, 0(r14)
005944  1f038700  addli r6, r14, 64
005948  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
00594c  9f098601  addli r19, r12, 192
005950  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
005954  9f008701  addli r1, r14, 192
005958  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
00595c  1f038600  addli r6, r12, 64
005960  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
005964  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
005968  9f000601  addli r1, r12, 128
00596c  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
005970  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005974  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005978  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00597c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005980  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005984  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005988  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
00598c  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
005990  9f000702  addli r1, r14, 256
005994  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005998  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00599c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0059a0  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
0059a4  1f030603  addli r6, r12, 384
0059a8  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0059ac  9f008702  addli r1, r14, 320
0059b0  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
0059b4  9f090602  addli r19, r12, 256
0059b8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0059bc  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0059c0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0059c4  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0059c8  9f000703  addli r1, r14, 384
0059cc  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
0059d0  1f078703  addli r14, r14, 448
0059d4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0059d8  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0059dc  9f008602  addli r1, r12, 320
0059e0  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
0059e4  1f068603  addli r12, r12, 448
0059e8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0059ec  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0059f0  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
0059f4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0059f8  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0059fc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005a00  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005a04  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
005a08  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005a0c  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
005a10  93802105  setlt.u r1, r3, r18
005a14  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005a18  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005a1c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005a20  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005a24  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005a28  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005a2c  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
005a30  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005a34  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005a38  bbdb00fe  bneq r1, zero, -268
005a3c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005a40  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005a44  9f000002  addli r1, zero, 256
005a48  6af100c0  vsrl.p vr2, r1, vr0
005a4c  eaf110c0  vsrl.p vr3, r1, vr1
005a50  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a54  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a58  6a710ac0  vsrl.p vr2, r20, vr0
005a5c  ea711ac0  vsrl.p vr3, r20, vr1
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
005a90  5b630000  j 792
005a94  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005a98  abf0ffff  lui r1, 1048575
005a9c  1f010000  addli r2, zero, 0
005aa0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005aa4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005aa8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005aac  9b9100f8  ori r3, r1, 3968
005ab0  0b972810  add.s r14, r17, r2
005ab4  0b962610  add.s r12, r13, r2
005ab8  9f810101  addli r3, r3, 128
005abc  1f010104  addli r2, r2, 512
005ac0  1f0d0731  addli r26, r14, 6272
005ac4  1f030730  addli r6, r14, 6144
005ac8  9f008731  addli r1, r14, 6336
005acc  9f0c0618  addli r25, r12, 3072
005ad0  ca130d02  vloads_mask16.mz vr7{mr1}, 0(r26)
005ad4  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
005ad8  1f038730  addli r6, r14, 6208
005adc  ca940002  vloads_mask16.mz vr9{mr1}, 0(r1)
005ae0  9f008618  addli r1, r12, 3136
005ae4  1f0d8619  addli r26, r12, 3264
005ae8  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
005aec  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
005af0  1f030619  addli r6, r12, 3200
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
005b1c  1f030732  addli r6, r14, 6400
005b20  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
005b24  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
005b28  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005b2c  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
005b30  9f0c061a  addli r25, r12, 3328
005b34  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
005b38  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005b3c  9f00061b  addli r1, r12, 3456
005b40  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
005b44  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
005b48  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
005b4c  1f038732  addli r6, r14, 6464
005b50  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005b54  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005b58  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
005b5c  1f030733  addli r6, r14, 6528
005b60  1f078733  addli r14, r14, 6592
005b64  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
005b68  1f03861a  addli r6, r12, 3392
005b6c  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
005b70  1f06861b  addli r12, r12, 3520
005b74  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
005b78  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005b7c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
005b80  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005b84  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
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
005bb8  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
005bbc  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005bc0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005bc4  bb3b03fe  bneq r6, zero, -276
005bc8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005bcc  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005bd0  9f000002  addli r1, zero, 256
005bd4  1f060000  addli r12, zero, 0
005bd8  eaf110c0  vsrl.p vr3, r1, vr1
005bdc  6af100c0  vsrl.p vr2, r1, vr0
005be0  abf0ffff  lui r1, 1048575
005be4  1b9d00f8  ori r26, r1, 3968
005be8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005bec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005bf0  ea711ac0  vsrl.p vr3, r20, vr1
005bf4  6a710ac0  vsrl.p vr2, r20, vr0
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
005c38  8b9cc810  add.s r25, r17, r12
005c3c  0b97c610  add.s r14, r13, r12
005c40  1f0d0d01  addli r26, r26, 128
005c44  1f060604  addli r12, r12, 512
005c48  9f800c18  addli r1, r25, 3072
005c4c  1f830c19  addli r6, r25, 3200
005c50  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
005c54  9f098701  addli r19, r14, 192
005c58  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
005c5c  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
005c60  9f808c18  addli r1, r25, 3136
005c64  1f838c19  addli r6, r25, 3264
005c68  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
005c6c  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
005c70  9f000701  addli r1, r14, 128
005c74  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
005c78  1f038700  addli r6, r14, 64
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
005cac  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
005cb0  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
005cb4  9f808c1a  addli r1, r25, 3392
005cb8  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
005cbc  9f090702  addli r19, r14, 256
005cc0  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005cc4  1f030703  addli r6, r14, 384
005cc8  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
005ccc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005cd0  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
005cd4  9f800c1b  addli r1, r25, 3456
005cd8  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
005cdc  9f8c8c1b  addli r25, r25, 3520
005ce0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005ce4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005ce8  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
005cec  9f008702  addli r1, r14, 320
005cf0  4a950c02  vloads_mask16.mz vr10{mr1}, 0(r25)
005cf4  1f078703  addli r14, r14, 448
005cf8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005cfc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005d00  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
005d04  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005d08  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
005d0c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005d10  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005d14  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
005d18  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005d1c  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
005d20  93002d05  setlt.u r1, r26, r18
005d24  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005d28  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005d2c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005d30  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005d34  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005d38  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005d3c  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
005d40  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005d44  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005d48  bbcb00fe  bneq r1, zero, -272
005d4c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005d50  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005d54  9f000002  addli r1, zero, 256
005d58  6af100c0  vsrl.p vr2, r1, vr0
005d5c  eaf110c0  vsrl.p vr3, r1, vr1
005d60  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d64  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d68  6a710ac0  vsrl.p vr2, r20, vr0
005d6c  ea711ac0  vsrl.p vr3, r20, vr1
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
005d9c  7a960040  vextracti.f r12, 0(vr1)
005da0  0b631110  add.f.rn r6, r2, r1
005da4  8be1c110  add.f.rn r3, r3, r12
005da8  8b807230  div.u r1, r5, r7
005dac  00360002  core_id r12
005db0  1f010000  addli r2, zero, 0
005db4  9bb06000  slli r1, r1, 6
005db8  9b800004  andi r1, r1, 64
005dbc  9790c000  or r1, r1, r12
005dc0  1bb62000  slli r12, r1, 2
005dc4  9b80e007  andi r1, r1, 126
005dc8  0b177611  add.s r14, r12, r23
005dcc  9bb02000  slli r1, r1, 2
005dd0  73606700  stores.w r6, 0(r14)
005dd4  0b13c611  add.s r6, r12, r28
005dd8  1b164600  ori r12, r12, 4
005ddc  73603300  stores.w r3, 0(r6)
005de0  8b117611  add.s r3, r12, r23
005de4  0b937011  add.s r6, r1, r23
005de8  0b16c611  add.s r12, r12, r28
005dec  8b90c011  add.s r1, r1, r28
005df0  00a00300  mfence { lm, sm, gm }
005df4  80210c04  csr_set csr3, r24
005df8  00d00100  sync_group
005dfc  eb5c0f00  load.d r[26:27], 0(r30)
005e00  efc10100  loads.w r3, 0(r3)
005e04  6f430300  loads.w r6, 0(r6)
005e08  6f460600  loads.w r12, 0(r12)
005e0c  efc00000  loads.w r1, 0(r1)
005e10  8ba7fc10  add.ul r[16:17], r[26:27], r[16:17]
005e14  1f0d0000  addli r26, zero, 0
005e18  8be16110  add.f.rn r3, r3, r6
005e1c  8b601610  add.f.rn r1, r12, r1
005e20  2b06003a  lui r12, 237568
005e24  0be3c120  mul.f.rn r6, r3, r12
005e28  8be0c020  mul.f.rn r1, r1, r12
005e2c  8b616320  mul.f.rn r3, r6, r6
005e30  0b660358  neg.f r12, r6
005e34  8be03018  sub.f.rn r1, r1, r3
005e38  e3013f00  loadli.w r3,  24(r30)
005e3c  8be03010  add.f.rn r1, r1, r3
005e40  ab01803f  lui r3, 260096
005e44  8f800008  sqrt.f.rn r1, r1
005e48  8f811118  div.f.rn r3, r3, r1
005e4c  0b172510  add.s r14, r10, r2
005e50  8b9c2610  add.s r25, r13, r2
005e54  0b932510  add.s r6, r11, r2
005e58  9f098700  addli r19, r14, 64
005e5c  9f808c00  addli r1, r25, 64
005e60  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
005e64  4a110702  vloads_mask16.mz vr2{mr1}, 0(r14)
005e68  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
005e6c  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
005e70  9f098300  addli r19, r6, 64
005e74  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
005e78  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
005e7c  9f094d00  addli r19, r26, 32
005e80  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
005e84  93093207  setle.u r19, r4, r19
005e88  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
005e8c  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
005e90  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
005e94  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
005e98  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
005e9c  46904c02  vstore_mask16.mz vr4{mr1}, 0(r25)
005ea0  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005ea4  bb910900  bneq r19, zero, 100
005ea8  9f800c01  addli r1, r25, 128
005eac  9f898c01  addli r19, r25, 192
005eb0  9f0c0701  addli r25, r14, 128
005eb4  1f078701  addli r14, r14, 192
005eb8  1f0d8d00  addli r26, r26, 64
005ebc  1f010102  addli r2, r2, 256
005ec0  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
005ec4  9f0c0301  addli r25, r6, 128
005ec8  1f038301  addli r6, r6, 192
005ecc  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
005ed0  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
005ed4  4a120702  vloads_mask16.mz vr4{mr1}, 0(r14)
005ed8  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
005edc  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
005ee0  13034d04  setlt.u r6, r26, r4
005ee4  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
005ee8  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
005eec  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
005ef0  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
005ef4  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
005ef8  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
005efc  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
005f00  46905902  vstore_mask16.mz vr5{mr1}, 0(r19)
005f04  3b2d03fe  bneq r6, zero, -184
005f08  ab0000f0  lui r1, 983040
005f0c  00a00000  mfence { lm }
005f10  97901400  or r1, r9, r1
005f14  ffb0d700  s_lm2gm r1, r13, 0(r[16:17])
005f18  00a00200  mfence { lm, gm }
005f1c  63481f00  loadli.w r16,  12(r30)
005f20  5b33ffff  j -1640
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
006240  1f0c0000  addli r24, zero, 0
006244  8f812b18  div.f.rn r3, r23, r2
006248  0f032b18  div.f.rn r6, r22, r2
00624c  63013f00  loadli.w r2,  24(r30)
006250  0beb3120  mul.f.rn r22, r3, r3
006254  8beb0158  neg.f r23, r3
006258  0b636319  sub.f.rn r6, r6, r22
00625c  0b632310  add.f.rn r6, r6, r2
006260  2b01803f  lui r2, 260096
006264  0f030308  sqrt.f.rn r6, r6
006268  0f0b6118  div.f.rn r22, r2, r6
00626c  0b932511  add.s r6, r11, r18
006270  8b91b310  add.s r3, r7, r11
006274  9f0c8300  addli r25, r6, 64
006278  4a110302  vloads_mask16.mz vr2{mr1}, 0(r6)
00627c  0b933511  add.s r6, r11, r19
006280  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
006284  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
006288  9f8c8100  addli r25, r3, 64
00628c  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
006290  1f038300  addli r6, r6, 64
006294  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
006298  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
00629c  1f034c00  addli r6, r24, 32
0062a0  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
0062a4  92925b02  vadd.f.mz.rn vr5{mr1}, r23, vr5
0062a8  8a101b02  vmul.f.mz.rn vr1{mr1}, r22, vr1
0062ac  8a125b02  vmul.f.mz.rn vr5{mr1}, r22, vr5
0062b0  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
0062b4  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
0062b8  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
0062bc  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
0062c0  4bb467fe  ble.s r15, r6, -756
0062c4  0b13b910  add.s r6, r18, r11
0062c8  8b9cb910  add.s r25, r19, r11
0062cc  1f0c8c00  addli r24, r24, 64
0062d0  9f850502  addli r11, r11, 256
0062d4  1f0d0301  addli r26, r6, 128
0062d8  9f8d0c01  addli r27, r25, 128
0062dc  1f038301  addli r6, r6, 192
0062e0  9f8c8c01  addli r25, r25, 192
0062e4  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
0062e8  1f8d0101  addli r26, r3, 128
0062ec  9f818101  addli r3, r3, 192
0062f0  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
0062f4  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
0062f8  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
0062fc  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
006300  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
006304  92913b02  vadd.f.mz.rn vr3{mr1}, r23, vr3
006308  12924b02  vadd.f.mz.rn vr4{mr1}, r23, vr4
00630c  8a113b02  vmul.f.mz.rn vr3{mr1}, r22, vr3
006310  0a124b02  vmul.f.mz.rn vr4{mr1}, r22, vr4
006314  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
006318  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
00631c  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
006320  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
006324  3f2dfcfe  blt.s r24, r15, -184
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
