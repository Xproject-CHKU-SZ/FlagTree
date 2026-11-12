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
000170  9f8e0ed4  addli sp, sp, -5632
000174  67cdee2b  storeli.w r30, 5588(sp)
000178  1f8f0e2c  addli r30, sp, 5632
00017c  67ce9e2b  storeli.w r25, 5604(sp)
000180  1f250000  addli r10, zero, 2
000184  e7cf3e2b  storeli.w r19, 5628(sp)
000188  e78f4e2b  storeli.w r20, 5624(sp)
00018c  67cf5e2b  storeli.w r21, 5620(sp)
000190  678f6e2b  storeli.w r22, 5616(sp)
000194  e7ce7e2b  storeli.w r23, 5612(sp)
000198  e78e8e2b  storeli.w r24, 5608(sp)
00019c  678eae2b  storeli.w r26, 5600(sp)
0001a0  e7cdbe2b  storeli.w r27, 5596(sp)
0001a4  e78dce2b  storeli.w r28, 5592(sp)
0001a8  678dfe2b  storeli.w r31, 5584(sp)
0001ac  e3004f00  loadli.w r1,  32(r30)
0001b0  63472f00  loadli.w r14,  20(r30)
0001b4  e3072f00  loadli.w r15,  16(r30)
0001b8  e34c1f00  loadli.w r25,  12(r30)
0001bc  9f057fd6  addli r11, r30, -5320
0001c0  73b02500  store.d r[3:4], 0(r11)
0001c4  3f511500  blt.s r10, r1, 84
0001c8  1f110000  addli r2, zero, 1
0001cc  b7cc2004  beq r1, r2, 2864
0001d0  1f210000  addli r2, zero, 2
0001d4  bb8b2004  bneq r1, r2, 2784
0001d8  e3403f00  loadli.w r1,  28(r30)
0001dc  37e10014  beq r1, zero, 10328
0001e0  80300002  core_id r1
0001e4  1f210000  addli r2, zero, 2
0001e8  37822028  beq r1, r2, 20608
0001ec  1f110000  addli r2, zero, 1
0001f0  b7e02028  beq r1, r2, 20536
0001f4  3bc20028  bneq r1, zero, 20624
0001f8  63012f00  loadli.w r2,  16(r30)
0001fc  ab0100f0  lui r3, 983040
000200  1b311100  slli r2, r2, 1
000204  17113100  or r2, r2, r3
000208  ab910100  lui r3, 25
00020c  9f810100  addli r3, r3, 0
000210  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000214  5b0e0a00  j 20592
000218  1f310000  addli r2, zero, 3
00021c  b78c2004  beq r1, r2, 2848
000220  1f410000  addli r2, zero, 4
000224  3bca2004  bneq r1, r2, 2704
000228  e3002f00  loadli.w r1,  16(r30)
00022c  1f010010  addli r2, zero, 2048
000230  3ba1200a  bneq r1, r2, 5192
000234  e3403f00  loadli.w r1,  28(r30)
000238  37f3001a  beq r1, zero, 13532
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
0003b0  670b3fd4  storeli.w r3, -5456(r30)
0003b4  37a00100  beq r3, zero, 8
0003b8  9f02000a  addli r5, zero, 1280
0003bc  e3411f00  loadli.w r3,  12(r30)
0003c0  1f130000  addli r6, zero, 1
0003c4  3fb06132  blt.s r3, r6, 25612
0003c8  e3016fd5  loadli.w r3,  -5456(r30)
0003cc  9bc41000  srli r9, r1, 1
0003d0  80300002  core_id r1
0003d4  1f0a8fd7  addli r20, r30, -5184
0003d8  9bb51200  slli r11, r5, 1
0003dc  9f030000  addli r7, zero, 0
0003e0  1f797000  addli r18, zero, 63
0003e4  ab06803f  lui r13, 260096
0003e8  1f062000  addli r12, zero, 16
0003ec  2b0bffff  lui r22, 1048560
0003f0  2b0ec07f  lui r28, 523264
0003f4  9f3d0000  addli r27, zero, 3
0003f8  2bed7f00  lui r26, 2046
0003fc  1f571000  addli r14, zero, 13
000400  0b912120  mul.s r2, r3, r2
000404  9bc11000  srli r3, r1, 1
000408  9b302100  slli r1, r2, 2
00040c  e7432fd4  storeli.w r2, -5572(r30)
000410  0b914010  add.s r2, r1, r4
000414  8b90a010  add.s r1, r1, r10
000418  2b02807f  lui r4, 522240
00041c  1f251000  addli r10, zero, 10
000420  67041fd6  storeli.w r1, -5312(r30)
000424  9bb02200  slli r1, r5, 2
000428  67082fd6  storeli.w r2, -5248(r30)
00042c  1f814200  addli r2, r5, 32
000430  8b904011  add.s r1, r1, r20
000434  e7422fd4  storeli.w r2, -5588(r30)
000438  0b914511  add.s r2, r11, r20
00043c  9f8080ff  addli r1, r1, -64
000440  e7021fd4  storeli.w r1, -5592(r30)
000444  9f0081ff  addli r1, r2, -64
000448  2bf100fc  lui r2, 1032207
00044c  67421fd4  storeli.w r1, -5596(r30)
000450  abf0ffff  lui r1, 1048575
000454  1b1401c0  ori r8, r2, 3072
000458  1f018fd4  addli r2, r30, -5568
00045c  00a00000  mfence { lm }
000460  e7039fd4  storeli.w r9, -5576(r30)
000464  67433fd4  storeli.w r3, -5580(r30)
000468  6703bfd4  storeli.w r11, -5584(r30)
00046c  9b9000f8  ori r1, r1, 3968
000470  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
000474  e7411fd4  storeli.w r1, -5604(r30)
000478  abf00000  lui r1, 15
00047c  9b99f0ff  ori r19, r1, 4095
000480  ab700000  lui r1, 7
000484  9b9af0ff  ori r21, r1, 4095
000488  ab00ff03  lui r1, 16368
00048c  670c3fd5  storeli.w r19, -5440(r30)
000490  9b9bf03f  ori r23, r1, 1023
000494  abe00700  lui r1, 126
000498  db030000  j 28
00049c  00a00300  mfence { lm, sm, gm }
0004a0  80a10904  csr_set csr3, r19
0004a4  00d00100  sync_group
0004a8  8b939310  add.s r7, r7, r9
0004ac  3fa09301  blt.s r7, r25, 8
0004b0  5bfe0000  j 2032
0004b4  0b913310  add.s r2, r7, r3
0004b8  cb9f2cfe  ble.s r25, r2, -28
0004bc  e3011f00  loadli.w r3,  8(r30)
0004c0  0b113110  add.s r2, r2, r3
0004c4  8b819330  div.u r3, r7, r9
0004c8  e3447fd4  loadli.w r9,  -5572(r30)
0004cc  1b31b100  slli r2, r2, 11
0004d0  17119100  or r2, r2, r9
0004d4  9f047fd6  addli r9, r30, -5320
0004d8  33180128  sext_int2long r[17:18], r2
0004dc  2b0100f0  lui r2, 983040
0004e0  9bb16100  slli r3, r3, 6
0004e4  173c6802  sll.d r[25:26], r[17:18], r6
0004e8  6bd80400  load.d r[17:18], 0(r9)
0004ec  9f047fd5  addli r9, r30, -5448
0004f0  17912500  or r2, r11, r2
0004f4  9b810104  andi r3, r3, 64
0004f8  73b08401  store.d r[25:26], 0(r9)
0004fc  0b288811  add.ul r[17:18], r[17:18], r[25:26]
000500  7f214801  l_gm2lm r2, r20, 0(r[17:18])
000504  00310002  core_id r2
000508  00a00200  mfence { lm, gm }
00050c  979c2100  or r25, r3, r2
000510  63414fd4  loadli.w r2,  -5596(r30)
000514  e3015fd4  loadli.w r3,  -5592(r30)
000518  e3445fd4  loadli.w r9,  -5588(r30)
00051c  c2000102  vload.mz vr1{mr1}, 0(r2)
000520  9f84c4ff  addli r9, r9, -32
000524  1f8881ff  addli r16, r3, -64
000528  1f0181ff  addli r2, r2, -64
00052c  93059904  setlt.u r11, r18, r9
000530  66c111a0  vmerge_h.hf vr2, vr3, vr1
000534  e6c01180  vmerge_l.hf vr1, vr3, vr1
000538  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
00053c  9f8101ff  addli r3, r3, -128
000540  46101802  vstore_mask16.mz vr1{mr1}, 0(r16)
000544  3bef05fe  bneq r11, zero, -40
000548  00a00000  mfence { lm }
00054c  1f0c0005  addli r24, zero, 640
000550  63016fd5  loadli.w r2,  -5456(r30)
000554  3b360100  bneq r2, zero, 396
000558  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00055c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000560  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000564  e3413fd4  loadli.w r3,  -5604(r30)
000568  1f010000  addli r2, zero, 0
00056c  8b15f110  add.s r11, r2, r15
000570  8b142a10  add.s r9, r20, r2
000574  9f810101  addli r3, r3, 128
000578  1f010104  addli r2, r2, 512
00057c  1f880501  addli r16, r11, 128
000580  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
000584  9f888500  addli r17, r11, 64
000588  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
00058c  1f898401  addli r18, r9, 192
000590  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
000594  1f888501  addli r16, r11, 192
000598  4a930802  vloads_mask16.mz vr6{mr1}, 0(r17)
00059c  9f888400  addli r17, r9, 64
0005a0  c2150902  vload_mask16.mz vr11{mr1}, 0(r18)
0005a4  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
0005a8  1f880401  addli r16, r9, 128
0005ac  42950802  vload_mask16.mz vr10{mr1}, 0(r17)
0005b0  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
0005b4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0005b8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0005bc  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0005c0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0005c4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0005c8  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
0005cc  46108802  vstore_mask16.mz vr8{mr1}, 0(r16)
0005d0  1f880502  addli r16, r11, 256
0005d4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0005d8  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0005dc  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0005e0  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
0005e4  4a100802  vloads_mask16.mz vr0{mr1}, 0(r16)
0005e8  1f888502  addli r16, r11, 320
0005ec  46106902  vstore_mask16.mz vr6{mr1}, 0(r18)
0005f0  1f890402  addli r18, r9, 256
0005f4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0005f8  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0005fc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000600  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
000604  1f880503  addli r16, r11, 384
000608  c2130902  vload_mask16.mz vr7{mr1}, 0(r18)
00060c  9f858503  addli r11, r11, 448
000610  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000614  4a140802  vloads_mask16.mz vr8{mr1}, 0(r16)
000618  1f888402  addli r16, r9, 320
00061c  4a950502  vloads_mask16.mz vr10{mr1}, 0(r11)
000620  9f850403  addli r11, r9, 384
000624  9f848403  addli r9, r9, 448
000628  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
00062c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000630  c2930502  vload_mask16.mz vr7{mr1}, 0(r11)
000634  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000638  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
00063c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000640  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000644  46100902  vstore_mask16.mz vr0{mr1}, 0(r18)
000648  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00064c  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
000650  13888105  setlt.u r16, r3, r24
000654  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000658  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00065c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000660  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000664  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000668  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
00066c  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000670  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000674  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000678  bb5b08fe  bneq r16, zero, -268
00067c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000680  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000684  1f010002  addli r2, zero, 256
000688  6a7101c0  vsrl.p vr2, r2, vr0
00068c  ea7111c0  vsrl.p vr3, r2, vr1
000690  1f010001  addli r2, zero, 128
000694  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000698  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00069c  6a7101c0  vsrl.p vr2, r2, vr0
0006a0  ea7111c0  vsrl.p vr3, r2, vr1
0006a4  1f018000  addli r2, zero, 64
0006a8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006ac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006b0  6a7101c0  vsrl.p vr2, r2, vr0
0006b4  ea7111c0  vsrl.p vr3, r2, vr1
0006b8  1f014000  addli r2, zero, 32
0006bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006c4  6a7101c0  vsrl.p vr2, r2, vr0
0006c8  ea7111c0  vsrl.p vr3, r2, vr1
0006cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006d4  fa110040  vextracti.f r3, 0(vr0)
0006d8  fa940040  vextracti.f r9, 0(vr1)
0006dc  db670000  j 828
0006e0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0006e4  abf1ffff  lui r3, 1048575
0006e8  1f010000  addli r2, zero, 0
0006ec  9f090003  addli r19, zero, 384
0006f0  67029fd5  storeli.w r25, -5600(r30)
0006f4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0006f8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0006fc  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000700  9b9101f8  ori r3, r3, 3968
000704  8b952710  add.s r11, r15, r2
000708  8b142a10  add.s r9, r20, r2
00070c  9f810101  addli r3, r3, 128
000710  1f010104  addli r2, r2, 512
000714  1f890531  addli r18, r11, 6272
000718  1f880530  addli r16, r11, 6144
00071c  9f8c8531  addli r25, r11, 6336
000720  9f880418  addli r17, r9, 3072
000724  ca130902  vloads_mask16.mz vr7{mr1}, 0(r18)
000728  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
00072c  1f888530  addli r16, r11, 6208
000730  ca940c02  vloads_mask16.mz vr9{mr1}, 0(r25)
000734  1f890419  addli r18, r9, 3200
000738  42930802  vload_mask16.mz vr6{mr1}, 0(r17)
00073c  9f8c8419  addli r25, r9, 3264
000740  4a140802  vloads_mask16.mz vr8{mr1}, 0(r16)
000744  42150902  vload_mask16.mz vr10{mr1}, 0(r18)
000748  1f888418  addli r16, r9, 3136
00074c  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
000750  c2150802  vload_mask16.mz vr11{mr1}, 0(r16)
000754  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
000758  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
00075c  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
000760  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
000764  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000768  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
00076c  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
000770  9f880532  addli r17, r11, 6400
000774  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
000778  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
00077c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000780  46107902  vstore_mask16.mz vr7{mr1}, 0(r18)
000784  1f89041a  addli r18, r9, 3328
000788  c2130902  vload_mask16.mz vr7{mr1}, 0(r18)
00078c  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
000790  13883105  setlt.u r16, r3, r19
000794  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
000798  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00079c  4a900802  vloads_mask16.mz vr0{mr1}, 0(r17)
0007a0  9f888532  addli r17, r11, 6464
0007a4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0007a8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0007ac  4a930802  vloads_mask16.mz vr6{mr1}, 0(r17)
0007b0  9f880533  addli r17, r11, 6528
0007b4  9f858533  addli r11, r11, 6592
0007b8  4a940802  vloads_mask16.mz vr8{mr1}, 0(r17)
0007bc  9f88841a  addli r17, r9, 3392
0007c0  4a950502  vloads_mask16.mz vr10{mr1}, 0(r11)
0007c4  9f85041b  addli r11, r9, 3456
0007c8  9f84841b  addli r9, r9, 3520
0007cc  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
0007d0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0007d4  c2930502  vload_mask16.mz vr7{mr1}, 0(r11)
0007d8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0007dc  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
0007e0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0007e4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0007e8  46100902  vstore_mask16.mz vr0{mr1}, 0(r18)
0007ec  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0007f0  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
0007f4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0007f8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0007fc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000800  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000804  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000808  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
00080c  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000810  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000814  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000818  bb3b08fe  bneq r16, zero, -276
00081c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000820  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000824  9f010002  addli r3, zero, 256
000828  1f010000  addli r2, zero, 0
00082c  eaf111c0  vsrl.p vr3, r3, vr1
000830  6af101c0  vsrl.p vr2, r3, vr0
000834  9f010001  addli r3, zero, 128
000838  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00083c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000840  eaf111c0  vsrl.p vr3, r3, vr1
000844  6af101c0  vsrl.p vr2, r3, vr0
000848  9f018000  addli r3, zero, 64
00084c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000850  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000854  eaf111c0  vsrl.p vr3, r3, vr1
000858  6af101c0  vsrl.p vr2, r3, vr0
00085c  9f014000  addli r3, zero, 32
000860  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000864  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000868  eaf111c0  vsrl.p vr3, r3, vr1
00086c  6af101c0  vsrl.p vr2, r3, vr0
000870  abf1ffff  lui r3, 1048575
000874  9b9101f8  ori r3, r3, 3968
000878  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00087c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000880  fa990040  vextracti.f r19, 0(vr1)
000884  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000888  fa150040  vextracti.f r11, 0(vr0)
00088c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000890  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000894  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000898  8b942710  add.s r9, r15, r2
00089c  8b182a10  add.s r17, r20, r2
0008a0  9f810101  addli r3, r3, 128
0008a4  1f010104  addli r2, r2, 512
0008a8  1f880418  addli r16, r9, 3072
0008ac  1f890419  addli r18, r9, 3200
0008b0  42940802  vload_mask16.mz vr8{mr1}, 0(r17)
0008b4  9f8c8801  addli r25, r17, 192
0008b8  4a100802  vloads_mask16.mz vr0{mr1}, 0(r16)
0008bc  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
0008c0  1f888418  addli r16, r9, 3136
0008c4  1f898419  addli r18, r9, 3264
0008c8  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0008cc  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
0008d0  1f880801  addli r16, r17, 128
0008d4  ca130902  vloads_mask16.mz vr7{mr1}, 0(r18)
0008d8  1f898800  addli r18, r17, 64
0008dc  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
0008e0  42150902  vload_mask16.mz vr10{mr1}, 0(r18)
0008e4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0008e8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0008ec  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0008f0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0008f4  46108802  vstore_mask16.mz vr8{mr1}, 0(r16)
0008f8  1f88041a  addli r16, r9, 3328
0008fc  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000900  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000904  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
000908  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00090c  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
000910  4a100802  vloads_mask16.mz vr0{mr1}, 0(r16)
000914  1f88841a  addli r16, r9, 3392
000918  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
00091c  9f8c0802  addli r25, r17, 256
000920  46105902  vstore_mask16.mz vr5{mr1}, 0(r18)
000924  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000928  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00092c  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
000930  1f88041b  addli r16, r9, 3456
000934  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
000938  9f84841b  addli r9, r9, 3520
00093c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000940  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000944  4a140802  vloads_mask16.mz vr8{mr1}, 0(r16)
000948  1f888802  addli r16, r17, 320
00094c  4a950402  vloads_mask16.mz vr10{mr1}, 0(r9)
000950  9f840803  addli r9, r17, 384
000954  9f888803  addli r17, r17, 448
000958  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
00095c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000960  c2930402  vload_mask16.mz vr7{mr1}, 0(r9)
000964  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000968  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
00096c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000970  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000974  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
000978  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00097c  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
000980  13888105  setlt.u r16, r3, r24
000984  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000988  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00098c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000990  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000994  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000998  46905402  vstore_mask16.mz vr5{mr1}, 0(r9)
00099c  46907802  vstore_mask16.mz vr7{mr1}, 0(r17)
0009a0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0009a4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0009a8  bb4b08fe  bneq r16, zero, -272
0009ac  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0009b0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0009b4  1f010002  addli r2, zero, 256
0009b8  e30c4fd4  loadli.w r25,  -5600(r30)
0009bc  6a7101c0  vsrl.p vr2, r2, vr0
0009c0  ea7111c0  vsrl.p vr3, r2, vr1
0009c4  1f010001  addli r2, zero, 128
0009c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009d0  6a7101c0  vsrl.p vr2, r2, vr0
0009d4  ea7111c0  vsrl.p vr3, r2, vr1
0009d8  1f018000  addli r2, zero, 64
0009dc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009e0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009e4  6a7101c0  vsrl.p vr2, r2, vr0
0009e8  ea7111c0  vsrl.p vr3, r2, vr1
0009ec  1f014000  addli r2, zero, 32
0009f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009f4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009f8  6a7101c0  vsrl.p vr2, r2, vr0
0009fc  ea7111c0  vsrl.p vr3, r2, vr1
000a00  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000a04  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a08  fa940040  vextracti.f r9, 0(vr1)
000a0c  7a110040  vextracti.f r2, 0(vr0)
000a10  8be12510  add.f.rn r3, r11, r2
000a14  8be49910  add.f.rn r9, r19, r9
000a18  2b680000  lui r16, 6
000a1c  ab680000  lui r17, 6
000a20  9bb52c00  slli r11, r25, 2
000a24  1f010000  addli r2, zero, 0
000a28  1f080800  addli r16, r16, 0
000a2c  9f880804  addli r17, r17, 512
000a30  1f090800  addli r18, r16, 0
000a34  9f890800  addli r19, r17, 0
000a38  0b982511  add.s r16, r11, r18
000a3c  8b983511  add.s r17, r11, r19
000a40  73e09800  stores.w r9, 0(r17)
000a44  73603800  stores.w r3, 0(r16)
000a48  9b944500  ori r9, r11, 4
000a4c  00a00300  mfence { lm, sm, gm }
000a50  e3018fd5  loadli.w r3,  -5440(r30)
000a54  8b952411  add.s r11, r9, r18
000a58  8b943411  add.s r9, r9, r19
000a5c  80a10104  csr_set csr3, r3
000a60  9b81ec07  andi r3, r25, 126
000a64  00d00100  sync_group
000a68  efc50500  loads.w r11, 0(r11)
000a6c  efc40400  loads.w r9, 0(r9)
000a70  9bb12100  slli r3, r3, 2
000a74  0b982111  add.s r16, r3, r18
000a78  8b913111  add.s r3, r3, r19
000a7c  6f480800  loads.w r16, 0(r16)
000a80  efc10100  loads.w r3, 0(r3)
000a84  8be50511  add.f.rn r11, r11, r16
000a88  2b08003a  lui r16, 237568
000a8c  8be13410  add.f.rn r3, r9, r3
000a90  8be40521  mul.f.rn r9, r11, r16
000a94  8be10121  mul.f.rn r3, r3, r16
000a98  8be59420  mul.f.rn r11, r9, r9
000a9c  8be40458  neg.f r9, r9
000aa0  8be1b118  sub.f.rn r3, r3, r11
000aa4  e3053f00  loadli.w r11,  24(r30)
000aa8  8be1b110  add.f.rn r3, r3, r11
000aac  9f050000  addli r11, zero, 0
000ab0  8f810108  sqrt.f.rn r3, r3
000ab4  8f813618  div.f.rn r3, r13, r3
000ab8  e3080fd7  loadli.w r17,  -5248(r30)
000abc  63098fd6  loadli.w r18,  -5312(r30)
000ac0  0b182a10  add.s r16, r20, r2
000ac4  9f0c8800  addli r25, r16, 64
000ac8  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
000acc  8b982810  add.s r17, r17, r2
000ad0  0b192910  add.s r18, r18, r2
000ad4  c2900c02  vload_mask16.mz vr1{mr1}, 0(r25)
000ad8  9f898800  addli r19, r17, 64
000adc  4a910802  vloads_mask16.mz vr2{mr1}, 0(r17)
000ae0  4a120902  vloads_mask16.mz vr4{mr1}, 0(r18)
000ae4  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
000ae8  9f098900  addli r19, r18, 64
000aec  12900402  vadd.f.mz.rn vr0{mr1}, r9, vr0
000af0  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
000af4  9f894500  addli r19, r11, 32
000af8  92901402  vadd.f.mz.rn vr1{mr1}, r9, vr1
000afc  93893207  setle.u r19, r5, r19
000b00  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
000b04  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
000b08  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
000b0c  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
000b10  46104802  vstore_mask16.mz vr4{mr1}, 0(r16)
000b14  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
000b18  bb910900  bneq r19, zero, 100
000b1c  9f8c0801  addli r25, r17, 128
000b20  9f090801  addli r19, r16, 128
000b24  1f088801  addli r16, r16, 192
000b28  9f888801  addli r17, r17, 192
000b2c  9f858500  addli r11, r11, 64
000b30  1f010102  addli r2, r2, 256
000b34  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
000b38  9f0c0901  addli r25, r18, 128
000b3c  1f098901  addli r18, r18, 192
000b40  42900902  vload_mask16.mz vr0{mr1}, 0(r19)
000b44  c2100802  vload_mask16.mz vr1{mr1}, 0(r16)
000b48  4a920802  vloads_mask16.mz vr4{mr1}, 0(r17)
000b4c  93885504  setlt.u r17, r11, r5
000b50  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
000b54  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
000b58  12900402  vadd.f.mz.rn vr0{mr1}, r9, vr0
000b5c  92901402  vadd.f.mz.rn vr1{mr1}, r9, vr1
000b60  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
000b64  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
000b68  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
000b6c  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
000b70  46903902  vstore_mask16.mz vr3{mr1}, 0(r19)
000b74  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
000b78  3b8d08fe  bneq r17, zero, -192
000b7c  1f018fd7  addli r2, r30, -5184
000b80  9f018fd7  addli r3, r30, -5184
000b84  9f040000  addli r9, zero, 0
000b88  00a00000  mfence { lm }
000b8c  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000b90  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000b94  9f858100  addli r11, r3, 64
000b98  9f844400  addli r9, r9, 32
000b9c  9f810101  addli r3, r3, 128
000ba0  6a201622  vor.u.mz vr0{mr1}, r12, vr1
000ba4  ea221722  vor.u.mz vr5{mr1}, r14, vr1
000ba8  42910502  vload_mask16.mz vr2{mr1}, 0(r11)
000bac  93855404  setlt.u r11, r9, r5
000bb0  6e3230c2  vsrl.s.mz vr4{mr1}, vr0, vr3
000bb4  6e3020c2  vsrl.s.mz vr0{mr1}, vr0, vr2
000bb8  6a324302  vand.s.mz vr4{mr1}, r6, vr4
000bbc  6a300302  vand.s.mz vr0{mr1}, r6, vr0
000bc0  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
000bc4  e69101c0  vabs.f vr3, vr3
000bc8  16300102  vadd.s.mz vr0{mr1}, vr2, vr0
000bcc  661101c0  vabs.f vr2, vr2
000bd0  12b24a02  vadd.s.mz vr4{mr1}, r21, vr4
000bd4  72213242  vlt.u.mz mr2{mr1}, r4, vr3
000bd8  12b00a02  vadd.s.mz vr0{mr1}, r21, vr0
000bdc  6a324b02  vand.s.mz vr4{mr1}, r22, vr4
000be0  6a300b02  vand.s.mz vr0{mr1}, r22, vr0
000be4  6a221e34  vor.u.mh vr4{mr2}, r28, vr1
000be8  72212242  vlt.u.mz mr2{mr1}, r4, vr2
000bec  6aa11d22  vor.u.mz vr2{mr1}, r27, vr1
000bf0  6a201e34  vor.u.mh vr0{mr2}, r28, vr1
000bf4  ea201522  vor.u.mz vr1{mr1}, r10, vr1
000bf8  eeb142c2  vsrl.s.mz vr3{mr1}, vr5, vr4
000bfc  6e3241c2  vsrl.s.mz vr4{mr1}, vr2, vr4
000c00  eeb202c2  vsrl.s.mz vr5{mr1}, vr5, vr0
000c04  6e3001c2  vsrl.s.mz vr0{mr1}, vr2, vr0
000c08  6ab13002  vand.s.mz vr2{mr1}, r1, vr3
000c0c  6a324d02  vand.s.mz vr4{mr1}, r26, vr4
000c10  eab15002  vand.s.mz vr3{mr1}, r1, vr5
000c14  6a300d02  vand.s.mz vr0{mr1}, r26, vr0
000c18  6ab12622  vor.s.mz vr2{mr1}, r13, vr2
000c1c  6ab24622  vor.s.mz vr4{mr1}, r13, vr4
000c20  6ab00622  vor.s.mz vr0{mr1}, r13, vr0
000c24  eab13622  vor.s.mz vr3{mr1}, r13, vr3
000c28  06110120  vfloat2fp16_l.rz vr2, vr2
000c2c  06500020  vfloat2fp16_h.rz vr0, vr0
000c30  06d10120  vfloat2fp16_h.rz vr2, vr3
000c34  06100220  vfloat2fp16_l.rz vr0, vr4
000c38  eeb020a2  vsll.s.mz vr1{mr1}, vr1, vr2
000c3c  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000c40  ea301402  vand.s.mz vr1{mr1}, r8, vr1
000c44  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
000c48  46000102  vstore.mz vr0{mr1}, 0(r2)
000c4c  1f018100  addli r2, r2, 64
000c50  bbfc05fe  bneq r11, zero, -196
000c54  9f017fd5  addli r3, r30, -5448
000c58  6b580f00  load.d r[17:18], 0(r30)
000c5c  e3056fd4  loadli.w r11,  -5584(r30)
000c60  2b0100f0  lui r2, 983040
000c64  6bd90100  load.d r[19:20], 0(r3)
000c68  00a00000  mfence { lm }
000c6c  17912500  or r2, r11, r2
000c70  0b282811  add.ul r[17:18], r[17:18], r[19:20]
000c74  1f797000  addli r18, zero, 63
000c78  7f314801  s_lm2gm r2, r20, 0(r[17:18])
000c7c  1f018fd4  addli r2, r30, -5568
000c80  00a00200  mfence { lm, gm }
000c84  e34c1f00  loadli.w r25,  12(r30)
000c88  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
000c8c  e3047fd4  loadli.w r9,  -5576(r30)
000c90  e3416fd4  loadli.w r3,  -5580(r30)
000c94  e3098fd5  loadli.w r19,  -5440(r30)
000c98  8b939310  add.s r7, r7, r9
000c9c  3fe093fd  blt.s r7, r25, -2024
000ca0  abf00000  lui r1, 15
000ca4  9b90f0ff  ori r1, r1, 4095
000ca8  80a10004  csr_set csr3, r1
000cac  00d00100  sync_group
000cb0  5b640b00  j 23328
000cb4  e3403f00  loadli.w r1,  28(r30)
000cb8  37ca000a  beq r1, zero, 5776
000cbc  e3002f00  loadli.w r1,  16(r30)
000cc0  1f010010  addli r2, zero, 2048
000cc4  3baa2012  bneq r1, r2, 9864
000cc8  00350002  core_id r10
000ccc  9f200000  addli r1, zero, 2
000cd0  377e1526  beq r10, r1, 20380
000cd4  9f100000  addli r1, zero, 1
000cd8  376d1526  beq r10, r1, 20312
000cdc  bb2e0526  bneq r10, zero, 20392
000ce0  9f000040  addli r1, zero, 8192
000ce4  2b0100f0  lui r2, 983040
000ce8  97902000  or r1, r1, r2
000cec  2b110200  lui r2, 33
000cf0  1f010100  addli r2, r2, 0
000cf4  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000cf8  dbf10900  j 20364
000cfc  e3403f00  loadli.w r1,  28(r30)
000d00  37db0010  beq r1, zero, 8916
000d04  80300002  core_id r1
000d08  1f210000  addli r2, zero, 2
000d0c  37dd2024  beq r1, r2, 19284
000d10  1f110000  addli r2, zero, 1
000d14  b7d42022  beq r1, r2, 17716
000d18  bb9d0024  bneq r1, zero, 19300
000d1c  63012f00  loadli.w r2,  16(r30)
000d20  ab0100f0  lui r3, 983040
000d24  1b311100  slli r2, r2, 1
000d28  17113100  or r2, r2, r3
000d2c  abd10100  lui r3, 29
000d30  9f810100  addli r3, r3, 0
000d34  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000d38  db680900  j 19268
000d3c  e3002f00  loadli.w r1,  16(r30)
000d40  1f010010  addli r2, zero, 2048
000d44  3be02008  bneq r1, r2, 4120
000d48  e3403f00  loadli.w r1,  28(r30)
000d4c  b7d1001c  beq r1, zero, 14452
000d50  803b0002  core_id r23
000d54  abd70000  lui r15, 13
000d58  00510102  load_param_i r2, 2
000d5c  1f150000  addli r10, zero, 1
000d60  9f058fd7  addli r11, r30, -5184
000d64  1f068000  addli r12, zero, 64
000d68  9f060010  addli r13, zero, 2048
000d6c  9bb05b00  slli r1, r23, 5
000d70  9b315100  slli r3, r2, 5
000d74  9f8707f0  addli r15, r15, -2048
000d78  1f870000  addli r14, r1, 0
000d7c  33080728  zext_int2long r[17:18], r14
000d80  2b0900f0  lui r18, 983040
000d84  1738a802  sll.d r[17:18], r[17:18], r10
000d88  17192601  or r18, r12, r18
000d8c  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000d90  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000d94  1b382700  slli r16, r14, 2
000d98  0b97e110  add.s r14, r3, r14
000d9c  00a00200  mfence { lm, gm }
000da0  42800502  vload.mz vr0{mr1}, 0(r11)
000da4  9308d704  setlt.u r17, r14, r13
000da8  0b18f810  add.s r16, r16, r15
000dac  1f098800  addli r18, r16, 64
000db0  86300000  vfp162float_l.rn vr1, vr0
000db4  06700000  vfp162float_h.rn vr0, vr0
000db8  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000dbc  4e100902  vstores_mask16.mz vr0{mr1}, 0(r18)
000dc0  bbfe08fe  bneq r17, zero, -68
000dc4  abf20000  lui r5, 15
000dc8  1bb57b00  slli r10, r23, 7
000dcc  1b327100  slli r4, r2, 7
000dd0  1f160000  addli r12, zero, 1
000dd4  9f068fd7  addli r13, r30, -5184
000dd8  1f078000  addli r14, zero, 64
000ddc  1f080010  addli r16, zero, 2048
000de0  9f880000  addli r17, r1, 0
000de4  00a00000  mfence { lm }
000de8  9f8202f0  addli r5, r5, -2048
000dec  8b155510  add.s r11, r10, r5
000df0  33890828  zext_int2long r[19:20], r17
000df4  2b0a00f0  lui r20, 983040
000df8  8b983810  add.s r17, r17, r3
000dfc  1739c902  sll.d r[19:20], r[19:20], r12
000e00  171a4701  or r20, r14, r20
000e04  0b292311  add.ul r[19:20], r[7:8], r[19:20]
000e08  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
000e0c  13890805  setlt.u r18, r17, r16
000e10  9f898500  addli r19, r11, 64
000e14  00a00200  mfence { lm, gm }
000e18  42800602  vload.mz vr0{mr1}, 0(r13)
000e1c  86300000  vfp162float_l.rn vr1, vr0
000e20  06700000  vfp162float_h.rn vr0, vr0
000e24  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
000e28  8b954510  add.s r11, r11, r4
000e2c  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
000e30  3b0f09fe  bneq r18, zero, -64
000e34  ab130100  lui r7, 17
000e38  9f058fd7  addli r11, r30, -5184
000e3c  1f068000  addli r12, zero, 64
000e40  9f060010  addli r13, zero, 2048
000e44  00a00000  mfence { lm }
000e48  9f8303f0  addli r7, r7, -2048
000e4c  0b137510  add.s r6, r10, r7
000e50  1f150000  addli r10, zero, 1
000e54  33880028  zext_int2long r[17:18], r1
000e58  2b0700f0  lui r14, 983040
000e5c  8b903010  add.s r1, r1, r3
000e60  1738a802  sll.d r[17:18], r[17:18], r10
000e64  1717e600  or r14, r12, r14
000e68  0b280411  add.ul r[17:18], r[9:10], r[17:18]
000e6c  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000e70  1387d004  setlt.u r14, r1, r13
000e74  1f088300  addli r16, r6, 64
000e78  00a00200  mfence { lm, gm }
000e7c  42800502  vload.mz vr0{mr1}, 0(r11)
000e80  86300000  vfp162float_l.rn vr1, vr0
000e84  06700000  vfp162float_h.rn vr0, vr0
000e88  4e101302  vstores_mask16.mz vr1{mr1}, 0(r6)
000e8c  0b134310  add.s r6, r6, r4
000e90  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
000e94  3b0f07fe  bneq r14, zero, -64
000e98  abf00000  lui r1, 15
000e9c  00a00300  mfence { lm, sm, gm }
000ea0  9b811b00  andi r3, r23, 1
000ea4  1f020006  addli r4, zero, 768
000ea8  9b90f0ff  ori r1, r1, 4095
000eac  80a10004  csr_set csr3, r1
000eb0  9f000006  addli r1, zero, 768
000eb4  00d00100  sync_group
000eb8  67083fd6  storeli.w r3, -5248(r30)
000ebc  37a00100  beq r3, zero, 8
000ec0  1f02000a  addli r4, zero, 1280
000ec4  e3411f00  loadli.w r3,  12(r30)
000ec8  1f130000  addli r6, zero, 1
000ecc  3f94612c  blt.s r3, r6, 22788
000ed0  e3010fd7  loadli.w r3,  -5248(r30)
000ed4  9f068fd7  addli r13, r30, -5184
000ed8  1b441100  srli r8, r2, 1
000edc  1f014200  addli r2, r4, 32
000ee0  1b351200  slli r10, r4, 1
000ee4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000ee8  2b390100  lui r18, 19
000eec  1f030000  addli r6, zero, 0
000ef0  9bc41b00  srli r9, r23, 1
000ef4  9f787000  addli r17, zero, 63
000ef8  1f0a0005  addli r20, zero, 640
000efc  1f0c4000  addli r24, zero, 32
000f00  1f0e0003  addli r28, zero, 384
000f04  670c2fd4  storeli.w r2, -5440(r30)
000f08  0b11d510  add.s r2, r10, r13
000f0c  1f0909f4  addli r18, r18, -1536
000f10  8b901120  mul.s r1, r3, r1
000f14  67041fd6  storeli.w r1, -5312(r30)
000f18  9bb02000  slli r1, r1, 2
000f1c  8b955010  add.s r11, r1, r5
000f20  0b967010  add.s r12, r1, r7
000f24  9b302200  slli r1, r4, 2
000f28  8b90d010  add.s r1, r1, r13
000f2c  9f8080ff  addli r1, r1, -64
000f30  e70b1fd4  storeli.w r1, -5448(r30)
000f34  9f0081ff  addli r1, r2, -64
000f38  1f018fd4  addli r2, r30, -5568
000f3c  670b1fd4  storeli.w r1, -5456(r30)
000f40  abf0ffff  lui r1, 1048575
000f44  00a00000  mfence { lm }
000f48  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000f4c  1f810c00  addli r2, r25, 0
000f50  ab3c0100  lui r25, 19
000f54  9b9000f8  ori r1, r1, 3968
000f58  9f8c0cf0  addli r25, r25, -2048
000f5c  e7431fd4  storeli.w r1, -5572(r30)
000f60  abf00000  lui r1, 15
000f64  1b9df0ff  ori r26, r1, 4095
000f68  5b040000  j 32
000f6c  00a00300  mfence { lm, sm, gm }
000f70  80210d04  csr_set csr3, r26
000f74  00d00100  sync_group
000f78  63411f00  loadli.w r2,  12(r30)
000f7c  0b138310  add.s r6, r6, r8
000f80  3f202300  blt.s r6, r2, 8
000f84  dba3ffff  j -740
000f88  8b109310  add.s r1, r6, r9
000f8c  cb0f11fe  ble.s r2, r1, -32
000f90  63011f00  loadli.w r2,  8(r30)
000f94  8b028330  div.u r5, r6, r8
000f98  9f110000  addli r3, zero, 1
000f9c  ab0300f0  lui r7, 983040
000fa0  8b902010  add.s r1, r1, r2
000fa4  63018fd6  loadli.w r2,  -5312(r30)
000fa8  9bb0b000  slli r1, r1, 11
000fac  97902000  or r1, r1, r2
000fb0  b3900028  sext_int2long r[2:3], r1
000fb4  17b13002  sll.d r[3:4], r[2:3], r3
000fb8  9bb06200  slli r1, r5, 6
000fbc  9f027fd6  addli r5, r30, -5320
000fc0  ebda0200  load.d r[22:23], 0(r5)
000fc4  97127500  or r5, r10, r7
000fc8  9b800004  andi r1, r1, 64
000fcc  17977001  or r14, r1, r23
000fd0  8baa2a10  add.ul r[22:23], r[22:23], r[3:4]
000fd4  ffa2da00  l_gm2lm r5, r13, 0(r[22:23])
000fd8  00a00200  mfence { lm, gm }
000fdc  e3006fd5  loadli.w r1,  -5456(r30)
000fe0  e3027fd5  loadli.w r5,  -5448(r30)
000fe4  e3038fd5  loadli.w r7,  -5440(r30)
000fe8  c2800002  vload.mz vr1{mr1}, 0(r1)
000fec  9f83c3ff  addli r7, r7, -32
000ff0  9f8982ff  addli r19, r5, -64
000ff4  9f8080ff  addli r1, r1, -64
000ff8  13887804  setlt.u r16, r17, r7
000ffc  06f10000  vfp162float_h.rn vr2, vr1
001000  86b00000  vfp162float_l.rn vr1, vr1
001004  46902202  vstore_mask16.mz vr2{mr1}, 0(r5)
001008  9f8202ff  addli r5, r5, -128
00100c  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
001010  3b6f08fe  bneq r16, zero, -40
001014  00a00000  mfence { lm }
001018  e3000fd7  loadli.w r1,  -5248(r30)
00101c  3bc60000  bneq r1, zero, 400
001020  9f008fd4  addli r1, r30, -5568
001024  63487fd4  loadli.w r16,  -5572(r30)
001028  9f020000  addli r5, zero, 0
00102c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
001030  92303002  vadd.s.mz vr1{mr1}, zero, vr3
001034  12313002  vadd.s.mz vr2{mr1}, zero, vr3
001038  12323002  vadd.s.mz vr4{mr1}, zero, vr3
00103c  8b90f210  add.s r1, r5, r15
001040  8b935610  add.s r7, r13, r5
001044  1f080801  addli r16, r16, 128
001048  9f820204  addli r5, r5, 512
00104c  9f890001  addli r19, r1, 128
001050  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
001054  9f8a8000  addli r21, r1, 64
001058  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
00105c  1f8b8301  addli r22, r7, 192
001060  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
001064  9f898001  addli r19, r1, 192
001068  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
00106c  9f8a8300  addli r21, r7, 64
001070  c2150b02  vload_mask16.mz vr11{mr1}, 0(r22)
001074  ca930902  vloads_mask16.mz vr7{mr1}, 0(r19)
001078  9f890301  addli r19, r7, 128
00107c  42950a02  vload_mask16.mz vr10{mr1}, 0(r21)
001080  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
001084  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001088  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00108c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
001090  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
001094  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001098  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
00109c  46908902  vstore_mask16.mz vr8{mr1}, 0(r19)
0010a0  9f890002  addli r19, r1, 256
0010a4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0010a8  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0010ac  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0010b0  46905a02  vstore_mask16.mz vr5{mr1}, 0(r21)
0010b4  4a900902  vloads_mask16.mz vr0{mr1}, 0(r19)
0010b8  9f898002  addli r19, r1, 320
0010bc  46106b02  vstore_mask16.mz vr6{mr1}, 0(r22)
0010c0  1f8b0302  addli r22, r7, 256
0010c4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0010c8  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0010cc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0010d0  4a930902  vloads_mask16.mz vr6{mr1}, 0(r19)
0010d4  9f890003  addli r19, r1, 384
0010d8  c2130b02  vload_mask16.mz vr7{mr1}, 0(r22)
0010dc  9f808003  addli r1, r1, 448
0010e0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0010e4  4a940902  vloads_mask16.mz vr8{mr1}, 0(r19)
0010e8  9f898302  addli r19, r7, 320
0010ec  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
0010f0  9f800303  addli r1, r7, 384
0010f4  9f838303  addli r7, r7, 448
0010f8  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
0010fc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001100  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001104  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001108  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
00110c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001110  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001114  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
001118  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00111c  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
001120  93094805  setlt.u r19, r16, r20
001124  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001128  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00112c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001130  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001134  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001138  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00113c  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001140  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001144  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001148  bbdb09fe  bneq r19, zero, -268
00114c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001150  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001154  9f000002  addli r1, zero, 256
001158  6af100c0  vsrl.p vr2, r1, vr0
00115c  eaf110c0  vsrl.p vr3, r1, vr1
001160  9f000001  addli r1, zero, 128
001164  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001168  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00116c  6af100c0  vsrl.p vr2, r1, vr0
001170  eaf110c0  vsrl.p vr3, r1, vr1
001174  9f008000  addli r1, zero, 64
001178  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00117c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001180  6af100c0  vsrl.p vr2, r1, vr0
001184  eaf110c0  vsrl.p vr3, r1, vr1
001188  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00118c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001190  6a710cc0  vsrl.p vr2, r24, vr0
001194  ea711cc0  vsrl.p vr3, r24, vr1
001198  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00119c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0011a0  fa100040  vextracti.f r1, 0(vr0)
0011a4  fa930040  vextracti.f r7, 0(vr1)
0011a8  db650000  j 812
0011ac  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0011b0  abf0ffff  lui r1, 1048575
0011b4  1f080000  addli r16, zero, 0
0011b8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0011bc  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0011c0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0011c4  9b9900f8  ori r19, r1, 3968
0011c8  8b930711  add.s r7, r15, r16
0011cc  8b920611  add.s r5, r13, r16
0011d0  9f890901  addli r19, r19, 128
0011d4  1f080804  addli r16, r16, 512
0011d8  1f8b0331  addli r22, r7, 6272
0011dc  9f800330  addli r1, r7, 6144
0011e0  9f8d8331  addli r27, r7, 6336
0011e4  9f8a0218  addli r21, r5, 3072
0011e8  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
0011ec  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
0011f0  9f808330  addli r1, r7, 6208
0011f4  ca940d02  vloads_mask16.mz vr9{mr1}, 0(r27)
0011f8  1f8b0219  addli r22, r5, 3200
0011fc  42930a02  vload_mask16.mz vr6{mr1}, 0(r21)
001200  9f8d8219  addli r27, r5, 3264
001204  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
001208  42150b02  vload_mask16.mz vr10{mr1}, 0(r22)
00120c  9f808218  addli r1, r5, 3136
001210  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
001214  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
001218  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
00121c  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
001220  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
001224  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
001228  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00122c  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
001230  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
001234  9f8a0332  addli r21, r7, 6400
001238  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
00123c  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
001240  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001244  46107b02  vstore_mask16.mz vr7{mr1}, 0(r22)
001248  1f8b021a  addli r22, r5, 3328
00124c  c2130b02  vload_mask16.mz vr7{mr1}, 0(r22)
001250  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001254  9f80021b  addli r1, r5, 3456
001258  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
00125c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001260  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
001264  9f8a8332  addli r21, r7, 6464
001268  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00126c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001270  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
001274  9f8a0333  addli r21, r7, 6528
001278  9f838333  addli r7, r7, 6592
00127c  4a940a02  vloads_mask16.mz vr8{mr1}, 0(r21)
001280  9f8a821a  addli r21, r5, 3392
001284  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
001288  9f82821b  addli r5, r5, 3520
00128c  9383c905  setlt.u r7, r19, r28
001290  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
001294  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001298  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00129c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0012a0  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
0012a4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0012a8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0012ac  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
0012b0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0012b4  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
0012b8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0012bc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0012c0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0012c4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0012c8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0012cc  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0012d0  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
0012d4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0012d8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0012dc  bbbb03fe  bneq r7, zero, -276
0012e0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0012e4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0012e8  9f000002  addli r1, zero, 256
0012ec  9f090000  addli r19, zero, 0
0012f0  eaf110c0  vsrl.p vr3, r1, vr1
0012f4  6af100c0  vsrl.p vr2, r1, vr0
0012f8  9f000001  addli r1, zero, 128
0012fc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001300  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001304  eaf110c0  vsrl.p vr3, r1, vr1
001308  6af100c0  vsrl.p vr2, r1, vr0
00130c  9f008000  addli r1, zero, 64
001310  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001314  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001318  eaf110c0  vsrl.p vr3, r1, vr1
00131c  6af100c0  vsrl.p vr2, r1, vr0
001320  abf0ffff  lui r1, 1048575
001324  9b9200f8  ori r5, r1, 3968
001328  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00132c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001330  ea711cc0  vsrl.p vr3, r24, vr1
001334  6a710cc0  vsrl.p vr2, r24, vr0
001338  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00133c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001340  7a980040  vextracti.f r16, 0(vr1)
001344  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001348  fa1d0040  vextracti.f r27, 0(vr0)
00134c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001350  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001354  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001358  8b903711  add.s r1, r15, r19
00135c  8b933611  add.s r7, r13, r19
001360  9f820201  addli r5, r5, 128
001364  9f890904  addli r19, r19, 512
001368  9f8a0018  addli r21, r1, 3072
00136c  1f8b0019  addli r22, r1, 3200
001370  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
001374  9f8b8301  addli r23, r7, 192
001378  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
00137c  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
001380  9f8a8018  addli r21, r1, 3136
001384  1f8b8019  addli r22, r1, 3264
001388  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
00138c  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
001390  9f8a0301  addli r21, r7, 128
001394  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
001398  1f8b8300  addli r22, r7, 64
00139c  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
0013a0  42150b02  vload_mask16.mz vr10{mr1}, 0(r22)
0013a4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0013a8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0013ac  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0013b0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0013b4  46908a02  vstore_mask16.mz vr8{mr1}, 0(r21)
0013b8  9f8a001a  addli r21, r1, 3328
0013bc  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0013c0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0013c4  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0013c8  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0013cc  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
0013d0  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
0013d4  9f8a801a  addli r21, r1, 3392
0013d8  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
0013dc  9f8b0302  addli r23, r7, 256
0013e0  46105b02  vstore_mask16.mz vr5{mr1}, 0(r22)
0013e4  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0013e8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0013ec  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
0013f0  9f8a001b  addli r21, r1, 3456
0013f4  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
0013f8  9f80801b  addli r1, r1, 3520
0013fc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001400  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001404  4a940a02  vloads_mask16.mz vr8{mr1}, 0(r21)
001408  9f8a8302  addli r21, r7, 320
00140c  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
001410  9f800303  addli r1, r7, 384
001414  9f838303  addli r7, r7, 448
001418  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
00141c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001420  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001424  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001428  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
00142c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001430  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001434  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
001438  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00143c  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
001440  938a4205  setlt.u r21, r5, r20
001444  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001448  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00144c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001450  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001454  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001458  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00145c  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001460  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001464  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001468  bbcb0afe  bneq r21, zero, -272
00146c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001470  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001474  9f000002  addli r1, zero, 256
001478  803b0002  core_id r23
00147c  6af100c0  vsrl.p vr2, r1, vr0
001480  eaf110c0  vsrl.p vr3, r1, vr1
001484  9f000001  addli r1, zero, 128
001488  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00148c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001490  6af100c0  vsrl.p vr2, r1, vr0
001494  eaf110c0  vsrl.p vr3, r1, vr1
001498  9f008000  addli r1, zero, 64
00149c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0014a0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0014a4  6af100c0  vsrl.p vr2, r1, vr0
0014a8  eaf110c0  vsrl.p vr3, r1, vr1
0014ac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0014b0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0014b4  6a710cc0  vsrl.p vr2, r24, vr0
0014b8  ea711cc0  vsrl.p vr3, r24, vr1
0014bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0014c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0014c4  fa100040  vextracti.f r1, 0(vr0)
0014c8  fa920040  vextracti.f r5, 0(vr1)
0014cc  8be01d10  add.f.rn r1, r27, r1
0014d0  8b635810  add.f.rn r7, r16, r5
0014d4  1b382700  slli r16, r14, 2
0014d8  9f020000  addli r5, zero, 0
0014dc  8b199811  add.s r19, r16, r25
0014e0  8b1a2811  add.s r21, r16, r18
0014e4  73e01900  stores.w r1, 0(r19)
0014e8  9b00e707  andi r1, r14, 126
0014ec  73e07a00  stores.w r7, 0(r21)
0014f0  9b134800  ori r7, r16, 4
0014f4  9f090000  addli r19, zero, 0
0014f8  00a00300  mfence { lm, sm, gm }
0014fc  80210d04  csr_set csr3, r26
001500  00d00100  sync_group
001504  9bb02000  slli r1, r1, 2
001508  0b979311  add.s r14, r7, r25
00150c  8b932311  add.s r7, r7, r18
001510  0b989011  add.s r16, r1, r25
001514  6f470700  loads.w r14, 0(r14)
001518  8b902011  add.s r1, r1, r18
00151c  efc30300  loads.w r7, 0(r7)
001520  6f480800  loads.w r16, 0(r16)
001524  efc00000  loads.w r1, 0(r1)
001528  0b670711  add.f.rn r14, r14, r16
00152c  2b08003a  lui r16, 237568
001530  8be01310  add.f.rn r1, r7, r1
001534  8b630721  mul.f.rn r7, r14, r16
001538  8be00021  mul.f.rn r1, r1, r16
00153c  0be77320  mul.f.rn r14, r7, r7
001540  0be80358  neg.f r16, r7
001544  8be0e018  sub.f.rn r1, r1, r14
001548  63073f00  loadli.w r14,  24(r30)
00154c  8be0e010  add.f.rn r1, r1, r14
001550  2b07803f  lui r14, 260096
001554  8f800008  sqrt.f.rn r1, r1
001558  0f071718  div.f.rn r14, r14, r1
00155c  8b905510  add.s r1, r11, r5
001560  8b935610  add.s r7, r13, r5
001564  8b1d5610  add.s r27, r12, r5
001568  1f8b8000  addli r22, r1, 64
00156c  9f8a8300  addli r21, r7, 64
001570  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
001574  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
001578  4a920d02  vloads_mask16.mz vr4{mr1}, 0(r27)
00157c  ca110b02  vloads_mask16.mz vr3{mr1}, 0(r22)
001580  1f8b8d00  addli r22, r27, 64
001584  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
001588  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
00158c  1f8b4900  addli r22, r19, 32
001590  12100802  vadd.f.mz.rn vr0{mr1}, r16, vr0
001594  130b6207  setle.u r22, r4, r22
001598  92101802  vadd.f.mz.rn vr1{mr1}, r16, vr1
00159c  0a100702  vmul.f.mz.rn vr0{mr1}, r14, vr0
0015a0  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
0015a4  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
0015a8  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
0015ac  46904302  vstore_mask16.mz vr4{mr1}, 0(r7)
0015b0  46905a02  vstore_mask16.mz vr5{mr1}, 0(r21)
0015b4  bb110b00  bneq r22, zero, 100
0015b8  1f8b0001  addli r22, r1, 128
0015bc  9f8a0301  addli r21, r7, 128
0015c0  9f838301  addli r7, r7, 192
0015c4  9f808001  addli r1, r1, 192
0015c8  9f898900  addli r19, r19, 64
0015cc  9f820202  addli r5, r5, 256
0015d0  4a110b02  vloads_mask16.mz vr2{mr1}, 0(r22)
0015d4  1f8b0d01  addli r22, r27, 128
0015d8  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
0015dc  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
0015e0  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
0015e4  93804904  setlt.u r1, r19, r4
0015e8  ca110b02  vloads_mask16.mz vr3{mr1}, 0(r22)
0015ec  1f8b8d01  addli r22, r27, 192
0015f0  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
0015f4  12100802  vadd.f.mz.rn vr0{mr1}, r16, vr0
0015f8  92101802  vadd.f.mz.rn vr1{mr1}, r16, vr1
0015fc  0a100702  vmul.f.mz.rn vr0{mr1}, r14, vr0
001600  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
001604  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
001608  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
00160c  46903a02  vstore_mask16.mz vr3{mr1}, 0(r21)
001610  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
001614  3bad00fe  bneq r1, zero, -184
001618  9f008fd7  addli r1, r30, -5184
00161c  9f028fd7  addli r5, r30, -5184
001620  9f030000  addli r7, zero, 0
001624  00a00000  mfence { lm }
001628  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
00162c  1f878200  addli r14, r5, 64
001630  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
001634  9f834300  addli r7, r7, 32
001638  9f820201  addli r5, r5, 128
00163c  c2100702  vload_mask16.mz vr1{mr1}, 0(r14)
001640  13874304  setlt.u r14, r7, r4
001644  06110000  vfloat2fp16_l.rn vr2, vr0
001648  06d10000  vfloat2fp16_h.rn vr2, vr1
00164c  46802002  vstore.mz vr2{mr1}, 0(r1)
001650  9f808000  addli r1, r1, 64
001654  3b5f07fe  bneq r14, zero, -44
001658  eb5a0f00  load.d r[22:23], 0(r30)
00165c  ab0000f0  lui r1, 983040
001660  00a00000  mfence { lm }
001664  97101500  or r1, r10, r1
001668  0ba12a10  add.ul r[3:4], r[22:23], r[3:4]
00166c  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
001670  00a00200  mfence { lm, gm }
001674  db20ffff  j -1788
001678  e3403f00  loadli.w r1,  28(r30)
00167c  b7c60014  beq r1, zero, 10672
001680  80390002  core_id r19
001684  63012f00  loadli.w r2,  16(r30)
001688  005a0102  load_param_i r20, 2
00168c  9bb05900  slli r1, r19, 5
001690  4b431100  ble.s r2, r1, 208
001694  2b960000  lui r12, 9
001698  9f110000  addli r3, zero, 1
00169c  1f058fd7  addli r10, r30, -5184
0016a0  9f058000  addli r11, zero, 64
0016a4  1b315a00  slli r2, r20, 5
0016a8  9f860000  addli r13, r1, 0
0016ac  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0016b0  1f0606f0  addli r12, r12, -2048
0016b4  33880628  zext_int2long r[17:18], r13
0016b8  2b0900f0  lui r18, 983040
0016bc  17383802  sll.d r[17:18], r[17:18], r3
0016c0  17992501  or r18, r11, r18
0016c4  0b280211  add.ul r[17:18], r[5:6], r[17:18]
0016c8  7f29a800  l_gm2lm r18, r10, 0(r[17:18])
0016cc  1bb82600  slli r16, r13, 2
0016d0  8b16d110  add.s r13, r2, r13
0016d4  00a00200  mfence { lm, gm }
0016d8  c2000502  vload.mz vr1{mr1}, 0(r10)
0016dc  0b18c810  add.s r16, r16, r12
0016e0  9f088800  addli r17, r16, 64
0016e4  66411080  vmerge_l.hf vr2, vr0, vr1
0016e8  e64010a0  vmerge_h.hf vr1, vr0, vr1
0016ec  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
0016f0  4e901802  vstores_mask16.mz vr1{mr1}, 0(r17)
0016f4  3f8ff6fe  blt.s r13, r15, -64
0016f8  2ba20000  lui r4, 10
0016fc  9bb17900  slli r3, r19, 7
001700  9f120000  addli r5, zero, 1
001704  1f058fd7  addli r10, r30, -5184
001708  9f058000  addli r11, zero, 64
00170c  1f860000  addli r12, r1, 0
001710  00a00000  mfence { lm }
001714  1f0202f0  addli r4, r4, -2048
001718  8b914110  add.s r3, r3, r4
00171c  1b327a00  slli r4, r20, 7
001720  33080628  zext_int2long r[17:18], r12
001724  ab0600f0  lui r13, 983040
001728  0b162610  add.s r12, r12, r2
00172c  17385802  sll.d r[17:18], r[17:18], r5
001730  9796d500  or r13, r11, r13
001734  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001738  ff26a800  l_gm2lm r13, r10, 0(r[17:18])
00173c  9f868100  addli r13, r3, 64
001740  00a00200  mfence { lm, gm }
001744  c2000502  vload.mz vr1{mr1}, 0(r10)
001748  66411080  vmerge_l.hf vr2, vr0, vr1
00174c  e64010a0  vmerge_h.hf vr1, vr0, vr1
001750  4e902102  vstores_mask16.mz vr2{mr1}, 0(r3)
001754  8b914110  add.s r3, r3, r4
001758  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
00175c  3f1ff6fe  blt.s r12, r15, -60
001760  63012f00  loadli.w r2,  16(r30)
001764  cb211100  ble.s r2, r1, 104
001768  2bb30000  lui r6, 11
00176c  1f110000  addli r2, zero, 1
001770  9f018fd7  addli r3, r30, -5184
001774  1f028000  addli r4, zero, 64
001778  9b325a00  slli r5, r20, 5
00177c  00a00000  mfence { lm }
001780  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001784  1f0303f0  addli r6, r6, -2048
001788  33850028  zext_int2long r[11:12], r1
00178c  ab0300f0  lui r7, 983040
001790  17352502  sll.d r[11:12], r[11:12], r2
001794  97137200  or r7, r4, r7
001798  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
00179c  ff233500  l_gm2lm r7, r3, 0(r[11:12])
0017a0  9bb32000  slli r7, r1, 2
0017a4  8b901210  add.s r1, r5, r1
0017a8  00a00200  mfence { lm, gm }
0017ac  c2800102  vload.mz vr1{mr1}, 0(r3)
0017b0  8b936310  add.s r7, r7, r6
0017b4  1f858300  addli r10, r7, 64
0017b8  66411080  vmerge_l.hf vr2, vr0, vr1
0017bc  e64010a0  vmerge_h.hf vr1, vr0, vr1
0017c0  4e902302  vstores_mask16.mz vr2{mr1}, 0(r7)
0017c4  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
0017c8  3f8ff0fe  blt.s r1, r15, -64
0017cc  abf00000  lui r1, 15
0017d0  63411f00  loadli.w r2,  12(r30)
0017d4  00a00300  mfence { lm, sm, gm }
0017d8  9b90f0ff  ori r1, r1, 4095
0017dc  80a10004  csr_set csr3, r1
0017e0  00d00100  sync_group
0017e4  cb3f3127  ble.s r2, r19, 20460
0017e8  e3002f00  loadli.w r1,  16(r30)
0017ec  63412f00  loadli.w r2,  20(r30)
0017f0  1f058fd7  addli r10, r30, -5184
0017f4  9f150000  addli r11, zero, 1
0017f8  1f064000  addli r12, zero, 32
0017fc  1f787000  addli r16, zero, 63
001800  9f080002  addli r17, zero, 256
001804  ab0a803f  lui r21, 260096
001808  ab0cffff  lui r25, 1048560
00180c  2b0d807f  lui r26, 522240
001810  ab0dc07f  lui r27, 523264
001814  abe37f00  lui r7, 2046
001818  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00181c  33820008  fix2float.rn r4, r1
001820  8b912010  add.s r3, r1, r2
001824  1bb31000  slli r6, r1, 1
001828  e7034fd4  storeli.w r4, -5576(r30)
00182c  1bb22000  slli r4, r1, 2
001830  9f804000  addli r1, r1, 32
001834  9ff1f1ff  addli r3, r3, -1
001838  67431fd4  storeli.w r1, -5580(r30)
00183c  8b10a210  add.s r1, r4, r10
001840  8b922130  div.s r5, r3, r2
001844  8b11a310  add.s r3, r6, r10
001848  2be20700  lui r4, 126
00184c  9f8080ff  addli r1, r1, -64
001850  67031fd4  storeli.w r1, -5584(r30)
001854  9f8081ff  addli r1, r3, -64
001858  e7421fd4  storeli.w r1, -5588(r30)
00185c  9b302100  slli r1, r2, 2
001860  2bf100fc  lui r2, 1032207
001864  67041fd6  storeli.w r1, -5312(r30)
001868  abf0ffff  lui r1, 1048575
00186c  1b1101c0  ori r2, r2, 3072
001870  00a00000  mfence { lm }
001874  67044fd5  storeli.w r20, -5568(r30)
001878  e7436fd4  storeli.w r6, -5572(r30)
00187c  9b90f0ff  ori r1, r1, 4095
001880  670c1fd4  storeli.w r1, -5440(r30)
001884  ab700000  lui r1, 7
001888  1b9cf0ff  ori r24, r1, 4095
00188c  ab00ff03  lui r1, 16368
001890  9b94f03f  ori r9, r1, 1023
001894  9f000fd7  addli r1, r30, -5248
001898  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00189c  db080000  j 68
0018a0  9f016fd5  addli r3, r30, -5456
0018a4  6b590f00  load.d r[19:20], 0(r30)
0018a8  63437fd4  loadli.w r6,  -5572(r30)
0018ac  ab0000f0  lui r1, 983040
0018b0  1f787000  addli r16, zero, 63
0018b4  6bdb0100  load.d r[23:24], 0(r3)
0018b8  00a00000  mfence { lm }
0018bc  97101300  or r1, r6, r1
0018c0  0b2b6911  add.ul r[23:24], r[19:20], r[23:24]
0018c4  e3097fd5  loadli.w r19,  -5448(r30)
0018c8  ff30ab00  s_lm2gm r1, r10, 0(r[23:24])
0018cc  00a00200  mfence { lm, gm }
0018d0  e3401f00  loadli.w r1,  12(r30)
0018d4  8b193a11  add.s r19, r20, r19
0018d8  3fa01900  blt.s r19, r1, 8
0018dc  dbde0900  j 20212
0018e0  e3001f00  loadli.w r1,  8(r30)
0018e4  9f017fd6  addli r3, r30, -5320
0018e8  e70b3fd5  storeli.w r19, -5448(r30)
0018ec  8b901910  add.s r1, r19, r1
0018f0  6bd90100  load.d r[19:20], 0(r3)
0018f4  9f016fd5  addli r3, r30, -5456
0018f8  8b90f020  mul.s r1, r1, r15
0018fc  339b0028  sext_int2long r[23:24], r1
001900  ab0000f0  lui r1, 983040
001904  173bbb02  sll.d r[23:24], r[23:24], r11
001908  97101300  or r1, r6, r1
00190c  73b06101  store.d r[23:24], 0(r3)
001910  0b2b6911  add.ul r[23:24], r[19:20], r[23:24]
001914  ff20ab00  l_gm2lm r1, r10, 0(r[23:24])
001918  00a00200  mfence { lm, gm }
00191c  bff0c700  blt.s r15, r12, 60
001920  e3405fd4  loadli.w r1,  -5588(r30)
001924  e3016fd4  loadli.w r3,  -5584(r30)
001928  63436fd4  loadli.w r6,  -5580(r30)
00192c  c2800002  vload.mz vr1{mr1}, 0(r1)
001930  1f03c3ff  addli r6, r6, -32
001934  9f8681ff  addli r13, r3, -64
001938  9f8080ff  addli r1, r1, -64
00193c  13046804  setlt.u r8, r16, r6
001940  664110a0  vmerge_h.hf vr2, vr0, vr1
001944  e6401080  vmerge_l.hf vr1, vr0, vr1
001948  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
00194c  9f8101ff  addli r3, r3, -128
001950  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
001954  3b6f04fe  bneq r8, zero, -40
001958  00a00000  mfence { lm }
00195c  3f88b200  blt.s r5, r11, 512
001960  1f090000  addli r18, zero, 0
001964  9f000000  addli r1, zero, 0
001968  9f060000  addli r13, zero, 0
00196c  db0e0000  j 116
001970  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001974  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001978  9f010001  addli r3, zero, 128
00197c  9f960600  addli r13, r13, 1
001980  6af108c0  vsrl.p vr2, r17, vr0
001984  eaf118c0  vsrl.p vr3, r17, vr1
001988  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00198c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001990  6af101c0  vsrl.p vr2, r3, vr0
001994  eaf111c0  vsrl.p vr3, r3, vr1
001998  9f018000  addli r3, zero, 64
00199c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0019a0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0019a4  6af101c0  vsrl.p vr2, r3, vr0
0019a8  eaf111c0  vsrl.p vr3, r3, vr1
0019ac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0019b0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0019b4  6a7106c0  vsrl.p vr2, r12, vr0
0019b8  ea7116c0  vsrl.p vr3, r12, vr1
0019bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0019c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0019c4  fa110040  vextracti.f r3, 0(vr0)
0019c8  7a930040  vextracti.f r6, 0(vr1)
0019cc  0b693910  add.f.rn r18, r18, r3
0019d0  9f010fd7  addli r3, r30, -5248
0019d4  8be06010  add.f.rn r1, r1, r6
0019d8  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0019dc  37a65600  beq r13, r5, 392
0019e0  9f810600  addli r3, r13, 0
0019e4  37401701  beq r14, r17, 16
0019e8  e3018fd5  loadli.w r3,  -5440(r30)
0019ec  97a13600  xor r3, r13, r3
0019f0  8b913210  add.s r3, r5, r3
0019f4  0b93e120  mul.s r6, r3, r14
0019f8  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0019fc  92310002  vadd.s.mz vr3{mr1}, zero, vr0
001a00  12310002  vadd.s.mz vr2{mr1}, zero, vr0
001a04  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001a08  0b936718  sub.s r6, r15, r6
001a0c  0b18e340  min.s r16, r6, r14
001a10  bf0db8fe  blt.s r16, r11, -160
001a14  63038fd6  loadli.w r6,  -5312(r30)
001a18  2b940000  lui r8, 9
001a1c  1f0b0000  addli r22, zero, 0
001a20  1f0e8fd7  addli r28, r30, -5184
001a24  1f0404f0  addli r8, r8, -2048
001a28  8b1b3320  mul.s r23, r6, r3
001a2c  9f010fd7  addli r3, r30, -5248
001a30  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
001a34  92304002  vadd.s.mz vr1{mr1}, zero, vr4
001a38  12314002  vadd.s.mz vr2{mr1}, zero, vr4
001a3c  92314002  vadd.s.mz vr3{mr1}, zero, vr4
001a40  0b137411  add.s r6, r8, r23
001a44  8b117e11  add.s r3, r28, r23
001a48  1f058300  addli r10, r6, 64
001a4c  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
001a50  9f098301  addli r19, r6, 192
001a54  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
001a58  1f8a8101  addli r20, r3, 192
001a5c  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
001a60  1f050301  addli r10, r6, 128
001a64  4a940902  vloads_mask16.mz vr8{mr1}, 0(r19)
001a68  9f890101  addli r19, r3, 128
001a6c  42100a02  vload_mask16.mz vr0{mr1}, 0(r20)
001a70  ca130502  vloads_mask16.mz vr7{mr1}, 0(r10)
001a74  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
001a78  1f858100  addli r10, r3, 64
001a7c  42150502  vload_mask16.mz vr10{mr1}, 0(r10)
001a80  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001a84  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001a88  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001a8c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001a90  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001a94  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001a98  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
001a9c  46106502  vstore_mask16.mz vr6{mr1}, 0(r10)
001aa0  1f058b00  addli r10, r22, 64
001aa4  46100a02  vstore_mask16.mz vr0{mr1}, 0(r20)
001aa8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001aac  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001ab0  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001ab4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001ab8  46907902  vstore_mask16.mz vr7{mr1}, 0(r19)
001abc  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001ac0  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001ac4  cb3aa8fe  ble.s r16, r10, -340
001ac8  9f090302  addli r19, r6, 256
001acc  1f0a8302  addli r20, r6, 320
001ad0  1f850102  addli r10, r3, 256
001ad4  1f0b0b01  addli r22, r22, 128
001ad8  1f040404  addli r8, r8, 512
001adc  1f0e0e04  addli r28, r28, 512
001ae0  4a900902  vloads_mask16.mz vr0{mr1}, 0(r19)
001ae4  9f090303  addli r19, r6, 384
001ae8  1f038303  addli r6, r6, 448
001aec  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
001af0  42130502  vload_mask16.mz vr6{mr1}, 0(r10)
001af4  ca930902  vloads_mask16.mz vr7{mr1}, 0(r19)
001af8  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
001afc  1f830103  addli r6, r3, 384
001b00  9f898102  addli r19, r3, 320
001b04  9f818103  addli r3, r3, 448
001b08  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
001b0c  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
001b10  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
001b14  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
001b18  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001b1c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001b20  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001b24  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001b28  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
001b2c  46905902  vstore_mask16.mz vr5{mr1}, 0(r19)
001b30  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
001b34  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001b38  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001b3c  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
001b40  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001b44  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001b48  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001b4c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001b50  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001b54  bf3b0bff  blt.s r22, r16, -276
001b58  5bc3ffff  j -488
001b5c  9f000000  addli r1, zero, 0
001b60  1f090000  addli r18, zero, 0
001b64  aba90000  lui r19, 10
001b68  2bba0000  lui r20, 11
001b6c  1f058fd7  addli r10, r30, -5184
001b70  00a00000  mfence { lm }
001b74  9f8909f0  addli r19, r19, -2048
001b78  1f0a0af0  addli r20, r20, -2048
001b7c  bfc3b700  blt.s r15, r11, 240
001b80  63037fd4  loadli.w r6,  -5576(r30)
001b84  1f040000  addli r8, zero, 0
001b88  1f080000  addli r16, zero, 0
001b8c  8f016918  div.f.rn r3, r18, r6
001b90  8f806018  div.f.rn r1, r1, r6
001b94  0be33120  mul.f.rn r6, r3, r3
001b98  8be60158  neg.f r13, r3
001b9c  8be06018  sub.f.rn r1, r1, r6
001ba0  63033f00  loadli.w r6,  24(r30)
001ba4  8be06010  add.f.rn r1, r1, r6
001ba8  8f800008  sqrt.f.rn r1, r1
001bac  8f801a18  div.f.rn r1, r21, r1
001bb0  0b133411  add.s r6, r8, r19
001bb4  8b118510  add.s r3, r10, r8
001bb8  1f098300  addli r18, r6, 64
001bbc  4a110302  vloads_mask16.mz vr2{mr1}, 0(r6)
001bc0  0b134411  add.s r6, r8, r20
001bc4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001bc8  ca110902  vloads_mask16.mz vr3{mr1}, 0(r18)
001bcc  1f898100  addli r18, r3, 64
001bd0  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
001bd4  1f038300  addli r6, r6, 64
001bd8  c2120902  vload_mask16.mz vr5{mr1}, 0(r18)
001bdc  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
001be0  1f034800  addli r6, r16, 32
001be4  92901602  vadd.f.mz.rn vr1{mr1}, r13, vr1
001be8  92925602  vadd.f.mz.rn vr5{mr1}, r13, vr5
001bec  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
001bf0  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
001bf4  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
001bf8  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
001bfc  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
001c00  46106902  vstore_mask16.mz vr6{mr1}, 0(r18)
001c04  cba16700  ble.s r15, r6, 104
001c08  0b938910  add.s r6, r19, r8
001c0c  0b198a10  add.s r18, r20, r8
001c10  1f088800  addli r16, r16, 64
001c14  1f040402  addli r8, r8, 256
001c18  1f0b0301  addli r22, r6, 128
001c1c  9f0b0901  addli r23, r18, 128
001c20  1f038301  addli r6, r6, 192
001c24  1f098901  addli r18, r18, 192
001c28  ca100b02  vloads_mask16.mz vr1{mr1}, 0(r22)
001c2c  1f8b0101  addli r22, r3, 128
001c30  9f818101  addli r3, r3, 192
001c34  4a910b02  vloads_mask16.mz vr2{mr1}, 0(r23)
001c38  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
001c3c  4a130902  vloads_mask16.mz vr6{mr1}, 0(r18)
001c40  c2110b02  vload_mask16.mz vr3{mr1}, 0(r22)
001c44  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
001c48  92913602  vadd.f.mz.rn vr3{mr1}, r13, vr3
001c4c  12924602  vadd.f.mz.rn vr4{mr1}, r13, vr4
001c50  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
001c54  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
001c58  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
001c5c  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
001c60  46102b02  vstore_mask16.mz vr2{mr1}, 0(r22)
001c64  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001c68  3f2df8fe  blt.s r16, r15, -184
001c6c  00a00000  mfence { lm }
001c70  1f032000  addli r6, zero, 16
001c74  1f380000  addli r16, zero, 3
001c78  1f591000  addli r18, zero, 13
001c7c  9f291000  addli r19, zero, 10
001c80  630a8fd4  loadli.w r20,  -5568(r30)
001c84  3ff0b7fe  blt.s r15, r11, -996
001c88  9f008fd7  addli r1, r30, -5184
001c8c  1f048fd7  addli r8, r30, -5184
001c90  9f060000  addli r13, zero, 0
001c94  c2110402  vload_mask16.mz vr3{mr1}, 0(r8)
001c98  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001c9c  9f018400  addli r3, r8, 64
001ca0  9f864600  addli r13, r13, 32
001ca4  1f040401  addli r8, r8, 128
001ca8  6a221322  vor.u.mz vr4{mr1}, r6, vr1
001cac  6a231922  vor.u.mz vr6{mr1}, r18, vr1
001cb0  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
001cb4  ee3232c2  vsrl.s.mz vr5{mr1}, vr4, vr3
001cb8  6e3222c2  vsrl.s.mz vr4{mr1}, vr4, vr2
001cbc  eab25502  vand.s.mz vr5{mr1}, r11, vr5
001cc0  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
001cc4  96b25102  vadd.s.mz vr5{mr1}, vr3, vr5
001cc8  e69101c0  vabs.f vr3, vr3
001ccc  16324102  vadd.s.mz vr4{mr1}, vr2, vr4
001cd0  661101c0  vabs.f vr2, vr2
001cd4  92325c02  vadd.s.mz vr5{mr1}, r24, vr5
001cd8  72213d42  vlt.u.mz mr2{mr1}, r26, vr3
001cdc  12324c02  vadd.s.mz vr4{mr1}, r24, vr4
001ce0  eab25c02  vand.s.mz vr5{mr1}, r25, vr5
001ce4  6ab24c02  vand.s.mz vr4{mr1}, r25, vr4
001ce8  eaa21d34  vor.u.mh vr5{mr2}, r27, vr1
001cec  72212d42  vlt.u.mz mr2{mr1}, r26, vr2
001cf0  6a211822  vor.u.mz vr2{mr1}, r16, vr1
001cf4  6aa21d34  vor.u.mh vr4{mr2}, r27, vr1
001cf8  eaa01922  vor.u.mz vr1{mr1}, r19, vr1
001cfc  ee3153c2  vsrl.s.mz vr3{mr1}, vr6, vr5
001d00  ee3251c2  vsrl.s.mz vr5{mr1}, vr2, vr5
001d04  6e3141c2  vsrl.s.mz vr2{mr1}, vr2, vr4
001d08  6e3343c2  vsrl.s.mz vr6{mr1}, vr6, vr4
001d0c  ea313202  vand.s.mz vr3{mr1}, r4, vr3
001d10  eab25302  vand.s.mz vr5{mr1}, r7, vr5
001d14  6a326202  vand.s.mz vr4{mr1}, r4, vr6
001d18  6ab12302  vand.s.mz vr2{mr1}, r7, vr2
001d1c  eab13a22  vor.s.mz vr3{mr1}, r21, vr3
001d20  eab25a22  vor.s.mz vr5{mr1}, r21, vr5
001d24  6ab12a22  vor.s.mz vr2{mr1}, r21, vr2
001d28  6ab24a22  vor.s.mz vr4{mr1}, r21, vr4
001d2c  86910120  vfloat2fp16_l.rz vr3, vr3
001d30  06510120  vfloat2fp16_h.rz vr2, vr2
001d34  86510220  vfloat2fp16_h.rz vr3, vr4
001d38  06910220  vfloat2fp16_l.rz vr2, vr5
001d3c  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
001d40  6ab12402  vand.s.mz vr2{mr1}, r9, vr2
001d44  ea301102  vand.s.mz vr1{mr1}, r2, vr1
001d48  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
001d4c  46801002  vstore.mz vr1{mr1}, 0(r1)
001d50  9f808000  addli r1, r1, 64
001d54  3f8df6fe  blt.s r13, r15, -192
001d58  5b69ffff  j -1208
001d5c  e3403f00  loadli.w r1,  28(r30)
001d60  b7f00018  beq r1, zero, 12348
001d64  80300002  core_id r1
001d68  e3012f00  loadli.w r3,  16(r30)
001d6c  1bb15000  slli r2, r1, 5
001d70  4bc32100  ble.s r3, r2, 208
001d74  2b580100  lui r16, 21
001d78  00550102  load_param_i r10, 2
001d7c  9f150000  addli r11, zero, 1
001d80  1f068fd7  addli r12, r30, -5184
001d84  9f068000  addli r13, zero, 64
001d88  9f080100  addli r17, r2, 0
001d8c  9b315500  slli r3, r10, 5
001d90  1f080800  addli r16, r16, 0
001d94  33890828  zext_int2long r[19:20], r17
001d98  2b0a00f0  lui r20, 983040
001d9c  1739b902  sll.d r[19:20], r[19:20], r11
001da0  179a4601  or r20, r13, r20
001da4  0b292211  add.ul r[19:20], r[5:6], r[19:20]
001da8  7f2ac900  l_gm2lm r20, r12, 0(r[19:20])
001dac  1bb92800  slli r18, r17, 2
001db0  8b981111  add.s r17, r3, r17
001db4  00a00200  mfence { lm, gm }
001db8  42000602  vload.mz vr0{mr1}, 0(r12)
001dbc  0b190911  add.s r18, r18, r16
001dc0  9f098900  addli r19, r18, 64
001dc4  86300000  vfp162float_l.rn vr1, vr0
001dc8  06700000  vfp162float_h.rn vr0, vr0
001dcc  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
001dd0  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
001dd4  3f8ff8fe  blt.s r17, r15, -64
001dd8  ab620100  lui r5, 22
001ddc  1bb27000  slli r4, r1, 7
001de0  9f058fd7  addli r11, r30, -5184
001de4  1f068000  addli r12, zero, 64
001de8  9f060100  addli r13, r2, 0
001dec  00a00000  mfence { lm }
001df0  9f820200  addli r5, r5, 0
001df4  0b125210  add.s r4, r4, r5
001df8  9b327500  slli r5, r10, 7
001dfc  1f150000  addli r10, zero, 1
001e00  33880628  zext_int2long r[17:18], r13
001e04  2b0900f0  lui r18, 983040
001e08  8b963610  add.s r13, r13, r3
001e0c  1738a802  sll.d r[17:18], r[17:18], r10
001e10  17192601  or r18, r12, r18
001e14  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001e18  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
001e1c  1f088200  addli r16, r4, 64
001e20  00a00200  mfence { lm, gm }
001e24  42800502  vload.mz vr0{mr1}, 0(r11)
001e28  86300000  vfp162float_l.rn vr1, vr0
001e2c  06700000  vfp162float_h.rn vr0, vr0
001e30  4e101202  vstores_mask16.mz vr1{mr1}, 0(r4)
001e34  0b125210  add.s r4, r4, r5
001e38  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
001e3c  3f9ff6fe  blt.s r13, r15, -60
001e40  e3012f00  loadli.w r3,  16(r30)
001e44  cba12100  ble.s r3, r2, 104
001e48  00530102  load_param_i r6, 2
001e4c  ab730100  lui r7, 23
001e50  9f110000  addli r3, zero, 1
001e54  1f028fd7  addli r4, r30, -5184
001e58  9f028000  addli r5, zero, 64
001e5c  00a00000  mfence { lm }
001e60  1b335300  slli r6, r6, 5
001e64  9f830300  addli r7, r7, 0
001e68  33050128  zext_int2long r[11:12], r2
001e6c  2b0600f0  lui r12, 983040
001e70  17353502  sll.d r[11:12], r[11:12], r3
001e74  1796c200  or r12, r5, r12
001e78  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001e7c  7f264500  l_gm2lm r12, r4, 0(r[11:12])
001e80  1b352100  slli r10, r2, 2
001e84  0b112310  add.s r2, r6, r2
001e88  00a00200  mfence { lm, gm }
001e8c  42000202  vload.mz vr0{mr1}, 0(r4)
001e90  0b157510  add.s r10, r10, r7
001e94  9f058500  addli r11, r10, 64
001e98  86300000  vfp162float_l.rn vr1, vr0
001e9c  06700000  vfp162float_h.rn vr0, vr0
001ea0  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001ea4  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
001ea8  3f0ff1fe  blt.s r2, r15, -64
001eac  2bf10000  lui r2, 15
001eb0  e3411f00  loadli.w r3,  12(r30)
001eb4  00a00300  mfence { lm, sm, gm }
001eb8  1b11f1ff  ori r2, r2, 4095
001ebc  80210104  csr_set csr3, r2
001ec0  00d00100  sync_group
001ec4  4bb41124  ble.s r3, r1, 18700
001ec8  63012f00  loadli.w r2,  16(r30)
001ecc  e3412f00  loadli.w r3,  20(r30)
001ed0  9f0b8fd7  addli r23, r30, -5184
001ed4  2b540100  lui r8, 21
001ed8  ab6a0100  lui r21, 22
001edc  2b7b0100  lui r22, 23
001ee0  1f150000  addli r10, zero, 1
001ee4  9f054000  addli r11, zero, 32
001ee8  1f767000  addli r12, zero, 63
001eec  1f080002  addli r16, zero, 256
001ef0  1f090001  addli r18, zero, 128
001ef4  9f098000  addli r19, zero, 64
001ef8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001efc  1f040400  addli r8, r8, 0
001f00  9f8a0a00  addli r21, r21, 0
001f04  1f0b0b00  addli r22, r22, 0
001f08  0b123110  add.s r4, r2, r3
001f0c  b3020108  fix2float.rn r5, r2
001f10  9b381100  slli r17, r2, 1
001f14  1b332100  slli r6, r2, 2
001f18  1f014100  addli r2, r2, 32
001f1c  9bb42100  slli r9, r3, 2
001f20  670b2fd4  storeli.w r2, -5456(r30)
001f24  0b117311  add.s r2, r6, r23
001f28  1f72f2ff  addli r4, r4, -1
001f2c  0b937811  add.s r6, r17, r23
001f30  e70b5fd4  storeli.w r5, -5448(r30)
001f34  1f0181ff  addli r2, r2, -64
001f38  0b123230  div.s r4, r4, r3
001f3c  67042fd4  storeli.w r2, -5568(r30)
001f40  1f0183ff  addli r2, r6, -64
001f44  e7432fd4  storeli.w r2, -5572(r30)
001f48  2bf1ffff  lui r2, 1048575
001f4c  00a00000  mfence { lm }
001f50  670c1fd5  storeli.w r17, -5440(r30)
001f54  9b16f1ff  ori r13, r2, 4095
001f58  1f010fd7  addli r2, r30, -5248
001f5c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001f60  5b080000  j 64
001f64  9f038fd6  addli r7, r30, -5312
001f68  6b510f00  load.d r[3:4], 0(r30)
001f6c  ebd20300  load.d r[6:7], 0(r7)
001f70  00a00000  mfence { lm }
001f74  80530102  load_param_i r7, 2
001f78  e3088fd5  loadli.w r17,  -5440(r30)
001f7c  8b901310  add.s r1, r7, r1
001f80  0b215110  add.ul r[3:4], r[3:4], r[6:7]
001f84  2b0300f0  lui r6, 983040
001f88  17936800  or r6, r17, r6
001f8c  7f337101  s_lm2gm r6, r23, 0(r[3:4])
001f90  00a00200  mfence { lm, gm }
001f94  63411f00  loadli.w r2,  12(r30)
001f98  3fa02000  blt.s r1, r2, 8
001f9c  db060900  j 18484
001fa0  63011f00  loadli.w r2,  8(r30)
001fa4  0b912010  add.s r2, r1, r2
001fa8  0b11f120  mul.s r2, r2, r15
001fac  33110128  sext_int2long r[3:4], r2
001fb0  173ca102  sll.d r[25:26], r[3:4], r10
001fb4  9f017fd6  addli r3, r30, -5320
001fb8  2b0100f0  lui r2, 983040
001fbc  ebd20100  load.d r[6:7], 0(r3)
001fc0  17912800  or r2, r17, r2
001fc4  9f018fd6  addli r3, r30, -5312
001fc8  73b08101  store.d r[25:26], 0(r3)
001fcc  0ba38211  add.ul r[7:8], r[6:7], r[25:26]
001fd0  7f217301  l_gm2lm r2, r23, 0(r[7:8])
001fd4  00a00200  mfence { lm, gm }
001fd8  bff0b700  blt.s r15, r11, 60
001fdc  63417fd4  loadli.w r2,  -5572(r30)
001fe0  e3018fd4  loadli.w r3,  -5568(r30)
001fe4  63036fd5  loadli.w r6,  -5456(r30)
001fe8  c2000102  vload.mz vr1{mr1}, 0(r2)
001fec  1f03c3ff  addli r6, r6, -32
001ff0  9f8881ff  addli r17, r3, -64
001ff4  1f0181ff  addli r2, r2, -64
001ff8  93036604  setlt.u r7, r12, r6
001ffc  06f10000  vfp162float_h.rn vr2, vr1
002000  86b00000  vfp162float_l.rn vr1, vr1
002004  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
002008  9f8101ff  addli r3, r3, -128
00200c  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
002010  3bef03fe  bneq r7, zero, -40
002014  00a00000  mfence { lm }
002018  bf27a200  blt.s r4, r10, 488
00201c  1f0d0000  addli r26, zero, 0
002020  9f0c0000  addli r25, zero, 0
002024  9f0d0000  addli r27, zero, 0
002028  db0c0000  j 100
00202c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
002030  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002034  9f9d0d00  addli r27, r27, 1
002038  6a7108c0  vsrl.p vr2, r16, vr0
00203c  ea7118c0  vsrl.p vr3, r16, vr1
002040  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002044  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002048  6a7109c0  vsrl.p vr2, r18, vr0
00204c  ea7119c0  vsrl.p vr3, r18, vr1
002050  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002054  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002058  6af109c0  vsrl.p vr2, r19, vr0
00205c  eaf119c0  vsrl.p vr3, r19, vr1
002060  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002064  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002068  6af105c0  vsrl.p vr2, r11, vr0
00206c  eaf115c0  vsrl.p vr3, r11, vr1
002070  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002074  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002078  7a110040  vextracti.f r2, 0(vr0)
00207c  fa910040  vextracti.f r3, 0(vr1)
002080  0b6d2d10  add.f.rn r26, r26, r2
002084  8bec3c10  add.f.rn r25, r25, r3
002088  37864d00  beq r27, r4, 384
00208c  1f810d00  addli r2, r27, 0
002090  37300701  beq r14, r16, 12
002094  17a1dd00  xor r2, r27, r13
002098  0b112210  add.s r2, r4, r2
00209c  8b11e120  mul.s r3, r2, r14
0020a0  8b913718  sub.s r3, r15, r3
0020a4  0b9ee140  min.s r28, r3, r14
0020a8  9f010fd7  addli r3, r30, -5248
0020ac  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0020b0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0020b4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0020b8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0020bc  bf4daefe  blt.s r28, r10, -144
0020c0  0b932420  mul.s r6, r9, r2
0020c4  1f010fd7  addli r2, r30, -5248
0020c8  1f0a0000  addli r20, zero, 0
0020cc  9f038fd7  addli r7, r30, -5184
0020d0  9f080400  addli r17, r8, 0
0020d4  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0020d8  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0020dc  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0020e0  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0020e4  0b916810  add.s r2, r17, r6
0020e8  8b916310  add.s r3, r7, r6
0020ec  9f0b8100  addli r23, r2, 64
0020f0  ca120102  vloads_mask16.mz vr5{mr1}, 0(r2)
0020f4  1f0c8101  addli r24, r2, 192
0020f8  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
0020fc  9f828101  addli r5, r3, 192
002100  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
002104  9f0b0101  addli r23, r2, 128
002108  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
00210c  1f8c0101  addli r24, r3, 128
002110  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
002114  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
002118  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
00211c  9f8b8100  addli r23, r3, 64
002120  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
002124  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
002128  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
00212c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
002130  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
002134  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002138  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00213c  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
002140  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
002144  9f0b8a00  addli r23, r20, 64
002148  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
00214c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
002150  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002154  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002158  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00215c  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
002160  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
002164  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
002168  4b1b7eff  ble.s r28, r23, -316
00216c  9f0b0102  addli r23, r2, 256
002170  1f0c8102  addli r24, r2, 320
002174  9f820102  addli r5, r3, 256
002178  1f0a0a01  addli r20, r20, 128
00217c  9f880804  addli r17, r17, 512
002180  9f830304  addli r7, r7, 512
002184  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
002188  9f0b0103  addli r23, r2, 384
00218c  1f018103  addli r2, r2, 448
002190  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
002194  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
002198  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
00219c  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
0021a0  1f810103  addli r2, r3, 384
0021a4  9f8b8102  addli r23, r3, 320
0021a8  9f818103  addli r3, r3, 448
0021ac  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
0021b0  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
0021b4  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0021b8  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
0021bc  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0021c0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0021c4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0021c8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0021cc  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
0021d0  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
0021d4  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0021d8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0021dc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0021e0  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
0021e4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0021e8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0021ec  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0021f0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0021f4  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
0021f8  bf3bcaff  blt.s r20, r28, -276
0021fc  5bc6ffff  j -464
002200  9f0c0000  addli r25, zero, 0
002204  1f0d0000  addli r26, zero, 0
002208  9f0b8fd7  addli r23, r30, -5184
00220c  00a00000  mfence { lm }
002210  bfd3a700  blt.s r15, r10, 244
002214  e3017fd5  loadli.w r3,  -5448(r30)
002218  e3023f00  loadli.w r5,  24(r30)
00221c  1f030000  addli r6, zero, 0
002220  1f0a0000  addli r20, zero, 0
002224  0f013d18  div.f.rn r2, r26, r3
002228  8f813c18  div.f.rn r3, r25, r3
00222c  8b632120  mul.f.rn r7, r2, r2
002230  8b680158  neg.f r17, r2
002234  8be17118  sub.f.rn r3, r3, r7
002238  8be15110  add.f.rn r3, r3, r5
00223c  ab02803f  lui r5, 260096
002240  8f810108  sqrt.f.rn r3, r3
002244  8f833218  div.f.rn r7, r5, r3
002248  8b115311  add.s r3, r6, r21
00224c  0b916b10  add.s r2, r23, r6
002250  9f8c8100  addli r25, r3, 64
002254  4a910102  vloads_mask16.mz vr2{mr1}, 0(r3)
002258  8b116311  add.s r3, r6, r22
00225c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
002260  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
002264  9f0c8100  addli r25, r2, 64
002268  4a920102  vloads_mask16.mz vr4{mr1}, 0(r3)
00226c  9f818100  addli r3, r3, 64
002270  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
002274  4a930102  vloads_mask16.mz vr6{mr1}, 0(r3)
002278  9f014a00  addli r3, r20, 32
00227c  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
002280  92925802  vadd.f.mz.rn vr5{mr1}, r17, vr5
002284  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
002288  8a925302  vmul.f.mz.rn vr5{mr1}, r7, vr5
00228c  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
002290  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
002294  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
002298  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
00229c  cba13700  ble.s r15, r3, 104
0022a0  8b916a10  add.s r3, r21, r6
0022a4  8b1c6b10  add.s r25, r22, r6
0022a8  1f0a8a00  addli r20, r20, 64
0022ac  1f030302  addli r6, r6, 256
0022b0  1f8d0101  addli r26, r3, 128
0022b4  9f8d0c01  addli r27, r25, 128
0022b8  9f818101  addli r3, r3, 192
0022bc  9f8c8c01  addli r25, r25, 192
0022c0  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
0022c4  1f0d0101  addli r26, r2, 128
0022c8  1f018101  addli r2, r2, 192
0022cc  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
0022d0  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
0022d4  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
0022d8  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
0022dc  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0022e0  92913802  vadd.f.mz.rn vr3{mr1}, r17, vr3
0022e4  12924802  vadd.f.mz.rn vr4{mr1}, r17, vr4
0022e8  8a913302  vmul.f.mz.rn vr3{mr1}, r7, vr3
0022ec  0a924302  vmul.f.mz.rn vr4{mr1}, r7, vr4
0022f0  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
0022f4  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
0022f8  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
0022fc  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
002300  3f2dfafe  blt.s r20, r15, -184
002304  00a00000  mfence { lm }
002308  3ff1a7fe  blt.s r15, r10, -932
00230c  1f018fd7  addli r2, r30, -5184
002310  9f018fd7  addli r3, r30, -5184
002314  1f030000  addli r6, zero, 0
002318  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00231c  9f838100  addli r7, r3, 64
002320  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
002324  1f034300  addli r6, r6, 32
002328  9f810101  addli r3, r3, 128
00232c  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
002330  86910000  vfloat2fp16_l.rn vr3, vr1
002334  86510100  vfloat2fp16_h.rn vr3, vr2
002338  46003102  vstore.mz vr3{mr1}, 0(r2)
00233c  1f018100  addli r2, r2, 64
002340  3f6ff3fe  blt.s r6, r15, -40
002344  5b84ffff  j -992
002348  e3002f00  loadli.w r1,  16(r30)
00234c  1f010010  addli r2, zero, 2048
002350  bbd02008  bneq r1, r2, 4148
002354  2ba10200  lui r2, 42
002358  803d0002  core_id r27
00235c  1f010108  addli r2, r2, 1024
002360  3bd00d00  bneq r27, zero, 20
002364  9f010040  addli r3, zero, 8192
002368  2b0300f0  lui r6, 983040
00236c  97916100  or r3, r3, r6
002370  ff012200  l_gm2sm r3, r2, 0(r[5:6])
002374  abf10000  lui r3, 15
002378  00200300  mfence { sm, gm }
00237c  1b8e1d00  andi r28, r27, 1
002380  1f030006  addli r6, zero, 768
002384  1b92f1ff  ori r4, r3, 4095
002388  80210204  csr_set csr3, r4
00238c  1f020006  addli r4, zero, 768
002390  00d00100  sync_group
002394  37200e00  beq r28, zero, 8
002398  1f02000a  addli r4, zero, 1280
00239c  e3421f00  loadli.w r5,  12(r30)
0023a0  9f130000  addli r7, zero, 1
0023a4  bfb07222  blt.s r5, r7, 17452
0023a8  80530102  load_param_i r7, 2
0023ac  abf0ffff  lui r1, 1048575
0023b0  abc90200  lui r19, 44
0023b4  2bcc0200  lui r24, 44
0023b8  2bf50000  lui r10, 15
0023bc  8b116e20  mul.s r3, r28, r6
0023c0  9f020000  addli r5, zero, 0
0023c4  1bc41d00  srli r8, r27, 1
0023c8  9b342200  slli r9, r4, 2
0023cc  9f270000  addli r15, zero, 2
0023d0  9f058fd7  addli r11, r30, -5184
0023d4  1f030fd7  addli r6, r30, -5248
0023d8  1f070005  addli r14, zero, 640
0023dc  1f080001  addli r16, zero, 128
0023e0  9f088000  addli r17, zero, 64
0023e4  1f094000  addli r18, zero, 32
0023e8  9f0b0003  addli r23, zero, 384
0023ec  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0023f0  9b9000f8  ori r1, r1, 3968
0023f4  9bc31300  srli r7, r7, 1
0023f8  9f890908  addli r19, r19, 1024
0023fc  1b1af5ff  ori r20, r10, 4095
002400  1f0c0c0c  addli r24, r24, 1536
002404  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
002408  67041fd6  storeli.w r1, -5312(r30)
00240c  db030000  j 28
002410  00a00300  mfence { lm, sm, gm }
002414  80210a04  csr_set csr3, r20
002418  00d00100  sync_group
00241c  8b927210  add.s r5, r5, r7
002420  3fa09201  blt.s r5, r25, 8
002424  db0ffdff  j -6020
002428  0b958210  add.s r10, r5, r8
00242c  cb9facfe  ble.s r25, r10, -28
002430  e3001f00  loadli.w r1,  8(r30)
002434  0b151510  add.s r10, r10, r1
002438  9f007fd6  addli r1, r30, -5320
00243c  1b35b500  slli r10, r10, 11
002440  17153500  or r10, r10, r3
002444  33160528  sext_int2long r[13:14], r10
002448  2b0500f0  lui r10, 983040
00244c  973cf602  sll.d r[26:27], r[13:14], r15
002450  6bd60000  load.d r[13:14], 0(r1)
002454  1795a400  or r10, r9, r10
002458  0b269611  add.ul r[13:14], r[13:14], r[26:27]
00245c  7f25b600  l_gm2lm r10, r11, 0(r[13:14])
002460  00a00200  mfence { lm, gm }
002464  3b260e00  bneq r28, zero, 392
002468  9f000fd7  addli r1, r30, -5248
00246c  630b8fd6  loadli.w r22,  -5312(r30)
002470  1f050000  addli r10, zero, 0
002474  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
002478  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00247c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
002480  12323002  vadd.s.mz vr4{mr1}, zero, vr3
002484  8b162510  add.s r13, r10, r2
002488  0b96a510  add.s r12, r11, r10
00248c  1f0b0b01  addli r22, r22, 128
002490  1f050504  addli r10, r10, 512
002494  9f800601  addli r1, r13, 128
002498  4a900602  vloads_mask16.mz vr0{mr1}, 0(r13)
00249c  1f838600  addli r6, r13, 64
0024a0  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
0024a4  9f0a8601  addli r21, r12, 192
0024a8  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
0024ac  9f808601  addli r1, r13, 192
0024b0  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0024b4  1f038600  addli r6, r12, 64
0024b8  c2950a02  vload_mask16.mz vr11{mr1}, 0(r21)
0024bc  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
0024c0  9f000601  addli r1, r12, 128
0024c4  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0024c8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0024cc  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0024d0  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0024d4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0024d8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0024dc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0024e0  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
0024e4  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0024e8  9f800602  addli r1, r13, 256
0024ec  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0024f0  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0024f4  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0024f8  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
0024fc  1f030603  addli r6, r12, 384
002500  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002504  9f808602  addli r1, r13, 320
002508  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
00250c  9f0a0602  addli r21, r12, 256
002510  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002514  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
002518  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00251c  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002520  9f800603  addli r1, r13, 384
002524  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
002528  9f868603  addli r13, r13, 448
00252c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002530  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
002534  9f008602  addli r1, r12, 320
002538  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
00253c  1f068603  addli r12, r12, 448
002540  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002544  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
002548  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
00254c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002550  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
002554  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002558  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00255c  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
002560  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002564  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
002568  9300eb04  setlt.u r1, r22, r14
00256c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002570  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002574  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002578  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00257c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002580  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
002584  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
002588  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00258c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002590  bbdb00fe  bneq r1, zero, -268
002594  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002598  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00259c  9f000002  addli r1, zero, 256
0025a0  6af100c0  vsrl.p vr2, r1, vr0
0025a4  eaf110c0  vsrl.p vr3, r1, vr1
0025a8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0025ac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0025b0  6a7108c0  vsrl.p vr2, r16, vr0
0025b4  ea7118c0  vsrl.p vr3, r16, vr1
0025b8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0025bc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0025c0  6af108c0  vsrl.p vr2, r17, vr0
0025c4  eaf118c0  vsrl.p vr3, r17, vr1
0025c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0025cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0025d0  6a7109c0  vsrl.p vr2, r18, vr0
0025d4  ea7119c0  vsrl.p vr3, r18, vr1
0025d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0025dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0025e0  7a160040  vextracti.f r12, 0(vr0)
0025e4  7a950040  vextracti.f r10, 0(vr1)
0025e8  5b650000  j 808
0025ec  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0025f0  abf0ffff  lui r1, 1048575
0025f4  9f070e00  addli r15, r28, 0
0025f8  1f050000  addli r10, zero, 0
0025fc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002600  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002604  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002608  9b9d00f8  ori r27, r1, 3968
00260c  0b16a110  add.s r12, r2, r10
002610  0b9ba510  add.s r22, r11, r10
002614  9f8d0d01  addli r27, r27, 128
002618  1f050504  addli r10, r10, 512
00261c  9f000631  addli r1, r12, 6272
002620  9f060630  addli r13, r12, 6144
002624  1f038631  addli r6, r12, 6336
002628  1f0e0b18  addli r28, r22, 3072
00262c  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
002630  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
002634  9f068630  addli r13, r12, 6208
002638  ca140302  vloads_mask16.mz vr9{mr1}, 0(r6)
00263c  1f030b19  addli r6, r22, 3200
002640  9f008b18  addli r1, r22, 3136
002644  42130e02  vload_mask16.mz vr6{mr1}, 0(r28)
002648  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
00264c  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
002650  9f068b19  addli r13, r22, 3264
002654  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
002658  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
00265c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
002660  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
002664  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
002668  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
00266c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002670  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
002674  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
002678  1f030632  addli r6, r12, 6400
00267c  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
002680  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
002684  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002688  46106e02  vstore_mask16.mz vr6{mr1}, 0(r28)
00268c  9f060b1a  addli r13, r22, 3328
002690  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
002694  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
002698  9f000b1b  addli r1, r22, 3456
00269c  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0026a0  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0026a4  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
0026a8  1f038632  addli r6, r12, 6464
0026ac  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0026b0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0026b4  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0026b8  1f030633  addli r6, r12, 6528
0026bc  1f068633  addli r12, r12, 6592
0026c0  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
0026c4  1f038b1a  addli r6, r22, 3392
0026c8  4a150602  vloads_mask16.mz vr10{mr1}, 0(r12)
0026cc  1f068b1b  addli r12, r22, 3520
0026d0  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
0026d4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0026d8  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0026dc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0026e0  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0026e4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0026e8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0026ec  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
0026f0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0026f4  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0026f8  13837d05  setlt.u r6, r27, r23
0026fc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002700  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002704  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002708  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00270c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002710  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
002714  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
002718  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00271c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002720  bb3b03fe  bneq r6, zero, -276
002724  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002728  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00272c  9f000002  addli r1, zero, 256
002730  1f050000  addli r10, zero, 0
002734  eaf110c0  vsrl.p vr3, r1, vr1
002738  6af100c0  vsrl.p vr2, r1, vr0
00273c  abf0ffff  lui r1, 1048575
002740  1b9b00f8  ori r22, r1, 3968
002744  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002748  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00274c  ea7118c0  vsrl.p vr3, r16, vr1
002750  6a7108c0  vsrl.p vr2, r16, vr0
002754  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002758  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00275c  eaf118c0  vsrl.p vr3, r17, vr1
002760  6af108c0  vsrl.p vr2, r17, vr0
002764  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002768  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00276c  ea7119c0  vsrl.p vr3, r18, vr1
002770  6a7109c0  vsrl.p vr2, r18, vr0
002774  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002778  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00277c  7a9e0040  vextracti.f r28, 0(vr1)
002780  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002784  fa1d0040  vextracti.f r27, 0(vr0)
002788  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00278c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002790  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002794  8b16a110  add.s r13, r2, r10
002798  0b96a510  add.s r12, r11, r10
00279c  1f0b0b01  addli r22, r22, 128
0027a0  1f050504  addli r10, r10, 512
0027a4  9f800618  addli r1, r13, 3072
0027a8  1f830619  addli r6, r13, 3200
0027ac  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
0027b0  9f0a8601  addli r21, r12, 192
0027b4  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0027b8  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
0027bc  9f808618  addli r1, r13, 3136
0027c0  1f838619  addli r6, r13, 3264
0027c4  c2950a02  vload_mask16.mz vr11{mr1}, 0(r21)
0027c8  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0027cc  9f000601  addli r1, r12, 128
0027d0  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
0027d4  1f038600  addli r6, r12, 64
0027d8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0027dc  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0027e0  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0027e4  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0027e8  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0027ec  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0027f0  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0027f4  9f80061a  addli r1, r13, 3328
0027f8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0027fc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002800  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002804  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002808  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
00280c  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002810  9f80861a  addli r1, r13, 3392
002814  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
002818  9f0a0602  addli r21, r12, 256
00281c  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
002820  1f030603  addli r6, r12, 384
002824  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
002828  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00282c  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002830  9f80061b  addli r1, r13, 3456
002834  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
002838  9f86861b  addli r13, r13, 3520
00283c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002840  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002844  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
002848  9f008602  addli r1, r12, 320
00284c  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
002850  1f068603  addli r12, r12, 448
002854  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002858  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00285c  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
002860  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002864  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
002868  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00286c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002870  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
002874  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002878  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
00287c  9300eb04  setlt.u r1, r22, r14
002880  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002884  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002888  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00288c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002890  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002894  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
002898  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
00289c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0028a0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0028a4  bbcb00fe  bneq r1, zero, -272
0028a8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0028ac  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0028b0  9f000002  addli r1, zero, 256
0028b4  6af100c0  vsrl.p vr2, r1, vr0
0028b8  eaf110c0  vsrl.p vr3, r1, vr1
0028bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028c4  6a7108c0  vsrl.p vr2, r16, vr0
0028c8  ea7118c0  vsrl.p vr3, r16, vr1
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
0028f4  fa100040  vextracti.f r1, 0(vr0)
0028f8  7a930040  vextracti.f r6, 0(vr1)
0028fc  0be61d10  add.f.rn r12, r27, r1
002900  0b656e10  add.f.rn r10, r28, r6
002904  1f8e0700  addli r28, r15, 0
002908  803d0002  core_id r27
00290c  9f270000  addli r15, zero, 2
002910  8b807230  div.u r1, r5, r7
002914  1f0b0000  addli r22, zero, 0
002918  9bb06000  slli r1, r1, 6
00291c  9b800004  andi r1, r1, 64
002920  9790b001  or r1, r1, r27
002924  1bb32000  slli r6, r1, 2
002928  9b80e007  andi r1, r1, 126
00292c  8b163311  add.s r13, r6, r19
002930  9bb02000  slli r1, r1, 2
002934  73e0c600  stores.w r12, 0(r13)
002938  0b168311  add.s r12, r6, r24
00293c  1b134300  ori r6, r6, 4
002940  9f068fd7  addli r13, r30, -5184
002944  7360a600  stores.w r10, 0(r12)
002948  0b153311  add.s r10, r6, r19
00294c  0b963011  add.s r12, r1, r19
002950  0b138311  add.s r6, r6, r24
002954  8b908011  add.s r1, r1, r24
002958  00a00300  mfence { lm, sm, gm }
00295c  80210a04  csr_set csr3, r20
002960  00d00100  sync_group
002964  6f450500  loads.w r10, 0(r10)
002968  6f460600  loads.w r12, 0(r12)
00296c  6f430300  loads.w r6, 0(r6)
002970  efc00000  loads.w r1, 0(r1)
002974  0b65c510  add.f.rn r10, r10, r12
002978  2b06003a  lui r12, 237568
00297c  8b601310  add.f.rn r1, r6, r1
002980  0b63c520  mul.f.rn r6, r10, r12
002984  8be0c020  mul.f.rn r1, r1, r12
002988  0b656320  mul.f.rn r10, r6, r6
00298c  0b660358  neg.f r12, r6
002990  8be0a018  sub.f.rn r1, r1, r10
002994  63053f00  loadli.w r10,  24(r30)
002998  8be0a010  add.f.rn r1, r1, r10
00299c  2b05803f  lui r10, 260096
0029a0  8f800008  sqrt.f.rn r1, r1
0029a4  0f051518  div.f.rn r10, r10, r1
0029a8  9f808600  addli r1, r13, 64
0029ac  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
0029b0  1f034b00  addli r6, r22, 32
0029b4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0029b8  13036206  setle.u r6, r4, r6
0029bc  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
0029c0  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
0029c4  0a100502  vmul.f.mz.rn vr0{mr1}, r10, vr0
0029c8  8a101502  vmul.f.mz.rn vr1{mr1}, r10, vr1
0029cc  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
0029d0  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0029d4  bb700300  bneq r6, zero, 60
0029d8  9f800601  addli r1, r13, 128
0029dc  1f838601  addli r6, r13, 192
0029e0  1f0b8b00  addli r22, r22, 64
0029e4  9f860602  addli r13, r13, 256
0029e8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0029ec  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
0029f0  930a4b04  setlt.u r21, r22, r4
0029f4  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
0029f8  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
0029fc  0a100502  vmul.f.mz.rn vr0{mr1}, r10, vr0
002a00  8a101502  vmul.f.mz.rn vr1{mr1}, r10, vr1
002a04  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002a08  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
002a0c  3bfe0afe  bneq r21, zero, -100
002a10  6b560f00  load.d r[13:14], 0(r30)
002a14  ab0000f0  lui r1, 983040
002a18  00a00000  mfence { lm }
002a1c  97901400  or r1, r9, r1
002a20  0b269611  add.ul r[13:14], r[13:14], r[26:27]
002a24  ff30b600  s_lm2gm r1, r11, 0(r[13:14])
002a28  00a00200  mfence { lm, gm }
002a2c  e34c1f00  loadli.w r25,  12(r30)
002a30  db3dffff  j -1556
002a34  80300002  core_id r1
002a38  bb800000  bneq r1, zero, 32
002a3c  63012f00  loadli.w r2,  16(r30)
002a40  ab0100f0  lui r3, 983040
002a44  1b311100  slli r2, r2, 1
002a48  17113100  or r2, r2, r3
002a4c  abc10100  lui r3, 28
002a50  9f810100  addli r3, r3, 0
002a54  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002a58  2bf10000  lui r2, 15
002a5c  e3411f00  loadli.w r3,  12(r30)
002a60  00200300  mfence { sm, gm }
002a64  1b11f1ff  ori r2, r2, 4095
002a68  80210104  csr_set csr3, r2
002a6c  00d00100  sync_group
002a70  cb85111e  ble.s r3, r1, 15712
002a74  63012f00  loadli.w r2,  16(r30)
002a78  e3412f00  loadli.w r3,  20(r30)
002a7c  1f052000  addli r10, zero, 16
002a80  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002a84  1f130000  addli r6, zero, 1
002a88  9f040002  addli r9, zero, 256
002a8c  ab05ffff  lui r11, 1048560
002a90  ab06807f  lui r13, 522240
002a94  2b08c07f  lui r16, 523264
002a98  9f080001  addli r17, zero, 128
002a9c  1f098000  addli r18, zero, 64
002aa0  9f094000  addli r19, zero, 32
002aa4  1b3b1100  slli r22, r2, 1
002aa8  0b123110  add.s r4, r2, r3
002aac  33010108  fix2float.rn r2, r2
002ab0  670b2fd4  storeli.w r2, -5456(r30)
002ab4  1f71f2ff  addli r2, r4, -1
002ab8  1bb21100  slli r4, r3, 1
002abc  e70b6fd5  storeli.w r22, -5448(r30)
002ac0  8b123130  div.s r5, r2, r3
002ac4  2bf1ffff  lui r2, 1048575
002ac8  9f018fd7  addli r3, r30, -5184
002acc  1b14f1ff  ori r8, r2, 4095
002ad0  1f010fd7  addli r2, r30, -5248
002ad4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002ad8  6a200522  vor.u.mz vr0{mr1}, r10, vr0
002adc  1f018fd6  addli r2, r30, -5312
002ae0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002ae4  2b710000  lui r2, 7
002ae8  1b16f1ff  ori r12, r2, 4095
002aec  db080000  j 68
002af0  9f018fd5  addli r3, r30, -5440
002af4  00a00000  mfence { lm }
002af8  6b5a0f00  load.d r[21:22], 0(r30)
002afc  2b0100f0  lui r2, 983040
002b00  80530102  load_param_i r7, 2
002b04  6bdb0100  load.d r[23:24], 0(r3)
002b08  9f018fd7  addli r3, r30, -5184
002b0c  8b901310  add.s r1, r7, r1
002b10  0b2a6a11  add.ul r[21:22], r[21:22], r[23:24]
002b14  630b7fd5  loadli.w r22,  -5448(r30)
002b18  17112b00  or r2, r22, r2
002b1c  7f313a00  s_lm2gm r2, r3, 0(r[21:22])
002b20  00a00200  mfence { lm, gm }
002b24  63411f00  loadli.w r2,  12(r30)
002b28  3fa02000  blt.s r1, r2, 8
002b2c  db940700  j 15524
002b30  63011f00  loadli.w r2,  8(r30)
002b34  9f037fd6  addli r7, r30, -5320
002b38  0b912010  add.s r2, r1, r2
002b3c  0b11f120  mul.s r2, r2, r15
002b40  331a0128  sext_int2long r[21:22], r2
002b44  2b0100f0  lui r2, 983040
002b48  973b6a02  sll.d r[24:25], r[21:22], r6
002b4c  6bda0300  load.d r[21:22], 0(r7)
002b50  17112b00  or r2, r22, r2
002b54  9f038fd5  addli r7, r30, -5440
002b58  73b07301  store.d r[24:25], 0(r7)
002b5c  0b2a7a11  add.ul r[21:22], r[21:22], r[24:25]
002b60  7f213a00  l_gm2lm r2, r3, 0(r[21:22])
002b64  00a00200  mfence { lm, gm }
002b68  bfdc6200  blt.s r5, r6, 820
002b6c  9f0c0000  addli r25, zero, 0
002b70  1f0c0000  addli r24, zero, 0
002b74  1f0d0000  addli r26, zero, 0
002b78  db0c0000  j 100
002b7c  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
002b80  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
002b84  1f1d0d00  addli r26, r26, 1
002b88  6af104c0  vsrl.p vr2, r9, vr0
002b8c  eaf114c0  vsrl.p vr3, r9, vr1
002b90  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b94  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002b98  6af108c0  vsrl.p vr2, r17, vr0
002b9c  eaf118c0  vsrl.p vr3, r17, vr1
002ba0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002ba4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002ba8  6a7109c0  vsrl.p vr2, r18, vr0
002bac  ea7119c0  vsrl.p vr3, r18, vr1
002bb0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002bb4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002bb8  6af109c0  vsrl.p vr2, r19, vr0
002bbc  eaf119c0  vsrl.p vr3, r19, vr1
002bc0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002bc4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002bc8  7a110040  vextracti.f r2, 0(vr0)
002bcc  fa910040  vextracti.f r3, 0(vr1)
002bd0  8bec2c10  add.f.rn r25, r25, r2
002bd4  0b6c3c10  add.f.rn r24, r24, r3
002bd8  373b5d00  beq r26, r5, 716
002bdc  1f010d00  addli r2, r26, 0
002be0  37309700  beq r14, r9, 12
002be4  17218d00  xor r2, r26, r8
002be8  0b912210  add.s r2, r5, r2
002bec  9f010fd7  addli r3, r30, -5248
002bf0  8b13e120  mul.s r7, r2, r14
002bf4  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
002bf8  8b937718  sub.s r7, r15, r7
002bfc  8b9de340  min.s r27, r7, r14
002c00  92322002  vadd.s.mz vr5{mr1}, zero, vr2
002c04  12322002  vadd.s.mz vr4{mr1}, zero, vr2
002c08  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002c0c  bfcd6dfe  blt.s r27, r6, -144
002c10  0b1a2220  mul.s r20, r4, r2
002c14  1f010fd7  addli r2, r30, -5248
002c18  abca0100  lui r21, 28
002c1c  1f0e0000  addli r28, zero, 0
002c20  9f038fd7  addli r7, r30, -5184
002c24  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
002c28  9f8a0a00  addli r21, r21, 0
002c2c  12315002  vadd.s.mz vr2{mr1}, zero, vr5
002c30  92315002  vadd.s.mz vr3{mr1}, zero, vr5
002c34  12325002  vadd.s.mz vr4{mr1}, zero, vr5
002c38  0b9b4a11  add.s r22, r21, r20
002c3c  0b914311  add.s r2, r7, r20
002c40  9f018fd6  addli r3, r30, -5312
002c44  4a030b02  vloads.mz vr6{mr1}, 0(r22)
002c48  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002c4c  c2030102  vload.mz vr7{mr1}, 0(r2)
002c50  9f010fd7  addli r3, r30, -5248
002c54  9f0b8b00  addli r23, r22, 64
002c58  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
002c5c  9f018e00  addli r3, r28, 64
002c60  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
002c64  6ab57502  vand.s.mz vr10{mr1}, r11, vr7
002c68  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
002c6c  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002c70  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
002c74  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
002c78  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
002c7c  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
002c80  669503c0  vabs.f vr10, vr7
002c84  6a348302  vand.s.mz vr8{mr1}, r6, vr8
002c88  ea349302  vand.s.mz vr9{mr1}, r6, vr9
002c8c  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
002c90  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
002c94  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
002c98  12348602  vadd.s.mz vr8{mr1}, r12, vr8
002c9c  92349602  vadd.s.mz vr9{mr1}, r12, vr9
002ca0  eab38502  vand.s.mz vr7{mr1}, r11, vr8
002ca4  661403c0  vabs.f vr8, vr6
002ca8  6ab39502  vand.s.mz vr6{mr1}, r11, vr9
002cac  ea230834  vor.u.mh vr7{mr2}, r16, vr0
002cb0  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
002cb4  6a230834  vor.u.mh vr6{mr2}, r16, vr0
002cb8  4a840b02  vloads.mz vr8{mr1}, 0(r23)
002cbc  9f0b8100  addli r23, r2, 64
002cc0  c2840b02  vload.mz vr9{mr1}, 0(r23)
002cc4  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
002cc8  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
002ccc  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002cd0  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
002cd4  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002cd8  46007102  vstore.mz vr7{mr1}, 0(r2)
002cdc  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002ce0  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002ce4  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
002ce8  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
002cec  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002cf0  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002cf4  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002cf8  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
002cfc  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
002d00  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
002d04  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
002d08  ea349302  vand.s.mz vr9{mr1}, r6, vr9
002d0c  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002d10  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
002d14  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
002d18  661505c0  vabs.f vr10, vr10
002d1c  661404c0  vabs.f vr8, vr8
002d20  92349602  vadd.s.mz vr9{mr1}, r12, vr9
002d24  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002d28  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
002d2c  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002d30  6ab5b502  vand.s.mz vr10{mr1}, r11, vr11
002d34  ea240834  vor.u.mh vr9{mr2}, r16, vr0
002d38  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
002d3c  6a250834  vor.u.mh vr10{mr2}, r16, vr0
002d40  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
002d44  eab4a502  vand.s.mz vr9{mr1}, r11, vr10
002d48  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
002d4c  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002d50  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002d54  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
002d58  46808b02  vstore.mz vr8{mr1}, 0(r23)
002d5c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002d60  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002d64  4be83dfe  ble.s r27, r3, -488
002d68  9f010b01  addli r3, r22, 128
002d6c  9f0b0101  addli r23, r2, 128
002d70  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
002d74  1f018101  addli r2, r2, 192
002d78  1f0e0e01  addli r28, r28, 128
002d7c  9f8a0a02  addli r21, r21, 256
002d80  9f830302  addli r7, r7, 256
002d84  6a237522  vor.u.mz vr6{mr1}, r10, vr7
002d88  4a840102  vloads.mz vr8{mr1}, 0(r3)
002d8c  c2840b02  vload.mz vr9{mr1}, 0(r23)
002d90  9f018b01  addli r3, r22, 192
002d94  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
002d98  6ab09502  vand.s.mz vr0{mr1}, r11, vr9
002d9c  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
002da0  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002da4  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
002da8  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
002dac  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
002db0  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
002db4  e69504c0  vabs.f vr11, vr9
002db8  6a300302  vand.s.mz vr0{mr1}, r6, vr0
002dbc  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002dc0  72a1b642  vlt.u.mz mr2{mr1}, r13, vr11
002dc4  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
002dc8  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
002dcc  12300602  vadd.s.mz vr0{mr1}, r12, vr0
002dd0  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002dd4  eab40502  vand.s.mz vr9{mr1}, r11, vr0
002dd8  661004c0  vabs.f vr0, vr8
002ddc  6ab4a502  vand.s.mz vr8{mr1}, r11, vr10
002de0  ea247834  vor.u.mh vr9{mr2}, r16, vr7
002de4  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002de8  6a247834  vor.u.mh vr8{mr2}, r16, vr7
002dec  4a800102  vloads.mz vr0{mr1}, 0(r3)
002df0  42050102  vload.mz vr10{mr1}, 0(r2)
002df4  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
002df8  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
002dfc  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002e00  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
002e04  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002e08  46809b02  vstore.mz vr9{mr1}, 0(r23)
002e0c  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
002e10  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
002e14  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
002e18  6ab00502  vand.s.mz vr0{mr1}, r11, vr0
002e1c  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
002e20  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
002e24  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
002e28  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
002e2c  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002e30  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002e34  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
002e38  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
002e3c  e69000c0  vabs.f vr1, vr1
002e40  661000c0  vabs.f vr0, vr0
002e44  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002e48  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002e4c  72a11642  vlt.u.mz mr2{mr1}, r13, vr1
002e50  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002e54  eab0b502  vand.s.mz vr1{mr1}, r11, vr11
002e58  6a257834  vor.u.mh vr10{mr2}, r16, vr7
002e5c  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002e60  ea207834  vor.u.mh vr1{mr2}, r16, vr7
002e64  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
002e68  eab31502  vand.s.mz vr7{mr1}, r11, vr1
002e6c  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
002e70  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
002e74  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002e78  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002e7c  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
002e80  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
002e84  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
002e88  46000102  vstore.mz vr0{mr1}, 0(r2)
002e8c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002e90  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002e94  bf16beff  blt.s r28, r27, -604
002e98  db9cffff  j -796
002e9c  1f0c0000  addli r24, zero, 0
002ea0  9f0c0000  addli r25, zero, 0
002ea4  00a00000  mfence { lm }
002ea8  3fa167fe  blt.s r15, r6, -952
002eac  63016fd5  loadli.w r2,  -5456(r30)
002eb0  e3013f00  loadli.w r3,  24(r30)
002eb4  9f0a0000  addli r21, zero, 0
002eb8  8f832c18  div.f.rn r7, r25, r2
002ebc  0f012c18  div.f.rn r2, r24, r2
002ec0  0bea7320  mul.f.rn r20, r7, r7
002ec4  8be30358  neg.f r7, r7
002ec8  0b614119  sub.f.rn r2, r2, r20
002ecc  1f0a8fd7  addli r20, r30, -5184
002ed0  0b613110  add.f.rn r2, r2, r3
002ed4  ab01803f  lui r3, 260096
002ed8  0f010108  sqrt.f.rn r2, r2
002edc  0f812118  div.f.rn r2, r3, r2
002ee0  42020a02  vload.mz vr4{mr1}, 0(r20)
002ee4  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
002ee8  1f8b4a00  addli r22, r21, 32
002eec  ea212522  vor.u.mz vr3{mr1}, r10, vr2
002ef0  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002ef4  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002ef8  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002efc  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002f00  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002f04  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002f08  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002f0c  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002f10  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002f14  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002f18  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002f1c  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002f20  e69202c0  vabs.f vr5, vr5
002f24  661202c0  vabs.f vr4, vr4
002f28  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002f2c  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002f30  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002f34  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002f38  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002f3c  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002f40  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002f44  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002f48  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
002f4c  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
002f50  46004a02  vstore.mz vr4{mr1}, 0(r20)
002f54  4bfe67fd  ble.s r15, r22, -1124
002f58  1f0b8a00  addli r22, r20, 64
002f5c  9f8a8a00  addli r21, r21, 64
002f60  1f0a0a01  addli r20, r20, 128
002f64  42020b02  vload.mz vr4{mr1}, 0(r22)
002f68  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002f6c  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002f70  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002f74  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002f78  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002f7c  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002f80  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002f84  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002f88  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002f8c  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002f90  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002f94  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002f98  e69202c0  vabs.f vr5, vr5
002f9c  661202c0  vabs.f vr4, vr4
002fa0  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002fa4  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002fa8  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002fac  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002fb0  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002fb4  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002fb8  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002fbc  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002fc0  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
002fc4  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
002fc8  46002b02  vstore.mz vr2{mr1}, 0(r22)
002fcc  3fdcfafe  blt.s r21, r15, -236
002fd0  5b64ffff  j -1248
002fd4  80300002  core_id r1
002fd8  bb800000  bneq r1, zero, 32
002fdc  63012f00  loadli.w r2,  16(r30)
002fe0  ab0100f0  lui r3, 983040
002fe4  1b311100  slli r2, r2, 1
002fe8  17113100  or r2, r2, r3
002fec  ab010200  lui r3, 32
002ff0  9f810100  addli r3, r3, 0
002ff4  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002ff8  2bf10000  lui r2, 15
002ffc  e3411f00  loadli.w r3,  12(r30)
003000  00200300  mfence { sm, gm }
003004  1b11f1ff  ori r2, r2, 4095
003008  80210104  csr_set csr3, r2
00300c  00d00100  sync_group
003010  4b8f111a  ble.s r3, r1, 14272
003014  e3012f00  loadli.w r3,  16(r30)
003018  e3422f00  loadli.w r5,  20(r30)
00301c  2bf4ffff  lui r8, 1048575
003020  2b080200  lui r16, 32
003024  9f068fd7  addli r13, r30, -5184
003028  9f040002  addli r9, zero, 256
00302c  1f050001  addli r10, zero, 128
003030  9f058000  addli r11, zero, 64
003034  1f064000  addli r12, zero, 32
003038  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00303c  1b14f4ff  ori r8, r8, 4095
003040  1f080800  addli r16, r16, 0
003044  0b925110  add.s r4, r3, r5
003048  1bb11100  slli r2, r3, 1
00304c  b3810108  fix2float.rn r3, r3
003050  1f73f2ff  addli r6, r4, -1
003054  1bb21200  slli r4, r5, 1
003058  8b125330  div.s r5, r6, r5
00305c  1f130000  addli r6, zero, 1
003060  5b070000  j 56
003064  00a00000  mfence { lm }
003068  6b5a0f00  load.d r[21:22], 0(r30)
00306c  ab0900f0  lui r19, 983040
003070  9f068fd7  addli r13, r30, -5184
003074  97193101  or r19, r2, r19
003078  8b281a11  add.ul r[18:19], r[21:22], r[18:19]
00307c  005a0102  load_param_i r20, 2
003080  ffb9d800  s_lm2gm r19, r13, 0(r[18:19])
003084  8b101a10  add.s r1, r20, r1
003088  00a00200  mfence { lm, gm }
00308c  e3431f00  loadli.w r7,  12(r30)
003090  3fa07000  blt.s r1, r7, 8
003094  dbe70600  j 14140
003098  e3031f00  loadli.w r7,  8(r30)
00309c  ab0900f0  lui r19, 983040
0030a0  97193101  or r19, r2, r19
0030a4  8b987010  add.s r17, r1, r7
0030a8  9f037fd6  addli r7, r30, -5320
0030ac  8b98f820  mul.s r17, r17, r15
0030b0  6bda0300  load.d r[21:22], 0(r7)
0030b4  b3980828  sext_int2long r[18:19], r17
0030b8  97b86802  sll.d r[18:19], r[18:19], r6
0030bc  0b2a1a11  add.ul r[21:22], r[21:22], r[18:19]
0030c0  ff29da00  l_gm2lm r19, r13, 0(r[21:22])
0030c4  00a00200  mfence { lm, gm }
0030c8  3fc76200  blt.s r5, r6, 464
0030cc  1f0a0000  addli r20, zero, 0
0030d0  9f090000  addli r19, zero, 0
0030d4  9f0a0000  addli r21, zero, 0
0030d8  db0c0000  j 100
0030dc  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
0030e0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0030e4  9f9a0a00  addli r21, r21, 1
0030e8  6af134c0  vsrl.p vr2, r9, vr3
0030ec  6af214c0  vsrl.p vr4, r9, vr1
0030f0  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
0030f4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0030f8  ea7125c0  vsrl.p vr3, r10, vr2
0030fc  6a7215c0  vsrl.p vr4, r10, vr1
003100  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
003104  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
003108  eaf125c0  vsrl.p vr3, r11, vr2
00310c  6af215c0  vsrl.p vr4, r11, vr1
003110  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
003114  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
003118  ea7126c0  vsrl.p vr3, r12, vr2
00311c  6a7216c0  vsrl.p vr4, r12, vr1
003120  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
003124  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
003128  fa130140  vextracti.f r7, 0(vr2)
00312c  fa960040  vextracti.f r13, 0(vr1)
003130  0b6a7a10  add.f.rn r20, r20, r7
003134  8be9d910  add.f.rn r19, r19, r13
003138  b7a55a00  beq r21, r5, 360
00313c  1f8c0a00  addli r24, r21, 0
003140  37309700  beq r14, r9, 12
003144  17ab8a00  xor r22, r21, r8
003148  0b9c6211  add.s r24, r5, r22
00314c  0b1bec20  mul.s r22, r24, r14
003150  12320002  vadd.s.mz vr4{mr1}, zero, vr0
003154  92310002  vadd.s.mz vr3{mr1}, zero, vr0
003158  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00315c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
003160  0b9b6719  sub.s r22, r15, r22
003164  0b1beb40  min.s r22, r22, r14
003168  bf5d6bfe  blt.s r22, r6, -140
00316c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
003170  12310002  vadd.s.mz vr2{mr1}, zero, vr0
003174  92310002  vadd.s.mz vr3{mr1}, zero, vr0
003178  12320002  vadd.s.mz vr4{mr1}, zero, vr0
00317c  9f0b0000  addli r23, zero, 0
003180  0b1c8221  mul.s r24, r4, r24
003184  9f0c8fd7  addli r25, r30, -5184
003188  1f0d0800  addli r26, r16, 0
00318c  8b1d8d11  add.s r27, r26, r24
003190  9f838b00  addli r7, r23, 64
003194  ca820d02  vloads.mz vr5{mr1}, 0(r27)
003198  1f8e8d00  addli r28, r27, 64
00319c  4a030e02  vloads.mz vr6{mr1}, 0(r28)
0031a0  0b9e8c11  add.s r28, r25, r24
0031a4  c2030e02  vload.mz vr7{mr1}, 0(r28)
0031a8  9f068e00  addli r13, r28, 64
0031ac  42840602  vload.mz vr8{mr1}, 0(r13)
0031b0  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
0031b4  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0031b8  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
0031bc  06b40300  vfp162float_l.rn vr8, vr7
0031c0  86f30300  vfp162float_h.rn vr7, vr7
0031c4  86340300  vfp162float_l.rn vr9, vr6
0031c8  06730300  vfp162float_h.rn vr6, vr6
0031cc  86120400  vfloat2fp16_l.rn vr5, vr8
0031d0  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
0031d4  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
0031d8  12340002  vadd.s.mz vr8{mr1}, zero, vr0
0031dc  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
0031e0  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
0031e4  06940400  vfloat2fp16_l.rn vr8, vr9
0031e8  86d20300  vfloat2fp16_h.rn vr5, vr7
0031ec  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0031f0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0031f4  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0031f8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0031fc  06540300  vfloat2fp16_h.rn vr8, vr6
003200  46005e02  vstore.mz vr5{mr1}, 0(r28)
003204  46808602  vstore.mz vr8{mr1}, 0(r13)
003208  4b5b7bfe  ble.s r22, r7, -300
00320c  9f830d01  addli r7, r27, 128
003210  9f060e01  addli r13, r28, 128
003214  9f8b0b01  addli r23, r23, 128
003218  1f0d0d02  addli r26, r26, 256
00321c  9f8c0c02  addli r25, r25, 256
003220  ca820302  vloads.mz vr5{mr1}, 0(r7)
003224  9f838d01  addli r7, r27, 192
003228  c2830602  vload.mz vr7{mr1}, 0(r13)
00322c  4a830302  vloads.mz vr6{mr1}, 0(r7)
003230  9f038e01  addli r7, r28, 192
003234  42840302  vload.mz vr8{mr1}, 0(r7)
003238  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
00323c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
003240  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
003244  12330002  vadd.s.mz vr6{mr1}, zero, vr0
003248  86b40300  vfp162float_l.rn vr9, vr7
00324c  86f30300  vfp162float_h.rn vr7, vr7
003250  86920400  vfloat2fp16_l.rn vr5, vr9
003254  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
003258  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
00325c  86340400  vfp162float_l.rn vr9, vr8
003260  06740400  vfp162float_h.rn vr8, vr8
003264  06930400  vfloat2fp16_l.rn vr6, vr9
003268  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
00326c  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
003270  86d20300  vfloat2fp16_h.rn vr5, vr7
003274  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
003278  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
00327c  06530400  vfloat2fp16_h.rn vr6, vr8
003280  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
003284  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003288  46805602  vstore.mz vr5{mr1}, 0(r13)
00328c  46806302  vstore.mz vr6{mr1}, 0(r7)
003290  bffb6bff  blt.s r23, r22, -260
003294  5bc9ffff  j -440
003298  9f090000  addli r19, zero, 0
00329c  1f0a0000  addli r20, zero, 0
0032a0  00a00000  mfence { lm }
0032a4  3f8767fe  blt.s r15, r6, -576
0032a8  0f0a3a18  div.f.rn r20, r20, r3
0032ac  8f893918  div.f.rn r19, r19, r3
0032b0  e3033f00  loadli.w r7,  24(r30)
0032b4  1f0b0000  addli r22, zero, 0
0032b8  8b6a4a21  mul.f.rn r21, r20, r20
0032bc  0b6a0a58  neg.f r20, r20
0032c0  8be95919  sub.f.rn r19, r19, r21
0032c4  9f0a8fd7  addli r21, r30, -5184
0032c8  8be97910  add.f.rn r19, r19, r7
0032cc  ab03803f  lui r7, 260096
0032d0  8f890908  sqrt.f.rn r19, r19
0032d4  8f893319  div.f.rn r19, r7, r19
0032d8  c2800a02  vload.mz vr1{mr1}, 0(r21)
0032dc  9f0b4b00  addli r23, r22, 32
0032e0  06b10000  vfp162float_l.rn vr2, vr1
0032e4  86f00000  vfp162float_h.rn vr1, vr1
0032e8  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
0032ec  92111a02  vadd.f.mz.rn vr3{mr1}, r20, vr1
0032f0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0032f4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0032f8  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
0032fc  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003300  06120100  vfloat2fp16_l.rn vr4, vr2
003304  06d20100  vfloat2fp16_h.rn vr4, vr3
003308  46804a02  vstore.mz vr4{mr1}, 0(r21)
00330c  4be577ff  ble.s r15, r23, -680
003310  9f8b8a00  addli r23, r21, 64
003314  1f0b8b00  addli r22, r22, 64
003318  9f8a0a01  addli r21, r21, 128
00331c  42810b02  vload.mz vr2{mr1}, 0(r23)
003320  86310100  vfp162float_l.rn vr3, vr2
003324  06710100  vfp162float_h.rn vr2, vr2
003328  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
00332c  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003330  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003334  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
003338  86900100  vfloat2fp16_l.rn vr1, vr3
00333c  86500100  vfloat2fp16_h.rn vr1, vr2
003340  46801b02  vstore.mz vr1{mr1}, 0(r23)
003344  3f5efbfe  blt.s r22, r15, -108
003348  dba3ffff  j -740
00334c  80300002  core_id r1
003350  1f210000  addli r2, zero, 2
003354  b7d12018  beq r1, r2, 12404
003358  1f110000  addli r2, zero, 1
00335c  b7c32014  beq r1, r2, 10480
003360  3b920018  bneq r1, zero, 12420
003364  63012f00  loadli.w r2,  16(r30)
003368  ab0100f0  lui r3, 983040
00336c  1b312100  slli r2, r2, 2
003370  17113100  or r2, r2, r3
003374  ab710200  lui r3, 39
003378  9f810108  addli r3, r3, 1024
00337c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
003380  db0c0600  j 12388
003384  80300002  core_id r1
003388  bb800000  bneq r1, zero, 32
00338c  63012f00  loadli.w r2,  16(r30)
003390  ab0100f0  lui r3, 983040
003394  1b312100  slli r2, r2, 2
003398  17113100  or r2, r2, r3
00339c  abd10200  lui r3, 45
0033a0  9f8101f0  addli r3, r3, -2048
0033a4  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0033a8  2bf10000  lui r2, 15
0033ac  e3411f00  loadli.w r3,  12(r30)
0033b0  00200300  mfence { sm, gm }
0033b4  1b11f1ff  ori r2, r2, 4095
0033b8  80210104  csr_set csr3, r2
0033bc  00d00100  sync_group
0033c0  4bc0111a  ble.s r3, r1, 13328
0033c4  e3012f00  loadli.w r3,  16(r30)
0033c8  e3422f00  loadli.w r5,  20(r30)
0033cc  abf4ffff  lui r9, 1048575
0033d0  abd80200  lui r17, 45
0033d4  1f0b8fd7  addli r22, r30, -5184
0033d8  1f140000  addli r8, zero, 1
0033dc  1f050002  addli r10, zero, 256
0033e0  9f050001  addli r11, zero, 128
0033e4  1f068000  addli r12, zero, 64
0033e8  9f064000  addli r13, zero, 32
0033ec  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0033f0  9b94f4ff  ori r9, r9, 4095
0033f4  9f8808f0  addli r17, r17, -2048
0033f8  0b925110  add.s r4, r3, r5
0033fc  1bb12100  slli r2, r3, 2
003400  b3810108  fix2float.rn r3, r3
003404  1f73f2ff  addli r6, r4, -1
003408  1bb22200  slli r4, r5, 2
00340c  67043fd6  storeli.w r3, -5312(r30)
003410  9f010fd7  addli r3, r30, -5248
003414  8b125330  div.s r5, r6, r5
003418  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
00341c  5b070000  j 56
003420  00a00000  mfence { lm }
003424  6b530f00  load.d r[7:8], 0(r30)
003428  2b0800f0  lui r16, 983040
00342c  1f0b8fd7  addli r22, r30, -5184
003430  005a0102  load_param_i r20, 2
003434  17180101  or r16, r2, r16
003438  8b101a10  add.s r1, r20, r1
00343c  0b292311  add.ul r[19:20], r[7:8], r[19:20]
003440  7f386901  s_lm2gm r16, r22, 0(r[19:20])
003444  00a00200  mfence { lm, gm }
003448  e3411f00  loadli.w r3,  12(r30)
00344c  3fa03000  blt.s r1, r3, 8
003450  5b700600  j 13184
003454  e3011f00  loadli.w r3,  8(r30)
003458  0b983010  add.s r16, r1, r3
00345c  9f210000  addli r3, zero, 2
003460  0b18f820  mul.s r16, r16, r15
003464  33190828  sext_int2long r[19:20], r16
003468  2b0800f0  lui r16, 983040
00346c  17393902  sll.d r[19:20], r[19:20], r3
003470  9f017fd6  addli r3, r30, -5320
003474  17180101  or r16, r2, r16
003478  6bd30100  load.d r[7:8], 0(r3)
00347c  0b2a2311  add.ul r[21:22], r[7:8], r[19:20]
003480  7f286a01  l_gm2lm r16, r22, 0(r[21:22])
003484  00a00200  mfence { lm, gm }
003488  bf978200  blt.s r5, r8, 484
00348c  9f0a0000  addli r21, zero, 0
003490  1f0a0000  addli r20, zero, 0
003494  1f0b0000  addli r22, zero, 0
003498  db0c0000  j 100
00349c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
0034a0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0034a4  1f1b0b00  addli r22, r22, 1
0034a8  6a7105c0  vsrl.p vr2, r10, vr0
0034ac  ea7115c0  vsrl.p vr3, r10, vr1
0034b0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0034b4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0034b8  6af105c0  vsrl.p vr2, r11, vr0
0034bc  eaf115c0  vsrl.p vr3, r11, vr1
0034c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0034c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0034c8  6a7106c0  vsrl.p vr2, r12, vr0
0034cc  ea7116c0  vsrl.p vr3, r12, vr1
0034d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0034d4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0034d8  6af106c0  vsrl.p vr2, r13, vr0
0034dc  eaf116c0  vsrl.p vr3, r13, vr1
0034e0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0034e4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0034e8  fa110040  vextracti.f r3, 0(vr0)
0034ec  7a930040  vextracti.f r6, 0(vr1)
0034f0  8bea3a10  add.f.rn r21, r21, r3
0034f4  0b6a6a10  add.f.rn r20, r20, r6
0034f8  b7755b00  beq r22, r5, 380
0034fc  1f080b00  addli r16, r22, 0
003500  3730a700  beq r14, r10, 12
003504  17289b00  xor r16, r22, r9
003508  0b980211  add.s r16, r5, r16
00350c  9f010fd7  addli r3, r30, -5248
003510  8b1be820  mul.s r23, r16, r14
003514  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
003518  8b9b7719  sub.s r23, r15, r23
00351c  8b9beb40  min.s r23, r23, r14
003520  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003524  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003528  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00352c  bfcd8bfe  blt.s r23, r8, -144
003530  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003534  1f0c0000  addli r24, zero, 0
003538  8b1c0221  mul.s r25, r4, r16
00353c  1f0d8fd7  addli r26, r30, -5184
003540  9f8d0800  addli r27, r17, 0
003544  92304002  vadd.s.mz vr1{mr1}, zero, vr4
003548  12314002  vadd.s.mz vr2{mr1}, zero, vr4
00354c  92314002  vadd.s.mz vr3{mr1}, zero, vr4
003550  0b989d11  add.s r16, r27, r25
003554  0b1e9d11  add.s r28, r26, r25
003558  1f038800  addli r6, r16, 64
00355c  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
003560  9f038801  addli r7, r16, 192
003564  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
003568  9f018e01  addli r3, r28, 192
00356c  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
003570  1f030801  addli r6, r16, 128
003574  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
003578  9f030e01  addli r7, r28, 128
00357c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
003580  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
003584  c2950302  vload_mask16.mz vr11{mr1}, 0(r7)
003588  1f038e00  addli r6, r28, 64
00358c  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
003590  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
003594  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
003598  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00359c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0035a0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0035a4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0035a8  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
0035ac  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0035b0  1f038c00  addli r6, r24, 64
0035b4  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0035b8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0035bc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0035c0  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0035c4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0035c8  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
0035cc  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
0035d0  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0035d4  4bab6bfe  ble.s r23, r6, -312
0035d8  1f030802  addli r6, r16, 256
0035dc  9f038802  addli r7, r16, 320
0035e0  9f010e02  addli r3, r28, 256
0035e4  1f0c0c01  addli r24, r24, 128
0035e8  9f8d0d04  addli r27, r27, 512
0035ec  1f0d0d04  addli r26, r26, 512
0035f0  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
0035f4  1f030803  addli r6, r16, 384
0035f8  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
0035fc  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
003600  9f038e02  addli r7, r28, 320
003604  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
003608  1f038803  addli r6, r16, 448
00360c  1f088e03  addli r16, r28, 448
003610  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
003614  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
003618  1f030e03  addli r6, r28, 384
00361c  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
003620  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
003624  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
003628  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00362c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003630  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003634  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003638  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
00363c  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
003640  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
003644  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
003648  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00364c  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
003650  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003654  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003658  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
00365c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003660  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
003664  bf3b7cff  blt.s r24, r23, -276
003668  dbc6ffff  j -460
00366c  1f0a0000  addli r20, zero, 0
003670  9f0a0000  addli r21, zero, 0
003674  00a00000  mfence { lm }
003678  bfa687fe  blt.s r15, r8, -600
00367c  e3018fd6  loadli.w r3,  -5312(r30)
003680  1f0b0000  addli r22, zero, 0
003684  8f8a3a18  div.f.rn r21, r21, r3
003688  0f083a18  div.f.rn r16, r20, r3
00368c  e3013f00  loadli.w r3,  24(r30)
003690  0bea5a21  mul.f.rn r20, r21, r21
003694  0b684819  sub.f.rn r16, r16, r20
003698  0bea0a58  neg.f r20, r21
00369c  9f0a8fd7  addli r21, r30, -5184
0036a0  0b683810  add.f.rn r16, r16, r3
0036a4  ab01803f  lui r3, 260096
0036a8  0f080808  sqrt.f.rn r16, r16
0036ac  0f880119  div.f.rn r16, r3, r16
0036b0  9f8b8a00  addli r23, r21, 64
0036b4  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
0036b8  1f0c4b00  addli r24, r22, 32
0036bc  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
0036c0  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
0036c4  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
0036c8  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
0036cc  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
0036d0  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
0036d4  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
0036d8  4ba587ff  ble.s r15, r24, -696
0036dc  9f8b0a01  addli r23, r21, 128
0036e0  1f8c8a01  addli r24, r21, 192
0036e4  1f0b8b00  addli r22, r22, 64
0036e8  9f8a0a02  addli r21, r21, 256
0036ec  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
0036f0  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
0036f4  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
0036f8  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
0036fc  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003700  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003704  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
003708  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
00370c  bf1efbfe  blt.s r22, r15, -92
003710  5ba2ffff  j -752
003714  00310002  core_id r2
003718  ab630000  lui r7, 6
00371c  9f100000  addli r1, zero, 1
003720  1f038fd7  addli r6, r30, -5184
003724  1f048000  addli r8, zero, 64
003728  1f050010  addli r10, zero, 2048
00372c  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
003730  9b315100  slli r3, r2, 5
003734  00510102  load_param_i r2, 2
003738  9f830308  addli r7, r7, 1024
00373c  9b345100  slli r9, r2, 5
003740  b3850128  zext_int2long r[12:13], r3
003744  ab0600f0  lui r13, 983040
003748  97b51502  sll.d r[12:13], r[12:13], r1
00374c  9716d400  or r13, r8, r13
003750  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
003754  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
003758  9bb52100  slli r11, r3, 2
00375c  8b913410  add.s r3, r9, r3
003760  00a00200  mfence { lm, gm }
003764  c2000302  vload.mz vr1{mr1}, 0(r6)
003768  1386a104  setlt.u r12, r3, r10
00376c  8b957510  add.s r11, r11, r7
003770  9f868500  addli r13, r11, 64
003774  66c11180  vmerge_l.hf vr2, vr3, vr1
003778  e6c011a0  vmerge_h.hf vr1, vr3, vr1
00377c  4e902502  vstores_mask16.mz vr2{mr1}, 0(r11)
003780  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
003784  bb7e06fe  bneq r12, zero, -68
003788  abf00000  lui r1, 15
00378c  80310002  core_id r3
003790  9f020006  addli r5, zero, 768
003794  00a00300  mfence { lm, sm, gm }
003798  9b90f0ff  ori r1, r1, 4095
00379c  1b821100  andi r4, r3, 1
0037a0  9f010006  addli r3, zero, 768
0037a4  80a10004  csr_set csr3, r1
0037a8  00d00100  sync_group
0037ac  670b4fd4  storeli.w r4, -5456(r30)
0037b0  37200200  beq r4, zero, 8
0037b4  9f02000a  addli r5, zero, 1280
0037b8  63421f00  loadli.w r4,  12(r30)
0037bc  9f100000  addli r1, zero, 1
0037c0  3f401218  blt.s r4, r1, 12304
0037c4  63026fd5  loadli.w r4,  -5456(r30)
0037c8  9b461100  srli r13, r2, 1
0037cc  00310002  core_id r2
0037d0  1f078fd7  addli r14, r30, -5184
0037d4  1f040000  addli r8, zero, 0
0037d8  1f797000  addli r18, zero, 63
0037dc  1f0a0005  addli r20, zero, 640
0037e0  2b0e803f  lui r28, 260096
0037e4  1f052000  addli r10, zero, 16
0037e8  2b03ffff  lui r6, 1048560
0037ec  ab04807f  lui r9, 522240
0037f0  ab0dc07f  lui r27, 523264
0037f4  9f380000  addli r17, zero, 3
0037f8  9f5a1000  addli r21, zero, 13
0037fc  9f058fd4  addli r11, r30, -5568
003800  1b461100  srli r12, r2, 1
003804  1bb12200  slli r2, r5, 2
003808  8b113220  mul.s r3, r4, r3
00380c  1f824200  addli r4, r5, 32
003810  0b11e110  add.s r2, r2, r14
003814  e7433fd4  storeli.w r3, -5572(r30)
003818  9bb11200  slli r3, r5, 1
00381c  67034fd4  storeli.w r4, -5584(r30)
003820  2be27f00  lui r4, 2046
003824  1f0181ff  addli r2, r2, -64
003828  67083fd6  storeli.w r3, -5248(r30)
00382c  8b91e110  add.s r3, r3, r14
003830  e7422fd4  storeli.w r2, -5588(r30)
003834  1f8181ff  addli r2, r3, -64
003838  abf100fc  lui r3, 1032207
00383c  e7022fd4  storeli.w r2, -5592(r30)
003840  2bf1ffff  lui r2, 1048575
003844  1b9801c0  ori r16, r3, 3072
003848  9f211000  addli r3, zero, 10
00384c  00a00000  mfence { lm }
003850  46903502  vstore_mask16.mz vr3{mr1}, 0(r11)
003854  e703dfd4  storeli.w r13, -5576(r30)
003858  6743cfd4  storeli.w r12, -5580(r30)
00385c  1b1101f8  ori r2, r2, 3968
003860  67422fd4  storeli.w r2, -5596(r30)
003864  2bf10000  lui r2, 15
003868  1b11f1ff  ori r2, r2, 4095
00386c  67042fd6  storeli.w r2, -5312(r30)
003870  2b710000  lui r2, 7
003874  9b19f1ff  ori r19, r2, 4095
003878  2b01ff03  lui r2, 16368
00387c  9b17f13f  ori r15, r2, 1023
003880  2be10700  lui r2, 126
003884  5b040000  j 32
003888  00a00300  mfence { lm, sm, gm }
00388c  e3058fd6  loadli.w r11,  -5312(r30)
003890  80a10504  csr_set csr3, r11
003894  00d00100  sync_group
003898  0b14d410  add.s r8, r8, r13
00389c  3f209401  blt.s r8, r25, 8
0038a0  5b80faff  j -11264
0038a4  8b15c410  add.s r11, r8, r12
0038a8  cb8fbcfe  ble.s r25, r11, -32
0038ac  63061f00  loadli.w r12,  8(r30)
0038b0  8b95c510  add.s r11, r11, r12
0038b4  0b06d430  div.u r12, r8, r13
0038b8  e3467fd4  loadli.w r13,  -5572(r30)
0038bc  9bb5b500  slli r11, r11, 11
0038c0  9795d500  or r11, r11, r13
0038c4  9f067fd6  addli r13, r30, -5320
0038c8  b39b0528  sext_int2long r[24:25], r11
0038cc  ab0500f0  lui r11, 983040
0038d0  1b366600  slli r12, r12, 6
0038d4  17bc1b02  sll.d r[25:26], r[24:25], r1
0038d8  6bdb0600  load.d r[23:24], 0(r13)
0038dc  9f068fd5  addli r13, r30, -5440
0038e0  1b060604  andi r12, r12, 64
0038e4  73b08601  store.d r[25:26], 0(r13)
0038e8  e3060fd7  loadli.w r13,  -5248(r30)
0038ec  8b2b8b11  add.ul r[24:25], r[23:24], r[25:26]
0038f0  9795b600  or r11, r13, r11
0038f4  ffa5eb00  l_gm2lm r11, r14, 0(r[24:25])
0038f8  80350002  core_id r11
0038fc  9715b600  or r11, r12, r11
003900  e70bbfd4  storeli.w r11, -5448(r30)
003904  00a00200  mfence { lm, gm }
003908  e3055fd4  loadli.w r11,  -5592(r30)
00390c  63465fd4  loadli.w r12,  -5588(r30)
003910  e3066fd4  loadli.w r13,  -5584(r30)
003914  c2800502  vload.mz vr1{mr1}, 0(r11)
003918  9f86c6ff  addli r13, r13, -32
00391c  9f0c86ff  addli r25, r12, -64
003920  9f8585ff  addli r11, r11, -64
003924  130cd904  setlt.u r24, r18, r13
003928  66c111a0  vmerge_h.hf vr2, vr3, vr1
00392c  e6c01180  vmerge_l.hf vr1, vr3, vr1
003930  46102602  vstore_mask16.mz vr2{mr1}, 0(r12)
003934  1f0606ff  addli r12, r12, -128
003938  46901c02  vstore_mask16.mz vr1{mr1}, 0(r25)
00393c  3b6f0cfe  bneq r24, zero, -40
003940  00a00000  mfence { lm }
003944  e3056fd5  loadli.w r11,  -5456(r30)
003948  3bb60500  bneq r11, zero, 396
00394c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
003950  12313002  vadd.s.mz vr2{mr1}, zero, vr3
003954  12323002  vadd.s.mz vr4{mr1}, zero, vr3
003958  63464fd4  loadli.w r12,  -5596(r30)
00395c  9f050000  addli r11, zero, 0
003960  0b9c7510  add.s r24, r11, r7
003964  8b16b710  add.s r13, r14, r11
003968  1f060601  addli r12, r12, 128
00396c  9f850504  addli r11, r11, 512
003970  1f0b0c01  addli r22, r24, 128
003974  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
003978  9f0b8c00  addli r23, r24, 64
00397c  42940602  vload_mask16.mz vr8{mr1}, 0(r13)
003980  9f8c8601  addli r25, r13, 192
003984  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
003988  1f0b8c01  addli r22, r24, 192
00398c  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
003990  9f8b8600  addli r23, r13, 64
003994  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
003998  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
00399c  1f8b0601  addli r22, r13, 128
0039a0  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
0039a4  c2140b02  vload_mask16.mz vr9{mr1}, 0(r22)
0039a8  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0039ac  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0039b0  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0039b4  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0039b8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0039bc  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
0039c0  46108b02  vstore_mask16.mz vr8{mr1}, 0(r22)
0039c4  1f0b0c02  addli r22, r24, 256
0039c8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0039cc  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0039d0  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0039d4  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
0039d8  9f8b0603  addli r23, r13, 384
0039dc  4a100b02  vloads_mask16.mz vr0{mr1}, 0(r22)
0039e0  1f0b8c02  addli r22, r24, 320
0039e4  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
0039e8  9f8c0602  addli r25, r13, 256
0039ec  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0039f0  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0039f4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0039f8  4a130b02  vloads_mask16.mz vr6{mr1}, 0(r22)
0039fc  1f0b0c03  addli r22, r24, 384
003a00  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003a04  1f0c8c03  addli r24, r24, 448
003a08  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003a0c  4a140b02  vloads_mask16.mz vr8{mr1}, 0(r22)
003a10  1f8b8602  addli r22, r13, 320
003a14  4a150c02  vloads_mask16.mz vr10{mr1}, 0(r24)
003a18  9f868603  addli r13, r13, 448
003a1c  c2140b02  vload_mask16.mz vr9{mr1}, 0(r22)
003a20  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003a24  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
003a28  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003a2c  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
003a30  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003a34  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003a38  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003a3c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003a40  46106b02  vstore_mask16.mz vr6{mr1}, 0(r22)
003a44  130b4605  setlt.u r22, r12, r20
003a48  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003a4c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003a50  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003a54  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003a58  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003a5c  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
003a60  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
003a64  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003a68  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003a6c  bb5b0bfe  bneq r22, zero, -268
003a70  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003a74  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003a78  9f050002  addli r11, zero, 256
003a7c  6af105c0  vsrl.p vr2, r11, vr0
003a80  eaf115c0  vsrl.p vr3, r11, vr1
003a84  9f050001  addli r11, zero, 128
003a88  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a8c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a90  6af105c0  vsrl.p vr2, r11, vr0
003a94  eaf115c0  vsrl.p vr3, r11, vr1
003a98  9f058000  addli r11, zero, 64
003a9c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003aa0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003aa4  6af105c0  vsrl.p vr2, r11, vr0
003aa8  eaf115c0  vsrl.p vr3, r11, vr1
003aac  9f054000  addli r11, zero, 32
003ab0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003ab4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003ab8  6af105c0  vsrl.p vr2, r11, vr0
003abc  eaf115c0  vsrl.p vr3, r11, vr1
003ac0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003ac4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003ac8  fa150040  vextracti.f r11, 0(vr0)
003acc  7a960040  vextracti.f r12, 0(vr1)
003ad0  5b670000  j 824
003ad4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003ad8  abf5ffff  lui r11, 1048575
003adc  1f060000  addli r12, zero, 0
003ae0  1f090003  addli r18, zero, 384
003ae4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003ae8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003aec  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003af0  9b9605f8  ori r13, r11, 3968
003af4  0b9cc310  add.s r24, r7, r12
003af8  8b15c710  add.s r11, r14, r12
003afc  9f860601  addli r13, r13, 128
003b00  1f060604  addli r12, r12, 512
003b04  9f0b0c31  addli r23, r24, 6272
003b08  9f0c0c30  addli r25, r24, 6144
003b0c  1f0b8c31  addli r22, r24, 6336
003b10  1f8d0518  addli r26, r11, 3072
003b14  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
003b18  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
003b1c  9f0c8c30  addli r25, r24, 6208
003b20  ca140b02  vloads_mask16.mz vr9{mr1}, 0(r22)
003b24  9f8b0519  addli r23, r11, 3200
003b28  1f8b8518  addli r22, r11, 3136
003b2c  42130d02  vload_mask16.mz vr6{mr1}, 0(r26)
003b30  4a940c02  vloads_mask16.mz vr8{mr1}, 0(r25)
003b34  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
003b38  9f8c8519  addli r25, r11, 3264
003b3c  c2150b02  vload_mask16.mz vr11{mr1}, 0(r22)
003b40  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
003b44  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003b48  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
003b4c  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
003b50  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
003b54  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003b58  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
003b5c  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
003b60  9f0b0c32  addli r23, r24, 6400
003b64  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
003b68  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003b6c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003b70  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
003b74  9f8c051a  addli r25, r11, 3328
003b78  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003b7c  46105b02  vstore_mask16.mz vr5{mr1}, 0(r22)
003b80  1f8b051b  addli r22, r11, 3456
003b84  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
003b88  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
003b8c  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
003b90  9f0b8c32  addli r23, r24, 6464
003b94  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003b98  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003b9c  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
003ba0  9f0b0c33  addli r23, r24, 6528
003ba4  1f0c8c33  addli r24, r24, 6592
003ba8  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
003bac  9f8b851a  addli r23, r11, 3392
003bb0  4a150c02  vloads_mask16.mz vr10{mr1}, 0(r24)
003bb4  9f85851b  addli r11, r11, 3520
003bb8  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
003bbc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003bc0  c2130b02  vload_mask16.mz vr7{mr1}, 0(r22)
003bc4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003bc8  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
003bcc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003bd0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003bd4  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003bd8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003bdc  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
003be0  938b2605  setlt.u r23, r13, r18
003be4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003be8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003bec  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003bf0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003bf4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003bf8  46105b02  vstore_mask16.mz vr5{mr1}, 0(r22)
003bfc  46907502  vstore_mask16.mz vr7{mr1}, 0(r11)
003c00  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003c04  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003c08  bbbb0bfe  bneq r23, zero, -276
003c0c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003c10  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003c14  9f050002  addli r11, zero, 256
003c18  1f0d0000  addli r26, zero, 0
003c1c  eaf115c0  vsrl.p vr3, r11, vr1
003c20  6af105c0  vsrl.p vr2, r11, vr0
003c24  9f050001  addli r11, zero, 128
003c28  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003c2c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003c30  eaf115c0  vsrl.p vr3, r11, vr1
003c34  6af105c0  vsrl.p vr2, r11, vr0
003c38  9f058000  addli r11, zero, 64
003c3c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003c40  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003c44  eaf115c0  vsrl.p vr3, r11, vr1
003c48  6af105c0  vsrl.p vr2, r11, vr0
003c4c  9f054000  addli r11, zero, 32
003c50  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003c54  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003c58  eaf115c0  vsrl.p vr3, r11, vr1
003c5c  6af105c0  vsrl.p vr2, r11, vr0
003c60  abf5ffff  lui r11, 1048575
003c64  9b9505f8  ori r11, r11, 3968
003c68  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003c6c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003c70  fa960040  vextracti.f r13, 0(vr1)
003c74  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003c78  7a190040  vextracti.f r18, 0(vr0)
003c7c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003c80  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003c84  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003c88  8b9ca311  add.s r25, r7, r26
003c8c  0b1ca711  add.s r24, r14, r26
003c90  9f850501  addli r11, r11, 128
003c94  1f0d0d04  addli r26, r26, 512
003c98  1f8b0c18  addli r22, r25, 3072
003c9c  9f8b0c19  addli r23, r25, 3200
003ca0  1f068c01  addli r12, r24, 192
003ca4  42140c02  vload_mask16.mz vr8{mr1}, 0(r24)
003ca8  4a100b02  vloads_mask16.mz vr0{mr1}, 0(r22)
003cac  1f8b8c18  addli r22, r25, 3136
003cb0  ca920b02  vloads_mask16.mz vr5{mr1}, 0(r23)
003cb4  9f8b8c19  addli r23, r25, 3264
003cb8  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
003cbc  4a130b02  vloads_mask16.mz vr6{mr1}, 0(r22)
003cc0  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
003cc4  1f0b0c01  addli r22, r24, 128
003cc8  9f0b8c00  addli r23, r24, 64
003ccc  c2140b02  vload_mask16.mz vr9{mr1}, 0(r22)
003cd0  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
003cd4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
003cd8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
003cdc  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
003ce0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
003ce4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003ce8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003cec  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003cf0  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003cf4  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
003cf8  46108b02  vstore_mask16.mz vr8{mr1}, 0(r22)
003cfc  1f0b0c02  addli r22, r24, 256
003d00  46106602  vstore_mask16.mz vr6{mr1}, 0(r12)
003d04  1f860c1a  addli r12, r25, 3328
003d08  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
003d0c  9f0b0c03  addli r23, r24, 384
003d10  4a100602  vloads_mask16.mz vr0{mr1}, 0(r12)
003d14  1f868c1a  addli r12, r25, 3392
003d18  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003d1c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003d20  c2130b02  vload_mask16.mz vr7{mr1}, 0(r22)
003d24  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003d28  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003d2c  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
003d30  1f860c1b  addli r12, r25, 3456
003d34  9f8c8c1b  addli r25, r25, 3520
003d38  4a140602  vloads_mask16.mz vr8{mr1}, 0(r12)
003d3c  1f068c02  addli r12, r24, 320
003d40  4a950c02  vloads_mask16.mz vr10{mr1}, 0(r25)
003d44  1f0c8c03  addli r24, r24, 448
003d48  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
003d4c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003d50  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
003d54  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003d58  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
003d5c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003d60  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003d64  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
003d68  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003d6c  46106602  vstore_mask16.mz vr6{mr1}, 0(r12)
003d70  13864505  setlt.u r12, r11, r20
003d74  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003d78  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003d7c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003d80  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003d84  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003d88  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
003d8c  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
003d90  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003d94  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003d98  bb4b06fe  bneq r12, zero, -272
003d9c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003da0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003da4  9f050002  addli r11, zero, 256
003da8  6af105c0  vsrl.p vr2, r11, vr0
003dac  eaf115c0  vsrl.p vr3, r11, vr1
003db0  9f050001  addli r11, zero, 128
003db4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003db8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003dbc  6af105c0  vsrl.p vr2, r11, vr0
003dc0  eaf115c0  vsrl.p vr3, r11, vr1
003dc4  9f058000  addli r11, zero, 64
003dc8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003dcc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003dd0  6af105c0  vsrl.p vr2, r11, vr0
003dd4  eaf115c0  vsrl.p vr3, r11, vr1
003dd8  9f054000  addli r11, zero, 32
003ddc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003de0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003de4  6af105c0  vsrl.p vr2, r11, vr0
003de8  eaf115c0  vsrl.p vr3, r11, vr1
003dec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003df0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003df4  fa150040  vextracti.f r11, 0(vr0)
003df8  7a960040  vextracti.f r12, 0(vr1)
003dfc  8b65b910  add.f.rn r11, r18, r11
003e00  0be6c610  add.f.rn r12, r13, r12
003e04  1f797000  addli r18, zero, 63
003e08  2b8b0000  lui r22, 8
003e0c  ab8b0000  lui r23, 8
003e10  630d7fd5  loadli.w r26,  -5448(r30)
003e14  1f0b0b08  addli r22, r22, 1024
003e18  9f8b0b0c  addli r23, r23, 1536
003e1c  9b362d00  slli r13, r26, 2
003e20  1f0c0b00  addli r24, r22, 0
003e24  9f8c0b00  addli r25, r23, 0
003e28  0b9b8611  add.s r22, r13, r24
003e2c  8b9b9611  add.s r23, r13, r25
003e30  73e0cb00  stores.w r12, 0(r23)
003e34  7360bb00  stores.w r11, 0(r22)
003e38  1b964600  ori r12, r13, 4
003e3c  9f0b0000  addli r23, zero, 0
003e40  00a00300  mfence { lm, sm, gm }
003e44  e3058fd6  loadli.w r11,  -5312(r30)
003e48  8b168611  add.s r13, r12, r24
003e4c  0b169611  add.s r12, r12, r25
003e50  80a10504  csr_set csr3, r11
003e54  9b05ed07  andi r11, r26, 126
003e58  00d00100  sync_group
003e5c  efc60600  loads.w r13, 0(r13)
003e60  6f460600  loads.w r12, 0(r12)
003e64  9bb52500  slli r11, r11, 2
003e68  0b9b8511  add.s r22, r11, r24
003e6c  8b959511  add.s r11, r11, r25
003e70  6f4b0b00  loads.w r22, 0(r22)
003e74  efc50500  loads.w r11, 0(r11)
003e78  8be66611  add.f.rn r13, r13, r22
003e7c  2b0b003a  lui r22, 237568
003e80  8b65b610  add.f.rn r11, r12, r11
003e84  0be66621  mul.f.rn r12, r13, r22
003e88  8be56521  mul.f.rn r11, r11, r22
003e8c  8b66c620  mul.f.rn r13, r12, r12
003e90  0b660658  neg.f r12, r12
003e94  8be5d518  sub.f.rn r11, r11, r13
003e98  e3063f00  loadli.w r13,  24(r30)
003e9c  8be5d510  add.f.rn r11, r11, r13
003ea0  9f068fd7  addli r13, r30, -5184
003ea4  8f850508  sqrt.f.rn r11, r11
003ea8  8f05be18  div.f.rn r11, r28, r11
003eac  1f8b8600  addli r22, r13, 64
003eb0  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
003eb4  1f8c4b00  addli r24, r23, 32
003eb8  c2100b02  vload_mask16.mz vr1{mr1}, 0(r22)
003ebc  138c8207  setle.u r24, r5, r24
003ec0  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
003ec4  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
003ec8  0a900502  vmul.f.mz.rn vr0{mr1}, r11, vr0
003ecc  8a901502  vmul.f.mz.rn vr1{mr1}, r11, vr1
003ed0  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
003ed4  46101b02  vstore_mask16.mz vr1{mr1}, 0(r22)
003ed8  bb700c00  bneq r24, zero, 60
003edc  1f8b0601  addli r22, r13, 128
003ee0  1f8c8601  addli r24, r13, 192
003ee4  9f8b8b00  addli r23, r23, 64
003ee8  9f860602  addli r13, r13, 256
003eec  42100b02  vload_mask16.mz vr0{mr1}, 0(r22)
003ef0  c2100c02  vload_mask16.mz vr1{mr1}, 0(r24)
003ef4  938c5b04  setlt.u r25, r23, r5
003ef8  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
003efc  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
003f00  0a900502  vmul.f.mz.rn vr0{mr1}, r11, vr0
003f04  8a901502  vmul.f.mz.rn vr1{mr1}, r11, vr1
003f08  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
003f0c  46101c02  vstore_mask16.mz vr1{mr1}, 0(r24)
003f10  3bfe0cfe  bneq r25, zero, -100
003f14  9f058fd7  addli r11, r30, -5184
003f18  1f068fd7  addli r12, r30, -5184
003f1c  9f060000  addli r13, zero, 0
003f20  00a00000  mfence { lm }
003f24  c2110602  vload_mask16.mz vr3{mr1}, 0(r12)
003f28  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003f2c  1f0b8600  addli r22, r12, 64
003f30  9f864600  addli r13, r13, 32
003f34  1f060601  addli r12, r12, 128
003f38  6a201522  vor.u.mz vr0{mr1}, r10, vr1
003f3c  eaa21a22  vor.u.mz vr5{mr1}, r21, vr1
003f40  42110b02  vload_mask16.mz vr2{mr1}, 0(r22)
003f44  138b5604  setlt.u r22, r13, r5
003f48  6e3230c2  vsrl.s.mz vr4{mr1}, vr0, vr3
003f4c  6e3020c2  vsrl.s.mz vr0{mr1}, vr0, vr2
003f50  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
003f54  6ab00002  vand.s.mz vr0{mr1}, r1, vr0
003f58  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
003f5c  e69101c0  vabs.f vr3, vr3
003f60  16300102  vadd.s.mz vr0{mr1}, vr2, vr0
003f64  661101c0  vabs.f vr2, vr2
003f68  12b24902  vadd.s.mz vr4{mr1}, r19, vr4
003f6c  72a13442  vlt.u.mz mr2{mr1}, r9, vr3
003f70  12b00902  vadd.s.mz vr0{mr1}, r19, vr0
003f74  6a324302  vand.s.mz vr4{mr1}, r6, vr4
003f78  6a300302  vand.s.mz vr0{mr1}, r6, vr0
003f7c  6aa21d34  vor.u.mh vr4{mr2}, r27, vr1
003f80  72a12442  vlt.u.mz mr2{mr1}, r9, vr2
003f84  6aa11822  vor.u.mz vr2{mr1}, r17, vr1
003f88  6aa01d34  vor.u.mh vr0{mr2}, r27, vr1
003f8c  eaa01122  vor.u.mz vr1{mr1}, r3, vr1
003f90  eeb142c2  vsrl.s.mz vr3{mr1}, vr5, vr4
003f94  6e3241c2  vsrl.s.mz vr4{mr1}, vr2, vr4
003f98  eeb202c2  vsrl.s.mz vr5{mr1}, vr5, vr0
003f9c  6e3001c2  vsrl.s.mz vr0{mr1}, vr2, vr0
003fa0  6a313102  vand.s.mz vr2{mr1}, r2, vr3
003fa4  6a324202  vand.s.mz vr4{mr1}, r4, vr4
003fa8  ea315102  vand.s.mz vr3{mr1}, r2, vr5
003fac  6a300202  vand.s.mz vr0{mr1}, r4, vr0
003fb0  6a312e22  vor.s.mz vr2{mr1}, r28, vr2
003fb4  6a324e22  vor.s.mz vr4{mr1}, r28, vr4
003fb8  6a300e22  vor.s.mz vr0{mr1}, r28, vr0
003fbc  ea313e22  vor.s.mz vr3{mr1}, r28, vr3
003fc0  06110120  vfloat2fp16_l.rz vr2, vr2
003fc4  06500020  vfloat2fp16_h.rz vr0, vr0
003fc8  06d10120  vfloat2fp16_h.rz vr2, vr3
003fcc  06100220  vfloat2fp16_l.rz vr0, vr4
003fd0  eeb020a2  vsll.s.mz vr1{mr1}, vr1, vr2
003fd4  6ab00702  vand.s.mz vr0{mr1}, r15, vr0
003fd8  ea301802  vand.s.mz vr1{mr1}, r16, vr1
003fdc  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
003fe0  46800502  vstore.mz vr0{mr1}, 0(r11)
003fe4  9f858500  addli r11, r11, 64
003fe8  bb7c0bfe  bneq r22, zero, -196
003fec  1f0c8fd5  addli r24, r30, -5440
003ff0  6b560f00  load.d r[13:14], 0(r30)
003ff4  ab0500f0  lui r11, 983040
003ff8  6b5b0c00  load.d r[23:24], 0(r24)
003ffc  0b266611  add.ul r[13:14], r[13:14], r[23:24]
004000  630b0fd7  loadli.w r22,  -5248(r30)
004004  00a00000  mfence { lm }
004008  9715bb00  or r11, r22, r11
00400c  ff35e600  s_lm2gm r11, r14, 0(r[13:14])
004010  9f058fd4  addli r11, r30, -5568
004014  00a00200  mfence { lm, gm }
004018  e34c1f00  loadli.w r25,  12(r30)
00401c  c2910502  vload_mask16.mz vr3{mr1}, 0(r11)
004020  e3067fd4  loadli.w r13,  -5576(r30)
004024  63466fd4  loadli.w r12,  -5580(r30)
004028  5b0effff  j -1936
00402c  00360002  core_id r12
004030  63012f00  loadli.w r2,  16(r30)
004034  9b305600  slli r1, r12, 5
004038  cb211100  ble.s r2, r1, 104
00403c  80530102  load_param_i r7, 2
004040  2bc40000  lui r8, 12
004044  1f110000  addli r2, zero, 1
004048  9f018fd7  addli r3, r30, -5184
00404c  1f038000  addli r6, zero, 64
004050  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004054  9bb35300  slli r7, r7, 5
004058  1f0404f0  addli r8, r8, -2048
00405c  b3840028  zext_int2long r[10:11], r1
004060  ab0500f0  lui r11, 983040
004064  97b42402  sll.d r[10:11], r[10:11], r2
004068  9715b300  or r11, r6, r11
00406c  8b249210  add.ul r[10:11], r[5:6], r[10:11]
004070  ffa53400  l_gm2lm r11, r3, 0(r[10:11])
004074  9bb42000  slli r9, r1, 2
004078  8b901310  add.s r1, r7, r1
00407c  00a00200  mfence { lm, gm }
004080  c2800102  vload.mz vr1{mr1}, 0(r3)
004084  8b948410  add.s r9, r9, r8
004088  1f858400  addli r10, r9, 64
00408c  66411080  vmerge_l.hf vr2, vr0, vr1
004090  e64010a0  vmerge_h.hf vr1, vr0, vr1
004094  4e902402  vstores_mask16.mz vr2{mr1}, 0(r9)
004098  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
00409c  3f8ff0fe  blt.s r1, r15, -64
0040a0  abf00000  lui r1, 15
0040a4  63411f00  loadli.w r2,  12(r30)
0040a8  00a00300  mfence { lm, sm, gm }
0040ac  9b90f0ff  ori r1, r1, 4095
0040b0  80a10004  csr_set csr3, r1
0040b4  00d00100  sync_group
0040b8  4b6cc112  ble.s r2, r12, 10008
0040bc  e3002f00  loadli.w r1,  16(r30)
0040c0  63412f00  loadli.w r2,  20(r30)
0040c4  9f0d8fd7  addli r27, r30, -5184
0040c8  1f150000  addli r10, zero, 1
0040cc  9f787000  addli r17, zero, 63
0040d0  1f080002  addli r16, zero, 256
0040d4  ab09803f  lui r19, 260096
0040d8  ab05ffff  lui r11, 1048560
0040dc  2b0cc07f  lui r24, 523264
0040e0  2bed7f00  lui r26, 2046
0040e4  2bee0700  lui r28, 126
0040e8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0040ec  8b912010  add.s r3, r1, r2
0040f0  33820008  fix2float.rn r4, r1
0040f4  9bb41000  slli r9, r1, 1
0040f8  9bb22000  slli r5, r1, 2
0040fc  9f804000  addli r1, r1, 32
004100  e7031fd4  storeli.w r1, -5576(r30)
004104  8b90b211  add.s r1, r5, r27
004108  9ff1f1ff  addli r3, r3, -1
00410c  e7434fd4  storeli.w r4, -5572(r30)
004110  0b922130  div.s r4, r3, r2
004114  9f8080ff  addli r1, r1, -64
004118  8b91b411  add.s r3, r9, r27
00411c  67431fd4  storeli.w r1, -5580(r30)
004120  9f8081ff  addli r1, r3, -64
004124  67031fd4  storeli.w r1, -5584(r30)
004128  9b302100  slli r1, r2, 2
00412c  67041fd6  storeli.w r1, -5312(r30)
004130  abf0ffff  lui r1, 1048575
004134  00a00000  mfence { lm }
004138  67049fd4  storeli.w r9, -5568(r30)
00413c  9b90f0ff  ori r1, r1, 4095
004140  670c1fd4  storeli.w r1, -5440(r30)
004144  ab700000  lui r1, 7
004148  9b9af0ff  ori r21, r1, 4095
00414c  ab00ff03  lui r1, 16368
004150  1b93f03f  ori r6, r1, 1023
004154  abf000fc  lui r1, 1032207
004158  1b9400c0  ori r8, r1, 3072
00415c  9f000fd7  addli r1, r30, -5248
004160  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
004164  db070000  j 60
004168  9f016fd5  addli r3, r30, -5456
00416c  eb500f00  load.d r[2:3], 0(r30)
004170  80520102  load_param_i r5, 2
004174  6bd60100  load.d r[13:14], 0(r3)
004178  ab0100f0  lui r3, 983040
00417c  00a00000  mfence { lm }
004180  97913400  or r3, r9, r3
004184  8ba0c010  add.ul r[2:3], r[2:3], r[13:14]
004188  63067fd5  loadli.w r12,  -5448(r30)
00418c  ffb1b001  s_lm2gm r3, r27, 0(r[2:3])
004190  0b96c210  add.s r12, r5, r12
004194  00a00200  mfence { lm, gm }
004198  3f207600  blt.s r12, r7, 8
00419c  dbc60400  j 9780
0041a0  e3001f00  loadli.w r1,  8(r30)
0041a4  9f027fd6  addli r5, r30, -5320
0041a8  8b101610  add.s r1, r12, r1
0041ac  8b90f020  mul.s r1, r1, r15
0041b0  b3900028  sext_int2long r[2:3], r1
0041b4  17bba002  sll.d r[23:24], r[2:3], r10
0041b8  6bd10200  load.d r[3:4], 0(r5)
0041bc  ab0000f0  lui r1, 983040
0041c0  9f026fd5  addli r5, r30, -5456
0041c4  97901400  or r1, r9, r1
0041c8  73b06201  store.d r[23:24], 0(r5)
0041cc  0b216111  add.ul r[3:4], r[3:4], r[23:24]
0041d0  1f0b4000  addli r22, zero, 32
0041d4  ff20b101  l_gm2lm r1, r27, 0(r[3:4])
0041d8  00a00200  mfence { lm, gm }
0041dc  bff06701  blt.s r15, r22, 60
0041e0  e3006fd4  loadli.w r1,  -5584(r30)
0041e4  63416fd4  loadli.w r2,  -5580(r30)
0041e8  e3017fd4  loadli.w r3,  -5576(r30)
0041ec  c2800002  vload.mz vr1{mr1}, 0(r1)
0041f0  9f81c1ff  addli r3, r3, -32
0041f4  9f0381ff  addli r7, r2, -64
0041f8  9f8080ff  addli r1, r1, -64
0041fc  93823804  setlt.u r5, r17, r3
004200  664110a0  vmerge_h.hf vr2, vr0, vr1
004204  e6401080  vmerge_l.hf vr1, vr0, vr1
004208  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
00420c  1f0101ff  addli r2, r2, -128
004210  46901302  vstore_mask16.mz vr1{mr1}, 0(r7)
004214  3bef02fe  bneq r5, zero, -40
004218  00a00000  mfence { lm }
00421c  e70bcfd4  storeli.w r12, -5448(r30)
004220  3f08a200  blt.s r4, r10, 512
004224  9f010000  addli r3, zero, 0
004228  1f010000  addli r2, zero, 0
00422c  9f020000  addli r5, zero, 0
004230  db0e0000  j 116
004234  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004238  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00423c  9f000001  addli r1, zero, 128
004240  9f920200  addli r5, r5, 1
004244  6a7108c0  vsrl.p vr2, r16, vr0
004248  ea7118c0  vsrl.p vr3, r16, vr1
00424c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004250  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004254  6af100c0  vsrl.p vr2, r1, vr0
004258  eaf110c0  vsrl.p vr3, r1, vr1
00425c  9f008000  addli r1, zero, 64
004260  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004264  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004268  6af100c0  vsrl.p vr2, r1, vr0
00426c  eaf110c0  vsrl.p vr3, r1, vr1
004270  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004274  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004278  6a710bc0  vsrl.p vr2, r22, vr0
00427c  ea711bc0  vsrl.p vr3, r22, vr1
004280  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004284  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004288  fa100040  vextracti.f r1, 0(vr0)
00428c  fa930040  vextracti.f r7, 0(vr1)
004290  8be11110  add.f.rn r3, r3, r1
004294  9f000fd7  addli r1, r30, -5248
004298  0b617110  add.f.rn r2, r2, r7
00429c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0042a0  37a64200  beq r5, r4, 392
0042a4  9f830200  addli r7, r5, 0
0042a8  37400701  beq r14, r16, 16
0042ac  e3008fd5  loadli.w r1,  -5440(r30)
0042b0  97a01200  xor r1, r5, r1
0042b4  8b131210  add.s r7, r4, r1
0042b8  8b90e320  mul.s r1, r7, r14
0042bc  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0042c0  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0042c4  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0042c8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0042cc  8b901718  sub.s r1, r15, r1
0042d0  8b90e040  min.s r1, r1, r14
0042d4  bf8da0fe  blt.s r1, r10, -160
0042d8  e3048fd6  loadli.w r9,  -5312(r30)
0042dc  abcc0000  lui r25, 12
0042e0  1f060000  addli r12, zero, 0
0042e4  1f0a8fd7  addli r20, r30, -5184
0042e8  9f8c0cf0  addli r25, r25, -2048
0042ec  8b967420  mul.s r13, r9, r7
0042f0  9f030fd7  addli r7, r30, -5248
0042f4  42920302  vload_mask16.mz vr4{mr1}, 0(r7)
0042f8  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0042fc  12314002  vadd.s.mz vr2{mr1}, zero, vr4
004300  92314002  vadd.s.mz vr3{mr1}, zero, vr4
004304  8b93dc10  add.s r7, r25, r13
004308  8b1dda10  add.s r27, r20, r13
00430c  9f848300  addli r9, r7, 64
004310  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
004314  9f888301  addli r17, r7, 192
004318  c2940d02  vload_mask16.mz vr9{mr1}, 0(r27)
00431c  1f898d01  addli r18, r27, 192
004320  4a930402  vloads_mask16.mz vr6{mr1}, 0(r9)
004324  9f840301  addli r9, r7, 128
004328  4a940802  vloads_mask16.mz vr8{mr1}, 0(r17)
00432c  9f880d01  addli r17, r27, 128
004330  42100902  vload_mask16.mz vr0{mr1}, 0(r18)
004334  ca930402  vloads_mask16.mz vr7{mr1}, 0(r9)
004338  c2950802  vload_mask16.mz vr11{mr1}, 0(r17)
00433c  9f848d00  addli r9, r27, 64
004340  42950402  vload_mask16.mz vr10{mr1}, 0(r9)
004344  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004348  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
00434c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
004350  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
004354  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004358  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00435c  46905d02  vstore_mask16.mz vr5{mr1}, 0(r27)
004360  46906402  vstore_mask16.mz vr6{mr1}, 0(r9)
004364  9f048600  addli r9, r12, 64
004368  46100902  vstore_mask16.mz vr0{mr1}, 0(r18)
00436c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004370  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004374  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
004378  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00437c  46907802  vstore_mask16.mz vr7{mr1}, 0(r17)
004380  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
004384  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
004388  cbba90fe  ble.s r1, r9, -340
00438c  9f880302  addli r17, r7, 256
004390  1f898302  addli r18, r7, 320
004394  9f840d02  addli r9, r27, 256
004398  1f060601  addli r12, r12, 128
00439c  9f8c0c04  addli r25, r25, 512
0043a0  1f0a0a04  addli r20, r20, 512
0043a4  4a900802  vloads_mask16.mz vr0{mr1}, 0(r17)
0043a8  9f880303  addli r17, r7, 384
0043ac  9f838303  addli r7, r7, 448
0043b0  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
0043b4  42930402  vload_mask16.mz vr6{mr1}, 0(r9)
0043b8  1f898d03  addli r18, r27, 448
0043bc  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
0043c0  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
0043c4  9f830d03  addli r7, r27, 384
0043c8  9f888d02  addli r17, r27, 320
0043cc  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
0043d0  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
0043d4  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0043d8  42130902  vload_mask16.mz vr6{mr1}, 0(r18)
0043dc  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0043e0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0043e4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0043e8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0043ec  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
0043f0  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
0043f4  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0043f8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0043fc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004400  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
004404  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004408  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00440c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
004410  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004414  46106902  vstore_mask16.mz vr6{mr1}, 0(r18)
004418  bf3b16fe  blt.s r12, r1, -276
00441c  5bc3ffff  j -488
004420  1f010000  addli r2, zero, 0
004424  9f010000  addli r3, zero, 0
004428  00a00000  mfence { lm }
00442c  3fd2a700  blt.s r15, r10, 148
004430  e3407fd4  loadli.w r1,  -5572(r30)
004434  9f020000  addli r5, zero, 0
004438  8f811118  div.f.rn r3, r3, r1
00443c  8f001118  div.f.rn r1, r2, r1
004440  0be13120  mul.f.rn r2, r3, r3
004444  8be02018  sub.f.rn r1, r1, r2
004448  63013f00  loadli.w r2,  24(r30)
00444c  8be02010  add.f.rn r1, r1, r2
004450  0be10158  neg.f r2, r3
004454  9f018fd7  addli r3, r30, -5184
004458  8f800008  sqrt.f.rn r1, r1
00445c  8f801918  div.f.rn r1, r19, r1
004460  9f838100  addli r7, r3, 64
004464  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
004468  1f864200  addli r12, r5, 32
00446c  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
004470  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
004474  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
004478  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00447c  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
004480  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
004484  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
004488  cbe0c700  ble.s r15, r12, 56
00448c  9f830101  addli r7, r3, 128
004490  1f868101  addli r12, r3, 192
004494  9f828200  addli r5, r5, 64
004498  9f810102  addli r3, r3, 256
00449c  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
0044a0  42110602  vload_mask16.mz vr2{mr1}, 0(r12)
0044a4  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0044a8  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
0044ac  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0044b0  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
0044b4  46901302  vstore_mask16.mz vr1{mr1}, 0(r7)
0044b8  46102602  vstore_mask16.mz vr2{mr1}, 0(r12)
0044bc  bf9ef2fe  blt.s r5, r15, -92
0044c0  00a00000  mfence { lm }
0044c4  e3431f00  loadli.w r7,  12(r30)
0044c8  9f0d8fd7  addli r27, r30, -5184
0044cc  9f787000  addli r17, zero, 63
0044d0  1f062000  addli r12, zero, 16
0044d4  1f390000  addli r18, zero, 3
0044d8  1f5a1000  addli r20, zero, 13
0044dc  9f2c1000  addli r25, zero, 10
0044e0  ab06807f  lui r13, 522240
0044e4  e3048fd4  loadli.w r9,  -5568(r30)
0044e8  3f82a7fe  blt.s r15, r10, -896
0044ec  9f008fd7  addli r1, r30, -5184
0044f0  1f018fd7  addli r2, r30, -5184
0044f4  9f010000  addli r3, zero, 0
0044f8  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
0044fc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004500  9f028100  addli r5, r2, 64
004504  9f814100  addli r3, r3, 32
004508  1f010101  addli r2, r2, 128
00450c  6a221622  vor.u.mz vr4{mr1}, r12, vr1
004510  6a231a22  vor.u.mz vr6{mr1}, r20, vr1
004514  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
004518  ee3232c2  vsrl.s.mz vr5{mr1}, vr4, vr3
00451c  6e3222c2  vsrl.s.mz vr4{mr1}, vr4, vr2
004520  ea325502  vand.s.mz vr5{mr1}, r10, vr5
004524  6a324502  vand.s.mz vr4{mr1}, r10, vr4
004528  96b25102  vadd.s.mz vr5{mr1}, vr3, vr5
00452c  e69101c0  vabs.f vr3, vr3
004530  16324102  vadd.s.mz vr4{mr1}, vr2, vr4
004534  661101c0  vabs.f vr2, vr2
004538  92b25a02  vadd.s.mz vr5{mr1}, r21, vr5
00453c  72a13642  vlt.u.mz mr2{mr1}, r13, vr3
004540  12b24a02  vadd.s.mz vr4{mr1}, r21, vr4
004544  eab25502  vand.s.mz vr5{mr1}, r11, vr5
004548  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
00454c  ea221c34  vor.u.mh vr5{mr2}, r24, vr1
004550  72a12642  vlt.u.mz mr2{mr1}, r13, vr2
004554  6a211922  vor.u.mz vr2{mr1}, r18, vr1
004558  6a221c34  vor.u.mh vr4{mr2}, r24, vr1
00455c  eaa01c22  vor.u.mz vr1{mr1}, r25, vr1
004560  ee3153c2  vsrl.s.mz vr3{mr1}, vr6, vr5
004564  ee3251c2  vsrl.s.mz vr5{mr1}, vr2, vr5
004568  6e3141c2  vsrl.s.mz vr2{mr1}, vr2, vr4
00456c  6e3343c2  vsrl.s.mz vr6{mr1}, vr6, vr4
004570  ea313e02  vand.s.mz vr3{mr1}, r28, vr3
004574  ea325d02  vand.s.mz vr5{mr1}, r26, vr5
004578  6a326e02  vand.s.mz vr4{mr1}, r28, vr6
00457c  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
004580  eab13922  vor.s.mz vr3{mr1}, r19, vr3
004584  eab25922  vor.s.mz vr5{mr1}, r19, vr5
004588  6ab12922  vor.s.mz vr2{mr1}, r19, vr2
00458c  6ab24922  vor.s.mz vr4{mr1}, r19, vr4
004590  86910120  vfloat2fp16_l.rz vr3, vr3
004594  06510120  vfloat2fp16_h.rz vr2, vr2
004598  86510220  vfloat2fp16_h.rz vr3, vr4
00459c  06910220  vfloat2fp16_l.rz vr2, vr5
0045a0  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
0045a4  6a312302  vand.s.mz vr2{mr1}, r6, vr2
0045a8  ea301402  vand.s.mz vr1{mr1}, r8, vr1
0045ac  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
0045b0  46801002  vstore.mz vr1{mr1}, 0(r1)
0045b4  9f808000  addli r1, r1, 64
0045b8  3f8df1fe  blt.s r3, r15, -192
0045bc  db75ffff  j -1108
0045c0  2b330100  lui r6, 19
0045c4  80390002  core_id r19
0045c8  80500102  load_param_i r1, 2
0045cc  1f110000  addli r2, zero, 1
0045d0  9f038fd7  addli r7, r30, -5184
0045d4  1f048000  addli r8, zero, 64
0045d8  1f050010  addli r10, zero, 2048
0045dc  9bb15900  slli r3, r19, 5
0045e0  9bb45000  slli r9, r1, 5
0045e4  1f0303f8  addli r6, r6, -1024
0045e8  b3850128  zext_int2long r[12:13], r3
0045ec  ab0600f0  lui r13, 983040
0045f0  97b52502  sll.d r[12:13], r[12:13], r2
0045f4  9716d400  or r13, r8, r13
0045f8  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
0045fc  ffa67500  l_gm2lm r13, r7, 0(r[12:13])
004600  9bb52100  slli r11, r3, 2
004604  8b913410  add.s r3, r9, r3
004608  00a00200  mfence { lm, gm }
00460c  42800302  vload.mz vr0{mr1}, 0(r7)
004610  1386a104  setlt.u r12, r3, r10
004614  8b956510  add.s r11, r11, r6
004618  9f868500  addli r13, r11, 64
00461c  86300000  vfp162float_l.rn vr1, vr0
004620  06700000  vfp162float_h.rn vr0, vr0
004624  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
004628  4e900602  vstores_mask16.mz vr0{mr1}, 0(r13)
00462c  bb7e06fe  bneq r12, zero, -68
004630  2bf10000  lui r2, 15
004634  00a00300  mfence { lm, sm, gm }
004638  1f020006  addli r4, zero, 768
00463c  9b11f1ff  ori r3, r2, 4095
004640  1b811900  andi r2, r19, 1
004644  80a10104  csr_set csr3, r3
004648  9f010006  addli r3, zero, 768
00464c  00d00100  sync_group
004650  67082fd6  storeli.w r2, -5248(r30)
004654  37200100  beq r2, zero, 8
004658  9f01000a  addli r3, zero, 1280
00465c  e3421f00  loadli.w r5,  12(r30)
004660  1f110000  addli r2, zero, 1
004664  bfb52210  blt.s r5, r2, 8556
004668  1bc41000  srli r8, r1, 1
00466c  9bb02100  slli r1, r3, 2
004670  9f058fd7  addli r11, r30, -5184
004674  63010fd7  loadli.w r2,  -5248(r30)
004678  1bb51100  slli r10, r3, 1
00467c  ab5b0100  lui r23, 21
004680  2b5e0100  lui r28, 21
004684  9f020000  addli r5, zero, 0
004688  9bc41900  srli r9, r19, 1
00468c  9f777000  addli r15, zero, 63
004690  1f090005  addli r18, zero, 640
004694  1f0a0001  addli r20, zero, 128
004698  9f0a8000  addli r21, zero, 64
00469c  1f0b4000  addli r22, zero, 32
0046a0  9f0d0003  addli r27, zero, 384
0046a4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0046a8  8b90b010  add.s r1, r1, r11
0046ac  9f8b0bf8  addli r23, r23, -1024
0046b0  1f0e0efc  addli r28, r28, -512
0046b4  0b114120  mul.s r2, r2, r4
0046b8  0b12b510  add.s r4, r10, r11
0046bc  9f8080ff  addli r1, r1, -64
0046c0  67042fd6  storeli.w r2, -5312(r30)
0046c4  1f814100  addli r2, r3, 32
0046c8  e70b1fd4  storeli.w r1, -5448(r30)
0046cc  9f0082ff  addli r1, r4, -64
0046d0  670c2fd4  storeli.w r2, -5440(r30)
0046d4  1f018fd4  addli r2, r30, -5568
0046d8  670b1fd4  storeli.w r1, -5456(r30)
0046dc  abf0ffff  lui r1, 1048575
0046e0  00a00000  mfence { lm }
0046e4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0046e8  9b9000f8  ori r1, r1, 3968
0046ec  e7431fd4  storeli.w r1, -5572(r30)
0046f0  abf00000  lui r1, 15
0046f4  1b9cf0ff  ori r24, r1, 4095
0046f8  db030000  j 28
0046fc  00a00300  mfence { lm, sm, gm }
004700  80210c04  csr_set csr3, r24
004704  00d00100  sync_group
004708  8b928210  add.s r5, r5, r8
00470c  3fa09201  blt.s r5, r25, 8
004710  5bb2f8ff  j -14960
004714  8b909210  add.s r1, r5, r9
004718  cb9f1cfe  ble.s r25, r1, -28
00471c  63011f00  loadli.w r2,  8(r30)
004720  0b828230  div.u r4, r5, r8
004724  8b902010  add.s r1, r1, r2
004728  63018fd6  loadli.w r2,  -5312(r30)
00472c  9bb0b000  slli r1, r1, 11
004730  1b326200  slli r4, r4, 6
004734  97902000  or r1, r1, r2
004738  1f110000  addli r2, zero, 1
00473c  1b020204  andi r4, r4, 64
004740  33960028  sext_int2long r[13:14], r1
004744  ab0000f0  lui r1, 983040
004748  171d3201  or r26, r4, r19
00474c  17382602  sll.d r[17:18], r[13:14], r2
004750  1f017fd6  addli r2, r30, -5320
004754  97101500  or r1, r10, r1
004758  6b560100  load.d r[13:14], 0(r2)
00475c  0b260611  add.ul r[13:14], r[13:14], r[17:18]
004760  ff20b600  l_gm2lm r1, r11, 0(r[13:14])
004764  00a00200  mfence { lm, gm }
004768  e3006fd5  loadli.w r1,  -5456(r30)
00476c  63027fd5  loadli.w r4,  -5448(r30)
004770  e3038fd5  loadli.w r7,  -5440(r30)
004774  c2800002  vload.mz vr1{mr1}, 0(r1)
004778  9f83c3ff  addli r7, r7, -32
00477c  9f0682ff  addli r13, r4, -64
004780  9f8080ff  addli r1, r1, -64
004784  13867704  setlt.u r12, r15, r7
004788  06f10000  vfp162float_h.rn vr2, vr1
00478c  86b00000  vfp162float_l.rn vr1, vr1
004790  46102202  vstore_mask16.mz vr2{mr1}, 0(r4)
004794  1f0202ff  addli r4, r4, -128
004798  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
00479c  3b6f06fe  bneq r12, zero, -40
0047a0  00a00000  mfence { lm }
0047a4  e3000fd7  loadli.w r1,  -5248(r30)
0047a8  3ba60000  bneq r1, zero, 392
0047ac  1f018fd4  addli r2, r30, -5568
0047b0  63427fd4  loadli.w r4,  -5572(r30)
0047b4  9f000000  addli r1, zero, 0
0047b8  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
0047bc  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0047c0  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0047c4  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0047c8  0b966010  add.s r12, r1, r6
0047cc  8b931510  add.s r7, r11, r1
0047d0  1f020201  addli r4, r4, 128
0047d4  9f800004  addli r1, r1, 512
0047d8  1f010601  addli r2, r12, 128
0047dc  4a100602  vloads_mask16.mz vr0{mr1}, 0(r12)
0047e0  9f068600  addli r13, r12, 64
0047e4  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
0047e8  1f878301  addli r14, r7, 192
0047ec  ca120102  vloads_mask16.mz vr5{mr1}, 0(r2)
0047f0  1f018601  addli r2, r12, 192
0047f4  4a930602  vloads_mask16.mz vr6{mr1}, 0(r13)
0047f8  9f868300  addli r13, r7, 64
0047fc  c2150702  vload_mask16.mz vr11{mr1}, 0(r14)
004800  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
004804  1f810301  addli r2, r7, 128
004808  42950602  vload_mask16.mz vr10{mr1}, 0(r13)
00480c  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
004810  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004814  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004818  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00481c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004820  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004824  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
004828  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
00482c  1f010602  addli r2, r12, 256
004830  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004834  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004838  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00483c  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
004840  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
004844  1f018602  addli r2, r12, 320
004848  46106702  vstore_mask16.mz vr6{mr1}, 0(r14)
00484c  1f870302  addli r14, r7, 256
004850  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004854  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004858  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00485c  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
004860  1f010603  addli r2, r12, 384
004864  c2130702  vload_mask16.mz vr7{mr1}, 0(r14)
004868  1f068603  addli r12, r12, 448
00486c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004870  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
004874  1f818302  addli r2, r7, 320
004878  4a150602  vloads_mask16.mz vr10{mr1}, 0(r12)
00487c  1f860303  addli r12, r7, 384
004880  9f838303  addli r7, r7, 448
004884  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
004888  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00488c  c2130602  vload_mask16.mz vr7{mr1}, 0(r12)
004890  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004894  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
004898  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00489c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0048a0  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
0048a4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0048a8  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
0048ac  13012205  setlt.u r2, r4, r18
0048b0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0048b4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0048b8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0048bc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0048c0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0048c4  46105602  vstore_mask16.mz vr5{mr1}, 0(r12)
0048c8  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
0048cc  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0048d0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0048d4  bb5b01fe  bneq r2, zero, -268
0048d8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0048dc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0048e0  9f000002  addli r1, zero, 256
0048e4  6af100c0  vsrl.p vr2, r1, vr0
0048e8  eaf110c0  vsrl.p vr3, r1, vr1
0048ec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0048f0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0048f4  6a710ac0  vsrl.p vr2, r20, vr0
0048f8  ea711ac0  vsrl.p vr3, r20, vr1
0048fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004900  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004904  6af10ac0  vsrl.p vr2, r21, vr0
004908  eaf11ac0  vsrl.p vr3, r21, vr1
00490c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004910  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004914  6a710bc0  vsrl.p vr2, r22, vr0
004918  ea711bc0  vsrl.p vr3, r22, vr1
00491c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004920  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004924  7a120040  vextracti.f r4, 0(vr0)
004928  fa900040  vextracti.f r1, 0(vr1)
00492c  5b640000  j 800
004930  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004934  2bf1ffff  lui r2, 1048575
004938  9f000000  addli r1, zero, 0
00493c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004940  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004944  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004948  1b1201f8  ori r4, r2, 3968
00494c  0b161310  add.s r12, r6, r1
004950  8b931510  add.s r7, r11, r1
004954  1f020201  addli r4, r4, 128
004958  9f800004  addli r1, r1, 512
00495c  1f070631  addli r14, r12, 6272
004960  9f060630  addli r13, r12, 6144
004964  1f018631  addli r2, r12, 6336
004968  9f8c0318  addli r25, r7, 3072
00496c  ca130702  vloads_mask16.mz vr7{mr1}, 0(r14)
004970  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
004974  9f068630  addli r13, r12, 6208
004978  ca140102  vloads_mask16.mz vr9{mr1}, 0(r2)
00497c  1f818318  addli r2, r7, 3136
004980  1f878319  addli r14, r7, 3264
004984  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
004988  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
00498c  9f860319  addli r13, r7, 3200
004990  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
004994  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
004998  42950602  vload_mask16.mz vr10{mr1}, 0(r13)
00499c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0049a0  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0049a4  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0049a8  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0049ac  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0049b0  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0049b4  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
0049b8  9f060632  addli r13, r12, 6400
0049bc  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0049c0  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
0049c4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0049c8  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
0049cc  1f87031a  addli r14, r7, 3328
0049d0  c2130702  vload_mask16.mz vr7{mr1}, 0(r14)
0049d4  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
0049d8  1f81031b  addli r2, r7, 3456
0049dc  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0049e0  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0049e4  4a900602  vloads_mask16.mz vr0{mr1}, 0(r13)
0049e8  9f068632  addli r13, r12, 6464
0049ec  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0049f0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0049f4  4a930602  vloads_mask16.mz vr6{mr1}, 0(r13)
0049f8  9f060633  addli r13, r12, 6528
0049fc  1f068633  addli r12, r12, 6592
004a00  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
004a04  9f86831a  addli r13, r7, 3392
004a08  4a150602  vloads_mask16.mz vr10{mr1}, 0(r12)
004a0c  9f83831b  addli r7, r7, 3520
004a10  1306b205  setlt.u r12, r4, r27
004a14  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
004a18  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004a1c  c2130102  vload_mask16.mz vr7{mr1}, 0(r2)
004a20  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004a24  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
004a28  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004a2c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004a30  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
004a34  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004a38  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
004a3c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004a40  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004a44  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004a48  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004a4c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004a50  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
004a54  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
004a58  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004a5c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004a60  bb3b06fe  bneq r12, zero, -276
004a64  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004a68  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004a6c  9f000002  addli r1, zero, 256
004a70  2bf1ffff  lui r2, 1048575
004a74  9f030000  addli r7, zero, 0
004a78  9b1c01f8  ori r25, r2, 3968
004a7c  eaf110c0  vsrl.p vr3, r1, vr1
004a80  6af100c0  vsrl.p vr2, r1, vr0
004a84  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004a88  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004a8c  ea711ac0  vsrl.p vr3, r20, vr1
004a90  6a710ac0  vsrl.p vr2, r20, vr0
004a94  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004a98  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004a9c  eaf11ac0  vsrl.p vr3, r21, vr1
004aa0  6af10ac0  vsrl.p vr2, r21, vr0
004aa4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004aa8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004aac  ea711bc0  vsrl.p vr3, r22, vr1
004ab0  6a710bc0  vsrl.p vr2, r22, vr0
004ab4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004ab8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004abc  fa900040  vextracti.f r1, 0(vr1)
004ac0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004ac4  7a120040  vextracti.f r4, 0(vr0)
004ac8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004acc  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004ad0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004ad4  8b167310  add.s r13, r6, r7
004ad8  0b967510  add.s r12, r11, r7
004adc  9f8c0c01  addli r25, r25, 128
004ae0  9f830304  addli r7, r7, 512
004ae4  1f810618  addli r2, r13, 3072
004ae8  1f870619  addli r14, r13, 3200
004aec  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
004af0  9f098601  addli r19, r12, 192
004af4  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
004af8  ca120702  vloads_mask16.mz vr5{mr1}, 0(r14)
004afc  1f818618  addli r2, r13, 3136
004b00  1f878619  addli r14, r13, 3264
004b04  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
004b08  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
004b0c  1f010601  addli r2, r12, 128
004b10  ca130702  vloads_mask16.mz vr7{mr1}, 0(r14)
004b14  1f078600  addli r14, r12, 64
004b18  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
004b1c  42150702  vload_mask16.mz vr10{mr1}, 0(r14)
004b20  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004b24  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004b28  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004b2c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004b30  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
004b34  1f81061a  addli r2, r13, 3328
004b38  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004b3c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004b40  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004b44  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004b48  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
004b4c  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
004b50  1f81861a  addli r2, r13, 3392
004b54  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
004b58  9f090602  addli r19, r12, 256
004b5c  46105702  vstore_mask16.mz vr5{mr1}, 0(r14)
004b60  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004b64  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004b68  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
004b6c  1f81061b  addli r2, r13, 3456
004b70  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
004b74  9f86861b  addli r13, r13, 3520
004b78  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004b7c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004b80  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
004b84  1f018602  addli r2, r12, 320
004b88  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
004b8c  9f060603  addli r13, r12, 384
004b90  1f068603  addli r12, r12, 448
004b94  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
004b98  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004b9c  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
004ba0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004ba4  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
004ba8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004bac  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004bb0  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
004bb4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004bb8  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
004bbc  13812c05  setlt.u r2, r25, r18
004bc0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004bc4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004bc8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004bcc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004bd0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004bd4  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
004bd8  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
004bdc  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004be0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004be4  bb4b01fe  bneq r2, zero, -272
004be8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004bec  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004bf0  1f010002  addli r2, zero, 256
004bf4  e34c1f00  loadli.w r25,  12(r30)
004bf8  80390002  core_id r19
004bfc  6a7101c0  vsrl.p vr2, r2, vr0
004c00  ea7111c0  vsrl.p vr3, r2, vr1
004c04  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004c08  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004c0c  6a710ac0  vsrl.p vr2, r20, vr0
004c10  ea711ac0  vsrl.p vr3, r20, vr1
004c14  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004c18  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004c1c  6af10ac0  vsrl.p vr2, r21, vr0
004c20  eaf11ac0  vsrl.p vr3, r21, vr1
004c24  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004c28  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004c2c  6a710bc0  vsrl.p vr2, r22, vr0
004c30  ea711bc0  vsrl.p vr3, r22, vr1
004c34  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004c38  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004c3c  7a110040  vextracti.f r2, 0(vr0)
004c40  fa930040  vextracti.f r7, 0(vr1)
004c44  0b622210  add.f.rn r4, r4, r2
004c48  8be07010  add.f.rn r1, r1, r7
004c4c  1b312d00  slli r2, r26, 2
004c50  0b16c111  add.s r12, r2, r28
004c54  8b137111  add.s r7, r2, r23
004c58  1b114100  ori r2, r2, 4
004c5c  73601600  stores.w r1, 0(r12)
004c60  9b00ed07  andi r1, r26, 126
004c64  73e04300  stores.w r4, 0(r7)
004c68  0b127111  add.s r4, r2, r23
004c6c  0b11c111  add.s r2, r2, r28
004c70  1f060000  addli r12, zero, 0
004c74  00a00300  mfence { lm, sm, gm }
004c78  80210c04  csr_set csr3, r24
004c7c  00d00100  sync_group
004c80  9bb02000  slli r1, r1, 2
004c84  6f420200  loads.w r4, 0(r4)
004c88  6f410100  loads.w r2, 0(r2)
004c8c  8b937011  add.s r7, r1, r23
004c90  8b90c011  add.s r1, r1, r28
004c94  efc30300  loads.w r7, 0(r7)
004c98  efc00000  loads.w r1, 0(r1)
004c9c  0b627210  add.f.rn r4, r4, r7
004ca0  ab03003a  lui r7, 237568
004ca4  8b601110  add.f.rn r1, r2, r1
004ca8  0b617220  mul.f.rn r2, r4, r7
004cac  8be07020  mul.f.rn r1, r1, r7
004cb0  9f038fd7  addli r7, r30, -5184
004cb4  0b622120  mul.f.rn r4, r2, r2
004cb8  8be04018  sub.f.rn r1, r1, r4
004cbc  63023f00  loadli.w r4,  24(r30)
004cc0  8be04010  add.f.rn r1, r1, r4
004cc4  2b02803f  lui r4, 260096
004cc8  8f800008  sqrt.f.rn r1, r1
004ccc  8f001218  div.f.rn r1, r4, r1
004cd0  0b620158  neg.f r4, r2
004cd4  1f818300  addli r2, r7, 64
004cd8  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
004cdc  9f064600  addli r13, r12, 32
004ce0  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004ce4  9386d106  setle.u r13, r3, r13
004ce8  12100202  vadd.f.mz.rn vr0{mr1}, r4, vr0
004cec  92101202  vadd.f.mz.rn vr1{mr1}, r4, vr1
004cf0  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
004cf4  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004cf8  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
004cfc  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
004d00  bbf00600  bneq r13, zero, 60
004d04  1f810301  addli r2, r7, 128
004d08  9f868301  addli r13, r7, 192
004d0c  1f068600  addli r12, r12, 64
004d10  9f830302  addli r7, r7, 256
004d14  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
004d18  c2900602  vload_mask16.mz vr1{mr1}, 0(r13)
004d1c  13073604  setlt.u r14, r12, r3
004d20  12100202  vadd.f.mz.rn vr0{mr1}, r4, vr0
004d24  92101202  vadd.f.mz.rn vr1{mr1}, r4, vr1
004d28  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
004d2c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004d30  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004d34  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
004d38  3b7e07fe  bneq r14, zero, -100
004d3c  9f008fd7  addli r1, r30, -5184
004d40  1f028fd7  addli r4, r30, -5184
004d44  9f030000  addli r7, zero, 0
004d48  00a00000  mfence { lm }
004d4c  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
004d50  1f018200  addli r2, r4, 64
004d54  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
004d58  9f834300  addli r7, r7, 32
004d5c  1f020201  addli r4, r4, 128
004d60  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004d64  13813304  setlt.u r2, r7, r3
004d68  06110000  vfloat2fp16_l.rn vr2, vr0
004d6c  06d10000  vfloat2fp16_h.rn vr2, vr1
004d70  46802002  vstore.mz vr2{mr1}, 0(r1)
004d74  9f808000  addli r1, r1, 64
004d78  3b5f01fe  bneq r2, zero, -44
004d7c  6b560f00  load.d r[13:14], 0(r30)
004d80  ab0000f0  lui r1, 983040
004d84  00a00000  mfence { lm }
004d88  97101500  or r1, r10, r1
004d8c  0b260611  add.ul r[13:14], r[13:14], r[17:18]
004d90  ff30b600  s_lm2gm r1, r11, 0(r[13:14])
004d94  00a00200  mfence { lm, gm }
004d98  5b2effff  j -1680
004d9c  80300002  core_id r1
004da0  e3012f00  loadli.w r3,  16(r30)
004da4  1bb15000  slli r2, r1, 5
004da8  cb912100  ble.s r3, r2, 100
004dac  00540102  load_param_i r8, 2
004db0  ab840100  lui r9, 24
004db4  9f110000  addli r3, zero, 1
004db8  1f038fd7  addli r6, r30, -5184
004dbc  9f038000  addli r7, zero, 64
004dc0  1b345400  slli r8, r8, 5
004dc4  9f840400  addli r9, r9, 0
004dc8  33050128  zext_int2long r[11:12], r2
004dcc  2b0600f0  lui r12, 983040
004dd0  17353502  sll.d r[11:12], r[11:12], r3
004dd4  1796c300  or r12, r7, r12
004dd8  0b25a210  add.ul r[11:12], r[5:6], r[11:12]
004ddc  7f266500  l_gm2lm r12, r6, 0(r[11:12])
004de0  1b352100  slli r10, r2, 2
004de4  0b112410  add.s r2, r8, r2
004de8  00a00200  mfence { lm, gm }
004dec  42000302  vload.mz vr0{mr1}, 0(r6)
004df0  0b159510  add.s r10, r10, r9
004df4  9f058500  addli r11, r10, 64
004df8  86300000  vfp162float_l.rn vr1, vr0
004dfc  06700000  vfp162float_h.rn vr0, vr0
004e00  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
004e04  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
004e08  3f0ff1fe  blt.s r2, r15, -64
004e0c  2bf10000  lui r2, 15
004e10  e3411f00  loadli.w r3,  12(r30)
004e14  00a00300  mfence { lm, sm, gm }
004e18  1b11f1ff  ori r2, r2, 4095
004e1c  80210104  csr_set csr3, r2
004e20  00d00100  sync_group
004e24  cbb6110c  ble.s r3, r1, 6572
004e28  63032f00  loadli.w r6,  16(r30)
004e2c  e3432f00  loadli.w r7,  20(r30)
004e30  9f0b8fd7  addli r23, r30, -5184
004e34  1f150000  addli r10, zero, 1
004e38  9f054000  addli r11, zero, 32
004e3c  1f767000  addli r12, zero, 63
004e40  1f080002  addli r16, zero, 256
004e44  9f080001  addli r17, zero, 128
004e48  1f098000  addli r18, zero, 64
004e4c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004e50  0b127310  add.s r4, r6, r7
004e54  33010308  fix2float.rn r2, r6
004e58  1b342300  slli r8, r6, 2
004e5c  9b321300  slli r5, r6, 1
004e60  9bb42300  slli r9, r7, 2
004e64  1f72f2ff  addli r4, r4, -1
004e68  670c2fd4  storeli.w r2, -5440(r30)
004e6c  1f014300  addli r2, r6, 32
004e70  0b137411  add.s r6, r8, r23
004e74  0b947211  add.s r8, r5, r23
004e78  e70b2fd4  storeli.w r2, -5448(r30)
004e7c  1f0183ff  addli r2, r6, -64
004e80  2bf3ffff  lui r6, 1048575
004e84  0b127230  div.s r4, r4, r7
004e88  670b2fd4  storeli.w r2, -5456(r30)
004e8c  1f0184ff  addli r2, r8, -64
004e90  9b16f3ff  ori r13, r6, 4095
004e94  2b830100  lui r6, 24
004e98  67042fd4  storeli.w r2, -5568(r30)
004e9c  1f010fd7  addli r2, r30, -5248
004ea0  1f030300  addli r6, r6, 0
004ea4  00a00000  mfence { lm }
004ea8  67045fd6  storeli.w r5, -5312(r30)
004eac  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004eb0  db060000  j 52
004eb4  eb530f00  load.d r[8:9], 0(r30)
004eb8  ab0900f0  lui r19, 983040
004ebc  9f0b8fd7  addli r23, r30, -5184
004ec0  005a0102  load_param_i r20, 2
004ec4  00a00000  mfence { lm }
004ec8  97993201  or r19, r5, r19
004ecc  8b101a10  add.s r1, r20, r1
004ed0  8ba35311  add.ul r[8:9], r[8:9], r[22:23]
004ed4  ffb97301  s_lm2gm r19, r23, 0(r[8:9])
004ed8  00a00200  mfence { lm, gm }
004edc  3fa02000  blt.s r1, r2, 8
004ee0  5b1e0300  j 6384
004ee4  63011f00  loadli.w r2,  8(r30)
004ee8  8b932010  add.s r7, r1, r2
004eec  8b93f320  mul.s r7, r7, r15
004ef0  b3930328  sext_int2long r[8:9], r7
004ef4  97baa302  sll.d r[22:23], r[8:9], r10
004ef8  1f047fd6  addli r8, r30, -5320
004efc  ab0300f0  lui r7, 983040
004f00  6b510400  load.d r[3:4], 0(r8)
004f04  97937200  or r7, r5, r7
004f08  8b295111  add.ul r[20:21], r[3:4], r[22:23]
004f0c  ffa37901  l_gm2lm r7, r23, 0(r[20:21])
004f10  00a00200  mfence { lm, gm }
004f14  bff0b700  blt.s r15, r11, 60
004f18  e3038fd4  loadli.w r7,  -5568(r30)
004f1c  63046fd5  loadli.w r8,  -5456(r30)
004f20  e3097fd5  loadli.w r19,  -5448(r30)
004f24  c2800302  vload.mz vr1{mr1}, 0(r7)
004f28  9f89c9ff  addli r19, r19, -32
004f2c  9f0b84ff  addli r23, r8, -64
004f30  9f8383ff  addli r7, r7, -64
004f34  130a3605  setlt.u r20, r12, r19
004f38  06f10000  vfp162float_h.rn vr2, vr1
004f3c  86b00000  vfp162float_l.rn vr1, vr1
004f40  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
004f44  1f0404ff  addli r8, r8, -128
004f48  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
004f4c  3b6f0afe  bneq r20, zero, -40
004f50  00a00000  mfence { lm }
004f54  bf17a200  blt.s r4, r10, 484
004f58  1f0c0000  addli r24, zero, 0
004f5c  9f0b0000  addli r23, zero, 0
004f60  9f0c0000  addli r25, zero, 0
004f64  db0c0000  j 100
004f68  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004f6c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004f70  9f9c0c00  addli r25, r25, 1
004f74  6a7108c0  vsrl.p vr2, r16, vr0
004f78  ea7118c0  vsrl.p vr3, r16, vr1
004f7c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f80  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f84  6af108c0  vsrl.p vr2, r17, vr0
004f88  eaf118c0  vsrl.p vr3, r17, vr1
004f8c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f90  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f94  6a7109c0  vsrl.p vr2, r18, vr0
004f98  ea7119c0  vsrl.p vr3, r18, vr1
004f9c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004fa0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004fa4  6af105c0  vsrl.p vr2, r11, vr0
004fa8  eaf115c0  vsrl.p vr3, r11, vr1
004fac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004fb0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004fb4  7a110040  vextracti.f r2, 0(vr0)
004fb8  fa910040  vextracti.f r3, 0(vr1)
004fbc  0b6c2c10  add.f.rn r24, r24, r2
004fc0  8beb3b10  add.f.rn r23, r23, r3
004fc4  b7f54c00  beq r25, r4, 380
004fc8  9f830c00  addli r7, r25, 0
004fcc  37300701  beq r14, r16, 12
004fd0  97a3dc00  xor r7, r25, r13
004fd4  8b137210  add.s r7, r4, r7
004fd8  1f010fd7  addli r2, r30, -5248
004fdc  0b94e320  mul.s r8, r7, r14
004fe0  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004fe4  0b948718  sub.s r8, r15, r8
004fe8  0b1de440  min.s r26, r8, r14
004fec  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004ff0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004ff4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004ff8  bf4dadfe  blt.s r26, r10, -144
004ffc  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
005000  9f0d0000  addli r27, zero, 0
005004  0b9e7420  mul.s r28, r9, r7
005008  9f098fd7  addli r19, r30, -5184
00500c  1f0a0300  addli r20, r6, 0
005010  92304002  vadd.s.mz vr1{mr1}, zero, vr4
005014  12314002  vadd.s.mz vr2{mr1}, zero, vr4
005018  92314002  vadd.s.mz vr3{mr1}, zero, vr4
00501c  0b14ca11  add.s r8, r20, r28
005020  8b93c911  add.s r7, r19, r28
005024  9f028400  addli r5, r8, 64
005028  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
00502c  9f018401  addli r3, r8, 192
005030  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
005034  1f818301  addli r2, r7, 192
005038  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
00503c  9f020401  addli r5, r8, 128
005040  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
005044  9f818300  addli r3, r7, 64
005048  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
00504c  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
005050  9f820301  addli r5, r7, 128
005054  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
005058  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
00505c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
005060  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
005064  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
005068  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
00506c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005070  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005074  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
005078  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
00507c  9f818d00  addli r3, r27, 64
005080  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005084  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
005088  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00508c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
005090  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005094  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
005098  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
00509c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0050a0  4b2b3dfe  ble.s r26, r3, -312
0050a4  9f010402  addli r3, r8, 256
0050a8  9f028402  addli r5, r8, 320
0050ac  1f810302  addli r2, r7, 256
0050b0  9f8d0d01  addli r27, r27, 128
0050b4  1f0a0a04  addli r20, r20, 512
0050b8  9f890904  addli r19, r19, 512
0050bc  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
0050c0  9f010403  addli r3, r8, 384
0050c4  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
0050c8  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
0050cc  9f828302  addli r5, r7, 320
0050d0  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
0050d4  9f018403  addli r3, r8, 448
0050d8  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
0050dc  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
0050e0  9f810303  addli r3, r7, 384
0050e4  9f838303  addli r7, r7, 448
0050e8  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
0050ec  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0050f0  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
0050f4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0050f8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0050fc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005100  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005104  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005108  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
00510c  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
005110  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
005114  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005118  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
00511c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005120  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005124  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
005128  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00512c  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
005130  bfbbadff  blt.s r27, r26, -276
005134  dbc6ffff  j -460
005138  9f0b0000  addli r23, zero, 0
00513c  1f0c0000  addli r24, zero, 0
005140  00a00000  mfence { lm }
005144  3fe2a700  blt.s r15, r10, 152
005148  63018fd5  loadli.w r2,  -5440(r30)
00514c  1f0a0000  addli r20, zero, 0
005150  0f042c18  div.f.rn r8, r24, r2
005154  8f832b18  div.f.rn r7, r23, r2
005158  63013f00  loadli.w r2,  24(r30)
00515c  8b698420  mul.f.rn r19, r8, r8
005160  0b640458  neg.f r8, r8
005164  8be33319  sub.f.rn r7, r7, r19
005168  9f098fd7  addli r19, r30, -5184
00516c  8be32310  add.f.rn r7, r7, r2
005170  2b01803f  lui r2, 260096
005174  8f830308  sqrt.f.rn r7, r7
005178  8f037118  div.f.rn r7, r2, r7
00517c  9f8b8900  addli r23, r19, 64
005180  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
005184  1f0c4a00  addli r24, r20, 32
005188  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
00518c  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
005190  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
005194  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
005198  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
00519c  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
0051a0  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
0051a4  cbe08701  ble.s r15, r24, 56
0051a8  9f8b0901  addli r23, r19, 128
0051ac  1f8c8901  addli r24, r19, 192
0051b0  1f0a8a00  addli r20, r20, 64
0051b4  9f890902  addli r19, r19, 256
0051b8  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
0051bc  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
0051c0  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
0051c4  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
0051c8  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
0051cc  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
0051d0  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
0051d4  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
0051d8  bf1efafe  blt.s r20, r15, -92
0051dc  00a00000  mfence { lm }
0051e0  63411f00  loadli.w r2,  12(r30)
0051e4  e3028fd6  loadli.w r5,  -5312(r30)
0051e8  3fb3a7fe  blt.s r15, r10, -820
0051ec  9f038fd7  addli r7, r30, -5184
0051f0  1f048fd7  addli r8, r30, -5184
0051f4  9f090000  addli r19, zero, 0
0051f8  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
0051fc  1f0a8400  addli r20, r8, 64
005200  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
005204  9f894900  addli r19, r19, 32
005208  1f040401  addli r8, r8, 128
00520c  42110a02  vload_mask16.mz vr2{mr1}, 0(r20)
005210  86910000  vfloat2fp16_l.rn vr3, vr1
005214  86510100  vfloat2fp16_h.rn vr3, vr2
005218  46803302  vstore.mz vr3{mr1}, 0(r7)
00521c  9f838300  addli r7, r7, 64
005220  3feff9fe  blt.s r19, r15, -40
005224  5b92ffff  j -880
005228  63012f00  loadli.w r2,  16(r30)
00522c  ab0100f0  lui r3, 983040
005230  1b311100  slli r2, r2, 1
005234  17113100  or r2, r2, r3
005238  aba10100  lui r3, 26
00523c  9f810100  addli r3, r3, 0
005240  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005244  5b080000  j 64
005248  63012f00  loadli.w r2,  16(r30)
00524c  ab0100f0  lui r3, 983040
005250  1b311100  slli r2, r2, 1
005254  17113100  or r2, r2, r3
005258  abe10100  lui r3, 30
00525c  9f810100  addli r3, r3, 0
005260  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005264  5bc30000  j 1560
005268  63012f00  loadli.w r2,  16(r30)
00526c  ab0100f0  lui r3, 983040
005270  1b311100  slli r2, r2, 1
005274  17113100  or r2, r2, r3
005278  abb10100  lui r3, 27
00527c  9f810100  addli r3, r3, 0
005280  7f013400  l_gm2sm r2, r3, 0(r[9:10])
005284  2bf10000  lui r2, 15
005288  e3411f00  loadli.w r3,  12(r30)
00528c  00200300  mfence { sm, gm }
005290  1b11f1ff  ori r2, r2, 4095
005294  80210104  csr_set csr3, r2
005298  00d00100  sync_group
00529c  cbd4110a  ble.s r3, r1, 5428
0052a0  63012f00  loadli.w r2,  16(r30)
0052a4  e3412f00  loadli.w r3,  20(r30)
0052a8  1f052000  addli r10, zero, 16
0052ac  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0052b0  1f130000  addli r6, zero, 1
0052b4  9f040002  addli r9, zero, 256
0052b8  2b06ffff  lui r12, 1048560
0052bc  2b08807f  lui r16, 522240
0052c0  ab08c07f  lui r17, 523264
0052c4  1f090001  addli r18, zero, 128
0052c8  9f098000  addli r19, zero, 64
0052cc  1f0a4000  addli r20, zero, 32
0052d0  9b351100  slli r11, r2, 1
0052d4  0b123110  add.s r4, r2, r3
0052d8  33010108  fix2float.rn r2, r2
0052dc  670b2fd4  storeli.w r2, -5456(r30)
0052e0  1f71f2ff  addli r2, r4, -1
0052e4  1bb21100  slli r4, r3, 1
0052e8  e70bbfd4  storeli.w r11, -5448(r30)
0052ec  8b123130  div.s r5, r2, r3
0052f0  2bf1ffff  lui r2, 1048575
0052f4  9f018fd7  addli r3, r30, -5184
0052f8  1b14f1ff  ori r8, r2, 4095
0052fc  1f010fd7  addli r2, r30, -5248
005300  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005304  6a200522  vor.u.mz vr0{mr1}, r10, vr0
005308  1f018fd6  addli r2, r30, -5312
00530c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005310  2b710000  lui r2, 7
005314  9b16f1ff  ori r13, r2, 4095
005318  db080000  j 68
00531c  9f018fd5  addli r3, r30, -5440
005320  00a00000  mfence { lm }
005324  eb5a0f00  load.d r[22:23], 0(r30)
005328  2b0100f0  lui r2, 983040
00532c  80530102  load_param_i r7, 2
005330  e3057fd5  loadli.w r11,  -5448(r30)
005334  ebdb0100  load.d r[24:25], 0(r3)
005338  9f018fd7  addli r3, r30, -5184
00533c  8b901310  add.s r1, r7, r1
005340  17912500  or r2, r11, r2
005344  8baa7a11  add.ul r[22:23], r[22:23], r[24:25]
005348  7fb13a00  s_lm2gm r2, r3, 0(r[22:23])
00534c  00a00200  mfence { lm, gm }
005350  63411f00  loadli.w r2,  12(r30)
005354  3fa02000  blt.s r1, r2, 8
005358  5b8f0200  j 5240
00535c  63011f00  loadli.w r2,  8(r30)
005360  9f037fd6  addli r7, r30, -5320
005364  0b912010  add.s r2, r1, r2
005368  0b11f120  mul.s r2, r2, r15
00536c  b31a0128  sext_int2long r[22:23], r2
005370  2b0100f0  lui r2, 983040
005374  97bb6a02  sll.d r[24:25], r[22:23], r6
005378  ebda0300  load.d r[22:23], 0(r7)
00537c  17912500  or r2, r11, r2
005380  9f038fd5  addli r7, r30, -5440
005384  73b07301  store.d r[24:25], 0(r7)
005388  8baa7a11  add.ul r[22:23], r[22:23], r[24:25]
00538c  7fa13a00  l_gm2lm r2, r3, 0(r[22:23])
005390  00a00200  mfence { lm, gm }
005394  bfdc6200  blt.s r5, r6, 820
005398  9f0d0000  addli r27, zero, 0
00539c  1f0d0000  addli r26, zero, 0
0053a0  1f0e0000  addli r28, zero, 0
0053a4  db0c0000  j 100
0053a8  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0053ac  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0053b0  1f1e0e00  addli r28, r28, 1
0053b4  6af104c0  vsrl.p vr2, r9, vr0
0053b8  eaf114c0  vsrl.p vr3, r9, vr1
0053bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0053c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0053c4  6a7109c0  vsrl.p vr2, r18, vr0
0053c8  ea7119c0  vsrl.p vr3, r18, vr1
0053cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0053d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0053d4  6af109c0  vsrl.p vr2, r19, vr0
0053d8  eaf119c0  vsrl.p vr3, r19, vr1
0053dc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0053e0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0053e4  6a710ac0  vsrl.p vr2, r20, vr0
0053e8  ea711ac0  vsrl.p vr3, r20, vr1
0053ec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0053f0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0053f4  7a110040  vextracti.f r2, 0(vr0)
0053f8  fa910040  vextracti.f r3, 0(vr1)
0053fc  8bed2d10  add.f.rn r27, r27, r2
005400  0b6d3d10  add.f.rn r26, r26, r3
005404  373b5e00  beq r28, r5, 716
005408  1f010e00  addli r2, r28, 0
00540c  37309700  beq r14, r9, 12
005410  17218e00  xor r2, r28, r8
005414  0b912210  add.s r2, r5, r2
005418  9f010fd7  addli r3, r30, -5248
00541c  8b13e120  mul.s r7, r2, r14
005420  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
005424  8b937718  sub.s r7, r15, r7
005428  8b9ae340  min.s r21, r7, r14
00542c  92322002  vadd.s.mz vr5{mr1}, zero, vr2
005430  12322002  vadd.s.mz vr4{mr1}, zero, vr2
005434  92312002  vadd.s.mz vr3{mr1}, zero, vr2
005438  bfcd6afe  blt.s r21, r6, -144
00543c  8b1b2220  mul.s r23, r4, r2
005440  1f010fd7  addli r2, r30, -5248
005444  ab950100  lui r11, 25
005448  1f0b0000  addli r22, zero, 0
00544c  9f038fd7  addli r7, r30, -5184
005450  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
005454  9f850500  addli r11, r11, 0
005458  12315002  vadd.s.mz vr2{mr1}, zero, vr5
00545c  92315002  vadd.s.mz vr3{mr1}, zero, vr5
005460  12325002  vadd.s.mz vr4{mr1}, zero, vr5
005464  0b9c7511  add.s r24, r11, r23
005468  0b917311  add.s r2, r7, r23
00546c  9f018fd6  addli r3, r30, -5312
005470  4a030c02  vloads.mz vr6{mr1}, 0(r24)
005474  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
005478  c2030102  vload.mz vr7{mr1}, 0(r2)
00547c  9f010fd7  addli r3, r30, -5248
005480  9f0c8c00  addli r25, r24, 64
005484  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
005488  9f018b00  addli r3, r22, 64
00548c  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
005490  6a357602  vand.s.mz vr10{mr1}, r12, vr7
005494  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
005498  6a336602  vand.s.mz vr6{mr1}, r12, vr6
00549c  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0054a0  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0054a4  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0054a8  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0054ac  669503c0  vabs.f vr10, vr7
0054b0  6a348302  vand.s.mz vr8{mr1}, r6, vr8
0054b4  ea349302  vand.s.mz vr9{mr1}, r6, vr9
0054b8  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
0054bc  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
0054c0  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
0054c4  12b48602  vadd.s.mz vr8{mr1}, r13, vr8
0054c8  92b49602  vadd.s.mz vr9{mr1}, r13, vr9
0054cc  ea338602  vand.s.mz vr7{mr1}, r12, vr8
0054d0  661403c0  vabs.f vr8, vr6
0054d4  6a339602  vand.s.mz vr6{mr1}, r12, vr9
0054d8  eaa30834  vor.u.mh vr7{mr2}, r17, vr0
0054dc  72218842  vlt.u.mz mr2{mr1}, r16, vr8
0054e0  6aa30834  vor.u.mh vr6{mr2}, r17, vr0
0054e4  4a840c02  vloads.mz vr8{mr1}, 0(r25)
0054e8  9f0c8100  addli r25, r2, 64
0054ec  c2840c02  vload.mz vr9{mr1}, 0(r25)
0054f0  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
0054f4  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
0054f8  6a336602  vand.s.mz vr6{mr1}, r12, vr6
0054fc  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
005500  ea349602  vand.s.mz vr9{mr1}, r12, vr9
005504  46007102  vstore.mz vr7{mr1}, 0(r2)
005508  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
00550c  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005510  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
005514  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
005518  6a348602  vand.s.mz vr8{mr1}, r12, vr8
00551c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005520  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005524  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
005528  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
00552c  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
005530  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
005534  ea349302  vand.s.mz vr9{mr1}, r6, vr9
005538  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
00553c  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
005540  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
005544  661505c0  vabs.f vr10, vr10
005548  661404c0  vabs.f vr8, vr8
00554c  92b49602  vadd.s.mz vr9{mr1}, r13, vr9
005550  92b5b602  vadd.s.mz vr11{mr1}, r13, vr11
005554  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
005558  ea349602  vand.s.mz vr9{mr1}, r12, vr9
00555c  6a35b602  vand.s.mz vr10{mr1}, r12, vr11
005560  eaa40834  vor.u.mh vr9{mr2}, r17, vr0
005564  72218842  vlt.u.mz mr2{mr1}, r16, vr8
005568  6aa50834  vor.u.mh vr10{mr2}, r17, vr0
00556c  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
005570  ea34a602  vand.s.mz vr9{mr1}, r12, vr10
005574  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
005578  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
00557c  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
005580  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
005584  46808c02  vstore.mz vr8{mr1}, 0(r25)
005588  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
00558c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005590  4be83afe  ble.s r21, r3, -488
005594  9f010c01  addli r3, r24, 128
005598  9f0c0101  addli r25, r2, 128
00559c  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0055a0  1f018101  addli r2, r2, 192
0055a4  1f0b0b01  addli r22, r22, 128
0055a8  9f850502  addli r11, r11, 256
0055ac  9f830302  addli r7, r7, 256
0055b0  6a237522  vor.u.mz vr6{mr1}, r10, vr7
0055b4  4a840102  vloads.mz vr8{mr1}, 0(r3)
0055b8  c2840c02  vload.mz vr9{mr1}, 0(r25)
0055bc  9f018c01  addli r3, r24, 192
0055c0  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
0055c4  6a309602  vand.s.mz vr0{mr1}, r12, vr9
0055c8  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
0055cc  6a348602  vand.s.mz vr8{mr1}, r12, vr8
0055d0  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
0055d4  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
0055d8  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
0055dc  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
0055e0  e69504c0  vabs.f vr11, vr9
0055e4  6a300302  vand.s.mz vr0{mr1}, r6, vr0
0055e8  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
0055ec  7221b842  vlt.u.mz mr2{mr1}, r16, vr11
0055f0  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
0055f4  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
0055f8  12b00602  vadd.s.mz vr0{mr1}, r13, vr0
0055fc  12b5a602  vadd.s.mz vr10{mr1}, r13, vr10
005600  ea340602  vand.s.mz vr9{mr1}, r12, vr0
005604  661004c0  vabs.f vr0, vr8
005608  6a34a602  vand.s.mz vr8{mr1}, r12, vr10
00560c  eaa47834  vor.u.mh vr9{mr2}, r17, vr7
005610  72210842  vlt.u.mz mr2{mr1}, r16, vr0
005614  6aa47834  vor.u.mh vr8{mr2}, r17, vr7
005618  4a800102  vloads.mz vr0{mr1}, 0(r3)
00561c  42050102  vload.mz vr10{mr1}, 0(r2)
005620  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
005624  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
005628  6a35a602  vand.s.mz vr10{mr1}, r12, vr10
00562c  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
005630  6a348602  vand.s.mz vr8{mr1}, r12, vr8
005634  46809c02  vstore.mz vr9{mr1}, 0(r25)
005638  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
00563c  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
005640  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
005644  6a300602  vand.s.mz vr0{mr1}, r12, vr0
005648  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
00564c  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
005650  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
005654  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
005658  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
00565c  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
005660  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
005664  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
005668  e69000c0  vabs.f vr1, vr1
00566c  661000c0  vabs.f vr0, vr0
005670  12b5a602  vadd.s.mz vr10{mr1}, r13, vr10
005674  92b5b602  vadd.s.mz vr11{mr1}, r13, vr11
005678  72211842  vlt.u.mz mr2{mr1}, r16, vr1
00567c  6a35a602  vand.s.mz vr10{mr1}, r12, vr10
005680  ea30b602  vand.s.mz vr1{mr1}, r12, vr11
005684  6aa57834  vor.u.mh vr10{mr2}, r17, vr7
005688  72210842  vlt.u.mz mr2{mr1}, r16, vr0
00568c  eaa07834  vor.u.mh vr1{mr2}, r17, vr7
005690  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
005694  ea331602  vand.s.mz vr7{mr1}, r12, vr1
005698  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
00569c  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
0056a0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0056a4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0056a8  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
0056ac  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
0056b0  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
0056b4  46000102  vstore.mz vr0{mr1}, 0(r2)
0056b8  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0056bc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0056c0  bf165bff  blt.s r22, r21, -604
0056c4  db9cffff  j -796
0056c8  1f0d0000  addli r26, zero, 0
0056cc  9f0d0000  addli r27, zero, 0
0056d0  00a00000  mfence { lm }
0056d4  3fa167fe  blt.s r15, r6, -952
0056d8  e3016fd5  loadli.w r3,  -5456(r30)
0056dc  2bab0100  lui r22, 26
0056e0  abbb0100  lui r23, 27
0056e4  1f010000  addli r2, zero, 0
0056e8  1f0b0b00  addli r22, r22, 0
0056ec  9f8b0b00  addli r23, r23, 0
0056f0  8f853d18  div.f.rn r11, r27, r3
0056f4  8f033d18  div.f.rn r7, r26, r3
0056f8  e3013f00  loadli.w r3,  24(r30)
0056fc  8beab520  mul.f.rn r21, r11, r11
005700  8be50558  neg.f r11, r11
005704  8be35319  sub.f.rn r7, r7, r21
005708  9f0a8fd7  addli r21, r30, -5184
00570c  8be33310  add.f.rn r7, r7, r3
005710  ab01803f  lui r3, 260096
005714  8f830308  sqrt.f.rn r7, r7
005718  8f837118  div.f.rn r7, r3, r7
00571c  42820a02  vload.mz vr4{mr1}, 0(r21)
005720  ca020b02  vloads.mz vr5{mr1}, 0(r22)
005724  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
005728  4a830b02  vloads.mz vr6{mr1}, 0(r23)
00572c  1f0c4100  addli r24, r2, 32
005730  ea212522  vor.u.mz vr3{mr1}, r10, vr2
005734  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
005738  6a344602  vand.s.mz vr8{mr1}, r12, vr4
00573c  92937502  vadd.f.mz.rn vr7{mr1}, r11, vr7
005740  12948502  vadd.f.mz.rn vr8{mr1}, r11, vr8
005744  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
005748  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
00574c  6a355602  vand.s.mz vr10{mr1}, r12, vr5
005750  ea326602  vand.s.mz vr5{mr1}, r12, vr6
005754  8a937302  vmul.f.mz.rn vr7{mr1}, r7, vr7
005758  0a938302  vmul.f.mz.rn vr6{mr1}, r7, vr8
00575c  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
005760  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
005764  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
005768  6a337302  vand.s.mz vr6{mr1}, r6, vr7
00576c  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
005770  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
005774  ea337302  vand.s.mz vr7{mr1}, r6, vr7
005778  661202c0  vabs.f vr4, vr4
00577c  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
005780  12b36602  vadd.s.mz vr6{mr1}, r13, vr6
005784  e69202c0  vabs.f vr5, vr5
005788  72214842  vlt.u.mz mr2{mr1}, r16, vr4
00578c  6a336602  vand.s.mz vr6{mr1}, r12, vr6
005790  92b37602  vadd.s.mz vr7{mr1}, r13, vr7
005794  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
005798  6a327602  vand.s.mz vr4{mr1}, r12, vr7
00579c  72215842  vlt.u.mz mr2{mr1}, r16, vr5
0057a0  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
0057a4  6aa22834  vor.u.mh vr4{mr2}, r17, vr2
0057a8  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
0057ac  46804a02  vstore.mz vr4{mr1}, 0(r21)
0057b0  cbbd87fd  ble.s r15, r24, -1172
0057b4  1f0c8b00  addli r24, r22, 64
0057b8  9f8c8a00  addli r25, r21, 64
0057bc  1f018100  addli r2, r2, 64
0057c0  1f0b0b01  addli r22, r22, 128
0057c4  9f8a0a01  addli r21, r21, 128
0057c8  4a020c02  vloads.mz vr4{mr1}, 0(r24)
0057cc  1f8c8b00  addli r24, r23, 64
0057d0  c2820c02  vload.mz vr5{mr1}, 0(r25)
0057d4  9f8b0b01  addli r23, r23, 128
0057d8  4a030c02  vloads.mz vr6{mr1}, 0(r24)
0057dc  eeb351a2  vsll.s.mz vr7{mr1}, vr3, vr5
0057e0  ea325602  vand.s.mz vr5{mr1}, r12, vr5
0057e4  92937502  vadd.f.mz.rn vr7{mr1}, r11, vr7
0057e8  12945502  vadd.f.mz.rn vr8{mr1}, r11, vr5
0057ec  eeb441a2  vsll.s.mz vr9{mr1}, vr3, vr4
0057f0  6a354602  vand.s.mz vr10{mr1}, r12, vr4
0057f4  8a937302  vmul.f.mz.rn vr7{mr1}, r7, vr7
0057f8  eeb261a2  vsll.s.mz vr5{mr1}, vr3, vr6
0057fc  6a326602  vand.s.mz vr4{mr1}, r12, vr6
005800  0a938302  vmul.f.mz.rn vr6{mr1}, r7, vr8
005804  a6929302  vmac.f.mz.rn vr5{mr1}, vr7, vr9
005808  2612a302  vmac.f.mz.rn vr4{mr1}, vr6, vr10
00580c  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
005810  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
005814  6a336302  vand.s.mz vr6{mr1}, r6, vr6
005818  ea337302  vand.s.mz vr7{mr1}, r6, vr7
00581c  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
005820  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
005824  e69202c0  vabs.f vr5, vr5
005828  661202c0  vabs.f vr4, vr4
00582c  12b36602  vadd.s.mz vr6{mr1}, r13, vr6
005830  92b37602  vadd.s.mz vr7{mr1}, r13, vr7
005834  72215842  vlt.u.mz mr2{mr1}, r16, vr5
005838  6a336602  vand.s.mz vr6{mr1}, r12, vr6
00583c  ea327602  vand.s.mz vr5{mr1}, r12, vr7
005840  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
005844  72214842  vlt.u.mz mr2{mr1}, r16, vr4
005848  eaa22834  vor.u.mh vr5{mr2}, r17, vr2
00584c  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
005850  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
005854  46802c02  vstore.mz vr2{mr1}, 0(r25)
005858  3f1bf1fe  blt.s r2, r15, -316
00585c  5b58ffff  j -1344
005860  63012f00  loadli.w r2,  16(r30)
005864  ab0100f0  lui r3, 983040
005868  1b311100  slli r2, r2, 1
00586c  17113100  or r2, r2, r3
005870  abf10100  lui r3, 31
005874  9f810100  addli r3, r3, 0
005878  7f013400  l_gm2sm r2, r3, 0(r[9:10])
00587c  2bf10000  lui r2, 15
005880  e3411f00  loadli.w r3,  12(r30)
005884  00200300  mfence { sm, gm }
005888  1b11f1ff  ori r2, r2, 4095
00588c  80210104  csr_set csr3, r2
005890  00d00100  sync_group
005894  cbfc1106  ble.s r3, r1, 3900
005898  e3012f00  loadli.w r3,  16(r30)
00589c  e3422f00  loadli.w r5,  20(r30)
0058a0  2bf4ffff  lui r8, 1048575
0058a4  2bd50100  lui r10, 29
0058a8  9f0b8fd7  addli r23, r30, -5184
0058ac  9f040002  addli r9, zero, 256
0058b0  9f050001  addli r11, zero, 128
0058b4  1f068000  addli r12, zero, 64
0058b8  9f064000  addli r13, zero, 32
0058bc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0058c0  1b14f4ff  ori r8, r8, 4095
0058c4  1f050500  addli r10, r10, 0
0058c8  0b925110  add.s r4, r3, r5
0058cc  1bb11100  slli r2, r3, 1
0058d0  b3810108  fix2float.rn r3, r3
0058d4  1f73f2ff  addli r6, r4, -1
0058d8  1bb21200  slli r4, r5, 1
0058dc  8b125330  div.s r5, r6, r5
0058e0  1f130000  addli r6, zero, 1
0058e4  5b070000  j 56
0058e8  00a00000  mfence { lm }
0058ec  eb580f00  load.d r[18:19], 0(r30)
0058f0  2b0800f0  lui r16, 983040
0058f4  9f0b8fd7  addli r23, r30, -5184
0058f8  17180101  or r16, r2, r16
0058fc  8ba93811  add.ul r[20:21], r[18:19], r[20:21]
005900  80580102  load_param_i r17, 2
005904  7fb87901  s_lm2gm r16, r23, 0(r[20:21])
005908  8b901810  add.s r1, r17, r1
00590c  00a00200  mfence { lm, gm }
005910  e3431f00  loadli.w r7,  12(r30)
005914  3fa07000  blt.s r1, r7, 8
005918  5bd70100  j 3768
00591c  e3031f00  loadli.w r7,  8(r30)
005920  0b987010  add.s r16, r1, r7
005924  9f037fd6  addli r7, r30, -5320
005928  0b18f820  mul.s r16, r16, r15
00592c  33180828  sext_int2long r[17:18], r16
005930  97396802  sll.d r[20:21], r[17:18], r6
005934  ebd80300  load.d r[18:19], 0(r7)
005938  2b0800f0  lui r16, 983040
00593c  17180101  or r16, r2, r16
005940  8baa3811  add.ul r[22:23], r[18:19], r[20:21]
005944  7fa87a01  l_gm2lm r16, r23, 0(r[22:23])
005948  00a00200  mfence { lm, gm }
00594c  3fc76200  blt.s r5, r6, 464
005950  1f0b0000  addli r22, zero, 0
005954  9f0a0000  addli r21, zero, 0
005958  9f0b0000  addli r23, zero, 0
00595c  db0c0000  j 100
005960  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
005964  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005968  9f9b0b00  addli r23, r23, 1
00596c  6af134c0  vsrl.p vr2, r9, vr3
005970  6af214c0  vsrl.p vr4, r9, vr1
005974  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
005978  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00597c  eaf125c0  vsrl.p vr3, r11, vr2
005980  6af215c0  vsrl.p vr4, r11, vr1
005984  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
005988  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00598c  ea7126c0  vsrl.p vr3, r12, vr2
005990  6a7216c0  vsrl.p vr4, r12, vr1
005994  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
005998  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00599c  eaf126c0  vsrl.p vr3, r13, vr2
0059a0  6af216c0  vsrl.p vr4, r13, vr1
0059a4  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0059a8  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0059ac  fa130140  vextracti.f r7, 0(vr2)
0059b0  7a980040  vextracti.f r16, 0(vr1)
0059b4  0b6b7b10  add.f.rn r22, r22, r7
0059b8  8bea0a11  add.f.rn r21, r21, r16
0059bc  b7a55b00  beq r23, r5, 360
0059c0  1f880b00  addli r16, r23, 0
0059c4  37309700  beq r14, r9, 12
0059c8  17a88b00  xor r16, r23, r8
0059cc  0b980211  add.s r16, r5, r16
0059d0  8b18e820  mul.s r17, r16, r14
0059d4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0059d8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0059dc  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0059e0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0059e4  8b981719  sub.s r17, r15, r17
0059e8  0b9ce840  min.s r24, r17, r14
0059ec  bf5d6cfe  blt.s r24, r6, -140
0059f0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0059f4  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0059f8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0059fc  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005a00  9f0c0000  addli r25, zero, 0
005a04  0b1d0221  mul.s r26, r4, r16
005a08  9f0d8fd7  addli r27, r30, -5184
005a0c  1f0e0500  addli r28, r10, 0
005a10  0b18ae11  add.s r16, r28, r26
005a14  9f838c00  addli r7, r25, 64
005a18  ca020802  vloads.mz vr5{mr1}, 0(r16)
005a1c  9f088800  addli r17, r16, 64
005a20  4a830802  vloads.mz vr6{mr1}, 0(r17)
005a24  8b98ad11  add.s r17, r27, r26
005a28  c2830802  vload.mz vr7{mr1}, 0(r17)
005a2c  1f898800  addli r18, r17, 64
005a30  42040902  vload.mz vr8{mr1}, 0(r18)
005a34  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
005a38  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005a3c  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
005a40  06b40300  vfp162float_l.rn vr8, vr7
005a44  86f30300  vfp162float_h.rn vr7, vr7
005a48  86340300  vfp162float_l.rn vr9, vr6
005a4c  06730300  vfp162float_h.rn vr6, vr6
005a50  86120400  vfloat2fp16_l.rn vr5, vr8
005a54  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
005a58  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
005a5c  12340002  vadd.s.mz vr8{mr1}, zero, vr0
005a60  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005a64  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005a68  06940400  vfloat2fp16_l.rn vr8, vr9
005a6c  86d20300  vfloat2fp16_h.rn vr5, vr7
005a70  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005a74  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005a78  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
005a7c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005a80  06540300  vfloat2fp16_h.rn vr8, vr6
005a84  46805802  vstore.mz vr5{mr1}, 0(r17)
005a88  46008902  vstore.mz vr8{mr1}, 0(r18)
005a8c  4b5b7cfe  ble.s r24, r7, -300
005a90  9f030801  addli r7, r16, 128
005a94  9f8c0c01  addli r25, r25, 128
005a98  1f0e0e02  addli r28, r28, 256
005a9c  9f8d0d02  addli r27, r27, 256
005aa0  ca820302  vloads.mz vr5{mr1}, 0(r7)
005aa4  9f038801  addli r7, r16, 192
005aa8  1f880801  addli r16, r17, 128
005aac  4a830302  vloads.mz vr6{mr1}, 0(r7)
005ab0  c2030802  vload.mz vr7{mr1}, 0(r16)
005ab4  9f838801  addli r7, r17, 192
005ab8  42840302  vload.mz vr8{mr1}, 0(r7)
005abc  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
005ac0  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005ac4  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
005ac8  12330002  vadd.s.mz vr6{mr1}, zero, vr0
005acc  86b40300  vfp162float_l.rn vr9, vr7
005ad0  86f30300  vfp162float_h.rn vr7, vr7
005ad4  86920400  vfloat2fp16_l.rn vr5, vr9
005ad8  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
005adc  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
005ae0  86340400  vfp162float_l.rn vr9, vr8
005ae4  06740400  vfp162float_h.rn vr8, vr8
005ae8  06930400  vfloat2fp16_l.rn vr6, vr9
005aec  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005af0  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005af4  86d20300  vfloat2fp16_h.rn vr5, vr7
005af8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005afc  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005b00  06530400  vfloat2fp16_h.rn vr6, vr8
005b04  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
005b08  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005b0c  46005802  vstore.mz vr5{mr1}, 0(r16)
005b10  46806302  vstore.mz vr6{mr1}, 0(r7)
005b14  bffb8cff  blt.s r25, r24, -260
005b18  5bc9ffff  j -440
005b1c  9f0a0000  addli r21, zero, 0
005b20  1f0b0000  addli r22, zero, 0
005b24  00a00000  mfence { lm }
005b28  3f8767fe  blt.s r15, r6, -576
005b2c  0f083b18  div.f.rn r16, r22, r3
005b30  8f883a18  div.f.rn r17, r21, r3
005b34  e3033f00  loadli.w r7,  24(r30)
005b38  abec0100  lui r25, 30
005b3c  2bfd0100  lui r26, 31
005b40  9f0b0000  addli r23, zero, 0
005b44  1f0c8fd7  addli r24, r30, -5184
005b48  9f8c0c00  addli r25, r25, 0
005b4c  1f0d0d00  addli r26, r26, 0
005b50  8b6a0821  mul.f.rn r21, r16, r16
005b54  0b6b0858  neg.f r22, r16
005b58  8be85819  sub.f.rn r17, r17, r21
005b5c  8be87810  add.f.rn r17, r17, r7
005b60  ab03803f  lui r7, 260096
005b64  8f880808  sqrt.f.rn r17, r17
005b68  8f8a1319  div.f.rn r21, r7, r17
005b6c  c2000c02  vload.mz vr1{mr1}, 0(r24)
005b70  4a810c02  vloads.mz vr2{mr1}, 0(r25)
005b74  ca010d02  vloads.mz vr3{mr1}, 0(r26)
005b78  1f884b00  addli r16, r23, 32
005b7c  06b20000  vfp162float_l.rn vr4, vr1
005b80  86f00000  vfp162float_h.rn vr1, vr1
005b84  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
005b88  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
005b8c  86320100  vfp162float_l.rn vr5, vr2
005b90  06b30100  vfp162float_l.rn vr6, vr3
005b94  06710100  vfp162float_h.rn vr2, vr2
005b98  86f10100  vfp162float_h.rn vr3, vr3
005b9c  8a931a02  vmul.f.mz.rn vr7{mr1}, r21, vr1
005ba0  0a924a02  vmul.f.mz.rn vr4{mr1}, r21, vr4
005ba4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005ba8  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
005bac  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
005bb0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005bb4  06110300  vfloat2fp16_l.rn vr2, vr6
005bb8  06d10100  vfloat2fp16_h.rn vr2, vr3
005bbc  46002c02  vstore.mz vr2{mr1}, 0(r24)
005bc0  cba407ff  ble.s r15, r16, -728
005bc4  1f888c00  addli r16, r25, 64
005bc8  9f088c00  addli r17, r24, 64
005bcc  9f8b8b00  addli r23, r23, 64
005bd0  9f8c0c01  addli r25, r25, 128
005bd4  1f0c0c01  addli r24, r24, 128
005bd8  4a010802  vloads.mz vr2{mr1}, 0(r16)
005bdc  1f088d00  addli r16, r26, 64
005be0  c2810802  vload.mz vr3{mr1}, 0(r17)
005be4  1f0d0d01  addli r26, r26, 128
005be8  4a020802  vloads.mz vr4{mr1}, 0(r16)
005bec  86b20100  vfp162float_l.rn vr5, vr3
005bf0  86f10100  vfp162float_h.rn vr3, vr3
005bf4  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
005bf8  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
005bfc  06330100  vfp162float_l.rn vr6, vr2
005c00  06710100  vfp162float_h.rn vr2, vr2
005c04  8a925a02  vmul.f.mz.rn vr5{mr1}, r21, vr5
005c08  8a913a02  vmul.f.mz.rn vr3{mr1}, r21, vr3
005c0c  86330200  vfp162float_l.rn vr7, vr4
005c10  06720200  vfp162float_h.rn vr4, vr4
005c14  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
005c18  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
005c1c  86900300  vfloat2fp16_l.rn vr1, vr7
005c20  86500200  vfloat2fp16_h.rn vr1, vr4
005c24  46801802  vstore.mz vr1{mr1}, 0(r17)
005c28  3f9dfbfe  blt.s r23, r15, -188
005c2c  db97ffff  j -836
005c30  9f000040  addli r1, zero, 8192
005c34  2b0100f0  lui r2, 983040
005c38  97902000  or r1, r1, r2
005c3c  2b310200  lui r2, 35
005c40  1f010100  addli r2, r2, 0
005c44  ff002300  l_gm2sm r1, r2, 0(r[7:8])
005c48  db070000  j 60
005c4c  63012f00  loadli.w r2,  16(r30)
005c50  ab0100f0  lui r3, 983040
005c54  1b312100  slli r2, r2, 2
005c58  17113100  or r2, r2, r3
005c5c  ab810200  lui r3, 40
005c60  9f810108  addli r3, r3, 1024
005c64  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005c68  dbef0000  j 1916
005c6c  9f000040  addli r1, zero, 8192
005c70  2b0100f0  lui r2, 983040
005c74  97902000  or r1, r1, r2
005c78  2b510200  lui r2, 37
005c7c  1f010100  addli r2, r2, 0
005c80  ff002400  l_gm2sm r1, r2, 0(r[9:10])
005c84  abf00000  lui r1, 15
005c88  00200300  mfence { sm, gm }
005c8c  1b011500  andi r2, r10, 1
005c90  9f010006  addli r3, zero, 768
005c94  9b90f0ff  ori r1, r1, 4095
005c98  80a10004  csr_set csr3, r1
005c9c  9f000006  addli r1, zero, 768
005ca0  00d00100  sync_group
005ca4  67082fd6  storeli.w r2, -5248(r30)
005ca8  37200100  beq r2, zero, 8
005cac  9f01000a  addli r3, zero, 1280
005cb0  63421f00  loadli.w r4,  12(r30)
005cb4  9f120000  addli r5, zero, 1
005cb8  3f6c5204  blt.s r4, r5, 2840
005cbc  63010fd7  loadli.w r2,  -5248(r30)
005cc0  80520102  load_param_i r5, 2
005cc4  9b431500  srli r7, r10, 1
005cc8  ab170200  lui r15, 33
005ccc  ab7a0200  lui r21, 39
005cd0  2b7d0200  lui r26, 39
005cd4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005cd8  1f020000  addli r4, zero, 0
005cdc  1bb42100  slli r8, r3, 2
005ce0  1f068fd7  addli r12, r30, -5184
005ce4  1f080005  addli r16, zero, 640
005ce8  1f090001  addli r18, zero, 128
005cec  9f098000  addli r19, zero, 64
005cf0  1f0a4000  addli r20, zero, 32
005cf4  1bc31200  srli r6, r5, 1
005cf8  ab320200  lui r5, 35
005cfc  9f870700  addli r15, r15, 0
005d00  9f8a0a00  addli r21, r21, 0
005d04  1f0d0d04  addli r26, r26, 512
005d08  8b101120  mul.s r1, r2, r1
005d0c  1f018fd5  addli r2, r30, -5440
005d10  9f820200  addli r5, r5, 0
005d14  67041fd6  storeli.w r1, -5312(r30)
005d18  9bb02000  slli r1, r1, 2
005d1c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005d20  1f810c00  addli r2, r25, 0
005d24  9f0c0003  addli r25, zero, 384
005d28  8b945010  add.s r9, r1, r5
005d2c  ab520200  lui r5, 37
005d30  9f820200  addli r5, r5, 0
005d34  0b955010  add.s r10, r1, r5
005d38  abf0ffff  lui r1, 1048575
005d3c  9b9000f8  ori r1, r1, 3968
005d40  e70b1fd4  storeli.w r1, -5448(r30)
005d44  abf00000  lui r1, 15
005d48  1b9bf0ff  ori r22, r1, 4095
005d4c  5b040000  j 32
005d50  00a00300  mfence { lm, sm, gm }
005d54  80210b04  csr_set csr3, r22
005d58  00d00100  sync_group
005d5c  63411f00  loadli.w r2,  12(r30)
005d60  0b126210  add.s r4, r4, r6
005d64  3f202200  blt.s r4, r2, 8
005d68  5be7f5ff  j -20680
005d6c  8b107210  add.s r1, r4, r7
005d70  cb0f11fe  ble.s r2, r1, -32
005d74  63011f00  loadli.w r2,  8(r30)
005d78  8b902010  add.s r1, r1, r2
005d7c  63018fd6  loadli.w r2,  -5312(r30)
005d80  9bb0b000  slli r1, r1, 11
005d84  97902000  or r1, r1, r2
005d88  1f017fd6  addli r2, r30, -5320
005d8c  b3960028  sext_int2long r[14:15], r1
005d90  9f200000  addli r1, zero, 2
005d94  97bd1602  sll.d r[28:29], r[14:15], r1
005d98  eb560100  load.d r[14:15], 0(r2)
005d9c  ab0000f0  lui r1, 983040
005da0  97101400  or r1, r8, r1
005da4  8ba6b611  add.ul r[14:15], r[14:15], r[28:29]
005da8  ffa0c600  l_gm2lm r1, r12, 0(r[14:15])
005dac  00a00200  mfence { lm, gm }
005db0  e3000fd7  loadli.w r1,  -5248(r30)
005db4  3ba60000  bneq r1, zero, 392
005db8  9f008fd5  addli r1, r30, -5440
005dbc  e3067fd5  loadli.w r13,  -5448(r30)
005dc0  9f050000  addli r11, zero, 0
005dc4  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
005dc8  92303002  vadd.s.mz vr1{mr1}, zero, vr3
005dcc  12313002  vadd.s.mz vr2{mr1}, zero, vr3
005dd0  12323002  vadd.s.mz vr4{mr1}, zero, vr3
005dd4  0b97f510  add.s r14, r11, r15
005dd8  8b10b610  add.s r1, r12, r11
005ddc  9f860601  addli r13, r13, 128
005de0  9f850504  addli r11, r11, 512
005de4  1f010701  addli r2, r14, 128
005de8  4a100702  vloads_mask16.mz vr0{mr1}, 0(r14)
005dec  9f028700  addli r5, r14, 64
005df0  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
005df4  9f888001  addli r17, r1, 192
005df8  ca120102  vloads_mask16.mz vr5{mr1}, 0(r2)
005dfc  1f018701  addli r2, r14, 192
005e00  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
005e04  9f828000  addli r5, r1, 64
005e08  c2950802  vload_mask16.mz vr11{mr1}, 0(r17)
005e0c  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
005e10  1f810001  addli r2, r1, 128
005e14  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
005e18  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
005e1c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005e20  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
005e24  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005e28  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005e2c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005e30  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
005e34  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
005e38  1f010702  addli r2, r14, 256
005e3c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005e40  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
005e44  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
005e48  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
005e4c  9f820003  addli r5, r1, 384
005e50  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
005e54  1f018702  addli r2, r14, 320
005e58  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
005e5c  9f880002  addli r17, r1, 256
005e60  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005e64  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
005e68  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005e6c  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
005e70  1f010703  addli r2, r14, 384
005e74  c2930802  vload_mask16.mz vr7{mr1}, 0(r17)
005e78  1f078703  addli r14, r14, 448
005e7c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005e80  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
005e84  1f818002  addli r2, r1, 320
005e88  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
005e8c  9f808003  addli r1, r1, 448
005e90  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
005e94  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005e98  c2930202  vload_mask16.mz vr7{mr1}, 0(r5)
005e9c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005ea0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005ea4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005ea8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005eac  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
005eb0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005eb4  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
005eb8  13810605  setlt.u r2, r13, r16
005ebc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005ec0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005ec4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005ec8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005ecc  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005ed0  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
005ed4  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
005ed8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005edc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005ee0  bb5b01fe  bneq r2, zero, -268
005ee4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005ee8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005eec  9f000002  addli r1, zero, 256
005ef0  6af100c0  vsrl.p vr2, r1, vr0
005ef4  eaf110c0  vsrl.p vr3, r1, vr1
005ef8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005efc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005f00  6a7109c0  vsrl.p vr2, r18, vr0
005f04  ea7119c0  vsrl.p vr3, r18, vr1
005f08  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005f0c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005f10  6af109c0  vsrl.p vr2, r19, vr0
005f14  eaf119c0  vsrl.p vr3, r19, vr1
005f18  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005f1c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005f20  6a710ac0  vsrl.p vr2, r20, vr0
005f24  ea711ac0  vsrl.p vr3, r20, vr1
005f28  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005f2c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005f30  fa120040  vextracti.f r5, 0(vr0)
005f34  fa900040  vextracti.f r1, 0(vr1)
005f38  5b630000  j 792
005f3c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005f40  abf0ffff  lui r1, 1048575
005f44  9f050000  addli r11, zero, 0
005f48  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005f4c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005f50  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005f54  9b9600f8  ori r13, r1, 3968
005f58  8b90b710  add.s r1, r15, r11
005f5c  0b17b610  add.s r14, r12, r11
005f60  9f860601  addli r13, r13, 128
005f64  9f850504  addli r11, r11, 512
005f68  1f8c0031  addli r24, r1, 6272
005f6c  9f820030  addli r5, r1, 6144
005f70  1f818031  addli r2, r1, 6336
005f74  9f0b0718  addli r23, r14, 3072
005f78  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
005f7c  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
005f80  9f828030  addli r5, r1, 6208
005f84  ca140102  vloads_mask16.mz vr9{mr1}, 0(r2)
005f88  1f018718  addli r2, r14, 3136
005f8c  1f0c8719  addli r24, r14, 3264
005f90  42930b02  vload_mask16.mz vr6{mr1}, 0(r23)
005f94  4a940202  vloads_mask16.mz vr8{mr1}, 0(r5)
005f98  9f020719  addli r5, r14, 3200
005f9c  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
005fa0  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
005fa4  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
005fa8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005fac  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
005fb0  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
005fb4  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
005fb8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005fbc  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
005fc0  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
005fc4  9f820032  addli r5, r1, 6400
005fc8  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
005fcc  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
005fd0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005fd4  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
005fd8  9f0b071a  addli r23, r14, 3328
005fdc  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
005fe0  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
005fe4  1f01871b  addli r2, r14, 3520
005fe8  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
005fec  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
005ff0  4a900202  vloads_mask16.mz vr0{mr1}, 0(r5)
005ff4  9f828032  addli r5, r1, 6464
005ff8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005ffc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006000  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
006004  9f820033  addli r5, r1, 6528
006008  9f808033  addli r1, r1, 6592
00600c  4a940202  vloads_mask16.mz vr8{mr1}, 0(r5)
006010  9f02871a  addli r5, r14, 3392
006014  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
006018  9f00071b  addli r1, r14, 3456
00601c  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
006020  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
006024  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
006028  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00602c  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
006030  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
006034  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
006038  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
00603c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
006040  46906202  vstore_mask16.mz vr6{mr1}, 0(r5)
006044  93829605  setlt.u r5, r13, r25
006048  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00604c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
006050  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
006054  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
006058  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00605c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
006060  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
006064  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
006068  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00606c  bbbb02fe  bneq r5, zero, -276
006070  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006074  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
006078  9f000002  addli r1, zero, 256
00607c  9f060000  addli r13, zero, 0
006080  eaf110c0  vsrl.p vr3, r1, vr1
006084  6af100c0  vsrl.p vr2, r1, vr0
006088  abf0ffff  lui r1, 1048575
00608c  1b9700f8  ori r14, r1, 3968
006090  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006094  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006098  ea7119c0  vsrl.p vr3, r18, vr1
00609c  6a7109c0  vsrl.p vr2, r18, vr0
0060a0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060a4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0060a8  eaf119c0  vsrl.p vr3, r19, vr1
0060ac  6af109c0  vsrl.p vr2, r19, vr0
0060b0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060b4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0060b8  ea711ac0  vsrl.p vr3, r20, vr1
0060bc  6a710ac0  vsrl.p vr2, r20, vr0
0060c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0060c8  7a9c0040  vextracti.f r24, 0(vr1)
0060cc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0060d0  fa150040  vextracti.f r11, 0(vr0)
0060d4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0060d8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0060dc  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0060e0  8b9bd710  add.s r23, r15, r13
0060e4  8b10d610  add.s r1, r12, r13
0060e8  1f070701  addli r14, r14, 128
0060ec  9f860604  addli r13, r13, 512
0060f0  1f810b18  addli r2, r23, 3072
0060f4  9f820b19  addli r5, r23, 3200
0060f8  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0060fc  9f888001  addli r17, r1, 192
006100  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
006104  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
006108  1f818b18  addli r2, r23, 3136
00610c  9f828b19  addli r5, r23, 3264
006110  c2950802  vload_mask16.mz vr11{mr1}, 0(r17)
006114  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
006118  1f810001  addli r2, r1, 128
00611c  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
006120  9f828000  addli r5, r1, 64
006124  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
006128  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
00612c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
006130  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
006134  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
006138  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00613c  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
006140  1f810b1a  addli r2, r23, 3328
006144  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
006148  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00614c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
006150  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
006154  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
006158  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
00615c  1f818b1a  addli r2, r23, 3392
006160  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
006164  9f880002  addli r17, r1, 256
006168  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
00616c  9f820003  addli r5, r1, 384
006170  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
006174  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
006178  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
00617c  1f810b1b  addli r2, r23, 3456
006180  c2930802  vload_mask16.mz vr7{mr1}, 0(r17)
006184  9f8b8b1b  addli r23, r23, 3520
006188  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00618c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006190  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
006194  1f818002  addli r2, r1, 320
006198  4a950b02  vloads_mask16.mz vr10{mr1}, 0(r23)
00619c  9f808003  addli r1, r1, 448
0061a0  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
0061a4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0061a8  c2930202  vload_mask16.mz vr7{mr1}, 0(r5)
0061ac  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0061b0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0061b4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0061b8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0061bc  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
0061c0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0061c4  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
0061c8  13010705  setlt.u r2, r14, r16
0061cc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0061d0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0061d4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0061d8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0061dc  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0061e0  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
0061e4  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0061e8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0061ec  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0061f0  bb4b01fe  bneq r2, zero, -272
0061f4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0061f8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0061fc  9f000002  addli r1, zero, 256
006200  6af100c0  vsrl.p vr2, r1, vr0
006204  eaf110c0  vsrl.p vr3, r1, vr1
006208  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00620c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006210  6a7109c0  vsrl.p vr2, r18, vr0
006214  ea7119c0  vsrl.p vr3, r18, vr1
006218  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00621c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006220  6af109c0  vsrl.p vr2, r19, vr0
006224  eaf119c0  vsrl.p vr3, r19, vr1
006228  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00622c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006230  6a710ac0  vsrl.p vr2, r20, vr0
006234  ea711ac0  vsrl.p vr3, r20, vr1
006238  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00623c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006240  fa100040  vextracti.f r1, 0(vr0)
006244  7a910040  vextracti.f r2, 0(vr1)
006248  8be21510  add.f.rn r5, r11, r1
00624c  8b602c10  add.f.rn r1, r24, r2
006250  0b016230  div.u r2, r4, r6
006254  80360002  core_id r13
006258  9f050000  addli r11, zero, 0
00625c  1f0c0000  addli r24, zero, 0
006260  1b316100  slli r2, r2, 6
006264  1b010104  andi r2, r2, 64
006268  1711d100  or r2, r2, r13
00626c  9b362100  slli r13, r2, 2
006270  1b01e107  andi r2, r2, 126
006274  0b975611  add.s r14, r13, r21
006278  1b312100  slli r2, r2, 2
00627c  73605700  stores.w r5, 0(r14)
006280  8b92a611  add.s r5, r13, r26
006284  9b964600  ori r13, r13, 4
006288  73e01200  stores.w r1, 0(r5)
00628c  8b905611  add.s r1, r13, r21
006290  8b125111  add.s r5, r2, r21
006294  8b96a611  add.s r13, r13, r26
006298  0b11a111  add.s r2, r2, r26
00629c  00a00300  mfence { lm, sm, gm }
0062a0  80210b04  csr_set csr3, r22
0062a4  00d00100  sync_group
0062a8  efc00000  loads.w r1, 0(r1)
0062ac  efc20200  loads.w r5, 0(r5)
0062b0  efc60600  loads.w r13, 0(r13)
0062b4  6f410100  loads.w r2, 0(r2)
0062b8  8be05010  add.f.rn r1, r1, r5
0062bc  ab02003a  lui r5, 237568
0062c0  0be12610  add.f.rn r2, r13, r2
0062c4  8be05020  mul.f.rn r1, r1, r5
0062c8  0b615120  mul.f.rn r2, r2, r5
0062cc  8be21020  mul.f.rn r5, r1, r1
0062d0  0be70058  neg.f r14, r1
0062d4  0b615118  sub.f.rn r2, r2, r5
0062d8  e3023f00  loadli.w r5,  24(r30)
0062dc  0b615110  add.f.rn r2, r2, r5
0062e0  ab02803f  lui r5, 260096
0062e4  0f010108  sqrt.f.rn r2, r2
0062e8  8f862218  div.f.rn r13, r5, r2
0062ec  8b90b410  add.s r1, r9, r11
0062f0  8b1bb610  add.s r23, r12, r11
0062f4  8b12b510  add.s r5, r10, r11
0062f8  9f888000  addli r17, r1, 64
0062fc  1f818b00  addli r2, r23, 64
006300  42900b02  vload_mask16.mz vr0{mr1}, 0(r23)
006304  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
006308  4a920202  vloads_mask16.mz vr4{mr1}, 0(r5)
00630c  ca910802  vloads_mask16.mz vr3{mr1}, 0(r17)
006310  9f888200  addli r17, r5, 64
006314  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
006318  ca920802  vloads_mask16.mz vr5{mr1}, 0(r17)
00631c  9f084c00  addli r17, r24, 32
006320  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
006324  93881107  setle.u r17, r3, r17
006328  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
00632c  0a900602  vmul.f.mz.rn vr0{mr1}, r13, vr0
006330  8a901602  vmul.f.mz.rn vr1{mr1}, r13, vr1
006334  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
006338  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
00633c  46904b02  vstore_mask16.mz vr4{mr1}, 0(r23)
006340  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
006344  bb910800  bneq r17, zero, 100
006348  1f810b01  addli r2, r23, 128
00634c  9f888b01  addli r17, r23, 192
006350  9f8b0001  addli r23, r1, 128
006354  9f808001  addli r1, r1, 192
006358  1f0c8c00  addli r24, r24, 64
00635c  9f850502  addli r11, r11, 256
006360  4a910b02  vloads_mask16.mz vr2{mr1}, 0(r23)
006364  9f8b0201  addli r23, r5, 128
006368  9f828201  addli r5, r5, 192
00636c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
006370  c2900802  vload_mask16.mz vr1{mr1}, 0(r17)
006374  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
006378  93003c04  setlt.u r1, r24, r3
00637c  ca910b02  vloads_mask16.mz vr3{mr1}, 0(r23)
006380  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
006384  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
006388  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
00638c  0a900602  vmul.f.mz.rn vr0{mr1}, r13, vr0
006390  8a901602  vmul.f.mz.rn vr1{mr1}, r13, vr1
006394  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
006398  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
00639c  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0063a0  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
0063a4  3bad00fe  bneq r1, zero, -184
0063a8  eb560f00  load.d r[14:15], 0(r30)
0063ac  ab0000f0  lui r1, 983040
0063b0  00a00000  mfence { lm }
0063b4  97101400  or r1, r8, r1
0063b8  8ba6b611  add.ul r[14:15], r[14:15], r[28:29]
0063bc  ffb0c600  s_lm2gm r1, r12, 0(r[14:15])
0063c0  00a00200  mfence { lm, gm }
0063c4  5b33ffff  j -1640
0063c8  63012f00  loadli.w r2,  16(r30)
0063cc  ab0100f0  lui r3, 983040
0063d0  1b312100  slli r2, r2, 2
0063d4  17113100  or r2, r2, r3
0063d8  ab910200  lui r3, 41
0063dc  9f810108  addli r3, r3, 1024
0063e0  7f013400  l_gm2sm r2, r3, 0(r[9:10])
0063e4  2bf10000  lui r2, 15
0063e8  e3411f00  loadli.w r3,  12(r30)
0063ec  00200300  mfence { sm, gm }
0063f0  1b11f1ff  ori r2, r2, 4095
0063f4  80210104  csr_set csr3, r2
0063f8  00d00100  sync_group
0063fc  4bdf1100  ble.s r3, r1, 980
006400  e3012f00  loadli.w r3,  16(r30)
006404  e3422f00  loadli.w r5,  20(r30)
006408  ab780200  lui r17, 39
00640c  2b890200  lui r18, 40
006410  ab990200  lui r19, 41
006414  9f038fd7  addli r7, r30, -5184
006418  1f140000  addli r8, zero, 1
00641c  1f050002  addli r10, zero, 256
006420  1f060001  addli r12, zero, 128
006424  9f068000  addli r13, zero, 64
006428  1f084000  addli r16, zero, 32
00642c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
006430  9f880808  addli r17, r17, 1024
006434  1f090908  addli r18, r18, 1024
006438  9f890908  addli r19, r19, 1024
00643c  0b925110  add.s r4, r3, r5
006440  9bb52100  slli r11, r3, 2
006444  33810108  fix2float.rn r2, r3
006448  9f71f2ff  addli r3, r4, -1
00644c  1bb22200  slli r4, r5, 2
006450  e70b2fd4  storeli.w r2, -5448(r30)
006454  1f010fd7  addli r2, r30, -5248
006458  670cbfd4  storeli.w r11, -5440(r30)
00645c  8b925130  div.s r5, r3, r5
006460  abf1ffff  lui r3, 1048575
006464  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
006468  9b94f1ff  ori r9, r3, 4095
00646c  5b080000  j 64
006470  1f018fd6  addli r2, r30, -5312
006474  00a00000  mfence { lm }
006478  6b5a0f00  load.d r[21:22], 0(r30)
00647c  ab0100f0  lui r3, 983040
006480  00530102  load_param_i r6, 2
006484  e3058fd5  loadli.w r11,  -5440(r30)
006488  6b5b0100  load.d r[23:24], 0(r2)
00648c  8b101310  add.s r1, r6, r1
006490  97913500  or r3, r11, r3
006494  0b2a6a11  add.ul r[21:22], r[21:22], r[23:24]
006498  ff317a00  s_lm2gm r3, r7, 0(r[21:22])
00649c  00a00200  mfence { lm, gm }
0064a0  63411f00  loadli.w r2,  12(r30)
0064a4  3fa02000  blt.s r1, r2, 8
0064a8  5b650000  j 808
0064ac  63011f00  loadli.w r2,  8(r30)
0064b0  8b912010  add.s r3, r1, r2
0064b4  1f210000  addli r2, zero, 2
0064b8  8b91f120  mul.s r3, r3, r15
0064bc  339a0128  sext_int2long r[21:22], r3
0064c0  ab0100f0  lui r3, 983040
0064c4  173c2a02  sll.d r[25:26], r[21:22], r2
0064c8  1f017fd6  addli r2, r30, -5320
0064cc  97913500  or r3, r11, r3
0064d0  6b5a0100  load.d r[21:22], 0(r2)
0064d4  1f018fd6  addli r2, r30, -5312
0064d8  0b2b8a11  add.ul r[23:24], r[21:22], r[25:26]
0064dc  ff217b00  l_gm2lm r3, r7, 0(r[23:24])
0064e0  00a00200  mfence { lm, gm }
0064e4  73308101  store.d r[25:26], 0(r2)
0064e8  bf978200  blt.s r5, r8, 484
0064ec  9f0b0000  addli r23, zero, 0
0064f0  1f0b0000  addli r22, zero, 0
0064f4  1f0c0000  addli r24, zero, 0
0064f8  db0c0000  j 100
0064fc  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
006500  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006504  1f1c0c00  addli r24, r24, 1
006508  6a7105c0  vsrl.p vr2, r10, vr0
00650c  ea7115c0  vsrl.p vr3, r10, vr1
006510  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006514  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006518  6a7106c0  vsrl.p vr2, r12, vr0
00651c  ea7116c0  vsrl.p vr3, r12, vr1
006520  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006524  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006528  6af106c0  vsrl.p vr2, r13, vr0
00652c  eaf116c0  vsrl.p vr3, r13, vr1
006530  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006534  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006538  6a7108c0  vsrl.p vr2, r16, vr0
00653c  ea7118c0  vsrl.p vr3, r16, vr1
006540  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006544  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006548  7a110040  vextracti.f r2, 0(vr0)
00654c  fa910040  vextracti.f r3, 0(vr1)
006550  8beb2b10  add.f.rn r23, r23, r2
006554  0b6b3b10  add.f.rn r22, r22, r3
006558  b7755c00  beq r24, r5, 380
00655c  9f010c00  addli r3, r24, 0
006560  3730a700  beq r14, r10, 12
006564  97219c00  xor r3, r24, r9
006568  8b913210  add.s r3, r5, r3
00656c  1f010fd7  addli r2, r30, -5248
006570  0b93e120  mul.s r6, r3, r14
006574  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
006578  0b936718  sub.s r6, r15, r6
00657c  8b1ce340  min.s r25, r6, r14
006580  12321002  vadd.s.mz vr4{mr1}, zero, vr1
006584  92311002  vadd.s.mz vr3{mr1}, zero, vr1
006588  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00658c  bfcd8cfe  blt.s r25, r8, -144
006590  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
006594  1f0d0000  addli r26, zero, 0
006598  8b1d3220  mul.s r27, r4, r3
00659c  1f0e8fd7  addli r28, r30, -5184
0065a0  9f850800  addli r11, r17, 0
0065a4  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0065a8  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0065ac  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0065b0  8b91b511  add.s r3, r11, r27
0065b4  0b13be11  add.s r6, r28, r27
0065b8  1f818100  addli r2, r3, 64
0065bc  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
0065c0  1f8a8101  addli r20, r3, 192
0065c4  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
0065c8  9f0a8301  addli r21, r6, 192
0065cc  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
0065d0  1f810101  addli r2, r3, 128
0065d4  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
0065d8  1f0a0301  addli r20, r6, 128
0065dc  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
0065e0  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
0065e4  c2150a02  vload_mask16.mz vr11{mr1}, 0(r20)
0065e8  1f018300  addli r2, r6, 64
0065ec  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
0065f0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0065f4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0065f8  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0065fc  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
006600  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006604  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006608  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
00660c  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
006610  1f018d00  addli r2, r26, 64
006614  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
006618  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00661c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006620  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
006624  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
006628  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
00662c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
006630  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
006634  4bab2cfe  ble.s r25, r2, -312
006638  1f8a0102  addli r20, r3, 256
00663c  9f8a8102  addli r21, r3, 320
006640  1f010302  addli r2, r6, 256
006644  1f0d0d01  addli r26, r26, 128
006648  9f850504  addli r11, r11, 512
00664c  1f0e0e04  addli r28, r28, 512
006650  4a100a02  vloads_mask16.mz vr0{mr1}, 0(r20)
006654  1f8a0103  addli r20, r3, 384
006658  9f818103  addli r3, r3, 448
00665c  ca920a02  vloads_mask16.mz vr5{mr1}, 0(r21)
006660  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
006664  ca130a02  vloads_mask16.mz vr7{mr1}, 0(r20)
006668  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
00666c  9f010303  addli r3, r6, 384
006670  1f0a8302  addli r20, r6, 320
006674  1f038303  addli r6, r6, 448
006678  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
00667c  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
006680  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
006684  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
006688  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00668c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
006690  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
006694  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
006698  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00669c  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
0066a0  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0066a4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0066a8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0066ac  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
0066b0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0066b4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0066b8  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0066bc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0066c0  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0066c4  bf3b9dff  blt.s r26, r25, -276
0066c8  dbc6ffff  j -460
0066cc  1f0b0000  addli r22, zero, 0
0066d0  9f0b0000  addli r23, zero, 0
0066d4  00a00000  mfence { lm }
0066d8  3fe687fe  blt.s r15, r8, -616
0066dc  63017fd5  loadli.w r2,  -5448(r30)
0066e0  9f050000  addli r11, zero, 0
0066e4  1f0c0000  addli r24, zero, 0
0066e8  8f812b18  div.f.rn r3, r23, r2
0066ec  0f032b18  div.f.rn r6, r22, r2
0066f0  63013f00  loadli.w r2,  24(r30)
0066f4  0beb3120  mul.f.rn r22, r3, r3
0066f8  8beb0158  neg.f r23, r3
0066fc  0b636319  sub.f.rn r6, r6, r22
006700  0b632310  add.f.rn r6, r6, r2
006704  2b01803f  lui r2, 260096
006708  0f030308  sqrt.f.rn r6, r6
00670c  0f0b6118  div.f.rn r22, r2, r6
006710  0b932511  add.s r6, r11, r18
006714  8b91b310  add.s r3, r7, r11
006718  9f0c8300  addli r25, r6, 64
00671c  4a110302  vloads_mask16.mz vr2{mr1}, 0(r6)
006720  0b933511  add.s r6, r11, r19
006724  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
006728  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
00672c  9f8c8100  addli r25, r3, 64
006730  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
006734  1f038300  addli r6, r6, 64
006738  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
00673c  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
006740  1f034c00  addli r6, r24, 32
006744  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
006748  92925b02  vadd.f.mz.rn vr5{mr1}, r23, vr5
00674c  8a101b02  vmul.f.mz.rn vr1{mr1}, r22, vr1
006750  8a125b02  vmul.f.mz.rn vr5{mr1}, r22, vr5
006754  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
006758  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
00675c  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
006760  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
006764  4bb467fe  ble.s r15, r6, -756
006768  0b13b910  add.s r6, r18, r11
00676c  8b9cb910  add.s r25, r19, r11
006770  1f0c8c00  addli r24, r24, 64
006774  9f850502  addli r11, r11, 256
006778  1f0d0301  addli r26, r6, 128
00677c  9f8d0c01  addli r27, r25, 128
006780  1f038301  addli r6, r6, 192
006784  9f8c8c01  addli r25, r25, 192
006788  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
00678c  1f8d0101  addli r26, r3, 128
006790  9f818101  addli r3, r3, 192
006794  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
006798  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
00679c  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
0067a0  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
0067a4  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0067a8  92913b02  vadd.f.mz.rn vr3{mr1}, r23, vr3
0067ac  12924b02  vadd.f.mz.rn vr4{mr1}, r23, vr4
0067b0  8a113b02  vmul.f.mz.rn vr3{mr1}, r22, vr3
0067b4  0a124b02  vmul.f.mz.rn vr4{mr1}, r22, vr4
0067b8  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
0067bc  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
0067c0  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
0067c4  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
0067c8  3f2dfcfe  blt.s r24, r15, -184
0067cc  db94ffff  j -860
0067d0  9f0e0fd4  addli sp, r30, -5632
0067d4  e38fae2b  loadli.w r31,  5584(sp)
0067d8  63cfae2b  loadli.w r30,  5588(sp)
0067dc  638ebe2b  loadli.w r28,  5592(sp)
0067e0  e3cdbe2b  loadli.w r27,  5596(sp)
0067e4  638dce2b  loadli.w r26,  5600(sp)
0067e8  e3ccce2b  loadli.w r25,  5604(sp)
0067ec  638cde2b  loadli.w r24,  5608(sp)
0067f0  e3cbde2b  loadli.w r23,  5612(sp)
0067f4  638bee2b  loadli.w r22,  5616(sp)
0067f8  e3caee2b  loadli.w r21,  5620(sp)
0067fc  638afe2b  loadli.w r20,  5624(sp)
006800  e3c9fe2b  loadli.w r19,  5628(sp)
006804  9f8e0e2c  addli sp, sp, 5632
006808  5f800f00  jr r31, 0
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
