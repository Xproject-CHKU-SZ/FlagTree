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
00017c  9f8e0ed4  addli sp, sp, -5632
000180  67cdee2b  storeli.w r30, 5588(sp)
000184  1f8f0e2c  addli r30, sp, 5632
000188  67ce9e2b  storeli.w r25, 5604(sp)
00018c  1f250000  addli r10, zero, 2
000190  e7cf3e2b  storeli.w r19, 5628(sp)
000194  e78f4e2b  storeli.w r20, 5624(sp)
000198  67cf5e2b  storeli.w r21, 5620(sp)
00019c  678f6e2b  storeli.w r22, 5616(sp)
0001a0  e7ce7e2b  storeli.w r23, 5612(sp)
0001a4  e78e8e2b  storeli.w r24, 5608(sp)
0001a8  678eae2b  storeli.w r26, 5600(sp)
0001ac  e7cdbe2b  storeli.w r27, 5596(sp)
0001b0  e78dce2b  storeli.w r28, 5592(sp)
0001b4  678dfe2b  storeli.w r31, 5584(sp)
0001b8  e3004f00  loadli.w r1,  32(r30)
0001bc  63472f00  loadli.w r14,  20(r30)
0001c0  e3072f00  loadli.w r15,  16(r30)
0001c4  e34c1f00  loadli.w r25,  12(r30)
0001c8  9f057fd6  addli r11, r30, -5320
0001cc  73b02500  store.d r[3:4], 0(r11)
0001d0  3f511500  blt.s r10, r1, 84
0001d4  1f110000  addli r2, zero, 1
0001d8  b7cc2004  beq r1, r2, 2864
0001dc  1f210000  addli r2, zero, 2
0001e0  bb8b2004  bneq r1, r2, 2784
0001e4  e3403f00  loadli.w r1,  28(r30)
0001e8  37e10014  beq r1, zero, 10328
0001ec  80300002  core_id r1
0001f0  1f210000  addli r2, zero, 2
0001f4  37822028  beq r1, r2, 20608
0001f8  1f110000  addli r2, zero, 1
0001fc  b7e02028  beq r1, r2, 20536
000200  3bc20028  bneq r1, zero, 20624
000204  63012f00  loadli.w r2,  16(r30)
000208  ab0100f0  lui r3, 983040
00020c  1b311100  slli r2, r2, 1
000210  17113100  or r2, r2, r3
000214  ab910100  lui r3, 25
000218  9f810100  addli r3, r3, 0
00021c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000220  5b0e0a00  j 20592
000224  1f310000  addli r2, zero, 3
000228  b78c2004  beq r1, r2, 2848
00022c  1f410000  addli r2, zero, 4
000230  3bca2004  bneq r1, r2, 2704
000234  e3002f00  loadli.w r1,  16(r30)
000238  1f010010  addli r2, zero, 2048
00023c  3ba1200a  bneq r1, r2, 5192
000240  e3403f00  loadli.w r1,  28(r30)
000244  37f3001a  beq r1, zero, 13532
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
0003bc  670b3fd4  storeli.w r3, -5456(r30)
0003c0  37a00100  beq r3, zero, 8
0003c4  9f02000a  addli r5, zero, 1280
0003c8  e3411f00  loadli.w r3,  12(r30)
0003cc  1f130000  addli r6, zero, 1
0003d0  3fb06132  blt.s r3, r6, 25612
0003d4  e3016fd5  loadli.w r3,  -5456(r30)
0003d8  9bc41000  srli r9, r1, 1
0003dc  80300002  core_id r1
0003e0  1f0a8fd7  addli r20, r30, -5184
0003e4  9bb51200  slli r11, r5, 1
0003e8  9f030000  addli r7, zero, 0
0003ec  1f797000  addli r18, zero, 63
0003f0  ab06803f  lui r13, 260096
0003f4  1f062000  addli r12, zero, 16
0003f8  2b0bffff  lui r22, 1048560
0003fc  2b0ec07f  lui r28, 523264
000400  9f3d0000  addli r27, zero, 3
000404  2bed7f00  lui r26, 2046
000408  1f571000  addli r14, zero, 13
00040c  0b912120  mul.s r2, r3, r2
000410  9bc11000  srli r3, r1, 1
000414  9b302100  slli r1, r2, 2
000418  e7432fd4  storeli.w r2, -5572(r30)
00041c  0b914010  add.s r2, r1, r4
000420  8b90a010  add.s r1, r1, r10
000424  2b02807f  lui r4, 522240
000428  1f251000  addli r10, zero, 10
00042c  67041fd6  storeli.w r1, -5312(r30)
000430  9bb02200  slli r1, r5, 2
000434  67082fd6  storeli.w r2, -5248(r30)
000438  1f814200  addli r2, r5, 32
00043c  8b904011  add.s r1, r1, r20
000440  e7422fd4  storeli.w r2, -5588(r30)
000444  0b914511  add.s r2, r11, r20
000448  9f8080ff  addli r1, r1, -64
00044c  e7021fd4  storeli.w r1, -5592(r30)
000450  9f0081ff  addli r1, r2, -64
000454  2bf100fc  lui r2, 1032207
000458  67421fd4  storeli.w r1, -5596(r30)
00045c  abf0ffff  lui r1, 1048575
000460  1b1401c0  ori r8, r2, 3072
000464  1f018fd4  addli r2, r30, -5568
000468  00a00000  mfence { lm }
00046c  e7039fd4  storeli.w r9, -5576(r30)
000470  67433fd4  storeli.w r3, -5580(r30)
000474  6703bfd4  storeli.w r11, -5584(r30)
000478  9b9000f8  ori r1, r1, 3968
00047c  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
000480  e7411fd4  storeli.w r1, -5604(r30)
000484  abf00000  lui r1, 15
000488  9b99f0ff  ori r19, r1, 4095
00048c  ab700000  lui r1, 7
000490  9b9af0ff  ori r21, r1, 4095
000494  ab00ff03  lui r1, 16368
000498  670c3fd5  storeli.w r19, -5440(r30)
00049c  9b9bf03f  ori r23, r1, 1023
0004a0  abe00700  lui r1, 126
0004a4  db030000  j 28
0004a8  00a00300  mfence { lm, sm, gm }
0004ac  80a10904  csr_set csr3, r19
0004b0  00d00100  sync_group
0004b4  8b939310  add.s r7, r7, r9
0004b8  3fa09301  blt.s r7, r25, 8
0004bc  5bfe0000  j 2032
0004c0  0b913310  add.s r2, r7, r3
0004c4  cb9f2cfe  ble.s r25, r2, -28
0004c8  e3011f00  loadli.w r3,  8(r30)
0004cc  0b113110  add.s r2, r2, r3
0004d0  8b819330  div.u r3, r7, r9
0004d4  e3447fd4  loadli.w r9,  -5572(r30)
0004d8  1b31b100  slli r2, r2, 11
0004dc  17119100  or r2, r2, r9
0004e0  9f047fd6  addli r9, r30, -5320
0004e4  33180128  sext_int2long r[17:18], r2
0004e8  2b0100f0  lui r2, 983040
0004ec  9bb16100  slli r3, r3, 6
0004f0  173c6802  sll.d r[25:26], r[17:18], r6
0004f4  6bd80400  load.d r[17:18], 0(r9)
0004f8  9f047fd5  addli r9, r30, -5448
0004fc  17912500  or r2, r11, r2
000500  9b810104  andi r3, r3, 64
000504  73b08401  store.d r[25:26], 0(r9)
000508  0b288811  add.ul r[17:18], r[17:18], r[25:26]
00050c  7f214801  l_gm2lm r2, r20, 0(r[17:18])
000510  00310002  core_id r2
000514  00a00200  mfence { lm, gm }
000518  979c2100  or r25, r3, r2
00051c  63414fd4  loadli.w r2,  -5596(r30)
000520  e3015fd4  loadli.w r3,  -5592(r30)
000524  e3445fd4  loadli.w r9,  -5588(r30)
000528  c2000102  vload.mz vr1{mr1}, 0(r2)
00052c  9f84c4ff  addli r9, r9, -32
000530  1f8881ff  addli r16, r3, -64
000534  1f0181ff  addli r2, r2, -64
000538  93059904  setlt.u r11, r18, r9
00053c  66c111a0  vmerge_h.hf vr2, vr3, vr1
000540  e6c01180  vmerge_l.hf vr1, vr3, vr1
000544  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
000548  9f8101ff  addli r3, r3, -128
00054c  46101802  vstore_mask16.mz vr1{mr1}, 0(r16)
000550  3bef05fe  bneq r11, zero, -40
000554  00a00000  mfence { lm }
000558  1f0c0005  addli r24, zero, 640
00055c  63016fd5  loadli.w r2,  -5456(r30)
000560  3b360100  bneq r2, zero, 396
000564  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000568  12313002  vadd.s.mz vr2{mr1}, zero, vr3
00056c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000570  e3413fd4  loadli.w r3,  -5604(r30)
000574  1f010000  addli r2, zero, 0
000578  8b15f110  add.s r11, r2, r15
00057c  8b142a10  add.s r9, r20, r2
000580  9f810101  addli r3, r3, 128
000584  1f010104  addli r2, r2, 512
000588  1f880501  addli r16, r11, 128
00058c  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
000590  9f888500  addli r17, r11, 64
000594  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
000598  1f898401  addli r18, r9, 192
00059c  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
0005a0  1f888501  addli r16, r11, 192
0005a4  4a930802  vloads_mask16.mz vr6{mr1}, 0(r17)
0005a8  9f888400  addli r17, r9, 64
0005ac  c2150902  vload_mask16.mz vr11{mr1}, 0(r18)
0005b0  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
0005b4  1f880401  addli r16, r9, 128
0005b8  42950802  vload_mask16.mz vr10{mr1}, 0(r17)
0005bc  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
0005c0  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0005c4  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0005c8  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0005cc  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0005d0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0005d4  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
0005d8  46108802  vstore_mask16.mz vr8{mr1}, 0(r16)
0005dc  1f880502  addli r16, r11, 256
0005e0  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0005e4  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0005e8  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0005ec  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
0005f0  4a100802  vloads_mask16.mz vr0{mr1}, 0(r16)
0005f4  1f888502  addli r16, r11, 320
0005f8  46106902  vstore_mask16.mz vr6{mr1}, 0(r18)
0005fc  1f890402  addli r18, r9, 256
000600  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000604  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000608  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00060c  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
000610  1f880503  addli r16, r11, 384
000614  c2130902  vload_mask16.mz vr7{mr1}, 0(r18)
000618  9f858503  addli r11, r11, 448
00061c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000620  4a140802  vloads_mask16.mz vr8{mr1}, 0(r16)
000624  1f888402  addli r16, r9, 320
000628  4a950502  vloads_mask16.mz vr10{mr1}, 0(r11)
00062c  9f850403  addli r11, r9, 384
000630  9f848403  addli r9, r9, 448
000634  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
000638  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00063c  c2930502  vload_mask16.mz vr7{mr1}, 0(r11)
000640  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000644  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
000648  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00064c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000650  46100902  vstore_mask16.mz vr0{mr1}, 0(r18)
000654  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000658  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
00065c  13888105  setlt.u r16, r3, r24
000660  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000664  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000668  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00066c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000670  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000674  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
000678  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
00067c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000680  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000684  bb5b08fe  bneq r16, zero, -268
000688  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00068c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000690  1f010002  addli r2, zero, 256
000694  6a7101c0  vsrl.p vr2, r2, vr0
000698  ea7111c0  vsrl.p vr3, r2, vr1
00069c  1f010001  addli r2, zero, 128
0006a0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006a4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006a8  6a7101c0  vsrl.p vr2, r2, vr0
0006ac  ea7111c0  vsrl.p vr3, r2, vr1
0006b0  1f018000  addli r2, zero, 64
0006b4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006b8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006bc  6a7101c0  vsrl.p vr2, r2, vr0
0006c0  ea7111c0  vsrl.p vr3, r2, vr1
0006c4  1f014000  addli r2, zero, 32
0006c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006d0  6a7101c0  vsrl.p vr2, r2, vr0
0006d4  ea7111c0  vsrl.p vr3, r2, vr1
0006d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006e0  fa110040  vextracti.f r3, 0(vr0)
0006e4  fa940040  vextracti.f r9, 0(vr1)
0006e8  db670000  j 828
0006ec  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0006f0  abf1ffff  lui r3, 1048575
0006f4  1f010000  addli r2, zero, 0
0006f8  9f090003  addli r19, zero, 384
0006fc  67029fd5  storeli.w r25, -5600(r30)
000700  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000704  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000708  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00070c  9b9101f8  ori r3, r3, 3968
000710  8b952710  add.s r11, r15, r2
000714  8b142a10  add.s r9, r20, r2
000718  9f810101  addli r3, r3, 128
00071c  1f010104  addli r2, r2, 512
000720  1f890531  addli r18, r11, 6272
000724  1f880530  addli r16, r11, 6144
000728  9f8c8531  addli r25, r11, 6336
00072c  9f880418  addli r17, r9, 3072
000730  ca130902  vloads_mask16.mz vr7{mr1}, 0(r18)
000734  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
000738  1f888530  addli r16, r11, 6208
00073c  ca940c02  vloads_mask16.mz vr9{mr1}, 0(r25)
000740  1f890419  addli r18, r9, 3200
000744  42930802  vload_mask16.mz vr6{mr1}, 0(r17)
000748  9f8c8419  addli r25, r9, 3264
00074c  4a140802  vloads_mask16.mz vr8{mr1}, 0(r16)
000750  42150902  vload_mask16.mz vr10{mr1}, 0(r18)
000754  1f888418  addli r16, r9, 3136
000758  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
00075c  c2150802  vload_mask16.mz vr11{mr1}, 0(r16)
000760  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
000764  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
000768  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
00076c  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
000770  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000774  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
000778  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
00077c  9f880532  addli r17, r11, 6400
000780  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
000784  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
000788  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00078c  46107902  vstore_mask16.mz vr7{mr1}, 0(r18)
000790  1f89041a  addli r18, r9, 3328
000794  c2130902  vload_mask16.mz vr7{mr1}, 0(r18)
000798  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
00079c  13883105  setlt.u r16, r3, r19
0007a0  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0007a4  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0007a8  4a900802  vloads_mask16.mz vr0{mr1}, 0(r17)
0007ac  9f888532  addli r17, r11, 6464
0007b0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0007b4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0007b8  4a930802  vloads_mask16.mz vr6{mr1}, 0(r17)
0007bc  9f880533  addli r17, r11, 6528
0007c0  9f858533  addli r11, r11, 6592
0007c4  4a940802  vloads_mask16.mz vr8{mr1}, 0(r17)
0007c8  9f88841a  addli r17, r9, 3392
0007cc  4a950502  vloads_mask16.mz vr10{mr1}, 0(r11)
0007d0  9f85041b  addli r11, r9, 3456
0007d4  9f84841b  addli r9, r9, 3520
0007d8  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
0007dc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0007e0  c2930502  vload_mask16.mz vr7{mr1}, 0(r11)
0007e4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0007e8  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
0007ec  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0007f0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0007f4  46100902  vstore_mask16.mz vr0{mr1}, 0(r18)
0007f8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0007fc  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
000800  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000804  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000808  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00080c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000810  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000814  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
000818  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
00081c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000820  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000824  bb3b08fe  bneq r16, zero, -276
000828  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00082c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000830  9f010002  addli r3, zero, 256
000834  1f010000  addli r2, zero, 0
000838  eaf111c0  vsrl.p vr3, r3, vr1
00083c  6af101c0  vsrl.p vr2, r3, vr0
000840  9f010001  addli r3, zero, 128
000844  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000848  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00084c  eaf111c0  vsrl.p vr3, r3, vr1
000850  6af101c0  vsrl.p vr2, r3, vr0
000854  9f018000  addli r3, zero, 64
000858  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00085c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000860  eaf111c0  vsrl.p vr3, r3, vr1
000864  6af101c0  vsrl.p vr2, r3, vr0
000868  9f014000  addli r3, zero, 32
00086c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000870  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000874  eaf111c0  vsrl.p vr3, r3, vr1
000878  6af101c0  vsrl.p vr2, r3, vr0
00087c  abf1ffff  lui r3, 1048575
000880  9b9101f8  ori r3, r3, 3968
000884  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000888  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00088c  fa990040  vextracti.f r19, 0(vr1)
000890  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000894  fa150040  vextracti.f r11, 0(vr0)
000898  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00089c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0008a0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0008a4  8b942710  add.s r9, r15, r2
0008a8  8b182a10  add.s r17, r20, r2
0008ac  9f810101  addli r3, r3, 128
0008b0  1f010104  addli r2, r2, 512
0008b4  1f880418  addli r16, r9, 3072
0008b8  1f890419  addli r18, r9, 3200
0008bc  42940802  vload_mask16.mz vr8{mr1}, 0(r17)
0008c0  9f8c8801  addli r25, r17, 192
0008c4  4a100802  vloads_mask16.mz vr0{mr1}, 0(r16)
0008c8  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
0008cc  1f888418  addli r16, r9, 3136
0008d0  1f898419  addli r18, r9, 3264
0008d4  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0008d8  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
0008dc  1f880801  addli r16, r17, 128
0008e0  ca130902  vloads_mask16.mz vr7{mr1}, 0(r18)
0008e4  1f898800  addli r18, r17, 64
0008e8  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
0008ec  42150902  vload_mask16.mz vr10{mr1}, 0(r18)
0008f0  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0008f4  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0008f8  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0008fc  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
000900  46108802  vstore_mask16.mz vr8{mr1}, 0(r16)
000904  1f88041a  addli r16, r9, 3328
000908  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00090c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000910  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
000914  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000918  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
00091c  4a100802  vloads_mask16.mz vr0{mr1}, 0(r16)
000920  1f88841a  addli r16, r9, 3392
000924  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
000928  9f8c0802  addli r25, r17, 256
00092c  46105902  vstore_mask16.mz vr5{mr1}, 0(r18)
000930  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000934  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000938  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
00093c  1f88041b  addli r16, r9, 3456
000940  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
000944  9f84841b  addli r9, r9, 3520
000948  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00094c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000950  4a140802  vloads_mask16.mz vr8{mr1}, 0(r16)
000954  1f888802  addli r16, r17, 320
000958  4a950402  vloads_mask16.mz vr10{mr1}, 0(r9)
00095c  9f840803  addli r9, r17, 384
000960  9f888803  addli r17, r17, 448
000964  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
000968  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00096c  c2930402  vload_mask16.mz vr7{mr1}, 0(r9)
000970  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000974  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
000978  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00097c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000980  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
000984  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000988  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
00098c  13888105  setlt.u r16, r3, r24
000990  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000994  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000998  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00099c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0009a0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0009a4  46905402  vstore_mask16.mz vr5{mr1}, 0(r9)
0009a8  46907802  vstore_mask16.mz vr7{mr1}, 0(r17)
0009ac  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0009b0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0009b4  bb4b08fe  bneq r16, zero, -272
0009b8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0009bc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0009c0  1f010002  addli r2, zero, 256
0009c4  e30c4fd4  loadli.w r25,  -5600(r30)
0009c8  6a7101c0  vsrl.p vr2, r2, vr0
0009cc  ea7111c0  vsrl.p vr3, r2, vr1
0009d0  1f010001  addli r2, zero, 128
0009d4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009d8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009dc  6a7101c0  vsrl.p vr2, r2, vr0
0009e0  ea7111c0  vsrl.p vr3, r2, vr1
0009e4  1f018000  addli r2, zero, 64
0009e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009f0  6a7101c0  vsrl.p vr2, r2, vr0
0009f4  ea7111c0  vsrl.p vr3, r2, vr1
0009f8  1f014000  addli r2, zero, 32
0009fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000a00  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a04  6a7101c0  vsrl.p vr2, r2, vr0
000a08  ea7111c0  vsrl.p vr3, r2, vr1
000a0c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000a10  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a14  fa940040  vextracti.f r9, 0(vr1)
000a18  7a110040  vextracti.f r2, 0(vr0)
000a1c  8be12510  add.f.rn r3, r11, r2
000a20  8be49910  add.f.rn r9, r19, r9
000a24  2b680000  lui r16, 6
000a28  ab680000  lui r17, 6
000a2c  9bb52c00  slli r11, r25, 2
000a30  1f010000  addli r2, zero, 0
000a34  1f080800  addli r16, r16, 0
000a38  9f880804  addli r17, r17, 512
000a3c  1f090800  addli r18, r16, 0
000a40  9f890800  addli r19, r17, 0
000a44  0b982511  add.s r16, r11, r18
000a48  8b983511  add.s r17, r11, r19
000a4c  73e09800  stores.w r9, 0(r17)
000a50  73603800  stores.w r3, 0(r16)
000a54  9b944500  ori r9, r11, 4
000a58  00a00300  mfence { lm, sm, gm }
000a5c  e3018fd5  loadli.w r3,  -5440(r30)
000a60  8b952411  add.s r11, r9, r18
000a64  8b943411  add.s r9, r9, r19
000a68  80a10104  csr_set csr3, r3
000a6c  9b81ec07  andi r3, r25, 126
000a70  00d00100  sync_group
000a74  efc50500  loads.w r11, 0(r11)
000a78  efc40400  loads.w r9, 0(r9)
000a7c  9bb12100  slli r3, r3, 2
000a80  0b982111  add.s r16, r3, r18
000a84  8b913111  add.s r3, r3, r19
000a88  6f480800  loads.w r16, 0(r16)
000a8c  efc10100  loads.w r3, 0(r3)
000a90  8be50511  add.f.rn r11, r11, r16
000a94  2b08003a  lui r16, 237568
000a98  8be13410  add.f.rn r3, r9, r3
000a9c  8be40521  mul.f.rn r9, r11, r16
000aa0  8be10121  mul.f.rn r3, r3, r16
000aa4  8be59420  mul.f.rn r11, r9, r9
000aa8  8be40458  neg.f r9, r9
000aac  8be1b118  sub.f.rn r3, r3, r11
000ab0  e3053f00  loadli.w r11,  24(r30)
000ab4  8be1b110  add.f.rn r3, r3, r11
000ab8  9f050000  addli r11, zero, 0
000abc  8f810108  sqrt.f.rn r3, r3
000ac0  8f813618  div.f.rn r3, r13, r3
000ac4  e3080fd7  loadli.w r17,  -5248(r30)
000ac8  63098fd6  loadli.w r18,  -5312(r30)
000acc  0b182a10  add.s r16, r20, r2
000ad0  9f0c8800  addli r25, r16, 64
000ad4  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
000ad8  8b982810  add.s r17, r17, r2
000adc  0b192910  add.s r18, r18, r2
000ae0  c2900c02  vload_mask16.mz vr1{mr1}, 0(r25)
000ae4  9f898800  addli r19, r17, 64
000ae8  4a910802  vloads_mask16.mz vr2{mr1}, 0(r17)
000aec  4a120902  vloads_mask16.mz vr4{mr1}, 0(r18)
000af0  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
000af4  9f098900  addli r19, r18, 64
000af8  12900402  vadd.f.mz.rn vr0{mr1}, r9, vr0
000afc  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
000b00  9f894500  addli r19, r11, 32
000b04  92901402  vadd.f.mz.rn vr1{mr1}, r9, vr1
000b08  93893207  setle.u r19, r5, r19
000b0c  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
000b10  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
000b14  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
000b18  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
000b1c  46104802  vstore_mask16.mz vr4{mr1}, 0(r16)
000b20  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
000b24  bb910900  bneq r19, zero, 100
000b28  9f8c0801  addli r25, r17, 128
000b2c  9f090801  addli r19, r16, 128
000b30  1f088801  addli r16, r16, 192
000b34  9f888801  addli r17, r17, 192
000b38  9f858500  addli r11, r11, 64
000b3c  1f010102  addli r2, r2, 256
000b40  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
000b44  9f0c0901  addli r25, r18, 128
000b48  1f098901  addli r18, r18, 192
000b4c  42900902  vload_mask16.mz vr0{mr1}, 0(r19)
000b50  c2100802  vload_mask16.mz vr1{mr1}, 0(r16)
000b54  4a920802  vloads_mask16.mz vr4{mr1}, 0(r17)
000b58  93885504  setlt.u r17, r11, r5
000b5c  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
000b60  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
000b64  12900402  vadd.f.mz.rn vr0{mr1}, r9, vr0
000b68  92901402  vadd.f.mz.rn vr1{mr1}, r9, vr1
000b6c  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
000b70  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
000b74  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
000b78  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
000b7c  46903902  vstore_mask16.mz vr3{mr1}, 0(r19)
000b80  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
000b84  3b8d08fe  bneq r17, zero, -192
000b88  1f018fd7  addli r2, r30, -5184
000b8c  9f018fd7  addli r3, r30, -5184
000b90  9f040000  addli r9, zero, 0
000b94  00a00000  mfence { lm }
000b98  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000b9c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000ba0  9f858100  addli r11, r3, 64
000ba4  9f844400  addli r9, r9, 32
000ba8  9f810101  addli r3, r3, 128
000bac  6a201622  vor.u.mz vr0{mr1}, r12, vr1
000bb0  ea221722  vor.u.mz vr5{mr1}, r14, vr1
000bb4  42910502  vload_mask16.mz vr2{mr1}, 0(r11)
000bb8  93855404  setlt.u r11, r9, r5
000bbc  6e3230c2  vsrl.s.mz vr4{mr1}, vr0, vr3
000bc0  6e3020c2  vsrl.s.mz vr0{mr1}, vr0, vr2
000bc4  6a324302  vand.s.mz vr4{mr1}, r6, vr4
000bc8  6a300302  vand.s.mz vr0{mr1}, r6, vr0
000bcc  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
000bd0  e69101c0  vabs.f vr3, vr3
000bd4  16300102  vadd.s.mz vr0{mr1}, vr2, vr0
000bd8  661101c0  vabs.f vr2, vr2
000bdc  12b24a02  vadd.s.mz vr4{mr1}, r21, vr4
000be0  72213242  vlt.u.mz mr2{mr1}, r4, vr3
000be4  12b00a02  vadd.s.mz vr0{mr1}, r21, vr0
000be8  6a324b02  vand.s.mz vr4{mr1}, r22, vr4
000bec  6a300b02  vand.s.mz vr0{mr1}, r22, vr0
000bf0  6a221e34  vor.u.mh vr4{mr2}, r28, vr1
000bf4  72212242  vlt.u.mz mr2{mr1}, r4, vr2
000bf8  6aa11d22  vor.u.mz vr2{mr1}, r27, vr1
000bfc  6a201e34  vor.u.mh vr0{mr2}, r28, vr1
000c00  ea201522  vor.u.mz vr1{mr1}, r10, vr1
000c04  eeb142c2  vsrl.s.mz vr3{mr1}, vr5, vr4
000c08  6e3241c2  vsrl.s.mz vr4{mr1}, vr2, vr4
000c0c  eeb202c2  vsrl.s.mz vr5{mr1}, vr5, vr0
000c10  6e3001c2  vsrl.s.mz vr0{mr1}, vr2, vr0
000c14  6ab13002  vand.s.mz vr2{mr1}, r1, vr3
000c18  6a324d02  vand.s.mz vr4{mr1}, r26, vr4
000c1c  eab15002  vand.s.mz vr3{mr1}, r1, vr5
000c20  6a300d02  vand.s.mz vr0{mr1}, r26, vr0
000c24  6ab12622  vor.s.mz vr2{mr1}, r13, vr2
000c28  6ab24622  vor.s.mz vr4{mr1}, r13, vr4
000c2c  6ab00622  vor.s.mz vr0{mr1}, r13, vr0
000c30  eab13622  vor.s.mz vr3{mr1}, r13, vr3
000c34  06110120  vfloat2fp16_l.rz vr2, vr2
000c38  06500020  vfloat2fp16_h.rz vr0, vr0
000c3c  06d10120  vfloat2fp16_h.rz vr2, vr3
000c40  06100220  vfloat2fp16_l.rz vr0, vr4
000c44  eeb020a2  vsll.s.mz vr1{mr1}, vr1, vr2
000c48  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000c4c  ea301402  vand.s.mz vr1{mr1}, r8, vr1
000c50  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
000c54  46000102  vstore.mz vr0{mr1}, 0(r2)
000c58  1f018100  addli r2, r2, 64
000c5c  bbfc05fe  bneq r11, zero, -196
000c60  9f017fd5  addli r3, r30, -5448
000c64  6b580f00  load.d r[17:18], 0(r30)
000c68  e3056fd4  loadli.w r11,  -5584(r30)
000c6c  2b0100f0  lui r2, 983040
000c70  6bd90100  load.d r[19:20], 0(r3)
000c74  00a00000  mfence { lm }
000c78  17912500  or r2, r11, r2
000c7c  0b282811  add.ul r[17:18], r[17:18], r[19:20]
000c80  1f797000  addli r18, zero, 63
000c84  7f314801  s_lm2gm r2, r20, 0(r[17:18])
000c88  1f018fd4  addli r2, r30, -5568
000c8c  00a00200  mfence { lm, gm }
000c90  e34c1f00  loadli.w r25,  12(r30)
000c94  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
000c98  e3047fd4  loadli.w r9,  -5576(r30)
000c9c  e3416fd4  loadli.w r3,  -5580(r30)
000ca0  e3098fd5  loadli.w r19,  -5440(r30)
000ca4  8b939310  add.s r7, r7, r9
000ca8  3fe093fd  blt.s r7, r25, -2024
000cac  abf00000  lui r1, 15
000cb0  9b90f0ff  ori r1, r1, 4095
000cb4  80a10004  csr_set csr3, r1
000cb8  00d00100  sync_group
000cbc  5b640b00  j 23328
000cc0  e3403f00  loadli.w r1,  28(r30)
000cc4  37ca000a  beq r1, zero, 5776
000cc8  e3002f00  loadli.w r1,  16(r30)
000ccc  1f010010  addli r2, zero, 2048
000cd0  3baa2012  bneq r1, r2, 9864
000cd4  00350002  core_id r10
000cd8  9f200000  addli r1, zero, 2
000cdc  377e1526  beq r10, r1, 20380
000ce0  9f100000  addli r1, zero, 1
000ce4  376d1526  beq r10, r1, 20312
000ce8  bb2e0526  bneq r10, zero, 20392
000cec  9f000040  addli r1, zero, 8192
000cf0  2b0100f0  lui r2, 983040
000cf4  97902000  or r1, r1, r2
000cf8  2b110200  lui r2, 33
000cfc  1f010100  addli r2, r2, 0
000d00  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000d04  dbf10900  j 20364
000d08  e3403f00  loadli.w r1,  28(r30)
000d0c  37db0010  beq r1, zero, 8916
000d10  80300002  core_id r1
000d14  1f210000  addli r2, zero, 2
000d18  37dd2024  beq r1, r2, 19284
000d1c  1f110000  addli r2, zero, 1
000d20  b7d42022  beq r1, r2, 17716
000d24  bb9d0024  bneq r1, zero, 19300
000d28  63012f00  loadli.w r2,  16(r30)
000d2c  ab0100f0  lui r3, 983040
000d30  1b311100  slli r2, r2, 1
000d34  17113100  or r2, r2, r3
000d38  abd10100  lui r3, 29
000d3c  9f810100  addli r3, r3, 0
000d40  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000d44  db680900  j 19268
000d48  e3002f00  loadli.w r1,  16(r30)
000d4c  1f010010  addli r2, zero, 2048
000d50  3be02008  bneq r1, r2, 4120
000d54  e3403f00  loadli.w r1,  28(r30)
000d58  b7d1001c  beq r1, zero, 14452
000d5c  803b0002  core_id r23
000d60  abd70000  lui r15, 13
000d64  00510102  load_param_i r2, 2
000d68  1f150000  addli r10, zero, 1
000d6c  9f058fd7  addli r11, r30, -5184
000d70  1f068000  addli r12, zero, 64
000d74  9f060010  addli r13, zero, 2048
000d78  9bb05b00  slli r1, r23, 5
000d7c  9b315100  slli r3, r2, 5
000d80  9f8707f0  addli r15, r15, -2048
000d84  1f870000  addli r14, r1, 0
000d88  33080728  zext_int2long r[17:18], r14
000d8c  2b0900f0  lui r18, 983040
000d90  1738a802  sll.d r[17:18], r[17:18], r10
000d94  17192601  or r18, r12, r18
000d98  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000d9c  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000da0  1b382700  slli r16, r14, 2
000da4  0b97e110  add.s r14, r3, r14
000da8  00a00200  mfence { lm, gm }
000dac  42800502  vload.mz vr0{mr1}, 0(r11)
000db0  9308d704  setlt.u r17, r14, r13
000db4  0b18f810  add.s r16, r16, r15
000db8  1f098800  addli r18, r16, 64
000dbc  86300000  vfp162float_l.rn vr1, vr0
000dc0  06700000  vfp162float_h.rn vr0, vr0
000dc4  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000dc8  4e100902  vstores_mask16.mz vr0{mr1}, 0(r18)
000dcc  bbfe08fe  bneq r17, zero, -68
000dd0  abf20000  lui r5, 15
000dd4  1bb57b00  slli r10, r23, 7
000dd8  1b327100  slli r4, r2, 7
000ddc  1f160000  addli r12, zero, 1
000de0  9f068fd7  addli r13, r30, -5184
000de4  1f078000  addli r14, zero, 64
000de8  1f080010  addli r16, zero, 2048
000dec  9f880000  addli r17, r1, 0
000df0  00a00000  mfence { lm }
000df4  9f8202f0  addli r5, r5, -2048
000df8  8b155510  add.s r11, r10, r5
000dfc  33890828  zext_int2long r[19:20], r17
000e00  2b0a00f0  lui r20, 983040
000e04  8b983810  add.s r17, r17, r3
000e08  1739c902  sll.d r[19:20], r[19:20], r12
000e0c  171a4701  or r20, r14, r20
000e10  0b292311  add.ul r[19:20], r[7:8], r[19:20]
000e14  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
000e18  13890805  setlt.u r18, r17, r16
000e1c  9f898500  addli r19, r11, 64
000e20  00a00200  mfence { lm, gm }
000e24  42800602  vload.mz vr0{mr1}, 0(r13)
000e28  86300000  vfp162float_l.rn vr1, vr0
000e2c  06700000  vfp162float_h.rn vr0, vr0
000e30  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
000e34  8b954510  add.s r11, r11, r4
000e38  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
000e3c  3b0f09fe  bneq r18, zero, -64
000e40  ab130100  lui r7, 17
000e44  9f058fd7  addli r11, r30, -5184
000e48  1f068000  addli r12, zero, 64
000e4c  9f060010  addli r13, zero, 2048
000e50  00a00000  mfence { lm }
000e54  9f8303f0  addli r7, r7, -2048
000e58  0b137510  add.s r6, r10, r7
000e5c  1f150000  addli r10, zero, 1
000e60  33880028  zext_int2long r[17:18], r1
000e64  2b0700f0  lui r14, 983040
000e68  8b903010  add.s r1, r1, r3
000e6c  1738a802  sll.d r[17:18], r[17:18], r10
000e70  1717e600  or r14, r12, r14
000e74  0b280411  add.ul r[17:18], r[9:10], r[17:18]
000e78  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000e7c  1387d004  setlt.u r14, r1, r13
000e80  1f088300  addli r16, r6, 64
000e84  00a00200  mfence { lm, gm }
000e88  42800502  vload.mz vr0{mr1}, 0(r11)
000e8c  86300000  vfp162float_l.rn vr1, vr0
000e90  06700000  vfp162float_h.rn vr0, vr0
000e94  4e101302  vstores_mask16.mz vr1{mr1}, 0(r6)
000e98  0b134310  add.s r6, r6, r4
000e9c  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
000ea0  3b0f07fe  bneq r14, zero, -64
000ea4  abf00000  lui r1, 15
000ea8  00a00300  mfence { lm, sm, gm }
000eac  9b811b00  andi r3, r23, 1
000eb0  1f020006  addli r4, zero, 768
000eb4  9b90f0ff  ori r1, r1, 4095
000eb8  80a10004  csr_set csr3, r1
000ebc  9f000006  addli r1, zero, 768
000ec0  00d00100  sync_group
000ec4  67083fd6  storeli.w r3, -5248(r30)
000ec8  37a00100  beq r3, zero, 8
000ecc  1f02000a  addli r4, zero, 1280
000ed0  e3411f00  loadli.w r3,  12(r30)
000ed4  1f130000  addli r6, zero, 1
000ed8  3f94612c  blt.s r3, r6, 22788
000edc  e3010fd7  loadli.w r3,  -5248(r30)
000ee0  9f068fd7  addli r13, r30, -5184
000ee4  1b441100  srli r8, r2, 1
000ee8  1f014200  addli r2, r4, 32
000eec  1b351200  slli r10, r4, 1
000ef0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000ef4  2b390100  lui r18, 19
000ef8  1f030000  addli r6, zero, 0
000efc  9bc41b00  srli r9, r23, 1
000f00  9f787000  addli r17, zero, 63
000f04  1f0a0005  addli r20, zero, 640
000f08  1f0c4000  addli r24, zero, 32
000f0c  1f0e0003  addli r28, zero, 384
000f10  670c2fd4  storeli.w r2, -5440(r30)
000f14  0b11d510  add.s r2, r10, r13
000f18  1f0909f4  addli r18, r18, -1536
000f1c  8b901120  mul.s r1, r3, r1
000f20  67041fd6  storeli.w r1, -5312(r30)
000f24  9bb02000  slli r1, r1, 2
000f28  8b955010  add.s r11, r1, r5
000f2c  0b967010  add.s r12, r1, r7
000f30  9b302200  slli r1, r4, 2
000f34  8b90d010  add.s r1, r1, r13
000f38  9f8080ff  addli r1, r1, -64
000f3c  e70b1fd4  storeli.w r1, -5448(r30)
000f40  9f0081ff  addli r1, r2, -64
000f44  1f018fd4  addli r2, r30, -5568
000f48  670b1fd4  storeli.w r1, -5456(r30)
000f4c  abf0ffff  lui r1, 1048575
000f50  00a00000  mfence { lm }
000f54  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000f58  1f810c00  addli r2, r25, 0
000f5c  ab3c0100  lui r25, 19
000f60  9b9000f8  ori r1, r1, 3968
000f64  9f8c0cf0  addli r25, r25, -2048
000f68  e7431fd4  storeli.w r1, -5572(r30)
000f6c  abf00000  lui r1, 15
000f70  1b9df0ff  ori r26, r1, 4095
000f74  5b040000  j 32
000f78  00a00300  mfence { lm, sm, gm }
000f7c  80210d04  csr_set csr3, r26
000f80  00d00100  sync_group
000f84  63411f00  loadli.w r2,  12(r30)
000f88  0b138310  add.s r6, r6, r8
000f8c  3f202300  blt.s r6, r2, 8
000f90  dba3ffff  j -740
000f94  8b109310  add.s r1, r6, r9
000f98  cb0f11fe  ble.s r2, r1, -32
000f9c  63011f00  loadli.w r2,  8(r30)
000fa0  8b028330  div.u r5, r6, r8
000fa4  9f110000  addli r3, zero, 1
000fa8  ab0300f0  lui r7, 983040
000fac  8b902010  add.s r1, r1, r2
000fb0  63018fd6  loadli.w r2,  -5312(r30)
000fb4  9bb0b000  slli r1, r1, 11
000fb8  97902000  or r1, r1, r2
000fbc  b3900028  sext_int2long r[2:3], r1
000fc0  17b13002  sll.d r[3:4], r[2:3], r3
000fc4  9bb06200  slli r1, r5, 6
000fc8  9f027fd6  addli r5, r30, -5320
000fcc  ebda0200  load.d r[22:23], 0(r5)
000fd0  97127500  or r5, r10, r7
000fd4  9b800004  andi r1, r1, 64
000fd8  17977001  or r14, r1, r23
000fdc  8baa2a10  add.ul r[22:23], r[22:23], r[3:4]
000fe0  ffa2da00  l_gm2lm r5, r13, 0(r[22:23])
000fe4  00a00200  mfence { lm, gm }
000fe8  e3006fd5  loadli.w r1,  -5456(r30)
000fec  e3027fd5  loadli.w r5,  -5448(r30)
000ff0  e3038fd5  loadli.w r7,  -5440(r30)
000ff4  c2800002  vload.mz vr1{mr1}, 0(r1)
000ff8  9f83c3ff  addli r7, r7, -32
000ffc  9f8982ff  addli r19, r5, -64
001000  9f8080ff  addli r1, r1, -64
001004  13887804  setlt.u r16, r17, r7
001008  06f10000  vfp162float_h.rn vr2, vr1
00100c  86b00000  vfp162float_l.rn vr1, vr1
001010  46902202  vstore_mask16.mz vr2{mr1}, 0(r5)
001014  9f8202ff  addli r5, r5, -128
001018  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
00101c  3b6f08fe  bneq r16, zero, -40
001020  00a00000  mfence { lm }
001024  e3000fd7  loadli.w r1,  -5248(r30)
001028  3bc60000  bneq r1, zero, 400
00102c  9f008fd4  addli r1, r30, -5568
001030  63487fd4  loadli.w r16,  -5572(r30)
001034  9f020000  addli r5, zero, 0
001038  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
00103c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
001040  12313002  vadd.s.mz vr2{mr1}, zero, vr3
001044  12323002  vadd.s.mz vr4{mr1}, zero, vr3
001048  8b90f210  add.s r1, r5, r15
00104c  8b935610  add.s r7, r13, r5
001050  1f080801  addli r16, r16, 128
001054  9f820204  addli r5, r5, 512
001058  9f890001  addli r19, r1, 128
00105c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
001060  9f8a8000  addli r21, r1, 64
001064  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
001068  1f8b8301  addli r22, r7, 192
00106c  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
001070  9f898001  addli r19, r1, 192
001074  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
001078  9f8a8300  addli r21, r7, 64
00107c  c2150b02  vload_mask16.mz vr11{mr1}, 0(r22)
001080  ca930902  vloads_mask16.mz vr7{mr1}, 0(r19)
001084  9f890301  addli r19, r7, 128
001088  42950a02  vload_mask16.mz vr10{mr1}, 0(r21)
00108c  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
001090  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001094  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
001098  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00109c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0010a0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0010a4  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
0010a8  46908902  vstore_mask16.mz vr8{mr1}, 0(r19)
0010ac  9f890002  addli r19, r1, 256
0010b0  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0010b4  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0010b8  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0010bc  46905a02  vstore_mask16.mz vr5{mr1}, 0(r21)
0010c0  4a900902  vloads_mask16.mz vr0{mr1}, 0(r19)
0010c4  9f898002  addli r19, r1, 320
0010c8  46106b02  vstore_mask16.mz vr6{mr1}, 0(r22)
0010cc  1f8b0302  addli r22, r7, 256
0010d0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0010d4  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0010d8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0010dc  4a930902  vloads_mask16.mz vr6{mr1}, 0(r19)
0010e0  9f890003  addli r19, r1, 384
0010e4  c2130b02  vload_mask16.mz vr7{mr1}, 0(r22)
0010e8  9f808003  addli r1, r1, 448
0010ec  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0010f0  4a940902  vloads_mask16.mz vr8{mr1}, 0(r19)
0010f4  9f898302  addli r19, r7, 320
0010f8  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
0010fc  9f800303  addli r1, r7, 384
001100  9f838303  addli r7, r7, 448
001104  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
001108  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00110c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001110  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001114  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001118  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00111c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001120  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
001124  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001128  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
00112c  93094805  setlt.u r19, r16, r20
001130  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001134  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001138  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00113c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001140  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001144  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001148  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
00114c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001150  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001154  bbdb09fe  bneq r19, zero, -268
001158  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00115c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001160  9f000002  addli r1, zero, 256
001164  6af100c0  vsrl.p vr2, r1, vr0
001168  eaf110c0  vsrl.p vr3, r1, vr1
00116c  9f000001  addli r1, zero, 128
001170  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001174  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001178  6af100c0  vsrl.p vr2, r1, vr0
00117c  eaf110c0  vsrl.p vr3, r1, vr1
001180  9f008000  addli r1, zero, 64
001184  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001188  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00118c  6af100c0  vsrl.p vr2, r1, vr0
001190  eaf110c0  vsrl.p vr3, r1, vr1
001194  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001198  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00119c  6a710cc0  vsrl.p vr2, r24, vr0
0011a0  ea711cc0  vsrl.p vr3, r24, vr1
0011a4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0011a8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0011ac  fa100040  vextracti.f r1, 0(vr0)
0011b0  fa930040  vextracti.f r7, 0(vr1)
0011b4  db650000  j 812
0011b8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0011bc  abf0ffff  lui r1, 1048575
0011c0  1f080000  addli r16, zero, 0
0011c4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0011c8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0011cc  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0011d0  9b9900f8  ori r19, r1, 3968
0011d4  8b930711  add.s r7, r15, r16
0011d8  8b920611  add.s r5, r13, r16
0011dc  9f890901  addli r19, r19, 128
0011e0  1f080804  addli r16, r16, 512
0011e4  1f8b0331  addli r22, r7, 6272
0011e8  9f800330  addli r1, r7, 6144
0011ec  9f8d8331  addli r27, r7, 6336
0011f0  9f8a0218  addli r21, r5, 3072
0011f4  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
0011f8  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
0011fc  9f808330  addli r1, r7, 6208
001200  ca940d02  vloads_mask16.mz vr9{mr1}, 0(r27)
001204  1f8b0219  addli r22, r5, 3200
001208  42930a02  vload_mask16.mz vr6{mr1}, 0(r21)
00120c  9f8d8219  addli r27, r5, 3264
001210  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
001214  42150b02  vload_mask16.mz vr10{mr1}, 0(r22)
001218  9f808218  addli r1, r5, 3136
00121c  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
001220  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
001224  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001228  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
00122c  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
001230  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
001234  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001238  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
00123c  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
001240  9f8a0332  addli r21, r7, 6400
001244  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
001248  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
00124c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001250  46107b02  vstore_mask16.mz vr7{mr1}, 0(r22)
001254  1f8b021a  addli r22, r5, 3328
001258  c2130b02  vload_mask16.mz vr7{mr1}, 0(r22)
00125c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001260  9f80021b  addli r1, r5, 3456
001264  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
001268  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00126c  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
001270  9f8a8332  addli r21, r7, 6464
001274  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001278  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00127c  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
001280  9f8a0333  addli r21, r7, 6528
001284  9f838333  addli r7, r7, 6592
001288  4a940a02  vloads_mask16.mz vr8{mr1}, 0(r21)
00128c  9f8a821a  addli r21, r5, 3392
001290  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
001294  9f82821b  addli r5, r5, 3520
001298  9383c905  setlt.u r7, r19, r28
00129c  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
0012a0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0012a4  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0012a8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0012ac  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
0012b0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0012b4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0012b8  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
0012bc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0012c0  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
0012c4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0012c8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0012cc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0012d0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0012d4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0012d8  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0012dc  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
0012e0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0012e4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0012e8  bbbb03fe  bneq r7, zero, -276
0012ec  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0012f0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0012f4  9f000002  addli r1, zero, 256
0012f8  9f090000  addli r19, zero, 0
0012fc  eaf110c0  vsrl.p vr3, r1, vr1
001300  6af100c0  vsrl.p vr2, r1, vr0
001304  9f000001  addli r1, zero, 128
001308  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00130c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001310  eaf110c0  vsrl.p vr3, r1, vr1
001314  6af100c0  vsrl.p vr2, r1, vr0
001318  9f008000  addli r1, zero, 64
00131c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001320  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001324  eaf110c0  vsrl.p vr3, r1, vr1
001328  6af100c0  vsrl.p vr2, r1, vr0
00132c  abf0ffff  lui r1, 1048575
001330  9b9200f8  ori r5, r1, 3968
001334  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001338  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00133c  ea711cc0  vsrl.p vr3, r24, vr1
001340  6a710cc0  vsrl.p vr2, r24, vr0
001344  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001348  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00134c  7a980040  vextracti.f r16, 0(vr1)
001350  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001354  fa1d0040  vextracti.f r27, 0(vr0)
001358  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00135c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001360  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001364  8b903711  add.s r1, r15, r19
001368  8b933611  add.s r7, r13, r19
00136c  9f820201  addli r5, r5, 128
001370  9f890904  addli r19, r19, 512
001374  9f8a0018  addli r21, r1, 3072
001378  1f8b0019  addli r22, r1, 3200
00137c  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
001380  9f8b8301  addli r23, r7, 192
001384  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
001388  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
00138c  9f8a8018  addli r21, r1, 3136
001390  1f8b8019  addli r22, r1, 3264
001394  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
001398  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
00139c  9f8a0301  addli r21, r7, 128
0013a0  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
0013a4  1f8b8300  addli r22, r7, 64
0013a8  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
0013ac  42150b02  vload_mask16.mz vr10{mr1}, 0(r22)
0013b0  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0013b4  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0013b8  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0013bc  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0013c0  46908a02  vstore_mask16.mz vr8{mr1}, 0(r21)
0013c4  9f8a001a  addli r21, r1, 3328
0013c8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0013cc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0013d0  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0013d4  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0013d8  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
0013dc  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
0013e0  9f8a801a  addli r21, r1, 3392
0013e4  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
0013e8  9f8b0302  addli r23, r7, 256
0013ec  46105b02  vstore_mask16.mz vr5{mr1}, 0(r22)
0013f0  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0013f4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0013f8  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
0013fc  9f8a001b  addli r21, r1, 3456
001400  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
001404  9f80801b  addli r1, r1, 3520
001408  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00140c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001410  4a940a02  vloads_mask16.mz vr8{mr1}, 0(r21)
001414  9f8a8302  addli r21, r7, 320
001418  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
00141c  9f800303  addli r1, r7, 384
001420  9f838303  addli r7, r7, 448
001424  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
001428  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00142c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001430  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001434  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001438  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00143c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001440  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
001444  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001448  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
00144c  938a4205  setlt.u r21, r5, r20
001450  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001454  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001458  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00145c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001460  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001464  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001468  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
00146c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001470  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001474  bbcb0afe  bneq r21, zero, -272
001478  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00147c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001480  9f000002  addli r1, zero, 256
001484  803b0002  core_id r23
001488  6af100c0  vsrl.p vr2, r1, vr0
00148c  eaf110c0  vsrl.p vr3, r1, vr1
001490  9f000001  addli r1, zero, 128
001494  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001498  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00149c  6af100c0  vsrl.p vr2, r1, vr0
0014a0  eaf110c0  vsrl.p vr3, r1, vr1
0014a4  9f008000  addli r1, zero, 64
0014a8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0014ac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0014b0  6af100c0  vsrl.p vr2, r1, vr0
0014b4  eaf110c0  vsrl.p vr3, r1, vr1
0014b8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0014bc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0014c0  6a710cc0  vsrl.p vr2, r24, vr0
0014c4  ea711cc0  vsrl.p vr3, r24, vr1
0014c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0014cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0014d0  fa100040  vextracti.f r1, 0(vr0)
0014d4  fa920040  vextracti.f r5, 0(vr1)
0014d8  8be01d10  add.f.rn r1, r27, r1
0014dc  8b635810  add.f.rn r7, r16, r5
0014e0  1b382700  slli r16, r14, 2
0014e4  9f020000  addli r5, zero, 0
0014e8  8b199811  add.s r19, r16, r25
0014ec  8b1a2811  add.s r21, r16, r18
0014f0  73e01900  stores.w r1, 0(r19)
0014f4  9b00e707  andi r1, r14, 126
0014f8  73e07a00  stores.w r7, 0(r21)
0014fc  9b134800  ori r7, r16, 4
001500  9f090000  addli r19, zero, 0
001504  00a00300  mfence { lm, sm, gm }
001508  80210d04  csr_set csr3, r26
00150c  00d00100  sync_group
001510  9bb02000  slli r1, r1, 2
001514  0b979311  add.s r14, r7, r25
001518  8b932311  add.s r7, r7, r18
00151c  0b989011  add.s r16, r1, r25
001520  6f470700  loads.w r14, 0(r14)
001524  8b902011  add.s r1, r1, r18
001528  efc30300  loads.w r7, 0(r7)
00152c  6f480800  loads.w r16, 0(r16)
001530  efc00000  loads.w r1, 0(r1)
001534  0b670711  add.f.rn r14, r14, r16
001538  2b08003a  lui r16, 237568
00153c  8be01310  add.f.rn r1, r7, r1
001540  8b630721  mul.f.rn r7, r14, r16
001544  8be00021  mul.f.rn r1, r1, r16
001548  0be77320  mul.f.rn r14, r7, r7
00154c  0be80358  neg.f r16, r7
001550  8be0e018  sub.f.rn r1, r1, r14
001554  63073f00  loadli.w r14,  24(r30)
001558  8be0e010  add.f.rn r1, r1, r14
00155c  2b07803f  lui r14, 260096
001560  8f800008  sqrt.f.rn r1, r1
001564  0f071718  div.f.rn r14, r14, r1
001568  8b905510  add.s r1, r11, r5
00156c  8b935610  add.s r7, r13, r5
001570  8b1d5610  add.s r27, r12, r5
001574  1f8b8000  addli r22, r1, 64
001578  9f8a8300  addli r21, r7, 64
00157c  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
001580  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
001584  4a920d02  vloads_mask16.mz vr4{mr1}, 0(r27)
001588  ca110b02  vloads_mask16.mz vr3{mr1}, 0(r22)
00158c  1f8b8d00  addli r22, r27, 64
001590  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
001594  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
001598  1f8b4900  addli r22, r19, 32
00159c  12100802  vadd.f.mz.rn vr0{mr1}, r16, vr0
0015a0  130b6207  setle.u r22, r4, r22
0015a4  92101802  vadd.f.mz.rn vr1{mr1}, r16, vr1
0015a8  0a100702  vmul.f.mz.rn vr0{mr1}, r14, vr0
0015ac  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
0015b0  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
0015b4  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
0015b8  46904302  vstore_mask16.mz vr4{mr1}, 0(r7)
0015bc  46905a02  vstore_mask16.mz vr5{mr1}, 0(r21)
0015c0  bb110b00  bneq r22, zero, 100
0015c4  1f8b0001  addli r22, r1, 128
0015c8  9f8a0301  addli r21, r7, 128
0015cc  9f838301  addli r7, r7, 192
0015d0  9f808001  addli r1, r1, 192
0015d4  9f898900  addli r19, r19, 64
0015d8  9f820202  addli r5, r5, 256
0015dc  4a110b02  vloads_mask16.mz vr2{mr1}, 0(r22)
0015e0  1f8b0d01  addli r22, r27, 128
0015e4  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
0015e8  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
0015ec  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
0015f0  93804904  setlt.u r1, r19, r4
0015f4  ca110b02  vloads_mask16.mz vr3{mr1}, 0(r22)
0015f8  1f8b8d01  addli r22, r27, 192
0015fc  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
001600  12100802  vadd.f.mz.rn vr0{mr1}, r16, vr0
001604  92101802  vadd.f.mz.rn vr1{mr1}, r16, vr1
001608  0a100702  vmul.f.mz.rn vr0{mr1}, r14, vr0
00160c  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
001610  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
001614  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
001618  46903a02  vstore_mask16.mz vr3{mr1}, 0(r21)
00161c  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
001620  3bad00fe  bneq r1, zero, -184
001624  9f008fd7  addli r1, r30, -5184
001628  9f028fd7  addli r5, r30, -5184
00162c  9f030000  addli r7, zero, 0
001630  00a00000  mfence { lm }
001634  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
001638  1f878200  addli r14, r5, 64
00163c  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
001640  9f834300  addli r7, r7, 32
001644  9f820201  addli r5, r5, 128
001648  c2100702  vload_mask16.mz vr1{mr1}, 0(r14)
00164c  13874304  setlt.u r14, r7, r4
001650  06110000  vfloat2fp16_l.rn vr2, vr0
001654  06d10000  vfloat2fp16_h.rn vr2, vr1
001658  46802002  vstore.mz vr2{mr1}, 0(r1)
00165c  9f808000  addli r1, r1, 64
001660  3b5f07fe  bneq r14, zero, -44
001664  eb5a0f00  load.d r[22:23], 0(r30)
001668  ab0000f0  lui r1, 983040
00166c  00a00000  mfence { lm }
001670  97101500  or r1, r10, r1
001674  0ba12a10  add.ul r[3:4], r[22:23], r[3:4]
001678  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
00167c  00a00200  mfence { lm, gm }
001680  db20ffff  j -1788
001684  e3403f00  loadli.w r1,  28(r30)
001688  b7c60014  beq r1, zero, 10672
00168c  80390002  core_id r19
001690  63012f00  loadli.w r2,  16(r30)
001694  005a0102  load_param_i r20, 2
001698  9bb05900  slli r1, r19, 5
00169c  4b431100  ble.s r2, r1, 208
0016a0  2b960000  lui r12, 9
0016a4  9f110000  addli r3, zero, 1
0016a8  1f058fd7  addli r10, r30, -5184
0016ac  9f058000  addli r11, zero, 64
0016b0  1b315a00  slli r2, r20, 5
0016b4  9f860000  addli r13, r1, 0
0016b8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0016bc  1f0606f0  addli r12, r12, -2048
0016c0  33880628  zext_int2long r[17:18], r13
0016c4  2b0900f0  lui r18, 983040
0016c8  17383802  sll.d r[17:18], r[17:18], r3
0016cc  17992501  or r18, r11, r18
0016d0  0b280211  add.ul r[17:18], r[5:6], r[17:18]
0016d4  7f29a800  l_gm2lm r18, r10, 0(r[17:18])
0016d8  1bb82600  slli r16, r13, 2
0016dc  8b16d110  add.s r13, r2, r13
0016e0  00a00200  mfence { lm, gm }
0016e4  c2000502  vload.mz vr1{mr1}, 0(r10)
0016e8  0b18c810  add.s r16, r16, r12
0016ec  9f088800  addli r17, r16, 64
0016f0  66411080  vmerge_l.hf vr2, vr0, vr1
0016f4  e64010a0  vmerge_h.hf vr1, vr0, vr1
0016f8  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
0016fc  4e901802  vstores_mask16.mz vr1{mr1}, 0(r17)
001700  3f8ff6fe  blt.s r13, r15, -64
001704  2ba20000  lui r4, 10
001708  9bb17900  slli r3, r19, 7
00170c  9f120000  addli r5, zero, 1
001710  1f058fd7  addli r10, r30, -5184
001714  9f058000  addli r11, zero, 64
001718  1f860000  addli r12, r1, 0
00171c  00a00000  mfence { lm }
001720  1f0202f0  addli r4, r4, -2048
001724  8b914110  add.s r3, r3, r4
001728  1b327a00  slli r4, r20, 7
00172c  33080628  zext_int2long r[17:18], r12
001730  ab0600f0  lui r13, 983040
001734  0b162610  add.s r12, r12, r2
001738  17385802  sll.d r[17:18], r[17:18], r5
00173c  9796d500  or r13, r11, r13
001740  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001744  ff26a800  l_gm2lm r13, r10, 0(r[17:18])
001748  9f868100  addli r13, r3, 64
00174c  00a00200  mfence { lm, gm }
001750  c2000502  vload.mz vr1{mr1}, 0(r10)
001754  66411080  vmerge_l.hf vr2, vr0, vr1
001758  e64010a0  vmerge_h.hf vr1, vr0, vr1
00175c  4e902102  vstores_mask16.mz vr2{mr1}, 0(r3)
001760  8b914110  add.s r3, r3, r4
001764  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
001768  3f1ff6fe  blt.s r12, r15, -60
00176c  63012f00  loadli.w r2,  16(r30)
001770  cb211100  ble.s r2, r1, 104
001774  2bb30000  lui r6, 11
001778  1f110000  addli r2, zero, 1
00177c  9f018fd7  addli r3, r30, -5184
001780  1f028000  addli r4, zero, 64
001784  9b325a00  slli r5, r20, 5
001788  00a00000  mfence { lm }
00178c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001790  1f0303f0  addli r6, r6, -2048
001794  33850028  zext_int2long r[11:12], r1
001798  ab0300f0  lui r7, 983040
00179c  17352502  sll.d r[11:12], r[11:12], r2
0017a0  97137200  or r7, r4, r7
0017a4  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
0017a8  ff233500  l_gm2lm r7, r3, 0(r[11:12])
0017ac  9bb32000  slli r7, r1, 2
0017b0  8b901210  add.s r1, r5, r1
0017b4  00a00200  mfence { lm, gm }
0017b8  c2800102  vload.mz vr1{mr1}, 0(r3)
0017bc  8b936310  add.s r7, r7, r6
0017c0  1f858300  addli r10, r7, 64
0017c4  66411080  vmerge_l.hf vr2, vr0, vr1
0017c8  e64010a0  vmerge_h.hf vr1, vr0, vr1
0017cc  4e902302  vstores_mask16.mz vr2{mr1}, 0(r7)
0017d0  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
0017d4  3f8ff0fe  blt.s r1, r15, -64
0017d8  abf00000  lui r1, 15
0017dc  63411f00  loadli.w r2,  12(r30)
0017e0  00a00300  mfence { lm, sm, gm }
0017e4  9b90f0ff  ori r1, r1, 4095
0017e8  80a10004  csr_set csr3, r1
0017ec  00d00100  sync_group
0017f0  cb3f3127  ble.s r2, r19, 20460
0017f4  e3002f00  loadli.w r1,  16(r30)
0017f8  63412f00  loadli.w r2,  20(r30)
0017fc  1f058fd7  addli r10, r30, -5184
001800  9f150000  addli r11, zero, 1
001804  1f064000  addli r12, zero, 32
001808  1f787000  addli r16, zero, 63
00180c  9f080002  addli r17, zero, 256
001810  ab0a803f  lui r21, 260096
001814  ab0cffff  lui r25, 1048560
001818  2b0d807f  lui r26, 522240
00181c  ab0dc07f  lui r27, 523264
001820  abe37f00  lui r7, 2046
001824  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001828  33820008  fix2float.rn r4, r1
00182c  8b912010  add.s r3, r1, r2
001830  1bb31000  slli r6, r1, 1
001834  e7034fd4  storeli.w r4, -5576(r30)
001838  1bb22000  slli r4, r1, 2
00183c  9f804000  addli r1, r1, 32
001840  9ff1f1ff  addli r3, r3, -1
001844  67431fd4  storeli.w r1, -5580(r30)
001848  8b10a210  add.s r1, r4, r10
00184c  8b922130  div.s r5, r3, r2
001850  8b11a310  add.s r3, r6, r10
001854  2be20700  lui r4, 126
001858  9f8080ff  addli r1, r1, -64
00185c  67031fd4  storeli.w r1, -5584(r30)
001860  9f8081ff  addli r1, r3, -64
001864  e7421fd4  storeli.w r1, -5588(r30)
001868  9b302100  slli r1, r2, 2
00186c  2bf100fc  lui r2, 1032207
001870  67041fd6  storeli.w r1, -5312(r30)
001874  abf0ffff  lui r1, 1048575
001878  1b1101c0  ori r2, r2, 3072
00187c  00a00000  mfence { lm }
001880  67044fd5  storeli.w r20, -5568(r30)
001884  e7436fd4  storeli.w r6, -5572(r30)
001888  9b90f0ff  ori r1, r1, 4095
00188c  670c1fd4  storeli.w r1, -5440(r30)
001890  ab700000  lui r1, 7
001894  1b9cf0ff  ori r24, r1, 4095
001898  ab00ff03  lui r1, 16368
00189c  9b94f03f  ori r9, r1, 1023
0018a0  9f000fd7  addli r1, r30, -5248
0018a4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0018a8  db080000  j 68
0018ac  9f016fd5  addli r3, r30, -5456
0018b0  6b590f00  load.d r[19:20], 0(r30)
0018b4  63437fd4  loadli.w r6,  -5572(r30)
0018b8  ab0000f0  lui r1, 983040
0018bc  1f787000  addli r16, zero, 63
0018c0  6bdb0100  load.d r[23:24], 0(r3)
0018c4  00a00000  mfence { lm }
0018c8  97101300  or r1, r6, r1
0018cc  0b2b6911  add.ul r[23:24], r[19:20], r[23:24]
0018d0  e3097fd5  loadli.w r19,  -5448(r30)
0018d4  ff30ab00  s_lm2gm r1, r10, 0(r[23:24])
0018d8  00a00200  mfence { lm, gm }
0018dc  e3401f00  loadli.w r1,  12(r30)
0018e0  8b193a11  add.s r19, r20, r19
0018e4  3fa01900  blt.s r19, r1, 8
0018e8  dbde0900  j 20212
0018ec  e3001f00  loadli.w r1,  8(r30)
0018f0  9f017fd6  addli r3, r30, -5320
0018f4  e70b3fd5  storeli.w r19, -5448(r30)
0018f8  8b901910  add.s r1, r19, r1
0018fc  6bd90100  load.d r[19:20], 0(r3)
001900  9f016fd5  addli r3, r30, -5456
001904  8b90f020  mul.s r1, r1, r15
001908  339b0028  sext_int2long r[23:24], r1
00190c  ab0000f0  lui r1, 983040
001910  173bbb02  sll.d r[23:24], r[23:24], r11
001914  97101300  or r1, r6, r1
001918  73b06101  store.d r[23:24], 0(r3)
00191c  0b2b6911  add.ul r[23:24], r[19:20], r[23:24]
001920  ff20ab00  l_gm2lm r1, r10, 0(r[23:24])
001924  00a00200  mfence { lm, gm }
001928  bff0c700  blt.s r15, r12, 60
00192c  e3405fd4  loadli.w r1,  -5588(r30)
001930  e3016fd4  loadli.w r3,  -5584(r30)
001934  63436fd4  loadli.w r6,  -5580(r30)
001938  c2800002  vload.mz vr1{mr1}, 0(r1)
00193c  1f03c3ff  addli r6, r6, -32
001940  9f8681ff  addli r13, r3, -64
001944  9f8080ff  addli r1, r1, -64
001948  13046804  setlt.u r8, r16, r6
00194c  664110a0  vmerge_h.hf vr2, vr0, vr1
001950  e6401080  vmerge_l.hf vr1, vr0, vr1
001954  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
001958  9f8101ff  addli r3, r3, -128
00195c  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
001960  3b6f04fe  bneq r8, zero, -40
001964  00a00000  mfence { lm }
001968  3f88b200  blt.s r5, r11, 512
00196c  1f090000  addli r18, zero, 0
001970  9f000000  addli r1, zero, 0
001974  9f060000  addli r13, zero, 0
001978  db0e0000  j 116
00197c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001980  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001984  9f010001  addli r3, zero, 128
001988  9f960600  addli r13, r13, 1
00198c  6af108c0  vsrl.p vr2, r17, vr0
001990  eaf118c0  vsrl.p vr3, r17, vr1
001994  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001998  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00199c  6af101c0  vsrl.p vr2, r3, vr0
0019a0  eaf111c0  vsrl.p vr3, r3, vr1
0019a4  9f018000  addli r3, zero, 64
0019a8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0019ac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0019b0  6af101c0  vsrl.p vr2, r3, vr0
0019b4  eaf111c0  vsrl.p vr3, r3, vr1
0019b8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0019bc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0019c0  6a7106c0  vsrl.p vr2, r12, vr0
0019c4  ea7116c0  vsrl.p vr3, r12, vr1
0019c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0019cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0019d0  fa110040  vextracti.f r3, 0(vr0)
0019d4  7a930040  vextracti.f r6, 0(vr1)
0019d8  0b693910  add.f.rn r18, r18, r3
0019dc  9f010fd7  addli r3, r30, -5248
0019e0  8be06010  add.f.rn r1, r1, r6
0019e4  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0019e8  37a65600  beq r13, r5, 392
0019ec  9f810600  addli r3, r13, 0
0019f0  37401701  beq r14, r17, 16
0019f4  e3018fd5  loadli.w r3,  -5440(r30)
0019f8  97a13600  xor r3, r13, r3
0019fc  8b913210  add.s r3, r5, r3
001a00  0b93e120  mul.s r6, r3, r14
001a04  12320002  vadd.s.mz vr4{mr1}, zero, vr0
001a08  92310002  vadd.s.mz vr3{mr1}, zero, vr0
001a0c  12310002  vadd.s.mz vr2{mr1}, zero, vr0
001a10  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001a14  0b936718  sub.s r6, r15, r6
001a18  0b18e340  min.s r16, r6, r14
001a1c  bf0db8fe  blt.s r16, r11, -160
001a20  63038fd6  loadli.w r6,  -5312(r30)
001a24  2b940000  lui r8, 9
001a28  1f0b0000  addli r22, zero, 0
001a2c  1f0e8fd7  addli r28, r30, -5184
001a30  1f0404f0  addli r8, r8, -2048
001a34  8b1b3320  mul.s r23, r6, r3
001a38  9f010fd7  addli r3, r30, -5248
001a3c  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
001a40  92304002  vadd.s.mz vr1{mr1}, zero, vr4
001a44  12314002  vadd.s.mz vr2{mr1}, zero, vr4
001a48  92314002  vadd.s.mz vr3{mr1}, zero, vr4
001a4c  0b137411  add.s r6, r8, r23
001a50  8b117e11  add.s r3, r28, r23
001a54  1f058300  addli r10, r6, 64
001a58  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
001a5c  9f098301  addli r19, r6, 192
001a60  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
001a64  1f8a8101  addli r20, r3, 192
001a68  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
001a6c  1f050301  addli r10, r6, 128
001a70  4a940902  vloads_mask16.mz vr8{mr1}, 0(r19)
001a74  9f890101  addli r19, r3, 128
001a78  42100a02  vload_mask16.mz vr0{mr1}, 0(r20)
001a7c  ca130502  vloads_mask16.mz vr7{mr1}, 0(r10)
001a80  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
001a84  1f858100  addli r10, r3, 64
001a88  42150502  vload_mask16.mz vr10{mr1}, 0(r10)
001a8c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001a90  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001a94  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001a98  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001a9c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001aa0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001aa4  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
001aa8  46106502  vstore_mask16.mz vr6{mr1}, 0(r10)
001aac  1f058b00  addli r10, r22, 64
001ab0  46100a02  vstore_mask16.mz vr0{mr1}, 0(r20)
001ab4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001ab8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001abc  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001ac0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001ac4  46907902  vstore_mask16.mz vr7{mr1}, 0(r19)
001ac8  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001acc  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001ad0  cb3aa8fe  ble.s r16, r10, -340
001ad4  9f090302  addli r19, r6, 256
001ad8  1f0a8302  addli r20, r6, 320
001adc  1f850102  addli r10, r3, 256
001ae0  1f0b0b01  addli r22, r22, 128
001ae4  1f040404  addli r8, r8, 512
001ae8  1f0e0e04  addli r28, r28, 512
001aec  4a900902  vloads_mask16.mz vr0{mr1}, 0(r19)
001af0  9f090303  addli r19, r6, 384
001af4  1f038303  addli r6, r6, 448
001af8  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
001afc  42130502  vload_mask16.mz vr6{mr1}, 0(r10)
001b00  ca930902  vloads_mask16.mz vr7{mr1}, 0(r19)
001b04  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
001b08  1f830103  addli r6, r3, 384
001b0c  9f898102  addli r19, r3, 320
001b10  9f818103  addli r3, r3, 448
001b14  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
001b18  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
001b1c  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
001b20  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
001b24  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001b28  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001b2c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001b30  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001b34  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
001b38  46905902  vstore_mask16.mz vr5{mr1}, 0(r19)
001b3c  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
001b40  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001b44  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001b48  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
001b4c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001b50  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001b54  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001b58  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001b5c  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001b60  bf3b0bff  blt.s r22, r16, -276
001b64  5bc3ffff  j -488
001b68  9f000000  addli r1, zero, 0
001b6c  1f090000  addli r18, zero, 0
001b70  aba90000  lui r19, 10
001b74  2bba0000  lui r20, 11
001b78  1f058fd7  addli r10, r30, -5184
001b7c  00a00000  mfence { lm }
001b80  9f8909f0  addli r19, r19, -2048
001b84  1f0a0af0  addli r20, r20, -2048
001b88  bfc3b700  blt.s r15, r11, 240
001b8c  63037fd4  loadli.w r6,  -5576(r30)
001b90  1f040000  addli r8, zero, 0
001b94  1f080000  addli r16, zero, 0
001b98  8f016918  div.f.rn r3, r18, r6
001b9c  8f806018  div.f.rn r1, r1, r6
001ba0  0be33120  mul.f.rn r6, r3, r3
001ba4  8be60158  neg.f r13, r3
001ba8  8be06018  sub.f.rn r1, r1, r6
001bac  63033f00  loadli.w r6,  24(r30)
001bb0  8be06010  add.f.rn r1, r1, r6
001bb4  8f800008  sqrt.f.rn r1, r1
001bb8  8f801a18  div.f.rn r1, r21, r1
001bbc  0b133411  add.s r6, r8, r19
001bc0  8b118510  add.s r3, r10, r8
001bc4  1f098300  addli r18, r6, 64
001bc8  4a110302  vloads_mask16.mz vr2{mr1}, 0(r6)
001bcc  0b134411  add.s r6, r8, r20
001bd0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001bd4  ca110902  vloads_mask16.mz vr3{mr1}, 0(r18)
001bd8  1f898100  addli r18, r3, 64
001bdc  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
001be0  1f038300  addli r6, r6, 64
001be4  c2120902  vload_mask16.mz vr5{mr1}, 0(r18)
001be8  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
001bec  1f034800  addli r6, r16, 32
001bf0  92901602  vadd.f.mz.rn vr1{mr1}, r13, vr1
001bf4  92925602  vadd.f.mz.rn vr5{mr1}, r13, vr5
001bf8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
001bfc  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
001c00  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
001c04  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
001c08  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
001c0c  46106902  vstore_mask16.mz vr6{mr1}, 0(r18)
001c10  cba16700  ble.s r15, r6, 104
001c14  0b938910  add.s r6, r19, r8
001c18  0b198a10  add.s r18, r20, r8
001c1c  1f088800  addli r16, r16, 64
001c20  1f040402  addli r8, r8, 256
001c24  1f0b0301  addli r22, r6, 128
001c28  9f0b0901  addli r23, r18, 128
001c2c  1f038301  addli r6, r6, 192
001c30  1f098901  addli r18, r18, 192
001c34  ca100b02  vloads_mask16.mz vr1{mr1}, 0(r22)
001c38  1f8b0101  addli r22, r3, 128
001c3c  9f818101  addli r3, r3, 192
001c40  4a910b02  vloads_mask16.mz vr2{mr1}, 0(r23)
001c44  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
001c48  4a130902  vloads_mask16.mz vr6{mr1}, 0(r18)
001c4c  c2110b02  vload_mask16.mz vr3{mr1}, 0(r22)
001c50  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
001c54  92913602  vadd.f.mz.rn vr3{mr1}, r13, vr3
001c58  12924602  vadd.f.mz.rn vr4{mr1}, r13, vr4
001c5c  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
001c60  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
001c64  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
001c68  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
001c6c  46102b02  vstore_mask16.mz vr2{mr1}, 0(r22)
001c70  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001c74  3f2df8fe  blt.s r16, r15, -184
001c78  00a00000  mfence { lm }
001c7c  1f032000  addli r6, zero, 16
001c80  1f380000  addli r16, zero, 3
001c84  1f591000  addli r18, zero, 13
001c88  9f291000  addli r19, zero, 10
001c8c  630a8fd4  loadli.w r20,  -5568(r30)
001c90  3ff0b7fe  blt.s r15, r11, -996
001c94  9f008fd7  addli r1, r30, -5184
001c98  1f048fd7  addli r8, r30, -5184
001c9c  9f060000  addli r13, zero, 0
001ca0  c2110402  vload_mask16.mz vr3{mr1}, 0(r8)
001ca4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001ca8  9f018400  addli r3, r8, 64
001cac  9f864600  addli r13, r13, 32
001cb0  1f040401  addli r8, r8, 128
001cb4  6a221322  vor.u.mz vr4{mr1}, r6, vr1
001cb8  6a231922  vor.u.mz vr6{mr1}, r18, vr1
001cbc  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
001cc0  ee3232c2  vsrl.s.mz vr5{mr1}, vr4, vr3
001cc4  6e3222c2  vsrl.s.mz vr4{mr1}, vr4, vr2
001cc8  eab25502  vand.s.mz vr5{mr1}, r11, vr5
001ccc  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
001cd0  96b25102  vadd.s.mz vr5{mr1}, vr3, vr5
001cd4  e69101c0  vabs.f vr3, vr3
001cd8  16324102  vadd.s.mz vr4{mr1}, vr2, vr4
001cdc  661101c0  vabs.f vr2, vr2
001ce0  92325c02  vadd.s.mz vr5{mr1}, r24, vr5
001ce4  72213d42  vlt.u.mz mr2{mr1}, r26, vr3
001ce8  12324c02  vadd.s.mz vr4{mr1}, r24, vr4
001cec  eab25c02  vand.s.mz vr5{mr1}, r25, vr5
001cf0  6ab24c02  vand.s.mz vr4{mr1}, r25, vr4
001cf4  eaa21d34  vor.u.mh vr5{mr2}, r27, vr1
001cf8  72212d42  vlt.u.mz mr2{mr1}, r26, vr2
001cfc  6a211822  vor.u.mz vr2{mr1}, r16, vr1
001d00  6aa21d34  vor.u.mh vr4{mr2}, r27, vr1
001d04  eaa01922  vor.u.mz vr1{mr1}, r19, vr1
001d08  ee3153c2  vsrl.s.mz vr3{mr1}, vr6, vr5
001d0c  ee3251c2  vsrl.s.mz vr5{mr1}, vr2, vr5
001d10  6e3141c2  vsrl.s.mz vr2{mr1}, vr2, vr4
001d14  6e3343c2  vsrl.s.mz vr6{mr1}, vr6, vr4
001d18  ea313202  vand.s.mz vr3{mr1}, r4, vr3
001d1c  eab25302  vand.s.mz vr5{mr1}, r7, vr5
001d20  6a326202  vand.s.mz vr4{mr1}, r4, vr6
001d24  6ab12302  vand.s.mz vr2{mr1}, r7, vr2
001d28  eab13a22  vor.s.mz vr3{mr1}, r21, vr3
001d2c  eab25a22  vor.s.mz vr5{mr1}, r21, vr5
001d30  6ab12a22  vor.s.mz vr2{mr1}, r21, vr2
001d34  6ab24a22  vor.s.mz vr4{mr1}, r21, vr4
001d38  86910120  vfloat2fp16_l.rz vr3, vr3
001d3c  06510120  vfloat2fp16_h.rz vr2, vr2
001d40  86510220  vfloat2fp16_h.rz vr3, vr4
001d44  06910220  vfloat2fp16_l.rz vr2, vr5
001d48  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
001d4c  6ab12402  vand.s.mz vr2{mr1}, r9, vr2
001d50  ea301102  vand.s.mz vr1{mr1}, r2, vr1
001d54  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
001d58  46801002  vstore.mz vr1{mr1}, 0(r1)
001d5c  9f808000  addli r1, r1, 64
001d60  3f8df6fe  blt.s r13, r15, -192
001d64  5b69ffff  j -1208
001d68  e3403f00  loadli.w r1,  28(r30)
001d6c  b7f00018  beq r1, zero, 12348
001d70  80300002  core_id r1
001d74  e3012f00  loadli.w r3,  16(r30)
001d78  1bb15000  slli r2, r1, 5
001d7c  4bc32100  ble.s r3, r2, 208
001d80  2b580100  lui r16, 21
001d84  00550102  load_param_i r10, 2
001d88  9f150000  addli r11, zero, 1
001d8c  1f068fd7  addli r12, r30, -5184
001d90  9f068000  addli r13, zero, 64
001d94  9f080100  addli r17, r2, 0
001d98  9b315500  slli r3, r10, 5
001d9c  1f080800  addli r16, r16, 0
001da0  33890828  zext_int2long r[19:20], r17
001da4  2b0a00f0  lui r20, 983040
001da8  1739b902  sll.d r[19:20], r[19:20], r11
001dac  179a4601  or r20, r13, r20
001db0  0b292211  add.ul r[19:20], r[5:6], r[19:20]
001db4  7f2ac900  l_gm2lm r20, r12, 0(r[19:20])
001db8  1bb92800  slli r18, r17, 2
001dbc  8b981111  add.s r17, r3, r17
001dc0  00a00200  mfence { lm, gm }
001dc4  42000602  vload.mz vr0{mr1}, 0(r12)
001dc8  0b190911  add.s r18, r18, r16
001dcc  9f098900  addli r19, r18, 64
001dd0  86300000  vfp162float_l.rn vr1, vr0
001dd4  06700000  vfp162float_h.rn vr0, vr0
001dd8  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
001ddc  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
001de0  3f8ff8fe  blt.s r17, r15, -64
001de4  ab620100  lui r5, 22
001de8  1bb27000  slli r4, r1, 7
001dec  9f058fd7  addli r11, r30, -5184
001df0  1f068000  addli r12, zero, 64
001df4  9f060100  addli r13, r2, 0
001df8  00a00000  mfence { lm }
001dfc  9f820200  addli r5, r5, 0
001e00  0b125210  add.s r4, r4, r5
001e04  9b327500  slli r5, r10, 7
001e08  1f150000  addli r10, zero, 1
001e0c  33880628  zext_int2long r[17:18], r13
001e10  2b0900f0  lui r18, 983040
001e14  8b963610  add.s r13, r13, r3
001e18  1738a802  sll.d r[17:18], r[17:18], r10
001e1c  17192601  or r18, r12, r18
001e20  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001e24  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
001e28  1f088200  addli r16, r4, 64
001e2c  00a00200  mfence { lm, gm }
001e30  42800502  vload.mz vr0{mr1}, 0(r11)
001e34  86300000  vfp162float_l.rn vr1, vr0
001e38  06700000  vfp162float_h.rn vr0, vr0
001e3c  4e101202  vstores_mask16.mz vr1{mr1}, 0(r4)
001e40  0b125210  add.s r4, r4, r5
001e44  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
001e48  3f9ff6fe  blt.s r13, r15, -60
001e4c  e3012f00  loadli.w r3,  16(r30)
001e50  cba12100  ble.s r3, r2, 104
001e54  00530102  load_param_i r6, 2
001e58  ab730100  lui r7, 23
001e5c  9f110000  addli r3, zero, 1
001e60  1f028fd7  addli r4, r30, -5184
001e64  9f028000  addli r5, zero, 64
001e68  00a00000  mfence { lm }
001e6c  1b335300  slli r6, r6, 5
001e70  9f830300  addli r7, r7, 0
001e74  33050128  zext_int2long r[11:12], r2
001e78  2b0600f0  lui r12, 983040
001e7c  17353502  sll.d r[11:12], r[11:12], r3
001e80  1796c200  or r12, r5, r12
001e84  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001e88  7f264500  l_gm2lm r12, r4, 0(r[11:12])
001e8c  1b352100  slli r10, r2, 2
001e90  0b112310  add.s r2, r6, r2
001e94  00a00200  mfence { lm, gm }
001e98  42000202  vload.mz vr0{mr1}, 0(r4)
001e9c  0b157510  add.s r10, r10, r7
001ea0  9f058500  addli r11, r10, 64
001ea4  86300000  vfp162float_l.rn vr1, vr0
001ea8  06700000  vfp162float_h.rn vr0, vr0
001eac  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001eb0  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
001eb4  3f0ff1fe  blt.s r2, r15, -64
001eb8  2bf10000  lui r2, 15
001ebc  e3411f00  loadli.w r3,  12(r30)
001ec0  00a00300  mfence { lm, sm, gm }
001ec4  1b11f1ff  ori r2, r2, 4095
001ec8  80210104  csr_set csr3, r2
001ecc  00d00100  sync_group
001ed0  4bb41124  ble.s r3, r1, 18700
001ed4  63012f00  loadli.w r2,  16(r30)
001ed8  e3412f00  loadli.w r3,  20(r30)
001edc  9f0b8fd7  addli r23, r30, -5184
001ee0  2b540100  lui r8, 21
001ee4  ab6a0100  lui r21, 22
001ee8  2b7b0100  lui r22, 23
001eec  1f150000  addli r10, zero, 1
001ef0  9f054000  addli r11, zero, 32
001ef4  1f767000  addli r12, zero, 63
001ef8  1f080002  addli r16, zero, 256
001efc  1f090001  addli r18, zero, 128
001f00  9f098000  addli r19, zero, 64
001f04  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001f08  1f040400  addli r8, r8, 0
001f0c  9f8a0a00  addli r21, r21, 0
001f10  1f0b0b00  addli r22, r22, 0
001f14  0b123110  add.s r4, r2, r3
001f18  b3020108  fix2float.rn r5, r2
001f1c  9b381100  slli r17, r2, 1
001f20  1b332100  slli r6, r2, 2
001f24  1f014100  addli r2, r2, 32
001f28  9bb42100  slli r9, r3, 2
001f2c  670b2fd4  storeli.w r2, -5456(r30)
001f30  0b117311  add.s r2, r6, r23
001f34  1f72f2ff  addli r4, r4, -1
001f38  0b937811  add.s r6, r17, r23
001f3c  e70b5fd4  storeli.w r5, -5448(r30)
001f40  1f0181ff  addli r2, r2, -64
001f44  0b123230  div.s r4, r4, r3
001f48  67042fd4  storeli.w r2, -5568(r30)
001f4c  1f0183ff  addli r2, r6, -64
001f50  e7432fd4  storeli.w r2, -5572(r30)
001f54  2bf1ffff  lui r2, 1048575
001f58  00a00000  mfence { lm }
001f5c  670c1fd5  storeli.w r17, -5440(r30)
001f60  9b16f1ff  ori r13, r2, 4095
001f64  1f010fd7  addli r2, r30, -5248
001f68  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001f6c  5b080000  j 64
001f70  9f038fd6  addli r7, r30, -5312
001f74  6b510f00  load.d r[3:4], 0(r30)
001f78  ebd20300  load.d r[6:7], 0(r7)
001f7c  00a00000  mfence { lm }
001f80  80530102  load_param_i r7, 2
001f84  e3088fd5  loadli.w r17,  -5440(r30)
001f88  8b901310  add.s r1, r7, r1
001f8c  0b215110  add.ul r[3:4], r[3:4], r[6:7]
001f90  2b0300f0  lui r6, 983040
001f94  17936800  or r6, r17, r6
001f98  7f337101  s_lm2gm r6, r23, 0(r[3:4])
001f9c  00a00200  mfence { lm, gm }
001fa0  63411f00  loadli.w r2,  12(r30)
001fa4  3fa02000  blt.s r1, r2, 8
001fa8  db060900  j 18484
001fac  63011f00  loadli.w r2,  8(r30)
001fb0  0b912010  add.s r2, r1, r2
001fb4  0b11f120  mul.s r2, r2, r15
001fb8  33110128  sext_int2long r[3:4], r2
001fbc  173ca102  sll.d r[25:26], r[3:4], r10
001fc0  9f017fd6  addli r3, r30, -5320
001fc4  2b0100f0  lui r2, 983040
001fc8  ebd20100  load.d r[6:7], 0(r3)
001fcc  17912800  or r2, r17, r2
001fd0  9f018fd6  addli r3, r30, -5312
001fd4  73b08101  store.d r[25:26], 0(r3)
001fd8  0ba38211  add.ul r[7:8], r[6:7], r[25:26]
001fdc  7f217301  l_gm2lm r2, r23, 0(r[7:8])
001fe0  00a00200  mfence { lm, gm }
001fe4  bff0b700  blt.s r15, r11, 60
001fe8  63417fd4  loadli.w r2,  -5572(r30)
001fec  e3018fd4  loadli.w r3,  -5568(r30)
001ff0  63036fd5  loadli.w r6,  -5456(r30)
001ff4  c2000102  vload.mz vr1{mr1}, 0(r2)
001ff8  1f03c3ff  addli r6, r6, -32
001ffc  9f8881ff  addli r17, r3, -64
002000  1f0181ff  addli r2, r2, -64
002004  93036604  setlt.u r7, r12, r6
002008  06f10000  vfp162float_h.rn vr2, vr1
00200c  86b00000  vfp162float_l.rn vr1, vr1
002010  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
002014  9f8101ff  addli r3, r3, -128
002018  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
00201c  3bef03fe  bneq r7, zero, -40
002020  00a00000  mfence { lm }
002024  bf27a200  blt.s r4, r10, 488
002028  1f0d0000  addli r26, zero, 0
00202c  9f0c0000  addli r25, zero, 0
002030  9f0d0000  addli r27, zero, 0
002034  db0c0000  j 100
002038  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
00203c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002040  9f9d0d00  addli r27, r27, 1
002044  6a7108c0  vsrl.p vr2, r16, vr0
002048  ea7118c0  vsrl.p vr3, r16, vr1
00204c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002050  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002054  6a7109c0  vsrl.p vr2, r18, vr0
002058  ea7119c0  vsrl.p vr3, r18, vr1
00205c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002060  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002064  6af109c0  vsrl.p vr2, r19, vr0
002068  eaf119c0  vsrl.p vr3, r19, vr1
00206c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002070  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002074  6af105c0  vsrl.p vr2, r11, vr0
002078  eaf115c0  vsrl.p vr3, r11, vr1
00207c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002080  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002084  7a110040  vextracti.f r2, 0(vr0)
002088  fa910040  vextracti.f r3, 0(vr1)
00208c  0b6d2d10  add.f.rn r26, r26, r2
002090  8bec3c10  add.f.rn r25, r25, r3
002094  37864d00  beq r27, r4, 384
002098  1f810d00  addli r2, r27, 0
00209c  37300701  beq r14, r16, 12
0020a0  17a1dd00  xor r2, r27, r13
0020a4  0b112210  add.s r2, r4, r2
0020a8  8b11e120  mul.s r3, r2, r14
0020ac  8b913718  sub.s r3, r15, r3
0020b0  0b9ee140  min.s r28, r3, r14
0020b4  9f010fd7  addli r3, r30, -5248
0020b8  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0020bc  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0020c0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0020c4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0020c8  bf4daefe  blt.s r28, r10, -144
0020cc  0b932420  mul.s r6, r9, r2
0020d0  1f010fd7  addli r2, r30, -5248
0020d4  1f0a0000  addli r20, zero, 0
0020d8  9f038fd7  addli r7, r30, -5184
0020dc  9f080400  addli r17, r8, 0
0020e0  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0020e4  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0020e8  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0020ec  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0020f0  0b916810  add.s r2, r17, r6
0020f4  8b916310  add.s r3, r7, r6
0020f8  9f0b8100  addli r23, r2, 64
0020fc  ca120102  vloads_mask16.mz vr5{mr1}, 0(r2)
002100  1f0c8101  addli r24, r2, 192
002104  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
002108  9f828101  addli r5, r3, 192
00210c  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
002110  9f0b0101  addli r23, r2, 128
002114  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
002118  1f8c0101  addli r24, r3, 128
00211c  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
002120  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
002124  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
002128  9f8b8100  addli r23, r3, 64
00212c  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
002130  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
002134  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
002138  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00213c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
002140  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002144  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002148  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
00214c  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
002150  9f0b8a00  addli r23, r20, 64
002154  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
002158  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00215c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002160  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002164  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002168  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
00216c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
002170  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
002174  4b1b7eff  ble.s r28, r23, -316
002178  9f0b0102  addli r23, r2, 256
00217c  1f0c8102  addli r24, r2, 320
002180  9f820102  addli r5, r3, 256
002184  1f0a0a01  addli r20, r20, 128
002188  9f880804  addli r17, r17, 512
00218c  9f830304  addli r7, r7, 512
002190  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
002194  9f0b0103  addli r23, r2, 384
002198  1f018103  addli r2, r2, 448
00219c  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
0021a0  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
0021a4  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
0021a8  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
0021ac  1f810103  addli r2, r3, 384
0021b0  9f8b8102  addli r23, r3, 320
0021b4  9f818103  addli r3, r3, 448
0021b8  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
0021bc  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
0021c0  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0021c4  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
0021c8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0021cc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0021d0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0021d4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0021d8  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
0021dc  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
0021e0  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0021e4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0021e8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0021ec  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
0021f0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0021f4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0021f8  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0021fc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002200  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
002204  bf3bcaff  blt.s r20, r28, -276
002208  5bc6ffff  j -464
00220c  9f0c0000  addli r25, zero, 0
002210  1f0d0000  addli r26, zero, 0
002214  9f0b8fd7  addli r23, r30, -5184
002218  00a00000  mfence { lm }
00221c  bfd3a700  blt.s r15, r10, 244
002220  e3017fd5  loadli.w r3,  -5448(r30)
002224  e3023f00  loadli.w r5,  24(r30)
002228  1f030000  addli r6, zero, 0
00222c  1f0a0000  addli r20, zero, 0
002230  0f013d18  div.f.rn r2, r26, r3
002234  8f813c18  div.f.rn r3, r25, r3
002238  8b632120  mul.f.rn r7, r2, r2
00223c  8b680158  neg.f r17, r2
002240  8be17118  sub.f.rn r3, r3, r7
002244  8be15110  add.f.rn r3, r3, r5
002248  ab02803f  lui r5, 260096
00224c  8f810108  sqrt.f.rn r3, r3
002250  8f833218  div.f.rn r7, r5, r3
002254  8b115311  add.s r3, r6, r21
002258  0b916b10  add.s r2, r23, r6
00225c  9f8c8100  addli r25, r3, 64
002260  4a910102  vloads_mask16.mz vr2{mr1}, 0(r3)
002264  8b116311  add.s r3, r6, r22
002268  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
00226c  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
002270  9f0c8100  addli r25, r2, 64
002274  4a920102  vloads_mask16.mz vr4{mr1}, 0(r3)
002278  9f818100  addli r3, r3, 64
00227c  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
002280  4a930102  vloads_mask16.mz vr6{mr1}, 0(r3)
002284  9f014a00  addli r3, r20, 32
002288  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
00228c  92925802  vadd.f.mz.rn vr5{mr1}, r17, vr5
002290  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
002294  8a925302  vmul.f.mz.rn vr5{mr1}, r7, vr5
002298  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
00229c  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
0022a0  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
0022a4  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
0022a8  cba13700  ble.s r15, r3, 104
0022ac  8b916a10  add.s r3, r21, r6
0022b0  8b1c6b10  add.s r25, r22, r6
0022b4  1f0a8a00  addli r20, r20, 64
0022b8  1f030302  addli r6, r6, 256
0022bc  1f8d0101  addli r26, r3, 128
0022c0  9f8d0c01  addli r27, r25, 128
0022c4  9f818101  addli r3, r3, 192
0022c8  9f8c8c01  addli r25, r25, 192
0022cc  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
0022d0  1f0d0101  addli r26, r2, 128
0022d4  1f018101  addli r2, r2, 192
0022d8  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
0022dc  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
0022e0  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
0022e4  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
0022e8  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0022ec  92913802  vadd.f.mz.rn vr3{mr1}, r17, vr3
0022f0  12924802  vadd.f.mz.rn vr4{mr1}, r17, vr4
0022f4  8a913302  vmul.f.mz.rn vr3{mr1}, r7, vr3
0022f8  0a924302  vmul.f.mz.rn vr4{mr1}, r7, vr4
0022fc  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
002300  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
002304  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
002308  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
00230c  3f2dfafe  blt.s r20, r15, -184
002310  00a00000  mfence { lm }
002314  3ff1a7fe  blt.s r15, r10, -932
002318  1f018fd7  addli r2, r30, -5184
00231c  9f018fd7  addli r3, r30, -5184
002320  1f030000  addli r6, zero, 0
002324  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002328  9f838100  addli r7, r3, 64
00232c  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
002330  1f034300  addli r6, r6, 32
002334  9f810101  addli r3, r3, 128
002338  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
00233c  86910000  vfloat2fp16_l.rn vr3, vr1
002340  86510100  vfloat2fp16_h.rn vr3, vr2
002344  46003102  vstore.mz vr3{mr1}, 0(r2)
002348  1f018100  addli r2, r2, 64
00234c  3f6ff3fe  blt.s r6, r15, -40
002350  5b84ffff  j -992
002354  e3002f00  loadli.w r1,  16(r30)
002358  1f010010  addli r2, zero, 2048
00235c  bbd02008  bneq r1, r2, 4148
002360  2ba10200  lui r2, 42
002364  803d0002  core_id r27
002368  1f010108  addli r2, r2, 1024
00236c  3bd00d00  bneq r27, zero, 20
002370  9f010040  addli r3, zero, 8192
002374  2b0300f0  lui r6, 983040
002378  97916100  or r3, r3, r6
00237c  ff012200  l_gm2sm r3, r2, 0(r[5:6])
002380  abf10000  lui r3, 15
002384  00200300  mfence { sm, gm }
002388  1b8e1d00  andi r28, r27, 1
00238c  1f030006  addli r6, zero, 768
002390  1b92f1ff  ori r4, r3, 4095
002394  80210204  csr_set csr3, r4
002398  1f020006  addli r4, zero, 768
00239c  00d00100  sync_group
0023a0  37200e00  beq r28, zero, 8
0023a4  1f02000a  addli r4, zero, 1280
0023a8  e3421f00  loadli.w r5,  12(r30)
0023ac  9f130000  addli r7, zero, 1
0023b0  bfb07222  blt.s r5, r7, 17452
0023b4  80530102  load_param_i r7, 2
0023b8  abf0ffff  lui r1, 1048575
0023bc  abc90200  lui r19, 44
0023c0  2bcc0200  lui r24, 44
0023c4  2bf50000  lui r10, 15
0023c8  8b116e20  mul.s r3, r28, r6
0023cc  9f020000  addli r5, zero, 0
0023d0  1bc41d00  srli r8, r27, 1
0023d4  9b342200  slli r9, r4, 2
0023d8  9f270000  addli r15, zero, 2
0023dc  9f058fd7  addli r11, r30, -5184
0023e0  1f030fd7  addli r6, r30, -5248
0023e4  1f070005  addli r14, zero, 640
0023e8  1f080001  addli r16, zero, 128
0023ec  9f088000  addli r17, zero, 64
0023f0  1f094000  addli r18, zero, 32
0023f4  9f0b0003  addli r23, zero, 384
0023f8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0023fc  9b9000f8  ori r1, r1, 3968
002400  9bc31300  srli r7, r7, 1
002404  9f890908  addli r19, r19, 1024
002408  1b1af5ff  ori r20, r10, 4095
00240c  1f0c0c0c  addli r24, r24, 1536
002410  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
002414  67041fd6  storeli.w r1, -5312(r30)
002418  db030000  j 28
00241c  00a00300  mfence { lm, sm, gm }
002420  80210a04  csr_set csr3, r20
002424  00d00100  sync_group
002428  8b927210  add.s r5, r5, r7
00242c  3fa09201  blt.s r5, r25, 8
002430  db0ffdff  j -6020
002434  0b958210  add.s r10, r5, r8
002438  cb9facfe  ble.s r25, r10, -28
00243c  e3001f00  loadli.w r1,  8(r30)
002440  0b151510  add.s r10, r10, r1
002444  9f007fd6  addli r1, r30, -5320
002448  1b35b500  slli r10, r10, 11
00244c  17153500  or r10, r10, r3
002450  33160528  sext_int2long r[13:14], r10
002454  2b0500f0  lui r10, 983040
002458  973cf602  sll.d r[26:27], r[13:14], r15
00245c  6bd60000  load.d r[13:14], 0(r1)
002460  1795a400  or r10, r9, r10
002464  0b269611  add.ul r[13:14], r[13:14], r[26:27]
002468  7f25b600  l_gm2lm r10, r11, 0(r[13:14])
00246c  00a00200  mfence { lm, gm }
002470  3b260e00  bneq r28, zero, 392
002474  9f000fd7  addli r1, r30, -5248
002478  630b8fd6  loadli.w r22,  -5312(r30)
00247c  1f050000  addli r10, zero, 0
002480  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
002484  92303002  vadd.s.mz vr1{mr1}, zero, vr3
002488  12313002  vadd.s.mz vr2{mr1}, zero, vr3
00248c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
002490  8b162510  add.s r13, r10, r2
002494  0b96a510  add.s r12, r11, r10
002498  1f0b0b01  addli r22, r22, 128
00249c  1f050504  addli r10, r10, 512
0024a0  9f800601  addli r1, r13, 128
0024a4  4a900602  vloads_mask16.mz vr0{mr1}, 0(r13)
0024a8  1f838600  addli r6, r13, 64
0024ac  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
0024b0  9f0a8601  addli r21, r12, 192
0024b4  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
0024b8  9f808601  addli r1, r13, 192
0024bc  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0024c0  1f038600  addli r6, r12, 64
0024c4  c2950a02  vload_mask16.mz vr11{mr1}, 0(r21)
0024c8  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
0024cc  9f000601  addli r1, r12, 128
0024d0  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0024d4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0024d8  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0024dc  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0024e0  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0024e4  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0024e8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0024ec  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
0024f0  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0024f4  9f800602  addli r1, r13, 256
0024f8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0024fc  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002500  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002504  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
002508  1f030603  addli r6, r12, 384
00250c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002510  9f808602  addli r1, r13, 320
002514  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
002518  9f0a0602  addli r21, r12, 256
00251c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002520  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
002524  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002528  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
00252c  9f800603  addli r1, r13, 384
002530  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
002534  9f868603  addli r13, r13, 448
002538  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00253c  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
002540  9f008602  addli r1, r12, 320
002544  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
002548  1f068603  addli r12, r12, 448
00254c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002550  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
002554  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
002558  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00255c  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
002560  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002564  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002568  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
00256c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002570  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
002574  9300eb04  setlt.u r1, r22, r14
002578  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00257c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002580  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002584  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002588  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00258c  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
002590  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
002594  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002598  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00259c  bbdb00fe  bneq r1, zero, -268
0025a0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0025a4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0025a8  9f000002  addli r1, zero, 256
0025ac  6af100c0  vsrl.p vr2, r1, vr0
0025b0  eaf110c0  vsrl.p vr3, r1, vr1
0025b4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0025b8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0025bc  6a7108c0  vsrl.p vr2, r16, vr0
0025c0  ea7118c0  vsrl.p vr3, r16, vr1
0025c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0025c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0025cc  6af108c0  vsrl.p vr2, r17, vr0
0025d0  eaf118c0  vsrl.p vr3, r17, vr1
0025d4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0025d8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0025dc  6a7109c0  vsrl.p vr2, r18, vr0
0025e0  ea7119c0  vsrl.p vr3, r18, vr1
0025e4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0025e8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0025ec  7a160040  vextracti.f r12, 0(vr0)
0025f0  7a950040  vextracti.f r10, 0(vr1)
0025f4  5b650000  j 808
0025f8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0025fc  abf0ffff  lui r1, 1048575
002600  9f070e00  addli r15, r28, 0
002604  1f050000  addli r10, zero, 0
002608  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00260c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002610  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002614  9b9d00f8  ori r27, r1, 3968
002618  0b16a110  add.s r12, r2, r10
00261c  0b9ba510  add.s r22, r11, r10
002620  9f8d0d01  addli r27, r27, 128
002624  1f050504  addli r10, r10, 512
002628  9f000631  addli r1, r12, 6272
00262c  9f060630  addli r13, r12, 6144
002630  1f038631  addli r6, r12, 6336
002634  1f0e0b18  addli r28, r22, 3072
002638  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
00263c  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
002640  9f068630  addli r13, r12, 6208
002644  ca140302  vloads_mask16.mz vr9{mr1}, 0(r6)
002648  1f030b19  addli r6, r22, 3200
00264c  9f008b18  addli r1, r22, 3136
002650  42130e02  vload_mask16.mz vr6{mr1}, 0(r28)
002654  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
002658  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
00265c  9f068b19  addli r13, r22, 3264
002660  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
002664  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
002668  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
00266c  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
002670  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
002674  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
002678  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00267c  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
002680  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
002684  1f030632  addli r6, r12, 6400
002688  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
00268c  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
002690  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002694  46106e02  vstore_mask16.mz vr6{mr1}, 0(r28)
002698  9f060b1a  addli r13, r22, 3328
00269c  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
0026a0  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0026a4  9f000b1b  addli r1, r22, 3456
0026a8  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0026ac  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0026b0  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
0026b4  1f038632  addli r6, r12, 6464
0026b8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0026bc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0026c0  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0026c4  1f030633  addli r6, r12, 6528
0026c8  1f068633  addli r12, r12, 6592
0026cc  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
0026d0  1f038b1a  addli r6, r22, 3392
0026d4  4a150602  vloads_mask16.mz vr10{mr1}, 0(r12)
0026d8  1f068b1b  addli r12, r22, 3520
0026dc  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
0026e0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0026e4  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0026e8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0026ec  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0026f0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0026f4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0026f8  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
0026fc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002700  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
002704  13837d05  setlt.u r6, r27, r23
002708  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00270c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002710  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002714  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002718  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00271c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
002720  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
002724  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002728  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00272c  bb3b03fe  bneq r6, zero, -276
002730  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002734  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002738  9f000002  addli r1, zero, 256
00273c  1f050000  addli r10, zero, 0
002740  eaf110c0  vsrl.p vr3, r1, vr1
002744  6af100c0  vsrl.p vr2, r1, vr0
002748  abf0ffff  lui r1, 1048575
00274c  1b9b00f8  ori r22, r1, 3968
002750  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002754  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002758  ea7118c0  vsrl.p vr3, r16, vr1
00275c  6a7108c0  vsrl.p vr2, r16, vr0
002760  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002764  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002768  eaf118c0  vsrl.p vr3, r17, vr1
00276c  6af108c0  vsrl.p vr2, r17, vr0
002770  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002774  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002778  ea7119c0  vsrl.p vr3, r18, vr1
00277c  6a7109c0  vsrl.p vr2, r18, vr0
002780  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002784  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002788  7a9e0040  vextracti.f r28, 0(vr1)
00278c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002790  fa1d0040  vextracti.f r27, 0(vr0)
002794  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002798  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00279c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0027a0  8b16a110  add.s r13, r2, r10
0027a4  0b96a510  add.s r12, r11, r10
0027a8  1f0b0b01  addli r22, r22, 128
0027ac  1f050504  addli r10, r10, 512
0027b0  9f800618  addli r1, r13, 3072
0027b4  1f830619  addli r6, r13, 3200
0027b8  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
0027bc  9f0a8601  addli r21, r12, 192
0027c0  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0027c4  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
0027c8  9f808618  addli r1, r13, 3136
0027cc  1f838619  addli r6, r13, 3264
0027d0  c2950a02  vload_mask16.mz vr11{mr1}, 0(r21)
0027d4  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0027d8  9f000601  addli r1, r12, 128
0027dc  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
0027e0  1f038600  addli r6, r12, 64
0027e4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0027e8  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0027ec  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0027f0  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0027f4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0027f8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0027fc  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002800  9f80061a  addli r1, r13, 3328
002804  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002808  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00280c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002810  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002814  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
002818  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
00281c  9f80861a  addli r1, r13, 3392
002820  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
002824  9f0a0602  addli r21, r12, 256
002828  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
00282c  1f030603  addli r6, r12, 384
002830  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
002834  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002838  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
00283c  9f80061b  addli r1, r13, 3456
002840  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
002844  9f86861b  addli r13, r13, 3520
002848  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00284c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002850  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
002854  9f008602  addli r1, r12, 320
002858  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
00285c  1f068603  addli r12, r12, 448
002860  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002864  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
002868  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
00286c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002870  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
002874  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002878  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00287c  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
002880  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002884  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
002888  9300eb04  setlt.u r1, r22, r14
00288c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002890  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002894  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002898  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00289c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0028a0  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
0028a4  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0028a8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0028ac  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0028b0  bbcb00fe  bneq r1, zero, -272
0028b4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0028b8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0028bc  9f000002  addli r1, zero, 256
0028c0  6af100c0  vsrl.p vr2, r1, vr0
0028c4  eaf110c0  vsrl.p vr3, r1, vr1
0028c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028d0  6a7108c0  vsrl.p vr2, r16, vr0
0028d4  ea7118c0  vsrl.p vr3, r16, vr1
0028d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028e0  6af108c0  vsrl.p vr2, r17, vr0
0028e4  eaf118c0  vsrl.p vr3, r17, vr1
0028e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028f0  6a7109c0  vsrl.p vr2, r18, vr0
0028f4  ea7119c0  vsrl.p vr3, r18, vr1
0028f8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028fc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002900  fa100040  vextracti.f r1, 0(vr0)
002904  7a930040  vextracti.f r6, 0(vr1)
002908  0be61d10  add.f.rn r12, r27, r1
00290c  0b656e10  add.f.rn r10, r28, r6
002910  1f8e0700  addli r28, r15, 0
002914  803d0002  core_id r27
002918  9f270000  addli r15, zero, 2
00291c  8b807230  div.u r1, r5, r7
002920  1f0b0000  addli r22, zero, 0
002924  9bb06000  slli r1, r1, 6
002928  9b800004  andi r1, r1, 64
00292c  9790b001  or r1, r1, r27
002930  1bb32000  slli r6, r1, 2
002934  9b80e007  andi r1, r1, 126
002938  8b163311  add.s r13, r6, r19
00293c  9bb02000  slli r1, r1, 2
002940  73e0c600  stores.w r12, 0(r13)
002944  0b168311  add.s r12, r6, r24
002948  1b134300  ori r6, r6, 4
00294c  9f068fd7  addli r13, r30, -5184
002950  7360a600  stores.w r10, 0(r12)
002954  0b153311  add.s r10, r6, r19
002958  0b963011  add.s r12, r1, r19
00295c  0b138311  add.s r6, r6, r24
002960  8b908011  add.s r1, r1, r24
002964  00a00300  mfence { lm, sm, gm }
002968  80210a04  csr_set csr3, r20
00296c  00d00100  sync_group
002970  6f450500  loads.w r10, 0(r10)
002974  6f460600  loads.w r12, 0(r12)
002978  6f430300  loads.w r6, 0(r6)
00297c  efc00000  loads.w r1, 0(r1)
002980  0b65c510  add.f.rn r10, r10, r12
002984  2b06003a  lui r12, 237568
002988  8b601310  add.f.rn r1, r6, r1
00298c  0b63c520  mul.f.rn r6, r10, r12
002990  8be0c020  mul.f.rn r1, r1, r12
002994  0b656320  mul.f.rn r10, r6, r6
002998  0b660358  neg.f r12, r6
00299c  8be0a018  sub.f.rn r1, r1, r10
0029a0  63053f00  loadli.w r10,  24(r30)
0029a4  8be0a010  add.f.rn r1, r1, r10
0029a8  2b05803f  lui r10, 260096
0029ac  8f800008  sqrt.f.rn r1, r1
0029b0  0f051518  div.f.rn r10, r10, r1
0029b4  9f808600  addli r1, r13, 64
0029b8  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
0029bc  1f034b00  addli r6, r22, 32
0029c0  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0029c4  13036206  setle.u r6, r4, r6
0029c8  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
0029cc  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
0029d0  0a100502  vmul.f.mz.rn vr0{mr1}, r10, vr0
0029d4  8a101502  vmul.f.mz.rn vr1{mr1}, r10, vr1
0029d8  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
0029dc  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0029e0  bb700300  bneq r6, zero, 60
0029e4  9f800601  addli r1, r13, 128
0029e8  1f838601  addli r6, r13, 192
0029ec  1f0b8b00  addli r22, r22, 64
0029f0  9f860602  addli r13, r13, 256
0029f4  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0029f8  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
0029fc  930a4b04  setlt.u r21, r22, r4
002a00  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
002a04  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
002a08  0a100502  vmul.f.mz.rn vr0{mr1}, r10, vr0
002a0c  8a101502  vmul.f.mz.rn vr1{mr1}, r10, vr1
002a10  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002a14  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
002a18  3bfe0afe  bneq r21, zero, -100
002a1c  6b560f00  load.d r[13:14], 0(r30)
002a20  ab0000f0  lui r1, 983040
002a24  00a00000  mfence { lm }
002a28  97901400  or r1, r9, r1
002a2c  0b269611  add.ul r[13:14], r[13:14], r[26:27]
002a30  ff30b600  s_lm2gm r1, r11, 0(r[13:14])
002a34  00a00200  mfence { lm, gm }
002a38  e34c1f00  loadli.w r25,  12(r30)
002a3c  db3dffff  j -1556
002a40  80300002  core_id r1
002a44  bb800000  bneq r1, zero, 32
002a48  63012f00  loadli.w r2,  16(r30)
002a4c  ab0100f0  lui r3, 983040
002a50  1b311100  slli r2, r2, 1
002a54  17113100  or r2, r2, r3
002a58  abc10100  lui r3, 28
002a5c  9f810100  addli r3, r3, 0
002a60  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002a64  2bf10000  lui r2, 15
002a68  e3411f00  loadli.w r3,  12(r30)
002a6c  00200300  mfence { sm, gm }
002a70  1b11f1ff  ori r2, r2, 4095
002a74  80210104  csr_set csr3, r2
002a78  00d00100  sync_group
002a7c  cb85111e  ble.s r3, r1, 15712
002a80  63012f00  loadli.w r2,  16(r30)
002a84  e3412f00  loadli.w r3,  20(r30)
002a88  1f052000  addli r10, zero, 16
002a8c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002a90  1f130000  addli r6, zero, 1
002a94  9f040002  addli r9, zero, 256
002a98  ab05ffff  lui r11, 1048560
002a9c  ab06807f  lui r13, 522240
002aa0  2b08c07f  lui r16, 523264
002aa4  9f080001  addli r17, zero, 128
002aa8  1f098000  addli r18, zero, 64
002aac  9f094000  addli r19, zero, 32
002ab0  1b3b1100  slli r22, r2, 1
002ab4  0b123110  add.s r4, r2, r3
002ab8  33010108  fix2float.rn r2, r2
002abc  670b2fd4  storeli.w r2, -5456(r30)
002ac0  1f71f2ff  addli r2, r4, -1
002ac4  1bb21100  slli r4, r3, 1
002ac8  e70b6fd5  storeli.w r22, -5448(r30)
002acc  8b123130  div.s r5, r2, r3
002ad0  2bf1ffff  lui r2, 1048575
002ad4  9f018fd7  addli r3, r30, -5184
002ad8  1b14f1ff  ori r8, r2, 4095
002adc  1f010fd7  addli r2, r30, -5248
002ae0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002ae4  6a200522  vor.u.mz vr0{mr1}, r10, vr0
002ae8  1f018fd6  addli r2, r30, -5312
002aec  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002af0  2b710000  lui r2, 7
002af4  1b16f1ff  ori r12, r2, 4095
002af8  db080000  j 68
002afc  9f018fd5  addli r3, r30, -5440
002b00  00a00000  mfence { lm }
002b04  6b5a0f00  load.d r[21:22], 0(r30)
002b08  2b0100f0  lui r2, 983040
002b0c  80530102  load_param_i r7, 2
002b10  6bdb0100  load.d r[23:24], 0(r3)
002b14  9f018fd7  addli r3, r30, -5184
002b18  8b901310  add.s r1, r7, r1
002b1c  0b2a6a11  add.ul r[21:22], r[21:22], r[23:24]
002b20  630b7fd5  loadli.w r22,  -5448(r30)
002b24  17112b00  or r2, r22, r2
002b28  7f313a00  s_lm2gm r2, r3, 0(r[21:22])
002b2c  00a00200  mfence { lm, gm }
002b30  63411f00  loadli.w r2,  12(r30)
002b34  3fa02000  blt.s r1, r2, 8
002b38  db940700  j 15524
002b3c  63011f00  loadli.w r2,  8(r30)
002b40  9f037fd6  addli r7, r30, -5320
002b44  0b912010  add.s r2, r1, r2
002b48  0b11f120  mul.s r2, r2, r15
002b4c  331a0128  sext_int2long r[21:22], r2
002b50  2b0100f0  lui r2, 983040
002b54  973b6a02  sll.d r[24:25], r[21:22], r6
002b58  6bda0300  load.d r[21:22], 0(r7)
002b5c  17112b00  or r2, r22, r2
002b60  9f038fd5  addli r7, r30, -5440
002b64  73b07301  store.d r[24:25], 0(r7)
002b68  0b2a7a11  add.ul r[21:22], r[21:22], r[24:25]
002b6c  7f213a00  l_gm2lm r2, r3, 0(r[21:22])
002b70  00a00200  mfence { lm, gm }
002b74  bfdc6200  blt.s r5, r6, 820
002b78  9f0c0000  addli r25, zero, 0
002b7c  1f0c0000  addli r24, zero, 0
002b80  1f0d0000  addli r26, zero, 0
002b84  db0c0000  j 100
002b88  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
002b8c  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
002b90  1f1d0d00  addli r26, r26, 1
002b94  6af104c0  vsrl.p vr2, r9, vr0
002b98  eaf114c0  vsrl.p vr3, r9, vr1
002b9c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002ba0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002ba4  6af108c0  vsrl.p vr2, r17, vr0
002ba8  eaf118c0  vsrl.p vr3, r17, vr1
002bac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002bb0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002bb4  6a7109c0  vsrl.p vr2, r18, vr0
002bb8  ea7119c0  vsrl.p vr3, r18, vr1
002bbc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002bc0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002bc4  6af109c0  vsrl.p vr2, r19, vr0
002bc8  eaf119c0  vsrl.p vr3, r19, vr1
002bcc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002bd0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002bd4  7a110040  vextracti.f r2, 0(vr0)
002bd8  fa910040  vextracti.f r3, 0(vr1)
002bdc  8bec2c10  add.f.rn r25, r25, r2
002be0  0b6c3c10  add.f.rn r24, r24, r3
002be4  373b5d00  beq r26, r5, 716
002be8  1f010d00  addli r2, r26, 0
002bec  37309700  beq r14, r9, 12
002bf0  17218d00  xor r2, r26, r8
002bf4  0b912210  add.s r2, r5, r2
002bf8  9f010fd7  addli r3, r30, -5248
002bfc  8b13e120  mul.s r7, r2, r14
002c00  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
002c04  8b937718  sub.s r7, r15, r7
002c08  8b9de340  min.s r27, r7, r14
002c0c  92322002  vadd.s.mz vr5{mr1}, zero, vr2
002c10  12322002  vadd.s.mz vr4{mr1}, zero, vr2
002c14  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002c18  bfcd6dfe  blt.s r27, r6, -144
002c1c  0b1a2220  mul.s r20, r4, r2
002c20  1f010fd7  addli r2, r30, -5248
002c24  abca0100  lui r21, 28
002c28  1f0e0000  addli r28, zero, 0
002c2c  9f038fd7  addli r7, r30, -5184
002c30  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
002c34  9f8a0a00  addli r21, r21, 0
002c38  12315002  vadd.s.mz vr2{mr1}, zero, vr5
002c3c  92315002  vadd.s.mz vr3{mr1}, zero, vr5
002c40  12325002  vadd.s.mz vr4{mr1}, zero, vr5
002c44  0b9b4a11  add.s r22, r21, r20
002c48  0b914311  add.s r2, r7, r20
002c4c  9f018fd6  addli r3, r30, -5312
002c50  4a030b02  vloads.mz vr6{mr1}, 0(r22)
002c54  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002c58  c2030102  vload.mz vr7{mr1}, 0(r2)
002c5c  9f010fd7  addli r3, r30, -5248
002c60  9f0b8b00  addli r23, r22, 64
002c64  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
002c68  9f018e00  addli r3, r28, 64
002c6c  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
002c70  6ab57502  vand.s.mz vr10{mr1}, r11, vr7
002c74  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
002c78  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002c7c  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
002c80  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
002c84  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
002c88  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
002c8c  669503c0  vabs.f vr10, vr7
002c90  6a348302  vand.s.mz vr8{mr1}, r6, vr8
002c94  ea349302  vand.s.mz vr9{mr1}, r6, vr9
002c98  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
002c9c  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
002ca0  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
002ca4  12348602  vadd.s.mz vr8{mr1}, r12, vr8
002ca8  92349602  vadd.s.mz vr9{mr1}, r12, vr9
002cac  eab38502  vand.s.mz vr7{mr1}, r11, vr8
002cb0  661403c0  vabs.f vr8, vr6
002cb4  6ab39502  vand.s.mz vr6{mr1}, r11, vr9
002cb8  ea230834  vor.u.mh vr7{mr2}, r16, vr0
002cbc  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
002cc0  6a230834  vor.u.mh vr6{mr2}, r16, vr0
002cc4  4a840b02  vloads.mz vr8{mr1}, 0(r23)
002cc8  9f0b8100  addli r23, r2, 64
002ccc  c2840b02  vload.mz vr9{mr1}, 0(r23)
002cd0  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
002cd4  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
002cd8  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002cdc  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
002ce0  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002ce4  46007102  vstore.mz vr7{mr1}, 0(r2)
002ce8  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002cec  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002cf0  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
002cf4  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
002cf8  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002cfc  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002d00  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002d04  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
002d08  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
002d0c  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
002d10  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
002d14  ea349302  vand.s.mz vr9{mr1}, r6, vr9
002d18  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002d1c  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
002d20  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
002d24  661505c0  vabs.f vr10, vr10
002d28  661404c0  vabs.f vr8, vr8
002d2c  92349602  vadd.s.mz vr9{mr1}, r12, vr9
002d30  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002d34  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
002d38  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002d3c  6ab5b502  vand.s.mz vr10{mr1}, r11, vr11
002d40  ea240834  vor.u.mh vr9{mr2}, r16, vr0
002d44  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
002d48  6a250834  vor.u.mh vr10{mr2}, r16, vr0
002d4c  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
002d50  eab4a502  vand.s.mz vr9{mr1}, r11, vr10
002d54  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
002d58  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002d5c  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002d60  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
002d64  46808b02  vstore.mz vr8{mr1}, 0(r23)
002d68  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002d6c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002d70  4be83dfe  ble.s r27, r3, -488
002d74  9f010b01  addli r3, r22, 128
002d78  9f0b0101  addli r23, r2, 128
002d7c  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
002d80  1f018101  addli r2, r2, 192
002d84  1f0e0e01  addli r28, r28, 128
002d88  9f8a0a02  addli r21, r21, 256
002d8c  9f830302  addli r7, r7, 256
002d90  6a237522  vor.u.mz vr6{mr1}, r10, vr7
002d94  4a840102  vloads.mz vr8{mr1}, 0(r3)
002d98  c2840b02  vload.mz vr9{mr1}, 0(r23)
002d9c  9f018b01  addli r3, r22, 192
002da0  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
002da4  6ab09502  vand.s.mz vr0{mr1}, r11, vr9
002da8  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
002dac  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002db0  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
002db4  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
002db8  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
002dbc  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
002dc0  e69504c0  vabs.f vr11, vr9
002dc4  6a300302  vand.s.mz vr0{mr1}, r6, vr0
002dc8  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002dcc  72a1b642  vlt.u.mz mr2{mr1}, r13, vr11
002dd0  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
002dd4  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
002dd8  12300602  vadd.s.mz vr0{mr1}, r12, vr0
002ddc  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002de0  eab40502  vand.s.mz vr9{mr1}, r11, vr0
002de4  661004c0  vabs.f vr0, vr8
002de8  6ab4a502  vand.s.mz vr8{mr1}, r11, vr10
002dec  ea247834  vor.u.mh vr9{mr2}, r16, vr7
002df0  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002df4  6a247834  vor.u.mh vr8{mr2}, r16, vr7
002df8  4a800102  vloads.mz vr0{mr1}, 0(r3)
002dfc  42050102  vload.mz vr10{mr1}, 0(r2)
002e00  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
002e04  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
002e08  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002e0c  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
002e10  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002e14  46809b02  vstore.mz vr9{mr1}, 0(r23)
002e18  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
002e1c  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
002e20  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
002e24  6ab00502  vand.s.mz vr0{mr1}, r11, vr0
002e28  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
002e2c  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
002e30  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
002e34  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
002e38  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002e3c  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002e40  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
002e44  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
002e48  e69000c0  vabs.f vr1, vr1
002e4c  661000c0  vabs.f vr0, vr0
002e50  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002e54  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002e58  72a11642  vlt.u.mz mr2{mr1}, r13, vr1
002e5c  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002e60  eab0b502  vand.s.mz vr1{mr1}, r11, vr11
002e64  6a257834  vor.u.mh vr10{mr2}, r16, vr7
002e68  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002e6c  ea207834  vor.u.mh vr1{mr2}, r16, vr7
002e70  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
002e74  eab31502  vand.s.mz vr7{mr1}, r11, vr1
002e78  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
002e7c  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
002e80  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002e84  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002e88  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
002e8c  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
002e90  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
002e94  46000102  vstore.mz vr0{mr1}, 0(r2)
002e98  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002e9c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002ea0  bf16beff  blt.s r28, r27, -604
002ea4  db9cffff  j -796
002ea8  1f0c0000  addli r24, zero, 0
002eac  9f0c0000  addli r25, zero, 0
002eb0  00a00000  mfence { lm }
002eb4  3fa167fe  blt.s r15, r6, -952
002eb8  63016fd5  loadli.w r2,  -5456(r30)
002ebc  e3013f00  loadli.w r3,  24(r30)
002ec0  9f0a0000  addli r21, zero, 0
002ec4  8f832c18  div.f.rn r7, r25, r2
002ec8  0f012c18  div.f.rn r2, r24, r2
002ecc  0bea7320  mul.f.rn r20, r7, r7
002ed0  8be30358  neg.f r7, r7
002ed4  0b614119  sub.f.rn r2, r2, r20
002ed8  1f0a8fd7  addli r20, r30, -5184
002edc  0b613110  add.f.rn r2, r2, r3
002ee0  ab01803f  lui r3, 260096
002ee4  0f010108  sqrt.f.rn r2, r2
002ee8  0f812118  div.f.rn r2, r3, r2
002eec  42020a02  vload.mz vr4{mr1}, 0(r20)
002ef0  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
002ef4  1f8b4a00  addli r22, r21, 32
002ef8  ea212522  vor.u.mz vr3{mr1}, r10, vr2
002efc  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002f00  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002f04  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002f08  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002f0c  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002f10  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002f14  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002f18  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002f1c  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002f20  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002f24  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002f28  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002f2c  e69202c0  vabs.f vr5, vr5
002f30  661202c0  vabs.f vr4, vr4
002f34  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002f38  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002f3c  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002f40  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002f44  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002f48  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002f4c  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002f50  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002f54  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
002f58  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
002f5c  46004a02  vstore.mz vr4{mr1}, 0(r20)
002f60  4bfe67fd  ble.s r15, r22, -1124
002f64  1f0b8a00  addli r22, r20, 64
002f68  9f8a8a00  addli r21, r21, 64
002f6c  1f0a0a01  addli r20, r20, 128
002f70  42020b02  vload.mz vr4{mr1}, 0(r22)
002f74  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002f78  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002f7c  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002f80  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002f84  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002f88  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002f8c  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002f90  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002f94  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002f98  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002f9c  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002fa0  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002fa4  e69202c0  vabs.f vr5, vr5
002fa8  661202c0  vabs.f vr4, vr4
002fac  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002fb0  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002fb4  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002fb8  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002fbc  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002fc0  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002fc4  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002fc8  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002fcc  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
002fd0  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
002fd4  46002b02  vstore.mz vr2{mr1}, 0(r22)
002fd8  3fdcfafe  blt.s r21, r15, -236
002fdc  5b64ffff  j -1248
002fe0  80300002  core_id r1
002fe4  bb800000  bneq r1, zero, 32
002fe8  63012f00  loadli.w r2,  16(r30)
002fec  ab0100f0  lui r3, 983040
002ff0  1b311100  slli r2, r2, 1
002ff4  17113100  or r2, r2, r3
002ff8  ab010200  lui r3, 32
002ffc  9f810100  addli r3, r3, 0
003000  7f013200  l_gm2sm r2, r3, 0(r[5:6])
003004  2bf10000  lui r2, 15
003008  e3411f00  loadli.w r3,  12(r30)
00300c  00200300  mfence { sm, gm }
003010  1b11f1ff  ori r2, r2, 4095
003014  80210104  csr_set csr3, r2
003018  00d00100  sync_group
00301c  4b8f111a  ble.s r3, r1, 14272
003020  e3012f00  loadli.w r3,  16(r30)
003024  e3422f00  loadli.w r5,  20(r30)
003028  2bf4ffff  lui r8, 1048575
00302c  2b080200  lui r16, 32
003030  9f068fd7  addli r13, r30, -5184
003034  9f040002  addli r9, zero, 256
003038  1f050001  addli r10, zero, 128
00303c  9f058000  addli r11, zero, 64
003040  1f064000  addli r12, zero, 32
003044  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003048  1b14f4ff  ori r8, r8, 4095
00304c  1f080800  addli r16, r16, 0
003050  0b925110  add.s r4, r3, r5
003054  1bb11100  slli r2, r3, 1
003058  b3810108  fix2float.rn r3, r3
00305c  1f73f2ff  addli r6, r4, -1
003060  1bb21200  slli r4, r5, 1
003064  8b125330  div.s r5, r6, r5
003068  1f130000  addli r6, zero, 1
00306c  5b070000  j 56
003070  00a00000  mfence { lm }
003074  6b5a0f00  load.d r[21:22], 0(r30)
003078  ab0900f0  lui r19, 983040
00307c  9f068fd7  addli r13, r30, -5184
003080  97193101  or r19, r2, r19
003084  8b281a11  add.ul r[18:19], r[21:22], r[18:19]
003088  005a0102  load_param_i r20, 2
00308c  ffb9d800  s_lm2gm r19, r13, 0(r[18:19])
003090  8b101a10  add.s r1, r20, r1
003094  00a00200  mfence { lm, gm }
003098  e3431f00  loadli.w r7,  12(r30)
00309c  3fa07000  blt.s r1, r7, 8
0030a0  dbe70600  j 14140
0030a4  e3031f00  loadli.w r7,  8(r30)
0030a8  ab0900f0  lui r19, 983040
0030ac  97193101  or r19, r2, r19
0030b0  8b987010  add.s r17, r1, r7
0030b4  9f037fd6  addli r7, r30, -5320
0030b8  8b98f820  mul.s r17, r17, r15
0030bc  6bda0300  load.d r[21:22], 0(r7)
0030c0  b3980828  sext_int2long r[18:19], r17
0030c4  97b86802  sll.d r[18:19], r[18:19], r6
0030c8  0b2a1a11  add.ul r[21:22], r[21:22], r[18:19]
0030cc  ff29da00  l_gm2lm r19, r13, 0(r[21:22])
0030d0  00a00200  mfence { lm, gm }
0030d4  3fc76200  blt.s r5, r6, 464
0030d8  1f0a0000  addli r20, zero, 0
0030dc  9f090000  addli r19, zero, 0
0030e0  9f0a0000  addli r21, zero, 0
0030e4  db0c0000  j 100
0030e8  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
0030ec  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0030f0  9f9a0a00  addli r21, r21, 1
0030f4  6af134c0  vsrl.p vr2, r9, vr3
0030f8  6af214c0  vsrl.p vr4, r9, vr1
0030fc  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
003100  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
003104  ea7125c0  vsrl.p vr3, r10, vr2
003108  6a7215c0  vsrl.p vr4, r10, vr1
00310c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
003110  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
003114  eaf125c0  vsrl.p vr3, r11, vr2
003118  6af215c0  vsrl.p vr4, r11, vr1
00311c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
003120  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
003124  ea7126c0  vsrl.p vr3, r12, vr2
003128  6a7216c0  vsrl.p vr4, r12, vr1
00312c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
003130  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
003134  fa130140  vextracti.f r7, 0(vr2)
003138  fa960040  vextracti.f r13, 0(vr1)
00313c  0b6a7a10  add.f.rn r20, r20, r7
003140  8be9d910  add.f.rn r19, r19, r13
003144  b7a55a00  beq r21, r5, 360
003148  1f8c0a00  addli r24, r21, 0
00314c  37309700  beq r14, r9, 12
003150  17ab8a00  xor r22, r21, r8
003154  0b9c6211  add.s r24, r5, r22
003158  0b1bec20  mul.s r22, r24, r14
00315c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
003160  92310002  vadd.s.mz vr3{mr1}, zero, vr0
003164  12310002  vadd.s.mz vr2{mr1}, zero, vr0
003168  92300002  vadd.s.mz vr1{mr1}, zero, vr0
00316c  0b9b6719  sub.s r22, r15, r22
003170  0b1beb40  min.s r22, r22, r14
003174  bf5d6bfe  blt.s r22, r6, -140
003178  92300002  vadd.s.mz vr1{mr1}, zero, vr0
00317c  12310002  vadd.s.mz vr2{mr1}, zero, vr0
003180  92310002  vadd.s.mz vr3{mr1}, zero, vr0
003184  12320002  vadd.s.mz vr4{mr1}, zero, vr0
003188  9f0b0000  addli r23, zero, 0
00318c  0b1c8221  mul.s r24, r4, r24
003190  9f0c8fd7  addli r25, r30, -5184
003194  1f0d0800  addli r26, r16, 0
003198  8b1d8d11  add.s r27, r26, r24
00319c  9f838b00  addli r7, r23, 64
0031a0  ca820d02  vloads.mz vr5{mr1}, 0(r27)
0031a4  1f8e8d00  addli r28, r27, 64
0031a8  4a030e02  vloads.mz vr6{mr1}, 0(r28)
0031ac  0b9e8c11  add.s r28, r25, r24
0031b0  c2030e02  vload.mz vr7{mr1}, 0(r28)
0031b4  9f068e00  addli r13, r28, 64
0031b8  42840602  vload.mz vr8{mr1}, 0(r13)
0031bc  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
0031c0  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0031c4  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
0031c8  06b40300  vfp162float_l.rn vr8, vr7
0031cc  86f30300  vfp162float_h.rn vr7, vr7
0031d0  86340300  vfp162float_l.rn vr9, vr6
0031d4  06730300  vfp162float_h.rn vr6, vr6
0031d8  86120400  vfloat2fp16_l.rn vr5, vr8
0031dc  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
0031e0  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
0031e4  12340002  vadd.s.mz vr8{mr1}, zero, vr0
0031e8  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
0031ec  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
0031f0  06940400  vfloat2fp16_l.rn vr8, vr9
0031f4  86d20300  vfloat2fp16_h.rn vr5, vr7
0031f8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0031fc  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
003200  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
003204  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003208  06540300  vfloat2fp16_h.rn vr8, vr6
00320c  46005e02  vstore.mz vr5{mr1}, 0(r28)
003210  46808602  vstore.mz vr8{mr1}, 0(r13)
003214  4b5b7bfe  ble.s r22, r7, -300
003218  9f830d01  addli r7, r27, 128
00321c  9f060e01  addli r13, r28, 128
003220  9f8b0b01  addli r23, r23, 128
003224  1f0d0d02  addli r26, r26, 256
003228  9f8c0c02  addli r25, r25, 256
00322c  ca820302  vloads.mz vr5{mr1}, 0(r7)
003230  9f838d01  addli r7, r27, 192
003234  c2830602  vload.mz vr7{mr1}, 0(r13)
003238  4a830302  vloads.mz vr6{mr1}, 0(r7)
00323c  9f038e01  addli r7, r28, 192
003240  42840302  vload.mz vr8{mr1}, 0(r7)
003244  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
003248  92320002  vadd.s.mz vr5{mr1}, zero, vr0
00324c  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
003250  12330002  vadd.s.mz vr6{mr1}, zero, vr0
003254  86b40300  vfp162float_l.rn vr9, vr7
003258  86f30300  vfp162float_h.rn vr7, vr7
00325c  86920400  vfloat2fp16_l.rn vr5, vr9
003260  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
003264  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
003268  86340400  vfp162float_l.rn vr9, vr8
00326c  06740400  vfp162float_h.rn vr8, vr8
003270  06930400  vfloat2fp16_l.rn vr6, vr9
003274  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
003278  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
00327c  86d20300  vfloat2fp16_h.rn vr5, vr7
003280  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
003284  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
003288  06530400  vfloat2fp16_h.rn vr6, vr8
00328c  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
003290  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003294  46805602  vstore.mz vr5{mr1}, 0(r13)
003298  46806302  vstore.mz vr6{mr1}, 0(r7)
00329c  bffb6bff  blt.s r23, r22, -260
0032a0  5bc9ffff  j -440
0032a4  9f090000  addli r19, zero, 0
0032a8  1f0a0000  addli r20, zero, 0
0032ac  00a00000  mfence { lm }
0032b0  3f8767fe  blt.s r15, r6, -576
0032b4  0f0a3a18  div.f.rn r20, r20, r3
0032b8  8f893918  div.f.rn r19, r19, r3
0032bc  e3033f00  loadli.w r7,  24(r30)
0032c0  1f0b0000  addli r22, zero, 0
0032c4  8b6a4a21  mul.f.rn r21, r20, r20
0032c8  0b6a0a58  neg.f r20, r20
0032cc  8be95919  sub.f.rn r19, r19, r21
0032d0  9f0a8fd7  addli r21, r30, -5184
0032d4  8be97910  add.f.rn r19, r19, r7
0032d8  ab03803f  lui r7, 260096
0032dc  8f890908  sqrt.f.rn r19, r19
0032e0  8f893319  div.f.rn r19, r7, r19
0032e4  c2800a02  vload.mz vr1{mr1}, 0(r21)
0032e8  9f0b4b00  addli r23, r22, 32
0032ec  06b10000  vfp162float_l.rn vr2, vr1
0032f0  86f00000  vfp162float_h.rn vr1, vr1
0032f4  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
0032f8  92111a02  vadd.f.mz.rn vr3{mr1}, r20, vr1
0032fc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003300  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003304  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
003308  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
00330c  06120100  vfloat2fp16_l.rn vr4, vr2
003310  06d20100  vfloat2fp16_h.rn vr4, vr3
003314  46804a02  vstore.mz vr4{mr1}, 0(r21)
003318  4be577ff  ble.s r15, r23, -680
00331c  9f8b8a00  addli r23, r21, 64
003320  1f0b8b00  addli r22, r22, 64
003324  9f8a0a01  addli r21, r21, 128
003328  42810b02  vload.mz vr2{mr1}, 0(r23)
00332c  86310100  vfp162float_l.rn vr3, vr2
003330  06710100  vfp162float_h.rn vr2, vr2
003334  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
003338  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
00333c  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003340  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
003344  86900100  vfloat2fp16_l.rn vr1, vr3
003348  86500100  vfloat2fp16_h.rn vr1, vr2
00334c  46801b02  vstore.mz vr1{mr1}, 0(r23)
003350  3f5efbfe  blt.s r22, r15, -108
003354  dba3ffff  j -740
003358  80300002  core_id r1
00335c  1f210000  addli r2, zero, 2
003360  b7d12018  beq r1, r2, 12404
003364  1f110000  addli r2, zero, 1
003368  b7c32014  beq r1, r2, 10480
00336c  3b920018  bneq r1, zero, 12420
003370  63012f00  loadli.w r2,  16(r30)
003374  ab0100f0  lui r3, 983040
003378  1b312100  slli r2, r2, 2
00337c  17113100  or r2, r2, r3
003380  ab710200  lui r3, 39
003384  9f810108  addli r3, r3, 1024
003388  7f013200  l_gm2sm r2, r3, 0(r[5:6])
00338c  db0c0600  j 12388
003390  80300002  core_id r1
003394  bb800000  bneq r1, zero, 32
003398  63012f00  loadli.w r2,  16(r30)
00339c  ab0100f0  lui r3, 983040
0033a0  1b312100  slli r2, r2, 2
0033a4  17113100  or r2, r2, r3
0033a8  abd10200  lui r3, 45
0033ac  9f8101f0  addli r3, r3, -2048
0033b0  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0033b4  2bf10000  lui r2, 15
0033b8  e3411f00  loadli.w r3,  12(r30)
0033bc  00200300  mfence { sm, gm }
0033c0  1b11f1ff  ori r2, r2, 4095
0033c4  80210104  csr_set csr3, r2
0033c8  00d00100  sync_group
0033cc  4bc0111a  ble.s r3, r1, 13328
0033d0  e3012f00  loadli.w r3,  16(r30)
0033d4  e3422f00  loadli.w r5,  20(r30)
0033d8  abf4ffff  lui r9, 1048575
0033dc  abd80200  lui r17, 45
0033e0  1f0b8fd7  addli r22, r30, -5184
0033e4  1f140000  addli r8, zero, 1
0033e8  1f050002  addli r10, zero, 256
0033ec  9f050001  addli r11, zero, 128
0033f0  1f068000  addli r12, zero, 64
0033f4  9f064000  addli r13, zero, 32
0033f8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0033fc  9b94f4ff  ori r9, r9, 4095
003400  9f8808f0  addli r17, r17, -2048
003404  0b925110  add.s r4, r3, r5
003408  1bb12100  slli r2, r3, 2
00340c  b3810108  fix2float.rn r3, r3
003410  1f73f2ff  addli r6, r4, -1
003414  1bb22200  slli r4, r5, 2
003418  67043fd6  storeli.w r3, -5312(r30)
00341c  9f010fd7  addli r3, r30, -5248
003420  8b125330  div.s r5, r6, r5
003424  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003428  5b070000  j 56
00342c  00a00000  mfence { lm }
003430  6b530f00  load.d r[7:8], 0(r30)
003434  2b0800f0  lui r16, 983040
003438  1f0b8fd7  addli r22, r30, -5184
00343c  005a0102  load_param_i r20, 2
003440  17180101  or r16, r2, r16
003444  8b101a10  add.s r1, r20, r1
003448  0b292311  add.ul r[19:20], r[7:8], r[19:20]
00344c  7f386901  s_lm2gm r16, r22, 0(r[19:20])
003450  00a00200  mfence { lm, gm }
003454  e3411f00  loadli.w r3,  12(r30)
003458  3fa03000  blt.s r1, r3, 8
00345c  5b700600  j 13184
003460  e3011f00  loadli.w r3,  8(r30)
003464  0b983010  add.s r16, r1, r3
003468  9f210000  addli r3, zero, 2
00346c  0b18f820  mul.s r16, r16, r15
003470  33190828  sext_int2long r[19:20], r16
003474  2b0800f0  lui r16, 983040
003478  17393902  sll.d r[19:20], r[19:20], r3
00347c  9f017fd6  addli r3, r30, -5320
003480  17180101  or r16, r2, r16
003484  6bd30100  load.d r[7:8], 0(r3)
003488  0b2a2311  add.ul r[21:22], r[7:8], r[19:20]
00348c  7f286a01  l_gm2lm r16, r22, 0(r[21:22])
003490  00a00200  mfence { lm, gm }
003494  bf978200  blt.s r5, r8, 484
003498  9f0a0000  addli r21, zero, 0
00349c  1f0a0000  addli r20, zero, 0
0034a0  1f0b0000  addli r22, zero, 0
0034a4  db0c0000  j 100
0034a8  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
0034ac  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0034b0  1f1b0b00  addli r22, r22, 1
0034b4  6a7105c0  vsrl.p vr2, r10, vr0
0034b8  ea7115c0  vsrl.p vr3, r10, vr1
0034bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0034c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0034c4  6af105c0  vsrl.p vr2, r11, vr0
0034c8  eaf115c0  vsrl.p vr3, r11, vr1
0034cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0034d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0034d4  6a7106c0  vsrl.p vr2, r12, vr0
0034d8  ea7116c0  vsrl.p vr3, r12, vr1
0034dc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0034e0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0034e4  6af106c0  vsrl.p vr2, r13, vr0
0034e8  eaf116c0  vsrl.p vr3, r13, vr1
0034ec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0034f0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0034f4  fa110040  vextracti.f r3, 0(vr0)
0034f8  7a930040  vextracti.f r6, 0(vr1)
0034fc  8bea3a10  add.f.rn r21, r21, r3
003500  0b6a6a10  add.f.rn r20, r20, r6
003504  b7755b00  beq r22, r5, 380
003508  1f080b00  addli r16, r22, 0
00350c  3730a700  beq r14, r10, 12
003510  17289b00  xor r16, r22, r9
003514  0b980211  add.s r16, r5, r16
003518  9f010fd7  addli r3, r30, -5248
00351c  8b1be820  mul.s r23, r16, r14
003520  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
003524  8b9b7719  sub.s r23, r15, r23
003528  8b9beb40  min.s r23, r23, r14
00352c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003530  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003534  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003538  bfcd8bfe  blt.s r23, r8, -144
00353c  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003540  1f0c0000  addli r24, zero, 0
003544  8b1c0221  mul.s r25, r4, r16
003548  1f0d8fd7  addli r26, r30, -5184
00354c  9f8d0800  addli r27, r17, 0
003550  92304002  vadd.s.mz vr1{mr1}, zero, vr4
003554  12314002  vadd.s.mz vr2{mr1}, zero, vr4
003558  92314002  vadd.s.mz vr3{mr1}, zero, vr4
00355c  0b989d11  add.s r16, r27, r25
003560  0b1e9d11  add.s r28, r26, r25
003564  1f038800  addli r6, r16, 64
003568  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
00356c  9f038801  addli r7, r16, 192
003570  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
003574  9f018e01  addli r3, r28, 192
003578  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
00357c  1f030801  addli r6, r16, 128
003580  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
003584  9f030e01  addli r7, r28, 128
003588  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
00358c  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
003590  c2950302  vload_mask16.mz vr11{mr1}, 0(r7)
003594  1f038e00  addli r6, r28, 64
003598  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
00359c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0035a0  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0035a4  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0035a8  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0035ac  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0035b0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0035b4  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
0035b8  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0035bc  1f038c00  addli r6, r24, 64
0035c0  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0035c4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0035c8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0035cc  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0035d0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0035d4  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
0035d8  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
0035dc  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0035e0  4bab6bfe  ble.s r23, r6, -312
0035e4  1f030802  addli r6, r16, 256
0035e8  9f038802  addli r7, r16, 320
0035ec  9f010e02  addli r3, r28, 256
0035f0  1f0c0c01  addli r24, r24, 128
0035f4  9f8d0d04  addli r27, r27, 512
0035f8  1f0d0d04  addli r26, r26, 512
0035fc  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
003600  1f030803  addli r6, r16, 384
003604  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
003608  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
00360c  9f038e02  addli r7, r28, 320
003610  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
003614  1f038803  addli r6, r16, 448
003618  1f088e03  addli r16, r28, 448
00361c  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
003620  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
003624  1f030e03  addli r6, r28, 384
003628  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
00362c  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
003630  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
003634  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
003638  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
00363c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003640  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003644  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003648  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
00364c  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
003650  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
003654  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003658  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
00365c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003660  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003664  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
003668  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00366c  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
003670  bf3b7cff  blt.s r24, r23, -276
003674  dbc6ffff  j -460
003678  1f0a0000  addli r20, zero, 0
00367c  9f0a0000  addli r21, zero, 0
003680  00a00000  mfence { lm }
003684  bfa687fe  blt.s r15, r8, -600
003688  e3018fd6  loadli.w r3,  -5312(r30)
00368c  1f0b0000  addli r22, zero, 0
003690  8f8a3a18  div.f.rn r21, r21, r3
003694  0f083a18  div.f.rn r16, r20, r3
003698  e3013f00  loadli.w r3,  24(r30)
00369c  0bea5a21  mul.f.rn r20, r21, r21
0036a0  0b684819  sub.f.rn r16, r16, r20
0036a4  0bea0a58  neg.f r20, r21
0036a8  9f0a8fd7  addli r21, r30, -5184
0036ac  0b683810  add.f.rn r16, r16, r3
0036b0  ab01803f  lui r3, 260096
0036b4  0f080808  sqrt.f.rn r16, r16
0036b8  0f880119  div.f.rn r16, r3, r16
0036bc  9f8b8a00  addli r23, r21, 64
0036c0  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
0036c4  1f0c4b00  addli r24, r22, 32
0036c8  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
0036cc  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
0036d0  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
0036d4  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
0036d8  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
0036dc  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
0036e0  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
0036e4  4ba587ff  ble.s r15, r24, -696
0036e8  9f8b0a01  addli r23, r21, 128
0036ec  1f8c8a01  addli r24, r21, 192
0036f0  1f0b8b00  addli r22, r22, 64
0036f4  9f8a0a02  addli r21, r21, 256
0036f8  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
0036fc  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
003700  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003704  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003708  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
00370c  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003710  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
003714  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
003718  bf1efbfe  blt.s r22, r15, -92
00371c  5ba2ffff  j -752
003720  00310002  core_id r2
003724  ab630000  lui r7, 6
003728  9f100000  addli r1, zero, 1
00372c  1f038fd7  addli r6, r30, -5184
003730  1f048000  addli r8, zero, 64
003734  1f050010  addli r10, zero, 2048
003738  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
00373c  9b315100  slli r3, r2, 5
003740  00510102  load_param_i r2, 2
003744  9f830308  addli r7, r7, 1024
003748  9b345100  slli r9, r2, 5
00374c  b3850128  zext_int2long r[12:13], r3
003750  ab0600f0  lui r13, 983040
003754  97b51502  sll.d r[12:13], r[12:13], r1
003758  9716d400  or r13, r8, r13
00375c  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
003760  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
003764  9bb52100  slli r11, r3, 2
003768  8b913410  add.s r3, r9, r3
00376c  00a00200  mfence { lm, gm }
003770  c2000302  vload.mz vr1{mr1}, 0(r6)
003774  1386a104  setlt.u r12, r3, r10
003778  8b957510  add.s r11, r11, r7
00377c  9f868500  addli r13, r11, 64
003780  66c11180  vmerge_l.hf vr2, vr3, vr1
003784  e6c011a0  vmerge_h.hf vr1, vr3, vr1
003788  4e902502  vstores_mask16.mz vr2{mr1}, 0(r11)
00378c  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
003790  bb7e06fe  bneq r12, zero, -68
003794  abf00000  lui r1, 15
003798  80310002  core_id r3
00379c  9f020006  addli r5, zero, 768
0037a0  00a00300  mfence { lm, sm, gm }
0037a4  9b90f0ff  ori r1, r1, 4095
0037a8  1b821100  andi r4, r3, 1
0037ac  9f010006  addli r3, zero, 768
0037b0  80a10004  csr_set csr3, r1
0037b4  00d00100  sync_group
0037b8  670b4fd4  storeli.w r4, -5456(r30)
0037bc  37200200  beq r4, zero, 8
0037c0  9f02000a  addli r5, zero, 1280
0037c4  63421f00  loadli.w r4,  12(r30)
0037c8  9f100000  addli r1, zero, 1
0037cc  3f401218  blt.s r4, r1, 12304
0037d0  63026fd5  loadli.w r4,  -5456(r30)
0037d4  9b461100  srli r13, r2, 1
0037d8  00310002  core_id r2
0037dc  1f078fd7  addli r14, r30, -5184
0037e0  1f040000  addli r8, zero, 0
0037e4  1f797000  addli r18, zero, 63
0037e8  1f0a0005  addli r20, zero, 640
0037ec  2b0e803f  lui r28, 260096
0037f0  1f052000  addli r10, zero, 16
0037f4  2b03ffff  lui r6, 1048560
0037f8  ab04807f  lui r9, 522240
0037fc  ab0dc07f  lui r27, 523264
003800  9f380000  addli r17, zero, 3
003804  9f5a1000  addli r21, zero, 13
003808  9f058fd4  addli r11, r30, -5568
00380c  1b461100  srli r12, r2, 1
003810  1bb12200  slli r2, r5, 2
003814  8b113220  mul.s r3, r4, r3
003818  1f824200  addli r4, r5, 32
00381c  0b11e110  add.s r2, r2, r14
003820  e7433fd4  storeli.w r3, -5572(r30)
003824  9bb11200  slli r3, r5, 1
003828  67034fd4  storeli.w r4, -5584(r30)
00382c  2be27f00  lui r4, 2046
003830  1f0181ff  addli r2, r2, -64
003834  67083fd6  storeli.w r3, -5248(r30)
003838  8b91e110  add.s r3, r3, r14
00383c  e7422fd4  storeli.w r2, -5588(r30)
003840  1f8181ff  addli r2, r3, -64
003844  abf100fc  lui r3, 1032207
003848  e7022fd4  storeli.w r2, -5592(r30)
00384c  2bf1ffff  lui r2, 1048575
003850  1b9801c0  ori r16, r3, 3072
003854  9f211000  addli r3, zero, 10
003858  00a00000  mfence { lm }
00385c  46903502  vstore_mask16.mz vr3{mr1}, 0(r11)
003860  e703dfd4  storeli.w r13, -5576(r30)
003864  6743cfd4  storeli.w r12, -5580(r30)
003868  1b1101f8  ori r2, r2, 3968
00386c  67422fd4  storeli.w r2, -5596(r30)
003870  2bf10000  lui r2, 15
003874  1b11f1ff  ori r2, r2, 4095
003878  67042fd6  storeli.w r2, -5312(r30)
00387c  2b710000  lui r2, 7
003880  9b19f1ff  ori r19, r2, 4095
003884  2b01ff03  lui r2, 16368
003888  9b17f13f  ori r15, r2, 1023
00388c  2be10700  lui r2, 126
003890  5b040000  j 32
003894  00a00300  mfence { lm, sm, gm }
003898  e3058fd6  loadli.w r11,  -5312(r30)
00389c  80a10504  csr_set csr3, r11
0038a0  00d00100  sync_group
0038a4  0b14d410  add.s r8, r8, r13
0038a8  3f209401  blt.s r8, r25, 8
0038ac  5b80faff  j -11264
0038b0  8b15c410  add.s r11, r8, r12
0038b4  cb8fbcfe  ble.s r25, r11, -32
0038b8  63061f00  loadli.w r12,  8(r30)
0038bc  8b95c510  add.s r11, r11, r12
0038c0  0b06d430  div.u r12, r8, r13
0038c4  e3467fd4  loadli.w r13,  -5572(r30)
0038c8  9bb5b500  slli r11, r11, 11
0038cc  9795d500  or r11, r11, r13
0038d0  9f067fd6  addli r13, r30, -5320
0038d4  b39b0528  sext_int2long r[24:25], r11
0038d8  ab0500f0  lui r11, 983040
0038dc  1b366600  slli r12, r12, 6
0038e0  17bc1b02  sll.d r[25:26], r[24:25], r1
0038e4  6bdb0600  load.d r[23:24], 0(r13)
0038e8  9f068fd5  addli r13, r30, -5440
0038ec  1b060604  andi r12, r12, 64
0038f0  73b08601  store.d r[25:26], 0(r13)
0038f4  e3060fd7  loadli.w r13,  -5248(r30)
0038f8  8b2b8b11  add.ul r[24:25], r[23:24], r[25:26]
0038fc  9795b600  or r11, r13, r11
003900  ffa5eb00  l_gm2lm r11, r14, 0(r[24:25])
003904  80350002  core_id r11
003908  9715b600  or r11, r12, r11
00390c  e70bbfd4  storeli.w r11, -5448(r30)
003910  00a00200  mfence { lm, gm }
003914  e3055fd4  loadli.w r11,  -5592(r30)
003918  63465fd4  loadli.w r12,  -5588(r30)
00391c  e3066fd4  loadli.w r13,  -5584(r30)
003920  c2800502  vload.mz vr1{mr1}, 0(r11)
003924  9f86c6ff  addli r13, r13, -32
003928  9f0c86ff  addli r25, r12, -64
00392c  9f8585ff  addli r11, r11, -64
003930  130cd904  setlt.u r24, r18, r13
003934  66c111a0  vmerge_h.hf vr2, vr3, vr1
003938  e6c01180  vmerge_l.hf vr1, vr3, vr1
00393c  46102602  vstore_mask16.mz vr2{mr1}, 0(r12)
003940  1f0606ff  addli r12, r12, -128
003944  46901c02  vstore_mask16.mz vr1{mr1}, 0(r25)
003948  3b6f0cfe  bneq r24, zero, -40
00394c  00a00000  mfence { lm }
003950  e3056fd5  loadli.w r11,  -5456(r30)
003954  3bb60500  bneq r11, zero, 396
003958  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00395c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
003960  12323002  vadd.s.mz vr4{mr1}, zero, vr3
003964  63464fd4  loadli.w r12,  -5596(r30)
003968  9f050000  addli r11, zero, 0
00396c  0b9c7510  add.s r24, r11, r7
003970  8b16b710  add.s r13, r14, r11
003974  1f060601  addli r12, r12, 128
003978  9f850504  addli r11, r11, 512
00397c  1f0b0c01  addli r22, r24, 128
003980  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
003984  9f0b8c00  addli r23, r24, 64
003988  42940602  vload_mask16.mz vr8{mr1}, 0(r13)
00398c  9f8c8601  addli r25, r13, 192
003990  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
003994  1f0b8c01  addli r22, r24, 192
003998  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
00399c  9f8b8600  addli r23, r13, 64
0039a0  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0039a4  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
0039a8  1f8b0601  addli r22, r13, 128
0039ac  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
0039b0  c2140b02  vload_mask16.mz vr9{mr1}, 0(r22)
0039b4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0039b8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0039bc  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0039c0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0039c4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0039c8  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
0039cc  46108b02  vstore_mask16.mz vr8{mr1}, 0(r22)
0039d0  1f0b0c02  addli r22, r24, 256
0039d4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0039d8  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0039dc  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0039e0  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
0039e4  9f8b0603  addli r23, r13, 384
0039e8  4a100b02  vloads_mask16.mz vr0{mr1}, 0(r22)
0039ec  1f0b8c02  addli r22, r24, 320
0039f0  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
0039f4  9f8c0602  addli r25, r13, 256
0039f8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0039fc  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003a00  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003a04  4a130b02  vloads_mask16.mz vr6{mr1}, 0(r22)
003a08  1f0b0c03  addli r22, r24, 384
003a0c  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003a10  1f0c8c03  addli r24, r24, 448
003a14  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003a18  4a140b02  vloads_mask16.mz vr8{mr1}, 0(r22)
003a1c  1f8b8602  addli r22, r13, 320
003a20  4a150c02  vloads_mask16.mz vr10{mr1}, 0(r24)
003a24  9f868603  addli r13, r13, 448
003a28  c2140b02  vload_mask16.mz vr9{mr1}, 0(r22)
003a2c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003a30  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
003a34  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003a38  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
003a3c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003a40  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003a44  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003a48  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003a4c  46106b02  vstore_mask16.mz vr6{mr1}, 0(r22)
003a50  130b4605  setlt.u r22, r12, r20
003a54  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003a58  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003a5c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003a60  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003a64  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003a68  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
003a6c  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
003a70  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003a74  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003a78  bb5b0bfe  bneq r22, zero, -268
003a7c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003a80  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003a84  9f050002  addli r11, zero, 256
003a88  6af105c0  vsrl.p vr2, r11, vr0
003a8c  eaf115c0  vsrl.p vr3, r11, vr1
003a90  9f050001  addli r11, zero, 128
003a94  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a98  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a9c  6af105c0  vsrl.p vr2, r11, vr0
003aa0  eaf115c0  vsrl.p vr3, r11, vr1
003aa4  9f058000  addli r11, zero, 64
003aa8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003aac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003ab0  6af105c0  vsrl.p vr2, r11, vr0
003ab4  eaf115c0  vsrl.p vr3, r11, vr1
003ab8  9f054000  addli r11, zero, 32
003abc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003ac0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003ac4  6af105c0  vsrl.p vr2, r11, vr0
003ac8  eaf115c0  vsrl.p vr3, r11, vr1
003acc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003ad0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003ad4  fa150040  vextracti.f r11, 0(vr0)
003ad8  7a960040  vextracti.f r12, 0(vr1)
003adc  5b670000  j 824
003ae0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003ae4  abf5ffff  lui r11, 1048575
003ae8  1f060000  addli r12, zero, 0
003aec  1f090003  addli r18, zero, 384
003af0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003af4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003af8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003afc  9b9605f8  ori r13, r11, 3968
003b00  0b9cc310  add.s r24, r7, r12
003b04  8b15c710  add.s r11, r14, r12
003b08  9f860601  addli r13, r13, 128
003b0c  1f060604  addli r12, r12, 512
003b10  9f0b0c31  addli r23, r24, 6272
003b14  9f0c0c30  addli r25, r24, 6144
003b18  1f0b8c31  addli r22, r24, 6336
003b1c  1f8d0518  addli r26, r11, 3072
003b20  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
003b24  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
003b28  9f0c8c30  addli r25, r24, 6208
003b2c  ca140b02  vloads_mask16.mz vr9{mr1}, 0(r22)
003b30  9f8b0519  addli r23, r11, 3200
003b34  1f8b8518  addli r22, r11, 3136
003b38  42130d02  vload_mask16.mz vr6{mr1}, 0(r26)
003b3c  4a940c02  vloads_mask16.mz vr8{mr1}, 0(r25)
003b40  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
003b44  9f8c8519  addli r25, r11, 3264
003b48  c2150b02  vload_mask16.mz vr11{mr1}, 0(r22)
003b4c  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
003b50  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003b54  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
003b58  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
003b5c  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
003b60  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003b64  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
003b68  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
003b6c  9f0b0c32  addli r23, r24, 6400
003b70  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
003b74  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003b78  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003b7c  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
003b80  9f8c051a  addli r25, r11, 3328
003b84  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003b88  46105b02  vstore_mask16.mz vr5{mr1}, 0(r22)
003b8c  1f8b051b  addli r22, r11, 3456
003b90  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
003b94  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
003b98  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
003b9c  9f0b8c32  addli r23, r24, 6464
003ba0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003ba4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003ba8  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
003bac  9f0b0c33  addli r23, r24, 6528
003bb0  1f0c8c33  addli r24, r24, 6592
003bb4  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
003bb8  9f8b851a  addli r23, r11, 3392
003bbc  4a150c02  vloads_mask16.mz vr10{mr1}, 0(r24)
003bc0  9f85851b  addli r11, r11, 3520
003bc4  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
003bc8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003bcc  c2130b02  vload_mask16.mz vr7{mr1}, 0(r22)
003bd0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003bd4  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
003bd8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003bdc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003be0  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003be4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003be8  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
003bec  938b2605  setlt.u r23, r13, r18
003bf0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003bf4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003bf8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003bfc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003c00  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003c04  46105b02  vstore_mask16.mz vr5{mr1}, 0(r22)
003c08  46907502  vstore_mask16.mz vr7{mr1}, 0(r11)
003c0c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003c10  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003c14  bbbb0bfe  bneq r23, zero, -276
003c18  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003c1c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003c20  9f050002  addli r11, zero, 256
003c24  1f0d0000  addli r26, zero, 0
003c28  eaf115c0  vsrl.p vr3, r11, vr1
003c2c  6af105c0  vsrl.p vr2, r11, vr0
003c30  9f050001  addli r11, zero, 128
003c34  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003c38  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003c3c  eaf115c0  vsrl.p vr3, r11, vr1
003c40  6af105c0  vsrl.p vr2, r11, vr0
003c44  9f058000  addli r11, zero, 64
003c48  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003c4c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003c50  eaf115c0  vsrl.p vr3, r11, vr1
003c54  6af105c0  vsrl.p vr2, r11, vr0
003c58  9f054000  addli r11, zero, 32
003c5c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003c60  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003c64  eaf115c0  vsrl.p vr3, r11, vr1
003c68  6af105c0  vsrl.p vr2, r11, vr0
003c6c  abf5ffff  lui r11, 1048575
003c70  9b9505f8  ori r11, r11, 3968
003c74  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003c78  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003c7c  fa960040  vextracti.f r13, 0(vr1)
003c80  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003c84  7a190040  vextracti.f r18, 0(vr0)
003c88  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003c8c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003c90  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003c94  8b9ca311  add.s r25, r7, r26
003c98  0b1ca711  add.s r24, r14, r26
003c9c  9f850501  addli r11, r11, 128
003ca0  1f0d0d04  addli r26, r26, 512
003ca4  1f8b0c18  addli r22, r25, 3072
003ca8  9f8b0c19  addli r23, r25, 3200
003cac  1f068c01  addli r12, r24, 192
003cb0  42140c02  vload_mask16.mz vr8{mr1}, 0(r24)
003cb4  4a100b02  vloads_mask16.mz vr0{mr1}, 0(r22)
003cb8  1f8b8c18  addli r22, r25, 3136
003cbc  ca920b02  vloads_mask16.mz vr5{mr1}, 0(r23)
003cc0  9f8b8c19  addli r23, r25, 3264
003cc4  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
003cc8  4a130b02  vloads_mask16.mz vr6{mr1}, 0(r22)
003ccc  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
003cd0  1f0b0c01  addli r22, r24, 128
003cd4  9f0b8c00  addli r23, r24, 64
003cd8  c2140b02  vload_mask16.mz vr9{mr1}, 0(r22)
003cdc  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
003ce0  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
003ce4  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
003ce8  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
003cec  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
003cf0  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003cf4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003cf8  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003cfc  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003d00  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
003d04  46108b02  vstore_mask16.mz vr8{mr1}, 0(r22)
003d08  1f0b0c02  addli r22, r24, 256
003d0c  46106602  vstore_mask16.mz vr6{mr1}, 0(r12)
003d10  1f860c1a  addli r12, r25, 3328
003d14  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
003d18  9f0b0c03  addli r23, r24, 384
003d1c  4a100602  vloads_mask16.mz vr0{mr1}, 0(r12)
003d20  1f868c1a  addli r12, r25, 3392
003d24  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003d28  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003d2c  c2130b02  vload_mask16.mz vr7{mr1}, 0(r22)
003d30  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003d34  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003d38  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
003d3c  1f860c1b  addli r12, r25, 3456
003d40  9f8c8c1b  addli r25, r25, 3520
003d44  4a140602  vloads_mask16.mz vr8{mr1}, 0(r12)
003d48  1f068c02  addli r12, r24, 320
003d4c  4a950c02  vloads_mask16.mz vr10{mr1}, 0(r25)
003d50  1f0c8c03  addli r24, r24, 448
003d54  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
003d58  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003d5c  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
003d60  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003d64  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
003d68  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003d6c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003d70  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
003d74  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003d78  46106602  vstore_mask16.mz vr6{mr1}, 0(r12)
003d7c  13864505  setlt.u r12, r11, r20
003d80  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003d84  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003d88  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003d8c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003d90  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003d94  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
003d98  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
003d9c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003da0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003da4  bb4b06fe  bneq r12, zero, -272
003da8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003dac  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003db0  9f050002  addli r11, zero, 256
003db4  6af105c0  vsrl.p vr2, r11, vr0
003db8  eaf115c0  vsrl.p vr3, r11, vr1
003dbc  9f050001  addli r11, zero, 128
003dc0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003dc4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003dc8  6af105c0  vsrl.p vr2, r11, vr0
003dcc  eaf115c0  vsrl.p vr3, r11, vr1
003dd0  9f058000  addli r11, zero, 64
003dd4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003dd8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003ddc  6af105c0  vsrl.p vr2, r11, vr0
003de0  eaf115c0  vsrl.p vr3, r11, vr1
003de4  9f054000  addli r11, zero, 32
003de8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003dec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003df0  6af105c0  vsrl.p vr2, r11, vr0
003df4  eaf115c0  vsrl.p vr3, r11, vr1
003df8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003dfc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003e00  fa150040  vextracti.f r11, 0(vr0)
003e04  7a960040  vextracti.f r12, 0(vr1)
003e08  8b65b910  add.f.rn r11, r18, r11
003e0c  0be6c610  add.f.rn r12, r13, r12
003e10  1f797000  addli r18, zero, 63
003e14  2b8b0000  lui r22, 8
003e18  ab8b0000  lui r23, 8
003e1c  630d7fd5  loadli.w r26,  -5448(r30)
003e20  1f0b0b08  addli r22, r22, 1024
003e24  9f8b0b0c  addli r23, r23, 1536
003e28  9b362d00  slli r13, r26, 2
003e2c  1f0c0b00  addli r24, r22, 0
003e30  9f8c0b00  addli r25, r23, 0
003e34  0b9b8611  add.s r22, r13, r24
003e38  8b9b9611  add.s r23, r13, r25
003e3c  73e0cb00  stores.w r12, 0(r23)
003e40  7360bb00  stores.w r11, 0(r22)
003e44  1b964600  ori r12, r13, 4
003e48  9f0b0000  addli r23, zero, 0
003e4c  00a00300  mfence { lm, sm, gm }
003e50  e3058fd6  loadli.w r11,  -5312(r30)
003e54  8b168611  add.s r13, r12, r24
003e58  0b169611  add.s r12, r12, r25
003e5c  80a10504  csr_set csr3, r11
003e60  9b05ed07  andi r11, r26, 126
003e64  00d00100  sync_group
003e68  efc60600  loads.w r13, 0(r13)
003e6c  6f460600  loads.w r12, 0(r12)
003e70  9bb52500  slli r11, r11, 2
003e74  0b9b8511  add.s r22, r11, r24
003e78  8b959511  add.s r11, r11, r25
003e7c  6f4b0b00  loads.w r22, 0(r22)
003e80  efc50500  loads.w r11, 0(r11)
003e84  8be66611  add.f.rn r13, r13, r22
003e88  2b0b003a  lui r22, 237568
003e8c  8b65b610  add.f.rn r11, r12, r11
003e90  0be66621  mul.f.rn r12, r13, r22
003e94  8be56521  mul.f.rn r11, r11, r22
003e98  8b66c620  mul.f.rn r13, r12, r12
003e9c  0b660658  neg.f r12, r12
003ea0  8be5d518  sub.f.rn r11, r11, r13
003ea4  e3063f00  loadli.w r13,  24(r30)
003ea8  8be5d510  add.f.rn r11, r11, r13
003eac  9f068fd7  addli r13, r30, -5184
003eb0  8f850508  sqrt.f.rn r11, r11
003eb4  8f05be18  div.f.rn r11, r28, r11
003eb8  1f8b8600  addli r22, r13, 64
003ebc  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
003ec0  1f8c4b00  addli r24, r23, 32
003ec4  c2100b02  vload_mask16.mz vr1{mr1}, 0(r22)
003ec8  138c8207  setle.u r24, r5, r24
003ecc  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
003ed0  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
003ed4  0a900502  vmul.f.mz.rn vr0{mr1}, r11, vr0
003ed8  8a901502  vmul.f.mz.rn vr1{mr1}, r11, vr1
003edc  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
003ee0  46101b02  vstore_mask16.mz vr1{mr1}, 0(r22)
003ee4  bb700c00  bneq r24, zero, 60
003ee8  1f8b0601  addli r22, r13, 128
003eec  1f8c8601  addli r24, r13, 192
003ef0  9f8b8b00  addli r23, r23, 64
003ef4  9f860602  addli r13, r13, 256
003ef8  42100b02  vload_mask16.mz vr0{mr1}, 0(r22)
003efc  c2100c02  vload_mask16.mz vr1{mr1}, 0(r24)
003f00  938c5b04  setlt.u r25, r23, r5
003f04  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
003f08  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
003f0c  0a900502  vmul.f.mz.rn vr0{mr1}, r11, vr0
003f10  8a901502  vmul.f.mz.rn vr1{mr1}, r11, vr1
003f14  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
003f18  46101c02  vstore_mask16.mz vr1{mr1}, 0(r24)
003f1c  3bfe0cfe  bneq r25, zero, -100
003f20  9f058fd7  addli r11, r30, -5184
003f24  1f068fd7  addli r12, r30, -5184
003f28  9f060000  addli r13, zero, 0
003f2c  00a00000  mfence { lm }
003f30  c2110602  vload_mask16.mz vr3{mr1}, 0(r12)
003f34  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003f38  1f0b8600  addli r22, r12, 64
003f3c  9f864600  addli r13, r13, 32
003f40  1f060601  addli r12, r12, 128
003f44  6a201522  vor.u.mz vr0{mr1}, r10, vr1
003f48  eaa21a22  vor.u.mz vr5{mr1}, r21, vr1
003f4c  42110b02  vload_mask16.mz vr2{mr1}, 0(r22)
003f50  138b5604  setlt.u r22, r13, r5
003f54  6e3230c2  vsrl.s.mz vr4{mr1}, vr0, vr3
003f58  6e3020c2  vsrl.s.mz vr0{mr1}, vr0, vr2
003f5c  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
003f60  6ab00002  vand.s.mz vr0{mr1}, r1, vr0
003f64  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
003f68  e69101c0  vabs.f vr3, vr3
003f6c  16300102  vadd.s.mz vr0{mr1}, vr2, vr0
003f70  661101c0  vabs.f vr2, vr2
003f74  12b24902  vadd.s.mz vr4{mr1}, r19, vr4
003f78  72a13442  vlt.u.mz mr2{mr1}, r9, vr3
003f7c  12b00902  vadd.s.mz vr0{mr1}, r19, vr0
003f80  6a324302  vand.s.mz vr4{mr1}, r6, vr4
003f84  6a300302  vand.s.mz vr0{mr1}, r6, vr0
003f88  6aa21d34  vor.u.mh vr4{mr2}, r27, vr1
003f8c  72a12442  vlt.u.mz mr2{mr1}, r9, vr2
003f90  6aa11822  vor.u.mz vr2{mr1}, r17, vr1
003f94  6aa01d34  vor.u.mh vr0{mr2}, r27, vr1
003f98  eaa01122  vor.u.mz vr1{mr1}, r3, vr1
003f9c  eeb142c2  vsrl.s.mz vr3{mr1}, vr5, vr4
003fa0  6e3241c2  vsrl.s.mz vr4{mr1}, vr2, vr4
003fa4  eeb202c2  vsrl.s.mz vr5{mr1}, vr5, vr0
003fa8  6e3001c2  vsrl.s.mz vr0{mr1}, vr2, vr0
003fac  6a313102  vand.s.mz vr2{mr1}, r2, vr3
003fb0  6a324202  vand.s.mz vr4{mr1}, r4, vr4
003fb4  ea315102  vand.s.mz vr3{mr1}, r2, vr5
003fb8  6a300202  vand.s.mz vr0{mr1}, r4, vr0
003fbc  6a312e22  vor.s.mz vr2{mr1}, r28, vr2
003fc0  6a324e22  vor.s.mz vr4{mr1}, r28, vr4
003fc4  6a300e22  vor.s.mz vr0{mr1}, r28, vr0
003fc8  ea313e22  vor.s.mz vr3{mr1}, r28, vr3
003fcc  06110120  vfloat2fp16_l.rz vr2, vr2
003fd0  06500020  vfloat2fp16_h.rz vr0, vr0
003fd4  06d10120  vfloat2fp16_h.rz vr2, vr3
003fd8  06100220  vfloat2fp16_l.rz vr0, vr4
003fdc  eeb020a2  vsll.s.mz vr1{mr1}, vr1, vr2
003fe0  6ab00702  vand.s.mz vr0{mr1}, r15, vr0
003fe4  ea301802  vand.s.mz vr1{mr1}, r16, vr1
003fe8  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
003fec  46800502  vstore.mz vr0{mr1}, 0(r11)
003ff0  9f858500  addli r11, r11, 64
003ff4  bb7c0bfe  bneq r22, zero, -196
003ff8  1f0c8fd5  addli r24, r30, -5440
003ffc  6b560f00  load.d r[13:14], 0(r30)
004000  ab0500f0  lui r11, 983040
004004  6b5b0c00  load.d r[23:24], 0(r24)
004008  0b266611  add.ul r[13:14], r[13:14], r[23:24]
00400c  630b0fd7  loadli.w r22,  -5248(r30)
004010  00a00000  mfence { lm }
004014  9715bb00  or r11, r22, r11
004018  ff35e600  s_lm2gm r11, r14, 0(r[13:14])
00401c  9f058fd4  addli r11, r30, -5568
004020  00a00200  mfence { lm, gm }
004024  e34c1f00  loadli.w r25,  12(r30)
004028  c2910502  vload_mask16.mz vr3{mr1}, 0(r11)
00402c  e3067fd4  loadli.w r13,  -5576(r30)
004030  63466fd4  loadli.w r12,  -5580(r30)
004034  5b0effff  j -1936
004038  00360002  core_id r12
00403c  63012f00  loadli.w r2,  16(r30)
004040  9b305600  slli r1, r12, 5
004044  cb211100  ble.s r2, r1, 104
004048  80530102  load_param_i r7, 2
00404c  2bc40000  lui r8, 12
004050  1f110000  addli r2, zero, 1
004054  9f018fd7  addli r3, r30, -5184
004058  1f038000  addli r6, zero, 64
00405c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004060  9bb35300  slli r7, r7, 5
004064  1f0404f0  addli r8, r8, -2048
004068  b3840028  zext_int2long r[10:11], r1
00406c  ab0500f0  lui r11, 983040
004070  97b42402  sll.d r[10:11], r[10:11], r2
004074  9715b300  or r11, r6, r11
004078  8b249210  add.ul r[10:11], r[5:6], r[10:11]
00407c  ffa53400  l_gm2lm r11, r3, 0(r[10:11])
004080  9bb42000  slli r9, r1, 2
004084  8b901310  add.s r1, r7, r1
004088  00a00200  mfence { lm, gm }
00408c  c2800102  vload.mz vr1{mr1}, 0(r3)
004090  8b948410  add.s r9, r9, r8
004094  1f858400  addli r10, r9, 64
004098  66411080  vmerge_l.hf vr2, vr0, vr1
00409c  e64010a0  vmerge_h.hf vr1, vr0, vr1
0040a0  4e902402  vstores_mask16.mz vr2{mr1}, 0(r9)
0040a4  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
0040a8  3f8ff0fe  blt.s r1, r15, -64
0040ac  abf00000  lui r1, 15
0040b0  63411f00  loadli.w r2,  12(r30)
0040b4  00a00300  mfence { lm, sm, gm }
0040b8  9b90f0ff  ori r1, r1, 4095
0040bc  80a10004  csr_set csr3, r1
0040c0  00d00100  sync_group
0040c4  4b6cc112  ble.s r2, r12, 10008
0040c8  e3002f00  loadli.w r1,  16(r30)
0040cc  63412f00  loadli.w r2,  20(r30)
0040d0  9f0d8fd7  addli r27, r30, -5184
0040d4  1f150000  addli r10, zero, 1
0040d8  9f787000  addli r17, zero, 63
0040dc  1f080002  addli r16, zero, 256
0040e0  ab09803f  lui r19, 260096
0040e4  ab05ffff  lui r11, 1048560
0040e8  2b0cc07f  lui r24, 523264
0040ec  2bed7f00  lui r26, 2046
0040f0  2bee0700  lui r28, 126
0040f4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0040f8  8b912010  add.s r3, r1, r2
0040fc  33820008  fix2float.rn r4, r1
004100  9bb41000  slli r9, r1, 1
004104  9bb22000  slli r5, r1, 2
004108  9f804000  addli r1, r1, 32
00410c  e7031fd4  storeli.w r1, -5576(r30)
004110  8b90b211  add.s r1, r5, r27
004114  9ff1f1ff  addli r3, r3, -1
004118  e7434fd4  storeli.w r4, -5572(r30)
00411c  0b922130  div.s r4, r3, r2
004120  9f8080ff  addli r1, r1, -64
004124  8b91b411  add.s r3, r9, r27
004128  67431fd4  storeli.w r1, -5580(r30)
00412c  9f8081ff  addli r1, r3, -64
004130  67031fd4  storeli.w r1, -5584(r30)
004134  9b302100  slli r1, r2, 2
004138  67041fd6  storeli.w r1, -5312(r30)
00413c  abf0ffff  lui r1, 1048575
004140  00a00000  mfence { lm }
004144  67049fd4  storeli.w r9, -5568(r30)
004148  9b90f0ff  ori r1, r1, 4095
00414c  670c1fd4  storeli.w r1, -5440(r30)
004150  ab700000  lui r1, 7
004154  9b9af0ff  ori r21, r1, 4095
004158  ab00ff03  lui r1, 16368
00415c  1b93f03f  ori r6, r1, 1023
004160  abf000fc  lui r1, 1032207
004164  1b9400c0  ori r8, r1, 3072
004168  9f000fd7  addli r1, r30, -5248
00416c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
004170  db070000  j 60
004174  9f016fd5  addli r3, r30, -5456
004178  eb500f00  load.d r[2:3], 0(r30)
00417c  80520102  load_param_i r5, 2
004180  6bd60100  load.d r[13:14], 0(r3)
004184  ab0100f0  lui r3, 983040
004188  00a00000  mfence { lm }
00418c  97913400  or r3, r9, r3
004190  8ba0c010  add.ul r[2:3], r[2:3], r[13:14]
004194  63067fd5  loadli.w r12,  -5448(r30)
004198  ffb1b001  s_lm2gm r3, r27, 0(r[2:3])
00419c  0b96c210  add.s r12, r5, r12
0041a0  00a00200  mfence { lm, gm }
0041a4  3f207600  blt.s r12, r7, 8
0041a8  dbc60400  j 9780
0041ac  e3001f00  loadli.w r1,  8(r30)
0041b0  9f027fd6  addli r5, r30, -5320
0041b4  8b101610  add.s r1, r12, r1
0041b8  8b90f020  mul.s r1, r1, r15
0041bc  b3900028  sext_int2long r[2:3], r1
0041c0  17bba002  sll.d r[23:24], r[2:3], r10
0041c4  6bd10200  load.d r[3:4], 0(r5)
0041c8  ab0000f0  lui r1, 983040
0041cc  9f026fd5  addli r5, r30, -5456
0041d0  97901400  or r1, r9, r1
0041d4  73b06201  store.d r[23:24], 0(r5)
0041d8  0b216111  add.ul r[3:4], r[3:4], r[23:24]
0041dc  1f0b4000  addli r22, zero, 32
0041e0  ff20b101  l_gm2lm r1, r27, 0(r[3:4])
0041e4  00a00200  mfence { lm, gm }
0041e8  bff06701  blt.s r15, r22, 60
0041ec  e3006fd4  loadli.w r1,  -5584(r30)
0041f0  63416fd4  loadli.w r2,  -5580(r30)
0041f4  e3017fd4  loadli.w r3,  -5576(r30)
0041f8  c2800002  vload.mz vr1{mr1}, 0(r1)
0041fc  9f81c1ff  addli r3, r3, -32
004200  9f0381ff  addli r7, r2, -64
004204  9f8080ff  addli r1, r1, -64
004208  93823804  setlt.u r5, r17, r3
00420c  664110a0  vmerge_h.hf vr2, vr0, vr1
004210  e6401080  vmerge_l.hf vr1, vr0, vr1
004214  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
004218  1f0101ff  addli r2, r2, -128
00421c  46901302  vstore_mask16.mz vr1{mr1}, 0(r7)
004220  3bef02fe  bneq r5, zero, -40
004224  00a00000  mfence { lm }
004228  e70bcfd4  storeli.w r12, -5448(r30)
00422c  3f08a200  blt.s r4, r10, 512
004230  9f010000  addli r3, zero, 0
004234  1f010000  addli r2, zero, 0
004238  9f020000  addli r5, zero, 0
00423c  db0e0000  j 116
004240  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004244  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004248  9f000001  addli r1, zero, 128
00424c  9f920200  addli r5, r5, 1
004250  6a7108c0  vsrl.p vr2, r16, vr0
004254  ea7118c0  vsrl.p vr3, r16, vr1
004258  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00425c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004260  6af100c0  vsrl.p vr2, r1, vr0
004264  eaf110c0  vsrl.p vr3, r1, vr1
004268  9f008000  addli r1, zero, 64
00426c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004270  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004274  6af100c0  vsrl.p vr2, r1, vr0
004278  eaf110c0  vsrl.p vr3, r1, vr1
00427c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004280  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004284  6a710bc0  vsrl.p vr2, r22, vr0
004288  ea711bc0  vsrl.p vr3, r22, vr1
00428c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004290  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004294  fa100040  vextracti.f r1, 0(vr0)
004298  fa930040  vextracti.f r7, 0(vr1)
00429c  8be11110  add.f.rn r3, r3, r1
0042a0  9f000fd7  addli r1, r30, -5248
0042a4  0b617110  add.f.rn r2, r2, r7
0042a8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0042ac  37a64200  beq r5, r4, 392
0042b0  9f830200  addli r7, r5, 0
0042b4  37400701  beq r14, r16, 16
0042b8  e3008fd5  loadli.w r1,  -5440(r30)
0042bc  97a01200  xor r1, r5, r1
0042c0  8b131210  add.s r7, r4, r1
0042c4  8b90e320  mul.s r1, r7, r14
0042c8  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0042cc  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0042d0  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0042d4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0042d8  8b901718  sub.s r1, r15, r1
0042dc  8b90e040  min.s r1, r1, r14
0042e0  bf8da0fe  blt.s r1, r10, -160
0042e4  e3048fd6  loadli.w r9,  -5312(r30)
0042e8  abcc0000  lui r25, 12
0042ec  1f060000  addli r12, zero, 0
0042f0  1f0a8fd7  addli r20, r30, -5184
0042f4  9f8c0cf0  addli r25, r25, -2048
0042f8  8b967420  mul.s r13, r9, r7
0042fc  9f030fd7  addli r7, r30, -5248
004300  42920302  vload_mask16.mz vr4{mr1}, 0(r7)
004304  92304002  vadd.s.mz vr1{mr1}, zero, vr4
004308  12314002  vadd.s.mz vr2{mr1}, zero, vr4
00430c  92314002  vadd.s.mz vr3{mr1}, zero, vr4
004310  8b93dc10  add.s r7, r25, r13
004314  8b1dda10  add.s r27, r20, r13
004318  9f848300  addli r9, r7, 64
00431c  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
004320  9f888301  addli r17, r7, 192
004324  c2940d02  vload_mask16.mz vr9{mr1}, 0(r27)
004328  1f898d01  addli r18, r27, 192
00432c  4a930402  vloads_mask16.mz vr6{mr1}, 0(r9)
004330  9f840301  addli r9, r7, 128
004334  4a940802  vloads_mask16.mz vr8{mr1}, 0(r17)
004338  9f880d01  addli r17, r27, 128
00433c  42100902  vload_mask16.mz vr0{mr1}, 0(r18)
004340  ca930402  vloads_mask16.mz vr7{mr1}, 0(r9)
004344  c2950802  vload_mask16.mz vr11{mr1}, 0(r17)
004348  9f848d00  addli r9, r27, 64
00434c  42950402  vload_mask16.mz vr10{mr1}, 0(r9)
004350  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004354  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
004358  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00435c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
004360  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004364  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004368  46905d02  vstore_mask16.mz vr5{mr1}, 0(r27)
00436c  46906402  vstore_mask16.mz vr6{mr1}, 0(r9)
004370  9f048600  addli r9, r12, 64
004374  46100902  vstore_mask16.mz vr0{mr1}, 0(r18)
004378  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00437c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004380  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
004384  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004388  46907802  vstore_mask16.mz vr7{mr1}, 0(r17)
00438c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
004390  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
004394  cbba90fe  ble.s r1, r9, -340
004398  9f880302  addli r17, r7, 256
00439c  1f898302  addli r18, r7, 320
0043a0  9f840d02  addli r9, r27, 256
0043a4  1f060601  addli r12, r12, 128
0043a8  9f8c0c04  addli r25, r25, 512
0043ac  1f0a0a04  addli r20, r20, 512
0043b0  4a900802  vloads_mask16.mz vr0{mr1}, 0(r17)
0043b4  9f880303  addli r17, r7, 384
0043b8  9f838303  addli r7, r7, 448
0043bc  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
0043c0  42930402  vload_mask16.mz vr6{mr1}, 0(r9)
0043c4  1f898d03  addli r18, r27, 448
0043c8  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
0043cc  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
0043d0  9f830d03  addli r7, r27, 384
0043d4  9f888d02  addli r17, r27, 320
0043d8  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
0043dc  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
0043e0  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0043e4  42130902  vload_mask16.mz vr6{mr1}, 0(r18)
0043e8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0043ec  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0043f0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0043f4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0043f8  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
0043fc  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
004400  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
004404  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004408  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00440c  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
004410  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004414  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004418  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
00441c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004420  46106902  vstore_mask16.mz vr6{mr1}, 0(r18)
004424  bf3b16fe  blt.s r12, r1, -276
004428  5bc3ffff  j -488
00442c  1f010000  addli r2, zero, 0
004430  9f010000  addli r3, zero, 0
004434  00a00000  mfence { lm }
004438  3fd2a700  blt.s r15, r10, 148
00443c  e3407fd4  loadli.w r1,  -5572(r30)
004440  9f020000  addli r5, zero, 0
004444  8f811118  div.f.rn r3, r3, r1
004448  8f001118  div.f.rn r1, r2, r1
00444c  0be13120  mul.f.rn r2, r3, r3
004450  8be02018  sub.f.rn r1, r1, r2
004454  63013f00  loadli.w r2,  24(r30)
004458  8be02010  add.f.rn r1, r1, r2
00445c  0be10158  neg.f r2, r3
004460  9f018fd7  addli r3, r30, -5184
004464  8f800008  sqrt.f.rn r1, r1
004468  8f801918  div.f.rn r1, r19, r1
00446c  9f838100  addli r7, r3, 64
004470  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
004474  1f864200  addli r12, r5, 32
004478  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
00447c  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
004480  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
004484  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004488  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
00448c  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
004490  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
004494  cbe0c700  ble.s r15, r12, 56
004498  9f830101  addli r7, r3, 128
00449c  1f868101  addli r12, r3, 192
0044a0  9f828200  addli r5, r5, 64
0044a4  9f810102  addli r3, r3, 256
0044a8  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
0044ac  42110602  vload_mask16.mz vr2{mr1}, 0(r12)
0044b0  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0044b4  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
0044b8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0044bc  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
0044c0  46901302  vstore_mask16.mz vr1{mr1}, 0(r7)
0044c4  46102602  vstore_mask16.mz vr2{mr1}, 0(r12)
0044c8  bf9ef2fe  blt.s r5, r15, -92
0044cc  00a00000  mfence { lm }
0044d0  e3431f00  loadli.w r7,  12(r30)
0044d4  9f0d8fd7  addli r27, r30, -5184
0044d8  9f787000  addli r17, zero, 63
0044dc  1f062000  addli r12, zero, 16
0044e0  1f390000  addli r18, zero, 3
0044e4  1f5a1000  addli r20, zero, 13
0044e8  9f2c1000  addli r25, zero, 10
0044ec  ab06807f  lui r13, 522240
0044f0  e3048fd4  loadli.w r9,  -5568(r30)
0044f4  3f82a7fe  blt.s r15, r10, -896
0044f8  9f008fd7  addli r1, r30, -5184
0044fc  1f018fd7  addli r2, r30, -5184
004500  9f010000  addli r3, zero, 0
004504  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
004508  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00450c  9f028100  addli r5, r2, 64
004510  9f814100  addli r3, r3, 32
004514  1f010101  addli r2, r2, 128
004518  6a221622  vor.u.mz vr4{mr1}, r12, vr1
00451c  6a231a22  vor.u.mz vr6{mr1}, r20, vr1
004520  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
004524  ee3232c2  vsrl.s.mz vr5{mr1}, vr4, vr3
004528  6e3222c2  vsrl.s.mz vr4{mr1}, vr4, vr2
00452c  ea325502  vand.s.mz vr5{mr1}, r10, vr5
004530  6a324502  vand.s.mz vr4{mr1}, r10, vr4
004534  96b25102  vadd.s.mz vr5{mr1}, vr3, vr5
004538  e69101c0  vabs.f vr3, vr3
00453c  16324102  vadd.s.mz vr4{mr1}, vr2, vr4
004540  661101c0  vabs.f vr2, vr2
004544  92b25a02  vadd.s.mz vr5{mr1}, r21, vr5
004548  72a13642  vlt.u.mz mr2{mr1}, r13, vr3
00454c  12b24a02  vadd.s.mz vr4{mr1}, r21, vr4
004550  eab25502  vand.s.mz vr5{mr1}, r11, vr5
004554  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
004558  ea221c34  vor.u.mh vr5{mr2}, r24, vr1
00455c  72a12642  vlt.u.mz mr2{mr1}, r13, vr2
004560  6a211922  vor.u.mz vr2{mr1}, r18, vr1
004564  6a221c34  vor.u.mh vr4{mr2}, r24, vr1
004568  eaa01c22  vor.u.mz vr1{mr1}, r25, vr1
00456c  ee3153c2  vsrl.s.mz vr3{mr1}, vr6, vr5
004570  ee3251c2  vsrl.s.mz vr5{mr1}, vr2, vr5
004574  6e3141c2  vsrl.s.mz vr2{mr1}, vr2, vr4
004578  6e3343c2  vsrl.s.mz vr6{mr1}, vr6, vr4
00457c  ea313e02  vand.s.mz vr3{mr1}, r28, vr3
004580  ea325d02  vand.s.mz vr5{mr1}, r26, vr5
004584  6a326e02  vand.s.mz vr4{mr1}, r28, vr6
004588  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
00458c  eab13922  vor.s.mz vr3{mr1}, r19, vr3
004590  eab25922  vor.s.mz vr5{mr1}, r19, vr5
004594  6ab12922  vor.s.mz vr2{mr1}, r19, vr2
004598  6ab24922  vor.s.mz vr4{mr1}, r19, vr4
00459c  86910120  vfloat2fp16_l.rz vr3, vr3
0045a0  06510120  vfloat2fp16_h.rz vr2, vr2
0045a4  86510220  vfloat2fp16_h.rz vr3, vr4
0045a8  06910220  vfloat2fp16_l.rz vr2, vr5
0045ac  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
0045b0  6a312302  vand.s.mz vr2{mr1}, r6, vr2
0045b4  ea301402  vand.s.mz vr1{mr1}, r8, vr1
0045b8  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
0045bc  46801002  vstore.mz vr1{mr1}, 0(r1)
0045c0  9f808000  addli r1, r1, 64
0045c4  3f8df1fe  blt.s r3, r15, -192
0045c8  db75ffff  j -1108
0045cc  2b330100  lui r6, 19
0045d0  80390002  core_id r19
0045d4  80500102  load_param_i r1, 2
0045d8  1f110000  addli r2, zero, 1
0045dc  9f038fd7  addli r7, r30, -5184
0045e0  1f048000  addli r8, zero, 64
0045e4  1f050010  addli r10, zero, 2048
0045e8  9bb15900  slli r3, r19, 5
0045ec  9bb45000  slli r9, r1, 5
0045f0  1f0303f8  addli r6, r6, -1024
0045f4  b3850128  zext_int2long r[12:13], r3
0045f8  ab0600f0  lui r13, 983040
0045fc  97b52502  sll.d r[12:13], r[12:13], r2
004600  9716d400  or r13, r8, r13
004604  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
004608  ffa67500  l_gm2lm r13, r7, 0(r[12:13])
00460c  9bb52100  slli r11, r3, 2
004610  8b913410  add.s r3, r9, r3
004614  00a00200  mfence { lm, gm }
004618  42800302  vload.mz vr0{mr1}, 0(r7)
00461c  1386a104  setlt.u r12, r3, r10
004620  8b956510  add.s r11, r11, r6
004624  9f868500  addli r13, r11, 64
004628  86300000  vfp162float_l.rn vr1, vr0
00462c  06700000  vfp162float_h.rn vr0, vr0
004630  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
004634  4e900602  vstores_mask16.mz vr0{mr1}, 0(r13)
004638  bb7e06fe  bneq r12, zero, -68
00463c  2bf10000  lui r2, 15
004640  00a00300  mfence { lm, sm, gm }
004644  1f020006  addli r4, zero, 768
004648  9b11f1ff  ori r3, r2, 4095
00464c  1b811900  andi r2, r19, 1
004650  80a10104  csr_set csr3, r3
004654  9f010006  addli r3, zero, 768
004658  00d00100  sync_group
00465c  67082fd6  storeli.w r2, -5248(r30)
004660  37200100  beq r2, zero, 8
004664  9f01000a  addli r3, zero, 1280
004668  e3421f00  loadli.w r5,  12(r30)
00466c  1f110000  addli r2, zero, 1
004670  bfb52210  blt.s r5, r2, 8556
004674  1bc41000  srli r8, r1, 1
004678  9bb02100  slli r1, r3, 2
00467c  9f058fd7  addli r11, r30, -5184
004680  63010fd7  loadli.w r2,  -5248(r30)
004684  1bb51100  slli r10, r3, 1
004688  ab5b0100  lui r23, 21
00468c  2b5e0100  lui r28, 21
004690  9f020000  addli r5, zero, 0
004694  9bc41900  srli r9, r19, 1
004698  9f777000  addli r15, zero, 63
00469c  1f090005  addli r18, zero, 640
0046a0  1f0a0001  addli r20, zero, 128
0046a4  9f0a8000  addli r21, zero, 64
0046a8  1f0b4000  addli r22, zero, 32
0046ac  9f0d0003  addli r27, zero, 384
0046b0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0046b4  8b90b010  add.s r1, r1, r11
0046b8  9f8b0bf8  addli r23, r23, -1024
0046bc  1f0e0efc  addli r28, r28, -512
0046c0  0b114120  mul.s r2, r2, r4
0046c4  0b12b510  add.s r4, r10, r11
0046c8  9f8080ff  addli r1, r1, -64
0046cc  67042fd6  storeli.w r2, -5312(r30)
0046d0  1f814100  addli r2, r3, 32
0046d4  e70b1fd4  storeli.w r1, -5448(r30)
0046d8  9f0082ff  addli r1, r4, -64
0046dc  670c2fd4  storeli.w r2, -5440(r30)
0046e0  1f018fd4  addli r2, r30, -5568
0046e4  670b1fd4  storeli.w r1, -5456(r30)
0046e8  abf0ffff  lui r1, 1048575
0046ec  00a00000  mfence { lm }
0046f0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0046f4  9b9000f8  ori r1, r1, 3968
0046f8  e7431fd4  storeli.w r1, -5572(r30)
0046fc  abf00000  lui r1, 15
004700  1b9cf0ff  ori r24, r1, 4095
004704  db030000  j 28
004708  00a00300  mfence { lm, sm, gm }
00470c  80210c04  csr_set csr3, r24
004710  00d00100  sync_group
004714  8b928210  add.s r5, r5, r8
004718  3fa09201  blt.s r5, r25, 8
00471c  5bb2f8ff  j -14960
004720  8b909210  add.s r1, r5, r9
004724  cb9f1cfe  ble.s r25, r1, -28
004728  63011f00  loadli.w r2,  8(r30)
00472c  0b828230  div.u r4, r5, r8
004730  8b902010  add.s r1, r1, r2
004734  63018fd6  loadli.w r2,  -5312(r30)
004738  9bb0b000  slli r1, r1, 11
00473c  1b326200  slli r4, r4, 6
004740  97902000  or r1, r1, r2
004744  1f110000  addli r2, zero, 1
004748  1b020204  andi r4, r4, 64
00474c  33960028  sext_int2long r[13:14], r1
004750  ab0000f0  lui r1, 983040
004754  171d3201  or r26, r4, r19
004758  17382602  sll.d r[17:18], r[13:14], r2
00475c  1f017fd6  addli r2, r30, -5320
004760  97101500  or r1, r10, r1
004764  6b560100  load.d r[13:14], 0(r2)
004768  0b260611  add.ul r[13:14], r[13:14], r[17:18]
00476c  ff20b600  l_gm2lm r1, r11, 0(r[13:14])
004770  00a00200  mfence { lm, gm }
004774  e3006fd5  loadli.w r1,  -5456(r30)
004778  63027fd5  loadli.w r4,  -5448(r30)
00477c  e3038fd5  loadli.w r7,  -5440(r30)
004780  c2800002  vload.mz vr1{mr1}, 0(r1)
004784  9f83c3ff  addli r7, r7, -32
004788  9f0682ff  addli r13, r4, -64
00478c  9f8080ff  addli r1, r1, -64
004790  13867704  setlt.u r12, r15, r7
004794  06f10000  vfp162float_h.rn vr2, vr1
004798  86b00000  vfp162float_l.rn vr1, vr1
00479c  46102202  vstore_mask16.mz vr2{mr1}, 0(r4)
0047a0  1f0202ff  addli r4, r4, -128
0047a4  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
0047a8  3b6f06fe  bneq r12, zero, -40
0047ac  00a00000  mfence { lm }
0047b0  e3000fd7  loadli.w r1,  -5248(r30)
0047b4  3ba60000  bneq r1, zero, 392
0047b8  1f018fd4  addli r2, r30, -5568
0047bc  63427fd4  loadli.w r4,  -5572(r30)
0047c0  9f000000  addli r1, zero, 0
0047c4  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
0047c8  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0047cc  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0047d0  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0047d4  0b966010  add.s r12, r1, r6
0047d8  8b931510  add.s r7, r11, r1
0047dc  1f020201  addli r4, r4, 128
0047e0  9f800004  addli r1, r1, 512
0047e4  1f010601  addli r2, r12, 128
0047e8  4a100602  vloads_mask16.mz vr0{mr1}, 0(r12)
0047ec  9f068600  addli r13, r12, 64
0047f0  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
0047f4  1f878301  addli r14, r7, 192
0047f8  ca120102  vloads_mask16.mz vr5{mr1}, 0(r2)
0047fc  1f018601  addli r2, r12, 192
004800  4a930602  vloads_mask16.mz vr6{mr1}, 0(r13)
004804  9f868300  addli r13, r7, 64
004808  c2150702  vload_mask16.mz vr11{mr1}, 0(r14)
00480c  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
004810  1f810301  addli r2, r7, 128
004814  42950602  vload_mask16.mz vr10{mr1}, 0(r13)
004818  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
00481c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004820  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004824  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004828  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00482c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004830  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
004834  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
004838  1f010602  addli r2, r12, 256
00483c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004840  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004844  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004848  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
00484c  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
004850  1f018602  addli r2, r12, 320
004854  46106702  vstore_mask16.mz vr6{mr1}, 0(r14)
004858  1f870302  addli r14, r7, 256
00485c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004860  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004864  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004868  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
00486c  1f010603  addli r2, r12, 384
004870  c2130702  vload_mask16.mz vr7{mr1}, 0(r14)
004874  1f068603  addli r12, r12, 448
004878  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00487c  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
004880  1f818302  addli r2, r7, 320
004884  4a150602  vloads_mask16.mz vr10{mr1}, 0(r12)
004888  1f860303  addli r12, r7, 384
00488c  9f838303  addli r7, r7, 448
004890  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
004894  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004898  c2130602  vload_mask16.mz vr7{mr1}, 0(r12)
00489c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0048a0  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0048a4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0048a8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0048ac  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
0048b0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0048b4  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
0048b8  13012205  setlt.u r2, r4, r18
0048bc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0048c0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0048c4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0048c8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0048cc  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0048d0  46105602  vstore_mask16.mz vr5{mr1}, 0(r12)
0048d4  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
0048d8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0048dc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0048e0  bb5b01fe  bneq r2, zero, -268
0048e4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0048e8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0048ec  9f000002  addli r1, zero, 256
0048f0  6af100c0  vsrl.p vr2, r1, vr0
0048f4  eaf110c0  vsrl.p vr3, r1, vr1
0048f8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0048fc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004900  6a710ac0  vsrl.p vr2, r20, vr0
004904  ea711ac0  vsrl.p vr3, r20, vr1
004908  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00490c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004910  6af10ac0  vsrl.p vr2, r21, vr0
004914  eaf11ac0  vsrl.p vr3, r21, vr1
004918  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00491c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004920  6a710bc0  vsrl.p vr2, r22, vr0
004924  ea711bc0  vsrl.p vr3, r22, vr1
004928  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00492c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004930  7a120040  vextracti.f r4, 0(vr0)
004934  fa900040  vextracti.f r1, 0(vr1)
004938  5b640000  j 800
00493c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004940  2bf1ffff  lui r2, 1048575
004944  9f000000  addli r1, zero, 0
004948  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00494c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004950  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004954  1b1201f8  ori r4, r2, 3968
004958  0b161310  add.s r12, r6, r1
00495c  8b931510  add.s r7, r11, r1
004960  1f020201  addli r4, r4, 128
004964  9f800004  addli r1, r1, 512
004968  1f070631  addli r14, r12, 6272
00496c  9f060630  addli r13, r12, 6144
004970  1f018631  addli r2, r12, 6336
004974  9f8c0318  addli r25, r7, 3072
004978  ca130702  vloads_mask16.mz vr7{mr1}, 0(r14)
00497c  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
004980  9f068630  addli r13, r12, 6208
004984  ca140102  vloads_mask16.mz vr9{mr1}, 0(r2)
004988  1f818318  addli r2, r7, 3136
00498c  1f878319  addli r14, r7, 3264
004990  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
004994  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
004998  9f860319  addli r13, r7, 3200
00499c  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
0049a0  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
0049a4  42950602  vload_mask16.mz vr10{mr1}, 0(r13)
0049a8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0049ac  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0049b0  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0049b4  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0049b8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0049bc  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0049c0  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
0049c4  9f060632  addli r13, r12, 6400
0049c8  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0049cc  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
0049d0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0049d4  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
0049d8  1f87031a  addli r14, r7, 3328
0049dc  c2130702  vload_mask16.mz vr7{mr1}, 0(r14)
0049e0  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
0049e4  1f81031b  addli r2, r7, 3456
0049e8  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0049ec  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0049f0  4a900602  vloads_mask16.mz vr0{mr1}, 0(r13)
0049f4  9f068632  addli r13, r12, 6464
0049f8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0049fc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004a00  4a930602  vloads_mask16.mz vr6{mr1}, 0(r13)
004a04  9f060633  addli r13, r12, 6528
004a08  1f068633  addli r12, r12, 6592
004a0c  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
004a10  9f86831a  addli r13, r7, 3392
004a14  4a150602  vloads_mask16.mz vr10{mr1}, 0(r12)
004a18  9f83831b  addli r7, r7, 3520
004a1c  1306b205  setlt.u r12, r4, r27
004a20  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
004a24  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004a28  c2130102  vload_mask16.mz vr7{mr1}, 0(r2)
004a2c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004a30  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
004a34  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004a38  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004a3c  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
004a40  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004a44  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
004a48  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004a4c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004a50  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004a54  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004a58  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004a5c  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
004a60  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
004a64  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004a68  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004a6c  bb3b06fe  bneq r12, zero, -276
004a70  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004a74  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004a78  9f000002  addli r1, zero, 256
004a7c  2bf1ffff  lui r2, 1048575
004a80  9f030000  addli r7, zero, 0
004a84  9b1c01f8  ori r25, r2, 3968
004a88  eaf110c0  vsrl.p vr3, r1, vr1
004a8c  6af100c0  vsrl.p vr2, r1, vr0
004a90  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004a94  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004a98  ea711ac0  vsrl.p vr3, r20, vr1
004a9c  6a710ac0  vsrl.p vr2, r20, vr0
004aa0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004aa4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004aa8  eaf11ac0  vsrl.p vr3, r21, vr1
004aac  6af10ac0  vsrl.p vr2, r21, vr0
004ab0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004ab4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004ab8  ea711bc0  vsrl.p vr3, r22, vr1
004abc  6a710bc0  vsrl.p vr2, r22, vr0
004ac0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004ac4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004ac8  fa900040  vextracti.f r1, 0(vr1)
004acc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004ad0  7a120040  vextracti.f r4, 0(vr0)
004ad4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004ad8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004adc  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004ae0  8b167310  add.s r13, r6, r7
004ae4  0b967510  add.s r12, r11, r7
004ae8  9f8c0c01  addli r25, r25, 128
004aec  9f830304  addli r7, r7, 512
004af0  1f810618  addli r2, r13, 3072
004af4  1f870619  addli r14, r13, 3200
004af8  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
004afc  9f098601  addli r19, r12, 192
004b00  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
004b04  ca120702  vloads_mask16.mz vr5{mr1}, 0(r14)
004b08  1f818618  addli r2, r13, 3136
004b0c  1f878619  addli r14, r13, 3264
004b10  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
004b14  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
004b18  1f010601  addli r2, r12, 128
004b1c  ca130702  vloads_mask16.mz vr7{mr1}, 0(r14)
004b20  1f078600  addli r14, r12, 64
004b24  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
004b28  42150702  vload_mask16.mz vr10{mr1}, 0(r14)
004b2c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004b30  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004b34  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004b38  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004b3c  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
004b40  1f81061a  addli r2, r13, 3328
004b44  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004b48  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004b4c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004b50  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004b54  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
004b58  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
004b5c  1f81861a  addli r2, r13, 3392
004b60  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
004b64  9f090602  addli r19, r12, 256
004b68  46105702  vstore_mask16.mz vr5{mr1}, 0(r14)
004b6c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004b70  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004b74  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
004b78  1f81061b  addli r2, r13, 3456
004b7c  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
004b80  9f86861b  addli r13, r13, 3520
004b84  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004b88  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004b8c  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
004b90  1f018602  addli r2, r12, 320
004b94  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
004b98  9f060603  addli r13, r12, 384
004b9c  1f068603  addli r12, r12, 448
004ba0  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
004ba4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004ba8  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
004bac  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004bb0  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
004bb4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004bb8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004bbc  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
004bc0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004bc4  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
004bc8  13812c05  setlt.u r2, r25, r18
004bcc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004bd0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004bd4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004bd8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004bdc  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004be0  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
004be4  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
004be8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004bec  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004bf0  bb4b01fe  bneq r2, zero, -272
004bf4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004bf8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004bfc  1f010002  addli r2, zero, 256
004c00  e34c1f00  loadli.w r25,  12(r30)
004c04  80390002  core_id r19
004c08  6a7101c0  vsrl.p vr2, r2, vr0
004c0c  ea7111c0  vsrl.p vr3, r2, vr1
004c10  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004c14  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004c18  6a710ac0  vsrl.p vr2, r20, vr0
004c1c  ea711ac0  vsrl.p vr3, r20, vr1
004c20  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004c24  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004c28  6af10ac0  vsrl.p vr2, r21, vr0
004c2c  eaf11ac0  vsrl.p vr3, r21, vr1
004c30  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004c34  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004c38  6a710bc0  vsrl.p vr2, r22, vr0
004c3c  ea711bc0  vsrl.p vr3, r22, vr1
004c40  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004c44  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004c48  7a110040  vextracti.f r2, 0(vr0)
004c4c  fa930040  vextracti.f r7, 0(vr1)
004c50  0b622210  add.f.rn r4, r4, r2
004c54  8be07010  add.f.rn r1, r1, r7
004c58  1b312d00  slli r2, r26, 2
004c5c  0b16c111  add.s r12, r2, r28
004c60  8b137111  add.s r7, r2, r23
004c64  1b114100  ori r2, r2, 4
004c68  73601600  stores.w r1, 0(r12)
004c6c  9b00ed07  andi r1, r26, 126
004c70  73e04300  stores.w r4, 0(r7)
004c74  0b127111  add.s r4, r2, r23
004c78  0b11c111  add.s r2, r2, r28
004c7c  1f060000  addli r12, zero, 0
004c80  00a00300  mfence { lm, sm, gm }
004c84  80210c04  csr_set csr3, r24
004c88  00d00100  sync_group
004c8c  9bb02000  slli r1, r1, 2
004c90  6f420200  loads.w r4, 0(r4)
004c94  6f410100  loads.w r2, 0(r2)
004c98  8b937011  add.s r7, r1, r23
004c9c  8b90c011  add.s r1, r1, r28
004ca0  efc30300  loads.w r7, 0(r7)
004ca4  efc00000  loads.w r1, 0(r1)
004ca8  0b627210  add.f.rn r4, r4, r7
004cac  ab03003a  lui r7, 237568
004cb0  8b601110  add.f.rn r1, r2, r1
004cb4  0b617220  mul.f.rn r2, r4, r7
004cb8  8be07020  mul.f.rn r1, r1, r7
004cbc  9f038fd7  addli r7, r30, -5184
004cc0  0b622120  mul.f.rn r4, r2, r2
004cc4  8be04018  sub.f.rn r1, r1, r4
004cc8  63023f00  loadli.w r4,  24(r30)
004ccc  8be04010  add.f.rn r1, r1, r4
004cd0  2b02803f  lui r4, 260096
004cd4  8f800008  sqrt.f.rn r1, r1
004cd8  8f001218  div.f.rn r1, r4, r1
004cdc  0b620158  neg.f r4, r2
004ce0  1f818300  addli r2, r7, 64
004ce4  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
004ce8  9f064600  addli r13, r12, 32
004cec  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004cf0  9386d106  setle.u r13, r3, r13
004cf4  12100202  vadd.f.mz.rn vr0{mr1}, r4, vr0
004cf8  92101202  vadd.f.mz.rn vr1{mr1}, r4, vr1
004cfc  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
004d00  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004d04  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
004d08  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
004d0c  bbf00600  bneq r13, zero, 60
004d10  1f810301  addli r2, r7, 128
004d14  9f868301  addli r13, r7, 192
004d18  1f068600  addli r12, r12, 64
004d1c  9f830302  addli r7, r7, 256
004d20  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
004d24  c2900602  vload_mask16.mz vr1{mr1}, 0(r13)
004d28  13073604  setlt.u r14, r12, r3
004d2c  12100202  vadd.f.mz.rn vr0{mr1}, r4, vr0
004d30  92101202  vadd.f.mz.rn vr1{mr1}, r4, vr1
004d34  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
004d38  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004d3c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004d40  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
004d44  3b7e07fe  bneq r14, zero, -100
004d48  9f008fd7  addli r1, r30, -5184
004d4c  1f028fd7  addli r4, r30, -5184
004d50  9f030000  addli r7, zero, 0
004d54  00a00000  mfence { lm }
004d58  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
004d5c  1f018200  addli r2, r4, 64
004d60  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
004d64  9f834300  addli r7, r7, 32
004d68  1f020201  addli r4, r4, 128
004d6c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004d70  13813304  setlt.u r2, r7, r3
004d74  06110000  vfloat2fp16_l.rn vr2, vr0
004d78  06d10000  vfloat2fp16_h.rn vr2, vr1
004d7c  46802002  vstore.mz vr2{mr1}, 0(r1)
004d80  9f808000  addli r1, r1, 64
004d84  3b5f01fe  bneq r2, zero, -44
004d88  6b560f00  load.d r[13:14], 0(r30)
004d8c  ab0000f0  lui r1, 983040
004d90  00a00000  mfence { lm }
004d94  97101500  or r1, r10, r1
004d98  0b260611  add.ul r[13:14], r[13:14], r[17:18]
004d9c  ff30b600  s_lm2gm r1, r11, 0(r[13:14])
004da0  00a00200  mfence { lm, gm }
004da4  5b2effff  j -1680
004da8  80300002  core_id r1
004dac  e3012f00  loadli.w r3,  16(r30)
004db0  1bb15000  slli r2, r1, 5
004db4  cb912100  ble.s r3, r2, 100
004db8  00540102  load_param_i r8, 2
004dbc  ab840100  lui r9, 24
004dc0  9f110000  addli r3, zero, 1
004dc4  1f038fd7  addli r6, r30, -5184
004dc8  9f038000  addli r7, zero, 64
004dcc  1b345400  slli r8, r8, 5
004dd0  9f840400  addli r9, r9, 0
004dd4  33050128  zext_int2long r[11:12], r2
004dd8  2b0600f0  lui r12, 983040
004ddc  17353502  sll.d r[11:12], r[11:12], r3
004de0  1796c300  or r12, r7, r12
004de4  0b25a210  add.ul r[11:12], r[5:6], r[11:12]
004de8  7f266500  l_gm2lm r12, r6, 0(r[11:12])
004dec  1b352100  slli r10, r2, 2
004df0  0b112410  add.s r2, r8, r2
004df4  00a00200  mfence { lm, gm }
004df8  42000302  vload.mz vr0{mr1}, 0(r6)
004dfc  0b159510  add.s r10, r10, r9
004e00  9f058500  addli r11, r10, 64
004e04  86300000  vfp162float_l.rn vr1, vr0
004e08  06700000  vfp162float_h.rn vr0, vr0
004e0c  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
004e10  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
004e14  3f0ff1fe  blt.s r2, r15, -64
004e18  2bf10000  lui r2, 15
004e1c  e3411f00  loadli.w r3,  12(r30)
004e20  00a00300  mfence { lm, sm, gm }
004e24  1b11f1ff  ori r2, r2, 4095
004e28  80210104  csr_set csr3, r2
004e2c  00d00100  sync_group
004e30  cbb6110c  ble.s r3, r1, 6572
004e34  63032f00  loadli.w r6,  16(r30)
004e38  e3432f00  loadli.w r7,  20(r30)
004e3c  9f0b8fd7  addli r23, r30, -5184
004e40  1f150000  addli r10, zero, 1
004e44  9f054000  addli r11, zero, 32
004e48  1f767000  addli r12, zero, 63
004e4c  1f080002  addli r16, zero, 256
004e50  9f080001  addli r17, zero, 128
004e54  1f098000  addli r18, zero, 64
004e58  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004e5c  0b127310  add.s r4, r6, r7
004e60  33010308  fix2float.rn r2, r6
004e64  1b342300  slli r8, r6, 2
004e68  9b321300  slli r5, r6, 1
004e6c  9bb42300  slli r9, r7, 2
004e70  1f72f2ff  addli r4, r4, -1
004e74  670c2fd4  storeli.w r2, -5440(r30)
004e78  1f014300  addli r2, r6, 32
004e7c  0b137411  add.s r6, r8, r23
004e80  0b947211  add.s r8, r5, r23
004e84  e70b2fd4  storeli.w r2, -5448(r30)
004e88  1f0183ff  addli r2, r6, -64
004e8c  2bf3ffff  lui r6, 1048575
004e90  0b127230  div.s r4, r4, r7
004e94  670b2fd4  storeli.w r2, -5456(r30)
004e98  1f0184ff  addli r2, r8, -64
004e9c  9b16f3ff  ori r13, r6, 4095
004ea0  2b830100  lui r6, 24
004ea4  67042fd4  storeli.w r2, -5568(r30)
004ea8  1f010fd7  addli r2, r30, -5248
004eac  1f030300  addli r6, r6, 0
004eb0  00a00000  mfence { lm }
004eb4  67045fd6  storeli.w r5, -5312(r30)
004eb8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004ebc  db060000  j 52
004ec0  eb530f00  load.d r[8:9], 0(r30)
004ec4  ab0900f0  lui r19, 983040
004ec8  9f0b8fd7  addli r23, r30, -5184
004ecc  005a0102  load_param_i r20, 2
004ed0  00a00000  mfence { lm }
004ed4  97993201  or r19, r5, r19
004ed8  8b101a10  add.s r1, r20, r1
004edc  8ba35311  add.ul r[8:9], r[8:9], r[22:23]
004ee0  ffb97301  s_lm2gm r19, r23, 0(r[8:9])
004ee4  00a00200  mfence { lm, gm }
004ee8  3fa02000  blt.s r1, r2, 8
004eec  5b1e0300  j 6384
004ef0  63011f00  loadli.w r2,  8(r30)
004ef4  8b932010  add.s r7, r1, r2
004ef8  8b93f320  mul.s r7, r7, r15
004efc  b3930328  sext_int2long r[8:9], r7
004f00  97baa302  sll.d r[22:23], r[8:9], r10
004f04  1f047fd6  addli r8, r30, -5320
004f08  ab0300f0  lui r7, 983040
004f0c  6b510400  load.d r[3:4], 0(r8)
004f10  97937200  or r7, r5, r7
004f14  8b295111  add.ul r[20:21], r[3:4], r[22:23]
004f18  ffa37901  l_gm2lm r7, r23, 0(r[20:21])
004f1c  00a00200  mfence { lm, gm }
004f20  bff0b700  blt.s r15, r11, 60
004f24  e3038fd4  loadli.w r7,  -5568(r30)
004f28  63046fd5  loadli.w r8,  -5456(r30)
004f2c  e3097fd5  loadli.w r19,  -5448(r30)
004f30  c2800302  vload.mz vr1{mr1}, 0(r7)
004f34  9f89c9ff  addli r19, r19, -32
004f38  9f0b84ff  addli r23, r8, -64
004f3c  9f8383ff  addli r7, r7, -64
004f40  130a3605  setlt.u r20, r12, r19
004f44  06f10000  vfp162float_h.rn vr2, vr1
004f48  86b00000  vfp162float_l.rn vr1, vr1
004f4c  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
004f50  1f0404ff  addli r8, r8, -128
004f54  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
004f58  3b6f0afe  bneq r20, zero, -40
004f5c  00a00000  mfence { lm }
004f60  bf17a200  blt.s r4, r10, 484
004f64  1f0c0000  addli r24, zero, 0
004f68  9f0b0000  addli r23, zero, 0
004f6c  9f0c0000  addli r25, zero, 0
004f70  db0c0000  j 100
004f74  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004f78  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004f7c  9f9c0c00  addli r25, r25, 1
004f80  6a7108c0  vsrl.p vr2, r16, vr0
004f84  ea7118c0  vsrl.p vr3, r16, vr1
004f88  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f8c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f90  6af108c0  vsrl.p vr2, r17, vr0
004f94  eaf118c0  vsrl.p vr3, r17, vr1
004f98  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f9c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004fa0  6a7109c0  vsrl.p vr2, r18, vr0
004fa4  ea7119c0  vsrl.p vr3, r18, vr1
004fa8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004fac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004fb0  6af105c0  vsrl.p vr2, r11, vr0
004fb4  eaf115c0  vsrl.p vr3, r11, vr1
004fb8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004fbc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004fc0  7a110040  vextracti.f r2, 0(vr0)
004fc4  fa910040  vextracti.f r3, 0(vr1)
004fc8  0b6c2c10  add.f.rn r24, r24, r2
004fcc  8beb3b10  add.f.rn r23, r23, r3
004fd0  b7f54c00  beq r25, r4, 380
004fd4  9f830c00  addli r7, r25, 0
004fd8  37300701  beq r14, r16, 12
004fdc  97a3dc00  xor r7, r25, r13
004fe0  8b137210  add.s r7, r4, r7
004fe4  1f010fd7  addli r2, r30, -5248
004fe8  0b94e320  mul.s r8, r7, r14
004fec  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004ff0  0b948718  sub.s r8, r15, r8
004ff4  0b1de440  min.s r26, r8, r14
004ff8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004ffc  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005000  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005004  bf4dadfe  blt.s r26, r10, -144
005008  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
00500c  9f0d0000  addli r27, zero, 0
005010  0b9e7420  mul.s r28, r9, r7
005014  9f098fd7  addli r19, r30, -5184
005018  1f0a0300  addli r20, r6, 0
00501c  92304002  vadd.s.mz vr1{mr1}, zero, vr4
005020  12314002  vadd.s.mz vr2{mr1}, zero, vr4
005024  92314002  vadd.s.mz vr3{mr1}, zero, vr4
005028  0b14ca11  add.s r8, r20, r28
00502c  8b93c911  add.s r7, r19, r28
005030  9f028400  addli r5, r8, 64
005034  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
005038  9f018401  addli r3, r8, 192
00503c  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
005040  1f818301  addli r2, r7, 192
005044  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
005048  9f020401  addli r5, r8, 128
00504c  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
005050  9f818300  addli r3, r7, 64
005054  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
005058  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
00505c  9f820301  addli r5, r7, 128
005060  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
005064  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
005068  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00506c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
005070  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
005074  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
005078  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00507c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005080  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
005084  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
005088  9f818d00  addli r3, r27, 64
00508c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005090  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
005094  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005098  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
00509c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0050a0  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
0050a4  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
0050a8  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0050ac  4b2b3dfe  ble.s r26, r3, -312
0050b0  9f010402  addli r3, r8, 256
0050b4  9f028402  addli r5, r8, 320
0050b8  1f810302  addli r2, r7, 256
0050bc  9f8d0d01  addli r27, r27, 128
0050c0  1f0a0a04  addli r20, r20, 512
0050c4  9f890904  addli r19, r19, 512
0050c8  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
0050cc  9f010403  addli r3, r8, 384
0050d0  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
0050d4  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
0050d8  9f828302  addli r5, r7, 320
0050dc  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
0050e0  9f018403  addli r3, r8, 448
0050e4  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
0050e8  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
0050ec  9f810303  addli r3, r7, 384
0050f0  9f838303  addli r7, r7, 448
0050f4  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
0050f8  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0050fc  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
005100  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
005104  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005108  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00510c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005110  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005114  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
005118  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
00511c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
005120  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005124  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
005128  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00512c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005130  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
005134  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005138  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
00513c  bfbbadff  blt.s r27, r26, -276
005140  dbc6ffff  j -460
005144  9f0b0000  addli r23, zero, 0
005148  1f0c0000  addli r24, zero, 0
00514c  00a00000  mfence { lm }
005150  3fe2a700  blt.s r15, r10, 152
005154  63018fd5  loadli.w r2,  -5440(r30)
005158  1f0a0000  addli r20, zero, 0
00515c  0f042c18  div.f.rn r8, r24, r2
005160  8f832b18  div.f.rn r7, r23, r2
005164  63013f00  loadli.w r2,  24(r30)
005168  8b698420  mul.f.rn r19, r8, r8
00516c  0b640458  neg.f r8, r8
005170  8be33319  sub.f.rn r7, r7, r19
005174  9f098fd7  addli r19, r30, -5184
005178  8be32310  add.f.rn r7, r7, r2
00517c  2b01803f  lui r2, 260096
005180  8f830308  sqrt.f.rn r7, r7
005184  8f037118  div.f.rn r7, r2, r7
005188  9f8b8900  addli r23, r19, 64
00518c  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
005190  1f0c4a00  addli r24, r20, 32
005194  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
005198  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
00519c  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
0051a0  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
0051a4  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
0051a8  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
0051ac  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
0051b0  cbe08701  ble.s r15, r24, 56
0051b4  9f8b0901  addli r23, r19, 128
0051b8  1f8c8901  addli r24, r19, 192
0051bc  1f0a8a00  addli r20, r20, 64
0051c0  9f890902  addli r19, r19, 256
0051c4  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
0051c8  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
0051cc  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
0051d0  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
0051d4  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
0051d8  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
0051dc  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
0051e0  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
0051e4  bf1efafe  blt.s r20, r15, -92
0051e8  00a00000  mfence { lm }
0051ec  63411f00  loadli.w r2,  12(r30)
0051f0  e3028fd6  loadli.w r5,  -5312(r30)
0051f4  3fb3a7fe  blt.s r15, r10, -820
0051f8  9f038fd7  addli r7, r30, -5184
0051fc  1f048fd7  addli r8, r30, -5184
005200  9f090000  addli r19, zero, 0
005204  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
005208  1f0a8400  addli r20, r8, 64
00520c  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
005210  9f894900  addli r19, r19, 32
005214  1f040401  addli r8, r8, 128
005218  42110a02  vload_mask16.mz vr2{mr1}, 0(r20)
00521c  86910000  vfloat2fp16_l.rn vr3, vr1
005220  86510100  vfloat2fp16_h.rn vr3, vr2
005224  46803302  vstore.mz vr3{mr1}, 0(r7)
005228  9f838300  addli r7, r7, 64
00522c  3feff9fe  blt.s r19, r15, -40
005230  5b92ffff  j -880
005234  63012f00  loadli.w r2,  16(r30)
005238  ab0100f0  lui r3, 983040
00523c  1b311100  slli r2, r2, 1
005240  17113100  or r2, r2, r3
005244  aba10100  lui r3, 26
005248  9f810100  addli r3, r3, 0
00524c  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005250  5b080000  j 64
005254  63012f00  loadli.w r2,  16(r30)
005258  ab0100f0  lui r3, 983040
00525c  1b311100  slli r2, r2, 1
005260  17113100  or r2, r2, r3
005264  abe10100  lui r3, 30
005268  9f810100  addli r3, r3, 0
00526c  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005270  5bc30000  j 1560
005274  63012f00  loadli.w r2,  16(r30)
005278  ab0100f0  lui r3, 983040
00527c  1b311100  slli r2, r2, 1
005280  17113100  or r2, r2, r3
005284  abb10100  lui r3, 27
005288  9f810100  addli r3, r3, 0
00528c  7f013400  l_gm2sm r2, r3, 0(r[9:10])
005290  2bf10000  lui r2, 15
005294  e3411f00  loadli.w r3,  12(r30)
005298  00200300  mfence { sm, gm }
00529c  1b11f1ff  ori r2, r2, 4095
0052a0  80210104  csr_set csr3, r2
0052a4  00d00100  sync_group
0052a8  cbd4110a  ble.s r3, r1, 5428
0052ac  63012f00  loadli.w r2,  16(r30)
0052b0  e3412f00  loadli.w r3,  20(r30)
0052b4  1f052000  addli r10, zero, 16
0052b8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0052bc  1f130000  addli r6, zero, 1
0052c0  9f040002  addli r9, zero, 256
0052c4  2b06ffff  lui r12, 1048560
0052c8  2b08807f  lui r16, 522240
0052cc  ab08c07f  lui r17, 523264
0052d0  1f090001  addli r18, zero, 128
0052d4  9f098000  addli r19, zero, 64
0052d8  1f0a4000  addli r20, zero, 32
0052dc  9b351100  slli r11, r2, 1
0052e0  0b123110  add.s r4, r2, r3
0052e4  33010108  fix2float.rn r2, r2
0052e8  670b2fd4  storeli.w r2, -5456(r30)
0052ec  1f71f2ff  addli r2, r4, -1
0052f0  1bb21100  slli r4, r3, 1
0052f4  e70bbfd4  storeli.w r11, -5448(r30)
0052f8  8b123130  div.s r5, r2, r3
0052fc  2bf1ffff  lui r2, 1048575
005300  9f018fd7  addli r3, r30, -5184
005304  1b14f1ff  ori r8, r2, 4095
005308  1f010fd7  addli r2, r30, -5248
00530c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005310  6a200522  vor.u.mz vr0{mr1}, r10, vr0
005314  1f018fd6  addli r2, r30, -5312
005318  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00531c  2b710000  lui r2, 7
005320  9b16f1ff  ori r13, r2, 4095
005324  db080000  j 68
005328  9f018fd5  addli r3, r30, -5440
00532c  00a00000  mfence { lm }
005330  eb5a0f00  load.d r[22:23], 0(r30)
005334  2b0100f0  lui r2, 983040
005338  80530102  load_param_i r7, 2
00533c  e3057fd5  loadli.w r11,  -5448(r30)
005340  ebdb0100  load.d r[24:25], 0(r3)
005344  9f018fd7  addli r3, r30, -5184
005348  8b901310  add.s r1, r7, r1
00534c  17912500  or r2, r11, r2
005350  8baa7a11  add.ul r[22:23], r[22:23], r[24:25]
005354  7fb13a00  s_lm2gm r2, r3, 0(r[22:23])
005358  00a00200  mfence { lm, gm }
00535c  63411f00  loadli.w r2,  12(r30)
005360  3fa02000  blt.s r1, r2, 8
005364  5b8f0200  j 5240
005368  63011f00  loadli.w r2,  8(r30)
00536c  9f037fd6  addli r7, r30, -5320
005370  0b912010  add.s r2, r1, r2
005374  0b11f120  mul.s r2, r2, r15
005378  b31a0128  sext_int2long r[22:23], r2
00537c  2b0100f0  lui r2, 983040
005380  97bb6a02  sll.d r[24:25], r[22:23], r6
005384  ebda0300  load.d r[22:23], 0(r7)
005388  17912500  or r2, r11, r2
00538c  9f038fd5  addli r7, r30, -5440
005390  73b07301  store.d r[24:25], 0(r7)
005394  8baa7a11  add.ul r[22:23], r[22:23], r[24:25]
005398  7fa13a00  l_gm2lm r2, r3, 0(r[22:23])
00539c  00a00200  mfence { lm, gm }
0053a0  bfdc6200  blt.s r5, r6, 820
0053a4  9f0d0000  addli r27, zero, 0
0053a8  1f0d0000  addli r26, zero, 0
0053ac  1f0e0000  addli r28, zero, 0
0053b0  db0c0000  j 100
0053b4  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0053b8  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0053bc  1f1e0e00  addli r28, r28, 1
0053c0  6af104c0  vsrl.p vr2, r9, vr0
0053c4  eaf114c0  vsrl.p vr3, r9, vr1
0053c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0053cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0053d0  6a7109c0  vsrl.p vr2, r18, vr0
0053d4  ea7119c0  vsrl.p vr3, r18, vr1
0053d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0053dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0053e0  6af109c0  vsrl.p vr2, r19, vr0
0053e4  eaf119c0  vsrl.p vr3, r19, vr1
0053e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0053ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0053f0  6a710ac0  vsrl.p vr2, r20, vr0
0053f4  ea711ac0  vsrl.p vr3, r20, vr1
0053f8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0053fc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005400  7a110040  vextracti.f r2, 0(vr0)
005404  fa910040  vextracti.f r3, 0(vr1)
005408  8bed2d10  add.f.rn r27, r27, r2
00540c  0b6d3d10  add.f.rn r26, r26, r3
005410  373b5e00  beq r28, r5, 716
005414  1f010e00  addli r2, r28, 0
005418  37309700  beq r14, r9, 12
00541c  17218e00  xor r2, r28, r8
005420  0b912210  add.s r2, r5, r2
005424  9f010fd7  addli r3, r30, -5248
005428  8b13e120  mul.s r7, r2, r14
00542c  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
005430  8b937718  sub.s r7, r15, r7
005434  8b9ae340  min.s r21, r7, r14
005438  92322002  vadd.s.mz vr5{mr1}, zero, vr2
00543c  12322002  vadd.s.mz vr4{mr1}, zero, vr2
005440  92312002  vadd.s.mz vr3{mr1}, zero, vr2
005444  bfcd6afe  blt.s r21, r6, -144
005448  8b1b2220  mul.s r23, r4, r2
00544c  1f010fd7  addli r2, r30, -5248
005450  ab950100  lui r11, 25
005454  1f0b0000  addli r22, zero, 0
005458  9f038fd7  addli r7, r30, -5184
00545c  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
005460  9f850500  addli r11, r11, 0
005464  12315002  vadd.s.mz vr2{mr1}, zero, vr5
005468  92315002  vadd.s.mz vr3{mr1}, zero, vr5
00546c  12325002  vadd.s.mz vr4{mr1}, zero, vr5
005470  0b9c7511  add.s r24, r11, r23
005474  0b917311  add.s r2, r7, r23
005478  9f018fd6  addli r3, r30, -5312
00547c  4a030c02  vloads.mz vr6{mr1}, 0(r24)
005480  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
005484  c2030102  vload.mz vr7{mr1}, 0(r2)
005488  9f010fd7  addli r3, r30, -5248
00548c  9f0c8c00  addli r25, r24, 64
005490  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
005494  9f018b00  addli r3, r22, 64
005498  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
00549c  6a357602  vand.s.mz vr10{mr1}, r12, vr7
0054a0  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0054a4  6a336602  vand.s.mz vr6{mr1}, r12, vr6
0054a8  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0054ac  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0054b0  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0054b4  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0054b8  669503c0  vabs.f vr10, vr7
0054bc  6a348302  vand.s.mz vr8{mr1}, r6, vr8
0054c0  ea349302  vand.s.mz vr9{mr1}, r6, vr9
0054c4  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
0054c8  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
0054cc  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
0054d0  12b48602  vadd.s.mz vr8{mr1}, r13, vr8
0054d4  92b49602  vadd.s.mz vr9{mr1}, r13, vr9
0054d8  ea338602  vand.s.mz vr7{mr1}, r12, vr8
0054dc  661403c0  vabs.f vr8, vr6
0054e0  6a339602  vand.s.mz vr6{mr1}, r12, vr9
0054e4  eaa30834  vor.u.mh vr7{mr2}, r17, vr0
0054e8  72218842  vlt.u.mz mr2{mr1}, r16, vr8
0054ec  6aa30834  vor.u.mh vr6{mr2}, r17, vr0
0054f0  4a840c02  vloads.mz vr8{mr1}, 0(r25)
0054f4  9f0c8100  addli r25, r2, 64
0054f8  c2840c02  vload.mz vr9{mr1}, 0(r25)
0054fc  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
005500  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
005504  6a336602  vand.s.mz vr6{mr1}, r12, vr6
005508  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
00550c  ea349602  vand.s.mz vr9{mr1}, r12, vr9
005510  46007102  vstore.mz vr7{mr1}, 0(r2)
005514  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005518  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
00551c  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
005520  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
005524  6a348602  vand.s.mz vr8{mr1}, r12, vr8
005528  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
00552c  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005530  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
005534  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
005538  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
00553c  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
005540  ea349302  vand.s.mz vr9{mr1}, r6, vr9
005544  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
005548  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
00554c  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
005550  661505c0  vabs.f vr10, vr10
005554  661404c0  vabs.f vr8, vr8
005558  92b49602  vadd.s.mz vr9{mr1}, r13, vr9
00555c  92b5b602  vadd.s.mz vr11{mr1}, r13, vr11
005560  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
005564  ea349602  vand.s.mz vr9{mr1}, r12, vr9
005568  6a35b602  vand.s.mz vr10{mr1}, r12, vr11
00556c  eaa40834  vor.u.mh vr9{mr2}, r17, vr0
005570  72218842  vlt.u.mz mr2{mr1}, r16, vr8
005574  6aa50834  vor.u.mh vr10{mr2}, r17, vr0
005578  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
00557c  ea34a602  vand.s.mz vr9{mr1}, r12, vr10
005580  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
005584  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
005588  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
00558c  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
005590  46808c02  vstore.mz vr8{mr1}, 0(r25)
005594  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005598  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
00559c  4be83afe  ble.s r21, r3, -488
0055a0  9f010c01  addli r3, r24, 128
0055a4  9f0c0101  addli r25, r2, 128
0055a8  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0055ac  1f018101  addli r2, r2, 192
0055b0  1f0b0b01  addli r22, r22, 128
0055b4  9f850502  addli r11, r11, 256
0055b8  9f830302  addli r7, r7, 256
0055bc  6a237522  vor.u.mz vr6{mr1}, r10, vr7
0055c0  4a840102  vloads.mz vr8{mr1}, 0(r3)
0055c4  c2840c02  vload.mz vr9{mr1}, 0(r25)
0055c8  9f018c01  addli r3, r24, 192
0055cc  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
0055d0  6a309602  vand.s.mz vr0{mr1}, r12, vr9
0055d4  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
0055d8  6a348602  vand.s.mz vr8{mr1}, r12, vr8
0055dc  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
0055e0  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
0055e4  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
0055e8  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
0055ec  e69504c0  vabs.f vr11, vr9
0055f0  6a300302  vand.s.mz vr0{mr1}, r6, vr0
0055f4  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
0055f8  7221b842  vlt.u.mz mr2{mr1}, r16, vr11
0055fc  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
005600  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
005604  12b00602  vadd.s.mz vr0{mr1}, r13, vr0
005608  12b5a602  vadd.s.mz vr10{mr1}, r13, vr10
00560c  ea340602  vand.s.mz vr9{mr1}, r12, vr0
005610  661004c0  vabs.f vr0, vr8
005614  6a34a602  vand.s.mz vr8{mr1}, r12, vr10
005618  eaa47834  vor.u.mh vr9{mr2}, r17, vr7
00561c  72210842  vlt.u.mz mr2{mr1}, r16, vr0
005620  6aa47834  vor.u.mh vr8{mr2}, r17, vr7
005624  4a800102  vloads.mz vr0{mr1}, 0(r3)
005628  42050102  vload.mz vr10{mr1}, 0(r2)
00562c  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
005630  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
005634  6a35a602  vand.s.mz vr10{mr1}, r12, vr10
005638  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
00563c  6a348602  vand.s.mz vr8{mr1}, r12, vr8
005640  46809c02  vstore.mz vr9{mr1}, 0(r25)
005644  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
005648  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
00564c  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
005650  6a300602  vand.s.mz vr0{mr1}, r12, vr0
005654  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
005658  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
00565c  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
005660  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
005664  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
005668  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
00566c  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
005670  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
005674  e69000c0  vabs.f vr1, vr1
005678  661000c0  vabs.f vr0, vr0
00567c  12b5a602  vadd.s.mz vr10{mr1}, r13, vr10
005680  92b5b602  vadd.s.mz vr11{mr1}, r13, vr11
005684  72211842  vlt.u.mz mr2{mr1}, r16, vr1
005688  6a35a602  vand.s.mz vr10{mr1}, r12, vr10
00568c  ea30b602  vand.s.mz vr1{mr1}, r12, vr11
005690  6aa57834  vor.u.mh vr10{mr2}, r17, vr7
005694  72210842  vlt.u.mz mr2{mr1}, r16, vr0
005698  eaa07834  vor.u.mh vr1{mr2}, r17, vr7
00569c  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
0056a0  ea331602  vand.s.mz vr7{mr1}, r12, vr1
0056a4  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0056a8  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
0056ac  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0056b0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0056b4  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
0056b8  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
0056bc  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
0056c0  46000102  vstore.mz vr0{mr1}, 0(r2)
0056c4  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0056c8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0056cc  bf165bff  blt.s r22, r21, -604
0056d0  db9cffff  j -796
0056d4  1f0d0000  addli r26, zero, 0
0056d8  9f0d0000  addli r27, zero, 0
0056dc  00a00000  mfence { lm }
0056e0  3fa167fe  blt.s r15, r6, -952
0056e4  e3016fd5  loadli.w r3,  -5456(r30)
0056e8  2bab0100  lui r22, 26
0056ec  abbb0100  lui r23, 27
0056f0  1f010000  addli r2, zero, 0
0056f4  1f0b0b00  addli r22, r22, 0
0056f8  9f8b0b00  addli r23, r23, 0
0056fc  8f853d18  div.f.rn r11, r27, r3
005700  8f033d18  div.f.rn r7, r26, r3
005704  e3013f00  loadli.w r3,  24(r30)
005708  8beab520  mul.f.rn r21, r11, r11
00570c  8be50558  neg.f r11, r11
005710  8be35319  sub.f.rn r7, r7, r21
005714  9f0a8fd7  addli r21, r30, -5184
005718  8be33310  add.f.rn r7, r7, r3
00571c  ab01803f  lui r3, 260096
005720  8f830308  sqrt.f.rn r7, r7
005724  8f837118  div.f.rn r7, r3, r7
005728  42820a02  vload.mz vr4{mr1}, 0(r21)
00572c  ca020b02  vloads.mz vr5{mr1}, 0(r22)
005730  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
005734  4a830b02  vloads.mz vr6{mr1}, 0(r23)
005738  1f0c4100  addli r24, r2, 32
00573c  ea212522  vor.u.mz vr3{mr1}, r10, vr2
005740  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
005744  6a344602  vand.s.mz vr8{mr1}, r12, vr4
005748  92937502  vadd.f.mz.rn vr7{mr1}, r11, vr7
00574c  12948502  vadd.f.mz.rn vr8{mr1}, r11, vr8
005750  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
005754  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
005758  6a355602  vand.s.mz vr10{mr1}, r12, vr5
00575c  ea326602  vand.s.mz vr5{mr1}, r12, vr6
005760  8a937302  vmul.f.mz.rn vr7{mr1}, r7, vr7
005764  0a938302  vmul.f.mz.rn vr6{mr1}, r7, vr8
005768  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
00576c  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
005770  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
005774  6a337302  vand.s.mz vr6{mr1}, r6, vr7
005778  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
00577c  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
005780  ea337302  vand.s.mz vr7{mr1}, r6, vr7
005784  661202c0  vabs.f vr4, vr4
005788  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
00578c  12b36602  vadd.s.mz vr6{mr1}, r13, vr6
005790  e69202c0  vabs.f vr5, vr5
005794  72214842  vlt.u.mz mr2{mr1}, r16, vr4
005798  6a336602  vand.s.mz vr6{mr1}, r12, vr6
00579c  92b37602  vadd.s.mz vr7{mr1}, r13, vr7
0057a0  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
0057a4  6a327602  vand.s.mz vr4{mr1}, r12, vr7
0057a8  72215842  vlt.u.mz mr2{mr1}, r16, vr5
0057ac  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
0057b0  6aa22834  vor.u.mh vr4{mr2}, r17, vr2
0057b4  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
0057b8  46804a02  vstore.mz vr4{mr1}, 0(r21)
0057bc  cbbd87fd  ble.s r15, r24, -1172
0057c0  1f0c8b00  addli r24, r22, 64
0057c4  9f8c8a00  addli r25, r21, 64
0057c8  1f018100  addli r2, r2, 64
0057cc  1f0b0b01  addli r22, r22, 128
0057d0  9f8a0a01  addli r21, r21, 128
0057d4  4a020c02  vloads.mz vr4{mr1}, 0(r24)
0057d8  1f8c8b00  addli r24, r23, 64
0057dc  c2820c02  vload.mz vr5{mr1}, 0(r25)
0057e0  9f8b0b01  addli r23, r23, 128
0057e4  4a030c02  vloads.mz vr6{mr1}, 0(r24)
0057e8  eeb351a2  vsll.s.mz vr7{mr1}, vr3, vr5
0057ec  ea325602  vand.s.mz vr5{mr1}, r12, vr5
0057f0  92937502  vadd.f.mz.rn vr7{mr1}, r11, vr7
0057f4  12945502  vadd.f.mz.rn vr8{mr1}, r11, vr5
0057f8  eeb441a2  vsll.s.mz vr9{mr1}, vr3, vr4
0057fc  6a354602  vand.s.mz vr10{mr1}, r12, vr4
005800  8a937302  vmul.f.mz.rn vr7{mr1}, r7, vr7
005804  eeb261a2  vsll.s.mz vr5{mr1}, vr3, vr6
005808  6a326602  vand.s.mz vr4{mr1}, r12, vr6
00580c  0a938302  vmul.f.mz.rn vr6{mr1}, r7, vr8
005810  a6929302  vmac.f.mz.rn vr5{mr1}, vr7, vr9
005814  2612a302  vmac.f.mz.rn vr4{mr1}, vr6, vr10
005818  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
00581c  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
005820  6a336302  vand.s.mz vr6{mr1}, r6, vr6
005824  ea337302  vand.s.mz vr7{mr1}, r6, vr7
005828  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
00582c  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
005830  e69202c0  vabs.f vr5, vr5
005834  661202c0  vabs.f vr4, vr4
005838  12b36602  vadd.s.mz vr6{mr1}, r13, vr6
00583c  92b37602  vadd.s.mz vr7{mr1}, r13, vr7
005840  72215842  vlt.u.mz mr2{mr1}, r16, vr5
005844  6a336602  vand.s.mz vr6{mr1}, r12, vr6
005848  ea327602  vand.s.mz vr5{mr1}, r12, vr7
00584c  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
005850  72214842  vlt.u.mz mr2{mr1}, r16, vr4
005854  eaa22834  vor.u.mh vr5{mr2}, r17, vr2
005858  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
00585c  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
005860  46802c02  vstore.mz vr2{mr1}, 0(r25)
005864  3f1bf1fe  blt.s r2, r15, -316
005868  5b58ffff  j -1344
00586c  63012f00  loadli.w r2,  16(r30)
005870  ab0100f0  lui r3, 983040
005874  1b311100  slli r2, r2, 1
005878  17113100  or r2, r2, r3
00587c  abf10100  lui r3, 31
005880  9f810100  addli r3, r3, 0
005884  7f013400  l_gm2sm r2, r3, 0(r[9:10])
005888  2bf10000  lui r2, 15
00588c  e3411f00  loadli.w r3,  12(r30)
005890  00200300  mfence { sm, gm }
005894  1b11f1ff  ori r2, r2, 4095
005898  80210104  csr_set csr3, r2
00589c  00d00100  sync_group
0058a0  cbfc1106  ble.s r3, r1, 3900
0058a4  e3012f00  loadli.w r3,  16(r30)
0058a8  e3422f00  loadli.w r5,  20(r30)
0058ac  2bf4ffff  lui r8, 1048575
0058b0  2bd50100  lui r10, 29
0058b4  9f0b8fd7  addli r23, r30, -5184
0058b8  9f040002  addli r9, zero, 256
0058bc  9f050001  addli r11, zero, 128
0058c0  1f068000  addli r12, zero, 64
0058c4  9f064000  addli r13, zero, 32
0058c8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0058cc  1b14f4ff  ori r8, r8, 4095
0058d0  1f050500  addli r10, r10, 0
0058d4  0b925110  add.s r4, r3, r5
0058d8  1bb11100  slli r2, r3, 1
0058dc  b3810108  fix2float.rn r3, r3
0058e0  1f73f2ff  addli r6, r4, -1
0058e4  1bb21200  slli r4, r5, 1
0058e8  8b125330  div.s r5, r6, r5
0058ec  1f130000  addli r6, zero, 1
0058f0  5b070000  j 56
0058f4  00a00000  mfence { lm }
0058f8  eb580f00  load.d r[18:19], 0(r30)
0058fc  2b0800f0  lui r16, 983040
005900  9f0b8fd7  addli r23, r30, -5184
005904  17180101  or r16, r2, r16
005908  8ba93811  add.ul r[20:21], r[18:19], r[20:21]
00590c  80580102  load_param_i r17, 2
005910  7fb87901  s_lm2gm r16, r23, 0(r[20:21])
005914  8b901810  add.s r1, r17, r1
005918  00a00200  mfence { lm, gm }
00591c  e3431f00  loadli.w r7,  12(r30)
005920  3fa07000  blt.s r1, r7, 8
005924  5bd70100  j 3768
005928  e3031f00  loadli.w r7,  8(r30)
00592c  0b987010  add.s r16, r1, r7
005930  9f037fd6  addli r7, r30, -5320
005934  0b18f820  mul.s r16, r16, r15
005938  33180828  sext_int2long r[17:18], r16
00593c  97396802  sll.d r[20:21], r[17:18], r6
005940  ebd80300  load.d r[18:19], 0(r7)
005944  2b0800f0  lui r16, 983040
005948  17180101  or r16, r2, r16
00594c  8baa3811  add.ul r[22:23], r[18:19], r[20:21]
005950  7fa87a01  l_gm2lm r16, r23, 0(r[22:23])
005954  00a00200  mfence { lm, gm }
005958  3fc76200  blt.s r5, r6, 464
00595c  1f0b0000  addli r22, zero, 0
005960  9f0a0000  addli r21, zero, 0
005964  9f0b0000  addli r23, zero, 0
005968  db0c0000  j 100
00596c  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
005970  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005974  9f9b0b00  addli r23, r23, 1
005978  6af134c0  vsrl.p vr2, r9, vr3
00597c  6af214c0  vsrl.p vr4, r9, vr1
005980  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
005984  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
005988  eaf125c0  vsrl.p vr3, r11, vr2
00598c  6af215c0  vsrl.p vr4, r11, vr1
005990  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
005994  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
005998  ea7126c0  vsrl.p vr3, r12, vr2
00599c  6a7216c0  vsrl.p vr4, r12, vr1
0059a0  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0059a4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0059a8  eaf126c0  vsrl.p vr3, r13, vr2
0059ac  6af216c0  vsrl.p vr4, r13, vr1
0059b0  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0059b4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0059b8  fa130140  vextracti.f r7, 0(vr2)
0059bc  7a980040  vextracti.f r16, 0(vr1)
0059c0  0b6b7b10  add.f.rn r22, r22, r7
0059c4  8bea0a11  add.f.rn r21, r21, r16
0059c8  b7a55b00  beq r23, r5, 360
0059cc  1f880b00  addli r16, r23, 0
0059d0  37309700  beq r14, r9, 12
0059d4  17a88b00  xor r16, r23, r8
0059d8  0b980211  add.s r16, r5, r16
0059dc  8b18e820  mul.s r17, r16, r14
0059e0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0059e4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0059e8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0059ec  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0059f0  8b981719  sub.s r17, r15, r17
0059f4  0b9ce840  min.s r24, r17, r14
0059f8  bf5d6cfe  blt.s r24, r6, -140
0059fc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
005a00  12310002  vadd.s.mz vr2{mr1}, zero, vr0
005a04  92310002  vadd.s.mz vr3{mr1}, zero, vr0
005a08  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005a0c  9f0c0000  addli r25, zero, 0
005a10  0b1d0221  mul.s r26, r4, r16
005a14  9f0d8fd7  addli r27, r30, -5184
005a18  1f0e0500  addli r28, r10, 0
005a1c  0b18ae11  add.s r16, r28, r26
005a20  9f838c00  addli r7, r25, 64
005a24  ca020802  vloads.mz vr5{mr1}, 0(r16)
005a28  9f088800  addli r17, r16, 64
005a2c  4a830802  vloads.mz vr6{mr1}, 0(r17)
005a30  8b98ad11  add.s r17, r27, r26
005a34  c2830802  vload.mz vr7{mr1}, 0(r17)
005a38  1f898800  addli r18, r17, 64
005a3c  42040902  vload.mz vr8{mr1}, 0(r18)
005a40  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
005a44  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005a48  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
005a4c  06b40300  vfp162float_l.rn vr8, vr7
005a50  86f30300  vfp162float_h.rn vr7, vr7
005a54  86340300  vfp162float_l.rn vr9, vr6
005a58  06730300  vfp162float_h.rn vr6, vr6
005a5c  86120400  vfloat2fp16_l.rn vr5, vr8
005a60  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
005a64  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
005a68  12340002  vadd.s.mz vr8{mr1}, zero, vr0
005a6c  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005a70  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005a74  06940400  vfloat2fp16_l.rn vr8, vr9
005a78  86d20300  vfloat2fp16_h.rn vr5, vr7
005a7c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005a80  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005a84  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
005a88  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005a8c  06540300  vfloat2fp16_h.rn vr8, vr6
005a90  46805802  vstore.mz vr5{mr1}, 0(r17)
005a94  46008902  vstore.mz vr8{mr1}, 0(r18)
005a98  4b5b7cfe  ble.s r24, r7, -300
005a9c  9f030801  addli r7, r16, 128
005aa0  9f8c0c01  addli r25, r25, 128
005aa4  1f0e0e02  addli r28, r28, 256
005aa8  9f8d0d02  addli r27, r27, 256
005aac  ca820302  vloads.mz vr5{mr1}, 0(r7)
005ab0  9f038801  addli r7, r16, 192
005ab4  1f880801  addli r16, r17, 128
005ab8  4a830302  vloads.mz vr6{mr1}, 0(r7)
005abc  c2030802  vload.mz vr7{mr1}, 0(r16)
005ac0  9f838801  addli r7, r17, 192
005ac4  42840302  vload.mz vr8{mr1}, 0(r7)
005ac8  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
005acc  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005ad0  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
005ad4  12330002  vadd.s.mz vr6{mr1}, zero, vr0
005ad8  86b40300  vfp162float_l.rn vr9, vr7
005adc  86f30300  vfp162float_h.rn vr7, vr7
005ae0  86920400  vfloat2fp16_l.rn vr5, vr9
005ae4  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
005ae8  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
005aec  86340400  vfp162float_l.rn vr9, vr8
005af0  06740400  vfp162float_h.rn vr8, vr8
005af4  06930400  vfloat2fp16_l.rn vr6, vr9
005af8  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005afc  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005b00  86d20300  vfloat2fp16_h.rn vr5, vr7
005b04  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005b08  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005b0c  06530400  vfloat2fp16_h.rn vr6, vr8
005b10  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
005b14  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005b18  46005802  vstore.mz vr5{mr1}, 0(r16)
005b1c  46806302  vstore.mz vr6{mr1}, 0(r7)
005b20  bffb8cff  blt.s r25, r24, -260
005b24  5bc9ffff  j -440
005b28  9f0a0000  addli r21, zero, 0
005b2c  1f0b0000  addli r22, zero, 0
005b30  00a00000  mfence { lm }
005b34  3f8767fe  blt.s r15, r6, -576
005b38  0f083b18  div.f.rn r16, r22, r3
005b3c  8f883a18  div.f.rn r17, r21, r3
005b40  e3033f00  loadli.w r7,  24(r30)
005b44  abec0100  lui r25, 30
005b48  2bfd0100  lui r26, 31
005b4c  9f0b0000  addli r23, zero, 0
005b50  1f0c8fd7  addli r24, r30, -5184
005b54  9f8c0c00  addli r25, r25, 0
005b58  1f0d0d00  addli r26, r26, 0
005b5c  8b6a0821  mul.f.rn r21, r16, r16
005b60  0b6b0858  neg.f r22, r16
005b64  8be85819  sub.f.rn r17, r17, r21
005b68  8be87810  add.f.rn r17, r17, r7
005b6c  ab03803f  lui r7, 260096
005b70  8f880808  sqrt.f.rn r17, r17
005b74  8f8a1319  div.f.rn r21, r7, r17
005b78  c2000c02  vload.mz vr1{mr1}, 0(r24)
005b7c  4a810c02  vloads.mz vr2{mr1}, 0(r25)
005b80  ca010d02  vloads.mz vr3{mr1}, 0(r26)
005b84  1f884b00  addli r16, r23, 32
005b88  06b20000  vfp162float_l.rn vr4, vr1
005b8c  86f00000  vfp162float_h.rn vr1, vr1
005b90  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
005b94  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
005b98  86320100  vfp162float_l.rn vr5, vr2
005b9c  06b30100  vfp162float_l.rn vr6, vr3
005ba0  06710100  vfp162float_h.rn vr2, vr2
005ba4  86f10100  vfp162float_h.rn vr3, vr3
005ba8  8a931a02  vmul.f.mz.rn vr7{mr1}, r21, vr1
005bac  0a924a02  vmul.f.mz.rn vr4{mr1}, r21, vr4
005bb0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005bb4  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
005bb8  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
005bbc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005bc0  06110300  vfloat2fp16_l.rn vr2, vr6
005bc4  06d10100  vfloat2fp16_h.rn vr2, vr3
005bc8  46002c02  vstore.mz vr2{mr1}, 0(r24)
005bcc  cba407ff  ble.s r15, r16, -728
005bd0  1f888c00  addli r16, r25, 64
005bd4  9f088c00  addli r17, r24, 64
005bd8  9f8b8b00  addli r23, r23, 64
005bdc  9f8c0c01  addli r25, r25, 128
005be0  1f0c0c01  addli r24, r24, 128
005be4  4a010802  vloads.mz vr2{mr1}, 0(r16)
005be8  1f088d00  addli r16, r26, 64
005bec  c2810802  vload.mz vr3{mr1}, 0(r17)
005bf0  1f0d0d01  addli r26, r26, 128
005bf4  4a020802  vloads.mz vr4{mr1}, 0(r16)
005bf8  86b20100  vfp162float_l.rn vr5, vr3
005bfc  86f10100  vfp162float_h.rn vr3, vr3
005c00  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
005c04  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
005c08  06330100  vfp162float_l.rn vr6, vr2
005c0c  06710100  vfp162float_h.rn vr2, vr2
005c10  8a925a02  vmul.f.mz.rn vr5{mr1}, r21, vr5
005c14  8a913a02  vmul.f.mz.rn vr3{mr1}, r21, vr3
005c18  86330200  vfp162float_l.rn vr7, vr4
005c1c  06720200  vfp162float_h.rn vr4, vr4
005c20  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
005c24  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
005c28  86900300  vfloat2fp16_l.rn vr1, vr7
005c2c  86500200  vfloat2fp16_h.rn vr1, vr4
005c30  46801802  vstore.mz vr1{mr1}, 0(r17)
005c34  3f9dfbfe  blt.s r23, r15, -188
005c38  db97ffff  j -836
005c3c  9f000040  addli r1, zero, 8192
005c40  2b0100f0  lui r2, 983040
005c44  97902000  or r1, r1, r2
005c48  2b310200  lui r2, 35
005c4c  1f010100  addli r2, r2, 0
005c50  ff002300  l_gm2sm r1, r2, 0(r[7:8])
005c54  db070000  j 60
005c58  63012f00  loadli.w r2,  16(r30)
005c5c  ab0100f0  lui r3, 983040
005c60  1b312100  slli r2, r2, 2
005c64  17113100  or r2, r2, r3
005c68  ab810200  lui r3, 40
005c6c  9f810108  addli r3, r3, 1024
005c70  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005c74  dbef0000  j 1916
005c78  9f000040  addli r1, zero, 8192
005c7c  2b0100f0  lui r2, 983040
005c80  97902000  or r1, r1, r2
005c84  2b510200  lui r2, 37
005c88  1f010100  addli r2, r2, 0
005c8c  ff002400  l_gm2sm r1, r2, 0(r[9:10])
005c90  abf00000  lui r1, 15
005c94  00200300  mfence { sm, gm }
005c98  1b011500  andi r2, r10, 1
005c9c  9f010006  addli r3, zero, 768
005ca0  9b90f0ff  ori r1, r1, 4095
005ca4  80a10004  csr_set csr3, r1
005ca8  9f000006  addli r1, zero, 768
005cac  00d00100  sync_group
005cb0  67082fd6  storeli.w r2, -5248(r30)
005cb4  37200100  beq r2, zero, 8
005cb8  9f01000a  addli r3, zero, 1280
005cbc  63421f00  loadli.w r4,  12(r30)
005cc0  9f120000  addli r5, zero, 1
005cc4  3f6c5204  blt.s r4, r5, 2840
005cc8  63010fd7  loadli.w r2,  -5248(r30)
005ccc  80520102  load_param_i r5, 2
005cd0  9b431500  srli r7, r10, 1
005cd4  ab170200  lui r15, 33
005cd8  ab7a0200  lui r21, 39
005cdc  2b7d0200  lui r26, 39
005ce0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005ce4  1f020000  addli r4, zero, 0
005ce8  1bb42100  slli r8, r3, 2
005cec  1f068fd7  addli r12, r30, -5184
005cf0  1f080005  addli r16, zero, 640
005cf4  1f090001  addli r18, zero, 128
005cf8  9f098000  addli r19, zero, 64
005cfc  1f0a4000  addli r20, zero, 32
005d00  1bc31200  srli r6, r5, 1
005d04  ab320200  lui r5, 35
005d08  9f870700  addli r15, r15, 0
005d0c  9f8a0a00  addli r21, r21, 0
005d10  1f0d0d04  addli r26, r26, 512
005d14  8b101120  mul.s r1, r2, r1
005d18  1f018fd5  addli r2, r30, -5440
005d1c  9f820200  addli r5, r5, 0
005d20  67041fd6  storeli.w r1, -5312(r30)
005d24  9bb02000  slli r1, r1, 2
005d28  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005d2c  1f810c00  addli r2, r25, 0
005d30  9f0c0003  addli r25, zero, 384
005d34  8b945010  add.s r9, r1, r5
005d38  ab520200  lui r5, 37
005d3c  9f820200  addli r5, r5, 0
005d40  0b955010  add.s r10, r1, r5
005d44  abf0ffff  lui r1, 1048575
005d48  9b9000f8  ori r1, r1, 3968
005d4c  e70b1fd4  storeli.w r1, -5448(r30)
005d50  abf00000  lui r1, 15
005d54  1b9bf0ff  ori r22, r1, 4095
005d58  5b040000  j 32
005d5c  00a00300  mfence { lm, sm, gm }
005d60  80210b04  csr_set csr3, r22
005d64  00d00100  sync_group
005d68  63411f00  loadli.w r2,  12(r30)
005d6c  0b126210  add.s r4, r4, r6
005d70  3f202200  blt.s r4, r2, 8
005d74  5be7f5ff  j -20680
005d78  8b107210  add.s r1, r4, r7
005d7c  cb0f11fe  ble.s r2, r1, -32
005d80  63011f00  loadli.w r2,  8(r30)
005d84  8b902010  add.s r1, r1, r2
005d88  63018fd6  loadli.w r2,  -5312(r30)
005d8c  9bb0b000  slli r1, r1, 11
005d90  97902000  or r1, r1, r2
005d94  1f017fd6  addli r2, r30, -5320
005d98  b3960028  sext_int2long r[14:15], r1
005d9c  9f200000  addli r1, zero, 2
005da0  97bd1602  sll.d r[28:29], r[14:15], r1
005da4  eb560100  load.d r[14:15], 0(r2)
005da8  ab0000f0  lui r1, 983040
005dac  97101400  or r1, r8, r1
005db0  8ba6b611  add.ul r[14:15], r[14:15], r[28:29]
005db4  ffa0c600  l_gm2lm r1, r12, 0(r[14:15])
005db8  00a00200  mfence { lm, gm }
005dbc  e3000fd7  loadli.w r1,  -5248(r30)
005dc0  3ba60000  bneq r1, zero, 392
005dc4  9f008fd5  addli r1, r30, -5440
005dc8  e3067fd5  loadli.w r13,  -5448(r30)
005dcc  9f050000  addli r11, zero, 0
005dd0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
005dd4  92303002  vadd.s.mz vr1{mr1}, zero, vr3
005dd8  12313002  vadd.s.mz vr2{mr1}, zero, vr3
005ddc  12323002  vadd.s.mz vr4{mr1}, zero, vr3
005de0  0b97f510  add.s r14, r11, r15
005de4  8b10b610  add.s r1, r12, r11
005de8  9f860601  addli r13, r13, 128
005dec  9f850504  addli r11, r11, 512
005df0  1f010701  addli r2, r14, 128
005df4  4a100702  vloads_mask16.mz vr0{mr1}, 0(r14)
005df8  9f028700  addli r5, r14, 64
005dfc  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
005e00  9f888001  addli r17, r1, 192
005e04  ca120102  vloads_mask16.mz vr5{mr1}, 0(r2)
005e08  1f018701  addli r2, r14, 192
005e0c  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
005e10  9f828000  addli r5, r1, 64
005e14  c2950802  vload_mask16.mz vr11{mr1}, 0(r17)
005e18  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
005e1c  1f810001  addli r2, r1, 128
005e20  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
005e24  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
005e28  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005e2c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
005e30  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005e34  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005e38  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005e3c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
005e40  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
005e44  1f010702  addli r2, r14, 256
005e48  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005e4c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
005e50  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
005e54  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
005e58  9f820003  addli r5, r1, 384
005e5c  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
005e60  1f018702  addli r2, r14, 320
005e64  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
005e68  9f880002  addli r17, r1, 256
005e6c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005e70  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
005e74  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005e78  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
005e7c  1f010703  addli r2, r14, 384
005e80  c2930802  vload_mask16.mz vr7{mr1}, 0(r17)
005e84  1f078703  addli r14, r14, 448
005e88  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005e8c  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
005e90  1f818002  addli r2, r1, 320
005e94  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
005e98  9f808003  addli r1, r1, 448
005e9c  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
005ea0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005ea4  c2930202  vload_mask16.mz vr7{mr1}, 0(r5)
005ea8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005eac  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005eb0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005eb4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005eb8  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
005ebc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005ec0  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
005ec4  13810605  setlt.u r2, r13, r16
005ec8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005ecc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005ed0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005ed4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005ed8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005edc  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
005ee0  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
005ee4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005ee8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005eec  bb5b01fe  bneq r2, zero, -268
005ef0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005ef4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005ef8  9f000002  addli r1, zero, 256
005efc  6af100c0  vsrl.p vr2, r1, vr0
005f00  eaf110c0  vsrl.p vr3, r1, vr1
005f04  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005f08  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005f0c  6a7109c0  vsrl.p vr2, r18, vr0
005f10  ea7119c0  vsrl.p vr3, r18, vr1
005f14  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005f18  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005f1c  6af109c0  vsrl.p vr2, r19, vr0
005f20  eaf119c0  vsrl.p vr3, r19, vr1
005f24  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005f28  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005f2c  6a710ac0  vsrl.p vr2, r20, vr0
005f30  ea711ac0  vsrl.p vr3, r20, vr1
005f34  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005f38  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005f3c  fa120040  vextracti.f r5, 0(vr0)
005f40  fa900040  vextracti.f r1, 0(vr1)
005f44  5b630000  j 792
005f48  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005f4c  abf0ffff  lui r1, 1048575
005f50  9f050000  addli r11, zero, 0
005f54  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005f58  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005f5c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005f60  9b9600f8  ori r13, r1, 3968
005f64  8b90b710  add.s r1, r15, r11
005f68  0b17b610  add.s r14, r12, r11
005f6c  9f860601  addli r13, r13, 128
005f70  9f850504  addli r11, r11, 512
005f74  1f8c0031  addli r24, r1, 6272
005f78  9f820030  addli r5, r1, 6144
005f7c  1f818031  addli r2, r1, 6336
005f80  9f0b0718  addli r23, r14, 3072
005f84  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
005f88  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
005f8c  9f828030  addli r5, r1, 6208
005f90  ca140102  vloads_mask16.mz vr9{mr1}, 0(r2)
005f94  1f018718  addli r2, r14, 3136
005f98  1f0c8719  addli r24, r14, 3264
005f9c  42930b02  vload_mask16.mz vr6{mr1}, 0(r23)
005fa0  4a940202  vloads_mask16.mz vr8{mr1}, 0(r5)
005fa4  9f020719  addli r5, r14, 3200
005fa8  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
005fac  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
005fb0  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
005fb4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005fb8  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
005fbc  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
005fc0  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
005fc4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005fc8  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
005fcc  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
005fd0  9f820032  addli r5, r1, 6400
005fd4  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
005fd8  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
005fdc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005fe0  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
005fe4  9f0b071a  addli r23, r14, 3328
005fe8  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
005fec  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
005ff0  1f01871b  addli r2, r14, 3520
005ff4  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
005ff8  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
005ffc  4a900202  vloads_mask16.mz vr0{mr1}, 0(r5)
006000  9f828032  addli r5, r1, 6464
006004  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006008  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00600c  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
006010  9f820033  addli r5, r1, 6528
006014  9f808033  addli r1, r1, 6592
006018  4a940202  vloads_mask16.mz vr8{mr1}, 0(r5)
00601c  9f02871a  addli r5, r14, 3392
006020  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
006024  9f00071b  addli r1, r14, 3456
006028  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
00602c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
006030  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
006034  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
006038  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
00603c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
006040  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
006044  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
006048  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00604c  46906202  vstore_mask16.mz vr6{mr1}, 0(r5)
006050  93829605  setlt.u r5, r13, r25
006054  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
006058  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00605c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
006060  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
006064  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
006068  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00606c  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
006070  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
006074  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006078  bbbb02fe  bneq r5, zero, -276
00607c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006080  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
006084  9f000002  addli r1, zero, 256
006088  9f060000  addli r13, zero, 0
00608c  eaf110c0  vsrl.p vr3, r1, vr1
006090  6af100c0  vsrl.p vr2, r1, vr0
006094  abf0ffff  lui r1, 1048575
006098  1b9700f8  ori r14, r1, 3968
00609c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060a0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0060a4  ea7119c0  vsrl.p vr3, r18, vr1
0060a8  6a7109c0  vsrl.p vr2, r18, vr0
0060ac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060b0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0060b4  eaf119c0  vsrl.p vr3, r19, vr1
0060b8  6af109c0  vsrl.p vr2, r19, vr0
0060bc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0060c4  ea711ac0  vsrl.p vr3, r20, vr1
0060c8  6a710ac0  vsrl.p vr2, r20, vr0
0060cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0060d4  7a9c0040  vextracti.f r24, 0(vr1)
0060d8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0060dc  fa150040  vextracti.f r11, 0(vr0)
0060e0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0060e4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0060e8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0060ec  8b9bd710  add.s r23, r15, r13
0060f0  8b10d610  add.s r1, r12, r13
0060f4  1f070701  addli r14, r14, 128
0060f8  9f860604  addli r13, r13, 512
0060fc  1f810b18  addli r2, r23, 3072
006100  9f820b19  addli r5, r23, 3200
006104  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
006108  9f888001  addli r17, r1, 192
00610c  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
006110  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
006114  1f818b18  addli r2, r23, 3136
006118  9f828b19  addli r5, r23, 3264
00611c  c2950802  vload_mask16.mz vr11{mr1}, 0(r17)
006120  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
006124  1f810001  addli r2, r1, 128
006128  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
00612c  9f828000  addli r5, r1, 64
006130  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
006134  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
006138  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00613c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
006140  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
006144  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
006148  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
00614c  1f810b1a  addli r2, r23, 3328
006150  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
006154  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
006158  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00615c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
006160  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
006164  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
006168  1f818b1a  addli r2, r23, 3392
00616c  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
006170  9f880002  addli r17, r1, 256
006174  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
006178  9f820003  addli r5, r1, 384
00617c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
006180  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
006184  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
006188  1f810b1b  addli r2, r23, 3456
00618c  c2930802  vload_mask16.mz vr7{mr1}, 0(r17)
006190  9f8b8b1b  addli r23, r23, 3520
006194  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006198  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00619c  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
0061a0  1f818002  addli r2, r1, 320
0061a4  4a950b02  vloads_mask16.mz vr10{mr1}, 0(r23)
0061a8  9f808003  addli r1, r1, 448
0061ac  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
0061b0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0061b4  c2930202  vload_mask16.mz vr7{mr1}, 0(r5)
0061b8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0061bc  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0061c0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0061c4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0061c8  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
0061cc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0061d0  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
0061d4  13010705  setlt.u r2, r14, r16
0061d8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0061dc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0061e0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0061e4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0061e8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0061ec  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
0061f0  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0061f4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0061f8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0061fc  bb4b01fe  bneq r2, zero, -272
006200  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
006204  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006208  9f000002  addli r1, zero, 256
00620c  6af100c0  vsrl.p vr2, r1, vr0
006210  eaf110c0  vsrl.p vr3, r1, vr1
006214  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006218  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00621c  6a7109c0  vsrl.p vr2, r18, vr0
006220  ea7119c0  vsrl.p vr3, r18, vr1
006224  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006228  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00622c  6af109c0  vsrl.p vr2, r19, vr0
006230  eaf119c0  vsrl.p vr3, r19, vr1
006234  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006238  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00623c  6a710ac0  vsrl.p vr2, r20, vr0
006240  ea711ac0  vsrl.p vr3, r20, vr1
006244  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006248  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00624c  fa100040  vextracti.f r1, 0(vr0)
006250  7a910040  vextracti.f r2, 0(vr1)
006254  8be21510  add.f.rn r5, r11, r1
006258  8b602c10  add.f.rn r1, r24, r2
00625c  0b016230  div.u r2, r4, r6
006260  80360002  core_id r13
006264  9f050000  addli r11, zero, 0
006268  1f0c0000  addli r24, zero, 0
00626c  1b316100  slli r2, r2, 6
006270  1b010104  andi r2, r2, 64
006274  1711d100  or r2, r2, r13
006278  9b362100  slli r13, r2, 2
00627c  1b01e107  andi r2, r2, 126
006280  0b975611  add.s r14, r13, r21
006284  1b312100  slli r2, r2, 2
006288  73605700  stores.w r5, 0(r14)
00628c  8b92a611  add.s r5, r13, r26
006290  9b964600  ori r13, r13, 4
006294  73e01200  stores.w r1, 0(r5)
006298  8b905611  add.s r1, r13, r21
00629c  8b125111  add.s r5, r2, r21
0062a0  8b96a611  add.s r13, r13, r26
0062a4  0b11a111  add.s r2, r2, r26
0062a8  00a00300  mfence { lm, sm, gm }
0062ac  80210b04  csr_set csr3, r22
0062b0  00d00100  sync_group
0062b4  efc00000  loads.w r1, 0(r1)
0062b8  efc20200  loads.w r5, 0(r5)
0062bc  efc60600  loads.w r13, 0(r13)
0062c0  6f410100  loads.w r2, 0(r2)
0062c4  8be05010  add.f.rn r1, r1, r5
0062c8  ab02003a  lui r5, 237568
0062cc  0be12610  add.f.rn r2, r13, r2
0062d0  8be05020  mul.f.rn r1, r1, r5
0062d4  0b615120  mul.f.rn r2, r2, r5
0062d8  8be21020  mul.f.rn r5, r1, r1
0062dc  0be70058  neg.f r14, r1
0062e0  0b615118  sub.f.rn r2, r2, r5
0062e4  e3023f00  loadli.w r5,  24(r30)
0062e8  0b615110  add.f.rn r2, r2, r5
0062ec  ab02803f  lui r5, 260096
0062f0  0f010108  sqrt.f.rn r2, r2
0062f4  8f862218  div.f.rn r13, r5, r2
0062f8  8b90b410  add.s r1, r9, r11
0062fc  8b1bb610  add.s r23, r12, r11
006300  8b12b510  add.s r5, r10, r11
006304  9f888000  addli r17, r1, 64
006308  1f818b00  addli r2, r23, 64
00630c  42900b02  vload_mask16.mz vr0{mr1}, 0(r23)
006310  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
006314  4a920202  vloads_mask16.mz vr4{mr1}, 0(r5)
006318  ca910802  vloads_mask16.mz vr3{mr1}, 0(r17)
00631c  9f888200  addli r17, r5, 64
006320  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
006324  ca920802  vloads_mask16.mz vr5{mr1}, 0(r17)
006328  9f084c00  addli r17, r24, 32
00632c  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
006330  93881107  setle.u r17, r3, r17
006334  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
006338  0a900602  vmul.f.mz.rn vr0{mr1}, r13, vr0
00633c  8a901602  vmul.f.mz.rn vr1{mr1}, r13, vr1
006340  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
006344  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
006348  46904b02  vstore_mask16.mz vr4{mr1}, 0(r23)
00634c  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
006350  bb910800  bneq r17, zero, 100
006354  1f810b01  addli r2, r23, 128
006358  9f888b01  addli r17, r23, 192
00635c  9f8b0001  addli r23, r1, 128
006360  9f808001  addli r1, r1, 192
006364  1f0c8c00  addli r24, r24, 64
006368  9f850502  addli r11, r11, 256
00636c  4a910b02  vloads_mask16.mz vr2{mr1}, 0(r23)
006370  9f8b0201  addli r23, r5, 128
006374  9f828201  addli r5, r5, 192
006378  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
00637c  c2900802  vload_mask16.mz vr1{mr1}, 0(r17)
006380  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
006384  93003c04  setlt.u r1, r24, r3
006388  ca910b02  vloads_mask16.mz vr3{mr1}, 0(r23)
00638c  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
006390  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
006394  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
006398  0a900602  vmul.f.mz.rn vr0{mr1}, r13, vr0
00639c  8a901602  vmul.f.mz.rn vr1{mr1}, r13, vr1
0063a0  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
0063a4  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0063a8  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0063ac  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
0063b0  3bad00fe  bneq r1, zero, -184
0063b4  eb560f00  load.d r[14:15], 0(r30)
0063b8  ab0000f0  lui r1, 983040
0063bc  00a00000  mfence { lm }
0063c0  97101400  or r1, r8, r1
0063c4  8ba6b611  add.ul r[14:15], r[14:15], r[28:29]
0063c8  ffb0c600  s_lm2gm r1, r12, 0(r[14:15])
0063cc  00a00200  mfence { lm, gm }
0063d0  5b33ffff  j -1640
0063d4  63012f00  loadli.w r2,  16(r30)
0063d8  ab0100f0  lui r3, 983040
0063dc  1b312100  slli r2, r2, 2
0063e0  17113100  or r2, r2, r3
0063e4  ab910200  lui r3, 41
0063e8  9f810108  addli r3, r3, 1024
0063ec  7f013400  l_gm2sm r2, r3, 0(r[9:10])
0063f0  2bf10000  lui r2, 15
0063f4  e3411f00  loadli.w r3,  12(r30)
0063f8  00200300  mfence { sm, gm }
0063fc  1b11f1ff  ori r2, r2, 4095
006400  80210104  csr_set csr3, r2
006404  00d00100  sync_group
006408  4bdf1100  ble.s r3, r1, 980
00640c  e3012f00  loadli.w r3,  16(r30)
006410  e3422f00  loadli.w r5,  20(r30)
006414  ab780200  lui r17, 39
006418  2b890200  lui r18, 40
00641c  ab990200  lui r19, 41
006420  9f038fd7  addli r7, r30, -5184
006424  1f140000  addli r8, zero, 1
006428  1f050002  addli r10, zero, 256
00642c  1f060001  addli r12, zero, 128
006430  9f068000  addli r13, zero, 64
006434  1f084000  addli r16, zero, 32
006438  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00643c  9f880808  addli r17, r17, 1024
006440  1f090908  addli r18, r18, 1024
006444  9f890908  addli r19, r19, 1024
006448  0b925110  add.s r4, r3, r5
00644c  9bb52100  slli r11, r3, 2
006450  33810108  fix2float.rn r2, r3
006454  9f71f2ff  addli r3, r4, -1
006458  1bb22200  slli r4, r5, 2
00645c  e70b2fd4  storeli.w r2, -5448(r30)
006460  1f010fd7  addli r2, r30, -5248
006464  670cbfd4  storeli.w r11, -5440(r30)
006468  8b925130  div.s r5, r3, r5
00646c  abf1ffff  lui r3, 1048575
006470  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
006474  9b94f1ff  ori r9, r3, 4095
006478  5b080000  j 64
00647c  1f018fd6  addli r2, r30, -5312
006480  00a00000  mfence { lm }
006484  6b5a0f00  load.d r[21:22], 0(r30)
006488  ab0100f0  lui r3, 983040
00648c  00530102  load_param_i r6, 2
006490  e3058fd5  loadli.w r11,  -5440(r30)
006494  6b5b0100  load.d r[23:24], 0(r2)
006498  8b101310  add.s r1, r6, r1
00649c  97913500  or r3, r11, r3
0064a0  0b2a6a11  add.ul r[21:22], r[21:22], r[23:24]
0064a4  ff317a00  s_lm2gm r3, r7, 0(r[21:22])
0064a8  00a00200  mfence { lm, gm }
0064ac  63411f00  loadli.w r2,  12(r30)
0064b0  3fa02000  blt.s r1, r2, 8
0064b4  5b650000  j 808
0064b8  63011f00  loadli.w r2,  8(r30)
0064bc  8b912010  add.s r3, r1, r2
0064c0  1f210000  addli r2, zero, 2
0064c4  8b91f120  mul.s r3, r3, r15
0064c8  339a0128  sext_int2long r[21:22], r3
0064cc  ab0100f0  lui r3, 983040
0064d0  173c2a02  sll.d r[25:26], r[21:22], r2
0064d4  1f017fd6  addli r2, r30, -5320
0064d8  97913500  or r3, r11, r3
0064dc  6b5a0100  load.d r[21:22], 0(r2)
0064e0  1f018fd6  addli r2, r30, -5312
0064e4  0b2b8a11  add.ul r[23:24], r[21:22], r[25:26]
0064e8  ff217b00  l_gm2lm r3, r7, 0(r[23:24])
0064ec  00a00200  mfence { lm, gm }
0064f0  73308101  store.d r[25:26], 0(r2)
0064f4  bf978200  blt.s r5, r8, 484
0064f8  9f0b0000  addli r23, zero, 0
0064fc  1f0b0000  addli r22, zero, 0
006500  1f0c0000  addli r24, zero, 0
006504  db0c0000  j 100
006508  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
00650c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006510  1f1c0c00  addli r24, r24, 1
006514  6a7105c0  vsrl.p vr2, r10, vr0
006518  ea7115c0  vsrl.p vr3, r10, vr1
00651c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006520  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006524  6a7106c0  vsrl.p vr2, r12, vr0
006528  ea7116c0  vsrl.p vr3, r12, vr1
00652c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006530  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006534  6af106c0  vsrl.p vr2, r13, vr0
006538  eaf116c0  vsrl.p vr3, r13, vr1
00653c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006540  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006544  6a7108c0  vsrl.p vr2, r16, vr0
006548  ea7118c0  vsrl.p vr3, r16, vr1
00654c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006550  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006554  7a110040  vextracti.f r2, 0(vr0)
006558  fa910040  vextracti.f r3, 0(vr1)
00655c  8beb2b10  add.f.rn r23, r23, r2
006560  0b6b3b10  add.f.rn r22, r22, r3
006564  b7755c00  beq r24, r5, 380
006568  9f010c00  addli r3, r24, 0
00656c  3730a700  beq r14, r10, 12
006570  97219c00  xor r3, r24, r9
006574  8b913210  add.s r3, r5, r3
006578  1f010fd7  addli r2, r30, -5248
00657c  0b93e120  mul.s r6, r3, r14
006580  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
006584  0b936718  sub.s r6, r15, r6
006588  8b1ce340  min.s r25, r6, r14
00658c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
006590  92311002  vadd.s.mz vr3{mr1}, zero, vr1
006594  12311002  vadd.s.mz vr2{mr1}, zero, vr1
006598  bfcd8cfe  blt.s r25, r8, -144
00659c  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0065a0  1f0d0000  addli r26, zero, 0
0065a4  8b1d3220  mul.s r27, r4, r3
0065a8  1f0e8fd7  addli r28, r30, -5184
0065ac  9f850800  addli r11, r17, 0
0065b0  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0065b4  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0065b8  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0065bc  8b91b511  add.s r3, r11, r27
0065c0  0b13be11  add.s r6, r28, r27
0065c4  1f818100  addli r2, r3, 64
0065c8  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
0065cc  1f8a8101  addli r20, r3, 192
0065d0  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
0065d4  9f0a8301  addli r21, r6, 192
0065d8  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
0065dc  1f810101  addli r2, r3, 128
0065e0  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
0065e4  1f0a0301  addli r20, r6, 128
0065e8  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
0065ec  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
0065f0  c2150a02  vload_mask16.mz vr11{mr1}, 0(r20)
0065f4  1f018300  addli r2, r6, 64
0065f8  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
0065fc  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
006600  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
006604  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
006608  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
00660c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006610  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006614  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
006618  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
00661c  1f018d00  addli r2, r26, 64
006620  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
006624  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
006628  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00662c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
006630  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
006634  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
006638  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
00663c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
006640  4bab2cfe  ble.s r25, r2, -312
006644  1f8a0102  addli r20, r3, 256
006648  9f8a8102  addli r21, r3, 320
00664c  1f010302  addli r2, r6, 256
006650  1f0d0d01  addli r26, r26, 128
006654  9f850504  addli r11, r11, 512
006658  1f0e0e04  addli r28, r28, 512
00665c  4a100a02  vloads_mask16.mz vr0{mr1}, 0(r20)
006660  1f8a0103  addli r20, r3, 384
006664  9f818103  addli r3, r3, 448
006668  ca920a02  vloads_mask16.mz vr5{mr1}, 0(r21)
00666c  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
006670  ca130a02  vloads_mask16.mz vr7{mr1}, 0(r20)
006674  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
006678  9f010303  addli r3, r6, 384
00667c  1f0a8302  addli r20, r6, 320
006680  1f038303  addli r6, r6, 448
006684  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
006688  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
00668c  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
006690  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
006694  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
006698  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
00669c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0066a0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0066a4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0066a8  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
0066ac  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0066b0  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0066b4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0066b8  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
0066bc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0066c0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0066c4  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0066c8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0066cc  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0066d0  bf3b9dff  blt.s r26, r25, -276
0066d4  dbc6ffff  j -460
0066d8  1f0b0000  addli r22, zero, 0
0066dc  9f0b0000  addli r23, zero, 0
0066e0  00a00000  mfence { lm }
0066e4  3fe687fe  blt.s r15, r8, -616
0066e8  63017fd5  loadli.w r2,  -5448(r30)
0066ec  9f050000  addli r11, zero, 0
0066f0  1f0c0000  addli r24, zero, 0
0066f4  8f812b18  div.f.rn r3, r23, r2
0066f8  0f032b18  div.f.rn r6, r22, r2
0066fc  63013f00  loadli.w r2,  24(r30)
006700  0beb3120  mul.f.rn r22, r3, r3
006704  8beb0158  neg.f r23, r3
006708  0b636319  sub.f.rn r6, r6, r22
00670c  0b632310  add.f.rn r6, r6, r2
006710  2b01803f  lui r2, 260096
006714  0f030308  sqrt.f.rn r6, r6
006718  0f0b6118  div.f.rn r22, r2, r6
00671c  0b932511  add.s r6, r11, r18
006720  8b91b310  add.s r3, r7, r11
006724  9f0c8300  addli r25, r6, 64
006728  4a110302  vloads_mask16.mz vr2{mr1}, 0(r6)
00672c  0b933511  add.s r6, r11, r19
006730  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
006734  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
006738  9f8c8100  addli r25, r3, 64
00673c  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
006740  1f038300  addli r6, r6, 64
006744  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
006748  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
00674c  1f034c00  addli r6, r24, 32
006750  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
006754  92925b02  vadd.f.mz.rn vr5{mr1}, r23, vr5
006758  8a101b02  vmul.f.mz.rn vr1{mr1}, r22, vr1
00675c  8a125b02  vmul.f.mz.rn vr5{mr1}, r22, vr5
006760  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
006764  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
006768  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
00676c  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
006770  4bb467fe  ble.s r15, r6, -756
006774  0b13b910  add.s r6, r18, r11
006778  8b9cb910  add.s r25, r19, r11
00677c  1f0c8c00  addli r24, r24, 64
006780  9f850502  addli r11, r11, 256
006784  1f0d0301  addli r26, r6, 128
006788  9f8d0c01  addli r27, r25, 128
00678c  1f038301  addli r6, r6, 192
006790  9f8c8c01  addli r25, r25, 192
006794  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
006798  1f8d0101  addli r26, r3, 128
00679c  9f818101  addli r3, r3, 192
0067a0  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
0067a4  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
0067a8  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
0067ac  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
0067b0  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0067b4  92913b02  vadd.f.mz.rn vr3{mr1}, r23, vr3
0067b8  12924b02  vadd.f.mz.rn vr4{mr1}, r23, vr4
0067bc  8a113b02  vmul.f.mz.rn vr3{mr1}, r22, vr3
0067c0  0a124b02  vmul.f.mz.rn vr4{mr1}, r22, vr4
0067c4  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
0067c8  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
0067cc  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
0067d0  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
0067d4  3f2dfcfe  blt.s r24, r15, -184
0067d8  db94ffff  j -860
0067dc  9f0e0fd4  addli sp, r30, -5632
0067e0  e38fae2b  loadli.w r31,  5584(sp)
0067e4  63cfae2b  loadli.w r30,  5588(sp)
0067e8  638ebe2b  loadli.w r28,  5592(sp)
0067ec  e3cdbe2b  loadli.w r27,  5596(sp)
0067f0  638dce2b  loadli.w r26,  5600(sp)
0067f4  e3ccce2b  loadli.w r25,  5604(sp)
0067f8  638cde2b  loadli.w r24,  5608(sp)
0067fc  e3cbde2b  loadli.w r23,  5612(sp)
006800  638bee2b  loadli.w r22,  5616(sp)
006804  e3caee2b  loadli.w r21,  5620(sp)
006808  638afe2b  loadli.w r20,  5624(sp)
00680c  e3c9fe2b  loadli.w r19,  5628(sp)
006810  9f8e0e2c  addli sp, sp, 5632
006814  5f800f00  jr r31, 0
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
006980  00100000  exit
006984  00100000  exit
006988  00100000  exit
00698c  00100000  exit
006990  00100000  exit
006994  00100000  exit
006998  00100000  exit
00699c  00100000  exit
0069a0  00100000  exit
0069a4  00100000  exit
0069a8  00100000  exit
0069ac  00100000  exit
0069b0  00100000  exit
0069b4  00100000  exit
0069b8  00100000  exit
0069bc  00100000  exit
0069c0  00100000  exit
0069c4  00100000  exit
0069c8  00100000  exit
0069cc  00100000  exit
0069d0  00100000  exit
0069d4  00100000  exit
0069d8  00100000  exit
0069dc  00100000  exit
0069e0  00100000  exit
0069e4  00100000  exit
0069e8  00100000  exit
0069ec  00100000  exit
0069f0  00100000  exit
0069f4  00100000  exit
0069f8  00100000  exit
0069fc  00100000  exit
006a00  00100000  exit
006a04  00100000  exit
006a08  00100000  exit
006a0c  00100000  exit
006a10  00100000  exit
006a14  00100000  exit
006a18  00100000  exit
006a1c  00100000  exit
006a20  00100000  exit
006a24  00100000  exit
006a28  00100000  exit
006a2c  00100000  exit
006a30  00100000  exit
006a34  00100000  exit
006a38  00100000  exit
006a3c  00100000  exit
006a40  00100000  exit
006a44  00100000  exit
006a48  00100000  exit
006a4c  00100000  exit
006a50  00100000  exit
006a54  00100000  exit
