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
000108  1f4c0000  addli r24, zero, 4
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
0001bc  63481f00  loadli.w r16,  12(r30)
0001c0  9f057fd6  addli r11, r30, -5320
0001c4  73b02500  store.d r[3:4], 0(r11)
0001c8  3f511500  blt.s r10, r1, 84
0001cc  1f110000  addli r2, zero, 1
0001d0  37f92004  beq r1, r2, 2652
0001d4  1f210000  addli r2, zero, 2
0001d8  3bb82004  bneq r1, r2, 2572
0001dc  e3403f00  loadli.w r1,  28(r30)
0001e0  37b60012  beq r1, zero, 9612
0001e4  80300002  core_id r1
0001e8  1f210000  addli r2, zero, 2
0001ec  37cf2024  beq r1, r2, 19408
0001f0  1f110000  addli r2, zero, 1
0001f4  37ae2024  beq r1, r2, 19336
0001f8  bb8f0024  bneq r1, zero, 19424
0001fc  63012f00  loadli.w r2,  16(r30)
000200  ab0100f0  lui r3, 983040
000204  1b311100  slli r2, r2, 1
000208  17113100  or r2, r2, r3
00020c  ab910100  lui r3, 25
000210  9f810100  addli r3, r3, 0
000214  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000218  5b780900  j 19392
00021c  1f310000  addli r2, zero, 3
000220  37b92004  beq r1, r2, 2636
000224  1f410000  addli r2, zero, 4
000228  bbf62004  bneq r1, r2, 2492
00022c  e3002f00  loadli.w r1,  16(r30)
000230  1f010010  addli r2, zero, 2048
000234  bbab2008  bneq r1, r2, 4840
000238  e3403f00  loadli.w r1,  28(r30)
00023c  37c80018  beq r1, zero, 12816
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
0003a4  9b881100  andi r17, r3, 1
0003a8  80210104  csr_set csr3, r2
0003ac  1f010006  addli r2, zero, 768
0003b0  00d00100  sync_group
0003b4  37a00800  beq r17, zero, 8
0003b8  9f02000a  addli r5, zero, 1280
0003bc  e3411f00  loadli.w r3,  12(r30)
0003c0  e3441f00  loadli.w r9,  12(r30)
0003c4  1f130000  addli r6, zero, 1
0003c8  3fed612e  blt.s r3, r6, 24408
0003cc  0b912820  mul.s r2, r17, r2
0003d0  9bc11000  srli r3, r1, 1
0003d4  80300002  core_id r1
0003d8  1f0a8fd7  addli r20, r30, -5184
0003dc  1bb81200  slli r16, r5, 1
0003e0  9f030000  addli r7, zero, 0
0003e4  9f7c7000  addli r25, zero, 63
0003e8  9f0d0005  addli r27, zero, 640
0003ec  ab06803f  lui r13, 260096
0003f0  1f072000  addli r14, zero, 16
0003f4  1f3b0000  addli r22, zero, 3
0003f8  1f5e1000  addli r28, zero, 13
0003fc  2bec0700  lui r24, 126
000400  1f2d1000  addli r26, zero, 10
000404  9bc51000  srli r11, r1, 1
000408  9b302100  slli r1, r2, 2
00040c  67002fd4  storeli.w r2, -5632(r30)
000410  1f814200  addli r2, r5, 32
000414  0b994010  add.s r18, r1, r4
000418  8b99a010  add.s r19, r1, r10
00041c  9bb02200  slli r1, r5, 2
000420  670f2fd2  storeli.w r2, -5648(r30)
000424  0b114811  add.s r2, r16, r20
000428  2be27f00  lui r4, 2046
00042c  8b904011  add.s r1, r1, r20
000430  9f8080ff  addli r1, r1, -64
000434  e74e1fd2  storeli.w r1, -5652(r30)
000438  9f0081ff  addli r1, r2, -64
00043c  2bf100fc  lui r2, 1032207
000440  e70e1fd2  storeli.w r1, -5656(r30)
000444  abf0ffff  lui r1, 1048575
000448  1b1401c0  ori r8, r2, 3072
00044c  00a00000  mfence { lm }
000450  674f0fd3  storeli.w r16, -5644(r30)
000454  67041fd5  storeli.w r17, -5568(r30)
000458  e74f3fd2  storeli.w r3, -5636(r30)
00045c  e70fbfd2  storeli.w r11, -5640(r30)
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
0004a8  5be50000  j 1832
0004ac  8b90b310  add.s r1, r7, r11
0004b0  cb8f14fe  ble.s r9, r1, -32
0004b4  63011f00  loadli.w r2,  8(r30)
0004b8  8b902010  add.s r1, r1, r2
0004bc  0b813330  div.u r2, r7, r3
0004c0  e3010fd4  loadli.w r3,  -5632(r30)
0004c4  9bb0b000  slli r1, r1, 11
0004c8  97903000  or r1, r1, r3
0004cc  9f017fd6  addli r3, r30, -5320
0004d0  b3940028  sext_int2long r[10:11], r1
0004d4  ab0000f0  lui r1, 983040
0004d8  1b316100  slli r2, r2, 6
0004dc  97b56402  sll.d r[12:13], r[10:11], r6
0004e0  ebd40100  load.d r[10:11], 0(r3)
0004e4  97101800  or r1, r16, r1
0004e8  1b010104  andi r2, r2, 64
0004ec  9f018fd6  addli r3, r30, -5312
0004f0  73b0b100  store.d r[12:13], 0(r3)
0004f4  8ba4b410  add.ul r[10:11], r[10:11], r[12:13]
0004f8  ffa04401  l_gm2lm r1, r20, 0(r[10:11])
0004fc  80300002  core_id r1
000500  97101100  or r1, r2, r1
000504  670c1fd4  storeli.w r1, -5440(r30)
000508  00a00200  mfence { lm, gm }
00050c  6301dfd3  loadli.w r2,  -5656(r30)
000510  e341dfd3  loadli.w r3,  -5652(r30)
000514  e304efd3  loadli.w r9,  -5648(r30)
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
000544  1f060003  addli r12, zero, 384
000548  1f010000  addli r2, zero, 0
00054c  00a00000  mfence { lm }
000550  3ba60800  bneq r17, zero, 392
000554  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000558  12313002  vadd.s.mz vr2{mr1}, zero, vr3
00055c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000560  e341cfd3  loadli.w r3,  -5660(r30)
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
0006cc  fa110040  vextracti.f r3, 0(vr0)
0006d0  fa940040  vextracti.f r9, 0(vr1)
0006d4  db650000  j 812
0006d8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0006dc  abf0ffff  lui r1, 1048575
0006e0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0006e4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0006e8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0006ec  9b9100f8  ori r3, r1, 3968
0006f0  8b942710  add.s r9, r15, r2
0006f4  0b152a10  add.s r10, r20, r2
0006f8  9f810101  addli r3, r3, 128
0006fc  1f010104  addli r2, r2, 512
000700  9f880431  addli r17, r9, 6272
000704  9f850430  addli r11, r9, 6144
000708  9f808431  addli r1, r9, 6336
00070c  1f080518  addli r16, r10, 3072
000710  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
000714  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
000718  9f858430  addli r11, r9, 6208
00071c  ca940002  vloads_mask16.mz vr9{mr1}, 0(r1)
000720  9f008518  addli r1, r10, 3136
000724  9f088519  addli r17, r10, 3264
000728  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
00072c  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
000730  9f050519  addli r11, r10, 3200
000734  42900802  vload_mask16.mz vr0{mr1}, 0(r17)
000738  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
00073c  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
000740  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
000744  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
000748  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
00074c  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
000750  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000754  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
000758  46907502  vstore_mask16.mz vr7{mr1}, 0(r11)
00075c  9f850432  addli r11, r9, 6400
000760  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
000764  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
000768  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00076c  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
000770  1f08051a  addli r16, r10, 3328
000774  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000778  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00077c  9f00051b  addli r1, r10, 3456
000780  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
000784  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
000788  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
00078c  9f858432  addli r11, r9, 6464
000790  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000794  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000798  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
00079c  9f850433  addli r11, r9, 6528
0007a0  9f848433  addli r9, r9, 6592
0007a4  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
0007a8  9f05851a  addli r11, r10, 3392
0007ac  4a950402  vloads_mask16.mz vr10{mr1}, 0(r9)
0007b0  9f04851b  addli r9, r10, 3520
0007b4  1385c104  setlt.u r10, r3, r12
0007b8  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
0007bc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0007c0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0007c4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0007c8  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
0007cc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0007d0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0007d4  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
0007d8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0007dc  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0007e0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0007e4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0007e8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0007ec  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0007f0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0007f4  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0007f8  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
0007fc  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000800  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000804  bb3b05fe  bneq r10, zero, -276
000808  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00080c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000810  9f000002  addli r1, zero, 256
000814  1f050000  addli r10, zero, 0
000818  eaf110c0  vsrl.p vr3, r1, vr1
00081c  6af100c0  vsrl.p vr2, r1, vr0
000820  9f000001  addli r1, zero, 128
000824  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000828  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00082c  eaf110c0  vsrl.p vr3, r1, vr1
000830  6af100c0  vsrl.p vr2, r1, vr0
000834  9f008000  addli r1, zero, 64
000838  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00083c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000840  eaf110c0  vsrl.p vr3, r1, vr1
000844  6af100c0  vsrl.p vr2, r1, vr0
000848  9f004000  addli r1, zero, 32
00084c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000850  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000854  eaf110c0  vsrl.p vr3, r1, vr1
000858  6af100c0  vsrl.p vr2, r1, vr0
00085c  abf0ffff  lui r1, 1048575
000860  9b9500f8  ori r11, r1, 3968
000864  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000868  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00086c  7a960040  vextracti.f r12, 0(vr1)
000870  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000874  fa110040  vextracti.f r3, 0(vr0)
000878  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00087c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000880  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000884  0b98a710  add.s r16, r15, r10
000888  8b14aa10  add.s r9, r20, r10
00088c  9f850501  addli r11, r11, 128
000890  1f050504  addli r10, r10, 512
000894  9f000818  addli r1, r16, 3072
000898  9f080819  addli r17, r16, 3200
00089c  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
0008a0  1f818401  addli r2, r9, 192
0008a4  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0008a8  ca920802  vloads_mask16.mz vr5{mr1}, 0(r17)
0008ac  9f008818  addli r1, r16, 3136
0008b0  9f088819  addli r17, r16, 3264
0008b4  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
0008b8  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0008bc  9f800401  addli r1, r9, 128
0008c0  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
0008c4  9f888400  addli r17, r9, 64
0008c8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0008cc  42950802  vload_mask16.mz vr10{mr1}, 0(r17)
0008d0  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0008d4  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0008d8  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0008dc  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0008e0  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0008e4  9f00081a  addli r1, r16, 3328
0008e8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0008ec  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0008f0  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0008f4  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0008f8  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
0008fc  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
000900  9f00881a  addli r1, r16, 3392
000904  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
000908  1f810402  addli r2, r9, 256
00090c  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
000910  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000914  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000918  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
00091c  9f00081b  addli r1, r16, 3456
000920  c2130102  vload_mask16.mz vr7{mr1}, 0(r2)
000924  1f08881b  addli r16, r16, 3520
000928  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00092c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000930  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
000934  9f808402  addli r1, r9, 320
000938  4a150802  vloads_mask16.mz vr10{mr1}, 0(r16)
00093c  1f880403  addli r16, r9, 384
000940  9f848403  addli r9, r9, 448
000944  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000948  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00094c  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000950  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000954  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
000958  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00095c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000960  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000964  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000968  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
00096c  9380b505  setlt.u r1, r11, r27
000970  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000974  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000978  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00097c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000980  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000984  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
000988  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
00098c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000990  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000994  bbcb00fe  bneq r1, zero, -272
000998  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00099c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0009a0  9f000002  addli r1, zero, 256
0009a4  6af100c0  vsrl.p vr2, r1, vr0
0009a8  eaf110c0  vsrl.p vr3, r1, vr1
0009ac  9f000001  addli r1, zero, 128
0009b0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009b4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009b8  6af100c0  vsrl.p vr2, r1, vr0
0009bc  eaf110c0  vsrl.p vr3, r1, vr1
0009c0  9f008000  addli r1, zero, 64
0009c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009cc  6af100c0  vsrl.p vr2, r1, vr0
0009d0  eaf110c0  vsrl.p vr3, r1, vr1
0009d4  9f004000  addli r1, zero, 32
0009d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009e0  6af100c0  vsrl.p vr2, r1, vr0
0009e4  eaf110c0  vsrl.p vr3, r1, vr1
0009e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009f0  fa100040  vextracti.f r1, 0(vr0)
0009f4  7a910040  vextracti.f r2, 0(vr1)
0009f8  8be11110  add.f.rn r3, r3, r1
0009fc  8b642610  add.f.rn r9, r12, r2
000a00  2b650000  lui r10, 6
000a04  63068fd5  loadli.w r12,  -5440(r30)
000a08  ab680000  lui r17, 6
000a0c  1f010000  addli r2, zero, 0
000a10  1f050500  addli r10, r10, 0
000a14  9f880804  addli r17, r17, 512
000a18  9b302600  slli r1, r12, 2
000a1c  1f080500  addli r16, r10, 0
000a20  8b951011  add.s r11, r1, r17
000a24  0b950011  add.s r10, r1, r16
000a28  9b904000  ori r1, r1, 4
000a2c  73e09500  stores.w r9, 0(r11)
000a30  9f050000  addli r11, zero, 0
000a34  73603500  stores.w r3, 0(r10)
000a38  8b940011  add.s r9, r1, r16
000a3c  8b901011  add.s r1, r1, r17
000a40  00a00300  mfence { lm, sm, gm }
000a44  e3010fd7  loadli.w r3,  -5248(r30)
000a48  80a10104  csr_set csr3, r3
000a4c  9b01e607  andi r3, r12, 126
000a50  00d00100  sync_group
000a54  efc40400  loads.w r9, 0(r9)
000a58  efc00000  loads.w r1, 0(r1)
000a5c  9bb12100  slli r3, r3, 2
000a60  0b950111  add.s r10, r3, r16
000a64  8b911111  add.s r3, r3, r17
000a68  6f450500  loads.w r10, 0(r10)
000a6c  efc10100  loads.w r3, 0(r3)
000a70  8be4a410  add.f.rn r9, r9, r10
000a74  2b05003a  lui r10, 237568
000a78  8be03010  add.f.rn r1, r1, r3
000a7c  8be1a420  mul.f.rn r3, r9, r10
000a80  8be0a020  mul.f.rn r1, r1, r10
000a84  1f058fd7  addli r10, r30, -5184
000a88  8be43120  mul.f.rn r9, r3, r3
000a8c  8be10158  neg.f r3, r3
000a90  8be09018  sub.f.rn r1, r1, r9
000a94  e3043f00  loadli.w r9,  24(r30)
000a98  8be09010  add.f.rn r1, r1, r9
000a9c  8f800008  sqrt.f.rn r1, r1
000aa0  8f801618  div.f.rn r1, r13, r1
000aa4  8b142a10  add.s r9, r20, r2
000aa8  0b182910  add.s r16, r18, r2
000aac  9f854500  addli r11, r11, 32
000ab0  42900402  vload_mask16.mz vr0{mr1}, 0(r9)
000ab4  9f848400  addli r9, r9, 64
000ab8  4a110802  vloads_mask16.mz vr2{mr1}, 0(r16)
000abc  1f088800  addli r16, r16, 64
000ac0  c2900402  vload_mask16.mz vr1{mr1}, 0(r9)
000ac4  8b942910  add.s r9, r19, r2
000ac8  4a120802  vloads_mask16.mz vr4{mr1}, 0(r16)
000acc  1f010101  addli r2, r2, 128
000ad0  ca910402  vloads_mask16.mz vr3{mr1}, 0(r9)
000ad4  9f848400  addli r9, r9, 64
000ad8  ca920402  vloads_mask16.mz vr5{mr1}, 0(r9)
000adc  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000ae0  93845504  setlt.u r9, r11, r5
000ae4  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000ae8  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
000aec  0a931002  vmul.f.mz.rn vr6{mr1}, r1, vr1
000af0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000af4  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
000af8  6a201722  vor.u.mz vr0{mr1}, r14, vr1
000afc  a6124302  vmac.f.mz.rn vr5{mr1}, vr6, vr4
000b00  6a221b22  vor.u.mz vr4{mr1}, r22, vr1
000b04  6e3130c2  vsrl.s.mz vr2{mr1}, vr0, vr3
000b08  6e3050c2  vsrl.s.mz vr0{mr1}, vr0, vr5
000b0c  6a312302  vand.s.mz vr2{mr1}, r6, vr2
000b10  6a300302  vand.s.mz vr0{mr1}, r6, vr0
000b14  16b12102  vadd.s.mz vr2{mr1}, vr3, vr2
000b18  ea211e22  vor.u.mz vr3{mr1}, r28, vr1
000b1c  ea201d22  vor.u.mz vr1{mr1}, r26, vr1
000b20  16b00202  vadd.s.mz vr0{mr1}, vr5, vr0
000b24  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
000b28  12b00a02  vadd.s.mz vr0{mr1}, r21, vr0
000b2c  eeb221c2  vsrl.s.mz vr5{mr1}, vr3, vr2
000b30  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
000b34  eeb101c2  vsrl.s.mz vr3{mr1}, vr3, vr0
000b38  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
000b3c  6a325c02  vand.s.mz vr4{mr1}, r24, vr5
000b40  6a312202  vand.s.mz vr2{mr1}, r4, vr2
000b44  ea313c02  vand.s.mz vr3{mr1}, r24, vr3
000b48  6a300202  vand.s.mz vr0{mr1}, r4, vr0
000b4c  6ab24622  vor.s.mz vr4{mr1}, r13, vr4
000b50  6ab12622  vor.s.mz vr2{mr1}, r13, vr2
000b54  eab13622  vor.s.mz vr3{mr1}, r13, vr3
000b58  6ab00622  vor.s.mz vr0{mr1}, r13, vr0
000b5c  86d10120  vfloat2fp16_h.rz vr3, vr3
000b60  06500020  vfloat2fp16_h.rz vr0, vr0
000b64  86110220  vfloat2fp16_l.rz vr3, vr4
000b68  06100120  vfloat2fp16_l.rz vr0, vr2
000b6c  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
000b70  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000b74  ea301402  vand.s.mz vr1{mr1}, r8, vr1
000b78  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
000b7c  46000502  vstore.mz vr0{mr1}, 0(r10)
000b80  1f058500  addli r10, r10, 64
000b84  bb8c04fe  bneq r9, zero, -224
000b88  9f058fd6  addli r11, r30, -5312
000b8c  6b510f00  load.d r[3:4], 0(r30)
000b90  6348efd3  loadli.w r16,  -5644(r30)
000b94  ab0000f0  lui r1, 983040
000b98  ebd40500  load.d r[10:11], 0(r11)
000b9c  00a00000  mfence { lm }
000ba0  97101800  or r1, r16, r1
000ba4  0b219110  add.ul r[3:4], r[3:4], r[10:11]
000ba8  ff304101  s_lm2gm r1, r20, 0(r[3:4])
000bac  9f000fd5  addli r1, r30, -5504
000bb0  00a00200  mfence { lm, gm }
000bb4  e3441f00  loadli.w r9,  12(r30)
000bb8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000bbc  e341ffd3  loadli.w r3,  -5636(r30)
000bc0  e305ffd3  loadli.w r11,  -5640(r30)
000bc4  e3088fd4  loadli.w r17,  -5568(r30)
000bc8  8b933310  add.s r7, r7, r3
000bcc  bf8393fc  blt.s r7, r9, -1824
000bd0  abf00000  lui r1, 15
000bd4  9b90f0ff  ori r1, r1, 4095
000bd8  80a10004  csr_set csr3, r1
000bdc  00d00100  sync_group
000be0  5be80a00  j 22336
000be4  e3403f00  loadli.w r1,  28(r30)
000be8  b792000a  beq r1, zero, 5284
000bec  e3002f00  loadli.w r1,  16(r30)
000bf0  1f010010  addli r2, zero, 2048
000bf4  3bc22012  bneq r1, r2, 9360
000bf8  00350002  core_id r10
000bfc  9f200000  addli r1, zero, 2
000c00  370f1524  beq r10, r1, 19392
000c04  9f100000  addli r1, zero, 1
000c08  b77d1524  beq r10, r1, 19324
000c0c  3b3f0524  bneq r10, zero, 19404
000c10  9f000040  addli r1, zero, 8192
000c14  2b0100f0  lui r2, 983040
000c18  97902000  or r1, r1, r2
000c1c  2b110200  lui r2, 33
000c20  1f010100  addli r2, r2, 0
000c24  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000c28  5b760900  j 19376
000c2c  e3403f00  loadli.w r1,  28(r30)
000c30  37f30010  beq r1, zero, 8412
000c34  80300002  core_id r1
000c38  1f210000  addli r2, zero, 2
000c3c  b7ed2022  beq r1, r2, 18296
000c40  1f110000  addli r2, zero, 1
000c44  37e52020  beq r1, r2, 16728
000c48  3bae0022  bneq r1, zero, 18312
000c4c  63012f00  loadli.w r2,  16(r30)
000c50  ab0100f0  lui r3, 983040
000c54  1b311100  slli r2, r2, 1
000c58  17113100  or r2, r2, r3
000c5c  abd10100  lui r3, 29
000c60  9f810100  addli r3, r3, 0
000c64  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000c68  5bed0800  j 18280
000c6c  e3002f00  loadli.w r1,  16(r30)
000c70  1f010010  addli r2, zero, 2048
000c74  3bcb2006  bneq r1, r2, 3792
000c78  e3403f00  loadli.w r1,  28(r30)
000c7c  37e5001a  beq r1, zero, 13656
000c80  803c0002  core_id r25
000c84  abd70000  lui r15, 13
000c88  00510102  load_param_i r2, 2
000c8c  1f150000  addli r10, zero, 1
000c90  9f058fd7  addli r11, r30, -5184
000c94  1f068000  addli r12, zero, 64
000c98  9f060010  addli r13, zero, 2048
000c9c  9bb05c00  slli r1, r25, 5
000ca0  9b315100  slli r3, r2, 5
000ca4  9f8707f0  addli r15, r15, -2048
000ca8  1f870000  addli r14, r1, 0
000cac  33080728  zext_int2long r[17:18], r14
000cb0  2b0900f0  lui r18, 983040
000cb4  1738a802  sll.d r[17:18], r[17:18], r10
000cb8  17192601  or r18, r12, r18
000cbc  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000cc0  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000cc4  1b382700  slli r16, r14, 2
000cc8  0b97e110  add.s r14, r3, r14
000ccc  00a00200  mfence { lm, gm }
000cd0  42800502  vload.mz vr0{mr1}, 0(r11)
000cd4  9308d704  setlt.u r17, r14, r13
000cd8  0b18f810  add.s r16, r16, r15
000cdc  1f098800  addli r18, r16, 64
000ce0  86300000  vfp162float_l.rn vr1, vr0
000ce4  06700000  vfp162float_h.rn vr0, vr0
000ce8  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000cec  4e100902  vstores_mask16.mz vr0{mr1}, 0(r18)
000cf0  bbfe08fe  bneq r17, zero, -68
000cf4  abf20000  lui r5, 15
000cf8  1bb57c00  slli r10, r25, 7
000cfc  1b327100  slli r4, r2, 7
000d00  1f160000  addli r12, zero, 1
000d04  9f068fd7  addli r13, r30, -5184
000d08  1f078000  addli r14, zero, 64
000d0c  1f080010  addli r16, zero, 2048
000d10  9f880000  addli r17, r1, 0
000d14  00a00000  mfence { lm }
000d18  9f8202f0  addli r5, r5, -2048
000d1c  8b155510  add.s r11, r10, r5
000d20  33890828  zext_int2long r[19:20], r17
000d24  2b0a00f0  lui r20, 983040
000d28  8b983810  add.s r17, r17, r3
000d2c  1739c902  sll.d r[19:20], r[19:20], r12
000d30  171a4701  or r20, r14, r20
000d34  0b292311  add.ul r[19:20], r[7:8], r[19:20]
000d38  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
000d3c  13890805  setlt.u r18, r17, r16
000d40  9f898500  addli r19, r11, 64
000d44  00a00200  mfence { lm, gm }
000d48  42800602  vload.mz vr0{mr1}, 0(r13)
000d4c  86300000  vfp162float_l.rn vr1, vr0
000d50  06700000  vfp162float_h.rn vr0, vr0
000d54  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
000d58  8b954510  add.s r11, r11, r4
000d5c  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
000d60  3b0f09fe  bneq r18, zero, -64
000d64  ab130100  lui r7, 17
000d68  9f058fd7  addli r11, r30, -5184
000d6c  1f068000  addli r12, zero, 64
000d70  9f060010  addli r13, zero, 2048
000d74  00a00000  mfence { lm }
000d78  9f8303f0  addli r7, r7, -2048
000d7c  0b137510  add.s r6, r10, r7
000d80  1f150000  addli r10, zero, 1
000d84  33880028  zext_int2long r[17:18], r1
000d88  2b0700f0  lui r14, 983040
000d8c  8b903010  add.s r1, r1, r3
000d90  1738a802  sll.d r[17:18], r[17:18], r10
000d94  1717e600  or r14, r12, r14
000d98  0b280411  add.ul r[17:18], r[9:10], r[17:18]
000d9c  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000da0  1387d004  setlt.u r14, r1, r13
000da4  1f088300  addli r16, r6, 64
000da8  00a00200  mfence { lm, gm }
000dac  42800502  vload.mz vr0{mr1}, 0(r11)
000db0  86300000  vfp162float_l.rn vr1, vr0
000db4  06700000  vfp162float_h.rn vr0, vr0
000db8  4e101302  vstores_mask16.mz vr1{mr1}, 0(r6)
000dbc  0b134310  add.s r6, r6, r4
000dc0  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
000dc4  3b0f07fe  bneq r14, zero, -64
000dc8  abf00000  lui r1, 15
000dcc  00a00300  mfence { lm, sm, gm }
000dd0  9b811c00  andi r3, r25, 1
000dd4  1f020006  addli r4, zero, 768
000dd8  9b90f0ff  ori r1, r1, 4095
000ddc  80a10004  csr_set csr3, r1
000de0  9f000006  addli r1, zero, 768
000de4  00d00100  sync_group
000de8  67083fd6  storeli.w r3, -5248(r30)
000dec  37a00100  beq r3, zero, 8
000df0  1f02000a  addli r4, zero, 1280
000df4  e3411f00  loadli.w r3,  12(r30)
000df8  63471f00  loadli.w r14,  12(r30)
000dfc  1f130000  addli r6, zero, 1
000e00  bf84612a  blt.s r3, r6, 21792
000e04  e3010fd7  loadli.w r3,  -5248(r30)
000e08  9f068fd7  addli r13, r30, -5184
000e0c  1b441100  srli r8, r2, 1
000e10  1f014200  addli r2, r4, 32
000e14  1b351200  slli r10, r4, 1
000e18  ab3d0100  lui r27, 19
000e1c  1f030000  addli r6, zero, 0
000e20  9bc41c00  srli r9, r25, 1
000e24  9f797000  addli r19, zero, 63
000e28  1f0b0005  addli r22, zero, 640
000e2c  1f0d4000  addli r26, zero, 32
000e30  9f0a0003  addli r21, zero, 384
000e34  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000e38  670c2fd4  storeli.w r2, -5440(r30)
000e3c  0b11d510  add.s r2, r10, r13
000e40  9f8d0df0  addli r27, r27, -2048
000e44  8b901120  mul.s r1, r3, r1
000e48  67041fd6  storeli.w r1, -5312(r30)
000e4c  9bb02000  slli r1, r1, 2
000e50  8b955010  add.s r11, r1, r5
000e54  0b967010  add.s r12, r1, r7
000e58  9b302200  slli r1, r4, 2
000e5c  ab320100  lui r5, 19
000e60  8b90d010  add.s r1, r1, r13
000e64  9f8202f4  addli r5, r5, -1536
000e68  9f8080ff  addli r1, r1, -64
000e6c  67081fd4  storeli.w r1, -5504(r30)
000e70  9f0081ff  addli r1, r2, -64
000e74  1f010fd4  addli r2, r30, -5632
000e78  67041fd4  storeli.w r1, -5568(r30)
000e7c  abf0ffff  lui r1, 1048575
000e80  00a00000  mfence { lm }
000e84  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000e88  9b9000f8  ori r1, r1, 3968
000e8c  e74f1fd2  storeli.w r1, -5636(r30)
000e90  abf00000  lui r1, 15
000e94  1b9ef0ff  ori r28, r1, 4095
000e98  db030000  j 28
000e9c  00a00300  mfence { lm, sm, gm }
000ea0  80210e04  csr_set csr3, r28
000ea4  00d00100  sync_group
000ea8  0b138310  add.s r6, r6, r8
000eac  3f20e300  blt.s r6, r14, 8
000eb0  5ba4ffff  j -736
000eb4  8b109310  add.s r1, r6, r9
000eb8  cb1f17fe  ble.s r14, r1, -28
000ebc  63011f00  loadli.w r2,  8(r30)
000ec0  e3018fd6  loadli.w r3,  -5312(r30)
000ec4  8b902010  add.s r1, r1, r2
000ec8  0b018330  div.u r2, r6, r8
000ecc  9bb0b000  slli r1, r1, 11
000ed0  97903000  or r1, r1, r3
000ed4  9f110000  addli r3, zero, 1
000ed8  33980028  sext_int2long r[17:18], r1
000edc  ab0000f0  lui r1, 983040
000ee0  1b316100  slli r2, r2, 6
000ee4  17383802  sll.d r[17:18], r[17:18], r3
000ee8  9f017fd6  addli r3, r30, -5320
000eec  97101500  or r1, r10, r1
000ef0  1b010104  andi r2, r2, 64
000ef4  ebdb0100  load.d r[24:25], 0(r3)
000ef8  17119101  or r2, r2, r25
000efc  8bab0b11  add.ul r[24:25], r[24:25], r[17:18]
000f00  ffa0db00  l_gm2lm r1, r13, 0(r[24:25])
000f04  00a00200  mfence { lm, gm }
000f08  e3008fd4  loadli.w r1,  -5568(r30)
000f0c  e3010fd5  loadli.w r3,  -5504(r30)
000f10  e3038fd5  loadli.w r7,  -5440(r30)
000f14  c2800002  vload.mz vr1{mr1}, 0(r1)
000f18  9f83c3ff  addli r7, r7, -32
000f1c  1f8981ff  addli r18, r3, -64
000f20  9f8080ff  addli r1, r1, -64
000f24  13877904  setlt.u r14, r19, r7
000f28  06f10000  vfp162float_h.rn vr2, vr1
000f2c  86b00000  vfp162float_l.rn vr1, vr1
000f30  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
000f34  9f8101ff  addli r3, r3, -128
000f38  46101902  vstore_mask16.mz vr1{mr1}, 0(r18)
000f3c  3b6f07fe  bneq r14, zero, -40
000f40  00a00000  mfence { lm }
000f44  e3000fd7  loadli.w r1,  -5248(r30)
000f48  3bc60000  bneq r1, zero, 400
000f4c  9f000fd4  addli r1, r30, -5632
000f50  6347ffd3  loadli.w r14,  -5636(r30)
000f54  9f010000  addli r3, zero, 0
000f58  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000f5c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000f60  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000f64  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000f68  8b90f110  add.s r1, r3, r15
000f6c  8b933610  add.s r7, r13, r3
000f70  1f070701  addli r14, r14, 128
000f74  9f810104  addli r3, r3, 512
000f78  1f890001  addli r18, r1, 128
000f7c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
000f80  1f8a8000  addli r20, r1, 64
000f84  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
000f88  9f8b8301  addli r23, r7, 192
000f8c  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
000f90  1f898001  addli r18, r1, 192
000f94  4a130a02  vloads_mask16.mz vr6{mr1}, 0(r20)
000f98  1f8a8300  addli r20, r7, 64
000f9c  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
000fa0  ca130902  vloads_mask16.mz vr7{mr1}, 0(r18)
000fa4  1f890301  addli r18, r7, 128
000fa8  42150a02  vload_mask16.mz vr10{mr1}, 0(r20)
000fac  c2140902  vload_mask16.mz vr9{mr1}, 0(r18)
000fb0  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
000fb4  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
000fb8  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
000fbc  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
000fc0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000fc4  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
000fc8  46108902  vstore_mask16.mz vr8{mr1}, 0(r18)
000fcc  1f890002  addli r18, r1, 256
000fd0  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000fd4  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
000fd8  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000fdc  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
000fe0  4a100902  vloads_mask16.mz vr0{mr1}, 0(r18)
000fe4  1f898002  addli r18, r1, 320
000fe8  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
000fec  9f8b0302  addli r23, r7, 256
000ff0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000ff4  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000ff8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000ffc  4a130902  vloads_mask16.mz vr6{mr1}, 0(r18)
001000  1f890003  addli r18, r1, 384
001004  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
001008  9f808003  addli r1, r1, 448
00100c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001010  4a140902  vloads_mask16.mz vr8{mr1}, 0(r18)
001014  1f898302  addli r18, r7, 320
001018  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
00101c  9f800303  addli r1, r7, 384
001020  9f838303  addli r7, r7, 448
001024  c2140902  vload_mask16.mz vr9{mr1}, 0(r18)
001028  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00102c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001030  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001034  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001038  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00103c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001040  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
001044  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001048  46106902  vstore_mask16.mz vr6{mr1}, 0(r18)
00104c  13096705  setlt.u r18, r14, r22
001050  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001054  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001058  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00105c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001060  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001064  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001068  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
00106c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001070  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001074  bb5b09fe  bneq r18, zero, -268
001078  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00107c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001080  9f000002  addli r1, zero, 256
001084  6af100c0  vsrl.p vr2, r1, vr0
001088  eaf110c0  vsrl.p vr3, r1, vr1
00108c  9f000001  addli r1, zero, 128
001090  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001094  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001098  6af100c0  vsrl.p vr2, r1, vr0
00109c  eaf110c0  vsrl.p vr3, r1, vr1
0010a0  9f008000  addli r1, zero, 64
0010a4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010a8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010ac  6af100c0  vsrl.p vr2, r1, vr0
0010b0  eaf110c0  vsrl.p vr3, r1, vr1
0010b4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010b8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010bc  6a710dc0  vsrl.p vr2, r26, vr0
0010c0  ea711dc0  vsrl.p vr3, r26, vr1
0010c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010cc  fa100040  vextracti.f r1, 0(vr0)
0010d0  fa930040  vextracti.f r7, 0(vr1)
0010d4  db650000  j 812
0010d8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0010dc  abf0ffff  lui r1, 1048575
0010e0  9f010000  addli r3, zero, 0
0010e4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0010e8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0010ec  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0010f0  1b9700f8  ori r14, r1, 3968
0010f4  8b933710  add.s r7, r15, r3
0010f8  0b993610  add.s r18, r13, r3
0010fc  1f070701  addli r14, r14, 128
001100  9f810104  addli r3, r3, 512
001104  9f8b0331  addli r23, r7, 6272
001108  9f800330  addli r1, r7, 6144
00110c  1f8c8331  addli r24, r7, 6336
001110  1f0a0918  addli r20, r18, 3072
001114  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
001118  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
00111c  9f808330  addli r1, r7, 6208
001120  ca140c02  vloads_mask16.mz vr9{mr1}, 0(r24)
001124  9f0b0919  addli r23, r18, 3200
001128  42130a02  vload_mask16.mz vr6{mr1}, 0(r20)
00112c  1f0c8919  addli r24, r18, 3264
001130  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
001134  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
001138  9f008918  addli r1, r18, 3136
00113c  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
001140  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
001144  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001148  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
00114c  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
001150  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
001154  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001158  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
00115c  46106a02  vstore_mask16.mz vr6{mr1}, 0(r20)
001160  1f8a0332  addli r20, r7, 6400
001164  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
001168  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
00116c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001170  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
001174  9f0b091a  addli r23, r18, 3328
001178  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
00117c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001180  9f00091b  addli r1, r18, 3456
001184  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
001188  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00118c  4a100a02  vloads_mask16.mz vr0{mr1}, 0(r20)
001190  1f8a8332  addli r20, r7, 6464
001194  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001198  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00119c  4a130a02  vloads_mask16.mz vr6{mr1}, 0(r20)
0011a0  1f8a0333  addli r20, r7, 6528
0011a4  9f838333  addli r7, r7, 6592
0011a8  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
0011ac  1f0a891a  addli r20, r18, 3392
0011b0  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
0011b4  9f03891b  addli r7, r18, 3520
0011b8  13095705  setlt.u r18, r14, r21
0011bc  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
0011c0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0011c4  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0011c8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0011cc  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0011d0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0011d4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0011d8  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
0011dc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0011e0  46106a02  vstore_mask16.mz vr6{mr1}, 0(r20)
0011e4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0011e8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0011ec  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0011f0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0011f4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0011f8  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0011fc  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001200  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001204  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001208  bb3b09fe  bneq r18, zero, -276
00120c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001210  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001214  9f000002  addli r1, zero, 256
001218  1f0a0000  addli r20, zero, 0
00121c  eaf110c0  vsrl.p vr3, r1, vr1
001220  6af100c0  vsrl.p vr2, r1, vr0
001224  9f000001  addli r1, zero, 128
001228  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00122c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001230  eaf110c0  vsrl.p vr3, r1, vr1
001234  6af100c0  vsrl.p vr2, r1, vr0
001238  9f008000  addli r1, zero, 64
00123c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001240  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001244  eaf110c0  vsrl.p vr3, r1, vr1
001248  6af100c0  vsrl.p vr2, r1, vr0
00124c  abf0ffff  lui r1, 1048575
001250  1b9900f8  ori r18, r1, 3968
001254  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001258  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00125c  ea711dc0  vsrl.p vr3, r26, vr1
001260  6a710dc0  vsrl.p vr2, r26, vr0
001264  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001268  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00126c  7a970040  vextracti.f r14, 0(vr1)
001270  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001274  fa110040  vextracti.f r3, 0(vr0)
001278  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00127c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001280  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001284  8b904711  add.s r1, r15, r20
001288  8b934611  add.s r7, r13, r20
00128c  1f090901  addli r18, r18, 128
001290  1f0a0a04  addli r20, r20, 512
001294  9f8b0018  addli r23, r1, 3072
001298  1f8c0019  addli r24, r1, 3200
00129c  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
0012a0  9f8c8301  addli r25, r7, 192
0012a4  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
0012a8  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
0012ac  9f8b8018  addli r23, r1, 3136
0012b0  1f8c8019  addli r24, r1, 3264
0012b4  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0012b8  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
0012bc  9f8b0301  addli r23, r7, 128
0012c0  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
0012c4  1f8c8300  addli r24, r7, 64
0012c8  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
0012cc  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
0012d0  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0012d4  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0012d8  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0012dc  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0012e0  46908b02  vstore_mask16.mz vr8{mr1}, 0(r23)
0012e4  9f8b001a  addli r23, r1, 3328
0012e8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0012ec  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0012f0  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0012f4  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0012f8  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
0012fc  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
001300  9f8b801a  addli r23, r1, 3392
001304  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
001308  9f8c0302  addli r25, r7, 256
00130c  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
001310  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
001314  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001318  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
00131c  9f8b001b  addli r23, r1, 3456
001320  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
001324  9f80801b  addli r1, r1, 3520
001328  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00132c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001330  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
001334  9f8b8302  addli r23, r7, 320
001338  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
00133c  9f800303  addli r1, r7, 384
001340  9f838303  addli r7, r7, 448
001344  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
001348  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00134c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001350  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001354  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001358  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00135c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001360  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
001364  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001368  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
00136c  930b6905  setlt.u r23, r18, r22
001370  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001374  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001378  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00137c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001380  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001384  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001388  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
00138c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001390  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001394  bbcb0bfe  bneq r23, zero, -272
001398  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00139c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0013a0  9f000002  addli r1, zero, 256
0013a4  803c0002  core_id r25
0013a8  6af100c0  vsrl.p vr2, r1, vr0
0013ac  eaf110c0  vsrl.p vr3, r1, vr1
0013b0  9f000001  addli r1, zero, 128
0013b4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013b8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013bc  6af100c0  vsrl.p vr2, r1, vr0
0013c0  eaf110c0  vsrl.p vr3, r1, vr1
0013c4  9f008000  addli r1, zero, 64
0013c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013d0  6af100c0  vsrl.p vr2, r1, vr0
0013d4  eaf110c0  vsrl.p vr3, r1, vr1
0013d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013e0  6a710dc0  vsrl.p vr2, r26, vr0
0013e4  ea711dc0  vsrl.p vr3, r26, vr1
0013e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013f0  fa100040  vextracti.f r1, 0(vr0)
0013f4  fa930040  vextracti.f r7, 0(vr1)
0013f8  8be01110  add.f.rn r1, r3, r1
0013fc  8b637710  add.f.rn r7, r14, r7
001400  1b372100  slli r14, r2, 2
001404  9f010000  addli r3, zero, 0
001408  0b19b711  add.s r18, r14, r27
00140c  0b1a5710  add.s r20, r14, r5
001410  73601900  stores.w r1, 0(r18)
001414  9b00e107  andi r1, r2, 126
001418  1b114700  ori r2, r14, 4
00141c  73607a00  stores.w r7, 0(r20)
001420  00a00300  mfence { lm, sm, gm }
001424  80210e04  csr_set csr3, r28
001428  00d00100  sync_group
00142c  9bb02000  slli r1, r1, 2
001430  8b13b111  add.s r7, r2, r27
001434  0b115110  add.s r2, r2, r5
001438  0b97b011  add.s r14, r1, r27
00143c  efc30300  loads.w r7, 0(r7)
001440  8b905010  add.s r1, r1, r5
001444  6f410100  loads.w r2, 0(r2)
001448  6f470700  loads.w r14, 0(r14)
00144c  efc00000  loads.w r1, 0(r1)
001450  8be3e310  add.f.rn r7, r7, r14
001454  2b07003a  lui r14, 237568
001458  8b601110  add.f.rn r1, r2, r1
00145c  0be1e320  mul.f.rn r2, r7, r14
001460  8be0e020  mul.f.rn r1, r1, r14
001464  1f070000  addli r14, zero, 0
001468  8b632120  mul.f.rn r7, r2, r2
00146c  0b610158  neg.f r2, r2
001470  8be07018  sub.f.rn r1, r1, r7
001474  e3033f00  loadli.w r7,  24(r30)
001478  8be07010  add.f.rn r1, r1, r7
00147c  ab03803f  lui r7, 260096
001480  8f800008  sqrt.f.rn r1, r1
001484  8f801318  div.f.rn r1, r7, r1
001488  9f038fd7  addli r7, r30, -5184
00148c  0b993610  add.s r18, r13, r3
001490  0b9a3510  add.s r20, r11, r3
001494  1f074700  addli r14, r14, 32
001498  42100902  vload_mask16.mz vr0{mr1}, 0(r18)
00149c  1f098900  addli r18, r18, 64
0014a0  4a110a02  vloads_mask16.mz vr2{mr1}, 0(r20)
0014a4  1f0a8a00  addli r20, r20, 64
0014a8  c2100902  vload_mask16.mz vr1{mr1}, 0(r18)
0014ac  0b193610  add.s r18, r12, r3
0014b0  4a120a02  vloads_mask16.mz vr4{mr1}, 0(r20)
0014b4  9f810101  addli r3, r3, 128
0014b8  ca110902  vloads_mask16.mz vr3{mr1}, 0(r18)
0014bc  1f098900  addli r18, r18, 64
0014c0  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
0014c4  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
0014c8  13094704  setlt.u r18, r14, r4
0014cc  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0014d0  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
0014d4  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0014d8  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
0014dc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0014e0  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0014e4  06900100  vfloat2fp16_l.rn vr0, vr3
0014e8  06d00200  vfloat2fp16_h.rn vr0, vr5
0014ec  46800302  vstore.mz vr0{mr1}, 0(r7)
0014f0  9f838300  addli r7, r7, 64
0014f4  3b6e09fe  bneq r18, zero, -104
0014f8  6b510f00  load.d r[3:4], 0(r30)
0014fc  ab0000f0  lui r1, 983040
001500  00a00000  mfence { lm }
001504  97101500  or r1, r10, r1
001508  0b210111  add.ul r[3:4], r[3:4], r[17:18]
00150c  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
001510  00a00200  mfence { lm, gm }
001514  63471f00  loadli.w r14,  12(r30)
001518  5b32ffff  j -1648
00151c  e3403f00  loadli.w r1,  28(r30)
001520  b7ae0012  beq r1, zero, 10152
001524  803b0002  core_id r23
001528  63012f00  loadli.w r2,  16(r30)
00152c  805c0102  load_param_i r25, 2
001530  9bb05b00  slli r1, r23, 5
001534  4b431100  ble.s r2, r1, 208
001538  2b960000  lui r12, 9
00153c  9f110000  addli r3, zero, 1
001540  1f058fd7  addli r10, r30, -5184
001544  9f058000  addli r11, zero, 64
001548  1bb15c00  slli r2, r25, 5
00154c  9f860000  addli r13, r1, 0
001550  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001554  1f0606f0  addli r12, r12, -2048
001558  33880628  zext_int2long r[17:18], r13
00155c  2b0900f0  lui r18, 983040
001560  17383802  sll.d r[17:18], r[17:18], r3
001564  17992501  or r18, r11, r18
001568  0b280211  add.ul r[17:18], r[5:6], r[17:18]
00156c  7f29a800  l_gm2lm r18, r10, 0(r[17:18])
001570  1bb82600  slli r16, r13, 2
001574  8b16d110  add.s r13, r2, r13
001578  00a00200  mfence { lm, gm }
00157c  c2000502  vload.mz vr1{mr1}, 0(r10)
001580  0b18c810  add.s r16, r16, r12
001584  9f088800  addli r17, r16, 64
001588  66411080  vmerge_l.hf vr2, vr0, vr1
00158c  e64010a0  vmerge_h.hf vr1, vr0, vr1
001590  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
001594  4e901802  vstores_mask16.mz vr1{mr1}, 0(r17)
001598  3f8ff6fe  blt.s r13, r15, -64
00159c  2ba20000  lui r4, 10
0015a0  9bb17b00  slli r3, r23, 7
0015a4  9f120000  addli r5, zero, 1
0015a8  1f058fd7  addli r10, r30, -5184
0015ac  9f058000  addli r11, zero, 64
0015b0  1f860000  addli r12, r1, 0
0015b4  00a00000  mfence { lm }
0015b8  1f0202f0  addli r4, r4, -2048
0015bc  8b914110  add.s r3, r3, r4
0015c0  1bb27c00  slli r4, r25, 7
0015c4  33080628  zext_int2long r[17:18], r12
0015c8  ab0600f0  lui r13, 983040
0015cc  0b162610  add.s r12, r12, r2
0015d0  17385802  sll.d r[17:18], r[17:18], r5
0015d4  9796d500  or r13, r11, r13
0015d8  0b280311  add.ul r[17:18], r[7:8], r[17:18]
0015dc  ff26a800  l_gm2lm r13, r10, 0(r[17:18])
0015e0  9f868100  addli r13, r3, 64
0015e4  00a00200  mfence { lm, gm }
0015e8  c2000502  vload.mz vr1{mr1}, 0(r10)
0015ec  66411080  vmerge_l.hf vr2, vr0, vr1
0015f0  e64010a0  vmerge_h.hf vr1, vr0, vr1
0015f4  4e902102  vstores_mask16.mz vr2{mr1}, 0(r3)
0015f8  8b914110  add.s r3, r3, r4
0015fc  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
001600  3f1ff6fe  blt.s r12, r15, -60
001604  63012f00  loadli.w r2,  16(r30)
001608  cb211100  ble.s r2, r1, 104
00160c  2bb30000  lui r6, 11
001610  1f110000  addli r2, zero, 1
001614  9f018fd7  addli r3, r30, -5184
001618  1f028000  addli r4, zero, 64
00161c  9bb25c00  slli r5, r25, 5
001620  00a00000  mfence { lm }
001624  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001628  1f0303f0  addli r6, r6, -2048
00162c  33850028  zext_int2long r[11:12], r1
001630  ab0300f0  lui r7, 983040
001634  17352502  sll.d r[11:12], r[11:12], r2
001638  97137200  or r7, r4, r7
00163c  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001640  ff233500  l_gm2lm r7, r3, 0(r[11:12])
001644  9bb32000  slli r7, r1, 2
001648  8b901210  add.s r1, r5, r1
00164c  00a00200  mfence { lm, gm }
001650  c2800102  vload.mz vr1{mr1}, 0(r3)
001654  8b936310  add.s r7, r7, r6
001658  1f858300  addli r10, r7, 64
00165c  66411080  vmerge_l.hf vr2, vr0, vr1
001660  e64010a0  vmerge_h.hf vr1, vr0, vr1
001664  4e902302  vstores_mask16.mz vr2{mr1}, 0(r7)
001668  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
00166c  3f8ff0fe  blt.s r1, r15, -64
001670  abf00000  lui r1, 15
001674  63411f00  loadli.w r2,  12(r30)
001678  00a00300  mfence { lm, sm, gm }
00167c  9b90f0ff  ori r1, r1, 4095
001680  80a10004  csr_set csr3, r1
001684  00d00100  sync_group
001688  4b627127  ble.s r2, r23, 19608
00168c  e3002f00  loadli.w r1,  16(r30)
001690  63412f00  loadli.w r2,  20(r30)
001694  1f048fd7  addli r8, r30, -5184
001698  9f150000  addli r11, zero, 1
00169c  1f064000  addli r12, zero, 32
0016a0  1f757000  addli r10, zero, 63
0016a4  9f080002  addli r17, zero, 256
0016a8  9f040001  addli r9, zero, 128
0016ac  1f0a8000  addli r20, zero, 64
0016b0  ab0a803f  lui r21, 260096
0016b4  2bed7f00  lui r26, 2046
0016b8  2bee0700  lui r28, 126
0016bc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0016c0  8b912010  add.s r3, r1, r2
0016c4  33820008  fix2float.rn r4, r1
0016c8  1bb31000  slli r6, r1, 1
0016cc  9bb22000  slli r5, r1, 2
0016d0  9f804000  addli r1, r1, 32
0016d4  9b392100  slli r19, r2, 2
0016d8  e70f1fd2  storeli.w r1, -5640(r30)
0016dc  8b908210  add.s r1, r5, r8
0016e0  9ff1f1ff  addli r3, r3, -1
0016e4  e74f4fd2  storeli.w r4, -5636(r30)
0016e8  0b922130  div.s r4, r3, r2
0016ec  9f8080ff  addli r1, r1, -64
0016f0  8b118310  add.s r3, r6, r8
0016f4  674f1fd2  storeli.w r1, -5644(r30)
0016f8  9f8081ff  addli r1, r3, -64
0016fc  670f1fd2  storeli.w r1, -5648(r30)
001700  abf0ffff  lui r1, 1048575
001704  00a00000  mfence { lm }
001708  67049fd5  storeli.w r25, -5568(r30)
00170c  67006fd4  storeli.w r6, -5632(r30)
001710  9b90f0ff  ori r1, r1, 4095
001714  67041fd6  storeli.w r1, -5312(r30)
001718  ab700000  lui r1, 7
00171c  1b9cf0ff  ori r24, r1, 4095
001720  ab00ff03  lui r1, 16368
001724  1b9bf03f  ori r22, r1, 1023
001728  abf000fc  lui r1, 1032207
00172c  9b9300c0  ori r7, r1, 3072
001730  9f000fd7  addli r1, r30, -5248
001734  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001738  db090000  j 76
00173c  1f040fd5  addli r8, r30, -5504
001740  6b510f00  load.d r[3:4], 0(r30)
001744  ab0000f0  lui r1, 983040
001748  1f757000  addli r10, zero, 63
00174c  eb520400  load.d r[6:7], 0(r8)
001750  1f048fd7  addli r8, r30, -5184
001754  0b215110  add.ul r[3:4], r[3:4], r[6:7]
001758  63030fd4  loadli.w r6,  -5632(r30)
00175c  00a00000  mfence { lm }
001760  e30b8fd5  loadli.w r23,  -5440(r30)
001764  e30c8fd4  loadli.w r25,  -5568(r30)
001768  97101300  or r1, r6, r1
00176c  8b9b7c11  add.s r23, r25, r23
001770  ff308100  s_lm2gm r1, r8, 0(r[3:4])
001774  00a00200  mfence { lm, gm }
001778  e3401f00  loadli.w r1,  12(r30)
00177c  3fa01b00  blt.s r23, r1, 8
001780  5b740900  j 19360
001784  e3001f00  loadli.w r1,  8(r30)
001788  9f027fd6  addli r5, r30, -5320
00178c  9f860900  addli r13, r19, 0
001790  8b901b10  add.s r1, r23, r1
001794  8b90f020  mul.s r1, r1, r15
001798  b3900028  sext_int2long r[2:3], r1
00179c  17b9b002  sll.d r[19:20], r[2:3], r11
0017a0  6bd10200  load.d r[3:4], 0(r5)
0017a4  ab0000f0  lui r1, 983040
0017a8  9f020fd5  addli r5, r30, -5504
0017ac  97101300  or r1, r6, r1
0017b0  73b02201  store.d r[19:20], 0(r5)
0017b4  0b212111  add.ul r[3:4], r[3:4], r[19:20]
0017b8  ff208100  l_gm2lm r1, r8, 0(r[3:4])
0017bc  00a00200  mfence { lm, gm }
0017c0  bff0c700  blt.s r15, r12, 60
0017c4  e300efd3  loadli.w r1,  -5648(r30)
0017c8  6341efd3  loadli.w r2,  -5644(r30)
0017cc  e301ffd3  loadli.w r3,  -5640(r30)
0017d0  c2800002  vload.mz vr1{mr1}, 0(r1)
0017d4  9f81c1ff  addli r3, r3, -32
0017d8  1f0481ff  addli r8, r2, -64
0017dc  9f8080ff  addli r1, r1, -64
0017e0  93023504  setlt.u r5, r10, r3
0017e4  664110a0  vmerge_h.hf vr2, vr0, vr1
0017e8  e6401080  vmerge_l.hf vr1, vr0, vr1
0017ec  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
0017f0  1f0101ff  addli r2, r2, -128
0017f4  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
0017f8  3bef02fe  bneq r5, zero, -40
0017fc  670c7fd5  storeli.w r23, -5440(r30)
001800  00a00000  mfence { lm }
001804  bf67b200  blt.s r4, r11, 504
001808  1f050000  addli r10, zero, 0
00180c  9f020000  addli r5, zero, 0
001810  1f040000  addli r8, zero, 0
001814  9f890600  addli r19, r13, 0
001818  db0d0000  j 108
00181c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001820  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001824  1f140400  addli r8, r8, 1
001828  6af108c0  vsrl.p vr2, r17, vr0
00182c  eaf118c0  vsrl.p vr3, r17, vr1
001830  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001834  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001838  6af104c0  vsrl.p vr2, r9, vr0
00183c  eaf114c0  vsrl.p vr3, r9, vr1
001840  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001844  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001848  6a710ac0  vsrl.p vr2, r20, vr0
00184c  ea711ac0  vsrl.p vr3, r20, vr1
001850  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001854  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001858  6a7106c0  vsrl.p vr2, r12, vr0
00185c  ea7116c0  vsrl.p vr3, r12, vr1
001860  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001864  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001868  fa100040  vextracti.f r1, 0(vr0)
00186c  7a910040  vextracti.f r2, 0(vr1)
001870  0b651510  add.f.rn r10, r10, r1
001874  9f000fd7  addli r1, r30, -5248
001878  8be22210  add.f.rn r5, r5, r2
00187c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001880  37264400  beq r8, r4, 392
001884  9f000400  addli r1, r8, 0
001888  37401701  beq r14, r17, 16
00188c  e3008fd6  loadli.w r1,  -5312(r30)
001890  97201400  xor r1, r8, r1
001894  8b101210  add.s r1, r4, r1
001898  0b91e020  mul.s r2, r1, r14
00189c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0018a0  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0018a4  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0018a8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0018ac  0b912718  sub.s r2, r15, r2
0018b0  0b11e140  min.s r2, r2, r14
0018b4  bf2db1fe  blt.s r2, r11, -152
0018b8  1f030fd7  addli r6, r30, -5248
0018bc  ab960000  lui r13, 9
0018c0  9f010000  addli r3, zero, 0
0018c4  8b901920  mul.s r1, r19, r1
0018c8  1f098fd7  addli r18, r30, -5184
0018cc  42120302  vload_mask16.mz vr4{mr1}, 0(r6)
0018d0  9f8606f0  addli r13, r13, -2048
0018d4  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0018d8  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0018dc  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0018e0  8b9b1610  add.s r23, r13, r1
0018e4  0b181910  add.s r16, r18, r1
0018e8  9f8c8b00  addli r25, r23, 64
0018ec  ca920b02  vloads_mask16.mz vr5{mr1}, 0(r23)
0018f0  9f8d8b01  addli r27, r23, 192
0018f4  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
0018f8  1f038801  addli r6, r16, 192
0018fc  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
001900  9f8c0b01  addli r25, r23, 128
001904  4a940d02  vloads_mask16.mz vr8{mr1}, 0(r27)
001908  9f0d0801  addli r27, r16, 128
00190c  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
001910  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
001914  c2950d02  vload_mask16.mz vr11{mr1}, 0(r27)
001918  9f0c8800  addli r25, r16, 64
00191c  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
001920  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001924  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001928  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00192c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001930  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001934  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001938  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
00193c  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
001940  9f8c8100  addli r25, r3, 64
001944  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
001948  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00194c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001950  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001954  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001958  46907d02  vstore_mask16.mz vr7{mr1}, 0(r27)
00195c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001960  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001964  cb6a91ff  ble.s r2, r25, -328
001968  9f8c0b02  addli r25, r23, 256
00196c  9f8d8b02  addli r27, r23, 320
001970  1f030802  addli r6, r16, 256
001974  9f810101  addli r3, r3, 128
001978  9f860604  addli r13, r13, 512
00197c  1f090904  addli r18, r18, 512
001980  4a900c02  vloads_mask16.mz vr0{mr1}, 0(r25)
001984  9f8c0b03  addli r25, r23, 384
001988  9f8b8b03  addli r23, r23, 448
00198c  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
001990  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
001994  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
001998  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
00199c  9f0b0803  addli r23, r16, 384
0019a0  9f0c8802  addli r25, r16, 320
0019a4  1f088803  addli r16, r16, 448
0019a8  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
0019ac  c2940c02  vload_mask16.mz vr9{mr1}, 0(r25)
0019b0  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0019b4  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
0019b8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0019bc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0019c0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0019c4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0019c8  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
0019cc  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
0019d0  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0019d4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0019d8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0019dc  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
0019e0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0019e4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0019e8  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0019ec  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0019f0  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0019f4  bfbb21fe  blt.s r3, r2, -276
0019f8  dbc4ffff  j -476
0019fc  9f020000  addli r5, zero, 0
001a00  1f050000  addli r10, zero, 0
001a04  9f890600  addli r19, r13, 0
001a08  1f032000  addli r6, zero, 16
001a0c  9f3b0000  addli r23, zero, 3
001a10  9f5c1000  addli r25, zero, 13
001a14  9f2d1000  addli r27, zero, 10
001a18  00a00000  mfence { lm }
001a1c  bf84b7fe  blt.s r15, r11, -736
001a20  6341ffd3  loadli.w r2,  -5636(r30)
001a24  abb60000  lui r13, 11
001a28  9f000000  addli r1, zero, 0
001a2c  1f048fd7  addli r8, r30, -5184
001a30  9f8606f0  addli r13, r13, -2048
001a34  8f012518  div.f.rn r3, r10, r2
001a38  0f812218  div.f.rn r2, r5, r2
001a3c  2ba50000  lui r10, 10
001a40  1f0505f0  addli r10, r10, -2048
001a44  8be23120  mul.f.rn r5, r3, r3
001a48  8be10158  neg.f r3, r3
001a4c  0b615118  sub.f.rn r2, r2, r5
001a50  e3023f00  loadli.w r5,  24(r30)
001a54  0b615110  add.f.rn r2, r2, r5
001a58  9f028fd7  addli r5, r30, -5184
001a5c  0f010108  sqrt.f.rn r2, r2
001a60  0f812a18  div.f.rn r2, r21, r2
001a64  1f888200  addli r16, r5, 64
001a68  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
001a6c  1f898600  addli r18, r13, 64
001a70  4a920602  vloads_mask16.mz vr4{mr1}, 0(r13)
001a74  ca110502  vloads_mask16.mz vr3{mr1}, 0(r10)
001a78  9f804000  addli r1, r1, 32
001a7c  9f860601  addli r13, r13, 128
001a80  9f820201  addli r5, r5, 128
001a84  42110802  vload_mask16.mz vr2{mr1}, 0(r16)
001a88  1f088500  addli r16, r10, 64
001a8c  4a130902  vloads_mask16.mz vr6{mr1}, 0(r18)
001a90  1f050501  addli r10, r10, 128
001a94  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
001a98  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001a9c  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
001aa0  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
001aa4  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
001aa8  26923002  vmac.f.mz.rn vr4{mr1}, vr1, vr3
001aac  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001ab0  ea211322  vor.u.mz vr3{mr1}, r6, vr1
001ab4  26135102  vmac.f.mz.rn vr6{mr1}, vr2, vr5
001ab8  eaa21b22  vor.u.mz vr5{mr1}, r23, vr1
001abc  6eb141c2  vsrl.s.mz vr2{mr1}, vr3, vr4
001ac0  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
001ac4  6ab12502  vand.s.mz vr2{mr1}, r11, vr2
001ac8  eab13502  vand.s.mz vr3{mr1}, r11, vr3
001acc  16312202  vadd.s.mz vr2{mr1}, vr4, vr2
001ad0  6aa21c22  vor.u.mz vr4{mr1}, r25, vr1
001ad4  eaa01d22  vor.u.mz vr1{mr1}, r27, vr1
001ad8  96313302  vadd.s.mz vr3{mr1}, vr6, vr3
001adc  12312c02  vadd.s.mz vr2{mr1}, r24, vr2
001ae0  92313c02  vadd.s.mz vr3{mr1}, r24, vr3
001ae4  6e3322c2  vsrl.s.mz vr6{mr1}, vr4, vr2
001ae8  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
001aec  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
001af0  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
001af4  ea326e02  vand.s.mz vr5{mr1}, r28, vr6
001af8  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
001afc  6a324e02  vand.s.mz vr4{mr1}, r28, vr4
001b00  ea313d02  vand.s.mz vr3{mr1}, r26, vr3
001b04  6ab12a22  vor.s.mz vr2{mr1}, r21, vr2
001b08  eab25a22  vor.s.mz vr5{mr1}, r21, vr5
001b0c  6ab24a22  vor.s.mz vr4{mr1}, r21, vr4
001b10  eab13a22  vor.s.mz vr3{mr1}, r21, vr3
001b14  06110120  vfloat2fp16_l.rz vr2, vr2
001b18  06520220  vfloat2fp16_h.rz vr4, vr4
001b1c  06d10120  vfloat2fp16_h.rz vr2, vr3
001b20  06920220  vfloat2fp16_l.rz vr4, vr5
001b24  6a312b02  vand.s.mz vr2{mr1}, r22, vr2
001b28  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
001b2c  eab01302  vand.s.mz vr1{mr1}, r7, vr1
001b30  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
001b34  46001402  vstore.mz vr1{mr1}, 0(r8)
001b38  1f048400  addli r8, r8, 64
001b3c  bfacf0fe  blt.s r1, r15, -216
001b40  db7fffff  j -1028
001b44  e3403f00  loadli.w r1,  28(r30)
001b48  37a80016  beq r1, zero, 11784
001b4c  80300002  core_id r1
001b50  e3012f00  loadli.w r3,  16(r30)
001b54  1bb15000  slli r2, r1, 5
001b58  4bc32100  ble.s r3, r2, 208
001b5c  2b580100  lui r16, 21
001b60  00550102  load_param_i r10, 2
001b64  9f150000  addli r11, zero, 1
001b68  1f068fd7  addli r12, r30, -5184
001b6c  9f068000  addli r13, zero, 64
001b70  9f080100  addli r17, r2, 0
001b74  9b315500  slli r3, r10, 5
001b78  1f080800  addli r16, r16, 0
001b7c  33890828  zext_int2long r[19:20], r17
001b80  2b0a00f0  lui r20, 983040
001b84  1739b902  sll.d r[19:20], r[19:20], r11
001b88  179a4601  or r20, r13, r20
001b8c  0b292211  add.ul r[19:20], r[5:6], r[19:20]
001b90  7f2ac900  l_gm2lm r20, r12, 0(r[19:20])
001b94  1bb92800  slli r18, r17, 2
001b98  8b981111  add.s r17, r3, r17
001b9c  00a00200  mfence { lm, gm }
001ba0  42000602  vload.mz vr0{mr1}, 0(r12)
001ba4  0b190911  add.s r18, r18, r16
001ba8  9f098900  addli r19, r18, 64
001bac  86300000  vfp162float_l.rn vr1, vr0
001bb0  06700000  vfp162float_h.rn vr0, vr0
001bb4  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
001bb8  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
001bbc  3f8ff8fe  blt.s r17, r15, -64
001bc0  ab620100  lui r5, 22
001bc4  1bb27000  slli r4, r1, 7
001bc8  9f058fd7  addli r11, r30, -5184
001bcc  1f068000  addli r12, zero, 64
001bd0  9f060100  addli r13, r2, 0
001bd4  00a00000  mfence { lm }
001bd8  9f820200  addli r5, r5, 0
001bdc  0b125210  add.s r4, r4, r5
001be0  9b327500  slli r5, r10, 7
001be4  1f150000  addli r10, zero, 1
001be8  33880628  zext_int2long r[17:18], r13
001bec  2b0900f0  lui r18, 983040
001bf0  8b963610  add.s r13, r13, r3
001bf4  1738a802  sll.d r[17:18], r[17:18], r10
001bf8  17192601  or r18, r12, r18
001bfc  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001c00  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
001c04  1f088200  addli r16, r4, 64
001c08  00a00200  mfence { lm, gm }
001c0c  42800502  vload.mz vr0{mr1}, 0(r11)
001c10  86300000  vfp162float_l.rn vr1, vr0
001c14  06700000  vfp162float_h.rn vr0, vr0
001c18  4e101202  vstores_mask16.mz vr1{mr1}, 0(r4)
001c1c  0b125210  add.s r4, r4, r5
001c20  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
001c24  3f9ff6fe  blt.s r13, r15, -60
001c28  e3012f00  loadli.w r3,  16(r30)
001c2c  cba12100  ble.s r3, r2, 104
001c30  00530102  load_param_i r6, 2
001c34  ab730100  lui r7, 23
001c38  9f110000  addli r3, zero, 1
001c3c  1f028fd7  addli r4, r30, -5184
001c40  9f028000  addli r5, zero, 64
001c44  00a00000  mfence { lm }
001c48  1b335300  slli r6, r6, 5
001c4c  9f830300  addli r7, r7, 0
001c50  33050128  zext_int2long r[11:12], r2
001c54  2b0600f0  lui r12, 983040
001c58  17353502  sll.d r[11:12], r[11:12], r3
001c5c  1796c200  or r12, r5, r12
001c60  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001c64  7f264500  l_gm2lm r12, r4, 0(r[11:12])
001c68  1b352100  slli r10, r2, 2
001c6c  0b112310  add.s r2, r6, r2
001c70  00a00200  mfence { lm, gm }
001c74  42000202  vload.mz vr0{mr1}, 0(r4)
001c78  0b157510  add.s r10, r10, r7
001c7c  9f058500  addli r11, r10, 64
001c80  86300000  vfp162float_l.rn vr1, vr0
001c84  06700000  vfp162float_h.rn vr0, vr0
001c88  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001c8c  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
001c90  3f0ff1fe  blt.s r2, r15, -64
001c94  2bf10000  lui r2, 15
001c98  e3411f00  loadli.w r3,  12(r30)
001c9c  00a00300  mfence { lm, sm, gm }
001ca0  1b11f1ff  ori r2, r2, 4095
001ca4  80210104  csr_set csr3, r2
001ca8  00d00100  sync_group
001cac  cbd91122  ble.s r3, r1, 18036
001cb0  63032f00  loadli.w r6,  16(r30)
001cb4  e3432f00  loadli.w r7,  20(r30)
001cb8  9f088fd7  addli r17, r30, -5184
001cbc  1f150000  addli r10, zero, 1
001cc0  9f054000  addli r11, zero, 32
001cc4  1f767000  addli r12, zero, 63
001cc8  1f080002  addli r16, zero, 256
001ccc  1f090001  addli r18, zero, 128
001cd0  9f098000  addli r19, zero, 64
001cd4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001cd8  0b127310  add.s r4, r6, r7
001cdc  33010308  fix2float.rn r2, r6
001ce0  1b342300  slli r8, r6, 2
001ce4  9b321300  slli r5, r6, 1
001ce8  9bb42300  slli r9, r7, 2
001cec  1f72f2ff  addli r4, r4, -1
001cf0  670c2fd4  storeli.w r2, -5440(r30)
001cf4  1f014300  addli r2, r6, 32
001cf8  0b131411  add.s r6, r8, r17
001cfc  0b941211  add.s r8, r5, r17
001d00  67082fd4  storeli.w r2, -5504(r30)
001d04  1f0183ff  addli r2, r6, -64
001d08  2bf3ffff  lui r6, 1048575
001d0c  0b127230  div.s r4, r4, r7
001d10  67042fd4  storeli.w r2, -5568(r30)
001d14  1f0184ff  addli r2, r8, -64
001d18  9b16f3ff  ori r13, r6, 4095
001d1c  2b530100  lui r6, 21
001d20  67002fd4  storeli.w r2, -5632(r30)
001d24  1f010fd7  addli r2, r30, -5248
001d28  1f030300  addli r6, r6, 0
001d2c  00a00000  mfence { lm }
001d30  67045fd6  storeli.w r5, -5312(r30)
001d34  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001d38  5b080000  j 64
001d3c  6b510f00  load.d r[3:4], 0(r30)
001d40  00a00000  mfence { lm }
001d44  ab0800f0  lui r17, 983040
001d48  005a0102  load_param_i r20, 2
001d4c  e3028fd6  loadli.w r5,  -5312(r30)
001d50  8b101a10  add.s r1, r20, r1
001d54  8b237111  add.ul r[8:9], r[3:4], r[24:25]
001d58  1f018fd7  addli r2, r30, -5184
001d5c  97981201  or r17, r5, r17
001d60  ffb82300  s_lm2gm r17, r2, 0(r[8:9])
001d64  9f088fd7  addli r17, r30, -5184
001d68  00a00200  mfence { lm, gm }
001d6c  63411f00  loadli.w r2,  12(r30)
001d70  3fa02000  blt.s r1, r2, 8
001d74  dbb50800  j 17836
001d78  63011f00  loadli.w r2,  8(r30)
001d7c  8b932010  add.s r7, r1, r2
001d80  8b93f320  mul.s r7, r7, r15
001d84  b3930328  sext_int2long r[8:9], r7
001d88  97bba302  sll.d r[24:25], r[8:9], r10
001d8c  1f047fd6  addli r8, r30, -5320
001d90  ab0300f0  lui r7, 983040
001d94  6b510400  load.d r[3:4], 0(r8)
001d98  97937200  or r7, r5, r7
001d9c  0b2a7111  add.ul r[21:22], r[3:4], r[24:25]
001da0  ff231a01  l_gm2lm r7, r17, 0(r[21:22])
001da4  00a00200  mfence { lm, gm }
001da8  bff0b700  blt.s r15, r11, 60
001dac  e3030fd4  loadli.w r7,  -5632(r30)
001db0  63048fd4  loadli.w r8,  -5568(r30)
001db4  e3080fd5  loadli.w r17,  -5504(r30)
001db8  c2800302  vload.mz vr1{mr1}, 0(r7)
001dbc  9f88c8ff  addli r17, r17, -32
001dc0  9f0a84ff  addli r21, r8, -64
001dc4  9f8383ff  addli r7, r7, -64
001dc8  130a1605  setlt.u r20, r12, r17
001dcc  06f10000  vfp162float_h.rn vr2, vr1
001dd0  86b00000  vfp162float_l.rn vr1, vr1
001dd4  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
001dd8  1f0404ff  addli r8, r8, -128
001ddc  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
001de0  3b6f0afe  bneq r20, zero, -40
001de4  00a00000  mfence { lm }
001de8  bf17a200  blt.s r4, r10, 484
001dec  1f0d0000  addli r26, zero, 0
001df0  9f0c0000  addli r25, zero, 0
001df4  9f0d0000  addli r27, zero, 0
001df8  db0c0000  j 100
001dfc  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001e00  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001e04  9f9d0d00  addli r27, r27, 1
001e08  6a7108c0  vsrl.p vr2, r16, vr0
001e0c  ea7118c0  vsrl.p vr3, r16, vr1
001e10  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e14  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e18  6a7109c0  vsrl.p vr2, r18, vr0
001e1c  ea7119c0  vsrl.p vr3, r18, vr1
001e20  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e24  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e28  6af109c0  vsrl.p vr2, r19, vr0
001e2c  eaf119c0  vsrl.p vr3, r19, vr1
001e30  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e34  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e38  6af105c0  vsrl.p vr2, r11, vr0
001e3c  eaf115c0  vsrl.p vr3, r11, vr1
001e40  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e44  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e48  7a110040  vextracti.f r2, 0(vr0)
001e4c  fa910040  vextracti.f r3, 0(vr1)
001e50  0b6d2d10  add.f.rn r26, r26, r2
001e54  8bec3c10  add.f.rn r25, r25, r3
001e58  b7f54d00  beq r27, r4, 380
001e5c  9f830d00  addli r7, r27, 0
001e60  37300701  beq r14, r16, 12
001e64  97a3dd00  xor r7, r27, r13
001e68  8b137210  add.s r7, r4, r7
001e6c  1f010fd7  addli r2, r30, -5248
001e70  0b94e320  mul.s r8, r7, r14
001e74  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
001e78  0b948718  sub.s r8, r15, r8
001e7c  0b1ee440  min.s r28, r8, r14
001e80  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001e84  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001e88  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001e8c  bf4daefe  blt.s r28, r10, -144
001e90  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
001e94  1f0a0000  addli r20, zero, 0
001e98  8b9a7420  mul.s r21, r9, r7
001e9c  1f0b8fd7  addli r22, r30, -5184
001ea0  9f080300  addli r17, r6, 0
001ea4  92304002  vadd.s.mz vr1{mr1}, zero, vr4
001ea8  12314002  vadd.s.mz vr2{mr1}, zero, vr4
001eac  92314002  vadd.s.mz vr3{mr1}, zero, vr4
001eb0  0b945811  add.s r8, r17, r21
001eb4  8b135b11  add.s r7, r22, r21
001eb8  9f028400  addli r5, r8, 64
001ebc  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
001ec0  9f018401  addli r3, r8, 192
001ec4  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001ec8  1f818301  addli r2, r7, 192
001ecc  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
001ed0  9f020401  addli r5, r8, 128
001ed4  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
001ed8  9f818300  addli r3, r7, 64
001edc  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
001ee0  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
001ee4  9f820301  addli r5, r7, 128
001ee8  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
001eec  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
001ef0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001ef4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001ef8  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001efc  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001f00  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001f04  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001f08  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
001f0c  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001f10  9f018a00  addli r3, r20, 64
001f14  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001f18  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001f1c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001f20  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001f24  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001f28  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
001f2c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001f30  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001f34  4b2b3efe  ble.s r28, r3, -312
001f38  9f010402  addli r3, r8, 256
001f3c  9f028402  addli r5, r8, 320
001f40  1f810302  addli r2, r7, 256
001f44  1f0a0a01  addli r20, r20, 128
001f48  9f880804  addli r17, r17, 512
001f4c  1f0b0b04  addli r22, r22, 512
001f50  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
001f54  9f010403  addli r3, r8, 384
001f58  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
001f5c  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
001f60  9f828302  addli r5, r7, 320
001f64  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
001f68  9f018403  addli r3, r8, 448
001f6c  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
001f70  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
001f74  9f810303  addli r3, r7, 384
001f78  9f838303  addli r7, r7, 448
001f7c  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
001f80  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
001f84  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
001f88  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001f8c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001f90  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001f94  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001f98  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001f9c  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
001fa0  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
001fa4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001fa8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001fac  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
001fb0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001fb4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001fb8  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001fbc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001fc0  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
001fc4  bf3bcaff  blt.s r20, r28, -276
001fc8  dbc6ffff  j -460
001fcc  9f0c0000  addli r25, zero, 0
001fd0  1f0d0000  addli r26, zero, 0
001fd4  00a00000  mfence { lm }
001fd8  bf95a7fe  blt.s r15, r10, -668
001fdc  63018fd5  loadli.w r2,  -5440(r30)
001fe0  2b6b0100  lui r22, 22
001fe4  9f030000  addli r7, zero, 0
001fe8  9f0a8fd7  addli r21, r30, -5184
001fec  1f0b0b00  addli r22, r22, 0
001ff0  8f082d18  div.f.rn r17, r26, r2
001ff4  0f842c18  div.f.rn r8, r25, r2
001ff8  63013f00  loadli.w r2,  24(r30)
001ffc  ab7c0100  lui r25, 23
002000  9f8c0c00  addli r25, r25, 0
002004  0bea1821  mul.f.rn r20, r17, r17
002008  8be80858  neg.f r17, r17
00200c  0b644419  sub.f.rn r8, r8, r20
002010  1f0a8fd7  addli r20, r30, -5184
002014  0b642410  add.f.rn r8, r8, r2
002018  2b01803f  lui r2, 260096
00201c  0f040408  sqrt.f.rn r8, r8
002020  0f048118  div.f.rn r8, r2, r8
002024  c2100a02  vload_mask16.mz vr1{mr1}, 0(r20)
002028  1f0d8a00  addli r26, r20, 64
00202c  ca110b02  vloads_mask16.mz vr3{mr1}, 0(r22)
002030  4a920c02  vloads_mask16.mz vr4{mr1}, 0(r25)
002034  9f8d8c00  addli r27, r25, 64
002038  9f834300  addli r7, r7, 32
00203c  9f8c0c01  addli r25, r25, 128
002040  1f0a0a01  addli r20, r20, 128
002044  42110d02  vload_mask16.mz vr2{mr1}, 0(r26)
002048  1f0d8b00  addli r26, r22, 64
00204c  4a930d02  vloads_mask16.mz vr6{mr1}, 0(r27)
002050  1f0b0b01  addli r22, r22, 128
002054  ca120d02  vloads_mask16.mz vr5{mr1}, 0(r26)
002058  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
00205c  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
002060  8a101402  vmul.f.mz.rn vr1{mr1}, r8, vr1
002064  0a112402  vmul.f.mz.rn vr2{mr1}, r8, vr2
002068  26923002  vmac.f.mz.rn vr4{mr1}, vr1, vr3
00206c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002070  26135102  vmac.f.mz.rn vr6{mr1}, vr2, vr5
002074  86100200  vfloat2fp16_l.rn vr1, vr4
002078  86500300  vfloat2fp16_h.rn vr1, vr6
00207c  46801a02  vstore.mz vr1{mr1}, 0(r21)
002080  9f8a8a00  addli r21, r21, 64
002084  bf8ef3fe  blt.s r7, r15, -96
002088  db96ffff  j -844
00208c  e3002f00  loadli.w r1,  16(r30)
002090  1f010010  addli r2, zero, 2048
002094  bba02008  bneq r1, r2, 4136
002098  2ba30200  lui r6, 42
00209c  80300002  core_id r1
0020a0  1f030308  addli r6, r6, 1024
0020a4  3bd00000  bneq r1, zero, 20
0020a8  1f010040  addli r2, zero, 8192
0020ac  ab0100f0  lui r3, 983040
0020b0  17113100  or r2, r2, r3
0020b4  7f016200  l_gm2sm r2, r6, 0(r[5:6])
0020b8  2bf10000  lui r2, 15
0020bc  00200300  mfence { sm, gm }
0020c0  1b821000  andi r4, r1, 1
0020c4  9f020006  addli r5, zero, 768
0020c8  1b11f1ff  ori r2, r2, 4095
0020cc  80210104  csr_set csr3, r2
0020d0  1f010006  addli r2, zero, 768
0020d4  00d00100  sync_group
0020d8  37200200  beq r4, zero, 8
0020dc  9f02000a  addli r5, zero, 1280
0020e0  e3411f00  loadli.w r3,  12(r30)
0020e4  9f130000  addli r7, zero, 1
0020e8  bfe87120  blt.s r3, r7, 16952
0020ec  0b112220  mul.s r2, r4, r2
0020f0  1bc51000  srli r10, r1, 1
0020f4  abf0ffff  lui r1, 1048575
0020f8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0020fc  abca0200  lui r21, 44
002100  2bcd0200  lui r26, 44
002104  80510102  load_param_i r3, 2
002108  9f030000  addli r7, zero, 0
00210c  9bb52200  slli r11, r5, 2
002110  9f068fd7  addli r13, r30, -5184
002114  9f080002  addli r17, zero, 256
002118  1f090001  addli r18, zero, 128
00211c  9f098000  addli r19, zero, 64
002120  1f0a4000  addli r20, zero, 32
002124  9f0c0003  addli r25, zero, 384
002128  67082fd6  storeli.w r2, -5248(r30)
00212c  1f018fd6  addli r2, r30, -5312
002130  9b9000f8  ori r1, r1, 3968
002134  9bc41100  srli r9, r3, 1
002138  9f8a0a08  addli r21, r21, 1024
00213c  1f0d0d0c  addli r26, r26, 1536
002140  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002144  2bf10000  lui r2, 15
002148  670c1fd4  storeli.w r1, -5440(r30)
00214c  9f000800  addli r1, r16, 0
002150  1f080005  addli r16, zero, 640
002154  1b1bf1ff  ori r22, r2, 4095
002158  5b040000  j 32
00215c  00a00300  mfence { lm, sm, gm }
002160  80210b04  csr_set csr3, r22
002164  00d00100  sync_group
002168  e3401f00  loadli.w r1,  12(r30)
00216c  8b939310  add.s r7, r7, r9
002170  3fa01300  blt.s r7, r1, 8
002174  db4bfdff  j -5540
002178  0b91a310  add.s r2, r7, r10
00217c  cb8f20fe  ble.s r1, r2, -32
002180  e3001f00  loadli.w r1,  8(r30)
002184  0b111110  add.s r2, r2, r1
002188  e3000fd7  loadli.w r1,  -5248(r30)
00218c  1b31b100  slli r2, r2, 11
002190  17111100  or r2, r2, r1
002194  9f200000  addli r1, zero, 2
002198  33110128  sext_int2long r[3:4], r2
00219c  973d1102  sll.d r[28:29], r[3:4], r1
0021a0  9f007fd6  addli r1, r30, -5320
0021a4  2b0100f0  lui r2, 983040
0021a8  6bd70000  load.d r[15:16], 0(r1)
0021ac  17912500  or r2, r11, r2
0021b0  0b27b711  add.ul r[15:16], r[15:16], r[28:29]
0021b4  7f21d700  l_gm2lm r2, r13, 0(r[15:16])
0021b8  1f010000  addli r2, zero, 0
0021bc  00a00200  mfence { lm, gm }
0021c0  3b060200  bneq r4, zero, 384
0021c4  9f008fd6  addli r1, r30, -5312
0021c8  e3018fd5  loadli.w r3,  -5440(r30)
0021cc  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0021d0  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0021d4  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0021d8  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0021dc  0b176110  add.s r14, r2, r6
0021e0  0b962610  add.s r12, r13, r2
0021e4  9f810101  addli r3, r3, 128
0021e8  1f010104  addli r2, r2, 512
0021ec  9f000701  addli r1, r14, 128
0021f0  4a100702  vloads_mask16.mz vr0{mr1}, 0(r14)
0021f4  1f048700  addli r8, r14, 64
0021f8  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
0021fc  9f078601  addli r15, r12, 192
002200  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
002204  9f008701  addli r1, r14, 192
002208  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
00220c  1f048600  addli r8, r12, 64
002210  c2950702  vload_mask16.mz vr11{mr1}, 0(r15)
002214  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
002218  9f000601  addli r1, r12, 128
00221c  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
002220  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002224  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002228  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00222c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002230  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002234  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002238  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
00223c  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002240  9f000702  addli r1, r14, 256
002244  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002248  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00224c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002250  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002254  1f040603  addli r8, r12, 384
002258  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
00225c  9f008702  addli r1, r14, 320
002260  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
002264  9f070602  addli r15, r12, 256
002268  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00226c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
002270  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002274  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002278  9f000703  addli r1, r14, 384
00227c  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
002280  1f078703  addli r14, r14, 448
002284  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002288  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
00228c  9f008602  addli r1, r12, 320
002290  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
002294  1f068603  addli r12, r12, 448
002298  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00229c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0022a0  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0022a4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0022a8  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0022ac  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0022b0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0022b4  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
0022b8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0022bc  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0022c0  93800105  setlt.u r1, r3, r16
0022c4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0022c8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0022cc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0022d0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0022d4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0022d8  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0022dc  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0022e0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0022e4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0022e8  bbdb00fe  bneq r1, zero, -268
0022ec  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0022f0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0022f4  6af108c0  vsrl.p vr2, r17, vr0
0022f8  eaf118c0  vsrl.p vr3, r17, vr1
0022fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002300  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002304  6a7109c0  vsrl.p vr2, r18, vr0
002308  ea7119c0  vsrl.p vr3, r18, vr1
00230c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002310  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002314  6af109c0  vsrl.p vr2, r19, vr0
002318  eaf119c0  vsrl.p vr3, r19, vr1
00231c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002320  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002324  6a710ac0  vsrl.p vr2, r20, vr0
002328  ea711ac0  vsrl.p vr3, r20, vr1
00232c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002330  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002334  7a160040  vextracti.f r12, 0(vr0)
002338  7a910040  vextracti.f r2, 0(vr1)
00233c  db610000  j 780
002340  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002344  abf0ffff  lui r1, 1048575
002348  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00234c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002350  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002354  9b9100f8  ori r3, r1, 3968
002358  0b172310  add.s r14, r6, r2
00235c  0b962610  add.s r12, r13, r2
002360  9f810101  addli r3, r3, 128
002364  1f010104  addli r2, r2, 512
002368  9f000731  addli r1, r14, 6272
00236c  9f070730  addli r15, r14, 6144
002370  1f048731  addli r8, r14, 6336
002374  1f0c0618  addli r24, r12, 3072
002378  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
00237c  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
002380  9f078730  addli r15, r14, 6208
002384  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
002388  1f040619  addli r8, r12, 3200
00238c  9f008618  addli r1, r12, 3136
002390  42130c02  vload_mask16.mz vr6{mr1}, 0(r24)
002394  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
002398  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
00239c  9f078619  addli r15, r12, 3264
0023a0  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0023a4  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
0023a8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0023ac  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0023b0  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0023b4  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0023b8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0023bc  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0023c0  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
0023c4  1f040732  addli r8, r14, 6400
0023c8  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0023cc  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
0023d0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0023d4  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
0023d8  9f07061a  addli r15, r12, 3328
0023dc  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0023e0  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0023e4  9f00061b  addli r1, r12, 3456
0023e8  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0023ec  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0023f0  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
0023f4  1f048732  addli r8, r14, 6464
0023f8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0023fc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002400  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002404  1f040733  addli r8, r14, 6528
002408  1f078733  addli r14, r14, 6592
00240c  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
002410  1f04861a  addli r8, r12, 3392
002414  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
002418  1f06861b  addli r12, r12, 3520
00241c  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
002420  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
002424  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
002428  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00242c  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
002430  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002434  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002438  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
00243c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002440  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
002444  13849105  setlt.u r8, r3, r25
002448  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00244c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002450  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002454  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002458  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00245c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
002460  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
002464  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002468  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00246c  bb3b04fe  bneq r8, zero, -276
002470  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002474  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002478  abf0ffff  lui r1, 1048575
00247c  1f060000  addli r12, zero, 0
002480  1b9c00f8  ori r24, r1, 3968
002484  eaf118c0  vsrl.p vr3, r17, vr1
002488  6af108c0  vsrl.p vr2, r17, vr0
00248c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002490  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002494  ea7119c0  vsrl.p vr3, r18, vr1
002498  6a7109c0  vsrl.p vr2, r18, vr0
00249c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024a0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024a4  eaf119c0  vsrl.p vr3, r19, vr1
0024a8  6af109c0  vsrl.p vr2, r19, vr0
0024ac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024b0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024b4  ea711ac0  vsrl.p vr3, r20, vr1
0024b8  6a710ac0  vsrl.p vr2, r20, vr0
0024bc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024c4  fa910040  vextracti.f r3, 0(vr1)
0024c8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0024cc  7a110040  vextracti.f r2, 0(vr0)
0024d0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0024d4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0024d8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0024dc  8b17c310  add.s r15, r6, r12
0024e0  0b97c610  add.s r14, r13, r12
0024e4  1f0c0c01  addli r24, r24, 128
0024e8  1f060604  addli r12, r12, 512
0024ec  9f800718  addli r1, r15, 3072
0024f0  1f840719  addli r8, r15, 3200
0024f4  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
0024f8  9f0b8701  addli r23, r14, 192
0024fc  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002500  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
002504  9f808718  addli r1, r15, 3136
002508  1f848719  addli r8, r15, 3264
00250c  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
002510  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002514  9f000701  addli r1, r14, 128
002518  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
00251c  1f048700  addli r8, r14, 64
002520  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002524  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
002528  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00252c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002530  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002534  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002538  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
00253c  9f80071a  addli r1, r15, 3328
002540  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002544  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002548  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00254c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002550  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
002554  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002558  9f80871a  addli r1, r15, 3392
00255c  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
002560  9f0b0702  addli r23, r14, 256
002564  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002568  1f040703  addli r8, r14, 384
00256c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
002570  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002574  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002578  9f80071b  addli r1, r15, 3456
00257c  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
002580  9f87871b  addli r15, r15, 3520
002584  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002588  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00258c  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
002590  9f008702  addli r1, r14, 320
002594  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
002598  1f078703  addli r14, r14, 448
00259c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0025a0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0025a4  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0025a8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0025ac  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
0025b0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0025b4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0025b8  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
0025bc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0025c0  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0025c4  93000c05  setlt.u r1, r24, r16
0025c8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0025cc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0025d0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0025d4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0025d8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0025dc  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0025e0  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
0025e4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0025e8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0025ec  bbcb00fe  bneq r1, zero, -272
0025f0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0025f4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0025f8  6af108c0  vsrl.p vr2, r17, vr0
0025fc  eaf118c0  vsrl.p vr3, r17, vr1
002600  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002604  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002608  6a7109c0  vsrl.p vr2, r18, vr0
00260c  ea7119c0  vsrl.p vr3, r18, vr1
002610  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002614  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002618  6af109c0  vsrl.p vr2, r19, vr0
00261c  eaf119c0  vsrl.p vr3, r19, vr1
002620  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002624  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002628  6a710ac0  vsrl.p vr2, r20, vr0
00262c  ea711ac0  vsrl.p vr3, r20, vr1
002630  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002634  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002638  fa100040  vextracti.f r1, 0(vr0)
00263c  7a940040  vextracti.f r8, 0(vr1)
002640  0b661110  add.f.rn r12, r2, r1
002644  0be18110  add.f.rn r2, r3, r8
002648  8b809330  div.u r1, r7, r9
00264c  80310002  core_id r3
002650  9f078fd7  addli r15, r30, -5184
002654  1f0c0000  addli r24, zero, 0
002658  9bb06000  slli r1, r1, 6
00265c  9b800004  andi r1, r1, 64
002660  97903000  or r1, r1, r3
002664  9bb12000  slli r3, r1, 2
002668  9b80e007  andi r1, r1, 126
00266c  0b945111  add.s r8, r3, r21
002670  9bb02000  slli r1, r1, 2
002674  7360c400  stores.w r12, 0(r8)
002678  0b94a111  add.s r8, r3, r26
00267c  9b914100  ori r3, r3, 4
002680  73602400  stores.w r2, 0(r8)
002684  0b915111  add.s r2, r3, r21
002688  0b945011  add.s r8, r1, r21
00268c  8b91a111  add.s r3, r3, r26
002690  8b90a011  add.s r1, r1, r26
002694  00a00300  mfence { lm, sm, gm }
002698  80210b04  csr_set csr3, r22
00269c  00d00100  sync_group
0026a0  6f410100  loads.w r2, 0(r2)
0026a4  6f440400  loads.w r8, 0(r8)
0026a8  efc10100  loads.w r3, 0(r3)
0026ac  efc00000  loads.w r1, 0(r1)
0026b0  0b618110  add.f.rn r2, r2, r8
0026b4  8be01110  add.f.rn r1, r3, r1
0026b8  ab01003a  lui r3, 237568
0026bc  0b643120  mul.f.rn r8, r2, r3
0026c0  8be03020  mul.f.rn r1, r1, r3
0026c4  0b618420  mul.f.rn r2, r8, r8
0026c8  0b670458  neg.f r14, r8
0026cc  8be02018  sub.f.rn r1, r1, r2
0026d0  63013f00  loadli.w r2,  24(r30)
0026d4  8be02010  add.f.rn r1, r1, r2
0026d8  2b01803f  lui r2, 260096
0026dc  8f800008  sqrt.f.rn r1, r1
0026e0  0f061118  div.f.rn r12, r2, r1
0026e4  eb500f00  load.d r[2:3], 0(r30)
0026e8  0ba1b011  add.ul r[3:4], r[2:3], r[28:29]
0026ec  9f808700  addli r1, r15, 64
0026f0  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
0026f4  1f044c00  addli r8, r24, 32
0026f8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0026fc  13848206  setle.u r8, r5, r8
002700  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
002704  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
002708  0a100602  vmul.f.mz.rn vr0{mr1}, r12, vr0
00270c  8a101602  vmul.f.mz.rn vr1{mr1}, r12, vr1
002710  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
002714  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002718  bb700400  bneq r8, zero, 60
00271c  9f800701  addli r1, r15, 128
002720  1f848701  addli r8, r15, 192
002724  1f0c8c00  addli r24, r24, 64
002728  9f870702  addli r15, r15, 256
00272c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002730  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
002734  930b5c04  setlt.u r23, r24, r5
002738  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
00273c  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
002740  0a100602  vmul.f.mz.rn vr0{mr1}, r12, vr0
002744  8a101602  vmul.f.mz.rn vr1{mr1}, r12, vr1
002748  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00274c  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
002750  3bfe0bfe  bneq r23, zero, -100
002754  ab0000f0  lui r1, 983040
002758  00a00000  mfence { lm }
00275c  97901500  or r1, r11, r1
002760  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
002764  00a00200  mfence { lm, gm }
002768  5b40ffff  j -1536
00276c  80300002  core_id r1
002770  bb800000  bneq r1, zero, 32
002774  63012f00  loadli.w r2,  16(r30)
002778  ab0100f0  lui r3, 983040
00277c  1b311100  slli r2, r2, 1
002780  17113100  or r2, r2, r3
002784  abc10100  lui r3, 28
002788  9f810100  addli r3, r3, 0
00278c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002790  2bf10000  lui r2, 15
002794  e3411f00  loadli.w r3,  12(r30)
002798  00200300  mfence { sm, gm }
00279c  1b11f1ff  ori r2, r2, 4095
0027a0  80210104  csr_set csr3, r2
0027a4  00d00100  sync_group
0027a8  cbed111c  ble.s r3, r1, 15224
0027ac  63012f00  loadli.w r2,  16(r30)
0027b0  e3412f00  loadli.w r3,  20(r30)
0027b4  1f052000  addli r10, zero, 16
0027b8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0027bc  1f130000  addli r6, zero, 1
0027c0  9f040002  addli r9, zero, 256
0027c4  ab05ffff  lui r11, 1048560
0027c8  ab06807f  lui r13, 522240
0027cc  2b08c07f  lui r16, 523264
0027d0  9f080001  addli r17, zero, 128
0027d4  1f098000  addli r18, zero, 64
0027d8  9f094000  addli r19, zero, 32
0027dc  1b3b1100  slli r22, r2, 1
0027e0  0b123110  add.s r4, r2, r3
0027e4  33010108  fix2float.rn r2, r2
0027e8  67042fd4  storeli.w r2, -5568(r30)
0027ec  1f71f2ff  addli r2, r4, -1
0027f0  1bb21100  slli r4, r3, 1
0027f4  67086fd5  storeli.w r22, -5504(r30)
0027f8  8b123130  div.s r5, r2, r3
0027fc  2bf1ffff  lui r2, 1048575
002800  9f018fd7  addli r3, r30, -5184
002804  1b14f1ff  ori r8, r2, 4095
002808  1f010fd7  addli r2, r30, -5248
00280c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002810  6a200522  vor.u.mz vr0{mr1}, r10, vr0
002814  1f018fd6  addli r2, r30, -5312
002818  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00281c  2b710000  lui r2, 7
002820  1b16f1ff  ori r12, r2, 4095
002824  db080000  j 68
002828  9f038fd5  addli r7, r30, -5440
00282c  6b510f00  load.d r[3:4], 0(r30)
002830  6bda0300  load.d r[21:22], 0(r7)
002834  00a00000  mfence { lm }
002838  80530102  load_param_i r7, 2
00283c  630b0fd5  loadli.w r22,  -5504(r30)
002840  8b901310  add.s r1, r7, r1
002844  0b2a4111  add.ul r[21:22], r[3:4], r[21:22]
002848  2b0100f0  lui r2, 983040
00284c  9f018fd7  addli r3, r30, -5184
002850  17112b00  or r2, r22, r2
002854  7f313a00  s_lm2gm r2, r3, 0(r[21:22])
002858  00a00200  mfence { lm, gm }
00285c  63411f00  loadli.w r2,  12(r30)
002860  3fa02000  blt.s r1, r2, 8
002864  db570700  j 15036
002868  63011f00  loadli.w r2,  8(r30)
00286c  9f037fd6  addli r7, r30, -5320
002870  0b912010  add.s r2, r1, r2
002874  0b11f120  mul.s r2, r2, r15
002878  331a0128  sext_int2long r[21:22], r2
00287c  2b0100f0  lui r2, 983040
002880  973b6a02  sll.d r[24:25], r[21:22], r6
002884  6bda0300  load.d r[21:22], 0(r7)
002888  17112b00  or r2, r22, r2
00288c  9f038fd5  addli r7, r30, -5440
002890  73b07301  store.d r[24:25], 0(r7)
002894  0b2a7a11  add.ul r[21:22], r[21:22], r[24:25]
002898  7f213a00  l_gm2lm r2, r3, 0(r[21:22])
00289c  00a00200  mfence { lm, gm }
0028a0  bfdc6200  blt.s r5, r6, 820
0028a4  9f0c0000  addli r25, zero, 0
0028a8  1f0c0000  addli r24, zero, 0
0028ac  1f0d0000  addli r26, zero, 0
0028b0  db0c0000  j 100
0028b4  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0028b8  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0028bc  1f1d0d00  addli r26, r26, 1
0028c0  6af104c0  vsrl.p vr2, r9, vr0
0028c4  eaf114c0  vsrl.p vr3, r9, vr1
0028c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028d0  6af108c0  vsrl.p vr2, r17, vr0
0028d4  eaf118c0  vsrl.p vr3, r17, vr1
0028d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028e0  6a7109c0  vsrl.p vr2, r18, vr0
0028e4  ea7119c0  vsrl.p vr3, r18, vr1
0028e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028f0  6af109c0  vsrl.p vr2, r19, vr0
0028f4  eaf119c0  vsrl.p vr3, r19, vr1
0028f8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028fc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002900  7a110040  vextracti.f r2, 0(vr0)
002904  fa910040  vextracti.f r3, 0(vr1)
002908  8bec2c10  add.f.rn r25, r25, r2
00290c  0b6c3c10  add.f.rn r24, r24, r3
002910  373b5d00  beq r26, r5, 716
002914  1f010d00  addli r2, r26, 0
002918  37309700  beq r14, r9, 12
00291c  17218d00  xor r2, r26, r8
002920  0b912210  add.s r2, r5, r2
002924  9f010fd7  addli r3, r30, -5248
002928  8b13e120  mul.s r7, r2, r14
00292c  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
002930  8b937718  sub.s r7, r15, r7
002934  8b9de340  min.s r27, r7, r14
002938  92322002  vadd.s.mz vr5{mr1}, zero, vr2
00293c  12322002  vadd.s.mz vr4{mr1}, zero, vr2
002940  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002944  bfcd6dfe  blt.s r27, r6, -144
002948  0b1a2220  mul.s r20, r4, r2
00294c  1f010fd7  addli r2, r30, -5248
002950  abca0100  lui r21, 28
002954  1f0e0000  addli r28, zero, 0
002958  9f038fd7  addli r7, r30, -5184
00295c  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
002960  9f8a0a00  addli r21, r21, 0
002964  12315002  vadd.s.mz vr2{mr1}, zero, vr5
002968  92315002  vadd.s.mz vr3{mr1}, zero, vr5
00296c  12325002  vadd.s.mz vr4{mr1}, zero, vr5
002970  0b9b4a11  add.s r22, r21, r20
002974  0b914311  add.s r2, r7, r20
002978  9f018fd6  addli r3, r30, -5312
00297c  4a030b02  vloads.mz vr6{mr1}, 0(r22)
002980  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002984  c2030102  vload.mz vr7{mr1}, 0(r2)
002988  9f010fd7  addli r3, r30, -5248
00298c  9f0b8b00  addli r23, r22, 64
002990  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
002994  9f018e00  addli r3, r28, 64
002998  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
00299c  6ab57502  vand.s.mz vr10{mr1}, r11, vr7
0029a0  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0029a4  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
0029a8  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0029ac  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0029b0  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0029b4  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0029b8  669503c0  vabs.f vr10, vr7
0029bc  6a348302  vand.s.mz vr8{mr1}, r6, vr8
0029c0  ea349302  vand.s.mz vr9{mr1}, r6, vr9
0029c4  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
0029c8  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
0029cc  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
0029d0  12348602  vadd.s.mz vr8{mr1}, r12, vr8
0029d4  92349602  vadd.s.mz vr9{mr1}, r12, vr9
0029d8  eab38502  vand.s.mz vr7{mr1}, r11, vr8
0029dc  661403c0  vabs.f vr8, vr6
0029e0  6ab39502  vand.s.mz vr6{mr1}, r11, vr9
0029e4  ea230834  vor.u.mh vr7{mr2}, r16, vr0
0029e8  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
0029ec  6a230834  vor.u.mh vr6{mr2}, r16, vr0
0029f0  4a840b02  vloads.mz vr8{mr1}, 0(r23)
0029f4  9f0b8100  addli r23, r2, 64
0029f8  c2840b02  vload.mz vr9{mr1}, 0(r23)
0029fc  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
002a00  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
002a04  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002a08  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
002a0c  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002a10  46007102  vstore.mz vr7{mr1}, 0(r2)
002a14  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002a18  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002a1c  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
002a20  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
002a24  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002a28  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002a2c  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002a30  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
002a34  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
002a38  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
002a3c  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
002a40  ea349302  vand.s.mz vr9{mr1}, r6, vr9
002a44  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002a48  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
002a4c  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
002a50  661505c0  vabs.f vr10, vr10
002a54  661404c0  vabs.f vr8, vr8
002a58  92349602  vadd.s.mz vr9{mr1}, r12, vr9
002a5c  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002a60  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
002a64  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002a68  6ab5b502  vand.s.mz vr10{mr1}, r11, vr11
002a6c  ea240834  vor.u.mh vr9{mr2}, r16, vr0
002a70  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
002a74  6a250834  vor.u.mh vr10{mr2}, r16, vr0
002a78  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
002a7c  eab4a502  vand.s.mz vr9{mr1}, r11, vr10
002a80  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
002a84  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002a88  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002a8c  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
002a90  46808b02  vstore.mz vr8{mr1}, 0(r23)
002a94  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002a98  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002a9c  4be83dfe  ble.s r27, r3, -488
002aa0  9f010b01  addli r3, r22, 128
002aa4  9f0b0101  addli r23, r2, 128
002aa8  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
002aac  1f018101  addli r2, r2, 192
002ab0  1f0e0e01  addli r28, r28, 128
002ab4  9f8a0a02  addli r21, r21, 256
002ab8  9f830302  addli r7, r7, 256
002abc  6a237522  vor.u.mz vr6{mr1}, r10, vr7
002ac0  4a840102  vloads.mz vr8{mr1}, 0(r3)
002ac4  c2840b02  vload.mz vr9{mr1}, 0(r23)
002ac8  9f018b01  addli r3, r22, 192
002acc  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
002ad0  6ab09502  vand.s.mz vr0{mr1}, r11, vr9
002ad4  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
002ad8  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002adc  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
002ae0  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
002ae4  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
002ae8  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
002aec  e69504c0  vabs.f vr11, vr9
002af0  6a300302  vand.s.mz vr0{mr1}, r6, vr0
002af4  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002af8  72a1b642  vlt.u.mz mr2{mr1}, r13, vr11
002afc  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
002b00  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
002b04  12300602  vadd.s.mz vr0{mr1}, r12, vr0
002b08  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002b0c  eab40502  vand.s.mz vr9{mr1}, r11, vr0
002b10  661004c0  vabs.f vr0, vr8
002b14  6ab4a502  vand.s.mz vr8{mr1}, r11, vr10
002b18  ea247834  vor.u.mh vr9{mr2}, r16, vr7
002b1c  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002b20  6a247834  vor.u.mh vr8{mr2}, r16, vr7
002b24  4a800102  vloads.mz vr0{mr1}, 0(r3)
002b28  42050102  vload.mz vr10{mr1}, 0(r2)
002b2c  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
002b30  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
002b34  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002b38  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
002b3c  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002b40  46809b02  vstore.mz vr9{mr1}, 0(r23)
002b44  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
002b48  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
002b4c  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
002b50  6ab00502  vand.s.mz vr0{mr1}, r11, vr0
002b54  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
002b58  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
002b5c  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
002b60  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
002b64  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002b68  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002b6c  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
002b70  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
002b74  e69000c0  vabs.f vr1, vr1
002b78  661000c0  vabs.f vr0, vr0
002b7c  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002b80  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002b84  72a11642  vlt.u.mz mr2{mr1}, r13, vr1
002b88  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002b8c  eab0b502  vand.s.mz vr1{mr1}, r11, vr11
002b90  6a257834  vor.u.mh vr10{mr2}, r16, vr7
002b94  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002b98  ea207834  vor.u.mh vr1{mr2}, r16, vr7
002b9c  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
002ba0  eab31502  vand.s.mz vr7{mr1}, r11, vr1
002ba4  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
002ba8  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
002bac  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002bb0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002bb4  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
002bb8  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
002bbc  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
002bc0  46000102  vstore.mz vr0{mr1}, 0(r2)
002bc4  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002bc8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002bcc  bf16beff  blt.s r28, r27, -604
002bd0  db9cffff  j -796
002bd4  1f0c0000  addli r24, zero, 0
002bd8  9f0c0000  addli r25, zero, 0
002bdc  00a00000  mfence { lm }
002be0  3fa167fe  blt.s r15, r6, -952
002be4  63018fd4  loadli.w r2,  -5568(r30)
002be8  e3013f00  loadli.w r3,  24(r30)
002bec  9f0a0000  addli r21, zero, 0
002bf0  8f832c18  div.f.rn r7, r25, r2
002bf4  0f012c18  div.f.rn r2, r24, r2
002bf8  0bea7320  mul.f.rn r20, r7, r7
002bfc  8be30358  neg.f r7, r7
002c00  0b614119  sub.f.rn r2, r2, r20
002c04  1f0a8fd7  addli r20, r30, -5184
002c08  0b613110  add.f.rn r2, r2, r3
002c0c  ab01803f  lui r3, 260096
002c10  0f010108  sqrt.f.rn r2, r2
002c14  0f812118  div.f.rn r2, r3, r2
002c18  42020a02  vload.mz vr4{mr1}, 0(r20)
002c1c  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
002c20  1f8b4a00  addli r22, r21, 32
002c24  ea212522  vor.u.mz vr3{mr1}, r10, vr2
002c28  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002c2c  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002c30  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002c34  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002c38  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002c3c  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002c40  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002c44  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002c48  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002c4c  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002c50  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002c54  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002c58  e69202c0  vabs.f vr5, vr5
002c5c  661202c0  vabs.f vr4, vr4
002c60  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002c64  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002c68  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002c6c  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002c70  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002c74  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002c78  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002c7c  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002c80  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
002c84  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
002c88  46004a02  vstore.mz vr4{mr1}, 0(r20)
002c8c  4bfe67fd  ble.s r15, r22, -1124
002c90  1f0b8a00  addli r22, r20, 64
002c94  9f8a8a00  addli r21, r21, 64
002c98  1f0a0a01  addli r20, r20, 128
002c9c  42020b02  vload.mz vr4{mr1}, 0(r22)
002ca0  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002ca4  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002ca8  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002cac  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002cb0  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002cb4  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002cb8  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002cbc  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002cc0  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002cc4  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002cc8  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002ccc  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002cd0  e69202c0  vabs.f vr5, vr5
002cd4  661202c0  vabs.f vr4, vr4
002cd8  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002cdc  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002ce0  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002ce4  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002ce8  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002cec  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002cf0  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002cf4  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002cf8  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
002cfc  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
002d00  46002b02  vstore.mz vr2{mr1}, 0(r22)
002d04  3fdcfafe  blt.s r21, r15, -236
002d08  5b64ffff  j -1248
002d0c  80300002  core_id r1
002d10  bb800000  bneq r1, zero, 32
002d14  63012f00  loadli.w r2,  16(r30)
002d18  ab0100f0  lui r3, 983040
002d1c  1b311100  slli r2, r2, 1
002d20  17113100  or r2, r2, r3
002d24  ab010200  lui r3, 32
002d28  9f810100  addli r3, r3, 0
002d2c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002d30  2bf10000  lui r2, 15
002d34  e3411f00  loadli.w r3,  12(r30)
002d38  00200300  mfence { sm, gm }
002d3c  1b11f1ff  ori r2, r2, 4095
002d40  80210104  csr_set csr3, r2
002d44  00d00100  sync_group
002d48  4be7111a  ble.s r3, r1, 13784
002d4c  e3012f00  loadli.w r3,  16(r30)
002d50  e3422f00  loadli.w r5,  20(r30)
002d54  2bf4ffff  lui r8, 1048575
002d58  2b080200  lui r16, 32
002d5c  9f068fd7  addli r13, r30, -5184
002d60  9f040002  addli r9, zero, 256
002d64  1f050001  addli r10, zero, 128
002d68  9f058000  addli r11, zero, 64
002d6c  1f064000  addli r12, zero, 32
002d70  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002d74  1b14f4ff  ori r8, r8, 4095
002d78  1f080800  addli r16, r16, 0
002d7c  0b925110  add.s r4, r3, r5
002d80  1bb11100  slli r2, r3, 1
002d84  b3810108  fix2float.rn r3, r3
002d88  1f73f2ff  addli r6, r4, -1
002d8c  1bb21200  slli r4, r5, 1
002d90  8b125330  div.s r5, r6, r5
002d94  1f130000  addli r6, zero, 1
002d98  5b070000  j 56
002d9c  eb590f00  load.d r[20:21], 0(r30)
002da0  9f068fd7  addli r13, r30, -5184
002da4  00a00000  mfence { lm }
002da8  8ba81911  add.ul r[18:19], r[20:21], r[18:19]
002dac  ab0900f0  lui r19, 983040
002db0  005a0102  load_param_i r20, 2
002db4  97193101  or r19, r2, r19
002db8  8b101a10  add.s r1, r20, r1
002dbc  ffb9d800  s_lm2gm r19, r13, 0(r[18:19])
002dc0  00a00200  mfence { lm, gm }
002dc4  e3431f00  loadli.w r7,  12(r30)
002dc8  3fa07000  blt.s r1, r7, 8
002dcc  dbaa0600  j 13652
002dd0  e3031f00  loadli.w r7,  8(r30)
002dd4  ab0900f0  lui r19, 983040
002dd8  97193101  or r19, r2, r19
002ddc  8b987010  add.s r17, r1, r7
002de0  9f037fd6  addli r7, r30, -5320
002de4  8b98f820  mul.s r17, r17, r15
002de8  6bda0300  load.d r[21:22], 0(r7)
002dec  b3980828  sext_int2long r[18:19], r17
002df0  97b86802  sll.d r[18:19], r[18:19], r6
002df4  0b2a1a11  add.ul r[21:22], r[21:22], r[18:19]
002df8  ff29da00  l_gm2lm r19, r13, 0(r[21:22])
002dfc  00a00200  mfence { lm, gm }
002e00  3fc76200  blt.s r5, r6, 464
002e04  1f0a0000  addli r20, zero, 0
002e08  9f090000  addli r19, zero, 0
002e0c  9f0a0000  addli r21, zero, 0
002e10  db0c0000  j 100
002e14  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
002e18  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002e1c  9f9a0a00  addli r21, r21, 1
002e20  6af134c0  vsrl.p vr2, r9, vr3
002e24  6af214c0  vsrl.p vr4, r9, vr1
002e28  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
002e2c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e30  ea7125c0  vsrl.p vr3, r10, vr2
002e34  6a7215c0  vsrl.p vr4, r10, vr1
002e38  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e3c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e40  eaf125c0  vsrl.p vr3, r11, vr2
002e44  6af215c0  vsrl.p vr4, r11, vr1
002e48  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e4c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e50  ea7126c0  vsrl.p vr3, r12, vr2
002e54  6a7216c0  vsrl.p vr4, r12, vr1
002e58  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e5c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e60  fa130140  vextracti.f r7, 0(vr2)
002e64  fa960040  vextracti.f r13, 0(vr1)
002e68  0b6a7a10  add.f.rn r20, r20, r7
002e6c  8be9d910  add.f.rn r19, r19, r13
002e70  b7a55a00  beq r21, r5, 360
002e74  1f8c0a00  addli r24, r21, 0
002e78  37309700  beq r14, r9, 12
002e7c  17ab8a00  xor r22, r21, r8
002e80  0b9c6211  add.s r24, r5, r22
002e84  0b1bec20  mul.s r22, r24, r14
002e88  12320002  vadd.s.mz vr4{mr1}, zero, vr0
002e8c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
002e90  12310002  vadd.s.mz vr2{mr1}, zero, vr0
002e94  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002e98  0b9b6719  sub.s r22, r15, r22
002e9c  0b1beb40  min.s r22, r22, r14
002ea0  bf5d6bfe  blt.s r22, r6, -140
002ea4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002ea8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
002eac  92310002  vadd.s.mz vr3{mr1}, zero, vr0
002eb0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
002eb4  9f0b0000  addli r23, zero, 0
002eb8  0b1c8221  mul.s r24, r4, r24
002ebc  9f0c8fd7  addli r25, r30, -5184
002ec0  1f0d0800  addli r26, r16, 0
002ec4  8b1d8d11  add.s r27, r26, r24
002ec8  9f838b00  addli r7, r23, 64
002ecc  ca820d02  vloads.mz vr5{mr1}, 0(r27)
002ed0  1f8e8d00  addli r28, r27, 64
002ed4  4a030e02  vloads.mz vr6{mr1}, 0(r28)
002ed8  0b9e8c11  add.s r28, r25, r24
002edc  c2030e02  vload.mz vr7{mr1}, 0(r28)
002ee0  9f068e00  addli r13, r28, 64
002ee4  42840602  vload.mz vr8{mr1}, 0(r13)
002ee8  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
002eec  92320002  vadd.s.mz vr5{mr1}, zero, vr0
002ef0  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
002ef4  06b40300  vfp162float_l.rn vr8, vr7
002ef8  86f30300  vfp162float_h.rn vr7, vr7
002efc  86340300  vfp162float_l.rn vr9, vr6
002f00  06730300  vfp162float_h.rn vr6, vr6
002f04  86120400  vfloat2fp16_l.rn vr5, vr8
002f08  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
002f0c  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
002f10  12340002  vadd.s.mz vr8{mr1}, zero, vr0
002f14  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
002f18  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
002f1c  06940400  vfloat2fp16_l.rn vr8, vr9
002f20  86d20300  vfloat2fp16_h.rn vr5, vr7
002f24  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002f28  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002f2c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
002f30  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002f34  06540300  vfloat2fp16_h.rn vr8, vr6
002f38  46005e02  vstore.mz vr5{mr1}, 0(r28)
002f3c  46808602  vstore.mz vr8{mr1}, 0(r13)
002f40  4b5b7bfe  ble.s r22, r7, -300
002f44  9f830d01  addli r7, r27, 128
002f48  9f060e01  addli r13, r28, 128
002f4c  9f8b0b01  addli r23, r23, 128
002f50  1f0d0d02  addli r26, r26, 256
002f54  9f8c0c02  addli r25, r25, 256
002f58  ca820302  vloads.mz vr5{mr1}, 0(r7)
002f5c  9f838d01  addli r7, r27, 192
002f60  c2830602  vload.mz vr7{mr1}, 0(r13)
002f64  4a830302  vloads.mz vr6{mr1}, 0(r7)
002f68  9f038e01  addli r7, r28, 192
002f6c  42840302  vload.mz vr8{mr1}, 0(r7)
002f70  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
002f74  92320002  vadd.s.mz vr5{mr1}, zero, vr0
002f78  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
002f7c  12330002  vadd.s.mz vr6{mr1}, zero, vr0
002f80  86b40300  vfp162float_l.rn vr9, vr7
002f84  86f30300  vfp162float_h.rn vr7, vr7
002f88  86920400  vfloat2fp16_l.rn vr5, vr9
002f8c  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002f90  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002f94  86340400  vfp162float_l.rn vr9, vr8
002f98  06740400  vfp162float_h.rn vr8, vr8
002f9c  06930400  vfloat2fp16_l.rn vr6, vr9
002fa0  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
002fa4  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
002fa8  86d20300  vfloat2fp16_h.rn vr5, vr7
002fac  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002fb0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002fb4  06530400  vfloat2fp16_h.rn vr6, vr8
002fb8  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
002fbc  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002fc0  46805602  vstore.mz vr5{mr1}, 0(r13)
002fc4  46806302  vstore.mz vr6{mr1}, 0(r7)
002fc8  bffb6bff  blt.s r23, r22, -260
002fcc  5bc9ffff  j -440
002fd0  9f090000  addli r19, zero, 0
002fd4  1f0a0000  addli r20, zero, 0
002fd8  00a00000  mfence { lm }
002fdc  3f8767fe  blt.s r15, r6, -576
002fe0  0f0a3a18  div.f.rn r20, r20, r3
002fe4  8f893918  div.f.rn r19, r19, r3
002fe8  e3033f00  loadli.w r7,  24(r30)
002fec  1f0b0000  addli r22, zero, 0
002ff0  8b6a4a21  mul.f.rn r21, r20, r20
002ff4  0b6a0a58  neg.f r20, r20
002ff8  8be95919  sub.f.rn r19, r19, r21
002ffc  9f0a8fd7  addli r21, r30, -5184
003000  8be97910  add.f.rn r19, r19, r7
003004  ab03803f  lui r7, 260096
003008  8f890908  sqrt.f.rn r19, r19
00300c  8f893319  div.f.rn r19, r7, r19
003010  c2800a02  vload.mz vr1{mr1}, 0(r21)
003014  9f0b4b00  addli r23, r22, 32
003018  06b10000  vfp162float_l.rn vr2, vr1
00301c  86f00000  vfp162float_h.rn vr1, vr1
003020  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003024  92111a02  vadd.f.mz.rn vr3{mr1}, r20, vr1
003028  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00302c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003030  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
003034  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003038  06120100  vfloat2fp16_l.rn vr4, vr2
00303c  06d20100  vfloat2fp16_h.rn vr4, vr3
003040  46804a02  vstore.mz vr4{mr1}, 0(r21)
003044  4be577ff  ble.s r15, r23, -680
003048  9f8b8a00  addli r23, r21, 64
00304c  1f0b8b00  addli r22, r22, 64
003050  9f8a0a01  addli r21, r21, 128
003054  42810b02  vload.mz vr2{mr1}, 0(r23)
003058  86310100  vfp162float_l.rn vr3, vr2
00305c  06710100  vfp162float_h.rn vr2, vr2
003060  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
003064  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003068  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
00306c  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
003070  86900100  vfloat2fp16_l.rn vr1, vr3
003074  86500100  vfloat2fp16_h.rn vr1, vr2
003078  46801b02  vstore.mz vr1{mr1}, 0(r23)
00307c  3f5efbfe  blt.s r22, r15, -108
003080  dba3ffff  j -740
003084  80300002  core_id r1
003088  1f210000  addli r2, zero, 2
00308c  37ba2016  beq r1, r2, 11916
003090  1f110000  addli r2, zero, 1
003094  37bc2012  beq r1, r2, 9996
003098  3bfa0016  bneq r1, zero, 11932
00309c  63012f00  loadli.w r2,  16(r30)
0030a0  ab0100f0  lui r3, 983040
0030a4  1b312100  slli r2, r2, 2
0030a8  17113100  or r2, r2, r3
0030ac  ab710200  lui r3, 39
0030b0  9f810108  addli r3, r3, 1024
0030b4  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0030b8  dbcf0500  j 11900
0030bc  80300002  core_id r1
0030c0  bb800000  bneq r1, zero, 32
0030c4  63012f00  loadli.w r2,  16(r30)
0030c8  ab0100f0  lui r3, 983040
0030cc  1b312100  slli r2, r2, 2
0030d0  17113100  or r2, r2, r3
0030d4  abd10200  lui r3, 45
0030d8  9f8101f0  addli r3, r3, -2048
0030dc  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0030e0  2bf10000  lui r2, 15
0030e4  e3411f00  loadli.w r3,  12(r30)
0030e8  00200300  mfence { sm, gm }
0030ec  1b11f1ff  ori r2, r2, 4095
0030f0  80210104  csr_set csr3, r2
0030f4  00d00100  sync_group
0030f8  cba81118  ble.s r3, r1, 12840
0030fc  e3012f00  loadli.w r3,  16(r30)
003100  e3422f00  loadli.w r5,  20(r30)
003104  abf4ffff  lui r9, 1048575
003108  abd80200  lui r17, 45
00310c  1f0b8fd7  addli r22, r30, -5184
003110  1f140000  addli r8, zero, 1
003114  1f050002  addli r10, zero, 256
003118  9f050001  addli r11, zero, 128
00311c  1f068000  addli r12, zero, 64
003120  9f064000  addli r13, zero, 32
003124  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003128  9b94f4ff  ori r9, r9, 4095
00312c  9f8808f0  addli r17, r17, -2048
003130  0b925110  add.s r4, r3, r5
003134  1bb12100  slli r2, r3, 2
003138  b3810108  fix2float.rn r3, r3
00313c  1f73f2ff  addli r6, r4, -1
003140  1bb22200  slli r4, r5, 2
003144  67043fd6  storeli.w r3, -5312(r30)
003148  9f010fd7  addli r3, r30, -5248
00314c  8b125330  div.s r5, r6, r5
003150  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003154  5b070000  j 56
003158  6b530f00  load.d r[7:8], 0(r30)
00315c  2b0800f0  lui r16, 983040
003160  1f0b8fd7  addli r22, r30, -5184
003164  00a00000  mfence { lm }
003168  005a0102  load_param_i r20, 2
00316c  17180101  or r16, r2, r16
003170  8b101a10  add.s r1, r20, r1
003174  0b292311  add.ul r[19:20], r[7:8], r[19:20]
003178  7f386901  s_lm2gm r16, r22, 0(r[19:20])
00317c  00a00200  mfence { lm, gm }
003180  e3411f00  loadli.w r3,  12(r30)
003184  3fa03000  blt.s r1, r3, 8
003188  5b330600  j 12696
00318c  e3011f00  loadli.w r3,  8(r30)
003190  0b983010  add.s r16, r1, r3
003194  9f210000  addli r3, zero, 2
003198  0b18f820  mul.s r16, r16, r15
00319c  33190828  sext_int2long r[19:20], r16
0031a0  2b0800f0  lui r16, 983040
0031a4  17393902  sll.d r[19:20], r[19:20], r3
0031a8  9f017fd6  addli r3, r30, -5320
0031ac  17180101  or r16, r2, r16
0031b0  6bd30100  load.d r[7:8], 0(r3)
0031b4  0b2a2311  add.ul r[21:22], r[7:8], r[19:20]
0031b8  7f286a01  l_gm2lm r16, r22, 0(r[21:22])
0031bc  00a00200  mfence { lm, gm }
0031c0  bf978200  blt.s r5, r8, 484
0031c4  9f0a0000  addli r21, zero, 0
0031c8  1f0a0000  addli r20, zero, 0
0031cc  1f0b0000  addli r22, zero, 0
0031d0  db0c0000  j 100
0031d4  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
0031d8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0031dc  1f1b0b00  addli r22, r22, 1
0031e0  6a7105c0  vsrl.p vr2, r10, vr0
0031e4  ea7115c0  vsrl.p vr3, r10, vr1
0031e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0031ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0031f0  6af105c0  vsrl.p vr2, r11, vr0
0031f4  eaf115c0  vsrl.p vr3, r11, vr1
0031f8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0031fc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003200  6a7106c0  vsrl.p vr2, r12, vr0
003204  ea7116c0  vsrl.p vr3, r12, vr1
003208  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00320c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003210  6af106c0  vsrl.p vr2, r13, vr0
003214  eaf116c0  vsrl.p vr3, r13, vr1
003218  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00321c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003220  fa110040  vextracti.f r3, 0(vr0)
003224  7a930040  vextracti.f r6, 0(vr1)
003228  8bea3a10  add.f.rn r21, r21, r3
00322c  0b6a6a10  add.f.rn r20, r20, r6
003230  b7755b00  beq r22, r5, 380
003234  1f080b00  addli r16, r22, 0
003238  3730a700  beq r14, r10, 12
00323c  17289b00  xor r16, r22, r9
003240  0b980211  add.s r16, r5, r16
003244  9f010fd7  addli r3, r30, -5248
003248  8b1be820  mul.s r23, r16, r14
00324c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
003250  8b9b7719  sub.s r23, r15, r23
003254  8b9beb40  min.s r23, r23, r14
003258  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00325c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003260  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003264  bfcd8bfe  blt.s r23, r8, -144
003268  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
00326c  1f0c0000  addli r24, zero, 0
003270  8b1c0221  mul.s r25, r4, r16
003274  1f0d8fd7  addli r26, r30, -5184
003278  9f8d0800  addli r27, r17, 0
00327c  92304002  vadd.s.mz vr1{mr1}, zero, vr4
003280  12314002  vadd.s.mz vr2{mr1}, zero, vr4
003284  92314002  vadd.s.mz vr3{mr1}, zero, vr4
003288  0b989d11  add.s r16, r27, r25
00328c  0b1e9d11  add.s r28, r26, r25
003290  1f038800  addli r6, r16, 64
003294  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
003298  9f038801  addli r7, r16, 192
00329c  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
0032a0  9f018e01  addli r3, r28, 192
0032a4  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0032a8  1f030801  addli r6, r16, 128
0032ac  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
0032b0  9f030e01  addli r7, r28, 128
0032b4  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0032b8  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
0032bc  c2950302  vload_mask16.mz vr11{mr1}, 0(r7)
0032c0  1f038e00  addli r6, r28, 64
0032c4  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0032c8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0032cc  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0032d0  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0032d4  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0032d8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0032dc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0032e0  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
0032e4  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0032e8  1f038c00  addli r6, r24, 64
0032ec  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0032f0  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0032f4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0032f8  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0032fc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003300  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
003304  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
003308  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00330c  4bab6bfe  ble.s r23, r6, -312
003310  1f030802  addli r6, r16, 256
003314  9f038802  addli r7, r16, 320
003318  9f010e02  addli r3, r28, 256
00331c  1f0c0c01  addli r24, r24, 128
003320  9f8d0d04  addli r27, r27, 512
003324  1f0d0d04  addli r26, r26, 512
003328  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
00332c  1f030803  addli r6, r16, 384
003330  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
003334  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
003338  9f038e02  addli r7, r28, 320
00333c  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
003340  1f038803  addli r6, r16, 448
003344  1f088e03  addli r16, r28, 448
003348  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
00334c  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
003350  1f030e03  addli r6, r28, 384
003354  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
003358  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
00335c  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
003360  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
003364  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003368  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00336c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003370  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003374  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
003378  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
00337c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
003380  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003384  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
003388  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00338c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003390  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
003394  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003398  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
00339c  bf3b7cff  blt.s r24, r23, -276
0033a0  dbc6ffff  j -460
0033a4  1f0a0000  addli r20, zero, 0
0033a8  9f0a0000  addli r21, zero, 0
0033ac  00a00000  mfence { lm }
0033b0  bfa687fe  blt.s r15, r8, -600
0033b4  e3018fd6  loadli.w r3,  -5312(r30)
0033b8  1f0b0000  addli r22, zero, 0
0033bc  8f8a3a18  div.f.rn r21, r21, r3
0033c0  0f083a18  div.f.rn r16, r20, r3
0033c4  e3013f00  loadli.w r3,  24(r30)
0033c8  0bea5a21  mul.f.rn r20, r21, r21
0033cc  0b684819  sub.f.rn r16, r16, r20
0033d0  0bea0a58  neg.f r20, r21
0033d4  9f0a8fd7  addli r21, r30, -5184
0033d8  0b683810  add.f.rn r16, r16, r3
0033dc  ab01803f  lui r3, 260096
0033e0  0f080808  sqrt.f.rn r16, r16
0033e4  0f880119  div.f.rn r16, r3, r16
0033e8  9f8b8a00  addli r23, r21, 64
0033ec  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
0033f0  1f0c4b00  addli r24, r22, 32
0033f4  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
0033f8  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
0033fc  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003400  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003404  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003408  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
00340c  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
003410  4ba587ff  ble.s r15, r24, -696
003414  9f8b0a01  addli r23, r21, 128
003418  1f8c8a01  addli r24, r21, 192
00341c  1f0b8b00  addli r22, r22, 64
003420  9f8a0a02  addli r21, r21, 256
003424  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
003428  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
00342c  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003430  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003434  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003438  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
00343c  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
003440  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
003444  bf1efbfe  blt.s r22, r15, -92
003448  5ba2ffff  j -752
00344c  80300002  core_id r1
003450  ab630000  lui r7, 6
003454  1f110000  addli r2, zero, 1
003458  1f038fd7  addli r6, r30, -5184
00345c  1f048000  addli r8, zero, 64
003460  1f050010  addli r10, zero, 2048
003464  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
003468  9bb15000  slli r3, r1, 5
00346c  80500102  load_param_i r1, 2
003470  9f830308  addli r7, r7, 1024
003474  9bb45000  slli r9, r1, 5
003478  b3850128  zext_int2long r[12:13], r3
00347c  ab0600f0  lui r13, 983040
003480  97b52502  sll.d r[12:13], r[12:13], r2
003484  9716d400  or r13, r8, r13
003488  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
00348c  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
003490  9bb52100  slli r11, r3, 2
003494  8b913410  add.s r3, r9, r3
003498  00a00200  mfence { lm, gm }
00349c  c2000302  vload.mz vr1{mr1}, 0(r6)
0034a0  1386a104  setlt.u r12, r3, r10
0034a4  8b957510  add.s r11, r11, r7
0034a8  9f868500  addli r13, r11, 64
0034ac  66c11180  vmerge_l.hf vr2, vr3, vr1
0034b0  e6c011a0  vmerge_h.hf vr1, vr3, vr1
0034b4  4e902502  vstores_mask16.mz vr2{mr1}, 0(r11)
0034b8  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
0034bc  bb7e06fe  bneq r12, zero, -68
0034c0  2bf10000  lui r2, 15
0034c4  80310002  core_id r3
0034c8  00a00300  mfence { lm, sm, gm }
0034cc  9f020006  addli r5, zero, 768
0034d0  1b11f1ff  ori r2, r2, 4095
0034d4  9b811100  andi r3, r3, 1
0034d8  80210104  csr_set csr3, r2
0034dc  1f010006  addli r2, zero, 768
0034e0  00d00100  sync_group
0034e4  670c3fd4  storeli.w r3, -5440(r30)
0034e8  37a00100  beq r3, zero, 8
0034ec  9f02000a  addli r5, zero, 1280
0034f0  e3411f00  loadli.w r3,  12(r30)
0034f4  1f140000  addli r8, zero, 1
0034f8  bfa88116  blt.s r3, r8, 11816
0034fc  e3018fd5  loadli.w r3,  -5440(r30)
003500  1bcc1000  srli r24, r1, 1
003504  80300002  core_id r1
003508  1f098fd7  addli r18, r30, -5184
00350c  9bbb1200  slli r23, r5, 1
003510  9f040000  addli r9, zero, 0
003514  9f767000  addli r13, zero, 63
003518  9f0a0005  addli r21, zero, 640
00351c  2b05803f  lui r10, 260096
003520  1f062000  addli r12, zero, 16
003524  1f330000  addli r6, zero, 3
003528  2be77f00  lui r14, 2046
00352c  1f5e1000  addli r28, zero, 13
003530  abe50700  lui r11, 126
003534  1f221000  addli r4, zero, 10
003538  1f0b0003  addli r22, zero, 384
00353c  9bcd1000  srli r27, r1, 1
003540  9bb02200  slli r1, r5, 2
003544  0b912120  mul.s r2, r3, r2
003548  8b902011  add.s r1, r1, r18
00354c  67042fd4  storeli.w r2, -5568(r30)
003550  1f814200  addli r2, r5, 32
003554  9f8080ff  addli r1, r1, -64
003558  674f2fd2  storeli.w r2, -5644(r30)
00355c  0b912b11  add.s r2, r23, r18
003560  670f1fd2  storeli.w r1, -5648(r30)
003564  9f0081ff  addli r1, r2, -64
003568  2bf100fc  lui r2, 1032207
00356c  e74e1fd2  storeli.w r1, -5652(r30)
003570  abf0ffff  lui r1, 1048575
003574  00a00000  mfence { lm }
003578  67008fd5  storeli.w r24, -5632(r30)
00357c  e74fbfd3  storeli.w r27, -5636(r30)
003580  e70f7fd3  storeli.w r23, -5640(r30)
003584  9b9000f8  ori r1, r1, 3968
003588  e70e1fd2  storeli.w r1, -5656(r30)
00358c  abf00000  lui r1, 15
003590  9b90f0ff  ori r1, r1, 4095
003594  67081fd6  storeli.w r1, -5248(r30)
003598  ab700000  lui r1, 7
00359c  1b9af0ff  ori r20, r1, 4095
0035a0  ab00ff03  lui r1, 16368
0035a4  9b99f03f  ori r19, r1, 1023
0035a8  9b1001c0  ori r1, r2, 3072
0035ac  1f010fd5  addli r2, r30, -5504
0035b0  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0035b4  5b040000  j 32
0035b8  00a00300  mfence { lm, sm, gm }
0035bc  63010fd7  loadli.w r2,  -5248(r30)
0035c0  80210104  csr_set csr3, r2
0035c4  00d00100  sync_group
0035c8  8b948411  add.s r9, r9, r24
0035cc  3fa00401  blt.s r9, r16, 8
0035d0  5bc0faff  j -10752
0035d4  0b91b411  add.s r2, r9, r27
0035d8  cb0f28fe  ble.s r16, r2, -32
0035dc  e3011f00  loadli.w r3,  8(r30)
0035e0  e3078fd4  loadli.w r15,  -5568(r30)
0035e4  0b113110  add.s r2, r2, r3
0035e8  8b818431  div.u r3, r9, r24
0035ec  1b31b100  slli r2, r2, 11
0035f0  1711f100  or r2, r2, r15
0035f4  33180128  sext_int2long r[17:18], r2
0035f8  2b0100f0  lui r2, 983040
0035fc  9bb16100  slli r3, r3, 6
003600  973c8802  sll.d r[26:27], r[17:18], r8
003604  9f087fd6  addli r17, r30, -5320
003608  17912b00  or r2, r23, r2
00360c  9b810104  andi r3, r3, 64
003610  ebd70800  load.d r[16:17], 0(r17)
003614  9f088fd6  addli r17, r30, -5312
003618  73b09801  store.d r[26:27], 0(r17)
00361c  0ba89711  add.ul r[17:18], r[16:17], r[26:27]
003620  7f212801  l_gm2lm r2, r18, 0(r[17:18])
003624  00310002  core_id r2
003628  00a00200  mfence { lm, gm }
00362c  17912100  or r2, r3, r2
003630  e341dfd3  loadli.w r3,  -5652(r30)
003634  6308efd3  loadli.w r16,  -5648(r30)
003638  e348efd3  loadli.w r17,  -5644(r30)
00363c  c2800102  vload.mz vr1{mr1}, 0(r3)
003640  9f88c8ff  addli r17, r17, -32
003644  1f0d88ff  addli r26, r16, -64
003648  9f8181ff  addli r3, r3, -64
00364c  938b1605  setlt.u r23, r13, r17
003650  66c111a0  vmerge_h.hf vr2, vr3, vr1
003654  e6c01180  vmerge_l.hf vr1, vr3, vr1
003658  46102802  vstore_mask16.mz vr2{mr1}, 0(r16)
00365c  1f0808ff  addli r16, r16, -128
003660  46101d02  vstore_mask16.mz vr1{mr1}, 0(r26)
003664  3bef0bfe  bneq r23, zero, -40
003668  00a00000  mfence { lm }
00366c  e3018fd5  loadli.w r3,  -5440(r30)
003670  3bb60100  bneq r3, zero, 396
003674  92303002  vadd.s.mz vr1{mr1}, zero, vr3
003678  12313002  vadd.s.mz vr2{mr1}, zero, vr3
00367c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
003680  6308dfd3  loadli.w r16,  -5656(r30)
003684  9f010000  addli r3, zero, 0
003688  8b9b7110  add.s r23, r3, r7
00368c  8b183910  add.s r17, r18, r3
003690  1f080801  addli r16, r16, 128
003694  9f810104  addli r3, r3, 512
003698  9f870b01  addli r15, r23, 128
00369c  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
0036a0  1f8c8b00  addli r24, r23, 64
0036a4  42940802  vload_mask16.mz vr8{mr1}, 0(r17)
0036a8  9f8c8801  addli r25, r17, 192
0036ac  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
0036b0  9f878b01  addli r15, r23, 192
0036b4  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0036b8  1f8c8800  addli r24, r17, 64
0036bc  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0036c0  ca930702  vloads_mask16.mz vr7{mr1}, 0(r15)
0036c4  9f870801  addli r15, r17, 128
0036c8  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
0036cc  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
0036d0  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0036d4  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0036d8  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0036dc  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0036e0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0036e4  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
0036e8  46908702  vstore_mask16.mz vr8{mr1}, 0(r15)
0036ec  9f870b02  addli r15, r23, 256
0036f0  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0036f4  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0036f8  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0036fc  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003700  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
003704  9f878b02  addli r15, r23, 320
003708  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
00370c  9f8c0802  addli r25, r17, 256
003710  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003714  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003718  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00371c  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
003720  9f870b03  addli r15, r23, 384
003724  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003728  9f8b8b03  addli r23, r23, 448
00372c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003730  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
003734  9f878802  addli r15, r17, 320
003738  4a950b02  vloads_mask16.mz vr10{mr1}, 0(r23)
00373c  9f8b0803  addli r23, r17, 384
003740  9f888803  addli r17, r17, 448
003744  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
003748  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00374c  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
003750  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003754  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
003758  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00375c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003760  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003764  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003768  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
00376c  93075805  setlt.u r15, r16, r21
003770  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003774  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003778  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00377c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003780  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003784  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
003788  46907802  vstore_mask16.mz vr7{mr1}, 0(r17)
00378c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003790  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003794  bbdb07fe  bneq r15, zero, -268
003798  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00379c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0037a0  9f010002  addli r3, zero, 256
0037a4  6af101c0  vsrl.p vr2, r3, vr0
0037a8  eaf111c0  vsrl.p vr3, r3, vr1
0037ac  9f010001  addli r3, zero, 128
0037b0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037b4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037b8  6af101c0  vsrl.p vr2, r3, vr0
0037bc  eaf111c0  vsrl.p vr3, r3, vr1
0037c0  9f018000  addli r3, zero, 64
0037c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037cc  6af101c0  vsrl.p vr2, r3, vr0
0037d0  eaf111c0  vsrl.p vr3, r3, vr1
0037d4  9f014000  addli r3, zero, 32
0037d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037e0  6af101c0  vsrl.p vr2, r3, vr0
0037e4  eaf111c0  vsrl.p vr3, r3, vr1
0037e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037f0  fa110040  vextracti.f r3, 0(vr0)
0037f4  7a980040  vextracti.f r16, 0(vr1)
0037f8  5b660000  j 816
0037fc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003800  abf7ffff  lui r15, 1048575
003804  9f010000  addli r3, zero, 0
003808  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00380c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003810  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003814  9b9b07f8  ori r23, r15, 3968
003818  8b983310  add.s r17, r7, r3
00381c  0b183910  add.s r16, r18, r3
003820  9f8b0b01  addli r23, r23, 128
003824  9f810104  addli r3, r3, 512
003828  9f870831  addli r15, r17, 6272
00382c  1f8d0830  addli r26, r17, 6144
003830  1f8c8831  addli r24, r17, 6336
003834  9f0d0818  addli r27, r16, 3072
003838  9f0c8819  addli r25, r16, 3264
00383c  ca930702  vloads_mask16.mz vr7{mr1}, 0(r15)
003840  ca120d02  vloads_mask16.mz vr5{mr1}, 0(r26)
003844  1f8d8830  addli r26, r17, 6208
003848  ca140c02  vloads_mask16.mz vr9{mr1}, 0(r24)
00384c  1f0c0819  addli r24, r16, 3200
003850  9f078818  addli r15, r16, 3136
003854  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
003858  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
00385c  4a140d02  vloads_mask16.mz vr8{mr1}, 0(r26)
003860  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
003864  c2950702  vload_mask16.mz vr11{mr1}, 0(r15)
003868  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
00386c  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
003870  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
003874  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
003878  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00387c  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
003880  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
003884  1f8c0832  addli r24, r17, 6400
003888  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
00388c  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003890  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003894  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
003898  9f0c081a  addli r25, r16, 3328
00389c  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
0038a0  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
0038a4  9f07081b  addli r15, r16, 3456
0038a8  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0038ac  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0038b0  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
0038b4  1f8c8832  addli r24, r17, 6464
0038b8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0038bc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0038c0  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0038c4  1f8c0833  addli r24, r17, 6528
0038c8  9f888833  addli r17, r17, 6592
0038cc  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
0038d0  1f0c881a  addli r24, r16, 3392
0038d4  4a950802  vloads_mask16.mz vr10{mr1}, 0(r17)
0038d8  1f08881b  addli r16, r16, 3520
0038dc  93886b05  setlt.u r17, r23, r22
0038e0  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
0038e4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0038e8  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0038ec  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0038f0  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
0038f4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0038f8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0038fc  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003900  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003904  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
003908  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00390c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003910  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003914  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003918  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00391c  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
003920  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
003924  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003928  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00392c  bbbb08fe  bneq r17, zero, -276
003930  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003934  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003938  9f010002  addli r3, zero, 256
00393c  abf7ffff  lui r15, 1048575
003940  9f0b0000  addli r23, zero, 0
003944  1b9807f8  ori r16, r15, 3968
003948  eaf111c0  vsrl.p vr3, r3, vr1
00394c  6af101c0  vsrl.p vr2, r3, vr0
003950  9f010001  addli r3, zero, 128
003954  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003958  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00395c  eaf111c0  vsrl.p vr3, r3, vr1
003960  6af101c0  vsrl.p vr2, r3, vr0
003964  9f018000  addli r3, zero, 64
003968  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00396c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003970  eaf111c0  vsrl.p vr3, r3, vr1
003974  6af101c0  vsrl.p vr2, r3, vr0
003978  9f014000  addli r3, zero, 32
00397c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003980  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003984  eaf111c0  vsrl.p vr3, r3, vr1
003988  6af101c0  vsrl.p vr2, r3, vr0
00398c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003990  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003994  7a9d0040  vextracti.f r26, 0(vr1)
003998  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00399c  fa110040  vextracti.f r3, 0(vr0)
0039a0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0039a4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0039a8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0039ac  8b9d7311  add.s r27, r7, r23
0039b0  8b187911  add.s r17, r18, r23
0039b4  1f080801  addli r16, r16, 128
0039b8  9f8b0b04  addli r23, r23, 512
0039bc  9f870d18  addli r15, r27, 3072
0039c0  1f8c0d19  addli r24, r27, 3200
0039c4  42940802  vload_mask16.mz vr8{mr1}, 0(r17)
0039c8  9f8c8801  addli r25, r17, 192
0039cc  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
0039d0  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
0039d4  9f878d18  addli r15, r27, 3136
0039d8  1f8c8d19  addli r24, r27, 3264
0039dc  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0039e0  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
0039e4  9f870801  addli r15, r17, 128
0039e8  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
0039ec  1f8c8800  addli r24, r17, 64
0039f0  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
0039f4  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
0039f8  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0039fc  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
003a00  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
003a04  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
003a08  46908702  vstore_mask16.mz vr8{mr1}, 0(r15)
003a0c  9f870d1a  addli r15, r27, 3328
003a10  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003a14  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003a18  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003a1c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003a20  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
003a24  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
003a28  9f878d1a  addli r15, r27, 3392
003a2c  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
003a30  9f8c0802  addli r25, r17, 256
003a34  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003a38  1f8c0803  addli r24, r17, 384
003a3c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003a40  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003a44  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
003a48  9f870d1b  addli r15, r27, 3456
003a4c  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003a50  9f8d8d1b  addli r27, r27, 3520
003a54  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003a58  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003a5c  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
003a60  9f878802  addli r15, r17, 320
003a64  4a950d02  vloads_mask16.mz vr10{mr1}, 0(r27)
003a68  9f888803  addli r17, r17, 448
003a6c  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
003a70  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003a74  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
003a78  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003a7c  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
003a80  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003a84  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003a88  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003a8c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003a90  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
003a94  93075805  setlt.u r15, r16, r21
003a98  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003a9c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003aa0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003aa4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003aa8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003aac  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
003ab0  46907802  vstore_mask16.mz vr7{mr1}, 0(r17)
003ab4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003ab8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003abc  bbcb07fe  bneq r15, zero, -272
003ac0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003ac4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003ac8  9f070002  addli r15, zero, 256
003acc  6af107c0  vsrl.p vr2, r15, vr0
003ad0  eaf117c0  vsrl.p vr3, r15, vr1
003ad4  9f070001  addli r15, zero, 128
003ad8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003adc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003ae0  6af107c0  vsrl.p vr2, r15, vr0
003ae4  eaf117c0  vsrl.p vr3, r15, vr1
003ae8  9f078000  addli r15, zero, 64
003aec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003af0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003af4  6af107c0  vsrl.p vr2, r15, vr0
003af8  eaf117c0  vsrl.p vr3, r15, vr1
003afc  9f074000  addli r15, zero, 32
003b00  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003b04  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003b08  6af107c0  vsrl.p vr2, r15, vr0
003b0c  eaf117c0  vsrl.p vr3, r15, vr1
003b10  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003b14  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003b18  7a980040  vextracti.f r16, 0(vr1)
003b1c  fa170040  vextracti.f r15, 0(vr0)
003b20  8be1f110  add.f.rn r3, r3, r15
003b24  0b680d11  add.f.rn r16, r26, r16
003b28  ab8d0000  lui r27, 8
003b2c  2b8b0000  lui r22, 8
003b30  9b372100  slli r15, r2, 2
003b34  630c0fd4  loadli.w r24,  -5632(r30)
003b38  e34cffd3  loadli.w r25,  -5636(r30)
003b3c  630dffd3  loadli.w r26,  -5640(r30)
003b40  1b01e107  andi r2, r2, 126
003b44  9f8d0d08  addli r27, r27, 1024
003b48  1f0b0b0c  addli r22, r22, 1536
003b4c  1b312100  slli r2, r2, 2
003b50  8b98b711  add.s r17, r15, r27
003b54  8b9b6711  add.s r23, r15, r22
003b58  73e00b01  stores.w r16, 0(r23)
003b5c  73e03800  stores.w r3, 0(r17)
003b60  0b18b111  add.s r16, r2, r27
003b64  0b116111  add.s r2, r2, r22
003b68  9f088fd7  addli r17, r30, -5184
003b6c  9f0b0000  addli r23, zero, 0
003b70  00a00300  mfence { lm, sm, gm }
003b74  e3010fd7  loadli.w r3,  -5248(r30)
003b78  80a10104  csr_set csr3, r3
003b7c  9b914700  ori r3, r15, 4
003b80  00d00100  sync_group
003b84  6f480800  loads.w r16, 0(r16)
003b88  6f410100  loads.w r2, 0(r2)
003b8c  8b97b111  add.s r15, r3, r27
003b90  8b916111  add.s r3, r3, r22
003b94  efc70700  loads.w r15, 0(r15)
003b98  efc10100  loads.w r3, 0(r3)
003b9c  8be70711  add.f.rn r15, r15, r16
003ba0  2b08003a  lui r16, 237568
003ba4  0be12110  add.f.rn r2, r3, r2
003ba8  8be10721  mul.f.rn r3, r15, r16
003bac  0b610121  mul.f.rn r2, r2, r16
003bb0  1f088fd7  addli r16, r30, -5184
003bb4  8be73120  mul.f.rn r15, r3, r3
003bb8  8be10158  neg.f r3, r3
003bbc  0b61f118  sub.f.rn r2, r2, r15
003bc0  e3073f00  loadli.w r15,  24(r30)
003bc4  0b61f110  add.f.rn r2, r2, r15
003bc8  0f010108  sqrt.f.rn r2, r2
003bcc  0f012518  div.f.rn r2, r10, r2
003bd0  9f078800  addli r15, r16, 64
003bd4  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
003bd8  9f8b4b00  addli r23, r23, 32
003bdc  1f080801  addli r16, r16, 128
003be0  c2900702  vload_mask16.mz vr1{mr1}, 0(r15)
003be4  93875b04  setlt.u r15, r23, r5
003be8  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
003bec  12911102  vadd.f.mz.rn vr2{mr1}, r3, vr1
003bf0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003bf4  ea211622  vor.u.mz vr3{mr1}, r12, vr1
003bf8  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
003bfc  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
003c00  6eb201c2  vsrl.s.mz vr4{mr1}, vr3, vr0
003c04  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003c08  6a324402  vand.s.mz vr4{mr1}, r8, vr4
003c0c  ea313402  vand.s.mz vr3{mr1}, r8, vr3
003c10  16304002  vadd.s.mz vr0{mr1}, vr0, vr4
003c14  6a221322  vor.u.mz vr4{mr1}, r6, vr1
003c18  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
003c1c  ea211e22  vor.u.mz vr3{mr1}, r28, vr1
003c20  ea201222  vor.u.mz vr1{mr1}, r4, vr1
003c24  12300a02  vadd.s.mz vr0{mr1}, r20, vr0
003c28  12312a02  vadd.s.mz vr2{mr1}, r20, vr2
003c2c  eeb201c2  vsrl.s.mz vr5{mr1}, vr3, vr0
003c30  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
003c34  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003c38  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
003c3c  6ab25502  vand.s.mz vr4{mr1}, r11, vr5
003c40  6a300702  vand.s.mz vr0{mr1}, r14, vr0
003c44  eab13502  vand.s.mz vr3{mr1}, r11, vr3
003c48  6a312702  vand.s.mz vr2{mr1}, r14, vr2
003c4c  6a300522  vor.s.mz vr0{mr1}, r10, vr0
003c50  6a324522  vor.s.mz vr4{mr1}, r10, vr4
003c54  ea313522  vor.s.mz vr3{mr1}, r10, vr3
003c58  6a312522  vor.s.mz vr2{mr1}, r10, vr2
003c5c  06100020  vfloat2fp16_l.rz vr0, vr0
003c60  86d10120  vfloat2fp16_h.rz vr3, vr3
003c64  06500120  vfloat2fp16_h.rz vr0, vr2
003c68  86110220  vfloat2fp16_l.rz vr3, vr4
003c6c  6ab00902  vand.s.mz vr0{mr1}, r19, vr0
003c70  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
003c74  eab01002  vand.s.mz vr1{mr1}, r1, vr1
003c78  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
003c7c  46800802  vstore.mz vr0{mr1}, 0(r17)
003c80  9f888800  addli r17, r17, 64
003c84  3bbd07fe  bneq r15, zero, -180
003c88  9f018fd6  addli r3, r30, -5312
003c8c  eb570f00  load.d r[16:17], 0(r30)
003c90  2b0100f0  lui r2, 983040
003c94  9f8d0c00  addli r27, r25, 0
003c98  6bdb0100  load.d r[23:24], 0(r3)
003c9c  00a00000  mfence { lm }
003ca0  8ba76711  add.ul r[16:17], r[16:17], r[23:24]
003ca4  9f0b0d00  addli r23, r26, 0
003ca8  1f0b0003  addli r22, zero, 384
003cac  17912b00  or r2, r23, r2
003cb0  7fb12701  s_lm2gm r2, r18, 0(r[16:17])
003cb4  1f010fd5  addli r2, r30, -5504
003cb8  00a00200  mfence { lm, gm }
003cbc  63481f00  loadli.w r16,  12(r30)
003cc0  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
003cc4  db20ffff  j -1788
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
003d54  4b37c112  ble.s r2, r12, 9676
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
003e44  db9b0400  j 9436
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
00411c  9f838100  addli r7, r3, 64
004120  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
004124  1f034300  addli r6, r6, 32
004128  9f810101  addli r3, r3, 128
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
0041c4  46801202  vstore.mz vr1{mr1}, 0(r5)
0041c8  9f828200  addli r5, r5, 64
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
004274  bfb26211  blt.s r5, r22, 8364
004278  8b903d20  mul.s r1, r27, r3
00427c  1b451100  srli r10, r2, 1
004280  1b312200  slli r2, r4, 2
004284  9f068fd7  addli r13, r30, -5184
004288  1b361200  slli r12, r4, 1
00428c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004290  ab5c0100  lui r25, 21
004294  2b590100  lui r18, 21
004298  1f040000  addli r8, zero, 0
00429c  9bc51a00  srli r11, r21, 1
0042a0  9f787000  addli r17, zero, 63
0042a4  1f0a0005  addli r20, zero, 640
0042a8  9f0b8000  addli r23, zero, 64
0042ac  1f0c4000  addli r24, zero, 32
0042b0  1f0e0003  addli r28, zero, 384
0042b4  67081fd6  storeli.w r1, -5248(r30)
0042b8  9f004200  addli r1, r4, 32
0042bc  0b11d110  add.s r2, r2, r13
0042c0  8b11d610  add.s r3, r12, r13
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
004310  0b14a410  add.s r8, r8, r10
004314  3f200401  blt.s r8, r16, 8
004318  5b17f9ff  j -14152
00431c  0b11b410  add.s r2, r8, r11
004320  cb1f28fe  ble.s r16, r2, -28
004324  e3001f00  loadli.w r1,  8(r30)
004328  8b01a430  div.u r3, r8, r10
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
004358  17112600  or r2, r12, r2
00435c  0b275710  add.ul r[15:16], r[15:16], r[6:7]
004360  7f21d700  l_gm2lm r2, r13, 0(r[15:16])
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
0043cc  0b973610  add.s r14, r13, r3
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
004558  8b993610  add.s r19, r13, r3
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
0046e4  0b979610  add.s r14, r13, r9
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
0048f0  42900402  vload_mask16.mz vr0{mr1}, 0(r9)
0048f4  9f808400  addli r1, r9, 64
0048f8  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
0048fc  9f874700  addli r15, r15, 32
004900  9f840401  addli r9, r9, 128
004904  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
004908  93804704  setlt.u r1, r15, r4
00490c  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
004910  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
004914  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
004918  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
00491c  06110000  vfloat2fp16_l.rn vr2, vr0
004920  06d10000  vfloat2fp16_h.rn vr2, vr1
004924  46002702  vstore.mz vr2{mr1}, 0(r14)
004928  1f078700  addli r14, r14, 64
00492c  3b9f00fe  bneq r1, zero, -60
004930  6b510f00  load.d r[3:4], 0(r30)
004934  ab0000f0  lui r1, 983040
004938  00a00000  mfence { lm }
00493c  97101600  or r1, r12, r1
004940  0b215110  add.ul r[3:4], r[3:4], r[6:7]
004944  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
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
0049d8  4ba5110c  ble.s r3, r1, 6472
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
004a9c  db100300  j 6276
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
004d3c  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
004d40  1f8c8900  addli r24, r19, 64
004d44  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
004d48  9f8b4b00  addli r23, r23, 32
004d4c  9f890901  addli r19, r19, 128
004d50  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
004d54  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
004d58  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
004d5c  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
004d60  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
004d64  86910000  vfloat2fp16_l.rn vr3, vr1
004d68  86510100  vfloat2fp16_h.rn vr3, vr2
004d6c  46003a02  vstore.mz vr3{mr1}, 0(r20)
004d70  1f0a8a00  addli r20, r20, 64
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
004df0  cbc4110a  ble.s r3, r1, 5424
004df4  63012f00  loadli.w r2,  16(r30)
004df8  e3412f00  loadli.w r3,  20(r30)
004dfc  1f062000  addli r12, zero, 16
004e00  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004e04  1f140000  addli r8, zero, 1
004e08  9f068fd7  addli r13, r30, -5184
004e0c  9f050002  addli r11, zero, 256
004e10  2b08807f  lui r16, 522240
004e14  ab08c07f  lui r17, 523264
004e18  1f090001  addli r18, zero, 128
004e1c  9f098000  addli r19, zero, 64
004e20  1f0a4000  addli r20, zero, 32
004e24  9b321100  slli r5, r2, 1
004e28  0b123110  add.s r4, r2, r3
004e2c  33010108  fix2float.rn r2, r2
004e30  1bb31100  slli r6, r3, 1
004e34  67042fd4  storeli.w r2, -5568(r30)
004e38  1f71f2ff  addli r2, r4, -1
004e3c  67085fd4  storeli.w r5, -5504(r30)
004e40  8b133130  div.s r7, r2, r3
004e44  2bf1ffff  lui r2, 1048575
004e48  ab710000  lui r3, 7
004e4c  1b15f1ff  ori r10, r2, 4095
004e50  1f010fd7  addli r2, r30, -5248
004e54  9b91f1ff  ori r3, r3, 4095
004e58  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004e5c  6a200622  vor.u.mz vr0{mr1}, r12, vr0
004e60  1f018fd6  addli r2, r30, -5312
004e64  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004e68  2b01ffff  lui r2, 1048560
004e6c  db080000  j 68
004e70  9f048fd5  addli r9, r30, -5440
004e74  6b520f00  load.d r[5:6], 0(r30)
004e78  9f068fd7  addli r13, r30, -5184
004e7c  ebda0400  load.d r[22:23], 0(r9)
004e80  00a00000  mfence { lm }
004e84  80540102  load_param_i r9, 2
004e88  8b901410  add.s r1, r9, r1
004e8c  8b2a5211  add.ul r[22:23], r[5:6], r[22:23]
004e90  e3020fd5  loadli.w r5,  -5504(r30)
004e94  2b0200f0  lui r4, 983040
004e98  17924200  or r4, r5, r4
004e9c  7fb2da00  s_lm2gm r4, r13, 0(r[22:23])
004ea0  00a00200  mfence { lm, gm }
004ea4  63421f00  loadli.w r4,  12(r30)
004ea8  3fa04000  blt.s r1, r4, 8
004eac  db8e0200  j 5236
004eb0  63021f00  loadli.w r4,  8(r30)
004eb4  9f047fd6  addli r9, r30, -5320
004eb8  0b924010  add.s r4, r1, r4
004ebc  0b12f220  mul.s r4, r4, r15
004ec0  b31a0228  sext_int2long r[22:23], r4
004ec4  2b0200f0  lui r4, 983040
004ec8  97bb8a02  sll.d r[24:25], r[22:23], r8
004ecc  ebda0400  load.d r[22:23], 0(r9)
004ed0  17924200  or r4, r5, r4
004ed4  9f048fd5  addli r9, r30, -5440
004ed8  73b07401  store.d r[24:25], 0(r9)
004edc  8baa7a11  add.ul r[22:23], r[22:23], r[24:25]
004ee0  7fa2da00  l_gm2lm r4, r13, 0(r[22:23])
004ee4  00a00200  mfence { lm, gm }
004ee8  bfdc8300  blt.s r7, r8, 820
004eec  9f0d0000  addli r27, zero, 0
004ef0  1f0d0000  addli r26, zero, 0
004ef4  1f0e0000  addli r28, zero, 0
004ef8  db0c0000  j 100
004efc  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
004f00  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
004f04  1f1e0e00  addli r28, r28, 1
004f08  6af105c0  vsrl.p vr2, r11, vr0
004f0c  eaf115c0  vsrl.p vr3, r11, vr1
004f10  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f14  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f18  6a7109c0  vsrl.p vr2, r18, vr0
004f1c  ea7119c0  vsrl.p vr3, r18, vr1
004f20  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f24  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f28  6af109c0  vsrl.p vr2, r19, vr0
004f2c  eaf119c0  vsrl.p vr3, r19, vr1
004f30  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f34  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f38  6a710ac0  vsrl.p vr2, r20, vr0
004f3c  ea711ac0  vsrl.p vr3, r20, vr1
004f40  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f44  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f48  7a120040  vextracti.f r4, 0(vr0)
004f4c  fa920040  vextracti.f r5, 0(vr1)
004f50  8bed4d10  add.f.rn r27, r27, r4
004f54  0b6d5d10  add.f.rn r26, r26, r5
004f58  373b7e00  beq r28, r7, 716
004f5c  1f020e00  addli r4, r28, 0
004f60  3730b700  beq r14, r11, 12
004f64  1722ae00  xor r4, r28, r10
004f68  0b924310  add.s r4, r7, r4
004f6c  9f020fd7  addli r5, r30, -5248
004f70  8b14e220  mul.s r9, r4, r14
004f74  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
004f78  8b949718  sub.s r9, r15, r9
004f7c  8b9ae440  min.s r21, r9, r14
004f80  92322002  vadd.s.mz vr5{mr1}, zero, vr2
004f84  12322002  vadd.s.mz vr4{mr1}, zero, vr2
004f88  92312002  vadd.s.mz vr3{mr1}, zero, vr2
004f8c  bfcd8afe  blt.s r21, r8, -144
004f90  8b1b4320  mul.s r23, r6, r4
004f94  1f020fd7  addli r4, r30, -5248
004f98  ab960100  lui r13, 25
004f9c  1f0b0000  addli r22, zero, 0
004fa0  9f048fd7  addli r9, r30, -5184
004fa4  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
004fa8  9f860600  addli r13, r13, 0
004fac  12315002  vadd.s.mz vr2{mr1}, zero, vr5
004fb0  92315002  vadd.s.mz vr3{mr1}, zero, vr5
004fb4  12325002  vadd.s.mz vr4{mr1}, zero, vr5
004fb8  0b9c7611  add.s r24, r13, r23
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
004fe4  6a357102  vand.s.mz vr10{mr1}, r2, vr7
004fe8  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
004fec  6a336102  vand.s.mz vr6{mr1}, r2, vr6
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
005018  12b48102  vadd.s.mz vr8{mr1}, r3, vr8
00501c  92b49102  vadd.s.mz vr9{mr1}, r3, vr9
005020  ea338102  vand.s.mz vr7{mr1}, r2, vr8
005024  661403c0  vabs.f vr8, vr6
005028  6a339102  vand.s.mz vr6{mr1}, r2, vr9
00502c  eaa30834  vor.u.mh vr7{mr2}, r17, vr0
005030  72218842  vlt.u.mz mr2{mr1}, r16, vr8
005034  6aa30834  vor.u.mh vr6{mr2}, r17, vr0
005038  4a840c02  vloads.mz vr8{mr1}, 0(r25)
00503c  9f0c8200  addli r25, r4, 64
005040  c2840c02  vload.mz vr9{mr1}, 0(r25)
005044  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
005048  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
00504c  6a336102  vand.s.mz vr6{mr1}, r2, vr6
005050  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
005054  ea349102  vand.s.mz vr9{mr1}, r2, vr9
005058  46007202  vstore.mz vr7{mr1}, 0(r4)
00505c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005060  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005064  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
005068  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
00506c  6a348102  vand.s.mz vr8{mr1}, r2, vr8
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
0050a0  92b49102  vadd.s.mz vr9{mr1}, r3, vr9
0050a4  92b5b102  vadd.s.mz vr11{mr1}, r3, vr11
0050a8  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
0050ac  ea349102  vand.s.mz vr9{mr1}, r2, vr9
0050b0  6a35b102  vand.s.mz vr10{mr1}, r2, vr11
0050b4  eaa40834  vor.u.mh vr9{mr2}, r17, vr0
0050b8  72218842  vlt.u.mz mr2{mr1}, r16, vr8
0050bc  6aa50834  vor.u.mh vr10{mr2}, r17, vr0
0050c0  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
0050c4  ea34a102  vand.s.mz vr9{mr1}, r2, vr10
0050c8  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0050cc  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0050d0  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0050d4  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0050d8  46808c02  vstore.mz vr8{mr1}, 0(r25)
0050dc  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0050e0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0050e4  4be85afe  ble.s r21, r5, -488
0050e8  9f020c01  addli r5, r24, 128
0050ec  9f0c0201  addli r25, r4, 128
0050f0  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0050f4  1f028201  addli r4, r4, 192
0050f8  1f0b0b01  addli r22, r22, 128
0050fc  9f860602  addli r13, r13, 256
005100  9f840402  addli r9, r9, 256
005104  6a237622  vor.u.mz vr6{mr1}, r12, vr7
005108  4a840202  vloads.mz vr8{mr1}, 0(r5)
00510c  c2840c02  vload.mz vr9{mr1}, 0(r25)
005110  9f028c01  addli r5, r24, 192
005114  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
005118  6a309102  vand.s.mz vr0{mr1}, r2, vr9
00511c  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
005120  6a348102  vand.s.mz vr8{mr1}, r2, vr8
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
00514c  12b00102  vadd.s.mz vr0{mr1}, r3, vr0
005150  12b5a102  vadd.s.mz vr10{mr1}, r3, vr10
005154  ea340102  vand.s.mz vr9{mr1}, r2, vr0
005158  661004c0  vabs.f vr0, vr8
00515c  6a34a102  vand.s.mz vr8{mr1}, r2, vr10
005160  eaa47834  vor.u.mh vr9{mr2}, r17, vr7
005164  72210842  vlt.u.mz mr2{mr1}, r16, vr0
005168  6aa47834  vor.u.mh vr8{mr2}, r17, vr7
00516c  4a800202  vloads.mz vr0{mr1}, 0(r5)
005170  42050202  vload.mz vr10{mr1}, 0(r4)
005174  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
005178  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
00517c  6a35a102  vand.s.mz vr10{mr1}, r2, vr10
005180  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
005184  6a348102  vand.s.mz vr8{mr1}, r2, vr8
005188  46809c02  vstore.mz vr9{mr1}, 0(r25)
00518c  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
005190  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
005194  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
005198  6a300102  vand.s.mz vr0{mr1}, r2, vr0
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
0051c4  12b5a102  vadd.s.mz vr10{mr1}, r3, vr10
0051c8  92b5b102  vadd.s.mz vr11{mr1}, r3, vr11
0051cc  72211842  vlt.u.mz mr2{mr1}, r16, vr1
0051d0  6a35a102  vand.s.mz vr10{mr1}, r2, vr10
0051d4  ea30b102  vand.s.mz vr1{mr1}, r2, vr11
0051d8  6aa57834  vor.u.mh vr10{mr2}, r17, vr7
0051dc  72210842  vlt.u.mz mr2{mr1}, r16, vr0
0051e0  eaa07834  vor.u.mh vr1{mr2}, r17, vr7
0051e4  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
0051e8  ea331102  vand.s.mz vr7{mr1}, r2, vr1
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
005218  db9cffff  j -796
00521c  1f0d0000  addli r26, zero, 0
005220  9f0d0000  addli r27, zero, 0
005224  00a00000  mfence { lm }
005228  3fa187fe  blt.s r15, r8, -952
00522c  e3028fd4  loadli.w r5,  -5568(r30)
005230  2bab0100  lui r22, 26
005234  abbb0100  lui r23, 27
005238  1f020000  addli r4, zero, 0
00523c  1f0b0b00  addli r22, r22, 0
005240  9f8b0b00  addli r23, r23, 0
005244  8f865d18  div.f.rn r13, r27, r5
005248  8f045d18  div.f.rn r9, r26, r5
00524c  e3023f00  loadli.w r5,  24(r30)
005250  8bead620  mul.f.rn r21, r13, r13
005254  8be60658  neg.f r13, r13
005258  8be45419  sub.f.rn r9, r9, r21
00525c  9f0a8fd7  addli r21, r30, -5184
005260  8be45410  add.f.rn r9, r9, r5
005264  ab02803f  lui r5, 260096
005268  8f840408  sqrt.f.rn r9, r9
00526c  8f849218  div.f.rn r9, r5, r9
005270  42820a02  vload.mz vr4{mr1}, 0(r21)
005274  ca020b02  vloads.mz vr5{mr1}, 0(r22)
005278  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
00527c  4a830b02  vloads.mz vr6{mr1}, 0(r23)
005280  1f0c4200  addli r24, r4, 32
005284  ea212622  vor.u.mz vr3{mr1}, r12, vr2
005288  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
00528c  6a344102  vand.s.mz vr8{mr1}, r2, vr4
005290  92937602  vadd.f.mz.rn vr7{mr1}, r13, vr7
005294  12948602  vadd.f.mz.rn vr8{mr1}, r13, vr8
005298  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
00529c  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
0052a0  6a355102  vand.s.mz vr10{mr1}, r2, vr5
0052a4  ea326102  vand.s.mz vr5{mr1}, r2, vr6
0052a8  8a937402  vmul.f.mz.rn vr7{mr1}, r9, vr7
0052ac  0a938402  vmul.f.mz.rn vr6{mr1}, r9, vr8
0052b0  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
0052b4  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
0052b8  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
0052bc  6a337402  vand.s.mz vr6{mr1}, r8, vr7
0052c0  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
0052c4  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
0052c8  ea337402  vand.s.mz vr7{mr1}, r8, vr7
0052cc  661202c0  vabs.f vr4, vr4
0052d0  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
0052d4  12b36102  vadd.s.mz vr6{mr1}, r3, vr6
0052d8  e69202c0  vabs.f vr5, vr5
0052dc  72214842  vlt.u.mz mr2{mr1}, r16, vr4
0052e0  6a336102  vand.s.mz vr6{mr1}, r2, vr6
0052e4  92b37102  vadd.s.mz vr7{mr1}, r3, vr7
0052e8  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
0052ec  6a327102  vand.s.mz vr4{mr1}, r2, vr7
0052f0  72215842  vlt.u.mz mr2{mr1}, r16, vr5
0052f4  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
0052f8  6aa22834  vor.u.mh vr4{mr2}, r17, vr2
0052fc  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
005300  46804a02  vstore.mz vr4{mr1}, 0(r21)
005304  cbbd87fd  ble.s r15, r24, -1172
005308  1f0c8b00  addli r24, r22, 64
00530c  9f8c8a00  addli r25, r21, 64
005310  1f028200  addli r4, r4, 64
005314  1f0b0b01  addli r22, r22, 128
005318  9f8a0a01  addli r21, r21, 128
00531c  4a020c02  vloads.mz vr4{mr1}, 0(r24)
005320  1f8c8b00  addli r24, r23, 64
005324  c2820c02  vload.mz vr5{mr1}, 0(r25)
005328  9f8b0b01  addli r23, r23, 128
00532c  4a030c02  vloads.mz vr6{mr1}, 0(r24)
005330  eeb351a2  vsll.s.mz vr7{mr1}, vr3, vr5
005334  ea325102  vand.s.mz vr5{mr1}, r2, vr5
005338  92937602  vadd.f.mz.rn vr7{mr1}, r13, vr7
00533c  12945602  vadd.f.mz.rn vr8{mr1}, r13, vr5
005340  eeb441a2  vsll.s.mz vr9{mr1}, vr3, vr4
005344  6a354102  vand.s.mz vr10{mr1}, r2, vr4
005348  8a937402  vmul.f.mz.rn vr7{mr1}, r9, vr7
00534c  eeb261a2  vsll.s.mz vr5{mr1}, vr3, vr6
005350  6a326102  vand.s.mz vr4{mr1}, r2, vr6
005354  0a938402  vmul.f.mz.rn vr6{mr1}, r9, vr8
005358  a6929302  vmac.f.mz.rn vr5{mr1}, vr7, vr9
00535c  2612a302  vmac.f.mz.rn vr4{mr1}, vr6, vr10
005360  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
005364  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
005368  6a336402  vand.s.mz vr6{mr1}, r8, vr6
00536c  ea337402  vand.s.mz vr7{mr1}, r8, vr7
005370  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
005374  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
005378  e69202c0  vabs.f vr5, vr5
00537c  661202c0  vabs.f vr4, vr4
005380  12b36102  vadd.s.mz vr6{mr1}, r3, vr6
005384  92b37102  vadd.s.mz vr7{mr1}, r3, vr7
005388  72215842  vlt.u.mz mr2{mr1}, r16, vr5
00538c  6a336102  vand.s.mz vr6{mr1}, r2, vr6
005390  ea327102  vand.s.mz vr5{mr1}, r2, vr7
005394  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
005398  72214842  vlt.u.mz mr2{mr1}, r16, vr4
00539c  eaa22834  vor.u.mh vr5{mr2}, r17, vr2
0053a0  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
0053a4  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
0053a8  46802c02  vstore.mz vr2{mr1}, 0(r25)
0053ac  3f1bf2fe  blt.s r4, r15, -316
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
0053e8  cbec1106  ble.s r3, r1, 3896
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
00546c  dbd60100  j 3764
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
005718  1f888c00  addli r16, r25, 64
00571c  9f088c00  addli r17, r24, 64
005720  9f8b8b00  addli r23, r23, 64
005724  9f8c0c01  addli r25, r25, 128
005728  1f0c0c01  addli r24, r24, 128
00572c  4a010802  vloads.mz vr2{mr1}, 0(r16)
005730  1f088d00  addli r16, r26, 64
005734  c2810802  vload.mz vr3{mr1}, 0(r17)
005738  1f0d0d01  addli r26, r26, 128
00573c  4a020802  vloads.mz vr4{mr1}, 0(r16)
005740  86b20100  vfp162float_l.rn vr5, vr3
005744  86f10100  vfp162float_h.rn vr3, vr3
005748  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
00574c  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
005750  06330100  vfp162float_l.rn vr6, vr2
005754  06710100  vfp162float_h.rn vr2, vr2
005758  8a925a02  vmul.f.mz.rn vr5{mr1}, r21, vr5
00575c  8a913a02  vmul.f.mz.rn vr3{mr1}, r21, vr3
005760  86330200  vfp162float_l.rn vr7, vr4
005764  06720200  vfp162float_h.rn vr4, vr4
005768  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
00576c  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
005770  86900300  vfloat2fp16_l.rn vr1, vr7
005774  86500200  vfloat2fp16_h.rn vr1, vr4
005778  46801802  vstore.mz vr1{mr1}, 0(r17)
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
0057bc  5bef0000  j 1912
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
00580c  3fdc5104  blt.s r3, r5, 2836
005810  e3000fd7  loadli.w r1,  -5248(r30)
005814  80510102  load_param_i r3, 2
005818  1b441500  srli r8, r10, 1
00581c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005820  ab180200  lui r17, 33
005824  ab7b0200  lui r23, 39
005828  2b7e0200  lui r28, 39
00582c  9f020000  addli r5, zero, 0
005830  9b342200  slli r9, r4, 2
005834  9f068fd7  addli r13, r30, -5184
005838  1f090005  addli r18, zero, 640
00583c  1f0a0001  addli r20, zero, 128
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
005874  0b153110  add.s r10, r2, r3
005878  ab510200  lui r3, 37
00587c  9b9000f8  ori r1, r1, 3968
005880  9f810100  addli r3, r3, 0
005884  67081fd4  storeli.w r1, -5504(r30)
005888  8b153110  add.s r11, r2, r3
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
0058b4  db63f6ff  j -19684
0058b8  0b918210  add.s r2, r5, r8
0058bc  cb1f28fe  ble.s r16, r2, -28
0058c0  e3001f00  loadli.w r1,  8(r30)
0058c4  0b111110  add.s r2, r2, r1
0058c8  e3008fd6  loadli.w r1,  -5312(r30)
0058cc  1b31b100  slli r2, r2, 11
0058d0  17111100  or r2, r2, r1
0058d4  9f200000  addli r1, zero, 2
0058d8  33110128  sext_int2long r[3:4], r2
0058dc  97371102  sll.d r[16:17], r[3:4], r1
0058e0  9f007fd6  addli r1, r30, -5320
0058e4  2b0100f0  lui r2, 983040
0058e8  ebdc0000  load.d r[26:27], 0(r1)
0058ec  17912400  or r2, r9, r2
0058f0  8bacfc10  add.ul r[26:27], r[26:27], r[16:17]
0058f4  7fa1dc00  l_gm2lm r2, r13, 0(r[26:27])
0058f8  00a00200  mfence { lm, gm }
0058fc  e3000fd7  loadli.w r1,  -5248(r30)
005900  3ba60000  bneq r1, zero, 392
005904  9f008fd5  addli r1, r30, -5440
005908  e3010fd5  loadli.w r3,  -5504(r30)
00590c  1f010000  addli r2, zero, 0
005910  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
005914  92303002  vadd.s.mz vr1{mr1}, zero, vr3
005918  12313002  vadd.s.mz vr2{mr1}, zero, vr3
00591c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
005920  0b171111  add.s r14, r2, r17
005924  0b962610  add.s r12, r13, r2
005928  9f810101  addli r3, r3, 128
00592c  1f010104  addli r2, r2, 512
005930  9f000701  addli r1, r14, 128
005934  4a100702  vloads_mask16.mz vr0{mr1}, 0(r14)
005938  1f038700  addli r6, r14, 64
00593c  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
005940  9f098601  addli r19, r12, 192
005944  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
005948  9f008701  addli r1, r14, 192
00594c  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
005950  1f038600  addli r6, r12, 64
005954  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
005958  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
00595c  9f000601  addli r1, r12, 128
005960  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
005964  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005968  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00596c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
005970  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005974  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005978  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00597c  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
005980  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
005984  9f000702  addli r1, r14, 256
005988  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00598c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
005990  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
005994  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005998  1f030603  addli r6, r12, 384
00599c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0059a0  9f008702  addli r1, r14, 320
0059a4  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
0059a8  9f090602  addli r19, r12, 256
0059ac  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0059b0  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0059b4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0059b8  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0059bc  9f000703  addli r1, r14, 384
0059c0  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
0059c4  1f078703  addli r14, r14, 448
0059c8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0059cc  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0059d0  9f008602  addli r1, r12, 320
0059d4  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
0059d8  1f068603  addli r12, r12, 448
0059dc  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0059e0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0059e4  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
0059e8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0059ec  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
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
005a20  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
005a24  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005a28  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005a2c  bbdb00fe  bneq r1, zero, -268
005a30  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005a34  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005a38  9f000002  addli r1, zero, 256
005a3c  6af100c0  vsrl.p vr2, r1, vr0
005a40  eaf110c0  vsrl.p vr3, r1, vr1
005a44  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a48  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a4c  6a710ac0  vsrl.p vr2, r20, vr0
005a50  ea711ac0  vsrl.p vr3, r20, vr1
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
005a84  5b630000  j 792
005a88  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005a8c  abf0ffff  lui r1, 1048575
005a90  1f010000  addli r2, zero, 0
005a94  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005a98  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005a9c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005aa0  9b9100f8  ori r3, r1, 3968
005aa4  0b972810  add.s r14, r17, r2
005aa8  0b962610  add.s r12, r13, r2
005aac  9f810101  addli r3, r3, 128
005ab0  1f010104  addli r2, r2, 512
005ab4  1f0d0731  addli r26, r14, 6272
005ab8  1f030730  addli r6, r14, 6144
005abc  9f008731  addli r1, r14, 6336
005ac0  9f0c0618  addli r25, r12, 3072
005ac4  ca130d02  vloads_mask16.mz vr7{mr1}, 0(r26)
005ac8  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
005acc  1f038730  addli r6, r14, 6208
005ad0  ca940002  vloads_mask16.mz vr9{mr1}, 0(r1)
005ad4  9f008618  addli r1, r12, 3136
005ad8  1f0d8619  addli r26, r12, 3264
005adc  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
005ae0  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
005ae4  1f030619  addli r6, r12, 3200
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
005b10  1f030732  addli r6, r14, 6400
005b14  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
005b18  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
005b1c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005b20  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
005b24  9f0c061a  addli r25, r12, 3328
005b28  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
005b2c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005b30  9f00061b  addli r1, r12, 3456
005b34  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
005b38  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
005b3c  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
005b40  1f038732  addli r6, r14, 6464
005b44  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005b48  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005b4c  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
005b50  1f030733  addli r6, r14, 6528
005b54  1f078733  addli r14, r14, 6592
005b58  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
005b5c  1f03861a  addli r6, r12, 3392
005b60  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
005b64  1f06861b  addli r12, r12, 3520
005b68  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
005b6c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005b70  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
005b74  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005b78  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
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
005bac  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
005bb0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005bb4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005bb8  bb3b03fe  bneq r6, zero, -276
005bbc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005bc0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005bc4  9f000002  addli r1, zero, 256
005bc8  1f060000  addli r12, zero, 0
005bcc  eaf110c0  vsrl.p vr3, r1, vr1
005bd0  6af100c0  vsrl.p vr2, r1, vr0
005bd4  abf0ffff  lui r1, 1048575
005bd8  1b9d00f8  ori r26, r1, 3968
005bdc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005be0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005be4  ea711ac0  vsrl.p vr3, r20, vr1
005be8  6a710ac0  vsrl.p vr2, r20, vr0
005bec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005bf0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005bf4  eaf11ac0  vsrl.p vr3, r21, vr1
005bf8  6af10ac0  vsrl.p vr2, r21, vr0
005bfc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005c00  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005c04  ea711bc0  vsrl.p vr3, r22, vr1
005c08  6a710bc0  vsrl.p vr2, r22, vr0
005c0c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005c10  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005c14  fa910040  vextracti.f r3, 0(vr1)
005c18  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005c1c  7a110040  vextracti.f r2, 0(vr0)
005c20  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005c24  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005c28  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005c2c  8b9cc810  add.s r25, r17, r12
005c30  0b97c610  add.s r14, r13, r12
005c34  1f0d0d01  addli r26, r26, 128
005c38  1f060604  addli r12, r12, 512
005c3c  9f800c18  addli r1, r25, 3072
005c40  1f830c19  addli r6, r25, 3200
005c44  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
005c48  9f098701  addli r19, r14, 192
005c4c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
005c50  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
005c54  9f808c18  addli r1, r25, 3136
005c58  1f838c19  addli r6, r25, 3264
005c5c  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
005c60  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
005c64  9f000701  addli r1, r14, 128
005c68  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
005c6c  1f038700  addli r6, r14, 64
005c70  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005c74  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
005c78  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005c7c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
005c80  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005c84  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005c88  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
005c8c  9f800c1a  addli r1, r25, 3328
005c90  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005c94  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005c98  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
005c9c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
005ca0  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
005ca4  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
005ca8  9f808c1a  addli r1, r25, 3392
005cac  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
005cb0  9f090702  addli r19, r14, 256
005cb4  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005cb8  1f030703  addli r6, r14, 384
005cbc  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
005cc0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005cc4  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
005cc8  9f800c1b  addli r1, r25, 3456
005ccc  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
005cd0  9f8c8c1b  addli r25, r25, 3520
005cd4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005cd8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005cdc  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
005ce0  9f008702  addli r1, r14, 320
005ce4  4a950c02  vloads_mask16.mz vr10{mr1}, 0(r25)
005ce8  1f078703  addli r14, r14, 448
005cec  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005cf0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005cf4  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
005cf8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005cfc  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
005d00  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005d04  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005d08  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
005d0c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005d10  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
005d14  93002d05  setlt.u r1, r26, r18
005d18  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005d1c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005d20  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005d24  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005d28  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005d2c  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005d30  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
005d34  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005d38  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005d3c  bbcb00fe  bneq r1, zero, -272
005d40  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005d44  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005d48  9f000002  addli r1, zero, 256
005d4c  6af100c0  vsrl.p vr2, r1, vr0
005d50  eaf110c0  vsrl.p vr3, r1, vr1
005d54  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d58  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d5c  6a710ac0  vsrl.p vr2, r20, vr0
005d60  ea711ac0  vsrl.p vr3, r20, vr1
005d64  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d68  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d6c  6af10ac0  vsrl.p vr2, r21, vr0
005d70  eaf11ac0  vsrl.p vr3, r21, vr1
005d74  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d78  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d7c  6a710bc0  vsrl.p vr2, r22, vr0
005d80  ea711bc0  vsrl.p vr3, r22, vr1
005d84  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d88  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d8c  fa100040  vextracti.f r1, 0(vr0)
005d90  7a960040  vextracti.f r12, 0(vr1)
005d94  0b631110  add.f.rn r6, r2, r1
005d98  8be1c110  add.f.rn r3, r3, r12
005d9c  8b807230  div.u r1, r5, r7
005da0  00360002  core_id r12
005da4  1f010000  addli r2, zero, 0
005da8  9bb06000  slli r1, r1, 6
005dac  9b800004  andi r1, r1, 64
005db0  9790c000  or r1, r1, r12
005db4  1bb62000  slli r12, r1, 2
005db8  9b80e007  andi r1, r1, 126
005dbc  0b177611  add.s r14, r12, r23
005dc0  9bb02000  slli r1, r1, 2
005dc4  73606700  stores.w r6, 0(r14)
005dc8  0b13c611  add.s r6, r12, r28
005dcc  1b164600  ori r12, r12, 4
005dd0  73603300  stores.w r3, 0(r6)
005dd4  8b117611  add.s r3, r12, r23
005dd8  0b937011  add.s r6, r1, r23
005ddc  0b16c611  add.s r12, r12, r28
005de0  8b90c011  add.s r1, r1, r28
005de4  00a00300  mfence { lm, sm, gm }
005de8  80210c04  csr_set csr3, r24
005dec  00d00100  sync_group
005df0  eb5c0f00  load.d r[26:27], 0(r30)
005df4  efc10100  loads.w r3, 0(r3)
005df8  6f430300  loads.w r6, 0(r6)
005dfc  6f460600  loads.w r12, 0(r12)
005e00  efc00000  loads.w r1, 0(r1)
005e04  8ba7fc10  add.ul r[16:17], r[26:27], r[16:17]
005e08  1f0d0000  addli r26, zero, 0
005e0c  8be16110  add.f.rn r3, r3, r6
005e10  8b601610  add.f.rn r1, r12, r1
005e14  2b06003a  lui r12, 237568
005e18  0be3c120  mul.f.rn r6, r3, r12
005e1c  8be0c020  mul.f.rn r1, r1, r12
005e20  8b616320  mul.f.rn r3, r6, r6
005e24  0b660358  neg.f r12, r6
005e28  8be03018  sub.f.rn r1, r1, r3
005e2c  e3013f00  loadli.w r3,  24(r30)
005e30  8be03010  add.f.rn r1, r1, r3
005e34  ab01803f  lui r3, 260096
005e38  8f800008  sqrt.f.rn r1, r1
005e3c  8f811118  div.f.rn r3, r3, r1
005e40  0b172510  add.s r14, r10, r2
005e44  8b9c2610  add.s r25, r13, r2
005e48  0b932510  add.s r6, r11, r2
005e4c  9f098700  addli r19, r14, 64
005e50  9f808c00  addli r1, r25, 64
005e54  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
005e58  4a110702  vloads_mask16.mz vr2{mr1}, 0(r14)
005e5c  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
005e60  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
005e64  9f098300  addli r19, r6, 64
005e68  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
005e6c  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
005e70  9f094d00  addli r19, r26, 32
005e74  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
005e78  93093207  setle.u r19, r4, r19
005e7c  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
005e80  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
005e84  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
005e88  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
005e8c  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
005e90  46904c02  vstore_mask16.mz vr4{mr1}, 0(r25)
005e94  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005e98  bb910900  bneq r19, zero, 100
005e9c  9f800c01  addli r1, r25, 128
005ea0  9f898c01  addli r19, r25, 192
005ea4  9f0c0701  addli r25, r14, 128
005ea8  1f078701  addli r14, r14, 192
005eac  1f0d8d00  addli r26, r26, 64
005eb0  1f010102  addli r2, r2, 256
005eb4  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
005eb8  9f0c0301  addli r25, r6, 128
005ebc  1f038301  addli r6, r6, 192
005ec0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
005ec4  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
005ec8  4a120702  vloads_mask16.mz vr4{mr1}, 0(r14)
005ecc  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
005ed0  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
005ed4  13034d04  setlt.u r6, r26, r4
005ed8  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
005edc  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
005ee0  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
005ee4  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
005ee8  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
005eec  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
005ef0  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
005ef4  46905902  vstore_mask16.mz vr5{mr1}, 0(r19)
005ef8  3b2d03fe  bneq r6, zero, -184
005efc  ab0000f0  lui r1, 983040
005f00  00a00000  mfence { lm }
005f04  97901400  or r1, r9, r1
005f08  ffb0d700  s_lm2gm r1, r13, 0(r[16:17])
005f0c  00a00200  mfence { lm, gm }
005f10  63481f00  loadli.w r16,  12(r30)
005f14  5b33ffff  j -1640
005f18  63012f00  loadli.w r2,  16(r30)
005f1c  ab0100f0  lui r3, 983040
005f20  1b312100  slli r2, r2, 2
005f24  17113100  or r2, r2, r3
005f28  ab910200  lui r3, 41
005f2c  9f810108  addli r3, r3, 1024
005f30  7f013400  l_gm2sm r2, r3, 0(r[9:10])
005f34  2bf10000  lui r2, 15
005f38  e3411f00  loadli.w r3,  12(r30)
005f3c  00200300  mfence { sm, gm }
005f40  1b11f1ff  ori r2, r2, 4095
005f44  80210104  csr_set csr3, r2
005f48  00d00100  sync_group
005f4c  4bdf1100  ble.s r3, r1, 980
005f50  e3012f00  loadli.w r3,  16(r30)
005f54  e3422f00  loadli.w r5,  20(r30)
005f58  ab780200  lui r17, 39
005f5c  2b890200  lui r18, 40
005f60  ab990200  lui r19, 41
005f64  9f038fd7  addli r7, r30, -5184
005f68  1f140000  addli r8, zero, 1
005f6c  1f050002  addli r10, zero, 256
005f70  1f060001  addli r12, zero, 128
005f74  9f068000  addli r13, zero, 64
005f78  1f084000  addli r16, zero, 32
005f7c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005f80  9f880808  addli r17, r17, 1024
005f84  1f090908  addli r18, r18, 1024
005f88  9f890908  addli r19, r19, 1024
005f8c  0b925110  add.s r4, r3, r5
005f90  9bb52100  slli r11, r3, 2
005f94  33810108  fix2float.rn r2, r3
005f98  9f71f2ff  addli r3, r4, -1
005f9c  1bb22200  slli r4, r5, 2
005fa0  67082fd4  storeli.w r2, -5504(r30)
005fa4  1f010fd7  addli r2, r30, -5248
005fa8  670cbfd4  storeli.w r11, -5440(r30)
005fac  8b925130  div.s r5, r3, r5
005fb0  abf1ffff  lui r3, 1048575
005fb4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005fb8  9b94f1ff  ori r9, r3, 4095
005fbc  5b080000  j 64
005fc0  1f038fd6  addli r6, r30, -5312
005fc4  6b510f00  load.d r[3:4], 0(r30)
005fc8  6b5a0300  load.d r[21:22], 0(r6)
005fcc  00a00000  mfence { lm }
005fd0  00530102  load_param_i r6, 2
005fd4  e3058fd5  loadli.w r11,  -5440(r30)
005fd8  8b101310  add.s r1, r6, r1
005fdc  0b2a4111  add.ul r[21:22], r[3:4], r[21:22]
005fe0  ab0100f0  lui r3, 983040
005fe4  97913500  or r3, r11, r3
005fe8  ff317a00  s_lm2gm r3, r7, 0(r[21:22])
005fec  00a00200  mfence { lm, gm }
005ff0  63411f00  loadli.w r2,  12(r30)
005ff4  3fa02000  blt.s r1, r2, 8
005ff8  5b650000  j 808
005ffc  63011f00  loadli.w r2,  8(r30)
006000  8b912010  add.s r3, r1, r2
006004  1f210000  addli r2, zero, 2
006008  8b91f120  mul.s r3, r3, r15
00600c  339a0128  sext_int2long r[21:22], r3
006010  ab0100f0  lui r3, 983040
006014  173c2a02  sll.d r[25:26], r[21:22], r2
006018  1f017fd6  addli r2, r30, -5320
00601c  97913500  or r3, r11, r3
006020  6b5a0100  load.d r[21:22], 0(r2)
006024  1f018fd6  addli r2, r30, -5312
006028  0b2b8a11  add.ul r[23:24], r[21:22], r[25:26]
00602c  ff217b00  l_gm2lm r3, r7, 0(r[23:24])
006030  00a00200  mfence { lm, gm }
006034  73308101  store.d r[25:26], 0(r2)
006038  bf978200  blt.s r5, r8, 484
00603c  9f0b0000  addli r23, zero, 0
006040  1f0b0000  addli r22, zero, 0
006044  1f0c0000  addli r24, zero, 0
006048  db0c0000  j 100
00604c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
006050  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006054  1f1c0c00  addli r24, r24, 1
006058  6a7105c0  vsrl.p vr2, r10, vr0
00605c  ea7115c0  vsrl.p vr3, r10, vr1
006060  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006064  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006068  6a7106c0  vsrl.p vr2, r12, vr0
00606c  ea7116c0  vsrl.p vr3, r12, vr1
006070  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006074  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006078  6af106c0  vsrl.p vr2, r13, vr0
00607c  eaf116c0  vsrl.p vr3, r13, vr1
006080  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006084  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006088  6a7108c0  vsrl.p vr2, r16, vr0
00608c  ea7118c0  vsrl.p vr3, r16, vr1
006090  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006094  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006098  7a110040  vextracti.f r2, 0(vr0)
00609c  fa910040  vextracti.f r3, 0(vr1)
0060a0  8beb2b10  add.f.rn r23, r23, r2
0060a4  0b6b3b10  add.f.rn r22, r22, r3
0060a8  b7755c00  beq r24, r5, 380
0060ac  9f010c00  addli r3, r24, 0
0060b0  3730a700  beq r14, r10, 12
0060b4  97219c00  xor r3, r24, r9
0060b8  8b913210  add.s r3, r5, r3
0060bc  1f010fd7  addli r2, r30, -5248
0060c0  0b93e120  mul.s r6, r3, r14
0060c4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0060c8  0b936718  sub.s r6, r15, r6
0060cc  8b1ce340  min.s r25, r6, r14
0060d0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0060d4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0060d8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0060dc  bfcd8cfe  blt.s r25, r8, -144
0060e0  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0060e4  1f0d0000  addli r26, zero, 0
0060e8  8b1d3220  mul.s r27, r4, r3
0060ec  1f0e8fd7  addli r28, r30, -5184
0060f0  9f850800  addli r11, r17, 0
0060f4  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0060f8  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0060fc  92314002  vadd.s.mz vr3{mr1}, zero, vr4
006100  8b91b511  add.s r3, r11, r27
006104  0b13be11  add.s r6, r28, r27
006108  1f818100  addli r2, r3, 64
00610c  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
006110  1f8a8101  addli r20, r3, 192
006114  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
006118  9f0a8301  addli r21, r6, 192
00611c  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
006120  1f810101  addli r2, r3, 128
006124  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
006128  1f0a0301  addli r20, r6, 128
00612c  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
006130  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
006134  c2150a02  vload_mask16.mz vr11{mr1}, 0(r20)
006138  1f018300  addli r2, r6, 64
00613c  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
006140  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
006144  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
006148  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00614c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
006150  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006154  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006158  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
00615c  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
006160  1f018d00  addli r2, r26, 64
006164  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
006168  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00616c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006170  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
006174  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
006178  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
00617c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
006180  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
006184  4bab2cfe  ble.s r25, r2, -312
006188  1f8a0102  addli r20, r3, 256
00618c  9f8a8102  addli r21, r3, 320
006190  1f010302  addli r2, r6, 256
006194  1f0d0d01  addli r26, r26, 128
006198  9f850504  addli r11, r11, 512
00619c  1f0e0e04  addli r28, r28, 512
0061a0  4a100a02  vloads_mask16.mz vr0{mr1}, 0(r20)
0061a4  1f8a0103  addli r20, r3, 384
0061a8  9f818103  addli r3, r3, 448
0061ac  ca920a02  vloads_mask16.mz vr5{mr1}, 0(r21)
0061b0  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
0061b4  ca130a02  vloads_mask16.mz vr7{mr1}, 0(r20)
0061b8  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
0061bc  9f010303  addli r3, r6, 384
0061c0  1f0a8302  addli r20, r6, 320
0061c4  1f038303  addli r6, r6, 448
0061c8  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
0061cc  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
0061d0  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0061d4  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
0061d8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0061dc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0061e0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0061e4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0061e8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0061ec  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
0061f0  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0061f4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0061f8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0061fc  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
006200  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006204  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006208  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
00620c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
006210  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
006214  bf3b9dff  blt.s r26, r25, -276
006218  dbc6ffff  j -460
00621c  1f0b0000  addli r22, zero, 0
006220  9f0b0000  addli r23, zero, 0
006224  00a00000  mfence { lm }
006228  3fe687fe  blt.s r15, r8, -616
00622c  63010fd5  loadli.w r2,  -5504(r30)
006230  9f050000  addli r11, zero, 0
006234  1f0c0000  addli r24, zero, 0
006238  8f812b18  div.f.rn r3, r23, r2
00623c  0f032b18  div.f.rn r6, r22, r2
006240  63013f00  loadli.w r2,  24(r30)
006244  0beb3120  mul.f.rn r22, r3, r3
006248  8beb0158  neg.f r23, r3
00624c  0b636319  sub.f.rn r6, r6, r22
006250  0b632310  add.f.rn r6, r6, r2
006254  2b01803f  lui r2, 260096
006258  0f030308  sqrt.f.rn r6, r6
00625c  0f0b6118  div.f.rn r22, r2, r6
006260  0b932511  add.s r6, r11, r18
006264  8b91b310  add.s r3, r7, r11
006268  9f0c8300  addli r25, r6, 64
00626c  4a110302  vloads_mask16.mz vr2{mr1}, 0(r6)
006270  0b933511  add.s r6, r11, r19
006274  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
006278  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
00627c  9f8c8100  addli r25, r3, 64
006280  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
006284  1f038300  addli r6, r6, 64
006288  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
00628c  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
006290  1f034c00  addli r6, r24, 32
006294  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
006298  92925b02  vadd.f.mz.rn vr5{mr1}, r23, vr5
00629c  8a101b02  vmul.f.mz.rn vr1{mr1}, r22, vr1
0062a0  8a125b02  vmul.f.mz.rn vr5{mr1}, r22, vr5
0062a4  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
0062a8  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
0062ac  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
0062b0  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
0062b4  4bb467fe  ble.s r15, r6, -756
0062b8  0b13b910  add.s r6, r18, r11
0062bc  8b9cb910  add.s r25, r19, r11
0062c0  1f0c8c00  addli r24, r24, 64
0062c4  9f850502  addli r11, r11, 256
0062c8  1f0d0301  addli r26, r6, 128
0062cc  9f8d0c01  addli r27, r25, 128
0062d0  1f038301  addli r6, r6, 192
0062d4  9f8c8c01  addli r25, r25, 192
0062d8  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
0062dc  1f8d0101  addli r26, r3, 128
0062e0  9f818101  addli r3, r3, 192
0062e4  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
0062e8  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
0062ec  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
0062f0  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
0062f4  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0062f8  92913b02  vadd.f.mz.rn vr3{mr1}, r23, vr3
0062fc  12924b02  vadd.f.mz.rn vr4{mr1}, r23, vr4
006300  8a113b02  vmul.f.mz.rn vr3{mr1}, r22, vr3
006304  0a124b02  vmul.f.mz.rn vr4{mr1}, r22, vr4
006308  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
00630c  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
006310  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
006314  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
006318  3f2dfcfe  blt.s r24, r15, -184
00631c  db94ffff  j -860
006320  9f0e8fd3  addli sp, r30, -5696
006324  e38f2e2c  loadli.w r31,  5648(sp)
006328  63cf2e2c  loadli.w r30,  5652(sp)
00632c  638e3e2c  loadli.w r28,  5656(sp)
006330  e3cd3e2c  loadli.w r27,  5660(sp)
006334  638d4e2c  loadli.w r26,  5664(sp)
006338  e3cc4e2c  loadli.w r25,  5668(sp)
00633c  638c5e2c  loadli.w r24,  5672(sp)
006340  e3cb5e2c  loadli.w r23,  5676(sp)
006344  638b6e2c  loadli.w r22,  5680(sp)
006348  e3ca6e2c  loadli.w r21,  5684(sp)
00634c  638a7e2c  loadli.w r20,  5688(sp)
006350  e3c97e2c  loadli.w r19,  5692(sp)
006354  9f8e8e2c  addli sp, sp, 5696
006358  5f800f00  jr r31, 0
00635c  00100000  exit
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
