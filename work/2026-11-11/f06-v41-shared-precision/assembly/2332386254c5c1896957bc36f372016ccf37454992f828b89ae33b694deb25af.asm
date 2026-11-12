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
000110  1f4d0000  addli r26, zero, 4
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
0001d8  37f92004  beq r1, r2, 2652
0001dc  1f210000  addli r2, zero, 2
0001e0  3bb82004  bneq r1, r2, 2572
0001e4  e3403f00  loadli.w r1,  28(r30)
0001e8  37b60012  beq r1, zero, 9612
0001ec  80300002  core_id r1
0001f0  1f210000  addli r2, zero, 2
0001f4  37cf2024  beq r1, r2, 19408
0001f8  1f110000  addli r2, zero, 1
0001fc  37ae2024  beq r1, r2, 19336
000200  bb8f0024  bneq r1, zero, 19424
000204  63012f00  loadli.w r2,  16(r30)
000208  ab0100f0  lui r3, 983040
00020c  1b311100  slli r2, r2, 1
000210  17113100  or r2, r2, r3
000214  ab910100  lui r3, 25
000218  9f810100  addli r3, r3, 0
00021c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000220  5b780900  j 19392
000224  1f310000  addli r2, zero, 3
000228  37b92004  beq r1, r2, 2636
00022c  1f410000  addli r2, zero, 4
000230  bbf62004  bneq r1, r2, 2492
000234  e3002f00  loadli.w r1,  16(r30)
000238  1f010010  addli r2, zero, 2048
00023c  bbab2008  bneq r1, r2, 4840
000240  e3403f00  loadli.w r1,  28(r30)
000244  37c80018  beq r1, zero, 12816
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
0003ac  9b881100  andi r17, r3, 1
0003b0  80210104  csr_set csr3, r2
0003b4  1f010006  addli r2, zero, 768
0003b8  00d00100  sync_group
0003bc  37a00800  beq r17, zero, 8
0003c0  9f02000a  addli r5, zero, 1280
0003c4  e3411f00  loadli.w r3,  12(r30)
0003c8  e3441f00  loadli.w r9,  12(r30)
0003cc  1f130000  addli r6, zero, 1
0003d0  3fed612e  blt.s r3, r6, 24408
0003d4  0b912820  mul.s r2, r17, r2
0003d8  9bc11000  srli r3, r1, 1
0003dc  80300002  core_id r1
0003e0  1f0a8fd7  addli r20, r30, -5184
0003e4  1bb81200  slli r16, r5, 1
0003e8  9f030000  addli r7, zero, 0
0003ec  9f7c7000  addli r25, zero, 63
0003f0  9f0d0005  addli r27, zero, 640
0003f4  ab06803f  lui r13, 260096
0003f8  1f072000  addli r14, zero, 16
0003fc  1f3b0000  addli r22, zero, 3
000400  1f5e1000  addli r28, zero, 13
000404  2bec0700  lui r24, 126
000408  1f2d1000  addli r26, zero, 10
00040c  9bc51000  srli r11, r1, 1
000410  9b302100  slli r1, r2, 2
000414  67002fd4  storeli.w r2, -5632(r30)
000418  1f814200  addli r2, r5, 32
00041c  0b994010  add.s r18, r1, r4
000420  8b99a010  add.s r19, r1, r10
000424  9bb02200  slli r1, r5, 2
000428  670f2fd2  storeli.w r2, -5648(r30)
00042c  0b114811  add.s r2, r16, r20
000430  2be27f00  lui r4, 2046
000434  8b904011  add.s r1, r1, r20
000438  9f8080ff  addli r1, r1, -64
00043c  e74e1fd2  storeli.w r1, -5652(r30)
000440  9f0081ff  addli r1, r2, -64
000444  2bf100fc  lui r2, 1032207
000448  e70e1fd2  storeli.w r1, -5656(r30)
00044c  abf0ffff  lui r1, 1048575
000450  1b1401c0  ori r8, r2, 3072
000454  00a00000  mfence { lm }
000458  674f0fd3  storeli.w r16, -5644(r30)
00045c  67041fd5  storeli.w r17, -5568(r30)
000460  e74f3fd2  storeli.w r3, -5636(r30)
000464  e70fbfd2  storeli.w r11, -5640(r30)
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
0004b0  5be50000  j 1832
0004b4  8b90b310  add.s r1, r7, r11
0004b8  cb8f14fe  ble.s r9, r1, -32
0004bc  63011f00  loadli.w r2,  8(r30)
0004c0  8b902010  add.s r1, r1, r2
0004c4  0b813330  div.u r2, r7, r3
0004c8  e3010fd4  loadli.w r3,  -5632(r30)
0004cc  9bb0b000  slli r1, r1, 11
0004d0  97903000  or r1, r1, r3
0004d4  9f017fd6  addli r3, r30, -5320
0004d8  b3940028  sext_int2long r[10:11], r1
0004dc  ab0000f0  lui r1, 983040
0004e0  1b316100  slli r2, r2, 6
0004e4  97b56402  sll.d r[12:13], r[10:11], r6
0004e8  ebd40100  load.d r[10:11], 0(r3)
0004ec  97101800  or r1, r16, r1
0004f0  1b010104  andi r2, r2, 64
0004f4  9f018fd6  addli r3, r30, -5312
0004f8  73b0b100  store.d r[12:13], 0(r3)
0004fc  8ba4b410  add.ul r[10:11], r[10:11], r[12:13]
000500  ffa04401  l_gm2lm r1, r20, 0(r[10:11])
000504  80300002  core_id r1
000508  97101100  or r1, r2, r1
00050c  670c1fd4  storeli.w r1, -5440(r30)
000510  00a00200  mfence { lm, gm }
000514  6301dfd3  loadli.w r2,  -5656(r30)
000518  e341dfd3  loadli.w r3,  -5652(r30)
00051c  e304efd3  loadli.w r9,  -5648(r30)
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
00054c  1f060003  addli r12, zero, 384
000550  1f010000  addli r2, zero, 0
000554  00a00000  mfence { lm }
000558  3ba60800  bneq r17, zero, 392
00055c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000560  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000564  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000568  e341cfd3  loadli.w r3,  -5660(r30)
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
0006d4  fa110040  vextracti.f r3, 0(vr0)
0006d8  fa940040  vextracti.f r9, 0(vr1)
0006dc  db650000  j 812
0006e0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0006e4  abf0ffff  lui r1, 1048575
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
0007bc  1385c104  setlt.u r10, r3, r12
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
000874  7a960040  vextracti.f r12, 0(vr1)
000878  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00087c  fa110040  vextracti.f r3, 0(vr0)
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
000a04  8b642610  add.f.rn r9, r12, r2
000a08  2b650000  lui r10, 6
000a0c  63068fd5  loadli.w r12,  -5440(r30)
000a10  ab680000  lui r17, 6
000a14  1f010000  addli r2, zero, 0
000a18  1f050500  addli r10, r10, 0
000a1c  9f880804  addli r17, r17, 512
000a20  9b302600  slli r1, r12, 2
000a24  1f080500  addli r16, r10, 0
000a28  8b951011  add.s r11, r1, r17
000a2c  0b950011  add.s r10, r1, r16
000a30  9b904000  ori r1, r1, 4
000a34  73e09500  stores.w r9, 0(r11)
000a38  9f050000  addli r11, zero, 0
000a3c  73603500  stores.w r3, 0(r10)
000a40  8b940011  add.s r9, r1, r16
000a44  8b901011  add.s r1, r1, r17
000a48  00a00300  mfence { lm, sm, gm }
000a4c  e3010fd7  loadli.w r3,  -5248(r30)
000a50  80a10104  csr_set csr3, r3
000a54  9b01e607  andi r3, r12, 126
000a58  00d00100  sync_group
000a5c  efc40400  loads.w r9, 0(r9)
000a60  efc00000  loads.w r1, 0(r1)
000a64  9bb12100  slli r3, r3, 2
000a68  0b950111  add.s r10, r3, r16
000a6c  8b911111  add.s r3, r3, r17
000a70  6f450500  loads.w r10, 0(r10)
000a74  efc10100  loads.w r3, 0(r3)
000a78  8be4a410  add.f.rn r9, r9, r10
000a7c  2b05003a  lui r10, 237568
000a80  8be03010  add.f.rn r1, r1, r3
000a84  8be1a420  mul.f.rn r3, r9, r10
000a88  8be0a020  mul.f.rn r1, r1, r10
000a8c  1f058fd7  addli r10, r30, -5184
000a90  8be43120  mul.f.rn r9, r3, r3
000a94  8be10158  neg.f r3, r3
000a98  8be09018  sub.f.rn r1, r1, r9
000a9c  e3043f00  loadli.w r9,  24(r30)
000aa0  8be09010  add.f.rn r1, r1, r9
000aa4  8f800008  sqrt.f.rn r1, r1
000aa8  8f801618  div.f.rn r1, r13, r1
000aac  8b142a10  add.s r9, r20, r2
000ab0  0b182910  add.s r16, r18, r2
000ab4  9f854500  addli r11, r11, 32
000ab8  42900402  vload_mask16.mz vr0{mr1}, 0(r9)
000abc  9f848400  addli r9, r9, 64
000ac0  4a110802  vloads_mask16.mz vr2{mr1}, 0(r16)
000ac4  1f088800  addli r16, r16, 64
000ac8  c2900402  vload_mask16.mz vr1{mr1}, 0(r9)
000acc  8b942910  add.s r9, r19, r2
000ad0  4a120802  vloads_mask16.mz vr4{mr1}, 0(r16)
000ad4  1f010101  addli r2, r2, 128
000ad8  ca910402  vloads_mask16.mz vr3{mr1}, 0(r9)
000adc  9f848400  addli r9, r9, 64
000ae0  ca920402  vloads_mask16.mz vr5{mr1}, 0(r9)
000ae4  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000ae8  93845504  setlt.u r9, r11, r5
000aec  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000af0  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
000af4  0a931002  vmul.f.mz.rn vr6{mr1}, r1, vr1
000af8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000afc  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
000b00  6a201722  vor.u.mz vr0{mr1}, r14, vr1
000b04  a6124302  vmac.f.mz.rn vr5{mr1}, vr6, vr4
000b08  6a221b22  vor.u.mz vr4{mr1}, r22, vr1
000b0c  6e3130c2  vsrl.s.mz vr2{mr1}, vr0, vr3
000b10  6e3050c2  vsrl.s.mz vr0{mr1}, vr0, vr5
000b14  6a312302  vand.s.mz vr2{mr1}, r6, vr2
000b18  6a300302  vand.s.mz vr0{mr1}, r6, vr0
000b1c  16b12102  vadd.s.mz vr2{mr1}, vr3, vr2
000b20  ea211e22  vor.u.mz vr3{mr1}, r28, vr1
000b24  ea201d22  vor.u.mz vr1{mr1}, r26, vr1
000b28  16b00202  vadd.s.mz vr0{mr1}, vr5, vr0
000b2c  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
000b30  12b00a02  vadd.s.mz vr0{mr1}, r21, vr0
000b34  eeb221c2  vsrl.s.mz vr5{mr1}, vr3, vr2
000b38  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
000b3c  eeb101c2  vsrl.s.mz vr3{mr1}, vr3, vr0
000b40  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
000b44  6a325c02  vand.s.mz vr4{mr1}, r24, vr5
000b48  6a312202  vand.s.mz vr2{mr1}, r4, vr2
000b4c  ea313c02  vand.s.mz vr3{mr1}, r24, vr3
000b50  6a300202  vand.s.mz vr0{mr1}, r4, vr0
000b54  6ab24622  vor.s.mz vr4{mr1}, r13, vr4
000b58  6ab12622  vor.s.mz vr2{mr1}, r13, vr2
000b5c  eab13622  vor.s.mz vr3{mr1}, r13, vr3
000b60  6ab00622  vor.s.mz vr0{mr1}, r13, vr0
000b64  86d10120  vfloat2fp16_h.rz vr3, vr3
000b68  06500020  vfloat2fp16_h.rz vr0, vr0
000b6c  86110220  vfloat2fp16_l.rz vr3, vr4
000b70  06100120  vfloat2fp16_l.rz vr0, vr2
000b74  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
000b78  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000b7c  ea301402  vand.s.mz vr1{mr1}, r8, vr1
000b80  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
000b84  46000502  vstore.mz vr0{mr1}, 0(r10)
000b88  1f058500  addli r10, r10, 64
000b8c  bb8c04fe  bneq r9, zero, -224
000b90  9f058fd6  addli r11, r30, -5312
000b94  6b510f00  load.d r[3:4], 0(r30)
000b98  6348efd3  loadli.w r16,  -5644(r30)
000b9c  ab0000f0  lui r1, 983040
000ba0  ebd40500  load.d r[10:11], 0(r11)
000ba4  00a00000  mfence { lm }
000ba8  97101800  or r1, r16, r1
000bac  0b219110  add.ul r[3:4], r[3:4], r[10:11]
000bb0  ff304101  s_lm2gm r1, r20, 0(r[3:4])
000bb4  9f000fd5  addli r1, r30, -5504
000bb8  00a00200  mfence { lm, gm }
000bbc  e3441f00  loadli.w r9,  12(r30)
000bc0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000bc4  e341ffd3  loadli.w r3,  -5636(r30)
000bc8  e305ffd3  loadli.w r11,  -5640(r30)
000bcc  e3088fd4  loadli.w r17,  -5568(r30)
000bd0  8b933310  add.s r7, r7, r3
000bd4  bf8393fc  blt.s r7, r9, -1824
000bd8  abf00000  lui r1, 15
000bdc  9b90f0ff  ori r1, r1, 4095
000be0  80a10004  csr_set csr3, r1
000be4  00d00100  sync_group
000be8  5be80a00  j 22336
000bec  e3403f00  loadli.w r1,  28(r30)
000bf0  b792000a  beq r1, zero, 5284
000bf4  e3002f00  loadli.w r1,  16(r30)
000bf8  1f010010  addli r2, zero, 2048
000bfc  3bc22012  bneq r1, r2, 9360
000c00  00350002  core_id r10
000c04  9f200000  addli r1, zero, 2
000c08  370f1524  beq r10, r1, 19392
000c0c  9f100000  addli r1, zero, 1
000c10  b77d1524  beq r10, r1, 19324
000c14  3b3f0524  bneq r10, zero, 19404
000c18  9f000040  addli r1, zero, 8192
000c1c  2b0100f0  lui r2, 983040
000c20  97902000  or r1, r1, r2
000c24  2b110200  lui r2, 33
000c28  1f010100  addli r2, r2, 0
000c2c  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000c30  5b760900  j 19376
000c34  e3403f00  loadli.w r1,  28(r30)
000c38  37f30010  beq r1, zero, 8412
000c3c  80300002  core_id r1
000c40  1f210000  addli r2, zero, 2
000c44  b7ed2022  beq r1, r2, 18296
000c48  1f110000  addli r2, zero, 1
000c4c  37e52020  beq r1, r2, 16728
000c50  3bae0022  bneq r1, zero, 18312
000c54  63012f00  loadli.w r2,  16(r30)
000c58  ab0100f0  lui r3, 983040
000c5c  1b311100  slli r2, r2, 1
000c60  17113100  or r2, r2, r3
000c64  abd10100  lui r3, 29
000c68  9f810100  addli r3, r3, 0
000c6c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000c70  5bed0800  j 18280
000c74  e3002f00  loadli.w r1,  16(r30)
000c78  1f010010  addli r2, zero, 2048
000c7c  3bcb2006  bneq r1, r2, 3792
000c80  e3403f00  loadli.w r1,  28(r30)
000c84  37e5001a  beq r1, zero, 13656
000c88  803c0002  core_id r25
000c8c  abd70000  lui r15, 13
000c90  00510102  load_param_i r2, 2
000c94  1f150000  addli r10, zero, 1
000c98  9f058fd7  addli r11, r30, -5184
000c9c  1f068000  addli r12, zero, 64
000ca0  9f060010  addli r13, zero, 2048
000ca4  9bb05c00  slli r1, r25, 5
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
000d00  1bb57c00  slli r10, r25, 7
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
000dd8  9b811c00  andi r3, r25, 1
000ddc  1f020006  addli r4, zero, 768
000de0  9b90f0ff  ori r1, r1, 4095
000de4  80a10004  csr_set csr3, r1
000de8  9f000006  addli r1, zero, 768
000dec  00d00100  sync_group
000df0  67083fd6  storeli.w r3, -5248(r30)
000df4  37a00100  beq r3, zero, 8
000df8  1f02000a  addli r4, zero, 1280
000dfc  e3411f00  loadli.w r3,  12(r30)
000e00  63471f00  loadli.w r14,  12(r30)
000e04  1f130000  addli r6, zero, 1
000e08  bf84612a  blt.s r3, r6, 21792
000e0c  e3010fd7  loadli.w r3,  -5248(r30)
000e10  9f068fd7  addli r13, r30, -5184
000e14  1b441100  srli r8, r2, 1
000e18  1f014200  addli r2, r4, 32
000e1c  1b351200  slli r10, r4, 1
000e20  ab3d0100  lui r27, 19
000e24  1f030000  addli r6, zero, 0
000e28  9bc41c00  srli r9, r25, 1
000e2c  9f797000  addli r19, zero, 63
000e30  1f0b0005  addli r22, zero, 640
000e34  1f0d4000  addli r26, zero, 32
000e38  9f0a0003  addli r21, zero, 384
000e3c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000e40  670c2fd4  storeli.w r2, -5440(r30)
000e44  0b11d510  add.s r2, r10, r13
000e48  9f8d0df0  addli r27, r27, -2048
000e4c  8b901120  mul.s r1, r3, r1
000e50  67041fd6  storeli.w r1, -5312(r30)
000e54  9bb02000  slli r1, r1, 2
000e58  8b955010  add.s r11, r1, r5
000e5c  0b967010  add.s r12, r1, r7
000e60  9b302200  slli r1, r4, 2
000e64  ab320100  lui r5, 19
000e68  8b90d010  add.s r1, r1, r13
000e6c  9f8202f4  addli r5, r5, -1536
000e70  9f8080ff  addli r1, r1, -64
000e74  67081fd4  storeli.w r1, -5504(r30)
000e78  9f0081ff  addli r1, r2, -64
000e7c  1f010fd4  addli r2, r30, -5632
000e80  67041fd4  storeli.w r1, -5568(r30)
000e84  abf0ffff  lui r1, 1048575
000e88  00a00000  mfence { lm }
000e8c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000e90  9b9000f8  ori r1, r1, 3968
000e94  e74f1fd2  storeli.w r1, -5636(r30)
000e98  abf00000  lui r1, 15
000e9c  1b9ef0ff  ori r28, r1, 4095
000ea0  db030000  j 28
000ea4  00a00300  mfence { lm, sm, gm }
000ea8  80210e04  csr_set csr3, r28
000eac  00d00100  sync_group
000eb0  0b138310  add.s r6, r6, r8
000eb4  3f20e300  blt.s r6, r14, 8
000eb8  5ba4ffff  j -736
000ebc  8b109310  add.s r1, r6, r9
000ec0  cb1f17fe  ble.s r14, r1, -28
000ec4  63011f00  loadli.w r2,  8(r30)
000ec8  e3018fd6  loadli.w r3,  -5312(r30)
000ecc  8b902010  add.s r1, r1, r2
000ed0  0b018330  div.u r2, r6, r8
000ed4  9bb0b000  slli r1, r1, 11
000ed8  97903000  or r1, r1, r3
000edc  9f110000  addli r3, zero, 1
000ee0  33980028  sext_int2long r[17:18], r1
000ee4  ab0000f0  lui r1, 983040
000ee8  1b316100  slli r2, r2, 6
000eec  17383802  sll.d r[17:18], r[17:18], r3
000ef0  9f017fd6  addli r3, r30, -5320
000ef4  97101500  or r1, r10, r1
000ef8  1b010104  andi r2, r2, 64
000efc  ebdb0100  load.d r[24:25], 0(r3)
000f00  17119101  or r2, r2, r25
000f04  8bab0b11  add.ul r[24:25], r[24:25], r[17:18]
000f08  ffa0db00  l_gm2lm r1, r13, 0(r[24:25])
000f0c  00a00200  mfence { lm, gm }
000f10  e3008fd4  loadli.w r1,  -5568(r30)
000f14  e3010fd5  loadli.w r3,  -5504(r30)
000f18  e3038fd5  loadli.w r7,  -5440(r30)
000f1c  c2800002  vload.mz vr1{mr1}, 0(r1)
000f20  9f83c3ff  addli r7, r7, -32
000f24  1f8981ff  addli r18, r3, -64
000f28  9f8080ff  addli r1, r1, -64
000f2c  13877904  setlt.u r14, r19, r7
000f30  06f10000  vfp162float_h.rn vr2, vr1
000f34  86b00000  vfp162float_l.rn vr1, vr1
000f38  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
000f3c  9f8101ff  addli r3, r3, -128
000f40  46101902  vstore_mask16.mz vr1{mr1}, 0(r18)
000f44  3b6f07fe  bneq r14, zero, -40
000f48  00a00000  mfence { lm }
000f4c  e3000fd7  loadli.w r1,  -5248(r30)
000f50  3bc60000  bneq r1, zero, 400
000f54  9f000fd4  addli r1, r30, -5632
000f58  6347ffd3  loadli.w r14,  -5636(r30)
000f5c  9f010000  addli r3, zero, 0
000f60  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000f64  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000f68  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000f6c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000f70  8b90f110  add.s r1, r3, r15
000f74  8b933610  add.s r7, r13, r3
000f78  1f070701  addli r14, r14, 128
000f7c  9f810104  addli r3, r3, 512
000f80  1f890001  addli r18, r1, 128
000f84  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
000f88  1f8a8000  addli r20, r1, 64
000f8c  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
000f90  9f8b8301  addli r23, r7, 192
000f94  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
000f98  1f898001  addli r18, r1, 192
000f9c  4a130a02  vloads_mask16.mz vr6{mr1}, 0(r20)
000fa0  1f8a8300  addli r20, r7, 64
000fa4  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
000fa8  ca130902  vloads_mask16.mz vr7{mr1}, 0(r18)
000fac  1f890301  addli r18, r7, 128
000fb0  42150a02  vload_mask16.mz vr10{mr1}, 0(r20)
000fb4  c2140902  vload_mask16.mz vr9{mr1}, 0(r18)
000fb8  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
000fbc  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
000fc0  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
000fc4  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
000fc8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000fcc  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
000fd0  46108902  vstore_mask16.mz vr8{mr1}, 0(r18)
000fd4  1f890002  addli r18, r1, 256
000fd8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000fdc  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
000fe0  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000fe4  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
000fe8  4a100902  vloads_mask16.mz vr0{mr1}, 0(r18)
000fec  1f898002  addli r18, r1, 320
000ff0  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
000ff4  9f8b0302  addli r23, r7, 256
000ff8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000ffc  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
001000  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001004  4a130902  vloads_mask16.mz vr6{mr1}, 0(r18)
001008  1f890003  addli r18, r1, 384
00100c  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
001010  9f808003  addli r1, r1, 448
001014  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001018  4a140902  vloads_mask16.mz vr8{mr1}, 0(r18)
00101c  1f898302  addli r18, r7, 320
001020  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
001024  9f800303  addli r1, r7, 384
001028  9f838303  addli r7, r7, 448
00102c  c2140902  vload_mask16.mz vr9{mr1}, 0(r18)
001030  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001034  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001038  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00103c  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001040  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001044  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001048  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
00104c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001050  46106902  vstore_mask16.mz vr6{mr1}, 0(r18)
001054  13096705  setlt.u r18, r14, r22
001058  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00105c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001060  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001064  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001068  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00106c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001070  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001074  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001078  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00107c  bb5b09fe  bneq r18, zero, -268
001080  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001084  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001088  9f000002  addli r1, zero, 256
00108c  6af100c0  vsrl.p vr2, r1, vr0
001090  eaf110c0  vsrl.p vr3, r1, vr1
001094  9f000001  addli r1, zero, 128
001098  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00109c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010a0  6af100c0  vsrl.p vr2, r1, vr0
0010a4  eaf110c0  vsrl.p vr3, r1, vr1
0010a8  9f008000  addli r1, zero, 64
0010ac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010b0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010b4  6af100c0  vsrl.p vr2, r1, vr0
0010b8  eaf110c0  vsrl.p vr3, r1, vr1
0010bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010c4  6a710dc0  vsrl.p vr2, r26, vr0
0010c8  ea711dc0  vsrl.p vr3, r26, vr1
0010cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010d4  fa100040  vextracti.f r1, 0(vr0)
0010d8  fa930040  vextracti.f r7, 0(vr1)
0010dc  db650000  j 812
0010e0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0010e4  abf0ffff  lui r1, 1048575
0010e8  9f010000  addli r3, zero, 0
0010ec  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0010f0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0010f4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0010f8  1b9700f8  ori r14, r1, 3968
0010fc  8b933710  add.s r7, r15, r3
001100  0b993610  add.s r18, r13, r3
001104  1f070701  addli r14, r14, 128
001108  9f810104  addli r3, r3, 512
00110c  9f8b0331  addli r23, r7, 6272
001110  9f800330  addli r1, r7, 6144
001114  1f8c8331  addli r24, r7, 6336
001118  1f0a0918  addli r20, r18, 3072
00111c  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
001120  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
001124  9f808330  addli r1, r7, 6208
001128  ca140c02  vloads_mask16.mz vr9{mr1}, 0(r24)
00112c  9f0b0919  addli r23, r18, 3200
001130  42130a02  vload_mask16.mz vr6{mr1}, 0(r20)
001134  1f0c8919  addli r24, r18, 3264
001138  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
00113c  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
001140  9f008918  addli r1, r18, 3136
001144  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
001148  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
00114c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001150  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
001154  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
001158  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
00115c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001160  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
001164  46106a02  vstore_mask16.mz vr6{mr1}, 0(r20)
001168  1f8a0332  addli r20, r7, 6400
00116c  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
001170  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
001174  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001178  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
00117c  9f0b091a  addli r23, r18, 3328
001180  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
001184  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001188  9f00091b  addli r1, r18, 3456
00118c  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
001190  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001194  4a100a02  vloads_mask16.mz vr0{mr1}, 0(r20)
001198  1f8a8332  addli r20, r7, 6464
00119c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0011a0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0011a4  4a130a02  vloads_mask16.mz vr6{mr1}, 0(r20)
0011a8  1f8a0333  addli r20, r7, 6528
0011ac  9f838333  addli r7, r7, 6592
0011b0  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
0011b4  1f0a891a  addli r20, r18, 3392
0011b8  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
0011bc  9f03891b  addli r7, r18, 3520
0011c0  13095705  setlt.u r18, r14, r21
0011c4  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
0011c8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0011cc  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0011d0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0011d4  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0011d8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0011dc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0011e0  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
0011e4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0011e8  46106a02  vstore_mask16.mz vr6{mr1}, 0(r20)
0011ec  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0011f0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0011f4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0011f8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0011fc  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001200  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001204  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001208  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00120c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001210  bb3b09fe  bneq r18, zero, -276
001214  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001218  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00121c  9f000002  addli r1, zero, 256
001220  1f0a0000  addli r20, zero, 0
001224  eaf110c0  vsrl.p vr3, r1, vr1
001228  6af100c0  vsrl.p vr2, r1, vr0
00122c  9f000001  addli r1, zero, 128
001230  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001234  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001238  eaf110c0  vsrl.p vr3, r1, vr1
00123c  6af100c0  vsrl.p vr2, r1, vr0
001240  9f008000  addli r1, zero, 64
001244  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001248  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00124c  eaf110c0  vsrl.p vr3, r1, vr1
001250  6af100c0  vsrl.p vr2, r1, vr0
001254  abf0ffff  lui r1, 1048575
001258  1b9900f8  ori r18, r1, 3968
00125c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001260  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001264  ea711dc0  vsrl.p vr3, r26, vr1
001268  6a710dc0  vsrl.p vr2, r26, vr0
00126c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001270  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001274  7a970040  vextracti.f r14, 0(vr1)
001278  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00127c  fa110040  vextracti.f r3, 0(vr0)
001280  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001284  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001288  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00128c  8b904711  add.s r1, r15, r20
001290  8b934611  add.s r7, r13, r20
001294  1f090901  addli r18, r18, 128
001298  1f0a0a04  addli r20, r20, 512
00129c  9f8b0018  addli r23, r1, 3072
0012a0  1f8c0019  addli r24, r1, 3200
0012a4  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
0012a8  9f8c8301  addli r25, r7, 192
0012ac  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
0012b0  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
0012b4  9f8b8018  addli r23, r1, 3136
0012b8  1f8c8019  addli r24, r1, 3264
0012bc  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0012c0  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
0012c4  9f8b0301  addli r23, r7, 128
0012c8  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
0012cc  1f8c8300  addli r24, r7, 64
0012d0  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
0012d4  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
0012d8  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0012dc  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0012e0  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0012e4  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0012e8  46908b02  vstore_mask16.mz vr8{mr1}, 0(r23)
0012ec  9f8b001a  addli r23, r1, 3328
0012f0  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0012f4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0012f8  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0012fc  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
001300  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
001304  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
001308  9f8b801a  addli r23, r1, 3392
00130c  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
001310  9f8c0302  addli r25, r7, 256
001314  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
001318  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00131c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001320  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
001324  9f8b001b  addli r23, r1, 3456
001328  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
00132c  9f80801b  addli r1, r1, 3520
001330  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001334  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001338  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
00133c  9f8b8302  addli r23, r7, 320
001340  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
001344  9f800303  addli r1, r7, 384
001348  9f838303  addli r7, r7, 448
00134c  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
001350  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001354  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001358  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00135c  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001360  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001364  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001368  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
00136c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001370  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
001374  930b6905  setlt.u r23, r18, r22
001378  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00137c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001380  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001384  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001388  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00138c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001390  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001394  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001398  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00139c  bbcb0bfe  bneq r23, zero, -272
0013a0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0013a4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0013a8  9f000002  addli r1, zero, 256
0013ac  803c0002  core_id r25
0013b0  6af100c0  vsrl.p vr2, r1, vr0
0013b4  eaf110c0  vsrl.p vr3, r1, vr1
0013b8  9f000001  addli r1, zero, 128
0013bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013c4  6af100c0  vsrl.p vr2, r1, vr0
0013c8  eaf110c0  vsrl.p vr3, r1, vr1
0013cc  9f008000  addli r1, zero, 64
0013d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013d4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013d8  6af100c0  vsrl.p vr2, r1, vr0
0013dc  eaf110c0  vsrl.p vr3, r1, vr1
0013e0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013e4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013e8  6a710dc0  vsrl.p vr2, r26, vr0
0013ec  ea711dc0  vsrl.p vr3, r26, vr1
0013f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013f4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013f8  fa100040  vextracti.f r1, 0(vr0)
0013fc  fa930040  vextracti.f r7, 0(vr1)
001400  8be01110  add.f.rn r1, r3, r1
001404  8b637710  add.f.rn r7, r14, r7
001408  1b372100  slli r14, r2, 2
00140c  9f010000  addli r3, zero, 0
001410  0b19b711  add.s r18, r14, r27
001414  0b1a5710  add.s r20, r14, r5
001418  73601900  stores.w r1, 0(r18)
00141c  9b00e107  andi r1, r2, 126
001420  1b114700  ori r2, r14, 4
001424  73607a00  stores.w r7, 0(r20)
001428  00a00300  mfence { lm, sm, gm }
00142c  80210e04  csr_set csr3, r28
001430  00d00100  sync_group
001434  9bb02000  slli r1, r1, 2
001438  8b13b111  add.s r7, r2, r27
00143c  0b115110  add.s r2, r2, r5
001440  0b97b011  add.s r14, r1, r27
001444  efc30300  loads.w r7, 0(r7)
001448  8b905010  add.s r1, r1, r5
00144c  6f410100  loads.w r2, 0(r2)
001450  6f470700  loads.w r14, 0(r14)
001454  efc00000  loads.w r1, 0(r1)
001458  8be3e310  add.f.rn r7, r7, r14
00145c  2b07003a  lui r14, 237568
001460  8b601110  add.f.rn r1, r2, r1
001464  0be1e320  mul.f.rn r2, r7, r14
001468  8be0e020  mul.f.rn r1, r1, r14
00146c  1f070000  addli r14, zero, 0
001470  8b632120  mul.f.rn r7, r2, r2
001474  0b610158  neg.f r2, r2
001478  8be07018  sub.f.rn r1, r1, r7
00147c  e3033f00  loadli.w r7,  24(r30)
001480  8be07010  add.f.rn r1, r1, r7
001484  ab03803f  lui r7, 260096
001488  8f800008  sqrt.f.rn r1, r1
00148c  8f801318  div.f.rn r1, r7, r1
001490  9f038fd7  addli r7, r30, -5184
001494  0b993610  add.s r18, r13, r3
001498  0b9a3510  add.s r20, r11, r3
00149c  1f074700  addli r14, r14, 32
0014a0  42100902  vload_mask16.mz vr0{mr1}, 0(r18)
0014a4  1f098900  addli r18, r18, 64
0014a8  4a110a02  vloads_mask16.mz vr2{mr1}, 0(r20)
0014ac  1f0a8a00  addli r20, r20, 64
0014b0  c2100902  vload_mask16.mz vr1{mr1}, 0(r18)
0014b4  0b193610  add.s r18, r12, r3
0014b8  4a120a02  vloads_mask16.mz vr4{mr1}, 0(r20)
0014bc  9f810101  addli r3, r3, 128
0014c0  ca110902  vloads_mask16.mz vr3{mr1}, 0(r18)
0014c4  1f098900  addli r18, r18, 64
0014c8  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
0014cc  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
0014d0  13094704  setlt.u r18, r14, r4
0014d4  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0014d8  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
0014dc  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0014e0  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
0014e4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0014e8  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0014ec  06900100  vfloat2fp16_l.rn vr0, vr3
0014f0  06d00200  vfloat2fp16_h.rn vr0, vr5
0014f4  46800302  vstore.mz vr0{mr1}, 0(r7)
0014f8  9f838300  addli r7, r7, 64
0014fc  3b6e09fe  bneq r18, zero, -104
001500  6b510f00  load.d r[3:4], 0(r30)
001504  ab0000f0  lui r1, 983040
001508  00a00000  mfence { lm }
00150c  97101500  or r1, r10, r1
001510  0b210111  add.ul r[3:4], r[3:4], r[17:18]
001514  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
001518  00a00200  mfence { lm, gm }
00151c  63471f00  loadli.w r14,  12(r30)
001520  5b32ffff  j -1648
001524  e3403f00  loadli.w r1,  28(r30)
001528  b7ae0012  beq r1, zero, 10152
00152c  803b0002  core_id r23
001530  63012f00  loadli.w r2,  16(r30)
001534  805c0102  load_param_i r25, 2
001538  9bb05b00  slli r1, r23, 5
00153c  4b431100  ble.s r2, r1, 208
001540  2b960000  lui r12, 9
001544  9f110000  addli r3, zero, 1
001548  1f058fd7  addli r10, r30, -5184
00154c  9f058000  addli r11, zero, 64
001550  1bb15c00  slli r2, r25, 5
001554  9f860000  addli r13, r1, 0
001558  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00155c  1f0606f0  addli r12, r12, -2048
001560  33880628  zext_int2long r[17:18], r13
001564  2b0900f0  lui r18, 983040
001568  17383802  sll.d r[17:18], r[17:18], r3
00156c  17992501  or r18, r11, r18
001570  0b280211  add.ul r[17:18], r[5:6], r[17:18]
001574  7f29a800  l_gm2lm r18, r10, 0(r[17:18])
001578  1bb82600  slli r16, r13, 2
00157c  8b16d110  add.s r13, r2, r13
001580  00a00200  mfence { lm, gm }
001584  c2000502  vload.mz vr1{mr1}, 0(r10)
001588  0b18c810  add.s r16, r16, r12
00158c  9f088800  addli r17, r16, 64
001590  66411080  vmerge_l.hf vr2, vr0, vr1
001594  e64010a0  vmerge_h.hf vr1, vr0, vr1
001598  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
00159c  4e901802  vstores_mask16.mz vr1{mr1}, 0(r17)
0015a0  3f8ff6fe  blt.s r13, r15, -64
0015a4  2ba20000  lui r4, 10
0015a8  9bb17b00  slli r3, r23, 7
0015ac  9f120000  addli r5, zero, 1
0015b0  1f058fd7  addli r10, r30, -5184
0015b4  9f058000  addli r11, zero, 64
0015b8  1f860000  addli r12, r1, 0
0015bc  00a00000  mfence { lm }
0015c0  1f0202f0  addli r4, r4, -2048
0015c4  8b914110  add.s r3, r3, r4
0015c8  1bb27c00  slli r4, r25, 7
0015cc  33080628  zext_int2long r[17:18], r12
0015d0  ab0600f0  lui r13, 983040
0015d4  0b162610  add.s r12, r12, r2
0015d8  17385802  sll.d r[17:18], r[17:18], r5
0015dc  9796d500  or r13, r11, r13
0015e0  0b280311  add.ul r[17:18], r[7:8], r[17:18]
0015e4  ff26a800  l_gm2lm r13, r10, 0(r[17:18])
0015e8  9f868100  addli r13, r3, 64
0015ec  00a00200  mfence { lm, gm }
0015f0  c2000502  vload.mz vr1{mr1}, 0(r10)
0015f4  66411080  vmerge_l.hf vr2, vr0, vr1
0015f8  e64010a0  vmerge_h.hf vr1, vr0, vr1
0015fc  4e902102  vstores_mask16.mz vr2{mr1}, 0(r3)
001600  8b914110  add.s r3, r3, r4
001604  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
001608  3f1ff6fe  blt.s r12, r15, -60
00160c  63012f00  loadli.w r2,  16(r30)
001610  cb211100  ble.s r2, r1, 104
001614  2bb30000  lui r6, 11
001618  1f110000  addli r2, zero, 1
00161c  9f018fd7  addli r3, r30, -5184
001620  1f028000  addli r4, zero, 64
001624  9bb25c00  slli r5, r25, 5
001628  00a00000  mfence { lm }
00162c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001630  1f0303f0  addli r6, r6, -2048
001634  33850028  zext_int2long r[11:12], r1
001638  ab0300f0  lui r7, 983040
00163c  17352502  sll.d r[11:12], r[11:12], r2
001640  97137200  or r7, r4, r7
001644  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001648  ff233500  l_gm2lm r7, r3, 0(r[11:12])
00164c  9bb32000  slli r7, r1, 2
001650  8b901210  add.s r1, r5, r1
001654  00a00200  mfence { lm, gm }
001658  c2800102  vload.mz vr1{mr1}, 0(r3)
00165c  8b936310  add.s r7, r7, r6
001660  1f858300  addli r10, r7, 64
001664  66411080  vmerge_l.hf vr2, vr0, vr1
001668  e64010a0  vmerge_h.hf vr1, vr0, vr1
00166c  4e902302  vstores_mask16.mz vr2{mr1}, 0(r7)
001670  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001674  3f8ff0fe  blt.s r1, r15, -64
001678  abf00000  lui r1, 15
00167c  63411f00  loadli.w r2,  12(r30)
001680  00a00300  mfence { lm, sm, gm }
001684  9b90f0ff  ori r1, r1, 4095
001688  80a10004  csr_set csr3, r1
00168c  00d00100  sync_group
001690  4b627127  ble.s r2, r23, 19608
001694  e3002f00  loadli.w r1,  16(r30)
001698  63412f00  loadli.w r2,  20(r30)
00169c  1f048fd7  addli r8, r30, -5184
0016a0  9f150000  addli r11, zero, 1
0016a4  1f064000  addli r12, zero, 32
0016a8  1f757000  addli r10, zero, 63
0016ac  9f080002  addli r17, zero, 256
0016b0  9f040001  addli r9, zero, 128
0016b4  1f0a8000  addli r20, zero, 64
0016b8  ab0a803f  lui r21, 260096
0016bc  2bed7f00  lui r26, 2046
0016c0  2bee0700  lui r28, 126
0016c4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0016c8  8b912010  add.s r3, r1, r2
0016cc  33820008  fix2float.rn r4, r1
0016d0  1bb31000  slli r6, r1, 1
0016d4  9bb22000  slli r5, r1, 2
0016d8  9f804000  addli r1, r1, 32
0016dc  9b392100  slli r19, r2, 2
0016e0  e70f1fd2  storeli.w r1, -5640(r30)
0016e4  8b908210  add.s r1, r5, r8
0016e8  9ff1f1ff  addli r3, r3, -1
0016ec  e74f4fd2  storeli.w r4, -5636(r30)
0016f0  0b922130  div.s r4, r3, r2
0016f4  9f8080ff  addli r1, r1, -64
0016f8  8b118310  add.s r3, r6, r8
0016fc  674f1fd2  storeli.w r1, -5644(r30)
001700  9f8081ff  addli r1, r3, -64
001704  670f1fd2  storeli.w r1, -5648(r30)
001708  abf0ffff  lui r1, 1048575
00170c  00a00000  mfence { lm }
001710  67049fd5  storeli.w r25, -5568(r30)
001714  67006fd4  storeli.w r6, -5632(r30)
001718  9b90f0ff  ori r1, r1, 4095
00171c  67041fd6  storeli.w r1, -5312(r30)
001720  ab700000  lui r1, 7
001724  1b9cf0ff  ori r24, r1, 4095
001728  ab00ff03  lui r1, 16368
00172c  1b9bf03f  ori r22, r1, 1023
001730  abf000fc  lui r1, 1032207
001734  9b9300c0  ori r7, r1, 3072
001738  9f000fd7  addli r1, r30, -5248
00173c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001740  db090000  j 76
001744  1f040fd5  addli r8, r30, -5504
001748  6b510f00  load.d r[3:4], 0(r30)
00174c  ab0000f0  lui r1, 983040
001750  1f757000  addli r10, zero, 63
001754  eb520400  load.d r[6:7], 0(r8)
001758  1f048fd7  addli r8, r30, -5184
00175c  0b215110  add.ul r[3:4], r[3:4], r[6:7]
001760  63030fd4  loadli.w r6,  -5632(r30)
001764  00a00000  mfence { lm }
001768  e30b8fd5  loadli.w r23,  -5440(r30)
00176c  e30c8fd4  loadli.w r25,  -5568(r30)
001770  97101300  or r1, r6, r1
001774  8b9b7c11  add.s r23, r25, r23
001778  ff308100  s_lm2gm r1, r8, 0(r[3:4])
00177c  00a00200  mfence { lm, gm }
001780  e3401f00  loadli.w r1,  12(r30)
001784  3fa01b00  blt.s r23, r1, 8
001788  5b740900  j 19360
00178c  e3001f00  loadli.w r1,  8(r30)
001790  9f027fd6  addli r5, r30, -5320
001794  9f860900  addli r13, r19, 0
001798  8b901b10  add.s r1, r23, r1
00179c  8b90f020  mul.s r1, r1, r15
0017a0  b3900028  sext_int2long r[2:3], r1
0017a4  17b9b002  sll.d r[19:20], r[2:3], r11
0017a8  6bd10200  load.d r[3:4], 0(r5)
0017ac  ab0000f0  lui r1, 983040
0017b0  9f020fd5  addli r5, r30, -5504
0017b4  97101300  or r1, r6, r1
0017b8  73b02201  store.d r[19:20], 0(r5)
0017bc  0b212111  add.ul r[3:4], r[3:4], r[19:20]
0017c0  ff208100  l_gm2lm r1, r8, 0(r[3:4])
0017c4  00a00200  mfence { lm, gm }
0017c8  bff0c700  blt.s r15, r12, 60
0017cc  e300efd3  loadli.w r1,  -5648(r30)
0017d0  6341efd3  loadli.w r2,  -5644(r30)
0017d4  e301ffd3  loadli.w r3,  -5640(r30)
0017d8  c2800002  vload.mz vr1{mr1}, 0(r1)
0017dc  9f81c1ff  addli r3, r3, -32
0017e0  1f0481ff  addli r8, r2, -64
0017e4  9f8080ff  addli r1, r1, -64
0017e8  93023504  setlt.u r5, r10, r3
0017ec  664110a0  vmerge_h.hf vr2, vr0, vr1
0017f0  e6401080  vmerge_l.hf vr1, vr0, vr1
0017f4  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
0017f8  1f0101ff  addli r2, r2, -128
0017fc  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
001800  3bef02fe  bneq r5, zero, -40
001804  670c7fd5  storeli.w r23, -5440(r30)
001808  00a00000  mfence { lm }
00180c  bf67b200  blt.s r4, r11, 504
001810  1f050000  addli r10, zero, 0
001814  9f020000  addli r5, zero, 0
001818  1f040000  addli r8, zero, 0
00181c  9f890600  addli r19, r13, 0
001820  db0d0000  j 108
001824  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001828  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00182c  1f140400  addli r8, r8, 1
001830  6af108c0  vsrl.p vr2, r17, vr0
001834  eaf118c0  vsrl.p vr3, r17, vr1
001838  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00183c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001840  6af104c0  vsrl.p vr2, r9, vr0
001844  eaf114c0  vsrl.p vr3, r9, vr1
001848  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00184c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001850  6a710ac0  vsrl.p vr2, r20, vr0
001854  ea711ac0  vsrl.p vr3, r20, vr1
001858  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00185c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001860  6a7106c0  vsrl.p vr2, r12, vr0
001864  ea7116c0  vsrl.p vr3, r12, vr1
001868  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00186c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001870  fa100040  vextracti.f r1, 0(vr0)
001874  7a910040  vextracti.f r2, 0(vr1)
001878  0b651510  add.f.rn r10, r10, r1
00187c  9f000fd7  addli r1, r30, -5248
001880  8be22210  add.f.rn r5, r5, r2
001884  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001888  37264400  beq r8, r4, 392
00188c  9f000400  addli r1, r8, 0
001890  37401701  beq r14, r17, 16
001894  e3008fd6  loadli.w r1,  -5312(r30)
001898  97201400  xor r1, r8, r1
00189c  8b101210  add.s r1, r4, r1
0018a0  0b91e020  mul.s r2, r1, r14
0018a4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0018a8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0018ac  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0018b0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0018b4  0b912718  sub.s r2, r15, r2
0018b8  0b11e140  min.s r2, r2, r14
0018bc  bf2db1fe  blt.s r2, r11, -152
0018c0  1f030fd7  addli r6, r30, -5248
0018c4  ab960000  lui r13, 9
0018c8  9f010000  addli r3, zero, 0
0018cc  8b901920  mul.s r1, r19, r1
0018d0  1f098fd7  addli r18, r30, -5184
0018d4  42120302  vload_mask16.mz vr4{mr1}, 0(r6)
0018d8  9f8606f0  addli r13, r13, -2048
0018dc  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0018e0  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0018e4  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0018e8  8b9b1610  add.s r23, r13, r1
0018ec  0b181910  add.s r16, r18, r1
0018f0  9f8c8b00  addli r25, r23, 64
0018f4  ca920b02  vloads_mask16.mz vr5{mr1}, 0(r23)
0018f8  9f8d8b01  addli r27, r23, 192
0018fc  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
001900  1f038801  addli r6, r16, 192
001904  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
001908  9f8c0b01  addli r25, r23, 128
00190c  4a940d02  vloads_mask16.mz vr8{mr1}, 0(r27)
001910  9f0d0801  addli r27, r16, 128
001914  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
001918  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
00191c  c2950d02  vload_mask16.mz vr11{mr1}, 0(r27)
001920  9f0c8800  addli r25, r16, 64
001924  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
001928  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00192c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001930  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001934  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001938  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00193c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001940  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
001944  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
001948  9f8c8100  addli r25, r3, 64
00194c  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
001950  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001954  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001958  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
00195c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001960  46907d02  vstore_mask16.mz vr7{mr1}, 0(r27)
001964  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001968  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00196c  cb6a91ff  ble.s r2, r25, -328
001970  9f8c0b02  addli r25, r23, 256
001974  9f8d8b02  addli r27, r23, 320
001978  1f030802  addli r6, r16, 256
00197c  9f810101  addli r3, r3, 128
001980  9f860604  addli r13, r13, 512
001984  1f090904  addli r18, r18, 512
001988  4a900c02  vloads_mask16.mz vr0{mr1}, 0(r25)
00198c  9f8c0b03  addli r25, r23, 384
001990  9f8b8b03  addli r23, r23, 448
001994  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
001998  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
00199c  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
0019a0  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
0019a4  9f0b0803  addli r23, r16, 384
0019a8  9f0c8802  addli r25, r16, 320
0019ac  1f088803  addli r16, r16, 448
0019b0  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
0019b4  c2940c02  vload_mask16.mz vr9{mr1}, 0(r25)
0019b8  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0019bc  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
0019c0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0019c4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0019c8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0019cc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0019d0  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
0019d4  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
0019d8  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0019dc  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0019e0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0019e4  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
0019e8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0019ec  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0019f0  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0019f4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0019f8  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0019fc  bfbb21fe  blt.s r3, r2, -276
001a00  dbc4ffff  j -476
001a04  9f020000  addli r5, zero, 0
001a08  1f050000  addli r10, zero, 0
001a0c  9f890600  addli r19, r13, 0
001a10  1f032000  addli r6, zero, 16
001a14  9f3b0000  addli r23, zero, 3
001a18  9f5c1000  addli r25, zero, 13
001a1c  9f2d1000  addli r27, zero, 10
001a20  00a00000  mfence { lm }
001a24  bf84b7fe  blt.s r15, r11, -736
001a28  6341ffd3  loadli.w r2,  -5636(r30)
001a2c  abb60000  lui r13, 11
001a30  9f000000  addli r1, zero, 0
001a34  1f048fd7  addli r8, r30, -5184
001a38  9f8606f0  addli r13, r13, -2048
001a3c  8f012518  div.f.rn r3, r10, r2
001a40  0f812218  div.f.rn r2, r5, r2
001a44  2ba50000  lui r10, 10
001a48  1f0505f0  addli r10, r10, -2048
001a4c  8be23120  mul.f.rn r5, r3, r3
001a50  8be10158  neg.f r3, r3
001a54  0b615118  sub.f.rn r2, r2, r5
001a58  e3023f00  loadli.w r5,  24(r30)
001a5c  0b615110  add.f.rn r2, r2, r5
001a60  9f028fd7  addli r5, r30, -5184
001a64  0f010108  sqrt.f.rn r2, r2
001a68  0f812a18  div.f.rn r2, r21, r2
001a6c  1f888200  addli r16, r5, 64
001a70  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
001a74  1f898600  addli r18, r13, 64
001a78  4a920602  vloads_mask16.mz vr4{mr1}, 0(r13)
001a7c  ca110502  vloads_mask16.mz vr3{mr1}, 0(r10)
001a80  9f804000  addli r1, r1, 32
001a84  9f860601  addli r13, r13, 128
001a88  9f820201  addli r5, r5, 128
001a8c  42110802  vload_mask16.mz vr2{mr1}, 0(r16)
001a90  1f088500  addli r16, r10, 64
001a94  4a130902  vloads_mask16.mz vr6{mr1}, 0(r18)
001a98  1f050501  addli r10, r10, 128
001a9c  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
001aa0  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001aa4  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
001aa8  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
001aac  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
001ab0  26923002  vmac.f.mz.rn vr4{mr1}, vr1, vr3
001ab4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001ab8  ea211322  vor.u.mz vr3{mr1}, r6, vr1
001abc  26135102  vmac.f.mz.rn vr6{mr1}, vr2, vr5
001ac0  eaa21b22  vor.u.mz vr5{mr1}, r23, vr1
001ac4  6eb141c2  vsrl.s.mz vr2{mr1}, vr3, vr4
001ac8  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
001acc  6ab12502  vand.s.mz vr2{mr1}, r11, vr2
001ad0  eab13502  vand.s.mz vr3{mr1}, r11, vr3
001ad4  16312202  vadd.s.mz vr2{mr1}, vr4, vr2
001ad8  6aa21c22  vor.u.mz vr4{mr1}, r25, vr1
001adc  eaa01d22  vor.u.mz vr1{mr1}, r27, vr1
001ae0  96313302  vadd.s.mz vr3{mr1}, vr6, vr3
001ae4  12312c02  vadd.s.mz vr2{mr1}, r24, vr2
001ae8  92313c02  vadd.s.mz vr3{mr1}, r24, vr3
001aec  6e3322c2  vsrl.s.mz vr6{mr1}, vr4, vr2
001af0  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
001af4  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
001af8  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
001afc  ea326e02  vand.s.mz vr5{mr1}, r28, vr6
001b00  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
001b04  6a324e02  vand.s.mz vr4{mr1}, r28, vr4
001b08  ea313d02  vand.s.mz vr3{mr1}, r26, vr3
001b0c  6ab12a22  vor.s.mz vr2{mr1}, r21, vr2
001b10  eab25a22  vor.s.mz vr5{mr1}, r21, vr5
001b14  6ab24a22  vor.s.mz vr4{mr1}, r21, vr4
001b18  eab13a22  vor.s.mz vr3{mr1}, r21, vr3
001b1c  06110120  vfloat2fp16_l.rz vr2, vr2
001b20  06520220  vfloat2fp16_h.rz vr4, vr4
001b24  06d10120  vfloat2fp16_h.rz vr2, vr3
001b28  06920220  vfloat2fp16_l.rz vr4, vr5
001b2c  6a312b02  vand.s.mz vr2{mr1}, r22, vr2
001b30  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
001b34  eab01302  vand.s.mz vr1{mr1}, r7, vr1
001b38  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
001b3c  46001402  vstore.mz vr1{mr1}, 0(r8)
001b40  1f048400  addli r8, r8, 64
001b44  bfacf0fe  blt.s r1, r15, -216
001b48  db7fffff  j -1028
001b4c  e3403f00  loadli.w r1,  28(r30)
001b50  37a80016  beq r1, zero, 11784
001b54  80300002  core_id r1
001b58  e3012f00  loadli.w r3,  16(r30)
001b5c  1bb15000  slli r2, r1, 5
001b60  4bc32100  ble.s r3, r2, 208
001b64  2b580100  lui r16, 21
001b68  00550102  load_param_i r10, 2
001b6c  9f150000  addli r11, zero, 1
001b70  1f068fd7  addli r12, r30, -5184
001b74  9f068000  addli r13, zero, 64
001b78  9f080100  addli r17, r2, 0
001b7c  9b315500  slli r3, r10, 5
001b80  1f080800  addli r16, r16, 0
001b84  33890828  zext_int2long r[19:20], r17
001b88  2b0a00f0  lui r20, 983040
001b8c  1739b902  sll.d r[19:20], r[19:20], r11
001b90  179a4601  or r20, r13, r20
001b94  0b292211  add.ul r[19:20], r[5:6], r[19:20]
001b98  7f2ac900  l_gm2lm r20, r12, 0(r[19:20])
001b9c  1bb92800  slli r18, r17, 2
001ba0  8b981111  add.s r17, r3, r17
001ba4  00a00200  mfence { lm, gm }
001ba8  42000602  vload.mz vr0{mr1}, 0(r12)
001bac  0b190911  add.s r18, r18, r16
001bb0  9f098900  addli r19, r18, 64
001bb4  86300000  vfp162float_l.rn vr1, vr0
001bb8  06700000  vfp162float_h.rn vr0, vr0
001bbc  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
001bc0  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
001bc4  3f8ff8fe  blt.s r17, r15, -64
001bc8  ab620100  lui r5, 22
001bcc  1bb27000  slli r4, r1, 7
001bd0  9f058fd7  addli r11, r30, -5184
001bd4  1f068000  addli r12, zero, 64
001bd8  9f060100  addli r13, r2, 0
001bdc  00a00000  mfence { lm }
001be0  9f820200  addli r5, r5, 0
001be4  0b125210  add.s r4, r4, r5
001be8  9b327500  slli r5, r10, 7
001bec  1f150000  addli r10, zero, 1
001bf0  33880628  zext_int2long r[17:18], r13
001bf4  2b0900f0  lui r18, 983040
001bf8  8b963610  add.s r13, r13, r3
001bfc  1738a802  sll.d r[17:18], r[17:18], r10
001c00  17192601  or r18, r12, r18
001c04  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001c08  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
001c0c  1f088200  addli r16, r4, 64
001c10  00a00200  mfence { lm, gm }
001c14  42800502  vload.mz vr0{mr1}, 0(r11)
001c18  86300000  vfp162float_l.rn vr1, vr0
001c1c  06700000  vfp162float_h.rn vr0, vr0
001c20  4e101202  vstores_mask16.mz vr1{mr1}, 0(r4)
001c24  0b125210  add.s r4, r4, r5
001c28  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
001c2c  3f9ff6fe  blt.s r13, r15, -60
001c30  e3012f00  loadli.w r3,  16(r30)
001c34  cba12100  ble.s r3, r2, 104
001c38  00530102  load_param_i r6, 2
001c3c  ab730100  lui r7, 23
001c40  9f110000  addli r3, zero, 1
001c44  1f028fd7  addli r4, r30, -5184
001c48  9f028000  addli r5, zero, 64
001c4c  00a00000  mfence { lm }
001c50  1b335300  slli r6, r6, 5
001c54  9f830300  addli r7, r7, 0
001c58  33050128  zext_int2long r[11:12], r2
001c5c  2b0600f0  lui r12, 983040
001c60  17353502  sll.d r[11:12], r[11:12], r3
001c64  1796c200  or r12, r5, r12
001c68  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001c6c  7f264500  l_gm2lm r12, r4, 0(r[11:12])
001c70  1b352100  slli r10, r2, 2
001c74  0b112310  add.s r2, r6, r2
001c78  00a00200  mfence { lm, gm }
001c7c  42000202  vload.mz vr0{mr1}, 0(r4)
001c80  0b157510  add.s r10, r10, r7
001c84  9f058500  addli r11, r10, 64
001c88  86300000  vfp162float_l.rn vr1, vr0
001c8c  06700000  vfp162float_h.rn vr0, vr0
001c90  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001c94  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
001c98  3f0ff1fe  blt.s r2, r15, -64
001c9c  2bf10000  lui r2, 15
001ca0  e3411f00  loadli.w r3,  12(r30)
001ca4  00a00300  mfence { lm, sm, gm }
001ca8  1b11f1ff  ori r2, r2, 4095
001cac  80210104  csr_set csr3, r2
001cb0  00d00100  sync_group
001cb4  cbd91122  ble.s r3, r1, 18036
001cb8  63032f00  loadli.w r6,  16(r30)
001cbc  e3432f00  loadli.w r7,  20(r30)
001cc0  9f088fd7  addli r17, r30, -5184
001cc4  1f150000  addli r10, zero, 1
001cc8  9f054000  addli r11, zero, 32
001ccc  1f767000  addli r12, zero, 63
001cd0  1f080002  addli r16, zero, 256
001cd4  1f090001  addli r18, zero, 128
001cd8  9f098000  addli r19, zero, 64
001cdc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001ce0  0b127310  add.s r4, r6, r7
001ce4  33010308  fix2float.rn r2, r6
001ce8  1b342300  slli r8, r6, 2
001cec  9b321300  slli r5, r6, 1
001cf0  9bb42300  slli r9, r7, 2
001cf4  1f72f2ff  addli r4, r4, -1
001cf8  670c2fd4  storeli.w r2, -5440(r30)
001cfc  1f014300  addli r2, r6, 32
001d00  0b131411  add.s r6, r8, r17
001d04  0b941211  add.s r8, r5, r17
001d08  67082fd4  storeli.w r2, -5504(r30)
001d0c  1f0183ff  addli r2, r6, -64
001d10  2bf3ffff  lui r6, 1048575
001d14  0b127230  div.s r4, r4, r7
001d18  67042fd4  storeli.w r2, -5568(r30)
001d1c  1f0184ff  addli r2, r8, -64
001d20  9b16f3ff  ori r13, r6, 4095
001d24  2b530100  lui r6, 21
001d28  67002fd4  storeli.w r2, -5632(r30)
001d2c  1f010fd7  addli r2, r30, -5248
001d30  1f030300  addli r6, r6, 0
001d34  00a00000  mfence { lm }
001d38  67045fd6  storeli.w r5, -5312(r30)
001d3c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001d40  5b080000  j 64
001d44  6b510f00  load.d r[3:4], 0(r30)
001d48  00a00000  mfence { lm }
001d4c  ab0800f0  lui r17, 983040
001d50  005a0102  load_param_i r20, 2
001d54  e3028fd6  loadli.w r5,  -5312(r30)
001d58  8b101a10  add.s r1, r20, r1
001d5c  8b237111  add.ul r[8:9], r[3:4], r[24:25]
001d60  1f018fd7  addli r2, r30, -5184
001d64  97981201  or r17, r5, r17
001d68  ffb82300  s_lm2gm r17, r2, 0(r[8:9])
001d6c  9f088fd7  addli r17, r30, -5184
001d70  00a00200  mfence { lm, gm }
001d74  63411f00  loadli.w r2,  12(r30)
001d78  3fa02000  blt.s r1, r2, 8
001d7c  dbb50800  j 17836
001d80  63011f00  loadli.w r2,  8(r30)
001d84  8b932010  add.s r7, r1, r2
001d88  8b93f320  mul.s r7, r7, r15
001d8c  b3930328  sext_int2long r[8:9], r7
001d90  97bba302  sll.d r[24:25], r[8:9], r10
001d94  1f047fd6  addli r8, r30, -5320
001d98  ab0300f0  lui r7, 983040
001d9c  6b510400  load.d r[3:4], 0(r8)
001da0  97937200  or r7, r5, r7
001da4  0b2a7111  add.ul r[21:22], r[3:4], r[24:25]
001da8  ff231a01  l_gm2lm r7, r17, 0(r[21:22])
001dac  00a00200  mfence { lm, gm }
001db0  bff0b700  blt.s r15, r11, 60
001db4  e3030fd4  loadli.w r7,  -5632(r30)
001db8  63048fd4  loadli.w r8,  -5568(r30)
001dbc  e3080fd5  loadli.w r17,  -5504(r30)
001dc0  c2800302  vload.mz vr1{mr1}, 0(r7)
001dc4  9f88c8ff  addli r17, r17, -32
001dc8  9f0a84ff  addli r21, r8, -64
001dcc  9f8383ff  addli r7, r7, -64
001dd0  130a1605  setlt.u r20, r12, r17
001dd4  06f10000  vfp162float_h.rn vr2, vr1
001dd8  86b00000  vfp162float_l.rn vr1, vr1
001ddc  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
001de0  1f0404ff  addli r8, r8, -128
001de4  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
001de8  3b6f0afe  bneq r20, zero, -40
001dec  00a00000  mfence { lm }
001df0  bf17a200  blt.s r4, r10, 484
001df4  1f0d0000  addli r26, zero, 0
001df8  9f0c0000  addli r25, zero, 0
001dfc  9f0d0000  addli r27, zero, 0
001e00  db0c0000  j 100
001e04  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001e08  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001e0c  9f9d0d00  addli r27, r27, 1
001e10  6a7108c0  vsrl.p vr2, r16, vr0
001e14  ea7118c0  vsrl.p vr3, r16, vr1
001e18  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e1c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e20  6a7109c0  vsrl.p vr2, r18, vr0
001e24  ea7119c0  vsrl.p vr3, r18, vr1
001e28  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e2c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e30  6af109c0  vsrl.p vr2, r19, vr0
001e34  eaf119c0  vsrl.p vr3, r19, vr1
001e38  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e3c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e40  6af105c0  vsrl.p vr2, r11, vr0
001e44  eaf115c0  vsrl.p vr3, r11, vr1
001e48  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e4c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e50  7a110040  vextracti.f r2, 0(vr0)
001e54  fa910040  vextracti.f r3, 0(vr1)
001e58  0b6d2d10  add.f.rn r26, r26, r2
001e5c  8bec3c10  add.f.rn r25, r25, r3
001e60  b7f54d00  beq r27, r4, 380
001e64  9f830d00  addli r7, r27, 0
001e68  37300701  beq r14, r16, 12
001e6c  97a3dd00  xor r7, r27, r13
001e70  8b137210  add.s r7, r4, r7
001e74  1f010fd7  addli r2, r30, -5248
001e78  0b94e320  mul.s r8, r7, r14
001e7c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
001e80  0b948718  sub.s r8, r15, r8
001e84  0b1ee440  min.s r28, r8, r14
001e88  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001e8c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001e90  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001e94  bf4daefe  blt.s r28, r10, -144
001e98  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
001e9c  1f0a0000  addli r20, zero, 0
001ea0  8b9a7420  mul.s r21, r9, r7
001ea4  1f0b8fd7  addli r22, r30, -5184
001ea8  9f080300  addli r17, r6, 0
001eac  92304002  vadd.s.mz vr1{mr1}, zero, vr4
001eb0  12314002  vadd.s.mz vr2{mr1}, zero, vr4
001eb4  92314002  vadd.s.mz vr3{mr1}, zero, vr4
001eb8  0b945811  add.s r8, r17, r21
001ebc  8b135b11  add.s r7, r22, r21
001ec0  9f028400  addli r5, r8, 64
001ec4  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
001ec8  9f018401  addli r3, r8, 192
001ecc  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001ed0  1f818301  addli r2, r7, 192
001ed4  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
001ed8  9f020401  addli r5, r8, 128
001edc  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
001ee0  9f818300  addli r3, r7, 64
001ee4  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
001ee8  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
001eec  9f820301  addli r5, r7, 128
001ef0  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
001ef4  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
001ef8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001efc  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001f00  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001f04  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001f08  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001f0c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001f10  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
001f14  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001f18  9f018a00  addli r3, r20, 64
001f1c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001f20  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001f24  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001f28  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001f2c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001f30  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
001f34  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001f38  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001f3c  4b2b3efe  ble.s r28, r3, -312
001f40  9f010402  addli r3, r8, 256
001f44  9f028402  addli r5, r8, 320
001f48  1f810302  addli r2, r7, 256
001f4c  1f0a0a01  addli r20, r20, 128
001f50  9f880804  addli r17, r17, 512
001f54  1f0b0b04  addli r22, r22, 512
001f58  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
001f5c  9f010403  addli r3, r8, 384
001f60  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
001f64  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
001f68  9f828302  addli r5, r7, 320
001f6c  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
001f70  9f018403  addli r3, r8, 448
001f74  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
001f78  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
001f7c  9f810303  addli r3, r7, 384
001f80  9f838303  addli r7, r7, 448
001f84  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
001f88  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
001f8c  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
001f90  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001f94  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001f98  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001f9c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001fa0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001fa4  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
001fa8  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
001fac  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001fb0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001fb4  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
001fb8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001fbc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001fc0  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001fc4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001fc8  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
001fcc  bf3bcaff  blt.s r20, r28, -276
001fd0  dbc6ffff  j -460
001fd4  9f0c0000  addli r25, zero, 0
001fd8  1f0d0000  addli r26, zero, 0
001fdc  00a00000  mfence { lm }
001fe0  bf95a7fe  blt.s r15, r10, -668
001fe4  63018fd5  loadli.w r2,  -5440(r30)
001fe8  2b6b0100  lui r22, 22
001fec  9f030000  addli r7, zero, 0
001ff0  9f0a8fd7  addli r21, r30, -5184
001ff4  1f0b0b00  addli r22, r22, 0
001ff8  8f082d18  div.f.rn r17, r26, r2
001ffc  0f842c18  div.f.rn r8, r25, r2
002000  63013f00  loadli.w r2,  24(r30)
002004  ab7c0100  lui r25, 23
002008  9f8c0c00  addli r25, r25, 0
00200c  0bea1821  mul.f.rn r20, r17, r17
002010  8be80858  neg.f r17, r17
002014  0b644419  sub.f.rn r8, r8, r20
002018  1f0a8fd7  addli r20, r30, -5184
00201c  0b642410  add.f.rn r8, r8, r2
002020  2b01803f  lui r2, 260096
002024  0f040408  sqrt.f.rn r8, r8
002028  0f048118  div.f.rn r8, r2, r8
00202c  c2100a02  vload_mask16.mz vr1{mr1}, 0(r20)
002030  1f0d8a00  addli r26, r20, 64
002034  ca110b02  vloads_mask16.mz vr3{mr1}, 0(r22)
002038  4a920c02  vloads_mask16.mz vr4{mr1}, 0(r25)
00203c  9f8d8c00  addli r27, r25, 64
002040  9f834300  addli r7, r7, 32
002044  9f8c0c01  addli r25, r25, 128
002048  1f0a0a01  addli r20, r20, 128
00204c  42110d02  vload_mask16.mz vr2{mr1}, 0(r26)
002050  1f0d8b00  addli r26, r22, 64
002054  4a930d02  vloads_mask16.mz vr6{mr1}, 0(r27)
002058  1f0b0b01  addli r22, r22, 128
00205c  ca120d02  vloads_mask16.mz vr5{mr1}, 0(r26)
002060  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
002064  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
002068  8a101402  vmul.f.mz.rn vr1{mr1}, r8, vr1
00206c  0a112402  vmul.f.mz.rn vr2{mr1}, r8, vr2
002070  26923002  vmac.f.mz.rn vr4{mr1}, vr1, vr3
002074  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002078  26135102  vmac.f.mz.rn vr6{mr1}, vr2, vr5
00207c  86100200  vfloat2fp16_l.rn vr1, vr4
002080  86500300  vfloat2fp16_h.rn vr1, vr6
002084  46801a02  vstore.mz vr1{mr1}, 0(r21)
002088  9f8a8a00  addli r21, r21, 64
00208c  bf8ef3fe  blt.s r7, r15, -96
002090  db96ffff  j -844
002094  e3002f00  loadli.w r1,  16(r30)
002098  1f010010  addli r2, zero, 2048
00209c  bba02008  bneq r1, r2, 4136
0020a0  2ba30200  lui r6, 42
0020a4  80300002  core_id r1
0020a8  1f030308  addli r6, r6, 1024
0020ac  3bd00000  bneq r1, zero, 20
0020b0  1f010040  addli r2, zero, 8192
0020b4  ab0100f0  lui r3, 983040
0020b8  17113100  or r2, r2, r3
0020bc  7f016200  l_gm2sm r2, r6, 0(r[5:6])
0020c0  2bf10000  lui r2, 15
0020c4  00200300  mfence { sm, gm }
0020c8  1b821000  andi r4, r1, 1
0020cc  9f020006  addli r5, zero, 768
0020d0  1b11f1ff  ori r2, r2, 4095
0020d4  80210104  csr_set csr3, r2
0020d8  1f010006  addli r2, zero, 768
0020dc  00d00100  sync_group
0020e0  37200200  beq r4, zero, 8
0020e4  9f02000a  addli r5, zero, 1280
0020e8  e3411f00  loadli.w r3,  12(r30)
0020ec  9f130000  addli r7, zero, 1
0020f0  bfe87120  blt.s r3, r7, 16952
0020f4  0b112220  mul.s r2, r4, r2
0020f8  1bc51000  srli r10, r1, 1
0020fc  abf0ffff  lui r1, 1048575
002100  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002104  abca0200  lui r21, 44
002108  2bcd0200  lui r26, 44
00210c  80510102  load_param_i r3, 2
002110  9f030000  addli r7, zero, 0
002114  9bb52200  slli r11, r5, 2
002118  9f068fd7  addli r13, r30, -5184
00211c  9f080002  addli r17, zero, 256
002120  1f090001  addli r18, zero, 128
002124  9f098000  addli r19, zero, 64
002128  1f0a4000  addli r20, zero, 32
00212c  9f0c0003  addli r25, zero, 384
002130  67082fd6  storeli.w r2, -5248(r30)
002134  1f018fd6  addli r2, r30, -5312
002138  9b9000f8  ori r1, r1, 3968
00213c  9bc41100  srli r9, r3, 1
002140  9f8a0a08  addli r21, r21, 1024
002144  1f0d0d0c  addli r26, r26, 1536
002148  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00214c  2bf10000  lui r2, 15
002150  670c1fd4  storeli.w r1, -5440(r30)
002154  9f000800  addli r1, r16, 0
002158  1f080005  addli r16, zero, 640
00215c  1b1bf1ff  ori r22, r2, 4095
002160  5b040000  j 32
002164  00a00300  mfence { lm, sm, gm }
002168  80210b04  csr_set csr3, r22
00216c  00d00100  sync_group
002170  e3401f00  loadli.w r1,  12(r30)
002174  8b939310  add.s r7, r7, r9
002178  3fa01300  blt.s r7, r1, 8
00217c  db4bfdff  j -5540
002180  0b91a310  add.s r2, r7, r10
002184  cb8f20fe  ble.s r1, r2, -32
002188  e3001f00  loadli.w r1,  8(r30)
00218c  0b111110  add.s r2, r2, r1
002190  e3000fd7  loadli.w r1,  -5248(r30)
002194  1b31b100  slli r2, r2, 11
002198  17111100  or r2, r2, r1
00219c  9f200000  addli r1, zero, 2
0021a0  33110128  sext_int2long r[3:4], r2
0021a4  973d1102  sll.d r[28:29], r[3:4], r1
0021a8  9f007fd6  addli r1, r30, -5320
0021ac  2b0100f0  lui r2, 983040
0021b0  6bd70000  load.d r[15:16], 0(r1)
0021b4  17912500  or r2, r11, r2
0021b8  0b27b711  add.ul r[15:16], r[15:16], r[28:29]
0021bc  7f21d700  l_gm2lm r2, r13, 0(r[15:16])
0021c0  1f010000  addli r2, zero, 0
0021c4  00a00200  mfence { lm, gm }
0021c8  3b060200  bneq r4, zero, 384
0021cc  9f008fd6  addli r1, r30, -5312
0021d0  e3018fd5  loadli.w r3,  -5440(r30)
0021d4  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0021d8  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0021dc  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0021e0  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0021e4  0b176110  add.s r14, r2, r6
0021e8  0b962610  add.s r12, r13, r2
0021ec  9f810101  addli r3, r3, 128
0021f0  1f010104  addli r2, r2, 512
0021f4  9f000701  addli r1, r14, 128
0021f8  4a100702  vloads_mask16.mz vr0{mr1}, 0(r14)
0021fc  1f048700  addli r8, r14, 64
002200  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
002204  9f078601  addli r15, r12, 192
002208  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
00220c  9f008701  addli r1, r14, 192
002210  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002214  1f048600  addli r8, r12, 64
002218  c2950702  vload_mask16.mz vr11{mr1}, 0(r15)
00221c  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
002220  9f000601  addli r1, r12, 128
002224  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
002228  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00222c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002230  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002234  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002238  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00223c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002240  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
002244  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002248  9f000702  addli r1, r14, 256
00224c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002250  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002254  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002258  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
00225c  1f040603  addli r8, r12, 384
002260  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002264  9f008702  addli r1, r14, 320
002268  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
00226c  9f070602  addli r15, r12, 256
002270  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002274  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
002278  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00227c  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002280  9f000703  addli r1, r14, 384
002284  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
002288  1f078703  addli r14, r14, 448
00228c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002290  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
002294  9f008602  addli r1, r12, 320
002298  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
00229c  1f068603  addli r12, r12, 448
0022a0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0022a4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0022a8  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0022ac  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0022b0  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0022b4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0022b8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0022bc  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
0022c0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0022c4  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0022c8  93800105  setlt.u r1, r3, r16
0022cc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0022d0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0022d4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0022d8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0022dc  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0022e0  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0022e4  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0022e8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0022ec  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0022f0  bbdb00fe  bneq r1, zero, -268
0022f4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0022f8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0022fc  6af108c0  vsrl.p vr2, r17, vr0
002300  eaf118c0  vsrl.p vr3, r17, vr1
002304  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002308  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00230c  6a7109c0  vsrl.p vr2, r18, vr0
002310  ea7119c0  vsrl.p vr3, r18, vr1
002314  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002318  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00231c  6af109c0  vsrl.p vr2, r19, vr0
002320  eaf119c0  vsrl.p vr3, r19, vr1
002324  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002328  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00232c  6a710ac0  vsrl.p vr2, r20, vr0
002330  ea711ac0  vsrl.p vr3, r20, vr1
002334  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002338  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00233c  7a160040  vextracti.f r12, 0(vr0)
002340  7a910040  vextracti.f r2, 0(vr1)
002344  db610000  j 780
002348  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00234c  abf0ffff  lui r1, 1048575
002350  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002354  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002358  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00235c  9b9100f8  ori r3, r1, 3968
002360  0b172310  add.s r14, r6, r2
002364  0b962610  add.s r12, r13, r2
002368  9f810101  addli r3, r3, 128
00236c  1f010104  addli r2, r2, 512
002370  9f000731  addli r1, r14, 6272
002374  9f070730  addli r15, r14, 6144
002378  1f048731  addli r8, r14, 6336
00237c  1f0c0618  addli r24, r12, 3072
002380  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
002384  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
002388  9f078730  addli r15, r14, 6208
00238c  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
002390  1f040619  addli r8, r12, 3200
002394  9f008618  addli r1, r12, 3136
002398  42130c02  vload_mask16.mz vr6{mr1}, 0(r24)
00239c  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
0023a0  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
0023a4  9f078619  addli r15, r12, 3264
0023a8  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0023ac  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
0023b0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0023b4  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0023b8  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0023bc  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0023c0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0023c4  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0023c8  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
0023cc  1f040732  addli r8, r14, 6400
0023d0  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0023d4  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
0023d8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0023dc  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
0023e0  9f07061a  addli r15, r12, 3328
0023e4  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0023e8  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0023ec  9f00061b  addli r1, r12, 3456
0023f0  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0023f4  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0023f8  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
0023fc  1f048732  addli r8, r14, 6464
002400  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002404  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002408  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
00240c  1f040733  addli r8, r14, 6528
002410  1f078733  addli r14, r14, 6592
002414  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
002418  1f04861a  addli r8, r12, 3392
00241c  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
002420  1f06861b  addli r12, r12, 3520
002424  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
002428  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00242c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
002430  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002434  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
002438  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00243c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002440  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
002444  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002448  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
00244c  13849105  setlt.u r8, r3, r25
002450  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002454  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002458  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00245c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002460  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002464  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
002468  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
00246c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002470  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002474  bb3b04fe  bneq r8, zero, -276
002478  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00247c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002480  abf0ffff  lui r1, 1048575
002484  1f060000  addli r12, zero, 0
002488  1b9c00f8  ori r24, r1, 3968
00248c  eaf118c0  vsrl.p vr3, r17, vr1
002490  6af108c0  vsrl.p vr2, r17, vr0
002494  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002498  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00249c  ea7119c0  vsrl.p vr3, r18, vr1
0024a0  6a7109c0  vsrl.p vr2, r18, vr0
0024a4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024a8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024ac  eaf119c0  vsrl.p vr3, r19, vr1
0024b0  6af109c0  vsrl.p vr2, r19, vr0
0024b4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024b8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024bc  ea711ac0  vsrl.p vr3, r20, vr1
0024c0  6a710ac0  vsrl.p vr2, r20, vr0
0024c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024cc  fa910040  vextracti.f r3, 0(vr1)
0024d0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0024d4  7a110040  vextracti.f r2, 0(vr0)
0024d8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0024dc  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0024e0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0024e4  8b17c310  add.s r15, r6, r12
0024e8  0b97c610  add.s r14, r13, r12
0024ec  1f0c0c01  addli r24, r24, 128
0024f0  1f060604  addli r12, r12, 512
0024f4  9f800718  addli r1, r15, 3072
0024f8  1f840719  addli r8, r15, 3200
0024fc  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
002500  9f0b8701  addli r23, r14, 192
002504  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002508  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
00250c  9f808718  addli r1, r15, 3136
002510  1f848719  addli r8, r15, 3264
002514  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
002518  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
00251c  9f000701  addli r1, r14, 128
002520  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
002524  1f048700  addli r8, r14, 64
002528  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00252c  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
002530  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002534  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002538  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00253c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002540  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002544  9f80071a  addli r1, r15, 3328
002548  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00254c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002550  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002554  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002558  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
00255c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002560  9f80871a  addli r1, r15, 3392
002564  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
002568  9f0b0702  addli r23, r14, 256
00256c  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002570  1f040703  addli r8, r14, 384
002574  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
002578  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00257c  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002580  9f80071b  addli r1, r15, 3456
002584  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
002588  9f87871b  addli r15, r15, 3520
00258c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002590  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002594  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
002598  9f008702  addli r1, r14, 320
00259c  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
0025a0  1f078703  addli r14, r14, 448
0025a4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0025a8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0025ac  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0025b0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0025b4  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
0025b8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0025bc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0025c0  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
0025c4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0025c8  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0025cc  93000c05  setlt.u r1, r24, r16
0025d0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0025d4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0025d8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0025dc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0025e0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0025e4  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0025e8  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
0025ec  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0025f0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0025f4  bbcb00fe  bneq r1, zero, -272
0025f8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0025fc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002600  6af108c0  vsrl.p vr2, r17, vr0
002604  eaf118c0  vsrl.p vr3, r17, vr1
002608  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00260c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002610  6a7109c0  vsrl.p vr2, r18, vr0
002614  ea7119c0  vsrl.p vr3, r18, vr1
002618  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00261c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002620  6af109c0  vsrl.p vr2, r19, vr0
002624  eaf119c0  vsrl.p vr3, r19, vr1
002628  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00262c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002630  6a710ac0  vsrl.p vr2, r20, vr0
002634  ea711ac0  vsrl.p vr3, r20, vr1
002638  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00263c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002640  fa100040  vextracti.f r1, 0(vr0)
002644  7a940040  vextracti.f r8, 0(vr1)
002648  0b661110  add.f.rn r12, r2, r1
00264c  0be18110  add.f.rn r2, r3, r8
002650  8b809330  div.u r1, r7, r9
002654  80310002  core_id r3
002658  9f078fd7  addli r15, r30, -5184
00265c  1f0c0000  addli r24, zero, 0
002660  9bb06000  slli r1, r1, 6
002664  9b800004  andi r1, r1, 64
002668  97903000  or r1, r1, r3
00266c  9bb12000  slli r3, r1, 2
002670  9b80e007  andi r1, r1, 126
002674  0b945111  add.s r8, r3, r21
002678  9bb02000  slli r1, r1, 2
00267c  7360c400  stores.w r12, 0(r8)
002680  0b94a111  add.s r8, r3, r26
002684  9b914100  ori r3, r3, 4
002688  73602400  stores.w r2, 0(r8)
00268c  0b915111  add.s r2, r3, r21
002690  0b945011  add.s r8, r1, r21
002694  8b91a111  add.s r3, r3, r26
002698  8b90a011  add.s r1, r1, r26
00269c  00a00300  mfence { lm, sm, gm }
0026a0  80210b04  csr_set csr3, r22
0026a4  00d00100  sync_group
0026a8  6f410100  loads.w r2, 0(r2)
0026ac  6f440400  loads.w r8, 0(r8)
0026b0  efc10100  loads.w r3, 0(r3)
0026b4  efc00000  loads.w r1, 0(r1)
0026b8  0b618110  add.f.rn r2, r2, r8
0026bc  8be01110  add.f.rn r1, r3, r1
0026c0  ab01003a  lui r3, 237568
0026c4  0b643120  mul.f.rn r8, r2, r3
0026c8  8be03020  mul.f.rn r1, r1, r3
0026cc  0b618420  mul.f.rn r2, r8, r8
0026d0  0b670458  neg.f r14, r8
0026d4  8be02018  sub.f.rn r1, r1, r2
0026d8  63013f00  loadli.w r2,  24(r30)
0026dc  8be02010  add.f.rn r1, r1, r2
0026e0  2b01803f  lui r2, 260096
0026e4  8f800008  sqrt.f.rn r1, r1
0026e8  0f061118  div.f.rn r12, r2, r1
0026ec  eb500f00  load.d r[2:3], 0(r30)
0026f0  0ba1b011  add.ul r[3:4], r[2:3], r[28:29]
0026f4  9f808700  addli r1, r15, 64
0026f8  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
0026fc  1f044c00  addli r8, r24, 32
002700  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002704  13848206  setle.u r8, r5, r8
002708  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
00270c  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
002710  0a100602  vmul.f.mz.rn vr0{mr1}, r12, vr0
002714  8a101602  vmul.f.mz.rn vr1{mr1}, r12, vr1
002718  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
00271c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002720  bb700400  bneq r8, zero, 60
002724  9f800701  addli r1, r15, 128
002728  1f848701  addli r8, r15, 192
00272c  1f0c8c00  addli r24, r24, 64
002730  9f870702  addli r15, r15, 256
002734  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002738  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
00273c  930b5c04  setlt.u r23, r24, r5
002740  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
002744  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
002748  0a100602  vmul.f.mz.rn vr0{mr1}, r12, vr0
00274c  8a101602  vmul.f.mz.rn vr1{mr1}, r12, vr1
002750  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002754  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
002758  3bfe0bfe  bneq r23, zero, -100
00275c  ab0000f0  lui r1, 983040
002760  00a00000  mfence { lm }
002764  97901500  or r1, r11, r1
002768  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
00276c  00a00200  mfence { lm, gm }
002770  5b40ffff  j -1536
002774  80300002  core_id r1
002778  bb800000  bneq r1, zero, 32
00277c  63012f00  loadli.w r2,  16(r30)
002780  ab0100f0  lui r3, 983040
002784  1b311100  slli r2, r2, 1
002788  17113100  or r2, r2, r3
00278c  abc10100  lui r3, 28
002790  9f810100  addli r3, r3, 0
002794  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002798  2bf10000  lui r2, 15
00279c  e3411f00  loadli.w r3,  12(r30)
0027a0  00200300  mfence { sm, gm }
0027a4  1b11f1ff  ori r2, r2, 4095
0027a8  80210104  csr_set csr3, r2
0027ac  00d00100  sync_group
0027b0  cbed111c  ble.s r3, r1, 15224
0027b4  63012f00  loadli.w r2,  16(r30)
0027b8  e3412f00  loadli.w r3,  20(r30)
0027bc  1f052000  addli r10, zero, 16
0027c0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0027c4  1f130000  addli r6, zero, 1
0027c8  9f040002  addli r9, zero, 256
0027cc  ab05ffff  lui r11, 1048560
0027d0  ab06807f  lui r13, 522240
0027d4  2b08c07f  lui r16, 523264
0027d8  9f080001  addli r17, zero, 128
0027dc  1f098000  addli r18, zero, 64
0027e0  9f094000  addli r19, zero, 32
0027e4  1b3b1100  slli r22, r2, 1
0027e8  0b123110  add.s r4, r2, r3
0027ec  33010108  fix2float.rn r2, r2
0027f0  67042fd4  storeli.w r2, -5568(r30)
0027f4  1f71f2ff  addli r2, r4, -1
0027f8  1bb21100  slli r4, r3, 1
0027fc  67086fd5  storeli.w r22, -5504(r30)
002800  8b123130  div.s r5, r2, r3
002804  2bf1ffff  lui r2, 1048575
002808  9f018fd7  addli r3, r30, -5184
00280c  1b14f1ff  ori r8, r2, 4095
002810  1f010fd7  addli r2, r30, -5248
002814  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002818  6a200522  vor.u.mz vr0{mr1}, r10, vr0
00281c  1f018fd6  addli r2, r30, -5312
002820  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002824  2b710000  lui r2, 7
002828  1b16f1ff  ori r12, r2, 4095
00282c  db080000  j 68
002830  9f038fd5  addli r7, r30, -5440
002834  6b510f00  load.d r[3:4], 0(r30)
002838  6bda0300  load.d r[21:22], 0(r7)
00283c  00a00000  mfence { lm }
002840  80530102  load_param_i r7, 2
002844  630b0fd5  loadli.w r22,  -5504(r30)
002848  8b901310  add.s r1, r7, r1
00284c  0b2a4111  add.ul r[21:22], r[3:4], r[21:22]
002850  2b0100f0  lui r2, 983040
002854  9f018fd7  addli r3, r30, -5184
002858  17112b00  or r2, r22, r2
00285c  7f313a00  s_lm2gm r2, r3, 0(r[21:22])
002860  00a00200  mfence { lm, gm }
002864  63411f00  loadli.w r2,  12(r30)
002868  3fa02000  blt.s r1, r2, 8
00286c  db570700  j 15036
002870  63011f00  loadli.w r2,  8(r30)
002874  9f037fd6  addli r7, r30, -5320
002878  0b912010  add.s r2, r1, r2
00287c  0b11f120  mul.s r2, r2, r15
002880  331a0128  sext_int2long r[21:22], r2
002884  2b0100f0  lui r2, 983040
002888  973b6a02  sll.d r[24:25], r[21:22], r6
00288c  6bda0300  load.d r[21:22], 0(r7)
002890  17112b00  or r2, r22, r2
002894  9f038fd5  addli r7, r30, -5440
002898  73b07301  store.d r[24:25], 0(r7)
00289c  0b2a7a11  add.ul r[21:22], r[21:22], r[24:25]
0028a0  7f213a00  l_gm2lm r2, r3, 0(r[21:22])
0028a4  00a00200  mfence { lm, gm }
0028a8  bfdc6200  blt.s r5, r6, 820
0028ac  9f0c0000  addli r25, zero, 0
0028b0  1f0c0000  addli r24, zero, 0
0028b4  1f0d0000  addli r26, zero, 0
0028b8  db0c0000  j 100
0028bc  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0028c0  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0028c4  1f1d0d00  addli r26, r26, 1
0028c8  6af104c0  vsrl.p vr2, r9, vr0
0028cc  eaf114c0  vsrl.p vr3, r9, vr1
0028d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028d4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028d8  6af108c0  vsrl.p vr2, r17, vr0
0028dc  eaf118c0  vsrl.p vr3, r17, vr1
0028e0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028e4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028e8  6a7109c0  vsrl.p vr2, r18, vr0
0028ec  ea7119c0  vsrl.p vr3, r18, vr1
0028f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028f4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028f8  6af109c0  vsrl.p vr2, r19, vr0
0028fc  eaf119c0  vsrl.p vr3, r19, vr1
002900  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002904  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002908  7a110040  vextracti.f r2, 0(vr0)
00290c  fa910040  vextracti.f r3, 0(vr1)
002910  8bec2c10  add.f.rn r25, r25, r2
002914  0b6c3c10  add.f.rn r24, r24, r3
002918  373b5d00  beq r26, r5, 716
00291c  1f010d00  addli r2, r26, 0
002920  37309700  beq r14, r9, 12
002924  17218d00  xor r2, r26, r8
002928  0b912210  add.s r2, r5, r2
00292c  9f010fd7  addli r3, r30, -5248
002930  8b13e120  mul.s r7, r2, r14
002934  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
002938  8b937718  sub.s r7, r15, r7
00293c  8b9de340  min.s r27, r7, r14
002940  92322002  vadd.s.mz vr5{mr1}, zero, vr2
002944  12322002  vadd.s.mz vr4{mr1}, zero, vr2
002948  92312002  vadd.s.mz vr3{mr1}, zero, vr2
00294c  bfcd6dfe  blt.s r27, r6, -144
002950  0b1a2220  mul.s r20, r4, r2
002954  1f010fd7  addli r2, r30, -5248
002958  abca0100  lui r21, 28
00295c  1f0e0000  addli r28, zero, 0
002960  9f038fd7  addli r7, r30, -5184
002964  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
002968  9f8a0a00  addli r21, r21, 0
00296c  12315002  vadd.s.mz vr2{mr1}, zero, vr5
002970  92315002  vadd.s.mz vr3{mr1}, zero, vr5
002974  12325002  vadd.s.mz vr4{mr1}, zero, vr5
002978  0b9b4a11  add.s r22, r21, r20
00297c  0b914311  add.s r2, r7, r20
002980  9f018fd6  addli r3, r30, -5312
002984  4a030b02  vloads.mz vr6{mr1}, 0(r22)
002988  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00298c  c2030102  vload.mz vr7{mr1}, 0(r2)
002990  9f010fd7  addli r3, r30, -5248
002994  9f0b8b00  addli r23, r22, 64
002998  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
00299c  9f018e00  addli r3, r28, 64
0029a0  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0029a4  6ab57502  vand.s.mz vr10{mr1}, r11, vr7
0029a8  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0029ac  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
0029b0  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0029b4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0029b8  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0029bc  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0029c0  669503c0  vabs.f vr10, vr7
0029c4  6a348302  vand.s.mz vr8{mr1}, r6, vr8
0029c8  ea349302  vand.s.mz vr9{mr1}, r6, vr9
0029cc  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
0029d0  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
0029d4  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
0029d8  12348602  vadd.s.mz vr8{mr1}, r12, vr8
0029dc  92349602  vadd.s.mz vr9{mr1}, r12, vr9
0029e0  eab38502  vand.s.mz vr7{mr1}, r11, vr8
0029e4  661403c0  vabs.f vr8, vr6
0029e8  6ab39502  vand.s.mz vr6{mr1}, r11, vr9
0029ec  ea230834  vor.u.mh vr7{mr2}, r16, vr0
0029f0  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
0029f4  6a230834  vor.u.mh vr6{mr2}, r16, vr0
0029f8  4a840b02  vloads.mz vr8{mr1}, 0(r23)
0029fc  9f0b8100  addli r23, r2, 64
002a00  c2840b02  vload.mz vr9{mr1}, 0(r23)
002a04  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
002a08  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
002a0c  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002a10  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
002a14  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002a18  46007102  vstore.mz vr7{mr1}, 0(r2)
002a1c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002a20  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002a24  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
002a28  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
002a2c  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002a30  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002a34  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002a38  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
002a3c  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
002a40  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
002a44  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
002a48  ea349302  vand.s.mz vr9{mr1}, r6, vr9
002a4c  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002a50  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
002a54  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
002a58  661505c0  vabs.f vr10, vr10
002a5c  661404c0  vabs.f vr8, vr8
002a60  92349602  vadd.s.mz vr9{mr1}, r12, vr9
002a64  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002a68  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
002a6c  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002a70  6ab5b502  vand.s.mz vr10{mr1}, r11, vr11
002a74  ea240834  vor.u.mh vr9{mr2}, r16, vr0
002a78  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
002a7c  6a250834  vor.u.mh vr10{mr2}, r16, vr0
002a80  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
002a84  eab4a502  vand.s.mz vr9{mr1}, r11, vr10
002a88  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
002a8c  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002a90  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002a94  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
002a98  46808b02  vstore.mz vr8{mr1}, 0(r23)
002a9c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002aa0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002aa4  4be83dfe  ble.s r27, r3, -488
002aa8  9f010b01  addli r3, r22, 128
002aac  9f0b0101  addli r23, r2, 128
002ab0  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
002ab4  1f018101  addli r2, r2, 192
002ab8  1f0e0e01  addli r28, r28, 128
002abc  9f8a0a02  addli r21, r21, 256
002ac0  9f830302  addli r7, r7, 256
002ac4  6a237522  vor.u.mz vr6{mr1}, r10, vr7
002ac8  4a840102  vloads.mz vr8{mr1}, 0(r3)
002acc  c2840b02  vload.mz vr9{mr1}, 0(r23)
002ad0  9f018b01  addli r3, r22, 192
002ad4  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
002ad8  6ab09502  vand.s.mz vr0{mr1}, r11, vr9
002adc  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
002ae0  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002ae4  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
002ae8  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
002aec  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
002af0  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
002af4  e69504c0  vabs.f vr11, vr9
002af8  6a300302  vand.s.mz vr0{mr1}, r6, vr0
002afc  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002b00  72a1b642  vlt.u.mz mr2{mr1}, r13, vr11
002b04  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
002b08  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
002b0c  12300602  vadd.s.mz vr0{mr1}, r12, vr0
002b10  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002b14  eab40502  vand.s.mz vr9{mr1}, r11, vr0
002b18  661004c0  vabs.f vr0, vr8
002b1c  6ab4a502  vand.s.mz vr8{mr1}, r11, vr10
002b20  ea247834  vor.u.mh vr9{mr2}, r16, vr7
002b24  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002b28  6a247834  vor.u.mh vr8{mr2}, r16, vr7
002b2c  4a800102  vloads.mz vr0{mr1}, 0(r3)
002b30  42050102  vload.mz vr10{mr1}, 0(r2)
002b34  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
002b38  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
002b3c  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002b40  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
002b44  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002b48  46809b02  vstore.mz vr9{mr1}, 0(r23)
002b4c  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
002b50  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
002b54  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
002b58  6ab00502  vand.s.mz vr0{mr1}, r11, vr0
002b5c  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
002b60  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
002b64  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
002b68  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
002b6c  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002b70  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002b74  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
002b78  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
002b7c  e69000c0  vabs.f vr1, vr1
002b80  661000c0  vabs.f vr0, vr0
002b84  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002b88  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002b8c  72a11642  vlt.u.mz mr2{mr1}, r13, vr1
002b90  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002b94  eab0b502  vand.s.mz vr1{mr1}, r11, vr11
002b98  6a257834  vor.u.mh vr10{mr2}, r16, vr7
002b9c  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002ba0  ea207834  vor.u.mh vr1{mr2}, r16, vr7
002ba4  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
002ba8  eab31502  vand.s.mz vr7{mr1}, r11, vr1
002bac  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
002bb0  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
002bb4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002bb8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002bbc  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
002bc0  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
002bc4  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
002bc8  46000102  vstore.mz vr0{mr1}, 0(r2)
002bcc  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002bd0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002bd4  bf16beff  blt.s r28, r27, -604
002bd8  db9cffff  j -796
002bdc  1f0c0000  addli r24, zero, 0
002be0  9f0c0000  addli r25, zero, 0
002be4  00a00000  mfence { lm }
002be8  3fa167fe  blt.s r15, r6, -952
002bec  63018fd4  loadli.w r2,  -5568(r30)
002bf0  e3013f00  loadli.w r3,  24(r30)
002bf4  9f0a0000  addli r21, zero, 0
002bf8  8f832c18  div.f.rn r7, r25, r2
002bfc  0f012c18  div.f.rn r2, r24, r2
002c00  0bea7320  mul.f.rn r20, r7, r7
002c04  8be30358  neg.f r7, r7
002c08  0b614119  sub.f.rn r2, r2, r20
002c0c  1f0a8fd7  addli r20, r30, -5184
002c10  0b613110  add.f.rn r2, r2, r3
002c14  ab01803f  lui r3, 260096
002c18  0f010108  sqrt.f.rn r2, r2
002c1c  0f812118  div.f.rn r2, r3, r2
002c20  42020a02  vload.mz vr4{mr1}, 0(r20)
002c24  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
002c28  1f8b4a00  addli r22, r21, 32
002c2c  ea212522  vor.u.mz vr3{mr1}, r10, vr2
002c30  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002c34  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002c38  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002c3c  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002c40  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002c44  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002c48  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002c4c  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002c50  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002c54  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002c58  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002c5c  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002c60  e69202c0  vabs.f vr5, vr5
002c64  661202c0  vabs.f vr4, vr4
002c68  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002c6c  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002c70  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002c74  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002c78  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002c7c  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002c80  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002c84  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002c88  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
002c8c  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
002c90  46004a02  vstore.mz vr4{mr1}, 0(r20)
002c94  4bfe67fd  ble.s r15, r22, -1124
002c98  1f0b8a00  addli r22, r20, 64
002c9c  9f8a8a00  addli r21, r21, 64
002ca0  1f0a0a01  addli r20, r20, 128
002ca4  42020b02  vload.mz vr4{mr1}, 0(r22)
002ca8  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002cac  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002cb0  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002cb4  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002cb8  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002cbc  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002cc0  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002cc4  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002cc8  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002ccc  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002cd0  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002cd4  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002cd8  e69202c0  vabs.f vr5, vr5
002cdc  661202c0  vabs.f vr4, vr4
002ce0  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002ce4  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002ce8  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002cec  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002cf0  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002cf4  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002cf8  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002cfc  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002d00  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
002d04  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
002d08  46002b02  vstore.mz vr2{mr1}, 0(r22)
002d0c  3fdcfafe  blt.s r21, r15, -236
002d10  5b64ffff  j -1248
002d14  80300002  core_id r1
002d18  bb800000  bneq r1, zero, 32
002d1c  63012f00  loadli.w r2,  16(r30)
002d20  ab0100f0  lui r3, 983040
002d24  1b311100  slli r2, r2, 1
002d28  17113100  or r2, r2, r3
002d2c  ab010200  lui r3, 32
002d30  9f810100  addli r3, r3, 0
002d34  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002d38  2bf10000  lui r2, 15
002d3c  e3411f00  loadli.w r3,  12(r30)
002d40  00200300  mfence { sm, gm }
002d44  1b11f1ff  ori r2, r2, 4095
002d48  80210104  csr_set csr3, r2
002d4c  00d00100  sync_group
002d50  4be7111a  ble.s r3, r1, 13784
002d54  e3012f00  loadli.w r3,  16(r30)
002d58  e3422f00  loadli.w r5,  20(r30)
002d5c  2bf4ffff  lui r8, 1048575
002d60  2b080200  lui r16, 32
002d64  9f068fd7  addli r13, r30, -5184
002d68  9f040002  addli r9, zero, 256
002d6c  1f050001  addli r10, zero, 128
002d70  9f058000  addli r11, zero, 64
002d74  1f064000  addli r12, zero, 32
002d78  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002d7c  1b14f4ff  ori r8, r8, 4095
002d80  1f080800  addli r16, r16, 0
002d84  0b925110  add.s r4, r3, r5
002d88  1bb11100  slli r2, r3, 1
002d8c  b3810108  fix2float.rn r3, r3
002d90  1f73f2ff  addli r6, r4, -1
002d94  1bb21200  slli r4, r5, 1
002d98  8b125330  div.s r5, r6, r5
002d9c  1f130000  addli r6, zero, 1
002da0  5b070000  j 56
002da4  eb590f00  load.d r[20:21], 0(r30)
002da8  9f068fd7  addli r13, r30, -5184
002dac  00a00000  mfence { lm }
002db0  8ba81911  add.ul r[18:19], r[20:21], r[18:19]
002db4  ab0900f0  lui r19, 983040
002db8  005a0102  load_param_i r20, 2
002dbc  97193101  or r19, r2, r19
002dc0  8b101a10  add.s r1, r20, r1
002dc4  ffb9d800  s_lm2gm r19, r13, 0(r[18:19])
002dc8  00a00200  mfence { lm, gm }
002dcc  e3431f00  loadli.w r7,  12(r30)
002dd0  3fa07000  blt.s r1, r7, 8
002dd4  dbaa0600  j 13652
002dd8  e3031f00  loadli.w r7,  8(r30)
002ddc  ab0900f0  lui r19, 983040
002de0  97193101  or r19, r2, r19
002de4  8b987010  add.s r17, r1, r7
002de8  9f037fd6  addli r7, r30, -5320
002dec  8b98f820  mul.s r17, r17, r15
002df0  6bda0300  load.d r[21:22], 0(r7)
002df4  b3980828  sext_int2long r[18:19], r17
002df8  97b86802  sll.d r[18:19], r[18:19], r6
002dfc  0b2a1a11  add.ul r[21:22], r[21:22], r[18:19]
002e00  ff29da00  l_gm2lm r19, r13, 0(r[21:22])
002e04  00a00200  mfence { lm, gm }
002e08  3fc76200  blt.s r5, r6, 464
002e0c  1f0a0000  addli r20, zero, 0
002e10  9f090000  addli r19, zero, 0
002e14  9f0a0000  addli r21, zero, 0
002e18  db0c0000  j 100
002e1c  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
002e20  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002e24  9f9a0a00  addli r21, r21, 1
002e28  6af134c0  vsrl.p vr2, r9, vr3
002e2c  6af214c0  vsrl.p vr4, r9, vr1
002e30  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
002e34  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e38  ea7125c0  vsrl.p vr3, r10, vr2
002e3c  6a7215c0  vsrl.p vr4, r10, vr1
002e40  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e44  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e48  eaf125c0  vsrl.p vr3, r11, vr2
002e4c  6af215c0  vsrl.p vr4, r11, vr1
002e50  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e54  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e58  ea7126c0  vsrl.p vr3, r12, vr2
002e5c  6a7216c0  vsrl.p vr4, r12, vr1
002e60  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e64  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e68  fa130140  vextracti.f r7, 0(vr2)
002e6c  fa960040  vextracti.f r13, 0(vr1)
002e70  0b6a7a10  add.f.rn r20, r20, r7
002e74  8be9d910  add.f.rn r19, r19, r13
002e78  b7a55a00  beq r21, r5, 360
002e7c  1f8c0a00  addli r24, r21, 0
002e80  37309700  beq r14, r9, 12
002e84  17ab8a00  xor r22, r21, r8
002e88  0b9c6211  add.s r24, r5, r22
002e8c  0b1bec20  mul.s r22, r24, r14
002e90  12320002  vadd.s.mz vr4{mr1}, zero, vr0
002e94  92310002  vadd.s.mz vr3{mr1}, zero, vr0
002e98  12310002  vadd.s.mz vr2{mr1}, zero, vr0
002e9c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002ea0  0b9b6719  sub.s r22, r15, r22
002ea4  0b1beb40  min.s r22, r22, r14
002ea8  bf5d6bfe  blt.s r22, r6, -140
002eac  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002eb0  12310002  vadd.s.mz vr2{mr1}, zero, vr0
002eb4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
002eb8  12320002  vadd.s.mz vr4{mr1}, zero, vr0
002ebc  9f0b0000  addli r23, zero, 0
002ec0  0b1c8221  mul.s r24, r4, r24
002ec4  9f0c8fd7  addli r25, r30, -5184
002ec8  1f0d0800  addli r26, r16, 0
002ecc  8b1d8d11  add.s r27, r26, r24
002ed0  9f838b00  addli r7, r23, 64
002ed4  ca820d02  vloads.mz vr5{mr1}, 0(r27)
002ed8  1f8e8d00  addli r28, r27, 64
002edc  4a030e02  vloads.mz vr6{mr1}, 0(r28)
002ee0  0b9e8c11  add.s r28, r25, r24
002ee4  c2030e02  vload.mz vr7{mr1}, 0(r28)
002ee8  9f068e00  addli r13, r28, 64
002eec  42840602  vload.mz vr8{mr1}, 0(r13)
002ef0  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
002ef4  92320002  vadd.s.mz vr5{mr1}, zero, vr0
002ef8  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
002efc  06b40300  vfp162float_l.rn vr8, vr7
002f00  86f30300  vfp162float_h.rn vr7, vr7
002f04  86340300  vfp162float_l.rn vr9, vr6
002f08  06730300  vfp162float_h.rn vr6, vr6
002f0c  86120400  vfloat2fp16_l.rn vr5, vr8
002f10  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
002f14  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
002f18  12340002  vadd.s.mz vr8{mr1}, zero, vr0
002f1c  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
002f20  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
002f24  06940400  vfloat2fp16_l.rn vr8, vr9
002f28  86d20300  vfloat2fp16_h.rn vr5, vr7
002f2c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002f30  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002f34  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
002f38  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002f3c  06540300  vfloat2fp16_h.rn vr8, vr6
002f40  46005e02  vstore.mz vr5{mr1}, 0(r28)
002f44  46808602  vstore.mz vr8{mr1}, 0(r13)
002f48  4b5b7bfe  ble.s r22, r7, -300
002f4c  9f830d01  addli r7, r27, 128
002f50  9f060e01  addli r13, r28, 128
002f54  9f8b0b01  addli r23, r23, 128
002f58  1f0d0d02  addli r26, r26, 256
002f5c  9f8c0c02  addli r25, r25, 256
002f60  ca820302  vloads.mz vr5{mr1}, 0(r7)
002f64  9f838d01  addli r7, r27, 192
002f68  c2830602  vload.mz vr7{mr1}, 0(r13)
002f6c  4a830302  vloads.mz vr6{mr1}, 0(r7)
002f70  9f038e01  addli r7, r28, 192
002f74  42840302  vload.mz vr8{mr1}, 0(r7)
002f78  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
002f7c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
002f80  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
002f84  12330002  vadd.s.mz vr6{mr1}, zero, vr0
002f88  86b40300  vfp162float_l.rn vr9, vr7
002f8c  86f30300  vfp162float_h.rn vr7, vr7
002f90  86920400  vfloat2fp16_l.rn vr5, vr9
002f94  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002f98  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002f9c  86340400  vfp162float_l.rn vr9, vr8
002fa0  06740400  vfp162float_h.rn vr8, vr8
002fa4  06930400  vfloat2fp16_l.rn vr6, vr9
002fa8  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
002fac  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
002fb0  86d20300  vfloat2fp16_h.rn vr5, vr7
002fb4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002fb8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002fbc  06530400  vfloat2fp16_h.rn vr6, vr8
002fc0  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
002fc4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002fc8  46805602  vstore.mz vr5{mr1}, 0(r13)
002fcc  46806302  vstore.mz vr6{mr1}, 0(r7)
002fd0  bffb6bff  blt.s r23, r22, -260
002fd4  5bc9ffff  j -440
002fd8  9f090000  addli r19, zero, 0
002fdc  1f0a0000  addli r20, zero, 0
002fe0  00a00000  mfence { lm }
002fe4  3f8767fe  blt.s r15, r6, -576
002fe8  0f0a3a18  div.f.rn r20, r20, r3
002fec  8f893918  div.f.rn r19, r19, r3
002ff0  e3033f00  loadli.w r7,  24(r30)
002ff4  1f0b0000  addli r22, zero, 0
002ff8  8b6a4a21  mul.f.rn r21, r20, r20
002ffc  0b6a0a58  neg.f r20, r20
003000  8be95919  sub.f.rn r19, r19, r21
003004  9f0a8fd7  addli r21, r30, -5184
003008  8be97910  add.f.rn r19, r19, r7
00300c  ab03803f  lui r7, 260096
003010  8f890908  sqrt.f.rn r19, r19
003014  8f893319  div.f.rn r19, r7, r19
003018  c2800a02  vload.mz vr1{mr1}, 0(r21)
00301c  9f0b4b00  addli r23, r22, 32
003020  06b10000  vfp162float_l.rn vr2, vr1
003024  86f00000  vfp162float_h.rn vr1, vr1
003028  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
00302c  92111a02  vadd.f.mz.rn vr3{mr1}, r20, vr1
003030  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003034  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003038  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
00303c  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003040  06120100  vfloat2fp16_l.rn vr4, vr2
003044  06d20100  vfloat2fp16_h.rn vr4, vr3
003048  46804a02  vstore.mz vr4{mr1}, 0(r21)
00304c  4be577ff  ble.s r15, r23, -680
003050  9f8b8a00  addli r23, r21, 64
003054  1f0b8b00  addli r22, r22, 64
003058  9f8a0a01  addli r21, r21, 128
00305c  42810b02  vload.mz vr2{mr1}, 0(r23)
003060  86310100  vfp162float_l.rn vr3, vr2
003064  06710100  vfp162float_h.rn vr2, vr2
003068  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
00306c  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003070  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003074  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
003078  86900100  vfloat2fp16_l.rn vr1, vr3
00307c  86500100  vfloat2fp16_h.rn vr1, vr2
003080  46801b02  vstore.mz vr1{mr1}, 0(r23)
003084  3f5efbfe  blt.s r22, r15, -108
003088  dba3ffff  j -740
00308c  80300002  core_id r1
003090  1f210000  addli r2, zero, 2
003094  37ba2016  beq r1, r2, 11916
003098  1f110000  addli r2, zero, 1
00309c  37bc2012  beq r1, r2, 9996
0030a0  3bfa0016  bneq r1, zero, 11932
0030a4  63012f00  loadli.w r2,  16(r30)
0030a8  ab0100f0  lui r3, 983040
0030ac  1b312100  slli r2, r2, 2
0030b0  17113100  or r2, r2, r3
0030b4  ab710200  lui r3, 39
0030b8  9f810108  addli r3, r3, 1024
0030bc  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0030c0  dbcf0500  j 11900
0030c4  80300002  core_id r1
0030c8  bb800000  bneq r1, zero, 32
0030cc  63012f00  loadli.w r2,  16(r30)
0030d0  ab0100f0  lui r3, 983040
0030d4  1b312100  slli r2, r2, 2
0030d8  17113100  or r2, r2, r3
0030dc  abd10200  lui r3, 45
0030e0  9f8101f0  addli r3, r3, -2048
0030e4  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0030e8  2bf10000  lui r2, 15
0030ec  e3411f00  loadli.w r3,  12(r30)
0030f0  00200300  mfence { sm, gm }
0030f4  1b11f1ff  ori r2, r2, 4095
0030f8  80210104  csr_set csr3, r2
0030fc  00d00100  sync_group
003100  cba81118  ble.s r3, r1, 12840
003104  e3012f00  loadli.w r3,  16(r30)
003108  e3422f00  loadli.w r5,  20(r30)
00310c  abf4ffff  lui r9, 1048575
003110  abd80200  lui r17, 45
003114  1f0b8fd7  addli r22, r30, -5184
003118  1f140000  addli r8, zero, 1
00311c  1f050002  addli r10, zero, 256
003120  9f050001  addli r11, zero, 128
003124  1f068000  addli r12, zero, 64
003128  9f064000  addli r13, zero, 32
00312c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003130  9b94f4ff  ori r9, r9, 4095
003134  9f8808f0  addli r17, r17, -2048
003138  0b925110  add.s r4, r3, r5
00313c  1bb12100  slli r2, r3, 2
003140  b3810108  fix2float.rn r3, r3
003144  1f73f2ff  addli r6, r4, -1
003148  1bb22200  slli r4, r5, 2
00314c  67043fd6  storeli.w r3, -5312(r30)
003150  9f010fd7  addli r3, r30, -5248
003154  8b125330  div.s r5, r6, r5
003158  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
00315c  5b070000  j 56
003160  6b530f00  load.d r[7:8], 0(r30)
003164  2b0800f0  lui r16, 983040
003168  1f0b8fd7  addli r22, r30, -5184
00316c  00a00000  mfence { lm }
003170  005a0102  load_param_i r20, 2
003174  17180101  or r16, r2, r16
003178  8b101a10  add.s r1, r20, r1
00317c  0b292311  add.ul r[19:20], r[7:8], r[19:20]
003180  7f386901  s_lm2gm r16, r22, 0(r[19:20])
003184  00a00200  mfence { lm, gm }
003188  e3411f00  loadli.w r3,  12(r30)
00318c  3fa03000  blt.s r1, r3, 8
003190  5b330600  j 12696
003194  e3011f00  loadli.w r3,  8(r30)
003198  0b983010  add.s r16, r1, r3
00319c  9f210000  addli r3, zero, 2
0031a0  0b18f820  mul.s r16, r16, r15
0031a4  33190828  sext_int2long r[19:20], r16
0031a8  2b0800f0  lui r16, 983040
0031ac  17393902  sll.d r[19:20], r[19:20], r3
0031b0  9f017fd6  addli r3, r30, -5320
0031b4  17180101  or r16, r2, r16
0031b8  6bd30100  load.d r[7:8], 0(r3)
0031bc  0b2a2311  add.ul r[21:22], r[7:8], r[19:20]
0031c0  7f286a01  l_gm2lm r16, r22, 0(r[21:22])
0031c4  00a00200  mfence { lm, gm }
0031c8  bf978200  blt.s r5, r8, 484
0031cc  9f0a0000  addli r21, zero, 0
0031d0  1f0a0000  addli r20, zero, 0
0031d4  1f0b0000  addli r22, zero, 0
0031d8  db0c0000  j 100
0031dc  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
0031e0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0031e4  1f1b0b00  addli r22, r22, 1
0031e8  6a7105c0  vsrl.p vr2, r10, vr0
0031ec  ea7115c0  vsrl.p vr3, r10, vr1
0031f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0031f4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0031f8  6af105c0  vsrl.p vr2, r11, vr0
0031fc  eaf115c0  vsrl.p vr3, r11, vr1
003200  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003204  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003208  6a7106c0  vsrl.p vr2, r12, vr0
00320c  ea7116c0  vsrl.p vr3, r12, vr1
003210  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003214  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003218  6af106c0  vsrl.p vr2, r13, vr0
00321c  eaf116c0  vsrl.p vr3, r13, vr1
003220  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003224  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003228  fa110040  vextracti.f r3, 0(vr0)
00322c  7a930040  vextracti.f r6, 0(vr1)
003230  8bea3a10  add.f.rn r21, r21, r3
003234  0b6a6a10  add.f.rn r20, r20, r6
003238  b7755b00  beq r22, r5, 380
00323c  1f080b00  addli r16, r22, 0
003240  3730a700  beq r14, r10, 12
003244  17289b00  xor r16, r22, r9
003248  0b980211  add.s r16, r5, r16
00324c  9f010fd7  addli r3, r30, -5248
003250  8b1be820  mul.s r23, r16, r14
003254  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
003258  8b9b7719  sub.s r23, r15, r23
00325c  8b9beb40  min.s r23, r23, r14
003260  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003264  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003268  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00326c  bfcd8bfe  blt.s r23, r8, -144
003270  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003274  1f0c0000  addli r24, zero, 0
003278  8b1c0221  mul.s r25, r4, r16
00327c  1f0d8fd7  addli r26, r30, -5184
003280  9f8d0800  addli r27, r17, 0
003284  92304002  vadd.s.mz vr1{mr1}, zero, vr4
003288  12314002  vadd.s.mz vr2{mr1}, zero, vr4
00328c  92314002  vadd.s.mz vr3{mr1}, zero, vr4
003290  0b989d11  add.s r16, r27, r25
003294  0b1e9d11  add.s r28, r26, r25
003298  1f038800  addli r6, r16, 64
00329c  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
0032a0  9f038801  addli r7, r16, 192
0032a4  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
0032a8  9f018e01  addli r3, r28, 192
0032ac  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0032b0  1f030801  addli r6, r16, 128
0032b4  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
0032b8  9f030e01  addli r7, r28, 128
0032bc  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0032c0  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
0032c4  c2950302  vload_mask16.mz vr11{mr1}, 0(r7)
0032c8  1f038e00  addli r6, r28, 64
0032cc  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0032d0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0032d4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0032d8  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0032dc  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0032e0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0032e4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0032e8  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
0032ec  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0032f0  1f038c00  addli r6, r24, 64
0032f4  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0032f8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0032fc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003300  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
003304  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003308  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
00330c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
003310  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
003314  4bab6bfe  ble.s r23, r6, -312
003318  1f030802  addli r6, r16, 256
00331c  9f038802  addli r7, r16, 320
003320  9f010e02  addli r3, r28, 256
003324  1f0c0c01  addli r24, r24, 128
003328  9f8d0d04  addli r27, r27, 512
00332c  1f0d0d04  addli r26, r26, 512
003330  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
003334  1f030803  addli r6, r16, 384
003338  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
00333c  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
003340  9f038e02  addli r7, r28, 320
003344  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
003348  1f038803  addli r6, r16, 448
00334c  1f088e03  addli r16, r28, 448
003350  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
003354  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
003358  1f030e03  addli r6, r28, 384
00335c  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
003360  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
003364  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
003368  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00336c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003370  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003374  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003378  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
00337c  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
003380  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
003384  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
003388  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00338c  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
003390  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003394  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003398  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
00339c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0033a0  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0033a4  bf3b7cff  blt.s r24, r23, -276
0033a8  dbc6ffff  j -460
0033ac  1f0a0000  addli r20, zero, 0
0033b0  9f0a0000  addli r21, zero, 0
0033b4  00a00000  mfence { lm }
0033b8  bfa687fe  blt.s r15, r8, -600
0033bc  e3018fd6  loadli.w r3,  -5312(r30)
0033c0  1f0b0000  addli r22, zero, 0
0033c4  8f8a3a18  div.f.rn r21, r21, r3
0033c8  0f083a18  div.f.rn r16, r20, r3
0033cc  e3013f00  loadli.w r3,  24(r30)
0033d0  0bea5a21  mul.f.rn r20, r21, r21
0033d4  0b684819  sub.f.rn r16, r16, r20
0033d8  0bea0a58  neg.f r20, r21
0033dc  9f0a8fd7  addli r21, r30, -5184
0033e0  0b683810  add.f.rn r16, r16, r3
0033e4  ab01803f  lui r3, 260096
0033e8  0f080808  sqrt.f.rn r16, r16
0033ec  0f880119  div.f.rn r16, r3, r16
0033f0  9f8b8a00  addli r23, r21, 64
0033f4  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
0033f8  1f0c4b00  addli r24, r22, 32
0033fc  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
003400  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003404  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003408  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
00340c  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003410  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
003414  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
003418  4ba587ff  ble.s r15, r24, -696
00341c  9f8b0a01  addli r23, r21, 128
003420  1f8c8a01  addli r24, r21, 192
003424  1f0b8b00  addli r22, r22, 64
003428  9f8a0a02  addli r21, r21, 256
00342c  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
003430  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
003434  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003438  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
00343c  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003440  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003444  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
003448  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
00344c  bf1efbfe  blt.s r22, r15, -92
003450  5ba2ffff  j -752
003454  80300002  core_id r1
003458  ab630000  lui r7, 6
00345c  1f110000  addli r2, zero, 1
003460  1f038fd7  addli r6, r30, -5184
003464  1f048000  addli r8, zero, 64
003468  1f050010  addli r10, zero, 2048
00346c  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
003470  9bb15000  slli r3, r1, 5
003474  80500102  load_param_i r1, 2
003478  9f830308  addli r7, r7, 1024
00347c  9bb45000  slli r9, r1, 5
003480  b3850128  zext_int2long r[12:13], r3
003484  ab0600f0  lui r13, 983040
003488  97b52502  sll.d r[12:13], r[12:13], r2
00348c  9716d400  or r13, r8, r13
003490  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
003494  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
003498  9bb52100  slli r11, r3, 2
00349c  8b913410  add.s r3, r9, r3
0034a0  00a00200  mfence { lm, gm }
0034a4  c2000302  vload.mz vr1{mr1}, 0(r6)
0034a8  1386a104  setlt.u r12, r3, r10
0034ac  8b957510  add.s r11, r11, r7
0034b0  9f868500  addli r13, r11, 64
0034b4  66c11180  vmerge_l.hf vr2, vr3, vr1
0034b8  e6c011a0  vmerge_h.hf vr1, vr3, vr1
0034bc  4e902502  vstores_mask16.mz vr2{mr1}, 0(r11)
0034c0  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
0034c4  bb7e06fe  bneq r12, zero, -68
0034c8  2bf10000  lui r2, 15
0034cc  80310002  core_id r3
0034d0  00a00300  mfence { lm, sm, gm }
0034d4  9f020006  addli r5, zero, 768
0034d8  1b11f1ff  ori r2, r2, 4095
0034dc  9b811100  andi r3, r3, 1
0034e0  80210104  csr_set csr3, r2
0034e4  1f010006  addli r2, zero, 768
0034e8  00d00100  sync_group
0034ec  670c3fd4  storeli.w r3, -5440(r30)
0034f0  37a00100  beq r3, zero, 8
0034f4  9f02000a  addli r5, zero, 1280
0034f8  e3411f00  loadli.w r3,  12(r30)
0034fc  1f140000  addli r8, zero, 1
003500  bfa88116  blt.s r3, r8, 11816
003504  e3018fd5  loadli.w r3,  -5440(r30)
003508  1bcc1000  srli r24, r1, 1
00350c  80300002  core_id r1
003510  1f098fd7  addli r18, r30, -5184
003514  9bbb1200  slli r23, r5, 1
003518  9f040000  addli r9, zero, 0
00351c  9f767000  addli r13, zero, 63
003520  9f0a0005  addli r21, zero, 640
003524  2b05803f  lui r10, 260096
003528  1f062000  addli r12, zero, 16
00352c  1f330000  addli r6, zero, 3
003530  2be77f00  lui r14, 2046
003534  1f5e1000  addli r28, zero, 13
003538  abe50700  lui r11, 126
00353c  1f221000  addli r4, zero, 10
003540  1f0b0003  addli r22, zero, 384
003544  9bcd1000  srli r27, r1, 1
003548  9bb02200  slli r1, r5, 2
00354c  0b912120  mul.s r2, r3, r2
003550  8b902011  add.s r1, r1, r18
003554  67042fd4  storeli.w r2, -5568(r30)
003558  1f814200  addli r2, r5, 32
00355c  9f8080ff  addli r1, r1, -64
003560  674f2fd2  storeli.w r2, -5644(r30)
003564  0b912b11  add.s r2, r23, r18
003568  670f1fd2  storeli.w r1, -5648(r30)
00356c  9f0081ff  addli r1, r2, -64
003570  2bf100fc  lui r2, 1032207
003574  e74e1fd2  storeli.w r1, -5652(r30)
003578  abf0ffff  lui r1, 1048575
00357c  00a00000  mfence { lm }
003580  67008fd5  storeli.w r24, -5632(r30)
003584  e74fbfd3  storeli.w r27, -5636(r30)
003588  e70f7fd3  storeli.w r23, -5640(r30)
00358c  9b9000f8  ori r1, r1, 3968
003590  e70e1fd2  storeli.w r1, -5656(r30)
003594  abf00000  lui r1, 15
003598  9b90f0ff  ori r1, r1, 4095
00359c  67081fd6  storeli.w r1, -5248(r30)
0035a0  ab700000  lui r1, 7
0035a4  1b9af0ff  ori r20, r1, 4095
0035a8  ab00ff03  lui r1, 16368
0035ac  9b99f03f  ori r19, r1, 1023
0035b0  9b1001c0  ori r1, r2, 3072
0035b4  1f010fd5  addli r2, r30, -5504
0035b8  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0035bc  5b040000  j 32
0035c0  00a00300  mfence { lm, sm, gm }
0035c4  63010fd7  loadli.w r2,  -5248(r30)
0035c8  80210104  csr_set csr3, r2
0035cc  00d00100  sync_group
0035d0  8b948411  add.s r9, r9, r24
0035d4  3fa00401  blt.s r9, r16, 8
0035d8  5bc0faff  j -10752
0035dc  0b91b411  add.s r2, r9, r27
0035e0  cb0f28fe  ble.s r16, r2, -32
0035e4  e3011f00  loadli.w r3,  8(r30)
0035e8  e3078fd4  loadli.w r15,  -5568(r30)
0035ec  0b113110  add.s r2, r2, r3
0035f0  8b818431  div.u r3, r9, r24
0035f4  1b31b100  slli r2, r2, 11
0035f8  1711f100  or r2, r2, r15
0035fc  33180128  sext_int2long r[17:18], r2
003600  2b0100f0  lui r2, 983040
003604  9bb16100  slli r3, r3, 6
003608  973c8802  sll.d r[26:27], r[17:18], r8
00360c  9f087fd6  addli r17, r30, -5320
003610  17912b00  or r2, r23, r2
003614  9b810104  andi r3, r3, 64
003618  ebd70800  load.d r[16:17], 0(r17)
00361c  9f088fd6  addli r17, r30, -5312
003620  73b09801  store.d r[26:27], 0(r17)
003624  0ba89711  add.ul r[17:18], r[16:17], r[26:27]
003628  7f212801  l_gm2lm r2, r18, 0(r[17:18])
00362c  00310002  core_id r2
003630  00a00200  mfence { lm, gm }
003634  17912100  or r2, r3, r2
003638  e341dfd3  loadli.w r3,  -5652(r30)
00363c  6308efd3  loadli.w r16,  -5648(r30)
003640  e348efd3  loadli.w r17,  -5644(r30)
003644  c2800102  vload.mz vr1{mr1}, 0(r3)
003648  9f88c8ff  addli r17, r17, -32
00364c  1f0d88ff  addli r26, r16, -64
003650  9f8181ff  addli r3, r3, -64
003654  938b1605  setlt.u r23, r13, r17
003658  66c111a0  vmerge_h.hf vr2, vr3, vr1
00365c  e6c01180  vmerge_l.hf vr1, vr3, vr1
003660  46102802  vstore_mask16.mz vr2{mr1}, 0(r16)
003664  1f0808ff  addli r16, r16, -128
003668  46101d02  vstore_mask16.mz vr1{mr1}, 0(r26)
00366c  3bef0bfe  bneq r23, zero, -40
003670  00a00000  mfence { lm }
003674  e3018fd5  loadli.w r3,  -5440(r30)
003678  3bb60100  bneq r3, zero, 396
00367c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
003680  12313002  vadd.s.mz vr2{mr1}, zero, vr3
003684  12323002  vadd.s.mz vr4{mr1}, zero, vr3
003688  6308dfd3  loadli.w r16,  -5656(r30)
00368c  9f010000  addli r3, zero, 0
003690  8b9b7110  add.s r23, r3, r7
003694  8b183910  add.s r17, r18, r3
003698  1f080801  addli r16, r16, 128
00369c  9f810104  addli r3, r3, 512
0036a0  9f870b01  addli r15, r23, 128
0036a4  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
0036a8  1f8c8b00  addli r24, r23, 64
0036ac  42940802  vload_mask16.mz vr8{mr1}, 0(r17)
0036b0  9f8c8801  addli r25, r17, 192
0036b4  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
0036b8  9f878b01  addli r15, r23, 192
0036bc  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0036c0  1f8c8800  addli r24, r17, 64
0036c4  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0036c8  ca930702  vloads_mask16.mz vr7{mr1}, 0(r15)
0036cc  9f870801  addli r15, r17, 128
0036d0  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
0036d4  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
0036d8  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0036dc  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0036e0  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0036e4  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0036e8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0036ec  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
0036f0  46908702  vstore_mask16.mz vr8{mr1}, 0(r15)
0036f4  9f870b02  addli r15, r23, 256
0036f8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0036fc  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003700  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003704  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003708  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
00370c  9f878b02  addli r15, r23, 320
003710  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
003714  9f8c0802  addli r25, r17, 256
003718  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00371c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003720  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003724  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
003728  9f870b03  addli r15, r23, 384
00372c  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003730  9f8b8b03  addli r23, r23, 448
003734  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003738  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
00373c  9f878802  addli r15, r17, 320
003740  4a950b02  vloads_mask16.mz vr10{mr1}, 0(r23)
003744  9f8b0803  addli r23, r17, 384
003748  9f888803  addli r17, r17, 448
00374c  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
003750  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003754  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
003758  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00375c  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
003760  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003764  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003768  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
00376c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003770  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
003774  93075805  setlt.u r15, r16, r21
003778  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00377c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003780  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003784  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003788  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00378c  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
003790  46907802  vstore_mask16.mz vr7{mr1}, 0(r17)
003794  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003798  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00379c  bbdb07fe  bneq r15, zero, -268
0037a0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0037a4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0037a8  9f010002  addli r3, zero, 256
0037ac  6af101c0  vsrl.p vr2, r3, vr0
0037b0  eaf111c0  vsrl.p vr3, r3, vr1
0037b4  9f010001  addli r3, zero, 128
0037b8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037bc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037c0  6af101c0  vsrl.p vr2, r3, vr0
0037c4  eaf111c0  vsrl.p vr3, r3, vr1
0037c8  9f018000  addli r3, zero, 64
0037cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037d4  6af101c0  vsrl.p vr2, r3, vr0
0037d8  eaf111c0  vsrl.p vr3, r3, vr1
0037dc  9f014000  addli r3, zero, 32
0037e0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037e4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037e8  6af101c0  vsrl.p vr2, r3, vr0
0037ec  eaf111c0  vsrl.p vr3, r3, vr1
0037f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037f4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037f8  fa110040  vextracti.f r3, 0(vr0)
0037fc  7a980040  vextracti.f r16, 0(vr1)
003800  5b660000  j 816
003804  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003808  abf7ffff  lui r15, 1048575
00380c  9f010000  addli r3, zero, 0
003810  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003814  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003818  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00381c  9b9b07f8  ori r23, r15, 3968
003820  8b983310  add.s r17, r7, r3
003824  0b183910  add.s r16, r18, r3
003828  9f8b0b01  addli r23, r23, 128
00382c  9f810104  addli r3, r3, 512
003830  9f870831  addli r15, r17, 6272
003834  1f8d0830  addli r26, r17, 6144
003838  1f8c8831  addli r24, r17, 6336
00383c  9f0d0818  addli r27, r16, 3072
003840  9f0c8819  addli r25, r16, 3264
003844  ca930702  vloads_mask16.mz vr7{mr1}, 0(r15)
003848  ca120d02  vloads_mask16.mz vr5{mr1}, 0(r26)
00384c  1f8d8830  addli r26, r17, 6208
003850  ca140c02  vloads_mask16.mz vr9{mr1}, 0(r24)
003854  1f0c0819  addli r24, r16, 3200
003858  9f078818  addli r15, r16, 3136
00385c  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
003860  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
003864  4a140d02  vloads_mask16.mz vr8{mr1}, 0(r26)
003868  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
00386c  c2950702  vload_mask16.mz vr11{mr1}, 0(r15)
003870  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003874  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
003878  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
00387c  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
003880  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003884  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
003888  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
00388c  1f8c0832  addli r24, r17, 6400
003890  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
003894  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003898  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00389c  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
0038a0  9f0c081a  addli r25, r16, 3328
0038a4  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
0038a8  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
0038ac  9f07081b  addli r15, r16, 3456
0038b0  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0038b4  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0038b8  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
0038bc  1f8c8832  addli r24, r17, 6464
0038c0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0038c4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0038c8  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0038cc  1f8c0833  addli r24, r17, 6528
0038d0  9f888833  addli r17, r17, 6592
0038d4  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
0038d8  1f0c881a  addli r24, r16, 3392
0038dc  4a950802  vloads_mask16.mz vr10{mr1}, 0(r17)
0038e0  1f08881b  addli r16, r16, 3520
0038e4  93886b05  setlt.u r17, r23, r22
0038e8  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
0038ec  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0038f0  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0038f4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0038f8  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
0038fc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003900  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003904  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003908  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00390c  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
003910  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003914  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003918  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00391c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003920  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003924  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
003928  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
00392c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003930  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003934  bbbb08fe  bneq r17, zero, -276
003938  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00393c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003940  9f010002  addli r3, zero, 256
003944  abf7ffff  lui r15, 1048575
003948  9f0b0000  addli r23, zero, 0
00394c  1b9807f8  ori r16, r15, 3968
003950  eaf111c0  vsrl.p vr3, r3, vr1
003954  6af101c0  vsrl.p vr2, r3, vr0
003958  9f010001  addli r3, zero, 128
00395c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003960  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003964  eaf111c0  vsrl.p vr3, r3, vr1
003968  6af101c0  vsrl.p vr2, r3, vr0
00396c  9f018000  addli r3, zero, 64
003970  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003974  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003978  eaf111c0  vsrl.p vr3, r3, vr1
00397c  6af101c0  vsrl.p vr2, r3, vr0
003980  9f014000  addli r3, zero, 32
003984  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003988  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00398c  eaf111c0  vsrl.p vr3, r3, vr1
003990  6af101c0  vsrl.p vr2, r3, vr0
003994  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003998  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00399c  7a9d0040  vextracti.f r26, 0(vr1)
0039a0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0039a4  fa110040  vextracti.f r3, 0(vr0)
0039a8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0039ac  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0039b0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0039b4  8b9d7311  add.s r27, r7, r23
0039b8  8b187911  add.s r17, r18, r23
0039bc  1f080801  addli r16, r16, 128
0039c0  9f8b0b04  addli r23, r23, 512
0039c4  9f870d18  addli r15, r27, 3072
0039c8  1f8c0d19  addli r24, r27, 3200
0039cc  42940802  vload_mask16.mz vr8{mr1}, 0(r17)
0039d0  9f8c8801  addli r25, r17, 192
0039d4  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
0039d8  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
0039dc  9f878d18  addli r15, r27, 3136
0039e0  1f8c8d19  addli r24, r27, 3264
0039e4  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0039e8  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
0039ec  9f870801  addli r15, r17, 128
0039f0  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
0039f4  1f8c8800  addli r24, r17, 64
0039f8  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
0039fc  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
003a00  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
003a04  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
003a08  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
003a0c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
003a10  46908702  vstore_mask16.mz vr8{mr1}, 0(r15)
003a14  9f870d1a  addli r15, r27, 3328
003a18  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003a1c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003a20  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003a24  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003a28  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
003a2c  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
003a30  9f878d1a  addli r15, r27, 3392
003a34  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
003a38  9f8c0802  addli r25, r17, 256
003a3c  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003a40  1f8c0803  addli r24, r17, 384
003a44  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003a48  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003a4c  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
003a50  9f870d1b  addli r15, r27, 3456
003a54  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003a58  9f8d8d1b  addli r27, r27, 3520
003a5c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003a60  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003a64  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
003a68  9f878802  addli r15, r17, 320
003a6c  4a950d02  vloads_mask16.mz vr10{mr1}, 0(r27)
003a70  9f888803  addli r17, r17, 448
003a74  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
003a78  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003a7c  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
003a80  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003a84  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
003a88  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003a8c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003a90  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003a94  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003a98  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
003a9c  93075805  setlt.u r15, r16, r21
003aa0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003aa4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003aa8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003aac  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003ab0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003ab4  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003ab8  46907802  vstore_mask16.mz vr7{mr1}, 0(r17)
003abc  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003ac0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003ac4  bbcb07fe  bneq r15, zero, -272
003ac8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003acc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003ad0  9f070002  addli r15, zero, 256
003ad4  6af107c0  vsrl.p vr2, r15, vr0
003ad8  eaf117c0  vsrl.p vr3, r15, vr1
003adc  9f070001  addli r15, zero, 128
003ae0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003ae4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003ae8  6af107c0  vsrl.p vr2, r15, vr0
003aec  eaf117c0  vsrl.p vr3, r15, vr1
003af0  9f078000  addli r15, zero, 64
003af4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003af8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003afc  6af107c0  vsrl.p vr2, r15, vr0
003b00  eaf117c0  vsrl.p vr3, r15, vr1
003b04  9f074000  addli r15, zero, 32
003b08  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003b0c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003b10  6af107c0  vsrl.p vr2, r15, vr0
003b14  eaf117c0  vsrl.p vr3, r15, vr1
003b18  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003b1c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003b20  7a980040  vextracti.f r16, 0(vr1)
003b24  fa170040  vextracti.f r15, 0(vr0)
003b28  8be1f110  add.f.rn r3, r3, r15
003b2c  0b680d11  add.f.rn r16, r26, r16
003b30  ab8d0000  lui r27, 8
003b34  2b8b0000  lui r22, 8
003b38  9b372100  slli r15, r2, 2
003b3c  630c0fd4  loadli.w r24,  -5632(r30)
003b40  e34cffd3  loadli.w r25,  -5636(r30)
003b44  630dffd3  loadli.w r26,  -5640(r30)
003b48  1b01e107  andi r2, r2, 126
003b4c  9f8d0d08  addli r27, r27, 1024
003b50  1f0b0b0c  addli r22, r22, 1536
003b54  1b312100  slli r2, r2, 2
003b58  8b98b711  add.s r17, r15, r27
003b5c  8b9b6711  add.s r23, r15, r22
003b60  73e00b01  stores.w r16, 0(r23)
003b64  73e03800  stores.w r3, 0(r17)
003b68  0b18b111  add.s r16, r2, r27
003b6c  0b116111  add.s r2, r2, r22
003b70  9f088fd7  addli r17, r30, -5184
003b74  9f0b0000  addli r23, zero, 0
003b78  00a00300  mfence { lm, sm, gm }
003b7c  e3010fd7  loadli.w r3,  -5248(r30)
003b80  80a10104  csr_set csr3, r3
003b84  9b914700  ori r3, r15, 4
003b88  00d00100  sync_group
003b8c  6f480800  loads.w r16, 0(r16)
003b90  6f410100  loads.w r2, 0(r2)
003b94  8b97b111  add.s r15, r3, r27
003b98  8b916111  add.s r3, r3, r22
003b9c  efc70700  loads.w r15, 0(r15)
003ba0  efc10100  loads.w r3, 0(r3)
003ba4  8be70711  add.f.rn r15, r15, r16
003ba8  2b08003a  lui r16, 237568
003bac  0be12110  add.f.rn r2, r3, r2
003bb0  8be10721  mul.f.rn r3, r15, r16
003bb4  0b610121  mul.f.rn r2, r2, r16
003bb8  1f088fd7  addli r16, r30, -5184
003bbc  8be73120  mul.f.rn r15, r3, r3
003bc0  8be10158  neg.f r3, r3
003bc4  0b61f118  sub.f.rn r2, r2, r15
003bc8  e3073f00  loadli.w r15,  24(r30)
003bcc  0b61f110  add.f.rn r2, r2, r15
003bd0  0f010108  sqrt.f.rn r2, r2
003bd4  0f012518  div.f.rn r2, r10, r2
003bd8  9f078800  addli r15, r16, 64
003bdc  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
003be0  9f8b4b00  addli r23, r23, 32
003be4  1f080801  addli r16, r16, 128
003be8  c2900702  vload_mask16.mz vr1{mr1}, 0(r15)
003bec  93875b04  setlt.u r15, r23, r5
003bf0  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
003bf4  12911102  vadd.f.mz.rn vr2{mr1}, r3, vr1
003bf8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003bfc  ea211622  vor.u.mz vr3{mr1}, r12, vr1
003c00  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
003c04  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
003c08  6eb201c2  vsrl.s.mz vr4{mr1}, vr3, vr0
003c0c  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003c10  6a324402  vand.s.mz vr4{mr1}, r8, vr4
003c14  ea313402  vand.s.mz vr3{mr1}, r8, vr3
003c18  16304002  vadd.s.mz vr0{mr1}, vr0, vr4
003c1c  6a221322  vor.u.mz vr4{mr1}, r6, vr1
003c20  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
003c24  ea211e22  vor.u.mz vr3{mr1}, r28, vr1
003c28  ea201222  vor.u.mz vr1{mr1}, r4, vr1
003c2c  12300a02  vadd.s.mz vr0{mr1}, r20, vr0
003c30  12312a02  vadd.s.mz vr2{mr1}, r20, vr2
003c34  eeb201c2  vsrl.s.mz vr5{mr1}, vr3, vr0
003c38  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
003c3c  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003c40  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
003c44  6ab25502  vand.s.mz vr4{mr1}, r11, vr5
003c48  6a300702  vand.s.mz vr0{mr1}, r14, vr0
003c4c  eab13502  vand.s.mz vr3{mr1}, r11, vr3
003c50  6a312702  vand.s.mz vr2{mr1}, r14, vr2
003c54  6a300522  vor.s.mz vr0{mr1}, r10, vr0
003c58  6a324522  vor.s.mz vr4{mr1}, r10, vr4
003c5c  ea313522  vor.s.mz vr3{mr1}, r10, vr3
003c60  6a312522  vor.s.mz vr2{mr1}, r10, vr2
003c64  06100020  vfloat2fp16_l.rz vr0, vr0
003c68  86d10120  vfloat2fp16_h.rz vr3, vr3
003c6c  06500120  vfloat2fp16_h.rz vr0, vr2
003c70  86110220  vfloat2fp16_l.rz vr3, vr4
003c74  6ab00902  vand.s.mz vr0{mr1}, r19, vr0
003c78  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
003c7c  eab01002  vand.s.mz vr1{mr1}, r1, vr1
003c80  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
003c84  46800802  vstore.mz vr0{mr1}, 0(r17)
003c88  9f888800  addli r17, r17, 64
003c8c  3bbd07fe  bneq r15, zero, -180
003c90  9f018fd6  addli r3, r30, -5312
003c94  eb570f00  load.d r[16:17], 0(r30)
003c98  2b0100f0  lui r2, 983040
003c9c  9f8d0c00  addli r27, r25, 0
003ca0  6bdb0100  load.d r[23:24], 0(r3)
003ca4  00a00000  mfence { lm }
003ca8  8ba76711  add.ul r[16:17], r[16:17], r[23:24]
003cac  9f0b0d00  addli r23, r26, 0
003cb0  1f0b0003  addli r22, zero, 384
003cb4  17912b00  or r2, r23, r2
003cb8  7fb12701  s_lm2gm r2, r18, 0(r[16:17])
003cbc  1f010fd5  addli r2, r30, -5504
003cc0  00a00200  mfence { lm, gm }
003cc4  63481f00  loadli.w r16,  12(r30)
003cc8  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
003ccc  db20ffff  j -1788
003cd0  00360002  core_id r12
003cd4  63012f00  loadli.w r2,  16(r30)
003cd8  9b305600  slli r1, r12, 5
003cdc  cb211100  ble.s r2, r1, 104
003ce0  80530102  load_param_i r7, 2
003ce4  2bc40000  lui r8, 12
003ce8  1f110000  addli r2, zero, 1
003cec  9f018fd7  addli r3, r30, -5184
003cf0  1f038000  addli r6, zero, 64
003cf4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003cf8  9bb35300  slli r7, r7, 5
003cfc  1f0404f0  addli r8, r8, -2048
003d00  b3840028  zext_int2long r[10:11], r1
003d04  ab0500f0  lui r11, 983040
003d08  97b42402  sll.d r[10:11], r[10:11], r2
003d0c  9715b300  or r11, r6, r11
003d10  8b249210  add.ul r[10:11], r[5:6], r[10:11]
003d14  ffa53400  l_gm2lm r11, r3, 0(r[10:11])
003d18  9bb42000  slli r9, r1, 2
003d1c  8b901310  add.s r1, r7, r1
003d20  00a00200  mfence { lm, gm }
003d24  c2800102  vload.mz vr1{mr1}, 0(r3)
003d28  8b948410  add.s r9, r9, r8
003d2c  1f858400  addli r10, r9, 64
003d30  66411080  vmerge_l.hf vr2, vr0, vr1
003d34  e64010a0  vmerge_h.hf vr1, vr0, vr1
003d38  4e902402  vstores_mask16.mz vr2{mr1}, 0(r9)
003d3c  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
003d40  3f8ff0fe  blt.s r1, r15, -64
003d44  abf00000  lui r1, 15
003d48  63411f00  loadli.w r2,  12(r30)
003d4c  00a00300  mfence { lm, sm, gm }
003d50  9b90f0ff  ori r1, r1, 4095
003d54  80a10004  csr_set csr3, r1
003d58  00d00100  sync_group
003d5c  4b37c112  ble.s r2, r12, 9676
003d60  e3002f00  loadli.w r1,  16(r30)
003d64  63412f00  loadli.w r2,  20(r30)
003d68  9f038fd7  addli r7, r30, -5184
003d6c  1f150000  addli r10, zero, 1
003d70  9f054000  addli r11, zero, 32
003d74  1f747000  addli r8, zero, 63
003d78  1f080002  addli r16, zero, 256
003d7c  9f040001  addli r9, zero, 128
003d80  ab09803f  lui r19, 260096
003d84  abeb7f00  lui r23, 2046
003d88  abec0700  lui r25, 126
003d8c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003d90  8b912010  add.s r3, r1, r2
003d94  33820008  fix2float.rn r4, r1
003d98  1bb31000  slli r6, r1, 1
003d9c  9bb22000  slli r5, r1, 2
003da0  9f804000  addli r1, r1, 32
003da4  9b382100  slli r17, r2, 2
003da8  e74f1fd2  storeli.w r1, -5636(r30)
003dac  8b907210  add.s r1, r5, r7
003db0  9ff1f1ff  addli r3, r3, -1
003db4  67004fd4  storeli.w r4, -5632(r30)
003db8  0b922130  div.s r4, r3, r2
003dbc  9f8080ff  addli r1, r1, -64
003dc0  8b117310  add.s r3, r6, r7
003dc4  e70f1fd2  storeli.w r1, -5640(r30)
003dc8  9f8081ff  addli r1, r3, -64
003dcc  674f1fd2  storeli.w r1, -5644(r30)
003dd0  abf0ffff  lui r1, 1048575
003dd4  00a00000  mfence { lm }
003dd8  67046fd4  storeli.w r6, -5568(r30)
003ddc  9b90f0ff  ori r1, r1, 4095
003de0  67041fd6  storeli.w r1, -5312(r30)
003de4  ab700000  lui r1, 7
003de8  9b9af0ff  ori r21, r1, 4095
003dec  ab00ff03  lui r1, 16368
003df0  1b9df03f  ori r26, r1, 1023
003df4  abf000fc  lui r1, 1032207
003df8  1b9e00c0  ori r28, r1, 3072
003dfc  9f000fd7  addli r1, r30, -5248
003e00  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
003e04  db090000  j 76
003e08  9f010fd5  addli r3, r30, -5504
003e0c  eb500f00  load.d r[2:3], 0(r30)
003e10  9f038fd7  addli r7, r30, -5184
003e14  1f747000  addli r8, zero, 63
003e18  ebd20100  load.d r[6:7], 0(r3)
003e1c  00a00000  mfence { lm }
003e20  ab0100f0  lui r3, 983040
003e24  63068fd5  loadli.w r12,  -5440(r30)
003e28  8ba05010  add.ul r[2:3], r[2:3], r[6:7]
003e2c  63038fd4  loadli.w r6,  -5568(r30)
003e30  80520102  load_param_i r5, 2
003e34  0b96c210  add.s r12, r5, r12
003e38  97113300  or r3, r6, r3
003e3c  ffb17000  s_lm2gm r3, r7, 0(r[2:3])
003e40  00a00200  mfence { lm, gm }
003e44  e3401f00  loadli.w r1,  12(r30)
003e48  3f201600  blt.s r12, r1, 8
003e4c  db9b0400  j 9436
003e50  e3001f00  loadli.w r1,  8(r30)
003e54  9f027fd6  addli r5, r30, -5320
003e58  9f860800  addli r13, r17, 0
003e5c  8b101610  add.s r1, r12, r1
003e60  8b90f020  mul.s r1, r1, r15
003e64  b3900028  sext_int2long r[2:3], r1
003e68  97b8a002  sll.d r[18:19], r[2:3], r10
003e6c  6bd10200  load.d r[3:4], 0(r5)
003e70  ab0000f0  lui r1, 983040
003e74  9f020fd5  addli r5, r30, -5504
003e78  97101300  or r1, r6, r1
003e7c  73b01201  store.d r[18:19], 0(r5)
003e80  0b211111  add.ul r[3:4], r[3:4], r[18:19]
003e84  ff207100  l_gm2lm r1, r7, 0(r[3:4])
003e88  00a00200  mfence { lm, gm }
003e8c  bff0b700  blt.s r15, r11, 60
003e90  e340efd3  loadli.w r1,  -5644(r30)
003e94  6301ffd3  loadli.w r2,  -5640(r30)
003e98  e341ffd3  loadli.w r3,  -5636(r30)
003e9c  c2800002  vload.mz vr1{mr1}, 0(r1)
003ea0  9f81c1ff  addli r3, r3, -32
003ea4  1f0381ff  addli r6, r2, -64
003ea8  9f8080ff  addli r1, r1, -64
003eac  93023404  setlt.u r5, r8, r3
003eb0  664110a0  vmerge_h.hf vr2, vr0, vr1
003eb4  e6401080  vmerge_l.hf vr1, vr0, vr1
003eb8  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
003ebc  1f0101ff  addli r2, r2, -128
003ec0  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
003ec4  3bef02fe  bneq r5, zero, -40
003ec8  670ccfd4  storeli.w r12, -5440(r30)
003ecc  00a00000  mfence { lm }
003ed0  bf77a200  blt.s r4, r10, 508
003ed4  9f010000  addli r3, zero, 0
003ed8  9f020000  addli r5, zero, 0
003edc  1f010000  addli r2, zero, 0
003ee0  9f880600  addli r17, r13, 0
003ee4  1f098000  addli r18, zero, 64
003ee8  db0d0000  j 108
003eec  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
003ef0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003ef4  1f110100  addli r2, r2, 1
003ef8  6a7108c0  vsrl.p vr2, r16, vr0
003efc  ea7118c0  vsrl.p vr3, r16, vr1
003f00  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f04  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f08  6af104c0  vsrl.p vr2, r9, vr0
003f0c  eaf114c0  vsrl.p vr3, r9, vr1
003f10  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f14  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f18  6a7109c0  vsrl.p vr2, r18, vr0
003f1c  ea7119c0  vsrl.p vr3, r18, vr1
003f20  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f24  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f28  6af105c0  vsrl.p vr2, r11, vr0
003f2c  eaf115c0  vsrl.p vr3, r11, vr1
003f30  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f34  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f38  fa100040  vextracti.f r1, 0(vr0)
003f3c  7a930040  vextracti.f r6, 0(vr1)
003f40  8be11110  add.f.rn r3, r3, r1
003f44  9f000fd7  addli r1, r30, -5248
003f48  8be26210  add.f.rn r5, r5, r6
003f4c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
003f50  37264100  beq r2, r4, 392
003f54  9f000100  addli r1, r2, 0
003f58  37400701  beq r14, r16, 16
003f5c  e3008fd6  loadli.w r1,  -5312(r30)
003f60  97201100  xor r1, r2, r1
003f64  8b101210  add.s r1, r4, r1
003f68  0b93e020  mul.s r6, r1, r14
003f6c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
003f70  92310002  vadd.s.mz vr3{mr1}, zero, vr0
003f74  12310002  vadd.s.mz vr2{mr1}, zero, vr0
003f78  92300002  vadd.s.mz vr1{mr1}, zero, vr0
003f7c  0b936718  sub.s r6, r15, r6
003f80  8b13e340  min.s r7, r6, r14
003f84  bfada3fe  blt.s r7, r10, -152
003f88  9f060fd7  addli r13, r30, -5248
003f8c  2bc60000  lui r12, 12
003f90  0b931820  mul.s r6, r17, r1
003f94  1f040000  addli r8, zero, 0
003f98  9f008fd7  addli r1, r30, -5184
003f9c  42920602  vload_mask16.mz vr4{mr1}, 0(r13)
003fa0  1f0606f0  addli r12, r12, -2048
003fa4  92304002  vadd.s.mz vr1{mr1}, zero, vr4
003fa8  12314002  vadd.s.mz vr2{mr1}, zero, vr4
003fac  92314002  vadd.s.mz vr3{mr1}, zero, vr4
003fb0  0b1a6610  add.s r20, r12, r6
003fb4  8b966010  add.s r13, r1, r6
003fb8  1f0b8a00  addli r22, r20, 64
003fbc  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
003fc0  1f0c8a01  addli r24, r20, 192
003fc4  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
003fc8  9f8d8601  addli r27, r13, 192
003fcc  4a130b02  vloads_mask16.mz vr6{mr1}, 0(r22)
003fd0  1f0b0a01  addli r22, r20, 128
003fd4  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
003fd8  1f8c0601  addli r24, r13, 128
003fdc  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
003fe0  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
003fe4  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
003fe8  1f8b8600  addli r22, r13, 64
003fec  42150b02  vload_mask16.mz vr10{mr1}, 0(r22)
003ff0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
003ff4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
003ff8  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
003ffc  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
004000  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004004  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004008  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
00400c  46106b02  vstore_mask16.mz vr6{mr1}, 0(r22)
004010  1f0b8400  addli r22, r8, 64
004014  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
004018  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00401c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004020  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
004024  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004028  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
00402c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
004030  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
004034  cbea63ff  ble.s r7, r22, -328
004038  1f0c0a02  addli r24, r20, 256
00403c  9f0d8a02  addli r27, r20, 320
004040  1f8b0602  addli r22, r13, 256
004044  1f040401  addli r8, r8, 128
004048  1f060604  addli r12, r12, 512
00404c  9f800004  addli r1, r1, 512
004050  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
004054  1f0c0a03  addli r24, r20, 384
004058  1f0a8a03  addli r20, r20, 448
00405c  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
004060  42130b02  vload_mask16.mz vr6{mr1}, 0(r22)
004064  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
004068  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
00406c  1f8a0603  addli r20, r13, 384
004070  1f8c8602  addli r24, r13, 320
004074  9f868603  addli r13, r13, 448
004078  42150a02  vload_mask16.mz vr10{mr1}, 0(r20)
00407c  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
004080  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
004084  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
004088  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00408c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
004090  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004094  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004098  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
00409c  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
0040a0  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0040a4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0040a8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0040ac  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
0040b0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0040b4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0040b8  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0040bc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0040c0  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
0040c4  bf3b74fe  blt.s r8, r7, -276
0040c8  dbc4ffff  j -476
0040cc  9f020000  addli r5, zero, 0
0040d0  9f010000  addli r3, zero, 0
0040d4  9f880600  addli r17, r13, 0
0040d8  1f042000  addli r8, zero, 16
0040dc  1f360000  addli r12, zero, 3
0040e0  9f561000  addli r13, zero, 13
0040e4  1f2a1000  addli r20, zero, 10
0040e8  00a00000  mfence { lm }
0040ec  3ff4a7fe  blt.s r15, r10, -740
0040f0  e3000fd4  loadli.w r1,  -5632(r30)
0040f4  1f030000  addli r6, zero, 0
0040f8  0f811118  div.f.rn r2, r3, r1
0040fc  8f801218  div.f.rn r1, r5, r1
004100  9f028fd7  addli r5, r30, -5184
004104  8b612120  mul.f.rn r3, r2, r2
004108  0b610158  neg.f r2, r2
00410c  8be03018  sub.f.rn r1, r1, r3
004110  e3013f00  loadli.w r3,  24(r30)
004114  8be03010  add.f.rn r1, r1, r3
004118  9f018fd7  addli r3, r30, -5184
00411c  8f800008  sqrt.f.rn r1, r1
004120  8f801918  div.f.rn r1, r19, r1
004124  9f838100  addli r7, r3, 64
004128  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00412c  1f034300  addli r6, r6, 32
004130  9f810101  addli r3, r3, 128
004134  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
004138  92111102  vadd.f.mz.rn vr3{mr1}, r2, vr1
00413c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004140  6a221422  vor.u.mz vr4{mr1}, r8, vr1
004144  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
004148  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
00414c  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
004150  ee3232c2  vsrl.s.mz vr5{mr1}, vr4, vr3
004154  6e3222c2  vsrl.s.mz vr4{mr1}, vr4, vr2
004158  ea325502  vand.s.mz vr5{mr1}, r10, vr5
00415c  6a324502  vand.s.mz vr4{mr1}, r10, vr4
004160  96b15102  vadd.s.mz vr3{mr1}, vr3, vr5
004164  ea221622  vor.u.mz vr5{mr1}, r12, vr1
004168  16314102  vadd.s.mz vr2{mr1}, vr2, vr4
00416c  6aa21622  vor.u.mz vr4{mr1}, r13, vr1
004170  ea201a22  vor.u.mz vr1{mr1}, r20, vr1
004174  92b13a02  vadd.s.mz vr3{mr1}, r21, vr3
004178  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
00417c  6e3332c2  vsrl.s.mz vr6{mr1}, vr4, vr3
004180  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
004184  6e3222c2  vsrl.s.mz vr4{mr1}, vr4, vr2
004188  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
00418c  eab26c02  vand.s.mz vr5{mr1}, r25, vr6
004190  eab13b02  vand.s.mz vr3{mr1}, r23, vr3
004194  6ab24c02  vand.s.mz vr4{mr1}, r25, vr4
004198  6ab12b02  vand.s.mz vr2{mr1}, r23, vr2
00419c  eab25922  vor.s.mz vr5{mr1}, r19, vr5
0041a0  eab13922  vor.s.mz vr3{mr1}, r19, vr3
0041a4  6ab24922  vor.s.mz vr4{mr1}, r19, vr4
0041a8  6ab12922  vor.s.mz vr2{mr1}, r19, vr2
0041ac  06520220  vfloat2fp16_h.rz vr4, vr4
0041b0  06510120  vfloat2fp16_h.rz vr2, vr2
0041b4  06920220  vfloat2fp16_l.rz vr4, vr5
0041b8  06910120  vfloat2fp16_l.rz vr2, vr3
0041bc  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
0041c0  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
0041c4  ea301e02  vand.s.mz vr1{mr1}, r28, vr1
0041c8  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
0041cc  46801202  vstore.mz vr1{mr1}, 0(r5)
0041d0  9f828200  addli r5, r5, 64
0041d4  3f4df3fe  blt.s r6, r15, -176
0041d8  5b86ffff  j -976
0041dc  ab330100  lui r7, 19
0041e0  803a0002  core_id r21
0041e4  00510102  load_param_i r2, 2
0041e8  9f100000  addli r1, zero, 1
0041ec  1f038fd7  addli r6, r30, -5184
0041f0  1f048000  addli r8, zero, 64
0041f4  1f050010  addli r10, zero, 2048
0041f8  9bb15a00  slli r3, r21, 5
0041fc  9b345100  slli r9, r2, 5
004200  9f8303f8  addli r7, r7, -1024
004204  b3850128  zext_int2long r[12:13], r3
004208  ab0600f0  lui r13, 983040
00420c  97b51502  sll.d r[12:13], r[12:13], r1
004210  9716d400  or r13, r8, r13
004214  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
004218  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
00421c  9bb52100  slli r11, r3, 2
004220  8b913410  add.s r3, r9, r3
004224  00a00200  mfence { lm, gm }
004228  42000302  vload.mz vr0{mr1}, 0(r6)
00422c  1386a104  setlt.u r12, r3, r10
004230  8b957510  add.s r11, r11, r7
004234  9f868500  addli r13, r11, 64
004238  86300000  vfp162float_l.rn vr1, vr0
00423c  06700000  vfp162float_h.rn vr0, vr0
004240  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
004244  4e900602  vstores_mask16.mz vr0{mr1}, 0(r13)
004248  bb7e06fe  bneq r12, zero, -68
00424c  abf00000  lui r1, 15
004250  00a00300  mfence { lm, sm, gm }
004254  9b8d1a00  andi r27, r21, 1
004258  1f020006  addli r4, zero, 768
00425c  9b91f0ff  ori r3, r1, 4095
004260  80a10104  csr_set csr3, r3
004264  9f010006  addli r3, zero, 768
004268  00d00100  sync_group
00426c  37a00d00  beq r27, zero, 8
004270  1f02000a  addli r4, zero, 1280
004274  e3421f00  loadli.w r5,  12(r30)
004278  1f1b0000  addli r22, zero, 1
00427c  bfb26211  blt.s r5, r22, 8364
004280  8b903d20  mul.s r1, r27, r3
004284  1b451100  srli r10, r2, 1
004288  1b312200  slli r2, r4, 2
00428c  9f068fd7  addli r13, r30, -5184
004290  1b361200  slli r12, r4, 1
004294  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004298  ab5c0100  lui r25, 21
00429c  2b590100  lui r18, 21
0042a0  1f040000  addli r8, zero, 0
0042a4  9bc51a00  srli r11, r21, 1
0042a8  9f787000  addli r17, zero, 63
0042ac  1f0a0005  addli r20, zero, 640
0042b0  9f0b8000  addli r23, zero, 64
0042b4  1f0c4000  addli r24, zero, 32
0042b8  1f0e0003  addli r28, zero, 384
0042bc  67081fd6  storeli.w r1, -5248(r30)
0042c0  9f004200  addli r1, r4, 32
0042c4  0b11d110  add.s r2, r2, r13
0042c8  8b11d610  add.s r3, r12, r13
0042cc  9f8c0cf8  addli r25, r25, -1024
0042d0  1f0909fc  addli r18, r18, -512
0042d4  67041fd6  storeli.w r1, -5312(r30)
0042d8  9f0081ff  addli r1, r2, -64
0042dc  1f018fd4  addli r2, r30, -5568
0042e0  670c1fd4  storeli.w r1, -5440(r30)
0042e4  9f8081ff  addli r1, r3, -64
0042e8  67081fd4  storeli.w r1, -5504(r30)
0042ec  abf0ffff  lui r1, 1048575
0042f0  00a00000  mfence { lm }
0042f4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0042f8  2bf10000  lui r2, 15
0042fc  9b9000f8  ori r1, r1, 3968
004300  1b1df1ff  ori r26, r2, 4095
004304  67001fd4  storeli.w r1, -5632(r30)
004308  db030000  j 28
00430c  00a00300  mfence { lm, sm, gm }
004310  80210d04  csr_set csr3, r26
004314  00d00100  sync_group
004318  0b14a410  add.s r8, r8, r10
00431c  3f200401  blt.s r8, r16, 8
004320  5b17f9ff  j -14152
004324  0b11b410  add.s r2, r8, r11
004328  cb1f28fe  ble.s r16, r2, -28
00432c  e3001f00  loadli.w r1,  8(r30)
004330  8b01a430  div.u r3, r8, r10
004334  0b111110  add.s r2, r2, r1
004338  e3000fd7  loadli.w r1,  -5248(r30)
00433c  1b31b100  slli r2, r2, 11
004340  9bb16100  slli r3, r3, 6
004344  17111100  or r2, r2, r1
004348  9f007fd6  addli r1, r30, -5320
00434c  9b810104  andi r3, r3, 64
004350  b3120128  sext_int2long r[6:7], r2
004354  6bd70000  load.d r[15:16], 0(r1)
004358  2b0100f0  lui r2, 983040
00435c  97b26203  sll.d r[6:7], r[6:7], r22
004360  17112600  or r2, r12, r2
004364  0b275710  add.ul r[15:16], r[15:16], r[6:7]
004368  7f21d700  l_gm2lm r2, r13, 0(r[15:16])
00436c  17915101  or r2, r3, r21
004370  00a00200  mfence { lm, gm }
004374  e3010fd5  loadli.w r3,  -5504(r30)
004378  e3048fd5  loadli.w r9,  -5440(r30)
00437c  63078fd6  loadli.w r14,  -5312(r30)
004380  c2800102  vload.mz vr1{mr1}, 0(r3)
004384  1f07c7ff  addli r14, r14, -32
004388  9f8984ff  addli r19, r9, -64
00438c  9f8181ff  addli r3, r3, -64
004390  9387e804  setlt.u r15, r17, r14
004394  06f10000  vfp162float_h.rn vr2, vr1
004398  86b00000  vfp162float_l.rn vr1, vr1
00439c  46902402  vstore_mask16.mz vr2{mr1}, 0(r9)
0043a0  9f8404ff  addli r9, r9, -128
0043a4  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
0043a8  3bef07fe  bneq r15, zero, -40
0043ac  00a00000  mfence { lm }
0043b0  3bb60d00  bneq r27, zero, 396
0043b4  9f008fd4  addli r1, r30, -5568
0043b8  e3040fd4  loadli.w r9,  -5632(r30)
0043bc  9f010000  addli r3, zero, 0
0043c0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0043c4  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0043c8  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0043cc  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0043d0  8b977110  add.s r15, r3, r7
0043d4  0b973610  add.s r14, r13, r3
0043d8  9f840401  addli r9, r9, 128
0043dc  9f810104  addli r3, r3, 512
0043e0  9f800701  addli r1, r15, 128
0043e4  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
0043e8  1f888700  addli r16, r15, 64
0043ec  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
0043f0  9f098701  addli r19, r14, 192
0043f4  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
0043f8  9f808701  addli r1, r15, 192
0043fc  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
004400  1f088700  addli r16, r14, 64
004404  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
004408  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
00440c  9f000701  addli r1, r14, 128
004410  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
004414  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
004418  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00441c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004420  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004424  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004428  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00442c  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
004430  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
004434  9f800702  addli r1, r15, 256
004438  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00443c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004440  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004444  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
004448  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
00444c  9f808702  addli r1, r15, 320
004450  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
004454  9f090702  addli r19, r14, 256
004458  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00445c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004460  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004464  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
004468  9f800703  addli r1, r15, 384
00446c  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
004470  9f878703  addli r15, r15, 448
004474  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004478  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
00447c  9f008702  addli r1, r14, 320
004480  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
004484  9f070703  addli r15, r14, 384
004488  1f078703  addli r14, r14, 448
00448c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
004490  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004494  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
004498  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00449c  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
0044a0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0044a4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0044a8  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
0044ac  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0044b0  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0044b4  93804405  setlt.u r1, r9, r20
0044b8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0044bc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0044c0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0044c4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0044c8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0044cc  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
0044d0  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
0044d4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0044d8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0044dc  bbdb00fe  bneq r1, zero, -268
0044e0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0044e4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0044e8  9f000002  addli r1, zero, 256
0044ec  6af100c0  vsrl.p vr2, r1, vr0
0044f0  eaf110c0  vsrl.p vr3, r1, vr1
0044f4  9f000001  addli r1, zero, 128
0044f8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0044fc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004500  6af100c0  vsrl.p vr2, r1, vr0
004504  eaf110c0  vsrl.p vr3, r1, vr1
004508  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00450c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004510  6af10bc0  vsrl.p vr2, r23, vr0
004514  eaf11bc0  vsrl.p vr3, r23, vr1
004518  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00451c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004520  6a710cc0  vsrl.p vr2, r24, vr0
004524  ea711cc0  vsrl.p vr3, r24, vr1
004528  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00452c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004530  fa110040  vextracti.f r3, 0(vr0)
004534  fa940040  vextracti.f r9, 0(vr1)
004538  5b660000  j 816
00453c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004540  abf0ffff  lui r1, 1048575
004544  1f8b0d00  addli r22, r27, 0
004548  9f010000  addli r3, zero, 0
00454c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004550  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004554  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004558  9b9400f8  ori r9, r1, 3968
00455c  0b973310  add.s r14, r7, r3
004560  8b993610  add.s r19, r13, r3
004564  9f840401  addli r9, r9, 128
004568  9f810104  addli r3, r3, 512
00456c  1f080731  addli r16, r14, 6272
004570  9f070730  addli r15, r14, 6144
004574  9f008731  addli r1, r14, 6336
004578  9f8d0918  addli r27, r19, 3072
00457c  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
004580  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
004584  9f078730  addli r15, r14, 6208
004588  ca940002  vloads_mask16.mz vr9{mr1}, 0(r1)
00458c  9f808918  addli r1, r19, 3136
004590  1f888919  addli r16, r19, 3264
004594  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
004598  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
00459c  9f870919  addli r15, r19, 3200
0045a0  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
0045a4  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0045a8  42950702  vload_mask16.mz vr10{mr1}, 0(r15)
0045ac  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0045b0  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0045b4  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0045b8  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0045bc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0045c0  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0045c4  46907702  vstore_mask16.mz vr7{mr1}, 0(r15)
0045c8  9f070732  addli r15, r14, 6400
0045cc  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0045d0  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
0045d4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0045d8  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
0045dc  1f88091a  addli r16, r19, 3328
0045e0  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
0045e4  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0045e8  9f80091b  addli r1, r19, 3456
0045ec  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0045f0  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0045f4  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
0045f8  9f078732  addli r15, r14, 6464
0045fc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004600  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004604  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
004608  9f070733  addli r15, r14, 6528
00460c  1f078733  addli r14, r14, 6592
004610  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
004614  9f87891a  addli r15, r19, 3392
004618  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
00461c  1f87891b  addli r14, r19, 3520
004620  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
004624  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004628  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00462c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004630  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
004634  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004638  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00463c  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
004640  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004644  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
004648  9387c405  setlt.u r15, r9, r28
00464c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004650  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004654  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004658  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00465c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004660  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
004664  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
004668  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00466c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004670  bbbb07fe  bneq r15, zero, -276
004674  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004678  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00467c  9f000002  addli r1, zero, 256
004680  9f040000  addli r9, zero, 0
004684  eaf110c0  vsrl.p vr3, r1, vr1
004688  6af100c0  vsrl.p vr2, r1, vr0
00468c  9f000001  addli r1, zero, 128
004690  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004694  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004698  eaf110c0  vsrl.p vr3, r1, vr1
00469c  6af100c0  vsrl.p vr2, r1, vr0
0046a0  abf0ffff  lui r1, 1048575
0046a4  9b9d00f8  ori r27, r1, 3968
0046a8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0046ac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0046b0  eaf11bc0  vsrl.p vr3, r23, vr1
0046b4  6af10bc0  vsrl.p vr2, r23, vr0
0046b8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0046bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0046c0  ea711cc0  vsrl.p vr3, r24, vr1
0046c4  6a710cc0  vsrl.p vr2, r24, vr0
0046c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0046cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0046d0  fa990040  vextracti.f r19, 0(vr1)
0046d4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0046d8  fa110040  vextracti.f r3, 0(vr0)
0046dc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0046e0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0046e4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0046e8  8b979310  add.s r15, r7, r9
0046ec  0b979610  add.s r14, r13, r9
0046f0  9f8d0d01  addli r27, r27, 128
0046f4  9f840404  addli r9, r9, 512
0046f8  9f800718  addli r1, r15, 3072
0046fc  1f880719  addli r16, r15, 3200
004700  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
004704  9f0a8701  addli r21, r14, 192
004708  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
00470c  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
004710  9f808718  addli r1, r15, 3136
004714  1f888719  addli r16, r15, 3264
004718  c2950a02  vload_mask16.mz vr11{mr1}, 0(r21)
00471c  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
004720  9f000701  addli r1, r14, 128
004724  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
004728  1f088700  addli r16, r14, 64
00472c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
004730  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
004734  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004738  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00473c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004740  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004744  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
004748  9f80071a  addli r1, r15, 3328
00474c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004750  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004754  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004758  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00475c  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
004760  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
004764  9f80871a  addli r1, r15, 3392
004768  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
00476c  9f0a0702  addli r21, r14, 256
004770  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
004774  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004778  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00477c  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
004780  9f80071b  addli r1, r15, 3456
004784  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
004788  9f87871b  addli r15, r15, 3520
00478c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004790  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004794  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
004798  9f008702  addli r1, r14, 320
00479c  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
0047a0  9f070703  addli r15, r14, 384
0047a4  1f078703  addli r14, r14, 448
0047a8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0047ac  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0047b0  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0047b4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0047b8  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
0047bc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0047c0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0047c4  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
0047c8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0047cc  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0047d0  93804d05  setlt.u r1, r27, r20
0047d4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0047d8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0047dc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0047e0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0047e4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0047e8  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
0047ec  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
0047f0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0047f4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0047f8  bbcb00fe  bneq r1, zero, -272
0047fc  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004800  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004804  9f000002  addli r1, zero, 256
004808  9f0d0b00  addli r27, r22, 0
00480c  803a0002  core_id r21
004810  1f1b0000  addli r22, zero, 1
004814  6af100c0  vsrl.p vr2, r1, vr0
004818  eaf110c0  vsrl.p vr3, r1, vr1
00481c  9f000001  addli r1, zero, 128
004820  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004824  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004828  6af100c0  vsrl.p vr2, r1, vr0
00482c  eaf110c0  vsrl.p vr3, r1, vr1
004830  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004834  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004838  6af10bc0  vsrl.p vr2, r23, vr0
00483c  eaf11bc0  vsrl.p vr3, r23, vr1
004840  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004844  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004848  6a710cc0  vsrl.p vr2, r24, vr0
00484c  ea711cc0  vsrl.p vr3, r24, vr1
004850  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004854  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004858  fa940040  vextracti.f r9, 0(vr1)
00485c  fa100040  vextracti.f r1, 0(vr0)
004860  8be11110  add.f.rn r3, r3, r1
004864  8be49910  add.f.rn r9, r19, r9
004868  9b302100  slli r1, r2, 2
00486c  1b01e107  andi r2, r2, 126
004870  0b979011  add.s r14, r1, r25
004874  8b972011  add.s r15, r1, r18
004878  9b904000  ori r1, r1, 4
00487c  1b312100  slli r2, r2, 2
004880  73603700  stores.w r3, 0(r14)
004884  73e09700  stores.w r9, 0(r15)
004888  8b919011  add.s r3, r1, r25
00488c  8b149111  add.s r9, r2, r25
004890  8b902011  add.s r1, r1, r18
004894  0b112111  add.s r2, r2, r18
004898  1f078fd7  addli r14, r30, -5184
00489c  9f070000  addli r15, zero, 0
0048a0  00a00300  mfence { lm, sm, gm }
0048a4  80210d04  csr_set csr3, r26
0048a8  00d00100  sync_group
0048ac  63481f00  loadli.w r16,  12(r30)
0048b0  efc10100  loads.w r3, 0(r3)
0048b4  efc40400  loads.w r9, 0(r9)
0048b8  efc00000  loads.w r1, 0(r1)
0048bc  6f410100  loads.w r2, 0(r2)
0048c0  8be19110  add.f.rn r3, r3, r9
0048c4  8be02010  add.f.rn r1, r1, r2
0048c8  2b01003a  lui r2, 237568
0048cc  9f048fd7  addli r9, r30, -5184
0048d0  8be12120  mul.f.rn r3, r3, r2
0048d4  8be02020  mul.f.rn r1, r1, r2
0048d8  0be13120  mul.f.rn r2, r3, r3
0048dc  8be10158  neg.f r3, r3
0048e0  8be02018  sub.f.rn r1, r1, r2
0048e4  63013f00  loadli.w r2,  24(r30)
0048e8  8be02010  add.f.rn r1, r1, r2
0048ec  2b01803f  lui r2, 260096
0048f0  8f800008  sqrt.f.rn r1, r1
0048f4  0f011118  div.f.rn r2, r2, r1
0048f8  42900402  vload_mask16.mz vr0{mr1}, 0(r9)
0048fc  9f808400  addli r1, r9, 64
004900  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
004904  9f874700  addli r15, r15, 32
004908  9f840401  addli r9, r9, 128
00490c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
004910  93804704  setlt.u r1, r15, r4
004914  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
004918  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
00491c  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
004920  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
004924  06110000  vfloat2fp16_l.rn vr2, vr0
004928  06d10000  vfloat2fp16_h.rn vr2, vr1
00492c  46002702  vstore.mz vr2{mr1}, 0(r14)
004930  1f078700  addli r14, r14, 64
004934  3b9f00fe  bneq r1, zero, -60
004938  6b510f00  load.d r[3:4], 0(r30)
00493c  ab0000f0  lui r1, 983040
004940  00a00000  mfence { lm }
004944  97101600  or r1, r12, r1
004948  0b215110  add.ul r[3:4], r[3:4], r[6:7]
00494c  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
004950  00a00200  mfence { lm, gm }
004954  db38ffff  j -1596
004958  80300002  core_id r1
00495c  e3012f00  loadli.w r3,  16(r30)
004960  1bb15000  slli r2, r1, 5
004964  cb912100  ble.s r3, r2, 100
004968  00540102  load_param_i r8, 2
00496c  ab840100  lui r9, 24
004970  9f110000  addli r3, zero, 1
004974  1f038fd7  addli r6, r30, -5184
004978  9f038000  addli r7, zero, 64
00497c  1b345400  slli r8, r8, 5
004980  9f840400  addli r9, r9, 0
004984  33050128  zext_int2long r[11:12], r2
004988  2b0600f0  lui r12, 983040
00498c  17353502  sll.d r[11:12], r[11:12], r3
004990  1796c300  or r12, r7, r12
004994  0b25a210  add.ul r[11:12], r[5:6], r[11:12]
004998  7f266500  l_gm2lm r12, r6, 0(r[11:12])
00499c  1b352100  slli r10, r2, 2
0049a0  0b112410  add.s r2, r8, r2
0049a4  00a00200  mfence { lm, gm }
0049a8  42000302  vload.mz vr0{mr1}, 0(r6)
0049ac  0b159510  add.s r10, r10, r9
0049b0  9f058500  addli r11, r10, 64
0049b4  86300000  vfp162float_l.rn vr1, vr0
0049b8  06700000  vfp162float_h.rn vr0, vr0
0049bc  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
0049c0  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
0049c4  3f0ff1fe  blt.s r2, r15, -64
0049c8  2bf10000  lui r2, 15
0049cc  e3411f00  loadli.w r3,  12(r30)
0049d0  00a00300  mfence { lm, sm, gm }
0049d4  1b11f1ff  ori r2, r2, 4095
0049d8  80210104  csr_set csr3, r2
0049dc  00d00100  sync_group
0049e0  4ba5110c  ble.s r3, r1, 6472
0049e4  63032f00  loadli.w r6,  16(r30)
0049e8  e3432f00  loadli.w r7,  20(r30)
0049ec  9f0b8fd7  addli r23, r30, -5184
0049f0  1f150000  addli r10, zero, 1
0049f4  9f054000  addli r11, zero, 32
0049f8  1f767000  addli r12, zero, 63
0049fc  1f080002  addli r16, zero, 256
004a00  9f080001  addli r17, zero, 128
004a04  1f098000  addli r18, zero, 64
004a08  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004a0c  0b127310  add.s r4, r6, r7
004a10  33010308  fix2float.rn r2, r6
004a14  1b342300  slli r8, r6, 2
004a18  9b321300  slli r5, r6, 1
004a1c  9bb42300  slli r9, r7, 2
004a20  1f72f2ff  addli r4, r4, -1
004a24  670c2fd4  storeli.w r2, -5440(r30)
004a28  1f014300  addli r2, r6, 32
004a2c  0b137411  add.s r6, r8, r23
004a30  0b947211  add.s r8, r5, r23
004a34  67082fd4  storeli.w r2, -5504(r30)
004a38  1f0183ff  addli r2, r6, -64
004a3c  2bf3ffff  lui r6, 1048575
004a40  0b127230  div.s r4, r4, r7
004a44  67042fd4  storeli.w r2, -5568(r30)
004a48  1f0184ff  addli r2, r8, -64
004a4c  9b16f3ff  ori r13, r6, 4095
004a50  2b830100  lui r6, 24
004a54  67002fd4  storeli.w r2, -5632(r30)
004a58  1f010fd7  addli r2, r30, -5248
004a5c  1f030300  addli r6, r6, 0
004a60  00a00000  mfence { lm }
004a64  67045fd6  storeli.w r5, -5312(r30)
004a68  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004a6c  db070000  j 60
004a70  6b510f00  load.d r[3:4], 0(r30)
004a74  00a00000  mfence { lm }
004a78  ab0900f0  lui r19, 983040
004a7c  9f0b8fd7  addli r23, r30, -5184
004a80  005a0102  load_param_i r20, 2
004a84  e3028fd6  loadli.w r5,  -5312(r30)
004a88  8b101a10  add.s r1, r20, r1
004a8c  8b235111  add.ul r[8:9], r[3:4], r[22:23]
004a90  97993201  or r19, r5, r19
004a94  ffb97301  s_lm2gm r19, r23, 0(r[8:9])
004a98  00a00200  mfence { lm, gm }
004a9c  63411f00  loadli.w r2,  12(r30)
004aa0  3fa02000  blt.s r1, r2, 8
004aa4  db100300  j 6276
004aa8  63011f00  loadli.w r2,  8(r30)
004aac  8b932010  add.s r7, r1, r2
004ab0  8b93f320  mul.s r7, r7, r15
004ab4  b3930328  sext_int2long r[8:9], r7
004ab8  97baa302  sll.d r[22:23], r[8:9], r10
004abc  1f047fd6  addli r8, r30, -5320
004ac0  ab0300f0  lui r7, 983040
004ac4  6b510400  load.d r[3:4], 0(r8)
004ac8  97937200  or r7, r5, r7
004acc  8b295111  add.ul r[20:21], r[3:4], r[22:23]
004ad0  ffa37901  l_gm2lm r7, r23, 0(r[20:21])
004ad4  00a00200  mfence { lm, gm }
004ad8  bff0b700  blt.s r15, r11, 60
004adc  e3030fd4  loadli.w r7,  -5632(r30)
004ae0  63048fd4  loadli.w r8,  -5568(r30)
004ae4  e3090fd5  loadli.w r19,  -5504(r30)
004ae8  c2800302  vload.mz vr1{mr1}, 0(r7)
004aec  9f89c9ff  addli r19, r19, -32
004af0  9f0b84ff  addli r23, r8, -64
004af4  9f8383ff  addli r7, r7, -64
004af8  130a3605  setlt.u r20, r12, r19
004afc  06f10000  vfp162float_h.rn vr2, vr1
004b00  86b00000  vfp162float_l.rn vr1, vr1
004b04  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
004b08  1f0404ff  addli r8, r8, -128
004b0c  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
004b10  3b6f0afe  bneq r20, zero, -40
004b14  00a00000  mfence { lm }
004b18  bf17a200  blt.s r4, r10, 484
004b1c  1f0c0000  addli r24, zero, 0
004b20  9f0b0000  addli r23, zero, 0
004b24  9f0c0000  addli r25, zero, 0
004b28  db0c0000  j 100
004b2c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004b30  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004b34  9f9c0c00  addli r25, r25, 1
004b38  6a7108c0  vsrl.p vr2, r16, vr0
004b3c  ea7118c0  vsrl.p vr3, r16, vr1
004b40  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b44  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b48  6af108c0  vsrl.p vr2, r17, vr0
004b4c  eaf118c0  vsrl.p vr3, r17, vr1
004b50  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b54  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b58  6a7109c0  vsrl.p vr2, r18, vr0
004b5c  ea7119c0  vsrl.p vr3, r18, vr1
004b60  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b64  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b68  6af105c0  vsrl.p vr2, r11, vr0
004b6c  eaf115c0  vsrl.p vr3, r11, vr1
004b70  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b74  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b78  7a110040  vextracti.f r2, 0(vr0)
004b7c  fa910040  vextracti.f r3, 0(vr1)
004b80  0b6c2c10  add.f.rn r24, r24, r2
004b84  8beb3b10  add.f.rn r23, r23, r3
004b88  b7f54c00  beq r25, r4, 380
004b8c  9f830c00  addli r7, r25, 0
004b90  37300701  beq r14, r16, 12
004b94  97a3dc00  xor r7, r25, r13
004b98  8b137210  add.s r7, r4, r7
004b9c  1f010fd7  addli r2, r30, -5248
004ba0  0b94e320  mul.s r8, r7, r14
004ba4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004ba8  0b948718  sub.s r8, r15, r8
004bac  0b1de440  min.s r26, r8, r14
004bb0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004bb4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004bb8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004bbc  bf4dadfe  blt.s r26, r10, -144
004bc0  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
004bc4  9f0d0000  addli r27, zero, 0
004bc8  0b9e7420  mul.s r28, r9, r7
004bcc  9f098fd7  addli r19, r30, -5184
004bd0  1f0a0300  addli r20, r6, 0
004bd4  92304002  vadd.s.mz vr1{mr1}, zero, vr4
004bd8  12314002  vadd.s.mz vr2{mr1}, zero, vr4
004bdc  92314002  vadd.s.mz vr3{mr1}, zero, vr4
004be0  0b14ca11  add.s r8, r20, r28
004be4  8b93c911  add.s r7, r19, r28
004be8  9f028400  addli r5, r8, 64
004bec  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
004bf0  9f018401  addli r3, r8, 192
004bf4  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
004bf8  1f818301  addli r2, r7, 192
004bfc  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
004c00  9f020401  addli r5, r8, 128
004c04  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
004c08  9f818300  addli r3, r7, 64
004c0c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
004c10  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
004c14  9f820301  addli r5, r7, 128
004c18  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
004c1c  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
004c20  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004c24  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
004c28  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
004c2c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
004c30  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004c34  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004c38  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
004c3c  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
004c40  9f818d00  addli r3, r27, 64
004c44  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004c48  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004c4c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004c50  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
004c54  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004c58  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
004c5c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
004c60  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
004c64  4b2b3dfe  ble.s r26, r3, -312
004c68  9f010402  addli r3, r8, 256
004c6c  9f028402  addli r5, r8, 320
004c70  1f810302  addli r2, r7, 256
004c74  9f8d0d01  addli r27, r27, 128
004c78  1f0a0a04  addli r20, r20, 512
004c7c  9f890904  addli r19, r19, 512
004c80  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
004c84  9f010403  addli r3, r8, 384
004c88  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
004c8c  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
004c90  9f828302  addli r5, r7, 320
004c94  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
004c98  9f018403  addli r3, r8, 448
004c9c  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
004ca0  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
004ca4  9f810303  addli r3, r7, 384
004ca8  9f838303  addli r7, r7, 448
004cac  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
004cb0  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
004cb4  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
004cb8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004cbc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
004cc0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004cc4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004cc8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004ccc  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
004cd0  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
004cd4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004cd8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004cdc  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
004ce0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004ce4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004ce8  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
004cec  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004cf0  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
004cf4  bfbbadff  blt.s r27, r26, -276
004cf8  dbc6ffff  j -460
004cfc  9f0b0000  addli r23, zero, 0
004d00  1f0c0000  addli r24, zero, 0
004d04  00a00000  mfence { lm }
004d08  bfa5a7fe  blt.s r15, r10, -664
004d0c  63018fd5  loadli.w r2,  -5440(r30)
004d10  1f0a8fd7  addli r20, r30, -5184
004d14  0f042c18  div.f.rn r8, r24, r2
004d18  8f832b18  div.f.rn r7, r23, r2
004d1c  63013f00  loadli.w r2,  24(r30)
004d20  9f0b0000  addli r23, zero, 0
004d24  8b698420  mul.f.rn r19, r8, r8
004d28  0b640458  neg.f r8, r8
004d2c  8be33319  sub.f.rn r7, r7, r19
004d30  9f098fd7  addli r19, r30, -5184
004d34  8be32310  add.f.rn r7, r7, r2
004d38  2b01803f  lui r2, 260096
004d3c  8f830308  sqrt.f.rn r7, r7
004d40  8f037118  div.f.rn r7, r2, r7
004d44  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
004d48  1f8c8900  addli r24, r19, 64
004d4c  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
004d50  9f8b4b00  addli r23, r23, 32
004d54  9f890901  addli r19, r19, 128
004d58  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
004d5c  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
004d60  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
004d64  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
004d68  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
004d6c  86910000  vfloat2fp16_l.rn vr3, vr1
004d70  86510100  vfloat2fp16_h.rn vr3, vr2
004d74  46003a02  vstore.mz vr3{mr1}, 0(r20)
004d78  1f0a8a00  addli r20, r20, 64
004d7c  3faffbfe  blt.s r23, r15, -56
004d80  5b9effff  j -784
004d84  63012f00  loadli.w r2,  16(r30)
004d88  ab0100f0  lui r3, 983040
004d8c  1b311100  slli r2, r2, 1
004d90  17113100  or r2, r2, r3
004d94  aba10100  lui r3, 26
004d98  9f810100  addli r3, r3, 0
004d9c  7f013300  l_gm2sm r2, r3, 0(r[7:8])
004da0  5b080000  j 64
004da4  63012f00  loadli.w r2,  16(r30)
004da8  ab0100f0  lui r3, 983040
004dac  1b311100  slli r2, r2, 1
004db0  17113100  or r2, r2, r3
004db4  abe10100  lui r3, 30
004db8  9f810100  addli r3, r3, 0
004dbc  7f013300  l_gm2sm r2, r3, 0(r[7:8])
004dc0  5bc30000  j 1560
004dc4  63012f00  loadli.w r2,  16(r30)
004dc8  ab0100f0  lui r3, 983040
004dcc  1b311100  slli r2, r2, 1
004dd0  17113100  or r2, r2, r3
004dd4  abb10100  lui r3, 27
004dd8  9f810100  addli r3, r3, 0
004ddc  7f013400  l_gm2sm r2, r3, 0(r[9:10])
004de0  2bf10000  lui r2, 15
004de4  e3411f00  loadli.w r3,  12(r30)
004de8  00200300  mfence { sm, gm }
004dec  1b11f1ff  ori r2, r2, 4095
004df0  80210104  csr_set csr3, r2
004df4  00d00100  sync_group
004df8  cbc4110a  ble.s r3, r1, 5424
004dfc  63012f00  loadli.w r2,  16(r30)
004e00  e3412f00  loadli.w r3,  20(r30)
004e04  1f062000  addli r12, zero, 16
004e08  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004e0c  1f140000  addli r8, zero, 1
004e10  9f068fd7  addli r13, r30, -5184
004e14  9f050002  addli r11, zero, 256
004e18  2b08807f  lui r16, 522240
004e1c  ab08c07f  lui r17, 523264
004e20  1f090001  addli r18, zero, 128
004e24  9f098000  addli r19, zero, 64
004e28  1f0a4000  addli r20, zero, 32
004e2c  9b321100  slli r5, r2, 1
004e30  0b123110  add.s r4, r2, r3
004e34  33010108  fix2float.rn r2, r2
004e38  1bb31100  slli r6, r3, 1
004e3c  67042fd4  storeli.w r2, -5568(r30)
004e40  1f71f2ff  addli r2, r4, -1
004e44  67085fd4  storeli.w r5, -5504(r30)
004e48  8b133130  div.s r7, r2, r3
004e4c  2bf1ffff  lui r2, 1048575
004e50  ab710000  lui r3, 7
004e54  1b15f1ff  ori r10, r2, 4095
004e58  1f010fd7  addli r2, r30, -5248
004e5c  9b91f1ff  ori r3, r3, 4095
004e60  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004e64  6a200622  vor.u.mz vr0{mr1}, r12, vr0
004e68  1f018fd6  addli r2, r30, -5312
004e6c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004e70  2b01ffff  lui r2, 1048560
004e74  db080000  j 68
004e78  9f048fd5  addli r9, r30, -5440
004e7c  6b520f00  load.d r[5:6], 0(r30)
004e80  9f068fd7  addli r13, r30, -5184
004e84  ebda0400  load.d r[22:23], 0(r9)
004e88  00a00000  mfence { lm }
004e8c  80540102  load_param_i r9, 2
004e90  8b901410  add.s r1, r9, r1
004e94  8b2a5211  add.ul r[22:23], r[5:6], r[22:23]
004e98  e3020fd5  loadli.w r5,  -5504(r30)
004e9c  2b0200f0  lui r4, 983040
004ea0  17924200  or r4, r5, r4
004ea4  7fb2da00  s_lm2gm r4, r13, 0(r[22:23])
004ea8  00a00200  mfence { lm, gm }
004eac  63421f00  loadli.w r4,  12(r30)
004eb0  3fa04000  blt.s r1, r4, 8
004eb4  db8e0200  j 5236
004eb8  63021f00  loadli.w r4,  8(r30)
004ebc  9f047fd6  addli r9, r30, -5320
004ec0  0b924010  add.s r4, r1, r4
004ec4  0b12f220  mul.s r4, r4, r15
004ec8  b31a0228  sext_int2long r[22:23], r4
004ecc  2b0200f0  lui r4, 983040
004ed0  97bb8a02  sll.d r[24:25], r[22:23], r8
004ed4  ebda0400  load.d r[22:23], 0(r9)
004ed8  17924200  or r4, r5, r4
004edc  9f048fd5  addli r9, r30, -5440
004ee0  73b07401  store.d r[24:25], 0(r9)
004ee4  8baa7a11  add.ul r[22:23], r[22:23], r[24:25]
004ee8  7fa2da00  l_gm2lm r4, r13, 0(r[22:23])
004eec  00a00200  mfence { lm, gm }
004ef0  bfdc8300  blt.s r7, r8, 820
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
004f50  7a120040  vextracti.f r4, 0(vr0)
004f54  fa920040  vextracti.f r5, 0(vr1)
004f58  8bed4d10  add.f.rn r27, r27, r4
004f5c  0b6d5d10  add.f.rn r26, r26, r5
004f60  373b7e00  beq r28, r7, 716
004f64  1f020e00  addli r4, r28, 0
004f68  3730b700  beq r14, r11, 12
004f6c  1722ae00  xor r4, r28, r10
004f70  0b924310  add.s r4, r7, r4
004f74  9f020fd7  addli r5, r30, -5248
004f78  8b14e220  mul.s r9, r4, r14
004f7c  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
004f80  8b949718  sub.s r9, r15, r9
004f84  8b9ae440  min.s r21, r9, r14
004f88  92322002  vadd.s.mz vr5{mr1}, zero, vr2
004f8c  12322002  vadd.s.mz vr4{mr1}, zero, vr2
004f90  92312002  vadd.s.mz vr3{mr1}, zero, vr2
004f94  bfcd8afe  blt.s r21, r8, -144
004f98  8b1b4320  mul.s r23, r6, r4
004f9c  1f020fd7  addli r4, r30, -5248
004fa0  ab960100  lui r13, 25
004fa4  1f0b0000  addli r22, zero, 0
004fa8  9f048fd7  addli r9, r30, -5184
004fac  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
004fb0  9f860600  addli r13, r13, 0
004fb4  12315002  vadd.s.mz vr2{mr1}, zero, vr5
004fb8  92315002  vadd.s.mz vr3{mr1}, zero, vr5
004fbc  12325002  vadd.s.mz vr4{mr1}, zero, vr5
004fc0  0b9c7611  add.s r24, r13, r23
004fc4  0b927411  add.s r4, r9, r23
004fc8  9f028fd6  addli r5, r30, -5312
004fcc  4a030c02  vloads.mz vr6{mr1}, 0(r24)
004fd0  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
004fd4  c2030202  vload.mz vr7{mr1}, 0(r4)
004fd8  9f020fd7  addli r5, r30, -5248
004fdc  9f0c8c00  addli r25, r24, 64
004fe0  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
004fe4  9f028b00  addli r5, r22, 64
004fe8  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
004fec  6a357102  vand.s.mz vr10{mr1}, r2, vr7
004ff0  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
004ff4  6a336102  vand.s.mz vr6{mr1}, r2, vr6
004ff8  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
004ffc  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
005000  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
005004  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
005008  669503c0  vabs.f vr10, vr7
00500c  6a348402  vand.s.mz vr8{mr1}, r8, vr8
005010  ea349402  vand.s.mz vr9{mr1}, r8, vr9
005014  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
005018  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
00501c  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
005020  12b48102  vadd.s.mz vr8{mr1}, r3, vr8
005024  92b49102  vadd.s.mz vr9{mr1}, r3, vr9
005028  ea338102  vand.s.mz vr7{mr1}, r2, vr8
00502c  661403c0  vabs.f vr8, vr6
005030  6a339102  vand.s.mz vr6{mr1}, r2, vr9
005034  eaa30834  vor.u.mh vr7{mr2}, r17, vr0
005038  72218842  vlt.u.mz mr2{mr1}, r16, vr8
00503c  6aa30834  vor.u.mh vr6{mr2}, r17, vr0
005040  4a840c02  vloads.mz vr8{mr1}, 0(r25)
005044  9f0c8200  addli r25, r4, 64
005048  c2840c02  vload.mz vr9{mr1}, 0(r25)
00504c  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
005050  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
005054  6a336102  vand.s.mz vr6{mr1}, r2, vr6
005058  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
00505c  ea349102  vand.s.mz vr9{mr1}, r2, vr9
005060  46007202  vstore.mz vr7{mr1}, 0(r4)
005064  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005068  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
00506c  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
005070  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
005074  6a348102  vand.s.mz vr8{mr1}, r2, vr8
005078  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
00507c  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005080  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
005084  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
005088  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
00508c  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
005090  ea349402  vand.s.mz vr9{mr1}, r8, vr9
005094  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
005098  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
00509c  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
0050a0  661505c0  vabs.f vr10, vr10
0050a4  661404c0  vabs.f vr8, vr8
0050a8  92b49102  vadd.s.mz vr9{mr1}, r3, vr9
0050ac  92b5b102  vadd.s.mz vr11{mr1}, r3, vr11
0050b0  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
0050b4  ea349102  vand.s.mz vr9{mr1}, r2, vr9
0050b8  6a35b102  vand.s.mz vr10{mr1}, r2, vr11
0050bc  eaa40834  vor.u.mh vr9{mr2}, r17, vr0
0050c0  72218842  vlt.u.mz mr2{mr1}, r16, vr8
0050c4  6aa50834  vor.u.mh vr10{mr2}, r17, vr0
0050c8  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
0050cc  ea34a102  vand.s.mz vr9{mr1}, r2, vr10
0050d0  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0050d4  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0050d8  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0050dc  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0050e0  46808c02  vstore.mz vr8{mr1}, 0(r25)
0050e4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0050e8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0050ec  4be85afe  ble.s r21, r5, -488
0050f0  9f020c01  addli r5, r24, 128
0050f4  9f0c0201  addli r25, r4, 128
0050f8  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0050fc  1f028201  addli r4, r4, 192
005100  1f0b0b01  addli r22, r22, 128
005104  9f860602  addli r13, r13, 256
005108  9f840402  addli r9, r9, 256
00510c  6a237622  vor.u.mz vr6{mr1}, r12, vr7
005110  4a840202  vloads.mz vr8{mr1}, 0(r5)
005114  c2840c02  vload.mz vr9{mr1}, 0(r25)
005118  9f028c01  addli r5, r24, 192
00511c  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
005120  6a309102  vand.s.mz vr0{mr1}, r2, vr9
005124  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
005128  6a348102  vand.s.mz vr8{mr1}, r2, vr8
00512c  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
005130  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
005134  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
005138  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
00513c  e69504c0  vabs.f vr11, vr9
005140  6a300402  vand.s.mz vr0{mr1}, r8, vr0
005144  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
005148  7221b842  vlt.u.mz mr2{mr1}, r16, vr11
00514c  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
005150  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
005154  12b00102  vadd.s.mz vr0{mr1}, r3, vr0
005158  12b5a102  vadd.s.mz vr10{mr1}, r3, vr10
00515c  ea340102  vand.s.mz vr9{mr1}, r2, vr0
005160  661004c0  vabs.f vr0, vr8
005164  6a34a102  vand.s.mz vr8{mr1}, r2, vr10
005168  eaa47834  vor.u.mh vr9{mr2}, r17, vr7
00516c  72210842  vlt.u.mz mr2{mr1}, r16, vr0
005170  6aa47834  vor.u.mh vr8{mr2}, r17, vr7
005174  4a800202  vloads.mz vr0{mr1}, 0(r5)
005178  42050202  vload.mz vr10{mr1}, 0(r4)
00517c  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
005180  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
005184  6a35a102  vand.s.mz vr10{mr1}, r2, vr10
005188  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
00518c  6a348102  vand.s.mz vr8{mr1}, r2, vr8
005190  46809c02  vstore.mz vr9{mr1}, 0(r25)
005194  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
005198  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
00519c  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
0051a0  6a300102  vand.s.mz vr0{mr1}, r2, vr0
0051a4  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
0051a8  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
0051ac  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
0051b0  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
0051b4  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
0051b8  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
0051bc  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
0051c0  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
0051c4  e69000c0  vabs.f vr1, vr1
0051c8  661000c0  vabs.f vr0, vr0
0051cc  12b5a102  vadd.s.mz vr10{mr1}, r3, vr10
0051d0  92b5b102  vadd.s.mz vr11{mr1}, r3, vr11
0051d4  72211842  vlt.u.mz mr2{mr1}, r16, vr1
0051d8  6a35a102  vand.s.mz vr10{mr1}, r2, vr10
0051dc  ea30b102  vand.s.mz vr1{mr1}, r2, vr11
0051e0  6aa57834  vor.u.mh vr10{mr2}, r17, vr7
0051e4  72210842  vlt.u.mz mr2{mr1}, r16, vr0
0051e8  eaa07834  vor.u.mh vr1{mr2}, r17, vr7
0051ec  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
0051f0  ea331102  vand.s.mz vr7{mr1}, r2, vr1
0051f4  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0051f8  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
0051fc  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005200  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005204  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
005208  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
00520c  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
005210  46000202  vstore.mz vr0{mr1}, 0(r4)
005214  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
005218  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00521c  bf165bff  blt.s r22, r21, -604
005220  db9cffff  j -796
005224  1f0d0000  addli r26, zero, 0
005228  9f0d0000  addli r27, zero, 0
00522c  00a00000  mfence { lm }
005230  3fa187fe  blt.s r15, r8, -952
005234  e3028fd4  loadli.w r5,  -5568(r30)
005238  2bab0100  lui r22, 26
00523c  abbb0100  lui r23, 27
005240  1f020000  addli r4, zero, 0
005244  1f0b0b00  addli r22, r22, 0
005248  9f8b0b00  addli r23, r23, 0
00524c  8f865d18  div.f.rn r13, r27, r5
005250  8f045d18  div.f.rn r9, r26, r5
005254  e3023f00  loadli.w r5,  24(r30)
005258  8bead620  mul.f.rn r21, r13, r13
00525c  8be60658  neg.f r13, r13
005260  8be45419  sub.f.rn r9, r9, r21
005264  9f0a8fd7  addli r21, r30, -5184
005268  8be45410  add.f.rn r9, r9, r5
00526c  ab02803f  lui r5, 260096
005270  8f840408  sqrt.f.rn r9, r9
005274  8f849218  div.f.rn r9, r5, r9
005278  42820a02  vload.mz vr4{mr1}, 0(r21)
00527c  ca020b02  vloads.mz vr5{mr1}, 0(r22)
005280  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
005284  4a830b02  vloads.mz vr6{mr1}, 0(r23)
005288  1f0c4200  addli r24, r4, 32
00528c  ea212622  vor.u.mz vr3{mr1}, r12, vr2
005290  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
005294  6a344102  vand.s.mz vr8{mr1}, r2, vr4
005298  92937602  vadd.f.mz.rn vr7{mr1}, r13, vr7
00529c  12948602  vadd.f.mz.rn vr8{mr1}, r13, vr8
0052a0  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
0052a4  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
0052a8  6a355102  vand.s.mz vr10{mr1}, r2, vr5
0052ac  ea326102  vand.s.mz vr5{mr1}, r2, vr6
0052b0  8a937402  vmul.f.mz.rn vr7{mr1}, r9, vr7
0052b4  0a938402  vmul.f.mz.rn vr6{mr1}, r9, vr8
0052b8  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
0052bc  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
0052c0  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
0052c4  6a337402  vand.s.mz vr6{mr1}, r8, vr7
0052c8  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
0052cc  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
0052d0  ea337402  vand.s.mz vr7{mr1}, r8, vr7
0052d4  661202c0  vabs.f vr4, vr4
0052d8  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
0052dc  12b36102  vadd.s.mz vr6{mr1}, r3, vr6
0052e0  e69202c0  vabs.f vr5, vr5
0052e4  72214842  vlt.u.mz mr2{mr1}, r16, vr4
0052e8  6a336102  vand.s.mz vr6{mr1}, r2, vr6
0052ec  92b37102  vadd.s.mz vr7{mr1}, r3, vr7
0052f0  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
0052f4  6a327102  vand.s.mz vr4{mr1}, r2, vr7
0052f8  72215842  vlt.u.mz mr2{mr1}, r16, vr5
0052fc  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
005300  6aa22834  vor.u.mh vr4{mr2}, r17, vr2
005304  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
005308  46804a02  vstore.mz vr4{mr1}, 0(r21)
00530c  cbbd87fd  ble.s r15, r24, -1172
005310  1f0c8b00  addli r24, r22, 64
005314  9f8c8a00  addli r25, r21, 64
005318  1f028200  addli r4, r4, 64
00531c  1f0b0b01  addli r22, r22, 128
005320  9f8a0a01  addli r21, r21, 128
005324  4a020c02  vloads.mz vr4{mr1}, 0(r24)
005328  1f8c8b00  addli r24, r23, 64
00532c  c2820c02  vload.mz vr5{mr1}, 0(r25)
005330  9f8b0b01  addli r23, r23, 128
005334  4a030c02  vloads.mz vr6{mr1}, 0(r24)
005338  eeb351a2  vsll.s.mz vr7{mr1}, vr3, vr5
00533c  ea325102  vand.s.mz vr5{mr1}, r2, vr5
005340  92937602  vadd.f.mz.rn vr7{mr1}, r13, vr7
005344  12945602  vadd.f.mz.rn vr8{mr1}, r13, vr5
005348  eeb441a2  vsll.s.mz vr9{mr1}, vr3, vr4
00534c  6a354102  vand.s.mz vr10{mr1}, r2, vr4
005350  8a937402  vmul.f.mz.rn vr7{mr1}, r9, vr7
005354  eeb261a2  vsll.s.mz vr5{mr1}, vr3, vr6
005358  6a326102  vand.s.mz vr4{mr1}, r2, vr6
00535c  0a938402  vmul.f.mz.rn vr6{mr1}, r9, vr8
005360  a6929302  vmac.f.mz.rn vr5{mr1}, vr7, vr9
005364  2612a302  vmac.f.mz.rn vr4{mr1}, vr6, vr10
005368  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
00536c  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
005370  6a336402  vand.s.mz vr6{mr1}, r8, vr6
005374  ea337402  vand.s.mz vr7{mr1}, r8, vr7
005378  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
00537c  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
005380  e69202c0  vabs.f vr5, vr5
005384  661202c0  vabs.f vr4, vr4
005388  12b36102  vadd.s.mz vr6{mr1}, r3, vr6
00538c  92b37102  vadd.s.mz vr7{mr1}, r3, vr7
005390  72215842  vlt.u.mz mr2{mr1}, r16, vr5
005394  6a336102  vand.s.mz vr6{mr1}, r2, vr6
005398  ea327102  vand.s.mz vr5{mr1}, r2, vr7
00539c  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
0053a0  72214842  vlt.u.mz mr2{mr1}, r16, vr4
0053a4  eaa22834  vor.u.mh vr5{mr2}, r17, vr2
0053a8  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
0053ac  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
0053b0  46802c02  vstore.mz vr2{mr1}, 0(r25)
0053b4  3f1bf2fe  blt.s r4, r15, -316
0053b8  5b58ffff  j -1344
0053bc  63012f00  loadli.w r2,  16(r30)
0053c0  ab0100f0  lui r3, 983040
0053c4  1b311100  slli r2, r2, 1
0053c8  17113100  or r2, r2, r3
0053cc  abf10100  lui r3, 31
0053d0  9f810100  addli r3, r3, 0
0053d4  7f013400  l_gm2sm r2, r3, 0(r[9:10])
0053d8  2bf10000  lui r2, 15
0053dc  e3411f00  loadli.w r3,  12(r30)
0053e0  00200300  mfence { sm, gm }
0053e4  1b11f1ff  ori r2, r2, 4095
0053e8  80210104  csr_set csr3, r2
0053ec  00d00100  sync_group
0053f0  cbec1106  ble.s r3, r1, 3896
0053f4  e3012f00  loadli.w r3,  16(r30)
0053f8  e3422f00  loadli.w r5,  20(r30)
0053fc  2bf4ffff  lui r8, 1048575
005400  2bd50100  lui r10, 29
005404  9f0b8fd7  addli r23, r30, -5184
005408  9f040002  addli r9, zero, 256
00540c  9f050001  addli r11, zero, 128
005410  1f068000  addli r12, zero, 64
005414  9f064000  addli r13, zero, 32
005418  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00541c  1b14f4ff  ori r8, r8, 4095
005420  1f050500  addli r10, r10, 0
005424  0b925110  add.s r4, r3, r5
005428  1bb11100  slli r2, r3, 1
00542c  b3810108  fix2float.rn r3, r3
005430  1f73f2ff  addli r6, r4, -1
005434  1bb21200  slli r4, r5, 1
005438  8b125330  div.s r5, r6, r5
00543c  1f130000  addli r6, zero, 1
005440  5b070000  j 56
005444  6b580f00  load.d r[17:18], 0(r30)
005448  9f0b8fd7  addli r23, r30, -5184
00544c  00a00000  mfence { lm }
005450  0b283811  add.ul r[17:18], r[17:18], r[20:21]
005454  ab0900f0  lui r19, 983040
005458  005a0102  load_param_i r20, 2
00545c  97193101  or r19, r2, r19
005460  8b101a10  add.s r1, r20, r1
005464  ff397801  s_lm2gm r19, r23, 0(r[17:18])
005468  00a00200  mfence { lm, gm }
00546c  e3431f00  loadli.w r7,  12(r30)
005470  3fa07000  blt.s r1, r7, 8
005474  dbd60100  j 3764
005478  e3031f00  loadli.w r7,  8(r30)
00547c  0b987010  add.s r16, r1, r7
005480  9f037fd6  addli r7, r30, -5320
005484  0b18f820  mul.s r16, r16, r15
005488  33180828  sext_int2long r[17:18], r16
00548c  97396802  sll.d r[20:21], r[17:18], r6
005490  ebd80300  load.d r[18:19], 0(r7)
005494  2b0800f0  lui r16, 983040
005498  17180101  or r16, r2, r16
00549c  8baa3811  add.ul r[22:23], r[18:19], r[20:21]
0054a0  7fa87a01  l_gm2lm r16, r23, 0(r[22:23])
0054a4  00a00200  mfence { lm, gm }
0054a8  3fc76200  blt.s r5, r6, 464
0054ac  1f0b0000  addli r22, zero, 0
0054b0  9f0a0000  addli r21, zero, 0
0054b4  9f0b0000  addli r23, zero, 0
0054b8  db0c0000  j 100
0054bc  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
0054c0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0054c4  9f9b0b00  addli r23, r23, 1
0054c8  6af134c0  vsrl.p vr2, r9, vr3
0054cc  6af214c0  vsrl.p vr4, r9, vr1
0054d0  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
0054d4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0054d8  eaf125c0  vsrl.p vr3, r11, vr2
0054dc  6af215c0  vsrl.p vr4, r11, vr1
0054e0  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0054e4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0054e8  ea7126c0  vsrl.p vr3, r12, vr2
0054ec  6a7216c0  vsrl.p vr4, r12, vr1
0054f0  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0054f4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0054f8  eaf126c0  vsrl.p vr3, r13, vr2
0054fc  6af216c0  vsrl.p vr4, r13, vr1
005500  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
005504  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
005508  fa130140  vextracti.f r7, 0(vr2)
00550c  7a980040  vextracti.f r16, 0(vr1)
005510  0b6b7b10  add.f.rn r22, r22, r7
005514  8bea0a11  add.f.rn r21, r21, r16
005518  b7a55b00  beq r23, r5, 360
00551c  1f880b00  addli r16, r23, 0
005520  37309700  beq r14, r9, 12
005524  17a88b00  xor r16, r23, r8
005528  0b980211  add.s r16, r5, r16
00552c  8b18e820  mul.s r17, r16, r14
005530  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005534  92310002  vadd.s.mz vr3{mr1}, zero, vr0
005538  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00553c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
005540  8b981719  sub.s r17, r15, r17
005544  0b9ce840  min.s r24, r17, r14
005548  bf5d6cfe  blt.s r24, r6, -140
00554c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
005550  12310002  vadd.s.mz vr2{mr1}, zero, vr0
005554  92310002  vadd.s.mz vr3{mr1}, zero, vr0
005558  12320002  vadd.s.mz vr4{mr1}, zero, vr0
00555c  9f0c0000  addli r25, zero, 0
005560  0b1d0221  mul.s r26, r4, r16
005564  9f0d8fd7  addli r27, r30, -5184
005568  1f0e0500  addli r28, r10, 0
00556c  0b18ae11  add.s r16, r28, r26
005570  9f838c00  addli r7, r25, 64
005574  ca020802  vloads.mz vr5{mr1}, 0(r16)
005578  9f088800  addli r17, r16, 64
00557c  4a830802  vloads.mz vr6{mr1}, 0(r17)
005580  8b98ad11  add.s r17, r27, r26
005584  c2830802  vload.mz vr7{mr1}, 0(r17)
005588  1f898800  addli r18, r17, 64
00558c  42040902  vload.mz vr8{mr1}, 0(r18)
005590  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
005594  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005598  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
00559c  06b40300  vfp162float_l.rn vr8, vr7
0055a0  86f30300  vfp162float_h.rn vr7, vr7
0055a4  86340300  vfp162float_l.rn vr9, vr6
0055a8  06730300  vfp162float_h.rn vr6, vr6
0055ac  86120400  vfloat2fp16_l.rn vr5, vr8
0055b0  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
0055b4  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
0055b8  12340002  vadd.s.mz vr8{mr1}, zero, vr0
0055bc  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
0055c0  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
0055c4  06940400  vfloat2fp16_l.rn vr8, vr9
0055c8  86d20300  vfloat2fp16_h.rn vr5, vr7
0055cc  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0055d0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0055d4  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0055d8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0055dc  06540300  vfloat2fp16_h.rn vr8, vr6
0055e0  46805802  vstore.mz vr5{mr1}, 0(r17)
0055e4  46008902  vstore.mz vr8{mr1}, 0(r18)
0055e8  4b5b7cfe  ble.s r24, r7, -300
0055ec  9f030801  addli r7, r16, 128
0055f0  9f8c0c01  addli r25, r25, 128
0055f4  1f0e0e02  addli r28, r28, 256
0055f8  9f8d0d02  addli r27, r27, 256
0055fc  ca820302  vloads.mz vr5{mr1}, 0(r7)
005600  9f038801  addli r7, r16, 192
005604  1f880801  addli r16, r17, 128
005608  4a830302  vloads.mz vr6{mr1}, 0(r7)
00560c  c2030802  vload.mz vr7{mr1}, 0(r16)
005610  9f838801  addli r7, r17, 192
005614  42840302  vload.mz vr8{mr1}, 0(r7)
005618  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
00561c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005620  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
005624  12330002  vadd.s.mz vr6{mr1}, zero, vr0
005628  86b40300  vfp162float_l.rn vr9, vr7
00562c  86f30300  vfp162float_h.rn vr7, vr7
005630  86920400  vfloat2fp16_l.rn vr5, vr9
005634  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
005638  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
00563c  86340400  vfp162float_l.rn vr9, vr8
005640  06740400  vfp162float_h.rn vr8, vr8
005644  06930400  vfloat2fp16_l.rn vr6, vr9
005648  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
00564c  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005650  86d20300  vfloat2fp16_h.rn vr5, vr7
005654  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005658  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
00565c  06530400  vfloat2fp16_h.rn vr6, vr8
005660  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
005664  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005668  46005802  vstore.mz vr5{mr1}, 0(r16)
00566c  46806302  vstore.mz vr6{mr1}, 0(r7)
005670  bffb8cff  blt.s r25, r24, -260
005674  5bc9ffff  j -440
005678  9f0a0000  addli r21, zero, 0
00567c  1f0b0000  addli r22, zero, 0
005680  00a00000  mfence { lm }
005684  3f8767fe  blt.s r15, r6, -576
005688  0f083b18  div.f.rn r16, r22, r3
00568c  8f883a18  div.f.rn r17, r21, r3
005690  e3033f00  loadli.w r7,  24(r30)
005694  abec0100  lui r25, 30
005698  2bfd0100  lui r26, 31
00569c  9f0b0000  addli r23, zero, 0
0056a0  1f0c8fd7  addli r24, r30, -5184
0056a4  9f8c0c00  addli r25, r25, 0
0056a8  1f0d0d00  addli r26, r26, 0
0056ac  8b6a0821  mul.f.rn r21, r16, r16
0056b0  0b6b0858  neg.f r22, r16
0056b4  8be85819  sub.f.rn r17, r17, r21
0056b8  8be87810  add.f.rn r17, r17, r7
0056bc  ab03803f  lui r7, 260096
0056c0  8f880808  sqrt.f.rn r17, r17
0056c4  8f8a1319  div.f.rn r21, r7, r17
0056c8  c2000c02  vload.mz vr1{mr1}, 0(r24)
0056cc  4a810c02  vloads.mz vr2{mr1}, 0(r25)
0056d0  ca010d02  vloads.mz vr3{mr1}, 0(r26)
0056d4  1f884b00  addli r16, r23, 32
0056d8  06b20000  vfp162float_l.rn vr4, vr1
0056dc  86f00000  vfp162float_h.rn vr1, vr1
0056e0  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
0056e4  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
0056e8  86320100  vfp162float_l.rn vr5, vr2
0056ec  06b30100  vfp162float_l.rn vr6, vr3
0056f0  06710100  vfp162float_h.rn vr2, vr2
0056f4  86f10100  vfp162float_h.rn vr3, vr3
0056f8  8a931a02  vmul.f.mz.rn vr7{mr1}, r21, vr1
0056fc  0a924a02  vmul.f.mz.rn vr4{mr1}, r21, vr4
005700  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005704  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
005708  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
00570c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005710  06110300  vfloat2fp16_l.rn vr2, vr6
005714  06d10100  vfloat2fp16_h.rn vr2, vr3
005718  46002c02  vstore.mz vr2{mr1}, 0(r24)
00571c  cba407ff  ble.s r15, r16, -728
005720  1f888c00  addli r16, r25, 64
005724  9f088c00  addli r17, r24, 64
005728  9f8b8b00  addli r23, r23, 64
00572c  9f8c0c01  addli r25, r25, 128
005730  1f0c0c01  addli r24, r24, 128
005734  4a010802  vloads.mz vr2{mr1}, 0(r16)
005738  1f088d00  addli r16, r26, 64
00573c  c2810802  vload.mz vr3{mr1}, 0(r17)
005740  1f0d0d01  addli r26, r26, 128
005744  4a020802  vloads.mz vr4{mr1}, 0(r16)
005748  86b20100  vfp162float_l.rn vr5, vr3
00574c  86f10100  vfp162float_h.rn vr3, vr3
005750  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
005754  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
005758  06330100  vfp162float_l.rn vr6, vr2
00575c  06710100  vfp162float_h.rn vr2, vr2
005760  8a925a02  vmul.f.mz.rn vr5{mr1}, r21, vr5
005764  8a913a02  vmul.f.mz.rn vr3{mr1}, r21, vr3
005768  86330200  vfp162float_l.rn vr7, vr4
00576c  06720200  vfp162float_h.rn vr4, vr4
005770  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
005774  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
005778  86900300  vfloat2fp16_l.rn vr1, vr7
00577c  86500200  vfloat2fp16_h.rn vr1, vr4
005780  46801802  vstore.mz vr1{mr1}, 0(r17)
005784  3f9dfbfe  blt.s r23, r15, -188
005788  db97ffff  j -836
00578c  9f000040  addli r1, zero, 8192
005790  2b0100f0  lui r2, 983040
005794  97902000  or r1, r1, r2
005798  2b310200  lui r2, 35
00579c  1f010100  addli r2, r2, 0
0057a0  ff002300  l_gm2sm r1, r2, 0(r[7:8])
0057a4  db070000  j 60
0057a8  63012f00  loadli.w r2,  16(r30)
0057ac  ab0100f0  lui r3, 983040
0057b0  1b312100  slli r2, r2, 2
0057b4  17113100  or r2, r2, r3
0057b8  ab810200  lui r3, 40
0057bc  9f810108  addli r3, r3, 1024
0057c0  7f013300  l_gm2sm r2, r3, 0(r[7:8])
0057c4  5bef0000  j 1912
0057c8  9f000040  addli r1, zero, 8192
0057cc  2b0100f0  lui r2, 983040
0057d0  97902000  or r1, r1, r2
0057d4  2b510200  lui r2, 37
0057d8  1f010100  addli r2, r2, 0
0057dc  ff002400  l_gm2sm r1, r2, 0(r[9:10])
0057e0  abf00000  lui r1, 15
0057e4  00200300  mfence { sm, gm }
0057e8  1f020006  addli r4, zero, 768
0057ec  1b91f0ff  ori r2, r1, 4095
0057f0  9b001500  andi r1, r10, 1
0057f4  80210104  csr_set csr3, r2
0057f8  1f010006  addli r2, zero, 768
0057fc  00d00100  sync_group
005800  67081fd6  storeli.w r1, -5248(r30)
005804  37a00000  beq r1, zero, 8
005808  1f02000a  addli r4, zero, 1280
00580c  e3411f00  loadli.w r3,  12(r30)
005810  9f120000  addli r5, zero, 1
005814  3fdc5104  blt.s r3, r5, 2836
005818  e3000fd7  loadli.w r1,  -5248(r30)
00581c  80510102  load_param_i r3, 2
005820  1b441500  srli r8, r10, 1
005824  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005828  ab180200  lui r17, 33
00582c  ab7b0200  lui r23, 39
005830  2b7e0200  lui r28, 39
005834  9f020000  addli r5, zero, 0
005838  9b342200  slli r9, r4, 2
00583c  9f068fd7  addli r13, r30, -5184
005840  1f090005  addli r18, zero, 640
005844  1f0a0001  addli r20, zero, 128
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
00587c  0b153110  add.s r10, r2, r3
005880  ab510200  lui r3, 37
005884  9b9000f8  ori r1, r1, 3968
005888  9f810100  addli r3, r3, 0
00588c  67081fd4  storeli.w r1, -5504(r30)
005890  8b153110  add.s r11, r2, r3
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
0058bc  db63f6ff  j -19684
0058c0  0b918210  add.s r2, r5, r8
0058c4  cb1f28fe  ble.s r16, r2, -28
0058c8  e3001f00  loadli.w r1,  8(r30)
0058cc  0b111110  add.s r2, r2, r1
0058d0  e3008fd6  loadli.w r1,  -5312(r30)
0058d4  1b31b100  slli r2, r2, 11
0058d8  17111100  or r2, r2, r1
0058dc  9f200000  addli r1, zero, 2
0058e0  33110128  sext_int2long r[3:4], r2
0058e4  97371102  sll.d r[16:17], r[3:4], r1
0058e8  9f007fd6  addli r1, r30, -5320
0058ec  2b0100f0  lui r2, 983040
0058f0  ebdc0000  load.d r[26:27], 0(r1)
0058f4  17912400  or r2, r9, r2
0058f8  8bacfc10  add.ul r[26:27], r[26:27], r[16:17]
0058fc  7fa1dc00  l_gm2lm r2, r13, 0(r[26:27])
005900  00a00200  mfence { lm, gm }
005904  e3000fd7  loadli.w r1,  -5248(r30)
005908  3ba60000  bneq r1, zero, 392
00590c  9f008fd5  addli r1, r30, -5440
005910  e3010fd5  loadli.w r3,  -5504(r30)
005914  1f010000  addli r2, zero, 0
005918  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
00591c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
005920  12313002  vadd.s.mz vr2{mr1}, zero, vr3
005924  12323002  vadd.s.mz vr4{mr1}, zero, vr3
005928  0b171111  add.s r14, r2, r17
00592c  0b962610  add.s r12, r13, r2
005930  9f810101  addli r3, r3, 128
005934  1f010104  addli r2, r2, 512
005938  9f000701  addli r1, r14, 128
00593c  4a100702  vloads_mask16.mz vr0{mr1}, 0(r14)
005940  1f038700  addli r6, r14, 64
005944  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
005948  9f098601  addli r19, r12, 192
00594c  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
005950  9f008701  addli r1, r14, 192
005954  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
005958  1f038600  addli r6, r12, 64
00595c  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
005960  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
005964  9f000601  addli r1, r12, 128
005968  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
00596c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005970  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005974  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
005978  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00597c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005980  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005984  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
005988  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
00598c  9f000702  addli r1, r14, 256
005990  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005994  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
005998  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00599c  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
0059a0  1f030603  addli r6, r12, 384
0059a4  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0059a8  9f008702  addli r1, r14, 320
0059ac  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
0059b0  9f090602  addli r19, r12, 256
0059b4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0059b8  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0059bc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0059c0  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0059c4  9f000703  addli r1, r14, 384
0059c8  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
0059cc  1f078703  addli r14, r14, 448
0059d0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0059d4  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0059d8  9f008602  addli r1, r12, 320
0059dc  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
0059e0  1f068603  addli r12, r12, 448
0059e4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0059e8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0059ec  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
0059f0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0059f4  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
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
005a28  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
005a2c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005a30  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005a34  bbdb00fe  bneq r1, zero, -268
005a38  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005a3c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005a40  9f000002  addli r1, zero, 256
005a44  6af100c0  vsrl.p vr2, r1, vr0
005a48  eaf110c0  vsrl.p vr3, r1, vr1
005a4c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a50  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a54  6a710ac0  vsrl.p vr2, r20, vr0
005a58  ea711ac0  vsrl.p vr3, r20, vr1
005a5c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a60  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a64  6af10ac0  vsrl.p vr2, r21, vr0
005a68  eaf11ac0  vsrl.p vr3, r21, vr1
005a6c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a70  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a74  6a710bc0  vsrl.p vr2, r22, vr0
005a78  ea711bc0  vsrl.p vr3, r22, vr1
005a7c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a80  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a84  7a130040  vextracti.f r6, 0(vr0)
005a88  fa910040  vextracti.f r3, 0(vr1)
005a8c  5b630000  j 792
005a90  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005a94  abf0ffff  lui r1, 1048575
005a98  1f010000  addli r2, zero, 0
005a9c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005aa0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005aa4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005aa8  9b9100f8  ori r3, r1, 3968
005aac  0b972810  add.s r14, r17, r2
005ab0  0b962610  add.s r12, r13, r2
005ab4  9f810101  addli r3, r3, 128
005ab8  1f010104  addli r2, r2, 512
005abc  1f0d0731  addli r26, r14, 6272
005ac0  1f030730  addli r6, r14, 6144
005ac4  9f008731  addli r1, r14, 6336
005ac8  9f0c0618  addli r25, r12, 3072
005acc  ca130d02  vloads_mask16.mz vr7{mr1}, 0(r26)
005ad0  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
005ad4  1f038730  addli r6, r14, 6208
005ad8  ca940002  vloads_mask16.mz vr9{mr1}, 0(r1)
005adc  9f008618  addli r1, r12, 3136
005ae0  1f0d8619  addli r26, r12, 3264
005ae4  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
005ae8  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
005aec  1f030619  addli r6, r12, 3200
005af0  42100d02  vload_mask16.mz vr0{mr1}, 0(r26)
005af4  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
005af8  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
005afc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005b00  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
005b04  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
005b08  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
005b0c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005b10  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
005b14  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
005b18  1f030732  addli r6, r14, 6400
005b1c  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
005b20  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
005b24  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005b28  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
005b2c  9f0c061a  addli r25, r12, 3328
005b30  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
005b34  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005b38  9f00061b  addli r1, r12, 3456
005b3c  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
005b40  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
005b44  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
005b48  1f038732  addli r6, r14, 6464
005b4c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005b50  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005b54  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
005b58  1f030733  addli r6, r14, 6528
005b5c  1f078733  addli r14, r14, 6592
005b60  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
005b64  1f03861a  addli r6, r12, 3392
005b68  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
005b6c  1f06861b  addli r12, r12, 3520
005b70  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
005b74  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005b78  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
005b7c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005b80  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
005b84  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005b88  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005b8c  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
005b90  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005b94  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
005b98  1383b105  setlt.u r6, r3, r27
005b9c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005ba0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005ba4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005ba8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005bac  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005bb0  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005bb4  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
005bb8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005bbc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005bc0  bb3b03fe  bneq r6, zero, -276
005bc4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005bc8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005bcc  9f000002  addli r1, zero, 256
005bd0  1f060000  addli r12, zero, 0
005bd4  eaf110c0  vsrl.p vr3, r1, vr1
005bd8  6af100c0  vsrl.p vr2, r1, vr0
005bdc  abf0ffff  lui r1, 1048575
005be0  1b9d00f8  ori r26, r1, 3968
005be4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005be8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005bec  ea711ac0  vsrl.p vr3, r20, vr1
005bf0  6a710ac0  vsrl.p vr2, r20, vr0
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
005c34  8b9cc810  add.s r25, r17, r12
005c38  0b97c610  add.s r14, r13, r12
005c3c  1f0d0d01  addli r26, r26, 128
005c40  1f060604  addli r12, r12, 512
005c44  9f800c18  addli r1, r25, 3072
005c48  1f830c19  addli r6, r25, 3200
005c4c  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
005c50  9f098701  addli r19, r14, 192
005c54  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
005c58  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
005c5c  9f808c18  addli r1, r25, 3136
005c60  1f838c19  addli r6, r25, 3264
005c64  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
005c68  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
005c6c  9f000701  addli r1, r14, 128
005c70  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
005c74  1f038700  addli r6, r14, 64
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
005ca8  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
005cac  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
005cb0  9f808c1a  addli r1, r25, 3392
005cb4  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
005cb8  9f090702  addli r19, r14, 256
005cbc  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005cc0  1f030703  addli r6, r14, 384
005cc4  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
005cc8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005ccc  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
005cd0  9f800c1b  addli r1, r25, 3456
005cd4  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
005cd8  9f8c8c1b  addli r25, r25, 3520
005cdc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005ce0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005ce4  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
005ce8  9f008702  addli r1, r14, 320
005cec  4a950c02  vloads_mask16.mz vr10{mr1}, 0(r25)
005cf0  1f078703  addli r14, r14, 448
005cf4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005cf8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005cfc  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
005d00  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005d04  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
005d08  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005d0c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005d10  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
005d14  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005d18  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
005d1c  93002d05  setlt.u r1, r26, r18
005d20  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005d24  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005d28  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005d2c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005d30  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005d34  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005d38  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
005d3c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005d40  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005d44  bbcb00fe  bneq r1, zero, -272
005d48  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005d4c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005d50  9f000002  addli r1, zero, 256
005d54  6af100c0  vsrl.p vr2, r1, vr0
005d58  eaf110c0  vsrl.p vr3, r1, vr1
005d5c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d60  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d64  6a710ac0  vsrl.p vr2, r20, vr0
005d68  ea711ac0  vsrl.p vr3, r20, vr1
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
005d98  7a960040  vextracti.f r12, 0(vr1)
005d9c  0b631110  add.f.rn r6, r2, r1
005da0  8be1c110  add.f.rn r3, r3, r12
005da4  8b807230  div.u r1, r5, r7
005da8  00360002  core_id r12
005dac  1f010000  addli r2, zero, 0
005db0  9bb06000  slli r1, r1, 6
005db4  9b800004  andi r1, r1, 64
005db8  9790c000  or r1, r1, r12
005dbc  1bb62000  slli r12, r1, 2
005dc0  9b80e007  andi r1, r1, 126
005dc4  0b177611  add.s r14, r12, r23
005dc8  9bb02000  slli r1, r1, 2
005dcc  73606700  stores.w r6, 0(r14)
005dd0  0b13c611  add.s r6, r12, r28
005dd4  1b164600  ori r12, r12, 4
005dd8  73603300  stores.w r3, 0(r6)
005ddc  8b117611  add.s r3, r12, r23
005de0  0b937011  add.s r6, r1, r23
005de4  0b16c611  add.s r12, r12, r28
005de8  8b90c011  add.s r1, r1, r28
005dec  00a00300  mfence { lm, sm, gm }
005df0  80210c04  csr_set csr3, r24
005df4  00d00100  sync_group
005df8  eb5c0f00  load.d r[26:27], 0(r30)
005dfc  efc10100  loads.w r3, 0(r3)
005e00  6f430300  loads.w r6, 0(r6)
005e04  6f460600  loads.w r12, 0(r12)
005e08  efc00000  loads.w r1, 0(r1)
005e0c  8ba7fc10  add.ul r[16:17], r[26:27], r[16:17]
005e10  1f0d0000  addli r26, zero, 0
005e14  8be16110  add.f.rn r3, r3, r6
005e18  8b601610  add.f.rn r1, r12, r1
005e1c  2b06003a  lui r12, 237568
005e20  0be3c120  mul.f.rn r6, r3, r12
005e24  8be0c020  mul.f.rn r1, r1, r12
005e28  8b616320  mul.f.rn r3, r6, r6
005e2c  0b660358  neg.f r12, r6
005e30  8be03018  sub.f.rn r1, r1, r3
005e34  e3013f00  loadli.w r3,  24(r30)
005e38  8be03010  add.f.rn r1, r1, r3
005e3c  ab01803f  lui r3, 260096
005e40  8f800008  sqrt.f.rn r1, r1
005e44  8f811118  div.f.rn r3, r3, r1
005e48  0b172510  add.s r14, r10, r2
005e4c  8b9c2610  add.s r25, r13, r2
005e50  0b932510  add.s r6, r11, r2
005e54  9f098700  addli r19, r14, 64
005e58  9f808c00  addli r1, r25, 64
005e5c  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
005e60  4a110702  vloads_mask16.mz vr2{mr1}, 0(r14)
005e64  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
005e68  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
005e6c  9f098300  addli r19, r6, 64
005e70  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
005e74  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
005e78  9f094d00  addli r19, r26, 32
005e7c  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
005e80  93093207  setle.u r19, r4, r19
005e84  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
005e88  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
005e8c  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
005e90  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
005e94  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
005e98  46904c02  vstore_mask16.mz vr4{mr1}, 0(r25)
005e9c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005ea0  bb910900  bneq r19, zero, 100
005ea4  9f800c01  addli r1, r25, 128
005ea8  9f898c01  addli r19, r25, 192
005eac  9f0c0701  addli r25, r14, 128
005eb0  1f078701  addli r14, r14, 192
005eb4  1f0d8d00  addli r26, r26, 64
005eb8  1f010102  addli r2, r2, 256
005ebc  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
005ec0  9f0c0301  addli r25, r6, 128
005ec4  1f038301  addli r6, r6, 192
005ec8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
005ecc  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
005ed0  4a120702  vloads_mask16.mz vr4{mr1}, 0(r14)
005ed4  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
005ed8  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
005edc  13034d04  setlt.u r6, r26, r4
005ee0  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
005ee4  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
005ee8  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
005eec  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
005ef0  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
005ef4  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
005ef8  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
005efc  46905902  vstore_mask16.mz vr5{mr1}, 0(r19)
005f00  3b2d03fe  bneq r6, zero, -184
005f04  ab0000f0  lui r1, 983040
005f08  00a00000  mfence { lm }
005f0c  97901400  or r1, r9, r1
005f10  ffb0d700  s_lm2gm r1, r13, 0(r[16:17])
005f14  00a00200  mfence { lm, gm }
005f18  63481f00  loadli.w r16,  12(r30)
005f1c  5b33ffff  j -1640
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
00623c  1f0c0000  addli r24, zero, 0
006240  8f812b18  div.f.rn r3, r23, r2
006244  0f032b18  div.f.rn r6, r22, r2
006248  63013f00  loadli.w r2,  24(r30)
00624c  0beb3120  mul.f.rn r22, r3, r3
006250  8beb0158  neg.f r23, r3
006254  0b636319  sub.f.rn r6, r6, r22
006258  0b632310  add.f.rn r6, r6, r2
00625c  2b01803f  lui r2, 260096
006260  0f030308  sqrt.f.rn r6, r6
006264  0f0b6118  div.f.rn r22, r2, r6
006268  0b932511  add.s r6, r11, r18
00626c  8b91b310  add.s r3, r7, r11
006270  9f0c8300  addli r25, r6, 64
006274  4a110302  vloads_mask16.mz vr2{mr1}, 0(r6)
006278  0b933511  add.s r6, r11, r19
00627c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
006280  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
006284  9f8c8100  addli r25, r3, 64
006288  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
00628c  1f038300  addli r6, r6, 64
006290  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
006294  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
006298  1f034c00  addli r6, r24, 32
00629c  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
0062a0  92925b02  vadd.f.mz.rn vr5{mr1}, r23, vr5
0062a4  8a101b02  vmul.f.mz.rn vr1{mr1}, r22, vr1
0062a8  8a125b02  vmul.f.mz.rn vr5{mr1}, r22, vr5
0062ac  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
0062b0  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
0062b4  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
0062b8  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
0062bc  4bb467fe  ble.s r15, r6, -756
0062c0  0b13b910  add.s r6, r18, r11
0062c4  8b9cb910  add.s r25, r19, r11
0062c8  1f0c8c00  addli r24, r24, 64
0062cc  9f850502  addli r11, r11, 256
0062d0  1f0d0301  addli r26, r6, 128
0062d4  9f8d0c01  addli r27, r25, 128
0062d8  1f038301  addli r6, r6, 192
0062dc  9f8c8c01  addli r25, r25, 192
0062e0  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
0062e4  1f8d0101  addli r26, r3, 128
0062e8  9f818101  addli r3, r3, 192
0062ec  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
0062f0  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
0062f4  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
0062f8  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
0062fc  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
006300  92913b02  vadd.f.mz.rn vr3{mr1}, r23, vr3
006304  12924b02  vadd.f.mz.rn vr4{mr1}, r23, vr4
006308  8a113b02  vmul.f.mz.rn vr3{mr1}, r22, vr3
00630c  0a124b02  vmul.f.mz.rn vr4{mr1}, r22, vr4
006310  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
006314  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
006318  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
00631c  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
006320  3f2dfcfe  blt.s r24, r15, -184
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
