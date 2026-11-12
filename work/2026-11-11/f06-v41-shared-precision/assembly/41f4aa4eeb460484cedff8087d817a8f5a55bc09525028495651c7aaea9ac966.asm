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
000158  9bb04000  slli r1, r1, 4
00015c  e7801e00  storeli.w r1, 8(sp)
000160  572f0000  jal 376
000164  8b9a7a11  add.s r21, r21, r23
000168  bfde6aff  blt.s r21, r22, -76
00016c  9f8e8e00  addli sp, sp, 64
000170  00a00300  mfence { lm, sm, gm }
000174  00100000  exit
000178  9f8e0ed4  addli sp, sp, -5632
00017c  67cdee2b  storeli.w r30, 5588(sp)
000180  1f8f0e2c  addli r30, sp, 5632
000184  67ce9e2b  storeli.w r25, 5604(sp)
000188  1f250000  addli r10, zero, 2
00018c  e7cf3e2b  storeli.w r19, 5628(sp)
000190  e78f4e2b  storeli.w r20, 5624(sp)
000194  67cf5e2b  storeli.w r21, 5620(sp)
000198  678f6e2b  storeli.w r22, 5616(sp)
00019c  e7ce7e2b  storeli.w r23, 5612(sp)
0001a0  e78e8e2b  storeli.w r24, 5608(sp)
0001a4  678eae2b  storeli.w r26, 5600(sp)
0001a8  e7cdbe2b  storeli.w r27, 5596(sp)
0001ac  e78dce2b  storeli.w r28, 5592(sp)
0001b0  678dfe2b  storeli.w r31, 5584(sp)
0001b4  e3004f00  loadli.w r1,  32(r30)
0001b8  63472f00  loadli.w r14,  20(r30)
0001bc  e3072f00  loadli.w r15,  16(r30)
0001c0  e34c1f00  loadli.w r25,  12(r30)
0001c4  9f057fd6  addli r11, r30, -5320
0001c8  73b02500  store.d r[3:4], 0(r11)
0001cc  3f511500  blt.s r10, r1, 84
0001d0  1f110000  addli r2, zero, 1
0001d4  b7cc2004  beq r1, r2, 2864
0001d8  1f210000  addli r2, zero, 2
0001dc  bb8b2004  bneq r1, r2, 2784
0001e0  e3403f00  loadli.w r1,  28(r30)
0001e4  37e10014  beq r1, zero, 10328
0001e8  80300002  core_id r1
0001ec  1f210000  addli r2, zero, 2
0001f0  37822028  beq r1, r2, 20608
0001f4  1f110000  addli r2, zero, 1
0001f8  b7e02028  beq r1, r2, 20536
0001fc  3bc20028  bneq r1, zero, 20624
000200  63012f00  loadli.w r2,  16(r30)
000204  ab0100f0  lui r3, 983040
000208  1b311100  slli r2, r2, 1
00020c  17113100  or r2, r2, r3
000210  ab910100  lui r3, 25
000214  9f810100  addli r3, r3, 0
000218  7f013200  l_gm2sm r2, r3, 0(r[5:6])
00021c  5b0e0a00  j 20592
000220  1f310000  addli r2, zero, 3
000224  b78c2004  beq r1, r2, 2848
000228  1f410000  addli r2, zero, 4
00022c  3bca2004  bneq r1, r2, 2704
000230  e3002f00  loadli.w r1,  16(r30)
000234  1f010010  addli r2, zero, 2048
000238  3ba1200a  bneq r1, r2, 5192
00023c  e3403f00  loadli.w r1,  28(r30)
000240  37f3001a  beq r1, zero, 13532
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
0003b8  670b3fd4  storeli.w r3, -5456(r30)
0003bc  37a00100  beq r3, zero, 8
0003c0  9f02000a  addli r5, zero, 1280
0003c4  e3411f00  loadli.w r3,  12(r30)
0003c8  1f130000  addli r6, zero, 1
0003cc  3fb06132  blt.s r3, r6, 25612
0003d0  e3016fd5  loadli.w r3,  -5456(r30)
0003d4  9bc41000  srli r9, r1, 1
0003d8  80300002  core_id r1
0003dc  1f0a8fd7  addli r20, r30, -5184
0003e0  9bb51200  slli r11, r5, 1
0003e4  9f030000  addli r7, zero, 0
0003e8  1f797000  addli r18, zero, 63
0003ec  ab06803f  lui r13, 260096
0003f0  1f062000  addli r12, zero, 16
0003f4  2b0bffff  lui r22, 1048560
0003f8  2b0ec07f  lui r28, 523264
0003fc  9f3d0000  addli r27, zero, 3
000400  2bed7f00  lui r26, 2046
000404  1f571000  addli r14, zero, 13
000408  0b912120  mul.s r2, r3, r2
00040c  9bc11000  srli r3, r1, 1
000410  9b302100  slli r1, r2, 2
000414  e7432fd4  storeli.w r2, -5572(r30)
000418  0b914010  add.s r2, r1, r4
00041c  8b90a010  add.s r1, r1, r10
000420  2b02807f  lui r4, 522240
000424  1f251000  addli r10, zero, 10
000428  67041fd6  storeli.w r1, -5312(r30)
00042c  9bb02200  slli r1, r5, 2
000430  67082fd6  storeli.w r2, -5248(r30)
000434  1f814200  addli r2, r5, 32
000438  8b904011  add.s r1, r1, r20
00043c  e7422fd4  storeli.w r2, -5588(r30)
000440  0b914511  add.s r2, r11, r20
000444  9f8080ff  addli r1, r1, -64
000448  e7021fd4  storeli.w r1, -5592(r30)
00044c  9f0081ff  addli r1, r2, -64
000450  2bf100fc  lui r2, 1032207
000454  67421fd4  storeli.w r1, -5596(r30)
000458  abf0ffff  lui r1, 1048575
00045c  1b1401c0  ori r8, r2, 3072
000460  1f018fd4  addli r2, r30, -5568
000464  00a00000  mfence { lm }
000468  e7039fd4  storeli.w r9, -5576(r30)
00046c  67433fd4  storeli.w r3, -5580(r30)
000470  6703bfd4  storeli.w r11, -5584(r30)
000474  9b9000f8  ori r1, r1, 3968
000478  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
00047c  e7411fd4  storeli.w r1, -5604(r30)
000480  abf00000  lui r1, 15
000484  9b99f0ff  ori r19, r1, 4095
000488  ab700000  lui r1, 7
00048c  9b9af0ff  ori r21, r1, 4095
000490  ab00ff03  lui r1, 16368
000494  670c3fd5  storeli.w r19, -5440(r30)
000498  9b9bf03f  ori r23, r1, 1023
00049c  abe00700  lui r1, 126
0004a0  db030000  j 28
0004a4  00a00300  mfence { lm, sm, gm }
0004a8  80a10904  csr_set csr3, r19
0004ac  00d00100  sync_group
0004b0  8b939310  add.s r7, r7, r9
0004b4  3fa09301  blt.s r7, r25, 8
0004b8  5bfe0000  j 2032
0004bc  0b913310  add.s r2, r7, r3
0004c0  cb9f2cfe  ble.s r25, r2, -28
0004c4  e3011f00  loadli.w r3,  8(r30)
0004c8  0b113110  add.s r2, r2, r3
0004cc  8b819330  div.u r3, r7, r9
0004d0  e3447fd4  loadli.w r9,  -5572(r30)
0004d4  1b31b100  slli r2, r2, 11
0004d8  17119100  or r2, r2, r9
0004dc  9f047fd6  addli r9, r30, -5320
0004e0  33180128  sext_int2long r[17:18], r2
0004e4  2b0100f0  lui r2, 983040
0004e8  9bb16100  slli r3, r3, 6
0004ec  173c6802  sll.d r[25:26], r[17:18], r6
0004f0  6bd80400  load.d r[17:18], 0(r9)
0004f4  9f047fd5  addli r9, r30, -5448
0004f8  17912500  or r2, r11, r2
0004fc  9b810104  andi r3, r3, 64
000500  73b08401  store.d r[25:26], 0(r9)
000504  0b288811  add.ul r[17:18], r[17:18], r[25:26]
000508  7f214801  l_gm2lm r2, r20, 0(r[17:18])
00050c  00310002  core_id r2
000510  00a00200  mfence { lm, gm }
000514  979c2100  or r25, r3, r2
000518  63414fd4  loadli.w r2,  -5596(r30)
00051c  e3015fd4  loadli.w r3,  -5592(r30)
000520  e3445fd4  loadli.w r9,  -5588(r30)
000524  c2000102  vload.mz vr1{mr1}, 0(r2)
000528  9f84c4ff  addli r9, r9, -32
00052c  1f8881ff  addli r16, r3, -64
000530  1f0181ff  addli r2, r2, -64
000534  93059904  setlt.u r11, r18, r9
000538  66c111a0  vmerge_h.hf vr2, vr3, vr1
00053c  e6c01180  vmerge_l.hf vr1, vr3, vr1
000540  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
000544  9f8101ff  addli r3, r3, -128
000548  46101802  vstore_mask16.mz vr1{mr1}, 0(r16)
00054c  3bef05fe  bneq r11, zero, -40
000550  00a00000  mfence { lm }
000554  1f0c0005  addli r24, zero, 640
000558  63016fd5  loadli.w r2,  -5456(r30)
00055c  3b360100  bneq r2, zero, 396
000560  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000564  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000568  12323002  vadd.s.mz vr4{mr1}, zero, vr3
00056c  e3413fd4  loadli.w r3,  -5604(r30)
000570  1f010000  addli r2, zero, 0
000574  8b15f110  add.s r11, r2, r15
000578  8b142a10  add.s r9, r20, r2
00057c  9f810101  addli r3, r3, 128
000580  1f010104  addli r2, r2, 512
000584  1f880501  addli r16, r11, 128
000588  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
00058c  9f888500  addli r17, r11, 64
000590  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
000594  1f898401  addli r18, r9, 192
000598  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
00059c  1f888501  addli r16, r11, 192
0005a0  4a930802  vloads_mask16.mz vr6{mr1}, 0(r17)
0005a4  9f888400  addli r17, r9, 64
0005a8  c2150902  vload_mask16.mz vr11{mr1}, 0(r18)
0005ac  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
0005b0  1f880401  addli r16, r9, 128
0005b4  42950802  vload_mask16.mz vr10{mr1}, 0(r17)
0005b8  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
0005bc  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0005c0  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0005c4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0005c8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0005cc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0005d0  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
0005d4  46108802  vstore_mask16.mz vr8{mr1}, 0(r16)
0005d8  1f880502  addli r16, r11, 256
0005dc  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0005e0  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0005e4  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0005e8  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
0005ec  4a100802  vloads_mask16.mz vr0{mr1}, 0(r16)
0005f0  1f888502  addli r16, r11, 320
0005f4  46106902  vstore_mask16.mz vr6{mr1}, 0(r18)
0005f8  1f890402  addli r18, r9, 256
0005fc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000600  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000604  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000608  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
00060c  1f880503  addli r16, r11, 384
000610  c2130902  vload_mask16.mz vr7{mr1}, 0(r18)
000614  9f858503  addli r11, r11, 448
000618  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00061c  4a140802  vloads_mask16.mz vr8{mr1}, 0(r16)
000620  1f888402  addli r16, r9, 320
000624  4a950502  vloads_mask16.mz vr10{mr1}, 0(r11)
000628  9f850403  addli r11, r9, 384
00062c  9f848403  addli r9, r9, 448
000630  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
000634  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000638  c2930502  vload_mask16.mz vr7{mr1}, 0(r11)
00063c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000640  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
000644  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000648  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00064c  46100902  vstore_mask16.mz vr0{mr1}, 0(r18)
000650  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000654  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
000658  13888105  setlt.u r16, r3, r24
00065c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000660  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000664  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000668  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00066c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000670  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
000674  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000678  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00067c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000680  bb5b08fe  bneq r16, zero, -268
000684  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000688  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00068c  1f010002  addli r2, zero, 256
000690  6a7101c0  vsrl.p vr2, r2, vr0
000694  ea7111c0  vsrl.p vr3, r2, vr1
000698  1f010001  addli r2, zero, 128
00069c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006a0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006a4  6a7101c0  vsrl.p vr2, r2, vr0
0006a8  ea7111c0  vsrl.p vr3, r2, vr1
0006ac  1f018000  addli r2, zero, 64
0006b0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006b4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006b8  6a7101c0  vsrl.p vr2, r2, vr0
0006bc  ea7111c0  vsrl.p vr3, r2, vr1
0006c0  1f014000  addli r2, zero, 32
0006c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006cc  6a7101c0  vsrl.p vr2, r2, vr0
0006d0  ea7111c0  vsrl.p vr3, r2, vr1
0006d4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006d8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006dc  fa110040  vextracti.f r3, 0(vr0)
0006e0  fa940040  vextracti.f r9, 0(vr1)
0006e4  db670000  j 828
0006e8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0006ec  abf1ffff  lui r3, 1048575
0006f0  1f010000  addli r2, zero, 0
0006f4  9f090003  addli r19, zero, 384
0006f8  67029fd5  storeli.w r25, -5600(r30)
0006fc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000700  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000704  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000708  9b9101f8  ori r3, r3, 3968
00070c  8b952710  add.s r11, r15, r2
000710  8b142a10  add.s r9, r20, r2
000714  9f810101  addli r3, r3, 128
000718  1f010104  addli r2, r2, 512
00071c  1f890531  addli r18, r11, 6272
000720  1f880530  addli r16, r11, 6144
000724  9f8c8531  addli r25, r11, 6336
000728  9f880418  addli r17, r9, 3072
00072c  ca130902  vloads_mask16.mz vr7{mr1}, 0(r18)
000730  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
000734  1f888530  addli r16, r11, 6208
000738  ca940c02  vloads_mask16.mz vr9{mr1}, 0(r25)
00073c  1f890419  addli r18, r9, 3200
000740  42930802  vload_mask16.mz vr6{mr1}, 0(r17)
000744  9f8c8419  addli r25, r9, 3264
000748  4a140802  vloads_mask16.mz vr8{mr1}, 0(r16)
00074c  42150902  vload_mask16.mz vr10{mr1}, 0(r18)
000750  1f888418  addli r16, r9, 3136
000754  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
000758  c2150802  vload_mask16.mz vr11{mr1}, 0(r16)
00075c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
000760  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
000764  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
000768  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
00076c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000770  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
000774  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
000778  9f880532  addli r17, r11, 6400
00077c  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
000780  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
000784  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000788  46107902  vstore_mask16.mz vr7{mr1}, 0(r18)
00078c  1f89041a  addli r18, r9, 3328
000790  c2130902  vload_mask16.mz vr7{mr1}, 0(r18)
000794  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
000798  13883105  setlt.u r16, r3, r19
00079c  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0007a0  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0007a4  4a900802  vloads_mask16.mz vr0{mr1}, 0(r17)
0007a8  9f888532  addli r17, r11, 6464
0007ac  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0007b0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0007b4  4a930802  vloads_mask16.mz vr6{mr1}, 0(r17)
0007b8  9f880533  addli r17, r11, 6528
0007bc  9f858533  addli r11, r11, 6592
0007c0  4a940802  vloads_mask16.mz vr8{mr1}, 0(r17)
0007c4  9f88841a  addli r17, r9, 3392
0007c8  4a950502  vloads_mask16.mz vr10{mr1}, 0(r11)
0007cc  9f85041b  addli r11, r9, 3456
0007d0  9f84841b  addli r9, r9, 3520
0007d4  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
0007d8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0007dc  c2930502  vload_mask16.mz vr7{mr1}, 0(r11)
0007e0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0007e4  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
0007e8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0007ec  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0007f0  46100902  vstore_mask16.mz vr0{mr1}, 0(r18)
0007f4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0007f8  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
0007fc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000800  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000804  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000808  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00080c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000810  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
000814  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000818  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00081c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000820  bb3b08fe  bneq r16, zero, -276
000824  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000828  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00082c  9f010002  addli r3, zero, 256
000830  1f010000  addli r2, zero, 0
000834  eaf111c0  vsrl.p vr3, r3, vr1
000838  6af101c0  vsrl.p vr2, r3, vr0
00083c  9f010001  addli r3, zero, 128
000840  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000844  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000848  eaf111c0  vsrl.p vr3, r3, vr1
00084c  6af101c0  vsrl.p vr2, r3, vr0
000850  9f018000  addli r3, zero, 64
000854  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000858  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00085c  eaf111c0  vsrl.p vr3, r3, vr1
000860  6af101c0  vsrl.p vr2, r3, vr0
000864  9f014000  addli r3, zero, 32
000868  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00086c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000870  eaf111c0  vsrl.p vr3, r3, vr1
000874  6af101c0  vsrl.p vr2, r3, vr0
000878  abf1ffff  lui r3, 1048575
00087c  9b9101f8  ori r3, r3, 3968
000880  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000884  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000888  fa990040  vextracti.f r19, 0(vr1)
00088c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000890  fa150040  vextracti.f r11, 0(vr0)
000894  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000898  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00089c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0008a0  8b942710  add.s r9, r15, r2
0008a4  8b182a10  add.s r17, r20, r2
0008a8  9f810101  addli r3, r3, 128
0008ac  1f010104  addli r2, r2, 512
0008b0  1f880418  addli r16, r9, 3072
0008b4  1f890419  addli r18, r9, 3200
0008b8  42940802  vload_mask16.mz vr8{mr1}, 0(r17)
0008bc  9f8c8801  addli r25, r17, 192
0008c0  4a100802  vloads_mask16.mz vr0{mr1}, 0(r16)
0008c4  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
0008c8  1f888418  addli r16, r9, 3136
0008cc  1f898419  addli r18, r9, 3264
0008d0  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0008d4  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
0008d8  1f880801  addli r16, r17, 128
0008dc  ca130902  vloads_mask16.mz vr7{mr1}, 0(r18)
0008e0  1f898800  addli r18, r17, 64
0008e4  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
0008e8  42150902  vload_mask16.mz vr10{mr1}, 0(r18)
0008ec  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0008f0  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0008f4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0008f8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0008fc  46108802  vstore_mask16.mz vr8{mr1}, 0(r16)
000900  1f88041a  addli r16, r9, 3328
000904  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000908  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00090c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
000910  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000914  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
000918  4a100802  vloads_mask16.mz vr0{mr1}, 0(r16)
00091c  1f88841a  addli r16, r9, 3392
000920  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
000924  9f8c0802  addli r25, r17, 256
000928  46105902  vstore_mask16.mz vr5{mr1}, 0(r18)
00092c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000930  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000934  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
000938  1f88041b  addli r16, r9, 3456
00093c  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
000940  9f84841b  addli r9, r9, 3520
000944  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000948  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00094c  4a140802  vloads_mask16.mz vr8{mr1}, 0(r16)
000950  1f888802  addli r16, r17, 320
000954  4a950402  vloads_mask16.mz vr10{mr1}, 0(r9)
000958  9f840803  addli r9, r17, 384
00095c  9f888803  addli r17, r17, 448
000960  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
000964  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000968  c2930402  vload_mask16.mz vr7{mr1}, 0(r9)
00096c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000970  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
000974  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000978  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00097c  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
000980  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000984  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
000988  13888105  setlt.u r16, r3, r24
00098c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000990  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000994  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000998  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00099c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0009a0  46905402  vstore_mask16.mz vr5{mr1}, 0(r9)
0009a4  46907802  vstore_mask16.mz vr7{mr1}, 0(r17)
0009a8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0009ac  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0009b0  bb4b08fe  bneq r16, zero, -272
0009b4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0009b8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0009bc  1f010002  addli r2, zero, 256
0009c0  e30c4fd4  loadli.w r25,  -5600(r30)
0009c4  6a7101c0  vsrl.p vr2, r2, vr0
0009c8  ea7111c0  vsrl.p vr3, r2, vr1
0009cc  1f010001  addli r2, zero, 128
0009d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009d4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009d8  6a7101c0  vsrl.p vr2, r2, vr0
0009dc  ea7111c0  vsrl.p vr3, r2, vr1
0009e0  1f018000  addli r2, zero, 64
0009e4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009e8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009ec  6a7101c0  vsrl.p vr2, r2, vr0
0009f0  ea7111c0  vsrl.p vr3, r2, vr1
0009f4  1f014000  addli r2, zero, 32
0009f8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009fc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a00  6a7101c0  vsrl.p vr2, r2, vr0
000a04  ea7111c0  vsrl.p vr3, r2, vr1
000a08  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000a0c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a10  fa940040  vextracti.f r9, 0(vr1)
000a14  7a110040  vextracti.f r2, 0(vr0)
000a18  8be12510  add.f.rn r3, r11, r2
000a1c  8be49910  add.f.rn r9, r19, r9
000a20  2b680000  lui r16, 6
000a24  ab680000  lui r17, 6
000a28  9bb52c00  slli r11, r25, 2
000a2c  1f010000  addli r2, zero, 0
000a30  1f080800  addli r16, r16, 0
000a34  9f880804  addli r17, r17, 512
000a38  1f090800  addli r18, r16, 0
000a3c  9f890800  addli r19, r17, 0
000a40  0b982511  add.s r16, r11, r18
000a44  8b983511  add.s r17, r11, r19
000a48  73e09800  stores.w r9, 0(r17)
000a4c  73603800  stores.w r3, 0(r16)
000a50  9b944500  ori r9, r11, 4
000a54  00a00300  mfence { lm, sm, gm }
000a58  e3018fd5  loadli.w r3,  -5440(r30)
000a5c  8b952411  add.s r11, r9, r18
000a60  8b943411  add.s r9, r9, r19
000a64  80a10104  csr_set csr3, r3
000a68  9b81ec07  andi r3, r25, 126
000a6c  00d00100  sync_group
000a70  efc50500  loads.w r11, 0(r11)
000a74  efc40400  loads.w r9, 0(r9)
000a78  9bb12100  slli r3, r3, 2
000a7c  0b982111  add.s r16, r3, r18
000a80  8b913111  add.s r3, r3, r19
000a84  6f480800  loads.w r16, 0(r16)
000a88  efc10100  loads.w r3, 0(r3)
000a8c  8be50511  add.f.rn r11, r11, r16
000a90  2b08003a  lui r16, 237568
000a94  8be13410  add.f.rn r3, r9, r3
000a98  8be40521  mul.f.rn r9, r11, r16
000a9c  8be10121  mul.f.rn r3, r3, r16
000aa0  8be59420  mul.f.rn r11, r9, r9
000aa4  8be40458  neg.f r9, r9
000aa8  8be1b118  sub.f.rn r3, r3, r11
000aac  e3053f00  loadli.w r11,  24(r30)
000ab0  8be1b110  add.f.rn r3, r3, r11
000ab4  9f050000  addli r11, zero, 0
000ab8  8f810108  sqrt.f.rn r3, r3
000abc  8f813618  div.f.rn r3, r13, r3
000ac0  e3080fd7  loadli.w r17,  -5248(r30)
000ac4  63098fd6  loadli.w r18,  -5312(r30)
000ac8  0b182a10  add.s r16, r20, r2
000acc  9f0c8800  addli r25, r16, 64
000ad0  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
000ad4  8b982810  add.s r17, r17, r2
000ad8  0b192910  add.s r18, r18, r2
000adc  c2900c02  vload_mask16.mz vr1{mr1}, 0(r25)
000ae0  9f898800  addli r19, r17, 64
000ae4  4a910802  vloads_mask16.mz vr2{mr1}, 0(r17)
000ae8  4a120902  vloads_mask16.mz vr4{mr1}, 0(r18)
000aec  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
000af0  9f098900  addli r19, r18, 64
000af4  12900402  vadd.f.mz.rn vr0{mr1}, r9, vr0
000af8  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
000afc  9f894500  addli r19, r11, 32
000b00  92901402  vadd.f.mz.rn vr1{mr1}, r9, vr1
000b04  93893207  setle.u r19, r5, r19
000b08  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
000b0c  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
000b10  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
000b14  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
000b18  46104802  vstore_mask16.mz vr4{mr1}, 0(r16)
000b1c  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
000b20  bb910900  bneq r19, zero, 100
000b24  9f8c0801  addli r25, r17, 128
000b28  9f090801  addli r19, r16, 128
000b2c  1f088801  addli r16, r16, 192
000b30  9f888801  addli r17, r17, 192
000b34  9f858500  addli r11, r11, 64
000b38  1f010102  addli r2, r2, 256
000b3c  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
000b40  9f0c0901  addli r25, r18, 128
000b44  1f098901  addli r18, r18, 192
000b48  42900902  vload_mask16.mz vr0{mr1}, 0(r19)
000b4c  c2100802  vload_mask16.mz vr1{mr1}, 0(r16)
000b50  4a920802  vloads_mask16.mz vr4{mr1}, 0(r17)
000b54  93885504  setlt.u r17, r11, r5
000b58  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
000b5c  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
000b60  12900402  vadd.f.mz.rn vr0{mr1}, r9, vr0
000b64  92901402  vadd.f.mz.rn vr1{mr1}, r9, vr1
000b68  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
000b6c  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
000b70  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
000b74  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
000b78  46903902  vstore_mask16.mz vr3{mr1}, 0(r19)
000b7c  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
000b80  3b8d08fe  bneq r17, zero, -192
000b84  1f018fd7  addli r2, r30, -5184
000b88  9f018fd7  addli r3, r30, -5184
000b8c  9f040000  addli r9, zero, 0
000b90  00a00000  mfence { lm }
000b94  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000b98  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000b9c  9f858100  addli r11, r3, 64
000ba0  9f844400  addli r9, r9, 32
000ba4  9f810101  addli r3, r3, 128
000ba8  6a201622  vor.u.mz vr0{mr1}, r12, vr1
000bac  ea221722  vor.u.mz vr5{mr1}, r14, vr1
000bb0  42910502  vload_mask16.mz vr2{mr1}, 0(r11)
000bb4  93855404  setlt.u r11, r9, r5
000bb8  6e3230c2  vsrl.s.mz vr4{mr1}, vr0, vr3
000bbc  6e3020c2  vsrl.s.mz vr0{mr1}, vr0, vr2
000bc0  6a324302  vand.s.mz vr4{mr1}, r6, vr4
000bc4  6a300302  vand.s.mz vr0{mr1}, r6, vr0
000bc8  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
000bcc  e69101c0  vabs.f vr3, vr3
000bd0  16300102  vadd.s.mz vr0{mr1}, vr2, vr0
000bd4  661101c0  vabs.f vr2, vr2
000bd8  12b24a02  vadd.s.mz vr4{mr1}, r21, vr4
000bdc  72213242  vlt.u.mz mr2{mr1}, r4, vr3
000be0  12b00a02  vadd.s.mz vr0{mr1}, r21, vr0
000be4  6a324b02  vand.s.mz vr4{mr1}, r22, vr4
000be8  6a300b02  vand.s.mz vr0{mr1}, r22, vr0
000bec  6a221e34  vor.u.mh vr4{mr2}, r28, vr1
000bf0  72212242  vlt.u.mz mr2{mr1}, r4, vr2
000bf4  6aa11d22  vor.u.mz vr2{mr1}, r27, vr1
000bf8  6a201e34  vor.u.mh vr0{mr2}, r28, vr1
000bfc  ea201522  vor.u.mz vr1{mr1}, r10, vr1
000c00  eeb142c2  vsrl.s.mz vr3{mr1}, vr5, vr4
000c04  6e3241c2  vsrl.s.mz vr4{mr1}, vr2, vr4
000c08  eeb202c2  vsrl.s.mz vr5{mr1}, vr5, vr0
000c0c  6e3001c2  vsrl.s.mz vr0{mr1}, vr2, vr0
000c10  6ab13002  vand.s.mz vr2{mr1}, r1, vr3
000c14  6a324d02  vand.s.mz vr4{mr1}, r26, vr4
000c18  eab15002  vand.s.mz vr3{mr1}, r1, vr5
000c1c  6a300d02  vand.s.mz vr0{mr1}, r26, vr0
000c20  6ab12622  vor.s.mz vr2{mr1}, r13, vr2
000c24  6ab24622  vor.s.mz vr4{mr1}, r13, vr4
000c28  6ab00622  vor.s.mz vr0{mr1}, r13, vr0
000c2c  eab13622  vor.s.mz vr3{mr1}, r13, vr3
000c30  06110120  vfloat2fp16_l.rz vr2, vr2
000c34  06500020  vfloat2fp16_h.rz vr0, vr0
000c38  06d10120  vfloat2fp16_h.rz vr2, vr3
000c3c  06100220  vfloat2fp16_l.rz vr0, vr4
000c40  eeb020a2  vsll.s.mz vr1{mr1}, vr1, vr2
000c44  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000c48  ea301402  vand.s.mz vr1{mr1}, r8, vr1
000c4c  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
000c50  46000102  vstore.mz vr0{mr1}, 0(r2)
000c54  1f018100  addli r2, r2, 64
000c58  bbfc05fe  bneq r11, zero, -196
000c5c  9f017fd5  addli r3, r30, -5448
000c60  6b580f00  load.d r[17:18], 0(r30)
000c64  e3056fd4  loadli.w r11,  -5584(r30)
000c68  2b0100f0  lui r2, 983040
000c6c  6bd90100  load.d r[19:20], 0(r3)
000c70  00a00000  mfence { lm }
000c74  17912500  or r2, r11, r2
000c78  0b282811  add.ul r[17:18], r[17:18], r[19:20]
000c7c  1f797000  addli r18, zero, 63
000c80  7f314801  s_lm2gm r2, r20, 0(r[17:18])
000c84  1f018fd4  addli r2, r30, -5568
000c88  00a00200  mfence { lm, gm }
000c8c  e34c1f00  loadli.w r25,  12(r30)
000c90  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
000c94  e3047fd4  loadli.w r9,  -5576(r30)
000c98  e3416fd4  loadli.w r3,  -5580(r30)
000c9c  e3098fd5  loadli.w r19,  -5440(r30)
000ca0  8b939310  add.s r7, r7, r9
000ca4  3fe093fd  blt.s r7, r25, -2024
000ca8  abf00000  lui r1, 15
000cac  9b90f0ff  ori r1, r1, 4095
000cb0  80a10004  csr_set csr3, r1
000cb4  00d00100  sync_group
000cb8  5b640b00  j 23328
000cbc  e3403f00  loadli.w r1,  28(r30)
000cc0  37ca000a  beq r1, zero, 5776
000cc4  e3002f00  loadli.w r1,  16(r30)
000cc8  1f010010  addli r2, zero, 2048
000ccc  3baa2012  bneq r1, r2, 9864
000cd0  00350002  core_id r10
000cd4  9f200000  addli r1, zero, 2
000cd8  377e1526  beq r10, r1, 20380
000cdc  9f100000  addli r1, zero, 1
000ce0  376d1526  beq r10, r1, 20312
000ce4  bb2e0526  bneq r10, zero, 20392
000ce8  9f000040  addli r1, zero, 8192
000cec  2b0100f0  lui r2, 983040
000cf0  97902000  or r1, r1, r2
000cf4  2b110200  lui r2, 33
000cf8  1f010100  addli r2, r2, 0
000cfc  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000d00  dbf10900  j 20364
000d04  e3403f00  loadli.w r1,  28(r30)
000d08  37db0010  beq r1, zero, 8916
000d0c  80300002  core_id r1
000d10  1f210000  addli r2, zero, 2
000d14  37dd2024  beq r1, r2, 19284
000d18  1f110000  addli r2, zero, 1
000d1c  b7d42022  beq r1, r2, 17716
000d20  bb9d0024  bneq r1, zero, 19300
000d24  63012f00  loadli.w r2,  16(r30)
000d28  ab0100f0  lui r3, 983040
000d2c  1b311100  slli r2, r2, 1
000d30  17113100  or r2, r2, r3
000d34  abd10100  lui r3, 29
000d38  9f810100  addli r3, r3, 0
000d3c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000d40  db680900  j 19268
000d44  e3002f00  loadli.w r1,  16(r30)
000d48  1f010010  addli r2, zero, 2048
000d4c  3be02008  bneq r1, r2, 4120
000d50  e3403f00  loadli.w r1,  28(r30)
000d54  b7d1001c  beq r1, zero, 14452
000d58  803b0002  core_id r23
000d5c  abd70000  lui r15, 13
000d60  00510102  load_param_i r2, 2
000d64  1f150000  addli r10, zero, 1
000d68  9f058fd7  addli r11, r30, -5184
000d6c  1f068000  addli r12, zero, 64
000d70  9f060010  addli r13, zero, 2048
000d74  9bb05b00  slli r1, r23, 5
000d78  9b315100  slli r3, r2, 5
000d7c  9f8707f0  addli r15, r15, -2048
000d80  1f870000  addli r14, r1, 0
000d84  33080728  zext_int2long r[17:18], r14
000d88  2b0900f0  lui r18, 983040
000d8c  1738a802  sll.d r[17:18], r[17:18], r10
000d90  17192601  or r18, r12, r18
000d94  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000d98  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000d9c  1b382700  slli r16, r14, 2
000da0  0b97e110  add.s r14, r3, r14
000da4  00a00200  mfence { lm, gm }
000da8  42800502  vload.mz vr0{mr1}, 0(r11)
000dac  9308d704  setlt.u r17, r14, r13
000db0  0b18f810  add.s r16, r16, r15
000db4  1f098800  addli r18, r16, 64
000db8  86300000  vfp162float_l.rn vr1, vr0
000dbc  06700000  vfp162float_h.rn vr0, vr0
000dc0  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000dc4  4e100902  vstores_mask16.mz vr0{mr1}, 0(r18)
000dc8  bbfe08fe  bneq r17, zero, -68
000dcc  abf20000  lui r5, 15
000dd0  1bb57b00  slli r10, r23, 7
000dd4  1b327100  slli r4, r2, 7
000dd8  1f160000  addli r12, zero, 1
000ddc  9f068fd7  addli r13, r30, -5184
000de0  1f078000  addli r14, zero, 64
000de4  1f080010  addli r16, zero, 2048
000de8  9f880000  addli r17, r1, 0
000dec  00a00000  mfence { lm }
000df0  9f8202f0  addli r5, r5, -2048
000df4  8b155510  add.s r11, r10, r5
000df8  33890828  zext_int2long r[19:20], r17
000dfc  2b0a00f0  lui r20, 983040
000e00  8b983810  add.s r17, r17, r3
000e04  1739c902  sll.d r[19:20], r[19:20], r12
000e08  171a4701  or r20, r14, r20
000e0c  0b292311  add.ul r[19:20], r[7:8], r[19:20]
000e10  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
000e14  13890805  setlt.u r18, r17, r16
000e18  9f898500  addli r19, r11, 64
000e1c  00a00200  mfence { lm, gm }
000e20  42800602  vload.mz vr0{mr1}, 0(r13)
000e24  86300000  vfp162float_l.rn vr1, vr0
000e28  06700000  vfp162float_h.rn vr0, vr0
000e2c  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
000e30  8b954510  add.s r11, r11, r4
000e34  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
000e38  3b0f09fe  bneq r18, zero, -64
000e3c  ab130100  lui r7, 17
000e40  9f058fd7  addli r11, r30, -5184
000e44  1f068000  addli r12, zero, 64
000e48  9f060010  addli r13, zero, 2048
000e4c  00a00000  mfence { lm }
000e50  9f8303f0  addli r7, r7, -2048
000e54  0b137510  add.s r6, r10, r7
000e58  1f150000  addli r10, zero, 1
000e5c  33880028  zext_int2long r[17:18], r1
000e60  2b0700f0  lui r14, 983040
000e64  8b903010  add.s r1, r1, r3
000e68  1738a802  sll.d r[17:18], r[17:18], r10
000e6c  1717e600  or r14, r12, r14
000e70  0b280411  add.ul r[17:18], r[9:10], r[17:18]
000e74  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000e78  1387d004  setlt.u r14, r1, r13
000e7c  1f088300  addli r16, r6, 64
000e80  00a00200  mfence { lm, gm }
000e84  42800502  vload.mz vr0{mr1}, 0(r11)
000e88  86300000  vfp162float_l.rn vr1, vr0
000e8c  06700000  vfp162float_h.rn vr0, vr0
000e90  4e101302  vstores_mask16.mz vr1{mr1}, 0(r6)
000e94  0b134310  add.s r6, r6, r4
000e98  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
000e9c  3b0f07fe  bneq r14, zero, -64
000ea0  abf00000  lui r1, 15
000ea4  00a00300  mfence { lm, sm, gm }
000ea8  9b811b00  andi r3, r23, 1
000eac  1f020006  addli r4, zero, 768
000eb0  9b90f0ff  ori r1, r1, 4095
000eb4  80a10004  csr_set csr3, r1
000eb8  9f000006  addli r1, zero, 768
000ebc  00d00100  sync_group
000ec0  67083fd6  storeli.w r3, -5248(r30)
000ec4  37a00100  beq r3, zero, 8
000ec8  1f02000a  addli r4, zero, 1280
000ecc  e3411f00  loadli.w r3,  12(r30)
000ed0  1f130000  addli r6, zero, 1
000ed4  3f94612c  blt.s r3, r6, 22788
000ed8  e3010fd7  loadli.w r3,  -5248(r30)
000edc  9f068fd7  addli r13, r30, -5184
000ee0  1b441100  srli r8, r2, 1
000ee4  1f014200  addli r2, r4, 32
000ee8  1b351200  slli r10, r4, 1
000eec  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000ef0  2b390100  lui r18, 19
000ef4  1f030000  addli r6, zero, 0
000ef8  9bc41b00  srli r9, r23, 1
000efc  9f787000  addli r17, zero, 63
000f00  1f0a0005  addli r20, zero, 640
000f04  1f0c4000  addli r24, zero, 32
000f08  1f0e0003  addli r28, zero, 384
000f0c  670c2fd4  storeli.w r2, -5440(r30)
000f10  0b11d510  add.s r2, r10, r13
000f14  1f0909f4  addli r18, r18, -1536
000f18  8b901120  mul.s r1, r3, r1
000f1c  67041fd6  storeli.w r1, -5312(r30)
000f20  9bb02000  slli r1, r1, 2
000f24  8b955010  add.s r11, r1, r5
000f28  0b967010  add.s r12, r1, r7
000f2c  9b302200  slli r1, r4, 2
000f30  8b90d010  add.s r1, r1, r13
000f34  9f8080ff  addli r1, r1, -64
000f38  e70b1fd4  storeli.w r1, -5448(r30)
000f3c  9f0081ff  addli r1, r2, -64
000f40  1f018fd4  addli r2, r30, -5568
000f44  670b1fd4  storeli.w r1, -5456(r30)
000f48  abf0ffff  lui r1, 1048575
000f4c  00a00000  mfence { lm }
000f50  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000f54  1f810c00  addli r2, r25, 0
000f58  ab3c0100  lui r25, 19
000f5c  9b9000f8  ori r1, r1, 3968
000f60  9f8c0cf0  addli r25, r25, -2048
000f64  e7431fd4  storeli.w r1, -5572(r30)
000f68  abf00000  lui r1, 15
000f6c  1b9df0ff  ori r26, r1, 4095
000f70  5b040000  j 32
000f74  00a00300  mfence { lm, sm, gm }
000f78  80210d04  csr_set csr3, r26
000f7c  00d00100  sync_group
000f80  63411f00  loadli.w r2,  12(r30)
000f84  0b138310  add.s r6, r6, r8
000f88  3f202300  blt.s r6, r2, 8
000f8c  dba3ffff  j -740
000f90  8b109310  add.s r1, r6, r9
000f94  cb0f11fe  ble.s r2, r1, -32
000f98  63011f00  loadli.w r2,  8(r30)
000f9c  8b028330  div.u r5, r6, r8
000fa0  9f110000  addli r3, zero, 1
000fa4  ab0300f0  lui r7, 983040
000fa8  8b902010  add.s r1, r1, r2
000fac  63018fd6  loadli.w r2,  -5312(r30)
000fb0  9bb0b000  slli r1, r1, 11
000fb4  97902000  or r1, r1, r2
000fb8  b3900028  sext_int2long r[2:3], r1
000fbc  17b13002  sll.d r[3:4], r[2:3], r3
000fc0  9bb06200  slli r1, r5, 6
000fc4  9f027fd6  addli r5, r30, -5320
000fc8  ebda0200  load.d r[22:23], 0(r5)
000fcc  97127500  or r5, r10, r7
000fd0  9b800004  andi r1, r1, 64
000fd4  17977001  or r14, r1, r23
000fd8  8baa2a10  add.ul r[22:23], r[22:23], r[3:4]
000fdc  ffa2da00  l_gm2lm r5, r13, 0(r[22:23])
000fe0  00a00200  mfence { lm, gm }
000fe4  e3006fd5  loadli.w r1,  -5456(r30)
000fe8  e3027fd5  loadli.w r5,  -5448(r30)
000fec  e3038fd5  loadli.w r7,  -5440(r30)
000ff0  c2800002  vload.mz vr1{mr1}, 0(r1)
000ff4  9f83c3ff  addli r7, r7, -32
000ff8  9f8982ff  addli r19, r5, -64
000ffc  9f8080ff  addli r1, r1, -64
001000  13887804  setlt.u r16, r17, r7
001004  06f10000  vfp162float_h.rn vr2, vr1
001008  86b00000  vfp162float_l.rn vr1, vr1
00100c  46902202  vstore_mask16.mz vr2{mr1}, 0(r5)
001010  9f8202ff  addli r5, r5, -128
001014  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
001018  3b6f08fe  bneq r16, zero, -40
00101c  00a00000  mfence { lm }
001020  e3000fd7  loadli.w r1,  -5248(r30)
001024  3bc60000  bneq r1, zero, 400
001028  9f008fd4  addli r1, r30, -5568
00102c  63487fd4  loadli.w r16,  -5572(r30)
001030  9f020000  addli r5, zero, 0
001034  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
001038  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00103c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
001040  12323002  vadd.s.mz vr4{mr1}, zero, vr3
001044  8b90f210  add.s r1, r5, r15
001048  8b935610  add.s r7, r13, r5
00104c  1f080801  addli r16, r16, 128
001050  9f820204  addli r5, r5, 512
001054  9f890001  addli r19, r1, 128
001058  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
00105c  9f8a8000  addli r21, r1, 64
001060  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
001064  1f8b8301  addli r22, r7, 192
001068  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
00106c  9f898001  addli r19, r1, 192
001070  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
001074  9f8a8300  addli r21, r7, 64
001078  c2150b02  vload_mask16.mz vr11{mr1}, 0(r22)
00107c  ca930902  vloads_mask16.mz vr7{mr1}, 0(r19)
001080  9f890301  addli r19, r7, 128
001084  42950a02  vload_mask16.mz vr10{mr1}, 0(r21)
001088  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
00108c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001090  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
001094  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
001098  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00109c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0010a0  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
0010a4  46908902  vstore_mask16.mz vr8{mr1}, 0(r19)
0010a8  9f890002  addli r19, r1, 256
0010ac  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0010b0  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0010b4  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0010b8  46905a02  vstore_mask16.mz vr5{mr1}, 0(r21)
0010bc  4a900902  vloads_mask16.mz vr0{mr1}, 0(r19)
0010c0  9f898002  addli r19, r1, 320
0010c4  46106b02  vstore_mask16.mz vr6{mr1}, 0(r22)
0010c8  1f8b0302  addli r22, r7, 256
0010cc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0010d0  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0010d4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0010d8  4a930902  vloads_mask16.mz vr6{mr1}, 0(r19)
0010dc  9f890003  addli r19, r1, 384
0010e0  c2130b02  vload_mask16.mz vr7{mr1}, 0(r22)
0010e4  9f808003  addli r1, r1, 448
0010e8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0010ec  4a940902  vloads_mask16.mz vr8{mr1}, 0(r19)
0010f0  9f898302  addli r19, r7, 320
0010f4  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
0010f8  9f800303  addli r1, r7, 384
0010fc  9f838303  addli r7, r7, 448
001100  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
001104  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001108  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00110c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001110  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001114  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001118  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00111c  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
001120  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001124  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
001128  93094805  setlt.u r19, r16, r20
00112c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001130  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001134  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001138  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00113c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001140  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001144  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001148  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00114c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001150  bbdb09fe  bneq r19, zero, -268
001154  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001158  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00115c  9f000002  addli r1, zero, 256
001160  6af100c0  vsrl.p vr2, r1, vr0
001164  eaf110c0  vsrl.p vr3, r1, vr1
001168  9f000001  addli r1, zero, 128
00116c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001170  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001174  6af100c0  vsrl.p vr2, r1, vr0
001178  eaf110c0  vsrl.p vr3, r1, vr1
00117c  9f008000  addli r1, zero, 64
001180  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001184  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001188  6af100c0  vsrl.p vr2, r1, vr0
00118c  eaf110c0  vsrl.p vr3, r1, vr1
001190  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001194  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001198  6a710cc0  vsrl.p vr2, r24, vr0
00119c  ea711cc0  vsrl.p vr3, r24, vr1
0011a0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0011a4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0011a8  fa100040  vextracti.f r1, 0(vr0)
0011ac  fa930040  vextracti.f r7, 0(vr1)
0011b0  db650000  j 812
0011b4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0011b8  abf0ffff  lui r1, 1048575
0011bc  1f080000  addli r16, zero, 0
0011c0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0011c4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0011c8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0011cc  9b9900f8  ori r19, r1, 3968
0011d0  8b930711  add.s r7, r15, r16
0011d4  8b920611  add.s r5, r13, r16
0011d8  9f890901  addli r19, r19, 128
0011dc  1f080804  addli r16, r16, 512
0011e0  1f8b0331  addli r22, r7, 6272
0011e4  9f800330  addli r1, r7, 6144
0011e8  9f8d8331  addli r27, r7, 6336
0011ec  9f8a0218  addli r21, r5, 3072
0011f0  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
0011f4  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
0011f8  9f808330  addli r1, r7, 6208
0011fc  ca940d02  vloads_mask16.mz vr9{mr1}, 0(r27)
001200  1f8b0219  addli r22, r5, 3200
001204  42930a02  vload_mask16.mz vr6{mr1}, 0(r21)
001208  9f8d8219  addli r27, r5, 3264
00120c  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
001210  42150b02  vload_mask16.mz vr10{mr1}, 0(r22)
001214  9f808218  addli r1, r5, 3136
001218  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
00121c  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
001220  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001224  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
001228  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
00122c  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
001230  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001234  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
001238  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
00123c  9f8a0332  addli r21, r7, 6400
001240  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
001244  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
001248  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00124c  46107b02  vstore_mask16.mz vr7{mr1}, 0(r22)
001250  1f8b021a  addli r22, r5, 3328
001254  c2130b02  vload_mask16.mz vr7{mr1}, 0(r22)
001258  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00125c  9f80021b  addli r1, r5, 3456
001260  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
001264  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001268  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
00126c  9f8a8332  addli r21, r7, 6464
001270  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001274  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001278  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
00127c  9f8a0333  addli r21, r7, 6528
001280  9f838333  addli r7, r7, 6592
001284  4a940a02  vloads_mask16.mz vr8{mr1}, 0(r21)
001288  9f8a821a  addli r21, r5, 3392
00128c  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
001290  9f82821b  addli r5, r5, 3520
001294  9383c905  setlt.u r7, r19, r28
001298  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
00129c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0012a0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0012a4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0012a8  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
0012ac  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0012b0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0012b4  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
0012b8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0012bc  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
0012c0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0012c4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0012c8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0012cc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0012d0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0012d4  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0012d8  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
0012dc  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0012e0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0012e4  bbbb03fe  bneq r7, zero, -276
0012e8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0012ec  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0012f0  9f000002  addli r1, zero, 256
0012f4  9f090000  addli r19, zero, 0
0012f8  eaf110c0  vsrl.p vr3, r1, vr1
0012fc  6af100c0  vsrl.p vr2, r1, vr0
001300  9f000001  addli r1, zero, 128
001304  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001308  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00130c  eaf110c0  vsrl.p vr3, r1, vr1
001310  6af100c0  vsrl.p vr2, r1, vr0
001314  9f008000  addli r1, zero, 64
001318  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00131c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001320  eaf110c0  vsrl.p vr3, r1, vr1
001324  6af100c0  vsrl.p vr2, r1, vr0
001328  abf0ffff  lui r1, 1048575
00132c  9b9200f8  ori r5, r1, 3968
001330  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001334  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001338  ea711cc0  vsrl.p vr3, r24, vr1
00133c  6a710cc0  vsrl.p vr2, r24, vr0
001340  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001344  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001348  7a980040  vextracti.f r16, 0(vr1)
00134c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001350  fa1d0040  vextracti.f r27, 0(vr0)
001354  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001358  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00135c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001360  8b903711  add.s r1, r15, r19
001364  8b933611  add.s r7, r13, r19
001368  9f820201  addli r5, r5, 128
00136c  9f890904  addli r19, r19, 512
001370  9f8a0018  addli r21, r1, 3072
001374  1f8b0019  addli r22, r1, 3200
001378  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
00137c  9f8b8301  addli r23, r7, 192
001380  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
001384  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
001388  9f8a8018  addli r21, r1, 3136
00138c  1f8b8019  addli r22, r1, 3264
001390  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
001394  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
001398  9f8a0301  addli r21, r7, 128
00139c  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
0013a0  1f8b8300  addli r22, r7, 64
0013a4  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
0013a8  42150b02  vload_mask16.mz vr10{mr1}, 0(r22)
0013ac  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0013b0  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0013b4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0013b8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0013bc  46908a02  vstore_mask16.mz vr8{mr1}, 0(r21)
0013c0  9f8a001a  addli r21, r1, 3328
0013c4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0013c8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0013cc  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0013d0  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0013d4  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
0013d8  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
0013dc  9f8a801a  addli r21, r1, 3392
0013e0  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
0013e4  9f8b0302  addli r23, r7, 256
0013e8  46105b02  vstore_mask16.mz vr5{mr1}, 0(r22)
0013ec  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0013f0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0013f4  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
0013f8  9f8a001b  addli r21, r1, 3456
0013fc  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
001400  9f80801b  addli r1, r1, 3520
001404  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001408  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00140c  4a940a02  vloads_mask16.mz vr8{mr1}, 0(r21)
001410  9f8a8302  addli r21, r7, 320
001414  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
001418  9f800303  addli r1, r7, 384
00141c  9f838303  addli r7, r7, 448
001420  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
001424  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001428  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00142c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001430  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001434  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001438  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00143c  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
001440  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001444  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
001448  938a4205  setlt.u r21, r5, r20
00144c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001450  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001454  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001458  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00145c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001460  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001464  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001468  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00146c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001470  bbcb0afe  bneq r21, zero, -272
001474  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001478  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00147c  9f000002  addli r1, zero, 256
001480  803b0002  core_id r23
001484  6af100c0  vsrl.p vr2, r1, vr0
001488  eaf110c0  vsrl.p vr3, r1, vr1
00148c  9f000001  addli r1, zero, 128
001490  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001494  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001498  6af100c0  vsrl.p vr2, r1, vr0
00149c  eaf110c0  vsrl.p vr3, r1, vr1
0014a0  9f008000  addli r1, zero, 64
0014a4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0014a8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0014ac  6af100c0  vsrl.p vr2, r1, vr0
0014b0  eaf110c0  vsrl.p vr3, r1, vr1
0014b4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0014b8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0014bc  6a710cc0  vsrl.p vr2, r24, vr0
0014c0  ea711cc0  vsrl.p vr3, r24, vr1
0014c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0014c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0014cc  fa100040  vextracti.f r1, 0(vr0)
0014d0  fa920040  vextracti.f r5, 0(vr1)
0014d4  8be01d10  add.f.rn r1, r27, r1
0014d8  8b635810  add.f.rn r7, r16, r5
0014dc  1b382700  slli r16, r14, 2
0014e0  9f020000  addli r5, zero, 0
0014e4  8b199811  add.s r19, r16, r25
0014e8  8b1a2811  add.s r21, r16, r18
0014ec  73e01900  stores.w r1, 0(r19)
0014f0  9b00e707  andi r1, r14, 126
0014f4  73e07a00  stores.w r7, 0(r21)
0014f8  9b134800  ori r7, r16, 4
0014fc  9f090000  addli r19, zero, 0
001500  00a00300  mfence { lm, sm, gm }
001504  80210d04  csr_set csr3, r26
001508  00d00100  sync_group
00150c  9bb02000  slli r1, r1, 2
001510  0b979311  add.s r14, r7, r25
001514  8b932311  add.s r7, r7, r18
001518  0b989011  add.s r16, r1, r25
00151c  6f470700  loads.w r14, 0(r14)
001520  8b902011  add.s r1, r1, r18
001524  efc30300  loads.w r7, 0(r7)
001528  6f480800  loads.w r16, 0(r16)
00152c  efc00000  loads.w r1, 0(r1)
001530  0b670711  add.f.rn r14, r14, r16
001534  2b08003a  lui r16, 237568
001538  8be01310  add.f.rn r1, r7, r1
00153c  8b630721  mul.f.rn r7, r14, r16
001540  8be00021  mul.f.rn r1, r1, r16
001544  0be77320  mul.f.rn r14, r7, r7
001548  0be80358  neg.f r16, r7
00154c  8be0e018  sub.f.rn r1, r1, r14
001550  63073f00  loadli.w r14,  24(r30)
001554  8be0e010  add.f.rn r1, r1, r14
001558  2b07803f  lui r14, 260096
00155c  8f800008  sqrt.f.rn r1, r1
001560  0f071718  div.f.rn r14, r14, r1
001564  8b905510  add.s r1, r11, r5
001568  8b935610  add.s r7, r13, r5
00156c  8b1d5610  add.s r27, r12, r5
001570  1f8b8000  addli r22, r1, 64
001574  9f8a8300  addli r21, r7, 64
001578  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
00157c  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
001580  4a920d02  vloads_mask16.mz vr4{mr1}, 0(r27)
001584  ca110b02  vloads_mask16.mz vr3{mr1}, 0(r22)
001588  1f8b8d00  addli r22, r27, 64
00158c  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
001590  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
001594  1f8b4900  addli r22, r19, 32
001598  12100802  vadd.f.mz.rn vr0{mr1}, r16, vr0
00159c  130b6207  setle.u r22, r4, r22
0015a0  92101802  vadd.f.mz.rn vr1{mr1}, r16, vr1
0015a4  0a100702  vmul.f.mz.rn vr0{mr1}, r14, vr0
0015a8  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
0015ac  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
0015b0  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
0015b4  46904302  vstore_mask16.mz vr4{mr1}, 0(r7)
0015b8  46905a02  vstore_mask16.mz vr5{mr1}, 0(r21)
0015bc  bb110b00  bneq r22, zero, 100
0015c0  1f8b0001  addli r22, r1, 128
0015c4  9f8a0301  addli r21, r7, 128
0015c8  9f838301  addli r7, r7, 192
0015cc  9f808001  addli r1, r1, 192
0015d0  9f898900  addli r19, r19, 64
0015d4  9f820202  addli r5, r5, 256
0015d8  4a110b02  vloads_mask16.mz vr2{mr1}, 0(r22)
0015dc  1f8b0d01  addli r22, r27, 128
0015e0  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
0015e4  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
0015e8  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
0015ec  93804904  setlt.u r1, r19, r4
0015f0  ca110b02  vloads_mask16.mz vr3{mr1}, 0(r22)
0015f4  1f8b8d01  addli r22, r27, 192
0015f8  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
0015fc  12100802  vadd.f.mz.rn vr0{mr1}, r16, vr0
001600  92101802  vadd.f.mz.rn vr1{mr1}, r16, vr1
001604  0a100702  vmul.f.mz.rn vr0{mr1}, r14, vr0
001608  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
00160c  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
001610  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
001614  46903a02  vstore_mask16.mz vr3{mr1}, 0(r21)
001618  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
00161c  3bad00fe  bneq r1, zero, -184
001620  9f008fd7  addli r1, r30, -5184
001624  9f028fd7  addli r5, r30, -5184
001628  9f030000  addli r7, zero, 0
00162c  00a00000  mfence { lm }
001630  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
001634  1f878200  addli r14, r5, 64
001638  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
00163c  9f834300  addli r7, r7, 32
001640  9f820201  addli r5, r5, 128
001644  c2100702  vload_mask16.mz vr1{mr1}, 0(r14)
001648  13874304  setlt.u r14, r7, r4
00164c  06110000  vfloat2fp16_l.rn vr2, vr0
001650  06d10000  vfloat2fp16_h.rn vr2, vr1
001654  46802002  vstore.mz vr2{mr1}, 0(r1)
001658  9f808000  addli r1, r1, 64
00165c  3b5f07fe  bneq r14, zero, -44
001660  eb5a0f00  load.d r[22:23], 0(r30)
001664  ab0000f0  lui r1, 983040
001668  00a00000  mfence { lm }
00166c  97101500  or r1, r10, r1
001670  0ba12a10  add.ul r[3:4], r[22:23], r[3:4]
001674  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
001678  00a00200  mfence { lm, gm }
00167c  db20ffff  j -1788
001680  e3403f00  loadli.w r1,  28(r30)
001684  b7c60014  beq r1, zero, 10672
001688  80390002  core_id r19
00168c  63012f00  loadli.w r2,  16(r30)
001690  005a0102  load_param_i r20, 2
001694  9bb05900  slli r1, r19, 5
001698  4b431100  ble.s r2, r1, 208
00169c  2b960000  lui r12, 9
0016a0  9f110000  addli r3, zero, 1
0016a4  1f058fd7  addli r10, r30, -5184
0016a8  9f058000  addli r11, zero, 64
0016ac  1b315a00  slli r2, r20, 5
0016b0  9f860000  addli r13, r1, 0
0016b4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0016b8  1f0606f0  addli r12, r12, -2048
0016bc  33880628  zext_int2long r[17:18], r13
0016c0  2b0900f0  lui r18, 983040
0016c4  17383802  sll.d r[17:18], r[17:18], r3
0016c8  17992501  or r18, r11, r18
0016cc  0b280211  add.ul r[17:18], r[5:6], r[17:18]
0016d0  7f29a800  l_gm2lm r18, r10, 0(r[17:18])
0016d4  1bb82600  slli r16, r13, 2
0016d8  8b16d110  add.s r13, r2, r13
0016dc  00a00200  mfence { lm, gm }
0016e0  c2000502  vload.mz vr1{mr1}, 0(r10)
0016e4  0b18c810  add.s r16, r16, r12
0016e8  9f088800  addli r17, r16, 64
0016ec  66411080  vmerge_l.hf vr2, vr0, vr1
0016f0  e64010a0  vmerge_h.hf vr1, vr0, vr1
0016f4  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
0016f8  4e901802  vstores_mask16.mz vr1{mr1}, 0(r17)
0016fc  3f8ff6fe  blt.s r13, r15, -64
001700  2ba20000  lui r4, 10
001704  9bb17900  slli r3, r19, 7
001708  9f120000  addli r5, zero, 1
00170c  1f058fd7  addli r10, r30, -5184
001710  9f058000  addli r11, zero, 64
001714  1f860000  addli r12, r1, 0
001718  00a00000  mfence { lm }
00171c  1f0202f0  addli r4, r4, -2048
001720  8b914110  add.s r3, r3, r4
001724  1b327a00  slli r4, r20, 7
001728  33080628  zext_int2long r[17:18], r12
00172c  ab0600f0  lui r13, 983040
001730  0b162610  add.s r12, r12, r2
001734  17385802  sll.d r[17:18], r[17:18], r5
001738  9796d500  or r13, r11, r13
00173c  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001740  ff26a800  l_gm2lm r13, r10, 0(r[17:18])
001744  9f868100  addli r13, r3, 64
001748  00a00200  mfence { lm, gm }
00174c  c2000502  vload.mz vr1{mr1}, 0(r10)
001750  66411080  vmerge_l.hf vr2, vr0, vr1
001754  e64010a0  vmerge_h.hf vr1, vr0, vr1
001758  4e902102  vstores_mask16.mz vr2{mr1}, 0(r3)
00175c  8b914110  add.s r3, r3, r4
001760  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
001764  3f1ff6fe  blt.s r12, r15, -60
001768  63012f00  loadli.w r2,  16(r30)
00176c  cb211100  ble.s r2, r1, 104
001770  2bb30000  lui r6, 11
001774  1f110000  addli r2, zero, 1
001778  9f018fd7  addli r3, r30, -5184
00177c  1f028000  addli r4, zero, 64
001780  9b325a00  slli r5, r20, 5
001784  00a00000  mfence { lm }
001788  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00178c  1f0303f0  addli r6, r6, -2048
001790  33850028  zext_int2long r[11:12], r1
001794  ab0300f0  lui r7, 983040
001798  17352502  sll.d r[11:12], r[11:12], r2
00179c  97137200  or r7, r4, r7
0017a0  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
0017a4  ff233500  l_gm2lm r7, r3, 0(r[11:12])
0017a8  9bb32000  slli r7, r1, 2
0017ac  8b901210  add.s r1, r5, r1
0017b0  00a00200  mfence { lm, gm }
0017b4  c2800102  vload.mz vr1{mr1}, 0(r3)
0017b8  8b936310  add.s r7, r7, r6
0017bc  1f858300  addli r10, r7, 64
0017c0  66411080  vmerge_l.hf vr2, vr0, vr1
0017c4  e64010a0  vmerge_h.hf vr1, vr0, vr1
0017c8  4e902302  vstores_mask16.mz vr2{mr1}, 0(r7)
0017cc  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
0017d0  3f8ff0fe  blt.s r1, r15, -64
0017d4  abf00000  lui r1, 15
0017d8  63411f00  loadli.w r2,  12(r30)
0017dc  00a00300  mfence { lm, sm, gm }
0017e0  9b90f0ff  ori r1, r1, 4095
0017e4  80a10004  csr_set csr3, r1
0017e8  00d00100  sync_group
0017ec  cb3f3127  ble.s r2, r19, 20460
0017f0  e3002f00  loadli.w r1,  16(r30)
0017f4  63412f00  loadli.w r2,  20(r30)
0017f8  1f058fd7  addli r10, r30, -5184
0017fc  9f150000  addli r11, zero, 1
001800  1f064000  addli r12, zero, 32
001804  1f787000  addli r16, zero, 63
001808  9f080002  addli r17, zero, 256
00180c  ab0a803f  lui r21, 260096
001810  ab0cffff  lui r25, 1048560
001814  2b0d807f  lui r26, 522240
001818  ab0dc07f  lui r27, 523264
00181c  abe37f00  lui r7, 2046
001820  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001824  33820008  fix2float.rn r4, r1
001828  8b912010  add.s r3, r1, r2
00182c  1bb31000  slli r6, r1, 1
001830  e7034fd4  storeli.w r4, -5576(r30)
001834  1bb22000  slli r4, r1, 2
001838  9f804000  addli r1, r1, 32
00183c  9ff1f1ff  addli r3, r3, -1
001840  67431fd4  storeli.w r1, -5580(r30)
001844  8b10a210  add.s r1, r4, r10
001848  8b922130  div.s r5, r3, r2
00184c  8b11a310  add.s r3, r6, r10
001850  2be20700  lui r4, 126
001854  9f8080ff  addli r1, r1, -64
001858  67031fd4  storeli.w r1, -5584(r30)
00185c  9f8081ff  addli r1, r3, -64
001860  e7421fd4  storeli.w r1, -5588(r30)
001864  9b302100  slli r1, r2, 2
001868  2bf100fc  lui r2, 1032207
00186c  67041fd6  storeli.w r1, -5312(r30)
001870  abf0ffff  lui r1, 1048575
001874  1b1101c0  ori r2, r2, 3072
001878  00a00000  mfence { lm }
00187c  67044fd5  storeli.w r20, -5568(r30)
001880  e7436fd4  storeli.w r6, -5572(r30)
001884  9b90f0ff  ori r1, r1, 4095
001888  670c1fd4  storeli.w r1, -5440(r30)
00188c  ab700000  lui r1, 7
001890  1b9cf0ff  ori r24, r1, 4095
001894  ab00ff03  lui r1, 16368
001898  9b94f03f  ori r9, r1, 1023
00189c  9f000fd7  addli r1, r30, -5248
0018a0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0018a4  db080000  j 68
0018a8  9f016fd5  addli r3, r30, -5456
0018ac  6b590f00  load.d r[19:20], 0(r30)
0018b0  63437fd4  loadli.w r6,  -5572(r30)
0018b4  ab0000f0  lui r1, 983040
0018b8  1f787000  addli r16, zero, 63
0018bc  6bdb0100  load.d r[23:24], 0(r3)
0018c0  00a00000  mfence { lm }
0018c4  97101300  or r1, r6, r1
0018c8  0b2b6911  add.ul r[23:24], r[19:20], r[23:24]
0018cc  e3097fd5  loadli.w r19,  -5448(r30)
0018d0  ff30ab00  s_lm2gm r1, r10, 0(r[23:24])
0018d4  00a00200  mfence { lm, gm }
0018d8  e3401f00  loadli.w r1,  12(r30)
0018dc  8b193a11  add.s r19, r20, r19
0018e0  3fa01900  blt.s r19, r1, 8
0018e4  dbde0900  j 20212
0018e8  e3001f00  loadli.w r1,  8(r30)
0018ec  9f017fd6  addli r3, r30, -5320
0018f0  e70b3fd5  storeli.w r19, -5448(r30)
0018f4  8b901910  add.s r1, r19, r1
0018f8  6bd90100  load.d r[19:20], 0(r3)
0018fc  9f016fd5  addli r3, r30, -5456
001900  8b90f020  mul.s r1, r1, r15
001904  339b0028  sext_int2long r[23:24], r1
001908  ab0000f0  lui r1, 983040
00190c  173bbb02  sll.d r[23:24], r[23:24], r11
001910  97101300  or r1, r6, r1
001914  73b06101  store.d r[23:24], 0(r3)
001918  0b2b6911  add.ul r[23:24], r[19:20], r[23:24]
00191c  ff20ab00  l_gm2lm r1, r10, 0(r[23:24])
001920  00a00200  mfence { lm, gm }
001924  bff0c700  blt.s r15, r12, 60
001928  e3405fd4  loadli.w r1,  -5588(r30)
00192c  e3016fd4  loadli.w r3,  -5584(r30)
001930  63436fd4  loadli.w r6,  -5580(r30)
001934  c2800002  vload.mz vr1{mr1}, 0(r1)
001938  1f03c3ff  addli r6, r6, -32
00193c  9f8681ff  addli r13, r3, -64
001940  9f8080ff  addli r1, r1, -64
001944  13046804  setlt.u r8, r16, r6
001948  664110a0  vmerge_h.hf vr2, vr0, vr1
00194c  e6401080  vmerge_l.hf vr1, vr0, vr1
001950  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
001954  9f8101ff  addli r3, r3, -128
001958  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
00195c  3b6f04fe  bneq r8, zero, -40
001960  00a00000  mfence { lm }
001964  3f88b200  blt.s r5, r11, 512
001968  1f090000  addli r18, zero, 0
00196c  9f000000  addli r1, zero, 0
001970  9f060000  addli r13, zero, 0
001974  db0e0000  j 116
001978  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
00197c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001980  9f010001  addli r3, zero, 128
001984  9f960600  addli r13, r13, 1
001988  6af108c0  vsrl.p vr2, r17, vr0
00198c  eaf118c0  vsrl.p vr3, r17, vr1
001990  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001994  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001998  6af101c0  vsrl.p vr2, r3, vr0
00199c  eaf111c0  vsrl.p vr3, r3, vr1
0019a0  9f018000  addli r3, zero, 64
0019a4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0019a8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0019ac  6af101c0  vsrl.p vr2, r3, vr0
0019b0  eaf111c0  vsrl.p vr3, r3, vr1
0019b4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0019b8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0019bc  6a7106c0  vsrl.p vr2, r12, vr0
0019c0  ea7116c0  vsrl.p vr3, r12, vr1
0019c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0019c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0019cc  fa110040  vextracti.f r3, 0(vr0)
0019d0  7a930040  vextracti.f r6, 0(vr1)
0019d4  0b693910  add.f.rn r18, r18, r3
0019d8  9f010fd7  addli r3, r30, -5248
0019dc  8be06010  add.f.rn r1, r1, r6
0019e0  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0019e4  37a65600  beq r13, r5, 392
0019e8  9f810600  addli r3, r13, 0
0019ec  37401701  beq r14, r17, 16
0019f0  e3018fd5  loadli.w r3,  -5440(r30)
0019f4  97a13600  xor r3, r13, r3
0019f8  8b913210  add.s r3, r5, r3
0019fc  0b93e120  mul.s r6, r3, r14
001a00  12320002  vadd.s.mz vr4{mr1}, zero, vr0
001a04  92310002  vadd.s.mz vr3{mr1}, zero, vr0
001a08  12310002  vadd.s.mz vr2{mr1}, zero, vr0
001a0c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001a10  0b936718  sub.s r6, r15, r6
001a14  0b18e340  min.s r16, r6, r14
001a18  bf0db8fe  blt.s r16, r11, -160
001a1c  63038fd6  loadli.w r6,  -5312(r30)
001a20  2b940000  lui r8, 9
001a24  1f0b0000  addli r22, zero, 0
001a28  1f0e8fd7  addli r28, r30, -5184
001a2c  1f0404f0  addli r8, r8, -2048
001a30  8b1b3320  mul.s r23, r6, r3
001a34  9f010fd7  addli r3, r30, -5248
001a38  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
001a3c  92304002  vadd.s.mz vr1{mr1}, zero, vr4
001a40  12314002  vadd.s.mz vr2{mr1}, zero, vr4
001a44  92314002  vadd.s.mz vr3{mr1}, zero, vr4
001a48  0b137411  add.s r6, r8, r23
001a4c  8b117e11  add.s r3, r28, r23
001a50  1f058300  addli r10, r6, 64
001a54  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
001a58  9f098301  addli r19, r6, 192
001a5c  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
001a60  1f8a8101  addli r20, r3, 192
001a64  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
001a68  1f050301  addli r10, r6, 128
001a6c  4a940902  vloads_mask16.mz vr8{mr1}, 0(r19)
001a70  9f890101  addli r19, r3, 128
001a74  42100a02  vload_mask16.mz vr0{mr1}, 0(r20)
001a78  ca130502  vloads_mask16.mz vr7{mr1}, 0(r10)
001a7c  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
001a80  1f858100  addli r10, r3, 64
001a84  42150502  vload_mask16.mz vr10{mr1}, 0(r10)
001a88  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001a8c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001a90  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001a94  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001a98  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001a9c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001aa0  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
001aa4  46106502  vstore_mask16.mz vr6{mr1}, 0(r10)
001aa8  1f058b00  addli r10, r22, 64
001aac  46100a02  vstore_mask16.mz vr0{mr1}, 0(r20)
001ab0  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001ab4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001ab8  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001abc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001ac0  46907902  vstore_mask16.mz vr7{mr1}, 0(r19)
001ac4  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001ac8  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001acc  cb3aa8fe  ble.s r16, r10, -340
001ad0  9f090302  addli r19, r6, 256
001ad4  1f0a8302  addli r20, r6, 320
001ad8  1f850102  addli r10, r3, 256
001adc  1f0b0b01  addli r22, r22, 128
001ae0  1f040404  addli r8, r8, 512
001ae4  1f0e0e04  addli r28, r28, 512
001ae8  4a900902  vloads_mask16.mz vr0{mr1}, 0(r19)
001aec  9f090303  addli r19, r6, 384
001af0  1f038303  addli r6, r6, 448
001af4  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
001af8  42130502  vload_mask16.mz vr6{mr1}, 0(r10)
001afc  ca930902  vloads_mask16.mz vr7{mr1}, 0(r19)
001b00  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
001b04  1f830103  addli r6, r3, 384
001b08  9f898102  addli r19, r3, 320
001b0c  9f818103  addli r3, r3, 448
001b10  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
001b14  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
001b18  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
001b1c  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
001b20  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001b24  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001b28  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001b2c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001b30  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
001b34  46905902  vstore_mask16.mz vr5{mr1}, 0(r19)
001b38  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
001b3c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001b40  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001b44  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
001b48  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001b4c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001b50  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001b54  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001b58  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001b5c  bf3b0bff  blt.s r22, r16, -276
001b60  5bc3ffff  j -488
001b64  9f000000  addli r1, zero, 0
001b68  1f090000  addli r18, zero, 0
001b6c  aba90000  lui r19, 10
001b70  2bba0000  lui r20, 11
001b74  1f058fd7  addli r10, r30, -5184
001b78  00a00000  mfence { lm }
001b7c  9f8909f0  addli r19, r19, -2048
001b80  1f0a0af0  addli r20, r20, -2048
001b84  bfc3b700  blt.s r15, r11, 240
001b88  63037fd4  loadli.w r6,  -5576(r30)
001b8c  1f040000  addli r8, zero, 0
001b90  1f080000  addli r16, zero, 0
001b94  8f016918  div.f.rn r3, r18, r6
001b98  8f806018  div.f.rn r1, r1, r6
001b9c  0be33120  mul.f.rn r6, r3, r3
001ba0  8be60158  neg.f r13, r3
001ba4  8be06018  sub.f.rn r1, r1, r6
001ba8  63033f00  loadli.w r6,  24(r30)
001bac  8be06010  add.f.rn r1, r1, r6
001bb0  8f800008  sqrt.f.rn r1, r1
001bb4  8f801a18  div.f.rn r1, r21, r1
001bb8  0b133411  add.s r6, r8, r19
001bbc  8b118510  add.s r3, r10, r8
001bc0  1f098300  addli r18, r6, 64
001bc4  4a110302  vloads_mask16.mz vr2{mr1}, 0(r6)
001bc8  0b134411  add.s r6, r8, r20
001bcc  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001bd0  ca110902  vloads_mask16.mz vr3{mr1}, 0(r18)
001bd4  1f898100  addli r18, r3, 64
001bd8  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
001bdc  1f038300  addli r6, r6, 64
001be0  c2120902  vload_mask16.mz vr5{mr1}, 0(r18)
001be4  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
001be8  1f034800  addli r6, r16, 32
001bec  92901602  vadd.f.mz.rn vr1{mr1}, r13, vr1
001bf0  92925602  vadd.f.mz.rn vr5{mr1}, r13, vr5
001bf4  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
001bf8  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
001bfc  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
001c00  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
001c04  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
001c08  46106902  vstore_mask16.mz vr6{mr1}, 0(r18)
001c0c  cba16700  ble.s r15, r6, 104
001c10  0b938910  add.s r6, r19, r8
001c14  0b198a10  add.s r18, r20, r8
001c18  1f088800  addli r16, r16, 64
001c1c  1f040402  addli r8, r8, 256
001c20  1f0b0301  addli r22, r6, 128
001c24  9f0b0901  addli r23, r18, 128
001c28  1f038301  addli r6, r6, 192
001c2c  1f098901  addli r18, r18, 192
001c30  ca100b02  vloads_mask16.mz vr1{mr1}, 0(r22)
001c34  1f8b0101  addli r22, r3, 128
001c38  9f818101  addli r3, r3, 192
001c3c  4a910b02  vloads_mask16.mz vr2{mr1}, 0(r23)
001c40  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
001c44  4a130902  vloads_mask16.mz vr6{mr1}, 0(r18)
001c48  c2110b02  vload_mask16.mz vr3{mr1}, 0(r22)
001c4c  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
001c50  92913602  vadd.f.mz.rn vr3{mr1}, r13, vr3
001c54  12924602  vadd.f.mz.rn vr4{mr1}, r13, vr4
001c58  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
001c5c  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
001c60  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
001c64  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
001c68  46102b02  vstore_mask16.mz vr2{mr1}, 0(r22)
001c6c  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001c70  3f2df8fe  blt.s r16, r15, -184
001c74  00a00000  mfence { lm }
001c78  1f032000  addli r6, zero, 16
001c7c  1f380000  addli r16, zero, 3
001c80  1f591000  addli r18, zero, 13
001c84  9f291000  addli r19, zero, 10
001c88  630a8fd4  loadli.w r20,  -5568(r30)
001c8c  3ff0b7fe  blt.s r15, r11, -996
001c90  9f008fd7  addli r1, r30, -5184
001c94  1f048fd7  addli r8, r30, -5184
001c98  9f060000  addli r13, zero, 0
001c9c  c2110402  vload_mask16.mz vr3{mr1}, 0(r8)
001ca0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001ca4  9f018400  addli r3, r8, 64
001ca8  9f864600  addli r13, r13, 32
001cac  1f040401  addli r8, r8, 128
001cb0  6a221322  vor.u.mz vr4{mr1}, r6, vr1
001cb4  6a231922  vor.u.mz vr6{mr1}, r18, vr1
001cb8  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
001cbc  ee3232c2  vsrl.s.mz vr5{mr1}, vr4, vr3
001cc0  6e3222c2  vsrl.s.mz vr4{mr1}, vr4, vr2
001cc4  eab25502  vand.s.mz vr5{mr1}, r11, vr5
001cc8  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
001ccc  96b25102  vadd.s.mz vr5{mr1}, vr3, vr5
001cd0  e69101c0  vabs.f vr3, vr3
001cd4  16324102  vadd.s.mz vr4{mr1}, vr2, vr4
001cd8  661101c0  vabs.f vr2, vr2
001cdc  92325c02  vadd.s.mz vr5{mr1}, r24, vr5
001ce0  72213d42  vlt.u.mz mr2{mr1}, r26, vr3
001ce4  12324c02  vadd.s.mz vr4{mr1}, r24, vr4
001ce8  eab25c02  vand.s.mz vr5{mr1}, r25, vr5
001cec  6ab24c02  vand.s.mz vr4{mr1}, r25, vr4
001cf0  eaa21d34  vor.u.mh vr5{mr2}, r27, vr1
001cf4  72212d42  vlt.u.mz mr2{mr1}, r26, vr2
001cf8  6a211822  vor.u.mz vr2{mr1}, r16, vr1
001cfc  6aa21d34  vor.u.mh vr4{mr2}, r27, vr1
001d00  eaa01922  vor.u.mz vr1{mr1}, r19, vr1
001d04  ee3153c2  vsrl.s.mz vr3{mr1}, vr6, vr5
001d08  ee3251c2  vsrl.s.mz vr5{mr1}, vr2, vr5
001d0c  6e3141c2  vsrl.s.mz vr2{mr1}, vr2, vr4
001d10  6e3343c2  vsrl.s.mz vr6{mr1}, vr6, vr4
001d14  ea313202  vand.s.mz vr3{mr1}, r4, vr3
001d18  eab25302  vand.s.mz vr5{mr1}, r7, vr5
001d1c  6a326202  vand.s.mz vr4{mr1}, r4, vr6
001d20  6ab12302  vand.s.mz vr2{mr1}, r7, vr2
001d24  eab13a22  vor.s.mz vr3{mr1}, r21, vr3
001d28  eab25a22  vor.s.mz vr5{mr1}, r21, vr5
001d2c  6ab12a22  vor.s.mz vr2{mr1}, r21, vr2
001d30  6ab24a22  vor.s.mz vr4{mr1}, r21, vr4
001d34  86910120  vfloat2fp16_l.rz vr3, vr3
001d38  06510120  vfloat2fp16_h.rz vr2, vr2
001d3c  86510220  vfloat2fp16_h.rz vr3, vr4
001d40  06910220  vfloat2fp16_l.rz vr2, vr5
001d44  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
001d48  6ab12402  vand.s.mz vr2{mr1}, r9, vr2
001d4c  ea301102  vand.s.mz vr1{mr1}, r2, vr1
001d50  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
001d54  46801002  vstore.mz vr1{mr1}, 0(r1)
001d58  9f808000  addli r1, r1, 64
001d5c  3f8df6fe  blt.s r13, r15, -192
001d60  5b69ffff  j -1208
001d64  e3403f00  loadli.w r1,  28(r30)
001d68  b7f00018  beq r1, zero, 12348
001d6c  80300002  core_id r1
001d70  e3012f00  loadli.w r3,  16(r30)
001d74  1bb15000  slli r2, r1, 5
001d78  4bc32100  ble.s r3, r2, 208
001d7c  2b580100  lui r16, 21
001d80  00550102  load_param_i r10, 2
001d84  9f150000  addli r11, zero, 1
001d88  1f068fd7  addli r12, r30, -5184
001d8c  9f068000  addli r13, zero, 64
001d90  9f080100  addli r17, r2, 0
001d94  9b315500  slli r3, r10, 5
001d98  1f080800  addli r16, r16, 0
001d9c  33890828  zext_int2long r[19:20], r17
001da0  2b0a00f0  lui r20, 983040
001da4  1739b902  sll.d r[19:20], r[19:20], r11
001da8  179a4601  or r20, r13, r20
001dac  0b292211  add.ul r[19:20], r[5:6], r[19:20]
001db0  7f2ac900  l_gm2lm r20, r12, 0(r[19:20])
001db4  1bb92800  slli r18, r17, 2
001db8  8b981111  add.s r17, r3, r17
001dbc  00a00200  mfence { lm, gm }
001dc0  42000602  vload.mz vr0{mr1}, 0(r12)
001dc4  0b190911  add.s r18, r18, r16
001dc8  9f098900  addli r19, r18, 64
001dcc  86300000  vfp162float_l.rn vr1, vr0
001dd0  06700000  vfp162float_h.rn vr0, vr0
001dd4  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
001dd8  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
001ddc  3f8ff8fe  blt.s r17, r15, -64
001de0  ab620100  lui r5, 22
001de4  1bb27000  slli r4, r1, 7
001de8  9f058fd7  addli r11, r30, -5184
001dec  1f068000  addli r12, zero, 64
001df0  9f060100  addli r13, r2, 0
001df4  00a00000  mfence { lm }
001df8  9f820200  addli r5, r5, 0
001dfc  0b125210  add.s r4, r4, r5
001e00  9b327500  slli r5, r10, 7
001e04  1f150000  addli r10, zero, 1
001e08  33880628  zext_int2long r[17:18], r13
001e0c  2b0900f0  lui r18, 983040
001e10  8b963610  add.s r13, r13, r3
001e14  1738a802  sll.d r[17:18], r[17:18], r10
001e18  17192601  or r18, r12, r18
001e1c  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001e20  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
001e24  1f088200  addli r16, r4, 64
001e28  00a00200  mfence { lm, gm }
001e2c  42800502  vload.mz vr0{mr1}, 0(r11)
001e30  86300000  vfp162float_l.rn vr1, vr0
001e34  06700000  vfp162float_h.rn vr0, vr0
001e38  4e101202  vstores_mask16.mz vr1{mr1}, 0(r4)
001e3c  0b125210  add.s r4, r4, r5
001e40  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
001e44  3f9ff6fe  blt.s r13, r15, -60
001e48  e3012f00  loadli.w r3,  16(r30)
001e4c  cba12100  ble.s r3, r2, 104
001e50  00530102  load_param_i r6, 2
001e54  ab730100  lui r7, 23
001e58  9f110000  addli r3, zero, 1
001e5c  1f028fd7  addli r4, r30, -5184
001e60  9f028000  addli r5, zero, 64
001e64  00a00000  mfence { lm }
001e68  1b335300  slli r6, r6, 5
001e6c  9f830300  addli r7, r7, 0
001e70  33050128  zext_int2long r[11:12], r2
001e74  2b0600f0  lui r12, 983040
001e78  17353502  sll.d r[11:12], r[11:12], r3
001e7c  1796c200  or r12, r5, r12
001e80  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001e84  7f264500  l_gm2lm r12, r4, 0(r[11:12])
001e88  1b352100  slli r10, r2, 2
001e8c  0b112310  add.s r2, r6, r2
001e90  00a00200  mfence { lm, gm }
001e94  42000202  vload.mz vr0{mr1}, 0(r4)
001e98  0b157510  add.s r10, r10, r7
001e9c  9f058500  addli r11, r10, 64
001ea0  86300000  vfp162float_l.rn vr1, vr0
001ea4  06700000  vfp162float_h.rn vr0, vr0
001ea8  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001eac  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
001eb0  3f0ff1fe  blt.s r2, r15, -64
001eb4  2bf10000  lui r2, 15
001eb8  e3411f00  loadli.w r3,  12(r30)
001ebc  00a00300  mfence { lm, sm, gm }
001ec0  1b11f1ff  ori r2, r2, 4095
001ec4  80210104  csr_set csr3, r2
001ec8  00d00100  sync_group
001ecc  4bb41124  ble.s r3, r1, 18700
001ed0  63012f00  loadli.w r2,  16(r30)
001ed4  e3412f00  loadli.w r3,  20(r30)
001ed8  9f0b8fd7  addli r23, r30, -5184
001edc  2b540100  lui r8, 21
001ee0  ab6a0100  lui r21, 22
001ee4  2b7b0100  lui r22, 23
001ee8  1f150000  addli r10, zero, 1
001eec  9f054000  addli r11, zero, 32
001ef0  1f767000  addli r12, zero, 63
001ef4  1f080002  addli r16, zero, 256
001ef8  1f090001  addli r18, zero, 128
001efc  9f098000  addli r19, zero, 64
001f00  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001f04  1f040400  addli r8, r8, 0
001f08  9f8a0a00  addli r21, r21, 0
001f0c  1f0b0b00  addli r22, r22, 0
001f10  0b123110  add.s r4, r2, r3
001f14  b3020108  fix2float.rn r5, r2
001f18  9b381100  slli r17, r2, 1
001f1c  1b332100  slli r6, r2, 2
001f20  1f014100  addli r2, r2, 32
001f24  9bb42100  slli r9, r3, 2
001f28  670b2fd4  storeli.w r2, -5456(r30)
001f2c  0b117311  add.s r2, r6, r23
001f30  1f72f2ff  addli r4, r4, -1
001f34  0b937811  add.s r6, r17, r23
001f38  e70b5fd4  storeli.w r5, -5448(r30)
001f3c  1f0181ff  addli r2, r2, -64
001f40  0b123230  div.s r4, r4, r3
001f44  67042fd4  storeli.w r2, -5568(r30)
001f48  1f0183ff  addli r2, r6, -64
001f4c  e7432fd4  storeli.w r2, -5572(r30)
001f50  2bf1ffff  lui r2, 1048575
001f54  00a00000  mfence { lm }
001f58  670c1fd5  storeli.w r17, -5440(r30)
001f5c  9b16f1ff  ori r13, r2, 4095
001f60  1f010fd7  addli r2, r30, -5248
001f64  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001f68  5b080000  j 64
001f6c  9f038fd6  addli r7, r30, -5312
001f70  6b510f00  load.d r[3:4], 0(r30)
001f74  ebd20300  load.d r[6:7], 0(r7)
001f78  00a00000  mfence { lm }
001f7c  80530102  load_param_i r7, 2
001f80  e3088fd5  loadli.w r17,  -5440(r30)
001f84  8b901310  add.s r1, r7, r1
001f88  0b215110  add.ul r[3:4], r[3:4], r[6:7]
001f8c  2b0300f0  lui r6, 983040
001f90  17936800  or r6, r17, r6
001f94  7f337101  s_lm2gm r6, r23, 0(r[3:4])
001f98  00a00200  mfence { lm, gm }
001f9c  63411f00  loadli.w r2,  12(r30)
001fa0  3fa02000  blt.s r1, r2, 8
001fa4  db060900  j 18484
001fa8  63011f00  loadli.w r2,  8(r30)
001fac  0b912010  add.s r2, r1, r2
001fb0  0b11f120  mul.s r2, r2, r15
001fb4  33110128  sext_int2long r[3:4], r2
001fb8  173ca102  sll.d r[25:26], r[3:4], r10
001fbc  9f017fd6  addli r3, r30, -5320
001fc0  2b0100f0  lui r2, 983040
001fc4  ebd20100  load.d r[6:7], 0(r3)
001fc8  17912800  or r2, r17, r2
001fcc  9f018fd6  addli r3, r30, -5312
001fd0  73b08101  store.d r[25:26], 0(r3)
001fd4  0ba38211  add.ul r[7:8], r[6:7], r[25:26]
001fd8  7f217301  l_gm2lm r2, r23, 0(r[7:8])
001fdc  00a00200  mfence { lm, gm }
001fe0  bff0b700  blt.s r15, r11, 60
001fe4  63417fd4  loadli.w r2,  -5572(r30)
001fe8  e3018fd4  loadli.w r3,  -5568(r30)
001fec  63036fd5  loadli.w r6,  -5456(r30)
001ff0  c2000102  vload.mz vr1{mr1}, 0(r2)
001ff4  1f03c3ff  addli r6, r6, -32
001ff8  9f8881ff  addli r17, r3, -64
001ffc  1f0181ff  addli r2, r2, -64
002000  93036604  setlt.u r7, r12, r6
002004  06f10000  vfp162float_h.rn vr2, vr1
002008  86b00000  vfp162float_l.rn vr1, vr1
00200c  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
002010  9f8101ff  addli r3, r3, -128
002014  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
002018  3bef03fe  bneq r7, zero, -40
00201c  00a00000  mfence { lm }
002020  bf27a200  blt.s r4, r10, 488
002024  1f0d0000  addli r26, zero, 0
002028  9f0c0000  addli r25, zero, 0
00202c  9f0d0000  addli r27, zero, 0
002030  db0c0000  j 100
002034  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
002038  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00203c  9f9d0d00  addli r27, r27, 1
002040  6a7108c0  vsrl.p vr2, r16, vr0
002044  ea7118c0  vsrl.p vr3, r16, vr1
002048  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00204c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002050  6a7109c0  vsrl.p vr2, r18, vr0
002054  ea7119c0  vsrl.p vr3, r18, vr1
002058  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00205c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002060  6af109c0  vsrl.p vr2, r19, vr0
002064  eaf119c0  vsrl.p vr3, r19, vr1
002068  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00206c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002070  6af105c0  vsrl.p vr2, r11, vr0
002074  eaf115c0  vsrl.p vr3, r11, vr1
002078  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00207c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002080  7a110040  vextracti.f r2, 0(vr0)
002084  fa910040  vextracti.f r3, 0(vr1)
002088  0b6d2d10  add.f.rn r26, r26, r2
00208c  8bec3c10  add.f.rn r25, r25, r3
002090  37864d00  beq r27, r4, 384
002094  1f810d00  addli r2, r27, 0
002098  37300701  beq r14, r16, 12
00209c  17a1dd00  xor r2, r27, r13
0020a0  0b112210  add.s r2, r4, r2
0020a4  8b11e120  mul.s r3, r2, r14
0020a8  8b913718  sub.s r3, r15, r3
0020ac  0b9ee140  min.s r28, r3, r14
0020b0  9f010fd7  addli r3, r30, -5248
0020b4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0020b8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0020bc  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0020c0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0020c4  bf4daefe  blt.s r28, r10, -144
0020c8  0b932420  mul.s r6, r9, r2
0020cc  1f010fd7  addli r2, r30, -5248
0020d0  1f0a0000  addli r20, zero, 0
0020d4  9f038fd7  addli r7, r30, -5184
0020d8  9f080400  addli r17, r8, 0
0020dc  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0020e0  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0020e4  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0020e8  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0020ec  0b916810  add.s r2, r17, r6
0020f0  8b916310  add.s r3, r7, r6
0020f4  9f0b8100  addli r23, r2, 64
0020f8  ca120102  vloads_mask16.mz vr5{mr1}, 0(r2)
0020fc  1f0c8101  addli r24, r2, 192
002100  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
002104  9f828101  addli r5, r3, 192
002108  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
00210c  9f0b0101  addli r23, r2, 128
002110  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
002114  1f8c0101  addli r24, r3, 128
002118  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
00211c  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
002120  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
002124  9f8b8100  addli r23, r3, 64
002128  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
00212c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
002130  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
002134  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
002138  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
00213c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002140  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002144  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
002148  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
00214c  9f0b8a00  addli r23, r20, 64
002150  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
002154  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
002158  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00215c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002160  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002164  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
002168  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
00216c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
002170  4b1b7eff  ble.s r28, r23, -316
002174  9f0b0102  addli r23, r2, 256
002178  1f0c8102  addli r24, r2, 320
00217c  9f820102  addli r5, r3, 256
002180  1f0a0a01  addli r20, r20, 128
002184  9f880804  addli r17, r17, 512
002188  9f830304  addli r7, r7, 512
00218c  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
002190  9f0b0103  addli r23, r2, 384
002194  1f018103  addli r2, r2, 448
002198  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
00219c  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
0021a0  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
0021a4  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
0021a8  1f810103  addli r2, r3, 384
0021ac  9f8b8102  addli r23, r3, 320
0021b0  9f818103  addli r3, r3, 448
0021b4  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
0021b8  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
0021bc  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0021c0  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
0021c4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0021c8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0021cc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0021d0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0021d4  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
0021d8  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
0021dc  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0021e0  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0021e4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0021e8  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
0021ec  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0021f0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0021f4  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0021f8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0021fc  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
002200  bf3bcaff  blt.s r20, r28, -276
002204  5bc6ffff  j -464
002208  9f0c0000  addli r25, zero, 0
00220c  1f0d0000  addli r26, zero, 0
002210  9f0b8fd7  addli r23, r30, -5184
002214  00a00000  mfence { lm }
002218  bfd3a700  blt.s r15, r10, 244
00221c  e3017fd5  loadli.w r3,  -5448(r30)
002220  e3023f00  loadli.w r5,  24(r30)
002224  1f030000  addli r6, zero, 0
002228  1f0a0000  addli r20, zero, 0
00222c  0f013d18  div.f.rn r2, r26, r3
002230  8f813c18  div.f.rn r3, r25, r3
002234  8b632120  mul.f.rn r7, r2, r2
002238  8b680158  neg.f r17, r2
00223c  8be17118  sub.f.rn r3, r3, r7
002240  8be15110  add.f.rn r3, r3, r5
002244  ab02803f  lui r5, 260096
002248  8f810108  sqrt.f.rn r3, r3
00224c  8f833218  div.f.rn r7, r5, r3
002250  8b115311  add.s r3, r6, r21
002254  0b916b10  add.s r2, r23, r6
002258  9f8c8100  addli r25, r3, 64
00225c  4a910102  vloads_mask16.mz vr2{mr1}, 0(r3)
002260  8b116311  add.s r3, r6, r22
002264  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
002268  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
00226c  9f0c8100  addli r25, r2, 64
002270  4a920102  vloads_mask16.mz vr4{mr1}, 0(r3)
002274  9f818100  addli r3, r3, 64
002278  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
00227c  4a930102  vloads_mask16.mz vr6{mr1}, 0(r3)
002280  9f014a00  addli r3, r20, 32
002284  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
002288  92925802  vadd.f.mz.rn vr5{mr1}, r17, vr5
00228c  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
002290  8a925302  vmul.f.mz.rn vr5{mr1}, r7, vr5
002294  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
002298  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
00229c  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
0022a0  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
0022a4  cba13700  ble.s r15, r3, 104
0022a8  8b916a10  add.s r3, r21, r6
0022ac  8b1c6b10  add.s r25, r22, r6
0022b0  1f0a8a00  addli r20, r20, 64
0022b4  1f030302  addli r6, r6, 256
0022b8  1f8d0101  addli r26, r3, 128
0022bc  9f8d0c01  addli r27, r25, 128
0022c0  9f818101  addli r3, r3, 192
0022c4  9f8c8c01  addli r25, r25, 192
0022c8  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
0022cc  1f0d0101  addli r26, r2, 128
0022d0  1f018101  addli r2, r2, 192
0022d4  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
0022d8  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
0022dc  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
0022e0  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
0022e4  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0022e8  92913802  vadd.f.mz.rn vr3{mr1}, r17, vr3
0022ec  12924802  vadd.f.mz.rn vr4{mr1}, r17, vr4
0022f0  8a913302  vmul.f.mz.rn vr3{mr1}, r7, vr3
0022f4  0a924302  vmul.f.mz.rn vr4{mr1}, r7, vr4
0022f8  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
0022fc  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
002300  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
002304  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
002308  3f2dfafe  blt.s r20, r15, -184
00230c  00a00000  mfence { lm }
002310  3ff1a7fe  blt.s r15, r10, -932
002314  1f018fd7  addli r2, r30, -5184
002318  9f018fd7  addli r3, r30, -5184
00231c  1f030000  addli r6, zero, 0
002320  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002324  9f838100  addli r7, r3, 64
002328  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
00232c  1f034300  addli r6, r6, 32
002330  9f810101  addli r3, r3, 128
002334  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
002338  86910000  vfloat2fp16_l.rn vr3, vr1
00233c  86510100  vfloat2fp16_h.rn vr3, vr2
002340  46003102  vstore.mz vr3{mr1}, 0(r2)
002344  1f018100  addli r2, r2, 64
002348  3f6ff3fe  blt.s r6, r15, -40
00234c  5b84ffff  j -992
002350  e3002f00  loadli.w r1,  16(r30)
002354  1f010010  addli r2, zero, 2048
002358  bbd02008  bneq r1, r2, 4148
00235c  2ba10200  lui r2, 42
002360  803d0002  core_id r27
002364  1f010108  addli r2, r2, 1024
002368  3bd00d00  bneq r27, zero, 20
00236c  9f010040  addli r3, zero, 8192
002370  2b0300f0  lui r6, 983040
002374  97916100  or r3, r3, r6
002378  ff012200  l_gm2sm r3, r2, 0(r[5:6])
00237c  abf10000  lui r3, 15
002380  00200300  mfence { sm, gm }
002384  1b8e1d00  andi r28, r27, 1
002388  1f030006  addli r6, zero, 768
00238c  1b92f1ff  ori r4, r3, 4095
002390  80210204  csr_set csr3, r4
002394  1f020006  addli r4, zero, 768
002398  00d00100  sync_group
00239c  37200e00  beq r28, zero, 8
0023a0  1f02000a  addli r4, zero, 1280
0023a4  e3421f00  loadli.w r5,  12(r30)
0023a8  9f130000  addli r7, zero, 1
0023ac  bfb07222  blt.s r5, r7, 17452
0023b0  80530102  load_param_i r7, 2
0023b4  abf0ffff  lui r1, 1048575
0023b8  abc90200  lui r19, 44
0023bc  2bcc0200  lui r24, 44
0023c0  2bf50000  lui r10, 15
0023c4  8b116e20  mul.s r3, r28, r6
0023c8  9f020000  addli r5, zero, 0
0023cc  1bc41d00  srli r8, r27, 1
0023d0  9b342200  slli r9, r4, 2
0023d4  9f270000  addli r15, zero, 2
0023d8  9f058fd7  addli r11, r30, -5184
0023dc  1f030fd7  addli r6, r30, -5248
0023e0  1f070005  addli r14, zero, 640
0023e4  1f080001  addli r16, zero, 128
0023e8  9f088000  addli r17, zero, 64
0023ec  1f094000  addli r18, zero, 32
0023f0  9f0b0003  addli r23, zero, 384
0023f4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0023f8  9b9000f8  ori r1, r1, 3968
0023fc  9bc31300  srli r7, r7, 1
002400  9f890908  addli r19, r19, 1024
002404  1b1af5ff  ori r20, r10, 4095
002408  1f0c0c0c  addli r24, r24, 1536
00240c  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
002410  67041fd6  storeli.w r1, -5312(r30)
002414  db030000  j 28
002418  00a00300  mfence { lm, sm, gm }
00241c  80210a04  csr_set csr3, r20
002420  00d00100  sync_group
002424  8b927210  add.s r5, r5, r7
002428  3fa09201  blt.s r5, r25, 8
00242c  db0ffdff  j -6020
002430  0b958210  add.s r10, r5, r8
002434  cb9facfe  ble.s r25, r10, -28
002438  e3001f00  loadli.w r1,  8(r30)
00243c  0b151510  add.s r10, r10, r1
002440  9f007fd6  addli r1, r30, -5320
002444  1b35b500  slli r10, r10, 11
002448  17153500  or r10, r10, r3
00244c  33160528  sext_int2long r[13:14], r10
002450  2b0500f0  lui r10, 983040
002454  973cf602  sll.d r[26:27], r[13:14], r15
002458  6bd60000  load.d r[13:14], 0(r1)
00245c  1795a400  or r10, r9, r10
002460  0b269611  add.ul r[13:14], r[13:14], r[26:27]
002464  7f25b600  l_gm2lm r10, r11, 0(r[13:14])
002468  00a00200  mfence { lm, gm }
00246c  3b260e00  bneq r28, zero, 392
002470  9f000fd7  addli r1, r30, -5248
002474  630b8fd6  loadli.w r22,  -5312(r30)
002478  1f050000  addli r10, zero, 0
00247c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
002480  92303002  vadd.s.mz vr1{mr1}, zero, vr3
002484  12313002  vadd.s.mz vr2{mr1}, zero, vr3
002488  12323002  vadd.s.mz vr4{mr1}, zero, vr3
00248c  8b162510  add.s r13, r10, r2
002490  0b96a510  add.s r12, r11, r10
002494  1f0b0b01  addli r22, r22, 128
002498  1f050504  addli r10, r10, 512
00249c  9f800601  addli r1, r13, 128
0024a0  4a900602  vloads_mask16.mz vr0{mr1}, 0(r13)
0024a4  1f838600  addli r6, r13, 64
0024a8  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
0024ac  9f0a8601  addli r21, r12, 192
0024b0  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
0024b4  9f808601  addli r1, r13, 192
0024b8  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0024bc  1f038600  addli r6, r12, 64
0024c0  c2950a02  vload_mask16.mz vr11{mr1}, 0(r21)
0024c4  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
0024c8  9f000601  addli r1, r12, 128
0024cc  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0024d0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0024d4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0024d8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0024dc  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0024e0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0024e4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0024e8  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
0024ec  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0024f0  9f800602  addli r1, r13, 256
0024f4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0024f8  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0024fc  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002500  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
002504  1f030603  addli r6, r12, 384
002508  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
00250c  9f808602  addli r1, r13, 320
002510  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
002514  9f0a0602  addli r21, r12, 256
002518  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00251c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
002520  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002524  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002528  9f800603  addli r1, r13, 384
00252c  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
002530  9f868603  addli r13, r13, 448
002534  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002538  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
00253c  9f008602  addli r1, r12, 320
002540  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
002544  1f068603  addli r12, r12, 448
002548  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00254c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
002550  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
002554  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002558  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
00255c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002560  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002564  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
002568  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00256c  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
002570  9300eb04  setlt.u r1, r22, r14
002574  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002578  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00257c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002580  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002584  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002588  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
00258c  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
002590  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002594  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002598  bbdb00fe  bneq r1, zero, -268
00259c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0025a0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0025a4  9f000002  addli r1, zero, 256
0025a8  6af100c0  vsrl.p vr2, r1, vr0
0025ac  eaf110c0  vsrl.p vr3, r1, vr1
0025b0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0025b4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0025b8  6a7108c0  vsrl.p vr2, r16, vr0
0025bc  ea7118c0  vsrl.p vr3, r16, vr1
0025c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0025c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0025c8  6af108c0  vsrl.p vr2, r17, vr0
0025cc  eaf118c0  vsrl.p vr3, r17, vr1
0025d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0025d4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0025d8  6a7109c0  vsrl.p vr2, r18, vr0
0025dc  ea7119c0  vsrl.p vr3, r18, vr1
0025e0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0025e4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0025e8  7a160040  vextracti.f r12, 0(vr0)
0025ec  7a950040  vextracti.f r10, 0(vr1)
0025f0  5b650000  j 808
0025f4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0025f8  abf0ffff  lui r1, 1048575
0025fc  9f070e00  addli r15, r28, 0
002600  1f050000  addli r10, zero, 0
002604  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002608  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00260c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002610  9b9d00f8  ori r27, r1, 3968
002614  0b16a110  add.s r12, r2, r10
002618  0b9ba510  add.s r22, r11, r10
00261c  9f8d0d01  addli r27, r27, 128
002620  1f050504  addli r10, r10, 512
002624  9f000631  addli r1, r12, 6272
002628  9f060630  addli r13, r12, 6144
00262c  1f038631  addli r6, r12, 6336
002630  1f0e0b18  addli r28, r22, 3072
002634  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
002638  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
00263c  9f068630  addli r13, r12, 6208
002640  ca140302  vloads_mask16.mz vr9{mr1}, 0(r6)
002644  1f030b19  addli r6, r22, 3200
002648  9f008b18  addli r1, r22, 3136
00264c  42130e02  vload_mask16.mz vr6{mr1}, 0(r28)
002650  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
002654  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
002658  9f068b19  addli r13, r22, 3264
00265c  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
002660  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
002664  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
002668  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
00266c  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
002670  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
002674  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002678  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
00267c  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
002680  1f030632  addli r6, r12, 6400
002684  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
002688  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
00268c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002690  46106e02  vstore_mask16.mz vr6{mr1}, 0(r28)
002694  9f060b1a  addli r13, r22, 3328
002698  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
00269c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0026a0  9f000b1b  addli r1, r22, 3456
0026a4  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0026a8  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0026ac  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
0026b0  1f038632  addli r6, r12, 6464
0026b4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0026b8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0026bc  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0026c0  1f030633  addli r6, r12, 6528
0026c4  1f068633  addli r12, r12, 6592
0026c8  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
0026cc  1f038b1a  addli r6, r22, 3392
0026d0  4a150602  vloads_mask16.mz vr10{mr1}, 0(r12)
0026d4  1f068b1b  addli r12, r22, 3520
0026d8  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
0026dc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0026e0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0026e4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0026e8  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0026ec  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0026f0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0026f4  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
0026f8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0026fc  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
002700  13837d05  setlt.u r6, r27, r23
002704  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002708  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00270c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002710  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002714  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002718  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00271c  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
002720  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002724  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002728  bb3b03fe  bneq r6, zero, -276
00272c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002730  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002734  9f000002  addli r1, zero, 256
002738  1f050000  addli r10, zero, 0
00273c  eaf110c0  vsrl.p vr3, r1, vr1
002740  6af100c0  vsrl.p vr2, r1, vr0
002744  abf0ffff  lui r1, 1048575
002748  1b9b00f8  ori r22, r1, 3968
00274c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002750  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002754  ea7118c0  vsrl.p vr3, r16, vr1
002758  6a7108c0  vsrl.p vr2, r16, vr0
00275c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002760  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002764  eaf118c0  vsrl.p vr3, r17, vr1
002768  6af108c0  vsrl.p vr2, r17, vr0
00276c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002770  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002774  ea7119c0  vsrl.p vr3, r18, vr1
002778  6a7109c0  vsrl.p vr2, r18, vr0
00277c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002780  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002784  7a9e0040  vextracti.f r28, 0(vr1)
002788  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00278c  fa1d0040  vextracti.f r27, 0(vr0)
002790  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002794  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002798  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00279c  8b16a110  add.s r13, r2, r10
0027a0  0b96a510  add.s r12, r11, r10
0027a4  1f0b0b01  addli r22, r22, 128
0027a8  1f050504  addli r10, r10, 512
0027ac  9f800618  addli r1, r13, 3072
0027b0  1f830619  addli r6, r13, 3200
0027b4  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
0027b8  9f0a8601  addli r21, r12, 192
0027bc  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0027c0  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
0027c4  9f808618  addli r1, r13, 3136
0027c8  1f838619  addli r6, r13, 3264
0027cc  c2950a02  vload_mask16.mz vr11{mr1}, 0(r21)
0027d0  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0027d4  9f000601  addli r1, r12, 128
0027d8  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
0027dc  1f038600  addli r6, r12, 64
0027e0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0027e4  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0027e8  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0027ec  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0027f0  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0027f4  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0027f8  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0027fc  9f80061a  addli r1, r13, 3328
002800  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002804  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002808  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00280c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002810  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
002814  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002818  9f80861a  addli r1, r13, 3392
00281c  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
002820  9f0a0602  addli r21, r12, 256
002824  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
002828  1f030603  addli r6, r12, 384
00282c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
002830  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002834  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002838  9f80061b  addli r1, r13, 3456
00283c  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
002840  9f86861b  addli r13, r13, 3520
002844  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002848  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00284c  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
002850  9f008602  addli r1, r12, 320
002854  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
002858  1f068603  addli r12, r12, 448
00285c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002860  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
002864  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
002868  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00286c  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
002870  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002874  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002878  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
00287c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002880  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
002884  9300eb04  setlt.u r1, r22, r14
002888  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00288c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002890  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002894  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002898  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00289c  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
0028a0  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0028a4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0028a8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0028ac  bbcb00fe  bneq r1, zero, -272
0028b0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0028b4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0028b8  9f000002  addli r1, zero, 256
0028bc  6af100c0  vsrl.p vr2, r1, vr0
0028c0  eaf110c0  vsrl.p vr3, r1, vr1
0028c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028cc  6a7108c0  vsrl.p vr2, r16, vr0
0028d0  ea7118c0  vsrl.p vr3, r16, vr1
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
0028fc  fa100040  vextracti.f r1, 0(vr0)
002900  7a930040  vextracti.f r6, 0(vr1)
002904  0be61d10  add.f.rn r12, r27, r1
002908  0b656e10  add.f.rn r10, r28, r6
00290c  1f8e0700  addli r28, r15, 0
002910  803d0002  core_id r27
002914  9f270000  addli r15, zero, 2
002918  8b807230  div.u r1, r5, r7
00291c  1f0b0000  addli r22, zero, 0
002920  9bb06000  slli r1, r1, 6
002924  9b800004  andi r1, r1, 64
002928  9790b001  or r1, r1, r27
00292c  1bb32000  slli r6, r1, 2
002930  9b80e007  andi r1, r1, 126
002934  8b163311  add.s r13, r6, r19
002938  9bb02000  slli r1, r1, 2
00293c  73e0c600  stores.w r12, 0(r13)
002940  0b168311  add.s r12, r6, r24
002944  1b134300  ori r6, r6, 4
002948  9f068fd7  addli r13, r30, -5184
00294c  7360a600  stores.w r10, 0(r12)
002950  0b153311  add.s r10, r6, r19
002954  0b963011  add.s r12, r1, r19
002958  0b138311  add.s r6, r6, r24
00295c  8b908011  add.s r1, r1, r24
002960  00a00300  mfence { lm, sm, gm }
002964  80210a04  csr_set csr3, r20
002968  00d00100  sync_group
00296c  6f450500  loads.w r10, 0(r10)
002970  6f460600  loads.w r12, 0(r12)
002974  6f430300  loads.w r6, 0(r6)
002978  efc00000  loads.w r1, 0(r1)
00297c  0b65c510  add.f.rn r10, r10, r12
002980  2b06003a  lui r12, 237568
002984  8b601310  add.f.rn r1, r6, r1
002988  0b63c520  mul.f.rn r6, r10, r12
00298c  8be0c020  mul.f.rn r1, r1, r12
002990  0b656320  mul.f.rn r10, r6, r6
002994  0b660358  neg.f r12, r6
002998  8be0a018  sub.f.rn r1, r1, r10
00299c  63053f00  loadli.w r10,  24(r30)
0029a0  8be0a010  add.f.rn r1, r1, r10
0029a4  2b05803f  lui r10, 260096
0029a8  8f800008  sqrt.f.rn r1, r1
0029ac  0f051518  div.f.rn r10, r10, r1
0029b0  9f808600  addli r1, r13, 64
0029b4  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
0029b8  1f034b00  addli r6, r22, 32
0029bc  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0029c0  13036206  setle.u r6, r4, r6
0029c4  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
0029c8  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
0029cc  0a100502  vmul.f.mz.rn vr0{mr1}, r10, vr0
0029d0  8a101502  vmul.f.mz.rn vr1{mr1}, r10, vr1
0029d4  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
0029d8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0029dc  bb700300  bneq r6, zero, 60
0029e0  9f800601  addli r1, r13, 128
0029e4  1f838601  addli r6, r13, 192
0029e8  1f0b8b00  addli r22, r22, 64
0029ec  9f860602  addli r13, r13, 256
0029f0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0029f4  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
0029f8  930a4b04  setlt.u r21, r22, r4
0029fc  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
002a00  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
002a04  0a100502  vmul.f.mz.rn vr0{mr1}, r10, vr0
002a08  8a101502  vmul.f.mz.rn vr1{mr1}, r10, vr1
002a0c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002a10  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
002a14  3bfe0afe  bneq r21, zero, -100
002a18  6b560f00  load.d r[13:14], 0(r30)
002a1c  ab0000f0  lui r1, 983040
002a20  00a00000  mfence { lm }
002a24  97901400  or r1, r9, r1
002a28  0b269611  add.ul r[13:14], r[13:14], r[26:27]
002a2c  ff30b600  s_lm2gm r1, r11, 0(r[13:14])
002a30  00a00200  mfence { lm, gm }
002a34  e34c1f00  loadli.w r25,  12(r30)
002a38  db3dffff  j -1556
002a3c  80300002  core_id r1
002a40  bb800000  bneq r1, zero, 32
002a44  63012f00  loadli.w r2,  16(r30)
002a48  ab0100f0  lui r3, 983040
002a4c  1b311100  slli r2, r2, 1
002a50  17113100  or r2, r2, r3
002a54  abc10100  lui r3, 28
002a58  9f810100  addli r3, r3, 0
002a5c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002a60  2bf10000  lui r2, 15
002a64  e3411f00  loadli.w r3,  12(r30)
002a68  00200300  mfence { sm, gm }
002a6c  1b11f1ff  ori r2, r2, 4095
002a70  80210104  csr_set csr3, r2
002a74  00d00100  sync_group
002a78  cb85111e  ble.s r3, r1, 15712
002a7c  63012f00  loadli.w r2,  16(r30)
002a80  e3412f00  loadli.w r3,  20(r30)
002a84  1f052000  addli r10, zero, 16
002a88  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002a8c  1f130000  addli r6, zero, 1
002a90  9f040002  addli r9, zero, 256
002a94  ab05ffff  lui r11, 1048560
002a98  ab06807f  lui r13, 522240
002a9c  2b08c07f  lui r16, 523264
002aa0  9f080001  addli r17, zero, 128
002aa4  1f098000  addli r18, zero, 64
002aa8  9f094000  addli r19, zero, 32
002aac  1b3b1100  slli r22, r2, 1
002ab0  0b123110  add.s r4, r2, r3
002ab4  33010108  fix2float.rn r2, r2
002ab8  670b2fd4  storeli.w r2, -5456(r30)
002abc  1f71f2ff  addli r2, r4, -1
002ac0  1bb21100  slli r4, r3, 1
002ac4  e70b6fd5  storeli.w r22, -5448(r30)
002ac8  8b123130  div.s r5, r2, r3
002acc  2bf1ffff  lui r2, 1048575
002ad0  9f018fd7  addli r3, r30, -5184
002ad4  1b14f1ff  ori r8, r2, 4095
002ad8  1f010fd7  addli r2, r30, -5248
002adc  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002ae0  6a200522  vor.u.mz vr0{mr1}, r10, vr0
002ae4  1f018fd6  addli r2, r30, -5312
002ae8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002aec  2b710000  lui r2, 7
002af0  1b16f1ff  ori r12, r2, 4095
002af4  db080000  j 68
002af8  9f018fd5  addli r3, r30, -5440
002afc  00a00000  mfence { lm }
002b00  6b5a0f00  load.d r[21:22], 0(r30)
002b04  2b0100f0  lui r2, 983040
002b08  80530102  load_param_i r7, 2
002b0c  6bdb0100  load.d r[23:24], 0(r3)
002b10  9f018fd7  addli r3, r30, -5184
002b14  8b901310  add.s r1, r7, r1
002b18  0b2a6a11  add.ul r[21:22], r[21:22], r[23:24]
002b1c  630b7fd5  loadli.w r22,  -5448(r30)
002b20  17112b00  or r2, r22, r2
002b24  7f313a00  s_lm2gm r2, r3, 0(r[21:22])
002b28  00a00200  mfence { lm, gm }
002b2c  63411f00  loadli.w r2,  12(r30)
002b30  3fa02000  blt.s r1, r2, 8
002b34  db940700  j 15524
002b38  63011f00  loadli.w r2,  8(r30)
002b3c  9f037fd6  addli r7, r30, -5320
002b40  0b912010  add.s r2, r1, r2
002b44  0b11f120  mul.s r2, r2, r15
002b48  331a0128  sext_int2long r[21:22], r2
002b4c  2b0100f0  lui r2, 983040
002b50  973b6a02  sll.d r[24:25], r[21:22], r6
002b54  6bda0300  load.d r[21:22], 0(r7)
002b58  17112b00  or r2, r22, r2
002b5c  9f038fd5  addli r7, r30, -5440
002b60  73b07301  store.d r[24:25], 0(r7)
002b64  0b2a7a11  add.ul r[21:22], r[21:22], r[24:25]
002b68  7f213a00  l_gm2lm r2, r3, 0(r[21:22])
002b6c  00a00200  mfence { lm, gm }
002b70  bfdc6200  blt.s r5, r6, 820
002b74  9f0c0000  addli r25, zero, 0
002b78  1f0c0000  addli r24, zero, 0
002b7c  1f0d0000  addli r26, zero, 0
002b80  db0c0000  j 100
002b84  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
002b88  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
002b8c  1f1d0d00  addli r26, r26, 1
002b90  6af104c0  vsrl.p vr2, r9, vr0
002b94  eaf114c0  vsrl.p vr3, r9, vr1
002b98  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b9c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002ba0  6af108c0  vsrl.p vr2, r17, vr0
002ba4  eaf118c0  vsrl.p vr3, r17, vr1
002ba8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002bac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002bb0  6a7109c0  vsrl.p vr2, r18, vr0
002bb4  ea7119c0  vsrl.p vr3, r18, vr1
002bb8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002bbc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002bc0  6af109c0  vsrl.p vr2, r19, vr0
002bc4  eaf119c0  vsrl.p vr3, r19, vr1
002bc8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002bcc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002bd0  7a110040  vextracti.f r2, 0(vr0)
002bd4  fa910040  vextracti.f r3, 0(vr1)
002bd8  8bec2c10  add.f.rn r25, r25, r2
002bdc  0b6c3c10  add.f.rn r24, r24, r3
002be0  373b5d00  beq r26, r5, 716
002be4  1f010d00  addli r2, r26, 0
002be8  37309700  beq r14, r9, 12
002bec  17218d00  xor r2, r26, r8
002bf0  0b912210  add.s r2, r5, r2
002bf4  9f010fd7  addli r3, r30, -5248
002bf8  8b13e120  mul.s r7, r2, r14
002bfc  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
002c00  8b937718  sub.s r7, r15, r7
002c04  8b9de340  min.s r27, r7, r14
002c08  92322002  vadd.s.mz vr5{mr1}, zero, vr2
002c0c  12322002  vadd.s.mz vr4{mr1}, zero, vr2
002c10  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002c14  bfcd6dfe  blt.s r27, r6, -144
002c18  0b1a2220  mul.s r20, r4, r2
002c1c  1f010fd7  addli r2, r30, -5248
002c20  abca0100  lui r21, 28
002c24  1f0e0000  addli r28, zero, 0
002c28  9f038fd7  addli r7, r30, -5184
002c2c  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
002c30  9f8a0a00  addli r21, r21, 0
002c34  12315002  vadd.s.mz vr2{mr1}, zero, vr5
002c38  92315002  vadd.s.mz vr3{mr1}, zero, vr5
002c3c  12325002  vadd.s.mz vr4{mr1}, zero, vr5
002c40  0b9b4a11  add.s r22, r21, r20
002c44  0b914311  add.s r2, r7, r20
002c48  9f018fd6  addli r3, r30, -5312
002c4c  4a030b02  vloads.mz vr6{mr1}, 0(r22)
002c50  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002c54  c2030102  vload.mz vr7{mr1}, 0(r2)
002c58  9f010fd7  addli r3, r30, -5248
002c5c  9f0b8b00  addli r23, r22, 64
002c60  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
002c64  9f018e00  addli r3, r28, 64
002c68  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
002c6c  6ab57502  vand.s.mz vr10{mr1}, r11, vr7
002c70  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
002c74  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002c78  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
002c7c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
002c80  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
002c84  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
002c88  669503c0  vabs.f vr10, vr7
002c8c  6a348302  vand.s.mz vr8{mr1}, r6, vr8
002c90  ea349302  vand.s.mz vr9{mr1}, r6, vr9
002c94  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
002c98  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
002c9c  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
002ca0  12348602  vadd.s.mz vr8{mr1}, r12, vr8
002ca4  92349602  vadd.s.mz vr9{mr1}, r12, vr9
002ca8  eab38502  vand.s.mz vr7{mr1}, r11, vr8
002cac  661403c0  vabs.f vr8, vr6
002cb0  6ab39502  vand.s.mz vr6{mr1}, r11, vr9
002cb4  ea230834  vor.u.mh vr7{mr2}, r16, vr0
002cb8  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
002cbc  6a230834  vor.u.mh vr6{mr2}, r16, vr0
002cc0  4a840b02  vloads.mz vr8{mr1}, 0(r23)
002cc4  9f0b8100  addli r23, r2, 64
002cc8  c2840b02  vload.mz vr9{mr1}, 0(r23)
002ccc  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
002cd0  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
002cd4  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002cd8  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
002cdc  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002ce0  46007102  vstore.mz vr7{mr1}, 0(r2)
002ce4  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002ce8  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002cec  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
002cf0  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
002cf4  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002cf8  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002cfc  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002d00  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
002d04  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
002d08  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
002d0c  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
002d10  ea349302  vand.s.mz vr9{mr1}, r6, vr9
002d14  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002d18  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
002d1c  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
002d20  661505c0  vabs.f vr10, vr10
002d24  661404c0  vabs.f vr8, vr8
002d28  92349602  vadd.s.mz vr9{mr1}, r12, vr9
002d2c  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002d30  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
002d34  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002d38  6ab5b502  vand.s.mz vr10{mr1}, r11, vr11
002d3c  ea240834  vor.u.mh vr9{mr2}, r16, vr0
002d40  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
002d44  6a250834  vor.u.mh vr10{mr2}, r16, vr0
002d48  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
002d4c  eab4a502  vand.s.mz vr9{mr1}, r11, vr10
002d50  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
002d54  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002d58  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002d5c  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
002d60  46808b02  vstore.mz vr8{mr1}, 0(r23)
002d64  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002d68  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002d6c  4be83dfe  ble.s r27, r3, -488
002d70  9f010b01  addli r3, r22, 128
002d74  9f0b0101  addli r23, r2, 128
002d78  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
002d7c  1f018101  addli r2, r2, 192
002d80  1f0e0e01  addli r28, r28, 128
002d84  9f8a0a02  addli r21, r21, 256
002d88  9f830302  addli r7, r7, 256
002d8c  6a237522  vor.u.mz vr6{mr1}, r10, vr7
002d90  4a840102  vloads.mz vr8{mr1}, 0(r3)
002d94  c2840b02  vload.mz vr9{mr1}, 0(r23)
002d98  9f018b01  addli r3, r22, 192
002d9c  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
002da0  6ab09502  vand.s.mz vr0{mr1}, r11, vr9
002da4  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
002da8  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002dac  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
002db0  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
002db4  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
002db8  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
002dbc  e69504c0  vabs.f vr11, vr9
002dc0  6a300302  vand.s.mz vr0{mr1}, r6, vr0
002dc4  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002dc8  72a1b642  vlt.u.mz mr2{mr1}, r13, vr11
002dcc  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
002dd0  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
002dd4  12300602  vadd.s.mz vr0{mr1}, r12, vr0
002dd8  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002ddc  eab40502  vand.s.mz vr9{mr1}, r11, vr0
002de0  661004c0  vabs.f vr0, vr8
002de4  6ab4a502  vand.s.mz vr8{mr1}, r11, vr10
002de8  ea247834  vor.u.mh vr9{mr2}, r16, vr7
002dec  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002df0  6a247834  vor.u.mh vr8{mr2}, r16, vr7
002df4  4a800102  vloads.mz vr0{mr1}, 0(r3)
002df8  42050102  vload.mz vr10{mr1}, 0(r2)
002dfc  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
002e00  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
002e04  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002e08  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
002e0c  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002e10  46809b02  vstore.mz vr9{mr1}, 0(r23)
002e14  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
002e18  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
002e1c  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
002e20  6ab00502  vand.s.mz vr0{mr1}, r11, vr0
002e24  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
002e28  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
002e2c  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
002e30  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
002e34  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002e38  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002e3c  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
002e40  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
002e44  e69000c0  vabs.f vr1, vr1
002e48  661000c0  vabs.f vr0, vr0
002e4c  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002e50  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002e54  72a11642  vlt.u.mz mr2{mr1}, r13, vr1
002e58  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002e5c  eab0b502  vand.s.mz vr1{mr1}, r11, vr11
002e60  6a257834  vor.u.mh vr10{mr2}, r16, vr7
002e64  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002e68  ea207834  vor.u.mh vr1{mr2}, r16, vr7
002e6c  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
002e70  eab31502  vand.s.mz vr7{mr1}, r11, vr1
002e74  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
002e78  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
002e7c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002e80  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002e84  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
002e88  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
002e8c  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
002e90  46000102  vstore.mz vr0{mr1}, 0(r2)
002e94  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002e98  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002e9c  bf16beff  blt.s r28, r27, -604
002ea0  db9cffff  j -796
002ea4  1f0c0000  addli r24, zero, 0
002ea8  9f0c0000  addli r25, zero, 0
002eac  00a00000  mfence { lm }
002eb0  3fa167fe  blt.s r15, r6, -952
002eb4  63016fd5  loadli.w r2,  -5456(r30)
002eb8  e3013f00  loadli.w r3,  24(r30)
002ebc  9f0a0000  addli r21, zero, 0
002ec0  8f832c18  div.f.rn r7, r25, r2
002ec4  0f012c18  div.f.rn r2, r24, r2
002ec8  0bea7320  mul.f.rn r20, r7, r7
002ecc  8be30358  neg.f r7, r7
002ed0  0b614119  sub.f.rn r2, r2, r20
002ed4  1f0a8fd7  addli r20, r30, -5184
002ed8  0b613110  add.f.rn r2, r2, r3
002edc  ab01803f  lui r3, 260096
002ee0  0f010108  sqrt.f.rn r2, r2
002ee4  0f812118  div.f.rn r2, r3, r2
002ee8  42020a02  vload.mz vr4{mr1}, 0(r20)
002eec  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
002ef0  1f8b4a00  addli r22, r21, 32
002ef4  ea212522  vor.u.mz vr3{mr1}, r10, vr2
002ef8  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002efc  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002f00  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002f04  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002f08  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002f0c  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002f10  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002f14  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002f18  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002f1c  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002f20  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002f24  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002f28  e69202c0  vabs.f vr5, vr5
002f2c  661202c0  vabs.f vr4, vr4
002f30  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002f34  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002f38  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002f3c  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002f40  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002f44  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002f48  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002f4c  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002f50  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
002f54  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
002f58  46004a02  vstore.mz vr4{mr1}, 0(r20)
002f5c  4bfe67fd  ble.s r15, r22, -1124
002f60  1f0b8a00  addli r22, r20, 64
002f64  9f8a8a00  addli r21, r21, 64
002f68  1f0a0a01  addli r20, r20, 128
002f6c  42020b02  vload.mz vr4{mr1}, 0(r22)
002f70  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002f74  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002f78  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002f7c  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002f80  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002f84  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002f88  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002f8c  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002f90  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002f94  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002f98  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002f9c  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002fa0  e69202c0  vabs.f vr5, vr5
002fa4  661202c0  vabs.f vr4, vr4
002fa8  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002fac  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002fb0  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002fb4  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002fb8  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002fbc  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002fc0  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002fc4  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002fc8  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
002fcc  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
002fd0  46002b02  vstore.mz vr2{mr1}, 0(r22)
002fd4  3fdcfafe  blt.s r21, r15, -236
002fd8  5b64ffff  j -1248
002fdc  80300002  core_id r1
002fe0  bb800000  bneq r1, zero, 32
002fe4  63012f00  loadli.w r2,  16(r30)
002fe8  ab0100f0  lui r3, 983040
002fec  1b311100  slli r2, r2, 1
002ff0  17113100  or r2, r2, r3
002ff4  ab010200  lui r3, 32
002ff8  9f810100  addli r3, r3, 0
002ffc  7f013200  l_gm2sm r2, r3, 0(r[5:6])
003000  2bf10000  lui r2, 15
003004  e3411f00  loadli.w r3,  12(r30)
003008  00200300  mfence { sm, gm }
00300c  1b11f1ff  ori r2, r2, 4095
003010  80210104  csr_set csr3, r2
003014  00d00100  sync_group
003018  4b8f111a  ble.s r3, r1, 14272
00301c  e3012f00  loadli.w r3,  16(r30)
003020  e3422f00  loadli.w r5,  20(r30)
003024  2bf4ffff  lui r8, 1048575
003028  2b080200  lui r16, 32
00302c  9f068fd7  addli r13, r30, -5184
003030  9f040002  addli r9, zero, 256
003034  1f050001  addli r10, zero, 128
003038  9f058000  addli r11, zero, 64
00303c  1f064000  addli r12, zero, 32
003040  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003044  1b14f4ff  ori r8, r8, 4095
003048  1f080800  addli r16, r16, 0
00304c  0b925110  add.s r4, r3, r5
003050  1bb11100  slli r2, r3, 1
003054  b3810108  fix2float.rn r3, r3
003058  1f73f2ff  addli r6, r4, -1
00305c  1bb21200  slli r4, r5, 1
003060  8b125330  div.s r5, r6, r5
003064  1f130000  addli r6, zero, 1
003068  5b070000  j 56
00306c  00a00000  mfence { lm }
003070  6b5a0f00  load.d r[21:22], 0(r30)
003074  ab0900f0  lui r19, 983040
003078  9f068fd7  addli r13, r30, -5184
00307c  97193101  or r19, r2, r19
003080  8b281a11  add.ul r[18:19], r[21:22], r[18:19]
003084  005a0102  load_param_i r20, 2
003088  ffb9d800  s_lm2gm r19, r13, 0(r[18:19])
00308c  8b101a10  add.s r1, r20, r1
003090  00a00200  mfence { lm, gm }
003094  e3431f00  loadli.w r7,  12(r30)
003098  3fa07000  blt.s r1, r7, 8
00309c  dbe70600  j 14140
0030a0  e3031f00  loadli.w r7,  8(r30)
0030a4  ab0900f0  lui r19, 983040
0030a8  97193101  or r19, r2, r19
0030ac  8b987010  add.s r17, r1, r7
0030b0  9f037fd6  addli r7, r30, -5320
0030b4  8b98f820  mul.s r17, r17, r15
0030b8  6bda0300  load.d r[21:22], 0(r7)
0030bc  b3980828  sext_int2long r[18:19], r17
0030c0  97b86802  sll.d r[18:19], r[18:19], r6
0030c4  0b2a1a11  add.ul r[21:22], r[21:22], r[18:19]
0030c8  ff29da00  l_gm2lm r19, r13, 0(r[21:22])
0030cc  00a00200  mfence { lm, gm }
0030d0  3fc76200  blt.s r5, r6, 464
0030d4  1f0a0000  addli r20, zero, 0
0030d8  9f090000  addli r19, zero, 0
0030dc  9f0a0000  addli r21, zero, 0
0030e0  db0c0000  j 100
0030e4  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
0030e8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0030ec  9f9a0a00  addli r21, r21, 1
0030f0  6af134c0  vsrl.p vr2, r9, vr3
0030f4  6af214c0  vsrl.p vr4, r9, vr1
0030f8  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
0030fc  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
003100  ea7125c0  vsrl.p vr3, r10, vr2
003104  6a7215c0  vsrl.p vr4, r10, vr1
003108  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
00310c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
003110  eaf125c0  vsrl.p vr3, r11, vr2
003114  6af215c0  vsrl.p vr4, r11, vr1
003118  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
00311c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
003120  ea7126c0  vsrl.p vr3, r12, vr2
003124  6a7216c0  vsrl.p vr4, r12, vr1
003128  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
00312c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
003130  fa130140  vextracti.f r7, 0(vr2)
003134  fa960040  vextracti.f r13, 0(vr1)
003138  0b6a7a10  add.f.rn r20, r20, r7
00313c  8be9d910  add.f.rn r19, r19, r13
003140  b7a55a00  beq r21, r5, 360
003144  1f8c0a00  addli r24, r21, 0
003148  37309700  beq r14, r9, 12
00314c  17ab8a00  xor r22, r21, r8
003150  0b9c6211  add.s r24, r5, r22
003154  0b1bec20  mul.s r22, r24, r14
003158  12320002  vadd.s.mz vr4{mr1}, zero, vr0
00315c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
003160  12310002  vadd.s.mz vr2{mr1}, zero, vr0
003164  92300002  vadd.s.mz vr1{mr1}, zero, vr0
003168  0b9b6719  sub.s r22, r15, r22
00316c  0b1beb40  min.s r22, r22, r14
003170  bf5d6bfe  blt.s r22, r6, -140
003174  92300002  vadd.s.mz vr1{mr1}, zero, vr0
003178  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00317c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
003180  12320002  vadd.s.mz vr4{mr1}, zero, vr0
003184  9f0b0000  addli r23, zero, 0
003188  0b1c8221  mul.s r24, r4, r24
00318c  9f0c8fd7  addli r25, r30, -5184
003190  1f0d0800  addli r26, r16, 0
003194  8b1d8d11  add.s r27, r26, r24
003198  9f838b00  addli r7, r23, 64
00319c  ca820d02  vloads.mz vr5{mr1}, 0(r27)
0031a0  1f8e8d00  addli r28, r27, 64
0031a4  4a030e02  vloads.mz vr6{mr1}, 0(r28)
0031a8  0b9e8c11  add.s r28, r25, r24
0031ac  c2030e02  vload.mz vr7{mr1}, 0(r28)
0031b0  9f068e00  addli r13, r28, 64
0031b4  42840602  vload.mz vr8{mr1}, 0(r13)
0031b8  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
0031bc  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0031c0  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
0031c4  06b40300  vfp162float_l.rn vr8, vr7
0031c8  86f30300  vfp162float_h.rn vr7, vr7
0031cc  86340300  vfp162float_l.rn vr9, vr6
0031d0  06730300  vfp162float_h.rn vr6, vr6
0031d4  86120400  vfloat2fp16_l.rn vr5, vr8
0031d8  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
0031dc  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
0031e0  12340002  vadd.s.mz vr8{mr1}, zero, vr0
0031e4  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
0031e8  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
0031ec  06940400  vfloat2fp16_l.rn vr8, vr9
0031f0  86d20300  vfloat2fp16_h.rn vr5, vr7
0031f4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0031f8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0031fc  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
003200  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003204  06540300  vfloat2fp16_h.rn vr8, vr6
003208  46005e02  vstore.mz vr5{mr1}, 0(r28)
00320c  46808602  vstore.mz vr8{mr1}, 0(r13)
003210  4b5b7bfe  ble.s r22, r7, -300
003214  9f830d01  addli r7, r27, 128
003218  9f060e01  addli r13, r28, 128
00321c  9f8b0b01  addli r23, r23, 128
003220  1f0d0d02  addli r26, r26, 256
003224  9f8c0c02  addli r25, r25, 256
003228  ca820302  vloads.mz vr5{mr1}, 0(r7)
00322c  9f838d01  addli r7, r27, 192
003230  c2830602  vload.mz vr7{mr1}, 0(r13)
003234  4a830302  vloads.mz vr6{mr1}, 0(r7)
003238  9f038e01  addli r7, r28, 192
00323c  42840302  vload.mz vr8{mr1}, 0(r7)
003240  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
003244  92320002  vadd.s.mz vr5{mr1}, zero, vr0
003248  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
00324c  12330002  vadd.s.mz vr6{mr1}, zero, vr0
003250  86b40300  vfp162float_l.rn vr9, vr7
003254  86f30300  vfp162float_h.rn vr7, vr7
003258  86920400  vfloat2fp16_l.rn vr5, vr9
00325c  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
003260  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
003264  86340400  vfp162float_l.rn vr9, vr8
003268  06740400  vfp162float_h.rn vr8, vr8
00326c  06930400  vfloat2fp16_l.rn vr6, vr9
003270  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
003274  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
003278  86d20300  vfloat2fp16_h.rn vr5, vr7
00327c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
003280  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
003284  06530400  vfloat2fp16_h.rn vr6, vr8
003288  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
00328c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003290  46805602  vstore.mz vr5{mr1}, 0(r13)
003294  46806302  vstore.mz vr6{mr1}, 0(r7)
003298  bffb6bff  blt.s r23, r22, -260
00329c  5bc9ffff  j -440
0032a0  9f090000  addli r19, zero, 0
0032a4  1f0a0000  addli r20, zero, 0
0032a8  00a00000  mfence { lm }
0032ac  3f8767fe  blt.s r15, r6, -576
0032b0  0f0a3a18  div.f.rn r20, r20, r3
0032b4  8f893918  div.f.rn r19, r19, r3
0032b8  e3033f00  loadli.w r7,  24(r30)
0032bc  1f0b0000  addli r22, zero, 0
0032c0  8b6a4a21  mul.f.rn r21, r20, r20
0032c4  0b6a0a58  neg.f r20, r20
0032c8  8be95919  sub.f.rn r19, r19, r21
0032cc  9f0a8fd7  addli r21, r30, -5184
0032d0  8be97910  add.f.rn r19, r19, r7
0032d4  ab03803f  lui r7, 260096
0032d8  8f890908  sqrt.f.rn r19, r19
0032dc  8f893319  div.f.rn r19, r7, r19
0032e0  c2800a02  vload.mz vr1{mr1}, 0(r21)
0032e4  9f0b4b00  addli r23, r22, 32
0032e8  06b10000  vfp162float_l.rn vr2, vr1
0032ec  86f00000  vfp162float_h.rn vr1, vr1
0032f0  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
0032f4  92111a02  vadd.f.mz.rn vr3{mr1}, r20, vr1
0032f8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0032fc  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003300  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
003304  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003308  06120100  vfloat2fp16_l.rn vr4, vr2
00330c  06d20100  vfloat2fp16_h.rn vr4, vr3
003310  46804a02  vstore.mz vr4{mr1}, 0(r21)
003314  4be577ff  ble.s r15, r23, -680
003318  9f8b8a00  addli r23, r21, 64
00331c  1f0b8b00  addli r22, r22, 64
003320  9f8a0a01  addli r21, r21, 128
003324  42810b02  vload.mz vr2{mr1}, 0(r23)
003328  86310100  vfp162float_l.rn vr3, vr2
00332c  06710100  vfp162float_h.rn vr2, vr2
003330  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
003334  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003338  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
00333c  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
003340  86900100  vfloat2fp16_l.rn vr1, vr3
003344  86500100  vfloat2fp16_h.rn vr1, vr2
003348  46801b02  vstore.mz vr1{mr1}, 0(r23)
00334c  3f5efbfe  blt.s r22, r15, -108
003350  dba3ffff  j -740
003354  80300002  core_id r1
003358  1f210000  addli r2, zero, 2
00335c  b7d12018  beq r1, r2, 12404
003360  1f110000  addli r2, zero, 1
003364  b7c32014  beq r1, r2, 10480
003368  3b920018  bneq r1, zero, 12420
00336c  63012f00  loadli.w r2,  16(r30)
003370  ab0100f0  lui r3, 983040
003374  1b312100  slli r2, r2, 2
003378  17113100  or r2, r2, r3
00337c  ab710200  lui r3, 39
003380  9f810108  addli r3, r3, 1024
003384  7f013200  l_gm2sm r2, r3, 0(r[5:6])
003388  db0c0600  j 12388
00338c  80300002  core_id r1
003390  bb800000  bneq r1, zero, 32
003394  63012f00  loadli.w r2,  16(r30)
003398  ab0100f0  lui r3, 983040
00339c  1b312100  slli r2, r2, 2
0033a0  17113100  or r2, r2, r3
0033a4  abd10200  lui r3, 45
0033a8  9f8101f0  addli r3, r3, -2048
0033ac  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0033b0  2bf10000  lui r2, 15
0033b4  e3411f00  loadli.w r3,  12(r30)
0033b8  00200300  mfence { sm, gm }
0033bc  1b11f1ff  ori r2, r2, 4095
0033c0  80210104  csr_set csr3, r2
0033c4  00d00100  sync_group
0033c8  4bc0111a  ble.s r3, r1, 13328
0033cc  e3012f00  loadli.w r3,  16(r30)
0033d0  e3422f00  loadli.w r5,  20(r30)
0033d4  abf4ffff  lui r9, 1048575
0033d8  abd80200  lui r17, 45
0033dc  1f0b8fd7  addli r22, r30, -5184
0033e0  1f140000  addli r8, zero, 1
0033e4  1f050002  addli r10, zero, 256
0033e8  9f050001  addli r11, zero, 128
0033ec  1f068000  addli r12, zero, 64
0033f0  9f064000  addli r13, zero, 32
0033f4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0033f8  9b94f4ff  ori r9, r9, 4095
0033fc  9f8808f0  addli r17, r17, -2048
003400  0b925110  add.s r4, r3, r5
003404  1bb12100  slli r2, r3, 2
003408  b3810108  fix2float.rn r3, r3
00340c  1f73f2ff  addli r6, r4, -1
003410  1bb22200  slli r4, r5, 2
003414  67043fd6  storeli.w r3, -5312(r30)
003418  9f010fd7  addli r3, r30, -5248
00341c  8b125330  div.s r5, r6, r5
003420  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003424  5b070000  j 56
003428  00a00000  mfence { lm }
00342c  6b530f00  load.d r[7:8], 0(r30)
003430  2b0800f0  lui r16, 983040
003434  1f0b8fd7  addli r22, r30, -5184
003438  005a0102  load_param_i r20, 2
00343c  17180101  or r16, r2, r16
003440  8b101a10  add.s r1, r20, r1
003444  0b292311  add.ul r[19:20], r[7:8], r[19:20]
003448  7f386901  s_lm2gm r16, r22, 0(r[19:20])
00344c  00a00200  mfence { lm, gm }
003450  e3411f00  loadli.w r3,  12(r30)
003454  3fa03000  blt.s r1, r3, 8
003458  5b700600  j 13184
00345c  e3011f00  loadli.w r3,  8(r30)
003460  0b983010  add.s r16, r1, r3
003464  9f210000  addli r3, zero, 2
003468  0b18f820  mul.s r16, r16, r15
00346c  33190828  sext_int2long r[19:20], r16
003470  2b0800f0  lui r16, 983040
003474  17393902  sll.d r[19:20], r[19:20], r3
003478  9f017fd6  addli r3, r30, -5320
00347c  17180101  or r16, r2, r16
003480  6bd30100  load.d r[7:8], 0(r3)
003484  0b2a2311  add.ul r[21:22], r[7:8], r[19:20]
003488  7f286a01  l_gm2lm r16, r22, 0(r[21:22])
00348c  00a00200  mfence { lm, gm }
003490  bf978200  blt.s r5, r8, 484
003494  9f0a0000  addli r21, zero, 0
003498  1f0a0000  addli r20, zero, 0
00349c  1f0b0000  addli r22, zero, 0
0034a0  db0c0000  j 100
0034a4  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
0034a8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0034ac  1f1b0b00  addli r22, r22, 1
0034b0  6a7105c0  vsrl.p vr2, r10, vr0
0034b4  ea7115c0  vsrl.p vr3, r10, vr1
0034b8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0034bc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0034c0  6af105c0  vsrl.p vr2, r11, vr0
0034c4  eaf115c0  vsrl.p vr3, r11, vr1
0034c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0034cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0034d0  6a7106c0  vsrl.p vr2, r12, vr0
0034d4  ea7116c0  vsrl.p vr3, r12, vr1
0034d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0034dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0034e0  6af106c0  vsrl.p vr2, r13, vr0
0034e4  eaf116c0  vsrl.p vr3, r13, vr1
0034e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0034ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0034f0  fa110040  vextracti.f r3, 0(vr0)
0034f4  7a930040  vextracti.f r6, 0(vr1)
0034f8  8bea3a10  add.f.rn r21, r21, r3
0034fc  0b6a6a10  add.f.rn r20, r20, r6
003500  b7755b00  beq r22, r5, 380
003504  1f080b00  addli r16, r22, 0
003508  3730a700  beq r14, r10, 12
00350c  17289b00  xor r16, r22, r9
003510  0b980211  add.s r16, r5, r16
003514  9f010fd7  addli r3, r30, -5248
003518  8b1be820  mul.s r23, r16, r14
00351c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
003520  8b9b7719  sub.s r23, r15, r23
003524  8b9beb40  min.s r23, r23, r14
003528  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00352c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003530  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003534  bfcd8bfe  blt.s r23, r8, -144
003538  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
00353c  1f0c0000  addli r24, zero, 0
003540  8b1c0221  mul.s r25, r4, r16
003544  1f0d8fd7  addli r26, r30, -5184
003548  9f8d0800  addli r27, r17, 0
00354c  92304002  vadd.s.mz vr1{mr1}, zero, vr4
003550  12314002  vadd.s.mz vr2{mr1}, zero, vr4
003554  92314002  vadd.s.mz vr3{mr1}, zero, vr4
003558  0b989d11  add.s r16, r27, r25
00355c  0b1e9d11  add.s r28, r26, r25
003560  1f038800  addli r6, r16, 64
003564  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
003568  9f038801  addli r7, r16, 192
00356c  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
003570  9f018e01  addli r3, r28, 192
003574  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
003578  1f030801  addli r6, r16, 128
00357c  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
003580  9f030e01  addli r7, r28, 128
003584  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
003588  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
00358c  c2950302  vload_mask16.mz vr11{mr1}, 0(r7)
003590  1f038e00  addli r6, r28, 64
003594  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
003598  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00359c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0035a0  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0035a4  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0035a8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0035ac  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0035b0  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
0035b4  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0035b8  1f038c00  addli r6, r24, 64
0035bc  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0035c0  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0035c4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0035c8  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0035cc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0035d0  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
0035d4  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
0035d8  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0035dc  4bab6bfe  ble.s r23, r6, -312
0035e0  1f030802  addli r6, r16, 256
0035e4  9f038802  addli r7, r16, 320
0035e8  9f010e02  addli r3, r28, 256
0035ec  1f0c0c01  addli r24, r24, 128
0035f0  9f8d0d04  addli r27, r27, 512
0035f4  1f0d0d04  addli r26, r26, 512
0035f8  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
0035fc  1f030803  addli r6, r16, 384
003600  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
003604  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
003608  9f038e02  addli r7, r28, 320
00360c  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
003610  1f038803  addli r6, r16, 448
003614  1f088e03  addli r16, r28, 448
003618  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
00361c  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
003620  1f030e03  addli r6, r28, 384
003624  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
003628  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
00362c  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
003630  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
003634  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003638  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00363c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003640  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003644  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
003648  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
00364c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
003650  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003654  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
003658  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00365c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003660  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
003664  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003668  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
00366c  bf3b7cff  blt.s r24, r23, -276
003670  dbc6ffff  j -460
003674  1f0a0000  addli r20, zero, 0
003678  9f0a0000  addli r21, zero, 0
00367c  00a00000  mfence { lm }
003680  bfa687fe  blt.s r15, r8, -600
003684  e3018fd6  loadli.w r3,  -5312(r30)
003688  1f0b0000  addli r22, zero, 0
00368c  8f8a3a18  div.f.rn r21, r21, r3
003690  0f083a18  div.f.rn r16, r20, r3
003694  e3013f00  loadli.w r3,  24(r30)
003698  0bea5a21  mul.f.rn r20, r21, r21
00369c  0b684819  sub.f.rn r16, r16, r20
0036a0  0bea0a58  neg.f r20, r21
0036a4  9f0a8fd7  addli r21, r30, -5184
0036a8  0b683810  add.f.rn r16, r16, r3
0036ac  ab01803f  lui r3, 260096
0036b0  0f080808  sqrt.f.rn r16, r16
0036b4  0f880119  div.f.rn r16, r3, r16
0036b8  9f8b8a00  addli r23, r21, 64
0036bc  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
0036c0  1f0c4b00  addli r24, r22, 32
0036c4  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
0036c8  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
0036cc  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
0036d0  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
0036d4  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
0036d8  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
0036dc  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
0036e0  4ba587ff  ble.s r15, r24, -696
0036e4  9f8b0a01  addli r23, r21, 128
0036e8  1f8c8a01  addli r24, r21, 192
0036ec  1f0b8b00  addli r22, r22, 64
0036f0  9f8a0a02  addli r21, r21, 256
0036f4  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
0036f8  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
0036fc  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003700  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003704  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003708  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
00370c  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
003710  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
003714  bf1efbfe  blt.s r22, r15, -92
003718  5ba2ffff  j -752
00371c  00310002  core_id r2
003720  ab630000  lui r7, 6
003724  9f100000  addli r1, zero, 1
003728  1f038fd7  addli r6, r30, -5184
00372c  1f048000  addli r8, zero, 64
003730  1f050010  addli r10, zero, 2048
003734  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
003738  9b315100  slli r3, r2, 5
00373c  00510102  load_param_i r2, 2
003740  9f830308  addli r7, r7, 1024
003744  9b345100  slli r9, r2, 5
003748  b3850128  zext_int2long r[12:13], r3
00374c  ab0600f0  lui r13, 983040
003750  97b51502  sll.d r[12:13], r[12:13], r1
003754  9716d400  or r13, r8, r13
003758  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
00375c  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
003760  9bb52100  slli r11, r3, 2
003764  8b913410  add.s r3, r9, r3
003768  00a00200  mfence { lm, gm }
00376c  c2000302  vload.mz vr1{mr1}, 0(r6)
003770  1386a104  setlt.u r12, r3, r10
003774  8b957510  add.s r11, r11, r7
003778  9f868500  addli r13, r11, 64
00377c  66c11180  vmerge_l.hf vr2, vr3, vr1
003780  e6c011a0  vmerge_h.hf vr1, vr3, vr1
003784  4e902502  vstores_mask16.mz vr2{mr1}, 0(r11)
003788  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
00378c  bb7e06fe  bneq r12, zero, -68
003790  abf00000  lui r1, 15
003794  80310002  core_id r3
003798  9f020006  addli r5, zero, 768
00379c  00a00300  mfence { lm, sm, gm }
0037a0  9b90f0ff  ori r1, r1, 4095
0037a4  1b821100  andi r4, r3, 1
0037a8  9f010006  addli r3, zero, 768
0037ac  80a10004  csr_set csr3, r1
0037b0  00d00100  sync_group
0037b4  670b4fd4  storeli.w r4, -5456(r30)
0037b8  37200200  beq r4, zero, 8
0037bc  9f02000a  addli r5, zero, 1280
0037c0  63421f00  loadli.w r4,  12(r30)
0037c4  9f100000  addli r1, zero, 1
0037c8  3f401218  blt.s r4, r1, 12304
0037cc  63026fd5  loadli.w r4,  -5456(r30)
0037d0  9b461100  srli r13, r2, 1
0037d4  00310002  core_id r2
0037d8  1f078fd7  addli r14, r30, -5184
0037dc  1f040000  addli r8, zero, 0
0037e0  1f797000  addli r18, zero, 63
0037e4  1f0a0005  addli r20, zero, 640
0037e8  2b0e803f  lui r28, 260096
0037ec  1f052000  addli r10, zero, 16
0037f0  2b03ffff  lui r6, 1048560
0037f4  ab04807f  lui r9, 522240
0037f8  ab0dc07f  lui r27, 523264
0037fc  9f380000  addli r17, zero, 3
003800  9f5a1000  addli r21, zero, 13
003804  9f058fd4  addli r11, r30, -5568
003808  1b461100  srli r12, r2, 1
00380c  1bb12200  slli r2, r5, 2
003810  8b113220  mul.s r3, r4, r3
003814  1f824200  addli r4, r5, 32
003818  0b11e110  add.s r2, r2, r14
00381c  e7433fd4  storeli.w r3, -5572(r30)
003820  9bb11200  slli r3, r5, 1
003824  67034fd4  storeli.w r4, -5584(r30)
003828  2be27f00  lui r4, 2046
00382c  1f0181ff  addli r2, r2, -64
003830  67083fd6  storeli.w r3, -5248(r30)
003834  8b91e110  add.s r3, r3, r14
003838  e7422fd4  storeli.w r2, -5588(r30)
00383c  1f8181ff  addli r2, r3, -64
003840  abf100fc  lui r3, 1032207
003844  e7022fd4  storeli.w r2, -5592(r30)
003848  2bf1ffff  lui r2, 1048575
00384c  1b9801c0  ori r16, r3, 3072
003850  9f211000  addli r3, zero, 10
003854  00a00000  mfence { lm }
003858  46903502  vstore_mask16.mz vr3{mr1}, 0(r11)
00385c  e703dfd4  storeli.w r13, -5576(r30)
003860  6743cfd4  storeli.w r12, -5580(r30)
003864  1b1101f8  ori r2, r2, 3968
003868  67422fd4  storeli.w r2, -5596(r30)
00386c  2bf10000  lui r2, 15
003870  1b11f1ff  ori r2, r2, 4095
003874  67042fd6  storeli.w r2, -5312(r30)
003878  2b710000  lui r2, 7
00387c  9b19f1ff  ori r19, r2, 4095
003880  2b01ff03  lui r2, 16368
003884  9b17f13f  ori r15, r2, 1023
003888  2be10700  lui r2, 126
00388c  5b040000  j 32
003890  00a00300  mfence { lm, sm, gm }
003894  e3058fd6  loadli.w r11,  -5312(r30)
003898  80a10504  csr_set csr3, r11
00389c  00d00100  sync_group
0038a0  0b14d410  add.s r8, r8, r13
0038a4  3f209401  blt.s r8, r25, 8
0038a8  5b80faff  j -11264
0038ac  8b15c410  add.s r11, r8, r12
0038b0  cb8fbcfe  ble.s r25, r11, -32
0038b4  63061f00  loadli.w r12,  8(r30)
0038b8  8b95c510  add.s r11, r11, r12
0038bc  0b06d430  div.u r12, r8, r13
0038c0  e3467fd4  loadli.w r13,  -5572(r30)
0038c4  9bb5b500  slli r11, r11, 11
0038c8  9795d500  or r11, r11, r13
0038cc  9f067fd6  addli r13, r30, -5320
0038d0  b39b0528  sext_int2long r[24:25], r11
0038d4  ab0500f0  lui r11, 983040
0038d8  1b366600  slli r12, r12, 6
0038dc  17bc1b02  sll.d r[25:26], r[24:25], r1
0038e0  6bdb0600  load.d r[23:24], 0(r13)
0038e4  9f068fd5  addli r13, r30, -5440
0038e8  1b060604  andi r12, r12, 64
0038ec  73b08601  store.d r[25:26], 0(r13)
0038f0  e3060fd7  loadli.w r13,  -5248(r30)
0038f4  8b2b8b11  add.ul r[24:25], r[23:24], r[25:26]
0038f8  9795b600  or r11, r13, r11
0038fc  ffa5eb00  l_gm2lm r11, r14, 0(r[24:25])
003900  80350002  core_id r11
003904  9715b600  or r11, r12, r11
003908  e70bbfd4  storeli.w r11, -5448(r30)
00390c  00a00200  mfence { lm, gm }
003910  e3055fd4  loadli.w r11,  -5592(r30)
003914  63465fd4  loadli.w r12,  -5588(r30)
003918  e3066fd4  loadli.w r13,  -5584(r30)
00391c  c2800502  vload.mz vr1{mr1}, 0(r11)
003920  9f86c6ff  addli r13, r13, -32
003924  9f0c86ff  addli r25, r12, -64
003928  9f8585ff  addli r11, r11, -64
00392c  130cd904  setlt.u r24, r18, r13
003930  66c111a0  vmerge_h.hf vr2, vr3, vr1
003934  e6c01180  vmerge_l.hf vr1, vr3, vr1
003938  46102602  vstore_mask16.mz vr2{mr1}, 0(r12)
00393c  1f0606ff  addli r12, r12, -128
003940  46901c02  vstore_mask16.mz vr1{mr1}, 0(r25)
003944  3b6f0cfe  bneq r24, zero, -40
003948  00a00000  mfence { lm }
00394c  e3056fd5  loadli.w r11,  -5456(r30)
003950  3bb60500  bneq r11, zero, 396
003954  92303002  vadd.s.mz vr1{mr1}, zero, vr3
003958  12313002  vadd.s.mz vr2{mr1}, zero, vr3
00395c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
003960  63464fd4  loadli.w r12,  -5596(r30)
003964  9f050000  addli r11, zero, 0
003968  0b9c7510  add.s r24, r11, r7
00396c  8b16b710  add.s r13, r14, r11
003970  1f060601  addli r12, r12, 128
003974  9f850504  addli r11, r11, 512
003978  1f0b0c01  addli r22, r24, 128
00397c  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
003980  9f0b8c00  addli r23, r24, 64
003984  42940602  vload_mask16.mz vr8{mr1}, 0(r13)
003988  9f8c8601  addli r25, r13, 192
00398c  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
003990  1f0b8c01  addli r22, r24, 192
003994  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
003998  9f8b8600  addli r23, r13, 64
00399c  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0039a0  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
0039a4  1f8b0601  addli r22, r13, 128
0039a8  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
0039ac  c2140b02  vload_mask16.mz vr9{mr1}, 0(r22)
0039b0  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0039b4  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0039b8  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0039bc  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0039c0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0039c4  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
0039c8  46108b02  vstore_mask16.mz vr8{mr1}, 0(r22)
0039cc  1f0b0c02  addli r22, r24, 256
0039d0  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0039d4  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0039d8  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0039dc  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
0039e0  9f8b0603  addli r23, r13, 384
0039e4  4a100b02  vloads_mask16.mz vr0{mr1}, 0(r22)
0039e8  1f0b8c02  addli r22, r24, 320
0039ec  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
0039f0  9f8c0602  addli r25, r13, 256
0039f4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0039f8  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0039fc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003a00  4a130b02  vloads_mask16.mz vr6{mr1}, 0(r22)
003a04  1f0b0c03  addli r22, r24, 384
003a08  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003a0c  1f0c8c03  addli r24, r24, 448
003a10  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003a14  4a140b02  vloads_mask16.mz vr8{mr1}, 0(r22)
003a18  1f8b8602  addli r22, r13, 320
003a1c  4a150c02  vloads_mask16.mz vr10{mr1}, 0(r24)
003a20  9f868603  addli r13, r13, 448
003a24  c2140b02  vload_mask16.mz vr9{mr1}, 0(r22)
003a28  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003a2c  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
003a30  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003a34  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
003a38  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003a3c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003a40  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003a44  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003a48  46106b02  vstore_mask16.mz vr6{mr1}, 0(r22)
003a4c  130b4605  setlt.u r22, r12, r20
003a50  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003a54  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003a58  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003a5c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003a60  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003a64  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
003a68  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
003a6c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003a70  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003a74  bb5b0bfe  bneq r22, zero, -268
003a78  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003a7c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003a80  9f050002  addli r11, zero, 256
003a84  6af105c0  vsrl.p vr2, r11, vr0
003a88  eaf115c0  vsrl.p vr3, r11, vr1
003a8c  9f050001  addli r11, zero, 128
003a90  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a94  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a98  6af105c0  vsrl.p vr2, r11, vr0
003a9c  eaf115c0  vsrl.p vr3, r11, vr1
003aa0  9f058000  addli r11, zero, 64
003aa4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003aa8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003aac  6af105c0  vsrl.p vr2, r11, vr0
003ab0  eaf115c0  vsrl.p vr3, r11, vr1
003ab4  9f054000  addli r11, zero, 32
003ab8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003abc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003ac0  6af105c0  vsrl.p vr2, r11, vr0
003ac4  eaf115c0  vsrl.p vr3, r11, vr1
003ac8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003acc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003ad0  fa150040  vextracti.f r11, 0(vr0)
003ad4  7a960040  vextracti.f r12, 0(vr1)
003ad8  5b670000  j 824
003adc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003ae0  abf5ffff  lui r11, 1048575
003ae4  1f060000  addli r12, zero, 0
003ae8  1f090003  addli r18, zero, 384
003aec  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003af0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003af4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003af8  9b9605f8  ori r13, r11, 3968
003afc  0b9cc310  add.s r24, r7, r12
003b00  8b15c710  add.s r11, r14, r12
003b04  9f860601  addli r13, r13, 128
003b08  1f060604  addli r12, r12, 512
003b0c  9f0b0c31  addli r23, r24, 6272
003b10  9f0c0c30  addli r25, r24, 6144
003b14  1f0b8c31  addli r22, r24, 6336
003b18  1f8d0518  addli r26, r11, 3072
003b1c  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
003b20  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
003b24  9f0c8c30  addli r25, r24, 6208
003b28  ca140b02  vloads_mask16.mz vr9{mr1}, 0(r22)
003b2c  9f8b0519  addli r23, r11, 3200
003b30  1f8b8518  addli r22, r11, 3136
003b34  42130d02  vload_mask16.mz vr6{mr1}, 0(r26)
003b38  4a940c02  vloads_mask16.mz vr8{mr1}, 0(r25)
003b3c  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
003b40  9f8c8519  addli r25, r11, 3264
003b44  c2150b02  vload_mask16.mz vr11{mr1}, 0(r22)
003b48  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
003b4c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003b50  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
003b54  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
003b58  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
003b5c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003b60  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
003b64  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
003b68  9f0b0c32  addli r23, r24, 6400
003b6c  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
003b70  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003b74  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003b78  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
003b7c  9f8c051a  addli r25, r11, 3328
003b80  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003b84  46105b02  vstore_mask16.mz vr5{mr1}, 0(r22)
003b88  1f8b051b  addli r22, r11, 3456
003b8c  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
003b90  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
003b94  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
003b98  9f0b8c32  addli r23, r24, 6464
003b9c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003ba0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003ba4  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
003ba8  9f0b0c33  addli r23, r24, 6528
003bac  1f0c8c33  addli r24, r24, 6592
003bb0  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
003bb4  9f8b851a  addli r23, r11, 3392
003bb8  4a150c02  vloads_mask16.mz vr10{mr1}, 0(r24)
003bbc  9f85851b  addli r11, r11, 3520
003bc0  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
003bc4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003bc8  c2130b02  vload_mask16.mz vr7{mr1}, 0(r22)
003bcc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003bd0  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
003bd4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003bd8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003bdc  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003be0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003be4  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
003be8  938b2605  setlt.u r23, r13, r18
003bec  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003bf0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003bf4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003bf8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003bfc  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003c00  46105b02  vstore_mask16.mz vr5{mr1}, 0(r22)
003c04  46907502  vstore_mask16.mz vr7{mr1}, 0(r11)
003c08  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003c0c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003c10  bbbb0bfe  bneq r23, zero, -276
003c14  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003c18  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003c1c  9f050002  addli r11, zero, 256
003c20  1f0d0000  addli r26, zero, 0
003c24  eaf115c0  vsrl.p vr3, r11, vr1
003c28  6af105c0  vsrl.p vr2, r11, vr0
003c2c  9f050001  addli r11, zero, 128
003c30  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003c34  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003c38  eaf115c0  vsrl.p vr3, r11, vr1
003c3c  6af105c0  vsrl.p vr2, r11, vr0
003c40  9f058000  addli r11, zero, 64
003c44  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003c48  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003c4c  eaf115c0  vsrl.p vr3, r11, vr1
003c50  6af105c0  vsrl.p vr2, r11, vr0
003c54  9f054000  addli r11, zero, 32
003c58  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003c5c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003c60  eaf115c0  vsrl.p vr3, r11, vr1
003c64  6af105c0  vsrl.p vr2, r11, vr0
003c68  abf5ffff  lui r11, 1048575
003c6c  9b9505f8  ori r11, r11, 3968
003c70  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003c74  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003c78  fa960040  vextracti.f r13, 0(vr1)
003c7c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003c80  7a190040  vextracti.f r18, 0(vr0)
003c84  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003c88  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003c8c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003c90  8b9ca311  add.s r25, r7, r26
003c94  0b1ca711  add.s r24, r14, r26
003c98  9f850501  addli r11, r11, 128
003c9c  1f0d0d04  addli r26, r26, 512
003ca0  1f8b0c18  addli r22, r25, 3072
003ca4  9f8b0c19  addli r23, r25, 3200
003ca8  1f068c01  addli r12, r24, 192
003cac  42140c02  vload_mask16.mz vr8{mr1}, 0(r24)
003cb0  4a100b02  vloads_mask16.mz vr0{mr1}, 0(r22)
003cb4  1f8b8c18  addli r22, r25, 3136
003cb8  ca920b02  vloads_mask16.mz vr5{mr1}, 0(r23)
003cbc  9f8b8c19  addli r23, r25, 3264
003cc0  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
003cc4  4a130b02  vloads_mask16.mz vr6{mr1}, 0(r22)
003cc8  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
003ccc  1f0b0c01  addli r22, r24, 128
003cd0  9f0b8c00  addli r23, r24, 64
003cd4  c2140b02  vload_mask16.mz vr9{mr1}, 0(r22)
003cd8  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
003cdc  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
003ce0  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
003ce4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
003ce8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
003cec  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003cf0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003cf4  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003cf8  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003cfc  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
003d00  46108b02  vstore_mask16.mz vr8{mr1}, 0(r22)
003d04  1f0b0c02  addli r22, r24, 256
003d08  46106602  vstore_mask16.mz vr6{mr1}, 0(r12)
003d0c  1f860c1a  addli r12, r25, 3328
003d10  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
003d14  9f0b0c03  addli r23, r24, 384
003d18  4a100602  vloads_mask16.mz vr0{mr1}, 0(r12)
003d1c  1f868c1a  addli r12, r25, 3392
003d20  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003d24  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003d28  c2130b02  vload_mask16.mz vr7{mr1}, 0(r22)
003d2c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003d30  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003d34  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
003d38  1f860c1b  addli r12, r25, 3456
003d3c  9f8c8c1b  addli r25, r25, 3520
003d40  4a140602  vloads_mask16.mz vr8{mr1}, 0(r12)
003d44  1f068c02  addli r12, r24, 320
003d48  4a950c02  vloads_mask16.mz vr10{mr1}, 0(r25)
003d4c  1f0c8c03  addli r24, r24, 448
003d50  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
003d54  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003d58  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
003d5c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003d60  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
003d64  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003d68  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003d6c  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
003d70  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003d74  46106602  vstore_mask16.mz vr6{mr1}, 0(r12)
003d78  13864505  setlt.u r12, r11, r20
003d7c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003d80  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003d84  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003d88  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003d8c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003d90  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
003d94  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
003d98  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003d9c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003da0  bb4b06fe  bneq r12, zero, -272
003da4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003da8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003dac  9f050002  addli r11, zero, 256
003db0  6af105c0  vsrl.p vr2, r11, vr0
003db4  eaf115c0  vsrl.p vr3, r11, vr1
003db8  9f050001  addli r11, zero, 128
003dbc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003dc0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003dc4  6af105c0  vsrl.p vr2, r11, vr0
003dc8  eaf115c0  vsrl.p vr3, r11, vr1
003dcc  9f058000  addli r11, zero, 64
003dd0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003dd4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003dd8  6af105c0  vsrl.p vr2, r11, vr0
003ddc  eaf115c0  vsrl.p vr3, r11, vr1
003de0  9f054000  addli r11, zero, 32
003de4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003de8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003dec  6af105c0  vsrl.p vr2, r11, vr0
003df0  eaf115c0  vsrl.p vr3, r11, vr1
003df4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003df8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003dfc  fa150040  vextracti.f r11, 0(vr0)
003e00  7a960040  vextracti.f r12, 0(vr1)
003e04  8b65b910  add.f.rn r11, r18, r11
003e08  0be6c610  add.f.rn r12, r13, r12
003e0c  1f797000  addli r18, zero, 63
003e10  2b8b0000  lui r22, 8
003e14  ab8b0000  lui r23, 8
003e18  630d7fd5  loadli.w r26,  -5448(r30)
003e1c  1f0b0b08  addli r22, r22, 1024
003e20  9f8b0b0c  addli r23, r23, 1536
003e24  9b362d00  slli r13, r26, 2
003e28  1f0c0b00  addli r24, r22, 0
003e2c  9f8c0b00  addli r25, r23, 0
003e30  0b9b8611  add.s r22, r13, r24
003e34  8b9b9611  add.s r23, r13, r25
003e38  73e0cb00  stores.w r12, 0(r23)
003e3c  7360bb00  stores.w r11, 0(r22)
003e40  1b964600  ori r12, r13, 4
003e44  9f0b0000  addli r23, zero, 0
003e48  00a00300  mfence { lm, sm, gm }
003e4c  e3058fd6  loadli.w r11,  -5312(r30)
003e50  8b168611  add.s r13, r12, r24
003e54  0b169611  add.s r12, r12, r25
003e58  80a10504  csr_set csr3, r11
003e5c  9b05ed07  andi r11, r26, 126
003e60  00d00100  sync_group
003e64  efc60600  loads.w r13, 0(r13)
003e68  6f460600  loads.w r12, 0(r12)
003e6c  9bb52500  slli r11, r11, 2
003e70  0b9b8511  add.s r22, r11, r24
003e74  8b959511  add.s r11, r11, r25
003e78  6f4b0b00  loads.w r22, 0(r22)
003e7c  efc50500  loads.w r11, 0(r11)
003e80  8be66611  add.f.rn r13, r13, r22
003e84  2b0b003a  lui r22, 237568
003e88  8b65b610  add.f.rn r11, r12, r11
003e8c  0be66621  mul.f.rn r12, r13, r22
003e90  8be56521  mul.f.rn r11, r11, r22
003e94  8b66c620  mul.f.rn r13, r12, r12
003e98  0b660658  neg.f r12, r12
003e9c  8be5d518  sub.f.rn r11, r11, r13
003ea0  e3063f00  loadli.w r13,  24(r30)
003ea4  8be5d510  add.f.rn r11, r11, r13
003ea8  9f068fd7  addli r13, r30, -5184
003eac  8f850508  sqrt.f.rn r11, r11
003eb0  8f05be18  div.f.rn r11, r28, r11
003eb4  1f8b8600  addli r22, r13, 64
003eb8  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
003ebc  1f8c4b00  addli r24, r23, 32
003ec0  c2100b02  vload_mask16.mz vr1{mr1}, 0(r22)
003ec4  138c8207  setle.u r24, r5, r24
003ec8  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
003ecc  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
003ed0  0a900502  vmul.f.mz.rn vr0{mr1}, r11, vr0
003ed4  8a901502  vmul.f.mz.rn vr1{mr1}, r11, vr1
003ed8  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
003edc  46101b02  vstore_mask16.mz vr1{mr1}, 0(r22)
003ee0  bb700c00  bneq r24, zero, 60
003ee4  1f8b0601  addli r22, r13, 128
003ee8  1f8c8601  addli r24, r13, 192
003eec  9f8b8b00  addli r23, r23, 64
003ef0  9f860602  addli r13, r13, 256
003ef4  42100b02  vload_mask16.mz vr0{mr1}, 0(r22)
003ef8  c2100c02  vload_mask16.mz vr1{mr1}, 0(r24)
003efc  938c5b04  setlt.u r25, r23, r5
003f00  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
003f04  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
003f08  0a900502  vmul.f.mz.rn vr0{mr1}, r11, vr0
003f0c  8a901502  vmul.f.mz.rn vr1{mr1}, r11, vr1
003f10  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
003f14  46101c02  vstore_mask16.mz vr1{mr1}, 0(r24)
003f18  3bfe0cfe  bneq r25, zero, -100
003f1c  9f058fd7  addli r11, r30, -5184
003f20  1f068fd7  addli r12, r30, -5184
003f24  9f060000  addli r13, zero, 0
003f28  00a00000  mfence { lm }
003f2c  c2110602  vload_mask16.mz vr3{mr1}, 0(r12)
003f30  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003f34  1f0b8600  addli r22, r12, 64
003f38  9f864600  addli r13, r13, 32
003f3c  1f060601  addli r12, r12, 128
003f40  6a201522  vor.u.mz vr0{mr1}, r10, vr1
003f44  eaa21a22  vor.u.mz vr5{mr1}, r21, vr1
003f48  42110b02  vload_mask16.mz vr2{mr1}, 0(r22)
003f4c  138b5604  setlt.u r22, r13, r5
003f50  6e3230c2  vsrl.s.mz vr4{mr1}, vr0, vr3
003f54  6e3020c2  vsrl.s.mz vr0{mr1}, vr0, vr2
003f58  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
003f5c  6ab00002  vand.s.mz vr0{mr1}, r1, vr0
003f60  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
003f64  e69101c0  vabs.f vr3, vr3
003f68  16300102  vadd.s.mz vr0{mr1}, vr2, vr0
003f6c  661101c0  vabs.f vr2, vr2
003f70  12b24902  vadd.s.mz vr4{mr1}, r19, vr4
003f74  72a13442  vlt.u.mz mr2{mr1}, r9, vr3
003f78  12b00902  vadd.s.mz vr0{mr1}, r19, vr0
003f7c  6a324302  vand.s.mz vr4{mr1}, r6, vr4
003f80  6a300302  vand.s.mz vr0{mr1}, r6, vr0
003f84  6aa21d34  vor.u.mh vr4{mr2}, r27, vr1
003f88  72a12442  vlt.u.mz mr2{mr1}, r9, vr2
003f8c  6aa11822  vor.u.mz vr2{mr1}, r17, vr1
003f90  6aa01d34  vor.u.mh vr0{mr2}, r27, vr1
003f94  eaa01122  vor.u.mz vr1{mr1}, r3, vr1
003f98  eeb142c2  vsrl.s.mz vr3{mr1}, vr5, vr4
003f9c  6e3241c2  vsrl.s.mz vr4{mr1}, vr2, vr4
003fa0  eeb202c2  vsrl.s.mz vr5{mr1}, vr5, vr0
003fa4  6e3001c2  vsrl.s.mz vr0{mr1}, vr2, vr0
003fa8  6a313102  vand.s.mz vr2{mr1}, r2, vr3
003fac  6a324202  vand.s.mz vr4{mr1}, r4, vr4
003fb0  ea315102  vand.s.mz vr3{mr1}, r2, vr5
003fb4  6a300202  vand.s.mz vr0{mr1}, r4, vr0
003fb8  6a312e22  vor.s.mz vr2{mr1}, r28, vr2
003fbc  6a324e22  vor.s.mz vr4{mr1}, r28, vr4
003fc0  6a300e22  vor.s.mz vr0{mr1}, r28, vr0
003fc4  ea313e22  vor.s.mz vr3{mr1}, r28, vr3
003fc8  06110120  vfloat2fp16_l.rz vr2, vr2
003fcc  06500020  vfloat2fp16_h.rz vr0, vr0
003fd0  06d10120  vfloat2fp16_h.rz vr2, vr3
003fd4  06100220  vfloat2fp16_l.rz vr0, vr4
003fd8  eeb020a2  vsll.s.mz vr1{mr1}, vr1, vr2
003fdc  6ab00702  vand.s.mz vr0{mr1}, r15, vr0
003fe0  ea301802  vand.s.mz vr1{mr1}, r16, vr1
003fe4  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
003fe8  46800502  vstore.mz vr0{mr1}, 0(r11)
003fec  9f858500  addli r11, r11, 64
003ff0  bb7c0bfe  bneq r22, zero, -196
003ff4  1f0c8fd5  addli r24, r30, -5440
003ff8  6b560f00  load.d r[13:14], 0(r30)
003ffc  ab0500f0  lui r11, 983040
004000  6b5b0c00  load.d r[23:24], 0(r24)
004004  0b266611  add.ul r[13:14], r[13:14], r[23:24]
004008  630b0fd7  loadli.w r22,  -5248(r30)
00400c  00a00000  mfence { lm }
004010  9715bb00  or r11, r22, r11
004014  ff35e600  s_lm2gm r11, r14, 0(r[13:14])
004018  9f058fd4  addli r11, r30, -5568
00401c  00a00200  mfence { lm, gm }
004020  e34c1f00  loadli.w r25,  12(r30)
004024  c2910502  vload_mask16.mz vr3{mr1}, 0(r11)
004028  e3067fd4  loadli.w r13,  -5576(r30)
00402c  63466fd4  loadli.w r12,  -5580(r30)
004030  5b0effff  j -1936
004034  00360002  core_id r12
004038  63012f00  loadli.w r2,  16(r30)
00403c  9b305600  slli r1, r12, 5
004040  cb211100  ble.s r2, r1, 104
004044  80530102  load_param_i r7, 2
004048  2bc40000  lui r8, 12
00404c  1f110000  addli r2, zero, 1
004050  9f018fd7  addli r3, r30, -5184
004054  1f038000  addli r6, zero, 64
004058  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00405c  9bb35300  slli r7, r7, 5
004060  1f0404f0  addli r8, r8, -2048
004064  b3840028  zext_int2long r[10:11], r1
004068  ab0500f0  lui r11, 983040
00406c  97b42402  sll.d r[10:11], r[10:11], r2
004070  9715b300  or r11, r6, r11
004074  8b249210  add.ul r[10:11], r[5:6], r[10:11]
004078  ffa53400  l_gm2lm r11, r3, 0(r[10:11])
00407c  9bb42000  slli r9, r1, 2
004080  8b901310  add.s r1, r7, r1
004084  00a00200  mfence { lm, gm }
004088  c2800102  vload.mz vr1{mr1}, 0(r3)
00408c  8b948410  add.s r9, r9, r8
004090  1f858400  addli r10, r9, 64
004094  66411080  vmerge_l.hf vr2, vr0, vr1
004098  e64010a0  vmerge_h.hf vr1, vr0, vr1
00409c  4e902402  vstores_mask16.mz vr2{mr1}, 0(r9)
0040a0  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
0040a4  3f8ff0fe  blt.s r1, r15, -64
0040a8  abf00000  lui r1, 15
0040ac  63411f00  loadli.w r2,  12(r30)
0040b0  00a00300  mfence { lm, sm, gm }
0040b4  9b90f0ff  ori r1, r1, 4095
0040b8  80a10004  csr_set csr3, r1
0040bc  00d00100  sync_group
0040c0  4b6cc112  ble.s r2, r12, 10008
0040c4  e3002f00  loadli.w r1,  16(r30)
0040c8  63412f00  loadli.w r2,  20(r30)
0040cc  9f0d8fd7  addli r27, r30, -5184
0040d0  1f150000  addli r10, zero, 1
0040d4  9f787000  addli r17, zero, 63
0040d8  1f080002  addli r16, zero, 256
0040dc  ab09803f  lui r19, 260096
0040e0  ab05ffff  lui r11, 1048560
0040e4  2b0cc07f  lui r24, 523264
0040e8  2bed7f00  lui r26, 2046
0040ec  2bee0700  lui r28, 126
0040f0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0040f4  8b912010  add.s r3, r1, r2
0040f8  33820008  fix2float.rn r4, r1
0040fc  9bb41000  slli r9, r1, 1
004100  9bb22000  slli r5, r1, 2
004104  9f804000  addli r1, r1, 32
004108  e7031fd4  storeli.w r1, -5576(r30)
00410c  8b90b211  add.s r1, r5, r27
004110  9ff1f1ff  addli r3, r3, -1
004114  e7434fd4  storeli.w r4, -5572(r30)
004118  0b922130  div.s r4, r3, r2
00411c  9f8080ff  addli r1, r1, -64
004120  8b91b411  add.s r3, r9, r27
004124  67431fd4  storeli.w r1, -5580(r30)
004128  9f8081ff  addli r1, r3, -64
00412c  67031fd4  storeli.w r1, -5584(r30)
004130  9b302100  slli r1, r2, 2
004134  67041fd6  storeli.w r1, -5312(r30)
004138  abf0ffff  lui r1, 1048575
00413c  00a00000  mfence { lm }
004140  67049fd4  storeli.w r9, -5568(r30)
004144  9b90f0ff  ori r1, r1, 4095
004148  670c1fd4  storeli.w r1, -5440(r30)
00414c  ab700000  lui r1, 7
004150  9b9af0ff  ori r21, r1, 4095
004154  ab00ff03  lui r1, 16368
004158  1b93f03f  ori r6, r1, 1023
00415c  abf000fc  lui r1, 1032207
004160  1b9400c0  ori r8, r1, 3072
004164  9f000fd7  addli r1, r30, -5248
004168  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00416c  db070000  j 60
004170  9f016fd5  addli r3, r30, -5456
004174  eb500f00  load.d r[2:3], 0(r30)
004178  80520102  load_param_i r5, 2
00417c  6bd60100  load.d r[13:14], 0(r3)
004180  ab0100f0  lui r3, 983040
004184  00a00000  mfence { lm }
004188  97913400  or r3, r9, r3
00418c  8ba0c010  add.ul r[2:3], r[2:3], r[13:14]
004190  63067fd5  loadli.w r12,  -5448(r30)
004194  ffb1b001  s_lm2gm r3, r27, 0(r[2:3])
004198  0b96c210  add.s r12, r5, r12
00419c  00a00200  mfence { lm, gm }
0041a0  3f207600  blt.s r12, r7, 8
0041a4  dbc60400  j 9780
0041a8  e3001f00  loadli.w r1,  8(r30)
0041ac  9f027fd6  addli r5, r30, -5320
0041b0  8b101610  add.s r1, r12, r1
0041b4  8b90f020  mul.s r1, r1, r15
0041b8  b3900028  sext_int2long r[2:3], r1
0041bc  17bba002  sll.d r[23:24], r[2:3], r10
0041c0  6bd10200  load.d r[3:4], 0(r5)
0041c4  ab0000f0  lui r1, 983040
0041c8  9f026fd5  addli r5, r30, -5456
0041cc  97901400  or r1, r9, r1
0041d0  73b06201  store.d r[23:24], 0(r5)
0041d4  0b216111  add.ul r[3:4], r[3:4], r[23:24]
0041d8  1f0b4000  addli r22, zero, 32
0041dc  ff20b101  l_gm2lm r1, r27, 0(r[3:4])
0041e0  00a00200  mfence { lm, gm }
0041e4  bff06701  blt.s r15, r22, 60
0041e8  e3006fd4  loadli.w r1,  -5584(r30)
0041ec  63416fd4  loadli.w r2,  -5580(r30)
0041f0  e3017fd4  loadli.w r3,  -5576(r30)
0041f4  c2800002  vload.mz vr1{mr1}, 0(r1)
0041f8  9f81c1ff  addli r3, r3, -32
0041fc  9f0381ff  addli r7, r2, -64
004200  9f8080ff  addli r1, r1, -64
004204  93823804  setlt.u r5, r17, r3
004208  664110a0  vmerge_h.hf vr2, vr0, vr1
00420c  e6401080  vmerge_l.hf vr1, vr0, vr1
004210  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
004214  1f0101ff  addli r2, r2, -128
004218  46901302  vstore_mask16.mz vr1{mr1}, 0(r7)
00421c  3bef02fe  bneq r5, zero, -40
004220  00a00000  mfence { lm }
004224  e70bcfd4  storeli.w r12, -5448(r30)
004228  3f08a200  blt.s r4, r10, 512
00422c  9f010000  addli r3, zero, 0
004230  1f010000  addli r2, zero, 0
004234  9f020000  addli r5, zero, 0
004238  db0e0000  j 116
00423c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004240  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004244  9f000001  addli r1, zero, 128
004248  9f920200  addli r5, r5, 1
00424c  6a7108c0  vsrl.p vr2, r16, vr0
004250  ea7118c0  vsrl.p vr3, r16, vr1
004254  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004258  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00425c  6af100c0  vsrl.p vr2, r1, vr0
004260  eaf110c0  vsrl.p vr3, r1, vr1
004264  9f008000  addli r1, zero, 64
004268  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00426c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004270  6af100c0  vsrl.p vr2, r1, vr0
004274  eaf110c0  vsrl.p vr3, r1, vr1
004278  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00427c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004280  6a710bc0  vsrl.p vr2, r22, vr0
004284  ea711bc0  vsrl.p vr3, r22, vr1
004288  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00428c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004290  fa100040  vextracti.f r1, 0(vr0)
004294  fa930040  vextracti.f r7, 0(vr1)
004298  8be11110  add.f.rn r3, r3, r1
00429c  9f000fd7  addli r1, r30, -5248
0042a0  0b617110  add.f.rn r2, r2, r7
0042a4  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0042a8  37a64200  beq r5, r4, 392
0042ac  9f830200  addli r7, r5, 0
0042b0  37400701  beq r14, r16, 16
0042b4  e3008fd5  loadli.w r1,  -5440(r30)
0042b8  97a01200  xor r1, r5, r1
0042bc  8b131210  add.s r7, r4, r1
0042c0  8b90e320  mul.s r1, r7, r14
0042c4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0042c8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0042cc  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0042d0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0042d4  8b901718  sub.s r1, r15, r1
0042d8  8b90e040  min.s r1, r1, r14
0042dc  bf8da0fe  blt.s r1, r10, -160
0042e0  e3048fd6  loadli.w r9,  -5312(r30)
0042e4  abcc0000  lui r25, 12
0042e8  1f060000  addli r12, zero, 0
0042ec  1f0a8fd7  addli r20, r30, -5184
0042f0  9f8c0cf0  addli r25, r25, -2048
0042f4  8b967420  mul.s r13, r9, r7
0042f8  9f030fd7  addli r7, r30, -5248
0042fc  42920302  vload_mask16.mz vr4{mr1}, 0(r7)
004300  92304002  vadd.s.mz vr1{mr1}, zero, vr4
004304  12314002  vadd.s.mz vr2{mr1}, zero, vr4
004308  92314002  vadd.s.mz vr3{mr1}, zero, vr4
00430c  8b93dc10  add.s r7, r25, r13
004310  8b1dda10  add.s r27, r20, r13
004314  9f848300  addli r9, r7, 64
004318  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
00431c  9f888301  addli r17, r7, 192
004320  c2940d02  vload_mask16.mz vr9{mr1}, 0(r27)
004324  1f898d01  addli r18, r27, 192
004328  4a930402  vloads_mask16.mz vr6{mr1}, 0(r9)
00432c  9f840301  addli r9, r7, 128
004330  4a940802  vloads_mask16.mz vr8{mr1}, 0(r17)
004334  9f880d01  addli r17, r27, 128
004338  42100902  vload_mask16.mz vr0{mr1}, 0(r18)
00433c  ca930402  vloads_mask16.mz vr7{mr1}, 0(r9)
004340  c2950802  vload_mask16.mz vr11{mr1}, 0(r17)
004344  9f848d00  addli r9, r27, 64
004348  42950402  vload_mask16.mz vr10{mr1}, 0(r9)
00434c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004350  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
004354  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
004358  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
00435c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004360  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004364  46905d02  vstore_mask16.mz vr5{mr1}, 0(r27)
004368  46906402  vstore_mask16.mz vr6{mr1}, 0(r9)
00436c  9f048600  addli r9, r12, 64
004370  46100902  vstore_mask16.mz vr0{mr1}, 0(r18)
004374  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004378  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00437c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
004380  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004384  46907802  vstore_mask16.mz vr7{mr1}, 0(r17)
004388  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
00438c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
004390  cbba90fe  ble.s r1, r9, -340
004394  9f880302  addli r17, r7, 256
004398  1f898302  addli r18, r7, 320
00439c  9f840d02  addli r9, r27, 256
0043a0  1f060601  addli r12, r12, 128
0043a4  9f8c0c04  addli r25, r25, 512
0043a8  1f0a0a04  addli r20, r20, 512
0043ac  4a900802  vloads_mask16.mz vr0{mr1}, 0(r17)
0043b0  9f880303  addli r17, r7, 384
0043b4  9f838303  addli r7, r7, 448
0043b8  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
0043bc  42930402  vload_mask16.mz vr6{mr1}, 0(r9)
0043c0  1f898d03  addli r18, r27, 448
0043c4  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
0043c8  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
0043cc  9f830d03  addli r7, r27, 384
0043d0  9f888d02  addli r17, r27, 320
0043d4  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
0043d8  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
0043dc  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0043e0  42130902  vload_mask16.mz vr6{mr1}, 0(r18)
0043e4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0043e8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0043ec  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0043f0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0043f4  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
0043f8  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
0043fc  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
004400  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004404  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004408  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
00440c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004410  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004414  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
004418  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00441c  46106902  vstore_mask16.mz vr6{mr1}, 0(r18)
004420  bf3b16fe  blt.s r12, r1, -276
004424  5bc3ffff  j -488
004428  1f010000  addli r2, zero, 0
00442c  9f010000  addli r3, zero, 0
004430  00a00000  mfence { lm }
004434  3fd2a700  blt.s r15, r10, 148
004438  e3407fd4  loadli.w r1,  -5572(r30)
00443c  9f020000  addli r5, zero, 0
004440  8f811118  div.f.rn r3, r3, r1
004444  8f001118  div.f.rn r1, r2, r1
004448  0be13120  mul.f.rn r2, r3, r3
00444c  8be02018  sub.f.rn r1, r1, r2
004450  63013f00  loadli.w r2,  24(r30)
004454  8be02010  add.f.rn r1, r1, r2
004458  0be10158  neg.f r2, r3
00445c  9f018fd7  addli r3, r30, -5184
004460  8f800008  sqrt.f.rn r1, r1
004464  8f801918  div.f.rn r1, r19, r1
004468  9f838100  addli r7, r3, 64
00446c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
004470  1f864200  addli r12, r5, 32
004474  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
004478  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
00447c  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
004480  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004484  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
004488  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00448c  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
004490  cbe0c700  ble.s r15, r12, 56
004494  9f830101  addli r7, r3, 128
004498  1f868101  addli r12, r3, 192
00449c  9f828200  addli r5, r5, 64
0044a0  9f810102  addli r3, r3, 256
0044a4  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
0044a8  42110602  vload_mask16.mz vr2{mr1}, 0(r12)
0044ac  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0044b0  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
0044b4  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0044b8  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
0044bc  46901302  vstore_mask16.mz vr1{mr1}, 0(r7)
0044c0  46102602  vstore_mask16.mz vr2{mr1}, 0(r12)
0044c4  bf9ef2fe  blt.s r5, r15, -92
0044c8  00a00000  mfence { lm }
0044cc  e3431f00  loadli.w r7,  12(r30)
0044d0  9f0d8fd7  addli r27, r30, -5184
0044d4  9f787000  addli r17, zero, 63
0044d8  1f062000  addli r12, zero, 16
0044dc  1f390000  addli r18, zero, 3
0044e0  1f5a1000  addli r20, zero, 13
0044e4  9f2c1000  addli r25, zero, 10
0044e8  ab06807f  lui r13, 522240
0044ec  e3048fd4  loadli.w r9,  -5568(r30)
0044f0  3f82a7fe  blt.s r15, r10, -896
0044f4  9f008fd7  addli r1, r30, -5184
0044f8  1f018fd7  addli r2, r30, -5184
0044fc  9f010000  addli r3, zero, 0
004500  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
004504  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004508  9f028100  addli r5, r2, 64
00450c  9f814100  addli r3, r3, 32
004510  1f010101  addli r2, r2, 128
004514  6a221622  vor.u.mz vr4{mr1}, r12, vr1
004518  6a231a22  vor.u.mz vr6{mr1}, r20, vr1
00451c  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
004520  ee3232c2  vsrl.s.mz vr5{mr1}, vr4, vr3
004524  6e3222c2  vsrl.s.mz vr4{mr1}, vr4, vr2
004528  ea325502  vand.s.mz vr5{mr1}, r10, vr5
00452c  6a324502  vand.s.mz vr4{mr1}, r10, vr4
004530  96b25102  vadd.s.mz vr5{mr1}, vr3, vr5
004534  e69101c0  vabs.f vr3, vr3
004538  16324102  vadd.s.mz vr4{mr1}, vr2, vr4
00453c  661101c0  vabs.f vr2, vr2
004540  92b25a02  vadd.s.mz vr5{mr1}, r21, vr5
004544  72a13642  vlt.u.mz mr2{mr1}, r13, vr3
004548  12b24a02  vadd.s.mz vr4{mr1}, r21, vr4
00454c  eab25502  vand.s.mz vr5{mr1}, r11, vr5
004550  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
004554  ea221c34  vor.u.mh vr5{mr2}, r24, vr1
004558  72a12642  vlt.u.mz mr2{mr1}, r13, vr2
00455c  6a211922  vor.u.mz vr2{mr1}, r18, vr1
004560  6a221c34  vor.u.mh vr4{mr2}, r24, vr1
004564  eaa01c22  vor.u.mz vr1{mr1}, r25, vr1
004568  ee3153c2  vsrl.s.mz vr3{mr1}, vr6, vr5
00456c  ee3251c2  vsrl.s.mz vr5{mr1}, vr2, vr5
004570  6e3141c2  vsrl.s.mz vr2{mr1}, vr2, vr4
004574  6e3343c2  vsrl.s.mz vr6{mr1}, vr6, vr4
004578  ea313e02  vand.s.mz vr3{mr1}, r28, vr3
00457c  ea325d02  vand.s.mz vr5{mr1}, r26, vr5
004580  6a326e02  vand.s.mz vr4{mr1}, r28, vr6
004584  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
004588  eab13922  vor.s.mz vr3{mr1}, r19, vr3
00458c  eab25922  vor.s.mz vr5{mr1}, r19, vr5
004590  6ab12922  vor.s.mz vr2{mr1}, r19, vr2
004594  6ab24922  vor.s.mz vr4{mr1}, r19, vr4
004598  86910120  vfloat2fp16_l.rz vr3, vr3
00459c  06510120  vfloat2fp16_h.rz vr2, vr2
0045a0  86510220  vfloat2fp16_h.rz vr3, vr4
0045a4  06910220  vfloat2fp16_l.rz vr2, vr5
0045a8  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
0045ac  6a312302  vand.s.mz vr2{mr1}, r6, vr2
0045b0  ea301402  vand.s.mz vr1{mr1}, r8, vr1
0045b4  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
0045b8  46801002  vstore.mz vr1{mr1}, 0(r1)
0045bc  9f808000  addli r1, r1, 64
0045c0  3f8df1fe  blt.s r3, r15, -192
0045c4  db75ffff  j -1108
0045c8  2b330100  lui r6, 19
0045cc  80390002  core_id r19
0045d0  80500102  load_param_i r1, 2
0045d4  1f110000  addli r2, zero, 1
0045d8  9f038fd7  addli r7, r30, -5184
0045dc  1f048000  addli r8, zero, 64
0045e0  1f050010  addli r10, zero, 2048
0045e4  9bb15900  slli r3, r19, 5
0045e8  9bb45000  slli r9, r1, 5
0045ec  1f0303f8  addli r6, r6, -1024
0045f0  b3850128  zext_int2long r[12:13], r3
0045f4  ab0600f0  lui r13, 983040
0045f8  97b52502  sll.d r[12:13], r[12:13], r2
0045fc  9716d400  or r13, r8, r13
004600  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
004604  ffa67500  l_gm2lm r13, r7, 0(r[12:13])
004608  9bb52100  slli r11, r3, 2
00460c  8b913410  add.s r3, r9, r3
004610  00a00200  mfence { lm, gm }
004614  42800302  vload.mz vr0{mr1}, 0(r7)
004618  1386a104  setlt.u r12, r3, r10
00461c  8b956510  add.s r11, r11, r6
004620  9f868500  addli r13, r11, 64
004624  86300000  vfp162float_l.rn vr1, vr0
004628  06700000  vfp162float_h.rn vr0, vr0
00462c  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
004630  4e900602  vstores_mask16.mz vr0{mr1}, 0(r13)
004634  bb7e06fe  bneq r12, zero, -68
004638  2bf10000  lui r2, 15
00463c  00a00300  mfence { lm, sm, gm }
004640  1f020006  addli r4, zero, 768
004644  9b11f1ff  ori r3, r2, 4095
004648  1b811900  andi r2, r19, 1
00464c  80a10104  csr_set csr3, r3
004650  9f010006  addli r3, zero, 768
004654  00d00100  sync_group
004658  67082fd6  storeli.w r2, -5248(r30)
00465c  37200100  beq r2, zero, 8
004660  9f01000a  addli r3, zero, 1280
004664  e3421f00  loadli.w r5,  12(r30)
004668  1f110000  addli r2, zero, 1
00466c  bfb52210  blt.s r5, r2, 8556
004670  1bc41000  srli r8, r1, 1
004674  9bb02100  slli r1, r3, 2
004678  9f058fd7  addli r11, r30, -5184
00467c  63010fd7  loadli.w r2,  -5248(r30)
004680  1bb51100  slli r10, r3, 1
004684  ab5b0100  lui r23, 21
004688  2b5e0100  lui r28, 21
00468c  9f020000  addli r5, zero, 0
004690  9bc41900  srli r9, r19, 1
004694  9f777000  addli r15, zero, 63
004698  1f090005  addli r18, zero, 640
00469c  1f0a0001  addli r20, zero, 128
0046a0  9f0a8000  addli r21, zero, 64
0046a4  1f0b4000  addli r22, zero, 32
0046a8  9f0d0003  addli r27, zero, 384
0046ac  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0046b0  8b90b010  add.s r1, r1, r11
0046b4  9f8b0bf8  addli r23, r23, -1024
0046b8  1f0e0efc  addli r28, r28, -512
0046bc  0b114120  mul.s r2, r2, r4
0046c0  0b12b510  add.s r4, r10, r11
0046c4  9f8080ff  addli r1, r1, -64
0046c8  67042fd6  storeli.w r2, -5312(r30)
0046cc  1f814100  addli r2, r3, 32
0046d0  e70b1fd4  storeli.w r1, -5448(r30)
0046d4  9f0082ff  addli r1, r4, -64
0046d8  670c2fd4  storeli.w r2, -5440(r30)
0046dc  1f018fd4  addli r2, r30, -5568
0046e0  670b1fd4  storeli.w r1, -5456(r30)
0046e4  abf0ffff  lui r1, 1048575
0046e8  00a00000  mfence { lm }
0046ec  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0046f0  9b9000f8  ori r1, r1, 3968
0046f4  e7431fd4  storeli.w r1, -5572(r30)
0046f8  abf00000  lui r1, 15
0046fc  1b9cf0ff  ori r24, r1, 4095
004700  db030000  j 28
004704  00a00300  mfence { lm, sm, gm }
004708  80210c04  csr_set csr3, r24
00470c  00d00100  sync_group
004710  8b928210  add.s r5, r5, r8
004714  3fa09201  blt.s r5, r25, 8
004718  5bb2f8ff  j -14960
00471c  8b909210  add.s r1, r5, r9
004720  cb9f1cfe  ble.s r25, r1, -28
004724  63011f00  loadli.w r2,  8(r30)
004728  0b828230  div.u r4, r5, r8
00472c  8b902010  add.s r1, r1, r2
004730  63018fd6  loadli.w r2,  -5312(r30)
004734  9bb0b000  slli r1, r1, 11
004738  1b326200  slli r4, r4, 6
00473c  97902000  or r1, r1, r2
004740  1f110000  addli r2, zero, 1
004744  1b020204  andi r4, r4, 64
004748  33960028  sext_int2long r[13:14], r1
00474c  ab0000f0  lui r1, 983040
004750  171d3201  or r26, r4, r19
004754  17382602  sll.d r[17:18], r[13:14], r2
004758  1f017fd6  addli r2, r30, -5320
00475c  97101500  or r1, r10, r1
004760  6b560100  load.d r[13:14], 0(r2)
004764  0b260611  add.ul r[13:14], r[13:14], r[17:18]
004768  ff20b600  l_gm2lm r1, r11, 0(r[13:14])
00476c  00a00200  mfence { lm, gm }
004770  e3006fd5  loadli.w r1,  -5456(r30)
004774  63027fd5  loadli.w r4,  -5448(r30)
004778  e3038fd5  loadli.w r7,  -5440(r30)
00477c  c2800002  vload.mz vr1{mr1}, 0(r1)
004780  9f83c3ff  addli r7, r7, -32
004784  9f0682ff  addli r13, r4, -64
004788  9f8080ff  addli r1, r1, -64
00478c  13867704  setlt.u r12, r15, r7
004790  06f10000  vfp162float_h.rn vr2, vr1
004794  86b00000  vfp162float_l.rn vr1, vr1
004798  46102202  vstore_mask16.mz vr2{mr1}, 0(r4)
00479c  1f0202ff  addli r4, r4, -128
0047a0  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
0047a4  3b6f06fe  bneq r12, zero, -40
0047a8  00a00000  mfence { lm }
0047ac  e3000fd7  loadli.w r1,  -5248(r30)
0047b0  3ba60000  bneq r1, zero, 392
0047b4  1f018fd4  addli r2, r30, -5568
0047b8  63427fd4  loadli.w r4,  -5572(r30)
0047bc  9f000000  addli r1, zero, 0
0047c0  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
0047c4  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0047c8  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0047cc  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0047d0  0b966010  add.s r12, r1, r6
0047d4  8b931510  add.s r7, r11, r1
0047d8  1f020201  addli r4, r4, 128
0047dc  9f800004  addli r1, r1, 512
0047e0  1f010601  addli r2, r12, 128
0047e4  4a100602  vloads_mask16.mz vr0{mr1}, 0(r12)
0047e8  9f068600  addli r13, r12, 64
0047ec  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
0047f0  1f878301  addli r14, r7, 192
0047f4  ca120102  vloads_mask16.mz vr5{mr1}, 0(r2)
0047f8  1f018601  addli r2, r12, 192
0047fc  4a930602  vloads_mask16.mz vr6{mr1}, 0(r13)
004800  9f868300  addli r13, r7, 64
004804  c2150702  vload_mask16.mz vr11{mr1}, 0(r14)
004808  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
00480c  1f810301  addli r2, r7, 128
004810  42950602  vload_mask16.mz vr10{mr1}, 0(r13)
004814  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
004818  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00481c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004820  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004824  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004828  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00482c  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
004830  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
004834  1f010602  addli r2, r12, 256
004838  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00483c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004840  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004844  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
004848  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
00484c  1f018602  addli r2, r12, 320
004850  46106702  vstore_mask16.mz vr6{mr1}, 0(r14)
004854  1f870302  addli r14, r7, 256
004858  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00485c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004860  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004864  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
004868  1f010603  addli r2, r12, 384
00486c  c2130702  vload_mask16.mz vr7{mr1}, 0(r14)
004870  1f068603  addli r12, r12, 448
004874  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004878  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
00487c  1f818302  addli r2, r7, 320
004880  4a150602  vloads_mask16.mz vr10{mr1}, 0(r12)
004884  1f860303  addli r12, r7, 384
004888  9f838303  addli r7, r7, 448
00488c  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
004890  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004894  c2130602  vload_mask16.mz vr7{mr1}, 0(r12)
004898  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00489c  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0048a0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0048a4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0048a8  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
0048ac  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0048b0  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
0048b4  13012205  setlt.u r2, r4, r18
0048b8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0048bc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0048c0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0048c4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0048c8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0048cc  46105602  vstore_mask16.mz vr5{mr1}, 0(r12)
0048d0  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
0048d4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0048d8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0048dc  bb5b01fe  bneq r2, zero, -268
0048e0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0048e4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0048e8  9f000002  addli r1, zero, 256
0048ec  6af100c0  vsrl.p vr2, r1, vr0
0048f0  eaf110c0  vsrl.p vr3, r1, vr1
0048f4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0048f8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0048fc  6a710ac0  vsrl.p vr2, r20, vr0
004900  ea711ac0  vsrl.p vr3, r20, vr1
004904  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004908  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00490c  6af10ac0  vsrl.p vr2, r21, vr0
004910  eaf11ac0  vsrl.p vr3, r21, vr1
004914  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004918  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00491c  6a710bc0  vsrl.p vr2, r22, vr0
004920  ea711bc0  vsrl.p vr3, r22, vr1
004924  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004928  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00492c  7a120040  vextracti.f r4, 0(vr0)
004930  fa900040  vextracti.f r1, 0(vr1)
004934  5b640000  j 800
004938  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00493c  2bf1ffff  lui r2, 1048575
004940  9f000000  addli r1, zero, 0
004944  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004948  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00494c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004950  1b1201f8  ori r4, r2, 3968
004954  0b161310  add.s r12, r6, r1
004958  8b931510  add.s r7, r11, r1
00495c  1f020201  addli r4, r4, 128
004960  9f800004  addli r1, r1, 512
004964  1f070631  addli r14, r12, 6272
004968  9f060630  addli r13, r12, 6144
00496c  1f018631  addli r2, r12, 6336
004970  9f8c0318  addli r25, r7, 3072
004974  ca130702  vloads_mask16.mz vr7{mr1}, 0(r14)
004978  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
00497c  9f068630  addli r13, r12, 6208
004980  ca140102  vloads_mask16.mz vr9{mr1}, 0(r2)
004984  1f818318  addli r2, r7, 3136
004988  1f878319  addli r14, r7, 3264
00498c  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
004990  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
004994  9f860319  addli r13, r7, 3200
004998  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
00499c  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
0049a0  42950602  vload_mask16.mz vr10{mr1}, 0(r13)
0049a4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0049a8  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0049ac  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0049b0  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0049b4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0049b8  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0049bc  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
0049c0  9f060632  addli r13, r12, 6400
0049c4  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0049c8  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
0049cc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0049d0  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
0049d4  1f87031a  addli r14, r7, 3328
0049d8  c2130702  vload_mask16.mz vr7{mr1}, 0(r14)
0049dc  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
0049e0  1f81031b  addli r2, r7, 3456
0049e4  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0049e8  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0049ec  4a900602  vloads_mask16.mz vr0{mr1}, 0(r13)
0049f0  9f068632  addli r13, r12, 6464
0049f4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0049f8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0049fc  4a930602  vloads_mask16.mz vr6{mr1}, 0(r13)
004a00  9f060633  addli r13, r12, 6528
004a04  1f068633  addli r12, r12, 6592
004a08  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
004a0c  9f86831a  addli r13, r7, 3392
004a10  4a150602  vloads_mask16.mz vr10{mr1}, 0(r12)
004a14  9f83831b  addli r7, r7, 3520
004a18  1306b205  setlt.u r12, r4, r27
004a1c  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
004a20  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004a24  c2130102  vload_mask16.mz vr7{mr1}, 0(r2)
004a28  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004a2c  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
004a30  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004a34  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004a38  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
004a3c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004a40  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
004a44  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004a48  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004a4c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004a50  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004a54  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004a58  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
004a5c  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
004a60  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004a64  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004a68  bb3b06fe  bneq r12, zero, -276
004a6c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004a70  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004a74  9f000002  addli r1, zero, 256
004a78  2bf1ffff  lui r2, 1048575
004a7c  9f030000  addli r7, zero, 0
004a80  9b1c01f8  ori r25, r2, 3968
004a84  eaf110c0  vsrl.p vr3, r1, vr1
004a88  6af100c0  vsrl.p vr2, r1, vr0
004a8c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004a90  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004a94  ea711ac0  vsrl.p vr3, r20, vr1
004a98  6a710ac0  vsrl.p vr2, r20, vr0
004a9c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004aa0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004aa4  eaf11ac0  vsrl.p vr3, r21, vr1
004aa8  6af10ac0  vsrl.p vr2, r21, vr0
004aac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004ab0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004ab4  ea711bc0  vsrl.p vr3, r22, vr1
004ab8  6a710bc0  vsrl.p vr2, r22, vr0
004abc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004ac0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004ac4  fa900040  vextracti.f r1, 0(vr1)
004ac8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004acc  7a120040  vextracti.f r4, 0(vr0)
004ad0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004ad4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004ad8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004adc  8b167310  add.s r13, r6, r7
004ae0  0b967510  add.s r12, r11, r7
004ae4  9f8c0c01  addli r25, r25, 128
004ae8  9f830304  addli r7, r7, 512
004aec  1f810618  addli r2, r13, 3072
004af0  1f870619  addli r14, r13, 3200
004af4  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
004af8  9f098601  addli r19, r12, 192
004afc  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
004b00  ca120702  vloads_mask16.mz vr5{mr1}, 0(r14)
004b04  1f818618  addli r2, r13, 3136
004b08  1f878619  addli r14, r13, 3264
004b0c  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
004b10  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
004b14  1f010601  addli r2, r12, 128
004b18  ca130702  vloads_mask16.mz vr7{mr1}, 0(r14)
004b1c  1f078600  addli r14, r12, 64
004b20  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
004b24  42150702  vload_mask16.mz vr10{mr1}, 0(r14)
004b28  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004b2c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004b30  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004b34  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004b38  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
004b3c  1f81061a  addli r2, r13, 3328
004b40  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004b44  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004b48  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004b4c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004b50  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
004b54  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
004b58  1f81861a  addli r2, r13, 3392
004b5c  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
004b60  9f090602  addli r19, r12, 256
004b64  46105702  vstore_mask16.mz vr5{mr1}, 0(r14)
004b68  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004b6c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004b70  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
004b74  1f81061b  addli r2, r13, 3456
004b78  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
004b7c  9f86861b  addli r13, r13, 3520
004b80  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004b84  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004b88  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
004b8c  1f018602  addli r2, r12, 320
004b90  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
004b94  9f060603  addli r13, r12, 384
004b98  1f068603  addli r12, r12, 448
004b9c  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
004ba0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004ba4  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
004ba8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004bac  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
004bb0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004bb4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004bb8  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
004bbc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004bc0  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
004bc4  13812c05  setlt.u r2, r25, r18
004bc8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004bcc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004bd0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004bd4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004bd8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004bdc  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
004be0  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
004be4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004be8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004bec  bb4b01fe  bneq r2, zero, -272
004bf0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004bf4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004bf8  1f010002  addli r2, zero, 256
004bfc  e34c1f00  loadli.w r25,  12(r30)
004c00  80390002  core_id r19
004c04  6a7101c0  vsrl.p vr2, r2, vr0
004c08  ea7111c0  vsrl.p vr3, r2, vr1
004c0c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004c10  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004c14  6a710ac0  vsrl.p vr2, r20, vr0
004c18  ea711ac0  vsrl.p vr3, r20, vr1
004c1c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004c20  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004c24  6af10ac0  vsrl.p vr2, r21, vr0
004c28  eaf11ac0  vsrl.p vr3, r21, vr1
004c2c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004c30  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004c34  6a710bc0  vsrl.p vr2, r22, vr0
004c38  ea711bc0  vsrl.p vr3, r22, vr1
004c3c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004c40  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004c44  7a110040  vextracti.f r2, 0(vr0)
004c48  fa930040  vextracti.f r7, 0(vr1)
004c4c  0b622210  add.f.rn r4, r4, r2
004c50  8be07010  add.f.rn r1, r1, r7
004c54  1b312d00  slli r2, r26, 2
004c58  0b16c111  add.s r12, r2, r28
004c5c  8b137111  add.s r7, r2, r23
004c60  1b114100  ori r2, r2, 4
004c64  73601600  stores.w r1, 0(r12)
004c68  9b00ed07  andi r1, r26, 126
004c6c  73e04300  stores.w r4, 0(r7)
004c70  0b127111  add.s r4, r2, r23
004c74  0b11c111  add.s r2, r2, r28
004c78  1f060000  addli r12, zero, 0
004c7c  00a00300  mfence { lm, sm, gm }
004c80  80210c04  csr_set csr3, r24
004c84  00d00100  sync_group
004c88  9bb02000  slli r1, r1, 2
004c8c  6f420200  loads.w r4, 0(r4)
004c90  6f410100  loads.w r2, 0(r2)
004c94  8b937011  add.s r7, r1, r23
004c98  8b90c011  add.s r1, r1, r28
004c9c  efc30300  loads.w r7, 0(r7)
004ca0  efc00000  loads.w r1, 0(r1)
004ca4  0b627210  add.f.rn r4, r4, r7
004ca8  ab03003a  lui r7, 237568
004cac  8b601110  add.f.rn r1, r2, r1
004cb0  0b617220  mul.f.rn r2, r4, r7
004cb4  8be07020  mul.f.rn r1, r1, r7
004cb8  9f038fd7  addli r7, r30, -5184
004cbc  0b622120  mul.f.rn r4, r2, r2
004cc0  8be04018  sub.f.rn r1, r1, r4
004cc4  63023f00  loadli.w r4,  24(r30)
004cc8  8be04010  add.f.rn r1, r1, r4
004ccc  2b02803f  lui r4, 260096
004cd0  8f800008  sqrt.f.rn r1, r1
004cd4  8f001218  div.f.rn r1, r4, r1
004cd8  0b620158  neg.f r4, r2
004cdc  1f818300  addli r2, r7, 64
004ce0  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
004ce4  9f064600  addli r13, r12, 32
004ce8  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004cec  9386d106  setle.u r13, r3, r13
004cf0  12100202  vadd.f.mz.rn vr0{mr1}, r4, vr0
004cf4  92101202  vadd.f.mz.rn vr1{mr1}, r4, vr1
004cf8  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
004cfc  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004d00  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
004d04  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
004d08  bbf00600  bneq r13, zero, 60
004d0c  1f810301  addli r2, r7, 128
004d10  9f868301  addli r13, r7, 192
004d14  1f068600  addli r12, r12, 64
004d18  9f830302  addli r7, r7, 256
004d1c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
004d20  c2900602  vload_mask16.mz vr1{mr1}, 0(r13)
004d24  13073604  setlt.u r14, r12, r3
004d28  12100202  vadd.f.mz.rn vr0{mr1}, r4, vr0
004d2c  92101202  vadd.f.mz.rn vr1{mr1}, r4, vr1
004d30  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
004d34  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004d38  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004d3c  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
004d40  3b7e07fe  bneq r14, zero, -100
004d44  9f008fd7  addli r1, r30, -5184
004d48  1f028fd7  addli r4, r30, -5184
004d4c  9f030000  addli r7, zero, 0
004d50  00a00000  mfence { lm }
004d54  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
004d58  1f018200  addli r2, r4, 64
004d5c  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
004d60  9f834300  addli r7, r7, 32
004d64  1f020201  addli r4, r4, 128
004d68  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004d6c  13813304  setlt.u r2, r7, r3
004d70  06110000  vfloat2fp16_l.rn vr2, vr0
004d74  06d10000  vfloat2fp16_h.rn vr2, vr1
004d78  46802002  vstore.mz vr2{mr1}, 0(r1)
004d7c  9f808000  addli r1, r1, 64
004d80  3b5f01fe  bneq r2, zero, -44
004d84  6b560f00  load.d r[13:14], 0(r30)
004d88  ab0000f0  lui r1, 983040
004d8c  00a00000  mfence { lm }
004d90  97101500  or r1, r10, r1
004d94  0b260611  add.ul r[13:14], r[13:14], r[17:18]
004d98  ff30b600  s_lm2gm r1, r11, 0(r[13:14])
004d9c  00a00200  mfence { lm, gm }
004da0  5b2effff  j -1680
004da4  80300002  core_id r1
004da8  e3012f00  loadli.w r3,  16(r30)
004dac  1bb15000  slli r2, r1, 5
004db0  cb912100  ble.s r3, r2, 100
004db4  00540102  load_param_i r8, 2
004db8  ab840100  lui r9, 24
004dbc  9f110000  addli r3, zero, 1
004dc0  1f038fd7  addli r6, r30, -5184
004dc4  9f038000  addli r7, zero, 64
004dc8  1b345400  slli r8, r8, 5
004dcc  9f840400  addli r9, r9, 0
004dd0  33050128  zext_int2long r[11:12], r2
004dd4  2b0600f0  lui r12, 983040
004dd8  17353502  sll.d r[11:12], r[11:12], r3
004ddc  1796c300  or r12, r7, r12
004de0  0b25a210  add.ul r[11:12], r[5:6], r[11:12]
004de4  7f266500  l_gm2lm r12, r6, 0(r[11:12])
004de8  1b352100  slli r10, r2, 2
004dec  0b112410  add.s r2, r8, r2
004df0  00a00200  mfence { lm, gm }
004df4  42000302  vload.mz vr0{mr1}, 0(r6)
004df8  0b159510  add.s r10, r10, r9
004dfc  9f058500  addli r11, r10, 64
004e00  86300000  vfp162float_l.rn vr1, vr0
004e04  06700000  vfp162float_h.rn vr0, vr0
004e08  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
004e0c  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
004e10  3f0ff1fe  blt.s r2, r15, -64
004e14  2bf10000  lui r2, 15
004e18  e3411f00  loadli.w r3,  12(r30)
004e1c  00a00300  mfence { lm, sm, gm }
004e20  1b11f1ff  ori r2, r2, 4095
004e24  80210104  csr_set csr3, r2
004e28  00d00100  sync_group
004e2c  cbb6110c  ble.s r3, r1, 6572
004e30  63032f00  loadli.w r6,  16(r30)
004e34  e3432f00  loadli.w r7,  20(r30)
004e38  9f0b8fd7  addli r23, r30, -5184
004e3c  1f150000  addli r10, zero, 1
004e40  9f054000  addli r11, zero, 32
004e44  1f767000  addli r12, zero, 63
004e48  1f080002  addli r16, zero, 256
004e4c  9f080001  addli r17, zero, 128
004e50  1f098000  addli r18, zero, 64
004e54  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004e58  0b127310  add.s r4, r6, r7
004e5c  33010308  fix2float.rn r2, r6
004e60  1b342300  slli r8, r6, 2
004e64  9b321300  slli r5, r6, 1
004e68  9bb42300  slli r9, r7, 2
004e6c  1f72f2ff  addli r4, r4, -1
004e70  670c2fd4  storeli.w r2, -5440(r30)
004e74  1f014300  addli r2, r6, 32
004e78  0b137411  add.s r6, r8, r23
004e7c  0b947211  add.s r8, r5, r23
004e80  e70b2fd4  storeli.w r2, -5448(r30)
004e84  1f0183ff  addli r2, r6, -64
004e88  2bf3ffff  lui r6, 1048575
004e8c  0b127230  div.s r4, r4, r7
004e90  670b2fd4  storeli.w r2, -5456(r30)
004e94  1f0184ff  addli r2, r8, -64
004e98  9b16f3ff  ori r13, r6, 4095
004e9c  2b830100  lui r6, 24
004ea0  67042fd4  storeli.w r2, -5568(r30)
004ea4  1f010fd7  addli r2, r30, -5248
004ea8  1f030300  addli r6, r6, 0
004eac  00a00000  mfence { lm }
004eb0  67045fd6  storeli.w r5, -5312(r30)
004eb4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004eb8  db060000  j 52
004ebc  eb530f00  load.d r[8:9], 0(r30)
004ec0  ab0900f0  lui r19, 983040
004ec4  9f0b8fd7  addli r23, r30, -5184
004ec8  005a0102  load_param_i r20, 2
004ecc  00a00000  mfence { lm }
004ed0  97993201  or r19, r5, r19
004ed4  8b101a10  add.s r1, r20, r1
004ed8  8ba35311  add.ul r[8:9], r[8:9], r[22:23]
004edc  ffb97301  s_lm2gm r19, r23, 0(r[8:9])
004ee0  00a00200  mfence { lm, gm }
004ee4  3fa02000  blt.s r1, r2, 8
004ee8  5b1e0300  j 6384
004eec  63011f00  loadli.w r2,  8(r30)
004ef0  8b932010  add.s r7, r1, r2
004ef4  8b93f320  mul.s r7, r7, r15
004ef8  b3930328  sext_int2long r[8:9], r7
004efc  97baa302  sll.d r[22:23], r[8:9], r10
004f00  1f047fd6  addli r8, r30, -5320
004f04  ab0300f0  lui r7, 983040
004f08  6b510400  load.d r[3:4], 0(r8)
004f0c  97937200  or r7, r5, r7
004f10  8b295111  add.ul r[20:21], r[3:4], r[22:23]
004f14  ffa37901  l_gm2lm r7, r23, 0(r[20:21])
004f18  00a00200  mfence { lm, gm }
004f1c  bff0b700  blt.s r15, r11, 60
004f20  e3038fd4  loadli.w r7,  -5568(r30)
004f24  63046fd5  loadli.w r8,  -5456(r30)
004f28  e3097fd5  loadli.w r19,  -5448(r30)
004f2c  c2800302  vload.mz vr1{mr1}, 0(r7)
004f30  9f89c9ff  addli r19, r19, -32
004f34  9f0b84ff  addli r23, r8, -64
004f38  9f8383ff  addli r7, r7, -64
004f3c  130a3605  setlt.u r20, r12, r19
004f40  06f10000  vfp162float_h.rn vr2, vr1
004f44  86b00000  vfp162float_l.rn vr1, vr1
004f48  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
004f4c  1f0404ff  addli r8, r8, -128
004f50  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
004f54  3b6f0afe  bneq r20, zero, -40
004f58  00a00000  mfence { lm }
004f5c  bf17a200  blt.s r4, r10, 484
004f60  1f0c0000  addli r24, zero, 0
004f64  9f0b0000  addli r23, zero, 0
004f68  9f0c0000  addli r25, zero, 0
004f6c  db0c0000  j 100
004f70  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004f74  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004f78  9f9c0c00  addli r25, r25, 1
004f7c  6a7108c0  vsrl.p vr2, r16, vr0
004f80  ea7118c0  vsrl.p vr3, r16, vr1
004f84  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f88  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f8c  6af108c0  vsrl.p vr2, r17, vr0
004f90  eaf118c0  vsrl.p vr3, r17, vr1
004f94  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f98  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f9c  6a7109c0  vsrl.p vr2, r18, vr0
004fa0  ea7119c0  vsrl.p vr3, r18, vr1
004fa4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004fa8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004fac  6af105c0  vsrl.p vr2, r11, vr0
004fb0  eaf115c0  vsrl.p vr3, r11, vr1
004fb4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004fb8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004fbc  7a110040  vextracti.f r2, 0(vr0)
004fc0  fa910040  vextracti.f r3, 0(vr1)
004fc4  0b6c2c10  add.f.rn r24, r24, r2
004fc8  8beb3b10  add.f.rn r23, r23, r3
004fcc  b7f54c00  beq r25, r4, 380
004fd0  9f830c00  addli r7, r25, 0
004fd4  37300701  beq r14, r16, 12
004fd8  97a3dc00  xor r7, r25, r13
004fdc  8b137210  add.s r7, r4, r7
004fe0  1f010fd7  addli r2, r30, -5248
004fe4  0b94e320  mul.s r8, r7, r14
004fe8  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004fec  0b948718  sub.s r8, r15, r8
004ff0  0b1de440  min.s r26, r8, r14
004ff4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004ff8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004ffc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005000  bf4dadfe  blt.s r26, r10, -144
005004  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
005008  9f0d0000  addli r27, zero, 0
00500c  0b9e7420  mul.s r28, r9, r7
005010  9f098fd7  addli r19, r30, -5184
005014  1f0a0300  addli r20, r6, 0
005018  92304002  vadd.s.mz vr1{mr1}, zero, vr4
00501c  12314002  vadd.s.mz vr2{mr1}, zero, vr4
005020  92314002  vadd.s.mz vr3{mr1}, zero, vr4
005024  0b14ca11  add.s r8, r20, r28
005028  8b93c911  add.s r7, r19, r28
00502c  9f028400  addli r5, r8, 64
005030  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
005034  9f018401  addli r3, r8, 192
005038  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
00503c  1f818301  addli r2, r7, 192
005040  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
005044  9f020401  addli r5, r8, 128
005048  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
00504c  9f818300  addli r3, r7, 64
005050  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
005054  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
005058  9f820301  addli r5, r7, 128
00505c  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
005060  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
005064  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
005068  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
00506c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
005070  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
005074  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005078  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00507c  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
005080  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
005084  9f818d00  addli r3, r27, 64
005088  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00508c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
005090  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005094  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
005098  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00509c  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
0050a0  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
0050a4  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0050a8  4b2b3dfe  ble.s r26, r3, -312
0050ac  9f010402  addli r3, r8, 256
0050b0  9f028402  addli r5, r8, 320
0050b4  1f810302  addli r2, r7, 256
0050b8  9f8d0d01  addli r27, r27, 128
0050bc  1f0a0a04  addli r20, r20, 512
0050c0  9f890904  addli r19, r19, 512
0050c4  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
0050c8  9f010403  addli r3, r8, 384
0050cc  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
0050d0  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
0050d4  9f828302  addli r5, r7, 320
0050d8  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
0050dc  9f018403  addli r3, r8, 448
0050e0  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
0050e4  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
0050e8  9f810303  addli r3, r7, 384
0050ec  9f838303  addli r7, r7, 448
0050f0  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
0050f4  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0050f8  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
0050fc  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
005100  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005104  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005108  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00510c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005110  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
005114  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
005118  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00511c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005120  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
005124  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005128  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00512c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
005130  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005134  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
005138  bfbbadff  blt.s r27, r26, -276
00513c  dbc6ffff  j -460
005140  9f0b0000  addli r23, zero, 0
005144  1f0c0000  addli r24, zero, 0
005148  00a00000  mfence { lm }
00514c  3fe2a700  blt.s r15, r10, 152
005150  63018fd5  loadli.w r2,  -5440(r30)
005154  1f0a0000  addli r20, zero, 0
005158  0f042c18  div.f.rn r8, r24, r2
00515c  8f832b18  div.f.rn r7, r23, r2
005160  63013f00  loadli.w r2,  24(r30)
005164  8b698420  mul.f.rn r19, r8, r8
005168  0b640458  neg.f r8, r8
00516c  8be33319  sub.f.rn r7, r7, r19
005170  9f098fd7  addli r19, r30, -5184
005174  8be32310  add.f.rn r7, r7, r2
005178  2b01803f  lui r2, 260096
00517c  8f830308  sqrt.f.rn r7, r7
005180  8f037118  div.f.rn r7, r2, r7
005184  9f8b8900  addli r23, r19, 64
005188  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
00518c  1f0c4a00  addli r24, r20, 32
005190  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
005194  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
005198  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
00519c  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
0051a0  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
0051a4  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
0051a8  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
0051ac  cbe08701  ble.s r15, r24, 56
0051b0  9f8b0901  addli r23, r19, 128
0051b4  1f8c8901  addli r24, r19, 192
0051b8  1f0a8a00  addli r20, r20, 64
0051bc  9f890902  addli r19, r19, 256
0051c0  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
0051c4  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
0051c8  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
0051cc  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
0051d0  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
0051d4  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
0051d8  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
0051dc  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
0051e0  bf1efafe  blt.s r20, r15, -92
0051e4  00a00000  mfence { lm }
0051e8  63411f00  loadli.w r2,  12(r30)
0051ec  e3028fd6  loadli.w r5,  -5312(r30)
0051f0  3fb3a7fe  blt.s r15, r10, -820
0051f4  9f038fd7  addli r7, r30, -5184
0051f8  1f048fd7  addli r8, r30, -5184
0051fc  9f090000  addli r19, zero, 0
005200  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
005204  1f0a8400  addli r20, r8, 64
005208  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
00520c  9f894900  addli r19, r19, 32
005210  1f040401  addli r8, r8, 128
005214  42110a02  vload_mask16.mz vr2{mr1}, 0(r20)
005218  86910000  vfloat2fp16_l.rn vr3, vr1
00521c  86510100  vfloat2fp16_h.rn vr3, vr2
005220  46803302  vstore.mz vr3{mr1}, 0(r7)
005224  9f838300  addli r7, r7, 64
005228  3feff9fe  blt.s r19, r15, -40
00522c  5b92ffff  j -880
005230  63012f00  loadli.w r2,  16(r30)
005234  ab0100f0  lui r3, 983040
005238  1b311100  slli r2, r2, 1
00523c  17113100  or r2, r2, r3
005240  aba10100  lui r3, 26
005244  9f810100  addli r3, r3, 0
005248  7f013300  l_gm2sm r2, r3, 0(r[7:8])
00524c  5b080000  j 64
005250  63012f00  loadli.w r2,  16(r30)
005254  ab0100f0  lui r3, 983040
005258  1b311100  slli r2, r2, 1
00525c  17113100  or r2, r2, r3
005260  abe10100  lui r3, 30
005264  9f810100  addli r3, r3, 0
005268  7f013300  l_gm2sm r2, r3, 0(r[7:8])
00526c  5bc30000  j 1560
005270  63012f00  loadli.w r2,  16(r30)
005274  ab0100f0  lui r3, 983040
005278  1b311100  slli r2, r2, 1
00527c  17113100  or r2, r2, r3
005280  abb10100  lui r3, 27
005284  9f810100  addli r3, r3, 0
005288  7f013400  l_gm2sm r2, r3, 0(r[9:10])
00528c  2bf10000  lui r2, 15
005290  e3411f00  loadli.w r3,  12(r30)
005294  00200300  mfence { sm, gm }
005298  1b11f1ff  ori r2, r2, 4095
00529c  80210104  csr_set csr3, r2
0052a0  00d00100  sync_group
0052a4  cbd4110a  ble.s r3, r1, 5428
0052a8  63012f00  loadli.w r2,  16(r30)
0052ac  e3412f00  loadli.w r3,  20(r30)
0052b0  1f052000  addli r10, zero, 16
0052b4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0052b8  1f130000  addli r6, zero, 1
0052bc  9f040002  addli r9, zero, 256
0052c0  2b06ffff  lui r12, 1048560
0052c4  2b08807f  lui r16, 522240
0052c8  ab08c07f  lui r17, 523264
0052cc  1f090001  addli r18, zero, 128
0052d0  9f098000  addli r19, zero, 64
0052d4  1f0a4000  addli r20, zero, 32
0052d8  9b351100  slli r11, r2, 1
0052dc  0b123110  add.s r4, r2, r3
0052e0  33010108  fix2float.rn r2, r2
0052e4  670b2fd4  storeli.w r2, -5456(r30)
0052e8  1f71f2ff  addli r2, r4, -1
0052ec  1bb21100  slli r4, r3, 1
0052f0  e70bbfd4  storeli.w r11, -5448(r30)
0052f4  8b123130  div.s r5, r2, r3
0052f8  2bf1ffff  lui r2, 1048575
0052fc  9f018fd7  addli r3, r30, -5184
005300  1b14f1ff  ori r8, r2, 4095
005304  1f010fd7  addli r2, r30, -5248
005308  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00530c  6a200522  vor.u.mz vr0{mr1}, r10, vr0
005310  1f018fd6  addli r2, r30, -5312
005314  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005318  2b710000  lui r2, 7
00531c  9b16f1ff  ori r13, r2, 4095
005320  db080000  j 68
005324  9f018fd5  addli r3, r30, -5440
005328  00a00000  mfence { lm }
00532c  eb5a0f00  load.d r[22:23], 0(r30)
005330  2b0100f0  lui r2, 983040
005334  80530102  load_param_i r7, 2
005338  e3057fd5  loadli.w r11,  -5448(r30)
00533c  ebdb0100  load.d r[24:25], 0(r3)
005340  9f018fd7  addli r3, r30, -5184
005344  8b901310  add.s r1, r7, r1
005348  17912500  or r2, r11, r2
00534c  8baa7a11  add.ul r[22:23], r[22:23], r[24:25]
005350  7fb13a00  s_lm2gm r2, r3, 0(r[22:23])
005354  00a00200  mfence { lm, gm }
005358  63411f00  loadli.w r2,  12(r30)
00535c  3fa02000  blt.s r1, r2, 8
005360  5b8f0200  j 5240
005364  63011f00  loadli.w r2,  8(r30)
005368  9f037fd6  addli r7, r30, -5320
00536c  0b912010  add.s r2, r1, r2
005370  0b11f120  mul.s r2, r2, r15
005374  b31a0128  sext_int2long r[22:23], r2
005378  2b0100f0  lui r2, 983040
00537c  97bb6a02  sll.d r[24:25], r[22:23], r6
005380  ebda0300  load.d r[22:23], 0(r7)
005384  17912500  or r2, r11, r2
005388  9f038fd5  addli r7, r30, -5440
00538c  73b07301  store.d r[24:25], 0(r7)
005390  8baa7a11  add.ul r[22:23], r[22:23], r[24:25]
005394  7fa13a00  l_gm2lm r2, r3, 0(r[22:23])
005398  00a00200  mfence { lm, gm }
00539c  bfdc6200  blt.s r5, r6, 820
0053a0  9f0d0000  addli r27, zero, 0
0053a4  1f0d0000  addli r26, zero, 0
0053a8  1f0e0000  addli r28, zero, 0
0053ac  db0c0000  j 100
0053b0  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0053b4  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0053b8  1f1e0e00  addli r28, r28, 1
0053bc  6af104c0  vsrl.p vr2, r9, vr0
0053c0  eaf114c0  vsrl.p vr3, r9, vr1
0053c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0053c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0053cc  6a7109c0  vsrl.p vr2, r18, vr0
0053d0  ea7119c0  vsrl.p vr3, r18, vr1
0053d4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0053d8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0053dc  6af109c0  vsrl.p vr2, r19, vr0
0053e0  eaf119c0  vsrl.p vr3, r19, vr1
0053e4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0053e8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0053ec  6a710ac0  vsrl.p vr2, r20, vr0
0053f0  ea711ac0  vsrl.p vr3, r20, vr1
0053f4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0053f8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0053fc  7a110040  vextracti.f r2, 0(vr0)
005400  fa910040  vextracti.f r3, 0(vr1)
005404  8bed2d10  add.f.rn r27, r27, r2
005408  0b6d3d10  add.f.rn r26, r26, r3
00540c  373b5e00  beq r28, r5, 716
005410  1f010e00  addli r2, r28, 0
005414  37309700  beq r14, r9, 12
005418  17218e00  xor r2, r28, r8
00541c  0b912210  add.s r2, r5, r2
005420  9f010fd7  addli r3, r30, -5248
005424  8b13e120  mul.s r7, r2, r14
005428  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
00542c  8b937718  sub.s r7, r15, r7
005430  8b9ae340  min.s r21, r7, r14
005434  92322002  vadd.s.mz vr5{mr1}, zero, vr2
005438  12322002  vadd.s.mz vr4{mr1}, zero, vr2
00543c  92312002  vadd.s.mz vr3{mr1}, zero, vr2
005440  bfcd6afe  blt.s r21, r6, -144
005444  8b1b2220  mul.s r23, r4, r2
005448  1f010fd7  addli r2, r30, -5248
00544c  ab950100  lui r11, 25
005450  1f0b0000  addli r22, zero, 0
005454  9f038fd7  addli r7, r30, -5184
005458  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
00545c  9f850500  addli r11, r11, 0
005460  12315002  vadd.s.mz vr2{mr1}, zero, vr5
005464  92315002  vadd.s.mz vr3{mr1}, zero, vr5
005468  12325002  vadd.s.mz vr4{mr1}, zero, vr5
00546c  0b9c7511  add.s r24, r11, r23
005470  0b917311  add.s r2, r7, r23
005474  9f018fd6  addli r3, r30, -5312
005478  4a030c02  vloads.mz vr6{mr1}, 0(r24)
00547c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
005480  c2030102  vload.mz vr7{mr1}, 0(r2)
005484  9f010fd7  addli r3, r30, -5248
005488  9f0c8c00  addli r25, r24, 64
00548c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
005490  9f018b00  addli r3, r22, 64
005494  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
005498  6a357602  vand.s.mz vr10{mr1}, r12, vr7
00549c  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0054a0  6a336602  vand.s.mz vr6{mr1}, r12, vr6
0054a4  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0054a8  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0054ac  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0054b0  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0054b4  669503c0  vabs.f vr10, vr7
0054b8  6a348302  vand.s.mz vr8{mr1}, r6, vr8
0054bc  ea349302  vand.s.mz vr9{mr1}, r6, vr9
0054c0  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
0054c4  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
0054c8  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
0054cc  12b48602  vadd.s.mz vr8{mr1}, r13, vr8
0054d0  92b49602  vadd.s.mz vr9{mr1}, r13, vr9
0054d4  ea338602  vand.s.mz vr7{mr1}, r12, vr8
0054d8  661403c0  vabs.f vr8, vr6
0054dc  6a339602  vand.s.mz vr6{mr1}, r12, vr9
0054e0  eaa30834  vor.u.mh vr7{mr2}, r17, vr0
0054e4  72218842  vlt.u.mz mr2{mr1}, r16, vr8
0054e8  6aa30834  vor.u.mh vr6{mr2}, r17, vr0
0054ec  4a840c02  vloads.mz vr8{mr1}, 0(r25)
0054f0  9f0c8100  addli r25, r2, 64
0054f4  c2840c02  vload.mz vr9{mr1}, 0(r25)
0054f8  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
0054fc  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
005500  6a336602  vand.s.mz vr6{mr1}, r12, vr6
005504  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
005508  ea349602  vand.s.mz vr9{mr1}, r12, vr9
00550c  46007102  vstore.mz vr7{mr1}, 0(r2)
005510  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005514  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005518  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
00551c  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
005520  6a348602  vand.s.mz vr8{mr1}, r12, vr8
005524  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005528  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
00552c  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
005530  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
005534  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
005538  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
00553c  ea349302  vand.s.mz vr9{mr1}, r6, vr9
005540  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
005544  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
005548  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
00554c  661505c0  vabs.f vr10, vr10
005550  661404c0  vabs.f vr8, vr8
005554  92b49602  vadd.s.mz vr9{mr1}, r13, vr9
005558  92b5b602  vadd.s.mz vr11{mr1}, r13, vr11
00555c  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
005560  ea349602  vand.s.mz vr9{mr1}, r12, vr9
005564  6a35b602  vand.s.mz vr10{mr1}, r12, vr11
005568  eaa40834  vor.u.mh vr9{mr2}, r17, vr0
00556c  72218842  vlt.u.mz mr2{mr1}, r16, vr8
005570  6aa50834  vor.u.mh vr10{mr2}, r17, vr0
005574  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
005578  ea34a602  vand.s.mz vr9{mr1}, r12, vr10
00557c  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
005580  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
005584  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
005588  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
00558c  46808c02  vstore.mz vr8{mr1}, 0(r25)
005590  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005594  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005598  4be83afe  ble.s r21, r3, -488
00559c  9f010c01  addli r3, r24, 128
0055a0  9f0c0101  addli r25, r2, 128
0055a4  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0055a8  1f018101  addli r2, r2, 192
0055ac  1f0b0b01  addli r22, r22, 128
0055b0  9f850502  addli r11, r11, 256
0055b4  9f830302  addli r7, r7, 256
0055b8  6a237522  vor.u.mz vr6{mr1}, r10, vr7
0055bc  4a840102  vloads.mz vr8{mr1}, 0(r3)
0055c0  c2840c02  vload.mz vr9{mr1}, 0(r25)
0055c4  9f018c01  addli r3, r24, 192
0055c8  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
0055cc  6a309602  vand.s.mz vr0{mr1}, r12, vr9
0055d0  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
0055d4  6a348602  vand.s.mz vr8{mr1}, r12, vr8
0055d8  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
0055dc  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
0055e0  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
0055e4  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
0055e8  e69504c0  vabs.f vr11, vr9
0055ec  6a300302  vand.s.mz vr0{mr1}, r6, vr0
0055f0  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
0055f4  7221b842  vlt.u.mz mr2{mr1}, r16, vr11
0055f8  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
0055fc  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
005600  12b00602  vadd.s.mz vr0{mr1}, r13, vr0
005604  12b5a602  vadd.s.mz vr10{mr1}, r13, vr10
005608  ea340602  vand.s.mz vr9{mr1}, r12, vr0
00560c  661004c0  vabs.f vr0, vr8
005610  6a34a602  vand.s.mz vr8{mr1}, r12, vr10
005614  eaa47834  vor.u.mh vr9{mr2}, r17, vr7
005618  72210842  vlt.u.mz mr2{mr1}, r16, vr0
00561c  6aa47834  vor.u.mh vr8{mr2}, r17, vr7
005620  4a800102  vloads.mz vr0{mr1}, 0(r3)
005624  42050102  vload.mz vr10{mr1}, 0(r2)
005628  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
00562c  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
005630  6a35a602  vand.s.mz vr10{mr1}, r12, vr10
005634  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
005638  6a348602  vand.s.mz vr8{mr1}, r12, vr8
00563c  46809c02  vstore.mz vr9{mr1}, 0(r25)
005640  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
005644  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
005648  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
00564c  6a300602  vand.s.mz vr0{mr1}, r12, vr0
005650  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
005654  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
005658  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
00565c  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
005660  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
005664  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
005668  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
00566c  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
005670  e69000c0  vabs.f vr1, vr1
005674  661000c0  vabs.f vr0, vr0
005678  12b5a602  vadd.s.mz vr10{mr1}, r13, vr10
00567c  92b5b602  vadd.s.mz vr11{mr1}, r13, vr11
005680  72211842  vlt.u.mz mr2{mr1}, r16, vr1
005684  6a35a602  vand.s.mz vr10{mr1}, r12, vr10
005688  ea30b602  vand.s.mz vr1{mr1}, r12, vr11
00568c  6aa57834  vor.u.mh vr10{mr2}, r17, vr7
005690  72210842  vlt.u.mz mr2{mr1}, r16, vr0
005694  eaa07834  vor.u.mh vr1{mr2}, r17, vr7
005698  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
00569c  ea331602  vand.s.mz vr7{mr1}, r12, vr1
0056a0  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0056a4  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
0056a8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0056ac  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0056b0  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
0056b4  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
0056b8  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
0056bc  46000102  vstore.mz vr0{mr1}, 0(r2)
0056c0  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0056c4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0056c8  bf165bff  blt.s r22, r21, -604
0056cc  db9cffff  j -796
0056d0  1f0d0000  addli r26, zero, 0
0056d4  9f0d0000  addli r27, zero, 0
0056d8  00a00000  mfence { lm }
0056dc  3fa167fe  blt.s r15, r6, -952
0056e0  e3016fd5  loadli.w r3,  -5456(r30)
0056e4  2bab0100  lui r22, 26
0056e8  abbb0100  lui r23, 27
0056ec  1f010000  addli r2, zero, 0
0056f0  1f0b0b00  addli r22, r22, 0
0056f4  9f8b0b00  addli r23, r23, 0
0056f8  8f853d18  div.f.rn r11, r27, r3
0056fc  8f033d18  div.f.rn r7, r26, r3
005700  e3013f00  loadli.w r3,  24(r30)
005704  8beab520  mul.f.rn r21, r11, r11
005708  8be50558  neg.f r11, r11
00570c  8be35319  sub.f.rn r7, r7, r21
005710  9f0a8fd7  addli r21, r30, -5184
005714  8be33310  add.f.rn r7, r7, r3
005718  ab01803f  lui r3, 260096
00571c  8f830308  sqrt.f.rn r7, r7
005720  8f837118  div.f.rn r7, r3, r7
005724  42820a02  vload.mz vr4{mr1}, 0(r21)
005728  ca020b02  vloads.mz vr5{mr1}, 0(r22)
00572c  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
005730  4a830b02  vloads.mz vr6{mr1}, 0(r23)
005734  1f0c4100  addli r24, r2, 32
005738  ea212522  vor.u.mz vr3{mr1}, r10, vr2
00573c  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
005740  6a344602  vand.s.mz vr8{mr1}, r12, vr4
005744  92937502  vadd.f.mz.rn vr7{mr1}, r11, vr7
005748  12948502  vadd.f.mz.rn vr8{mr1}, r11, vr8
00574c  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
005750  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
005754  6a355602  vand.s.mz vr10{mr1}, r12, vr5
005758  ea326602  vand.s.mz vr5{mr1}, r12, vr6
00575c  8a937302  vmul.f.mz.rn vr7{mr1}, r7, vr7
005760  0a938302  vmul.f.mz.rn vr6{mr1}, r7, vr8
005764  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
005768  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
00576c  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
005770  6a337302  vand.s.mz vr6{mr1}, r6, vr7
005774  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
005778  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
00577c  ea337302  vand.s.mz vr7{mr1}, r6, vr7
005780  661202c0  vabs.f vr4, vr4
005784  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
005788  12b36602  vadd.s.mz vr6{mr1}, r13, vr6
00578c  e69202c0  vabs.f vr5, vr5
005790  72214842  vlt.u.mz mr2{mr1}, r16, vr4
005794  6a336602  vand.s.mz vr6{mr1}, r12, vr6
005798  92b37602  vadd.s.mz vr7{mr1}, r13, vr7
00579c  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
0057a0  6a327602  vand.s.mz vr4{mr1}, r12, vr7
0057a4  72215842  vlt.u.mz mr2{mr1}, r16, vr5
0057a8  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
0057ac  6aa22834  vor.u.mh vr4{mr2}, r17, vr2
0057b0  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
0057b4  46804a02  vstore.mz vr4{mr1}, 0(r21)
0057b8  cbbd87fd  ble.s r15, r24, -1172
0057bc  1f0c8b00  addli r24, r22, 64
0057c0  9f8c8a00  addli r25, r21, 64
0057c4  1f018100  addli r2, r2, 64
0057c8  1f0b0b01  addli r22, r22, 128
0057cc  9f8a0a01  addli r21, r21, 128
0057d0  4a020c02  vloads.mz vr4{mr1}, 0(r24)
0057d4  1f8c8b00  addli r24, r23, 64
0057d8  c2820c02  vload.mz vr5{mr1}, 0(r25)
0057dc  9f8b0b01  addli r23, r23, 128
0057e0  4a030c02  vloads.mz vr6{mr1}, 0(r24)
0057e4  eeb351a2  vsll.s.mz vr7{mr1}, vr3, vr5
0057e8  ea325602  vand.s.mz vr5{mr1}, r12, vr5
0057ec  92937502  vadd.f.mz.rn vr7{mr1}, r11, vr7
0057f0  12945502  vadd.f.mz.rn vr8{mr1}, r11, vr5
0057f4  eeb441a2  vsll.s.mz vr9{mr1}, vr3, vr4
0057f8  6a354602  vand.s.mz vr10{mr1}, r12, vr4
0057fc  8a937302  vmul.f.mz.rn vr7{mr1}, r7, vr7
005800  eeb261a2  vsll.s.mz vr5{mr1}, vr3, vr6
005804  6a326602  vand.s.mz vr4{mr1}, r12, vr6
005808  0a938302  vmul.f.mz.rn vr6{mr1}, r7, vr8
00580c  a6929302  vmac.f.mz.rn vr5{mr1}, vr7, vr9
005810  2612a302  vmac.f.mz.rn vr4{mr1}, vr6, vr10
005814  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
005818  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
00581c  6a336302  vand.s.mz vr6{mr1}, r6, vr6
005820  ea337302  vand.s.mz vr7{mr1}, r6, vr7
005824  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
005828  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
00582c  e69202c0  vabs.f vr5, vr5
005830  661202c0  vabs.f vr4, vr4
005834  12b36602  vadd.s.mz vr6{mr1}, r13, vr6
005838  92b37602  vadd.s.mz vr7{mr1}, r13, vr7
00583c  72215842  vlt.u.mz mr2{mr1}, r16, vr5
005840  6a336602  vand.s.mz vr6{mr1}, r12, vr6
005844  ea327602  vand.s.mz vr5{mr1}, r12, vr7
005848  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
00584c  72214842  vlt.u.mz mr2{mr1}, r16, vr4
005850  eaa22834  vor.u.mh vr5{mr2}, r17, vr2
005854  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
005858  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
00585c  46802c02  vstore.mz vr2{mr1}, 0(r25)
005860  3f1bf1fe  blt.s r2, r15, -316
005864  5b58ffff  j -1344
005868  63012f00  loadli.w r2,  16(r30)
00586c  ab0100f0  lui r3, 983040
005870  1b311100  slli r2, r2, 1
005874  17113100  or r2, r2, r3
005878  abf10100  lui r3, 31
00587c  9f810100  addli r3, r3, 0
005880  7f013400  l_gm2sm r2, r3, 0(r[9:10])
005884  2bf10000  lui r2, 15
005888  e3411f00  loadli.w r3,  12(r30)
00588c  00200300  mfence { sm, gm }
005890  1b11f1ff  ori r2, r2, 4095
005894  80210104  csr_set csr3, r2
005898  00d00100  sync_group
00589c  cbfc1106  ble.s r3, r1, 3900
0058a0  e3012f00  loadli.w r3,  16(r30)
0058a4  e3422f00  loadli.w r5,  20(r30)
0058a8  2bf4ffff  lui r8, 1048575
0058ac  2bd50100  lui r10, 29
0058b0  9f0b8fd7  addli r23, r30, -5184
0058b4  9f040002  addli r9, zero, 256
0058b8  9f050001  addli r11, zero, 128
0058bc  1f068000  addli r12, zero, 64
0058c0  9f064000  addli r13, zero, 32
0058c4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0058c8  1b14f4ff  ori r8, r8, 4095
0058cc  1f050500  addli r10, r10, 0
0058d0  0b925110  add.s r4, r3, r5
0058d4  1bb11100  slli r2, r3, 1
0058d8  b3810108  fix2float.rn r3, r3
0058dc  1f73f2ff  addli r6, r4, -1
0058e0  1bb21200  slli r4, r5, 1
0058e4  8b125330  div.s r5, r6, r5
0058e8  1f130000  addli r6, zero, 1
0058ec  5b070000  j 56
0058f0  00a00000  mfence { lm }
0058f4  eb580f00  load.d r[18:19], 0(r30)
0058f8  2b0800f0  lui r16, 983040
0058fc  9f0b8fd7  addli r23, r30, -5184
005900  17180101  or r16, r2, r16
005904  8ba93811  add.ul r[20:21], r[18:19], r[20:21]
005908  80580102  load_param_i r17, 2
00590c  7fb87901  s_lm2gm r16, r23, 0(r[20:21])
005910  8b901810  add.s r1, r17, r1
005914  00a00200  mfence { lm, gm }
005918  e3431f00  loadli.w r7,  12(r30)
00591c  3fa07000  blt.s r1, r7, 8
005920  5bd70100  j 3768
005924  e3031f00  loadli.w r7,  8(r30)
005928  0b987010  add.s r16, r1, r7
00592c  9f037fd6  addli r7, r30, -5320
005930  0b18f820  mul.s r16, r16, r15
005934  33180828  sext_int2long r[17:18], r16
005938  97396802  sll.d r[20:21], r[17:18], r6
00593c  ebd80300  load.d r[18:19], 0(r7)
005940  2b0800f0  lui r16, 983040
005944  17180101  or r16, r2, r16
005948  8baa3811  add.ul r[22:23], r[18:19], r[20:21]
00594c  7fa87a01  l_gm2lm r16, r23, 0(r[22:23])
005950  00a00200  mfence { lm, gm }
005954  3fc76200  blt.s r5, r6, 464
005958  1f0b0000  addli r22, zero, 0
00595c  9f0a0000  addli r21, zero, 0
005960  9f0b0000  addli r23, zero, 0
005964  db0c0000  j 100
005968  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
00596c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005970  9f9b0b00  addli r23, r23, 1
005974  6af134c0  vsrl.p vr2, r9, vr3
005978  6af214c0  vsrl.p vr4, r9, vr1
00597c  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
005980  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
005984  eaf125c0  vsrl.p vr3, r11, vr2
005988  6af215c0  vsrl.p vr4, r11, vr1
00598c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
005990  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
005994  ea7126c0  vsrl.p vr3, r12, vr2
005998  6a7216c0  vsrl.p vr4, r12, vr1
00599c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0059a0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0059a4  eaf126c0  vsrl.p vr3, r13, vr2
0059a8  6af216c0  vsrl.p vr4, r13, vr1
0059ac  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0059b0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0059b4  fa130140  vextracti.f r7, 0(vr2)
0059b8  7a980040  vextracti.f r16, 0(vr1)
0059bc  0b6b7b10  add.f.rn r22, r22, r7
0059c0  8bea0a11  add.f.rn r21, r21, r16
0059c4  b7a55b00  beq r23, r5, 360
0059c8  1f880b00  addli r16, r23, 0
0059cc  37309700  beq r14, r9, 12
0059d0  17a88b00  xor r16, r23, r8
0059d4  0b980211  add.s r16, r5, r16
0059d8  8b18e820  mul.s r17, r16, r14
0059dc  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0059e0  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0059e4  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0059e8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0059ec  8b981719  sub.s r17, r15, r17
0059f0  0b9ce840  min.s r24, r17, r14
0059f4  bf5d6cfe  blt.s r24, r6, -140
0059f8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0059fc  12310002  vadd.s.mz vr2{mr1}, zero, vr0
005a00  92310002  vadd.s.mz vr3{mr1}, zero, vr0
005a04  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005a08  9f0c0000  addli r25, zero, 0
005a0c  0b1d0221  mul.s r26, r4, r16
005a10  9f0d8fd7  addli r27, r30, -5184
005a14  1f0e0500  addli r28, r10, 0
005a18  0b18ae11  add.s r16, r28, r26
005a1c  9f838c00  addli r7, r25, 64
005a20  ca020802  vloads.mz vr5{mr1}, 0(r16)
005a24  9f088800  addli r17, r16, 64
005a28  4a830802  vloads.mz vr6{mr1}, 0(r17)
005a2c  8b98ad11  add.s r17, r27, r26
005a30  c2830802  vload.mz vr7{mr1}, 0(r17)
005a34  1f898800  addli r18, r17, 64
005a38  42040902  vload.mz vr8{mr1}, 0(r18)
005a3c  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
005a40  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005a44  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
005a48  06b40300  vfp162float_l.rn vr8, vr7
005a4c  86f30300  vfp162float_h.rn vr7, vr7
005a50  86340300  vfp162float_l.rn vr9, vr6
005a54  06730300  vfp162float_h.rn vr6, vr6
005a58  86120400  vfloat2fp16_l.rn vr5, vr8
005a5c  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
005a60  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
005a64  12340002  vadd.s.mz vr8{mr1}, zero, vr0
005a68  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005a6c  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005a70  06940400  vfloat2fp16_l.rn vr8, vr9
005a74  86d20300  vfloat2fp16_h.rn vr5, vr7
005a78  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005a7c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005a80  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
005a84  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005a88  06540300  vfloat2fp16_h.rn vr8, vr6
005a8c  46805802  vstore.mz vr5{mr1}, 0(r17)
005a90  46008902  vstore.mz vr8{mr1}, 0(r18)
005a94  4b5b7cfe  ble.s r24, r7, -300
005a98  9f030801  addli r7, r16, 128
005a9c  9f8c0c01  addli r25, r25, 128
005aa0  1f0e0e02  addli r28, r28, 256
005aa4  9f8d0d02  addli r27, r27, 256
005aa8  ca820302  vloads.mz vr5{mr1}, 0(r7)
005aac  9f038801  addli r7, r16, 192
005ab0  1f880801  addli r16, r17, 128
005ab4  4a830302  vloads.mz vr6{mr1}, 0(r7)
005ab8  c2030802  vload.mz vr7{mr1}, 0(r16)
005abc  9f838801  addli r7, r17, 192
005ac0  42840302  vload.mz vr8{mr1}, 0(r7)
005ac4  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
005ac8  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005acc  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
005ad0  12330002  vadd.s.mz vr6{mr1}, zero, vr0
005ad4  86b40300  vfp162float_l.rn vr9, vr7
005ad8  86f30300  vfp162float_h.rn vr7, vr7
005adc  86920400  vfloat2fp16_l.rn vr5, vr9
005ae0  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
005ae4  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
005ae8  86340400  vfp162float_l.rn vr9, vr8
005aec  06740400  vfp162float_h.rn vr8, vr8
005af0  06930400  vfloat2fp16_l.rn vr6, vr9
005af4  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005af8  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005afc  86d20300  vfloat2fp16_h.rn vr5, vr7
005b00  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005b04  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005b08  06530400  vfloat2fp16_h.rn vr6, vr8
005b0c  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
005b10  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005b14  46005802  vstore.mz vr5{mr1}, 0(r16)
005b18  46806302  vstore.mz vr6{mr1}, 0(r7)
005b1c  bffb8cff  blt.s r25, r24, -260
005b20  5bc9ffff  j -440
005b24  9f0a0000  addli r21, zero, 0
005b28  1f0b0000  addli r22, zero, 0
005b2c  00a00000  mfence { lm }
005b30  3f8767fe  blt.s r15, r6, -576
005b34  0f083b18  div.f.rn r16, r22, r3
005b38  8f883a18  div.f.rn r17, r21, r3
005b3c  e3033f00  loadli.w r7,  24(r30)
005b40  abec0100  lui r25, 30
005b44  2bfd0100  lui r26, 31
005b48  9f0b0000  addli r23, zero, 0
005b4c  1f0c8fd7  addli r24, r30, -5184
005b50  9f8c0c00  addli r25, r25, 0
005b54  1f0d0d00  addli r26, r26, 0
005b58  8b6a0821  mul.f.rn r21, r16, r16
005b5c  0b6b0858  neg.f r22, r16
005b60  8be85819  sub.f.rn r17, r17, r21
005b64  8be87810  add.f.rn r17, r17, r7
005b68  ab03803f  lui r7, 260096
005b6c  8f880808  sqrt.f.rn r17, r17
005b70  8f8a1319  div.f.rn r21, r7, r17
005b74  c2000c02  vload.mz vr1{mr1}, 0(r24)
005b78  4a810c02  vloads.mz vr2{mr1}, 0(r25)
005b7c  ca010d02  vloads.mz vr3{mr1}, 0(r26)
005b80  1f884b00  addli r16, r23, 32
005b84  06b20000  vfp162float_l.rn vr4, vr1
005b88  86f00000  vfp162float_h.rn vr1, vr1
005b8c  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
005b90  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
005b94  86320100  vfp162float_l.rn vr5, vr2
005b98  06b30100  vfp162float_l.rn vr6, vr3
005b9c  06710100  vfp162float_h.rn vr2, vr2
005ba0  86f10100  vfp162float_h.rn vr3, vr3
005ba4  8a931a02  vmul.f.mz.rn vr7{mr1}, r21, vr1
005ba8  0a924a02  vmul.f.mz.rn vr4{mr1}, r21, vr4
005bac  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005bb0  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
005bb4  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
005bb8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005bbc  06110300  vfloat2fp16_l.rn vr2, vr6
005bc0  06d10100  vfloat2fp16_h.rn vr2, vr3
005bc4  46002c02  vstore.mz vr2{mr1}, 0(r24)
005bc8  cba407ff  ble.s r15, r16, -728
005bcc  1f888c00  addli r16, r25, 64
005bd0  9f088c00  addli r17, r24, 64
005bd4  9f8b8b00  addli r23, r23, 64
005bd8  9f8c0c01  addli r25, r25, 128
005bdc  1f0c0c01  addli r24, r24, 128
005be0  4a010802  vloads.mz vr2{mr1}, 0(r16)
005be4  1f088d00  addli r16, r26, 64
005be8  c2810802  vload.mz vr3{mr1}, 0(r17)
005bec  1f0d0d01  addli r26, r26, 128
005bf0  4a020802  vloads.mz vr4{mr1}, 0(r16)
005bf4  86b20100  vfp162float_l.rn vr5, vr3
005bf8  86f10100  vfp162float_h.rn vr3, vr3
005bfc  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
005c00  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
005c04  06330100  vfp162float_l.rn vr6, vr2
005c08  06710100  vfp162float_h.rn vr2, vr2
005c0c  8a925a02  vmul.f.mz.rn vr5{mr1}, r21, vr5
005c10  8a913a02  vmul.f.mz.rn vr3{mr1}, r21, vr3
005c14  86330200  vfp162float_l.rn vr7, vr4
005c18  06720200  vfp162float_h.rn vr4, vr4
005c1c  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
005c20  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
005c24  86900300  vfloat2fp16_l.rn vr1, vr7
005c28  86500200  vfloat2fp16_h.rn vr1, vr4
005c2c  46801802  vstore.mz vr1{mr1}, 0(r17)
005c30  3f9dfbfe  blt.s r23, r15, -188
005c34  db97ffff  j -836
005c38  9f000040  addli r1, zero, 8192
005c3c  2b0100f0  lui r2, 983040
005c40  97902000  or r1, r1, r2
005c44  2b310200  lui r2, 35
005c48  1f010100  addli r2, r2, 0
005c4c  ff002300  l_gm2sm r1, r2, 0(r[7:8])
005c50  db070000  j 60
005c54  63012f00  loadli.w r2,  16(r30)
005c58  ab0100f0  lui r3, 983040
005c5c  1b312100  slli r2, r2, 2
005c60  17113100  or r2, r2, r3
005c64  ab810200  lui r3, 40
005c68  9f810108  addli r3, r3, 1024
005c6c  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005c70  dbef0000  j 1916
005c74  9f000040  addli r1, zero, 8192
005c78  2b0100f0  lui r2, 983040
005c7c  97902000  or r1, r1, r2
005c80  2b510200  lui r2, 37
005c84  1f010100  addli r2, r2, 0
005c88  ff002400  l_gm2sm r1, r2, 0(r[9:10])
005c8c  abf00000  lui r1, 15
005c90  00200300  mfence { sm, gm }
005c94  1b011500  andi r2, r10, 1
005c98  9f010006  addli r3, zero, 768
005c9c  9b90f0ff  ori r1, r1, 4095
005ca0  80a10004  csr_set csr3, r1
005ca4  9f000006  addli r1, zero, 768
005ca8  00d00100  sync_group
005cac  67082fd6  storeli.w r2, -5248(r30)
005cb0  37200100  beq r2, zero, 8
005cb4  9f01000a  addli r3, zero, 1280
005cb8  63421f00  loadli.w r4,  12(r30)
005cbc  9f120000  addli r5, zero, 1
005cc0  3f6c5204  blt.s r4, r5, 2840
005cc4  63010fd7  loadli.w r2,  -5248(r30)
005cc8  80520102  load_param_i r5, 2
005ccc  9b431500  srli r7, r10, 1
005cd0  ab170200  lui r15, 33
005cd4  ab7a0200  lui r21, 39
005cd8  2b7d0200  lui r26, 39
005cdc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005ce0  1f020000  addli r4, zero, 0
005ce4  1bb42100  slli r8, r3, 2
005ce8  1f068fd7  addli r12, r30, -5184
005cec  1f080005  addli r16, zero, 640
005cf0  1f090001  addli r18, zero, 128
005cf4  9f098000  addli r19, zero, 64
005cf8  1f0a4000  addli r20, zero, 32
005cfc  1bc31200  srli r6, r5, 1
005d00  ab320200  lui r5, 35
005d04  9f870700  addli r15, r15, 0
005d08  9f8a0a00  addli r21, r21, 0
005d0c  1f0d0d04  addli r26, r26, 512
005d10  8b101120  mul.s r1, r2, r1
005d14  1f018fd5  addli r2, r30, -5440
005d18  9f820200  addli r5, r5, 0
005d1c  67041fd6  storeli.w r1, -5312(r30)
005d20  9bb02000  slli r1, r1, 2
005d24  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005d28  1f810c00  addli r2, r25, 0
005d2c  9f0c0003  addli r25, zero, 384
005d30  8b945010  add.s r9, r1, r5
005d34  ab520200  lui r5, 37
005d38  9f820200  addli r5, r5, 0
005d3c  0b955010  add.s r10, r1, r5
005d40  abf0ffff  lui r1, 1048575
005d44  9b9000f8  ori r1, r1, 3968
005d48  e70b1fd4  storeli.w r1, -5448(r30)
005d4c  abf00000  lui r1, 15
005d50  1b9bf0ff  ori r22, r1, 4095
005d54  5b040000  j 32
005d58  00a00300  mfence { lm, sm, gm }
005d5c  80210b04  csr_set csr3, r22
005d60  00d00100  sync_group
005d64  63411f00  loadli.w r2,  12(r30)
005d68  0b126210  add.s r4, r4, r6
005d6c  3f202200  blt.s r4, r2, 8
005d70  5be7f5ff  j -20680
005d74  8b107210  add.s r1, r4, r7
005d78  cb0f11fe  ble.s r2, r1, -32
005d7c  63011f00  loadli.w r2,  8(r30)
005d80  8b902010  add.s r1, r1, r2
005d84  63018fd6  loadli.w r2,  -5312(r30)
005d88  9bb0b000  slli r1, r1, 11
005d8c  97902000  or r1, r1, r2
005d90  1f017fd6  addli r2, r30, -5320
005d94  b3960028  sext_int2long r[14:15], r1
005d98  9f200000  addli r1, zero, 2
005d9c  97bd1602  sll.d r[28:29], r[14:15], r1
005da0  eb560100  load.d r[14:15], 0(r2)
005da4  ab0000f0  lui r1, 983040
005da8  97101400  or r1, r8, r1
005dac  8ba6b611  add.ul r[14:15], r[14:15], r[28:29]
005db0  ffa0c600  l_gm2lm r1, r12, 0(r[14:15])
005db4  00a00200  mfence { lm, gm }
005db8  e3000fd7  loadli.w r1,  -5248(r30)
005dbc  3ba60000  bneq r1, zero, 392
005dc0  9f008fd5  addli r1, r30, -5440
005dc4  e3067fd5  loadli.w r13,  -5448(r30)
005dc8  9f050000  addli r11, zero, 0
005dcc  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
005dd0  92303002  vadd.s.mz vr1{mr1}, zero, vr3
005dd4  12313002  vadd.s.mz vr2{mr1}, zero, vr3
005dd8  12323002  vadd.s.mz vr4{mr1}, zero, vr3
005ddc  0b97f510  add.s r14, r11, r15
005de0  8b10b610  add.s r1, r12, r11
005de4  9f860601  addli r13, r13, 128
005de8  9f850504  addli r11, r11, 512
005dec  1f010701  addli r2, r14, 128
005df0  4a100702  vloads_mask16.mz vr0{mr1}, 0(r14)
005df4  9f028700  addli r5, r14, 64
005df8  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
005dfc  9f888001  addli r17, r1, 192
005e00  ca120102  vloads_mask16.mz vr5{mr1}, 0(r2)
005e04  1f018701  addli r2, r14, 192
005e08  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
005e0c  9f828000  addli r5, r1, 64
005e10  c2950802  vload_mask16.mz vr11{mr1}, 0(r17)
005e14  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
005e18  1f810001  addli r2, r1, 128
005e1c  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
005e20  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
005e24  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005e28  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
005e2c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005e30  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005e34  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005e38  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
005e3c  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
005e40  1f010702  addli r2, r14, 256
005e44  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005e48  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
005e4c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
005e50  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
005e54  9f820003  addli r5, r1, 384
005e58  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
005e5c  1f018702  addli r2, r14, 320
005e60  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
005e64  9f880002  addli r17, r1, 256
005e68  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005e6c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
005e70  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005e74  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
005e78  1f010703  addli r2, r14, 384
005e7c  c2930802  vload_mask16.mz vr7{mr1}, 0(r17)
005e80  1f078703  addli r14, r14, 448
005e84  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005e88  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
005e8c  1f818002  addli r2, r1, 320
005e90  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
005e94  9f808003  addli r1, r1, 448
005e98  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
005e9c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005ea0  c2930202  vload_mask16.mz vr7{mr1}, 0(r5)
005ea4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005ea8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005eac  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005eb0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005eb4  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
005eb8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005ebc  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
005ec0  13810605  setlt.u r2, r13, r16
005ec4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005ec8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005ecc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005ed0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005ed4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005ed8  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
005edc  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
005ee0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005ee4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005ee8  bb5b01fe  bneq r2, zero, -268
005eec  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005ef0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005ef4  9f000002  addli r1, zero, 256
005ef8  6af100c0  vsrl.p vr2, r1, vr0
005efc  eaf110c0  vsrl.p vr3, r1, vr1
005f00  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005f04  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005f08  6a7109c0  vsrl.p vr2, r18, vr0
005f0c  ea7119c0  vsrl.p vr3, r18, vr1
005f10  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005f14  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005f18  6af109c0  vsrl.p vr2, r19, vr0
005f1c  eaf119c0  vsrl.p vr3, r19, vr1
005f20  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005f24  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005f28  6a710ac0  vsrl.p vr2, r20, vr0
005f2c  ea711ac0  vsrl.p vr3, r20, vr1
005f30  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005f34  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005f38  fa120040  vextracti.f r5, 0(vr0)
005f3c  fa900040  vextracti.f r1, 0(vr1)
005f40  5b630000  j 792
005f44  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005f48  abf0ffff  lui r1, 1048575
005f4c  9f050000  addli r11, zero, 0
005f50  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005f54  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005f58  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005f5c  9b9600f8  ori r13, r1, 3968
005f60  8b90b710  add.s r1, r15, r11
005f64  0b17b610  add.s r14, r12, r11
005f68  9f860601  addli r13, r13, 128
005f6c  9f850504  addli r11, r11, 512
005f70  1f8c0031  addli r24, r1, 6272
005f74  9f820030  addli r5, r1, 6144
005f78  1f818031  addli r2, r1, 6336
005f7c  9f0b0718  addli r23, r14, 3072
005f80  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
005f84  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
005f88  9f828030  addli r5, r1, 6208
005f8c  ca140102  vloads_mask16.mz vr9{mr1}, 0(r2)
005f90  1f018718  addli r2, r14, 3136
005f94  1f0c8719  addli r24, r14, 3264
005f98  42930b02  vload_mask16.mz vr6{mr1}, 0(r23)
005f9c  4a940202  vloads_mask16.mz vr8{mr1}, 0(r5)
005fa0  9f020719  addli r5, r14, 3200
005fa4  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
005fa8  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
005fac  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
005fb0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005fb4  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
005fb8  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
005fbc  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
005fc0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005fc4  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
005fc8  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
005fcc  9f820032  addli r5, r1, 6400
005fd0  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
005fd4  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
005fd8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005fdc  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
005fe0  9f0b071a  addli r23, r14, 3328
005fe4  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
005fe8  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
005fec  1f01871b  addli r2, r14, 3520
005ff0  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
005ff4  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
005ff8  4a900202  vloads_mask16.mz vr0{mr1}, 0(r5)
005ffc  9f828032  addli r5, r1, 6464
006000  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006004  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006008  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
00600c  9f820033  addli r5, r1, 6528
006010  9f808033  addli r1, r1, 6592
006014  4a940202  vloads_mask16.mz vr8{mr1}, 0(r5)
006018  9f02871a  addli r5, r14, 3392
00601c  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
006020  9f00071b  addli r1, r14, 3456
006024  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
006028  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00602c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
006030  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
006034  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
006038  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00603c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
006040  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
006044  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
006048  46906202  vstore_mask16.mz vr6{mr1}, 0(r5)
00604c  93829605  setlt.u r5, r13, r25
006050  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
006054  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
006058  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00605c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
006060  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
006064  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
006068  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
00606c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
006070  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006074  bbbb02fe  bneq r5, zero, -276
006078  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00607c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
006080  9f000002  addli r1, zero, 256
006084  9f060000  addli r13, zero, 0
006088  eaf110c0  vsrl.p vr3, r1, vr1
00608c  6af100c0  vsrl.p vr2, r1, vr0
006090  abf0ffff  lui r1, 1048575
006094  1b9700f8  ori r14, r1, 3968
006098  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00609c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0060a0  ea7119c0  vsrl.p vr3, r18, vr1
0060a4  6a7109c0  vsrl.p vr2, r18, vr0
0060a8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060ac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0060b0  eaf119c0  vsrl.p vr3, r19, vr1
0060b4  6af109c0  vsrl.p vr2, r19, vr0
0060b8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0060c0  ea711ac0  vsrl.p vr3, r20, vr1
0060c4  6a710ac0  vsrl.p vr2, r20, vr0
0060c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0060d0  7a9c0040  vextracti.f r24, 0(vr1)
0060d4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0060d8  fa150040  vextracti.f r11, 0(vr0)
0060dc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0060e0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0060e4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0060e8  8b9bd710  add.s r23, r15, r13
0060ec  8b10d610  add.s r1, r12, r13
0060f0  1f070701  addli r14, r14, 128
0060f4  9f860604  addli r13, r13, 512
0060f8  1f810b18  addli r2, r23, 3072
0060fc  9f820b19  addli r5, r23, 3200
006100  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
006104  9f888001  addli r17, r1, 192
006108  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
00610c  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
006110  1f818b18  addli r2, r23, 3136
006114  9f828b19  addli r5, r23, 3264
006118  c2950802  vload_mask16.mz vr11{mr1}, 0(r17)
00611c  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
006120  1f810001  addli r2, r1, 128
006124  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
006128  9f828000  addli r5, r1, 64
00612c  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
006130  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
006134  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
006138  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00613c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
006140  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
006144  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
006148  1f810b1a  addli r2, r23, 3328
00614c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
006150  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
006154  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
006158  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00615c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
006160  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
006164  1f818b1a  addli r2, r23, 3392
006168  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
00616c  9f880002  addli r17, r1, 256
006170  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
006174  9f820003  addli r5, r1, 384
006178  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00617c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
006180  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
006184  1f810b1b  addli r2, r23, 3456
006188  c2930802  vload_mask16.mz vr7{mr1}, 0(r17)
00618c  9f8b8b1b  addli r23, r23, 3520
006190  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006194  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006198  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
00619c  1f818002  addli r2, r1, 320
0061a0  4a950b02  vloads_mask16.mz vr10{mr1}, 0(r23)
0061a4  9f808003  addli r1, r1, 448
0061a8  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
0061ac  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0061b0  c2930202  vload_mask16.mz vr7{mr1}, 0(r5)
0061b4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0061b8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0061bc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0061c0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0061c4  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
0061c8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0061cc  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
0061d0  13010705  setlt.u r2, r14, r16
0061d4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0061d8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0061dc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0061e0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0061e4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0061e8  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
0061ec  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0061f0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0061f4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0061f8  bb4b01fe  bneq r2, zero, -272
0061fc  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
006200  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006204  9f000002  addli r1, zero, 256
006208  6af100c0  vsrl.p vr2, r1, vr0
00620c  eaf110c0  vsrl.p vr3, r1, vr1
006210  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006214  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006218  6a7109c0  vsrl.p vr2, r18, vr0
00621c  ea7119c0  vsrl.p vr3, r18, vr1
006220  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006224  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006228  6af109c0  vsrl.p vr2, r19, vr0
00622c  eaf119c0  vsrl.p vr3, r19, vr1
006230  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006234  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006238  6a710ac0  vsrl.p vr2, r20, vr0
00623c  ea711ac0  vsrl.p vr3, r20, vr1
006240  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006244  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006248  fa100040  vextracti.f r1, 0(vr0)
00624c  7a910040  vextracti.f r2, 0(vr1)
006250  8be21510  add.f.rn r5, r11, r1
006254  8b602c10  add.f.rn r1, r24, r2
006258  0b016230  div.u r2, r4, r6
00625c  80360002  core_id r13
006260  9f050000  addli r11, zero, 0
006264  1f0c0000  addli r24, zero, 0
006268  1b316100  slli r2, r2, 6
00626c  1b010104  andi r2, r2, 64
006270  1711d100  or r2, r2, r13
006274  9b362100  slli r13, r2, 2
006278  1b01e107  andi r2, r2, 126
00627c  0b975611  add.s r14, r13, r21
006280  1b312100  slli r2, r2, 2
006284  73605700  stores.w r5, 0(r14)
006288  8b92a611  add.s r5, r13, r26
00628c  9b964600  ori r13, r13, 4
006290  73e01200  stores.w r1, 0(r5)
006294  8b905611  add.s r1, r13, r21
006298  8b125111  add.s r5, r2, r21
00629c  8b96a611  add.s r13, r13, r26
0062a0  0b11a111  add.s r2, r2, r26
0062a4  00a00300  mfence { lm, sm, gm }
0062a8  80210b04  csr_set csr3, r22
0062ac  00d00100  sync_group
0062b0  efc00000  loads.w r1, 0(r1)
0062b4  efc20200  loads.w r5, 0(r5)
0062b8  efc60600  loads.w r13, 0(r13)
0062bc  6f410100  loads.w r2, 0(r2)
0062c0  8be05010  add.f.rn r1, r1, r5
0062c4  ab02003a  lui r5, 237568
0062c8  0be12610  add.f.rn r2, r13, r2
0062cc  8be05020  mul.f.rn r1, r1, r5
0062d0  0b615120  mul.f.rn r2, r2, r5
0062d4  8be21020  mul.f.rn r5, r1, r1
0062d8  0be70058  neg.f r14, r1
0062dc  0b615118  sub.f.rn r2, r2, r5
0062e0  e3023f00  loadli.w r5,  24(r30)
0062e4  0b615110  add.f.rn r2, r2, r5
0062e8  ab02803f  lui r5, 260096
0062ec  0f010108  sqrt.f.rn r2, r2
0062f0  8f862218  div.f.rn r13, r5, r2
0062f4  8b90b410  add.s r1, r9, r11
0062f8  8b1bb610  add.s r23, r12, r11
0062fc  8b12b510  add.s r5, r10, r11
006300  9f888000  addli r17, r1, 64
006304  1f818b00  addli r2, r23, 64
006308  42900b02  vload_mask16.mz vr0{mr1}, 0(r23)
00630c  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
006310  4a920202  vloads_mask16.mz vr4{mr1}, 0(r5)
006314  ca910802  vloads_mask16.mz vr3{mr1}, 0(r17)
006318  9f888200  addli r17, r5, 64
00631c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
006320  ca920802  vloads_mask16.mz vr5{mr1}, 0(r17)
006324  9f084c00  addli r17, r24, 32
006328  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
00632c  93881107  setle.u r17, r3, r17
006330  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
006334  0a900602  vmul.f.mz.rn vr0{mr1}, r13, vr0
006338  8a901602  vmul.f.mz.rn vr1{mr1}, r13, vr1
00633c  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
006340  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
006344  46904b02  vstore_mask16.mz vr4{mr1}, 0(r23)
006348  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
00634c  bb910800  bneq r17, zero, 100
006350  1f810b01  addli r2, r23, 128
006354  9f888b01  addli r17, r23, 192
006358  9f8b0001  addli r23, r1, 128
00635c  9f808001  addli r1, r1, 192
006360  1f0c8c00  addli r24, r24, 64
006364  9f850502  addli r11, r11, 256
006368  4a910b02  vloads_mask16.mz vr2{mr1}, 0(r23)
00636c  9f8b0201  addli r23, r5, 128
006370  9f828201  addli r5, r5, 192
006374  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
006378  c2900802  vload_mask16.mz vr1{mr1}, 0(r17)
00637c  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
006380  93003c04  setlt.u r1, r24, r3
006384  ca910b02  vloads_mask16.mz vr3{mr1}, 0(r23)
006388  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
00638c  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
006390  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
006394  0a900602  vmul.f.mz.rn vr0{mr1}, r13, vr0
006398  8a901602  vmul.f.mz.rn vr1{mr1}, r13, vr1
00639c  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
0063a0  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0063a4  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0063a8  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
0063ac  3bad00fe  bneq r1, zero, -184
0063b0  eb560f00  load.d r[14:15], 0(r30)
0063b4  ab0000f0  lui r1, 983040
0063b8  00a00000  mfence { lm }
0063bc  97101400  or r1, r8, r1
0063c0  8ba6b611  add.ul r[14:15], r[14:15], r[28:29]
0063c4  ffb0c600  s_lm2gm r1, r12, 0(r[14:15])
0063c8  00a00200  mfence { lm, gm }
0063cc  5b33ffff  j -1640
0063d0  63012f00  loadli.w r2,  16(r30)
0063d4  ab0100f0  lui r3, 983040
0063d8  1b312100  slli r2, r2, 2
0063dc  17113100  or r2, r2, r3
0063e0  ab910200  lui r3, 41
0063e4  9f810108  addli r3, r3, 1024
0063e8  7f013400  l_gm2sm r2, r3, 0(r[9:10])
0063ec  2bf10000  lui r2, 15
0063f0  e3411f00  loadli.w r3,  12(r30)
0063f4  00200300  mfence { sm, gm }
0063f8  1b11f1ff  ori r2, r2, 4095
0063fc  80210104  csr_set csr3, r2
006400  00d00100  sync_group
006404  4bdf1100  ble.s r3, r1, 980
006408  e3012f00  loadli.w r3,  16(r30)
00640c  e3422f00  loadli.w r5,  20(r30)
006410  ab780200  lui r17, 39
006414  2b890200  lui r18, 40
006418  ab990200  lui r19, 41
00641c  9f038fd7  addli r7, r30, -5184
006420  1f140000  addli r8, zero, 1
006424  1f050002  addli r10, zero, 256
006428  1f060001  addli r12, zero, 128
00642c  9f068000  addli r13, zero, 64
006430  1f084000  addli r16, zero, 32
006434  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
006438  9f880808  addli r17, r17, 1024
00643c  1f090908  addli r18, r18, 1024
006440  9f890908  addli r19, r19, 1024
006444  0b925110  add.s r4, r3, r5
006448  9bb52100  slli r11, r3, 2
00644c  33810108  fix2float.rn r2, r3
006450  9f71f2ff  addli r3, r4, -1
006454  1bb22200  slli r4, r5, 2
006458  e70b2fd4  storeli.w r2, -5448(r30)
00645c  1f010fd7  addli r2, r30, -5248
006460  670cbfd4  storeli.w r11, -5440(r30)
006464  8b925130  div.s r5, r3, r5
006468  abf1ffff  lui r3, 1048575
00646c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
006470  9b94f1ff  ori r9, r3, 4095
006474  5b080000  j 64
006478  1f018fd6  addli r2, r30, -5312
00647c  00a00000  mfence { lm }
006480  6b5a0f00  load.d r[21:22], 0(r30)
006484  ab0100f0  lui r3, 983040
006488  00530102  load_param_i r6, 2
00648c  e3058fd5  loadli.w r11,  -5440(r30)
006490  6b5b0100  load.d r[23:24], 0(r2)
006494  8b101310  add.s r1, r6, r1
006498  97913500  or r3, r11, r3
00649c  0b2a6a11  add.ul r[21:22], r[21:22], r[23:24]
0064a0  ff317a00  s_lm2gm r3, r7, 0(r[21:22])
0064a4  00a00200  mfence { lm, gm }
0064a8  63411f00  loadli.w r2,  12(r30)
0064ac  3fa02000  blt.s r1, r2, 8
0064b0  5b650000  j 808
0064b4  63011f00  loadli.w r2,  8(r30)
0064b8  8b912010  add.s r3, r1, r2
0064bc  1f210000  addli r2, zero, 2
0064c0  8b91f120  mul.s r3, r3, r15
0064c4  339a0128  sext_int2long r[21:22], r3
0064c8  ab0100f0  lui r3, 983040
0064cc  173c2a02  sll.d r[25:26], r[21:22], r2
0064d0  1f017fd6  addli r2, r30, -5320
0064d4  97913500  or r3, r11, r3
0064d8  6b5a0100  load.d r[21:22], 0(r2)
0064dc  1f018fd6  addli r2, r30, -5312
0064e0  0b2b8a11  add.ul r[23:24], r[21:22], r[25:26]
0064e4  ff217b00  l_gm2lm r3, r7, 0(r[23:24])
0064e8  00a00200  mfence { lm, gm }
0064ec  73308101  store.d r[25:26], 0(r2)
0064f0  bf978200  blt.s r5, r8, 484
0064f4  9f0b0000  addli r23, zero, 0
0064f8  1f0b0000  addli r22, zero, 0
0064fc  1f0c0000  addli r24, zero, 0
006500  db0c0000  j 100
006504  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
006508  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00650c  1f1c0c00  addli r24, r24, 1
006510  6a7105c0  vsrl.p vr2, r10, vr0
006514  ea7115c0  vsrl.p vr3, r10, vr1
006518  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00651c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006520  6a7106c0  vsrl.p vr2, r12, vr0
006524  ea7116c0  vsrl.p vr3, r12, vr1
006528  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00652c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006530  6af106c0  vsrl.p vr2, r13, vr0
006534  eaf116c0  vsrl.p vr3, r13, vr1
006538  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00653c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006540  6a7108c0  vsrl.p vr2, r16, vr0
006544  ea7118c0  vsrl.p vr3, r16, vr1
006548  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00654c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006550  7a110040  vextracti.f r2, 0(vr0)
006554  fa910040  vextracti.f r3, 0(vr1)
006558  8beb2b10  add.f.rn r23, r23, r2
00655c  0b6b3b10  add.f.rn r22, r22, r3
006560  b7755c00  beq r24, r5, 380
006564  9f010c00  addli r3, r24, 0
006568  3730a700  beq r14, r10, 12
00656c  97219c00  xor r3, r24, r9
006570  8b913210  add.s r3, r5, r3
006574  1f010fd7  addli r2, r30, -5248
006578  0b93e120  mul.s r6, r3, r14
00657c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
006580  0b936718  sub.s r6, r15, r6
006584  8b1ce340  min.s r25, r6, r14
006588  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00658c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
006590  12311002  vadd.s.mz vr2{mr1}, zero, vr1
006594  bfcd8cfe  blt.s r25, r8, -144
006598  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
00659c  1f0d0000  addli r26, zero, 0
0065a0  8b1d3220  mul.s r27, r4, r3
0065a4  1f0e8fd7  addli r28, r30, -5184
0065a8  9f850800  addli r11, r17, 0
0065ac  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0065b0  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0065b4  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0065b8  8b91b511  add.s r3, r11, r27
0065bc  0b13be11  add.s r6, r28, r27
0065c0  1f818100  addli r2, r3, 64
0065c4  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
0065c8  1f8a8101  addli r20, r3, 192
0065cc  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
0065d0  9f0a8301  addli r21, r6, 192
0065d4  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
0065d8  1f810101  addli r2, r3, 128
0065dc  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
0065e0  1f0a0301  addli r20, r6, 128
0065e4  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
0065e8  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
0065ec  c2150a02  vload_mask16.mz vr11{mr1}, 0(r20)
0065f0  1f018300  addli r2, r6, 64
0065f4  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
0065f8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0065fc  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
006600  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
006604  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
006608  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00660c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006610  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
006614  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
006618  1f018d00  addli r2, r26, 64
00661c  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
006620  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
006624  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006628  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
00662c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
006630  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
006634  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
006638  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00663c  4bab2cfe  ble.s r25, r2, -312
006640  1f8a0102  addli r20, r3, 256
006644  9f8a8102  addli r21, r3, 320
006648  1f010302  addli r2, r6, 256
00664c  1f0d0d01  addli r26, r26, 128
006650  9f850504  addli r11, r11, 512
006654  1f0e0e04  addli r28, r28, 512
006658  4a100a02  vloads_mask16.mz vr0{mr1}, 0(r20)
00665c  1f8a0103  addli r20, r3, 384
006660  9f818103  addli r3, r3, 448
006664  ca920a02  vloads_mask16.mz vr5{mr1}, 0(r21)
006668  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
00666c  ca130a02  vloads_mask16.mz vr7{mr1}, 0(r20)
006670  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
006674  9f010303  addli r3, r6, 384
006678  1f0a8302  addli r20, r6, 320
00667c  1f038303  addli r6, r6, 448
006680  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
006684  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
006688  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
00668c  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
006690  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
006694  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
006698  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00669c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0066a0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0066a4  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
0066a8  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0066ac  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0066b0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0066b4  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
0066b8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0066bc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0066c0  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0066c4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0066c8  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0066cc  bf3b9dff  blt.s r26, r25, -276
0066d0  dbc6ffff  j -460
0066d4  1f0b0000  addli r22, zero, 0
0066d8  9f0b0000  addli r23, zero, 0
0066dc  00a00000  mfence { lm }
0066e0  3fe687fe  blt.s r15, r8, -616
0066e4  63017fd5  loadli.w r2,  -5448(r30)
0066e8  9f050000  addli r11, zero, 0
0066ec  1f0c0000  addli r24, zero, 0
0066f0  8f812b18  div.f.rn r3, r23, r2
0066f4  0f032b18  div.f.rn r6, r22, r2
0066f8  63013f00  loadli.w r2,  24(r30)
0066fc  0beb3120  mul.f.rn r22, r3, r3
006700  8beb0158  neg.f r23, r3
006704  0b636319  sub.f.rn r6, r6, r22
006708  0b632310  add.f.rn r6, r6, r2
00670c  2b01803f  lui r2, 260096
006710  0f030308  sqrt.f.rn r6, r6
006714  0f0b6118  div.f.rn r22, r2, r6
006718  0b932511  add.s r6, r11, r18
00671c  8b91b310  add.s r3, r7, r11
006720  9f0c8300  addli r25, r6, 64
006724  4a110302  vloads_mask16.mz vr2{mr1}, 0(r6)
006728  0b933511  add.s r6, r11, r19
00672c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
006730  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
006734  9f8c8100  addli r25, r3, 64
006738  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
00673c  1f038300  addli r6, r6, 64
006740  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
006744  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
006748  1f034c00  addli r6, r24, 32
00674c  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
006750  92925b02  vadd.f.mz.rn vr5{mr1}, r23, vr5
006754  8a101b02  vmul.f.mz.rn vr1{mr1}, r22, vr1
006758  8a125b02  vmul.f.mz.rn vr5{mr1}, r22, vr5
00675c  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
006760  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
006764  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
006768  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
00676c  4bb467fe  ble.s r15, r6, -756
006770  0b13b910  add.s r6, r18, r11
006774  8b9cb910  add.s r25, r19, r11
006778  1f0c8c00  addli r24, r24, 64
00677c  9f850502  addli r11, r11, 256
006780  1f0d0301  addli r26, r6, 128
006784  9f8d0c01  addli r27, r25, 128
006788  1f038301  addli r6, r6, 192
00678c  9f8c8c01  addli r25, r25, 192
006790  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
006794  1f8d0101  addli r26, r3, 128
006798  9f818101  addli r3, r3, 192
00679c  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
0067a0  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
0067a4  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
0067a8  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
0067ac  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0067b0  92913b02  vadd.f.mz.rn vr3{mr1}, r23, vr3
0067b4  12924b02  vadd.f.mz.rn vr4{mr1}, r23, vr4
0067b8  8a113b02  vmul.f.mz.rn vr3{mr1}, r22, vr3
0067bc  0a124b02  vmul.f.mz.rn vr4{mr1}, r22, vr4
0067c0  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
0067c4  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
0067c8  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
0067cc  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
0067d0  3f2dfcfe  blt.s r24, r15, -184
0067d4  db94ffff  j -860
0067d8  9f0e0fd4  addli sp, r30, -5632
0067dc  e38fae2b  loadli.w r31,  5584(sp)
0067e0  63cfae2b  loadli.w r30,  5588(sp)
0067e4  638ebe2b  loadli.w r28,  5592(sp)
0067e8  e3cdbe2b  loadli.w r27,  5596(sp)
0067ec  638dce2b  loadli.w r26,  5600(sp)
0067f0  e3ccce2b  loadli.w r25,  5604(sp)
0067f4  638cde2b  loadli.w r24,  5608(sp)
0067f8  e3cbde2b  loadli.w r23,  5612(sp)
0067fc  638bee2b  loadli.w r22,  5616(sp)
006800  e3caee2b  loadli.w r21,  5620(sp)
006804  638afe2b  loadli.w r20,  5624(sp)
006808  e3c9fe2b  loadli.w r19,  5628(sp)
00680c  9f8e0e2c  addli sp, sp, 5632
006810  5f800f00  jr r31, 0
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
