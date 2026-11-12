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
000180  9f8e0ed4  addli sp, sp, -5632
000184  67cdee2b  storeli.w r30, 5588(sp)
000188  1f8f0e2c  addli r30, sp, 5632
00018c  67ce9e2b  storeli.w r25, 5604(sp)
000190  1f250000  addli r10, zero, 2
000194  e7cf3e2b  storeli.w r19, 5628(sp)
000198  e78f4e2b  storeli.w r20, 5624(sp)
00019c  67cf5e2b  storeli.w r21, 5620(sp)
0001a0  678f6e2b  storeli.w r22, 5616(sp)
0001a4  e7ce7e2b  storeli.w r23, 5612(sp)
0001a8  e78e8e2b  storeli.w r24, 5608(sp)
0001ac  678eae2b  storeli.w r26, 5600(sp)
0001b0  e7cdbe2b  storeli.w r27, 5596(sp)
0001b4  e78dce2b  storeli.w r28, 5592(sp)
0001b8  678dfe2b  storeli.w r31, 5584(sp)
0001bc  e3004f00  loadli.w r1,  32(r30)
0001c0  63472f00  loadli.w r14,  20(r30)
0001c4  e3072f00  loadli.w r15,  16(r30)
0001c8  e34c1f00  loadli.w r25,  12(r30)
0001cc  9f057fd6  addli r11, r30, -5320
0001d0  73b02500  store.d r[3:4], 0(r11)
0001d4  3f511500  blt.s r10, r1, 84
0001d8  1f110000  addli r2, zero, 1
0001dc  b7cc2004  beq r1, r2, 2864
0001e0  1f210000  addli r2, zero, 2
0001e4  bb8b2004  bneq r1, r2, 2784
0001e8  e3403f00  loadli.w r1,  28(r30)
0001ec  37e10014  beq r1, zero, 10328
0001f0  80300002  core_id r1
0001f4  1f210000  addli r2, zero, 2
0001f8  37822028  beq r1, r2, 20608
0001fc  1f110000  addli r2, zero, 1
000200  b7e02028  beq r1, r2, 20536
000204  3bc20028  bneq r1, zero, 20624
000208  63012f00  loadli.w r2,  16(r30)
00020c  ab0100f0  lui r3, 983040
000210  1b311100  slli r2, r2, 1
000214  17113100  or r2, r2, r3
000218  ab910100  lui r3, 25
00021c  9f810100  addli r3, r3, 0
000220  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000224  5b0e0a00  j 20592
000228  1f310000  addli r2, zero, 3
00022c  b78c2004  beq r1, r2, 2848
000230  1f410000  addli r2, zero, 4
000234  3bca2004  bneq r1, r2, 2704
000238  e3002f00  loadli.w r1,  16(r30)
00023c  1f010010  addli r2, zero, 2048
000240  3ba1200a  bneq r1, r2, 5192
000244  e3403f00  loadli.w r1,  28(r30)
000248  37f3001a  beq r1, zero, 13532
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
0003b0  9b811100  andi r3, r3, 1
0003b4  80210104  csr_set csr3, r2
0003b8  1f010006  addli r2, zero, 768
0003bc  00d00100  sync_group
0003c0  670b3fd4  storeli.w r3, -5456(r30)
0003c4  37a00100  beq r3, zero, 8
0003c8  9f02000a  addli r5, zero, 1280
0003cc  e3411f00  loadli.w r3,  12(r30)
0003d0  1f130000  addli r6, zero, 1
0003d4  3fb06132  blt.s r3, r6, 25612
0003d8  e3016fd5  loadli.w r3,  -5456(r30)
0003dc  9bc41000  srli r9, r1, 1
0003e0  80300002  core_id r1
0003e4  1f0a8fd7  addli r20, r30, -5184
0003e8  9bb51200  slli r11, r5, 1
0003ec  9f030000  addli r7, zero, 0
0003f0  1f797000  addli r18, zero, 63
0003f4  ab06803f  lui r13, 260096
0003f8  1f062000  addli r12, zero, 16
0003fc  2b0bffff  lui r22, 1048560
000400  2b0ec07f  lui r28, 523264
000404  9f3d0000  addli r27, zero, 3
000408  2bed7f00  lui r26, 2046
00040c  1f571000  addli r14, zero, 13
000410  0b912120  mul.s r2, r3, r2
000414  9bc11000  srli r3, r1, 1
000418  9b302100  slli r1, r2, 2
00041c  e7432fd4  storeli.w r2, -5572(r30)
000420  0b914010  add.s r2, r1, r4
000424  8b90a010  add.s r1, r1, r10
000428  2b02807f  lui r4, 522240
00042c  1f251000  addli r10, zero, 10
000430  67041fd6  storeli.w r1, -5312(r30)
000434  9bb02200  slli r1, r5, 2
000438  67082fd6  storeli.w r2, -5248(r30)
00043c  1f814200  addli r2, r5, 32
000440  8b904011  add.s r1, r1, r20
000444  e7422fd4  storeli.w r2, -5588(r30)
000448  0b914511  add.s r2, r11, r20
00044c  9f8080ff  addli r1, r1, -64
000450  e7021fd4  storeli.w r1, -5592(r30)
000454  9f0081ff  addli r1, r2, -64
000458  2bf100fc  lui r2, 1032207
00045c  67421fd4  storeli.w r1, -5596(r30)
000460  abf0ffff  lui r1, 1048575
000464  1b1401c0  ori r8, r2, 3072
000468  1f018fd4  addli r2, r30, -5568
00046c  00a00000  mfence { lm }
000470  e7039fd4  storeli.w r9, -5576(r30)
000474  67433fd4  storeli.w r3, -5580(r30)
000478  6703bfd4  storeli.w r11, -5584(r30)
00047c  9b9000f8  ori r1, r1, 3968
000480  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
000484  e7411fd4  storeli.w r1, -5604(r30)
000488  abf00000  lui r1, 15
00048c  9b99f0ff  ori r19, r1, 4095
000490  ab700000  lui r1, 7
000494  9b9af0ff  ori r21, r1, 4095
000498  ab00ff03  lui r1, 16368
00049c  670c3fd5  storeli.w r19, -5440(r30)
0004a0  9b9bf03f  ori r23, r1, 1023
0004a4  abe00700  lui r1, 126
0004a8  db030000  j 28
0004ac  00a00300  mfence { lm, sm, gm }
0004b0  80a10904  csr_set csr3, r19
0004b4  00d00100  sync_group
0004b8  8b939310  add.s r7, r7, r9
0004bc  3fa09301  blt.s r7, r25, 8
0004c0  5bfe0000  j 2032
0004c4  0b913310  add.s r2, r7, r3
0004c8  cb9f2cfe  ble.s r25, r2, -28
0004cc  e3011f00  loadli.w r3,  8(r30)
0004d0  0b113110  add.s r2, r2, r3
0004d4  8b819330  div.u r3, r7, r9
0004d8  e3447fd4  loadli.w r9,  -5572(r30)
0004dc  1b31b100  slli r2, r2, 11
0004e0  17119100  or r2, r2, r9
0004e4  9f047fd6  addli r9, r30, -5320
0004e8  33180128  sext_int2long r[17:18], r2
0004ec  2b0100f0  lui r2, 983040
0004f0  9bb16100  slli r3, r3, 6
0004f4  173c6802  sll.d r[25:26], r[17:18], r6
0004f8  6bd80400  load.d r[17:18], 0(r9)
0004fc  9f047fd5  addli r9, r30, -5448
000500  17912500  or r2, r11, r2
000504  9b810104  andi r3, r3, 64
000508  73b08401  store.d r[25:26], 0(r9)
00050c  0b288811  add.ul r[17:18], r[17:18], r[25:26]
000510  7f214801  l_gm2lm r2, r20, 0(r[17:18])
000514  00310002  core_id r2
000518  00a00200  mfence { lm, gm }
00051c  979c2100  or r25, r3, r2
000520  63414fd4  loadli.w r2,  -5596(r30)
000524  e3015fd4  loadli.w r3,  -5592(r30)
000528  e3445fd4  loadli.w r9,  -5588(r30)
00052c  c2000102  vload.mz vr1{mr1}, 0(r2)
000530  9f84c4ff  addli r9, r9, -32
000534  1f8881ff  addli r16, r3, -64
000538  1f0181ff  addli r2, r2, -64
00053c  93059904  setlt.u r11, r18, r9
000540  66c111a0  vmerge_h.hf vr2, vr3, vr1
000544  e6c01180  vmerge_l.hf vr1, vr3, vr1
000548  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
00054c  9f8101ff  addli r3, r3, -128
000550  46101802  vstore_mask16.mz vr1{mr1}, 0(r16)
000554  3bef05fe  bneq r11, zero, -40
000558  00a00000  mfence { lm }
00055c  1f0c0005  addli r24, zero, 640
000560  63016fd5  loadli.w r2,  -5456(r30)
000564  3b360100  bneq r2, zero, 396
000568  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00056c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000570  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000574  e3413fd4  loadli.w r3,  -5604(r30)
000578  1f010000  addli r2, zero, 0
00057c  8b15f110  add.s r11, r2, r15
000580  8b142a10  add.s r9, r20, r2
000584  9f810101  addli r3, r3, 128
000588  1f010104  addli r2, r2, 512
00058c  1f880501  addli r16, r11, 128
000590  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
000594  9f888500  addli r17, r11, 64
000598  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
00059c  1f898401  addli r18, r9, 192
0005a0  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
0005a4  1f888501  addli r16, r11, 192
0005a8  4a930802  vloads_mask16.mz vr6{mr1}, 0(r17)
0005ac  9f888400  addli r17, r9, 64
0005b0  c2150902  vload_mask16.mz vr11{mr1}, 0(r18)
0005b4  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
0005b8  1f880401  addli r16, r9, 128
0005bc  42950802  vload_mask16.mz vr10{mr1}, 0(r17)
0005c0  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
0005c4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0005c8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0005cc  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0005d0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0005d4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0005d8  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
0005dc  46108802  vstore_mask16.mz vr8{mr1}, 0(r16)
0005e0  1f880502  addli r16, r11, 256
0005e4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0005e8  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0005ec  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0005f0  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
0005f4  4a100802  vloads_mask16.mz vr0{mr1}, 0(r16)
0005f8  1f888502  addli r16, r11, 320
0005fc  46106902  vstore_mask16.mz vr6{mr1}, 0(r18)
000600  1f890402  addli r18, r9, 256
000604  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000608  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00060c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000610  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
000614  1f880503  addli r16, r11, 384
000618  c2130902  vload_mask16.mz vr7{mr1}, 0(r18)
00061c  9f858503  addli r11, r11, 448
000620  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000624  4a140802  vloads_mask16.mz vr8{mr1}, 0(r16)
000628  1f888402  addli r16, r9, 320
00062c  4a950502  vloads_mask16.mz vr10{mr1}, 0(r11)
000630  9f850403  addli r11, r9, 384
000634  9f848403  addli r9, r9, 448
000638  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
00063c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000640  c2930502  vload_mask16.mz vr7{mr1}, 0(r11)
000644  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000648  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
00064c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000650  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000654  46100902  vstore_mask16.mz vr0{mr1}, 0(r18)
000658  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00065c  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
000660  13888105  setlt.u r16, r3, r24
000664  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000668  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00066c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000670  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000674  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000678  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
00067c  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000680  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000684  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000688  bb5b08fe  bneq r16, zero, -268
00068c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000690  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000694  1f010002  addli r2, zero, 256
000698  6a7101c0  vsrl.p vr2, r2, vr0
00069c  ea7111c0  vsrl.p vr3, r2, vr1
0006a0  1f010001  addli r2, zero, 128
0006a4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006a8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006ac  6a7101c0  vsrl.p vr2, r2, vr0
0006b0  ea7111c0  vsrl.p vr3, r2, vr1
0006b4  1f018000  addli r2, zero, 64
0006b8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006bc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006c0  6a7101c0  vsrl.p vr2, r2, vr0
0006c4  ea7111c0  vsrl.p vr3, r2, vr1
0006c8  1f014000  addli r2, zero, 32
0006cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006d4  6a7101c0  vsrl.p vr2, r2, vr0
0006d8  ea7111c0  vsrl.p vr3, r2, vr1
0006dc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006e0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006e4  fa110040  vextracti.f r3, 0(vr0)
0006e8  fa940040  vextracti.f r9, 0(vr1)
0006ec  db670000  j 828
0006f0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0006f4  abf1ffff  lui r3, 1048575
0006f8  1f010000  addli r2, zero, 0
0006fc  9f090003  addli r19, zero, 384
000700  67029fd5  storeli.w r25, -5600(r30)
000704  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000708  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00070c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000710  9b9101f8  ori r3, r3, 3968
000714  8b952710  add.s r11, r15, r2
000718  8b142a10  add.s r9, r20, r2
00071c  9f810101  addli r3, r3, 128
000720  1f010104  addli r2, r2, 512
000724  1f890531  addli r18, r11, 6272
000728  1f880530  addli r16, r11, 6144
00072c  9f8c8531  addli r25, r11, 6336
000730  9f880418  addli r17, r9, 3072
000734  ca130902  vloads_mask16.mz vr7{mr1}, 0(r18)
000738  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
00073c  1f888530  addli r16, r11, 6208
000740  ca940c02  vloads_mask16.mz vr9{mr1}, 0(r25)
000744  1f890419  addli r18, r9, 3200
000748  42930802  vload_mask16.mz vr6{mr1}, 0(r17)
00074c  9f8c8419  addli r25, r9, 3264
000750  4a140802  vloads_mask16.mz vr8{mr1}, 0(r16)
000754  42150902  vload_mask16.mz vr10{mr1}, 0(r18)
000758  1f888418  addli r16, r9, 3136
00075c  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
000760  c2150802  vload_mask16.mz vr11{mr1}, 0(r16)
000764  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
000768  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
00076c  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
000770  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
000774  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000778  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
00077c  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
000780  9f880532  addli r17, r11, 6400
000784  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
000788  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
00078c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000790  46107902  vstore_mask16.mz vr7{mr1}, 0(r18)
000794  1f89041a  addli r18, r9, 3328
000798  c2130902  vload_mask16.mz vr7{mr1}, 0(r18)
00079c  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
0007a0  13883105  setlt.u r16, r3, r19
0007a4  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0007a8  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0007ac  4a900802  vloads_mask16.mz vr0{mr1}, 0(r17)
0007b0  9f888532  addli r17, r11, 6464
0007b4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0007b8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0007bc  4a930802  vloads_mask16.mz vr6{mr1}, 0(r17)
0007c0  9f880533  addli r17, r11, 6528
0007c4  9f858533  addli r11, r11, 6592
0007c8  4a940802  vloads_mask16.mz vr8{mr1}, 0(r17)
0007cc  9f88841a  addli r17, r9, 3392
0007d0  4a950502  vloads_mask16.mz vr10{mr1}, 0(r11)
0007d4  9f85041b  addli r11, r9, 3456
0007d8  9f84841b  addli r9, r9, 3520
0007dc  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
0007e0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0007e4  c2930502  vload_mask16.mz vr7{mr1}, 0(r11)
0007e8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0007ec  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
0007f0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0007f4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0007f8  46100902  vstore_mask16.mz vr0{mr1}, 0(r18)
0007fc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000800  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
000804  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000808  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00080c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000810  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000814  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000818  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
00081c  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000820  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000824  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000828  bb3b08fe  bneq r16, zero, -276
00082c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000830  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000834  9f010002  addli r3, zero, 256
000838  1f010000  addli r2, zero, 0
00083c  eaf111c0  vsrl.p vr3, r3, vr1
000840  6af101c0  vsrl.p vr2, r3, vr0
000844  9f010001  addli r3, zero, 128
000848  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00084c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000850  eaf111c0  vsrl.p vr3, r3, vr1
000854  6af101c0  vsrl.p vr2, r3, vr0
000858  9f018000  addli r3, zero, 64
00085c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000860  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000864  eaf111c0  vsrl.p vr3, r3, vr1
000868  6af101c0  vsrl.p vr2, r3, vr0
00086c  9f014000  addli r3, zero, 32
000870  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000874  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000878  eaf111c0  vsrl.p vr3, r3, vr1
00087c  6af101c0  vsrl.p vr2, r3, vr0
000880  abf1ffff  lui r3, 1048575
000884  9b9101f8  ori r3, r3, 3968
000888  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00088c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000890  fa990040  vextracti.f r19, 0(vr1)
000894  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000898  fa150040  vextracti.f r11, 0(vr0)
00089c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0008a0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0008a4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0008a8  8b942710  add.s r9, r15, r2
0008ac  8b182a10  add.s r17, r20, r2
0008b0  9f810101  addli r3, r3, 128
0008b4  1f010104  addli r2, r2, 512
0008b8  1f880418  addli r16, r9, 3072
0008bc  1f890419  addli r18, r9, 3200
0008c0  42940802  vload_mask16.mz vr8{mr1}, 0(r17)
0008c4  9f8c8801  addli r25, r17, 192
0008c8  4a100802  vloads_mask16.mz vr0{mr1}, 0(r16)
0008cc  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
0008d0  1f888418  addli r16, r9, 3136
0008d4  1f898419  addli r18, r9, 3264
0008d8  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0008dc  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
0008e0  1f880801  addli r16, r17, 128
0008e4  ca130902  vloads_mask16.mz vr7{mr1}, 0(r18)
0008e8  1f898800  addli r18, r17, 64
0008ec  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
0008f0  42150902  vload_mask16.mz vr10{mr1}, 0(r18)
0008f4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0008f8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0008fc  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
000900  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
000904  46108802  vstore_mask16.mz vr8{mr1}, 0(r16)
000908  1f88041a  addli r16, r9, 3328
00090c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000910  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000914  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
000918  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00091c  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
000920  4a100802  vloads_mask16.mz vr0{mr1}, 0(r16)
000924  1f88841a  addli r16, r9, 3392
000928  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
00092c  9f8c0802  addli r25, r17, 256
000930  46105902  vstore_mask16.mz vr5{mr1}, 0(r18)
000934  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000938  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00093c  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
000940  1f88041b  addli r16, r9, 3456
000944  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
000948  9f84841b  addli r9, r9, 3520
00094c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000950  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000954  4a140802  vloads_mask16.mz vr8{mr1}, 0(r16)
000958  1f888802  addli r16, r17, 320
00095c  4a950402  vloads_mask16.mz vr10{mr1}, 0(r9)
000960  9f840803  addli r9, r17, 384
000964  9f888803  addli r17, r17, 448
000968  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
00096c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000970  c2930402  vload_mask16.mz vr7{mr1}, 0(r9)
000974  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000978  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
00097c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000980  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000984  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
000988  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00098c  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
000990  13888105  setlt.u r16, r3, r24
000994  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000998  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00099c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0009a0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0009a4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0009a8  46905402  vstore_mask16.mz vr5{mr1}, 0(r9)
0009ac  46907802  vstore_mask16.mz vr7{mr1}, 0(r17)
0009b0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0009b4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0009b8  bb4b08fe  bneq r16, zero, -272
0009bc  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0009c0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0009c4  1f010002  addli r2, zero, 256
0009c8  e30c4fd4  loadli.w r25,  -5600(r30)
0009cc  6a7101c0  vsrl.p vr2, r2, vr0
0009d0  ea7111c0  vsrl.p vr3, r2, vr1
0009d4  1f010001  addli r2, zero, 128
0009d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009e0  6a7101c0  vsrl.p vr2, r2, vr0
0009e4  ea7111c0  vsrl.p vr3, r2, vr1
0009e8  1f018000  addli r2, zero, 64
0009ec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009f0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009f4  6a7101c0  vsrl.p vr2, r2, vr0
0009f8  ea7111c0  vsrl.p vr3, r2, vr1
0009fc  1f014000  addli r2, zero, 32
000a00  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000a04  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a08  6a7101c0  vsrl.p vr2, r2, vr0
000a0c  ea7111c0  vsrl.p vr3, r2, vr1
000a10  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000a14  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a18  fa940040  vextracti.f r9, 0(vr1)
000a1c  7a110040  vextracti.f r2, 0(vr0)
000a20  8be12510  add.f.rn r3, r11, r2
000a24  8be49910  add.f.rn r9, r19, r9
000a28  2b680000  lui r16, 6
000a2c  ab680000  lui r17, 6
000a30  9bb52c00  slli r11, r25, 2
000a34  1f010000  addli r2, zero, 0
000a38  1f080800  addli r16, r16, 0
000a3c  9f880804  addli r17, r17, 512
000a40  1f090800  addli r18, r16, 0
000a44  9f890800  addli r19, r17, 0
000a48  0b982511  add.s r16, r11, r18
000a4c  8b983511  add.s r17, r11, r19
000a50  73e09800  stores.w r9, 0(r17)
000a54  73603800  stores.w r3, 0(r16)
000a58  9b944500  ori r9, r11, 4
000a5c  00a00300  mfence { lm, sm, gm }
000a60  e3018fd5  loadli.w r3,  -5440(r30)
000a64  8b952411  add.s r11, r9, r18
000a68  8b943411  add.s r9, r9, r19
000a6c  80a10104  csr_set csr3, r3
000a70  9b81ec07  andi r3, r25, 126
000a74  00d00100  sync_group
000a78  efc50500  loads.w r11, 0(r11)
000a7c  efc40400  loads.w r9, 0(r9)
000a80  9bb12100  slli r3, r3, 2
000a84  0b982111  add.s r16, r3, r18
000a88  8b913111  add.s r3, r3, r19
000a8c  6f480800  loads.w r16, 0(r16)
000a90  efc10100  loads.w r3, 0(r3)
000a94  8be50511  add.f.rn r11, r11, r16
000a98  2b08003a  lui r16, 237568
000a9c  8be13410  add.f.rn r3, r9, r3
000aa0  8be40521  mul.f.rn r9, r11, r16
000aa4  8be10121  mul.f.rn r3, r3, r16
000aa8  8be59420  mul.f.rn r11, r9, r9
000aac  8be40458  neg.f r9, r9
000ab0  8be1b118  sub.f.rn r3, r3, r11
000ab4  e3053f00  loadli.w r11,  24(r30)
000ab8  8be1b110  add.f.rn r3, r3, r11
000abc  9f050000  addli r11, zero, 0
000ac0  8f810108  sqrt.f.rn r3, r3
000ac4  8f813618  div.f.rn r3, r13, r3
000ac8  e3080fd7  loadli.w r17,  -5248(r30)
000acc  63098fd6  loadli.w r18,  -5312(r30)
000ad0  0b182a10  add.s r16, r20, r2
000ad4  9f0c8800  addli r25, r16, 64
000ad8  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
000adc  8b982810  add.s r17, r17, r2
000ae0  0b192910  add.s r18, r18, r2
000ae4  c2900c02  vload_mask16.mz vr1{mr1}, 0(r25)
000ae8  9f898800  addli r19, r17, 64
000aec  4a910802  vloads_mask16.mz vr2{mr1}, 0(r17)
000af0  4a120902  vloads_mask16.mz vr4{mr1}, 0(r18)
000af4  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
000af8  9f098900  addli r19, r18, 64
000afc  12900402  vadd.f.mz.rn vr0{mr1}, r9, vr0
000b00  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
000b04  9f894500  addli r19, r11, 32
000b08  92901402  vadd.f.mz.rn vr1{mr1}, r9, vr1
000b0c  93893207  setle.u r19, r5, r19
000b10  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
000b14  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
000b18  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
000b1c  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
000b20  46104802  vstore_mask16.mz vr4{mr1}, 0(r16)
000b24  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
000b28  bb910900  bneq r19, zero, 100
000b2c  9f8c0801  addli r25, r17, 128
000b30  9f090801  addli r19, r16, 128
000b34  1f088801  addli r16, r16, 192
000b38  9f888801  addli r17, r17, 192
000b3c  9f858500  addli r11, r11, 64
000b40  1f010102  addli r2, r2, 256
000b44  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
000b48  9f0c0901  addli r25, r18, 128
000b4c  1f098901  addli r18, r18, 192
000b50  42900902  vload_mask16.mz vr0{mr1}, 0(r19)
000b54  c2100802  vload_mask16.mz vr1{mr1}, 0(r16)
000b58  4a920802  vloads_mask16.mz vr4{mr1}, 0(r17)
000b5c  93885504  setlt.u r17, r11, r5
000b60  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
000b64  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
000b68  12900402  vadd.f.mz.rn vr0{mr1}, r9, vr0
000b6c  92901402  vadd.f.mz.rn vr1{mr1}, r9, vr1
000b70  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
000b74  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
000b78  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
000b7c  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
000b80  46903902  vstore_mask16.mz vr3{mr1}, 0(r19)
000b84  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
000b88  3b8d08fe  bneq r17, zero, -192
000b8c  1f018fd7  addli r2, r30, -5184
000b90  9f018fd7  addli r3, r30, -5184
000b94  9f040000  addli r9, zero, 0
000b98  00a00000  mfence { lm }
000b9c  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000ba0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000ba4  9f858100  addli r11, r3, 64
000ba8  9f844400  addli r9, r9, 32
000bac  9f810101  addli r3, r3, 128
000bb0  6a201622  vor.u.mz vr0{mr1}, r12, vr1
000bb4  ea221722  vor.u.mz vr5{mr1}, r14, vr1
000bb8  42910502  vload_mask16.mz vr2{mr1}, 0(r11)
000bbc  93855404  setlt.u r11, r9, r5
000bc0  6e3230c2  vsrl.s.mz vr4{mr1}, vr0, vr3
000bc4  6e3020c2  vsrl.s.mz vr0{mr1}, vr0, vr2
000bc8  6a324302  vand.s.mz vr4{mr1}, r6, vr4
000bcc  6a300302  vand.s.mz vr0{mr1}, r6, vr0
000bd0  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
000bd4  e69101c0  vabs.f vr3, vr3
000bd8  16300102  vadd.s.mz vr0{mr1}, vr2, vr0
000bdc  661101c0  vabs.f vr2, vr2
000be0  12b24a02  vadd.s.mz vr4{mr1}, r21, vr4
000be4  72213242  vlt.u.mz mr2{mr1}, r4, vr3
000be8  12b00a02  vadd.s.mz vr0{mr1}, r21, vr0
000bec  6a324b02  vand.s.mz vr4{mr1}, r22, vr4
000bf0  6a300b02  vand.s.mz vr0{mr1}, r22, vr0
000bf4  6a221e34  vor.u.mh vr4{mr2}, r28, vr1
000bf8  72212242  vlt.u.mz mr2{mr1}, r4, vr2
000bfc  6aa11d22  vor.u.mz vr2{mr1}, r27, vr1
000c00  6a201e34  vor.u.mh vr0{mr2}, r28, vr1
000c04  ea201522  vor.u.mz vr1{mr1}, r10, vr1
000c08  eeb142c2  vsrl.s.mz vr3{mr1}, vr5, vr4
000c0c  6e3241c2  vsrl.s.mz vr4{mr1}, vr2, vr4
000c10  eeb202c2  vsrl.s.mz vr5{mr1}, vr5, vr0
000c14  6e3001c2  vsrl.s.mz vr0{mr1}, vr2, vr0
000c18  6ab13002  vand.s.mz vr2{mr1}, r1, vr3
000c1c  6a324d02  vand.s.mz vr4{mr1}, r26, vr4
000c20  eab15002  vand.s.mz vr3{mr1}, r1, vr5
000c24  6a300d02  vand.s.mz vr0{mr1}, r26, vr0
000c28  6ab12622  vor.s.mz vr2{mr1}, r13, vr2
000c2c  6ab24622  vor.s.mz vr4{mr1}, r13, vr4
000c30  6ab00622  vor.s.mz vr0{mr1}, r13, vr0
000c34  eab13622  vor.s.mz vr3{mr1}, r13, vr3
000c38  06110120  vfloat2fp16_l.rz vr2, vr2
000c3c  06500020  vfloat2fp16_h.rz vr0, vr0
000c40  06d10120  vfloat2fp16_h.rz vr2, vr3
000c44  06100220  vfloat2fp16_l.rz vr0, vr4
000c48  eeb020a2  vsll.s.mz vr1{mr1}, vr1, vr2
000c4c  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000c50  ea301402  vand.s.mz vr1{mr1}, r8, vr1
000c54  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
000c58  46000102  vstore.mz vr0{mr1}, 0(r2)
000c5c  1f018100  addli r2, r2, 64
000c60  bbfc05fe  bneq r11, zero, -196
000c64  9f017fd5  addli r3, r30, -5448
000c68  6b580f00  load.d r[17:18], 0(r30)
000c6c  e3056fd4  loadli.w r11,  -5584(r30)
000c70  2b0100f0  lui r2, 983040
000c74  6bd90100  load.d r[19:20], 0(r3)
000c78  00a00000  mfence { lm }
000c7c  17912500  or r2, r11, r2
000c80  0b282811  add.ul r[17:18], r[17:18], r[19:20]
000c84  1f797000  addli r18, zero, 63
000c88  7f314801  s_lm2gm r2, r20, 0(r[17:18])
000c8c  1f018fd4  addli r2, r30, -5568
000c90  00a00200  mfence { lm, gm }
000c94  e34c1f00  loadli.w r25,  12(r30)
000c98  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
000c9c  e3047fd4  loadli.w r9,  -5576(r30)
000ca0  e3416fd4  loadli.w r3,  -5580(r30)
000ca4  e3098fd5  loadli.w r19,  -5440(r30)
000ca8  8b939310  add.s r7, r7, r9
000cac  3fe093fd  blt.s r7, r25, -2024
000cb0  abf00000  lui r1, 15
000cb4  9b90f0ff  ori r1, r1, 4095
000cb8  80a10004  csr_set csr3, r1
000cbc  00d00100  sync_group
000cc0  5b640b00  j 23328
000cc4  e3403f00  loadli.w r1,  28(r30)
000cc8  37ca000a  beq r1, zero, 5776
000ccc  e3002f00  loadli.w r1,  16(r30)
000cd0  1f010010  addli r2, zero, 2048
000cd4  3baa2012  bneq r1, r2, 9864
000cd8  00350002  core_id r10
000cdc  9f200000  addli r1, zero, 2
000ce0  377e1526  beq r10, r1, 20380
000ce4  9f100000  addli r1, zero, 1
000ce8  376d1526  beq r10, r1, 20312
000cec  bb2e0526  bneq r10, zero, 20392
000cf0  9f000040  addli r1, zero, 8192
000cf4  2b0100f0  lui r2, 983040
000cf8  97902000  or r1, r1, r2
000cfc  2b110200  lui r2, 33
000d00  1f010100  addli r2, r2, 0
000d04  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000d08  dbf10900  j 20364
000d0c  e3403f00  loadli.w r1,  28(r30)
000d10  37db0010  beq r1, zero, 8916
000d14  80300002  core_id r1
000d18  1f210000  addli r2, zero, 2
000d1c  37dd2024  beq r1, r2, 19284
000d20  1f110000  addli r2, zero, 1
000d24  b7d42022  beq r1, r2, 17716
000d28  bb9d0024  bneq r1, zero, 19300
000d2c  63012f00  loadli.w r2,  16(r30)
000d30  ab0100f0  lui r3, 983040
000d34  1b311100  slli r2, r2, 1
000d38  17113100  or r2, r2, r3
000d3c  abd10100  lui r3, 29
000d40  9f810100  addli r3, r3, 0
000d44  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000d48  db680900  j 19268
000d4c  e3002f00  loadli.w r1,  16(r30)
000d50  1f010010  addli r2, zero, 2048
000d54  3be02008  bneq r1, r2, 4120
000d58  e3403f00  loadli.w r1,  28(r30)
000d5c  b7d1001c  beq r1, zero, 14452
000d60  803b0002  core_id r23
000d64  abd70000  lui r15, 13
000d68  00510102  load_param_i r2, 2
000d6c  1f150000  addli r10, zero, 1
000d70  9f058fd7  addli r11, r30, -5184
000d74  1f068000  addli r12, zero, 64
000d78  9f060010  addli r13, zero, 2048
000d7c  9bb05b00  slli r1, r23, 5
000d80  9b315100  slli r3, r2, 5
000d84  9f8707f0  addli r15, r15, -2048
000d88  1f870000  addli r14, r1, 0
000d8c  33080728  zext_int2long r[17:18], r14
000d90  2b0900f0  lui r18, 983040
000d94  1738a802  sll.d r[17:18], r[17:18], r10
000d98  17192601  or r18, r12, r18
000d9c  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000da0  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000da4  1b382700  slli r16, r14, 2
000da8  0b97e110  add.s r14, r3, r14
000dac  00a00200  mfence { lm, gm }
000db0  42800502  vload.mz vr0{mr1}, 0(r11)
000db4  9308d704  setlt.u r17, r14, r13
000db8  0b18f810  add.s r16, r16, r15
000dbc  1f098800  addli r18, r16, 64
000dc0  86300000  vfp162float_l.rn vr1, vr0
000dc4  06700000  vfp162float_h.rn vr0, vr0
000dc8  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000dcc  4e100902  vstores_mask16.mz vr0{mr1}, 0(r18)
000dd0  bbfe08fe  bneq r17, zero, -68
000dd4  abf20000  lui r5, 15
000dd8  1bb57b00  slli r10, r23, 7
000ddc  1b327100  slli r4, r2, 7
000de0  1f160000  addli r12, zero, 1
000de4  9f068fd7  addli r13, r30, -5184
000de8  1f078000  addli r14, zero, 64
000dec  1f080010  addli r16, zero, 2048
000df0  9f880000  addli r17, r1, 0
000df4  00a00000  mfence { lm }
000df8  9f8202f0  addli r5, r5, -2048
000dfc  8b155510  add.s r11, r10, r5
000e00  33890828  zext_int2long r[19:20], r17
000e04  2b0a00f0  lui r20, 983040
000e08  8b983810  add.s r17, r17, r3
000e0c  1739c902  sll.d r[19:20], r[19:20], r12
000e10  171a4701  or r20, r14, r20
000e14  0b292311  add.ul r[19:20], r[7:8], r[19:20]
000e18  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
000e1c  13890805  setlt.u r18, r17, r16
000e20  9f898500  addli r19, r11, 64
000e24  00a00200  mfence { lm, gm }
000e28  42800602  vload.mz vr0{mr1}, 0(r13)
000e2c  86300000  vfp162float_l.rn vr1, vr0
000e30  06700000  vfp162float_h.rn vr0, vr0
000e34  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
000e38  8b954510  add.s r11, r11, r4
000e3c  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
000e40  3b0f09fe  bneq r18, zero, -64
000e44  ab130100  lui r7, 17
000e48  9f058fd7  addli r11, r30, -5184
000e4c  1f068000  addli r12, zero, 64
000e50  9f060010  addli r13, zero, 2048
000e54  00a00000  mfence { lm }
000e58  9f8303f0  addli r7, r7, -2048
000e5c  0b137510  add.s r6, r10, r7
000e60  1f150000  addli r10, zero, 1
000e64  33880028  zext_int2long r[17:18], r1
000e68  2b0700f0  lui r14, 983040
000e6c  8b903010  add.s r1, r1, r3
000e70  1738a802  sll.d r[17:18], r[17:18], r10
000e74  1717e600  or r14, r12, r14
000e78  0b280411  add.ul r[17:18], r[9:10], r[17:18]
000e7c  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000e80  1387d004  setlt.u r14, r1, r13
000e84  1f088300  addli r16, r6, 64
000e88  00a00200  mfence { lm, gm }
000e8c  42800502  vload.mz vr0{mr1}, 0(r11)
000e90  86300000  vfp162float_l.rn vr1, vr0
000e94  06700000  vfp162float_h.rn vr0, vr0
000e98  4e101302  vstores_mask16.mz vr1{mr1}, 0(r6)
000e9c  0b134310  add.s r6, r6, r4
000ea0  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
000ea4  3b0f07fe  bneq r14, zero, -64
000ea8  abf00000  lui r1, 15
000eac  00a00300  mfence { lm, sm, gm }
000eb0  9b811b00  andi r3, r23, 1
000eb4  1f020006  addli r4, zero, 768
000eb8  9b90f0ff  ori r1, r1, 4095
000ebc  80a10004  csr_set csr3, r1
000ec0  9f000006  addli r1, zero, 768
000ec4  00d00100  sync_group
000ec8  67083fd6  storeli.w r3, -5248(r30)
000ecc  37a00100  beq r3, zero, 8
000ed0  1f02000a  addli r4, zero, 1280
000ed4  e3411f00  loadli.w r3,  12(r30)
000ed8  1f130000  addli r6, zero, 1
000edc  3f94612c  blt.s r3, r6, 22788
000ee0  e3010fd7  loadli.w r3,  -5248(r30)
000ee4  9f068fd7  addli r13, r30, -5184
000ee8  1b441100  srli r8, r2, 1
000eec  1f014200  addli r2, r4, 32
000ef0  1b351200  slli r10, r4, 1
000ef4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000ef8  2b390100  lui r18, 19
000efc  1f030000  addli r6, zero, 0
000f00  9bc41b00  srli r9, r23, 1
000f04  9f787000  addli r17, zero, 63
000f08  1f0a0005  addli r20, zero, 640
000f0c  1f0c4000  addli r24, zero, 32
000f10  1f0e0003  addli r28, zero, 384
000f14  670c2fd4  storeli.w r2, -5440(r30)
000f18  0b11d510  add.s r2, r10, r13
000f1c  1f0909f4  addli r18, r18, -1536
000f20  8b901120  mul.s r1, r3, r1
000f24  67041fd6  storeli.w r1, -5312(r30)
000f28  9bb02000  slli r1, r1, 2
000f2c  8b955010  add.s r11, r1, r5
000f30  0b967010  add.s r12, r1, r7
000f34  9b302200  slli r1, r4, 2
000f38  8b90d010  add.s r1, r1, r13
000f3c  9f8080ff  addli r1, r1, -64
000f40  e70b1fd4  storeli.w r1, -5448(r30)
000f44  9f0081ff  addli r1, r2, -64
000f48  1f018fd4  addli r2, r30, -5568
000f4c  670b1fd4  storeli.w r1, -5456(r30)
000f50  abf0ffff  lui r1, 1048575
000f54  00a00000  mfence { lm }
000f58  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000f5c  1f810c00  addli r2, r25, 0
000f60  ab3c0100  lui r25, 19
000f64  9b9000f8  ori r1, r1, 3968
000f68  9f8c0cf0  addli r25, r25, -2048
000f6c  e7431fd4  storeli.w r1, -5572(r30)
000f70  abf00000  lui r1, 15
000f74  1b9df0ff  ori r26, r1, 4095
000f78  5b040000  j 32
000f7c  00a00300  mfence { lm, sm, gm }
000f80  80210d04  csr_set csr3, r26
000f84  00d00100  sync_group
000f88  63411f00  loadli.w r2,  12(r30)
000f8c  0b138310  add.s r6, r6, r8
000f90  3f202300  blt.s r6, r2, 8
000f94  dba3ffff  j -740
000f98  8b109310  add.s r1, r6, r9
000f9c  cb0f11fe  ble.s r2, r1, -32
000fa0  63011f00  loadli.w r2,  8(r30)
000fa4  8b028330  div.u r5, r6, r8
000fa8  9f110000  addli r3, zero, 1
000fac  ab0300f0  lui r7, 983040
000fb0  8b902010  add.s r1, r1, r2
000fb4  63018fd6  loadli.w r2,  -5312(r30)
000fb8  9bb0b000  slli r1, r1, 11
000fbc  97902000  or r1, r1, r2
000fc0  b3900028  sext_int2long r[2:3], r1
000fc4  17b13002  sll.d r[3:4], r[2:3], r3
000fc8  9bb06200  slli r1, r5, 6
000fcc  9f027fd6  addli r5, r30, -5320
000fd0  ebda0200  load.d r[22:23], 0(r5)
000fd4  97127500  or r5, r10, r7
000fd8  9b800004  andi r1, r1, 64
000fdc  17977001  or r14, r1, r23
000fe0  8baa2a10  add.ul r[22:23], r[22:23], r[3:4]
000fe4  ffa2da00  l_gm2lm r5, r13, 0(r[22:23])
000fe8  00a00200  mfence { lm, gm }
000fec  e3006fd5  loadli.w r1,  -5456(r30)
000ff0  e3027fd5  loadli.w r5,  -5448(r30)
000ff4  e3038fd5  loadli.w r7,  -5440(r30)
000ff8  c2800002  vload.mz vr1{mr1}, 0(r1)
000ffc  9f83c3ff  addli r7, r7, -32
001000  9f8982ff  addli r19, r5, -64
001004  9f8080ff  addli r1, r1, -64
001008  13887804  setlt.u r16, r17, r7
00100c  06f10000  vfp162float_h.rn vr2, vr1
001010  86b00000  vfp162float_l.rn vr1, vr1
001014  46902202  vstore_mask16.mz vr2{mr1}, 0(r5)
001018  9f8202ff  addli r5, r5, -128
00101c  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
001020  3b6f08fe  bneq r16, zero, -40
001024  00a00000  mfence { lm }
001028  e3000fd7  loadli.w r1,  -5248(r30)
00102c  3bc60000  bneq r1, zero, 400
001030  9f008fd4  addli r1, r30, -5568
001034  63487fd4  loadli.w r16,  -5572(r30)
001038  9f020000  addli r5, zero, 0
00103c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
001040  92303002  vadd.s.mz vr1{mr1}, zero, vr3
001044  12313002  vadd.s.mz vr2{mr1}, zero, vr3
001048  12323002  vadd.s.mz vr4{mr1}, zero, vr3
00104c  8b90f210  add.s r1, r5, r15
001050  8b935610  add.s r7, r13, r5
001054  1f080801  addli r16, r16, 128
001058  9f820204  addli r5, r5, 512
00105c  9f890001  addli r19, r1, 128
001060  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
001064  9f8a8000  addli r21, r1, 64
001068  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
00106c  1f8b8301  addli r22, r7, 192
001070  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
001074  9f898001  addli r19, r1, 192
001078  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
00107c  9f8a8300  addli r21, r7, 64
001080  c2150b02  vload_mask16.mz vr11{mr1}, 0(r22)
001084  ca930902  vloads_mask16.mz vr7{mr1}, 0(r19)
001088  9f890301  addli r19, r7, 128
00108c  42950a02  vload_mask16.mz vr10{mr1}, 0(r21)
001090  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
001094  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001098  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00109c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0010a0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0010a4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0010a8  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
0010ac  46908902  vstore_mask16.mz vr8{mr1}, 0(r19)
0010b0  9f890002  addli r19, r1, 256
0010b4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0010b8  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0010bc  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0010c0  46905a02  vstore_mask16.mz vr5{mr1}, 0(r21)
0010c4  4a900902  vloads_mask16.mz vr0{mr1}, 0(r19)
0010c8  9f898002  addli r19, r1, 320
0010cc  46106b02  vstore_mask16.mz vr6{mr1}, 0(r22)
0010d0  1f8b0302  addli r22, r7, 256
0010d4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0010d8  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0010dc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0010e0  4a930902  vloads_mask16.mz vr6{mr1}, 0(r19)
0010e4  9f890003  addli r19, r1, 384
0010e8  c2130b02  vload_mask16.mz vr7{mr1}, 0(r22)
0010ec  9f808003  addli r1, r1, 448
0010f0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0010f4  4a940902  vloads_mask16.mz vr8{mr1}, 0(r19)
0010f8  9f898302  addli r19, r7, 320
0010fc  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
001100  9f800303  addli r1, r7, 384
001104  9f838303  addli r7, r7, 448
001108  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
00110c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001110  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001114  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001118  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
00111c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001120  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001124  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
001128  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00112c  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
001130  93094805  setlt.u r19, r16, r20
001134  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001138  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00113c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001140  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001144  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001148  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00114c  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001150  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001154  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001158  bbdb09fe  bneq r19, zero, -268
00115c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001160  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001164  9f000002  addli r1, zero, 256
001168  6af100c0  vsrl.p vr2, r1, vr0
00116c  eaf110c0  vsrl.p vr3, r1, vr1
001170  9f000001  addli r1, zero, 128
001174  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001178  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00117c  6af100c0  vsrl.p vr2, r1, vr0
001180  eaf110c0  vsrl.p vr3, r1, vr1
001184  9f008000  addli r1, zero, 64
001188  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00118c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001190  6af100c0  vsrl.p vr2, r1, vr0
001194  eaf110c0  vsrl.p vr3, r1, vr1
001198  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00119c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0011a0  6a710cc0  vsrl.p vr2, r24, vr0
0011a4  ea711cc0  vsrl.p vr3, r24, vr1
0011a8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0011ac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0011b0  fa100040  vextracti.f r1, 0(vr0)
0011b4  fa930040  vextracti.f r7, 0(vr1)
0011b8  db650000  j 812
0011bc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0011c0  abf0ffff  lui r1, 1048575
0011c4  1f080000  addli r16, zero, 0
0011c8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0011cc  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0011d0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0011d4  9b9900f8  ori r19, r1, 3968
0011d8  8b930711  add.s r7, r15, r16
0011dc  8b920611  add.s r5, r13, r16
0011e0  9f890901  addli r19, r19, 128
0011e4  1f080804  addli r16, r16, 512
0011e8  1f8b0331  addli r22, r7, 6272
0011ec  9f800330  addli r1, r7, 6144
0011f0  9f8d8331  addli r27, r7, 6336
0011f4  9f8a0218  addli r21, r5, 3072
0011f8  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
0011fc  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
001200  9f808330  addli r1, r7, 6208
001204  ca940d02  vloads_mask16.mz vr9{mr1}, 0(r27)
001208  1f8b0219  addli r22, r5, 3200
00120c  42930a02  vload_mask16.mz vr6{mr1}, 0(r21)
001210  9f8d8219  addli r27, r5, 3264
001214  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
001218  42150b02  vload_mask16.mz vr10{mr1}, 0(r22)
00121c  9f808218  addli r1, r5, 3136
001220  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
001224  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
001228  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
00122c  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
001230  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
001234  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
001238  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00123c  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
001240  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
001244  9f8a0332  addli r21, r7, 6400
001248  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
00124c  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
001250  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001254  46107b02  vstore_mask16.mz vr7{mr1}, 0(r22)
001258  1f8b021a  addli r22, r5, 3328
00125c  c2130b02  vload_mask16.mz vr7{mr1}, 0(r22)
001260  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001264  9f80021b  addli r1, r5, 3456
001268  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
00126c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001270  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
001274  9f8a8332  addli r21, r7, 6464
001278  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00127c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001280  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
001284  9f8a0333  addli r21, r7, 6528
001288  9f838333  addli r7, r7, 6592
00128c  4a940a02  vloads_mask16.mz vr8{mr1}, 0(r21)
001290  9f8a821a  addli r21, r5, 3392
001294  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
001298  9f82821b  addli r5, r5, 3520
00129c  9383c905  setlt.u r7, r19, r28
0012a0  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
0012a4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0012a8  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0012ac  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0012b0  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
0012b4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0012b8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0012bc  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
0012c0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0012c4  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
0012c8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0012cc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0012d0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0012d4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0012d8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0012dc  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0012e0  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
0012e4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0012e8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0012ec  bbbb03fe  bneq r7, zero, -276
0012f0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0012f4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0012f8  9f000002  addli r1, zero, 256
0012fc  9f090000  addli r19, zero, 0
001300  eaf110c0  vsrl.p vr3, r1, vr1
001304  6af100c0  vsrl.p vr2, r1, vr0
001308  9f000001  addli r1, zero, 128
00130c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001310  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001314  eaf110c0  vsrl.p vr3, r1, vr1
001318  6af100c0  vsrl.p vr2, r1, vr0
00131c  9f008000  addli r1, zero, 64
001320  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001324  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001328  eaf110c0  vsrl.p vr3, r1, vr1
00132c  6af100c0  vsrl.p vr2, r1, vr0
001330  abf0ffff  lui r1, 1048575
001334  9b9200f8  ori r5, r1, 3968
001338  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00133c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001340  ea711cc0  vsrl.p vr3, r24, vr1
001344  6a710cc0  vsrl.p vr2, r24, vr0
001348  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00134c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001350  7a980040  vextracti.f r16, 0(vr1)
001354  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001358  fa1d0040  vextracti.f r27, 0(vr0)
00135c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001360  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001364  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001368  8b903711  add.s r1, r15, r19
00136c  8b933611  add.s r7, r13, r19
001370  9f820201  addli r5, r5, 128
001374  9f890904  addli r19, r19, 512
001378  9f8a0018  addli r21, r1, 3072
00137c  1f8b0019  addli r22, r1, 3200
001380  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
001384  9f8b8301  addli r23, r7, 192
001388  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
00138c  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
001390  9f8a8018  addli r21, r1, 3136
001394  1f8b8019  addli r22, r1, 3264
001398  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
00139c  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
0013a0  9f8a0301  addli r21, r7, 128
0013a4  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
0013a8  1f8b8300  addli r22, r7, 64
0013ac  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
0013b0  42150b02  vload_mask16.mz vr10{mr1}, 0(r22)
0013b4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0013b8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0013bc  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0013c0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0013c4  46908a02  vstore_mask16.mz vr8{mr1}, 0(r21)
0013c8  9f8a001a  addli r21, r1, 3328
0013cc  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0013d0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0013d4  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0013d8  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0013dc  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
0013e0  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
0013e4  9f8a801a  addli r21, r1, 3392
0013e8  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
0013ec  9f8b0302  addli r23, r7, 256
0013f0  46105b02  vstore_mask16.mz vr5{mr1}, 0(r22)
0013f4  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0013f8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0013fc  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
001400  9f8a001b  addli r21, r1, 3456
001404  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
001408  9f80801b  addli r1, r1, 3520
00140c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001410  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001414  4a940a02  vloads_mask16.mz vr8{mr1}, 0(r21)
001418  9f8a8302  addli r21, r7, 320
00141c  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
001420  9f800303  addli r1, r7, 384
001424  9f838303  addli r7, r7, 448
001428  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
00142c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001430  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001434  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001438  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
00143c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001440  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001444  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
001448  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00144c  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
001450  938a4205  setlt.u r21, r5, r20
001454  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001458  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00145c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001460  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001464  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001468  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00146c  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001470  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001474  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001478  bbcb0afe  bneq r21, zero, -272
00147c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001480  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001484  9f000002  addli r1, zero, 256
001488  803b0002  core_id r23
00148c  6af100c0  vsrl.p vr2, r1, vr0
001490  eaf110c0  vsrl.p vr3, r1, vr1
001494  9f000001  addli r1, zero, 128
001498  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00149c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0014a0  6af100c0  vsrl.p vr2, r1, vr0
0014a4  eaf110c0  vsrl.p vr3, r1, vr1
0014a8  9f008000  addli r1, zero, 64
0014ac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0014b0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0014b4  6af100c0  vsrl.p vr2, r1, vr0
0014b8  eaf110c0  vsrl.p vr3, r1, vr1
0014bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0014c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0014c4  6a710cc0  vsrl.p vr2, r24, vr0
0014c8  ea711cc0  vsrl.p vr3, r24, vr1
0014cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0014d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0014d4  fa100040  vextracti.f r1, 0(vr0)
0014d8  fa920040  vextracti.f r5, 0(vr1)
0014dc  8be01d10  add.f.rn r1, r27, r1
0014e0  8b635810  add.f.rn r7, r16, r5
0014e4  1b382700  slli r16, r14, 2
0014e8  9f020000  addli r5, zero, 0
0014ec  8b199811  add.s r19, r16, r25
0014f0  8b1a2811  add.s r21, r16, r18
0014f4  73e01900  stores.w r1, 0(r19)
0014f8  9b00e707  andi r1, r14, 126
0014fc  73e07a00  stores.w r7, 0(r21)
001500  9b134800  ori r7, r16, 4
001504  9f090000  addli r19, zero, 0
001508  00a00300  mfence { lm, sm, gm }
00150c  80210d04  csr_set csr3, r26
001510  00d00100  sync_group
001514  9bb02000  slli r1, r1, 2
001518  0b979311  add.s r14, r7, r25
00151c  8b932311  add.s r7, r7, r18
001520  0b989011  add.s r16, r1, r25
001524  6f470700  loads.w r14, 0(r14)
001528  8b902011  add.s r1, r1, r18
00152c  efc30300  loads.w r7, 0(r7)
001530  6f480800  loads.w r16, 0(r16)
001534  efc00000  loads.w r1, 0(r1)
001538  0b670711  add.f.rn r14, r14, r16
00153c  2b08003a  lui r16, 237568
001540  8be01310  add.f.rn r1, r7, r1
001544  8b630721  mul.f.rn r7, r14, r16
001548  8be00021  mul.f.rn r1, r1, r16
00154c  0be77320  mul.f.rn r14, r7, r7
001550  0be80358  neg.f r16, r7
001554  8be0e018  sub.f.rn r1, r1, r14
001558  63073f00  loadli.w r14,  24(r30)
00155c  8be0e010  add.f.rn r1, r1, r14
001560  2b07803f  lui r14, 260096
001564  8f800008  sqrt.f.rn r1, r1
001568  0f071718  div.f.rn r14, r14, r1
00156c  8b905510  add.s r1, r11, r5
001570  8b935610  add.s r7, r13, r5
001574  8b1d5610  add.s r27, r12, r5
001578  1f8b8000  addli r22, r1, 64
00157c  9f8a8300  addli r21, r7, 64
001580  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
001584  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
001588  4a920d02  vloads_mask16.mz vr4{mr1}, 0(r27)
00158c  ca110b02  vloads_mask16.mz vr3{mr1}, 0(r22)
001590  1f8b8d00  addli r22, r27, 64
001594  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
001598  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
00159c  1f8b4900  addli r22, r19, 32
0015a0  12100802  vadd.f.mz.rn vr0{mr1}, r16, vr0
0015a4  130b6207  setle.u r22, r4, r22
0015a8  92101802  vadd.f.mz.rn vr1{mr1}, r16, vr1
0015ac  0a100702  vmul.f.mz.rn vr0{mr1}, r14, vr0
0015b0  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
0015b4  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
0015b8  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
0015bc  46904302  vstore_mask16.mz vr4{mr1}, 0(r7)
0015c0  46905a02  vstore_mask16.mz vr5{mr1}, 0(r21)
0015c4  bb110b00  bneq r22, zero, 100
0015c8  1f8b0001  addli r22, r1, 128
0015cc  9f8a0301  addli r21, r7, 128
0015d0  9f838301  addli r7, r7, 192
0015d4  9f808001  addli r1, r1, 192
0015d8  9f898900  addli r19, r19, 64
0015dc  9f820202  addli r5, r5, 256
0015e0  4a110b02  vloads_mask16.mz vr2{mr1}, 0(r22)
0015e4  1f8b0d01  addli r22, r27, 128
0015e8  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
0015ec  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
0015f0  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
0015f4  93804904  setlt.u r1, r19, r4
0015f8  ca110b02  vloads_mask16.mz vr3{mr1}, 0(r22)
0015fc  1f8b8d01  addli r22, r27, 192
001600  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
001604  12100802  vadd.f.mz.rn vr0{mr1}, r16, vr0
001608  92101802  vadd.f.mz.rn vr1{mr1}, r16, vr1
00160c  0a100702  vmul.f.mz.rn vr0{mr1}, r14, vr0
001610  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
001614  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
001618  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
00161c  46903a02  vstore_mask16.mz vr3{mr1}, 0(r21)
001620  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
001624  3bad00fe  bneq r1, zero, -184
001628  9f008fd7  addli r1, r30, -5184
00162c  9f028fd7  addli r5, r30, -5184
001630  9f030000  addli r7, zero, 0
001634  00a00000  mfence { lm }
001638  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
00163c  1f878200  addli r14, r5, 64
001640  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
001644  9f834300  addli r7, r7, 32
001648  9f820201  addli r5, r5, 128
00164c  c2100702  vload_mask16.mz vr1{mr1}, 0(r14)
001650  13874304  setlt.u r14, r7, r4
001654  06110000  vfloat2fp16_l.rn vr2, vr0
001658  06d10000  vfloat2fp16_h.rn vr2, vr1
00165c  46802002  vstore.mz vr2{mr1}, 0(r1)
001660  9f808000  addli r1, r1, 64
001664  3b5f07fe  bneq r14, zero, -44
001668  eb5a0f00  load.d r[22:23], 0(r30)
00166c  ab0000f0  lui r1, 983040
001670  00a00000  mfence { lm }
001674  97101500  or r1, r10, r1
001678  0ba12a10  add.ul r[3:4], r[22:23], r[3:4]
00167c  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
001680  00a00200  mfence { lm, gm }
001684  db20ffff  j -1788
001688  e3403f00  loadli.w r1,  28(r30)
00168c  b7c60014  beq r1, zero, 10672
001690  80390002  core_id r19
001694  63012f00  loadli.w r2,  16(r30)
001698  005a0102  load_param_i r20, 2
00169c  9bb05900  slli r1, r19, 5
0016a0  4b431100  ble.s r2, r1, 208
0016a4  2b960000  lui r12, 9
0016a8  9f110000  addli r3, zero, 1
0016ac  1f058fd7  addli r10, r30, -5184
0016b0  9f058000  addli r11, zero, 64
0016b4  1b315a00  slli r2, r20, 5
0016b8  9f860000  addli r13, r1, 0
0016bc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0016c0  1f0606f0  addli r12, r12, -2048
0016c4  33880628  zext_int2long r[17:18], r13
0016c8  2b0900f0  lui r18, 983040
0016cc  17383802  sll.d r[17:18], r[17:18], r3
0016d0  17992501  or r18, r11, r18
0016d4  0b280211  add.ul r[17:18], r[5:6], r[17:18]
0016d8  7f29a800  l_gm2lm r18, r10, 0(r[17:18])
0016dc  1bb82600  slli r16, r13, 2
0016e0  8b16d110  add.s r13, r2, r13
0016e4  00a00200  mfence { lm, gm }
0016e8  c2000502  vload.mz vr1{mr1}, 0(r10)
0016ec  0b18c810  add.s r16, r16, r12
0016f0  9f088800  addli r17, r16, 64
0016f4  66411080  vmerge_l.hf vr2, vr0, vr1
0016f8  e64010a0  vmerge_h.hf vr1, vr0, vr1
0016fc  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
001700  4e901802  vstores_mask16.mz vr1{mr1}, 0(r17)
001704  3f8ff6fe  blt.s r13, r15, -64
001708  2ba20000  lui r4, 10
00170c  9bb17900  slli r3, r19, 7
001710  9f120000  addli r5, zero, 1
001714  1f058fd7  addli r10, r30, -5184
001718  9f058000  addli r11, zero, 64
00171c  1f860000  addli r12, r1, 0
001720  00a00000  mfence { lm }
001724  1f0202f0  addli r4, r4, -2048
001728  8b914110  add.s r3, r3, r4
00172c  1b327a00  slli r4, r20, 7
001730  33080628  zext_int2long r[17:18], r12
001734  ab0600f0  lui r13, 983040
001738  0b162610  add.s r12, r12, r2
00173c  17385802  sll.d r[17:18], r[17:18], r5
001740  9796d500  or r13, r11, r13
001744  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001748  ff26a800  l_gm2lm r13, r10, 0(r[17:18])
00174c  9f868100  addli r13, r3, 64
001750  00a00200  mfence { lm, gm }
001754  c2000502  vload.mz vr1{mr1}, 0(r10)
001758  66411080  vmerge_l.hf vr2, vr0, vr1
00175c  e64010a0  vmerge_h.hf vr1, vr0, vr1
001760  4e902102  vstores_mask16.mz vr2{mr1}, 0(r3)
001764  8b914110  add.s r3, r3, r4
001768  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
00176c  3f1ff6fe  blt.s r12, r15, -60
001770  63012f00  loadli.w r2,  16(r30)
001774  cb211100  ble.s r2, r1, 104
001778  2bb30000  lui r6, 11
00177c  1f110000  addli r2, zero, 1
001780  9f018fd7  addli r3, r30, -5184
001784  1f028000  addli r4, zero, 64
001788  9b325a00  slli r5, r20, 5
00178c  00a00000  mfence { lm }
001790  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001794  1f0303f0  addli r6, r6, -2048
001798  33850028  zext_int2long r[11:12], r1
00179c  ab0300f0  lui r7, 983040
0017a0  17352502  sll.d r[11:12], r[11:12], r2
0017a4  97137200  or r7, r4, r7
0017a8  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
0017ac  ff233500  l_gm2lm r7, r3, 0(r[11:12])
0017b0  9bb32000  slli r7, r1, 2
0017b4  8b901210  add.s r1, r5, r1
0017b8  00a00200  mfence { lm, gm }
0017bc  c2800102  vload.mz vr1{mr1}, 0(r3)
0017c0  8b936310  add.s r7, r7, r6
0017c4  1f858300  addli r10, r7, 64
0017c8  66411080  vmerge_l.hf vr2, vr0, vr1
0017cc  e64010a0  vmerge_h.hf vr1, vr0, vr1
0017d0  4e902302  vstores_mask16.mz vr2{mr1}, 0(r7)
0017d4  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
0017d8  3f8ff0fe  blt.s r1, r15, -64
0017dc  abf00000  lui r1, 15
0017e0  63411f00  loadli.w r2,  12(r30)
0017e4  00a00300  mfence { lm, sm, gm }
0017e8  9b90f0ff  ori r1, r1, 4095
0017ec  80a10004  csr_set csr3, r1
0017f0  00d00100  sync_group
0017f4  cb3f3127  ble.s r2, r19, 20460
0017f8  e3002f00  loadli.w r1,  16(r30)
0017fc  63412f00  loadli.w r2,  20(r30)
001800  1f058fd7  addli r10, r30, -5184
001804  9f150000  addli r11, zero, 1
001808  1f064000  addli r12, zero, 32
00180c  1f787000  addli r16, zero, 63
001810  9f080002  addli r17, zero, 256
001814  ab0a803f  lui r21, 260096
001818  ab0cffff  lui r25, 1048560
00181c  2b0d807f  lui r26, 522240
001820  ab0dc07f  lui r27, 523264
001824  abe37f00  lui r7, 2046
001828  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00182c  33820008  fix2float.rn r4, r1
001830  8b912010  add.s r3, r1, r2
001834  1bb31000  slli r6, r1, 1
001838  e7034fd4  storeli.w r4, -5576(r30)
00183c  1bb22000  slli r4, r1, 2
001840  9f804000  addli r1, r1, 32
001844  9ff1f1ff  addli r3, r3, -1
001848  67431fd4  storeli.w r1, -5580(r30)
00184c  8b10a210  add.s r1, r4, r10
001850  8b922130  div.s r5, r3, r2
001854  8b11a310  add.s r3, r6, r10
001858  2be20700  lui r4, 126
00185c  9f8080ff  addli r1, r1, -64
001860  67031fd4  storeli.w r1, -5584(r30)
001864  9f8081ff  addli r1, r3, -64
001868  e7421fd4  storeli.w r1, -5588(r30)
00186c  9b302100  slli r1, r2, 2
001870  2bf100fc  lui r2, 1032207
001874  67041fd6  storeli.w r1, -5312(r30)
001878  abf0ffff  lui r1, 1048575
00187c  1b1101c0  ori r2, r2, 3072
001880  00a00000  mfence { lm }
001884  67044fd5  storeli.w r20, -5568(r30)
001888  e7436fd4  storeli.w r6, -5572(r30)
00188c  9b90f0ff  ori r1, r1, 4095
001890  670c1fd4  storeli.w r1, -5440(r30)
001894  ab700000  lui r1, 7
001898  1b9cf0ff  ori r24, r1, 4095
00189c  ab00ff03  lui r1, 16368
0018a0  9b94f03f  ori r9, r1, 1023
0018a4  9f000fd7  addli r1, r30, -5248
0018a8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0018ac  db080000  j 68
0018b0  9f016fd5  addli r3, r30, -5456
0018b4  6b590f00  load.d r[19:20], 0(r30)
0018b8  63437fd4  loadli.w r6,  -5572(r30)
0018bc  ab0000f0  lui r1, 983040
0018c0  1f787000  addli r16, zero, 63
0018c4  6bdb0100  load.d r[23:24], 0(r3)
0018c8  00a00000  mfence { lm }
0018cc  97101300  or r1, r6, r1
0018d0  0b2b6911  add.ul r[23:24], r[19:20], r[23:24]
0018d4  e3097fd5  loadli.w r19,  -5448(r30)
0018d8  ff30ab00  s_lm2gm r1, r10, 0(r[23:24])
0018dc  00a00200  mfence { lm, gm }
0018e0  e3401f00  loadli.w r1,  12(r30)
0018e4  8b193a11  add.s r19, r20, r19
0018e8  3fa01900  blt.s r19, r1, 8
0018ec  dbde0900  j 20212
0018f0  e3001f00  loadli.w r1,  8(r30)
0018f4  9f017fd6  addli r3, r30, -5320
0018f8  e70b3fd5  storeli.w r19, -5448(r30)
0018fc  8b901910  add.s r1, r19, r1
001900  6bd90100  load.d r[19:20], 0(r3)
001904  9f016fd5  addli r3, r30, -5456
001908  8b90f020  mul.s r1, r1, r15
00190c  339b0028  sext_int2long r[23:24], r1
001910  ab0000f0  lui r1, 983040
001914  173bbb02  sll.d r[23:24], r[23:24], r11
001918  97101300  or r1, r6, r1
00191c  73b06101  store.d r[23:24], 0(r3)
001920  0b2b6911  add.ul r[23:24], r[19:20], r[23:24]
001924  ff20ab00  l_gm2lm r1, r10, 0(r[23:24])
001928  00a00200  mfence { lm, gm }
00192c  bff0c700  blt.s r15, r12, 60
001930  e3405fd4  loadli.w r1,  -5588(r30)
001934  e3016fd4  loadli.w r3,  -5584(r30)
001938  63436fd4  loadli.w r6,  -5580(r30)
00193c  c2800002  vload.mz vr1{mr1}, 0(r1)
001940  1f03c3ff  addli r6, r6, -32
001944  9f8681ff  addli r13, r3, -64
001948  9f8080ff  addli r1, r1, -64
00194c  13046804  setlt.u r8, r16, r6
001950  664110a0  vmerge_h.hf vr2, vr0, vr1
001954  e6401080  vmerge_l.hf vr1, vr0, vr1
001958  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
00195c  9f8101ff  addli r3, r3, -128
001960  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
001964  3b6f04fe  bneq r8, zero, -40
001968  00a00000  mfence { lm }
00196c  3f88b200  blt.s r5, r11, 512
001970  1f090000  addli r18, zero, 0
001974  9f000000  addli r1, zero, 0
001978  9f060000  addli r13, zero, 0
00197c  db0e0000  j 116
001980  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001984  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001988  9f010001  addli r3, zero, 128
00198c  9f960600  addli r13, r13, 1
001990  6af108c0  vsrl.p vr2, r17, vr0
001994  eaf118c0  vsrl.p vr3, r17, vr1
001998  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00199c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0019a0  6af101c0  vsrl.p vr2, r3, vr0
0019a4  eaf111c0  vsrl.p vr3, r3, vr1
0019a8  9f018000  addli r3, zero, 64
0019ac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0019b0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0019b4  6af101c0  vsrl.p vr2, r3, vr0
0019b8  eaf111c0  vsrl.p vr3, r3, vr1
0019bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0019c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0019c4  6a7106c0  vsrl.p vr2, r12, vr0
0019c8  ea7116c0  vsrl.p vr3, r12, vr1
0019cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0019d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0019d4  fa110040  vextracti.f r3, 0(vr0)
0019d8  7a930040  vextracti.f r6, 0(vr1)
0019dc  0b693910  add.f.rn r18, r18, r3
0019e0  9f010fd7  addli r3, r30, -5248
0019e4  8be06010  add.f.rn r1, r1, r6
0019e8  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0019ec  37a65600  beq r13, r5, 392
0019f0  9f810600  addli r3, r13, 0
0019f4  37401701  beq r14, r17, 16
0019f8  e3018fd5  loadli.w r3,  -5440(r30)
0019fc  97a13600  xor r3, r13, r3
001a00  8b913210  add.s r3, r5, r3
001a04  0b93e120  mul.s r6, r3, r14
001a08  12320002  vadd.s.mz vr4{mr1}, zero, vr0
001a0c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
001a10  12310002  vadd.s.mz vr2{mr1}, zero, vr0
001a14  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001a18  0b936718  sub.s r6, r15, r6
001a1c  0b18e340  min.s r16, r6, r14
001a20  bf0db8fe  blt.s r16, r11, -160
001a24  63038fd6  loadli.w r6,  -5312(r30)
001a28  2b940000  lui r8, 9
001a2c  1f0b0000  addli r22, zero, 0
001a30  1f0e8fd7  addli r28, r30, -5184
001a34  1f0404f0  addli r8, r8, -2048
001a38  8b1b3320  mul.s r23, r6, r3
001a3c  9f010fd7  addli r3, r30, -5248
001a40  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
001a44  92304002  vadd.s.mz vr1{mr1}, zero, vr4
001a48  12314002  vadd.s.mz vr2{mr1}, zero, vr4
001a4c  92314002  vadd.s.mz vr3{mr1}, zero, vr4
001a50  0b137411  add.s r6, r8, r23
001a54  8b117e11  add.s r3, r28, r23
001a58  1f058300  addli r10, r6, 64
001a5c  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
001a60  9f098301  addli r19, r6, 192
001a64  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
001a68  1f8a8101  addli r20, r3, 192
001a6c  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
001a70  1f050301  addli r10, r6, 128
001a74  4a940902  vloads_mask16.mz vr8{mr1}, 0(r19)
001a78  9f890101  addli r19, r3, 128
001a7c  42100a02  vload_mask16.mz vr0{mr1}, 0(r20)
001a80  ca130502  vloads_mask16.mz vr7{mr1}, 0(r10)
001a84  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
001a88  1f858100  addli r10, r3, 64
001a8c  42150502  vload_mask16.mz vr10{mr1}, 0(r10)
001a90  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001a94  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001a98  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001a9c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001aa0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001aa4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001aa8  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
001aac  46106502  vstore_mask16.mz vr6{mr1}, 0(r10)
001ab0  1f058b00  addli r10, r22, 64
001ab4  46100a02  vstore_mask16.mz vr0{mr1}, 0(r20)
001ab8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001abc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001ac0  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001ac4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001ac8  46907902  vstore_mask16.mz vr7{mr1}, 0(r19)
001acc  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001ad0  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001ad4  cb3aa8fe  ble.s r16, r10, -340
001ad8  9f090302  addli r19, r6, 256
001adc  1f0a8302  addli r20, r6, 320
001ae0  1f850102  addli r10, r3, 256
001ae4  1f0b0b01  addli r22, r22, 128
001ae8  1f040404  addli r8, r8, 512
001aec  1f0e0e04  addli r28, r28, 512
001af0  4a900902  vloads_mask16.mz vr0{mr1}, 0(r19)
001af4  9f090303  addli r19, r6, 384
001af8  1f038303  addli r6, r6, 448
001afc  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
001b00  42130502  vload_mask16.mz vr6{mr1}, 0(r10)
001b04  ca930902  vloads_mask16.mz vr7{mr1}, 0(r19)
001b08  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
001b0c  1f830103  addli r6, r3, 384
001b10  9f898102  addli r19, r3, 320
001b14  9f818103  addli r3, r3, 448
001b18  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
001b1c  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
001b20  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
001b24  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
001b28  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001b2c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001b30  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001b34  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001b38  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
001b3c  46905902  vstore_mask16.mz vr5{mr1}, 0(r19)
001b40  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
001b44  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001b48  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001b4c  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
001b50  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001b54  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001b58  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001b5c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001b60  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001b64  bf3b0bff  blt.s r22, r16, -276
001b68  5bc3ffff  j -488
001b6c  9f000000  addli r1, zero, 0
001b70  1f090000  addli r18, zero, 0
001b74  aba90000  lui r19, 10
001b78  2bba0000  lui r20, 11
001b7c  1f058fd7  addli r10, r30, -5184
001b80  00a00000  mfence { lm }
001b84  9f8909f0  addli r19, r19, -2048
001b88  1f0a0af0  addli r20, r20, -2048
001b8c  bfc3b700  blt.s r15, r11, 240
001b90  63037fd4  loadli.w r6,  -5576(r30)
001b94  1f040000  addli r8, zero, 0
001b98  1f080000  addli r16, zero, 0
001b9c  8f016918  div.f.rn r3, r18, r6
001ba0  8f806018  div.f.rn r1, r1, r6
001ba4  0be33120  mul.f.rn r6, r3, r3
001ba8  8be60158  neg.f r13, r3
001bac  8be06018  sub.f.rn r1, r1, r6
001bb0  63033f00  loadli.w r6,  24(r30)
001bb4  8be06010  add.f.rn r1, r1, r6
001bb8  8f800008  sqrt.f.rn r1, r1
001bbc  8f801a18  div.f.rn r1, r21, r1
001bc0  0b133411  add.s r6, r8, r19
001bc4  8b118510  add.s r3, r10, r8
001bc8  1f098300  addli r18, r6, 64
001bcc  4a110302  vloads_mask16.mz vr2{mr1}, 0(r6)
001bd0  0b134411  add.s r6, r8, r20
001bd4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001bd8  ca110902  vloads_mask16.mz vr3{mr1}, 0(r18)
001bdc  1f898100  addli r18, r3, 64
001be0  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
001be4  1f038300  addli r6, r6, 64
001be8  c2120902  vload_mask16.mz vr5{mr1}, 0(r18)
001bec  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
001bf0  1f034800  addli r6, r16, 32
001bf4  92901602  vadd.f.mz.rn vr1{mr1}, r13, vr1
001bf8  92925602  vadd.f.mz.rn vr5{mr1}, r13, vr5
001bfc  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
001c00  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
001c04  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
001c08  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
001c0c  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
001c10  46106902  vstore_mask16.mz vr6{mr1}, 0(r18)
001c14  cba16700  ble.s r15, r6, 104
001c18  0b938910  add.s r6, r19, r8
001c1c  0b198a10  add.s r18, r20, r8
001c20  1f088800  addli r16, r16, 64
001c24  1f040402  addli r8, r8, 256
001c28  1f0b0301  addli r22, r6, 128
001c2c  9f0b0901  addli r23, r18, 128
001c30  1f038301  addli r6, r6, 192
001c34  1f098901  addli r18, r18, 192
001c38  ca100b02  vloads_mask16.mz vr1{mr1}, 0(r22)
001c3c  1f8b0101  addli r22, r3, 128
001c40  9f818101  addli r3, r3, 192
001c44  4a910b02  vloads_mask16.mz vr2{mr1}, 0(r23)
001c48  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
001c4c  4a130902  vloads_mask16.mz vr6{mr1}, 0(r18)
001c50  c2110b02  vload_mask16.mz vr3{mr1}, 0(r22)
001c54  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
001c58  92913602  vadd.f.mz.rn vr3{mr1}, r13, vr3
001c5c  12924602  vadd.f.mz.rn vr4{mr1}, r13, vr4
001c60  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
001c64  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
001c68  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
001c6c  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
001c70  46102b02  vstore_mask16.mz vr2{mr1}, 0(r22)
001c74  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001c78  3f2df8fe  blt.s r16, r15, -184
001c7c  00a00000  mfence { lm }
001c80  1f032000  addli r6, zero, 16
001c84  1f380000  addli r16, zero, 3
001c88  1f591000  addli r18, zero, 13
001c8c  9f291000  addli r19, zero, 10
001c90  630a8fd4  loadli.w r20,  -5568(r30)
001c94  3ff0b7fe  blt.s r15, r11, -996
001c98  9f008fd7  addli r1, r30, -5184
001c9c  1f048fd7  addli r8, r30, -5184
001ca0  9f060000  addli r13, zero, 0
001ca4  c2110402  vload_mask16.mz vr3{mr1}, 0(r8)
001ca8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001cac  9f018400  addli r3, r8, 64
001cb0  9f864600  addli r13, r13, 32
001cb4  1f040401  addli r8, r8, 128
001cb8  6a221322  vor.u.mz vr4{mr1}, r6, vr1
001cbc  6a231922  vor.u.mz vr6{mr1}, r18, vr1
001cc0  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
001cc4  ee3232c2  vsrl.s.mz vr5{mr1}, vr4, vr3
001cc8  6e3222c2  vsrl.s.mz vr4{mr1}, vr4, vr2
001ccc  eab25502  vand.s.mz vr5{mr1}, r11, vr5
001cd0  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
001cd4  96b25102  vadd.s.mz vr5{mr1}, vr3, vr5
001cd8  e69101c0  vabs.f vr3, vr3
001cdc  16324102  vadd.s.mz vr4{mr1}, vr2, vr4
001ce0  661101c0  vabs.f vr2, vr2
001ce4  92325c02  vadd.s.mz vr5{mr1}, r24, vr5
001ce8  72213d42  vlt.u.mz mr2{mr1}, r26, vr3
001cec  12324c02  vadd.s.mz vr4{mr1}, r24, vr4
001cf0  eab25c02  vand.s.mz vr5{mr1}, r25, vr5
001cf4  6ab24c02  vand.s.mz vr4{mr1}, r25, vr4
001cf8  eaa21d34  vor.u.mh vr5{mr2}, r27, vr1
001cfc  72212d42  vlt.u.mz mr2{mr1}, r26, vr2
001d00  6a211822  vor.u.mz vr2{mr1}, r16, vr1
001d04  6aa21d34  vor.u.mh vr4{mr2}, r27, vr1
001d08  eaa01922  vor.u.mz vr1{mr1}, r19, vr1
001d0c  ee3153c2  vsrl.s.mz vr3{mr1}, vr6, vr5
001d10  ee3251c2  vsrl.s.mz vr5{mr1}, vr2, vr5
001d14  6e3141c2  vsrl.s.mz vr2{mr1}, vr2, vr4
001d18  6e3343c2  vsrl.s.mz vr6{mr1}, vr6, vr4
001d1c  ea313202  vand.s.mz vr3{mr1}, r4, vr3
001d20  eab25302  vand.s.mz vr5{mr1}, r7, vr5
001d24  6a326202  vand.s.mz vr4{mr1}, r4, vr6
001d28  6ab12302  vand.s.mz vr2{mr1}, r7, vr2
001d2c  eab13a22  vor.s.mz vr3{mr1}, r21, vr3
001d30  eab25a22  vor.s.mz vr5{mr1}, r21, vr5
001d34  6ab12a22  vor.s.mz vr2{mr1}, r21, vr2
001d38  6ab24a22  vor.s.mz vr4{mr1}, r21, vr4
001d3c  86910120  vfloat2fp16_l.rz vr3, vr3
001d40  06510120  vfloat2fp16_h.rz vr2, vr2
001d44  86510220  vfloat2fp16_h.rz vr3, vr4
001d48  06910220  vfloat2fp16_l.rz vr2, vr5
001d4c  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
001d50  6ab12402  vand.s.mz vr2{mr1}, r9, vr2
001d54  ea301102  vand.s.mz vr1{mr1}, r2, vr1
001d58  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
001d5c  46801002  vstore.mz vr1{mr1}, 0(r1)
001d60  9f808000  addli r1, r1, 64
001d64  3f8df6fe  blt.s r13, r15, -192
001d68  5b69ffff  j -1208
001d6c  e3403f00  loadli.w r1,  28(r30)
001d70  b7f00018  beq r1, zero, 12348
001d74  80300002  core_id r1
001d78  e3012f00  loadli.w r3,  16(r30)
001d7c  1bb15000  slli r2, r1, 5
001d80  4bc32100  ble.s r3, r2, 208
001d84  2b580100  lui r16, 21
001d88  00550102  load_param_i r10, 2
001d8c  9f150000  addli r11, zero, 1
001d90  1f068fd7  addli r12, r30, -5184
001d94  9f068000  addli r13, zero, 64
001d98  9f080100  addli r17, r2, 0
001d9c  9b315500  slli r3, r10, 5
001da0  1f080800  addli r16, r16, 0
001da4  33890828  zext_int2long r[19:20], r17
001da8  2b0a00f0  lui r20, 983040
001dac  1739b902  sll.d r[19:20], r[19:20], r11
001db0  179a4601  or r20, r13, r20
001db4  0b292211  add.ul r[19:20], r[5:6], r[19:20]
001db8  7f2ac900  l_gm2lm r20, r12, 0(r[19:20])
001dbc  1bb92800  slli r18, r17, 2
001dc0  8b981111  add.s r17, r3, r17
001dc4  00a00200  mfence { lm, gm }
001dc8  42000602  vload.mz vr0{mr1}, 0(r12)
001dcc  0b190911  add.s r18, r18, r16
001dd0  9f098900  addli r19, r18, 64
001dd4  86300000  vfp162float_l.rn vr1, vr0
001dd8  06700000  vfp162float_h.rn vr0, vr0
001ddc  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
001de0  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
001de4  3f8ff8fe  blt.s r17, r15, -64
001de8  ab620100  lui r5, 22
001dec  1bb27000  slli r4, r1, 7
001df0  9f058fd7  addli r11, r30, -5184
001df4  1f068000  addli r12, zero, 64
001df8  9f060100  addli r13, r2, 0
001dfc  00a00000  mfence { lm }
001e00  9f820200  addli r5, r5, 0
001e04  0b125210  add.s r4, r4, r5
001e08  9b327500  slli r5, r10, 7
001e0c  1f150000  addli r10, zero, 1
001e10  33880628  zext_int2long r[17:18], r13
001e14  2b0900f0  lui r18, 983040
001e18  8b963610  add.s r13, r13, r3
001e1c  1738a802  sll.d r[17:18], r[17:18], r10
001e20  17192601  or r18, r12, r18
001e24  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001e28  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
001e2c  1f088200  addli r16, r4, 64
001e30  00a00200  mfence { lm, gm }
001e34  42800502  vload.mz vr0{mr1}, 0(r11)
001e38  86300000  vfp162float_l.rn vr1, vr0
001e3c  06700000  vfp162float_h.rn vr0, vr0
001e40  4e101202  vstores_mask16.mz vr1{mr1}, 0(r4)
001e44  0b125210  add.s r4, r4, r5
001e48  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
001e4c  3f9ff6fe  blt.s r13, r15, -60
001e50  e3012f00  loadli.w r3,  16(r30)
001e54  cba12100  ble.s r3, r2, 104
001e58  00530102  load_param_i r6, 2
001e5c  ab730100  lui r7, 23
001e60  9f110000  addli r3, zero, 1
001e64  1f028fd7  addli r4, r30, -5184
001e68  9f028000  addli r5, zero, 64
001e6c  00a00000  mfence { lm }
001e70  1b335300  slli r6, r6, 5
001e74  9f830300  addli r7, r7, 0
001e78  33050128  zext_int2long r[11:12], r2
001e7c  2b0600f0  lui r12, 983040
001e80  17353502  sll.d r[11:12], r[11:12], r3
001e84  1796c200  or r12, r5, r12
001e88  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001e8c  7f264500  l_gm2lm r12, r4, 0(r[11:12])
001e90  1b352100  slli r10, r2, 2
001e94  0b112310  add.s r2, r6, r2
001e98  00a00200  mfence { lm, gm }
001e9c  42000202  vload.mz vr0{mr1}, 0(r4)
001ea0  0b157510  add.s r10, r10, r7
001ea4  9f058500  addli r11, r10, 64
001ea8  86300000  vfp162float_l.rn vr1, vr0
001eac  06700000  vfp162float_h.rn vr0, vr0
001eb0  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001eb4  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
001eb8  3f0ff1fe  blt.s r2, r15, -64
001ebc  2bf10000  lui r2, 15
001ec0  e3411f00  loadli.w r3,  12(r30)
001ec4  00a00300  mfence { lm, sm, gm }
001ec8  1b11f1ff  ori r2, r2, 4095
001ecc  80210104  csr_set csr3, r2
001ed0  00d00100  sync_group
001ed4  4bb41124  ble.s r3, r1, 18700
001ed8  63012f00  loadli.w r2,  16(r30)
001edc  e3412f00  loadli.w r3,  20(r30)
001ee0  9f0b8fd7  addli r23, r30, -5184
001ee4  2b540100  lui r8, 21
001ee8  ab6a0100  lui r21, 22
001eec  2b7b0100  lui r22, 23
001ef0  1f150000  addli r10, zero, 1
001ef4  9f054000  addli r11, zero, 32
001ef8  1f767000  addli r12, zero, 63
001efc  1f080002  addli r16, zero, 256
001f00  1f090001  addli r18, zero, 128
001f04  9f098000  addli r19, zero, 64
001f08  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001f0c  1f040400  addli r8, r8, 0
001f10  9f8a0a00  addli r21, r21, 0
001f14  1f0b0b00  addli r22, r22, 0
001f18  0b123110  add.s r4, r2, r3
001f1c  b3020108  fix2float.rn r5, r2
001f20  9b381100  slli r17, r2, 1
001f24  1b332100  slli r6, r2, 2
001f28  1f014100  addli r2, r2, 32
001f2c  9bb42100  slli r9, r3, 2
001f30  670b2fd4  storeli.w r2, -5456(r30)
001f34  0b117311  add.s r2, r6, r23
001f38  1f72f2ff  addli r4, r4, -1
001f3c  0b937811  add.s r6, r17, r23
001f40  e70b5fd4  storeli.w r5, -5448(r30)
001f44  1f0181ff  addli r2, r2, -64
001f48  0b123230  div.s r4, r4, r3
001f4c  67042fd4  storeli.w r2, -5568(r30)
001f50  1f0183ff  addli r2, r6, -64
001f54  e7432fd4  storeli.w r2, -5572(r30)
001f58  2bf1ffff  lui r2, 1048575
001f5c  00a00000  mfence { lm }
001f60  670c1fd5  storeli.w r17, -5440(r30)
001f64  9b16f1ff  ori r13, r2, 4095
001f68  1f010fd7  addli r2, r30, -5248
001f6c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001f70  5b080000  j 64
001f74  9f038fd6  addli r7, r30, -5312
001f78  6b510f00  load.d r[3:4], 0(r30)
001f7c  ebd20300  load.d r[6:7], 0(r7)
001f80  00a00000  mfence { lm }
001f84  80530102  load_param_i r7, 2
001f88  e3088fd5  loadli.w r17,  -5440(r30)
001f8c  8b901310  add.s r1, r7, r1
001f90  0b215110  add.ul r[3:4], r[3:4], r[6:7]
001f94  2b0300f0  lui r6, 983040
001f98  17936800  or r6, r17, r6
001f9c  7f337101  s_lm2gm r6, r23, 0(r[3:4])
001fa0  00a00200  mfence { lm, gm }
001fa4  63411f00  loadli.w r2,  12(r30)
001fa8  3fa02000  blt.s r1, r2, 8
001fac  db060900  j 18484
001fb0  63011f00  loadli.w r2,  8(r30)
001fb4  0b912010  add.s r2, r1, r2
001fb8  0b11f120  mul.s r2, r2, r15
001fbc  33110128  sext_int2long r[3:4], r2
001fc0  173ca102  sll.d r[25:26], r[3:4], r10
001fc4  9f017fd6  addli r3, r30, -5320
001fc8  2b0100f0  lui r2, 983040
001fcc  ebd20100  load.d r[6:7], 0(r3)
001fd0  17912800  or r2, r17, r2
001fd4  9f018fd6  addli r3, r30, -5312
001fd8  73b08101  store.d r[25:26], 0(r3)
001fdc  0ba38211  add.ul r[7:8], r[6:7], r[25:26]
001fe0  7f217301  l_gm2lm r2, r23, 0(r[7:8])
001fe4  00a00200  mfence { lm, gm }
001fe8  bff0b700  blt.s r15, r11, 60
001fec  63417fd4  loadli.w r2,  -5572(r30)
001ff0  e3018fd4  loadli.w r3,  -5568(r30)
001ff4  63036fd5  loadli.w r6,  -5456(r30)
001ff8  c2000102  vload.mz vr1{mr1}, 0(r2)
001ffc  1f03c3ff  addli r6, r6, -32
002000  9f8881ff  addli r17, r3, -64
002004  1f0181ff  addli r2, r2, -64
002008  93036604  setlt.u r7, r12, r6
00200c  06f10000  vfp162float_h.rn vr2, vr1
002010  86b00000  vfp162float_l.rn vr1, vr1
002014  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
002018  9f8101ff  addli r3, r3, -128
00201c  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
002020  3bef03fe  bneq r7, zero, -40
002024  00a00000  mfence { lm }
002028  bf27a200  blt.s r4, r10, 488
00202c  1f0d0000  addli r26, zero, 0
002030  9f0c0000  addli r25, zero, 0
002034  9f0d0000  addli r27, zero, 0
002038  db0c0000  j 100
00203c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
002040  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002044  9f9d0d00  addli r27, r27, 1
002048  6a7108c0  vsrl.p vr2, r16, vr0
00204c  ea7118c0  vsrl.p vr3, r16, vr1
002050  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002054  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002058  6a7109c0  vsrl.p vr2, r18, vr0
00205c  ea7119c0  vsrl.p vr3, r18, vr1
002060  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002064  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002068  6af109c0  vsrl.p vr2, r19, vr0
00206c  eaf119c0  vsrl.p vr3, r19, vr1
002070  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002074  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002078  6af105c0  vsrl.p vr2, r11, vr0
00207c  eaf115c0  vsrl.p vr3, r11, vr1
002080  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002084  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002088  7a110040  vextracti.f r2, 0(vr0)
00208c  fa910040  vextracti.f r3, 0(vr1)
002090  0b6d2d10  add.f.rn r26, r26, r2
002094  8bec3c10  add.f.rn r25, r25, r3
002098  37864d00  beq r27, r4, 384
00209c  1f810d00  addli r2, r27, 0
0020a0  37300701  beq r14, r16, 12
0020a4  17a1dd00  xor r2, r27, r13
0020a8  0b112210  add.s r2, r4, r2
0020ac  8b11e120  mul.s r3, r2, r14
0020b0  8b913718  sub.s r3, r15, r3
0020b4  0b9ee140  min.s r28, r3, r14
0020b8  9f010fd7  addli r3, r30, -5248
0020bc  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0020c0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0020c4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0020c8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0020cc  bf4daefe  blt.s r28, r10, -144
0020d0  0b932420  mul.s r6, r9, r2
0020d4  1f010fd7  addli r2, r30, -5248
0020d8  1f0a0000  addli r20, zero, 0
0020dc  9f038fd7  addli r7, r30, -5184
0020e0  9f080400  addli r17, r8, 0
0020e4  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0020e8  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0020ec  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0020f0  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0020f4  0b916810  add.s r2, r17, r6
0020f8  8b916310  add.s r3, r7, r6
0020fc  9f0b8100  addli r23, r2, 64
002100  ca120102  vloads_mask16.mz vr5{mr1}, 0(r2)
002104  1f0c8101  addli r24, r2, 192
002108  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
00210c  9f828101  addli r5, r3, 192
002110  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
002114  9f0b0101  addli r23, r2, 128
002118  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
00211c  1f8c0101  addli r24, r3, 128
002120  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
002124  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
002128  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
00212c  9f8b8100  addli r23, r3, 64
002130  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
002134  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
002138  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
00213c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
002140  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
002144  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002148  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00214c  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
002150  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
002154  9f0b8a00  addli r23, r20, 64
002158  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
00215c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
002160  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002164  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002168  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00216c  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
002170  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
002174  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
002178  4b1b7eff  ble.s r28, r23, -316
00217c  9f0b0102  addli r23, r2, 256
002180  1f0c8102  addli r24, r2, 320
002184  9f820102  addli r5, r3, 256
002188  1f0a0a01  addli r20, r20, 128
00218c  9f880804  addli r17, r17, 512
002190  9f830304  addli r7, r7, 512
002194  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
002198  9f0b0103  addli r23, r2, 384
00219c  1f018103  addli r2, r2, 448
0021a0  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
0021a4  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
0021a8  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
0021ac  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
0021b0  1f810103  addli r2, r3, 384
0021b4  9f8b8102  addli r23, r3, 320
0021b8  9f818103  addli r3, r3, 448
0021bc  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
0021c0  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
0021c4  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0021c8  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
0021cc  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0021d0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0021d4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0021d8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0021dc  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
0021e0  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
0021e4  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0021e8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0021ec  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0021f0  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
0021f4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0021f8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0021fc  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
002200  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002204  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
002208  bf3bcaff  blt.s r20, r28, -276
00220c  5bc6ffff  j -464
002210  9f0c0000  addli r25, zero, 0
002214  1f0d0000  addli r26, zero, 0
002218  9f0b8fd7  addli r23, r30, -5184
00221c  00a00000  mfence { lm }
002220  bfd3a700  blt.s r15, r10, 244
002224  e3017fd5  loadli.w r3,  -5448(r30)
002228  e3023f00  loadli.w r5,  24(r30)
00222c  1f030000  addli r6, zero, 0
002230  1f0a0000  addli r20, zero, 0
002234  0f013d18  div.f.rn r2, r26, r3
002238  8f813c18  div.f.rn r3, r25, r3
00223c  8b632120  mul.f.rn r7, r2, r2
002240  8b680158  neg.f r17, r2
002244  8be17118  sub.f.rn r3, r3, r7
002248  8be15110  add.f.rn r3, r3, r5
00224c  ab02803f  lui r5, 260096
002250  8f810108  sqrt.f.rn r3, r3
002254  8f833218  div.f.rn r7, r5, r3
002258  8b115311  add.s r3, r6, r21
00225c  0b916b10  add.s r2, r23, r6
002260  9f8c8100  addli r25, r3, 64
002264  4a910102  vloads_mask16.mz vr2{mr1}, 0(r3)
002268  8b116311  add.s r3, r6, r22
00226c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
002270  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
002274  9f0c8100  addli r25, r2, 64
002278  4a920102  vloads_mask16.mz vr4{mr1}, 0(r3)
00227c  9f818100  addli r3, r3, 64
002280  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
002284  4a930102  vloads_mask16.mz vr6{mr1}, 0(r3)
002288  9f014a00  addli r3, r20, 32
00228c  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
002290  92925802  vadd.f.mz.rn vr5{mr1}, r17, vr5
002294  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
002298  8a925302  vmul.f.mz.rn vr5{mr1}, r7, vr5
00229c  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
0022a0  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
0022a4  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
0022a8  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
0022ac  cba13700  ble.s r15, r3, 104
0022b0  8b916a10  add.s r3, r21, r6
0022b4  8b1c6b10  add.s r25, r22, r6
0022b8  1f0a8a00  addli r20, r20, 64
0022bc  1f030302  addli r6, r6, 256
0022c0  1f8d0101  addli r26, r3, 128
0022c4  9f8d0c01  addli r27, r25, 128
0022c8  9f818101  addli r3, r3, 192
0022cc  9f8c8c01  addli r25, r25, 192
0022d0  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
0022d4  1f0d0101  addli r26, r2, 128
0022d8  1f018101  addli r2, r2, 192
0022dc  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
0022e0  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
0022e4  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
0022e8  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
0022ec  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0022f0  92913802  vadd.f.mz.rn vr3{mr1}, r17, vr3
0022f4  12924802  vadd.f.mz.rn vr4{mr1}, r17, vr4
0022f8  8a913302  vmul.f.mz.rn vr3{mr1}, r7, vr3
0022fc  0a924302  vmul.f.mz.rn vr4{mr1}, r7, vr4
002300  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
002304  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
002308  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
00230c  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
002310  3f2dfafe  blt.s r20, r15, -184
002314  00a00000  mfence { lm }
002318  3ff1a7fe  blt.s r15, r10, -932
00231c  1f018fd7  addli r2, r30, -5184
002320  9f018fd7  addli r3, r30, -5184
002324  1f030000  addli r6, zero, 0
002328  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00232c  9f838100  addli r7, r3, 64
002330  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
002334  1f034300  addli r6, r6, 32
002338  9f810101  addli r3, r3, 128
00233c  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
002340  86910000  vfloat2fp16_l.rn vr3, vr1
002344  86510100  vfloat2fp16_h.rn vr3, vr2
002348  46003102  vstore.mz vr3{mr1}, 0(r2)
00234c  1f018100  addli r2, r2, 64
002350  3f6ff3fe  blt.s r6, r15, -40
002354  5b84ffff  j -992
002358  e3002f00  loadli.w r1,  16(r30)
00235c  1f010010  addli r2, zero, 2048
002360  bbd02008  bneq r1, r2, 4148
002364  2ba10200  lui r2, 42
002368  803d0002  core_id r27
00236c  1f010108  addli r2, r2, 1024
002370  3bd00d00  bneq r27, zero, 20
002374  9f010040  addli r3, zero, 8192
002378  2b0300f0  lui r6, 983040
00237c  97916100  or r3, r3, r6
002380  ff012200  l_gm2sm r3, r2, 0(r[5:6])
002384  abf10000  lui r3, 15
002388  00200300  mfence { sm, gm }
00238c  1b8e1d00  andi r28, r27, 1
002390  1f030006  addli r6, zero, 768
002394  1b92f1ff  ori r4, r3, 4095
002398  80210204  csr_set csr3, r4
00239c  1f020006  addli r4, zero, 768
0023a0  00d00100  sync_group
0023a4  37200e00  beq r28, zero, 8
0023a8  1f02000a  addli r4, zero, 1280
0023ac  e3421f00  loadli.w r5,  12(r30)
0023b0  9f130000  addli r7, zero, 1
0023b4  bfb07222  blt.s r5, r7, 17452
0023b8  80530102  load_param_i r7, 2
0023bc  abf0ffff  lui r1, 1048575
0023c0  abc90200  lui r19, 44
0023c4  2bcc0200  lui r24, 44
0023c8  2bf50000  lui r10, 15
0023cc  8b116e20  mul.s r3, r28, r6
0023d0  9f020000  addli r5, zero, 0
0023d4  1bc41d00  srli r8, r27, 1
0023d8  9b342200  slli r9, r4, 2
0023dc  9f270000  addli r15, zero, 2
0023e0  9f058fd7  addli r11, r30, -5184
0023e4  1f030fd7  addli r6, r30, -5248
0023e8  1f070005  addli r14, zero, 640
0023ec  1f080001  addli r16, zero, 128
0023f0  9f088000  addli r17, zero, 64
0023f4  1f094000  addli r18, zero, 32
0023f8  9f0b0003  addli r23, zero, 384
0023fc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002400  9b9000f8  ori r1, r1, 3968
002404  9bc31300  srli r7, r7, 1
002408  9f890908  addli r19, r19, 1024
00240c  1b1af5ff  ori r20, r10, 4095
002410  1f0c0c0c  addli r24, r24, 1536
002414  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
002418  67041fd6  storeli.w r1, -5312(r30)
00241c  db030000  j 28
002420  00a00300  mfence { lm, sm, gm }
002424  80210a04  csr_set csr3, r20
002428  00d00100  sync_group
00242c  8b927210  add.s r5, r5, r7
002430  3fa09201  blt.s r5, r25, 8
002434  db0ffdff  j -6020
002438  0b958210  add.s r10, r5, r8
00243c  cb9facfe  ble.s r25, r10, -28
002440  e3001f00  loadli.w r1,  8(r30)
002444  0b151510  add.s r10, r10, r1
002448  9f007fd6  addli r1, r30, -5320
00244c  1b35b500  slli r10, r10, 11
002450  17153500  or r10, r10, r3
002454  33160528  sext_int2long r[13:14], r10
002458  2b0500f0  lui r10, 983040
00245c  973cf602  sll.d r[26:27], r[13:14], r15
002460  6bd60000  load.d r[13:14], 0(r1)
002464  1795a400  or r10, r9, r10
002468  0b269611  add.ul r[13:14], r[13:14], r[26:27]
00246c  7f25b600  l_gm2lm r10, r11, 0(r[13:14])
002470  00a00200  mfence { lm, gm }
002474  3b260e00  bneq r28, zero, 392
002478  9f000fd7  addli r1, r30, -5248
00247c  630b8fd6  loadli.w r22,  -5312(r30)
002480  1f050000  addli r10, zero, 0
002484  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
002488  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00248c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
002490  12323002  vadd.s.mz vr4{mr1}, zero, vr3
002494  8b162510  add.s r13, r10, r2
002498  0b96a510  add.s r12, r11, r10
00249c  1f0b0b01  addli r22, r22, 128
0024a0  1f050504  addli r10, r10, 512
0024a4  9f800601  addli r1, r13, 128
0024a8  4a900602  vloads_mask16.mz vr0{mr1}, 0(r13)
0024ac  1f838600  addli r6, r13, 64
0024b0  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
0024b4  9f0a8601  addli r21, r12, 192
0024b8  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
0024bc  9f808601  addli r1, r13, 192
0024c0  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0024c4  1f038600  addli r6, r12, 64
0024c8  c2950a02  vload_mask16.mz vr11{mr1}, 0(r21)
0024cc  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
0024d0  9f000601  addli r1, r12, 128
0024d4  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0024d8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0024dc  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0024e0  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0024e4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0024e8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0024ec  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0024f0  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
0024f4  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0024f8  9f800602  addli r1, r13, 256
0024fc  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002500  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002504  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002508  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
00250c  1f030603  addli r6, r12, 384
002510  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002514  9f808602  addli r1, r13, 320
002518  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
00251c  9f0a0602  addli r21, r12, 256
002520  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002524  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
002528  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00252c  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002530  9f800603  addli r1, r13, 384
002534  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
002538  9f868603  addli r13, r13, 448
00253c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002540  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
002544  9f008602  addli r1, r12, 320
002548  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
00254c  1f068603  addli r12, r12, 448
002550  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002554  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
002558  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
00255c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002560  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
002564  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002568  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00256c  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
002570  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002574  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
002578  9300eb04  setlt.u r1, r22, r14
00257c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002580  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002584  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002588  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00258c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002590  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
002594  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
002598  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00259c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0025a0  bbdb00fe  bneq r1, zero, -268
0025a4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0025a8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0025ac  9f000002  addli r1, zero, 256
0025b0  6af100c0  vsrl.p vr2, r1, vr0
0025b4  eaf110c0  vsrl.p vr3, r1, vr1
0025b8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0025bc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0025c0  6a7108c0  vsrl.p vr2, r16, vr0
0025c4  ea7118c0  vsrl.p vr3, r16, vr1
0025c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0025cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0025d0  6af108c0  vsrl.p vr2, r17, vr0
0025d4  eaf118c0  vsrl.p vr3, r17, vr1
0025d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0025dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0025e0  6a7109c0  vsrl.p vr2, r18, vr0
0025e4  ea7119c0  vsrl.p vr3, r18, vr1
0025e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0025ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0025f0  7a160040  vextracti.f r12, 0(vr0)
0025f4  7a950040  vextracti.f r10, 0(vr1)
0025f8  5b650000  j 808
0025fc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002600  abf0ffff  lui r1, 1048575
002604  9f070e00  addli r15, r28, 0
002608  1f050000  addli r10, zero, 0
00260c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002610  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002614  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002618  9b9d00f8  ori r27, r1, 3968
00261c  0b16a110  add.s r12, r2, r10
002620  0b9ba510  add.s r22, r11, r10
002624  9f8d0d01  addli r27, r27, 128
002628  1f050504  addli r10, r10, 512
00262c  9f000631  addli r1, r12, 6272
002630  9f060630  addli r13, r12, 6144
002634  1f038631  addli r6, r12, 6336
002638  1f0e0b18  addli r28, r22, 3072
00263c  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
002640  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
002644  9f068630  addli r13, r12, 6208
002648  ca140302  vloads_mask16.mz vr9{mr1}, 0(r6)
00264c  1f030b19  addli r6, r22, 3200
002650  9f008b18  addli r1, r22, 3136
002654  42130e02  vload_mask16.mz vr6{mr1}, 0(r28)
002658  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
00265c  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
002660  9f068b19  addli r13, r22, 3264
002664  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
002668  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
00266c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
002670  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
002674  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
002678  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
00267c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002680  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
002684  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
002688  1f030632  addli r6, r12, 6400
00268c  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
002690  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
002694  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002698  46106e02  vstore_mask16.mz vr6{mr1}, 0(r28)
00269c  9f060b1a  addli r13, r22, 3328
0026a0  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
0026a4  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0026a8  9f000b1b  addli r1, r22, 3456
0026ac  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0026b0  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0026b4  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
0026b8  1f038632  addli r6, r12, 6464
0026bc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0026c0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0026c4  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0026c8  1f030633  addli r6, r12, 6528
0026cc  1f068633  addli r12, r12, 6592
0026d0  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
0026d4  1f038b1a  addli r6, r22, 3392
0026d8  4a150602  vloads_mask16.mz vr10{mr1}, 0(r12)
0026dc  1f068b1b  addli r12, r22, 3520
0026e0  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
0026e4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0026e8  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0026ec  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0026f0  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0026f4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0026f8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0026fc  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
002700  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002704  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
002708  13837d05  setlt.u r6, r27, r23
00270c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002710  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002714  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002718  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00271c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002720  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
002724  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
002728  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00272c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002730  bb3b03fe  bneq r6, zero, -276
002734  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002738  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00273c  9f000002  addli r1, zero, 256
002740  1f050000  addli r10, zero, 0
002744  eaf110c0  vsrl.p vr3, r1, vr1
002748  6af100c0  vsrl.p vr2, r1, vr0
00274c  abf0ffff  lui r1, 1048575
002750  1b9b00f8  ori r22, r1, 3968
002754  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002758  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00275c  ea7118c0  vsrl.p vr3, r16, vr1
002760  6a7108c0  vsrl.p vr2, r16, vr0
002764  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002768  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00276c  eaf118c0  vsrl.p vr3, r17, vr1
002770  6af108c0  vsrl.p vr2, r17, vr0
002774  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002778  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00277c  ea7119c0  vsrl.p vr3, r18, vr1
002780  6a7109c0  vsrl.p vr2, r18, vr0
002784  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002788  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00278c  7a9e0040  vextracti.f r28, 0(vr1)
002790  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002794  fa1d0040  vextracti.f r27, 0(vr0)
002798  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00279c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0027a0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0027a4  8b16a110  add.s r13, r2, r10
0027a8  0b96a510  add.s r12, r11, r10
0027ac  1f0b0b01  addli r22, r22, 128
0027b0  1f050504  addli r10, r10, 512
0027b4  9f800618  addli r1, r13, 3072
0027b8  1f830619  addli r6, r13, 3200
0027bc  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
0027c0  9f0a8601  addli r21, r12, 192
0027c4  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0027c8  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
0027cc  9f808618  addli r1, r13, 3136
0027d0  1f838619  addli r6, r13, 3264
0027d4  c2950a02  vload_mask16.mz vr11{mr1}, 0(r21)
0027d8  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0027dc  9f000601  addli r1, r12, 128
0027e0  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
0027e4  1f038600  addli r6, r12, 64
0027e8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0027ec  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0027f0  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0027f4  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0027f8  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0027fc  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002800  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002804  9f80061a  addli r1, r13, 3328
002808  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00280c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002810  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002814  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002818  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
00281c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002820  9f80861a  addli r1, r13, 3392
002824  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
002828  9f0a0602  addli r21, r12, 256
00282c  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
002830  1f030603  addli r6, r12, 384
002834  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
002838  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00283c  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002840  9f80061b  addli r1, r13, 3456
002844  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
002848  9f86861b  addli r13, r13, 3520
00284c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002850  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002854  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
002858  9f008602  addli r1, r12, 320
00285c  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
002860  1f068603  addli r12, r12, 448
002864  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002868  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00286c  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
002870  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002874  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
002878  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00287c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002880  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
002884  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002888  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
00288c  9300eb04  setlt.u r1, r22, r14
002890  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002894  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002898  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00289c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0028a0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0028a4  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
0028a8  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0028ac  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0028b0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0028b4  bbcb00fe  bneq r1, zero, -272
0028b8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0028bc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0028c0  9f000002  addli r1, zero, 256
0028c4  6af100c0  vsrl.p vr2, r1, vr0
0028c8  eaf110c0  vsrl.p vr3, r1, vr1
0028cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028d4  6a7108c0  vsrl.p vr2, r16, vr0
0028d8  ea7118c0  vsrl.p vr3, r16, vr1
0028dc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028e0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028e4  6af108c0  vsrl.p vr2, r17, vr0
0028e8  eaf118c0  vsrl.p vr3, r17, vr1
0028ec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028f0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028f4  6a7109c0  vsrl.p vr2, r18, vr0
0028f8  ea7119c0  vsrl.p vr3, r18, vr1
0028fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002900  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002904  fa100040  vextracti.f r1, 0(vr0)
002908  7a930040  vextracti.f r6, 0(vr1)
00290c  0be61d10  add.f.rn r12, r27, r1
002910  0b656e10  add.f.rn r10, r28, r6
002914  1f8e0700  addli r28, r15, 0
002918  803d0002  core_id r27
00291c  9f270000  addli r15, zero, 2
002920  8b807230  div.u r1, r5, r7
002924  1f0b0000  addli r22, zero, 0
002928  9bb06000  slli r1, r1, 6
00292c  9b800004  andi r1, r1, 64
002930  9790b001  or r1, r1, r27
002934  1bb32000  slli r6, r1, 2
002938  9b80e007  andi r1, r1, 126
00293c  8b163311  add.s r13, r6, r19
002940  9bb02000  slli r1, r1, 2
002944  73e0c600  stores.w r12, 0(r13)
002948  0b168311  add.s r12, r6, r24
00294c  1b134300  ori r6, r6, 4
002950  9f068fd7  addli r13, r30, -5184
002954  7360a600  stores.w r10, 0(r12)
002958  0b153311  add.s r10, r6, r19
00295c  0b963011  add.s r12, r1, r19
002960  0b138311  add.s r6, r6, r24
002964  8b908011  add.s r1, r1, r24
002968  00a00300  mfence { lm, sm, gm }
00296c  80210a04  csr_set csr3, r20
002970  00d00100  sync_group
002974  6f450500  loads.w r10, 0(r10)
002978  6f460600  loads.w r12, 0(r12)
00297c  6f430300  loads.w r6, 0(r6)
002980  efc00000  loads.w r1, 0(r1)
002984  0b65c510  add.f.rn r10, r10, r12
002988  2b06003a  lui r12, 237568
00298c  8b601310  add.f.rn r1, r6, r1
002990  0b63c520  mul.f.rn r6, r10, r12
002994  8be0c020  mul.f.rn r1, r1, r12
002998  0b656320  mul.f.rn r10, r6, r6
00299c  0b660358  neg.f r12, r6
0029a0  8be0a018  sub.f.rn r1, r1, r10
0029a4  63053f00  loadli.w r10,  24(r30)
0029a8  8be0a010  add.f.rn r1, r1, r10
0029ac  2b05803f  lui r10, 260096
0029b0  8f800008  sqrt.f.rn r1, r1
0029b4  0f051518  div.f.rn r10, r10, r1
0029b8  9f808600  addli r1, r13, 64
0029bc  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
0029c0  1f034b00  addli r6, r22, 32
0029c4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0029c8  13036206  setle.u r6, r4, r6
0029cc  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
0029d0  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
0029d4  0a100502  vmul.f.mz.rn vr0{mr1}, r10, vr0
0029d8  8a101502  vmul.f.mz.rn vr1{mr1}, r10, vr1
0029dc  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
0029e0  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0029e4  bb700300  bneq r6, zero, 60
0029e8  9f800601  addli r1, r13, 128
0029ec  1f838601  addli r6, r13, 192
0029f0  1f0b8b00  addli r22, r22, 64
0029f4  9f860602  addli r13, r13, 256
0029f8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0029fc  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
002a00  930a4b04  setlt.u r21, r22, r4
002a04  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
002a08  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
002a0c  0a100502  vmul.f.mz.rn vr0{mr1}, r10, vr0
002a10  8a101502  vmul.f.mz.rn vr1{mr1}, r10, vr1
002a14  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002a18  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
002a1c  3bfe0afe  bneq r21, zero, -100
002a20  6b560f00  load.d r[13:14], 0(r30)
002a24  ab0000f0  lui r1, 983040
002a28  00a00000  mfence { lm }
002a2c  97901400  or r1, r9, r1
002a30  0b269611  add.ul r[13:14], r[13:14], r[26:27]
002a34  ff30b600  s_lm2gm r1, r11, 0(r[13:14])
002a38  00a00200  mfence { lm, gm }
002a3c  e34c1f00  loadli.w r25,  12(r30)
002a40  db3dffff  j -1556
002a44  80300002  core_id r1
002a48  bb800000  bneq r1, zero, 32
002a4c  63012f00  loadli.w r2,  16(r30)
002a50  ab0100f0  lui r3, 983040
002a54  1b311100  slli r2, r2, 1
002a58  17113100  or r2, r2, r3
002a5c  abc10100  lui r3, 28
002a60  9f810100  addli r3, r3, 0
002a64  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002a68  2bf10000  lui r2, 15
002a6c  e3411f00  loadli.w r3,  12(r30)
002a70  00200300  mfence { sm, gm }
002a74  1b11f1ff  ori r2, r2, 4095
002a78  80210104  csr_set csr3, r2
002a7c  00d00100  sync_group
002a80  cb85111e  ble.s r3, r1, 15712
002a84  63012f00  loadli.w r2,  16(r30)
002a88  e3412f00  loadli.w r3,  20(r30)
002a8c  1f052000  addli r10, zero, 16
002a90  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002a94  1f130000  addli r6, zero, 1
002a98  9f040002  addli r9, zero, 256
002a9c  ab05ffff  lui r11, 1048560
002aa0  ab06807f  lui r13, 522240
002aa4  2b08c07f  lui r16, 523264
002aa8  9f080001  addli r17, zero, 128
002aac  1f098000  addli r18, zero, 64
002ab0  9f094000  addli r19, zero, 32
002ab4  1b3b1100  slli r22, r2, 1
002ab8  0b123110  add.s r4, r2, r3
002abc  33010108  fix2float.rn r2, r2
002ac0  670b2fd4  storeli.w r2, -5456(r30)
002ac4  1f71f2ff  addli r2, r4, -1
002ac8  1bb21100  slli r4, r3, 1
002acc  e70b6fd5  storeli.w r22, -5448(r30)
002ad0  8b123130  div.s r5, r2, r3
002ad4  2bf1ffff  lui r2, 1048575
002ad8  9f018fd7  addli r3, r30, -5184
002adc  1b14f1ff  ori r8, r2, 4095
002ae0  1f010fd7  addli r2, r30, -5248
002ae4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002ae8  6a200522  vor.u.mz vr0{mr1}, r10, vr0
002aec  1f018fd6  addli r2, r30, -5312
002af0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002af4  2b710000  lui r2, 7
002af8  1b16f1ff  ori r12, r2, 4095
002afc  db080000  j 68
002b00  9f018fd5  addli r3, r30, -5440
002b04  00a00000  mfence { lm }
002b08  6b5a0f00  load.d r[21:22], 0(r30)
002b0c  2b0100f0  lui r2, 983040
002b10  80530102  load_param_i r7, 2
002b14  6bdb0100  load.d r[23:24], 0(r3)
002b18  9f018fd7  addli r3, r30, -5184
002b1c  8b901310  add.s r1, r7, r1
002b20  0b2a6a11  add.ul r[21:22], r[21:22], r[23:24]
002b24  630b7fd5  loadli.w r22,  -5448(r30)
002b28  17112b00  or r2, r22, r2
002b2c  7f313a00  s_lm2gm r2, r3, 0(r[21:22])
002b30  00a00200  mfence { lm, gm }
002b34  63411f00  loadli.w r2,  12(r30)
002b38  3fa02000  blt.s r1, r2, 8
002b3c  db940700  j 15524
002b40  63011f00  loadli.w r2,  8(r30)
002b44  9f037fd6  addli r7, r30, -5320
002b48  0b912010  add.s r2, r1, r2
002b4c  0b11f120  mul.s r2, r2, r15
002b50  331a0128  sext_int2long r[21:22], r2
002b54  2b0100f0  lui r2, 983040
002b58  973b6a02  sll.d r[24:25], r[21:22], r6
002b5c  6bda0300  load.d r[21:22], 0(r7)
002b60  17112b00  or r2, r22, r2
002b64  9f038fd5  addli r7, r30, -5440
002b68  73b07301  store.d r[24:25], 0(r7)
002b6c  0b2a7a11  add.ul r[21:22], r[21:22], r[24:25]
002b70  7f213a00  l_gm2lm r2, r3, 0(r[21:22])
002b74  00a00200  mfence { lm, gm }
002b78  bfdc6200  blt.s r5, r6, 820
002b7c  9f0c0000  addli r25, zero, 0
002b80  1f0c0000  addli r24, zero, 0
002b84  1f0d0000  addli r26, zero, 0
002b88  db0c0000  j 100
002b8c  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
002b90  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
002b94  1f1d0d00  addli r26, r26, 1
002b98  6af104c0  vsrl.p vr2, r9, vr0
002b9c  eaf114c0  vsrl.p vr3, r9, vr1
002ba0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002ba4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002ba8  6af108c0  vsrl.p vr2, r17, vr0
002bac  eaf118c0  vsrl.p vr3, r17, vr1
002bb0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002bb4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002bb8  6a7109c0  vsrl.p vr2, r18, vr0
002bbc  ea7119c0  vsrl.p vr3, r18, vr1
002bc0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002bc4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002bc8  6af109c0  vsrl.p vr2, r19, vr0
002bcc  eaf119c0  vsrl.p vr3, r19, vr1
002bd0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002bd4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002bd8  7a110040  vextracti.f r2, 0(vr0)
002bdc  fa910040  vextracti.f r3, 0(vr1)
002be0  8bec2c10  add.f.rn r25, r25, r2
002be4  0b6c3c10  add.f.rn r24, r24, r3
002be8  373b5d00  beq r26, r5, 716
002bec  1f010d00  addli r2, r26, 0
002bf0  37309700  beq r14, r9, 12
002bf4  17218d00  xor r2, r26, r8
002bf8  0b912210  add.s r2, r5, r2
002bfc  9f010fd7  addli r3, r30, -5248
002c00  8b13e120  mul.s r7, r2, r14
002c04  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
002c08  8b937718  sub.s r7, r15, r7
002c0c  8b9de340  min.s r27, r7, r14
002c10  92322002  vadd.s.mz vr5{mr1}, zero, vr2
002c14  12322002  vadd.s.mz vr4{mr1}, zero, vr2
002c18  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002c1c  bfcd6dfe  blt.s r27, r6, -144
002c20  0b1a2220  mul.s r20, r4, r2
002c24  1f010fd7  addli r2, r30, -5248
002c28  abca0100  lui r21, 28
002c2c  1f0e0000  addli r28, zero, 0
002c30  9f038fd7  addli r7, r30, -5184
002c34  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
002c38  9f8a0a00  addli r21, r21, 0
002c3c  12315002  vadd.s.mz vr2{mr1}, zero, vr5
002c40  92315002  vadd.s.mz vr3{mr1}, zero, vr5
002c44  12325002  vadd.s.mz vr4{mr1}, zero, vr5
002c48  0b9b4a11  add.s r22, r21, r20
002c4c  0b914311  add.s r2, r7, r20
002c50  9f018fd6  addli r3, r30, -5312
002c54  4a030b02  vloads.mz vr6{mr1}, 0(r22)
002c58  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002c5c  c2030102  vload.mz vr7{mr1}, 0(r2)
002c60  9f010fd7  addli r3, r30, -5248
002c64  9f0b8b00  addli r23, r22, 64
002c68  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
002c6c  9f018e00  addli r3, r28, 64
002c70  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
002c74  6ab57502  vand.s.mz vr10{mr1}, r11, vr7
002c78  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
002c7c  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002c80  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
002c84  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
002c88  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
002c8c  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
002c90  669503c0  vabs.f vr10, vr7
002c94  6a348302  vand.s.mz vr8{mr1}, r6, vr8
002c98  ea349302  vand.s.mz vr9{mr1}, r6, vr9
002c9c  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
002ca0  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
002ca4  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
002ca8  12348602  vadd.s.mz vr8{mr1}, r12, vr8
002cac  92349602  vadd.s.mz vr9{mr1}, r12, vr9
002cb0  eab38502  vand.s.mz vr7{mr1}, r11, vr8
002cb4  661403c0  vabs.f vr8, vr6
002cb8  6ab39502  vand.s.mz vr6{mr1}, r11, vr9
002cbc  ea230834  vor.u.mh vr7{mr2}, r16, vr0
002cc0  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
002cc4  6a230834  vor.u.mh vr6{mr2}, r16, vr0
002cc8  4a840b02  vloads.mz vr8{mr1}, 0(r23)
002ccc  9f0b8100  addli r23, r2, 64
002cd0  c2840b02  vload.mz vr9{mr1}, 0(r23)
002cd4  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
002cd8  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
002cdc  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002ce0  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
002ce4  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002ce8  46007102  vstore.mz vr7{mr1}, 0(r2)
002cec  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002cf0  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002cf4  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
002cf8  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
002cfc  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002d00  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002d04  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002d08  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
002d0c  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
002d10  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
002d14  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
002d18  ea349302  vand.s.mz vr9{mr1}, r6, vr9
002d1c  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002d20  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
002d24  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
002d28  661505c0  vabs.f vr10, vr10
002d2c  661404c0  vabs.f vr8, vr8
002d30  92349602  vadd.s.mz vr9{mr1}, r12, vr9
002d34  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002d38  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
002d3c  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002d40  6ab5b502  vand.s.mz vr10{mr1}, r11, vr11
002d44  ea240834  vor.u.mh vr9{mr2}, r16, vr0
002d48  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
002d4c  6a250834  vor.u.mh vr10{mr2}, r16, vr0
002d50  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
002d54  eab4a502  vand.s.mz vr9{mr1}, r11, vr10
002d58  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
002d5c  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002d60  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002d64  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
002d68  46808b02  vstore.mz vr8{mr1}, 0(r23)
002d6c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002d70  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002d74  4be83dfe  ble.s r27, r3, -488
002d78  9f010b01  addli r3, r22, 128
002d7c  9f0b0101  addli r23, r2, 128
002d80  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
002d84  1f018101  addli r2, r2, 192
002d88  1f0e0e01  addli r28, r28, 128
002d8c  9f8a0a02  addli r21, r21, 256
002d90  9f830302  addli r7, r7, 256
002d94  6a237522  vor.u.mz vr6{mr1}, r10, vr7
002d98  4a840102  vloads.mz vr8{mr1}, 0(r3)
002d9c  c2840b02  vload.mz vr9{mr1}, 0(r23)
002da0  9f018b01  addli r3, r22, 192
002da4  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
002da8  6ab09502  vand.s.mz vr0{mr1}, r11, vr9
002dac  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
002db0  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002db4  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
002db8  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
002dbc  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
002dc0  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
002dc4  e69504c0  vabs.f vr11, vr9
002dc8  6a300302  vand.s.mz vr0{mr1}, r6, vr0
002dcc  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002dd0  72a1b642  vlt.u.mz mr2{mr1}, r13, vr11
002dd4  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
002dd8  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
002ddc  12300602  vadd.s.mz vr0{mr1}, r12, vr0
002de0  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002de4  eab40502  vand.s.mz vr9{mr1}, r11, vr0
002de8  661004c0  vabs.f vr0, vr8
002dec  6ab4a502  vand.s.mz vr8{mr1}, r11, vr10
002df0  ea247834  vor.u.mh vr9{mr2}, r16, vr7
002df4  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002df8  6a247834  vor.u.mh vr8{mr2}, r16, vr7
002dfc  4a800102  vloads.mz vr0{mr1}, 0(r3)
002e00  42050102  vload.mz vr10{mr1}, 0(r2)
002e04  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
002e08  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
002e0c  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002e10  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
002e14  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002e18  46809b02  vstore.mz vr9{mr1}, 0(r23)
002e1c  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
002e20  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
002e24  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
002e28  6ab00502  vand.s.mz vr0{mr1}, r11, vr0
002e2c  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
002e30  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
002e34  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
002e38  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
002e3c  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002e40  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002e44  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
002e48  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
002e4c  e69000c0  vabs.f vr1, vr1
002e50  661000c0  vabs.f vr0, vr0
002e54  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002e58  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002e5c  72a11642  vlt.u.mz mr2{mr1}, r13, vr1
002e60  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002e64  eab0b502  vand.s.mz vr1{mr1}, r11, vr11
002e68  6a257834  vor.u.mh vr10{mr2}, r16, vr7
002e6c  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002e70  ea207834  vor.u.mh vr1{mr2}, r16, vr7
002e74  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
002e78  eab31502  vand.s.mz vr7{mr1}, r11, vr1
002e7c  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
002e80  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
002e84  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002e88  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002e8c  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
002e90  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
002e94  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
002e98  46000102  vstore.mz vr0{mr1}, 0(r2)
002e9c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002ea0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002ea4  bf16beff  blt.s r28, r27, -604
002ea8  db9cffff  j -796
002eac  1f0c0000  addli r24, zero, 0
002eb0  9f0c0000  addli r25, zero, 0
002eb4  00a00000  mfence { lm }
002eb8  3fa167fe  blt.s r15, r6, -952
002ebc  63016fd5  loadli.w r2,  -5456(r30)
002ec0  e3013f00  loadli.w r3,  24(r30)
002ec4  9f0a0000  addli r21, zero, 0
002ec8  8f832c18  div.f.rn r7, r25, r2
002ecc  0f012c18  div.f.rn r2, r24, r2
002ed0  0bea7320  mul.f.rn r20, r7, r7
002ed4  8be30358  neg.f r7, r7
002ed8  0b614119  sub.f.rn r2, r2, r20
002edc  1f0a8fd7  addli r20, r30, -5184
002ee0  0b613110  add.f.rn r2, r2, r3
002ee4  ab01803f  lui r3, 260096
002ee8  0f010108  sqrt.f.rn r2, r2
002eec  0f812118  div.f.rn r2, r3, r2
002ef0  42020a02  vload.mz vr4{mr1}, 0(r20)
002ef4  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
002ef8  1f8b4a00  addli r22, r21, 32
002efc  ea212522  vor.u.mz vr3{mr1}, r10, vr2
002f00  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002f04  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002f08  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002f0c  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002f10  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002f14  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002f18  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002f1c  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002f20  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002f24  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002f28  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002f2c  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002f30  e69202c0  vabs.f vr5, vr5
002f34  661202c0  vabs.f vr4, vr4
002f38  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002f3c  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002f40  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002f44  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002f48  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002f4c  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002f50  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002f54  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002f58  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
002f5c  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
002f60  46004a02  vstore.mz vr4{mr1}, 0(r20)
002f64  4bfe67fd  ble.s r15, r22, -1124
002f68  1f0b8a00  addli r22, r20, 64
002f6c  9f8a8a00  addli r21, r21, 64
002f70  1f0a0a01  addli r20, r20, 128
002f74  42020b02  vload.mz vr4{mr1}, 0(r22)
002f78  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002f7c  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002f80  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002f84  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002f88  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002f8c  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002f90  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002f94  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002f98  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002f9c  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002fa0  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002fa4  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002fa8  e69202c0  vabs.f vr5, vr5
002fac  661202c0  vabs.f vr4, vr4
002fb0  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002fb4  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002fb8  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002fbc  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002fc0  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002fc4  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002fc8  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002fcc  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002fd0  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
002fd4  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
002fd8  46002b02  vstore.mz vr2{mr1}, 0(r22)
002fdc  3fdcfafe  blt.s r21, r15, -236
002fe0  5b64ffff  j -1248
002fe4  80300002  core_id r1
002fe8  bb800000  bneq r1, zero, 32
002fec  63012f00  loadli.w r2,  16(r30)
002ff0  ab0100f0  lui r3, 983040
002ff4  1b311100  slli r2, r2, 1
002ff8  17113100  or r2, r2, r3
002ffc  ab010200  lui r3, 32
003000  9f810100  addli r3, r3, 0
003004  7f013200  l_gm2sm r2, r3, 0(r[5:6])
003008  2bf10000  lui r2, 15
00300c  e3411f00  loadli.w r3,  12(r30)
003010  00200300  mfence { sm, gm }
003014  1b11f1ff  ori r2, r2, 4095
003018  80210104  csr_set csr3, r2
00301c  00d00100  sync_group
003020  4b8f111a  ble.s r3, r1, 14272
003024  e3012f00  loadli.w r3,  16(r30)
003028  e3422f00  loadli.w r5,  20(r30)
00302c  2bf4ffff  lui r8, 1048575
003030  2b080200  lui r16, 32
003034  9f068fd7  addli r13, r30, -5184
003038  9f040002  addli r9, zero, 256
00303c  1f050001  addli r10, zero, 128
003040  9f058000  addli r11, zero, 64
003044  1f064000  addli r12, zero, 32
003048  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00304c  1b14f4ff  ori r8, r8, 4095
003050  1f080800  addli r16, r16, 0
003054  0b925110  add.s r4, r3, r5
003058  1bb11100  slli r2, r3, 1
00305c  b3810108  fix2float.rn r3, r3
003060  1f73f2ff  addli r6, r4, -1
003064  1bb21200  slli r4, r5, 1
003068  8b125330  div.s r5, r6, r5
00306c  1f130000  addli r6, zero, 1
003070  5b070000  j 56
003074  00a00000  mfence { lm }
003078  6b5a0f00  load.d r[21:22], 0(r30)
00307c  ab0900f0  lui r19, 983040
003080  9f068fd7  addli r13, r30, -5184
003084  97193101  or r19, r2, r19
003088  8b281a11  add.ul r[18:19], r[21:22], r[18:19]
00308c  005a0102  load_param_i r20, 2
003090  ffb9d800  s_lm2gm r19, r13, 0(r[18:19])
003094  8b101a10  add.s r1, r20, r1
003098  00a00200  mfence { lm, gm }
00309c  e3431f00  loadli.w r7,  12(r30)
0030a0  3fa07000  blt.s r1, r7, 8
0030a4  dbe70600  j 14140
0030a8  e3031f00  loadli.w r7,  8(r30)
0030ac  ab0900f0  lui r19, 983040
0030b0  97193101  or r19, r2, r19
0030b4  8b987010  add.s r17, r1, r7
0030b8  9f037fd6  addli r7, r30, -5320
0030bc  8b98f820  mul.s r17, r17, r15
0030c0  6bda0300  load.d r[21:22], 0(r7)
0030c4  b3980828  sext_int2long r[18:19], r17
0030c8  97b86802  sll.d r[18:19], r[18:19], r6
0030cc  0b2a1a11  add.ul r[21:22], r[21:22], r[18:19]
0030d0  ff29da00  l_gm2lm r19, r13, 0(r[21:22])
0030d4  00a00200  mfence { lm, gm }
0030d8  3fc76200  blt.s r5, r6, 464
0030dc  1f0a0000  addli r20, zero, 0
0030e0  9f090000  addli r19, zero, 0
0030e4  9f0a0000  addli r21, zero, 0
0030e8  db0c0000  j 100
0030ec  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
0030f0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0030f4  9f9a0a00  addli r21, r21, 1
0030f8  6af134c0  vsrl.p vr2, r9, vr3
0030fc  6af214c0  vsrl.p vr4, r9, vr1
003100  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
003104  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
003108  ea7125c0  vsrl.p vr3, r10, vr2
00310c  6a7215c0  vsrl.p vr4, r10, vr1
003110  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
003114  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
003118  eaf125c0  vsrl.p vr3, r11, vr2
00311c  6af215c0  vsrl.p vr4, r11, vr1
003120  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
003124  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
003128  ea7126c0  vsrl.p vr3, r12, vr2
00312c  6a7216c0  vsrl.p vr4, r12, vr1
003130  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
003134  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
003138  fa130140  vextracti.f r7, 0(vr2)
00313c  fa960040  vextracti.f r13, 0(vr1)
003140  0b6a7a10  add.f.rn r20, r20, r7
003144  8be9d910  add.f.rn r19, r19, r13
003148  b7a55a00  beq r21, r5, 360
00314c  1f8c0a00  addli r24, r21, 0
003150  37309700  beq r14, r9, 12
003154  17ab8a00  xor r22, r21, r8
003158  0b9c6211  add.s r24, r5, r22
00315c  0b1bec20  mul.s r22, r24, r14
003160  12320002  vadd.s.mz vr4{mr1}, zero, vr0
003164  92310002  vadd.s.mz vr3{mr1}, zero, vr0
003168  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00316c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
003170  0b9b6719  sub.s r22, r15, r22
003174  0b1beb40  min.s r22, r22, r14
003178  bf5d6bfe  blt.s r22, r6, -140
00317c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
003180  12310002  vadd.s.mz vr2{mr1}, zero, vr0
003184  92310002  vadd.s.mz vr3{mr1}, zero, vr0
003188  12320002  vadd.s.mz vr4{mr1}, zero, vr0
00318c  9f0b0000  addli r23, zero, 0
003190  0b1c8221  mul.s r24, r4, r24
003194  9f0c8fd7  addli r25, r30, -5184
003198  1f0d0800  addli r26, r16, 0
00319c  8b1d8d11  add.s r27, r26, r24
0031a0  9f838b00  addli r7, r23, 64
0031a4  ca820d02  vloads.mz vr5{mr1}, 0(r27)
0031a8  1f8e8d00  addli r28, r27, 64
0031ac  4a030e02  vloads.mz vr6{mr1}, 0(r28)
0031b0  0b9e8c11  add.s r28, r25, r24
0031b4  c2030e02  vload.mz vr7{mr1}, 0(r28)
0031b8  9f068e00  addli r13, r28, 64
0031bc  42840602  vload.mz vr8{mr1}, 0(r13)
0031c0  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
0031c4  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0031c8  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
0031cc  06b40300  vfp162float_l.rn vr8, vr7
0031d0  86f30300  vfp162float_h.rn vr7, vr7
0031d4  86340300  vfp162float_l.rn vr9, vr6
0031d8  06730300  vfp162float_h.rn vr6, vr6
0031dc  86120400  vfloat2fp16_l.rn vr5, vr8
0031e0  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
0031e4  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
0031e8  12340002  vadd.s.mz vr8{mr1}, zero, vr0
0031ec  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
0031f0  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
0031f4  06940400  vfloat2fp16_l.rn vr8, vr9
0031f8  86d20300  vfloat2fp16_h.rn vr5, vr7
0031fc  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
003200  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
003204  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
003208  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00320c  06540300  vfloat2fp16_h.rn vr8, vr6
003210  46005e02  vstore.mz vr5{mr1}, 0(r28)
003214  46808602  vstore.mz vr8{mr1}, 0(r13)
003218  4b5b7bfe  ble.s r22, r7, -300
00321c  9f830d01  addli r7, r27, 128
003220  9f060e01  addli r13, r28, 128
003224  9f8b0b01  addli r23, r23, 128
003228  1f0d0d02  addli r26, r26, 256
00322c  9f8c0c02  addli r25, r25, 256
003230  ca820302  vloads.mz vr5{mr1}, 0(r7)
003234  9f838d01  addli r7, r27, 192
003238  c2830602  vload.mz vr7{mr1}, 0(r13)
00323c  4a830302  vloads.mz vr6{mr1}, 0(r7)
003240  9f038e01  addli r7, r28, 192
003244  42840302  vload.mz vr8{mr1}, 0(r7)
003248  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
00324c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
003250  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
003254  12330002  vadd.s.mz vr6{mr1}, zero, vr0
003258  86b40300  vfp162float_l.rn vr9, vr7
00325c  86f30300  vfp162float_h.rn vr7, vr7
003260  86920400  vfloat2fp16_l.rn vr5, vr9
003264  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
003268  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
00326c  86340400  vfp162float_l.rn vr9, vr8
003270  06740400  vfp162float_h.rn vr8, vr8
003274  06930400  vfloat2fp16_l.rn vr6, vr9
003278  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
00327c  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
003280  86d20300  vfloat2fp16_h.rn vr5, vr7
003284  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
003288  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
00328c  06530400  vfloat2fp16_h.rn vr6, vr8
003290  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
003294  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003298  46805602  vstore.mz vr5{mr1}, 0(r13)
00329c  46806302  vstore.mz vr6{mr1}, 0(r7)
0032a0  bffb6bff  blt.s r23, r22, -260
0032a4  5bc9ffff  j -440
0032a8  9f090000  addli r19, zero, 0
0032ac  1f0a0000  addli r20, zero, 0
0032b0  00a00000  mfence { lm }
0032b4  3f8767fe  blt.s r15, r6, -576
0032b8  0f0a3a18  div.f.rn r20, r20, r3
0032bc  8f893918  div.f.rn r19, r19, r3
0032c0  e3033f00  loadli.w r7,  24(r30)
0032c4  1f0b0000  addli r22, zero, 0
0032c8  8b6a4a21  mul.f.rn r21, r20, r20
0032cc  0b6a0a58  neg.f r20, r20
0032d0  8be95919  sub.f.rn r19, r19, r21
0032d4  9f0a8fd7  addli r21, r30, -5184
0032d8  8be97910  add.f.rn r19, r19, r7
0032dc  ab03803f  lui r7, 260096
0032e0  8f890908  sqrt.f.rn r19, r19
0032e4  8f893319  div.f.rn r19, r7, r19
0032e8  c2800a02  vload.mz vr1{mr1}, 0(r21)
0032ec  9f0b4b00  addli r23, r22, 32
0032f0  06b10000  vfp162float_l.rn vr2, vr1
0032f4  86f00000  vfp162float_h.rn vr1, vr1
0032f8  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
0032fc  92111a02  vadd.f.mz.rn vr3{mr1}, r20, vr1
003300  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003304  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003308  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
00330c  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003310  06120100  vfloat2fp16_l.rn vr4, vr2
003314  06d20100  vfloat2fp16_h.rn vr4, vr3
003318  46804a02  vstore.mz vr4{mr1}, 0(r21)
00331c  4be577ff  ble.s r15, r23, -680
003320  9f8b8a00  addli r23, r21, 64
003324  1f0b8b00  addli r22, r22, 64
003328  9f8a0a01  addli r21, r21, 128
00332c  42810b02  vload.mz vr2{mr1}, 0(r23)
003330  86310100  vfp162float_l.rn vr3, vr2
003334  06710100  vfp162float_h.rn vr2, vr2
003338  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
00333c  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003340  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003344  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
003348  86900100  vfloat2fp16_l.rn vr1, vr3
00334c  86500100  vfloat2fp16_h.rn vr1, vr2
003350  46801b02  vstore.mz vr1{mr1}, 0(r23)
003354  3f5efbfe  blt.s r22, r15, -108
003358  dba3ffff  j -740
00335c  80300002  core_id r1
003360  1f210000  addli r2, zero, 2
003364  b7d12018  beq r1, r2, 12404
003368  1f110000  addli r2, zero, 1
00336c  b7c32014  beq r1, r2, 10480
003370  3b920018  bneq r1, zero, 12420
003374  63012f00  loadli.w r2,  16(r30)
003378  ab0100f0  lui r3, 983040
00337c  1b312100  slli r2, r2, 2
003380  17113100  or r2, r2, r3
003384  ab710200  lui r3, 39
003388  9f810108  addli r3, r3, 1024
00338c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
003390  db0c0600  j 12388
003394  80300002  core_id r1
003398  bb800000  bneq r1, zero, 32
00339c  63012f00  loadli.w r2,  16(r30)
0033a0  ab0100f0  lui r3, 983040
0033a4  1b312100  slli r2, r2, 2
0033a8  17113100  or r2, r2, r3
0033ac  abd10200  lui r3, 45
0033b0  9f8101f0  addli r3, r3, -2048
0033b4  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0033b8  2bf10000  lui r2, 15
0033bc  e3411f00  loadli.w r3,  12(r30)
0033c0  00200300  mfence { sm, gm }
0033c4  1b11f1ff  ori r2, r2, 4095
0033c8  80210104  csr_set csr3, r2
0033cc  00d00100  sync_group
0033d0  4bc0111a  ble.s r3, r1, 13328
0033d4  e3012f00  loadli.w r3,  16(r30)
0033d8  e3422f00  loadli.w r5,  20(r30)
0033dc  abf4ffff  lui r9, 1048575
0033e0  abd80200  lui r17, 45
0033e4  1f0b8fd7  addli r22, r30, -5184
0033e8  1f140000  addli r8, zero, 1
0033ec  1f050002  addli r10, zero, 256
0033f0  9f050001  addli r11, zero, 128
0033f4  1f068000  addli r12, zero, 64
0033f8  9f064000  addli r13, zero, 32
0033fc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003400  9b94f4ff  ori r9, r9, 4095
003404  9f8808f0  addli r17, r17, -2048
003408  0b925110  add.s r4, r3, r5
00340c  1bb12100  slli r2, r3, 2
003410  b3810108  fix2float.rn r3, r3
003414  1f73f2ff  addli r6, r4, -1
003418  1bb22200  slli r4, r5, 2
00341c  67043fd6  storeli.w r3, -5312(r30)
003420  9f010fd7  addli r3, r30, -5248
003424  8b125330  div.s r5, r6, r5
003428  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
00342c  5b070000  j 56
003430  00a00000  mfence { lm }
003434  6b530f00  load.d r[7:8], 0(r30)
003438  2b0800f0  lui r16, 983040
00343c  1f0b8fd7  addli r22, r30, -5184
003440  005a0102  load_param_i r20, 2
003444  17180101  or r16, r2, r16
003448  8b101a10  add.s r1, r20, r1
00344c  0b292311  add.ul r[19:20], r[7:8], r[19:20]
003450  7f386901  s_lm2gm r16, r22, 0(r[19:20])
003454  00a00200  mfence { lm, gm }
003458  e3411f00  loadli.w r3,  12(r30)
00345c  3fa03000  blt.s r1, r3, 8
003460  5b700600  j 13184
003464  e3011f00  loadli.w r3,  8(r30)
003468  0b983010  add.s r16, r1, r3
00346c  9f210000  addli r3, zero, 2
003470  0b18f820  mul.s r16, r16, r15
003474  33190828  sext_int2long r[19:20], r16
003478  2b0800f0  lui r16, 983040
00347c  17393902  sll.d r[19:20], r[19:20], r3
003480  9f017fd6  addli r3, r30, -5320
003484  17180101  or r16, r2, r16
003488  6bd30100  load.d r[7:8], 0(r3)
00348c  0b2a2311  add.ul r[21:22], r[7:8], r[19:20]
003490  7f286a01  l_gm2lm r16, r22, 0(r[21:22])
003494  00a00200  mfence { lm, gm }
003498  bf978200  blt.s r5, r8, 484
00349c  9f0a0000  addli r21, zero, 0
0034a0  1f0a0000  addli r20, zero, 0
0034a4  1f0b0000  addli r22, zero, 0
0034a8  db0c0000  j 100
0034ac  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
0034b0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0034b4  1f1b0b00  addli r22, r22, 1
0034b8  6a7105c0  vsrl.p vr2, r10, vr0
0034bc  ea7115c0  vsrl.p vr3, r10, vr1
0034c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0034c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0034c8  6af105c0  vsrl.p vr2, r11, vr0
0034cc  eaf115c0  vsrl.p vr3, r11, vr1
0034d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0034d4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0034d8  6a7106c0  vsrl.p vr2, r12, vr0
0034dc  ea7116c0  vsrl.p vr3, r12, vr1
0034e0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0034e4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0034e8  6af106c0  vsrl.p vr2, r13, vr0
0034ec  eaf116c0  vsrl.p vr3, r13, vr1
0034f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0034f4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0034f8  fa110040  vextracti.f r3, 0(vr0)
0034fc  7a930040  vextracti.f r6, 0(vr1)
003500  8bea3a10  add.f.rn r21, r21, r3
003504  0b6a6a10  add.f.rn r20, r20, r6
003508  b7755b00  beq r22, r5, 380
00350c  1f080b00  addli r16, r22, 0
003510  3730a700  beq r14, r10, 12
003514  17289b00  xor r16, r22, r9
003518  0b980211  add.s r16, r5, r16
00351c  9f010fd7  addli r3, r30, -5248
003520  8b1be820  mul.s r23, r16, r14
003524  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
003528  8b9b7719  sub.s r23, r15, r23
00352c  8b9beb40  min.s r23, r23, r14
003530  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003534  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003538  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00353c  bfcd8bfe  blt.s r23, r8, -144
003540  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003544  1f0c0000  addli r24, zero, 0
003548  8b1c0221  mul.s r25, r4, r16
00354c  1f0d8fd7  addli r26, r30, -5184
003550  9f8d0800  addli r27, r17, 0
003554  92304002  vadd.s.mz vr1{mr1}, zero, vr4
003558  12314002  vadd.s.mz vr2{mr1}, zero, vr4
00355c  92314002  vadd.s.mz vr3{mr1}, zero, vr4
003560  0b989d11  add.s r16, r27, r25
003564  0b1e9d11  add.s r28, r26, r25
003568  1f038800  addli r6, r16, 64
00356c  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
003570  9f038801  addli r7, r16, 192
003574  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
003578  9f018e01  addli r3, r28, 192
00357c  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
003580  1f030801  addli r6, r16, 128
003584  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
003588  9f030e01  addli r7, r28, 128
00358c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
003590  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
003594  c2950302  vload_mask16.mz vr11{mr1}, 0(r7)
003598  1f038e00  addli r6, r28, 64
00359c  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0035a0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0035a4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0035a8  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0035ac  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0035b0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0035b4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0035b8  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
0035bc  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0035c0  1f038c00  addli r6, r24, 64
0035c4  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0035c8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0035cc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0035d0  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0035d4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0035d8  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
0035dc  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
0035e0  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0035e4  4bab6bfe  ble.s r23, r6, -312
0035e8  1f030802  addli r6, r16, 256
0035ec  9f038802  addli r7, r16, 320
0035f0  9f010e02  addli r3, r28, 256
0035f4  1f0c0c01  addli r24, r24, 128
0035f8  9f8d0d04  addli r27, r27, 512
0035fc  1f0d0d04  addli r26, r26, 512
003600  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
003604  1f030803  addli r6, r16, 384
003608  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
00360c  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
003610  9f038e02  addli r7, r28, 320
003614  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
003618  1f038803  addli r6, r16, 448
00361c  1f088e03  addli r16, r28, 448
003620  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
003624  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
003628  1f030e03  addli r6, r28, 384
00362c  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
003630  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
003634  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
003638  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00363c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003640  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003644  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003648  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
00364c  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
003650  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
003654  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
003658  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00365c  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
003660  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003664  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003668  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
00366c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003670  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
003674  bf3b7cff  blt.s r24, r23, -276
003678  dbc6ffff  j -460
00367c  1f0a0000  addli r20, zero, 0
003680  9f0a0000  addli r21, zero, 0
003684  00a00000  mfence { lm }
003688  bfa687fe  blt.s r15, r8, -600
00368c  e3018fd6  loadli.w r3,  -5312(r30)
003690  1f0b0000  addli r22, zero, 0
003694  8f8a3a18  div.f.rn r21, r21, r3
003698  0f083a18  div.f.rn r16, r20, r3
00369c  e3013f00  loadli.w r3,  24(r30)
0036a0  0bea5a21  mul.f.rn r20, r21, r21
0036a4  0b684819  sub.f.rn r16, r16, r20
0036a8  0bea0a58  neg.f r20, r21
0036ac  9f0a8fd7  addli r21, r30, -5184
0036b0  0b683810  add.f.rn r16, r16, r3
0036b4  ab01803f  lui r3, 260096
0036b8  0f080808  sqrt.f.rn r16, r16
0036bc  0f880119  div.f.rn r16, r3, r16
0036c0  9f8b8a00  addli r23, r21, 64
0036c4  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
0036c8  1f0c4b00  addli r24, r22, 32
0036cc  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
0036d0  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
0036d4  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
0036d8  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
0036dc  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
0036e0  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
0036e4  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
0036e8  4ba587ff  ble.s r15, r24, -696
0036ec  9f8b0a01  addli r23, r21, 128
0036f0  1f8c8a01  addli r24, r21, 192
0036f4  1f0b8b00  addli r22, r22, 64
0036f8  9f8a0a02  addli r21, r21, 256
0036fc  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
003700  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
003704  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003708  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
00370c  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003710  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003714  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
003718  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
00371c  bf1efbfe  blt.s r22, r15, -92
003720  5ba2ffff  j -752
003724  00310002  core_id r2
003728  ab630000  lui r7, 6
00372c  9f100000  addli r1, zero, 1
003730  1f038fd7  addli r6, r30, -5184
003734  1f048000  addli r8, zero, 64
003738  1f050010  addli r10, zero, 2048
00373c  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
003740  9b315100  slli r3, r2, 5
003744  00510102  load_param_i r2, 2
003748  9f830308  addli r7, r7, 1024
00374c  9b345100  slli r9, r2, 5
003750  b3850128  zext_int2long r[12:13], r3
003754  ab0600f0  lui r13, 983040
003758  97b51502  sll.d r[12:13], r[12:13], r1
00375c  9716d400  or r13, r8, r13
003760  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
003764  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
003768  9bb52100  slli r11, r3, 2
00376c  8b913410  add.s r3, r9, r3
003770  00a00200  mfence { lm, gm }
003774  c2000302  vload.mz vr1{mr1}, 0(r6)
003778  1386a104  setlt.u r12, r3, r10
00377c  8b957510  add.s r11, r11, r7
003780  9f868500  addli r13, r11, 64
003784  66c11180  vmerge_l.hf vr2, vr3, vr1
003788  e6c011a0  vmerge_h.hf vr1, vr3, vr1
00378c  4e902502  vstores_mask16.mz vr2{mr1}, 0(r11)
003790  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
003794  bb7e06fe  bneq r12, zero, -68
003798  abf00000  lui r1, 15
00379c  80310002  core_id r3
0037a0  9f020006  addli r5, zero, 768
0037a4  00a00300  mfence { lm, sm, gm }
0037a8  9b90f0ff  ori r1, r1, 4095
0037ac  1b821100  andi r4, r3, 1
0037b0  9f010006  addli r3, zero, 768
0037b4  80a10004  csr_set csr3, r1
0037b8  00d00100  sync_group
0037bc  670b4fd4  storeli.w r4, -5456(r30)
0037c0  37200200  beq r4, zero, 8
0037c4  9f02000a  addli r5, zero, 1280
0037c8  63421f00  loadli.w r4,  12(r30)
0037cc  9f100000  addli r1, zero, 1
0037d0  3f401218  blt.s r4, r1, 12304
0037d4  63026fd5  loadli.w r4,  -5456(r30)
0037d8  9b461100  srli r13, r2, 1
0037dc  00310002  core_id r2
0037e0  1f078fd7  addli r14, r30, -5184
0037e4  1f040000  addli r8, zero, 0
0037e8  1f797000  addli r18, zero, 63
0037ec  1f0a0005  addli r20, zero, 640
0037f0  2b0e803f  lui r28, 260096
0037f4  1f052000  addli r10, zero, 16
0037f8  2b03ffff  lui r6, 1048560
0037fc  ab04807f  lui r9, 522240
003800  ab0dc07f  lui r27, 523264
003804  9f380000  addli r17, zero, 3
003808  9f5a1000  addli r21, zero, 13
00380c  9f058fd4  addli r11, r30, -5568
003810  1b461100  srli r12, r2, 1
003814  1bb12200  slli r2, r5, 2
003818  8b113220  mul.s r3, r4, r3
00381c  1f824200  addli r4, r5, 32
003820  0b11e110  add.s r2, r2, r14
003824  e7433fd4  storeli.w r3, -5572(r30)
003828  9bb11200  slli r3, r5, 1
00382c  67034fd4  storeli.w r4, -5584(r30)
003830  2be27f00  lui r4, 2046
003834  1f0181ff  addli r2, r2, -64
003838  67083fd6  storeli.w r3, -5248(r30)
00383c  8b91e110  add.s r3, r3, r14
003840  e7422fd4  storeli.w r2, -5588(r30)
003844  1f8181ff  addli r2, r3, -64
003848  abf100fc  lui r3, 1032207
00384c  e7022fd4  storeli.w r2, -5592(r30)
003850  2bf1ffff  lui r2, 1048575
003854  1b9801c0  ori r16, r3, 3072
003858  9f211000  addli r3, zero, 10
00385c  00a00000  mfence { lm }
003860  46903502  vstore_mask16.mz vr3{mr1}, 0(r11)
003864  e703dfd4  storeli.w r13, -5576(r30)
003868  6743cfd4  storeli.w r12, -5580(r30)
00386c  1b1101f8  ori r2, r2, 3968
003870  67422fd4  storeli.w r2, -5596(r30)
003874  2bf10000  lui r2, 15
003878  1b11f1ff  ori r2, r2, 4095
00387c  67042fd6  storeli.w r2, -5312(r30)
003880  2b710000  lui r2, 7
003884  9b19f1ff  ori r19, r2, 4095
003888  2b01ff03  lui r2, 16368
00388c  9b17f13f  ori r15, r2, 1023
003890  2be10700  lui r2, 126
003894  5b040000  j 32
003898  00a00300  mfence { lm, sm, gm }
00389c  e3058fd6  loadli.w r11,  -5312(r30)
0038a0  80a10504  csr_set csr3, r11
0038a4  00d00100  sync_group
0038a8  0b14d410  add.s r8, r8, r13
0038ac  3f209401  blt.s r8, r25, 8
0038b0  5b80faff  j -11264
0038b4  8b15c410  add.s r11, r8, r12
0038b8  cb8fbcfe  ble.s r25, r11, -32
0038bc  63061f00  loadli.w r12,  8(r30)
0038c0  8b95c510  add.s r11, r11, r12
0038c4  0b06d430  div.u r12, r8, r13
0038c8  e3467fd4  loadli.w r13,  -5572(r30)
0038cc  9bb5b500  slli r11, r11, 11
0038d0  9795d500  or r11, r11, r13
0038d4  9f067fd6  addli r13, r30, -5320
0038d8  b39b0528  sext_int2long r[24:25], r11
0038dc  ab0500f0  lui r11, 983040
0038e0  1b366600  slli r12, r12, 6
0038e4  17bc1b02  sll.d r[25:26], r[24:25], r1
0038e8  6bdb0600  load.d r[23:24], 0(r13)
0038ec  9f068fd5  addli r13, r30, -5440
0038f0  1b060604  andi r12, r12, 64
0038f4  73b08601  store.d r[25:26], 0(r13)
0038f8  e3060fd7  loadli.w r13,  -5248(r30)
0038fc  8b2b8b11  add.ul r[24:25], r[23:24], r[25:26]
003900  9795b600  or r11, r13, r11
003904  ffa5eb00  l_gm2lm r11, r14, 0(r[24:25])
003908  80350002  core_id r11
00390c  9715b600  or r11, r12, r11
003910  e70bbfd4  storeli.w r11, -5448(r30)
003914  00a00200  mfence { lm, gm }
003918  e3055fd4  loadli.w r11,  -5592(r30)
00391c  63465fd4  loadli.w r12,  -5588(r30)
003920  e3066fd4  loadli.w r13,  -5584(r30)
003924  c2800502  vload.mz vr1{mr1}, 0(r11)
003928  9f86c6ff  addli r13, r13, -32
00392c  9f0c86ff  addli r25, r12, -64
003930  9f8585ff  addli r11, r11, -64
003934  130cd904  setlt.u r24, r18, r13
003938  66c111a0  vmerge_h.hf vr2, vr3, vr1
00393c  e6c01180  vmerge_l.hf vr1, vr3, vr1
003940  46102602  vstore_mask16.mz vr2{mr1}, 0(r12)
003944  1f0606ff  addli r12, r12, -128
003948  46901c02  vstore_mask16.mz vr1{mr1}, 0(r25)
00394c  3b6f0cfe  bneq r24, zero, -40
003950  00a00000  mfence { lm }
003954  e3056fd5  loadli.w r11,  -5456(r30)
003958  3bb60500  bneq r11, zero, 396
00395c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
003960  12313002  vadd.s.mz vr2{mr1}, zero, vr3
003964  12323002  vadd.s.mz vr4{mr1}, zero, vr3
003968  63464fd4  loadli.w r12,  -5596(r30)
00396c  9f050000  addli r11, zero, 0
003970  0b9c7510  add.s r24, r11, r7
003974  8b16b710  add.s r13, r14, r11
003978  1f060601  addli r12, r12, 128
00397c  9f850504  addli r11, r11, 512
003980  1f0b0c01  addli r22, r24, 128
003984  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
003988  9f0b8c00  addli r23, r24, 64
00398c  42940602  vload_mask16.mz vr8{mr1}, 0(r13)
003990  9f8c8601  addli r25, r13, 192
003994  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
003998  1f0b8c01  addli r22, r24, 192
00399c  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
0039a0  9f8b8600  addli r23, r13, 64
0039a4  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0039a8  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
0039ac  1f8b0601  addli r22, r13, 128
0039b0  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
0039b4  c2140b02  vload_mask16.mz vr9{mr1}, 0(r22)
0039b8  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0039bc  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0039c0  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0039c4  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0039c8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0039cc  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
0039d0  46108b02  vstore_mask16.mz vr8{mr1}, 0(r22)
0039d4  1f0b0c02  addli r22, r24, 256
0039d8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0039dc  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0039e0  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0039e4  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
0039e8  9f8b0603  addli r23, r13, 384
0039ec  4a100b02  vloads_mask16.mz vr0{mr1}, 0(r22)
0039f0  1f0b8c02  addli r22, r24, 320
0039f4  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
0039f8  9f8c0602  addli r25, r13, 256
0039fc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003a00  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003a04  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003a08  4a130b02  vloads_mask16.mz vr6{mr1}, 0(r22)
003a0c  1f0b0c03  addli r22, r24, 384
003a10  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003a14  1f0c8c03  addli r24, r24, 448
003a18  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003a1c  4a140b02  vloads_mask16.mz vr8{mr1}, 0(r22)
003a20  1f8b8602  addli r22, r13, 320
003a24  4a150c02  vloads_mask16.mz vr10{mr1}, 0(r24)
003a28  9f868603  addli r13, r13, 448
003a2c  c2140b02  vload_mask16.mz vr9{mr1}, 0(r22)
003a30  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003a34  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
003a38  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003a3c  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
003a40  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003a44  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003a48  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003a4c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003a50  46106b02  vstore_mask16.mz vr6{mr1}, 0(r22)
003a54  130b4605  setlt.u r22, r12, r20
003a58  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003a5c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003a60  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003a64  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003a68  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003a6c  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
003a70  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
003a74  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003a78  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003a7c  bb5b0bfe  bneq r22, zero, -268
003a80  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003a84  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003a88  9f050002  addli r11, zero, 256
003a8c  6af105c0  vsrl.p vr2, r11, vr0
003a90  eaf115c0  vsrl.p vr3, r11, vr1
003a94  9f050001  addli r11, zero, 128
003a98  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a9c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003aa0  6af105c0  vsrl.p vr2, r11, vr0
003aa4  eaf115c0  vsrl.p vr3, r11, vr1
003aa8  9f058000  addli r11, zero, 64
003aac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003ab0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003ab4  6af105c0  vsrl.p vr2, r11, vr0
003ab8  eaf115c0  vsrl.p vr3, r11, vr1
003abc  9f054000  addli r11, zero, 32
003ac0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003ac4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003ac8  6af105c0  vsrl.p vr2, r11, vr0
003acc  eaf115c0  vsrl.p vr3, r11, vr1
003ad0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003ad4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003ad8  fa150040  vextracti.f r11, 0(vr0)
003adc  7a960040  vextracti.f r12, 0(vr1)
003ae0  5b670000  j 824
003ae4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003ae8  abf5ffff  lui r11, 1048575
003aec  1f060000  addli r12, zero, 0
003af0  1f090003  addli r18, zero, 384
003af4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003af8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003afc  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003b00  9b9605f8  ori r13, r11, 3968
003b04  0b9cc310  add.s r24, r7, r12
003b08  8b15c710  add.s r11, r14, r12
003b0c  9f860601  addli r13, r13, 128
003b10  1f060604  addli r12, r12, 512
003b14  9f0b0c31  addli r23, r24, 6272
003b18  9f0c0c30  addli r25, r24, 6144
003b1c  1f0b8c31  addli r22, r24, 6336
003b20  1f8d0518  addli r26, r11, 3072
003b24  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
003b28  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
003b2c  9f0c8c30  addli r25, r24, 6208
003b30  ca140b02  vloads_mask16.mz vr9{mr1}, 0(r22)
003b34  9f8b0519  addli r23, r11, 3200
003b38  1f8b8518  addli r22, r11, 3136
003b3c  42130d02  vload_mask16.mz vr6{mr1}, 0(r26)
003b40  4a940c02  vloads_mask16.mz vr8{mr1}, 0(r25)
003b44  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
003b48  9f8c8519  addli r25, r11, 3264
003b4c  c2150b02  vload_mask16.mz vr11{mr1}, 0(r22)
003b50  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
003b54  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003b58  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
003b5c  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
003b60  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
003b64  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003b68  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
003b6c  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
003b70  9f0b0c32  addli r23, r24, 6400
003b74  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
003b78  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003b7c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003b80  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
003b84  9f8c051a  addli r25, r11, 3328
003b88  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003b8c  46105b02  vstore_mask16.mz vr5{mr1}, 0(r22)
003b90  1f8b051b  addli r22, r11, 3456
003b94  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
003b98  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
003b9c  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
003ba0  9f0b8c32  addli r23, r24, 6464
003ba4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003ba8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003bac  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
003bb0  9f0b0c33  addli r23, r24, 6528
003bb4  1f0c8c33  addli r24, r24, 6592
003bb8  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
003bbc  9f8b851a  addli r23, r11, 3392
003bc0  4a150c02  vloads_mask16.mz vr10{mr1}, 0(r24)
003bc4  9f85851b  addli r11, r11, 3520
003bc8  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
003bcc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003bd0  c2130b02  vload_mask16.mz vr7{mr1}, 0(r22)
003bd4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003bd8  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
003bdc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003be0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003be4  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003be8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003bec  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
003bf0  938b2605  setlt.u r23, r13, r18
003bf4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003bf8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003bfc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003c00  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003c04  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003c08  46105b02  vstore_mask16.mz vr5{mr1}, 0(r22)
003c0c  46907502  vstore_mask16.mz vr7{mr1}, 0(r11)
003c10  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003c14  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003c18  bbbb0bfe  bneq r23, zero, -276
003c1c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003c20  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003c24  9f050002  addli r11, zero, 256
003c28  1f0d0000  addli r26, zero, 0
003c2c  eaf115c0  vsrl.p vr3, r11, vr1
003c30  6af105c0  vsrl.p vr2, r11, vr0
003c34  9f050001  addli r11, zero, 128
003c38  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003c3c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003c40  eaf115c0  vsrl.p vr3, r11, vr1
003c44  6af105c0  vsrl.p vr2, r11, vr0
003c48  9f058000  addli r11, zero, 64
003c4c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003c50  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003c54  eaf115c0  vsrl.p vr3, r11, vr1
003c58  6af105c0  vsrl.p vr2, r11, vr0
003c5c  9f054000  addli r11, zero, 32
003c60  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003c64  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003c68  eaf115c0  vsrl.p vr3, r11, vr1
003c6c  6af105c0  vsrl.p vr2, r11, vr0
003c70  abf5ffff  lui r11, 1048575
003c74  9b9505f8  ori r11, r11, 3968
003c78  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003c7c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003c80  fa960040  vextracti.f r13, 0(vr1)
003c84  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003c88  7a190040  vextracti.f r18, 0(vr0)
003c8c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003c90  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003c94  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003c98  8b9ca311  add.s r25, r7, r26
003c9c  0b1ca711  add.s r24, r14, r26
003ca0  9f850501  addli r11, r11, 128
003ca4  1f0d0d04  addli r26, r26, 512
003ca8  1f8b0c18  addli r22, r25, 3072
003cac  9f8b0c19  addli r23, r25, 3200
003cb0  1f068c01  addli r12, r24, 192
003cb4  42140c02  vload_mask16.mz vr8{mr1}, 0(r24)
003cb8  4a100b02  vloads_mask16.mz vr0{mr1}, 0(r22)
003cbc  1f8b8c18  addli r22, r25, 3136
003cc0  ca920b02  vloads_mask16.mz vr5{mr1}, 0(r23)
003cc4  9f8b8c19  addli r23, r25, 3264
003cc8  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
003ccc  4a130b02  vloads_mask16.mz vr6{mr1}, 0(r22)
003cd0  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
003cd4  1f0b0c01  addli r22, r24, 128
003cd8  9f0b8c00  addli r23, r24, 64
003cdc  c2140b02  vload_mask16.mz vr9{mr1}, 0(r22)
003ce0  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
003ce4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
003ce8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
003cec  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
003cf0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
003cf4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003cf8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003cfc  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003d00  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003d04  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
003d08  46108b02  vstore_mask16.mz vr8{mr1}, 0(r22)
003d0c  1f0b0c02  addli r22, r24, 256
003d10  46106602  vstore_mask16.mz vr6{mr1}, 0(r12)
003d14  1f860c1a  addli r12, r25, 3328
003d18  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
003d1c  9f0b0c03  addli r23, r24, 384
003d20  4a100602  vloads_mask16.mz vr0{mr1}, 0(r12)
003d24  1f868c1a  addli r12, r25, 3392
003d28  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003d2c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003d30  c2130b02  vload_mask16.mz vr7{mr1}, 0(r22)
003d34  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003d38  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003d3c  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
003d40  1f860c1b  addli r12, r25, 3456
003d44  9f8c8c1b  addli r25, r25, 3520
003d48  4a140602  vloads_mask16.mz vr8{mr1}, 0(r12)
003d4c  1f068c02  addli r12, r24, 320
003d50  4a950c02  vloads_mask16.mz vr10{mr1}, 0(r25)
003d54  1f0c8c03  addli r24, r24, 448
003d58  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
003d5c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003d60  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
003d64  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003d68  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
003d6c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003d70  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003d74  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
003d78  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003d7c  46106602  vstore_mask16.mz vr6{mr1}, 0(r12)
003d80  13864505  setlt.u r12, r11, r20
003d84  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003d88  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003d8c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003d90  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003d94  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003d98  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
003d9c  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
003da0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003da4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003da8  bb4b06fe  bneq r12, zero, -272
003dac  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003db0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003db4  9f050002  addli r11, zero, 256
003db8  6af105c0  vsrl.p vr2, r11, vr0
003dbc  eaf115c0  vsrl.p vr3, r11, vr1
003dc0  9f050001  addli r11, zero, 128
003dc4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003dc8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003dcc  6af105c0  vsrl.p vr2, r11, vr0
003dd0  eaf115c0  vsrl.p vr3, r11, vr1
003dd4  9f058000  addli r11, zero, 64
003dd8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003ddc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003de0  6af105c0  vsrl.p vr2, r11, vr0
003de4  eaf115c0  vsrl.p vr3, r11, vr1
003de8  9f054000  addli r11, zero, 32
003dec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003df0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003df4  6af105c0  vsrl.p vr2, r11, vr0
003df8  eaf115c0  vsrl.p vr3, r11, vr1
003dfc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003e00  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003e04  fa150040  vextracti.f r11, 0(vr0)
003e08  7a960040  vextracti.f r12, 0(vr1)
003e0c  8b65b910  add.f.rn r11, r18, r11
003e10  0be6c610  add.f.rn r12, r13, r12
003e14  1f797000  addli r18, zero, 63
003e18  2b8b0000  lui r22, 8
003e1c  ab8b0000  lui r23, 8
003e20  630d7fd5  loadli.w r26,  -5448(r30)
003e24  1f0b0b08  addli r22, r22, 1024
003e28  9f8b0b0c  addli r23, r23, 1536
003e2c  9b362d00  slli r13, r26, 2
003e30  1f0c0b00  addli r24, r22, 0
003e34  9f8c0b00  addli r25, r23, 0
003e38  0b9b8611  add.s r22, r13, r24
003e3c  8b9b9611  add.s r23, r13, r25
003e40  73e0cb00  stores.w r12, 0(r23)
003e44  7360bb00  stores.w r11, 0(r22)
003e48  1b964600  ori r12, r13, 4
003e4c  9f0b0000  addli r23, zero, 0
003e50  00a00300  mfence { lm, sm, gm }
003e54  e3058fd6  loadli.w r11,  -5312(r30)
003e58  8b168611  add.s r13, r12, r24
003e5c  0b169611  add.s r12, r12, r25
003e60  80a10504  csr_set csr3, r11
003e64  9b05ed07  andi r11, r26, 126
003e68  00d00100  sync_group
003e6c  efc60600  loads.w r13, 0(r13)
003e70  6f460600  loads.w r12, 0(r12)
003e74  9bb52500  slli r11, r11, 2
003e78  0b9b8511  add.s r22, r11, r24
003e7c  8b959511  add.s r11, r11, r25
003e80  6f4b0b00  loads.w r22, 0(r22)
003e84  efc50500  loads.w r11, 0(r11)
003e88  8be66611  add.f.rn r13, r13, r22
003e8c  2b0b003a  lui r22, 237568
003e90  8b65b610  add.f.rn r11, r12, r11
003e94  0be66621  mul.f.rn r12, r13, r22
003e98  8be56521  mul.f.rn r11, r11, r22
003e9c  8b66c620  mul.f.rn r13, r12, r12
003ea0  0b660658  neg.f r12, r12
003ea4  8be5d518  sub.f.rn r11, r11, r13
003ea8  e3063f00  loadli.w r13,  24(r30)
003eac  8be5d510  add.f.rn r11, r11, r13
003eb0  9f068fd7  addli r13, r30, -5184
003eb4  8f850508  sqrt.f.rn r11, r11
003eb8  8f05be18  div.f.rn r11, r28, r11
003ebc  1f8b8600  addli r22, r13, 64
003ec0  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
003ec4  1f8c4b00  addli r24, r23, 32
003ec8  c2100b02  vload_mask16.mz vr1{mr1}, 0(r22)
003ecc  138c8207  setle.u r24, r5, r24
003ed0  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
003ed4  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
003ed8  0a900502  vmul.f.mz.rn vr0{mr1}, r11, vr0
003edc  8a901502  vmul.f.mz.rn vr1{mr1}, r11, vr1
003ee0  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
003ee4  46101b02  vstore_mask16.mz vr1{mr1}, 0(r22)
003ee8  bb700c00  bneq r24, zero, 60
003eec  1f8b0601  addli r22, r13, 128
003ef0  1f8c8601  addli r24, r13, 192
003ef4  9f8b8b00  addli r23, r23, 64
003ef8  9f860602  addli r13, r13, 256
003efc  42100b02  vload_mask16.mz vr0{mr1}, 0(r22)
003f00  c2100c02  vload_mask16.mz vr1{mr1}, 0(r24)
003f04  938c5b04  setlt.u r25, r23, r5
003f08  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
003f0c  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
003f10  0a900502  vmul.f.mz.rn vr0{mr1}, r11, vr0
003f14  8a901502  vmul.f.mz.rn vr1{mr1}, r11, vr1
003f18  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
003f1c  46101c02  vstore_mask16.mz vr1{mr1}, 0(r24)
003f20  3bfe0cfe  bneq r25, zero, -100
003f24  9f058fd7  addli r11, r30, -5184
003f28  1f068fd7  addli r12, r30, -5184
003f2c  9f060000  addli r13, zero, 0
003f30  00a00000  mfence { lm }
003f34  c2110602  vload_mask16.mz vr3{mr1}, 0(r12)
003f38  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003f3c  1f0b8600  addli r22, r12, 64
003f40  9f864600  addli r13, r13, 32
003f44  1f060601  addli r12, r12, 128
003f48  6a201522  vor.u.mz vr0{mr1}, r10, vr1
003f4c  eaa21a22  vor.u.mz vr5{mr1}, r21, vr1
003f50  42110b02  vload_mask16.mz vr2{mr1}, 0(r22)
003f54  138b5604  setlt.u r22, r13, r5
003f58  6e3230c2  vsrl.s.mz vr4{mr1}, vr0, vr3
003f5c  6e3020c2  vsrl.s.mz vr0{mr1}, vr0, vr2
003f60  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
003f64  6ab00002  vand.s.mz vr0{mr1}, r1, vr0
003f68  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
003f6c  e69101c0  vabs.f vr3, vr3
003f70  16300102  vadd.s.mz vr0{mr1}, vr2, vr0
003f74  661101c0  vabs.f vr2, vr2
003f78  12b24902  vadd.s.mz vr4{mr1}, r19, vr4
003f7c  72a13442  vlt.u.mz mr2{mr1}, r9, vr3
003f80  12b00902  vadd.s.mz vr0{mr1}, r19, vr0
003f84  6a324302  vand.s.mz vr4{mr1}, r6, vr4
003f88  6a300302  vand.s.mz vr0{mr1}, r6, vr0
003f8c  6aa21d34  vor.u.mh vr4{mr2}, r27, vr1
003f90  72a12442  vlt.u.mz mr2{mr1}, r9, vr2
003f94  6aa11822  vor.u.mz vr2{mr1}, r17, vr1
003f98  6aa01d34  vor.u.mh vr0{mr2}, r27, vr1
003f9c  eaa01122  vor.u.mz vr1{mr1}, r3, vr1
003fa0  eeb142c2  vsrl.s.mz vr3{mr1}, vr5, vr4
003fa4  6e3241c2  vsrl.s.mz vr4{mr1}, vr2, vr4
003fa8  eeb202c2  vsrl.s.mz vr5{mr1}, vr5, vr0
003fac  6e3001c2  vsrl.s.mz vr0{mr1}, vr2, vr0
003fb0  6a313102  vand.s.mz vr2{mr1}, r2, vr3
003fb4  6a324202  vand.s.mz vr4{mr1}, r4, vr4
003fb8  ea315102  vand.s.mz vr3{mr1}, r2, vr5
003fbc  6a300202  vand.s.mz vr0{mr1}, r4, vr0
003fc0  6a312e22  vor.s.mz vr2{mr1}, r28, vr2
003fc4  6a324e22  vor.s.mz vr4{mr1}, r28, vr4
003fc8  6a300e22  vor.s.mz vr0{mr1}, r28, vr0
003fcc  ea313e22  vor.s.mz vr3{mr1}, r28, vr3
003fd0  06110120  vfloat2fp16_l.rz vr2, vr2
003fd4  06500020  vfloat2fp16_h.rz vr0, vr0
003fd8  06d10120  vfloat2fp16_h.rz vr2, vr3
003fdc  06100220  vfloat2fp16_l.rz vr0, vr4
003fe0  eeb020a2  vsll.s.mz vr1{mr1}, vr1, vr2
003fe4  6ab00702  vand.s.mz vr0{mr1}, r15, vr0
003fe8  ea301802  vand.s.mz vr1{mr1}, r16, vr1
003fec  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
003ff0  46800502  vstore.mz vr0{mr1}, 0(r11)
003ff4  9f858500  addli r11, r11, 64
003ff8  bb7c0bfe  bneq r22, zero, -196
003ffc  1f0c8fd5  addli r24, r30, -5440
004000  6b560f00  load.d r[13:14], 0(r30)
004004  ab0500f0  lui r11, 983040
004008  6b5b0c00  load.d r[23:24], 0(r24)
00400c  0b266611  add.ul r[13:14], r[13:14], r[23:24]
004010  630b0fd7  loadli.w r22,  -5248(r30)
004014  00a00000  mfence { lm }
004018  9715bb00  or r11, r22, r11
00401c  ff35e600  s_lm2gm r11, r14, 0(r[13:14])
004020  9f058fd4  addli r11, r30, -5568
004024  00a00200  mfence { lm, gm }
004028  e34c1f00  loadli.w r25,  12(r30)
00402c  c2910502  vload_mask16.mz vr3{mr1}, 0(r11)
004030  e3067fd4  loadli.w r13,  -5576(r30)
004034  63466fd4  loadli.w r12,  -5580(r30)
004038  5b0effff  j -1936
00403c  00360002  core_id r12
004040  63012f00  loadli.w r2,  16(r30)
004044  9b305600  slli r1, r12, 5
004048  cb211100  ble.s r2, r1, 104
00404c  80530102  load_param_i r7, 2
004050  2bc40000  lui r8, 12
004054  1f110000  addli r2, zero, 1
004058  9f018fd7  addli r3, r30, -5184
00405c  1f038000  addli r6, zero, 64
004060  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004064  9bb35300  slli r7, r7, 5
004068  1f0404f0  addli r8, r8, -2048
00406c  b3840028  zext_int2long r[10:11], r1
004070  ab0500f0  lui r11, 983040
004074  97b42402  sll.d r[10:11], r[10:11], r2
004078  9715b300  or r11, r6, r11
00407c  8b249210  add.ul r[10:11], r[5:6], r[10:11]
004080  ffa53400  l_gm2lm r11, r3, 0(r[10:11])
004084  9bb42000  slli r9, r1, 2
004088  8b901310  add.s r1, r7, r1
00408c  00a00200  mfence { lm, gm }
004090  c2800102  vload.mz vr1{mr1}, 0(r3)
004094  8b948410  add.s r9, r9, r8
004098  1f858400  addli r10, r9, 64
00409c  66411080  vmerge_l.hf vr2, vr0, vr1
0040a0  e64010a0  vmerge_h.hf vr1, vr0, vr1
0040a4  4e902402  vstores_mask16.mz vr2{mr1}, 0(r9)
0040a8  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
0040ac  3f8ff0fe  blt.s r1, r15, -64
0040b0  abf00000  lui r1, 15
0040b4  63411f00  loadli.w r2,  12(r30)
0040b8  00a00300  mfence { lm, sm, gm }
0040bc  9b90f0ff  ori r1, r1, 4095
0040c0  80a10004  csr_set csr3, r1
0040c4  00d00100  sync_group
0040c8  4b6cc112  ble.s r2, r12, 10008
0040cc  e3002f00  loadli.w r1,  16(r30)
0040d0  63412f00  loadli.w r2,  20(r30)
0040d4  9f0d8fd7  addli r27, r30, -5184
0040d8  1f150000  addli r10, zero, 1
0040dc  9f787000  addli r17, zero, 63
0040e0  1f080002  addli r16, zero, 256
0040e4  ab09803f  lui r19, 260096
0040e8  ab05ffff  lui r11, 1048560
0040ec  2b0cc07f  lui r24, 523264
0040f0  2bed7f00  lui r26, 2046
0040f4  2bee0700  lui r28, 126
0040f8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0040fc  8b912010  add.s r3, r1, r2
004100  33820008  fix2float.rn r4, r1
004104  9bb41000  slli r9, r1, 1
004108  9bb22000  slli r5, r1, 2
00410c  9f804000  addli r1, r1, 32
004110  e7031fd4  storeli.w r1, -5576(r30)
004114  8b90b211  add.s r1, r5, r27
004118  9ff1f1ff  addli r3, r3, -1
00411c  e7434fd4  storeli.w r4, -5572(r30)
004120  0b922130  div.s r4, r3, r2
004124  9f8080ff  addli r1, r1, -64
004128  8b91b411  add.s r3, r9, r27
00412c  67431fd4  storeli.w r1, -5580(r30)
004130  9f8081ff  addli r1, r3, -64
004134  67031fd4  storeli.w r1, -5584(r30)
004138  9b302100  slli r1, r2, 2
00413c  67041fd6  storeli.w r1, -5312(r30)
004140  abf0ffff  lui r1, 1048575
004144  00a00000  mfence { lm }
004148  67049fd4  storeli.w r9, -5568(r30)
00414c  9b90f0ff  ori r1, r1, 4095
004150  670c1fd4  storeli.w r1, -5440(r30)
004154  ab700000  lui r1, 7
004158  9b9af0ff  ori r21, r1, 4095
00415c  ab00ff03  lui r1, 16368
004160  1b93f03f  ori r6, r1, 1023
004164  abf000fc  lui r1, 1032207
004168  1b9400c0  ori r8, r1, 3072
00416c  9f000fd7  addli r1, r30, -5248
004170  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
004174  db070000  j 60
004178  9f016fd5  addli r3, r30, -5456
00417c  eb500f00  load.d r[2:3], 0(r30)
004180  80520102  load_param_i r5, 2
004184  6bd60100  load.d r[13:14], 0(r3)
004188  ab0100f0  lui r3, 983040
00418c  00a00000  mfence { lm }
004190  97913400  or r3, r9, r3
004194  8ba0c010  add.ul r[2:3], r[2:3], r[13:14]
004198  63067fd5  loadli.w r12,  -5448(r30)
00419c  ffb1b001  s_lm2gm r3, r27, 0(r[2:3])
0041a0  0b96c210  add.s r12, r5, r12
0041a4  00a00200  mfence { lm, gm }
0041a8  3f207600  blt.s r12, r7, 8
0041ac  dbc60400  j 9780
0041b0  e3001f00  loadli.w r1,  8(r30)
0041b4  9f027fd6  addli r5, r30, -5320
0041b8  8b101610  add.s r1, r12, r1
0041bc  8b90f020  mul.s r1, r1, r15
0041c0  b3900028  sext_int2long r[2:3], r1
0041c4  17bba002  sll.d r[23:24], r[2:3], r10
0041c8  6bd10200  load.d r[3:4], 0(r5)
0041cc  ab0000f0  lui r1, 983040
0041d0  9f026fd5  addli r5, r30, -5456
0041d4  97901400  or r1, r9, r1
0041d8  73b06201  store.d r[23:24], 0(r5)
0041dc  0b216111  add.ul r[3:4], r[3:4], r[23:24]
0041e0  1f0b4000  addli r22, zero, 32
0041e4  ff20b101  l_gm2lm r1, r27, 0(r[3:4])
0041e8  00a00200  mfence { lm, gm }
0041ec  bff06701  blt.s r15, r22, 60
0041f0  e3006fd4  loadli.w r1,  -5584(r30)
0041f4  63416fd4  loadli.w r2,  -5580(r30)
0041f8  e3017fd4  loadli.w r3,  -5576(r30)
0041fc  c2800002  vload.mz vr1{mr1}, 0(r1)
004200  9f81c1ff  addli r3, r3, -32
004204  9f0381ff  addli r7, r2, -64
004208  9f8080ff  addli r1, r1, -64
00420c  93823804  setlt.u r5, r17, r3
004210  664110a0  vmerge_h.hf vr2, vr0, vr1
004214  e6401080  vmerge_l.hf vr1, vr0, vr1
004218  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
00421c  1f0101ff  addli r2, r2, -128
004220  46901302  vstore_mask16.mz vr1{mr1}, 0(r7)
004224  3bef02fe  bneq r5, zero, -40
004228  00a00000  mfence { lm }
00422c  e70bcfd4  storeli.w r12, -5448(r30)
004230  3f08a200  blt.s r4, r10, 512
004234  9f010000  addli r3, zero, 0
004238  1f010000  addli r2, zero, 0
00423c  9f020000  addli r5, zero, 0
004240  db0e0000  j 116
004244  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004248  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00424c  9f000001  addli r1, zero, 128
004250  9f920200  addli r5, r5, 1
004254  6a7108c0  vsrl.p vr2, r16, vr0
004258  ea7118c0  vsrl.p vr3, r16, vr1
00425c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004260  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004264  6af100c0  vsrl.p vr2, r1, vr0
004268  eaf110c0  vsrl.p vr3, r1, vr1
00426c  9f008000  addli r1, zero, 64
004270  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004274  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004278  6af100c0  vsrl.p vr2, r1, vr0
00427c  eaf110c0  vsrl.p vr3, r1, vr1
004280  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004284  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004288  6a710bc0  vsrl.p vr2, r22, vr0
00428c  ea711bc0  vsrl.p vr3, r22, vr1
004290  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004294  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004298  fa100040  vextracti.f r1, 0(vr0)
00429c  fa930040  vextracti.f r7, 0(vr1)
0042a0  8be11110  add.f.rn r3, r3, r1
0042a4  9f000fd7  addli r1, r30, -5248
0042a8  0b617110  add.f.rn r2, r2, r7
0042ac  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0042b0  37a64200  beq r5, r4, 392
0042b4  9f830200  addli r7, r5, 0
0042b8  37400701  beq r14, r16, 16
0042bc  e3008fd5  loadli.w r1,  -5440(r30)
0042c0  97a01200  xor r1, r5, r1
0042c4  8b131210  add.s r7, r4, r1
0042c8  8b90e320  mul.s r1, r7, r14
0042cc  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0042d0  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0042d4  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0042d8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0042dc  8b901718  sub.s r1, r15, r1
0042e0  8b90e040  min.s r1, r1, r14
0042e4  bf8da0fe  blt.s r1, r10, -160
0042e8  e3048fd6  loadli.w r9,  -5312(r30)
0042ec  abcc0000  lui r25, 12
0042f0  1f060000  addli r12, zero, 0
0042f4  1f0a8fd7  addli r20, r30, -5184
0042f8  9f8c0cf0  addli r25, r25, -2048
0042fc  8b967420  mul.s r13, r9, r7
004300  9f030fd7  addli r7, r30, -5248
004304  42920302  vload_mask16.mz vr4{mr1}, 0(r7)
004308  92304002  vadd.s.mz vr1{mr1}, zero, vr4
00430c  12314002  vadd.s.mz vr2{mr1}, zero, vr4
004310  92314002  vadd.s.mz vr3{mr1}, zero, vr4
004314  8b93dc10  add.s r7, r25, r13
004318  8b1dda10  add.s r27, r20, r13
00431c  9f848300  addli r9, r7, 64
004320  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
004324  9f888301  addli r17, r7, 192
004328  c2940d02  vload_mask16.mz vr9{mr1}, 0(r27)
00432c  1f898d01  addli r18, r27, 192
004330  4a930402  vloads_mask16.mz vr6{mr1}, 0(r9)
004334  9f840301  addli r9, r7, 128
004338  4a940802  vloads_mask16.mz vr8{mr1}, 0(r17)
00433c  9f880d01  addli r17, r27, 128
004340  42100902  vload_mask16.mz vr0{mr1}, 0(r18)
004344  ca930402  vloads_mask16.mz vr7{mr1}, 0(r9)
004348  c2950802  vload_mask16.mz vr11{mr1}, 0(r17)
00434c  9f848d00  addli r9, r27, 64
004350  42950402  vload_mask16.mz vr10{mr1}, 0(r9)
004354  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004358  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
00435c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
004360  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
004364  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004368  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00436c  46905d02  vstore_mask16.mz vr5{mr1}, 0(r27)
004370  46906402  vstore_mask16.mz vr6{mr1}, 0(r9)
004374  9f048600  addli r9, r12, 64
004378  46100902  vstore_mask16.mz vr0{mr1}, 0(r18)
00437c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004380  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004384  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
004388  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00438c  46907802  vstore_mask16.mz vr7{mr1}, 0(r17)
004390  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
004394  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
004398  cbba90fe  ble.s r1, r9, -340
00439c  9f880302  addli r17, r7, 256
0043a0  1f898302  addli r18, r7, 320
0043a4  9f840d02  addli r9, r27, 256
0043a8  1f060601  addli r12, r12, 128
0043ac  9f8c0c04  addli r25, r25, 512
0043b0  1f0a0a04  addli r20, r20, 512
0043b4  4a900802  vloads_mask16.mz vr0{mr1}, 0(r17)
0043b8  9f880303  addli r17, r7, 384
0043bc  9f838303  addli r7, r7, 448
0043c0  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
0043c4  42930402  vload_mask16.mz vr6{mr1}, 0(r9)
0043c8  1f898d03  addli r18, r27, 448
0043cc  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
0043d0  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
0043d4  9f830d03  addli r7, r27, 384
0043d8  9f888d02  addli r17, r27, 320
0043dc  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
0043e0  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
0043e4  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0043e8  42130902  vload_mask16.mz vr6{mr1}, 0(r18)
0043ec  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0043f0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0043f4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0043f8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0043fc  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
004400  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
004404  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
004408  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00440c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004410  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
004414  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004418  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00441c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
004420  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004424  46106902  vstore_mask16.mz vr6{mr1}, 0(r18)
004428  bf3b16fe  blt.s r12, r1, -276
00442c  5bc3ffff  j -488
004430  1f010000  addli r2, zero, 0
004434  9f010000  addli r3, zero, 0
004438  00a00000  mfence { lm }
00443c  3fd2a700  blt.s r15, r10, 148
004440  e3407fd4  loadli.w r1,  -5572(r30)
004444  9f020000  addli r5, zero, 0
004448  8f811118  div.f.rn r3, r3, r1
00444c  8f001118  div.f.rn r1, r2, r1
004450  0be13120  mul.f.rn r2, r3, r3
004454  8be02018  sub.f.rn r1, r1, r2
004458  63013f00  loadli.w r2,  24(r30)
00445c  8be02010  add.f.rn r1, r1, r2
004460  0be10158  neg.f r2, r3
004464  9f018fd7  addli r3, r30, -5184
004468  8f800008  sqrt.f.rn r1, r1
00446c  8f801918  div.f.rn r1, r19, r1
004470  9f838100  addli r7, r3, 64
004474  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
004478  1f864200  addli r12, r5, 32
00447c  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
004480  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
004484  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
004488  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00448c  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
004490  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
004494  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
004498  cbe0c700  ble.s r15, r12, 56
00449c  9f830101  addli r7, r3, 128
0044a0  1f868101  addli r12, r3, 192
0044a4  9f828200  addli r5, r5, 64
0044a8  9f810102  addli r3, r3, 256
0044ac  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
0044b0  42110602  vload_mask16.mz vr2{mr1}, 0(r12)
0044b4  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0044b8  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
0044bc  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0044c0  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
0044c4  46901302  vstore_mask16.mz vr1{mr1}, 0(r7)
0044c8  46102602  vstore_mask16.mz vr2{mr1}, 0(r12)
0044cc  bf9ef2fe  blt.s r5, r15, -92
0044d0  00a00000  mfence { lm }
0044d4  e3431f00  loadli.w r7,  12(r30)
0044d8  9f0d8fd7  addli r27, r30, -5184
0044dc  9f787000  addli r17, zero, 63
0044e0  1f062000  addli r12, zero, 16
0044e4  1f390000  addli r18, zero, 3
0044e8  1f5a1000  addli r20, zero, 13
0044ec  9f2c1000  addli r25, zero, 10
0044f0  ab06807f  lui r13, 522240
0044f4  e3048fd4  loadli.w r9,  -5568(r30)
0044f8  3f82a7fe  blt.s r15, r10, -896
0044fc  9f008fd7  addli r1, r30, -5184
004500  1f018fd7  addli r2, r30, -5184
004504  9f010000  addli r3, zero, 0
004508  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
00450c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004510  9f028100  addli r5, r2, 64
004514  9f814100  addli r3, r3, 32
004518  1f010101  addli r2, r2, 128
00451c  6a221622  vor.u.mz vr4{mr1}, r12, vr1
004520  6a231a22  vor.u.mz vr6{mr1}, r20, vr1
004524  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
004528  ee3232c2  vsrl.s.mz vr5{mr1}, vr4, vr3
00452c  6e3222c2  vsrl.s.mz vr4{mr1}, vr4, vr2
004530  ea325502  vand.s.mz vr5{mr1}, r10, vr5
004534  6a324502  vand.s.mz vr4{mr1}, r10, vr4
004538  96b25102  vadd.s.mz vr5{mr1}, vr3, vr5
00453c  e69101c0  vabs.f vr3, vr3
004540  16324102  vadd.s.mz vr4{mr1}, vr2, vr4
004544  661101c0  vabs.f vr2, vr2
004548  92b25a02  vadd.s.mz vr5{mr1}, r21, vr5
00454c  72a13642  vlt.u.mz mr2{mr1}, r13, vr3
004550  12b24a02  vadd.s.mz vr4{mr1}, r21, vr4
004554  eab25502  vand.s.mz vr5{mr1}, r11, vr5
004558  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
00455c  ea221c34  vor.u.mh vr5{mr2}, r24, vr1
004560  72a12642  vlt.u.mz mr2{mr1}, r13, vr2
004564  6a211922  vor.u.mz vr2{mr1}, r18, vr1
004568  6a221c34  vor.u.mh vr4{mr2}, r24, vr1
00456c  eaa01c22  vor.u.mz vr1{mr1}, r25, vr1
004570  ee3153c2  vsrl.s.mz vr3{mr1}, vr6, vr5
004574  ee3251c2  vsrl.s.mz vr5{mr1}, vr2, vr5
004578  6e3141c2  vsrl.s.mz vr2{mr1}, vr2, vr4
00457c  6e3343c2  vsrl.s.mz vr6{mr1}, vr6, vr4
004580  ea313e02  vand.s.mz vr3{mr1}, r28, vr3
004584  ea325d02  vand.s.mz vr5{mr1}, r26, vr5
004588  6a326e02  vand.s.mz vr4{mr1}, r28, vr6
00458c  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
004590  eab13922  vor.s.mz vr3{mr1}, r19, vr3
004594  eab25922  vor.s.mz vr5{mr1}, r19, vr5
004598  6ab12922  vor.s.mz vr2{mr1}, r19, vr2
00459c  6ab24922  vor.s.mz vr4{mr1}, r19, vr4
0045a0  86910120  vfloat2fp16_l.rz vr3, vr3
0045a4  06510120  vfloat2fp16_h.rz vr2, vr2
0045a8  86510220  vfloat2fp16_h.rz vr3, vr4
0045ac  06910220  vfloat2fp16_l.rz vr2, vr5
0045b0  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
0045b4  6a312302  vand.s.mz vr2{mr1}, r6, vr2
0045b8  ea301402  vand.s.mz vr1{mr1}, r8, vr1
0045bc  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
0045c0  46801002  vstore.mz vr1{mr1}, 0(r1)
0045c4  9f808000  addli r1, r1, 64
0045c8  3f8df1fe  blt.s r3, r15, -192
0045cc  db75ffff  j -1108
0045d0  2b330100  lui r6, 19
0045d4  80390002  core_id r19
0045d8  80500102  load_param_i r1, 2
0045dc  1f110000  addli r2, zero, 1
0045e0  9f038fd7  addli r7, r30, -5184
0045e4  1f048000  addli r8, zero, 64
0045e8  1f050010  addli r10, zero, 2048
0045ec  9bb15900  slli r3, r19, 5
0045f0  9bb45000  slli r9, r1, 5
0045f4  1f0303f8  addli r6, r6, -1024
0045f8  b3850128  zext_int2long r[12:13], r3
0045fc  ab0600f0  lui r13, 983040
004600  97b52502  sll.d r[12:13], r[12:13], r2
004604  9716d400  or r13, r8, r13
004608  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
00460c  ffa67500  l_gm2lm r13, r7, 0(r[12:13])
004610  9bb52100  slli r11, r3, 2
004614  8b913410  add.s r3, r9, r3
004618  00a00200  mfence { lm, gm }
00461c  42800302  vload.mz vr0{mr1}, 0(r7)
004620  1386a104  setlt.u r12, r3, r10
004624  8b956510  add.s r11, r11, r6
004628  9f868500  addli r13, r11, 64
00462c  86300000  vfp162float_l.rn vr1, vr0
004630  06700000  vfp162float_h.rn vr0, vr0
004634  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
004638  4e900602  vstores_mask16.mz vr0{mr1}, 0(r13)
00463c  bb7e06fe  bneq r12, zero, -68
004640  2bf10000  lui r2, 15
004644  00a00300  mfence { lm, sm, gm }
004648  1f020006  addli r4, zero, 768
00464c  9b11f1ff  ori r3, r2, 4095
004650  1b811900  andi r2, r19, 1
004654  80a10104  csr_set csr3, r3
004658  9f010006  addli r3, zero, 768
00465c  00d00100  sync_group
004660  67082fd6  storeli.w r2, -5248(r30)
004664  37200100  beq r2, zero, 8
004668  9f01000a  addli r3, zero, 1280
00466c  e3421f00  loadli.w r5,  12(r30)
004670  1f110000  addli r2, zero, 1
004674  bfb52210  blt.s r5, r2, 8556
004678  1bc41000  srli r8, r1, 1
00467c  9bb02100  slli r1, r3, 2
004680  9f058fd7  addli r11, r30, -5184
004684  63010fd7  loadli.w r2,  -5248(r30)
004688  1bb51100  slli r10, r3, 1
00468c  ab5b0100  lui r23, 21
004690  2b5e0100  lui r28, 21
004694  9f020000  addli r5, zero, 0
004698  9bc41900  srli r9, r19, 1
00469c  9f777000  addli r15, zero, 63
0046a0  1f090005  addli r18, zero, 640
0046a4  1f0a0001  addli r20, zero, 128
0046a8  9f0a8000  addli r21, zero, 64
0046ac  1f0b4000  addli r22, zero, 32
0046b0  9f0d0003  addli r27, zero, 384
0046b4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0046b8  8b90b010  add.s r1, r1, r11
0046bc  9f8b0bf8  addli r23, r23, -1024
0046c0  1f0e0efc  addli r28, r28, -512
0046c4  0b114120  mul.s r2, r2, r4
0046c8  0b12b510  add.s r4, r10, r11
0046cc  9f8080ff  addli r1, r1, -64
0046d0  67042fd6  storeli.w r2, -5312(r30)
0046d4  1f814100  addli r2, r3, 32
0046d8  e70b1fd4  storeli.w r1, -5448(r30)
0046dc  9f0082ff  addli r1, r4, -64
0046e0  670c2fd4  storeli.w r2, -5440(r30)
0046e4  1f018fd4  addli r2, r30, -5568
0046e8  670b1fd4  storeli.w r1, -5456(r30)
0046ec  abf0ffff  lui r1, 1048575
0046f0  00a00000  mfence { lm }
0046f4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0046f8  9b9000f8  ori r1, r1, 3968
0046fc  e7431fd4  storeli.w r1, -5572(r30)
004700  abf00000  lui r1, 15
004704  1b9cf0ff  ori r24, r1, 4095
004708  db030000  j 28
00470c  00a00300  mfence { lm, sm, gm }
004710  80210c04  csr_set csr3, r24
004714  00d00100  sync_group
004718  8b928210  add.s r5, r5, r8
00471c  3fa09201  blt.s r5, r25, 8
004720  5bb2f8ff  j -14960
004724  8b909210  add.s r1, r5, r9
004728  cb9f1cfe  ble.s r25, r1, -28
00472c  63011f00  loadli.w r2,  8(r30)
004730  0b828230  div.u r4, r5, r8
004734  8b902010  add.s r1, r1, r2
004738  63018fd6  loadli.w r2,  -5312(r30)
00473c  9bb0b000  slli r1, r1, 11
004740  1b326200  slli r4, r4, 6
004744  97902000  or r1, r1, r2
004748  1f110000  addli r2, zero, 1
00474c  1b020204  andi r4, r4, 64
004750  33960028  sext_int2long r[13:14], r1
004754  ab0000f0  lui r1, 983040
004758  171d3201  or r26, r4, r19
00475c  17382602  sll.d r[17:18], r[13:14], r2
004760  1f017fd6  addli r2, r30, -5320
004764  97101500  or r1, r10, r1
004768  6b560100  load.d r[13:14], 0(r2)
00476c  0b260611  add.ul r[13:14], r[13:14], r[17:18]
004770  ff20b600  l_gm2lm r1, r11, 0(r[13:14])
004774  00a00200  mfence { lm, gm }
004778  e3006fd5  loadli.w r1,  -5456(r30)
00477c  63027fd5  loadli.w r4,  -5448(r30)
004780  e3038fd5  loadli.w r7,  -5440(r30)
004784  c2800002  vload.mz vr1{mr1}, 0(r1)
004788  9f83c3ff  addli r7, r7, -32
00478c  9f0682ff  addli r13, r4, -64
004790  9f8080ff  addli r1, r1, -64
004794  13867704  setlt.u r12, r15, r7
004798  06f10000  vfp162float_h.rn vr2, vr1
00479c  86b00000  vfp162float_l.rn vr1, vr1
0047a0  46102202  vstore_mask16.mz vr2{mr1}, 0(r4)
0047a4  1f0202ff  addli r4, r4, -128
0047a8  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
0047ac  3b6f06fe  bneq r12, zero, -40
0047b0  00a00000  mfence { lm }
0047b4  e3000fd7  loadli.w r1,  -5248(r30)
0047b8  3ba60000  bneq r1, zero, 392
0047bc  1f018fd4  addli r2, r30, -5568
0047c0  63427fd4  loadli.w r4,  -5572(r30)
0047c4  9f000000  addli r1, zero, 0
0047c8  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
0047cc  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0047d0  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0047d4  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0047d8  0b966010  add.s r12, r1, r6
0047dc  8b931510  add.s r7, r11, r1
0047e0  1f020201  addli r4, r4, 128
0047e4  9f800004  addli r1, r1, 512
0047e8  1f010601  addli r2, r12, 128
0047ec  4a100602  vloads_mask16.mz vr0{mr1}, 0(r12)
0047f0  9f068600  addli r13, r12, 64
0047f4  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
0047f8  1f878301  addli r14, r7, 192
0047fc  ca120102  vloads_mask16.mz vr5{mr1}, 0(r2)
004800  1f018601  addli r2, r12, 192
004804  4a930602  vloads_mask16.mz vr6{mr1}, 0(r13)
004808  9f868300  addli r13, r7, 64
00480c  c2150702  vload_mask16.mz vr11{mr1}, 0(r14)
004810  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
004814  1f810301  addli r2, r7, 128
004818  42950602  vload_mask16.mz vr10{mr1}, 0(r13)
00481c  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
004820  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004824  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004828  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00482c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004830  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004834  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
004838  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
00483c  1f010602  addli r2, r12, 256
004840  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004844  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004848  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00484c  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
004850  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
004854  1f018602  addli r2, r12, 320
004858  46106702  vstore_mask16.mz vr6{mr1}, 0(r14)
00485c  1f870302  addli r14, r7, 256
004860  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004864  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004868  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00486c  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
004870  1f010603  addli r2, r12, 384
004874  c2130702  vload_mask16.mz vr7{mr1}, 0(r14)
004878  1f068603  addli r12, r12, 448
00487c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004880  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
004884  1f818302  addli r2, r7, 320
004888  4a150602  vloads_mask16.mz vr10{mr1}, 0(r12)
00488c  1f860303  addli r12, r7, 384
004890  9f838303  addli r7, r7, 448
004894  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
004898  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00489c  c2130602  vload_mask16.mz vr7{mr1}, 0(r12)
0048a0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0048a4  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0048a8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0048ac  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0048b0  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
0048b4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0048b8  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
0048bc  13012205  setlt.u r2, r4, r18
0048c0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0048c4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0048c8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0048cc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0048d0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0048d4  46105602  vstore_mask16.mz vr5{mr1}, 0(r12)
0048d8  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
0048dc  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0048e0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0048e4  bb5b01fe  bneq r2, zero, -268
0048e8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0048ec  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0048f0  9f000002  addli r1, zero, 256
0048f4  6af100c0  vsrl.p vr2, r1, vr0
0048f8  eaf110c0  vsrl.p vr3, r1, vr1
0048fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004900  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004904  6a710ac0  vsrl.p vr2, r20, vr0
004908  ea711ac0  vsrl.p vr3, r20, vr1
00490c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004910  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004914  6af10ac0  vsrl.p vr2, r21, vr0
004918  eaf11ac0  vsrl.p vr3, r21, vr1
00491c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004920  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004924  6a710bc0  vsrl.p vr2, r22, vr0
004928  ea711bc0  vsrl.p vr3, r22, vr1
00492c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004930  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004934  7a120040  vextracti.f r4, 0(vr0)
004938  fa900040  vextracti.f r1, 0(vr1)
00493c  5b640000  j 800
004940  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004944  2bf1ffff  lui r2, 1048575
004948  9f000000  addli r1, zero, 0
00494c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004950  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004954  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004958  1b1201f8  ori r4, r2, 3968
00495c  0b161310  add.s r12, r6, r1
004960  8b931510  add.s r7, r11, r1
004964  1f020201  addli r4, r4, 128
004968  9f800004  addli r1, r1, 512
00496c  1f070631  addli r14, r12, 6272
004970  9f060630  addli r13, r12, 6144
004974  1f018631  addli r2, r12, 6336
004978  9f8c0318  addli r25, r7, 3072
00497c  ca130702  vloads_mask16.mz vr7{mr1}, 0(r14)
004980  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
004984  9f068630  addli r13, r12, 6208
004988  ca140102  vloads_mask16.mz vr9{mr1}, 0(r2)
00498c  1f818318  addli r2, r7, 3136
004990  1f878319  addli r14, r7, 3264
004994  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
004998  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
00499c  9f860319  addli r13, r7, 3200
0049a0  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
0049a4  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
0049a8  42950602  vload_mask16.mz vr10{mr1}, 0(r13)
0049ac  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0049b0  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0049b4  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0049b8  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0049bc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0049c0  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0049c4  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
0049c8  9f060632  addli r13, r12, 6400
0049cc  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0049d0  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
0049d4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0049d8  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
0049dc  1f87031a  addli r14, r7, 3328
0049e0  c2130702  vload_mask16.mz vr7{mr1}, 0(r14)
0049e4  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
0049e8  1f81031b  addli r2, r7, 3456
0049ec  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0049f0  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0049f4  4a900602  vloads_mask16.mz vr0{mr1}, 0(r13)
0049f8  9f068632  addli r13, r12, 6464
0049fc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004a00  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004a04  4a930602  vloads_mask16.mz vr6{mr1}, 0(r13)
004a08  9f060633  addli r13, r12, 6528
004a0c  1f068633  addli r12, r12, 6592
004a10  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
004a14  9f86831a  addli r13, r7, 3392
004a18  4a150602  vloads_mask16.mz vr10{mr1}, 0(r12)
004a1c  9f83831b  addli r7, r7, 3520
004a20  1306b205  setlt.u r12, r4, r27
004a24  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
004a28  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004a2c  c2130102  vload_mask16.mz vr7{mr1}, 0(r2)
004a30  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004a34  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
004a38  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004a3c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004a40  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
004a44  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004a48  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
004a4c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004a50  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004a54  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004a58  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004a5c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004a60  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
004a64  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
004a68  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004a6c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004a70  bb3b06fe  bneq r12, zero, -276
004a74  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004a78  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004a7c  9f000002  addli r1, zero, 256
004a80  2bf1ffff  lui r2, 1048575
004a84  9f030000  addli r7, zero, 0
004a88  9b1c01f8  ori r25, r2, 3968
004a8c  eaf110c0  vsrl.p vr3, r1, vr1
004a90  6af100c0  vsrl.p vr2, r1, vr0
004a94  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004a98  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004a9c  ea711ac0  vsrl.p vr3, r20, vr1
004aa0  6a710ac0  vsrl.p vr2, r20, vr0
004aa4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004aa8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004aac  eaf11ac0  vsrl.p vr3, r21, vr1
004ab0  6af10ac0  vsrl.p vr2, r21, vr0
004ab4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004ab8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004abc  ea711bc0  vsrl.p vr3, r22, vr1
004ac0  6a710bc0  vsrl.p vr2, r22, vr0
004ac4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004ac8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004acc  fa900040  vextracti.f r1, 0(vr1)
004ad0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004ad4  7a120040  vextracti.f r4, 0(vr0)
004ad8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004adc  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004ae0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004ae4  8b167310  add.s r13, r6, r7
004ae8  0b967510  add.s r12, r11, r7
004aec  9f8c0c01  addli r25, r25, 128
004af0  9f830304  addli r7, r7, 512
004af4  1f810618  addli r2, r13, 3072
004af8  1f870619  addli r14, r13, 3200
004afc  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
004b00  9f098601  addli r19, r12, 192
004b04  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
004b08  ca120702  vloads_mask16.mz vr5{mr1}, 0(r14)
004b0c  1f818618  addli r2, r13, 3136
004b10  1f878619  addli r14, r13, 3264
004b14  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
004b18  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
004b1c  1f010601  addli r2, r12, 128
004b20  ca130702  vloads_mask16.mz vr7{mr1}, 0(r14)
004b24  1f078600  addli r14, r12, 64
004b28  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
004b2c  42150702  vload_mask16.mz vr10{mr1}, 0(r14)
004b30  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004b34  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004b38  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004b3c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004b40  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
004b44  1f81061a  addli r2, r13, 3328
004b48  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004b4c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004b50  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004b54  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004b58  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
004b5c  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
004b60  1f81861a  addli r2, r13, 3392
004b64  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
004b68  9f090602  addli r19, r12, 256
004b6c  46105702  vstore_mask16.mz vr5{mr1}, 0(r14)
004b70  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004b74  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004b78  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
004b7c  1f81061b  addli r2, r13, 3456
004b80  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
004b84  9f86861b  addli r13, r13, 3520
004b88  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004b8c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004b90  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
004b94  1f018602  addli r2, r12, 320
004b98  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
004b9c  9f060603  addli r13, r12, 384
004ba0  1f068603  addli r12, r12, 448
004ba4  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
004ba8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004bac  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
004bb0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004bb4  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
004bb8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004bbc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004bc0  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
004bc4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004bc8  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
004bcc  13812c05  setlt.u r2, r25, r18
004bd0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004bd4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004bd8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004bdc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004be0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004be4  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
004be8  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
004bec  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004bf0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004bf4  bb4b01fe  bneq r2, zero, -272
004bf8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004bfc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004c00  1f010002  addli r2, zero, 256
004c04  e34c1f00  loadli.w r25,  12(r30)
004c08  80390002  core_id r19
004c0c  6a7101c0  vsrl.p vr2, r2, vr0
004c10  ea7111c0  vsrl.p vr3, r2, vr1
004c14  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004c18  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004c1c  6a710ac0  vsrl.p vr2, r20, vr0
004c20  ea711ac0  vsrl.p vr3, r20, vr1
004c24  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004c28  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004c2c  6af10ac0  vsrl.p vr2, r21, vr0
004c30  eaf11ac0  vsrl.p vr3, r21, vr1
004c34  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004c38  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004c3c  6a710bc0  vsrl.p vr2, r22, vr0
004c40  ea711bc0  vsrl.p vr3, r22, vr1
004c44  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004c48  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004c4c  7a110040  vextracti.f r2, 0(vr0)
004c50  fa930040  vextracti.f r7, 0(vr1)
004c54  0b622210  add.f.rn r4, r4, r2
004c58  8be07010  add.f.rn r1, r1, r7
004c5c  1b312d00  slli r2, r26, 2
004c60  0b16c111  add.s r12, r2, r28
004c64  8b137111  add.s r7, r2, r23
004c68  1b114100  ori r2, r2, 4
004c6c  73601600  stores.w r1, 0(r12)
004c70  9b00ed07  andi r1, r26, 126
004c74  73e04300  stores.w r4, 0(r7)
004c78  0b127111  add.s r4, r2, r23
004c7c  0b11c111  add.s r2, r2, r28
004c80  1f060000  addli r12, zero, 0
004c84  00a00300  mfence { lm, sm, gm }
004c88  80210c04  csr_set csr3, r24
004c8c  00d00100  sync_group
004c90  9bb02000  slli r1, r1, 2
004c94  6f420200  loads.w r4, 0(r4)
004c98  6f410100  loads.w r2, 0(r2)
004c9c  8b937011  add.s r7, r1, r23
004ca0  8b90c011  add.s r1, r1, r28
004ca4  efc30300  loads.w r7, 0(r7)
004ca8  efc00000  loads.w r1, 0(r1)
004cac  0b627210  add.f.rn r4, r4, r7
004cb0  ab03003a  lui r7, 237568
004cb4  8b601110  add.f.rn r1, r2, r1
004cb8  0b617220  mul.f.rn r2, r4, r7
004cbc  8be07020  mul.f.rn r1, r1, r7
004cc0  9f038fd7  addli r7, r30, -5184
004cc4  0b622120  mul.f.rn r4, r2, r2
004cc8  8be04018  sub.f.rn r1, r1, r4
004ccc  63023f00  loadli.w r4,  24(r30)
004cd0  8be04010  add.f.rn r1, r1, r4
004cd4  2b02803f  lui r4, 260096
004cd8  8f800008  sqrt.f.rn r1, r1
004cdc  8f001218  div.f.rn r1, r4, r1
004ce0  0b620158  neg.f r4, r2
004ce4  1f818300  addli r2, r7, 64
004ce8  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
004cec  9f064600  addli r13, r12, 32
004cf0  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004cf4  9386d106  setle.u r13, r3, r13
004cf8  12100202  vadd.f.mz.rn vr0{mr1}, r4, vr0
004cfc  92101202  vadd.f.mz.rn vr1{mr1}, r4, vr1
004d00  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
004d04  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004d08  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
004d0c  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
004d10  bbf00600  bneq r13, zero, 60
004d14  1f810301  addli r2, r7, 128
004d18  9f868301  addli r13, r7, 192
004d1c  1f068600  addli r12, r12, 64
004d20  9f830302  addli r7, r7, 256
004d24  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
004d28  c2900602  vload_mask16.mz vr1{mr1}, 0(r13)
004d2c  13073604  setlt.u r14, r12, r3
004d30  12100202  vadd.f.mz.rn vr0{mr1}, r4, vr0
004d34  92101202  vadd.f.mz.rn vr1{mr1}, r4, vr1
004d38  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
004d3c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004d40  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004d44  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
004d48  3b7e07fe  bneq r14, zero, -100
004d4c  9f008fd7  addli r1, r30, -5184
004d50  1f028fd7  addli r4, r30, -5184
004d54  9f030000  addli r7, zero, 0
004d58  00a00000  mfence { lm }
004d5c  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
004d60  1f018200  addli r2, r4, 64
004d64  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
004d68  9f834300  addli r7, r7, 32
004d6c  1f020201  addli r4, r4, 128
004d70  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004d74  13813304  setlt.u r2, r7, r3
004d78  06110000  vfloat2fp16_l.rn vr2, vr0
004d7c  06d10000  vfloat2fp16_h.rn vr2, vr1
004d80  46802002  vstore.mz vr2{mr1}, 0(r1)
004d84  9f808000  addli r1, r1, 64
004d88  3b5f01fe  bneq r2, zero, -44
004d8c  6b560f00  load.d r[13:14], 0(r30)
004d90  ab0000f0  lui r1, 983040
004d94  00a00000  mfence { lm }
004d98  97101500  or r1, r10, r1
004d9c  0b260611  add.ul r[13:14], r[13:14], r[17:18]
004da0  ff30b600  s_lm2gm r1, r11, 0(r[13:14])
004da4  00a00200  mfence { lm, gm }
004da8  5b2effff  j -1680
004dac  80300002  core_id r1
004db0  e3012f00  loadli.w r3,  16(r30)
004db4  1bb15000  slli r2, r1, 5
004db8  cb912100  ble.s r3, r2, 100
004dbc  00540102  load_param_i r8, 2
004dc0  ab840100  lui r9, 24
004dc4  9f110000  addli r3, zero, 1
004dc8  1f038fd7  addli r6, r30, -5184
004dcc  9f038000  addli r7, zero, 64
004dd0  1b345400  slli r8, r8, 5
004dd4  9f840400  addli r9, r9, 0
004dd8  33050128  zext_int2long r[11:12], r2
004ddc  2b0600f0  lui r12, 983040
004de0  17353502  sll.d r[11:12], r[11:12], r3
004de4  1796c300  or r12, r7, r12
004de8  0b25a210  add.ul r[11:12], r[5:6], r[11:12]
004dec  7f266500  l_gm2lm r12, r6, 0(r[11:12])
004df0  1b352100  slli r10, r2, 2
004df4  0b112410  add.s r2, r8, r2
004df8  00a00200  mfence { lm, gm }
004dfc  42000302  vload.mz vr0{mr1}, 0(r6)
004e00  0b159510  add.s r10, r10, r9
004e04  9f058500  addli r11, r10, 64
004e08  86300000  vfp162float_l.rn vr1, vr0
004e0c  06700000  vfp162float_h.rn vr0, vr0
004e10  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
004e14  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
004e18  3f0ff1fe  blt.s r2, r15, -64
004e1c  2bf10000  lui r2, 15
004e20  e3411f00  loadli.w r3,  12(r30)
004e24  00a00300  mfence { lm, sm, gm }
004e28  1b11f1ff  ori r2, r2, 4095
004e2c  80210104  csr_set csr3, r2
004e30  00d00100  sync_group
004e34  cbb6110c  ble.s r3, r1, 6572
004e38  63032f00  loadli.w r6,  16(r30)
004e3c  e3432f00  loadli.w r7,  20(r30)
004e40  9f0b8fd7  addli r23, r30, -5184
004e44  1f150000  addli r10, zero, 1
004e48  9f054000  addli r11, zero, 32
004e4c  1f767000  addli r12, zero, 63
004e50  1f080002  addli r16, zero, 256
004e54  9f080001  addli r17, zero, 128
004e58  1f098000  addli r18, zero, 64
004e5c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004e60  0b127310  add.s r4, r6, r7
004e64  33010308  fix2float.rn r2, r6
004e68  1b342300  slli r8, r6, 2
004e6c  9b321300  slli r5, r6, 1
004e70  9bb42300  slli r9, r7, 2
004e74  1f72f2ff  addli r4, r4, -1
004e78  670c2fd4  storeli.w r2, -5440(r30)
004e7c  1f014300  addli r2, r6, 32
004e80  0b137411  add.s r6, r8, r23
004e84  0b947211  add.s r8, r5, r23
004e88  e70b2fd4  storeli.w r2, -5448(r30)
004e8c  1f0183ff  addli r2, r6, -64
004e90  2bf3ffff  lui r6, 1048575
004e94  0b127230  div.s r4, r4, r7
004e98  670b2fd4  storeli.w r2, -5456(r30)
004e9c  1f0184ff  addli r2, r8, -64
004ea0  9b16f3ff  ori r13, r6, 4095
004ea4  2b830100  lui r6, 24
004ea8  67042fd4  storeli.w r2, -5568(r30)
004eac  1f010fd7  addli r2, r30, -5248
004eb0  1f030300  addli r6, r6, 0
004eb4  00a00000  mfence { lm }
004eb8  67045fd6  storeli.w r5, -5312(r30)
004ebc  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004ec0  db060000  j 52
004ec4  eb530f00  load.d r[8:9], 0(r30)
004ec8  ab0900f0  lui r19, 983040
004ecc  9f0b8fd7  addli r23, r30, -5184
004ed0  005a0102  load_param_i r20, 2
004ed4  00a00000  mfence { lm }
004ed8  97993201  or r19, r5, r19
004edc  8b101a10  add.s r1, r20, r1
004ee0  8ba35311  add.ul r[8:9], r[8:9], r[22:23]
004ee4  ffb97301  s_lm2gm r19, r23, 0(r[8:9])
004ee8  00a00200  mfence { lm, gm }
004eec  3fa02000  blt.s r1, r2, 8
004ef0  5b1e0300  j 6384
004ef4  63011f00  loadli.w r2,  8(r30)
004ef8  8b932010  add.s r7, r1, r2
004efc  8b93f320  mul.s r7, r7, r15
004f00  b3930328  sext_int2long r[8:9], r7
004f04  97baa302  sll.d r[22:23], r[8:9], r10
004f08  1f047fd6  addli r8, r30, -5320
004f0c  ab0300f0  lui r7, 983040
004f10  6b510400  load.d r[3:4], 0(r8)
004f14  97937200  or r7, r5, r7
004f18  8b295111  add.ul r[20:21], r[3:4], r[22:23]
004f1c  ffa37901  l_gm2lm r7, r23, 0(r[20:21])
004f20  00a00200  mfence { lm, gm }
004f24  bff0b700  blt.s r15, r11, 60
004f28  e3038fd4  loadli.w r7,  -5568(r30)
004f2c  63046fd5  loadli.w r8,  -5456(r30)
004f30  e3097fd5  loadli.w r19,  -5448(r30)
004f34  c2800302  vload.mz vr1{mr1}, 0(r7)
004f38  9f89c9ff  addli r19, r19, -32
004f3c  9f0b84ff  addli r23, r8, -64
004f40  9f8383ff  addli r7, r7, -64
004f44  130a3605  setlt.u r20, r12, r19
004f48  06f10000  vfp162float_h.rn vr2, vr1
004f4c  86b00000  vfp162float_l.rn vr1, vr1
004f50  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
004f54  1f0404ff  addli r8, r8, -128
004f58  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
004f5c  3b6f0afe  bneq r20, zero, -40
004f60  00a00000  mfence { lm }
004f64  bf17a200  blt.s r4, r10, 484
004f68  1f0c0000  addli r24, zero, 0
004f6c  9f0b0000  addli r23, zero, 0
004f70  9f0c0000  addli r25, zero, 0
004f74  db0c0000  j 100
004f78  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004f7c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004f80  9f9c0c00  addli r25, r25, 1
004f84  6a7108c0  vsrl.p vr2, r16, vr0
004f88  ea7118c0  vsrl.p vr3, r16, vr1
004f8c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f90  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f94  6af108c0  vsrl.p vr2, r17, vr0
004f98  eaf118c0  vsrl.p vr3, r17, vr1
004f9c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004fa0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004fa4  6a7109c0  vsrl.p vr2, r18, vr0
004fa8  ea7119c0  vsrl.p vr3, r18, vr1
004fac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004fb0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004fb4  6af105c0  vsrl.p vr2, r11, vr0
004fb8  eaf115c0  vsrl.p vr3, r11, vr1
004fbc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004fc0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004fc4  7a110040  vextracti.f r2, 0(vr0)
004fc8  fa910040  vextracti.f r3, 0(vr1)
004fcc  0b6c2c10  add.f.rn r24, r24, r2
004fd0  8beb3b10  add.f.rn r23, r23, r3
004fd4  b7f54c00  beq r25, r4, 380
004fd8  9f830c00  addli r7, r25, 0
004fdc  37300701  beq r14, r16, 12
004fe0  97a3dc00  xor r7, r25, r13
004fe4  8b137210  add.s r7, r4, r7
004fe8  1f010fd7  addli r2, r30, -5248
004fec  0b94e320  mul.s r8, r7, r14
004ff0  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004ff4  0b948718  sub.s r8, r15, r8
004ff8  0b1de440  min.s r26, r8, r14
004ffc  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005000  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005004  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005008  bf4dadfe  blt.s r26, r10, -144
00500c  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
005010  9f0d0000  addli r27, zero, 0
005014  0b9e7420  mul.s r28, r9, r7
005018  9f098fd7  addli r19, r30, -5184
00501c  1f0a0300  addli r20, r6, 0
005020  92304002  vadd.s.mz vr1{mr1}, zero, vr4
005024  12314002  vadd.s.mz vr2{mr1}, zero, vr4
005028  92314002  vadd.s.mz vr3{mr1}, zero, vr4
00502c  0b14ca11  add.s r8, r20, r28
005030  8b93c911  add.s r7, r19, r28
005034  9f028400  addli r5, r8, 64
005038  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
00503c  9f018401  addli r3, r8, 192
005040  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
005044  1f818301  addli r2, r7, 192
005048  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
00504c  9f020401  addli r5, r8, 128
005050  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
005054  9f818300  addli r3, r7, 64
005058  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
00505c  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
005060  9f820301  addli r5, r7, 128
005064  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
005068  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
00506c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
005070  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
005074  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
005078  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
00507c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005080  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005084  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
005088  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
00508c  9f818d00  addli r3, r27, 64
005090  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005094  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
005098  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00509c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0050a0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0050a4  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
0050a8  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
0050ac  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0050b0  4b2b3dfe  ble.s r26, r3, -312
0050b4  9f010402  addli r3, r8, 256
0050b8  9f028402  addli r5, r8, 320
0050bc  1f810302  addli r2, r7, 256
0050c0  9f8d0d01  addli r27, r27, 128
0050c4  1f0a0a04  addli r20, r20, 512
0050c8  9f890904  addli r19, r19, 512
0050cc  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
0050d0  9f010403  addli r3, r8, 384
0050d4  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
0050d8  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
0050dc  9f828302  addli r5, r7, 320
0050e0  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
0050e4  9f018403  addli r3, r8, 448
0050e8  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
0050ec  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
0050f0  9f810303  addli r3, r7, 384
0050f4  9f838303  addli r7, r7, 448
0050f8  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
0050fc  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
005100  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
005104  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
005108  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
00510c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005110  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005114  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005118  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
00511c  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
005120  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
005124  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005128  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
00512c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005130  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005134  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
005138  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00513c  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
005140  bfbbadff  blt.s r27, r26, -276
005144  dbc6ffff  j -460
005148  9f0b0000  addli r23, zero, 0
00514c  1f0c0000  addli r24, zero, 0
005150  00a00000  mfence { lm }
005154  3fe2a700  blt.s r15, r10, 152
005158  63018fd5  loadli.w r2,  -5440(r30)
00515c  1f0a0000  addli r20, zero, 0
005160  0f042c18  div.f.rn r8, r24, r2
005164  8f832b18  div.f.rn r7, r23, r2
005168  63013f00  loadli.w r2,  24(r30)
00516c  8b698420  mul.f.rn r19, r8, r8
005170  0b640458  neg.f r8, r8
005174  8be33319  sub.f.rn r7, r7, r19
005178  9f098fd7  addli r19, r30, -5184
00517c  8be32310  add.f.rn r7, r7, r2
005180  2b01803f  lui r2, 260096
005184  8f830308  sqrt.f.rn r7, r7
005188  8f037118  div.f.rn r7, r2, r7
00518c  9f8b8900  addli r23, r19, 64
005190  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
005194  1f0c4a00  addli r24, r20, 32
005198  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
00519c  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
0051a0  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
0051a4  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
0051a8  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
0051ac  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
0051b0  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
0051b4  cbe08701  ble.s r15, r24, 56
0051b8  9f8b0901  addli r23, r19, 128
0051bc  1f8c8901  addli r24, r19, 192
0051c0  1f0a8a00  addli r20, r20, 64
0051c4  9f890902  addli r19, r19, 256
0051c8  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
0051cc  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
0051d0  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
0051d4  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
0051d8  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
0051dc  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
0051e0  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
0051e4  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
0051e8  bf1efafe  blt.s r20, r15, -92
0051ec  00a00000  mfence { lm }
0051f0  63411f00  loadli.w r2,  12(r30)
0051f4  e3028fd6  loadli.w r5,  -5312(r30)
0051f8  3fb3a7fe  blt.s r15, r10, -820
0051fc  9f038fd7  addli r7, r30, -5184
005200  1f048fd7  addli r8, r30, -5184
005204  9f090000  addli r19, zero, 0
005208  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
00520c  1f0a8400  addli r20, r8, 64
005210  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
005214  9f894900  addli r19, r19, 32
005218  1f040401  addli r8, r8, 128
00521c  42110a02  vload_mask16.mz vr2{mr1}, 0(r20)
005220  86910000  vfloat2fp16_l.rn vr3, vr1
005224  86510100  vfloat2fp16_h.rn vr3, vr2
005228  46803302  vstore.mz vr3{mr1}, 0(r7)
00522c  9f838300  addli r7, r7, 64
005230  3feff9fe  blt.s r19, r15, -40
005234  5b92ffff  j -880
005238  63012f00  loadli.w r2,  16(r30)
00523c  ab0100f0  lui r3, 983040
005240  1b311100  slli r2, r2, 1
005244  17113100  or r2, r2, r3
005248  aba10100  lui r3, 26
00524c  9f810100  addli r3, r3, 0
005250  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005254  5b080000  j 64
005258  63012f00  loadli.w r2,  16(r30)
00525c  ab0100f0  lui r3, 983040
005260  1b311100  slli r2, r2, 1
005264  17113100  or r2, r2, r3
005268  abe10100  lui r3, 30
00526c  9f810100  addli r3, r3, 0
005270  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005274  5bc30000  j 1560
005278  63012f00  loadli.w r2,  16(r30)
00527c  ab0100f0  lui r3, 983040
005280  1b311100  slli r2, r2, 1
005284  17113100  or r2, r2, r3
005288  abb10100  lui r3, 27
00528c  9f810100  addli r3, r3, 0
005290  7f013400  l_gm2sm r2, r3, 0(r[9:10])
005294  2bf10000  lui r2, 15
005298  e3411f00  loadli.w r3,  12(r30)
00529c  00200300  mfence { sm, gm }
0052a0  1b11f1ff  ori r2, r2, 4095
0052a4  80210104  csr_set csr3, r2
0052a8  00d00100  sync_group
0052ac  cbd4110a  ble.s r3, r1, 5428
0052b0  63012f00  loadli.w r2,  16(r30)
0052b4  e3412f00  loadli.w r3,  20(r30)
0052b8  1f052000  addli r10, zero, 16
0052bc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0052c0  1f130000  addli r6, zero, 1
0052c4  9f040002  addli r9, zero, 256
0052c8  2b06ffff  lui r12, 1048560
0052cc  2b08807f  lui r16, 522240
0052d0  ab08c07f  lui r17, 523264
0052d4  1f090001  addli r18, zero, 128
0052d8  9f098000  addli r19, zero, 64
0052dc  1f0a4000  addli r20, zero, 32
0052e0  9b351100  slli r11, r2, 1
0052e4  0b123110  add.s r4, r2, r3
0052e8  33010108  fix2float.rn r2, r2
0052ec  670b2fd4  storeli.w r2, -5456(r30)
0052f0  1f71f2ff  addli r2, r4, -1
0052f4  1bb21100  slli r4, r3, 1
0052f8  e70bbfd4  storeli.w r11, -5448(r30)
0052fc  8b123130  div.s r5, r2, r3
005300  2bf1ffff  lui r2, 1048575
005304  9f018fd7  addli r3, r30, -5184
005308  1b14f1ff  ori r8, r2, 4095
00530c  1f010fd7  addli r2, r30, -5248
005310  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005314  6a200522  vor.u.mz vr0{mr1}, r10, vr0
005318  1f018fd6  addli r2, r30, -5312
00531c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005320  2b710000  lui r2, 7
005324  9b16f1ff  ori r13, r2, 4095
005328  db080000  j 68
00532c  9f018fd5  addli r3, r30, -5440
005330  00a00000  mfence { lm }
005334  eb5a0f00  load.d r[22:23], 0(r30)
005338  2b0100f0  lui r2, 983040
00533c  80530102  load_param_i r7, 2
005340  e3057fd5  loadli.w r11,  -5448(r30)
005344  ebdb0100  load.d r[24:25], 0(r3)
005348  9f018fd7  addli r3, r30, -5184
00534c  8b901310  add.s r1, r7, r1
005350  17912500  or r2, r11, r2
005354  8baa7a11  add.ul r[22:23], r[22:23], r[24:25]
005358  7fb13a00  s_lm2gm r2, r3, 0(r[22:23])
00535c  00a00200  mfence { lm, gm }
005360  63411f00  loadli.w r2,  12(r30)
005364  3fa02000  blt.s r1, r2, 8
005368  5b8f0200  j 5240
00536c  63011f00  loadli.w r2,  8(r30)
005370  9f037fd6  addli r7, r30, -5320
005374  0b912010  add.s r2, r1, r2
005378  0b11f120  mul.s r2, r2, r15
00537c  b31a0128  sext_int2long r[22:23], r2
005380  2b0100f0  lui r2, 983040
005384  97bb6a02  sll.d r[24:25], r[22:23], r6
005388  ebda0300  load.d r[22:23], 0(r7)
00538c  17912500  or r2, r11, r2
005390  9f038fd5  addli r7, r30, -5440
005394  73b07301  store.d r[24:25], 0(r7)
005398  8baa7a11  add.ul r[22:23], r[22:23], r[24:25]
00539c  7fa13a00  l_gm2lm r2, r3, 0(r[22:23])
0053a0  00a00200  mfence { lm, gm }
0053a4  bfdc6200  blt.s r5, r6, 820
0053a8  9f0d0000  addli r27, zero, 0
0053ac  1f0d0000  addli r26, zero, 0
0053b0  1f0e0000  addli r28, zero, 0
0053b4  db0c0000  j 100
0053b8  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0053bc  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0053c0  1f1e0e00  addli r28, r28, 1
0053c4  6af104c0  vsrl.p vr2, r9, vr0
0053c8  eaf114c0  vsrl.p vr3, r9, vr1
0053cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0053d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0053d4  6a7109c0  vsrl.p vr2, r18, vr0
0053d8  ea7119c0  vsrl.p vr3, r18, vr1
0053dc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0053e0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0053e4  6af109c0  vsrl.p vr2, r19, vr0
0053e8  eaf119c0  vsrl.p vr3, r19, vr1
0053ec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0053f0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0053f4  6a710ac0  vsrl.p vr2, r20, vr0
0053f8  ea711ac0  vsrl.p vr3, r20, vr1
0053fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005400  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005404  7a110040  vextracti.f r2, 0(vr0)
005408  fa910040  vextracti.f r3, 0(vr1)
00540c  8bed2d10  add.f.rn r27, r27, r2
005410  0b6d3d10  add.f.rn r26, r26, r3
005414  373b5e00  beq r28, r5, 716
005418  1f010e00  addli r2, r28, 0
00541c  37309700  beq r14, r9, 12
005420  17218e00  xor r2, r28, r8
005424  0b912210  add.s r2, r5, r2
005428  9f010fd7  addli r3, r30, -5248
00542c  8b13e120  mul.s r7, r2, r14
005430  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
005434  8b937718  sub.s r7, r15, r7
005438  8b9ae340  min.s r21, r7, r14
00543c  92322002  vadd.s.mz vr5{mr1}, zero, vr2
005440  12322002  vadd.s.mz vr4{mr1}, zero, vr2
005444  92312002  vadd.s.mz vr3{mr1}, zero, vr2
005448  bfcd6afe  blt.s r21, r6, -144
00544c  8b1b2220  mul.s r23, r4, r2
005450  1f010fd7  addli r2, r30, -5248
005454  ab950100  lui r11, 25
005458  1f0b0000  addli r22, zero, 0
00545c  9f038fd7  addli r7, r30, -5184
005460  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
005464  9f850500  addli r11, r11, 0
005468  12315002  vadd.s.mz vr2{mr1}, zero, vr5
00546c  92315002  vadd.s.mz vr3{mr1}, zero, vr5
005470  12325002  vadd.s.mz vr4{mr1}, zero, vr5
005474  0b9c7511  add.s r24, r11, r23
005478  0b917311  add.s r2, r7, r23
00547c  9f018fd6  addli r3, r30, -5312
005480  4a030c02  vloads.mz vr6{mr1}, 0(r24)
005484  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
005488  c2030102  vload.mz vr7{mr1}, 0(r2)
00548c  9f010fd7  addli r3, r30, -5248
005490  9f0c8c00  addli r25, r24, 64
005494  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
005498  9f018b00  addli r3, r22, 64
00549c  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0054a0  6a357602  vand.s.mz vr10{mr1}, r12, vr7
0054a4  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0054a8  6a336602  vand.s.mz vr6{mr1}, r12, vr6
0054ac  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0054b0  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0054b4  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0054b8  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0054bc  669503c0  vabs.f vr10, vr7
0054c0  6a348302  vand.s.mz vr8{mr1}, r6, vr8
0054c4  ea349302  vand.s.mz vr9{mr1}, r6, vr9
0054c8  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
0054cc  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
0054d0  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
0054d4  12b48602  vadd.s.mz vr8{mr1}, r13, vr8
0054d8  92b49602  vadd.s.mz vr9{mr1}, r13, vr9
0054dc  ea338602  vand.s.mz vr7{mr1}, r12, vr8
0054e0  661403c0  vabs.f vr8, vr6
0054e4  6a339602  vand.s.mz vr6{mr1}, r12, vr9
0054e8  eaa30834  vor.u.mh vr7{mr2}, r17, vr0
0054ec  72218842  vlt.u.mz mr2{mr1}, r16, vr8
0054f0  6aa30834  vor.u.mh vr6{mr2}, r17, vr0
0054f4  4a840c02  vloads.mz vr8{mr1}, 0(r25)
0054f8  9f0c8100  addli r25, r2, 64
0054fc  c2840c02  vload.mz vr9{mr1}, 0(r25)
005500  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
005504  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
005508  6a336602  vand.s.mz vr6{mr1}, r12, vr6
00550c  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
005510  ea349602  vand.s.mz vr9{mr1}, r12, vr9
005514  46007102  vstore.mz vr7{mr1}, 0(r2)
005518  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
00551c  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005520  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
005524  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
005528  6a348602  vand.s.mz vr8{mr1}, r12, vr8
00552c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005530  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005534  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
005538  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
00553c  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
005540  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
005544  ea349302  vand.s.mz vr9{mr1}, r6, vr9
005548  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
00554c  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
005550  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
005554  661505c0  vabs.f vr10, vr10
005558  661404c0  vabs.f vr8, vr8
00555c  92b49602  vadd.s.mz vr9{mr1}, r13, vr9
005560  92b5b602  vadd.s.mz vr11{mr1}, r13, vr11
005564  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
005568  ea349602  vand.s.mz vr9{mr1}, r12, vr9
00556c  6a35b602  vand.s.mz vr10{mr1}, r12, vr11
005570  eaa40834  vor.u.mh vr9{mr2}, r17, vr0
005574  72218842  vlt.u.mz mr2{mr1}, r16, vr8
005578  6aa50834  vor.u.mh vr10{mr2}, r17, vr0
00557c  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
005580  ea34a602  vand.s.mz vr9{mr1}, r12, vr10
005584  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
005588  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
00558c  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
005590  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
005594  46808c02  vstore.mz vr8{mr1}, 0(r25)
005598  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
00559c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0055a0  4be83afe  ble.s r21, r3, -488
0055a4  9f010c01  addli r3, r24, 128
0055a8  9f0c0101  addli r25, r2, 128
0055ac  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0055b0  1f018101  addli r2, r2, 192
0055b4  1f0b0b01  addli r22, r22, 128
0055b8  9f850502  addli r11, r11, 256
0055bc  9f830302  addli r7, r7, 256
0055c0  6a237522  vor.u.mz vr6{mr1}, r10, vr7
0055c4  4a840102  vloads.mz vr8{mr1}, 0(r3)
0055c8  c2840c02  vload.mz vr9{mr1}, 0(r25)
0055cc  9f018c01  addli r3, r24, 192
0055d0  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
0055d4  6a309602  vand.s.mz vr0{mr1}, r12, vr9
0055d8  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
0055dc  6a348602  vand.s.mz vr8{mr1}, r12, vr8
0055e0  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
0055e4  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
0055e8  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
0055ec  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
0055f0  e69504c0  vabs.f vr11, vr9
0055f4  6a300302  vand.s.mz vr0{mr1}, r6, vr0
0055f8  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
0055fc  7221b842  vlt.u.mz mr2{mr1}, r16, vr11
005600  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
005604  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
005608  12b00602  vadd.s.mz vr0{mr1}, r13, vr0
00560c  12b5a602  vadd.s.mz vr10{mr1}, r13, vr10
005610  ea340602  vand.s.mz vr9{mr1}, r12, vr0
005614  661004c0  vabs.f vr0, vr8
005618  6a34a602  vand.s.mz vr8{mr1}, r12, vr10
00561c  eaa47834  vor.u.mh vr9{mr2}, r17, vr7
005620  72210842  vlt.u.mz mr2{mr1}, r16, vr0
005624  6aa47834  vor.u.mh vr8{mr2}, r17, vr7
005628  4a800102  vloads.mz vr0{mr1}, 0(r3)
00562c  42050102  vload.mz vr10{mr1}, 0(r2)
005630  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
005634  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
005638  6a35a602  vand.s.mz vr10{mr1}, r12, vr10
00563c  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
005640  6a348602  vand.s.mz vr8{mr1}, r12, vr8
005644  46809c02  vstore.mz vr9{mr1}, 0(r25)
005648  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
00564c  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
005650  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
005654  6a300602  vand.s.mz vr0{mr1}, r12, vr0
005658  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
00565c  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
005660  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
005664  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
005668  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
00566c  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
005670  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
005674  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
005678  e69000c0  vabs.f vr1, vr1
00567c  661000c0  vabs.f vr0, vr0
005680  12b5a602  vadd.s.mz vr10{mr1}, r13, vr10
005684  92b5b602  vadd.s.mz vr11{mr1}, r13, vr11
005688  72211842  vlt.u.mz mr2{mr1}, r16, vr1
00568c  6a35a602  vand.s.mz vr10{mr1}, r12, vr10
005690  ea30b602  vand.s.mz vr1{mr1}, r12, vr11
005694  6aa57834  vor.u.mh vr10{mr2}, r17, vr7
005698  72210842  vlt.u.mz mr2{mr1}, r16, vr0
00569c  eaa07834  vor.u.mh vr1{mr2}, r17, vr7
0056a0  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
0056a4  ea331602  vand.s.mz vr7{mr1}, r12, vr1
0056a8  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0056ac  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
0056b0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0056b4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0056b8  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
0056bc  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
0056c0  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
0056c4  46000102  vstore.mz vr0{mr1}, 0(r2)
0056c8  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0056cc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0056d0  bf165bff  blt.s r22, r21, -604
0056d4  db9cffff  j -796
0056d8  1f0d0000  addli r26, zero, 0
0056dc  9f0d0000  addli r27, zero, 0
0056e0  00a00000  mfence { lm }
0056e4  3fa167fe  blt.s r15, r6, -952
0056e8  e3016fd5  loadli.w r3,  -5456(r30)
0056ec  2bab0100  lui r22, 26
0056f0  abbb0100  lui r23, 27
0056f4  1f010000  addli r2, zero, 0
0056f8  1f0b0b00  addli r22, r22, 0
0056fc  9f8b0b00  addli r23, r23, 0
005700  8f853d18  div.f.rn r11, r27, r3
005704  8f033d18  div.f.rn r7, r26, r3
005708  e3013f00  loadli.w r3,  24(r30)
00570c  8beab520  mul.f.rn r21, r11, r11
005710  8be50558  neg.f r11, r11
005714  8be35319  sub.f.rn r7, r7, r21
005718  9f0a8fd7  addli r21, r30, -5184
00571c  8be33310  add.f.rn r7, r7, r3
005720  ab01803f  lui r3, 260096
005724  8f830308  sqrt.f.rn r7, r7
005728  8f837118  div.f.rn r7, r3, r7
00572c  42820a02  vload.mz vr4{mr1}, 0(r21)
005730  ca020b02  vloads.mz vr5{mr1}, 0(r22)
005734  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
005738  4a830b02  vloads.mz vr6{mr1}, 0(r23)
00573c  1f0c4100  addli r24, r2, 32
005740  ea212522  vor.u.mz vr3{mr1}, r10, vr2
005744  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
005748  6a344602  vand.s.mz vr8{mr1}, r12, vr4
00574c  92937502  vadd.f.mz.rn vr7{mr1}, r11, vr7
005750  12948502  vadd.f.mz.rn vr8{mr1}, r11, vr8
005754  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
005758  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
00575c  6a355602  vand.s.mz vr10{mr1}, r12, vr5
005760  ea326602  vand.s.mz vr5{mr1}, r12, vr6
005764  8a937302  vmul.f.mz.rn vr7{mr1}, r7, vr7
005768  0a938302  vmul.f.mz.rn vr6{mr1}, r7, vr8
00576c  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
005770  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
005774  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
005778  6a337302  vand.s.mz vr6{mr1}, r6, vr7
00577c  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
005780  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
005784  ea337302  vand.s.mz vr7{mr1}, r6, vr7
005788  661202c0  vabs.f vr4, vr4
00578c  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
005790  12b36602  vadd.s.mz vr6{mr1}, r13, vr6
005794  e69202c0  vabs.f vr5, vr5
005798  72214842  vlt.u.mz mr2{mr1}, r16, vr4
00579c  6a336602  vand.s.mz vr6{mr1}, r12, vr6
0057a0  92b37602  vadd.s.mz vr7{mr1}, r13, vr7
0057a4  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
0057a8  6a327602  vand.s.mz vr4{mr1}, r12, vr7
0057ac  72215842  vlt.u.mz mr2{mr1}, r16, vr5
0057b0  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
0057b4  6aa22834  vor.u.mh vr4{mr2}, r17, vr2
0057b8  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
0057bc  46804a02  vstore.mz vr4{mr1}, 0(r21)
0057c0  cbbd87fd  ble.s r15, r24, -1172
0057c4  1f0c8b00  addli r24, r22, 64
0057c8  9f8c8a00  addli r25, r21, 64
0057cc  1f018100  addli r2, r2, 64
0057d0  1f0b0b01  addli r22, r22, 128
0057d4  9f8a0a01  addli r21, r21, 128
0057d8  4a020c02  vloads.mz vr4{mr1}, 0(r24)
0057dc  1f8c8b00  addli r24, r23, 64
0057e0  c2820c02  vload.mz vr5{mr1}, 0(r25)
0057e4  9f8b0b01  addli r23, r23, 128
0057e8  4a030c02  vloads.mz vr6{mr1}, 0(r24)
0057ec  eeb351a2  vsll.s.mz vr7{mr1}, vr3, vr5
0057f0  ea325602  vand.s.mz vr5{mr1}, r12, vr5
0057f4  92937502  vadd.f.mz.rn vr7{mr1}, r11, vr7
0057f8  12945502  vadd.f.mz.rn vr8{mr1}, r11, vr5
0057fc  eeb441a2  vsll.s.mz vr9{mr1}, vr3, vr4
005800  6a354602  vand.s.mz vr10{mr1}, r12, vr4
005804  8a937302  vmul.f.mz.rn vr7{mr1}, r7, vr7
005808  eeb261a2  vsll.s.mz vr5{mr1}, vr3, vr6
00580c  6a326602  vand.s.mz vr4{mr1}, r12, vr6
005810  0a938302  vmul.f.mz.rn vr6{mr1}, r7, vr8
005814  a6929302  vmac.f.mz.rn vr5{mr1}, vr7, vr9
005818  2612a302  vmac.f.mz.rn vr4{mr1}, vr6, vr10
00581c  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
005820  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
005824  6a336302  vand.s.mz vr6{mr1}, r6, vr6
005828  ea337302  vand.s.mz vr7{mr1}, r6, vr7
00582c  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
005830  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
005834  e69202c0  vabs.f vr5, vr5
005838  661202c0  vabs.f vr4, vr4
00583c  12b36602  vadd.s.mz vr6{mr1}, r13, vr6
005840  92b37602  vadd.s.mz vr7{mr1}, r13, vr7
005844  72215842  vlt.u.mz mr2{mr1}, r16, vr5
005848  6a336602  vand.s.mz vr6{mr1}, r12, vr6
00584c  ea327602  vand.s.mz vr5{mr1}, r12, vr7
005850  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
005854  72214842  vlt.u.mz mr2{mr1}, r16, vr4
005858  eaa22834  vor.u.mh vr5{mr2}, r17, vr2
00585c  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
005860  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
005864  46802c02  vstore.mz vr2{mr1}, 0(r25)
005868  3f1bf1fe  blt.s r2, r15, -316
00586c  5b58ffff  j -1344
005870  63012f00  loadli.w r2,  16(r30)
005874  ab0100f0  lui r3, 983040
005878  1b311100  slli r2, r2, 1
00587c  17113100  or r2, r2, r3
005880  abf10100  lui r3, 31
005884  9f810100  addli r3, r3, 0
005888  7f013400  l_gm2sm r2, r3, 0(r[9:10])
00588c  2bf10000  lui r2, 15
005890  e3411f00  loadli.w r3,  12(r30)
005894  00200300  mfence { sm, gm }
005898  1b11f1ff  ori r2, r2, 4095
00589c  80210104  csr_set csr3, r2
0058a0  00d00100  sync_group
0058a4  cbfc1106  ble.s r3, r1, 3900
0058a8  e3012f00  loadli.w r3,  16(r30)
0058ac  e3422f00  loadli.w r5,  20(r30)
0058b0  2bf4ffff  lui r8, 1048575
0058b4  2bd50100  lui r10, 29
0058b8  9f0b8fd7  addli r23, r30, -5184
0058bc  9f040002  addli r9, zero, 256
0058c0  9f050001  addli r11, zero, 128
0058c4  1f068000  addli r12, zero, 64
0058c8  9f064000  addli r13, zero, 32
0058cc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0058d0  1b14f4ff  ori r8, r8, 4095
0058d4  1f050500  addli r10, r10, 0
0058d8  0b925110  add.s r4, r3, r5
0058dc  1bb11100  slli r2, r3, 1
0058e0  b3810108  fix2float.rn r3, r3
0058e4  1f73f2ff  addli r6, r4, -1
0058e8  1bb21200  slli r4, r5, 1
0058ec  8b125330  div.s r5, r6, r5
0058f0  1f130000  addli r6, zero, 1
0058f4  5b070000  j 56
0058f8  00a00000  mfence { lm }
0058fc  eb580f00  load.d r[18:19], 0(r30)
005900  2b0800f0  lui r16, 983040
005904  9f0b8fd7  addli r23, r30, -5184
005908  17180101  or r16, r2, r16
00590c  8ba93811  add.ul r[20:21], r[18:19], r[20:21]
005910  80580102  load_param_i r17, 2
005914  7fb87901  s_lm2gm r16, r23, 0(r[20:21])
005918  8b901810  add.s r1, r17, r1
00591c  00a00200  mfence { lm, gm }
005920  e3431f00  loadli.w r7,  12(r30)
005924  3fa07000  blt.s r1, r7, 8
005928  5bd70100  j 3768
00592c  e3031f00  loadli.w r7,  8(r30)
005930  0b987010  add.s r16, r1, r7
005934  9f037fd6  addli r7, r30, -5320
005938  0b18f820  mul.s r16, r16, r15
00593c  33180828  sext_int2long r[17:18], r16
005940  97396802  sll.d r[20:21], r[17:18], r6
005944  ebd80300  load.d r[18:19], 0(r7)
005948  2b0800f0  lui r16, 983040
00594c  17180101  or r16, r2, r16
005950  8baa3811  add.ul r[22:23], r[18:19], r[20:21]
005954  7fa87a01  l_gm2lm r16, r23, 0(r[22:23])
005958  00a00200  mfence { lm, gm }
00595c  3fc76200  blt.s r5, r6, 464
005960  1f0b0000  addli r22, zero, 0
005964  9f0a0000  addli r21, zero, 0
005968  9f0b0000  addli r23, zero, 0
00596c  db0c0000  j 100
005970  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
005974  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005978  9f9b0b00  addli r23, r23, 1
00597c  6af134c0  vsrl.p vr2, r9, vr3
005980  6af214c0  vsrl.p vr4, r9, vr1
005984  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
005988  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00598c  eaf125c0  vsrl.p vr3, r11, vr2
005990  6af215c0  vsrl.p vr4, r11, vr1
005994  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
005998  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00599c  ea7126c0  vsrl.p vr3, r12, vr2
0059a0  6a7216c0  vsrl.p vr4, r12, vr1
0059a4  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0059a8  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0059ac  eaf126c0  vsrl.p vr3, r13, vr2
0059b0  6af216c0  vsrl.p vr4, r13, vr1
0059b4  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0059b8  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0059bc  fa130140  vextracti.f r7, 0(vr2)
0059c0  7a980040  vextracti.f r16, 0(vr1)
0059c4  0b6b7b10  add.f.rn r22, r22, r7
0059c8  8bea0a11  add.f.rn r21, r21, r16
0059cc  b7a55b00  beq r23, r5, 360
0059d0  1f880b00  addli r16, r23, 0
0059d4  37309700  beq r14, r9, 12
0059d8  17a88b00  xor r16, r23, r8
0059dc  0b980211  add.s r16, r5, r16
0059e0  8b18e820  mul.s r17, r16, r14
0059e4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0059e8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0059ec  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0059f0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0059f4  8b981719  sub.s r17, r15, r17
0059f8  0b9ce840  min.s r24, r17, r14
0059fc  bf5d6cfe  blt.s r24, r6, -140
005a00  92300002  vadd.s.mz vr1{mr1}, zero, vr0
005a04  12310002  vadd.s.mz vr2{mr1}, zero, vr0
005a08  92310002  vadd.s.mz vr3{mr1}, zero, vr0
005a0c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005a10  9f0c0000  addli r25, zero, 0
005a14  0b1d0221  mul.s r26, r4, r16
005a18  9f0d8fd7  addli r27, r30, -5184
005a1c  1f0e0500  addli r28, r10, 0
005a20  0b18ae11  add.s r16, r28, r26
005a24  9f838c00  addli r7, r25, 64
005a28  ca020802  vloads.mz vr5{mr1}, 0(r16)
005a2c  9f088800  addli r17, r16, 64
005a30  4a830802  vloads.mz vr6{mr1}, 0(r17)
005a34  8b98ad11  add.s r17, r27, r26
005a38  c2830802  vload.mz vr7{mr1}, 0(r17)
005a3c  1f898800  addli r18, r17, 64
005a40  42040902  vload.mz vr8{mr1}, 0(r18)
005a44  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
005a48  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005a4c  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
005a50  06b40300  vfp162float_l.rn vr8, vr7
005a54  86f30300  vfp162float_h.rn vr7, vr7
005a58  86340300  vfp162float_l.rn vr9, vr6
005a5c  06730300  vfp162float_h.rn vr6, vr6
005a60  86120400  vfloat2fp16_l.rn vr5, vr8
005a64  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
005a68  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
005a6c  12340002  vadd.s.mz vr8{mr1}, zero, vr0
005a70  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005a74  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005a78  06940400  vfloat2fp16_l.rn vr8, vr9
005a7c  86d20300  vfloat2fp16_h.rn vr5, vr7
005a80  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005a84  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005a88  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
005a8c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005a90  06540300  vfloat2fp16_h.rn vr8, vr6
005a94  46805802  vstore.mz vr5{mr1}, 0(r17)
005a98  46008902  vstore.mz vr8{mr1}, 0(r18)
005a9c  4b5b7cfe  ble.s r24, r7, -300
005aa0  9f030801  addli r7, r16, 128
005aa4  9f8c0c01  addli r25, r25, 128
005aa8  1f0e0e02  addli r28, r28, 256
005aac  9f8d0d02  addli r27, r27, 256
005ab0  ca820302  vloads.mz vr5{mr1}, 0(r7)
005ab4  9f038801  addli r7, r16, 192
005ab8  1f880801  addli r16, r17, 128
005abc  4a830302  vloads.mz vr6{mr1}, 0(r7)
005ac0  c2030802  vload.mz vr7{mr1}, 0(r16)
005ac4  9f838801  addli r7, r17, 192
005ac8  42840302  vload.mz vr8{mr1}, 0(r7)
005acc  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
005ad0  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005ad4  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
005ad8  12330002  vadd.s.mz vr6{mr1}, zero, vr0
005adc  86b40300  vfp162float_l.rn vr9, vr7
005ae0  86f30300  vfp162float_h.rn vr7, vr7
005ae4  86920400  vfloat2fp16_l.rn vr5, vr9
005ae8  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
005aec  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
005af0  86340400  vfp162float_l.rn vr9, vr8
005af4  06740400  vfp162float_h.rn vr8, vr8
005af8  06930400  vfloat2fp16_l.rn vr6, vr9
005afc  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005b00  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005b04  86d20300  vfloat2fp16_h.rn vr5, vr7
005b08  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005b0c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005b10  06530400  vfloat2fp16_h.rn vr6, vr8
005b14  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
005b18  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005b1c  46005802  vstore.mz vr5{mr1}, 0(r16)
005b20  46806302  vstore.mz vr6{mr1}, 0(r7)
005b24  bffb8cff  blt.s r25, r24, -260
005b28  5bc9ffff  j -440
005b2c  9f0a0000  addli r21, zero, 0
005b30  1f0b0000  addli r22, zero, 0
005b34  00a00000  mfence { lm }
005b38  3f8767fe  blt.s r15, r6, -576
005b3c  0f083b18  div.f.rn r16, r22, r3
005b40  8f883a18  div.f.rn r17, r21, r3
005b44  e3033f00  loadli.w r7,  24(r30)
005b48  abec0100  lui r25, 30
005b4c  2bfd0100  lui r26, 31
005b50  9f0b0000  addli r23, zero, 0
005b54  1f0c8fd7  addli r24, r30, -5184
005b58  9f8c0c00  addli r25, r25, 0
005b5c  1f0d0d00  addli r26, r26, 0
005b60  8b6a0821  mul.f.rn r21, r16, r16
005b64  0b6b0858  neg.f r22, r16
005b68  8be85819  sub.f.rn r17, r17, r21
005b6c  8be87810  add.f.rn r17, r17, r7
005b70  ab03803f  lui r7, 260096
005b74  8f880808  sqrt.f.rn r17, r17
005b78  8f8a1319  div.f.rn r21, r7, r17
005b7c  c2000c02  vload.mz vr1{mr1}, 0(r24)
005b80  4a810c02  vloads.mz vr2{mr1}, 0(r25)
005b84  ca010d02  vloads.mz vr3{mr1}, 0(r26)
005b88  1f884b00  addli r16, r23, 32
005b8c  06b20000  vfp162float_l.rn vr4, vr1
005b90  86f00000  vfp162float_h.rn vr1, vr1
005b94  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
005b98  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
005b9c  86320100  vfp162float_l.rn vr5, vr2
005ba0  06b30100  vfp162float_l.rn vr6, vr3
005ba4  06710100  vfp162float_h.rn vr2, vr2
005ba8  86f10100  vfp162float_h.rn vr3, vr3
005bac  8a931a02  vmul.f.mz.rn vr7{mr1}, r21, vr1
005bb0  0a924a02  vmul.f.mz.rn vr4{mr1}, r21, vr4
005bb4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005bb8  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
005bbc  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
005bc0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005bc4  06110300  vfloat2fp16_l.rn vr2, vr6
005bc8  06d10100  vfloat2fp16_h.rn vr2, vr3
005bcc  46002c02  vstore.mz vr2{mr1}, 0(r24)
005bd0  cba407ff  ble.s r15, r16, -728
005bd4  1f888c00  addli r16, r25, 64
005bd8  9f088c00  addli r17, r24, 64
005bdc  9f8b8b00  addli r23, r23, 64
005be0  9f8c0c01  addli r25, r25, 128
005be4  1f0c0c01  addli r24, r24, 128
005be8  4a010802  vloads.mz vr2{mr1}, 0(r16)
005bec  1f088d00  addli r16, r26, 64
005bf0  c2810802  vload.mz vr3{mr1}, 0(r17)
005bf4  1f0d0d01  addli r26, r26, 128
005bf8  4a020802  vloads.mz vr4{mr1}, 0(r16)
005bfc  86b20100  vfp162float_l.rn vr5, vr3
005c00  86f10100  vfp162float_h.rn vr3, vr3
005c04  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
005c08  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
005c0c  06330100  vfp162float_l.rn vr6, vr2
005c10  06710100  vfp162float_h.rn vr2, vr2
005c14  8a925a02  vmul.f.mz.rn vr5{mr1}, r21, vr5
005c18  8a913a02  vmul.f.mz.rn vr3{mr1}, r21, vr3
005c1c  86330200  vfp162float_l.rn vr7, vr4
005c20  06720200  vfp162float_h.rn vr4, vr4
005c24  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
005c28  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
005c2c  86900300  vfloat2fp16_l.rn vr1, vr7
005c30  86500200  vfloat2fp16_h.rn vr1, vr4
005c34  46801802  vstore.mz vr1{mr1}, 0(r17)
005c38  3f9dfbfe  blt.s r23, r15, -188
005c3c  db97ffff  j -836
005c40  9f000040  addli r1, zero, 8192
005c44  2b0100f0  lui r2, 983040
005c48  97902000  or r1, r1, r2
005c4c  2b310200  lui r2, 35
005c50  1f010100  addli r2, r2, 0
005c54  ff002300  l_gm2sm r1, r2, 0(r[7:8])
005c58  db070000  j 60
005c5c  63012f00  loadli.w r2,  16(r30)
005c60  ab0100f0  lui r3, 983040
005c64  1b312100  slli r2, r2, 2
005c68  17113100  or r2, r2, r3
005c6c  ab810200  lui r3, 40
005c70  9f810108  addli r3, r3, 1024
005c74  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005c78  dbef0000  j 1916
005c7c  9f000040  addli r1, zero, 8192
005c80  2b0100f0  lui r2, 983040
005c84  97902000  or r1, r1, r2
005c88  2b510200  lui r2, 37
005c8c  1f010100  addli r2, r2, 0
005c90  ff002400  l_gm2sm r1, r2, 0(r[9:10])
005c94  abf00000  lui r1, 15
005c98  00200300  mfence { sm, gm }
005c9c  1b011500  andi r2, r10, 1
005ca0  9f010006  addli r3, zero, 768
005ca4  9b90f0ff  ori r1, r1, 4095
005ca8  80a10004  csr_set csr3, r1
005cac  9f000006  addli r1, zero, 768
005cb0  00d00100  sync_group
005cb4  67082fd6  storeli.w r2, -5248(r30)
005cb8  37200100  beq r2, zero, 8
005cbc  9f01000a  addli r3, zero, 1280
005cc0  63421f00  loadli.w r4,  12(r30)
005cc4  9f120000  addli r5, zero, 1
005cc8  3f6c5204  blt.s r4, r5, 2840
005ccc  63010fd7  loadli.w r2,  -5248(r30)
005cd0  80520102  load_param_i r5, 2
005cd4  9b431500  srli r7, r10, 1
005cd8  ab170200  lui r15, 33
005cdc  ab7a0200  lui r21, 39
005ce0  2b7d0200  lui r26, 39
005ce4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005ce8  1f020000  addli r4, zero, 0
005cec  1bb42100  slli r8, r3, 2
005cf0  1f068fd7  addli r12, r30, -5184
005cf4  1f080005  addli r16, zero, 640
005cf8  1f090001  addli r18, zero, 128
005cfc  9f098000  addli r19, zero, 64
005d00  1f0a4000  addli r20, zero, 32
005d04  1bc31200  srli r6, r5, 1
005d08  ab320200  lui r5, 35
005d0c  9f870700  addli r15, r15, 0
005d10  9f8a0a00  addli r21, r21, 0
005d14  1f0d0d04  addli r26, r26, 512
005d18  8b101120  mul.s r1, r2, r1
005d1c  1f018fd5  addli r2, r30, -5440
005d20  9f820200  addli r5, r5, 0
005d24  67041fd6  storeli.w r1, -5312(r30)
005d28  9bb02000  slli r1, r1, 2
005d2c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005d30  1f810c00  addli r2, r25, 0
005d34  9f0c0003  addli r25, zero, 384
005d38  8b945010  add.s r9, r1, r5
005d3c  ab520200  lui r5, 37
005d40  9f820200  addli r5, r5, 0
005d44  0b955010  add.s r10, r1, r5
005d48  abf0ffff  lui r1, 1048575
005d4c  9b9000f8  ori r1, r1, 3968
005d50  e70b1fd4  storeli.w r1, -5448(r30)
005d54  abf00000  lui r1, 15
005d58  1b9bf0ff  ori r22, r1, 4095
005d5c  5b040000  j 32
005d60  00a00300  mfence { lm, sm, gm }
005d64  80210b04  csr_set csr3, r22
005d68  00d00100  sync_group
005d6c  63411f00  loadli.w r2,  12(r30)
005d70  0b126210  add.s r4, r4, r6
005d74  3f202200  blt.s r4, r2, 8
005d78  5be7f5ff  j -20680
005d7c  8b107210  add.s r1, r4, r7
005d80  cb0f11fe  ble.s r2, r1, -32
005d84  63011f00  loadli.w r2,  8(r30)
005d88  8b902010  add.s r1, r1, r2
005d8c  63018fd6  loadli.w r2,  -5312(r30)
005d90  9bb0b000  slli r1, r1, 11
005d94  97902000  or r1, r1, r2
005d98  1f017fd6  addli r2, r30, -5320
005d9c  b3960028  sext_int2long r[14:15], r1
005da0  9f200000  addli r1, zero, 2
005da4  97bd1602  sll.d r[28:29], r[14:15], r1
005da8  eb560100  load.d r[14:15], 0(r2)
005dac  ab0000f0  lui r1, 983040
005db0  97101400  or r1, r8, r1
005db4  8ba6b611  add.ul r[14:15], r[14:15], r[28:29]
005db8  ffa0c600  l_gm2lm r1, r12, 0(r[14:15])
005dbc  00a00200  mfence { lm, gm }
005dc0  e3000fd7  loadli.w r1,  -5248(r30)
005dc4  3ba60000  bneq r1, zero, 392
005dc8  9f008fd5  addli r1, r30, -5440
005dcc  e3067fd5  loadli.w r13,  -5448(r30)
005dd0  9f050000  addli r11, zero, 0
005dd4  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
005dd8  92303002  vadd.s.mz vr1{mr1}, zero, vr3
005ddc  12313002  vadd.s.mz vr2{mr1}, zero, vr3
005de0  12323002  vadd.s.mz vr4{mr1}, zero, vr3
005de4  0b97f510  add.s r14, r11, r15
005de8  8b10b610  add.s r1, r12, r11
005dec  9f860601  addli r13, r13, 128
005df0  9f850504  addli r11, r11, 512
005df4  1f010701  addli r2, r14, 128
005df8  4a100702  vloads_mask16.mz vr0{mr1}, 0(r14)
005dfc  9f028700  addli r5, r14, 64
005e00  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
005e04  9f888001  addli r17, r1, 192
005e08  ca120102  vloads_mask16.mz vr5{mr1}, 0(r2)
005e0c  1f018701  addli r2, r14, 192
005e10  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
005e14  9f828000  addli r5, r1, 64
005e18  c2950802  vload_mask16.mz vr11{mr1}, 0(r17)
005e1c  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
005e20  1f810001  addli r2, r1, 128
005e24  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
005e28  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
005e2c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005e30  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
005e34  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005e38  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005e3c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005e40  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
005e44  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
005e48  1f010702  addli r2, r14, 256
005e4c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005e50  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
005e54  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
005e58  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
005e5c  9f820003  addli r5, r1, 384
005e60  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
005e64  1f018702  addli r2, r14, 320
005e68  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
005e6c  9f880002  addli r17, r1, 256
005e70  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005e74  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
005e78  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005e7c  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
005e80  1f010703  addli r2, r14, 384
005e84  c2930802  vload_mask16.mz vr7{mr1}, 0(r17)
005e88  1f078703  addli r14, r14, 448
005e8c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005e90  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
005e94  1f818002  addli r2, r1, 320
005e98  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
005e9c  9f808003  addli r1, r1, 448
005ea0  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
005ea4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005ea8  c2930202  vload_mask16.mz vr7{mr1}, 0(r5)
005eac  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005eb0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005eb4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005eb8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005ebc  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
005ec0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005ec4  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
005ec8  13810605  setlt.u r2, r13, r16
005ecc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005ed0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005ed4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005ed8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005edc  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005ee0  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
005ee4  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
005ee8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005eec  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005ef0  bb5b01fe  bneq r2, zero, -268
005ef4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005ef8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005efc  9f000002  addli r1, zero, 256
005f00  6af100c0  vsrl.p vr2, r1, vr0
005f04  eaf110c0  vsrl.p vr3, r1, vr1
005f08  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005f0c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005f10  6a7109c0  vsrl.p vr2, r18, vr0
005f14  ea7119c0  vsrl.p vr3, r18, vr1
005f18  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005f1c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005f20  6af109c0  vsrl.p vr2, r19, vr0
005f24  eaf119c0  vsrl.p vr3, r19, vr1
005f28  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005f2c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005f30  6a710ac0  vsrl.p vr2, r20, vr0
005f34  ea711ac0  vsrl.p vr3, r20, vr1
005f38  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005f3c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005f40  fa120040  vextracti.f r5, 0(vr0)
005f44  fa900040  vextracti.f r1, 0(vr1)
005f48  5b630000  j 792
005f4c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005f50  abf0ffff  lui r1, 1048575
005f54  9f050000  addli r11, zero, 0
005f58  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005f5c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005f60  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005f64  9b9600f8  ori r13, r1, 3968
005f68  8b90b710  add.s r1, r15, r11
005f6c  0b17b610  add.s r14, r12, r11
005f70  9f860601  addli r13, r13, 128
005f74  9f850504  addli r11, r11, 512
005f78  1f8c0031  addli r24, r1, 6272
005f7c  9f820030  addli r5, r1, 6144
005f80  1f818031  addli r2, r1, 6336
005f84  9f0b0718  addli r23, r14, 3072
005f88  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
005f8c  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
005f90  9f828030  addli r5, r1, 6208
005f94  ca140102  vloads_mask16.mz vr9{mr1}, 0(r2)
005f98  1f018718  addli r2, r14, 3136
005f9c  1f0c8719  addli r24, r14, 3264
005fa0  42930b02  vload_mask16.mz vr6{mr1}, 0(r23)
005fa4  4a940202  vloads_mask16.mz vr8{mr1}, 0(r5)
005fa8  9f020719  addli r5, r14, 3200
005fac  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
005fb0  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
005fb4  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
005fb8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005fbc  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
005fc0  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
005fc4  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
005fc8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005fcc  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
005fd0  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
005fd4  9f820032  addli r5, r1, 6400
005fd8  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
005fdc  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
005fe0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005fe4  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
005fe8  9f0b071a  addli r23, r14, 3328
005fec  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
005ff0  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
005ff4  1f01871b  addli r2, r14, 3520
005ff8  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
005ffc  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
006000  4a900202  vloads_mask16.mz vr0{mr1}, 0(r5)
006004  9f828032  addli r5, r1, 6464
006008  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00600c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006010  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
006014  9f820033  addli r5, r1, 6528
006018  9f808033  addli r1, r1, 6592
00601c  4a940202  vloads_mask16.mz vr8{mr1}, 0(r5)
006020  9f02871a  addli r5, r14, 3392
006024  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
006028  9f00071b  addli r1, r14, 3456
00602c  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
006030  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
006034  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
006038  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00603c  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
006040  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
006044  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
006048  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
00604c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
006050  46906202  vstore_mask16.mz vr6{mr1}, 0(r5)
006054  93829605  setlt.u r5, r13, r25
006058  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00605c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
006060  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
006064  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
006068  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00606c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
006070  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
006074  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
006078  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00607c  bbbb02fe  bneq r5, zero, -276
006080  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006084  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
006088  9f000002  addli r1, zero, 256
00608c  9f060000  addli r13, zero, 0
006090  eaf110c0  vsrl.p vr3, r1, vr1
006094  6af100c0  vsrl.p vr2, r1, vr0
006098  abf0ffff  lui r1, 1048575
00609c  1b9700f8  ori r14, r1, 3968
0060a0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060a4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0060a8  ea7119c0  vsrl.p vr3, r18, vr1
0060ac  6a7109c0  vsrl.p vr2, r18, vr0
0060b0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060b4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0060b8  eaf119c0  vsrl.p vr3, r19, vr1
0060bc  6af109c0  vsrl.p vr2, r19, vr0
0060c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0060c8  ea711ac0  vsrl.p vr3, r20, vr1
0060cc  6a710ac0  vsrl.p vr2, r20, vr0
0060d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060d4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0060d8  7a9c0040  vextracti.f r24, 0(vr1)
0060dc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0060e0  fa150040  vextracti.f r11, 0(vr0)
0060e4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0060e8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0060ec  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0060f0  8b9bd710  add.s r23, r15, r13
0060f4  8b10d610  add.s r1, r12, r13
0060f8  1f070701  addli r14, r14, 128
0060fc  9f860604  addli r13, r13, 512
006100  1f810b18  addli r2, r23, 3072
006104  9f820b19  addli r5, r23, 3200
006108  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
00610c  9f888001  addli r17, r1, 192
006110  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
006114  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
006118  1f818b18  addli r2, r23, 3136
00611c  9f828b19  addli r5, r23, 3264
006120  c2950802  vload_mask16.mz vr11{mr1}, 0(r17)
006124  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
006128  1f810001  addli r2, r1, 128
00612c  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
006130  9f828000  addli r5, r1, 64
006134  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
006138  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
00613c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
006140  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
006144  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
006148  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00614c  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
006150  1f810b1a  addli r2, r23, 3328
006154  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
006158  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00615c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
006160  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
006164  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
006168  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
00616c  1f818b1a  addli r2, r23, 3392
006170  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
006174  9f880002  addli r17, r1, 256
006178  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
00617c  9f820003  addli r5, r1, 384
006180  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
006184  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
006188  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
00618c  1f810b1b  addli r2, r23, 3456
006190  c2930802  vload_mask16.mz vr7{mr1}, 0(r17)
006194  9f8b8b1b  addli r23, r23, 3520
006198  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00619c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0061a0  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
0061a4  1f818002  addli r2, r1, 320
0061a8  4a950b02  vloads_mask16.mz vr10{mr1}, 0(r23)
0061ac  9f808003  addli r1, r1, 448
0061b0  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
0061b4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0061b8  c2930202  vload_mask16.mz vr7{mr1}, 0(r5)
0061bc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0061c0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0061c4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0061c8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0061cc  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
0061d0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0061d4  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
0061d8  13010705  setlt.u r2, r14, r16
0061dc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0061e0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0061e4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0061e8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0061ec  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0061f0  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
0061f4  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0061f8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0061fc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006200  bb4b01fe  bneq r2, zero, -272
006204  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
006208  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00620c  9f000002  addli r1, zero, 256
006210  6af100c0  vsrl.p vr2, r1, vr0
006214  eaf110c0  vsrl.p vr3, r1, vr1
006218  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00621c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006220  6a7109c0  vsrl.p vr2, r18, vr0
006224  ea7119c0  vsrl.p vr3, r18, vr1
006228  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00622c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006230  6af109c0  vsrl.p vr2, r19, vr0
006234  eaf119c0  vsrl.p vr3, r19, vr1
006238  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00623c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006240  6a710ac0  vsrl.p vr2, r20, vr0
006244  ea711ac0  vsrl.p vr3, r20, vr1
006248  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00624c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006250  fa100040  vextracti.f r1, 0(vr0)
006254  7a910040  vextracti.f r2, 0(vr1)
006258  8be21510  add.f.rn r5, r11, r1
00625c  8b602c10  add.f.rn r1, r24, r2
006260  0b016230  div.u r2, r4, r6
006264  80360002  core_id r13
006268  9f050000  addli r11, zero, 0
00626c  1f0c0000  addli r24, zero, 0
006270  1b316100  slli r2, r2, 6
006274  1b010104  andi r2, r2, 64
006278  1711d100  or r2, r2, r13
00627c  9b362100  slli r13, r2, 2
006280  1b01e107  andi r2, r2, 126
006284  0b975611  add.s r14, r13, r21
006288  1b312100  slli r2, r2, 2
00628c  73605700  stores.w r5, 0(r14)
006290  8b92a611  add.s r5, r13, r26
006294  9b964600  ori r13, r13, 4
006298  73e01200  stores.w r1, 0(r5)
00629c  8b905611  add.s r1, r13, r21
0062a0  8b125111  add.s r5, r2, r21
0062a4  8b96a611  add.s r13, r13, r26
0062a8  0b11a111  add.s r2, r2, r26
0062ac  00a00300  mfence { lm, sm, gm }
0062b0  80210b04  csr_set csr3, r22
0062b4  00d00100  sync_group
0062b8  efc00000  loads.w r1, 0(r1)
0062bc  efc20200  loads.w r5, 0(r5)
0062c0  efc60600  loads.w r13, 0(r13)
0062c4  6f410100  loads.w r2, 0(r2)
0062c8  8be05010  add.f.rn r1, r1, r5
0062cc  ab02003a  lui r5, 237568
0062d0  0be12610  add.f.rn r2, r13, r2
0062d4  8be05020  mul.f.rn r1, r1, r5
0062d8  0b615120  mul.f.rn r2, r2, r5
0062dc  8be21020  mul.f.rn r5, r1, r1
0062e0  0be70058  neg.f r14, r1
0062e4  0b615118  sub.f.rn r2, r2, r5
0062e8  e3023f00  loadli.w r5,  24(r30)
0062ec  0b615110  add.f.rn r2, r2, r5
0062f0  ab02803f  lui r5, 260096
0062f4  0f010108  sqrt.f.rn r2, r2
0062f8  8f862218  div.f.rn r13, r5, r2
0062fc  8b90b410  add.s r1, r9, r11
006300  8b1bb610  add.s r23, r12, r11
006304  8b12b510  add.s r5, r10, r11
006308  9f888000  addli r17, r1, 64
00630c  1f818b00  addli r2, r23, 64
006310  42900b02  vload_mask16.mz vr0{mr1}, 0(r23)
006314  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
006318  4a920202  vloads_mask16.mz vr4{mr1}, 0(r5)
00631c  ca910802  vloads_mask16.mz vr3{mr1}, 0(r17)
006320  9f888200  addli r17, r5, 64
006324  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
006328  ca920802  vloads_mask16.mz vr5{mr1}, 0(r17)
00632c  9f084c00  addli r17, r24, 32
006330  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
006334  93881107  setle.u r17, r3, r17
006338  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
00633c  0a900602  vmul.f.mz.rn vr0{mr1}, r13, vr0
006340  8a901602  vmul.f.mz.rn vr1{mr1}, r13, vr1
006344  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
006348  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
00634c  46904b02  vstore_mask16.mz vr4{mr1}, 0(r23)
006350  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
006354  bb910800  bneq r17, zero, 100
006358  1f810b01  addli r2, r23, 128
00635c  9f888b01  addli r17, r23, 192
006360  9f8b0001  addli r23, r1, 128
006364  9f808001  addli r1, r1, 192
006368  1f0c8c00  addli r24, r24, 64
00636c  9f850502  addli r11, r11, 256
006370  4a910b02  vloads_mask16.mz vr2{mr1}, 0(r23)
006374  9f8b0201  addli r23, r5, 128
006378  9f828201  addli r5, r5, 192
00637c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
006380  c2900802  vload_mask16.mz vr1{mr1}, 0(r17)
006384  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
006388  93003c04  setlt.u r1, r24, r3
00638c  ca910b02  vloads_mask16.mz vr3{mr1}, 0(r23)
006390  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
006394  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
006398  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
00639c  0a900602  vmul.f.mz.rn vr0{mr1}, r13, vr0
0063a0  8a901602  vmul.f.mz.rn vr1{mr1}, r13, vr1
0063a4  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
0063a8  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0063ac  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0063b0  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
0063b4  3bad00fe  bneq r1, zero, -184
0063b8  eb560f00  load.d r[14:15], 0(r30)
0063bc  ab0000f0  lui r1, 983040
0063c0  00a00000  mfence { lm }
0063c4  97101400  or r1, r8, r1
0063c8  8ba6b611  add.ul r[14:15], r[14:15], r[28:29]
0063cc  ffb0c600  s_lm2gm r1, r12, 0(r[14:15])
0063d0  00a00200  mfence { lm, gm }
0063d4  5b33ffff  j -1640
0063d8  63012f00  loadli.w r2,  16(r30)
0063dc  ab0100f0  lui r3, 983040
0063e0  1b312100  slli r2, r2, 2
0063e4  17113100  or r2, r2, r3
0063e8  ab910200  lui r3, 41
0063ec  9f810108  addli r3, r3, 1024
0063f0  7f013400  l_gm2sm r2, r3, 0(r[9:10])
0063f4  2bf10000  lui r2, 15
0063f8  e3411f00  loadli.w r3,  12(r30)
0063fc  00200300  mfence { sm, gm }
006400  1b11f1ff  ori r2, r2, 4095
006404  80210104  csr_set csr3, r2
006408  00d00100  sync_group
00640c  4bdf1100  ble.s r3, r1, 980
006410  e3012f00  loadli.w r3,  16(r30)
006414  e3422f00  loadli.w r5,  20(r30)
006418  ab780200  lui r17, 39
00641c  2b890200  lui r18, 40
006420  ab990200  lui r19, 41
006424  9f038fd7  addli r7, r30, -5184
006428  1f140000  addli r8, zero, 1
00642c  1f050002  addli r10, zero, 256
006430  1f060001  addli r12, zero, 128
006434  9f068000  addli r13, zero, 64
006438  1f084000  addli r16, zero, 32
00643c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
006440  9f880808  addli r17, r17, 1024
006444  1f090908  addli r18, r18, 1024
006448  9f890908  addli r19, r19, 1024
00644c  0b925110  add.s r4, r3, r5
006450  9bb52100  slli r11, r3, 2
006454  33810108  fix2float.rn r2, r3
006458  9f71f2ff  addli r3, r4, -1
00645c  1bb22200  slli r4, r5, 2
006460  e70b2fd4  storeli.w r2, -5448(r30)
006464  1f010fd7  addli r2, r30, -5248
006468  670cbfd4  storeli.w r11, -5440(r30)
00646c  8b925130  div.s r5, r3, r5
006470  abf1ffff  lui r3, 1048575
006474  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
006478  9b94f1ff  ori r9, r3, 4095
00647c  5b080000  j 64
006480  1f018fd6  addli r2, r30, -5312
006484  00a00000  mfence { lm }
006488  6b5a0f00  load.d r[21:22], 0(r30)
00648c  ab0100f0  lui r3, 983040
006490  00530102  load_param_i r6, 2
006494  e3058fd5  loadli.w r11,  -5440(r30)
006498  6b5b0100  load.d r[23:24], 0(r2)
00649c  8b101310  add.s r1, r6, r1
0064a0  97913500  or r3, r11, r3
0064a4  0b2a6a11  add.ul r[21:22], r[21:22], r[23:24]
0064a8  ff317a00  s_lm2gm r3, r7, 0(r[21:22])
0064ac  00a00200  mfence { lm, gm }
0064b0  63411f00  loadli.w r2,  12(r30)
0064b4  3fa02000  blt.s r1, r2, 8
0064b8  5b650000  j 808
0064bc  63011f00  loadli.w r2,  8(r30)
0064c0  8b912010  add.s r3, r1, r2
0064c4  1f210000  addli r2, zero, 2
0064c8  8b91f120  mul.s r3, r3, r15
0064cc  339a0128  sext_int2long r[21:22], r3
0064d0  ab0100f0  lui r3, 983040
0064d4  173c2a02  sll.d r[25:26], r[21:22], r2
0064d8  1f017fd6  addli r2, r30, -5320
0064dc  97913500  or r3, r11, r3
0064e0  6b5a0100  load.d r[21:22], 0(r2)
0064e4  1f018fd6  addli r2, r30, -5312
0064e8  0b2b8a11  add.ul r[23:24], r[21:22], r[25:26]
0064ec  ff217b00  l_gm2lm r3, r7, 0(r[23:24])
0064f0  00a00200  mfence { lm, gm }
0064f4  73308101  store.d r[25:26], 0(r2)
0064f8  bf978200  blt.s r5, r8, 484
0064fc  9f0b0000  addli r23, zero, 0
006500  1f0b0000  addli r22, zero, 0
006504  1f0c0000  addli r24, zero, 0
006508  db0c0000  j 100
00650c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
006510  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006514  1f1c0c00  addli r24, r24, 1
006518  6a7105c0  vsrl.p vr2, r10, vr0
00651c  ea7115c0  vsrl.p vr3, r10, vr1
006520  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006524  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006528  6a7106c0  vsrl.p vr2, r12, vr0
00652c  ea7116c0  vsrl.p vr3, r12, vr1
006530  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006534  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006538  6af106c0  vsrl.p vr2, r13, vr0
00653c  eaf116c0  vsrl.p vr3, r13, vr1
006540  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006544  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006548  6a7108c0  vsrl.p vr2, r16, vr0
00654c  ea7118c0  vsrl.p vr3, r16, vr1
006550  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006554  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006558  7a110040  vextracti.f r2, 0(vr0)
00655c  fa910040  vextracti.f r3, 0(vr1)
006560  8beb2b10  add.f.rn r23, r23, r2
006564  0b6b3b10  add.f.rn r22, r22, r3
006568  b7755c00  beq r24, r5, 380
00656c  9f010c00  addli r3, r24, 0
006570  3730a700  beq r14, r10, 12
006574  97219c00  xor r3, r24, r9
006578  8b913210  add.s r3, r5, r3
00657c  1f010fd7  addli r2, r30, -5248
006580  0b93e120  mul.s r6, r3, r14
006584  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
006588  0b936718  sub.s r6, r15, r6
00658c  8b1ce340  min.s r25, r6, r14
006590  12321002  vadd.s.mz vr4{mr1}, zero, vr1
006594  92311002  vadd.s.mz vr3{mr1}, zero, vr1
006598  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00659c  bfcd8cfe  blt.s r25, r8, -144
0065a0  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0065a4  1f0d0000  addli r26, zero, 0
0065a8  8b1d3220  mul.s r27, r4, r3
0065ac  1f0e8fd7  addli r28, r30, -5184
0065b0  9f850800  addli r11, r17, 0
0065b4  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0065b8  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0065bc  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0065c0  8b91b511  add.s r3, r11, r27
0065c4  0b13be11  add.s r6, r28, r27
0065c8  1f818100  addli r2, r3, 64
0065cc  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
0065d0  1f8a8101  addli r20, r3, 192
0065d4  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
0065d8  9f0a8301  addli r21, r6, 192
0065dc  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
0065e0  1f810101  addli r2, r3, 128
0065e4  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
0065e8  1f0a0301  addli r20, r6, 128
0065ec  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
0065f0  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
0065f4  c2150a02  vload_mask16.mz vr11{mr1}, 0(r20)
0065f8  1f018300  addli r2, r6, 64
0065fc  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
006600  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
006604  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
006608  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00660c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
006610  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006614  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006618  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
00661c  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
006620  1f018d00  addli r2, r26, 64
006624  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
006628  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00662c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006630  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
006634  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
006638  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
00663c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
006640  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
006644  4bab2cfe  ble.s r25, r2, -312
006648  1f8a0102  addli r20, r3, 256
00664c  9f8a8102  addli r21, r3, 320
006650  1f010302  addli r2, r6, 256
006654  1f0d0d01  addli r26, r26, 128
006658  9f850504  addli r11, r11, 512
00665c  1f0e0e04  addli r28, r28, 512
006660  4a100a02  vloads_mask16.mz vr0{mr1}, 0(r20)
006664  1f8a0103  addli r20, r3, 384
006668  9f818103  addli r3, r3, 448
00666c  ca920a02  vloads_mask16.mz vr5{mr1}, 0(r21)
006670  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
006674  ca130a02  vloads_mask16.mz vr7{mr1}, 0(r20)
006678  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
00667c  9f010303  addli r3, r6, 384
006680  1f0a8302  addli r20, r6, 320
006684  1f038303  addli r6, r6, 448
006688  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
00668c  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
006690  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
006694  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
006698  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00669c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0066a0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0066a4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0066a8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0066ac  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
0066b0  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0066b4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0066b8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0066bc  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
0066c0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0066c4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0066c8  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0066cc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0066d0  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0066d4  bf3b9dff  blt.s r26, r25, -276
0066d8  dbc6ffff  j -460
0066dc  1f0b0000  addli r22, zero, 0
0066e0  9f0b0000  addli r23, zero, 0
0066e4  00a00000  mfence { lm }
0066e8  3fe687fe  blt.s r15, r8, -616
0066ec  63017fd5  loadli.w r2,  -5448(r30)
0066f0  9f050000  addli r11, zero, 0
0066f4  1f0c0000  addli r24, zero, 0
0066f8  8f812b18  div.f.rn r3, r23, r2
0066fc  0f032b18  div.f.rn r6, r22, r2
006700  63013f00  loadli.w r2,  24(r30)
006704  0beb3120  mul.f.rn r22, r3, r3
006708  8beb0158  neg.f r23, r3
00670c  0b636319  sub.f.rn r6, r6, r22
006710  0b632310  add.f.rn r6, r6, r2
006714  2b01803f  lui r2, 260096
006718  0f030308  sqrt.f.rn r6, r6
00671c  0f0b6118  div.f.rn r22, r2, r6
006720  0b932511  add.s r6, r11, r18
006724  8b91b310  add.s r3, r7, r11
006728  9f0c8300  addli r25, r6, 64
00672c  4a110302  vloads_mask16.mz vr2{mr1}, 0(r6)
006730  0b933511  add.s r6, r11, r19
006734  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
006738  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
00673c  9f8c8100  addli r25, r3, 64
006740  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
006744  1f038300  addli r6, r6, 64
006748  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
00674c  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
006750  1f034c00  addli r6, r24, 32
006754  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
006758  92925b02  vadd.f.mz.rn vr5{mr1}, r23, vr5
00675c  8a101b02  vmul.f.mz.rn vr1{mr1}, r22, vr1
006760  8a125b02  vmul.f.mz.rn vr5{mr1}, r22, vr5
006764  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
006768  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
00676c  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
006770  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
006774  4bb467fe  ble.s r15, r6, -756
006778  0b13b910  add.s r6, r18, r11
00677c  8b9cb910  add.s r25, r19, r11
006780  1f0c8c00  addli r24, r24, 64
006784  9f850502  addli r11, r11, 256
006788  1f0d0301  addli r26, r6, 128
00678c  9f8d0c01  addli r27, r25, 128
006790  1f038301  addli r6, r6, 192
006794  9f8c8c01  addli r25, r25, 192
006798  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
00679c  1f8d0101  addli r26, r3, 128
0067a0  9f818101  addli r3, r3, 192
0067a4  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
0067a8  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
0067ac  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
0067b0  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
0067b4  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0067b8  92913b02  vadd.f.mz.rn vr3{mr1}, r23, vr3
0067bc  12924b02  vadd.f.mz.rn vr4{mr1}, r23, vr4
0067c0  8a113b02  vmul.f.mz.rn vr3{mr1}, r22, vr3
0067c4  0a124b02  vmul.f.mz.rn vr4{mr1}, r22, vr4
0067c8  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
0067cc  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
0067d0  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
0067d4  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
0067d8  3f2dfcfe  blt.s r24, r15, -184
0067dc  db94ffff  j -860
0067e0  9f0e0fd4  addli sp, r30, -5632
0067e4  e38fae2b  loadli.w r31,  5584(sp)
0067e8  63cfae2b  loadli.w r30,  5588(sp)
0067ec  638ebe2b  loadli.w r28,  5592(sp)
0067f0  e3cdbe2b  loadli.w r27,  5596(sp)
0067f4  638dce2b  loadli.w r26,  5600(sp)
0067f8  e3ccce2b  loadli.w r25,  5604(sp)
0067fc  638cde2b  loadli.w r24,  5608(sp)
006800  e3cbde2b  loadli.w r23,  5612(sp)
006804  638bee2b  loadli.w r22,  5616(sp)
006808  e3caee2b  loadli.w r21,  5620(sp)
00680c  638afe2b  loadli.w r20,  5624(sp)
006810  e3c9fe2b  loadli.w r19,  5628(sp)
006814  9f8e0e2c  addli sp, sp, 5632
006818  5f800f00  jr r31, 0
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
006a58  00100000  exit
