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
00010c  9f0c0002  addli r25, zero, 256
000110  1f0d0008  addli r26, zero, 1024
000114  9f0d2000  addli r27, zero, 16
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
000154  9bb04000  slli r1, r1, 4
000158  e7801e00  storeli.w r1, 8(sp)
00015c  d72e0000  jal 372
000160  8b9a7a11  add.s r21, r21, r23
000164  bfee6aff  blt.s r21, r22, -72
000168  9f8e8e00  addli sp, sp, 64
00016c  00a00300  mfence { lm, sm, gm }
000170  00100000  exit
000174  9f8e0ed4  addli sp, sp, -5632
000178  67cdee2b  storeli.w r30, 5588(sp)
00017c  1f8f0e2c  addli r30, sp, 5632
000180  67ce9e2b  storeli.w r25, 5604(sp)
000184  1f250000  addli r10, zero, 2
000188  e7cf3e2b  storeli.w r19, 5628(sp)
00018c  e78f4e2b  storeli.w r20, 5624(sp)
000190  67cf5e2b  storeli.w r21, 5620(sp)
000194  678f6e2b  storeli.w r22, 5616(sp)
000198  e7ce7e2b  storeli.w r23, 5612(sp)
00019c  e78e8e2b  storeli.w r24, 5608(sp)
0001a0  678eae2b  storeli.w r26, 5600(sp)
0001a4  e7cdbe2b  storeli.w r27, 5596(sp)
0001a8  e78dce2b  storeli.w r28, 5592(sp)
0001ac  678dfe2b  storeli.w r31, 5584(sp)
0001b0  e3004f00  loadli.w r1,  32(r30)
0001b4  63472f00  loadli.w r14,  20(r30)
0001b8  e3072f00  loadli.w r15,  16(r30)
0001bc  e34c1f00  loadli.w r25,  12(r30)
0001c0  9f057fd6  addli r11, r30, -5320
0001c4  73b02500  store.d r[3:4], 0(r11)
0001c8  3f511500  blt.s r10, r1, 84
0001cc  1f110000  addli r2, zero, 1
0001d0  b7cc2004  beq r1, r2, 2864
0001d4  1f210000  addli r2, zero, 2
0001d8  bb8b2004  bneq r1, r2, 2784
0001dc  e3403f00  loadli.w r1,  28(r30)
0001e0  37e10014  beq r1, zero, 10328
0001e4  80300002  core_id r1
0001e8  1f210000  addli r2, zero, 2
0001ec  37822028  beq r1, r2, 20608
0001f0  1f110000  addli r2, zero, 1
0001f4  b7e02028  beq r1, r2, 20536
0001f8  3bc20028  bneq r1, zero, 20624
0001fc  63012f00  loadli.w r2,  16(r30)
000200  ab0100f0  lui r3, 983040
000204  1b311100  slli r2, r2, 1
000208  17113100  or r2, r2, r3
00020c  ab910100  lui r3, 25
000210  9f810100  addli r3, r3, 0
000214  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000218  5b0e0a00  j 20592
00021c  1f310000  addli r2, zero, 3
000220  b78c2004  beq r1, r2, 2848
000224  1f410000  addli r2, zero, 4
000228  3bca2004  bneq r1, r2, 2704
00022c  e3002f00  loadli.w r1,  16(r30)
000230  1f010010  addli r2, zero, 2048
000234  3ba1200a  bneq r1, r2, 5192
000238  e3403f00  loadli.w r1,  28(r30)
00023c  37f3001a  beq r1, zero, 13532
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
0003a4  9b811100  andi r3, r3, 1
0003a8  80210104  csr_set csr3, r2
0003ac  1f010006  addli r2, zero, 768
0003b0  00d00100  sync_group
0003b4  670b3fd4  storeli.w r3, -5456(r30)
0003b8  37a00100  beq r3, zero, 8
0003bc  9f02000a  addli r5, zero, 1280
0003c0  e3411f00  loadli.w r3,  12(r30)
0003c4  1f130000  addli r6, zero, 1
0003c8  3fb06132  blt.s r3, r6, 25612
0003cc  e3016fd5  loadli.w r3,  -5456(r30)
0003d0  9bc41000  srli r9, r1, 1
0003d4  80300002  core_id r1
0003d8  1f0a8fd7  addli r20, r30, -5184
0003dc  9bb51200  slli r11, r5, 1
0003e0  9f030000  addli r7, zero, 0
0003e4  1f797000  addli r18, zero, 63
0003e8  ab06803f  lui r13, 260096
0003ec  1f062000  addli r12, zero, 16
0003f0  2b0bffff  lui r22, 1048560
0003f4  2b0ec07f  lui r28, 523264
0003f8  9f3d0000  addli r27, zero, 3
0003fc  2bed7f00  lui r26, 2046
000400  1f571000  addli r14, zero, 13
000404  0b912120  mul.s r2, r3, r2
000408  9bc11000  srli r3, r1, 1
00040c  9b302100  slli r1, r2, 2
000410  e7432fd4  storeli.w r2, -5572(r30)
000414  0b914010  add.s r2, r1, r4
000418  8b90a010  add.s r1, r1, r10
00041c  2b02807f  lui r4, 522240
000420  1f251000  addli r10, zero, 10
000424  67041fd6  storeli.w r1, -5312(r30)
000428  9bb02200  slli r1, r5, 2
00042c  67082fd6  storeli.w r2, -5248(r30)
000430  1f814200  addli r2, r5, 32
000434  8b904011  add.s r1, r1, r20
000438  e7422fd4  storeli.w r2, -5588(r30)
00043c  0b914511  add.s r2, r11, r20
000440  9f8080ff  addli r1, r1, -64
000444  e7021fd4  storeli.w r1, -5592(r30)
000448  9f0081ff  addli r1, r2, -64
00044c  2bf100fc  lui r2, 1032207
000450  67421fd4  storeli.w r1, -5596(r30)
000454  abf0ffff  lui r1, 1048575
000458  1b1401c0  ori r8, r2, 3072
00045c  1f018fd4  addli r2, r30, -5568
000460  00a00000  mfence { lm }
000464  e7039fd4  storeli.w r9, -5576(r30)
000468  67433fd4  storeli.w r3, -5580(r30)
00046c  6703bfd4  storeli.w r11, -5584(r30)
000470  9b9000f8  ori r1, r1, 3968
000474  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
000478  e7411fd4  storeli.w r1, -5604(r30)
00047c  abf00000  lui r1, 15
000480  9b99f0ff  ori r19, r1, 4095
000484  ab700000  lui r1, 7
000488  9b9af0ff  ori r21, r1, 4095
00048c  ab00ff03  lui r1, 16368
000490  670c3fd5  storeli.w r19, -5440(r30)
000494  9b9bf03f  ori r23, r1, 1023
000498  abe00700  lui r1, 126
00049c  db030000  j 28
0004a0  00a00300  mfence { lm, sm, gm }
0004a4  80a10904  csr_set csr3, r19
0004a8  00d00100  sync_group
0004ac  8b939310  add.s r7, r7, r9
0004b0  3fa09301  blt.s r7, r25, 8
0004b4  5bfe0000  j 2032
0004b8  0b913310  add.s r2, r7, r3
0004bc  cb9f2cfe  ble.s r25, r2, -28
0004c0  e3011f00  loadli.w r3,  8(r30)
0004c4  0b113110  add.s r2, r2, r3
0004c8  8b819330  div.u r3, r7, r9
0004cc  e3447fd4  loadli.w r9,  -5572(r30)
0004d0  1b31b100  slli r2, r2, 11
0004d4  17119100  or r2, r2, r9
0004d8  9f047fd6  addli r9, r30, -5320
0004dc  33180128  sext_int2long r[17:18], r2
0004e0  2b0100f0  lui r2, 983040
0004e4  9bb16100  slli r3, r3, 6
0004e8  173c6802  sll.d r[25:26], r[17:18], r6
0004ec  6bd80400  load.d r[17:18], 0(r9)
0004f0  9f047fd5  addli r9, r30, -5448
0004f4  17912500  or r2, r11, r2
0004f8  9b810104  andi r3, r3, 64
0004fc  73b08401  store.d r[25:26], 0(r9)
000500  0b288811  add.ul r[17:18], r[17:18], r[25:26]
000504  7f214801  l_gm2lm r2, r20, 0(r[17:18])
000508  00310002  core_id r2
00050c  00a00200  mfence { lm, gm }
000510  979c2100  or r25, r3, r2
000514  63414fd4  loadli.w r2,  -5596(r30)
000518  e3015fd4  loadli.w r3,  -5592(r30)
00051c  e3445fd4  loadli.w r9,  -5588(r30)
000520  c2000102  vload.mz vr1{mr1}, 0(r2)
000524  9f84c4ff  addli r9, r9, -32
000528  1f8881ff  addli r16, r3, -64
00052c  1f0181ff  addli r2, r2, -64
000530  93059904  setlt.u r11, r18, r9
000534  66c111a0  vmerge_h.hf vr2, vr3, vr1
000538  e6c01180  vmerge_l.hf vr1, vr3, vr1
00053c  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
000540  9f8101ff  addli r3, r3, -128
000544  46101802  vstore_mask16.mz vr1{mr1}, 0(r16)
000548  3bef05fe  bneq r11, zero, -40
00054c  00a00000  mfence { lm }
000550  1f0c0005  addli r24, zero, 640
000554  63016fd5  loadli.w r2,  -5456(r30)
000558  3b360100  bneq r2, zero, 396
00055c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000560  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000564  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000568  e3413fd4  loadli.w r3,  -5604(r30)
00056c  1f010000  addli r2, zero, 0
000570  8b15f110  add.s r11, r2, r15
000574  8b142a10  add.s r9, r20, r2
000578  9f810101  addli r3, r3, 128
00057c  1f010104  addli r2, r2, 512
000580  1f880501  addli r16, r11, 128
000584  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
000588  9f888500  addli r17, r11, 64
00058c  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
000590  1f898401  addli r18, r9, 192
000594  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
000598  1f888501  addli r16, r11, 192
00059c  4a930802  vloads_mask16.mz vr6{mr1}, 0(r17)
0005a0  9f888400  addli r17, r9, 64
0005a4  c2150902  vload_mask16.mz vr11{mr1}, 0(r18)
0005a8  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
0005ac  1f880401  addli r16, r9, 128
0005b0  42950802  vload_mask16.mz vr10{mr1}, 0(r17)
0005b4  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
0005b8  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0005bc  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0005c0  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0005c4  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0005c8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0005cc  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
0005d0  46108802  vstore_mask16.mz vr8{mr1}, 0(r16)
0005d4  1f880502  addli r16, r11, 256
0005d8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0005dc  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0005e0  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0005e4  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
0005e8  4a100802  vloads_mask16.mz vr0{mr1}, 0(r16)
0005ec  1f888502  addli r16, r11, 320
0005f0  46106902  vstore_mask16.mz vr6{mr1}, 0(r18)
0005f4  1f890402  addli r18, r9, 256
0005f8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0005fc  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000600  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000604  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
000608  1f880503  addli r16, r11, 384
00060c  c2130902  vload_mask16.mz vr7{mr1}, 0(r18)
000610  9f858503  addli r11, r11, 448
000614  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000618  4a140802  vloads_mask16.mz vr8{mr1}, 0(r16)
00061c  1f888402  addli r16, r9, 320
000620  4a950502  vloads_mask16.mz vr10{mr1}, 0(r11)
000624  9f850403  addli r11, r9, 384
000628  9f848403  addli r9, r9, 448
00062c  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
000630  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000634  c2930502  vload_mask16.mz vr7{mr1}, 0(r11)
000638  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00063c  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
000640  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000644  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000648  46100902  vstore_mask16.mz vr0{mr1}, 0(r18)
00064c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000650  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
000654  13888105  setlt.u r16, r3, r24
000658  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00065c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000660  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000664  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000668  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00066c  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
000670  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000674  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000678  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00067c  bb5b08fe  bneq r16, zero, -268
000680  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000684  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000688  1f010002  addli r2, zero, 256
00068c  6a7101c0  vsrl.p vr2, r2, vr0
000690  ea7111c0  vsrl.p vr3, r2, vr1
000694  1f010001  addli r2, zero, 128
000698  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00069c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006a0  6a7101c0  vsrl.p vr2, r2, vr0
0006a4  ea7111c0  vsrl.p vr3, r2, vr1
0006a8  1f018000  addli r2, zero, 64
0006ac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006b0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006b4  6a7101c0  vsrl.p vr2, r2, vr0
0006b8  ea7111c0  vsrl.p vr3, r2, vr1
0006bc  1f014000  addli r2, zero, 32
0006c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006c8  6a7101c0  vsrl.p vr2, r2, vr0
0006cc  ea7111c0  vsrl.p vr3, r2, vr1
0006d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006d4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006d8  fa110040  vextracti.f r3, 0(vr0)
0006dc  fa940040  vextracti.f r9, 0(vr1)
0006e0  db670000  j 828
0006e4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0006e8  abf1ffff  lui r3, 1048575
0006ec  1f010000  addli r2, zero, 0
0006f0  9f090003  addli r19, zero, 384
0006f4  67029fd5  storeli.w r25, -5600(r30)
0006f8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0006fc  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000700  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000704  9b9101f8  ori r3, r3, 3968
000708  8b952710  add.s r11, r15, r2
00070c  8b142a10  add.s r9, r20, r2
000710  9f810101  addli r3, r3, 128
000714  1f010104  addli r2, r2, 512
000718  1f890531  addli r18, r11, 6272
00071c  1f880530  addli r16, r11, 6144
000720  9f8c8531  addli r25, r11, 6336
000724  9f880418  addli r17, r9, 3072
000728  ca130902  vloads_mask16.mz vr7{mr1}, 0(r18)
00072c  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
000730  1f888530  addli r16, r11, 6208
000734  ca940c02  vloads_mask16.mz vr9{mr1}, 0(r25)
000738  1f890419  addli r18, r9, 3200
00073c  42930802  vload_mask16.mz vr6{mr1}, 0(r17)
000740  9f8c8419  addli r25, r9, 3264
000744  4a140802  vloads_mask16.mz vr8{mr1}, 0(r16)
000748  42150902  vload_mask16.mz vr10{mr1}, 0(r18)
00074c  1f888418  addli r16, r9, 3136
000750  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
000754  c2150802  vload_mask16.mz vr11{mr1}, 0(r16)
000758  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
00075c  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
000760  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
000764  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
000768  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00076c  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
000770  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
000774  9f880532  addli r17, r11, 6400
000778  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
00077c  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
000780  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000784  46107902  vstore_mask16.mz vr7{mr1}, 0(r18)
000788  1f89041a  addli r18, r9, 3328
00078c  c2130902  vload_mask16.mz vr7{mr1}, 0(r18)
000790  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
000794  13883105  setlt.u r16, r3, r19
000798  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
00079c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0007a0  4a900802  vloads_mask16.mz vr0{mr1}, 0(r17)
0007a4  9f888532  addli r17, r11, 6464
0007a8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0007ac  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0007b0  4a930802  vloads_mask16.mz vr6{mr1}, 0(r17)
0007b4  9f880533  addli r17, r11, 6528
0007b8  9f858533  addli r11, r11, 6592
0007bc  4a940802  vloads_mask16.mz vr8{mr1}, 0(r17)
0007c0  9f88841a  addli r17, r9, 3392
0007c4  4a950502  vloads_mask16.mz vr10{mr1}, 0(r11)
0007c8  9f85041b  addli r11, r9, 3456
0007cc  9f84841b  addli r9, r9, 3520
0007d0  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
0007d4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0007d8  c2930502  vload_mask16.mz vr7{mr1}, 0(r11)
0007dc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0007e0  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
0007e4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0007e8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0007ec  46100902  vstore_mask16.mz vr0{mr1}, 0(r18)
0007f0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0007f4  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
0007f8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0007fc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000800  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000804  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000808  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00080c  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
000810  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000814  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000818  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00081c  bb3b08fe  bneq r16, zero, -276
000820  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000824  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000828  9f010002  addli r3, zero, 256
00082c  1f010000  addli r2, zero, 0
000830  eaf111c0  vsrl.p vr3, r3, vr1
000834  6af101c0  vsrl.p vr2, r3, vr0
000838  9f010001  addli r3, zero, 128
00083c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000840  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000844  eaf111c0  vsrl.p vr3, r3, vr1
000848  6af101c0  vsrl.p vr2, r3, vr0
00084c  9f018000  addli r3, zero, 64
000850  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000854  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000858  eaf111c0  vsrl.p vr3, r3, vr1
00085c  6af101c0  vsrl.p vr2, r3, vr0
000860  9f014000  addli r3, zero, 32
000864  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000868  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00086c  eaf111c0  vsrl.p vr3, r3, vr1
000870  6af101c0  vsrl.p vr2, r3, vr0
000874  abf1ffff  lui r3, 1048575
000878  9b9101f8  ori r3, r3, 3968
00087c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000880  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000884  fa990040  vextracti.f r19, 0(vr1)
000888  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00088c  fa150040  vextracti.f r11, 0(vr0)
000890  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000894  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000898  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00089c  8b942710  add.s r9, r15, r2
0008a0  8b182a10  add.s r17, r20, r2
0008a4  9f810101  addli r3, r3, 128
0008a8  1f010104  addli r2, r2, 512
0008ac  1f880418  addli r16, r9, 3072
0008b0  1f890419  addli r18, r9, 3200
0008b4  42940802  vload_mask16.mz vr8{mr1}, 0(r17)
0008b8  9f8c8801  addli r25, r17, 192
0008bc  4a100802  vloads_mask16.mz vr0{mr1}, 0(r16)
0008c0  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
0008c4  1f888418  addli r16, r9, 3136
0008c8  1f898419  addli r18, r9, 3264
0008cc  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0008d0  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
0008d4  1f880801  addli r16, r17, 128
0008d8  ca130902  vloads_mask16.mz vr7{mr1}, 0(r18)
0008dc  1f898800  addli r18, r17, 64
0008e0  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
0008e4  42150902  vload_mask16.mz vr10{mr1}, 0(r18)
0008e8  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0008ec  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0008f0  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0008f4  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0008f8  46108802  vstore_mask16.mz vr8{mr1}, 0(r16)
0008fc  1f88041a  addli r16, r9, 3328
000900  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000904  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000908  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00090c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000910  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
000914  4a100802  vloads_mask16.mz vr0{mr1}, 0(r16)
000918  1f88841a  addli r16, r9, 3392
00091c  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
000920  9f8c0802  addli r25, r17, 256
000924  46105902  vstore_mask16.mz vr5{mr1}, 0(r18)
000928  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00092c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000930  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
000934  1f88041b  addli r16, r9, 3456
000938  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
00093c  9f84841b  addli r9, r9, 3520
000940  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000944  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000948  4a140802  vloads_mask16.mz vr8{mr1}, 0(r16)
00094c  1f888802  addli r16, r17, 320
000950  4a950402  vloads_mask16.mz vr10{mr1}, 0(r9)
000954  9f840803  addli r9, r17, 384
000958  9f888803  addli r17, r17, 448
00095c  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
000960  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000964  c2930402  vload_mask16.mz vr7{mr1}, 0(r9)
000968  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00096c  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
000970  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000974  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000978  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
00097c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000980  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
000984  13888105  setlt.u r16, r3, r24
000988  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00098c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000990  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000994  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000998  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00099c  46905402  vstore_mask16.mz vr5{mr1}, 0(r9)
0009a0  46907802  vstore_mask16.mz vr7{mr1}, 0(r17)
0009a4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0009a8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0009ac  bb4b08fe  bneq r16, zero, -272
0009b0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0009b4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0009b8  1f010002  addli r2, zero, 256
0009bc  e30c4fd4  loadli.w r25,  -5600(r30)
0009c0  6a7101c0  vsrl.p vr2, r2, vr0
0009c4  ea7111c0  vsrl.p vr3, r2, vr1
0009c8  1f010001  addli r2, zero, 128
0009cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009d4  6a7101c0  vsrl.p vr2, r2, vr0
0009d8  ea7111c0  vsrl.p vr3, r2, vr1
0009dc  1f018000  addli r2, zero, 64
0009e0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009e4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009e8  6a7101c0  vsrl.p vr2, r2, vr0
0009ec  ea7111c0  vsrl.p vr3, r2, vr1
0009f0  1f014000  addli r2, zero, 32
0009f4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009f8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009fc  6a7101c0  vsrl.p vr2, r2, vr0
000a00  ea7111c0  vsrl.p vr3, r2, vr1
000a04  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000a08  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a0c  fa940040  vextracti.f r9, 0(vr1)
000a10  7a110040  vextracti.f r2, 0(vr0)
000a14  8be12510  add.f.rn r3, r11, r2
000a18  8be49910  add.f.rn r9, r19, r9
000a1c  2b680000  lui r16, 6
000a20  ab680000  lui r17, 6
000a24  9bb52c00  slli r11, r25, 2
000a28  1f010000  addli r2, zero, 0
000a2c  1f080800  addli r16, r16, 0
000a30  9f880804  addli r17, r17, 512
000a34  1f090800  addli r18, r16, 0
000a38  9f890800  addli r19, r17, 0
000a3c  0b982511  add.s r16, r11, r18
000a40  8b983511  add.s r17, r11, r19
000a44  73e09800  stores.w r9, 0(r17)
000a48  73603800  stores.w r3, 0(r16)
000a4c  9b944500  ori r9, r11, 4
000a50  00a00300  mfence { lm, sm, gm }
000a54  e3018fd5  loadli.w r3,  -5440(r30)
000a58  8b952411  add.s r11, r9, r18
000a5c  8b943411  add.s r9, r9, r19
000a60  80a10104  csr_set csr3, r3
000a64  9b81ec07  andi r3, r25, 126
000a68  00d00100  sync_group
000a6c  efc50500  loads.w r11, 0(r11)
000a70  efc40400  loads.w r9, 0(r9)
000a74  9bb12100  slli r3, r3, 2
000a78  0b982111  add.s r16, r3, r18
000a7c  8b913111  add.s r3, r3, r19
000a80  6f480800  loads.w r16, 0(r16)
000a84  efc10100  loads.w r3, 0(r3)
000a88  8be50511  add.f.rn r11, r11, r16
000a8c  2b08003a  lui r16, 237568
000a90  8be13410  add.f.rn r3, r9, r3
000a94  8be40521  mul.f.rn r9, r11, r16
000a98  8be10121  mul.f.rn r3, r3, r16
000a9c  8be59420  mul.f.rn r11, r9, r9
000aa0  8be40458  neg.f r9, r9
000aa4  8be1b118  sub.f.rn r3, r3, r11
000aa8  e3053f00  loadli.w r11,  24(r30)
000aac  8be1b110  add.f.rn r3, r3, r11
000ab0  9f050000  addli r11, zero, 0
000ab4  8f810108  sqrt.f.rn r3, r3
000ab8  8f813618  div.f.rn r3, r13, r3
000abc  e3080fd7  loadli.w r17,  -5248(r30)
000ac0  63098fd6  loadli.w r18,  -5312(r30)
000ac4  0b182a10  add.s r16, r20, r2
000ac8  9f0c8800  addli r25, r16, 64
000acc  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
000ad0  8b982810  add.s r17, r17, r2
000ad4  0b192910  add.s r18, r18, r2
000ad8  c2900c02  vload_mask16.mz vr1{mr1}, 0(r25)
000adc  9f898800  addli r19, r17, 64
000ae0  4a910802  vloads_mask16.mz vr2{mr1}, 0(r17)
000ae4  4a120902  vloads_mask16.mz vr4{mr1}, 0(r18)
000ae8  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
000aec  9f098900  addli r19, r18, 64
000af0  12900402  vadd.f.mz.rn vr0{mr1}, r9, vr0
000af4  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
000af8  9f894500  addli r19, r11, 32
000afc  92901402  vadd.f.mz.rn vr1{mr1}, r9, vr1
000b00  93893207  setle.u r19, r5, r19
000b04  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
000b08  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
000b0c  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
000b10  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
000b14  46104802  vstore_mask16.mz vr4{mr1}, 0(r16)
000b18  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
000b1c  bb910900  bneq r19, zero, 100
000b20  9f8c0801  addli r25, r17, 128
000b24  9f090801  addli r19, r16, 128
000b28  1f088801  addli r16, r16, 192
000b2c  9f888801  addli r17, r17, 192
000b30  9f858500  addli r11, r11, 64
000b34  1f010102  addli r2, r2, 256
000b38  4a910c02  vloads_mask16.mz vr2{mr1}, 0(r25)
000b3c  9f0c0901  addli r25, r18, 128
000b40  1f098901  addli r18, r18, 192
000b44  42900902  vload_mask16.mz vr0{mr1}, 0(r19)
000b48  c2100802  vload_mask16.mz vr1{mr1}, 0(r16)
000b4c  4a920802  vloads_mask16.mz vr4{mr1}, 0(r17)
000b50  93885504  setlt.u r17, r11, r5
000b54  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
000b58  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
000b5c  12900402  vadd.f.mz.rn vr0{mr1}, r9, vr0
000b60  92901402  vadd.f.mz.rn vr1{mr1}, r9, vr1
000b64  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
000b68  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
000b6c  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
000b70  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
000b74  46903902  vstore_mask16.mz vr3{mr1}, 0(r19)
000b78  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
000b7c  3b8d08fe  bneq r17, zero, -192
000b80  1f018fd7  addli r2, r30, -5184
000b84  9f018fd7  addli r3, r30, -5184
000b88  9f040000  addli r9, zero, 0
000b8c  00a00000  mfence { lm }
000b90  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000b94  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000b98  9f858100  addli r11, r3, 64
000b9c  9f844400  addli r9, r9, 32
000ba0  9f810101  addli r3, r3, 128
000ba4  6a201622  vor.u.mz vr0{mr1}, r12, vr1
000ba8  ea221722  vor.u.mz vr5{mr1}, r14, vr1
000bac  42910502  vload_mask16.mz vr2{mr1}, 0(r11)
000bb0  93855404  setlt.u r11, r9, r5
000bb4  6e3230c2  vsrl.s.mz vr4{mr1}, vr0, vr3
000bb8  6e3020c2  vsrl.s.mz vr0{mr1}, vr0, vr2
000bbc  6a324302  vand.s.mz vr4{mr1}, r6, vr4
000bc0  6a300302  vand.s.mz vr0{mr1}, r6, vr0
000bc4  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
000bc8  e69101c0  vabs.f vr3, vr3
000bcc  16300102  vadd.s.mz vr0{mr1}, vr2, vr0
000bd0  661101c0  vabs.f vr2, vr2
000bd4  12b24a02  vadd.s.mz vr4{mr1}, r21, vr4
000bd8  72213242  vlt.u.mz mr2{mr1}, r4, vr3
000bdc  12b00a02  vadd.s.mz vr0{mr1}, r21, vr0
000be0  6a324b02  vand.s.mz vr4{mr1}, r22, vr4
000be4  6a300b02  vand.s.mz vr0{mr1}, r22, vr0
000be8  6a221e34  vor.u.mh vr4{mr2}, r28, vr1
000bec  72212242  vlt.u.mz mr2{mr1}, r4, vr2
000bf0  6aa11d22  vor.u.mz vr2{mr1}, r27, vr1
000bf4  6a201e34  vor.u.mh vr0{mr2}, r28, vr1
000bf8  ea201522  vor.u.mz vr1{mr1}, r10, vr1
000bfc  eeb142c2  vsrl.s.mz vr3{mr1}, vr5, vr4
000c00  6e3241c2  vsrl.s.mz vr4{mr1}, vr2, vr4
000c04  eeb202c2  vsrl.s.mz vr5{mr1}, vr5, vr0
000c08  6e3001c2  vsrl.s.mz vr0{mr1}, vr2, vr0
000c0c  6ab13002  vand.s.mz vr2{mr1}, r1, vr3
000c10  6a324d02  vand.s.mz vr4{mr1}, r26, vr4
000c14  eab15002  vand.s.mz vr3{mr1}, r1, vr5
000c18  6a300d02  vand.s.mz vr0{mr1}, r26, vr0
000c1c  6ab12622  vor.s.mz vr2{mr1}, r13, vr2
000c20  6ab24622  vor.s.mz vr4{mr1}, r13, vr4
000c24  6ab00622  vor.s.mz vr0{mr1}, r13, vr0
000c28  eab13622  vor.s.mz vr3{mr1}, r13, vr3
000c2c  06110120  vfloat2fp16_l.rz vr2, vr2
000c30  06500020  vfloat2fp16_h.rz vr0, vr0
000c34  06d10120  vfloat2fp16_h.rz vr2, vr3
000c38  06100220  vfloat2fp16_l.rz vr0, vr4
000c3c  eeb020a2  vsll.s.mz vr1{mr1}, vr1, vr2
000c40  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000c44  ea301402  vand.s.mz vr1{mr1}, r8, vr1
000c48  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
000c4c  46000102  vstore.mz vr0{mr1}, 0(r2)
000c50  1f018100  addli r2, r2, 64
000c54  bbfc05fe  bneq r11, zero, -196
000c58  9f017fd5  addli r3, r30, -5448
000c5c  6b580f00  load.d r[17:18], 0(r30)
000c60  e3056fd4  loadli.w r11,  -5584(r30)
000c64  2b0100f0  lui r2, 983040
000c68  6bd90100  load.d r[19:20], 0(r3)
000c6c  00a00000  mfence { lm }
000c70  17912500  or r2, r11, r2
000c74  0b282811  add.ul r[17:18], r[17:18], r[19:20]
000c78  1f797000  addli r18, zero, 63
000c7c  7f314801  s_lm2gm r2, r20, 0(r[17:18])
000c80  1f018fd4  addli r2, r30, -5568
000c84  00a00200  mfence { lm, gm }
000c88  e34c1f00  loadli.w r25,  12(r30)
000c8c  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
000c90  e3047fd4  loadli.w r9,  -5576(r30)
000c94  e3416fd4  loadli.w r3,  -5580(r30)
000c98  e3098fd5  loadli.w r19,  -5440(r30)
000c9c  8b939310  add.s r7, r7, r9
000ca0  3fe093fd  blt.s r7, r25, -2024
000ca4  abf00000  lui r1, 15
000ca8  9b90f0ff  ori r1, r1, 4095
000cac  80a10004  csr_set csr3, r1
000cb0  00d00100  sync_group
000cb4  5b640b00  j 23328
000cb8  e3403f00  loadli.w r1,  28(r30)
000cbc  37ca000a  beq r1, zero, 5776
000cc0  e3002f00  loadli.w r1,  16(r30)
000cc4  1f010010  addli r2, zero, 2048
000cc8  3baa2012  bneq r1, r2, 9864
000ccc  00350002  core_id r10
000cd0  9f200000  addli r1, zero, 2
000cd4  377e1526  beq r10, r1, 20380
000cd8  9f100000  addli r1, zero, 1
000cdc  376d1526  beq r10, r1, 20312
000ce0  bb2e0526  bneq r10, zero, 20392
000ce4  9f000040  addli r1, zero, 8192
000ce8  2b0100f0  lui r2, 983040
000cec  97902000  or r1, r1, r2
000cf0  2b110200  lui r2, 33
000cf4  1f010100  addli r2, r2, 0
000cf8  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000cfc  dbf10900  j 20364
000d00  e3403f00  loadli.w r1,  28(r30)
000d04  37db0010  beq r1, zero, 8916
000d08  80300002  core_id r1
000d0c  1f210000  addli r2, zero, 2
000d10  37dd2024  beq r1, r2, 19284
000d14  1f110000  addli r2, zero, 1
000d18  b7d42022  beq r1, r2, 17716
000d1c  bb9d0024  bneq r1, zero, 19300
000d20  63012f00  loadli.w r2,  16(r30)
000d24  ab0100f0  lui r3, 983040
000d28  1b311100  slli r2, r2, 1
000d2c  17113100  or r2, r2, r3
000d30  abd10100  lui r3, 29
000d34  9f810100  addli r3, r3, 0
000d38  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000d3c  db680900  j 19268
000d40  e3002f00  loadli.w r1,  16(r30)
000d44  1f010010  addli r2, zero, 2048
000d48  3be02008  bneq r1, r2, 4120
000d4c  e3403f00  loadli.w r1,  28(r30)
000d50  b7d1001c  beq r1, zero, 14452
000d54  803b0002  core_id r23
000d58  abd70000  lui r15, 13
000d5c  00510102  load_param_i r2, 2
000d60  1f150000  addli r10, zero, 1
000d64  9f058fd7  addli r11, r30, -5184
000d68  1f068000  addli r12, zero, 64
000d6c  9f060010  addli r13, zero, 2048
000d70  9bb05b00  slli r1, r23, 5
000d74  9b315100  slli r3, r2, 5
000d78  9f8707f0  addli r15, r15, -2048
000d7c  1f870000  addli r14, r1, 0
000d80  33080728  zext_int2long r[17:18], r14
000d84  2b0900f0  lui r18, 983040
000d88  1738a802  sll.d r[17:18], r[17:18], r10
000d8c  17192601  or r18, r12, r18
000d90  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000d94  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000d98  1b382700  slli r16, r14, 2
000d9c  0b97e110  add.s r14, r3, r14
000da0  00a00200  mfence { lm, gm }
000da4  42800502  vload.mz vr0{mr1}, 0(r11)
000da8  9308d704  setlt.u r17, r14, r13
000dac  0b18f810  add.s r16, r16, r15
000db0  1f098800  addli r18, r16, 64
000db4  86300000  vfp162float_l.rn vr1, vr0
000db8  06700000  vfp162float_h.rn vr0, vr0
000dbc  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000dc0  4e100902  vstores_mask16.mz vr0{mr1}, 0(r18)
000dc4  bbfe08fe  bneq r17, zero, -68
000dc8  abf20000  lui r5, 15
000dcc  1bb57b00  slli r10, r23, 7
000dd0  1b327100  slli r4, r2, 7
000dd4  1f160000  addli r12, zero, 1
000dd8  9f068fd7  addli r13, r30, -5184
000ddc  1f078000  addli r14, zero, 64
000de0  1f080010  addli r16, zero, 2048
000de4  9f880000  addli r17, r1, 0
000de8  00a00000  mfence { lm }
000dec  9f8202f0  addli r5, r5, -2048
000df0  8b155510  add.s r11, r10, r5
000df4  33890828  zext_int2long r[19:20], r17
000df8  2b0a00f0  lui r20, 983040
000dfc  8b983810  add.s r17, r17, r3
000e00  1739c902  sll.d r[19:20], r[19:20], r12
000e04  171a4701  or r20, r14, r20
000e08  0b292311  add.ul r[19:20], r[7:8], r[19:20]
000e0c  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
000e10  13890805  setlt.u r18, r17, r16
000e14  9f898500  addli r19, r11, 64
000e18  00a00200  mfence { lm, gm }
000e1c  42800602  vload.mz vr0{mr1}, 0(r13)
000e20  86300000  vfp162float_l.rn vr1, vr0
000e24  06700000  vfp162float_h.rn vr0, vr0
000e28  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
000e2c  8b954510  add.s r11, r11, r4
000e30  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
000e34  3b0f09fe  bneq r18, zero, -64
000e38  ab130100  lui r7, 17
000e3c  9f058fd7  addli r11, r30, -5184
000e40  1f068000  addli r12, zero, 64
000e44  9f060010  addli r13, zero, 2048
000e48  00a00000  mfence { lm }
000e4c  9f8303f0  addli r7, r7, -2048
000e50  0b137510  add.s r6, r10, r7
000e54  1f150000  addli r10, zero, 1
000e58  33880028  zext_int2long r[17:18], r1
000e5c  2b0700f0  lui r14, 983040
000e60  8b903010  add.s r1, r1, r3
000e64  1738a802  sll.d r[17:18], r[17:18], r10
000e68  1717e600  or r14, r12, r14
000e6c  0b280411  add.ul r[17:18], r[9:10], r[17:18]
000e70  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000e74  1387d004  setlt.u r14, r1, r13
000e78  1f088300  addli r16, r6, 64
000e7c  00a00200  mfence { lm, gm }
000e80  42800502  vload.mz vr0{mr1}, 0(r11)
000e84  86300000  vfp162float_l.rn vr1, vr0
000e88  06700000  vfp162float_h.rn vr0, vr0
000e8c  4e101302  vstores_mask16.mz vr1{mr1}, 0(r6)
000e90  0b134310  add.s r6, r6, r4
000e94  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
000e98  3b0f07fe  bneq r14, zero, -64
000e9c  abf00000  lui r1, 15
000ea0  00a00300  mfence { lm, sm, gm }
000ea4  9b811b00  andi r3, r23, 1
000ea8  1f020006  addli r4, zero, 768
000eac  9b90f0ff  ori r1, r1, 4095
000eb0  80a10004  csr_set csr3, r1
000eb4  9f000006  addli r1, zero, 768
000eb8  00d00100  sync_group
000ebc  67083fd6  storeli.w r3, -5248(r30)
000ec0  37a00100  beq r3, zero, 8
000ec4  1f02000a  addli r4, zero, 1280
000ec8  e3411f00  loadli.w r3,  12(r30)
000ecc  1f130000  addli r6, zero, 1
000ed0  3f94612c  blt.s r3, r6, 22788
000ed4  e3010fd7  loadli.w r3,  -5248(r30)
000ed8  9f068fd7  addli r13, r30, -5184
000edc  1b441100  srli r8, r2, 1
000ee0  1f014200  addli r2, r4, 32
000ee4  1b351200  slli r10, r4, 1
000ee8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000eec  2b390100  lui r18, 19
000ef0  1f030000  addli r6, zero, 0
000ef4  9bc41b00  srli r9, r23, 1
000ef8  9f787000  addli r17, zero, 63
000efc  1f0a0005  addli r20, zero, 640
000f00  1f0c4000  addli r24, zero, 32
000f04  1f0e0003  addli r28, zero, 384
000f08  670c2fd4  storeli.w r2, -5440(r30)
000f0c  0b11d510  add.s r2, r10, r13
000f10  1f0909f4  addli r18, r18, -1536
000f14  8b901120  mul.s r1, r3, r1
000f18  67041fd6  storeli.w r1, -5312(r30)
000f1c  9bb02000  slli r1, r1, 2
000f20  8b955010  add.s r11, r1, r5
000f24  0b967010  add.s r12, r1, r7
000f28  9b302200  slli r1, r4, 2
000f2c  8b90d010  add.s r1, r1, r13
000f30  9f8080ff  addli r1, r1, -64
000f34  e70b1fd4  storeli.w r1, -5448(r30)
000f38  9f0081ff  addli r1, r2, -64
000f3c  1f018fd4  addli r2, r30, -5568
000f40  670b1fd4  storeli.w r1, -5456(r30)
000f44  abf0ffff  lui r1, 1048575
000f48  00a00000  mfence { lm }
000f4c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000f50  1f810c00  addli r2, r25, 0
000f54  ab3c0100  lui r25, 19
000f58  9b9000f8  ori r1, r1, 3968
000f5c  9f8c0cf0  addli r25, r25, -2048
000f60  e7431fd4  storeli.w r1, -5572(r30)
000f64  abf00000  lui r1, 15
000f68  1b9df0ff  ori r26, r1, 4095
000f6c  5b040000  j 32
000f70  00a00300  mfence { lm, sm, gm }
000f74  80210d04  csr_set csr3, r26
000f78  00d00100  sync_group
000f7c  63411f00  loadli.w r2,  12(r30)
000f80  0b138310  add.s r6, r6, r8
000f84  3f202300  blt.s r6, r2, 8
000f88  dba3ffff  j -740
000f8c  8b109310  add.s r1, r6, r9
000f90  cb0f11fe  ble.s r2, r1, -32
000f94  63011f00  loadli.w r2,  8(r30)
000f98  8b028330  div.u r5, r6, r8
000f9c  9f110000  addli r3, zero, 1
000fa0  ab0300f0  lui r7, 983040
000fa4  8b902010  add.s r1, r1, r2
000fa8  63018fd6  loadli.w r2,  -5312(r30)
000fac  9bb0b000  slli r1, r1, 11
000fb0  97902000  or r1, r1, r2
000fb4  b3900028  sext_int2long r[2:3], r1
000fb8  17b13002  sll.d r[3:4], r[2:3], r3
000fbc  9bb06200  slli r1, r5, 6
000fc0  9f027fd6  addli r5, r30, -5320
000fc4  ebda0200  load.d r[22:23], 0(r5)
000fc8  97127500  or r5, r10, r7
000fcc  9b800004  andi r1, r1, 64
000fd0  17977001  or r14, r1, r23
000fd4  8baa2a10  add.ul r[22:23], r[22:23], r[3:4]
000fd8  ffa2da00  l_gm2lm r5, r13, 0(r[22:23])
000fdc  00a00200  mfence { lm, gm }
000fe0  e3006fd5  loadli.w r1,  -5456(r30)
000fe4  e3027fd5  loadli.w r5,  -5448(r30)
000fe8  e3038fd5  loadli.w r7,  -5440(r30)
000fec  c2800002  vload.mz vr1{mr1}, 0(r1)
000ff0  9f83c3ff  addli r7, r7, -32
000ff4  9f8982ff  addli r19, r5, -64
000ff8  9f8080ff  addli r1, r1, -64
000ffc  13887804  setlt.u r16, r17, r7
001000  06f10000  vfp162float_h.rn vr2, vr1
001004  86b00000  vfp162float_l.rn vr1, vr1
001008  46902202  vstore_mask16.mz vr2{mr1}, 0(r5)
00100c  9f8202ff  addli r5, r5, -128
001010  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
001014  3b6f08fe  bneq r16, zero, -40
001018  00a00000  mfence { lm }
00101c  e3000fd7  loadli.w r1,  -5248(r30)
001020  3bc60000  bneq r1, zero, 400
001024  9f008fd4  addli r1, r30, -5568
001028  63487fd4  loadli.w r16,  -5572(r30)
00102c  9f020000  addli r5, zero, 0
001030  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
001034  92303002  vadd.s.mz vr1{mr1}, zero, vr3
001038  12313002  vadd.s.mz vr2{mr1}, zero, vr3
00103c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
001040  8b90f210  add.s r1, r5, r15
001044  8b935610  add.s r7, r13, r5
001048  1f080801  addli r16, r16, 128
00104c  9f820204  addli r5, r5, 512
001050  9f890001  addli r19, r1, 128
001054  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
001058  9f8a8000  addli r21, r1, 64
00105c  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
001060  1f8b8301  addli r22, r7, 192
001064  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
001068  9f898001  addli r19, r1, 192
00106c  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
001070  9f8a8300  addli r21, r7, 64
001074  c2150b02  vload_mask16.mz vr11{mr1}, 0(r22)
001078  ca930902  vloads_mask16.mz vr7{mr1}, 0(r19)
00107c  9f890301  addli r19, r7, 128
001080  42950a02  vload_mask16.mz vr10{mr1}, 0(r21)
001084  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
001088  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00108c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
001090  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
001094  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
001098  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00109c  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
0010a0  46908902  vstore_mask16.mz vr8{mr1}, 0(r19)
0010a4  9f890002  addli r19, r1, 256
0010a8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0010ac  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0010b0  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0010b4  46905a02  vstore_mask16.mz vr5{mr1}, 0(r21)
0010b8  4a900902  vloads_mask16.mz vr0{mr1}, 0(r19)
0010bc  9f898002  addli r19, r1, 320
0010c0  46106b02  vstore_mask16.mz vr6{mr1}, 0(r22)
0010c4  1f8b0302  addli r22, r7, 256
0010c8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0010cc  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0010d0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0010d4  4a930902  vloads_mask16.mz vr6{mr1}, 0(r19)
0010d8  9f890003  addli r19, r1, 384
0010dc  c2130b02  vload_mask16.mz vr7{mr1}, 0(r22)
0010e0  9f808003  addli r1, r1, 448
0010e4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0010e8  4a940902  vloads_mask16.mz vr8{mr1}, 0(r19)
0010ec  9f898302  addli r19, r7, 320
0010f0  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
0010f4  9f800303  addli r1, r7, 384
0010f8  9f838303  addli r7, r7, 448
0010fc  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
001100  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001104  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001108  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00110c  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001110  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001114  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001118  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
00111c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001120  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
001124  93094805  setlt.u r19, r16, r20
001128  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00112c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001130  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001134  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001138  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00113c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001140  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001144  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001148  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00114c  bbdb09fe  bneq r19, zero, -268
001150  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001154  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001158  9f000002  addli r1, zero, 256
00115c  6af100c0  vsrl.p vr2, r1, vr0
001160  eaf110c0  vsrl.p vr3, r1, vr1
001164  9f000001  addli r1, zero, 128
001168  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00116c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001170  6af100c0  vsrl.p vr2, r1, vr0
001174  eaf110c0  vsrl.p vr3, r1, vr1
001178  9f008000  addli r1, zero, 64
00117c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001180  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001184  6af100c0  vsrl.p vr2, r1, vr0
001188  eaf110c0  vsrl.p vr3, r1, vr1
00118c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001190  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001194  6a710cc0  vsrl.p vr2, r24, vr0
001198  ea711cc0  vsrl.p vr3, r24, vr1
00119c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0011a0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0011a4  fa100040  vextracti.f r1, 0(vr0)
0011a8  fa930040  vextracti.f r7, 0(vr1)
0011ac  db650000  j 812
0011b0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0011b4  abf0ffff  lui r1, 1048575
0011b8  1f080000  addli r16, zero, 0
0011bc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0011c0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0011c4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0011c8  9b9900f8  ori r19, r1, 3968
0011cc  8b930711  add.s r7, r15, r16
0011d0  8b920611  add.s r5, r13, r16
0011d4  9f890901  addli r19, r19, 128
0011d8  1f080804  addli r16, r16, 512
0011dc  1f8b0331  addli r22, r7, 6272
0011e0  9f800330  addli r1, r7, 6144
0011e4  9f8d8331  addli r27, r7, 6336
0011e8  9f8a0218  addli r21, r5, 3072
0011ec  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
0011f0  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
0011f4  9f808330  addli r1, r7, 6208
0011f8  ca940d02  vloads_mask16.mz vr9{mr1}, 0(r27)
0011fc  1f8b0219  addli r22, r5, 3200
001200  42930a02  vload_mask16.mz vr6{mr1}, 0(r21)
001204  9f8d8219  addli r27, r5, 3264
001208  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
00120c  42150b02  vload_mask16.mz vr10{mr1}, 0(r22)
001210  9f808218  addli r1, r5, 3136
001214  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
001218  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
00121c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001220  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
001224  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
001228  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
00122c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001230  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
001234  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
001238  9f8a0332  addli r21, r7, 6400
00123c  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
001240  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
001244  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001248  46107b02  vstore_mask16.mz vr7{mr1}, 0(r22)
00124c  1f8b021a  addli r22, r5, 3328
001250  c2130b02  vload_mask16.mz vr7{mr1}, 0(r22)
001254  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001258  9f80021b  addli r1, r5, 3456
00125c  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
001260  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001264  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
001268  9f8a8332  addli r21, r7, 6464
00126c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001270  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001274  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
001278  9f8a0333  addli r21, r7, 6528
00127c  9f838333  addli r7, r7, 6592
001280  4a940a02  vloads_mask16.mz vr8{mr1}, 0(r21)
001284  9f8a821a  addli r21, r5, 3392
001288  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
00128c  9f82821b  addli r5, r5, 3520
001290  9383c905  setlt.u r7, r19, r28
001294  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
001298  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00129c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0012a0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0012a4  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
0012a8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0012ac  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0012b0  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
0012b4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0012b8  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
0012bc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0012c0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0012c4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0012c8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0012cc  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0012d0  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0012d4  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
0012d8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0012dc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0012e0  bbbb03fe  bneq r7, zero, -276
0012e4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0012e8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0012ec  9f000002  addli r1, zero, 256
0012f0  9f090000  addli r19, zero, 0
0012f4  eaf110c0  vsrl.p vr3, r1, vr1
0012f8  6af100c0  vsrl.p vr2, r1, vr0
0012fc  9f000001  addli r1, zero, 128
001300  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001304  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001308  eaf110c0  vsrl.p vr3, r1, vr1
00130c  6af100c0  vsrl.p vr2, r1, vr0
001310  9f008000  addli r1, zero, 64
001314  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001318  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00131c  eaf110c0  vsrl.p vr3, r1, vr1
001320  6af100c0  vsrl.p vr2, r1, vr0
001324  abf0ffff  lui r1, 1048575
001328  9b9200f8  ori r5, r1, 3968
00132c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001330  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001334  ea711cc0  vsrl.p vr3, r24, vr1
001338  6a710cc0  vsrl.p vr2, r24, vr0
00133c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001340  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001344  7a980040  vextracti.f r16, 0(vr1)
001348  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00134c  fa1d0040  vextracti.f r27, 0(vr0)
001350  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001354  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001358  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00135c  8b903711  add.s r1, r15, r19
001360  8b933611  add.s r7, r13, r19
001364  9f820201  addli r5, r5, 128
001368  9f890904  addli r19, r19, 512
00136c  9f8a0018  addli r21, r1, 3072
001370  1f8b0019  addli r22, r1, 3200
001374  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
001378  9f8b8301  addli r23, r7, 192
00137c  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
001380  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
001384  9f8a8018  addli r21, r1, 3136
001388  1f8b8019  addli r22, r1, 3264
00138c  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
001390  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
001394  9f8a0301  addli r21, r7, 128
001398  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
00139c  1f8b8300  addli r22, r7, 64
0013a0  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
0013a4  42150b02  vload_mask16.mz vr10{mr1}, 0(r22)
0013a8  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0013ac  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0013b0  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0013b4  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0013b8  46908a02  vstore_mask16.mz vr8{mr1}, 0(r21)
0013bc  9f8a001a  addli r21, r1, 3328
0013c0  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0013c4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0013c8  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0013cc  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0013d0  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
0013d4  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
0013d8  9f8a801a  addli r21, r1, 3392
0013dc  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
0013e0  9f8b0302  addli r23, r7, 256
0013e4  46105b02  vstore_mask16.mz vr5{mr1}, 0(r22)
0013e8  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0013ec  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0013f0  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
0013f4  9f8a001b  addli r21, r1, 3456
0013f8  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
0013fc  9f80801b  addli r1, r1, 3520
001400  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001404  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001408  4a940a02  vloads_mask16.mz vr8{mr1}, 0(r21)
00140c  9f8a8302  addli r21, r7, 320
001410  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
001414  9f800303  addli r1, r7, 384
001418  9f838303  addli r7, r7, 448
00141c  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
001420  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001424  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001428  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00142c  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001430  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001434  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001438  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
00143c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001440  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
001444  938a4205  setlt.u r21, r5, r20
001448  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00144c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001450  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001454  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001458  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00145c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001460  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001464  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001468  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00146c  bbcb0afe  bneq r21, zero, -272
001470  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001474  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001478  9f000002  addli r1, zero, 256
00147c  803b0002  core_id r23
001480  6af100c0  vsrl.p vr2, r1, vr0
001484  eaf110c0  vsrl.p vr3, r1, vr1
001488  9f000001  addli r1, zero, 128
00148c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001490  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001494  6af100c0  vsrl.p vr2, r1, vr0
001498  eaf110c0  vsrl.p vr3, r1, vr1
00149c  9f008000  addli r1, zero, 64
0014a0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0014a4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0014a8  6af100c0  vsrl.p vr2, r1, vr0
0014ac  eaf110c0  vsrl.p vr3, r1, vr1
0014b0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0014b4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0014b8  6a710cc0  vsrl.p vr2, r24, vr0
0014bc  ea711cc0  vsrl.p vr3, r24, vr1
0014c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0014c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0014c8  fa100040  vextracti.f r1, 0(vr0)
0014cc  fa920040  vextracti.f r5, 0(vr1)
0014d0  8be01d10  add.f.rn r1, r27, r1
0014d4  8b635810  add.f.rn r7, r16, r5
0014d8  1b382700  slli r16, r14, 2
0014dc  9f020000  addli r5, zero, 0
0014e0  8b199811  add.s r19, r16, r25
0014e4  8b1a2811  add.s r21, r16, r18
0014e8  73e01900  stores.w r1, 0(r19)
0014ec  9b00e707  andi r1, r14, 126
0014f0  73e07a00  stores.w r7, 0(r21)
0014f4  9b134800  ori r7, r16, 4
0014f8  9f090000  addli r19, zero, 0
0014fc  00a00300  mfence { lm, sm, gm }
001500  80210d04  csr_set csr3, r26
001504  00d00100  sync_group
001508  9bb02000  slli r1, r1, 2
00150c  0b979311  add.s r14, r7, r25
001510  8b932311  add.s r7, r7, r18
001514  0b989011  add.s r16, r1, r25
001518  6f470700  loads.w r14, 0(r14)
00151c  8b902011  add.s r1, r1, r18
001520  efc30300  loads.w r7, 0(r7)
001524  6f480800  loads.w r16, 0(r16)
001528  efc00000  loads.w r1, 0(r1)
00152c  0b670711  add.f.rn r14, r14, r16
001530  2b08003a  lui r16, 237568
001534  8be01310  add.f.rn r1, r7, r1
001538  8b630721  mul.f.rn r7, r14, r16
00153c  8be00021  mul.f.rn r1, r1, r16
001540  0be77320  mul.f.rn r14, r7, r7
001544  0be80358  neg.f r16, r7
001548  8be0e018  sub.f.rn r1, r1, r14
00154c  63073f00  loadli.w r14,  24(r30)
001550  8be0e010  add.f.rn r1, r1, r14
001554  2b07803f  lui r14, 260096
001558  8f800008  sqrt.f.rn r1, r1
00155c  0f071718  div.f.rn r14, r14, r1
001560  8b905510  add.s r1, r11, r5
001564  8b935610  add.s r7, r13, r5
001568  8b1d5610  add.s r27, r12, r5
00156c  1f8b8000  addli r22, r1, 64
001570  9f8a8300  addli r21, r7, 64
001574  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
001578  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
00157c  4a920d02  vloads_mask16.mz vr4{mr1}, 0(r27)
001580  ca110b02  vloads_mask16.mz vr3{mr1}, 0(r22)
001584  1f8b8d00  addli r22, r27, 64
001588  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
00158c  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
001590  1f8b4900  addli r22, r19, 32
001594  12100802  vadd.f.mz.rn vr0{mr1}, r16, vr0
001598  130b6207  setle.u r22, r4, r22
00159c  92101802  vadd.f.mz.rn vr1{mr1}, r16, vr1
0015a0  0a100702  vmul.f.mz.rn vr0{mr1}, r14, vr0
0015a4  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
0015a8  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
0015ac  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
0015b0  46904302  vstore_mask16.mz vr4{mr1}, 0(r7)
0015b4  46905a02  vstore_mask16.mz vr5{mr1}, 0(r21)
0015b8  bb110b00  bneq r22, zero, 100
0015bc  1f8b0001  addli r22, r1, 128
0015c0  9f8a0301  addli r21, r7, 128
0015c4  9f838301  addli r7, r7, 192
0015c8  9f808001  addli r1, r1, 192
0015cc  9f898900  addli r19, r19, 64
0015d0  9f820202  addli r5, r5, 256
0015d4  4a110b02  vloads_mask16.mz vr2{mr1}, 0(r22)
0015d8  1f8b0d01  addli r22, r27, 128
0015dc  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
0015e0  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
0015e4  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
0015e8  93804904  setlt.u r1, r19, r4
0015ec  ca110b02  vloads_mask16.mz vr3{mr1}, 0(r22)
0015f0  1f8b8d01  addli r22, r27, 192
0015f4  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
0015f8  12100802  vadd.f.mz.rn vr0{mr1}, r16, vr0
0015fc  92101802  vadd.f.mz.rn vr1{mr1}, r16, vr1
001600  0a100702  vmul.f.mz.rn vr0{mr1}, r14, vr0
001604  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
001608  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
00160c  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
001610  46903a02  vstore_mask16.mz vr3{mr1}, 0(r21)
001614  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
001618  3bad00fe  bneq r1, zero, -184
00161c  9f008fd7  addli r1, r30, -5184
001620  9f028fd7  addli r5, r30, -5184
001624  9f030000  addli r7, zero, 0
001628  00a00000  mfence { lm }
00162c  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
001630  1f878200  addli r14, r5, 64
001634  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
001638  9f834300  addli r7, r7, 32
00163c  9f820201  addli r5, r5, 128
001640  c2100702  vload_mask16.mz vr1{mr1}, 0(r14)
001644  13874304  setlt.u r14, r7, r4
001648  06110000  vfloat2fp16_l.rn vr2, vr0
00164c  06d10000  vfloat2fp16_h.rn vr2, vr1
001650  46802002  vstore.mz vr2{mr1}, 0(r1)
001654  9f808000  addli r1, r1, 64
001658  3b5f07fe  bneq r14, zero, -44
00165c  eb5a0f00  load.d r[22:23], 0(r30)
001660  ab0000f0  lui r1, 983040
001664  00a00000  mfence { lm }
001668  97101500  or r1, r10, r1
00166c  0ba12a10  add.ul r[3:4], r[22:23], r[3:4]
001670  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
001674  00a00200  mfence { lm, gm }
001678  db20ffff  j -1788
00167c  e3403f00  loadli.w r1,  28(r30)
001680  b7c60014  beq r1, zero, 10672
001684  80390002  core_id r19
001688  63012f00  loadli.w r2,  16(r30)
00168c  005a0102  load_param_i r20, 2
001690  9bb05900  slli r1, r19, 5
001694  4b431100  ble.s r2, r1, 208
001698  2b960000  lui r12, 9
00169c  9f110000  addli r3, zero, 1
0016a0  1f058fd7  addli r10, r30, -5184
0016a4  9f058000  addli r11, zero, 64
0016a8  1b315a00  slli r2, r20, 5
0016ac  9f860000  addli r13, r1, 0
0016b0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0016b4  1f0606f0  addli r12, r12, -2048
0016b8  33880628  zext_int2long r[17:18], r13
0016bc  2b0900f0  lui r18, 983040
0016c0  17383802  sll.d r[17:18], r[17:18], r3
0016c4  17992501  or r18, r11, r18
0016c8  0b280211  add.ul r[17:18], r[5:6], r[17:18]
0016cc  7f29a800  l_gm2lm r18, r10, 0(r[17:18])
0016d0  1bb82600  slli r16, r13, 2
0016d4  8b16d110  add.s r13, r2, r13
0016d8  00a00200  mfence { lm, gm }
0016dc  c2000502  vload.mz vr1{mr1}, 0(r10)
0016e0  0b18c810  add.s r16, r16, r12
0016e4  9f088800  addli r17, r16, 64
0016e8  66411080  vmerge_l.hf vr2, vr0, vr1
0016ec  e64010a0  vmerge_h.hf vr1, vr0, vr1
0016f0  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
0016f4  4e901802  vstores_mask16.mz vr1{mr1}, 0(r17)
0016f8  3f8ff6fe  blt.s r13, r15, -64
0016fc  2ba20000  lui r4, 10
001700  9bb17900  slli r3, r19, 7
001704  9f120000  addli r5, zero, 1
001708  1f058fd7  addli r10, r30, -5184
00170c  9f058000  addli r11, zero, 64
001710  1f860000  addli r12, r1, 0
001714  00a00000  mfence { lm }
001718  1f0202f0  addli r4, r4, -2048
00171c  8b914110  add.s r3, r3, r4
001720  1b327a00  slli r4, r20, 7
001724  33080628  zext_int2long r[17:18], r12
001728  ab0600f0  lui r13, 983040
00172c  0b162610  add.s r12, r12, r2
001730  17385802  sll.d r[17:18], r[17:18], r5
001734  9796d500  or r13, r11, r13
001738  0b280311  add.ul r[17:18], r[7:8], r[17:18]
00173c  ff26a800  l_gm2lm r13, r10, 0(r[17:18])
001740  9f868100  addli r13, r3, 64
001744  00a00200  mfence { lm, gm }
001748  c2000502  vload.mz vr1{mr1}, 0(r10)
00174c  66411080  vmerge_l.hf vr2, vr0, vr1
001750  e64010a0  vmerge_h.hf vr1, vr0, vr1
001754  4e902102  vstores_mask16.mz vr2{mr1}, 0(r3)
001758  8b914110  add.s r3, r3, r4
00175c  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
001760  3f1ff6fe  blt.s r12, r15, -60
001764  63012f00  loadli.w r2,  16(r30)
001768  cb211100  ble.s r2, r1, 104
00176c  2bb30000  lui r6, 11
001770  1f110000  addli r2, zero, 1
001774  9f018fd7  addli r3, r30, -5184
001778  1f028000  addli r4, zero, 64
00177c  9b325a00  slli r5, r20, 5
001780  00a00000  mfence { lm }
001784  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001788  1f0303f0  addli r6, r6, -2048
00178c  33850028  zext_int2long r[11:12], r1
001790  ab0300f0  lui r7, 983040
001794  17352502  sll.d r[11:12], r[11:12], r2
001798  97137200  or r7, r4, r7
00179c  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
0017a0  ff233500  l_gm2lm r7, r3, 0(r[11:12])
0017a4  9bb32000  slli r7, r1, 2
0017a8  8b901210  add.s r1, r5, r1
0017ac  00a00200  mfence { lm, gm }
0017b0  c2800102  vload.mz vr1{mr1}, 0(r3)
0017b4  8b936310  add.s r7, r7, r6
0017b8  1f858300  addli r10, r7, 64
0017bc  66411080  vmerge_l.hf vr2, vr0, vr1
0017c0  e64010a0  vmerge_h.hf vr1, vr0, vr1
0017c4  4e902302  vstores_mask16.mz vr2{mr1}, 0(r7)
0017c8  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
0017cc  3f8ff0fe  blt.s r1, r15, -64
0017d0  abf00000  lui r1, 15
0017d4  63411f00  loadli.w r2,  12(r30)
0017d8  00a00300  mfence { lm, sm, gm }
0017dc  9b90f0ff  ori r1, r1, 4095
0017e0  80a10004  csr_set csr3, r1
0017e4  00d00100  sync_group
0017e8  cb3f3127  ble.s r2, r19, 20460
0017ec  e3002f00  loadli.w r1,  16(r30)
0017f0  63412f00  loadli.w r2,  20(r30)
0017f4  1f058fd7  addli r10, r30, -5184
0017f8  9f150000  addli r11, zero, 1
0017fc  1f064000  addli r12, zero, 32
001800  1f787000  addli r16, zero, 63
001804  9f080002  addli r17, zero, 256
001808  ab0a803f  lui r21, 260096
00180c  ab0cffff  lui r25, 1048560
001810  2b0d807f  lui r26, 522240
001814  ab0dc07f  lui r27, 523264
001818  abe37f00  lui r7, 2046
00181c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001820  33820008  fix2float.rn r4, r1
001824  8b912010  add.s r3, r1, r2
001828  1bb31000  slli r6, r1, 1
00182c  e7034fd4  storeli.w r4, -5576(r30)
001830  1bb22000  slli r4, r1, 2
001834  9f804000  addli r1, r1, 32
001838  9ff1f1ff  addli r3, r3, -1
00183c  67431fd4  storeli.w r1, -5580(r30)
001840  8b10a210  add.s r1, r4, r10
001844  8b922130  div.s r5, r3, r2
001848  8b11a310  add.s r3, r6, r10
00184c  2be20700  lui r4, 126
001850  9f8080ff  addli r1, r1, -64
001854  67031fd4  storeli.w r1, -5584(r30)
001858  9f8081ff  addli r1, r3, -64
00185c  e7421fd4  storeli.w r1, -5588(r30)
001860  9b302100  slli r1, r2, 2
001864  2bf100fc  lui r2, 1032207
001868  67041fd6  storeli.w r1, -5312(r30)
00186c  abf0ffff  lui r1, 1048575
001870  1b1101c0  ori r2, r2, 3072
001874  00a00000  mfence { lm }
001878  67044fd5  storeli.w r20, -5568(r30)
00187c  e7436fd4  storeli.w r6, -5572(r30)
001880  9b90f0ff  ori r1, r1, 4095
001884  670c1fd4  storeli.w r1, -5440(r30)
001888  ab700000  lui r1, 7
00188c  1b9cf0ff  ori r24, r1, 4095
001890  ab00ff03  lui r1, 16368
001894  9b94f03f  ori r9, r1, 1023
001898  9f000fd7  addli r1, r30, -5248
00189c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0018a0  db080000  j 68
0018a4  9f016fd5  addli r3, r30, -5456
0018a8  6b590f00  load.d r[19:20], 0(r30)
0018ac  63437fd4  loadli.w r6,  -5572(r30)
0018b0  ab0000f0  lui r1, 983040
0018b4  1f787000  addli r16, zero, 63
0018b8  6bdb0100  load.d r[23:24], 0(r3)
0018bc  00a00000  mfence { lm }
0018c0  97101300  or r1, r6, r1
0018c4  0b2b6911  add.ul r[23:24], r[19:20], r[23:24]
0018c8  e3097fd5  loadli.w r19,  -5448(r30)
0018cc  ff30ab00  s_lm2gm r1, r10, 0(r[23:24])
0018d0  00a00200  mfence { lm, gm }
0018d4  e3401f00  loadli.w r1,  12(r30)
0018d8  8b193a11  add.s r19, r20, r19
0018dc  3fa01900  blt.s r19, r1, 8
0018e0  dbde0900  j 20212
0018e4  e3001f00  loadli.w r1,  8(r30)
0018e8  9f017fd6  addli r3, r30, -5320
0018ec  e70b3fd5  storeli.w r19, -5448(r30)
0018f0  8b901910  add.s r1, r19, r1
0018f4  6bd90100  load.d r[19:20], 0(r3)
0018f8  9f016fd5  addli r3, r30, -5456
0018fc  8b90f020  mul.s r1, r1, r15
001900  339b0028  sext_int2long r[23:24], r1
001904  ab0000f0  lui r1, 983040
001908  173bbb02  sll.d r[23:24], r[23:24], r11
00190c  97101300  or r1, r6, r1
001910  73b06101  store.d r[23:24], 0(r3)
001914  0b2b6911  add.ul r[23:24], r[19:20], r[23:24]
001918  ff20ab00  l_gm2lm r1, r10, 0(r[23:24])
00191c  00a00200  mfence { lm, gm }
001920  bff0c700  blt.s r15, r12, 60
001924  e3405fd4  loadli.w r1,  -5588(r30)
001928  e3016fd4  loadli.w r3,  -5584(r30)
00192c  63436fd4  loadli.w r6,  -5580(r30)
001930  c2800002  vload.mz vr1{mr1}, 0(r1)
001934  1f03c3ff  addli r6, r6, -32
001938  9f8681ff  addli r13, r3, -64
00193c  9f8080ff  addli r1, r1, -64
001940  13046804  setlt.u r8, r16, r6
001944  664110a0  vmerge_h.hf vr2, vr0, vr1
001948  e6401080  vmerge_l.hf vr1, vr0, vr1
00194c  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
001950  9f8101ff  addli r3, r3, -128
001954  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
001958  3b6f04fe  bneq r8, zero, -40
00195c  00a00000  mfence { lm }
001960  3f88b200  blt.s r5, r11, 512
001964  1f090000  addli r18, zero, 0
001968  9f000000  addli r1, zero, 0
00196c  9f060000  addli r13, zero, 0
001970  db0e0000  j 116
001974  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001978  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00197c  9f010001  addli r3, zero, 128
001980  9f960600  addli r13, r13, 1
001984  6af108c0  vsrl.p vr2, r17, vr0
001988  eaf118c0  vsrl.p vr3, r17, vr1
00198c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001990  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001994  6af101c0  vsrl.p vr2, r3, vr0
001998  eaf111c0  vsrl.p vr3, r3, vr1
00199c  9f018000  addli r3, zero, 64
0019a0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0019a4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0019a8  6af101c0  vsrl.p vr2, r3, vr0
0019ac  eaf111c0  vsrl.p vr3, r3, vr1
0019b0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0019b4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0019b8  6a7106c0  vsrl.p vr2, r12, vr0
0019bc  ea7116c0  vsrl.p vr3, r12, vr1
0019c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0019c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0019c8  fa110040  vextracti.f r3, 0(vr0)
0019cc  7a930040  vextracti.f r6, 0(vr1)
0019d0  0b693910  add.f.rn r18, r18, r3
0019d4  9f010fd7  addli r3, r30, -5248
0019d8  8be06010  add.f.rn r1, r1, r6
0019dc  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0019e0  37a65600  beq r13, r5, 392
0019e4  9f810600  addli r3, r13, 0
0019e8  37401701  beq r14, r17, 16
0019ec  e3018fd5  loadli.w r3,  -5440(r30)
0019f0  97a13600  xor r3, r13, r3
0019f4  8b913210  add.s r3, r5, r3
0019f8  0b93e120  mul.s r6, r3, r14
0019fc  12320002  vadd.s.mz vr4{mr1}, zero, vr0
001a00  92310002  vadd.s.mz vr3{mr1}, zero, vr0
001a04  12310002  vadd.s.mz vr2{mr1}, zero, vr0
001a08  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001a0c  0b936718  sub.s r6, r15, r6
001a10  0b18e340  min.s r16, r6, r14
001a14  bf0db8fe  blt.s r16, r11, -160
001a18  63038fd6  loadli.w r6,  -5312(r30)
001a1c  2b940000  lui r8, 9
001a20  1f0b0000  addli r22, zero, 0
001a24  1f0e8fd7  addli r28, r30, -5184
001a28  1f0404f0  addli r8, r8, -2048
001a2c  8b1b3320  mul.s r23, r6, r3
001a30  9f010fd7  addli r3, r30, -5248
001a34  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
001a38  92304002  vadd.s.mz vr1{mr1}, zero, vr4
001a3c  12314002  vadd.s.mz vr2{mr1}, zero, vr4
001a40  92314002  vadd.s.mz vr3{mr1}, zero, vr4
001a44  0b137411  add.s r6, r8, r23
001a48  8b117e11  add.s r3, r28, r23
001a4c  1f058300  addli r10, r6, 64
001a50  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
001a54  9f098301  addli r19, r6, 192
001a58  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
001a5c  1f8a8101  addli r20, r3, 192
001a60  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
001a64  1f050301  addli r10, r6, 128
001a68  4a940902  vloads_mask16.mz vr8{mr1}, 0(r19)
001a6c  9f890101  addli r19, r3, 128
001a70  42100a02  vload_mask16.mz vr0{mr1}, 0(r20)
001a74  ca130502  vloads_mask16.mz vr7{mr1}, 0(r10)
001a78  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
001a7c  1f858100  addli r10, r3, 64
001a80  42150502  vload_mask16.mz vr10{mr1}, 0(r10)
001a84  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001a88  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001a8c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001a90  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001a94  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001a98  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001a9c  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
001aa0  46106502  vstore_mask16.mz vr6{mr1}, 0(r10)
001aa4  1f058b00  addli r10, r22, 64
001aa8  46100a02  vstore_mask16.mz vr0{mr1}, 0(r20)
001aac  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001ab0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001ab4  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001ab8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001abc  46907902  vstore_mask16.mz vr7{mr1}, 0(r19)
001ac0  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001ac4  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001ac8  cb3aa8fe  ble.s r16, r10, -340
001acc  9f090302  addli r19, r6, 256
001ad0  1f0a8302  addli r20, r6, 320
001ad4  1f850102  addli r10, r3, 256
001ad8  1f0b0b01  addli r22, r22, 128
001adc  1f040404  addli r8, r8, 512
001ae0  1f0e0e04  addli r28, r28, 512
001ae4  4a900902  vloads_mask16.mz vr0{mr1}, 0(r19)
001ae8  9f090303  addli r19, r6, 384
001aec  1f038303  addli r6, r6, 448
001af0  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
001af4  42130502  vload_mask16.mz vr6{mr1}, 0(r10)
001af8  ca930902  vloads_mask16.mz vr7{mr1}, 0(r19)
001afc  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
001b00  1f830103  addli r6, r3, 384
001b04  9f898102  addli r19, r3, 320
001b08  9f818103  addli r3, r3, 448
001b0c  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
001b10  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
001b14  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
001b18  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
001b1c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001b20  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001b24  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001b28  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001b2c  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
001b30  46905902  vstore_mask16.mz vr5{mr1}, 0(r19)
001b34  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
001b38  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001b3c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001b40  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
001b44  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001b48  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001b4c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001b50  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001b54  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001b58  bf3b0bff  blt.s r22, r16, -276
001b5c  5bc3ffff  j -488
001b60  9f000000  addli r1, zero, 0
001b64  1f090000  addli r18, zero, 0
001b68  aba90000  lui r19, 10
001b6c  2bba0000  lui r20, 11
001b70  1f058fd7  addli r10, r30, -5184
001b74  00a00000  mfence { lm }
001b78  9f8909f0  addli r19, r19, -2048
001b7c  1f0a0af0  addli r20, r20, -2048
001b80  bfc3b700  blt.s r15, r11, 240
001b84  63037fd4  loadli.w r6,  -5576(r30)
001b88  1f040000  addli r8, zero, 0
001b8c  1f080000  addli r16, zero, 0
001b90  8f016918  div.f.rn r3, r18, r6
001b94  8f806018  div.f.rn r1, r1, r6
001b98  0be33120  mul.f.rn r6, r3, r3
001b9c  8be60158  neg.f r13, r3
001ba0  8be06018  sub.f.rn r1, r1, r6
001ba4  63033f00  loadli.w r6,  24(r30)
001ba8  8be06010  add.f.rn r1, r1, r6
001bac  8f800008  sqrt.f.rn r1, r1
001bb0  8f801a18  div.f.rn r1, r21, r1
001bb4  0b133411  add.s r6, r8, r19
001bb8  8b118510  add.s r3, r10, r8
001bbc  1f098300  addli r18, r6, 64
001bc0  4a110302  vloads_mask16.mz vr2{mr1}, 0(r6)
001bc4  0b134411  add.s r6, r8, r20
001bc8  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001bcc  ca110902  vloads_mask16.mz vr3{mr1}, 0(r18)
001bd0  1f898100  addli r18, r3, 64
001bd4  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
001bd8  1f038300  addli r6, r6, 64
001bdc  c2120902  vload_mask16.mz vr5{mr1}, 0(r18)
001be0  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
001be4  1f034800  addli r6, r16, 32
001be8  92901602  vadd.f.mz.rn vr1{mr1}, r13, vr1
001bec  92925602  vadd.f.mz.rn vr5{mr1}, r13, vr5
001bf0  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
001bf4  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
001bf8  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
001bfc  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
001c00  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
001c04  46106902  vstore_mask16.mz vr6{mr1}, 0(r18)
001c08  cba16700  ble.s r15, r6, 104
001c0c  0b938910  add.s r6, r19, r8
001c10  0b198a10  add.s r18, r20, r8
001c14  1f088800  addli r16, r16, 64
001c18  1f040402  addli r8, r8, 256
001c1c  1f0b0301  addli r22, r6, 128
001c20  9f0b0901  addli r23, r18, 128
001c24  1f038301  addli r6, r6, 192
001c28  1f098901  addli r18, r18, 192
001c2c  ca100b02  vloads_mask16.mz vr1{mr1}, 0(r22)
001c30  1f8b0101  addli r22, r3, 128
001c34  9f818101  addli r3, r3, 192
001c38  4a910b02  vloads_mask16.mz vr2{mr1}, 0(r23)
001c3c  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
001c40  4a130902  vloads_mask16.mz vr6{mr1}, 0(r18)
001c44  c2110b02  vload_mask16.mz vr3{mr1}, 0(r22)
001c48  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
001c4c  92913602  vadd.f.mz.rn vr3{mr1}, r13, vr3
001c50  12924602  vadd.f.mz.rn vr4{mr1}, r13, vr4
001c54  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
001c58  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
001c5c  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
001c60  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
001c64  46102b02  vstore_mask16.mz vr2{mr1}, 0(r22)
001c68  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001c6c  3f2df8fe  blt.s r16, r15, -184
001c70  00a00000  mfence { lm }
001c74  1f032000  addli r6, zero, 16
001c78  1f380000  addli r16, zero, 3
001c7c  1f591000  addli r18, zero, 13
001c80  9f291000  addli r19, zero, 10
001c84  630a8fd4  loadli.w r20,  -5568(r30)
001c88  3ff0b7fe  blt.s r15, r11, -996
001c8c  9f008fd7  addli r1, r30, -5184
001c90  1f048fd7  addli r8, r30, -5184
001c94  9f060000  addli r13, zero, 0
001c98  c2110402  vload_mask16.mz vr3{mr1}, 0(r8)
001c9c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001ca0  9f018400  addli r3, r8, 64
001ca4  9f864600  addli r13, r13, 32
001ca8  1f040401  addli r8, r8, 128
001cac  6a221322  vor.u.mz vr4{mr1}, r6, vr1
001cb0  6a231922  vor.u.mz vr6{mr1}, r18, vr1
001cb4  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
001cb8  ee3232c2  vsrl.s.mz vr5{mr1}, vr4, vr3
001cbc  6e3222c2  vsrl.s.mz vr4{mr1}, vr4, vr2
001cc0  eab25502  vand.s.mz vr5{mr1}, r11, vr5
001cc4  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
001cc8  96b25102  vadd.s.mz vr5{mr1}, vr3, vr5
001ccc  e69101c0  vabs.f vr3, vr3
001cd0  16324102  vadd.s.mz vr4{mr1}, vr2, vr4
001cd4  661101c0  vabs.f vr2, vr2
001cd8  92325c02  vadd.s.mz vr5{mr1}, r24, vr5
001cdc  72213d42  vlt.u.mz mr2{mr1}, r26, vr3
001ce0  12324c02  vadd.s.mz vr4{mr1}, r24, vr4
001ce4  eab25c02  vand.s.mz vr5{mr1}, r25, vr5
001ce8  6ab24c02  vand.s.mz vr4{mr1}, r25, vr4
001cec  eaa21d34  vor.u.mh vr5{mr2}, r27, vr1
001cf0  72212d42  vlt.u.mz mr2{mr1}, r26, vr2
001cf4  6a211822  vor.u.mz vr2{mr1}, r16, vr1
001cf8  6aa21d34  vor.u.mh vr4{mr2}, r27, vr1
001cfc  eaa01922  vor.u.mz vr1{mr1}, r19, vr1
001d00  ee3153c2  vsrl.s.mz vr3{mr1}, vr6, vr5
001d04  ee3251c2  vsrl.s.mz vr5{mr1}, vr2, vr5
001d08  6e3141c2  vsrl.s.mz vr2{mr1}, vr2, vr4
001d0c  6e3343c2  vsrl.s.mz vr6{mr1}, vr6, vr4
001d10  ea313202  vand.s.mz vr3{mr1}, r4, vr3
001d14  eab25302  vand.s.mz vr5{mr1}, r7, vr5
001d18  6a326202  vand.s.mz vr4{mr1}, r4, vr6
001d1c  6ab12302  vand.s.mz vr2{mr1}, r7, vr2
001d20  eab13a22  vor.s.mz vr3{mr1}, r21, vr3
001d24  eab25a22  vor.s.mz vr5{mr1}, r21, vr5
001d28  6ab12a22  vor.s.mz vr2{mr1}, r21, vr2
001d2c  6ab24a22  vor.s.mz vr4{mr1}, r21, vr4
001d30  86910120  vfloat2fp16_l.rz vr3, vr3
001d34  06510120  vfloat2fp16_h.rz vr2, vr2
001d38  86510220  vfloat2fp16_h.rz vr3, vr4
001d3c  06910220  vfloat2fp16_l.rz vr2, vr5
001d40  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
001d44  6ab12402  vand.s.mz vr2{mr1}, r9, vr2
001d48  ea301102  vand.s.mz vr1{mr1}, r2, vr1
001d4c  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
001d50  46801002  vstore.mz vr1{mr1}, 0(r1)
001d54  9f808000  addli r1, r1, 64
001d58  3f8df6fe  blt.s r13, r15, -192
001d5c  5b69ffff  j -1208
001d60  e3403f00  loadli.w r1,  28(r30)
001d64  b7f00018  beq r1, zero, 12348
001d68  80300002  core_id r1
001d6c  e3012f00  loadli.w r3,  16(r30)
001d70  1bb15000  slli r2, r1, 5
001d74  4bc32100  ble.s r3, r2, 208
001d78  2b580100  lui r16, 21
001d7c  00550102  load_param_i r10, 2
001d80  9f150000  addli r11, zero, 1
001d84  1f068fd7  addli r12, r30, -5184
001d88  9f068000  addli r13, zero, 64
001d8c  9f080100  addli r17, r2, 0
001d90  9b315500  slli r3, r10, 5
001d94  1f080800  addli r16, r16, 0
001d98  33890828  zext_int2long r[19:20], r17
001d9c  2b0a00f0  lui r20, 983040
001da0  1739b902  sll.d r[19:20], r[19:20], r11
001da4  179a4601  or r20, r13, r20
001da8  0b292211  add.ul r[19:20], r[5:6], r[19:20]
001dac  7f2ac900  l_gm2lm r20, r12, 0(r[19:20])
001db0  1bb92800  slli r18, r17, 2
001db4  8b981111  add.s r17, r3, r17
001db8  00a00200  mfence { lm, gm }
001dbc  42000602  vload.mz vr0{mr1}, 0(r12)
001dc0  0b190911  add.s r18, r18, r16
001dc4  9f098900  addli r19, r18, 64
001dc8  86300000  vfp162float_l.rn vr1, vr0
001dcc  06700000  vfp162float_h.rn vr0, vr0
001dd0  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
001dd4  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
001dd8  3f8ff8fe  blt.s r17, r15, -64
001ddc  ab620100  lui r5, 22
001de0  1bb27000  slli r4, r1, 7
001de4  9f058fd7  addli r11, r30, -5184
001de8  1f068000  addli r12, zero, 64
001dec  9f060100  addli r13, r2, 0
001df0  00a00000  mfence { lm }
001df4  9f820200  addli r5, r5, 0
001df8  0b125210  add.s r4, r4, r5
001dfc  9b327500  slli r5, r10, 7
001e00  1f150000  addli r10, zero, 1
001e04  33880628  zext_int2long r[17:18], r13
001e08  2b0900f0  lui r18, 983040
001e0c  8b963610  add.s r13, r13, r3
001e10  1738a802  sll.d r[17:18], r[17:18], r10
001e14  17192601  or r18, r12, r18
001e18  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001e1c  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
001e20  1f088200  addli r16, r4, 64
001e24  00a00200  mfence { lm, gm }
001e28  42800502  vload.mz vr0{mr1}, 0(r11)
001e2c  86300000  vfp162float_l.rn vr1, vr0
001e30  06700000  vfp162float_h.rn vr0, vr0
001e34  4e101202  vstores_mask16.mz vr1{mr1}, 0(r4)
001e38  0b125210  add.s r4, r4, r5
001e3c  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
001e40  3f9ff6fe  blt.s r13, r15, -60
001e44  e3012f00  loadli.w r3,  16(r30)
001e48  cba12100  ble.s r3, r2, 104
001e4c  00530102  load_param_i r6, 2
001e50  ab730100  lui r7, 23
001e54  9f110000  addli r3, zero, 1
001e58  1f028fd7  addli r4, r30, -5184
001e5c  9f028000  addli r5, zero, 64
001e60  00a00000  mfence { lm }
001e64  1b335300  slli r6, r6, 5
001e68  9f830300  addli r7, r7, 0
001e6c  33050128  zext_int2long r[11:12], r2
001e70  2b0600f0  lui r12, 983040
001e74  17353502  sll.d r[11:12], r[11:12], r3
001e78  1796c200  or r12, r5, r12
001e7c  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001e80  7f264500  l_gm2lm r12, r4, 0(r[11:12])
001e84  1b352100  slli r10, r2, 2
001e88  0b112310  add.s r2, r6, r2
001e8c  00a00200  mfence { lm, gm }
001e90  42000202  vload.mz vr0{mr1}, 0(r4)
001e94  0b157510  add.s r10, r10, r7
001e98  9f058500  addli r11, r10, 64
001e9c  86300000  vfp162float_l.rn vr1, vr0
001ea0  06700000  vfp162float_h.rn vr0, vr0
001ea4  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001ea8  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
001eac  3f0ff1fe  blt.s r2, r15, -64
001eb0  2bf10000  lui r2, 15
001eb4  e3411f00  loadli.w r3,  12(r30)
001eb8  00a00300  mfence { lm, sm, gm }
001ebc  1b11f1ff  ori r2, r2, 4095
001ec0  80210104  csr_set csr3, r2
001ec4  00d00100  sync_group
001ec8  4bb41124  ble.s r3, r1, 18700
001ecc  63012f00  loadli.w r2,  16(r30)
001ed0  e3412f00  loadli.w r3,  20(r30)
001ed4  9f0b8fd7  addli r23, r30, -5184
001ed8  2b540100  lui r8, 21
001edc  ab6a0100  lui r21, 22
001ee0  2b7b0100  lui r22, 23
001ee4  1f150000  addli r10, zero, 1
001ee8  9f054000  addli r11, zero, 32
001eec  1f767000  addli r12, zero, 63
001ef0  1f080002  addli r16, zero, 256
001ef4  1f090001  addli r18, zero, 128
001ef8  9f098000  addli r19, zero, 64
001efc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001f00  1f040400  addli r8, r8, 0
001f04  9f8a0a00  addli r21, r21, 0
001f08  1f0b0b00  addli r22, r22, 0
001f0c  0b123110  add.s r4, r2, r3
001f10  b3020108  fix2float.rn r5, r2
001f14  9b381100  slli r17, r2, 1
001f18  1b332100  slli r6, r2, 2
001f1c  1f014100  addli r2, r2, 32
001f20  9bb42100  slli r9, r3, 2
001f24  670b2fd4  storeli.w r2, -5456(r30)
001f28  0b117311  add.s r2, r6, r23
001f2c  1f72f2ff  addli r4, r4, -1
001f30  0b937811  add.s r6, r17, r23
001f34  e70b5fd4  storeli.w r5, -5448(r30)
001f38  1f0181ff  addli r2, r2, -64
001f3c  0b123230  div.s r4, r4, r3
001f40  67042fd4  storeli.w r2, -5568(r30)
001f44  1f0183ff  addli r2, r6, -64
001f48  e7432fd4  storeli.w r2, -5572(r30)
001f4c  2bf1ffff  lui r2, 1048575
001f50  00a00000  mfence { lm }
001f54  670c1fd5  storeli.w r17, -5440(r30)
001f58  9b16f1ff  ori r13, r2, 4095
001f5c  1f010fd7  addli r2, r30, -5248
001f60  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001f64  5b080000  j 64
001f68  9f038fd6  addli r7, r30, -5312
001f6c  6b510f00  load.d r[3:4], 0(r30)
001f70  ebd20300  load.d r[6:7], 0(r7)
001f74  00a00000  mfence { lm }
001f78  80530102  load_param_i r7, 2
001f7c  e3088fd5  loadli.w r17,  -5440(r30)
001f80  8b901310  add.s r1, r7, r1
001f84  0b215110  add.ul r[3:4], r[3:4], r[6:7]
001f88  2b0300f0  lui r6, 983040
001f8c  17936800  or r6, r17, r6
001f90  7f337101  s_lm2gm r6, r23, 0(r[3:4])
001f94  00a00200  mfence { lm, gm }
001f98  63411f00  loadli.w r2,  12(r30)
001f9c  3fa02000  blt.s r1, r2, 8
001fa0  db060900  j 18484
001fa4  63011f00  loadli.w r2,  8(r30)
001fa8  0b912010  add.s r2, r1, r2
001fac  0b11f120  mul.s r2, r2, r15
001fb0  33110128  sext_int2long r[3:4], r2
001fb4  173ca102  sll.d r[25:26], r[3:4], r10
001fb8  9f017fd6  addli r3, r30, -5320
001fbc  2b0100f0  lui r2, 983040
001fc0  ebd20100  load.d r[6:7], 0(r3)
001fc4  17912800  or r2, r17, r2
001fc8  9f018fd6  addli r3, r30, -5312
001fcc  73b08101  store.d r[25:26], 0(r3)
001fd0  0ba38211  add.ul r[7:8], r[6:7], r[25:26]
001fd4  7f217301  l_gm2lm r2, r23, 0(r[7:8])
001fd8  00a00200  mfence { lm, gm }
001fdc  bff0b700  blt.s r15, r11, 60
001fe0  63417fd4  loadli.w r2,  -5572(r30)
001fe4  e3018fd4  loadli.w r3,  -5568(r30)
001fe8  63036fd5  loadli.w r6,  -5456(r30)
001fec  c2000102  vload.mz vr1{mr1}, 0(r2)
001ff0  1f03c3ff  addli r6, r6, -32
001ff4  9f8881ff  addli r17, r3, -64
001ff8  1f0181ff  addli r2, r2, -64
001ffc  93036604  setlt.u r7, r12, r6
002000  06f10000  vfp162float_h.rn vr2, vr1
002004  86b00000  vfp162float_l.rn vr1, vr1
002008  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
00200c  9f8101ff  addli r3, r3, -128
002010  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
002014  3bef03fe  bneq r7, zero, -40
002018  00a00000  mfence { lm }
00201c  bf27a200  blt.s r4, r10, 488
002020  1f0d0000  addli r26, zero, 0
002024  9f0c0000  addli r25, zero, 0
002028  9f0d0000  addli r27, zero, 0
00202c  db0c0000  j 100
002030  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
002034  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002038  9f9d0d00  addli r27, r27, 1
00203c  6a7108c0  vsrl.p vr2, r16, vr0
002040  ea7118c0  vsrl.p vr3, r16, vr1
002044  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002048  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00204c  6a7109c0  vsrl.p vr2, r18, vr0
002050  ea7119c0  vsrl.p vr3, r18, vr1
002054  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002058  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00205c  6af109c0  vsrl.p vr2, r19, vr0
002060  eaf119c0  vsrl.p vr3, r19, vr1
002064  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002068  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00206c  6af105c0  vsrl.p vr2, r11, vr0
002070  eaf115c0  vsrl.p vr3, r11, vr1
002074  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002078  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00207c  7a110040  vextracti.f r2, 0(vr0)
002080  fa910040  vextracti.f r3, 0(vr1)
002084  0b6d2d10  add.f.rn r26, r26, r2
002088  8bec3c10  add.f.rn r25, r25, r3
00208c  37864d00  beq r27, r4, 384
002090  1f810d00  addli r2, r27, 0
002094  37300701  beq r14, r16, 12
002098  17a1dd00  xor r2, r27, r13
00209c  0b112210  add.s r2, r4, r2
0020a0  8b11e120  mul.s r3, r2, r14
0020a4  8b913718  sub.s r3, r15, r3
0020a8  0b9ee140  min.s r28, r3, r14
0020ac  9f010fd7  addli r3, r30, -5248
0020b0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0020b4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0020b8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0020bc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0020c0  bf4daefe  blt.s r28, r10, -144
0020c4  0b932420  mul.s r6, r9, r2
0020c8  1f010fd7  addli r2, r30, -5248
0020cc  1f0a0000  addli r20, zero, 0
0020d0  9f038fd7  addli r7, r30, -5184
0020d4  9f080400  addli r17, r8, 0
0020d8  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0020dc  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0020e0  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0020e4  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0020e8  0b916810  add.s r2, r17, r6
0020ec  8b916310  add.s r3, r7, r6
0020f0  9f0b8100  addli r23, r2, 64
0020f4  ca120102  vloads_mask16.mz vr5{mr1}, 0(r2)
0020f8  1f0c8101  addli r24, r2, 192
0020fc  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
002100  9f828101  addli r5, r3, 192
002104  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
002108  9f0b0101  addli r23, r2, 128
00210c  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
002110  1f8c0101  addli r24, r3, 128
002114  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
002118  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
00211c  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
002120  9f8b8100  addli r23, r3, 64
002124  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
002128  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00212c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
002130  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
002134  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
002138  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00213c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002140  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
002144  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
002148  9f0b8a00  addli r23, r20, 64
00214c  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
002150  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
002154  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002158  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
00215c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002160  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
002164  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
002168  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00216c  4b1b7eff  ble.s r28, r23, -316
002170  9f0b0102  addli r23, r2, 256
002174  1f0c8102  addli r24, r2, 320
002178  9f820102  addli r5, r3, 256
00217c  1f0a0a01  addli r20, r20, 128
002180  9f880804  addli r17, r17, 512
002184  9f830304  addli r7, r7, 512
002188  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
00218c  9f0b0103  addli r23, r2, 384
002190  1f018103  addli r2, r2, 448
002194  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
002198  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
00219c  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
0021a0  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
0021a4  1f810103  addli r2, r3, 384
0021a8  9f8b8102  addli r23, r3, 320
0021ac  9f818103  addli r3, r3, 448
0021b0  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
0021b4  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
0021b8  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0021bc  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
0021c0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0021c4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0021c8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0021cc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0021d0  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
0021d4  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
0021d8  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0021dc  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0021e0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0021e4  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
0021e8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0021ec  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0021f0  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0021f4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0021f8  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
0021fc  bf3bcaff  blt.s r20, r28, -276
002200  5bc6ffff  j -464
002204  9f0c0000  addli r25, zero, 0
002208  1f0d0000  addli r26, zero, 0
00220c  9f0b8fd7  addli r23, r30, -5184
002210  00a00000  mfence { lm }
002214  bfd3a700  blt.s r15, r10, 244
002218  e3017fd5  loadli.w r3,  -5448(r30)
00221c  e3023f00  loadli.w r5,  24(r30)
002220  1f030000  addli r6, zero, 0
002224  1f0a0000  addli r20, zero, 0
002228  0f013d18  div.f.rn r2, r26, r3
00222c  8f813c18  div.f.rn r3, r25, r3
002230  8b632120  mul.f.rn r7, r2, r2
002234  8b680158  neg.f r17, r2
002238  8be17118  sub.f.rn r3, r3, r7
00223c  8be15110  add.f.rn r3, r3, r5
002240  ab02803f  lui r5, 260096
002244  8f810108  sqrt.f.rn r3, r3
002248  8f833218  div.f.rn r7, r5, r3
00224c  8b115311  add.s r3, r6, r21
002250  0b916b10  add.s r2, r23, r6
002254  9f8c8100  addli r25, r3, 64
002258  4a910102  vloads_mask16.mz vr2{mr1}, 0(r3)
00225c  8b116311  add.s r3, r6, r22
002260  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
002264  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
002268  9f0c8100  addli r25, r2, 64
00226c  4a920102  vloads_mask16.mz vr4{mr1}, 0(r3)
002270  9f818100  addli r3, r3, 64
002274  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
002278  4a930102  vloads_mask16.mz vr6{mr1}, 0(r3)
00227c  9f014a00  addli r3, r20, 32
002280  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
002284  92925802  vadd.f.mz.rn vr5{mr1}, r17, vr5
002288  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
00228c  8a925302  vmul.f.mz.rn vr5{mr1}, r7, vr5
002290  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
002294  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
002298  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
00229c  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
0022a0  cba13700  ble.s r15, r3, 104
0022a4  8b916a10  add.s r3, r21, r6
0022a8  8b1c6b10  add.s r25, r22, r6
0022ac  1f0a8a00  addli r20, r20, 64
0022b0  1f030302  addli r6, r6, 256
0022b4  1f8d0101  addli r26, r3, 128
0022b8  9f8d0c01  addli r27, r25, 128
0022bc  9f818101  addli r3, r3, 192
0022c0  9f8c8c01  addli r25, r25, 192
0022c4  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
0022c8  1f0d0101  addli r26, r2, 128
0022cc  1f018101  addli r2, r2, 192
0022d0  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
0022d4  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
0022d8  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
0022dc  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
0022e0  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0022e4  92913802  vadd.f.mz.rn vr3{mr1}, r17, vr3
0022e8  12924802  vadd.f.mz.rn vr4{mr1}, r17, vr4
0022ec  8a913302  vmul.f.mz.rn vr3{mr1}, r7, vr3
0022f0  0a924302  vmul.f.mz.rn vr4{mr1}, r7, vr4
0022f4  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
0022f8  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
0022fc  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
002300  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
002304  3f2dfafe  blt.s r20, r15, -184
002308  00a00000  mfence { lm }
00230c  3ff1a7fe  blt.s r15, r10, -932
002310  1f018fd7  addli r2, r30, -5184
002314  9f018fd7  addli r3, r30, -5184
002318  1f030000  addli r6, zero, 0
00231c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002320  9f838100  addli r7, r3, 64
002324  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
002328  1f034300  addli r6, r6, 32
00232c  9f810101  addli r3, r3, 128
002330  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
002334  86910000  vfloat2fp16_l.rn vr3, vr1
002338  86510100  vfloat2fp16_h.rn vr3, vr2
00233c  46003102  vstore.mz vr3{mr1}, 0(r2)
002340  1f018100  addli r2, r2, 64
002344  3f6ff3fe  blt.s r6, r15, -40
002348  5b84ffff  j -992
00234c  e3002f00  loadli.w r1,  16(r30)
002350  1f010010  addli r2, zero, 2048
002354  bbd02008  bneq r1, r2, 4148
002358  2ba10200  lui r2, 42
00235c  803d0002  core_id r27
002360  1f010108  addli r2, r2, 1024
002364  3bd00d00  bneq r27, zero, 20
002368  9f010040  addli r3, zero, 8192
00236c  2b0300f0  lui r6, 983040
002370  97916100  or r3, r3, r6
002374  ff012200  l_gm2sm r3, r2, 0(r[5:6])
002378  abf10000  lui r3, 15
00237c  00200300  mfence { sm, gm }
002380  1b8e1d00  andi r28, r27, 1
002384  1f030006  addli r6, zero, 768
002388  1b92f1ff  ori r4, r3, 4095
00238c  80210204  csr_set csr3, r4
002390  1f020006  addli r4, zero, 768
002394  00d00100  sync_group
002398  37200e00  beq r28, zero, 8
00239c  1f02000a  addli r4, zero, 1280
0023a0  e3421f00  loadli.w r5,  12(r30)
0023a4  9f130000  addli r7, zero, 1
0023a8  bfb07222  blt.s r5, r7, 17452
0023ac  80530102  load_param_i r7, 2
0023b0  abf0ffff  lui r1, 1048575
0023b4  abc90200  lui r19, 44
0023b8  2bcc0200  lui r24, 44
0023bc  2bf50000  lui r10, 15
0023c0  8b116e20  mul.s r3, r28, r6
0023c4  9f020000  addli r5, zero, 0
0023c8  1bc41d00  srli r8, r27, 1
0023cc  9b342200  slli r9, r4, 2
0023d0  9f270000  addli r15, zero, 2
0023d4  9f058fd7  addli r11, r30, -5184
0023d8  1f030fd7  addli r6, r30, -5248
0023dc  1f070005  addli r14, zero, 640
0023e0  1f080001  addli r16, zero, 128
0023e4  9f088000  addli r17, zero, 64
0023e8  1f094000  addli r18, zero, 32
0023ec  9f0b0003  addli r23, zero, 384
0023f0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0023f4  9b9000f8  ori r1, r1, 3968
0023f8  9bc31300  srli r7, r7, 1
0023fc  9f890908  addli r19, r19, 1024
002400  1b1af5ff  ori r20, r10, 4095
002404  1f0c0c0c  addli r24, r24, 1536
002408  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
00240c  67041fd6  storeli.w r1, -5312(r30)
002410  db030000  j 28
002414  00a00300  mfence { lm, sm, gm }
002418  80210a04  csr_set csr3, r20
00241c  00d00100  sync_group
002420  8b927210  add.s r5, r5, r7
002424  3fa09201  blt.s r5, r25, 8
002428  db0ffdff  j -6020
00242c  0b958210  add.s r10, r5, r8
002430  cb9facfe  ble.s r25, r10, -28
002434  e3001f00  loadli.w r1,  8(r30)
002438  0b151510  add.s r10, r10, r1
00243c  9f007fd6  addli r1, r30, -5320
002440  1b35b500  slli r10, r10, 11
002444  17153500  or r10, r10, r3
002448  33160528  sext_int2long r[13:14], r10
00244c  2b0500f0  lui r10, 983040
002450  973cf602  sll.d r[26:27], r[13:14], r15
002454  6bd60000  load.d r[13:14], 0(r1)
002458  1795a400  or r10, r9, r10
00245c  0b269611  add.ul r[13:14], r[13:14], r[26:27]
002460  7f25b600  l_gm2lm r10, r11, 0(r[13:14])
002464  00a00200  mfence { lm, gm }
002468  3b260e00  bneq r28, zero, 392
00246c  9f000fd7  addli r1, r30, -5248
002470  630b8fd6  loadli.w r22,  -5312(r30)
002474  1f050000  addli r10, zero, 0
002478  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
00247c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
002480  12313002  vadd.s.mz vr2{mr1}, zero, vr3
002484  12323002  vadd.s.mz vr4{mr1}, zero, vr3
002488  8b162510  add.s r13, r10, r2
00248c  0b96a510  add.s r12, r11, r10
002490  1f0b0b01  addli r22, r22, 128
002494  1f050504  addli r10, r10, 512
002498  9f800601  addli r1, r13, 128
00249c  4a900602  vloads_mask16.mz vr0{mr1}, 0(r13)
0024a0  1f838600  addli r6, r13, 64
0024a4  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
0024a8  9f0a8601  addli r21, r12, 192
0024ac  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
0024b0  9f808601  addli r1, r13, 192
0024b4  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0024b8  1f038600  addli r6, r12, 64
0024bc  c2950a02  vload_mask16.mz vr11{mr1}, 0(r21)
0024c0  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
0024c4  9f000601  addli r1, r12, 128
0024c8  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0024cc  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0024d0  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0024d4  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0024d8  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0024dc  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0024e0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0024e4  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
0024e8  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0024ec  9f800602  addli r1, r13, 256
0024f0  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0024f4  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0024f8  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0024fc  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
002500  1f030603  addli r6, r12, 384
002504  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002508  9f808602  addli r1, r13, 320
00250c  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
002510  9f0a0602  addli r21, r12, 256
002514  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002518  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00251c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002520  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002524  9f800603  addli r1, r13, 384
002528  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
00252c  9f868603  addli r13, r13, 448
002530  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002534  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
002538  9f008602  addli r1, r12, 320
00253c  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
002540  1f068603  addli r12, r12, 448
002544  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002548  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00254c  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
002550  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002554  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
002558  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00255c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002560  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
002564  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002568  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
00256c  9300eb04  setlt.u r1, r22, r14
002570  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002574  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002578  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00257c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002580  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002584  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
002588  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
00258c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002590  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002594  bbdb00fe  bneq r1, zero, -268
002598  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00259c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0025a0  9f000002  addli r1, zero, 256
0025a4  6af100c0  vsrl.p vr2, r1, vr0
0025a8  eaf110c0  vsrl.p vr3, r1, vr1
0025ac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0025b0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0025b4  6a7108c0  vsrl.p vr2, r16, vr0
0025b8  ea7118c0  vsrl.p vr3, r16, vr1
0025bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0025c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0025c4  6af108c0  vsrl.p vr2, r17, vr0
0025c8  eaf118c0  vsrl.p vr3, r17, vr1
0025cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0025d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0025d4  6a7109c0  vsrl.p vr2, r18, vr0
0025d8  ea7119c0  vsrl.p vr3, r18, vr1
0025dc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0025e0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0025e4  7a160040  vextracti.f r12, 0(vr0)
0025e8  7a950040  vextracti.f r10, 0(vr1)
0025ec  5b650000  j 808
0025f0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0025f4  abf0ffff  lui r1, 1048575
0025f8  9f070e00  addli r15, r28, 0
0025fc  1f050000  addli r10, zero, 0
002600  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002604  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002608  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00260c  9b9d00f8  ori r27, r1, 3968
002610  0b16a110  add.s r12, r2, r10
002614  0b9ba510  add.s r22, r11, r10
002618  9f8d0d01  addli r27, r27, 128
00261c  1f050504  addli r10, r10, 512
002620  9f000631  addli r1, r12, 6272
002624  9f060630  addli r13, r12, 6144
002628  1f038631  addli r6, r12, 6336
00262c  1f0e0b18  addli r28, r22, 3072
002630  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
002634  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
002638  9f068630  addli r13, r12, 6208
00263c  ca140302  vloads_mask16.mz vr9{mr1}, 0(r6)
002640  1f030b19  addli r6, r22, 3200
002644  9f008b18  addli r1, r22, 3136
002648  42130e02  vload_mask16.mz vr6{mr1}, 0(r28)
00264c  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
002650  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
002654  9f068b19  addli r13, r22, 3264
002658  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
00265c  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
002660  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
002664  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
002668  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
00266c  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
002670  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002674  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
002678  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
00267c  1f030632  addli r6, r12, 6400
002680  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
002684  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
002688  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00268c  46106e02  vstore_mask16.mz vr6{mr1}, 0(r28)
002690  9f060b1a  addli r13, r22, 3328
002694  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
002698  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00269c  9f000b1b  addli r1, r22, 3456
0026a0  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0026a4  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0026a8  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
0026ac  1f038632  addli r6, r12, 6464
0026b0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0026b4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0026b8  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0026bc  1f030633  addli r6, r12, 6528
0026c0  1f068633  addli r12, r12, 6592
0026c4  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
0026c8  1f038b1a  addli r6, r22, 3392
0026cc  4a150602  vloads_mask16.mz vr10{mr1}, 0(r12)
0026d0  1f068b1b  addli r12, r22, 3520
0026d4  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
0026d8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0026dc  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0026e0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0026e4  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0026e8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0026ec  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0026f0  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
0026f4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0026f8  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0026fc  13837d05  setlt.u r6, r27, r23
002700  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002704  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002708  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00270c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002710  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002714  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
002718  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
00271c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002720  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002724  bb3b03fe  bneq r6, zero, -276
002728  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00272c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002730  9f000002  addli r1, zero, 256
002734  1f050000  addli r10, zero, 0
002738  eaf110c0  vsrl.p vr3, r1, vr1
00273c  6af100c0  vsrl.p vr2, r1, vr0
002740  abf0ffff  lui r1, 1048575
002744  1b9b00f8  ori r22, r1, 3968
002748  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00274c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002750  ea7118c0  vsrl.p vr3, r16, vr1
002754  6a7108c0  vsrl.p vr2, r16, vr0
002758  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00275c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002760  eaf118c0  vsrl.p vr3, r17, vr1
002764  6af108c0  vsrl.p vr2, r17, vr0
002768  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00276c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002770  ea7119c0  vsrl.p vr3, r18, vr1
002774  6a7109c0  vsrl.p vr2, r18, vr0
002778  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00277c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002780  7a9e0040  vextracti.f r28, 0(vr1)
002784  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002788  fa1d0040  vextracti.f r27, 0(vr0)
00278c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002790  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002794  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002798  8b16a110  add.s r13, r2, r10
00279c  0b96a510  add.s r12, r11, r10
0027a0  1f0b0b01  addli r22, r22, 128
0027a4  1f050504  addli r10, r10, 512
0027a8  9f800618  addli r1, r13, 3072
0027ac  1f830619  addli r6, r13, 3200
0027b0  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
0027b4  9f0a8601  addli r21, r12, 192
0027b8  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0027bc  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
0027c0  9f808618  addli r1, r13, 3136
0027c4  1f838619  addli r6, r13, 3264
0027c8  c2950a02  vload_mask16.mz vr11{mr1}, 0(r21)
0027cc  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0027d0  9f000601  addli r1, r12, 128
0027d4  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
0027d8  1f038600  addli r6, r12, 64
0027dc  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0027e0  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0027e4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0027e8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0027ec  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0027f0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0027f4  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0027f8  9f80061a  addli r1, r13, 3328
0027fc  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002800  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002804  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002808  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00280c  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
002810  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002814  9f80861a  addli r1, r13, 3392
002818  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
00281c  9f0a0602  addli r21, r12, 256
002820  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
002824  1f030603  addli r6, r12, 384
002828  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00282c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002830  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002834  9f80061b  addli r1, r13, 3456
002838  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
00283c  9f86861b  addli r13, r13, 3520
002840  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002844  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002848  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
00284c  9f008602  addli r1, r12, 320
002850  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
002854  1f068603  addli r12, r12, 448
002858  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00285c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
002860  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
002864  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002868  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
00286c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002870  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002874  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
002878  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00287c  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
002880  9300eb04  setlt.u r1, r22, r14
002884  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002888  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00288c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002890  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002894  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002898  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
00289c  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0028a0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0028a4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0028a8  bbcb00fe  bneq r1, zero, -272
0028ac  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0028b0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0028b4  9f000002  addli r1, zero, 256
0028b8  6af100c0  vsrl.p vr2, r1, vr0
0028bc  eaf110c0  vsrl.p vr3, r1, vr1
0028c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028c8  6a7108c0  vsrl.p vr2, r16, vr0
0028cc  ea7118c0  vsrl.p vr3, r16, vr1
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
0028f8  fa100040  vextracti.f r1, 0(vr0)
0028fc  7a930040  vextracti.f r6, 0(vr1)
002900  0be61d10  add.f.rn r12, r27, r1
002904  0b656e10  add.f.rn r10, r28, r6
002908  1f8e0700  addli r28, r15, 0
00290c  803d0002  core_id r27
002910  9f270000  addli r15, zero, 2
002914  8b807230  div.u r1, r5, r7
002918  1f0b0000  addli r22, zero, 0
00291c  9bb06000  slli r1, r1, 6
002920  9b800004  andi r1, r1, 64
002924  9790b001  or r1, r1, r27
002928  1bb32000  slli r6, r1, 2
00292c  9b80e007  andi r1, r1, 126
002930  8b163311  add.s r13, r6, r19
002934  9bb02000  slli r1, r1, 2
002938  73e0c600  stores.w r12, 0(r13)
00293c  0b168311  add.s r12, r6, r24
002940  1b134300  ori r6, r6, 4
002944  9f068fd7  addli r13, r30, -5184
002948  7360a600  stores.w r10, 0(r12)
00294c  0b153311  add.s r10, r6, r19
002950  0b963011  add.s r12, r1, r19
002954  0b138311  add.s r6, r6, r24
002958  8b908011  add.s r1, r1, r24
00295c  00a00300  mfence { lm, sm, gm }
002960  80210a04  csr_set csr3, r20
002964  00d00100  sync_group
002968  6f450500  loads.w r10, 0(r10)
00296c  6f460600  loads.w r12, 0(r12)
002970  6f430300  loads.w r6, 0(r6)
002974  efc00000  loads.w r1, 0(r1)
002978  0b65c510  add.f.rn r10, r10, r12
00297c  2b06003a  lui r12, 237568
002980  8b601310  add.f.rn r1, r6, r1
002984  0b63c520  mul.f.rn r6, r10, r12
002988  8be0c020  mul.f.rn r1, r1, r12
00298c  0b656320  mul.f.rn r10, r6, r6
002990  0b660358  neg.f r12, r6
002994  8be0a018  sub.f.rn r1, r1, r10
002998  63053f00  loadli.w r10,  24(r30)
00299c  8be0a010  add.f.rn r1, r1, r10
0029a0  2b05803f  lui r10, 260096
0029a4  8f800008  sqrt.f.rn r1, r1
0029a8  0f051518  div.f.rn r10, r10, r1
0029ac  9f808600  addli r1, r13, 64
0029b0  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
0029b4  1f034b00  addli r6, r22, 32
0029b8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0029bc  13036206  setle.u r6, r4, r6
0029c0  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
0029c4  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
0029c8  0a100502  vmul.f.mz.rn vr0{mr1}, r10, vr0
0029cc  8a101502  vmul.f.mz.rn vr1{mr1}, r10, vr1
0029d0  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
0029d4  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0029d8  bb700300  bneq r6, zero, 60
0029dc  9f800601  addli r1, r13, 128
0029e0  1f838601  addli r6, r13, 192
0029e4  1f0b8b00  addli r22, r22, 64
0029e8  9f860602  addli r13, r13, 256
0029ec  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0029f0  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
0029f4  930a4b04  setlt.u r21, r22, r4
0029f8  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
0029fc  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
002a00  0a100502  vmul.f.mz.rn vr0{mr1}, r10, vr0
002a04  8a101502  vmul.f.mz.rn vr1{mr1}, r10, vr1
002a08  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002a0c  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
002a10  3bfe0afe  bneq r21, zero, -100
002a14  6b560f00  load.d r[13:14], 0(r30)
002a18  ab0000f0  lui r1, 983040
002a1c  00a00000  mfence { lm }
002a20  97901400  or r1, r9, r1
002a24  0b269611  add.ul r[13:14], r[13:14], r[26:27]
002a28  ff30b600  s_lm2gm r1, r11, 0(r[13:14])
002a2c  00a00200  mfence { lm, gm }
002a30  e34c1f00  loadli.w r25,  12(r30)
002a34  db3dffff  j -1556
002a38  80300002  core_id r1
002a3c  bb800000  bneq r1, zero, 32
002a40  63012f00  loadli.w r2,  16(r30)
002a44  ab0100f0  lui r3, 983040
002a48  1b311100  slli r2, r2, 1
002a4c  17113100  or r2, r2, r3
002a50  abc10100  lui r3, 28
002a54  9f810100  addli r3, r3, 0
002a58  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002a5c  2bf10000  lui r2, 15
002a60  e3411f00  loadli.w r3,  12(r30)
002a64  00200300  mfence { sm, gm }
002a68  1b11f1ff  ori r2, r2, 4095
002a6c  80210104  csr_set csr3, r2
002a70  00d00100  sync_group
002a74  cb85111e  ble.s r3, r1, 15712
002a78  63012f00  loadli.w r2,  16(r30)
002a7c  e3412f00  loadli.w r3,  20(r30)
002a80  1f052000  addli r10, zero, 16
002a84  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002a88  1f130000  addli r6, zero, 1
002a8c  9f040002  addli r9, zero, 256
002a90  ab05ffff  lui r11, 1048560
002a94  ab06807f  lui r13, 522240
002a98  2b08c07f  lui r16, 523264
002a9c  9f080001  addli r17, zero, 128
002aa0  1f098000  addli r18, zero, 64
002aa4  9f094000  addli r19, zero, 32
002aa8  1b3b1100  slli r22, r2, 1
002aac  0b123110  add.s r4, r2, r3
002ab0  33010108  fix2float.rn r2, r2
002ab4  670b2fd4  storeli.w r2, -5456(r30)
002ab8  1f71f2ff  addli r2, r4, -1
002abc  1bb21100  slli r4, r3, 1
002ac0  e70b6fd5  storeli.w r22, -5448(r30)
002ac4  8b123130  div.s r5, r2, r3
002ac8  2bf1ffff  lui r2, 1048575
002acc  9f018fd7  addli r3, r30, -5184
002ad0  1b14f1ff  ori r8, r2, 4095
002ad4  1f010fd7  addli r2, r30, -5248
002ad8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002adc  6a200522  vor.u.mz vr0{mr1}, r10, vr0
002ae0  1f018fd6  addli r2, r30, -5312
002ae4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002ae8  2b710000  lui r2, 7
002aec  1b16f1ff  ori r12, r2, 4095
002af0  db080000  j 68
002af4  9f018fd5  addli r3, r30, -5440
002af8  00a00000  mfence { lm }
002afc  6b5a0f00  load.d r[21:22], 0(r30)
002b00  2b0100f0  lui r2, 983040
002b04  80530102  load_param_i r7, 2
002b08  6bdb0100  load.d r[23:24], 0(r3)
002b0c  9f018fd7  addli r3, r30, -5184
002b10  8b901310  add.s r1, r7, r1
002b14  0b2a6a11  add.ul r[21:22], r[21:22], r[23:24]
002b18  630b7fd5  loadli.w r22,  -5448(r30)
002b1c  17112b00  or r2, r22, r2
002b20  7f313a00  s_lm2gm r2, r3, 0(r[21:22])
002b24  00a00200  mfence { lm, gm }
002b28  63411f00  loadli.w r2,  12(r30)
002b2c  3fa02000  blt.s r1, r2, 8
002b30  db940700  j 15524
002b34  63011f00  loadli.w r2,  8(r30)
002b38  9f037fd6  addli r7, r30, -5320
002b3c  0b912010  add.s r2, r1, r2
002b40  0b11f120  mul.s r2, r2, r15
002b44  331a0128  sext_int2long r[21:22], r2
002b48  2b0100f0  lui r2, 983040
002b4c  973b6a02  sll.d r[24:25], r[21:22], r6
002b50  6bda0300  load.d r[21:22], 0(r7)
002b54  17112b00  or r2, r22, r2
002b58  9f038fd5  addli r7, r30, -5440
002b5c  73b07301  store.d r[24:25], 0(r7)
002b60  0b2a7a11  add.ul r[21:22], r[21:22], r[24:25]
002b64  7f213a00  l_gm2lm r2, r3, 0(r[21:22])
002b68  00a00200  mfence { lm, gm }
002b6c  bfdc6200  blt.s r5, r6, 820
002b70  9f0c0000  addli r25, zero, 0
002b74  1f0c0000  addli r24, zero, 0
002b78  1f0d0000  addli r26, zero, 0
002b7c  db0c0000  j 100
002b80  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
002b84  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
002b88  1f1d0d00  addli r26, r26, 1
002b8c  6af104c0  vsrl.p vr2, r9, vr0
002b90  eaf114c0  vsrl.p vr3, r9, vr1
002b94  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002b98  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002b9c  6af108c0  vsrl.p vr2, r17, vr0
002ba0  eaf118c0  vsrl.p vr3, r17, vr1
002ba4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002ba8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002bac  6a7109c0  vsrl.p vr2, r18, vr0
002bb0  ea7119c0  vsrl.p vr3, r18, vr1
002bb4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002bb8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002bbc  6af109c0  vsrl.p vr2, r19, vr0
002bc0  eaf119c0  vsrl.p vr3, r19, vr1
002bc4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002bc8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002bcc  7a110040  vextracti.f r2, 0(vr0)
002bd0  fa910040  vextracti.f r3, 0(vr1)
002bd4  8bec2c10  add.f.rn r25, r25, r2
002bd8  0b6c3c10  add.f.rn r24, r24, r3
002bdc  373b5d00  beq r26, r5, 716
002be0  1f010d00  addli r2, r26, 0
002be4  37309700  beq r14, r9, 12
002be8  17218d00  xor r2, r26, r8
002bec  0b912210  add.s r2, r5, r2
002bf0  9f010fd7  addli r3, r30, -5248
002bf4  8b13e120  mul.s r7, r2, r14
002bf8  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
002bfc  8b937718  sub.s r7, r15, r7
002c00  8b9de340  min.s r27, r7, r14
002c04  92322002  vadd.s.mz vr5{mr1}, zero, vr2
002c08  12322002  vadd.s.mz vr4{mr1}, zero, vr2
002c0c  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002c10  bfcd6dfe  blt.s r27, r6, -144
002c14  0b1a2220  mul.s r20, r4, r2
002c18  1f010fd7  addli r2, r30, -5248
002c1c  abca0100  lui r21, 28
002c20  1f0e0000  addli r28, zero, 0
002c24  9f038fd7  addli r7, r30, -5184
002c28  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
002c2c  9f8a0a00  addli r21, r21, 0
002c30  12315002  vadd.s.mz vr2{mr1}, zero, vr5
002c34  92315002  vadd.s.mz vr3{mr1}, zero, vr5
002c38  12325002  vadd.s.mz vr4{mr1}, zero, vr5
002c3c  0b9b4a11  add.s r22, r21, r20
002c40  0b914311  add.s r2, r7, r20
002c44  9f018fd6  addli r3, r30, -5312
002c48  4a030b02  vloads.mz vr6{mr1}, 0(r22)
002c4c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002c50  c2030102  vload.mz vr7{mr1}, 0(r2)
002c54  9f010fd7  addli r3, r30, -5248
002c58  9f0b8b00  addli r23, r22, 64
002c5c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
002c60  9f018e00  addli r3, r28, 64
002c64  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
002c68  6ab57502  vand.s.mz vr10{mr1}, r11, vr7
002c6c  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
002c70  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002c74  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
002c78  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
002c7c  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
002c80  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
002c84  669503c0  vabs.f vr10, vr7
002c88  6a348302  vand.s.mz vr8{mr1}, r6, vr8
002c8c  ea349302  vand.s.mz vr9{mr1}, r6, vr9
002c90  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
002c94  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
002c98  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
002c9c  12348602  vadd.s.mz vr8{mr1}, r12, vr8
002ca0  92349602  vadd.s.mz vr9{mr1}, r12, vr9
002ca4  eab38502  vand.s.mz vr7{mr1}, r11, vr8
002ca8  661403c0  vabs.f vr8, vr6
002cac  6ab39502  vand.s.mz vr6{mr1}, r11, vr9
002cb0  ea230834  vor.u.mh vr7{mr2}, r16, vr0
002cb4  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
002cb8  6a230834  vor.u.mh vr6{mr2}, r16, vr0
002cbc  4a840b02  vloads.mz vr8{mr1}, 0(r23)
002cc0  9f0b8100  addli r23, r2, 64
002cc4  c2840b02  vload.mz vr9{mr1}, 0(r23)
002cc8  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
002ccc  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
002cd0  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002cd4  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
002cd8  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002cdc  46007102  vstore.mz vr7{mr1}, 0(r2)
002ce0  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002ce4  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002ce8  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
002cec  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
002cf0  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002cf4  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002cf8  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002cfc  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
002d00  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
002d04  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
002d08  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
002d0c  ea349302  vand.s.mz vr9{mr1}, r6, vr9
002d10  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002d14  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
002d18  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
002d1c  661505c0  vabs.f vr10, vr10
002d20  661404c0  vabs.f vr8, vr8
002d24  92349602  vadd.s.mz vr9{mr1}, r12, vr9
002d28  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002d2c  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
002d30  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002d34  6ab5b502  vand.s.mz vr10{mr1}, r11, vr11
002d38  ea240834  vor.u.mh vr9{mr2}, r16, vr0
002d3c  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
002d40  6a250834  vor.u.mh vr10{mr2}, r16, vr0
002d44  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
002d48  eab4a502  vand.s.mz vr9{mr1}, r11, vr10
002d4c  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
002d50  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002d54  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002d58  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
002d5c  46808b02  vstore.mz vr8{mr1}, 0(r23)
002d60  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002d64  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002d68  4be83dfe  ble.s r27, r3, -488
002d6c  9f010b01  addli r3, r22, 128
002d70  9f0b0101  addli r23, r2, 128
002d74  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
002d78  1f018101  addli r2, r2, 192
002d7c  1f0e0e01  addli r28, r28, 128
002d80  9f8a0a02  addli r21, r21, 256
002d84  9f830302  addli r7, r7, 256
002d88  6a237522  vor.u.mz vr6{mr1}, r10, vr7
002d8c  4a840102  vloads.mz vr8{mr1}, 0(r3)
002d90  c2840b02  vload.mz vr9{mr1}, 0(r23)
002d94  9f018b01  addli r3, r22, 192
002d98  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
002d9c  6ab09502  vand.s.mz vr0{mr1}, r11, vr9
002da0  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
002da4  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002da8  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
002dac  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
002db0  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
002db4  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
002db8  e69504c0  vabs.f vr11, vr9
002dbc  6a300302  vand.s.mz vr0{mr1}, r6, vr0
002dc0  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002dc4  72a1b642  vlt.u.mz mr2{mr1}, r13, vr11
002dc8  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
002dcc  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
002dd0  12300602  vadd.s.mz vr0{mr1}, r12, vr0
002dd4  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002dd8  eab40502  vand.s.mz vr9{mr1}, r11, vr0
002ddc  661004c0  vabs.f vr0, vr8
002de0  6ab4a502  vand.s.mz vr8{mr1}, r11, vr10
002de4  ea247834  vor.u.mh vr9{mr2}, r16, vr7
002de8  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002dec  6a247834  vor.u.mh vr8{mr2}, r16, vr7
002df0  4a800102  vloads.mz vr0{mr1}, 0(r3)
002df4  42050102  vload.mz vr10{mr1}, 0(r2)
002df8  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
002dfc  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
002e00  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002e04  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
002e08  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002e0c  46809b02  vstore.mz vr9{mr1}, 0(r23)
002e10  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
002e14  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
002e18  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
002e1c  6ab00502  vand.s.mz vr0{mr1}, r11, vr0
002e20  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
002e24  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
002e28  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
002e2c  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
002e30  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002e34  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002e38  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
002e3c  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
002e40  e69000c0  vabs.f vr1, vr1
002e44  661000c0  vabs.f vr0, vr0
002e48  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002e4c  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002e50  72a11642  vlt.u.mz mr2{mr1}, r13, vr1
002e54  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002e58  eab0b502  vand.s.mz vr1{mr1}, r11, vr11
002e5c  6a257834  vor.u.mh vr10{mr2}, r16, vr7
002e60  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002e64  ea207834  vor.u.mh vr1{mr2}, r16, vr7
002e68  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
002e6c  eab31502  vand.s.mz vr7{mr1}, r11, vr1
002e70  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
002e74  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
002e78  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002e7c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002e80  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
002e84  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
002e88  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
002e8c  46000102  vstore.mz vr0{mr1}, 0(r2)
002e90  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002e94  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002e98  bf16beff  blt.s r28, r27, -604
002e9c  db9cffff  j -796
002ea0  1f0c0000  addli r24, zero, 0
002ea4  9f0c0000  addli r25, zero, 0
002ea8  00a00000  mfence { lm }
002eac  3fa167fe  blt.s r15, r6, -952
002eb0  63016fd5  loadli.w r2,  -5456(r30)
002eb4  e3013f00  loadli.w r3,  24(r30)
002eb8  9f0a0000  addli r21, zero, 0
002ebc  8f832c18  div.f.rn r7, r25, r2
002ec0  0f012c18  div.f.rn r2, r24, r2
002ec4  0bea7320  mul.f.rn r20, r7, r7
002ec8  8be30358  neg.f r7, r7
002ecc  0b614119  sub.f.rn r2, r2, r20
002ed0  1f0a8fd7  addli r20, r30, -5184
002ed4  0b613110  add.f.rn r2, r2, r3
002ed8  ab01803f  lui r3, 260096
002edc  0f010108  sqrt.f.rn r2, r2
002ee0  0f812118  div.f.rn r2, r3, r2
002ee4  42020a02  vload.mz vr4{mr1}, 0(r20)
002ee8  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
002eec  1f8b4a00  addli r22, r21, 32
002ef0  ea212522  vor.u.mz vr3{mr1}, r10, vr2
002ef4  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002ef8  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002efc  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002f00  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002f04  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002f08  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002f0c  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002f10  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002f14  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002f18  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002f1c  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002f20  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002f24  e69202c0  vabs.f vr5, vr5
002f28  661202c0  vabs.f vr4, vr4
002f2c  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002f30  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002f34  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002f38  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002f3c  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002f40  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002f44  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002f48  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002f4c  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
002f50  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
002f54  46004a02  vstore.mz vr4{mr1}, 0(r20)
002f58  4bfe67fd  ble.s r15, r22, -1124
002f5c  1f0b8a00  addli r22, r20, 64
002f60  9f8a8a00  addli r21, r21, 64
002f64  1f0a0a01  addli r20, r20, 128
002f68  42020b02  vload.mz vr4{mr1}, 0(r22)
002f6c  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002f70  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002f74  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002f78  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002f7c  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002f80  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002f84  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002f88  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002f8c  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002f90  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002f94  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002f98  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002f9c  e69202c0  vabs.f vr5, vr5
002fa0  661202c0  vabs.f vr4, vr4
002fa4  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002fa8  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002fac  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002fb0  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002fb4  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002fb8  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002fbc  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002fc0  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002fc4  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
002fc8  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
002fcc  46002b02  vstore.mz vr2{mr1}, 0(r22)
002fd0  3fdcfafe  blt.s r21, r15, -236
002fd4  5b64ffff  j -1248
002fd8  80300002  core_id r1
002fdc  bb800000  bneq r1, zero, 32
002fe0  63012f00  loadli.w r2,  16(r30)
002fe4  ab0100f0  lui r3, 983040
002fe8  1b311100  slli r2, r2, 1
002fec  17113100  or r2, r2, r3
002ff0  ab010200  lui r3, 32
002ff4  9f810100  addli r3, r3, 0
002ff8  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002ffc  2bf10000  lui r2, 15
003000  e3411f00  loadli.w r3,  12(r30)
003004  00200300  mfence { sm, gm }
003008  1b11f1ff  ori r2, r2, 4095
00300c  80210104  csr_set csr3, r2
003010  00d00100  sync_group
003014  4b8f111a  ble.s r3, r1, 14272
003018  e3012f00  loadli.w r3,  16(r30)
00301c  e3422f00  loadli.w r5,  20(r30)
003020  2bf4ffff  lui r8, 1048575
003024  2b080200  lui r16, 32
003028  9f068fd7  addli r13, r30, -5184
00302c  9f040002  addli r9, zero, 256
003030  1f050001  addli r10, zero, 128
003034  9f058000  addli r11, zero, 64
003038  1f064000  addli r12, zero, 32
00303c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003040  1b14f4ff  ori r8, r8, 4095
003044  1f080800  addli r16, r16, 0
003048  0b925110  add.s r4, r3, r5
00304c  1bb11100  slli r2, r3, 1
003050  b3810108  fix2float.rn r3, r3
003054  1f73f2ff  addli r6, r4, -1
003058  1bb21200  slli r4, r5, 1
00305c  8b125330  div.s r5, r6, r5
003060  1f130000  addli r6, zero, 1
003064  5b070000  j 56
003068  00a00000  mfence { lm }
00306c  6b5a0f00  load.d r[21:22], 0(r30)
003070  ab0900f0  lui r19, 983040
003074  9f068fd7  addli r13, r30, -5184
003078  97193101  or r19, r2, r19
00307c  8b281a11  add.ul r[18:19], r[21:22], r[18:19]
003080  005a0102  load_param_i r20, 2
003084  ffb9d800  s_lm2gm r19, r13, 0(r[18:19])
003088  8b101a10  add.s r1, r20, r1
00308c  00a00200  mfence { lm, gm }
003090  e3431f00  loadli.w r7,  12(r30)
003094  3fa07000  blt.s r1, r7, 8
003098  dbe70600  j 14140
00309c  e3031f00  loadli.w r7,  8(r30)
0030a0  ab0900f0  lui r19, 983040
0030a4  97193101  or r19, r2, r19
0030a8  8b987010  add.s r17, r1, r7
0030ac  9f037fd6  addli r7, r30, -5320
0030b0  8b98f820  mul.s r17, r17, r15
0030b4  6bda0300  load.d r[21:22], 0(r7)
0030b8  b3980828  sext_int2long r[18:19], r17
0030bc  97b86802  sll.d r[18:19], r[18:19], r6
0030c0  0b2a1a11  add.ul r[21:22], r[21:22], r[18:19]
0030c4  ff29da00  l_gm2lm r19, r13, 0(r[21:22])
0030c8  00a00200  mfence { lm, gm }
0030cc  3fc76200  blt.s r5, r6, 464
0030d0  1f0a0000  addli r20, zero, 0
0030d4  9f090000  addli r19, zero, 0
0030d8  9f0a0000  addli r21, zero, 0
0030dc  db0c0000  j 100
0030e0  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
0030e4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0030e8  9f9a0a00  addli r21, r21, 1
0030ec  6af134c0  vsrl.p vr2, r9, vr3
0030f0  6af214c0  vsrl.p vr4, r9, vr1
0030f4  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
0030f8  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0030fc  ea7125c0  vsrl.p vr3, r10, vr2
003100  6a7215c0  vsrl.p vr4, r10, vr1
003104  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
003108  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00310c  eaf125c0  vsrl.p vr3, r11, vr2
003110  6af215c0  vsrl.p vr4, r11, vr1
003114  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
003118  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00311c  ea7126c0  vsrl.p vr3, r12, vr2
003120  6a7216c0  vsrl.p vr4, r12, vr1
003124  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
003128  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00312c  fa130140  vextracti.f r7, 0(vr2)
003130  fa960040  vextracti.f r13, 0(vr1)
003134  0b6a7a10  add.f.rn r20, r20, r7
003138  8be9d910  add.f.rn r19, r19, r13
00313c  b7a55a00  beq r21, r5, 360
003140  1f8c0a00  addli r24, r21, 0
003144  37309700  beq r14, r9, 12
003148  17ab8a00  xor r22, r21, r8
00314c  0b9c6211  add.s r24, r5, r22
003150  0b1bec20  mul.s r22, r24, r14
003154  12320002  vadd.s.mz vr4{mr1}, zero, vr0
003158  92310002  vadd.s.mz vr3{mr1}, zero, vr0
00315c  12310002  vadd.s.mz vr2{mr1}, zero, vr0
003160  92300002  vadd.s.mz vr1{mr1}, zero, vr0
003164  0b9b6719  sub.s r22, r15, r22
003168  0b1beb40  min.s r22, r22, r14
00316c  bf5d6bfe  blt.s r22, r6, -140
003170  92300002  vadd.s.mz vr1{mr1}, zero, vr0
003174  12310002  vadd.s.mz vr2{mr1}, zero, vr0
003178  92310002  vadd.s.mz vr3{mr1}, zero, vr0
00317c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
003180  9f0b0000  addli r23, zero, 0
003184  0b1c8221  mul.s r24, r4, r24
003188  9f0c8fd7  addli r25, r30, -5184
00318c  1f0d0800  addli r26, r16, 0
003190  8b1d8d11  add.s r27, r26, r24
003194  9f838b00  addli r7, r23, 64
003198  ca820d02  vloads.mz vr5{mr1}, 0(r27)
00319c  1f8e8d00  addli r28, r27, 64
0031a0  4a030e02  vloads.mz vr6{mr1}, 0(r28)
0031a4  0b9e8c11  add.s r28, r25, r24
0031a8  c2030e02  vload.mz vr7{mr1}, 0(r28)
0031ac  9f068e00  addli r13, r28, 64
0031b0  42840602  vload.mz vr8{mr1}, 0(r13)
0031b4  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
0031b8  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0031bc  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
0031c0  06b40300  vfp162float_l.rn vr8, vr7
0031c4  86f30300  vfp162float_h.rn vr7, vr7
0031c8  86340300  vfp162float_l.rn vr9, vr6
0031cc  06730300  vfp162float_h.rn vr6, vr6
0031d0  86120400  vfloat2fp16_l.rn vr5, vr8
0031d4  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
0031d8  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
0031dc  12340002  vadd.s.mz vr8{mr1}, zero, vr0
0031e0  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
0031e4  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
0031e8  06940400  vfloat2fp16_l.rn vr8, vr9
0031ec  86d20300  vfloat2fp16_h.rn vr5, vr7
0031f0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0031f4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0031f8  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0031fc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003200  06540300  vfloat2fp16_h.rn vr8, vr6
003204  46005e02  vstore.mz vr5{mr1}, 0(r28)
003208  46808602  vstore.mz vr8{mr1}, 0(r13)
00320c  4b5b7bfe  ble.s r22, r7, -300
003210  9f830d01  addli r7, r27, 128
003214  9f060e01  addli r13, r28, 128
003218  9f8b0b01  addli r23, r23, 128
00321c  1f0d0d02  addli r26, r26, 256
003220  9f8c0c02  addli r25, r25, 256
003224  ca820302  vloads.mz vr5{mr1}, 0(r7)
003228  9f838d01  addli r7, r27, 192
00322c  c2830602  vload.mz vr7{mr1}, 0(r13)
003230  4a830302  vloads.mz vr6{mr1}, 0(r7)
003234  9f038e01  addli r7, r28, 192
003238  42840302  vload.mz vr8{mr1}, 0(r7)
00323c  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
003240  92320002  vadd.s.mz vr5{mr1}, zero, vr0
003244  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
003248  12330002  vadd.s.mz vr6{mr1}, zero, vr0
00324c  86b40300  vfp162float_l.rn vr9, vr7
003250  86f30300  vfp162float_h.rn vr7, vr7
003254  86920400  vfloat2fp16_l.rn vr5, vr9
003258  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
00325c  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
003260  86340400  vfp162float_l.rn vr9, vr8
003264  06740400  vfp162float_h.rn vr8, vr8
003268  06930400  vfloat2fp16_l.rn vr6, vr9
00326c  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
003270  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
003274  86d20300  vfloat2fp16_h.rn vr5, vr7
003278  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
00327c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
003280  06530400  vfloat2fp16_h.rn vr6, vr8
003284  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
003288  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00328c  46805602  vstore.mz vr5{mr1}, 0(r13)
003290  46806302  vstore.mz vr6{mr1}, 0(r7)
003294  bffb6bff  blt.s r23, r22, -260
003298  5bc9ffff  j -440
00329c  9f090000  addli r19, zero, 0
0032a0  1f0a0000  addli r20, zero, 0
0032a4  00a00000  mfence { lm }
0032a8  3f8767fe  blt.s r15, r6, -576
0032ac  0f0a3a18  div.f.rn r20, r20, r3
0032b0  8f893918  div.f.rn r19, r19, r3
0032b4  e3033f00  loadli.w r7,  24(r30)
0032b8  1f0b0000  addli r22, zero, 0
0032bc  8b6a4a21  mul.f.rn r21, r20, r20
0032c0  0b6a0a58  neg.f r20, r20
0032c4  8be95919  sub.f.rn r19, r19, r21
0032c8  9f0a8fd7  addli r21, r30, -5184
0032cc  8be97910  add.f.rn r19, r19, r7
0032d0  ab03803f  lui r7, 260096
0032d4  8f890908  sqrt.f.rn r19, r19
0032d8  8f893319  div.f.rn r19, r7, r19
0032dc  c2800a02  vload.mz vr1{mr1}, 0(r21)
0032e0  9f0b4b00  addli r23, r22, 32
0032e4  06b10000  vfp162float_l.rn vr2, vr1
0032e8  86f00000  vfp162float_h.rn vr1, vr1
0032ec  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
0032f0  92111a02  vadd.f.mz.rn vr3{mr1}, r20, vr1
0032f4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0032f8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0032fc  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
003300  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003304  06120100  vfloat2fp16_l.rn vr4, vr2
003308  06d20100  vfloat2fp16_h.rn vr4, vr3
00330c  46804a02  vstore.mz vr4{mr1}, 0(r21)
003310  4be577ff  ble.s r15, r23, -680
003314  9f8b8a00  addli r23, r21, 64
003318  1f0b8b00  addli r22, r22, 64
00331c  9f8a0a01  addli r21, r21, 128
003320  42810b02  vload.mz vr2{mr1}, 0(r23)
003324  86310100  vfp162float_l.rn vr3, vr2
003328  06710100  vfp162float_h.rn vr2, vr2
00332c  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
003330  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003334  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003338  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
00333c  86900100  vfloat2fp16_l.rn vr1, vr3
003340  86500100  vfloat2fp16_h.rn vr1, vr2
003344  46801b02  vstore.mz vr1{mr1}, 0(r23)
003348  3f5efbfe  blt.s r22, r15, -108
00334c  dba3ffff  j -740
003350  80300002  core_id r1
003354  1f210000  addli r2, zero, 2
003358  b7d12018  beq r1, r2, 12404
00335c  1f110000  addli r2, zero, 1
003360  b7c32014  beq r1, r2, 10480
003364  3b920018  bneq r1, zero, 12420
003368  63012f00  loadli.w r2,  16(r30)
00336c  ab0100f0  lui r3, 983040
003370  1b312100  slli r2, r2, 2
003374  17113100  or r2, r2, r3
003378  ab710200  lui r3, 39
00337c  9f810108  addli r3, r3, 1024
003380  7f013200  l_gm2sm r2, r3, 0(r[5:6])
003384  db0c0600  j 12388
003388  80300002  core_id r1
00338c  bb800000  bneq r1, zero, 32
003390  63012f00  loadli.w r2,  16(r30)
003394  ab0100f0  lui r3, 983040
003398  1b312100  slli r2, r2, 2
00339c  17113100  or r2, r2, r3
0033a0  abd10200  lui r3, 45
0033a4  9f8101f0  addli r3, r3, -2048
0033a8  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0033ac  2bf10000  lui r2, 15
0033b0  e3411f00  loadli.w r3,  12(r30)
0033b4  00200300  mfence { sm, gm }
0033b8  1b11f1ff  ori r2, r2, 4095
0033bc  80210104  csr_set csr3, r2
0033c0  00d00100  sync_group
0033c4  4bc0111a  ble.s r3, r1, 13328
0033c8  e3012f00  loadli.w r3,  16(r30)
0033cc  e3422f00  loadli.w r5,  20(r30)
0033d0  abf4ffff  lui r9, 1048575
0033d4  abd80200  lui r17, 45
0033d8  1f0b8fd7  addli r22, r30, -5184
0033dc  1f140000  addli r8, zero, 1
0033e0  1f050002  addli r10, zero, 256
0033e4  9f050001  addli r11, zero, 128
0033e8  1f068000  addli r12, zero, 64
0033ec  9f064000  addli r13, zero, 32
0033f0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0033f4  9b94f4ff  ori r9, r9, 4095
0033f8  9f8808f0  addli r17, r17, -2048
0033fc  0b925110  add.s r4, r3, r5
003400  1bb12100  slli r2, r3, 2
003404  b3810108  fix2float.rn r3, r3
003408  1f73f2ff  addli r6, r4, -1
00340c  1bb22200  slli r4, r5, 2
003410  67043fd6  storeli.w r3, -5312(r30)
003414  9f010fd7  addli r3, r30, -5248
003418  8b125330  div.s r5, r6, r5
00341c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003420  5b070000  j 56
003424  00a00000  mfence { lm }
003428  6b530f00  load.d r[7:8], 0(r30)
00342c  2b0800f0  lui r16, 983040
003430  1f0b8fd7  addli r22, r30, -5184
003434  005a0102  load_param_i r20, 2
003438  17180101  or r16, r2, r16
00343c  8b101a10  add.s r1, r20, r1
003440  0b292311  add.ul r[19:20], r[7:8], r[19:20]
003444  7f386901  s_lm2gm r16, r22, 0(r[19:20])
003448  00a00200  mfence { lm, gm }
00344c  e3411f00  loadli.w r3,  12(r30)
003450  3fa03000  blt.s r1, r3, 8
003454  5b700600  j 13184
003458  e3011f00  loadli.w r3,  8(r30)
00345c  0b983010  add.s r16, r1, r3
003460  9f210000  addli r3, zero, 2
003464  0b18f820  mul.s r16, r16, r15
003468  33190828  sext_int2long r[19:20], r16
00346c  2b0800f0  lui r16, 983040
003470  17393902  sll.d r[19:20], r[19:20], r3
003474  9f017fd6  addli r3, r30, -5320
003478  17180101  or r16, r2, r16
00347c  6bd30100  load.d r[7:8], 0(r3)
003480  0b2a2311  add.ul r[21:22], r[7:8], r[19:20]
003484  7f286a01  l_gm2lm r16, r22, 0(r[21:22])
003488  00a00200  mfence { lm, gm }
00348c  bf978200  blt.s r5, r8, 484
003490  9f0a0000  addli r21, zero, 0
003494  1f0a0000  addli r20, zero, 0
003498  1f0b0000  addli r22, zero, 0
00349c  db0c0000  j 100
0034a0  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
0034a4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0034a8  1f1b0b00  addli r22, r22, 1
0034ac  6a7105c0  vsrl.p vr2, r10, vr0
0034b0  ea7115c0  vsrl.p vr3, r10, vr1
0034b4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0034b8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0034bc  6af105c0  vsrl.p vr2, r11, vr0
0034c0  eaf115c0  vsrl.p vr3, r11, vr1
0034c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0034c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0034cc  6a7106c0  vsrl.p vr2, r12, vr0
0034d0  ea7116c0  vsrl.p vr3, r12, vr1
0034d4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0034d8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0034dc  6af106c0  vsrl.p vr2, r13, vr0
0034e0  eaf116c0  vsrl.p vr3, r13, vr1
0034e4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0034e8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0034ec  fa110040  vextracti.f r3, 0(vr0)
0034f0  7a930040  vextracti.f r6, 0(vr1)
0034f4  8bea3a10  add.f.rn r21, r21, r3
0034f8  0b6a6a10  add.f.rn r20, r20, r6
0034fc  b7755b00  beq r22, r5, 380
003500  1f080b00  addli r16, r22, 0
003504  3730a700  beq r14, r10, 12
003508  17289b00  xor r16, r22, r9
00350c  0b980211  add.s r16, r5, r16
003510  9f010fd7  addli r3, r30, -5248
003514  8b1be820  mul.s r23, r16, r14
003518  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00351c  8b9b7719  sub.s r23, r15, r23
003520  8b9beb40  min.s r23, r23, r14
003524  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003528  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00352c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003530  bfcd8bfe  blt.s r23, r8, -144
003534  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003538  1f0c0000  addli r24, zero, 0
00353c  8b1c0221  mul.s r25, r4, r16
003540  1f0d8fd7  addli r26, r30, -5184
003544  9f8d0800  addli r27, r17, 0
003548  92304002  vadd.s.mz vr1{mr1}, zero, vr4
00354c  12314002  vadd.s.mz vr2{mr1}, zero, vr4
003550  92314002  vadd.s.mz vr3{mr1}, zero, vr4
003554  0b989d11  add.s r16, r27, r25
003558  0b1e9d11  add.s r28, r26, r25
00355c  1f038800  addli r6, r16, 64
003560  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
003564  9f038801  addli r7, r16, 192
003568  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
00356c  9f018e01  addli r3, r28, 192
003570  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
003574  1f030801  addli r6, r16, 128
003578  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
00357c  9f030e01  addli r7, r28, 128
003580  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
003584  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
003588  c2950302  vload_mask16.mz vr11{mr1}, 0(r7)
00358c  1f038e00  addli r6, r28, 64
003590  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
003594  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
003598  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
00359c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0035a0  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0035a4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0035a8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0035ac  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
0035b0  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0035b4  1f038c00  addli r6, r24, 64
0035b8  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0035bc  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0035c0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0035c4  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0035c8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0035cc  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
0035d0  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
0035d4  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0035d8  4bab6bfe  ble.s r23, r6, -312
0035dc  1f030802  addli r6, r16, 256
0035e0  9f038802  addli r7, r16, 320
0035e4  9f010e02  addli r3, r28, 256
0035e8  1f0c0c01  addli r24, r24, 128
0035ec  9f8d0d04  addli r27, r27, 512
0035f0  1f0d0d04  addli r26, r26, 512
0035f4  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
0035f8  1f030803  addli r6, r16, 384
0035fc  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
003600  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
003604  9f038e02  addli r7, r28, 320
003608  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
00360c  1f038803  addli r6, r16, 448
003610  1f088e03  addli r16, r28, 448
003614  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
003618  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
00361c  1f030e03  addli r6, r28, 384
003620  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
003624  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
003628  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
00362c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
003630  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003634  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003638  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00363c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003640  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
003644  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
003648  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00364c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003650  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
003654  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003658  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00365c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
003660  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003664  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
003668  bf3b7cff  blt.s r24, r23, -276
00366c  dbc6ffff  j -460
003670  1f0a0000  addli r20, zero, 0
003674  9f0a0000  addli r21, zero, 0
003678  00a00000  mfence { lm }
00367c  bfa687fe  blt.s r15, r8, -600
003680  e3018fd6  loadli.w r3,  -5312(r30)
003684  1f0b0000  addli r22, zero, 0
003688  8f8a3a18  div.f.rn r21, r21, r3
00368c  0f083a18  div.f.rn r16, r20, r3
003690  e3013f00  loadli.w r3,  24(r30)
003694  0bea5a21  mul.f.rn r20, r21, r21
003698  0b684819  sub.f.rn r16, r16, r20
00369c  0bea0a58  neg.f r20, r21
0036a0  9f0a8fd7  addli r21, r30, -5184
0036a4  0b683810  add.f.rn r16, r16, r3
0036a8  ab01803f  lui r3, 260096
0036ac  0f080808  sqrt.f.rn r16, r16
0036b0  0f880119  div.f.rn r16, r3, r16
0036b4  9f8b8a00  addli r23, r21, 64
0036b8  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
0036bc  1f0c4b00  addli r24, r22, 32
0036c0  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
0036c4  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
0036c8  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
0036cc  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
0036d0  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
0036d4  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
0036d8  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
0036dc  4ba587ff  ble.s r15, r24, -696
0036e0  9f8b0a01  addli r23, r21, 128
0036e4  1f8c8a01  addli r24, r21, 192
0036e8  1f0b8b00  addli r22, r22, 64
0036ec  9f8a0a02  addli r21, r21, 256
0036f0  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
0036f4  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
0036f8  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
0036fc  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003700  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003704  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003708  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
00370c  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
003710  bf1efbfe  blt.s r22, r15, -92
003714  5ba2ffff  j -752
003718  00310002  core_id r2
00371c  ab630000  lui r7, 6
003720  9f100000  addli r1, zero, 1
003724  1f038fd7  addli r6, r30, -5184
003728  1f048000  addli r8, zero, 64
00372c  1f050010  addli r10, zero, 2048
003730  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
003734  9b315100  slli r3, r2, 5
003738  00510102  load_param_i r2, 2
00373c  9f830308  addli r7, r7, 1024
003740  9b345100  slli r9, r2, 5
003744  b3850128  zext_int2long r[12:13], r3
003748  ab0600f0  lui r13, 983040
00374c  97b51502  sll.d r[12:13], r[12:13], r1
003750  9716d400  or r13, r8, r13
003754  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
003758  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
00375c  9bb52100  slli r11, r3, 2
003760  8b913410  add.s r3, r9, r3
003764  00a00200  mfence { lm, gm }
003768  c2000302  vload.mz vr1{mr1}, 0(r6)
00376c  1386a104  setlt.u r12, r3, r10
003770  8b957510  add.s r11, r11, r7
003774  9f868500  addli r13, r11, 64
003778  66c11180  vmerge_l.hf vr2, vr3, vr1
00377c  e6c011a0  vmerge_h.hf vr1, vr3, vr1
003780  4e902502  vstores_mask16.mz vr2{mr1}, 0(r11)
003784  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
003788  bb7e06fe  bneq r12, zero, -68
00378c  abf00000  lui r1, 15
003790  80310002  core_id r3
003794  9f020006  addli r5, zero, 768
003798  00a00300  mfence { lm, sm, gm }
00379c  9b90f0ff  ori r1, r1, 4095
0037a0  1b821100  andi r4, r3, 1
0037a4  9f010006  addli r3, zero, 768
0037a8  80a10004  csr_set csr3, r1
0037ac  00d00100  sync_group
0037b0  670b4fd4  storeli.w r4, -5456(r30)
0037b4  37200200  beq r4, zero, 8
0037b8  9f02000a  addli r5, zero, 1280
0037bc  63421f00  loadli.w r4,  12(r30)
0037c0  9f100000  addli r1, zero, 1
0037c4  3f401218  blt.s r4, r1, 12304
0037c8  63026fd5  loadli.w r4,  -5456(r30)
0037cc  9b461100  srli r13, r2, 1
0037d0  00310002  core_id r2
0037d4  1f078fd7  addli r14, r30, -5184
0037d8  1f040000  addli r8, zero, 0
0037dc  1f797000  addli r18, zero, 63
0037e0  1f0a0005  addli r20, zero, 640
0037e4  2b0e803f  lui r28, 260096
0037e8  1f052000  addli r10, zero, 16
0037ec  2b03ffff  lui r6, 1048560
0037f0  ab04807f  lui r9, 522240
0037f4  ab0dc07f  lui r27, 523264
0037f8  9f380000  addli r17, zero, 3
0037fc  9f5a1000  addli r21, zero, 13
003800  9f058fd4  addli r11, r30, -5568
003804  1b461100  srli r12, r2, 1
003808  1bb12200  slli r2, r5, 2
00380c  8b113220  mul.s r3, r4, r3
003810  1f824200  addli r4, r5, 32
003814  0b11e110  add.s r2, r2, r14
003818  e7433fd4  storeli.w r3, -5572(r30)
00381c  9bb11200  slli r3, r5, 1
003820  67034fd4  storeli.w r4, -5584(r30)
003824  2be27f00  lui r4, 2046
003828  1f0181ff  addli r2, r2, -64
00382c  67083fd6  storeli.w r3, -5248(r30)
003830  8b91e110  add.s r3, r3, r14
003834  e7422fd4  storeli.w r2, -5588(r30)
003838  1f8181ff  addli r2, r3, -64
00383c  abf100fc  lui r3, 1032207
003840  e7022fd4  storeli.w r2, -5592(r30)
003844  2bf1ffff  lui r2, 1048575
003848  1b9801c0  ori r16, r3, 3072
00384c  9f211000  addli r3, zero, 10
003850  00a00000  mfence { lm }
003854  46903502  vstore_mask16.mz vr3{mr1}, 0(r11)
003858  e703dfd4  storeli.w r13, -5576(r30)
00385c  6743cfd4  storeli.w r12, -5580(r30)
003860  1b1101f8  ori r2, r2, 3968
003864  67422fd4  storeli.w r2, -5596(r30)
003868  2bf10000  lui r2, 15
00386c  1b11f1ff  ori r2, r2, 4095
003870  67042fd6  storeli.w r2, -5312(r30)
003874  2b710000  lui r2, 7
003878  9b19f1ff  ori r19, r2, 4095
00387c  2b01ff03  lui r2, 16368
003880  9b17f13f  ori r15, r2, 1023
003884  2be10700  lui r2, 126
003888  5b040000  j 32
00388c  00a00300  mfence { lm, sm, gm }
003890  e3058fd6  loadli.w r11,  -5312(r30)
003894  80a10504  csr_set csr3, r11
003898  00d00100  sync_group
00389c  0b14d410  add.s r8, r8, r13
0038a0  3f209401  blt.s r8, r25, 8
0038a4  5b80faff  j -11264
0038a8  8b15c410  add.s r11, r8, r12
0038ac  cb8fbcfe  ble.s r25, r11, -32
0038b0  63061f00  loadli.w r12,  8(r30)
0038b4  8b95c510  add.s r11, r11, r12
0038b8  0b06d430  div.u r12, r8, r13
0038bc  e3467fd4  loadli.w r13,  -5572(r30)
0038c0  9bb5b500  slli r11, r11, 11
0038c4  9795d500  or r11, r11, r13
0038c8  9f067fd6  addli r13, r30, -5320
0038cc  b39b0528  sext_int2long r[24:25], r11
0038d0  ab0500f0  lui r11, 983040
0038d4  1b366600  slli r12, r12, 6
0038d8  17bc1b02  sll.d r[25:26], r[24:25], r1
0038dc  6bdb0600  load.d r[23:24], 0(r13)
0038e0  9f068fd5  addli r13, r30, -5440
0038e4  1b060604  andi r12, r12, 64
0038e8  73b08601  store.d r[25:26], 0(r13)
0038ec  e3060fd7  loadli.w r13,  -5248(r30)
0038f0  8b2b8b11  add.ul r[24:25], r[23:24], r[25:26]
0038f4  9795b600  or r11, r13, r11
0038f8  ffa5eb00  l_gm2lm r11, r14, 0(r[24:25])
0038fc  80350002  core_id r11
003900  9715b600  or r11, r12, r11
003904  e70bbfd4  storeli.w r11, -5448(r30)
003908  00a00200  mfence { lm, gm }
00390c  e3055fd4  loadli.w r11,  -5592(r30)
003910  63465fd4  loadli.w r12,  -5588(r30)
003914  e3066fd4  loadli.w r13,  -5584(r30)
003918  c2800502  vload.mz vr1{mr1}, 0(r11)
00391c  9f86c6ff  addli r13, r13, -32
003920  9f0c86ff  addli r25, r12, -64
003924  9f8585ff  addli r11, r11, -64
003928  130cd904  setlt.u r24, r18, r13
00392c  66c111a0  vmerge_h.hf vr2, vr3, vr1
003930  e6c01180  vmerge_l.hf vr1, vr3, vr1
003934  46102602  vstore_mask16.mz vr2{mr1}, 0(r12)
003938  1f0606ff  addli r12, r12, -128
00393c  46901c02  vstore_mask16.mz vr1{mr1}, 0(r25)
003940  3b6f0cfe  bneq r24, zero, -40
003944  00a00000  mfence { lm }
003948  e3056fd5  loadli.w r11,  -5456(r30)
00394c  3bb60500  bneq r11, zero, 396
003950  92303002  vadd.s.mz vr1{mr1}, zero, vr3
003954  12313002  vadd.s.mz vr2{mr1}, zero, vr3
003958  12323002  vadd.s.mz vr4{mr1}, zero, vr3
00395c  63464fd4  loadli.w r12,  -5596(r30)
003960  9f050000  addli r11, zero, 0
003964  0b9c7510  add.s r24, r11, r7
003968  8b16b710  add.s r13, r14, r11
00396c  1f060601  addli r12, r12, 128
003970  9f850504  addli r11, r11, 512
003974  1f0b0c01  addli r22, r24, 128
003978  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
00397c  9f0b8c00  addli r23, r24, 64
003980  42940602  vload_mask16.mz vr8{mr1}, 0(r13)
003984  9f8c8601  addli r25, r13, 192
003988  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
00398c  1f0b8c01  addli r22, r24, 192
003990  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
003994  9f8b8600  addli r23, r13, 64
003998  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
00399c  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
0039a0  1f8b0601  addli r22, r13, 128
0039a4  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
0039a8  c2140b02  vload_mask16.mz vr9{mr1}, 0(r22)
0039ac  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0039b0  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0039b4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0039b8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0039bc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0039c0  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
0039c4  46108b02  vstore_mask16.mz vr8{mr1}, 0(r22)
0039c8  1f0b0c02  addli r22, r24, 256
0039cc  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0039d0  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0039d4  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0039d8  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
0039dc  9f8b0603  addli r23, r13, 384
0039e0  4a100b02  vloads_mask16.mz vr0{mr1}, 0(r22)
0039e4  1f0b8c02  addli r22, r24, 320
0039e8  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
0039ec  9f8c0602  addli r25, r13, 256
0039f0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0039f4  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0039f8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0039fc  4a130b02  vloads_mask16.mz vr6{mr1}, 0(r22)
003a00  1f0b0c03  addli r22, r24, 384
003a04  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003a08  1f0c8c03  addli r24, r24, 448
003a0c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003a10  4a140b02  vloads_mask16.mz vr8{mr1}, 0(r22)
003a14  1f8b8602  addli r22, r13, 320
003a18  4a150c02  vloads_mask16.mz vr10{mr1}, 0(r24)
003a1c  9f868603  addli r13, r13, 448
003a20  c2140b02  vload_mask16.mz vr9{mr1}, 0(r22)
003a24  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003a28  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
003a2c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003a30  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
003a34  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003a38  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003a3c  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003a40  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003a44  46106b02  vstore_mask16.mz vr6{mr1}, 0(r22)
003a48  130b4605  setlt.u r22, r12, r20
003a4c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003a50  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003a54  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003a58  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003a5c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003a60  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
003a64  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
003a68  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003a6c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003a70  bb5b0bfe  bneq r22, zero, -268
003a74  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003a78  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003a7c  9f050002  addli r11, zero, 256
003a80  6af105c0  vsrl.p vr2, r11, vr0
003a84  eaf115c0  vsrl.p vr3, r11, vr1
003a88  9f050001  addli r11, zero, 128
003a8c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003a90  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a94  6af105c0  vsrl.p vr2, r11, vr0
003a98  eaf115c0  vsrl.p vr3, r11, vr1
003a9c  9f058000  addli r11, zero, 64
003aa0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003aa4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003aa8  6af105c0  vsrl.p vr2, r11, vr0
003aac  eaf115c0  vsrl.p vr3, r11, vr1
003ab0  9f054000  addli r11, zero, 32
003ab4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003ab8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003abc  6af105c0  vsrl.p vr2, r11, vr0
003ac0  eaf115c0  vsrl.p vr3, r11, vr1
003ac4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003ac8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003acc  fa150040  vextracti.f r11, 0(vr0)
003ad0  7a960040  vextracti.f r12, 0(vr1)
003ad4  5b670000  j 824
003ad8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003adc  abf5ffff  lui r11, 1048575
003ae0  1f060000  addli r12, zero, 0
003ae4  1f090003  addli r18, zero, 384
003ae8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003aec  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003af0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003af4  9b9605f8  ori r13, r11, 3968
003af8  0b9cc310  add.s r24, r7, r12
003afc  8b15c710  add.s r11, r14, r12
003b00  9f860601  addli r13, r13, 128
003b04  1f060604  addli r12, r12, 512
003b08  9f0b0c31  addli r23, r24, 6272
003b0c  9f0c0c30  addli r25, r24, 6144
003b10  1f0b8c31  addli r22, r24, 6336
003b14  1f8d0518  addli r26, r11, 3072
003b18  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
003b1c  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
003b20  9f0c8c30  addli r25, r24, 6208
003b24  ca140b02  vloads_mask16.mz vr9{mr1}, 0(r22)
003b28  9f8b0519  addli r23, r11, 3200
003b2c  1f8b8518  addli r22, r11, 3136
003b30  42130d02  vload_mask16.mz vr6{mr1}, 0(r26)
003b34  4a940c02  vloads_mask16.mz vr8{mr1}, 0(r25)
003b38  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
003b3c  9f8c8519  addli r25, r11, 3264
003b40  c2150b02  vload_mask16.mz vr11{mr1}, 0(r22)
003b44  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
003b48  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003b4c  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
003b50  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
003b54  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
003b58  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003b5c  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
003b60  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
003b64  9f0b0c32  addli r23, r24, 6400
003b68  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
003b6c  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003b70  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003b74  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
003b78  9f8c051a  addli r25, r11, 3328
003b7c  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003b80  46105b02  vstore_mask16.mz vr5{mr1}, 0(r22)
003b84  1f8b051b  addli r22, r11, 3456
003b88  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
003b8c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
003b90  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
003b94  9f0b8c32  addli r23, r24, 6464
003b98  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003b9c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003ba0  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
003ba4  9f0b0c33  addli r23, r24, 6528
003ba8  1f0c8c33  addli r24, r24, 6592
003bac  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
003bb0  9f8b851a  addli r23, r11, 3392
003bb4  4a150c02  vloads_mask16.mz vr10{mr1}, 0(r24)
003bb8  9f85851b  addli r11, r11, 3520
003bbc  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
003bc0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003bc4  c2130b02  vload_mask16.mz vr7{mr1}, 0(r22)
003bc8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003bcc  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
003bd0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003bd4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003bd8  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003bdc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003be0  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
003be4  938b2605  setlt.u r23, r13, r18
003be8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003bec  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003bf0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003bf4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003bf8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003bfc  46105b02  vstore_mask16.mz vr5{mr1}, 0(r22)
003c00  46907502  vstore_mask16.mz vr7{mr1}, 0(r11)
003c04  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003c08  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003c0c  bbbb0bfe  bneq r23, zero, -276
003c10  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003c14  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003c18  9f050002  addli r11, zero, 256
003c1c  1f0d0000  addli r26, zero, 0
003c20  eaf115c0  vsrl.p vr3, r11, vr1
003c24  6af105c0  vsrl.p vr2, r11, vr0
003c28  9f050001  addli r11, zero, 128
003c2c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003c30  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003c34  eaf115c0  vsrl.p vr3, r11, vr1
003c38  6af105c0  vsrl.p vr2, r11, vr0
003c3c  9f058000  addli r11, zero, 64
003c40  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003c44  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003c48  eaf115c0  vsrl.p vr3, r11, vr1
003c4c  6af105c0  vsrl.p vr2, r11, vr0
003c50  9f054000  addli r11, zero, 32
003c54  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003c58  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003c5c  eaf115c0  vsrl.p vr3, r11, vr1
003c60  6af105c0  vsrl.p vr2, r11, vr0
003c64  abf5ffff  lui r11, 1048575
003c68  9b9505f8  ori r11, r11, 3968
003c6c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003c70  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003c74  fa960040  vextracti.f r13, 0(vr1)
003c78  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003c7c  7a190040  vextracti.f r18, 0(vr0)
003c80  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003c84  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003c88  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003c8c  8b9ca311  add.s r25, r7, r26
003c90  0b1ca711  add.s r24, r14, r26
003c94  9f850501  addli r11, r11, 128
003c98  1f0d0d04  addli r26, r26, 512
003c9c  1f8b0c18  addli r22, r25, 3072
003ca0  9f8b0c19  addli r23, r25, 3200
003ca4  1f068c01  addli r12, r24, 192
003ca8  42140c02  vload_mask16.mz vr8{mr1}, 0(r24)
003cac  4a100b02  vloads_mask16.mz vr0{mr1}, 0(r22)
003cb0  1f8b8c18  addli r22, r25, 3136
003cb4  ca920b02  vloads_mask16.mz vr5{mr1}, 0(r23)
003cb8  9f8b8c19  addli r23, r25, 3264
003cbc  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
003cc0  4a130b02  vloads_mask16.mz vr6{mr1}, 0(r22)
003cc4  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
003cc8  1f0b0c01  addli r22, r24, 128
003ccc  9f0b8c00  addli r23, r24, 64
003cd0  c2140b02  vload_mask16.mz vr9{mr1}, 0(r22)
003cd4  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
003cd8  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
003cdc  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
003ce0  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
003ce4  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
003ce8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003cec  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003cf0  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003cf4  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003cf8  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
003cfc  46108b02  vstore_mask16.mz vr8{mr1}, 0(r22)
003d00  1f0b0c02  addli r22, r24, 256
003d04  46106602  vstore_mask16.mz vr6{mr1}, 0(r12)
003d08  1f860c1a  addli r12, r25, 3328
003d0c  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
003d10  9f0b0c03  addli r23, r24, 384
003d14  4a100602  vloads_mask16.mz vr0{mr1}, 0(r12)
003d18  1f868c1a  addli r12, r25, 3392
003d1c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003d20  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003d24  c2130b02  vload_mask16.mz vr7{mr1}, 0(r22)
003d28  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003d2c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003d30  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
003d34  1f860c1b  addli r12, r25, 3456
003d38  9f8c8c1b  addli r25, r25, 3520
003d3c  4a140602  vloads_mask16.mz vr8{mr1}, 0(r12)
003d40  1f068c02  addli r12, r24, 320
003d44  4a950c02  vloads_mask16.mz vr10{mr1}, 0(r25)
003d48  1f0c8c03  addli r24, r24, 448
003d4c  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
003d50  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003d54  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
003d58  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003d5c  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
003d60  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003d64  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003d68  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
003d6c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003d70  46106602  vstore_mask16.mz vr6{mr1}, 0(r12)
003d74  13864505  setlt.u r12, r11, r20
003d78  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003d7c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003d80  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003d84  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003d88  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003d8c  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
003d90  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
003d94  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003d98  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003d9c  bb4b06fe  bneq r12, zero, -272
003da0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003da4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003da8  9f050002  addli r11, zero, 256
003dac  6af105c0  vsrl.p vr2, r11, vr0
003db0  eaf115c0  vsrl.p vr3, r11, vr1
003db4  9f050001  addli r11, zero, 128
003db8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003dbc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003dc0  6af105c0  vsrl.p vr2, r11, vr0
003dc4  eaf115c0  vsrl.p vr3, r11, vr1
003dc8  9f058000  addli r11, zero, 64
003dcc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003dd0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003dd4  6af105c0  vsrl.p vr2, r11, vr0
003dd8  eaf115c0  vsrl.p vr3, r11, vr1
003ddc  9f054000  addli r11, zero, 32
003de0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003de4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003de8  6af105c0  vsrl.p vr2, r11, vr0
003dec  eaf115c0  vsrl.p vr3, r11, vr1
003df0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003df4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003df8  fa150040  vextracti.f r11, 0(vr0)
003dfc  7a960040  vextracti.f r12, 0(vr1)
003e00  8b65b910  add.f.rn r11, r18, r11
003e04  0be6c610  add.f.rn r12, r13, r12
003e08  1f797000  addli r18, zero, 63
003e0c  2b8b0000  lui r22, 8
003e10  ab8b0000  lui r23, 8
003e14  630d7fd5  loadli.w r26,  -5448(r30)
003e18  1f0b0b08  addli r22, r22, 1024
003e1c  9f8b0b0c  addli r23, r23, 1536
003e20  9b362d00  slli r13, r26, 2
003e24  1f0c0b00  addli r24, r22, 0
003e28  9f8c0b00  addli r25, r23, 0
003e2c  0b9b8611  add.s r22, r13, r24
003e30  8b9b9611  add.s r23, r13, r25
003e34  73e0cb00  stores.w r12, 0(r23)
003e38  7360bb00  stores.w r11, 0(r22)
003e3c  1b964600  ori r12, r13, 4
003e40  9f0b0000  addli r23, zero, 0
003e44  00a00300  mfence { lm, sm, gm }
003e48  e3058fd6  loadli.w r11,  -5312(r30)
003e4c  8b168611  add.s r13, r12, r24
003e50  0b169611  add.s r12, r12, r25
003e54  80a10504  csr_set csr3, r11
003e58  9b05ed07  andi r11, r26, 126
003e5c  00d00100  sync_group
003e60  efc60600  loads.w r13, 0(r13)
003e64  6f460600  loads.w r12, 0(r12)
003e68  9bb52500  slli r11, r11, 2
003e6c  0b9b8511  add.s r22, r11, r24
003e70  8b959511  add.s r11, r11, r25
003e74  6f4b0b00  loads.w r22, 0(r22)
003e78  efc50500  loads.w r11, 0(r11)
003e7c  8be66611  add.f.rn r13, r13, r22
003e80  2b0b003a  lui r22, 237568
003e84  8b65b610  add.f.rn r11, r12, r11
003e88  0be66621  mul.f.rn r12, r13, r22
003e8c  8be56521  mul.f.rn r11, r11, r22
003e90  8b66c620  mul.f.rn r13, r12, r12
003e94  0b660658  neg.f r12, r12
003e98  8be5d518  sub.f.rn r11, r11, r13
003e9c  e3063f00  loadli.w r13,  24(r30)
003ea0  8be5d510  add.f.rn r11, r11, r13
003ea4  9f068fd7  addli r13, r30, -5184
003ea8  8f850508  sqrt.f.rn r11, r11
003eac  8f05be18  div.f.rn r11, r28, r11
003eb0  1f8b8600  addli r22, r13, 64
003eb4  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
003eb8  1f8c4b00  addli r24, r23, 32
003ebc  c2100b02  vload_mask16.mz vr1{mr1}, 0(r22)
003ec0  138c8207  setle.u r24, r5, r24
003ec4  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
003ec8  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
003ecc  0a900502  vmul.f.mz.rn vr0{mr1}, r11, vr0
003ed0  8a901502  vmul.f.mz.rn vr1{mr1}, r11, vr1
003ed4  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
003ed8  46101b02  vstore_mask16.mz vr1{mr1}, 0(r22)
003edc  bb700c00  bneq r24, zero, 60
003ee0  1f8b0601  addli r22, r13, 128
003ee4  1f8c8601  addli r24, r13, 192
003ee8  9f8b8b00  addli r23, r23, 64
003eec  9f860602  addli r13, r13, 256
003ef0  42100b02  vload_mask16.mz vr0{mr1}, 0(r22)
003ef4  c2100c02  vload_mask16.mz vr1{mr1}, 0(r24)
003ef8  938c5b04  setlt.u r25, r23, r5
003efc  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
003f00  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
003f04  0a900502  vmul.f.mz.rn vr0{mr1}, r11, vr0
003f08  8a901502  vmul.f.mz.rn vr1{mr1}, r11, vr1
003f0c  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
003f10  46101c02  vstore_mask16.mz vr1{mr1}, 0(r24)
003f14  3bfe0cfe  bneq r25, zero, -100
003f18  9f058fd7  addli r11, r30, -5184
003f1c  1f068fd7  addli r12, r30, -5184
003f20  9f060000  addli r13, zero, 0
003f24  00a00000  mfence { lm }
003f28  c2110602  vload_mask16.mz vr3{mr1}, 0(r12)
003f2c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003f30  1f0b8600  addli r22, r12, 64
003f34  9f864600  addli r13, r13, 32
003f38  1f060601  addli r12, r12, 128
003f3c  6a201522  vor.u.mz vr0{mr1}, r10, vr1
003f40  eaa21a22  vor.u.mz vr5{mr1}, r21, vr1
003f44  42110b02  vload_mask16.mz vr2{mr1}, 0(r22)
003f48  138b5604  setlt.u r22, r13, r5
003f4c  6e3230c2  vsrl.s.mz vr4{mr1}, vr0, vr3
003f50  6e3020c2  vsrl.s.mz vr0{mr1}, vr0, vr2
003f54  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
003f58  6ab00002  vand.s.mz vr0{mr1}, r1, vr0
003f5c  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
003f60  e69101c0  vabs.f vr3, vr3
003f64  16300102  vadd.s.mz vr0{mr1}, vr2, vr0
003f68  661101c0  vabs.f vr2, vr2
003f6c  12b24902  vadd.s.mz vr4{mr1}, r19, vr4
003f70  72a13442  vlt.u.mz mr2{mr1}, r9, vr3
003f74  12b00902  vadd.s.mz vr0{mr1}, r19, vr0
003f78  6a324302  vand.s.mz vr4{mr1}, r6, vr4
003f7c  6a300302  vand.s.mz vr0{mr1}, r6, vr0
003f80  6aa21d34  vor.u.mh vr4{mr2}, r27, vr1
003f84  72a12442  vlt.u.mz mr2{mr1}, r9, vr2
003f88  6aa11822  vor.u.mz vr2{mr1}, r17, vr1
003f8c  6aa01d34  vor.u.mh vr0{mr2}, r27, vr1
003f90  eaa01122  vor.u.mz vr1{mr1}, r3, vr1
003f94  eeb142c2  vsrl.s.mz vr3{mr1}, vr5, vr4
003f98  6e3241c2  vsrl.s.mz vr4{mr1}, vr2, vr4
003f9c  eeb202c2  vsrl.s.mz vr5{mr1}, vr5, vr0
003fa0  6e3001c2  vsrl.s.mz vr0{mr1}, vr2, vr0
003fa4  6a313102  vand.s.mz vr2{mr1}, r2, vr3
003fa8  6a324202  vand.s.mz vr4{mr1}, r4, vr4
003fac  ea315102  vand.s.mz vr3{mr1}, r2, vr5
003fb0  6a300202  vand.s.mz vr0{mr1}, r4, vr0
003fb4  6a312e22  vor.s.mz vr2{mr1}, r28, vr2
003fb8  6a324e22  vor.s.mz vr4{mr1}, r28, vr4
003fbc  6a300e22  vor.s.mz vr0{mr1}, r28, vr0
003fc0  ea313e22  vor.s.mz vr3{mr1}, r28, vr3
003fc4  06110120  vfloat2fp16_l.rz vr2, vr2
003fc8  06500020  vfloat2fp16_h.rz vr0, vr0
003fcc  06d10120  vfloat2fp16_h.rz vr2, vr3
003fd0  06100220  vfloat2fp16_l.rz vr0, vr4
003fd4  eeb020a2  vsll.s.mz vr1{mr1}, vr1, vr2
003fd8  6ab00702  vand.s.mz vr0{mr1}, r15, vr0
003fdc  ea301802  vand.s.mz vr1{mr1}, r16, vr1
003fe0  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
003fe4  46800502  vstore.mz vr0{mr1}, 0(r11)
003fe8  9f858500  addli r11, r11, 64
003fec  bb7c0bfe  bneq r22, zero, -196
003ff0  1f0c8fd5  addli r24, r30, -5440
003ff4  6b560f00  load.d r[13:14], 0(r30)
003ff8  ab0500f0  lui r11, 983040
003ffc  6b5b0c00  load.d r[23:24], 0(r24)
004000  0b266611  add.ul r[13:14], r[13:14], r[23:24]
004004  630b0fd7  loadli.w r22,  -5248(r30)
004008  00a00000  mfence { lm }
00400c  9715bb00  or r11, r22, r11
004010  ff35e600  s_lm2gm r11, r14, 0(r[13:14])
004014  9f058fd4  addli r11, r30, -5568
004018  00a00200  mfence { lm, gm }
00401c  e34c1f00  loadli.w r25,  12(r30)
004020  c2910502  vload_mask16.mz vr3{mr1}, 0(r11)
004024  e3067fd4  loadli.w r13,  -5576(r30)
004028  63466fd4  loadli.w r12,  -5580(r30)
00402c  5b0effff  j -1936
004030  00360002  core_id r12
004034  63012f00  loadli.w r2,  16(r30)
004038  9b305600  slli r1, r12, 5
00403c  cb211100  ble.s r2, r1, 104
004040  80530102  load_param_i r7, 2
004044  2bc40000  lui r8, 12
004048  1f110000  addli r2, zero, 1
00404c  9f018fd7  addli r3, r30, -5184
004050  1f038000  addli r6, zero, 64
004054  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004058  9bb35300  slli r7, r7, 5
00405c  1f0404f0  addli r8, r8, -2048
004060  b3840028  zext_int2long r[10:11], r1
004064  ab0500f0  lui r11, 983040
004068  97b42402  sll.d r[10:11], r[10:11], r2
00406c  9715b300  or r11, r6, r11
004070  8b249210  add.ul r[10:11], r[5:6], r[10:11]
004074  ffa53400  l_gm2lm r11, r3, 0(r[10:11])
004078  9bb42000  slli r9, r1, 2
00407c  8b901310  add.s r1, r7, r1
004080  00a00200  mfence { lm, gm }
004084  c2800102  vload.mz vr1{mr1}, 0(r3)
004088  8b948410  add.s r9, r9, r8
00408c  1f858400  addli r10, r9, 64
004090  66411080  vmerge_l.hf vr2, vr0, vr1
004094  e64010a0  vmerge_h.hf vr1, vr0, vr1
004098  4e902402  vstores_mask16.mz vr2{mr1}, 0(r9)
00409c  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
0040a0  3f8ff0fe  blt.s r1, r15, -64
0040a4  abf00000  lui r1, 15
0040a8  63411f00  loadli.w r2,  12(r30)
0040ac  00a00300  mfence { lm, sm, gm }
0040b0  9b90f0ff  ori r1, r1, 4095
0040b4  80a10004  csr_set csr3, r1
0040b8  00d00100  sync_group
0040bc  4b6cc112  ble.s r2, r12, 10008
0040c0  e3002f00  loadli.w r1,  16(r30)
0040c4  63412f00  loadli.w r2,  20(r30)
0040c8  9f0d8fd7  addli r27, r30, -5184
0040cc  1f150000  addli r10, zero, 1
0040d0  9f787000  addli r17, zero, 63
0040d4  1f080002  addli r16, zero, 256
0040d8  ab09803f  lui r19, 260096
0040dc  ab05ffff  lui r11, 1048560
0040e0  2b0cc07f  lui r24, 523264
0040e4  2bed7f00  lui r26, 2046
0040e8  2bee0700  lui r28, 126
0040ec  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0040f0  8b912010  add.s r3, r1, r2
0040f4  33820008  fix2float.rn r4, r1
0040f8  9bb41000  slli r9, r1, 1
0040fc  9bb22000  slli r5, r1, 2
004100  9f804000  addli r1, r1, 32
004104  e7031fd4  storeli.w r1, -5576(r30)
004108  8b90b211  add.s r1, r5, r27
00410c  9ff1f1ff  addli r3, r3, -1
004110  e7434fd4  storeli.w r4, -5572(r30)
004114  0b922130  div.s r4, r3, r2
004118  9f8080ff  addli r1, r1, -64
00411c  8b91b411  add.s r3, r9, r27
004120  67431fd4  storeli.w r1, -5580(r30)
004124  9f8081ff  addli r1, r3, -64
004128  67031fd4  storeli.w r1, -5584(r30)
00412c  9b302100  slli r1, r2, 2
004130  67041fd6  storeli.w r1, -5312(r30)
004134  abf0ffff  lui r1, 1048575
004138  00a00000  mfence { lm }
00413c  67049fd4  storeli.w r9, -5568(r30)
004140  9b90f0ff  ori r1, r1, 4095
004144  670c1fd4  storeli.w r1, -5440(r30)
004148  ab700000  lui r1, 7
00414c  9b9af0ff  ori r21, r1, 4095
004150  ab00ff03  lui r1, 16368
004154  1b93f03f  ori r6, r1, 1023
004158  abf000fc  lui r1, 1032207
00415c  1b9400c0  ori r8, r1, 3072
004160  9f000fd7  addli r1, r30, -5248
004164  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
004168  db070000  j 60
00416c  9f016fd5  addli r3, r30, -5456
004170  eb500f00  load.d r[2:3], 0(r30)
004174  80520102  load_param_i r5, 2
004178  6bd60100  load.d r[13:14], 0(r3)
00417c  ab0100f0  lui r3, 983040
004180  00a00000  mfence { lm }
004184  97913400  or r3, r9, r3
004188  8ba0c010  add.ul r[2:3], r[2:3], r[13:14]
00418c  63067fd5  loadli.w r12,  -5448(r30)
004190  ffb1b001  s_lm2gm r3, r27, 0(r[2:3])
004194  0b96c210  add.s r12, r5, r12
004198  00a00200  mfence { lm, gm }
00419c  3f207600  blt.s r12, r7, 8
0041a0  dbc60400  j 9780
0041a4  e3001f00  loadli.w r1,  8(r30)
0041a8  9f027fd6  addli r5, r30, -5320
0041ac  8b101610  add.s r1, r12, r1
0041b0  8b90f020  mul.s r1, r1, r15
0041b4  b3900028  sext_int2long r[2:3], r1
0041b8  17bba002  sll.d r[23:24], r[2:3], r10
0041bc  6bd10200  load.d r[3:4], 0(r5)
0041c0  ab0000f0  lui r1, 983040
0041c4  9f026fd5  addli r5, r30, -5456
0041c8  97901400  or r1, r9, r1
0041cc  73b06201  store.d r[23:24], 0(r5)
0041d0  0b216111  add.ul r[3:4], r[3:4], r[23:24]
0041d4  1f0b4000  addli r22, zero, 32
0041d8  ff20b101  l_gm2lm r1, r27, 0(r[3:4])
0041dc  00a00200  mfence { lm, gm }
0041e0  bff06701  blt.s r15, r22, 60
0041e4  e3006fd4  loadli.w r1,  -5584(r30)
0041e8  63416fd4  loadli.w r2,  -5580(r30)
0041ec  e3017fd4  loadli.w r3,  -5576(r30)
0041f0  c2800002  vload.mz vr1{mr1}, 0(r1)
0041f4  9f81c1ff  addli r3, r3, -32
0041f8  9f0381ff  addli r7, r2, -64
0041fc  9f8080ff  addli r1, r1, -64
004200  93823804  setlt.u r5, r17, r3
004204  664110a0  vmerge_h.hf vr2, vr0, vr1
004208  e6401080  vmerge_l.hf vr1, vr0, vr1
00420c  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
004210  1f0101ff  addli r2, r2, -128
004214  46901302  vstore_mask16.mz vr1{mr1}, 0(r7)
004218  3bef02fe  bneq r5, zero, -40
00421c  00a00000  mfence { lm }
004220  e70bcfd4  storeli.w r12, -5448(r30)
004224  3f08a200  blt.s r4, r10, 512
004228  9f010000  addli r3, zero, 0
00422c  1f010000  addli r2, zero, 0
004230  9f020000  addli r5, zero, 0
004234  db0e0000  j 116
004238  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
00423c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004240  9f000001  addli r1, zero, 128
004244  9f920200  addli r5, r5, 1
004248  6a7108c0  vsrl.p vr2, r16, vr0
00424c  ea7118c0  vsrl.p vr3, r16, vr1
004250  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004254  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004258  6af100c0  vsrl.p vr2, r1, vr0
00425c  eaf110c0  vsrl.p vr3, r1, vr1
004260  9f008000  addli r1, zero, 64
004264  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004268  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00426c  6af100c0  vsrl.p vr2, r1, vr0
004270  eaf110c0  vsrl.p vr3, r1, vr1
004274  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004278  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00427c  6a710bc0  vsrl.p vr2, r22, vr0
004280  ea711bc0  vsrl.p vr3, r22, vr1
004284  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004288  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00428c  fa100040  vextracti.f r1, 0(vr0)
004290  fa930040  vextracti.f r7, 0(vr1)
004294  8be11110  add.f.rn r3, r3, r1
004298  9f000fd7  addli r1, r30, -5248
00429c  0b617110  add.f.rn r2, r2, r7
0042a0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0042a4  37a64200  beq r5, r4, 392
0042a8  9f830200  addli r7, r5, 0
0042ac  37400701  beq r14, r16, 16
0042b0  e3008fd5  loadli.w r1,  -5440(r30)
0042b4  97a01200  xor r1, r5, r1
0042b8  8b131210  add.s r7, r4, r1
0042bc  8b90e320  mul.s r1, r7, r14
0042c0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0042c4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0042c8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0042cc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0042d0  8b901718  sub.s r1, r15, r1
0042d4  8b90e040  min.s r1, r1, r14
0042d8  bf8da0fe  blt.s r1, r10, -160
0042dc  e3048fd6  loadli.w r9,  -5312(r30)
0042e0  abcc0000  lui r25, 12
0042e4  1f060000  addli r12, zero, 0
0042e8  1f0a8fd7  addli r20, r30, -5184
0042ec  9f8c0cf0  addli r25, r25, -2048
0042f0  8b967420  mul.s r13, r9, r7
0042f4  9f030fd7  addli r7, r30, -5248
0042f8  42920302  vload_mask16.mz vr4{mr1}, 0(r7)
0042fc  92304002  vadd.s.mz vr1{mr1}, zero, vr4
004300  12314002  vadd.s.mz vr2{mr1}, zero, vr4
004304  92314002  vadd.s.mz vr3{mr1}, zero, vr4
004308  8b93dc10  add.s r7, r25, r13
00430c  8b1dda10  add.s r27, r20, r13
004310  9f848300  addli r9, r7, 64
004314  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
004318  9f888301  addli r17, r7, 192
00431c  c2940d02  vload_mask16.mz vr9{mr1}, 0(r27)
004320  1f898d01  addli r18, r27, 192
004324  4a930402  vloads_mask16.mz vr6{mr1}, 0(r9)
004328  9f840301  addli r9, r7, 128
00432c  4a940802  vloads_mask16.mz vr8{mr1}, 0(r17)
004330  9f880d01  addli r17, r27, 128
004334  42100902  vload_mask16.mz vr0{mr1}, 0(r18)
004338  ca930402  vloads_mask16.mz vr7{mr1}, 0(r9)
00433c  c2950802  vload_mask16.mz vr11{mr1}, 0(r17)
004340  9f848d00  addli r9, r27, 64
004344  42950402  vload_mask16.mz vr10{mr1}, 0(r9)
004348  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00434c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
004350  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
004354  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
004358  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00435c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004360  46905d02  vstore_mask16.mz vr5{mr1}, 0(r27)
004364  46906402  vstore_mask16.mz vr6{mr1}, 0(r9)
004368  9f048600  addli r9, r12, 64
00436c  46100902  vstore_mask16.mz vr0{mr1}, 0(r18)
004370  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004374  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004378  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
00437c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004380  46907802  vstore_mask16.mz vr7{mr1}, 0(r17)
004384  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
004388  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00438c  cbba90fe  ble.s r1, r9, -340
004390  9f880302  addli r17, r7, 256
004394  1f898302  addli r18, r7, 320
004398  9f840d02  addli r9, r27, 256
00439c  1f060601  addli r12, r12, 128
0043a0  9f8c0c04  addli r25, r25, 512
0043a4  1f0a0a04  addli r20, r20, 512
0043a8  4a900802  vloads_mask16.mz vr0{mr1}, 0(r17)
0043ac  9f880303  addli r17, r7, 384
0043b0  9f838303  addli r7, r7, 448
0043b4  ca120902  vloads_mask16.mz vr5{mr1}, 0(r18)
0043b8  42930402  vload_mask16.mz vr6{mr1}, 0(r9)
0043bc  1f898d03  addli r18, r27, 448
0043c0  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
0043c4  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
0043c8  9f830d03  addli r7, r27, 384
0043cc  9f888d02  addli r17, r27, 320
0043d0  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
0043d4  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
0043d8  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0043dc  42130902  vload_mask16.mz vr6{mr1}, 0(r18)
0043e0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0043e4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0043e8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0043ec  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0043f0  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
0043f4  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
0043f8  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0043fc  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004400  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004404  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
004408  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00440c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004410  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
004414  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004418  46106902  vstore_mask16.mz vr6{mr1}, 0(r18)
00441c  bf3b16fe  blt.s r12, r1, -276
004420  5bc3ffff  j -488
004424  1f010000  addli r2, zero, 0
004428  9f010000  addli r3, zero, 0
00442c  00a00000  mfence { lm }
004430  3fd2a700  blt.s r15, r10, 148
004434  e3407fd4  loadli.w r1,  -5572(r30)
004438  9f020000  addli r5, zero, 0
00443c  8f811118  div.f.rn r3, r3, r1
004440  8f001118  div.f.rn r1, r2, r1
004444  0be13120  mul.f.rn r2, r3, r3
004448  8be02018  sub.f.rn r1, r1, r2
00444c  63013f00  loadli.w r2,  24(r30)
004450  8be02010  add.f.rn r1, r1, r2
004454  0be10158  neg.f r2, r3
004458  9f018fd7  addli r3, r30, -5184
00445c  8f800008  sqrt.f.rn r1, r1
004460  8f801918  div.f.rn r1, r19, r1
004464  9f838100  addli r7, r3, 64
004468  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00446c  1f864200  addli r12, r5, 32
004470  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
004474  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
004478  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
00447c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004480  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
004484  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
004488  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
00448c  cbe0c700  ble.s r15, r12, 56
004490  9f830101  addli r7, r3, 128
004494  1f868101  addli r12, r3, 192
004498  9f828200  addli r5, r5, 64
00449c  9f810102  addli r3, r3, 256
0044a0  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
0044a4  42110602  vload_mask16.mz vr2{mr1}, 0(r12)
0044a8  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0044ac  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
0044b0  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0044b4  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
0044b8  46901302  vstore_mask16.mz vr1{mr1}, 0(r7)
0044bc  46102602  vstore_mask16.mz vr2{mr1}, 0(r12)
0044c0  bf9ef2fe  blt.s r5, r15, -92
0044c4  00a00000  mfence { lm }
0044c8  e3431f00  loadli.w r7,  12(r30)
0044cc  9f0d8fd7  addli r27, r30, -5184
0044d0  9f787000  addli r17, zero, 63
0044d4  1f062000  addli r12, zero, 16
0044d8  1f390000  addli r18, zero, 3
0044dc  1f5a1000  addli r20, zero, 13
0044e0  9f2c1000  addli r25, zero, 10
0044e4  ab06807f  lui r13, 522240
0044e8  e3048fd4  loadli.w r9,  -5568(r30)
0044ec  3f82a7fe  blt.s r15, r10, -896
0044f0  9f008fd7  addli r1, r30, -5184
0044f4  1f018fd7  addli r2, r30, -5184
0044f8  9f010000  addli r3, zero, 0
0044fc  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
004500  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004504  9f028100  addli r5, r2, 64
004508  9f814100  addli r3, r3, 32
00450c  1f010101  addli r2, r2, 128
004510  6a221622  vor.u.mz vr4{mr1}, r12, vr1
004514  6a231a22  vor.u.mz vr6{mr1}, r20, vr1
004518  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
00451c  ee3232c2  vsrl.s.mz vr5{mr1}, vr4, vr3
004520  6e3222c2  vsrl.s.mz vr4{mr1}, vr4, vr2
004524  ea325502  vand.s.mz vr5{mr1}, r10, vr5
004528  6a324502  vand.s.mz vr4{mr1}, r10, vr4
00452c  96b25102  vadd.s.mz vr5{mr1}, vr3, vr5
004530  e69101c0  vabs.f vr3, vr3
004534  16324102  vadd.s.mz vr4{mr1}, vr2, vr4
004538  661101c0  vabs.f vr2, vr2
00453c  92b25a02  vadd.s.mz vr5{mr1}, r21, vr5
004540  72a13642  vlt.u.mz mr2{mr1}, r13, vr3
004544  12b24a02  vadd.s.mz vr4{mr1}, r21, vr4
004548  eab25502  vand.s.mz vr5{mr1}, r11, vr5
00454c  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
004550  ea221c34  vor.u.mh vr5{mr2}, r24, vr1
004554  72a12642  vlt.u.mz mr2{mr1}, r13, vr2
004558  6a211922  vor.u.mz vr2{mr1}, r18, vr1
00455c  6a221c34  vor.u.mh vr4{mr2}, r24, vr1
004560  eaa01c22  vor.u.mz vr1{mr1}, r25, vr1
004564  ee3153c2  vsrl.s.mz vr3{mr1}, vr6, vr5
004568  ee3251c2  vsrl.s.mz vr5{mr1}, vr2, vr5
00456c  6e3141c2  vsrl.s.mz vr2{mr1}, vr2, vr4
004570  6e3343c2  vsrl.s.mz vr6{mr1}, vr6, vr4
004574  ea313e02  vand.s.mz vr3{mr1}, r28, vr3
004578  ea325d02  vand.s.mz vr5{mr1}, r26, vr5
00457c  6a326e02  vand.s.mz vr4{mr1}, r28, vr6
004580  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
004584  eab13922  vor.s.mz vr3{mr1}, r19, vr3
004588  eab25922  vor.s.mz vr5{mr1}, r19, vr5
00458c  6ab12922  vor.s.mz vr2{mr1}, r19, vr2
004590  6ab24922  vor.s.mz vr4{mr1}, r19, vr4
004594  86910120  vfloat2fp16_l.rz vr3, vr3
004598  06510120  vfloat2fp16_h.rz vr2, vr2
00459c  86510220  vfloat2fp16_h.rz vr3, vr4
0045a0  06910220  vfloat2fp16_l.rz vr2, vr5
0045a4  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
0045a8  6a312302  vand.s.mz vr2{mr1}, r6, vr2
0045ac  ea301402  vand.s.mz vr1{mr1}, r8, vr1
0045b0  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
0045b4  46801002  vstore.mz vr1{mr1}, 0(r1)
0045b8  9f808000  addli r1, r1, 64
0045bc  3f8df1fe  blt.s r3, r15, -192
0045c0  db75ffff  j -1108
0045c4  2b330100  lui r6, 19
0045c8  80390002  core_id r19
0045cc  80500102  load_param_i r1, 2
0045d0  1f110000  addli r2, zero, 1
0045d4  9f038fd7  addli r7, r30, -5184
0045d8  1f048000  addli r8, zero, 64
0045dc  1f050010  addli r10, zero, 2048
0045e0  9bb15900  slli r3, r19, 5
0045e4  9bb45000  slli r9, r1, 5
0045e8  1f0303f8  addli r6, r6, -1024
0045ec  b3850128  zext_int2long r[12:13], r3
0045f0  ab0600f0  lui r13, 983040
0045f4  97b52502  sll.d r[12:13], r[12:13], r2
0045f8  9716d400  or r13, r8, r13
0045fc  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
004600  ffa67500  l_gm2lm r13, r7, 0(r[12:13])
004604  9bb52100  slli r11, r3, 2
004608  8b913410  add.s r3, r9, r3
00460c  00a00200  mfence { lm, gm }
004610  42800302  vload.mz vr0{mr1}, 0(r7)
004614  1386a104  setlt.u r12, r3, r10
004618  8b956510  add.s r11, r11, r6
00461c  9f868500  addli r13, r11, 64
004620  86300000  vfp162float_l.rn vr1, vr0
004624  06700000  vfp162float_h.rn vr0, vr0
004628  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
00462c  4e900602  vstores_mask16.mz vr0{mr1}, 0(r13)
004630  bb7e06fe  bneq r12, zero, -68
004634  2bf10000  lui r2, 15
004638  00a00300  mfence { lm, sm, gm }
00463c  1f020006  addli r4, zero, 768
004640  9b11f1ff  ori r3, r2, 4095
004644  1b811900  andi r2, r19, 1
004648  80a10104  csr_set csr3, r3
00464c  9f010006  addli r3, zero, 768
004650  00d00100  sync_group
004654  67082fd6  storeli.w r2, -5248(r30)
004658  37200100  beq r2, zero, 8
00465c  9f01000a  addli r3, zero, 1280
004660  e3421f00  loadli.w r5,  12(r30)
004664  1f110000  addli r2, zero, 1
004668  bfb52210  blt.s r5, r2, 8556
00466c  1bc41000  srli r8, r1, 1
004670  9bb02100  slli r1, r3, 2
004674  9f058fd7  addli r11, r30, -5184
004678  63010fd7  loadli.w r2,  -5248(r30)
00467c  1bb51100  slli r10, r3, 1
004680  ab5b0100  lui r23, 21
004684  2b5e0100  lui r28, 21
004688  9f020000  addli r5, zero, 0
00468c  9bc41900  srli r9, r19, 1
004690  9f777000  addli r15, zero, 63
004694  1f090005  addli r18, zero, 640
004698  1f0a0001  addli r20, zero, 128
00469c  9f0a8000  addli r21, zero, 64
0046a0  1f0b4000  addli r22, zero, 32
0046a4  9f0d0003  addli r27, zero, 384
0046a8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0046ac  8b90b010  add.s r1, r1, r11
0046b0  9f8b0bf8  addli r23, r23, -1024
0046b4  1f0e0efc  addli r28, r28, -512
0046b8  0b114120  mul.s r2, r2, r4
0046bc  0b12b510  add.s r4, r10, r11
0046c0  9f8080ff  addli r1, r1, -64
0046c4  67042fd6  storeli.w r2, -5312(r30)
0046c8  1f814100  addli r2, r3, 32
0046cc  e70b1fd4  storeli.w r1, -5448(r30)
0046d0  9f0082ff  addli r1, r4, -64
0046d4  670c2fd4  storeli.w r2, -5440(r30)
0046d8  1f018fd4  addli r2, r30, -5568
0046dc  670b1fd4  storeli.w r1, -5456(r30)
0046e0  abf0ffff  lui r1, 1048575
0046e4  00a00000  mfence { lm }
0046e8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0046ec  9b9000f8  ori r1, r1, 3968
0046f0  e7431fd4  storeli.w r1, -5572(r30)
0046f4  abf00000  lui r1, 15
0046f8  1b9cf0ff  ori r24, r1, 4095
0046fc  db030000  j 28
004700  00a00300  mfence { lm, sm, gm }
004704  80210c04  csr_set csr3, r24
004708  00d00100  sync_group
00470c  8b928210  add.s r5, r5, r8
004710  3fa09201  blt.s r5, r25, 8
004714  5bb2f8ff  j -14960
004718  8b909210  add.s r1, r5, r9
00471c  cb9f1cfe  ble.s r25, r1, -28
004720  63011f00  loadli.w r2,  8(r30)
004724  0b828230  div.u r4, r5, r8
004728  8b902010  add.s r1, r1, r2
00472c  63018fd6  loadli.w r2,  -5312(r30)
004730  9bb0b000  slli r1, r1, 11
004734  1b326200  slli r4, r4, 6
004738  97902000  or r1, r1, r2
00473c  1f110000  addli r2, zero, 1
004740  1b020204  andi r4, r4, 64
004744  33960028  sext_int2long r[13:14], r1
004748  ab0000f0  lui r1, 983040
00474c  171d3201  or r26, r4, r19
004750  17382602  sll.d r[17:18], r[13:14], r2
004754  1f017fd6  addli r2, r30, -5320
004758  97101500  or r1, r10, r1
00475c  6b560100  load.d r[13:14], 0(r2)
004760  0b260611  add.ul r[13:14], r[13:14], r[17:18]
004764  ff20b600  l_gm2lm r1, r11, 0(r[13:14])
004768  00a00200  mfence { lm, gm }
00476c  e3006fd5  loadli.w r1,  -5456(r30)
004770  63027fd5  loadli.w r4,  -5448(r30)
004774  e3038fd5  loadli.w r7,  -5440(r30)
004778  c2800002  vload.mz vr1{mr1}, 0(r1)
00477c  9f83c3ff  addli r7, r7, -32
004780  9f0682ff  addli r13, r4, -64
004784  9f8080ff  addli r1, r1, -64
004788  13867704  setlt.u r12, r15, r7
00478c  06f10000  vfp162float_h.rn vr2, vr1
004790  86b00000  vfp162float_l.rn vr1, vr1
004794  46102202  vstore_mask16.mz vr2{mr1}, 0(r4)
004798  1f0202ff  addli r4, r4, -128
00479c  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
0047a0  3b6f06fe  bneq r12, zero, -40
0047a4  00a00000  mfence { lm }
0047a8  e3000fd7  loadli.w r1,  -5248(r30)
0047ac  3ba60000  bneq r1, zero, 392
0047b0  1f018fd4  addli r2, r30, -5568
0047b4  63427fd4  loadli.w r4,  -5572(r30)
0047b8  9f000000  addli r1, zero, 0
0047bc  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
0047c0  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0047c4  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0047c8  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0047cc  0b966010  add.s r12, r1, r6
0047d0  8b931510  add.s r7, r11, r1
0047d4  1f020201  addli r4, r4, 128
0047d8  9f800004  addli r1, r1, 512
0047dc  1f010601  addli r2, r12, 128
0047e0  4a100602  vloads_mask16.mz vr0{mr1}, 0(r12)
0047e4  9f068600  addli r13, r12, 64
0047e8  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
0047ec  1f878301  addli r14, r7, 192
0047f0  ca120102  vloads_mask16.mz vr5{mr1}, 0(r2)
0047f4  1f018601  addli r2, r12, 192
0047f8  4a930602  vloads_mask16.mz vr6{mr1}, 0(r13)
0047fc  9f868300  addli r13, r7, 64
004800  c2150702  vload_mask16.mz vr11{mr1}, 0(r14)
004804  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
004808  1f810301  addli r2, r7, 128
00480c  42950602  vload_mask16.mz vr10{mr1}, 0(r13)
004810  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
004814  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004818  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00481c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004820  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004824  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004828  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
00482c  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
004830  1f010602  addli r2, r12, 256
004834  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004838  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00483c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004840  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
004844  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
004848  1f018602  addli r2, r12, 320
00484c  46106702  vstore_mask16.mz vr6{mr1}, 0(r14)
004850  1f870302  addli r14, r7, 256
004854  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004858  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00485c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004860  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
004864  1f010603  addli r2, r12, 384
004868  c2130702  vload_mask16.mz vr7{mr1}, 0(r14)
00486c  1f068603  addli r12, r12, 448
004870  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004874  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
004878  1f818302  addli r2, r7, 320
00487c  4a150602  vloads_mask16.mz vr10{mr1}, 0(r12)
004880  1f860303  addli r12, r7, 384
004884  9f838303  addli r7, r7, 448
004888  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
00488c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004890  c2130602  vload_mask16.mz vr7{mr1}, 0(r12)
004894  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004898  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
00489c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0048a0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0048a4  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
0048a8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0048ac  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
0048b0  13012205  setlt.u r2, r4, r18
0048b4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0048b8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0048bc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0048c0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0048c4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0048c8  46105602  vstore_mask16.mz vr5{mr1}, 0(r12)
0048cc  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
0048d0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0048d4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0048d8  bb5b01fe  bneq r2, zero, -268
0048dc  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0048e0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0048e4  9f000002  addli r1, zero, 256
0048e8  6af100c0  vsrl.p vr2, r1, vr0
0048ec  eaf110c0  vsrl.p vr3, r1, vr1
0048f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0048f4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0048f8  6a710ac0  vsrl.p vr2, r20, vr0
0048fc  ea711ac0  vsrl.p vr3, r20, vr1
004900  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004904  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004908  6af10ac0  vsrl.p vr2, r21, vr0
00490c  eaf11ac0  vsrl.p vr3, r21, vr1
004910  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004914  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004918  6a710bc0  vsrl.p vr2, r22, vr0
00491c  ea711bc0  vsrl.p vr3, r22, vr1
004920  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004924  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004928  7a120040  vextracti.f r4, 0(vr0)
00492c  fa900040  vextracti.f r1, 0(vr1)
004930  5b640000  j 800
004934  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004938  2bf1ffff  lui r2, 1048575
00493c  9f000000  addli r1, zero, 0
004940  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004944  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004948  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00494c  1b1201f8  ori r4, r2, 3968
004950  0b161310  add.s r12, r6, r1
004954  8b931510  add.s r7, r11, r1
004958  1f020201  addli r4, r4, 128
00495c  9f800004  addli r1, r1, 512
004960  1f070631  addli r14, r12, 6272
004964  9f060630  addli r13, r12, 6144
004968  1f018631  addli r2, r12, 6336
00496c  9f8c0318  addli r25, r7, 3072
004970  ca130702  vloads_mask16.mz vr7{mr1}, 0(r14)
004974  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
004978  9f068630  addli r13, r12, 6208
00497c  ca140102  vloads_mask16.mz vr9{mr1}, 0(r2)
004980  1f818318  addli r2, r7, 3136
004984  1f878319  addli r14, r7, 3264
004988  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
00498c  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
004990  9f860319  addli r13, r7, 3200
004994  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
004998  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
00499c  42950602  vload_mask16.mz vr10{mr1}, 0(r13)
0049a0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0049a4  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0049a8  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0049ac  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0049b0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0049b4  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0049b8  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
0049bc  9f060632  addli r13, r12, 6400
0049c0  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0049c4  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
0049c8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0049cc  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
0049d0  1f87031a  addli r14, r7, 3328
0049d4  c2130702  vload_mask16.mz vr7{mr1}, 0(r14)
0049d8  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
0049dc  1f81031b  addli r2, r7, 3456
0049e0  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0049e4  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0049e8  4a900602  vloads_mask16.mz vr0{mr1}, 0(r13)
0049ec  9f068632  addli r13, r12, 6464
0049f0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0049f4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0049f8  4a930602  vloads_mask16.mz vr6{mr1}, 0(r13)
0049fc  9f060633  addli r13, r12, 6528
004a00  1f068633  addli r12, r12, 6592
004a04  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
004a08  9f86831a  addli r13, r7, 3392
004a0c  4a150602  vloads_mask16.mz vr10{mr1}, 0(r12)
004a10  9f83831b  addli r7, r7, 3520
004a14  1306b205  setlt.u r12, r4, r27
004a18  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
004a1c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004a20  c2130102  vload_mask16.mz vr7{mr1}, 0(r2)
004a24  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004a28  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
004a2c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004a30  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004a34  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
004a38  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004a3c  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
004a40  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004a44  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004a48  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004a4c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004a50  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004a54  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
004a58  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
004a5c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004a60  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004a64  bb3b06fe  bneq r12, zero, -276
004a68  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004a6c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004a70  9f000002  addli r1, zero, 256
004a74  2bf1ffff  lui r2, 1048575
004a78  9f030000  addli r7, zero, 0
004a7c  9b1c01f8  ori r25, r2, 3968
004a80  eaf110c0  vsrl.p vr3, r1, vr1
004a84  6af100c0  vsrl.p vr2, r1, vr0
004a88  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004a8c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004a90  ea711ac0  vsrl.p vr3, r20, vr1
004a94  6a710ac0  vsrl.p vr2, r20, vr0
004a98  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004a9c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004aa0  eaf11ac0  vsrl.p vr3, r21, vr1
004aa4  6af10ac0  vsrl.p vr2, r21, vr0
004aa8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004aac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004ab0  ea711bc0  vsrl.p vr3, r22, vr1
004ab4  6a710bc0  vsrl.p vr2, r22, vr0
004ab8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004abc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004ac0  fa900040  vextracti.f r1, 0(vr1)
004ac4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004ac8  7a120040  vextracti.f r4, 0(vr0)
004acc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004ad0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004ad4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004ad8  8b167310  add.s r13, r6, r7
004adc  0b967510  add.s r12, r11, r7
004ae0  9f8c0c01  addli r25, r25, 128
004ae4  9f830304  addli r7, r7, 512
004ae8  1f810618  addli r2, r13, 3072
004aec  1f870619  addli r14, r13, 3200
004af0  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
004af4  9f098601  addli r19, r12, 192
004af8  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
004afc  ca120702  vloads_mask16.mz vr5{mr1}, 0(r14)
004b00  1f818618  addli r2, r13, 3136
004b04  1f878619  addli r14, r13, 3264
004b08  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
004b0c  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
004b10  1f010601  addli r2, r12, 128
004b14  ca130702  vloads_mask16.mz vr7{mr1}, 0(r14)
004b18  1f078600  addli r14, r12, 64
004b1c  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
004b20  42150702  vload_mask16.mz vr10{mr1}, 0(r14)
004b24  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004b28  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004b2c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004b30  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004b34  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
004b38  1f81061a  addli r2, r13, 3328
004b3c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004b40  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004b44  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004b48  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004b4c  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
004b50  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
004b54  1f81861a  addli r2, r13, 3392
004b58  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
004b5c  9f090602  addli r19, r12, 256
004b60  46105702  vstore_mask16.mz vr5{mr1}, 0(r14)
004b64  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004b68  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004b6c  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
004b70  1f81061b  addli r2, r13, 3456
004b74  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
004b78  9f86861b  addli r13, r13, 3520
004b7c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004b80  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004b84  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
004b88  1f018602  addli r2, r12, 320
004b8c  4a950602  vloads_mask16.mz vr10{mr1}, 0(r13)
004b90  9f060603  addli r13, r12, 384
004b94  1f068603  addli r12, r12, 448
004b98  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
004b9c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004ba0  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
004ba4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004ba8  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
004bac  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004bb0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004bb4  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
004bb8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
004bbc  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
004bc0  13812c05  setlt.u r2, r25, r18
004bc4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004bc8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004bcc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004bd0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004bd4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004bd8  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
004bdc  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
004be0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004be4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004be8  bb4b01fe  bneq r2, zero, -272
004bec  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004bf0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004bf4  1f010002  addli r2, zero, 256
004bf8  e34c1f00  loadli.w r25,  12(r30)
004bfc  80390002  core_id r19
004c00  6a7101c0  vsrl.p vr2, r2, vr0
004c04  ea7111c0  vsrl.p vr3, r2, vr1
004c08  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004c0c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004c10  6a710ac0  vsrl.p vr2, r20, vr0
004c14  ea711ac0  vsrl.p vr3, r20, vr1
004c18  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004c1c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004c20  6af10ac0  vsrl.p vr2, r21, vr0
004c24  eaf11ac0  vsrl.p vr3, r21, vr1
004c28  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004c2c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004c30  6a710bc0  vsrl.p vr2, r22, vr0
004c34  ea711bc0  vsrl.p vr3, r22, vr1
004c38  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004c3c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004c40  7a110040  vextracti.f r2, 0(vr0)
004c44  fa930040  vextracti.f r7, 0(vr1)
004c48  0b622210  add.f.rn r4, r4, r2
004c4c  8be07010  add.f.rn r1, r1, r7
004c50  1b312d00  slli r2, r26, 2
004c54  0b16c111  add.s r12, r2, r28
004c58  8b137111  add.s r7, r2, r23
004c5c  1b114100  ori r2, r2, 4
004c60  73601600  stores.w r1, 0(r12)
004c64  9b00ed07  andi r1, r26, 126
004c68  73e04300  stores.w r4, 0(r7)
004c6c  0b127111  add.s r4, r2, r23
004c70  0b11c111  add.s r2, r2, r28
004c74  1f060000  addli r12, zero, 0
004c78  00a00300  mfence { lm, sm, gm }
004c7c  80210c04  csr_set csr3, r24
004c80  00d00100  sync_group
004c84  9bb02000  slli r1, r1, 2
004c88  6f420200  loads.w r4, 0(r4)
004c8c  6f410100  loads.w r2, 0(r2)
004c90  8b937011  add.s r7, r1, r23
004c94  8b90c011  add.s r1, r1, r28
004c98  efc30300  loads.w r7, 0(r7)
004c9c  efc00000  loads.w r1, 0(r1)
004ca0  0b627210  add.f.rn r4, r4, r7
004ca4  ab03003a  lui r7, 237568
004ca8  8b601110  add.f.rn r1, r2, r1
004cac  0b617220  mul.f.rn r2, r4, r7
004cb0  8be07020  mul.f.rn r1, r1, r7
004cb4  9f038fd7  addli r7, r30, -5184
004cb8  0b622120  mul.f.rn r4, r2, r2
004cbc  8be04018  sub.f.rn r1, r1, r4
004cc0  63023f00  loadli.w r4,  24(r30)
004cc4  8be04010  add.f.rn r1, r1, r4
004cc8  2b02803f  lui r4, 260096
004ccc  8f800008  sqrt.f.rn r1, r1
004cd0  8f001218  div.f.rn r1, r4, r1
004cd4  0b620158  neg.f r4, r2
004cd8  1f818300  addli r2, r7, 64
004cdc  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
004ce0  9f064600  addli r13, r12, 32
004ce4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004ce8  9386d106  setle.u r13, r3, r13
004cec  12100202  vadd.f.mz.rn vr0{mr1}, r4, vr0
004cf0  92101202  vadd.f.mz.rn vr1{mr1}, r4, vr1
004cf4  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
004cf8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004cfc  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
004d00  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
004d04  bbf00600  bneq r13, zero, 60
004d08  1f810301  addli r2, r7, 128
004d0c  9f868301  addli r13, r7, 192
004d10  1f068600  addli r12, r12, 64
004d14  9f830302  addli r7, r7, 256
004d18  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
004d1c  c2900602  vload_mask16.mz vr1{mr1}, 0(r13)
004d20  13073604  setlt.u r14, r12, r3
004d24  12100202  vadd.f.mz.rn vr0{mr1}, r4, vr0
004d28  92101202  vadd.f.mz.rn vr1{mr1}, r4, vr1
004d2c  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
004d30  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
004d34  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004d38  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
004d3c  3b7e07fe  bneq r14, zero, -100
004d40  9f008fd7  addli r1, r30, -5184
004d44  1f028fd7  addli r4, r30, -5184
004d48  9f030000  addli r7, zero, 0
004d4c  00a00000  mfence { lm }
004d50  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
004d54  1f018200  addli r2, r4, 64
004d58  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
004d5c  9f834300  addli r7, r7, 32
004d60  1f020201  addli r4, r4, 128
004d64  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004d68  13813304  setlt.u r2, r7, r3
004d6c  06110000  vfloat2fp16_l.rn vr2, vr0
004d70  06d10000  vfloat2fp16_h.rn vr2, vr1
004d74  46802002  vstore.mz vr2{mr1}, 0(r1)
004d78  9f808000  addli r1, r1, 64
004d7c  3b5f01fe  bneq r2, zero, -44
004d80  6b560f00  load.d r[13:14], 0(r30)
004d84  ab0000f0  lui r1, 983040
004d88  00a00000  mfence { lm }
004d8c  97101500  or r1, r10, r1
004d90  0b260611  add.ul r[13:14], r[13:14], r[17:18]
004d94  ff30b600  s_lm2gm r1, r11, 0(r[13:14])
004d98  00a00200  mfence { lm, gm }
004d9c  5b2effff  j -1680
004da0  80300002  core_id r1
004da4  e3012f00  loadli.w r3,  16(r30)
004da8  1bb15000  slli r2, r1, 5
004dac  cb912100  ble.s r3, r2, 100
004db0  00540102  load_param_i r8, 2
004db4  ab840100  lui r9, 24
004db8  9f110000  addli r3, zero, 1
004dbc  1f038fd7  addli r6, r30, -5184
004dc0  9f038000  addli r7, zero, 64
004dc4  1b345400  slli r8, r8, 5
004dc8  9f840400  addli r9, r9, 0
004dcc  33050128  zext_int2long r[11:12], r2
004dd0  2b0600f0  lui r12, 983040
004dd4  17353502  sll.d r[11:12], r[11:12], r3
004dd8  1796c300  or r12, r7, r12
004ddc  0b25a210  add.ul r[11:12], r[5:6], r[11:12]
004de0  7f266500  l_gm2lm r12, r6, 0(r[11:12])
004de4  1b352100  slli r10, r2, 2
004de8  0b112410  add.s r2, r8, r2
004dec  00a00200  mfence { lm, gm }
004df0  42000302  vload.mz vr0{mr1}, 0(r6)
004df4  0b159510  add.s r10, r10, r9
004df8  9f058500  addli r11, r10, 64
004dfc  86300000  vfp162float_l.rn vr1, vr0
004e00  06700000  vfp162float_h.rn vr0, vr0
004e04  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
004e08  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
004e0c  3f0ff1fe  blt.s r2, r15, -64
004e10  2bf10000  lui r2, 15
004e14  e3411f00  loadli.w r3,  12(r30)
004e18  00a00300  mfence { lm, sm, gm }
004e1c  1b11f1ff  ori r2, r2, 4095
004e20  80210104  csr_set csr3, r2
004e24  00d00100  sync_group
004e28  cbb6110c  ble.s r3, r1, 6572
004e2c  63032f00  loadli.w r6,  16(r30)
004e30  e3432f00  loadli.w r7,  20(r30)
004e34  9f0b8fd7  addli r23, r30, -5184
004e38  1f150000  addli r10, zero, 1
004e3c  9f054000  addli r11, zero, 32
004e40  1f767000  addli r12, zero, 63
004e44  1f080002  addli r16, zero, 256
004e48  9f080001  addli r17, zero, 128
004e4c  1f098000  addli r18, zero, 64
004e50  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004e54  0b127310  add.s r4, r6, r7
004e58  33010308  fix2float.rn r2, r6
004e5c  1b342300  slli r8, r6, 2
004e60  9b321300  slli r5, r6, 1
004e64  9bb42300  slli r9, r7, 2
004e68  1f72f2ff  addli r4, r4, -1
004e6c  670c2fd4  storeli.w r2, -5440(r30)
004e70  1f014300  addli r2, r6, 32
004e74  0b137411  add.s r6, r8, r23
004e78  0b947211  add.s r8, r5, r23
004e7c  e70b2fd4  storeli.w r2, -5448(r30)
004e80  1f0183ff  addli r2, r6, -64
004e84  2bf3ffff  lui r6, 1048575
004e88  0b127230  div.s r4, r4, r7
004e8c  670b2fd4  storeli.w r2, -5456(r30)
004e90  1f0184ff  addli r2, r8, -64
004e94  9b16f3ff  ori r13, r6, 4095
004e98  2b830100  lui r6, 24
004e9c  67042fd4  storeli.w r2, -5568(r30)
004ea0  1f010fd7  addli r2, r30, -5248
004ea4  1f030300  addli r6, r6, 0
004ea8  00a00000  mfence { lm }
004eac  67045fd6  storeli.w r5, -5312(r30)
004eb0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004eb4  db060000  j 52
004eb8  eb530f00  load.d r[8:9], 0(r30)
004ebc  ab0900f0  lui r19, 983040
004ec0  9f0b8fd7  addli r23, r30, -5184
004ec4  005a0102  load_param_i r20, 2
004ec8  00a00000  mfence { lm }
004ecc  97993201  or r19, r5, r19
004ed0  8b101a10  add.s r1, r20, r1
004ed4  8ba35311  add.ul r[8:9], r[8:9], r[22:23]
004ed8  ffb97301  s_lm2gm r19, r23, 0(r[8:9])
004edc  00a00200  mfence { lm, gm }
004ee0  3fa02000  blt.s r1, r2, 8
004ee4  5b1e0300  j 6384
004ee8  63011f00  loadli.w r2,  8(r30)
004eec  8b932010  add.s r7, r1, r2
004ef0  8b93f320  mul.s r7, r7, r15
004ef4  b3930328  sext_int2long r[8:9], r7
004ef8  97baa302  sll.d r[22:23], r[8:9], r10
004efc  1f047fd6  addli r8, r30, -5320
004f00  ab0300f0  lui r7, 983040
004f04  6b510400  load.d r[3:4], 0(r8)
004f08  97937200  or r7, r5, r7
004f0c  8b295111  add.ul r[20:21], r[3:4], r[22:23]
004f10  ffa37901  l_gm2lm r7, r23, 0(r[20:21])
004f14  00a00200  mfence { lm, gm }
004f18  bff0b700  blt.s r15, r11, 60
004f1c  e3038fd4  loadli.w r7,  -5568(r30)
004f20  63046fd5  loadli.w r8,  -5456(r30)
004f24  e3097fd5  loadli.w r19,  -5448(r30)
004f28  c2800302  vload.mz vr1{mr1}, 0(r7)
004f2c  9f89c9ff  addli r19, r19, -32
004f30  9f0b84ff  addli r23, r8, -64
004f34  9f8383ff  addli r7, r7, -64
004f38  130a3605  setlt.u r20, r12, r19
004f3c  06f10000  vfp162float_h.rn vr2, vr1
004f40  86b00000  vfp162float_l.rn vr1, vr1
004f44  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
004f48  1f0404ff  addli r8, r8, -128
004f4c  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
004f50  3b6f0afe  bneq r20, zero, -40
004f54  00a00000  mfence { lm }
004f58  bf17a200  blt.s r4, r10, 484
004f5c  1f0c0000  addli r24, zero, 0
004f60  9f0b0000  addli r23, zero, 0
004f64  9f0c0000  addli r25, zero, 0
004f68  db0c0000  j 100
004f6c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004f70  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004f74  9f9c0c00  addli r25, r25, 1
004f78  6a7108c0  vsrl.p vr2, r16, vr0
004f7c  ea7118c0  vsrl.p vr3, r16, vr1
004f80  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f84  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f88  6af108c0  vsrl.p vr2, r17, vr0
004f8c  eaf118c0  vsrl.p vr3, r17, vr1
004f90  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f94  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f98  6a7109c0  vsrl.p vr2, r18, vr0
004f9c  ea7119c0  vsrl.p vr3, r18, vr1
004fa0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004fa4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004fa8  6af105c0  vsrl.p vr2, r11, vr0
004fac  eaf115c0  vsrl.p vr3, r11, vr1
004fb0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004fb4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004fb8  7a110040  vextracti.f r2, 0(vr0)
004fbc  fa910040  vextracti.f r3, 0(vr1)
004fc0  0b6c2c10  add.f.rn r24, r24, r2
004fc4  8beb3b10  add.f.rn r23, r23, r3
004fc8  b7f54c00  beq r25, r4, 380
004fcc  9f830c00  addli r7, r25, 0
004fd0  37300701  beq r14, r16, 12
004fd4  97a3dc00  xor r7, r25, r13
004fd8  8b137210  add.s r7, r4, r7
004fdc  1f010fd7  addli r2, r30, -5248
004fe0  0b94e320  mul.s r8, r7, r14
004fe4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004fe8  0b948718  sub.s r8, r15, r8
004fec  0b1de440  min.s r26, r8, r14
004ff0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004ff4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004ff8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004ffc  bf4dadfe  blt.s r26, r10, -144
005000  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
005004  9f0d0000  addli r27, zero, 0
005008  0b9e7420  mul.s r28, r9, r7
00500c  9f098fd7  addli r19, r30, -5184
005010  1f0a0300  addli r20, r6, 0
005014  92304002  vadd.s.mz vr1{mr1}, zero, vr4
005018  12314002  vadd.s.mz vr2{mr1}, zero, vr4
00501c  92314002  vadd.s.mz vr3{mr1}, zero, vr4
005020  0b14ca11  add.s r8, r20, r28
005024  8b93c911  add.s r7, r19, r28
005028  9f028400  addli r5, r8, 64
00502c  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
005030  9f018401  addli r3, r8, 192
005034  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
005038  1f818301  addli r2, r7, 192
00503c  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
005040  9f020401  addli r5, r8, 128
005044  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
005048  9f818300  addli r3, r7, 64
00504c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
005050  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
005054  9f820301  addli r5, r7, 128
005058  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
00505c  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
005060  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
005064  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
005068  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00506c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
005070  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005074  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005078  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
00507c  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
005080  9f818d00  addli r3, r27, 64
005084  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005088  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00508c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005090  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
005094  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005098  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
00509c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
0050a0  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0050a4  4b2b3dfe  ble.s r26, r3, -312
0050a8  9f010402  addli r3, r8, 256
0050ac  9f028402  addli r5, r8, 320
0050b0  1f810302  addli r2, r7, 256
0050b4  9f8d0d01  addli r27, r27, 128
0050b8  1f0a0a04  addli r20, r20, 512
0050bc  9f890904  addli r19, r19, 512
0050c0  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
0050c4  9f010403  addli r3, r8, 384
0050c8  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
0050cc  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
0050d0  9f828302  addli r5, r7, 320
0050d4  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
0050d8  9f018403  addli r3, r8, 448
0050dc  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
0050e0  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
0050e4  9f810303  addli r3, r7, 384
0050e8  9f838303  addli r7, r7, 448
0050ec  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
0050f0  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0050f4  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
0050f8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0050fc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005100  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005104  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005108  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00510c  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
005110  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
005114  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
005118  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00511c  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
005120  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005124  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005128  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
00512c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005130  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
005134  bfbbadff  blt.s r27, r26, -276
005138  dbc6ffff  j -460
00513c  9f0b0000  addli r23, zero, 0
005140  1f0c0000  addli r24, zero, 0
005144  00a00000  mfence { lm }
005148  3fe2a700  blt.s r15, r10, 152
00514c  63018fd5  loadli.w r2,  -5440(r30)
005150  1f0a0000  addli r20, zero, 0
005154  0f042c18  div.f.rn r8, r24, r2
005158  8f832b18  div.f.rn r7, r23, r2
00515c  63013f00  loadli.w r2,  24(r30)
005160  8b698420  mul.f.rn r19, r8, r8
005164  0b640458  neg.f r8, r8
005168  8be33319  sub.f.rn r7, r7, r19
00516c  9f098fd7  addli r19, r30, -5184
005170  8be32310  add.f.rn r7, r7, r2
005174  2b01803f  lui r2, 260096
005178  8f830308  sqrt.f.rn r7, r7
00517c  8f037118  div.f.rn r7, r2, r7
005180  9f8b8900  addli r23, r19, 64
005184  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
005188  1f0c4a00  addli r24, r20, 32
00518c  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
005190  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
005194  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
005198  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
00519c  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
0051a0  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
0051a4  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
0051a8  cbe08701  ble.s r15, r24, 56
0051ac  9f8b0901  addli r23, r19, 128
0051b0  1f8c8901  addli r24, r19, 192
0051b4  1f0a8a00  addli r20, r20, 64
0051b8  9f890902  addli r19, r19, 256
0051bc  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
0051c0  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
0051c4  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
0051c8  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
0051cc  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
0051d0  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
0051d4  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
0051d8  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
0051dc  bf1efafe  blt.s r20, r15, -92
0051e0  00a00000  mfence { lm }
0051e4  63411f00  loadli.w r2,  12(r30)
0051e8  e3028fd6  loadli.w r5,  -5312(r30)
0051ec  3fb3a7fe  blt.s r15, r10, -820
0051f0  9f038fd7  addli r7, r30, -5184
0051f4  1f048fd7  addli r8, r30, -5184
0051f8  9f090000  addli r19, zero, 0
0051fc  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
005200  1f0a8400  addli r20, r8, 64
005204  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
005208  9f894900  addli r19, r19, 32
00520c  1f040401  addli r8, r8, 128
005210  42110a02  vload_mask16.mz vr2{mr1}, 0(r20)
005214  86910000  vfloat2fp16_l.rn vr3, vr1
005218  86510100  vfloat2fp16_h.rn vr3, vr2
00521c  46803302  vstore.mz vr3{mr1}, 0(r7)
005220  9f838300  addli r7, r7, 64
005224  3feff9fe  blt.s r19, r15, -40
005228  5b92ffff  j -880
00522c  63012f00  loadli.w r2,  16(r30)
005230  ab0100f0  lui r3, 983040
005234  1b311100  slli r2, r2, 1
005238  17113100  or r2, r2, r3
00523c  aba10100  lui r3, 26
005240  9f810100  addli r3, r3, 0
005244  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005248  5b080000  j 64
00524c  63012f00  loadli.w r2,  16(r30)
005250  ab0100f0  lui r3, 983040
005254  1b311100  slli r2, r2, 1
005258  17113100  or r2, r2, r3
00525c  abe10100  lui r3, 30
005260  9f810100  addli r3, r3, 0
005264  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005268  5bc30000  j 1560
00526c  63012f00  loadli.w r2,  16(r30)
005270  ab0100f0  lui r3, 983040
005274  1b311100  slli r2, r2, 1
005278  17113100  or r2, r2, r3
00527c  abb10100  lui r3, 27
005280  9f810100  addli r3, r3, 0
005284  7f013400  l_gm2sm r2, r3, 0(r[9:10])
005288  2bf10000  lui r2, 15
00528c  e3411f00  loadli.w r3,  12(r30)
005290  00200300  mfence { sm, gm }
005294  1b11f1ff  ori r2, r2, 4095
005298  80210104  csr_set csr3, r2
00529c  00d00100  sync_group
0052a0  cbd4110a  ble.s r3, r1, 5428
0052a4  63012f00  loadli.w r2,  16(r30)
0052a8  e3412f00  loadli.w r3,  20(r30)
0052ac  1f052000  addli r10, zero, 16
0052b0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0052b4  1f130000  addli r6, zero, 1
0052b8  9f040002  addli r9, zero, 256
0052bc  2b06ffff  lui r12, 1048560
0052c0  2b08807f  lui r16, 522240
0052c4  ab08c07f  lui r17, 523264
0052c8  1f090001  addli r18, zero, 128
0052cc  9f098000  addli r19, zero, 64
0052d0  1f0a4000  addli r20, zero, 32
0052d4  9b351100  slli r11, r2, 1
0052d8  0b123110  add.s r4, r2, r3
0052dc  33010108  fix2float.rn r2, r2
0052e0  670b2fd4  storeli.w r2, -5456(r30)
0052e4  1f71f2ff  addli r2, r4, -1
0052e8  1bb21100  slli r4, r3, 1
0052ec  e70bbfd4  storeli.w r11, -5448(r30)
0052f0  8b123130  div.s r5, r2, r3
0052f4  2bf1ffff  lui r2, 1048575
0052f8  9f018fd7  addli r3, r30, -5184
0052fc  1b14f1ff  ori r8, r2, 4095
005300  1f010fd7  addli r2, r30, -5248
005304  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005308  6a200522  vor.u.mz vr0{mr1}, r10, vr0
00530c  1f018fd6  addli r2, r30, -5312
005310  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005314  2b710000  lui r2, 7
005318  9b16f1ff  ori r13, r2, 4095
00531c  db080000  j 68
005320  9f018fd5  addli r3, r30, -5440
005324  00a00000  mfence { lm }
005328  eb5a0f00  load.d r[22:23], 0(r30)
00532c  2b0100f0  lui r2, 983040
005330  80530102  load_param_i r7, 2
005334  e3057fd5  loadli.w r11,  -5448(r30)
005338  ebdb0100  load.d r[24:25], 0(r3)
00533c  9f018fd7  addli r3, r30, -5184
005340  8b901310  add.s r1, r7, r1
005344  17912500  or r2, r11, r2
005348  8baa7a11  add.ul r[22:23], r[22:23], r[24:25]
00534c  7fb13a00  s_lm2gm r2, r3, 0(r[22:23])
005350  00a00200  mfence { lm, gm }
005354  63411f00  loadli.w r2,  12(r30)
005358  3fa02000  blt.s r1, r2, 8
00535c  5b8f0200  j 5240
005360  63011f00  loadli.w r2,  8(r30)
005364  9f037fd6  addli r7, r30, -5320
005368  0b912010  add.s r2, r1, r2
00536c  0b11f120  mul.s r2, r2, r15
005370  b31a0128  sext_int2long r[22:23], r2
005374  2b0100f0  lui r2, 983040
005378  97bb6a02  sll.d r[24:25], r[22:23], r6
00537c  ebda0300  load.d r[22:23], 0(r7)
005380  17912500  or r2, r11, r2
005384  9f038fd5  addli r7, r30, -5440
005388  73b07301  store.d r[24:25], 0(r7)
00538c  8baa7a11  add.ul r[22:23], r[22:23], r[24:25]
005390  7fa13a00  l_gm2lm r2, r3, 0(r[22:23])
005394  00a00200  mfence { lm, gm }
005398  bfdc6200  blt.s r5, r6, 820
00539c  9f0d0000  addli r27, zero, 0
0053a0  1f0d0000  addli r26, zero, 0
0053a4  1f0e0000  addli r28, zero, 0
0053a8  db0c0000  j 100
0053ac  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0053b0  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0053b4  1f1e0e00  addli r28, r28, 1
0053b8  6af104c0  vsrl.p vr2, r9, vr0
0053bc  eaf114c0  vsrl.p vr3, r9, vr1
0053c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0053c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0053c8  6a7109c0  vsrl.p vr2, r18, vr0
0053cc  ea7119c0  vsrl.p vr3, r18, vr1
0053d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0053d4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0053d8  6af109c0  vsrl.p vr2, r19, vr0
0053dc  eaf119c0  vsrl.p vr3, r19, vr1
0053e0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0053e4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0053e8  6a710ac0  vsrl.p vr2, r20, vr0
0053ec  ea711ac0  vsrl.p vr3, r20, vr1
0053f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0053f4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0053f8  7a110040  vextracti.f r2, 0(vr0)
0053fc  fa910040  vextracti.f r3, 0(vr1)
005400  8bed2d10  add.f.rn r27, r27, r2
005404  0b6d3d10  add.f.rn r26, r26, r3
005408  373b5e00  beq r28, r5, 716
00540c  1f010e00  addli r2, r28, 0
005410  37309700  beq r14, r9, 12
005414  17218e00  xor r2, r28, r8
005418  0b912210  add.s r2, r5, r2
00541c  9f010fd7  addli r3, r30, -5248
005420  8b13e120  mul.s r7, r2, r14
005424  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
005428  8b937718  sub.s r7, r15, r7
00542c  8b9ae340  min.s r21, r7, r14
005430  92322002  vadd.s.mz vr5{mr1}, zero, vr2
005434  12322002  vadd.s.mz vr4{mr1}, zero, vr2
005438  92312002  vadd.s.mz vr3{mr1}, zero, vr2
00543c  bfcd6afe  blt.s r21, r6, -144
005440  8b1b2220  mul.s r23, r4, r2
005444  1f010fd7  addli r2, r30, -5248
005448  ab950100  lui r11, 25
00544c  1f0b0000  addli r22, zero, 0
005450  9f038fd7  addli r7, r30, -5184
005454  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
005458  9f850500  addli r11, r11, 0
00545c  12315002  vadd.s.mz vr2{mr1}, zero, vr5
005460  92315002  vadd.s.mz vr3{mr1}, zero, vr5
005464  12325002  vadd.s.mz vr4{mr1}, zero, vr5
005468  0b9c7511  add.s r24, r11, r23
00546c  0b917311  add.s r2, r7, r23
005470  9f018fd6  addli r3, r30, -5312
005474  4a030c02  vloads.mz vr6{mr1}, 0(r24)
005478  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00547c  c2030102  vload.mz vr7{mr1}, 0(r2)
005480  9f010fd7  addli r3, r30, -5248
005484  9f0c8c00  addli r25, r24, 64
005488  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
00548c  9f018b00  addli r3, r22, 64
005490  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
005494  6a357602  vand.s.mz vr10{mr1}, r12, vr7
005498  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
00549c  6a336602  vand.s.mz vr6{mr1}, r12, vr6
0054a0  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0054a4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0054a8  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0054ac  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0054b0  669503c0  vabs.f vr10, vr7
0054b4  6a348302  vand.s.mz vr8{mr1}, r6, vr8
0054b8  ea349302  vand.s.mz vr9{mr1}, r6, vr9
0054bc  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
0054c0  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
0054c4  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
0054c8  12b48602  vadd.s.mz vr8{mr1}, r13, vr8
0054cc  92b49602  vadd.s.mz vr9{mr1}, r13, vr9
0054d0  ea338602  vand.s.mz vr7{mr1}, r12, vr8
0054d4  661403c0  vabs.f vr8, vr6
0054d8  6a339602  vand.s.mz vr6{mr1}, r12, vr9
0054dc  eaa30834  vor.u.mh vr7{mr2}, r17, vr0
0054e0  72218842  vlt.u.mz mr2{mr1}, r16, vr8
0054e4  6aa30834  vor.u.mh vr6{mr2}, r17, vr0
0054e8  4a840c02  vloads.mz vr8{mr1}, 0(r25)
0054ec  9f0c8100  addli r25, r2, 64
0054f0  c2840c02  vload.mz vr9{mr1}, 0(r25)
0054f4  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
0054f8  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
0054fc  6a336602  vand.s.mz vr6{mr1}, r12, vr6
005500  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
005504  ea349602  vand.s.mz vr9{mr1}, r12, vr9
005508  46007102  vstore.mz vr7{mr1}, 0(r2)
00550c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005510  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005514  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
005518  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
00551c  6a348602  vand.s.mz vr8{mr1}, r12, vr8
005520  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005524  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005528  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
00552c  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
005530  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
005534  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
005538  ea349302  vand.s.mz vr9{mr1}, r6, vr9
00553c  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
005540  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
005544  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
005548  661505c0  vabs.f vr10, vr10
00554c  661404c0  vabs.f vr8, vr8
005550  92b49602  vadd.s.mz vr9{mr1}, r13, vr9
005554  92b5b602  vadd.s.mz vr11{mr1}, r13, vr11
005558  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
00555c  ea349602  vand.s.mz vr9{mr1}, r12, vr9
005560  6a35b602  vand.s.mz vr10{mr1}, r12, vr11
005564  eaa40834  vor.u.mh vr9{mr2}, r17, vr0
005568  72218842  vlt.u.mz mr2{mr1}, r16, vr8
00556c  6aa50834  vor.u.mh vr10{mr2}, r17, vr0
005570  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
005574  ea34a602  vand.s.mz vr9{mr1}, r12, vr10
005578  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
00557c  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
005580  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
005584  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
005588  46808c02  vstore.mz vr8{mr1}, 0(r25)
00558c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005590  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005594  4be83afe  ble.s r21, r3, -488
005598  9f010c01  addli r3, r24, 128
00559c  9f0c0101  addli r25, r2, 128
0055a0  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0055a4  1f018101  addli r2, r2, 192
0055a8  1f0b0b01  addli r22, r22, 128
0055ac  9f850502  addli r11, r11, 256
0055b0  9f830302  addli r7, r7, 256
0055b4  6a237522  vor.u.mz vr6{mr1}, r10, vr7
0055b8  4a840102  vloads.mz vr8{mr1}, 0(r3)
0055bc  c2840c02  vload.mz vr9{mr1}, 0(r25)
0055c0  9f018c01  addli r3, r24, 192
0055c4  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
0055c8  6a309602  vand.s.mz vr0{mr1}, r12, vr9
0055cc  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
0055d0  6a348602  vand.s.mz vr8{mr1}, r12, vr8
0055d4  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
0055d8  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
0055dc  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
0055e0  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
0055e4  e69504c0  vabs.f vr11, vr9
0055e8  6a300302  vand.s.mz vr0{mr1}, r6, vr0
0055ec  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
0055f0  7221b842  vlt.u.mz mr2{mr1}, r16, vr11
0055f4  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
0055f8  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
0055fc  12b00602  vadd.s.mz vr0{mr1}, r13, vr0
005600  12b5a602  vadd.s.mz vr10{mr1}, r13, vr10
005604  ea340602  vand.s.mz vr9{mr1}, r12, vr0
005608  661004c0  vabs.f vr0, vr8
00560c  6a34a602  vand.s.mz vr8{mr1}, r12, vr10
005610  eaa47834  vor.u.mh vr9{mr2}, r17, vr7
005614  72210842  vlt.u.mz mr2{mr1}, r16, vr0
005618  6aa47834  vor.u.mh vr8{mr2}, r17, vr7
00561c  4a800102  vloads.mz vr0{mr1}, 0(r3)
005620  42050102  vload.mz vr10{mr1}, 0(r2)
005624  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
005628  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
00562c  6a35a602  vand.s.mz vr10{mr1}, r12, vr10
005630  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
005634  6a348602  vand.s.mz vr8{mr1}, r12, vr8
005638  46809c02  vstore.mz vr9{mr1}, 0(r25)
00563c  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
005640  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
005644  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
005648  6a300602  vand.s.mz vr0{mr1}, r12, vr0
00564c  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
005650  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
005654  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
005658  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
00565c  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
005660  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
005664  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
005668  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
00566c  e69000c0  vabs.f vr1, vr1
005670  661000c0  vabs.f vr0, vr0
005674  12b5a602  vadd.s.mz vr10{mr1}, r13, vr10
005678  92b5b602  vadd.s.mz vr11{mr1}, r13, vr11
00567c  72211842  vlt.u.mz mr2{mr1}, r16, vr1
005680  6a35a602  vand.s.mz vr10{mr1}, r12, vr10
005684  ea30b602  vand.s.mz vr1{mr1}, r12, vr11
005688  6aa57834  vor.u.mh vr10{mr2}, r17, vr7
00568c  72210842  vlt.u.mz mr2{mr1}, r16, vr0
005690  eaa07834  vor.u.mh vr1{mr2}, r17, vr7
005694  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
005698  ea331602  vand.s.mz vr7{mr1}, r12, vr1
00569c  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0056a0  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
0056a4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0056a8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0056ac  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
0056b0  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
0056b4  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
0056b8  46000102  vstore.mz vr0{mr1}, 0(r2)
0056bc  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0056c0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0056c4  bf165bff  blt.s r22, r21, -604
0056c8  db9cffff  j -796
0056cc  1f0d0000  addli r26, zero, 0
0056d0  9f0d0000  addli r27, zero, 0
0056d4  00a00000  mfence { lm }
0056d8  3fa167fe  blt.s r15, r6, -952
0056dc  e3016fd5  loadli.w r3,  -5456(r30)
0056e0  2bab0100  lui r22, 26
0056e4  abbb0100  lui r23, 27
0056e8  1f010000  addli r2, zero, 0
0056ec  1f0b0b00  addli r22, r22, 0
0056f0  9f8b0b00  addli r23, r23, 0
0056f4  8f853d18  div.f.rn r11, r27, r3
0056f8  8f033d18  div.f.rn r7, r26, r3
0056fc  e3013f00  loadli.w r3,  24(r30)
005700  8beab520  mul.f.rn r21, r11, r11
005704  8be50558  neg.f r11, r11
005708  8be35319  sub.f.rn r7, r7, r21
00570c  9f0a8fd7  addli r21, r30, -5184
005710  8be33310  add.f.rn r7, r7, r3
005714  ab01803f  lui r3, 260096
005718  8f830308  sqrt.f.rn r7, r7
00571c  8f837118  div.f.rn r7, r3, r7
005720  42820a02  vload.mz vr4{mr1}, 0(r21)
005724  ca020b02  vloads.mz vr5{mr1}, 0(r22)
005728  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
00572c  4a830b02  vloads.mz vr6{mr1}, 0(r23)
005730  1f0c4100  addli r24, r2, 32
005734  ea212522  vor.u.mz vr3{mr1}, r10, vr2
005738  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
00573c  6a344602  vand.s.mz vr8{mr1}, r12, vr4
005740  92937502  vadd.f.mz.rn vr7{mr1}, r11, vr7
005744  12948502  vadd.f.mz.rn vr8{mr1}, r11, vr8
005748  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
00574c  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
005750  6a355602  vand.s.mz vr10{mr1}, r12, vr5
005754  ea326602  vand.s.mz vr5{mr1}, r12, vr6
005758  8a937302  vmul.f.mz.rn vr7{mr1}, r7, vr7
00575c  0a938302  vmul.f.mz.rn vr6{mr1}, r7, vr8
005760  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
005764  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
005768  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
00576c  6a337302  vand.s.mz vr6{mr1}, r6, vr7
005770  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
005774  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
005778  ea337302  vand.s.mz vr7{mr1}, r6, vr7
00577c  661202c0  vabs.f vr4, vr4
005780  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
005784  12b36602  vadd.s.mz vr6{mr1}, r13, vr6
005788  e69202c0  vabs.f vr5, vr5
00578c  72214842  vlt.u.mz mr2{mr1}, r16, vr4
005790  6a336602  vand.s.mz vr6{mr1}, r12, vr6
005794  92b37602  vadd.s.mz vr7{mr1}, r13, vr7
005798  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
00579c  6a327602  vand.s.mz vr4{mr1}, r12, vr7
0057a0  72215842  vlt.u.mz mr2{mr1}, r16, vr5
0057a4  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
0057a8  6aa22834  vor.u.mh vr4{mr2}, r17, vr2
0057ac  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
0057b0  46804a02  vstore.mz vr4{mr1}, 0(r21)
0057b4  cbbd87fd  ble.s r15, r24, -1172
0057b8  1f0c8b00  addli r24, r22, 64
0057bc  9f8c8a00  addli r25, r21, 64
0057c0  1f018100  addli r2, r2, 64
0057c4  1f0b0b01  addli r22, r22, 128
0057c8  9f8a0a01  addli r21, r21, 128
0057cc  4a020c02  vloads.mz vr4{mr1}, 0(r24)
0057d0  1f8c8b00  addli r24, r23, 64
0057d4  c2820c02  vload.mz vr5{mr1}, 0(r25)
0057d8  9f8b0b01  addli r23, r23, 128
0057dc  4a030c02  vloads.mz vr6{mr1}, 0(r24)
0057e0  eeb351a2  vsll.s.mz vr7{mr1}, vr3, vr5
0057e4  ea325602  vand.s.mz vr5{mr1}, r12, vr5
0057e8  92937502  vadd.f.mz.rn vr7{mr1}, r11, vr7
0057ec  12945502  vadd.f.mz.rn vr8{mr1}, r11, vr5
0057f0  eeb441a2  vsll.s.mz vr9{mr1}, vr3, vr4
0057f4  6a354602  vand.s.mz vr10{mr1}, r12, vr4
0057f8  8a937302  vmul.f.mz.rn vr7{mr1}, r7, vr7
0057fc  eeb261a2  vsll.s.mz vr5{mr1}, vr3, vr6
005800  6a326602  vand.s.mz vr4{mr1}, r12, vr6
005804  0a938302  vmul.f.mz.rn vr6{mr1}, r7, vr8
005808  a6929302  vmac.f.mz.rn vr5{mr1}, vr7, vr9
00580c  2612a302  vmac.f.mz.rn vr4{mr1}, vr6, vr10
005810  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
005814  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
005818  6a336302  vand.s.mz vr6{mr1}, r6, vr6
00581c  ea337302  vand.s.mz vr7{mr1}, r6, vr7
005820  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
005824  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
005828  e69202c0  vabs.f vr5, vr5
00582c  661202c0  vabs.f vr4, vr4
005830  12b36602  vadd.s.mz vr6{mr1}, r13, vr6
005834  92b37602  vadd.s.mz vr7{mr1}, r13, vr7
005838  72215842  vlt.u.mz mr2{mr1}, r16, vr5
00583c  6a336602  vand.s.mz vr6{mr1}, r12, vr6
005840  ea327602  vand.s.mz vr5{mr1}, r12, vr7
005844  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
005848  72214842  vlt.u.mz mr2{mr1}, r16, vr4
00584c  eaa22834  vor.u.mh vr5{mr2}, r17, vr2
005850  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
005854  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
005858  46802c02  vstore.mz vr2{mr1}, 0(r25)
00585c  3f1bf1fe  blt.s r2, r15, -316
005860  5b58ffff  j -1344
005864  63012f00  loadli.w r2,  16(r30)
005868  ab0100f0  lui r3, 983040
00586c  1b311100  slli r2, r2, 1
005870  17113100  or r2, r2, r3
005874  abf10100  lui r3, 31
005878  9f810100  addli r3, r3, 0
00587c  7f013400  l_gm2sm r2, r3, 0(r[9:10])
005880  2bf10000  lui r2, 15
005884  e3411f00  loadli.w r3,  12(r30)
005888  00200300  mfence { sm, gm }
00588c  1b11f1ff  ori r2, r2, 4095
005890  80210104  csr_set csr3, r2
005894  00d00100  sync_group
005898  cbfc1106  ble.s r3, r1, 3900
00589c  e3012f00  loadli.w r3,  16(r30)
0058a0  e3422f00  loadli.w r5,  20(r30)
0058a4  2bf4ffff  lui r8, 1048575
0058a8  2bd50100  lui r10, 29
0058ac  9f0b8fd7  addli r23, r30, -5184
0058b0  9f040002  addli r9, zero, 256
0058b4  9f050001  addli r11, zero, 128
0058b8  1f068000  addli r12, zero, 64
0058bc  9f064000  addli r13, zero, 32
0058c0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0058c4  1b14f4ff  ori r8, r8, 4095
0058c8  1f050500  addli r10, r10, 0
0058cc  0b925110  add.s r4, r3, r5
0058d0  1bb11100  slli r2, r3, 1
0058d4  b3810108  fix2float.rn r3, r3
0058d8  1f73f2ff  addli r6, r4, -1
0058dc  1bb21200  slli r4, r5, 1
0058e0  8b125330  div.s r5, r6, r5
0058e4  1f130000  addli r6, zero, 1
0058e8  5b070000  j 56
0058ec  00a00000  mfence { lm }
0058f0  eb580f00  load.d r[18:19], 0(r30)
0058f4  2b0800f0  lui r16, 983040
0058f8  9f0b8fd7  addli r23, r30, -5184
0058fc  17180101  or r16, r2, r16
005900  8ba93811  add.ul r[20:21], r[18:19], r[20:21]
005904  80580102  load_param_i r17, 2
005908  7fb87901  s_lm2gm r16, r23, 0(r[20:21])
00590c  8b901810  add.s r1, r17, r1
005910  00a00200  mfence { lm, gm }
005914  e3431f00  loadli.w r7,  12(r30)
005918  3fa07000  blt.s r1, r7, 8
00591c  5bd70100  j 3768
005920  e3031f00  loadli.w r7,  8(r30)
005924  0b987010  add.s r16, r1, r7
005928  9f037fd6  addli r7, r30, -5320
00592c  0b18f820  mul.s r16, r16, r15
005930  33180828  sext_int2long r[17:18], r16
005934  97396802  sll.d r[20:21], r[17:18], r6
005938  ebd80300  load.d r[18:19], 0(r7)
00593c  2b0800f0  lui r16, 983040
005940  17180101  or r16, r2, r16
005944  8baa3811  add.ul r[22:23], r[18:19], r[20:21]
005948  7fa87a01  l_gm2lm r16, r23, 0(r[22:23])
00594c  00a00200  mfence { lm, gm }
005950  3fc76200  blt.s r5, r6, 464
005954  1f0b0000  addli r22, zero, 0
005958  9f0a0000  addli r21, zero, 0
00595c  9f0b0000  addli r23, zero, 0
005960  db0c0000  j 100
005964  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
005968  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00596c  9f9b0b00  addli r23, r23, 1
005970  6af134c0  vsrl.p vr2, r9, vr3
005974  6af214c0  vsrl.p vr4, r9, vr1
005978  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
00597c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
005980  eaf125c0  vsrl.p vr3, r11, vr2
005984  6af215c0  vsrl.p vr4, r11, vr1
005988  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
00598c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
005990  ea7126c0  vsrl.p vr3, r12, vr2
005994  6a7216c0  vsrl.p vr4, r12, vr1
005998  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
00599c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0059a0  eaf126c0  vsrl.p vr3, r13, vr2
0059a4  6af216c0  vsrl.p vr4, r13, vr1
0059a8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0059ac  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0059b0  fa130140  vextracti.f r7, 0(vr2)
0059b4  7a980040  vextracti.f r16, 0(vr1)
0059b8  0b6b7b10  add.f.rn r22, r22, r7
0059bc  8bea0a11  add.f.rn r21, r21, r16
0059c0  b7a55b00  beq r23, r5, 360
0059c4  1f880b00  addli r16, r23, 0
0059c8  37309700  beq r14, r9, 12
0059cc  17a88b00  xor r16, r23, r8
0059d0  0b980211  add.s r16, r5, r16
0059d4  8b18e820  mul.s r17, r16, r14
0059d8  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0059dc  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0059e0  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0059e4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0059e8  8b981719  sub.s r17, r15, r17
0059ec  0b9ce840  min.s r24, r17, r14
0059f0  bf5d6cfe  blt.s r24, r6, -140
0059f4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0059f8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0059fc  92310002  vadd.s.mz vr3{mr1}, zero, vr0
005a00  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005a04  9f0c0000  addli r25, zero, 0
005a08  0b1d0221  mul.s r26, r4, r16
005a0c  9f0d8fd7  addli r27, r30, -5184
005a10  1f0e0500  addli r28, r10, 0
005a14  0b18ae11  add.s r16, r28, r26
005a18  9f838c00  addli r7, r25, 64
005a1c  ca020802  vloads.mz vr5{mr1}, 0(r16)
005a20  9f088800  addli r17, r16, 64
005a24  4a830802  vloads.mz vr6{mr1}, 0(r17)
005a28  8b98ad11  add.s r17, r27, r26
005a2c  c2830802  vload.mz vr7{mr1}, 0(r17)
005a30  1f898800  addli r18, r17, 64
005a34  42040902  vload.mz vr8{mr1}, 0(r18)
005a38  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
005a3c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005a40  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
005a44  06b40300  vfp162float_l.rn vr8, vr7
005a48  86f30300  vfp162float_h.rn vr7, vr7
005a4c  86340300  vfp162float_l.rn vr9, vr6
005a50  06730300  vfp162float_h.rn vr6, vr6
005a54  86120400  vfloat2fp16_l.rn vr5, vr8
005a58  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
005a5c  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
005a60  12340002  vadd.s.mz vr8{mr1}, zero, vr0
005a64  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005a68  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005a6c  06940400  vfloat2fp16_l.rn vr8, vr9
005a70  86d20300  vfloat2fp16_h.rn vr5, vr7
005a74  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005a78  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005a7c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
005a80  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005a84  06540300  vfloat2fp16_h.rn vr8, vr6
005a88  46805802  vstore.mz vr5{mr1}, 0(r17)
005a8c  46008902  vstore.mz vr8{mr1}, 0(r18)
005a90  4b5b7cfe  ble.s r24, r7, -300
005a94  9f030801  addli r7, r16, 128
005a98  9f8c0c01  addli r25, r25, 128
005a9c  1f0e0e02  addli r28, r28, 256
005aa0  9f8d0d02  addli r27, r27, 256
005aa4  ca820302  vloads.mz vr5{mr1}, 0(r7)
005aa8  9f038801  addli r7, r16, 192
005aac  1f880801  addli r16, r17, 128
005ab0  4a830302  vloads.mz vr6{mr1}, 0(r7)
005ab4  c2030802  vload.mz vr7{mr1}, 0(r16)
005ab8  9f838801  addli r7, r17, 192
005abc  42840302  vload.mz vr8{mr1}, 0(r7)
005ac0  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
005ac4  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005ac8  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
005acc  12330002  vadd.s.mz vr6{mr1}, zero, vr0
005ad0  86b40300  vfp162float_l.rn vr9, vr7
005ad4  86f30300  vfp162float_h.rn vr7, vr7
005ad8  86920400  vfloat2fp16_l.rn vr5, vr9
005adc  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
005ae0  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
005ae4  86340400  vfp162float_l.rn vr9, vr8
005ae8  06740400  vfp162float_h.rn vr8, vr8
005aec  06930400  vfloat2fp16_l.rn vr6, vr9
005af0  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005af4  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005af8  86d20300  vfloat2fp16_h.rn vr5, vr7
005afc  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005b00  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005b04  06530400  vfloat2fp16_h.rn vr6, vr8
005b08  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
005b0c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005b10  46005802  vstore.mz vr5{mr1}, 0(r16)
005b14  46806302  vstore.mz vr6{mr1}, 0(r7)
005b18  bffb8cff  blt.s r25, r24, -260
005b1c  5bc9ffff  j -440
005b20  9f0a0000  addli r21, zero, 0
005b24  1f0b0000  addli r22, zero, 0
005b28  00a00000  mfence { lm }
005b2c  3f8767fe  blt.s r15, r6, -576
005b30  0f083b18  div.f.rn r16, r22, r3
005b34  8f883a18  div.f.rn r17, r21, r3
005b38  e3033f00  loadli.w r7,  24(r30)
005b3c  abec0100  lui r25, 30
005b40  2bfd0100  lui r26, 31
005b44  9f0b0000  addli r23, zero, 0
005b48  1f0c8fd7  addli r24, r30, -5184
005b4c  9f8c0c00  addli r25, r25, 0
005b50  1f0d0d00  addli r26, r26, 0
005b54  8b6a0821  mul.f.rn r21, r16, r16
005b58  0b6b0858  neg.f r22, r16
005b5c  8be85819  sub.f.rn r17, r17, r21
005b60  8be87810  add.f.rn r17, r17, r7
005b64  ab03803f  lui r7, 260096
005b68  8f880808  sqrt.f.rn r17, r17
005b6c  8f8a1319  div.f.rn r21, r7, r17
005b70  c2000c02  vload.mz vr1{mr1}, 0(r24)
005b74  4a810c02  vloads.mz vr2{mr1}, 0(r25)
005b78  ca010d02  vloads.mz vr3{mr1}, 0(r26)
005b7c  1f884b00  addli r16, r23, 32
005b80  06b20000  vfp162float_l.rn vr4, vr1
005b84  86f00000  vfp162float_h.rn vr1, vr1
005b88  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
005b8c  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
005b90  86320100  vfp162float_l.rn vr5, vr2
005b94  06b30100  vfp162float_l.rn vr6, vr3
005b98  06710100  vfp162float_h.rn vr2, vr2
005b9c  86f10100  vfp162float_h.rn vr3, vr3
005ba0  8a931a02  vmul.f.mz.rn vr7{mr1}, r21, vr1
005ba4  0a924a02  vmul.f.mz.rn vr4{mr1}, r21, vr4
005ba8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005bac  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
005bb0  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
005bb4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005bb8  06110300  vfloat2fp16_l.rn vr2, vr6
005bbc  06d10100  vfloat2fp16_h.rn vr2, vr3
005bc0  46002c02  vstore.mz vr2{mr1}, 0(r24)
005bc4  cba407ff  ble.s r15, r16, -728
005bc8  1f888c00  addli r16, r25, 64
005bcc  9f088c00  addli r17, r24, 64
005bd0  9f8b8b00  addli r23, r23, 64
005bd4  9f8c0c01  addli r25, r25, 128
005bd8  1f0c0c01  addli r24, r24, 128
005bdc  4a010802  vloads.mz vr2{mr1}, 0(r16)
005be0  1f088d00  addli r16, r26, 64
005be4  c2810802  vload.mz vr3{mr1}, 0(r17)
005be8  1f0d0d01  addli r26, r26, 128
005bec  4a020802  vloads.mz vr4{mr1}, 0(r16)
005bf0  86b20100  vfp162float_l.rn vr5, vr3
005bf4  86f10100  vfp162float_h.rn vr3, vr3
005bf8  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
005bfc  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
005c00  06330100  vfp162float_l.rn vr6, vr2
005c04  06710100  vfp162float_h.rn vr2, vr2
005c08  8a925a02  vmul.f.mz.rn vr5{mr1}, r21, vr5
005c0c  8a913a02  vmul.f.mz.rn vr3{mr1}, r21, vr3
005c10  86330200  vfp162float_l.rn vr7, vr4
005c14  06720200  vfp162float_h.rn vr4, vr4
005c18  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
005c1c  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
005c20  86900300  vfloat2fp16_l.rn vr1, vr7
005c24  86500200  vfloat2fp16_h.rn vr1, vr4
005c28  46801802  vstore.mz vr1{mr1}, 0(r17)
005c2c  3f9dfbfe  blt.s r23, r15, -188
005c30  db97ffff  j -836
005c34  9f000040  addli r1, zero, 8192
005c38  2b0100f0  lui r2, 983040
005c3c  97902000  or r1, r1, r2
005c40  2b310200  lui r2, 35
005c44  1f010100  addli r2, r2, 0
005c48  ff002300  l_gm2sm r1, r2, 0(r[7:8])
005c4c  db070000  j 60
005c50  63012f00  loadli.w r2,  16(r30)
005c54  ab0100f0  lui r3, 983040
005c58  1b312100  slli r2, r2, 2
005c5c  17113100  or r2, r2, r3
005c60  ab810200  lui r3, 40
005c64  9f810108  addli r3, r3, 1024
005c68  7f013300  l_gm2sm r2, r3, 0(r[7:8])
005c6c  dbef0000  j 1916
005c70  9f000040  addli r1, zero, 8192
005c74  2b0100f0  lui r2, 983040
005c78  97902000  or r1, r1, r2
005c7c  2b510200  lui r2, 37
005c80  1f010100  addli r2, r2, 0
005c84  ff002400  l_gm2sm r1, r2, 0(r[9:10])
005c88  abf00000  lui r1, 15
005c8c  00200300  mfence { sm, gm }
005c90  1b011500  andi r2, r10, 1
005c94  9f010006  addli r3, zero, 768
005c98  9b90f0ff  ori r1, r1, 4095
005c9c  80a10004  csr_set csr3, r1
005ca0  9f000006  addli r1, zero, 768
005ca4  00d00100  sync_group
005ca8  67082fd6  storeli.w r2, -5248(r30)
005cac  37200100  beq r2, zero, 8
005cb0  9f01000a  addli r3, zero, 1280
005cb4  63421f00  loadli.w r4,  12(r30)
005cb8  9f120000  addli r5, zero, 1
005cbc  3f6c5204  blt.s r4, r5, 2840
005cc0  63010fd7  loadli.w r2,  -5248(r30)
005cc4  80520102  load_param_i r5, 2
005cc8  9b431500  srli r7, r10, 1
005ccc  ab170200  lui r15, 33
005cd0  ab7a0200  lui r21, 39
005cd4  2b7d0200  lui r26, 39
005cd8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005cdc  1f020000  addli r4, zero, 0
005ce0  1bb42100  slli r8, r3, 2
005ce4  1f068fd7  addli r12, r30, -5184
005ce8  1f080005  addli r16, zero, 640
005cec  1f090001  addli r18, zero, 128
005cf0  9f098000  addli r19, zero, 64
005cf4  1f0a4000  addli r20, zero, 32
005cf8  1bc31200  srli r6, r5, 1
005cfc  ab320200  lui r5, 35
005d00  9f870700  addli r15, r15, 0
005d04  9f8a0a00  addli r21, r21, 0
005d08  1f0d0d04  addli r26, r26, 512
005d0c  8b101120  mul.s r1, r2, r1
005d10  1f018fd5  addli r2, r30, -5440
005d14  9f820200  addli r5, r5, 0
005d18  67041fd6  storeli.w r1, -5312(r30)
005d1c  9bb02000  slli r1, r1, 2
005d20  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005d24  1f810c00  addli r2, r25, 0
005d28  9f0c0003  addli r25, zero, 384
005d2c  8b945010  add.s r9, r1, r5
005d30  ab520200  lui r5, 37
005d34  9f820200  addli r5, r5, 0
005d38  0b955010  add.s r10, r1, r5
005d3c  abf0ffff  lui r1, 1048575
005d40  9b9000f8  ori r1, r1, 3968
005d44  e70b1fd4  storeli.w r1, -5448(r30)
005d48  abf00000  lui r1, 15
005d4c  1b9bf0ff  ori r22, r1, 4095
005d50  5b040000  j 32
005d54  00a00300  mfence { lm, sm, gm }
005d58  80210b04  csr_set csr3, r22
005d5c  00d00100  sync_group
005d60  63411f00  loadli.w r2,  12(r30)
005d64  0b126210  add.s r4, r4, r6
005d68  3f202200  blt.s r4, r2, 8
005d6c  5be7f5ff  j -20680
005d70  8b107210  add.s r1, r4, r7
005d74  cb0f11fe  ble.s r2, r1, -32
005d78  63011f00  loadli.w r2,  8(r30)
005d7c  8b902010  add.s r1, r1, r2
005d80  63018fd6  loadli.w r2,  -5312(r30)
005d84  9bb0b000  slli r1, r1, 11
005d88  97902000  or r1, r1, r2
005d8c  1f017fd6  addli r2, r30, -5320
005d90  b3960028  sext_int2long r[14:15], r1
005d94  9f200000  addli r1, zero, 2
005d98  97bd1602  sll.d r[28:29], r[14:15], r1
005d9c  eb560100  load.d r[14:15], 0(r2)
005da0  ab0000f0  lui r1, 983040
005da4  97101400  or r1, r8, r1
005da8  8ba6b611  add.ul r[14:15], r[14:15], r[28:29]
005dac  ffa0c600  l_gm2lm r1, r12, 0(r[14:15])
005db0  00a00200  mfence { lm, gm }
005db4  e3000fd7  loadli.w r1,  -5248(r30)
005db8  3ba60000  bneq r1, zero, 392
005dbc  9f008fd5  addli r1, r30, -5440
005dc0  e3067fd5  loadli.w r13,  -5448(r30)
005dc4  9f050000  addli r11, zero, 0
005dc8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
005dcc  92303002  vadd.s.mz vr1{mr1}, zero, vr3
005dd0  12313002  vadd.s.mz vr2{mr1}, zero, vr3
005dd4  12323002  vadd.s.mz vr4{mr1}, zero, vr3
005dd8  0b97f510  add.s r14, r11, r15
005ddc  8b10b610  add.s r1, r12, r11
005de0  9f860601  addli r13, r13, 128
005de4  9f850504  addli r11, r11, 512
005de8  1f010701  addli r2, r14, 128
005dec  4a100702  vloads_mask16.mz vr0{mr1}, 0(r14)
005df0  9f028700  addli r5, r14, 64
005df4  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
005df8  9f888001  addli r17, r1, 192
005dfc  ca120102  vloads_mask16.mz vr5{mr1}, 0(r2)
005e00  1f018701  addli r2, r14, 192
005e04  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
005e08  9f828000  addli r5, r1, 64
005e0c  c2950802  vload_mask16.mz vr11{mr1}, 0(r17)
005e10  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
005e14  1f810001  addli r2, r1, 128
005e18  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
005e1c  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
005e20  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005e24  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
005e28  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005e2c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005e30  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005e34  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
005e38  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
005e3c  1f010702  addli r2, r14, 256
005e40  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005e44  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
005e48  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
005e4c  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
005e50  9f820003  addli r5, r1, 384
005e54  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
005e58  1f018702  addli r2, r14, 320
005e5c  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
005e60  9f880002  addli r17, r1, 256
005e64  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005e68  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
005e6c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005e70  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
005e74  1f010703  addli r2, r14, 384
005e78  c2930802  vload_mask16.mz vr7{mr1}, 0(r17)
005e7c  1f078703  addli r14, r14, 448
005e80  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005e84  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
005e88  1f818002  addli r2, r1, 320
005e8c  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
005e90  9f808003  addli r1, r1, 448
005e94  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
005e98  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005e9c  c2930202  vload_mask16.mz vr7{mr1}, 0(r5)
005ea0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005ea4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005ea8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005eac  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005eb0  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
005eb4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005eb8  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
005ebc  13810605  setlt.u r2, r13, r16
005ec0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005ec4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005ec8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005ecc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005ed0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005ed4  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
005ed8  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
005edc  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005ee0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005ee4  bb5b01fe  bneq r2, zero, -268
005ee8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005eec  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005ef0  9f000002  addli r1, zero, 256
005ef4  6af100c0  vsrl.p vr2, r1, vr0
005ef8  eaf110c0  vsrl.p vr3, r1, vr1
005efc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005f00  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005f04  6a7109c0  vsrl.p vr2, r18, vr0
005f08  ea7119c0  vsrl.p vr3, r18, vr1
005f0c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005f10  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005f14  6af109c0  vsrl.p vr2, r19, vr0
005f18  eaf119c0  vsrl.p vr3, r19, vr1
005f1c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005f20  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005f24  6a710ac0  vsrl.p vr2, r20, vr0
005f28  ea711ac0  vsrl.p vr3, r20, vr1
005f2c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005f30  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005f34  fa120040  vextracti.f r5, 0(vr0)
005f38  fa900040  vextracti.f r1, 0(vr1)
005f3c  5b630000  j 792
005f40  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005f44  abf0ffff  lui r1, 1048575
005f48  9f050000  addli r11, zero, 0
005f4c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005f50  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005f54  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005f58  9b9600f8  ori r13, r1, 3968
005f5c  8b90b710  add.s r1, r15, r11
005f60  0b17b610  add.s r14, r12, r11
005f64  9f860601  addli r13, r13, 128
005f68  9f850504  addli r11, r11, 512
005f6c  1f8c0031  addli r24, r1, 6272
005f70  9f820030  addli r5, r1, 6144
005f74  1f818031  addli r2, r1, 6336
005f78  9f0b0718  addli r23, r14, 3072
005f7c  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
005f80  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
005f84  9f828030  addli r5, r1, 6208
005f88  ca140102  vloads_mask16.mz vr9{mr1}, 0(r2)
005f8c  1f018718  addli r2, r14, 3136
005f90  1f0c8719  addli r24, r14, 3264
005f94  42930b02  vload_mask16.mz vr6{mr1}, 0(r23)
005f98  4a940202  vloads_mask16.mz vr8{mr1}, 0(r5)
005f9c  9f020719  addli r5, r14, 3200
005fa0  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
005fa4  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
005fa8  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
005fac  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005fb0  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
005fb4  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
005fb8  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
005fbc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005fc0  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
005fc4  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
005fc8  9f820032  addli r5, r1, 6400
005fcc  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
005fd0  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
005fd4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005fd8  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
005fdc  9f0b071a  addli r23, r14, 3328
005fe0  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
005fe4  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
005fe8  1f01871b  addli r2, r14, 3520
005fec  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
005ff0  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
005ff4  4a900202  vloads_mask16.mz vr0{mr1}, 0(r5)
005ff8  9f828032  addli r5, r1, 6464
005ffc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006000  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006004  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
006008  9f820033  addli r5, r1, 6528
00600c  9f808033  addli r1, r1, 6592
006010  4a940202  vloads_mask16.mz vr8{mr1}, 0(r5)
006014  9f02871a  addli r5, r14, 3392
006018  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
00601c  9f00071b  addli r1, r14, 3456
006020  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
006024  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
006028  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00602c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
006030  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
006034  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
006038  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00603c  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
006040  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
006044  46906202  vstore_mask16.mz vr6{mr1}, 0(r5)
006048  93829605  setlt.u r5, r13, r25
00604c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
006050  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
006054  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
006058  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00605c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
006060  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
006064  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
006068  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00606c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006070  bbbb02fe  bneq r5, zero, -276
006074  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006078  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00607c  9f000002  addli r1, zero, 256
006080  9f060000  addli r13, zero, 0
006084  eaf110c0  vsrl.p vr3, r1, vr1
006088  6af100c0  vsrl.p vr2, r1, vr0
00608c  abf0ffff  lui r1, 1048575
006090  1b9700f8  ori r14, r1, 3968
006094  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006098  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00609c  ea7119c0  vsrl.p vr3, r18, vr1
0060a0  6a7109c0  vsrl.p vr2, r18, vr0
0060a4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060a8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0060ac  eaf119c0  vsrl.p vr3, r19, vr1
0060b0  6af109c0  vsrl.p vr2, r19, vr0
0060b4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060b8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0060bc  ea711ac0  vsrl.p vr3, r20, vr1
0060c0  6a710ac0  vsrl.p vr2, r20, vr0
0060c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0060cc  7a9c0040  vextracti.f r24, 0(vr1)
0060d0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0060d4  fa150040  vextracti.f r11, 0(vr0)
0060d8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0060dc  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0060e0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0060e4  8b9bd710  add.s r23, r15, r13
0060e8  8b10d610  add.s r1, r12, r13
0060ec  1f070701  addli r14, r14, 128
0060f0  9f860604  addli r13, r13, 512
0060f4  1f810b18  addli r2, r23, 3072
0060f8  9f820b19  addli r5, r23, 3200
0060fc  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
006100  9f888001  addli r17, r1, 192
006104  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
006108  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
00610c  1f818b18  addli r2, r23, 3136
006110  9f828b19  addli r5, r23, 3264
006114  c2950802  vload_mask16.mz vr11{mr1}, 0(r17)
006118  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
00611c  1f810001  addli r2, r1, 128
006120  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
006124  9f828000  addli r5, r1, 64
006128  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
00612c  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
006130  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
006134  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
006138  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00613c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
006140  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
006144  1f810b1a  addli r2, r23, 3328
006148  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00614c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
006150  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
006154  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
006158  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00615c  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
006160  1f818b1a  addli r2, r23, 3392
006164  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
006168  9f880002  addli r17, r1, 256
00616c  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
006170  9f820003  addli r5, r1, 384
006174  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
006178  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00617c  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
006180  1f810b1b  addli r2, r23, 3456
006184  c2930802  vload_mask16.mz vr7{mr1}, 0(r17)
006188  9f8b8b1b  addli r23, r23, 3520
00618c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006190  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006194  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
006198  1f818002  addli r2, r1, 320
00619c  4a950b02  vloads_mask16.mz vr10{mr1}, 0(r23)
0061a0  9f808003  addli r1, r1, 448
0061a4  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
0061a8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0061ac  c2930202  vload_mask16.mz vr7{mr1}, 0(r5)
0061b0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0061b4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0061b8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0061bc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0061c0  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
0061c4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0061c8  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
0061cc  13010705  setlt.u r2, r14, r16
0061d0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0061d4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0061d8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0061dc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0061e0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0061e4  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
0061e8  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0061ec  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0061f0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0061f4  bb4b01fe  bneq r2, zero, -272
0061f8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0061fc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006200  9f000002  addli r1, zero, 256
006204  6af100c0  vsrl.p vr2, r1, vr0
006208  eaf110c0  vsrl.p vr3, r1, vr1
00620c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006210  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006214  6a7109c0  vsrl.p vr2, r18, vr0
006218  ea7119c0  vsrl.p vr3, r18, vr1
00621c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006220  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006224  6af109c0  vsrl.p vr2, r19, vr0
006228  eaf119c0  vsrl.p vr3, r19, vr1
00622c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006230  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006234  6a710ac0  vsrl.p vr2, r20, vr0
006238  ea711ac0  vsrl.p vr3, r20, vr1
00623c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006240  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006244  fa100040  vextracti.f r1, 0(vr0)
006248  7a910040  vextracti.f r2, 0(vr1)
00624c  8be21510  add.f.rn r5, r11, r1
006250  8b602c10  add.f.rn r1, r24, r2
006254  0b016230  div.u r2, r4, r6
006258  80360002  core_id r13
00625c  9f050000  addli r11, zero, 0
006260  1f0c0000  addli r24, zero, 0
006264  1b316100  slli r2, r2, 6
006268  1b010104  andi r2, r2, 64
00626c  1711d100  or r2, r2, r13
006270  9b362100  slli r13, r2, 2
006274  1b01e107  andi r2, r2, 126
006278  0b975611  add.s r14, r13, r21
00627c  1b312100  slli r2, r2, 2
006280  73605700  stores.w r5, 0(r14)
006284  8b92a611  add.s r5, r13, r26
006288  9b964600  ori r13, r13, 4
00628c  73e01200  stores.w r1, 0(r5)
006290  8b905611  add.s r1, r13, r21
006294  8b125111  add.s r5, r2, r21
006298  8b96a611  add.s r13, r13, r26
00629c  0b11a111  add.s r2, r2, r26
0062a0  00a00300  mfence { lm, sm, gm }
0062a4  80210b04  csr_set csr3, r22
0062a8  00d00100  sync_group
0062ac  efc00000  loads.w r1, 0(r1)
0062b0  efc20200  loads.w r5, 0(r5)
0062b4  efc60600  loads.w r13, 0(r13)
0062b8  6f410100  loads.w r2, 0(r2)
0062bc  8be05010  add.f.rn r1, r1, r5
0062c0  ab02003a  lui r5, 237568
0062c4  0be12610  add.f.rn r2, r13, r2
0062c8  8be05020  mul.f.rn r1, r1, r5
0062cc  0b615120  mul.f.rn r2, r2, r5
0062d0  8be21020  mul.f.rn r5, r1, r1
0062d4  0be70058  neg.f r14, r1
0062d8  0b615118  sub.f.rn r2, r2, r5
0062dc  e3023f00  loadli.w r5,  24(r30)
0062e0  0b615110  add.f.rn r2, r2, r5
0062e4  ab02803f  lui r5, 260096
0062e8  0f010108  sqrt.f.rn r2, r2
0062ec  8f862218  div.f.rn r13, r5, r2
0062f0  8b90b410  add.s r1, r9, r11
0062f4  8b1bb610  add.s r23, r12, r11
0062f8  8b12b510  add.s r5, r10, r11
0062fc  9f888000  addli r17, r1, 64
006300  1f818b00  addli r2, r23, 64
006304  42900b02  vload_mask16.mz vr0{mr1}, 0(r23)
006308  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
00630c  4a920202  vloads_mask16.mz vr4{mr1}, 0(r5)
006310  ca910802  vloads_mask16.mz vr3{mr1}, 0(r17)
006314  9f888200  addli r17, r5, 64
006318  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
00631c  ca920802  vloads_mask16.mz vr5{mr1}, 0(r17)
006320  9f084c00  addli r17, r24, 32
006324  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
006328  93881107  setle.u r17, r3, r17
00632c  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
006330  0a900602  vmul.f.mz.rn vr0{mr1}, r13, vr0
006334  8a901602  vmul.f.mz.rn vr1{mr1}, r13, vr1
006338  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
00633c  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
006340  46904b02  vstore_mask16.mz vr4{mr1}, 0(r23)
006344  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
006348  bb910800  bneq r17, zero, 100
00634c  1f810b01  addli r2, r23, 128
006350  9f888b01  addli r17, r23, 192
006354  9f8b0001  addli r23, r1, 128
006358  9f808001  addli r1, r1, 192
00635c  1f0c8c00  addli r24, r24, 64
006360  9f850502  addli r11, r11, 256
006364  4a910b02  vloads_mask16.mz vr2{mr1}, 0(r23)
006368  9f8b0201  addli r23, r5, 128
00636c  9f828201  addli r5, r5, 192
006370  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
006374  c2900802  vload_mask16.mz vr1{mr1}, 0(r17)
006378  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
00637c  93003c04  setlt.u r1, r24, r3
006380  ca910b02  vloads_mask16.mz vr3{mr1}, 0(r23)
006384  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
006388  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
00638c  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
006390  0a900602  vmul.f.mz.rn vr0{mr1}, r13, vr0
006394  8a901602  vmul.f.mz.rn vr1{mr1}, r13, vr1
006398  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
00639c  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0063a0  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0063a4  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
0063a8  3bad00fe  bneq r1, zero, -184
0063ac  eb560f00  load.d r[14:15], 0(r30)
0063b0  ab0000f0  lui r1, 983040
0063b4  00a00000  mfence { lm }
0063b8  97101400  or r1, r8, r1
0063bc  8ba6b611  add.ul r[14:15], r[14:15], r[28:29]
0063c0  ffb0c600  s_lm2gm r1, r12, 0(r[14:15])
0063c4  00a00200  mfence { lm, gm }
0063c8  5b33ffff  j -1640
0063cc  63012f00  loadli.w r2,  16(r30)
0063d0  ab0100f0  lui r3, 983040
0063d4  1b312100  slli r2, r2, 2
0063d8  17113100  or r2, r2, r3
0063dc  ab910200  lui r3, 41
0063e0  9f810108  addli r3, r3, 1024
0063e4  7f013400  l_gm2sm r2, r3, 0(r[9:10])
0063e8  2bf10000  lui r2, 15
0063ec  e3411f00  loadli.w r3,  12(r30)
0063f0  00200300  mfence { sm, gm }
0063f4  1b11f1ff  ori r2, r2, 4095
0063f8  80210104  csr_set csr3, r2
0063fc  00d00100  sync_group
006400  4bdf1100  ble.s r3, r1, 980
006404  e3012f00  loadli.w r3,  16(r30)
006408  e3422f00  loadli.w r5,  20(r30)
00640c  ab780200  lui r17, 39
006410  2b890200  lui r18, 40
006414  ab990200  lui r19, 41
006418  9f038fd7  addli r7, r30, -5184
00641c  1f140000  addli r8, zero, 1
006420  1f050002  addli r10, zero, 256
006424  1f060001  addli r12, zero, 128
006428  9f068000  addli r13, zero, 64
00642c  1f084000  addli r16, zero, 32
006430  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
006434  9f880808  addli r17, r17, 1024
006438  1f090908  addli r18, r18, 1024
00643c  9f890908  addli r19, r19, 1024
006440  0b925110  add.s r4, r3, r5
006444  9bb52100  slli r11, r3, 2
006448  33810108  fix2float.rn r2, r3
00644c  9f71f2ff  addli r3, r4, -1
006450  1bb22200  slli r4, r5, 2
006454  e70b2fd4  storeli.w r2, -5448(r30)
006458  1f010fd7  addli r2, r30, -5248
00645c  670cbfd4  storeli.w r11, -5440(r30)
006460  8b925130  div.s r5, r3, r5
006464  abf1ffff  lui r3, 1048575
006468  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00646c  9b94f1ff  ori r9, r3, 4095
006470  5b080000  j 64
006474  1f018fd6  addli r2, r30, -5312
006478  00a00000  mfence { lm }
00647c  6b5a0f00  load.d r[21:22], 0(r30)
006480  ab0100f0  lui r3, 983040
006484  00530102  load_param_i r6, 2
006488  e3058fd5  loadli.w r11,  -5440(r30)
00648c  6b5b0100  load.d r[23:24], 0(r2)
006490  8b101310  add.s r1, r6, r1
006494  97913500  or r3, r11, r3
006498  0b2a6a11  add.ul r[21:22], r[21:22], r[23:24]
00649c  ff317a00  s_lm2gm r3, r7, 0(r[21:22])
0064a0  00a00200  mfence { lm, gm }
0064a4  63411f00  loadli.w r2,  12(r30)
0064a8  3fa02000  blt.s r1, r2, 8
0064ac  5b650000  j 808
0064b0  63011f00  loadli.w r2,  8(r30)
0064b4  8b912010  add.s r3, r1, r2
0064b8  1f210000  addli r2, zero, 2
0064bc  8b91f120  mul.s r3, r3, r15
0064c0  339a0128  sext_int2long r[21:22], r3
0064c4  ab0100f0  lui r3, 983040
0064c8  173c2a02  sll.d r[25:26], r[21:22], r2
0064cc  1f017fd6  addli r2, r30, -5320
0064d0  97913500  or r3, r11, r3
0064d4  6b5a0100  load.d r[21:22], 0(r2)
0064d8  1f018fd6  addli r2, r30, -5312
0064dc  0b2b8a11  add.ul r[23:24], r[21:22], r[25:26]
0064e0  ff217b00  l_gm2lm r3, r7, 0(r[23:24])
0064e4  00a00200  mfence { lm, gm }
0064e8  73308101  store.d r[25:26], 0(r2)
0064ec  bf978200  blt.s r5, r8, 484
0064f0  9f0b0000  addli r23, zero, 0
0064f4  1f0b0000  addli r22, zero, 0
0064f8  1f0c0000  addli r24, zero, 0
0064fc  db0c0000  j 100
006500  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
006504  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
006508  1f1c0c00  addli r24, r24, 1
00650c  6a7105c0  vsrl.p vr2, r10, vr0
006510  ea7115c0  vsrl.p vr3, r10, vr1
006514  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006518  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00651c  6a7106c0  vsrl.p vr2, r12, vr0
006520  ea7116c0  vsrl.p vr3, r12, vr1
006524  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006528  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00652c  6af106c0  vsrl.p vr2, r13, vr0
006530  eaf116c0  vsrl.p vr3, r13, vr1
006534  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006538  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00653c  6a7108c0  vsrl.p vr2, r16, vr0
006540  ea7118c0  vsrl.p vr3, r16, vr1
006544  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
006548  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00654c  7a110040  vextracti.f r2, 0(vr0)
006550  fa910040  vextracti.f r3, 0(vr1)
006554  8beb2b10  add.f.rn r23, r23, r2
006558  0b6b3b10  add.f.rn r22, r22, r3
00655c  b7755c00  beq r24, r5, 380
006560  9f010c00  addli r3, r24, 0
006564  3730a700  beq r14, r10, 12
006568  97219c00  xor r3, r24, r9
00656c  8b913210  add.s r3, r5, r3
006570  1f010fd7  addli r2, r30, -5248
006574  0b93e120  mul.s r6, r3, r14
006578  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
00657c  0b936718  sub.s r6, r15, r6
006580  8b1ce340  min.s r25, r6, r14
006584  12321002  vadd.s.mz vr4{mr1}, zero, vr1
006588  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00658c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
006590  bfcd8cfe  blt.s r25, r8, -144
006594  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
006598  1f0d0000  addli r26, zero, 0
00659c  8b1d3220  mul.s r27, r4, r3
0065a0  1f0e8fd7  addli r28, r30, -5184
0065a4  9f850800  addli r11, r17, 0
0065a8  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0065ac  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0065b0  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0065b4  8b91b511  add.s r3, r11, r27
0065b8  0b13be11  add.s r6, r28, r27
0065bc  1f818100  addli r2, r3, 64
0065c0  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
0065c4  1f8a8101  addli r20, r3, 192
0065c8  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
0065cc  9f0a8301  addli r21, r6, 192
0065d0  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
0065d4  1f810101  addli r2, r3, 128
0065d8  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
0065dc  1f0a0301  addli r20, r6, 128
0065e0  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
0065e4  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
0065e8  c2150a02  vload_mask16.mz vr11{mr1}, 0(r20)
0065ec  1f018300  addli r2, r6, 64
0065f0  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
0065f4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0065f8  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0065fc  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
006600  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
006604  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
006608  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00660c  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
006610  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
006614  1f018d00  addli r2, r26, 64
006618  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
00661c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
006620  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006624  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
006628  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00662c  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
006630  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
006634  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
006638  4bab2cfe  ble.s r25, r2, -312
00663c  1f8a0102  addli r20, r3, 256
006640  9f8a8102  addli r21, r3, 320
006644  1f010302  addli r2, r6, 256
006648  1f0d0d01  addli r26, r26, 128
00664c  9f850504  addli r11, r11, 512
006650  1f0e0e04  addli r28, r28, 512
006654  4a100a02  vloads_mask16.mz vr0{mr1}, 0(r20)
006658  1f8a0103  addli r20, r3, 384
00665c  9f818103  addli r3, r3, 448
006660  ca920a02  vloads_mask16.mz vr5{mr1}, 0(r21)
006664  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
006668  ca130a02  vloads_mask16.mz vr7{mr1}, 0(r20)
00666c  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
006670  9f010303  addli r3, r6, 384
006674  1f0a8302  addli r20, r6, 320
006678  1f038303  addli r6, r6, 448
00667c  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
006680  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
006684  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
006688  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
00668c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
006690  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
006694  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
006698  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00669c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0066a0  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
0066a4  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0066a8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0066ac  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0066b0  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
0066b4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0066b8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0066bc  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0066c0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0066c4  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0066c8  bf3b9dff  blt.s r26, r25, -276
0066cc  dbc6ffff  j -460
0066d0  1f0b0000  addli r22, zero, 0
0066d4  9f0b0000  addli r23, zero, 0
0066d8  00a00000  mfence { lm }
0066dc  3fe687fe  blt.s r15, r8, -616
0066e0  63017fd5  loadli.w r2,  -5448(r30)
0066e4  9f050000  addli r11, zero, 0
0066e8  1f0c0000  addli r24, zero, 0
0066ec  8f812b18  div.f.rn r3, r23, r2
0066f0  0f032b18  div.f.rn r6, r22, r2
0066f4  63013f00  loadli.w r2,  24(r30)
0066f8  0beb3120  mul.f.rn r22, r3, r3
0066fc  8beb0158  neg.f r23, r3
006700  0b636319  sub.f.rn r6, r6, r22
006704  0b632310  add.f.rn r6, r6, r2
006708  2b01803f  lui r2, 260096
00670c  0f030308  sqrt.f.rn r6, r6
006710  0f0b6118  div.f.rn r22, r2, r6
006714  0b932511  add.s r6, r11, r18
006718  8b91b310  add.s r3, r7, r11
00671c  9f0c8300  addli r25, r6, 64
006720  4a110302  vloads_mask16.mz vr2{mr1}, 0(r6)
006724  0b933511  add.s r6, r11, r19
006728  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00672c  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
006730  9f8c8100  addli r25, r3, 64
006734  4a120302  vloads_mask16.mz vr4{mr1}, 0(r6)
006738  1f038300  addli r6, r6, 64
00673c  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
006740  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
006744  1f034c00  addli r6, r24, 32
006748  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
00674c  92925b02  vadd.f.mz.rn vr5{mr1}, r23, vr5
006750  8a101b02  vmul.f.mz.rn vr1{mr1}, r22, vr1
006754  8a125b02  vmul.f.mz.rn vr5{mr1}, r22, vr5
006758  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
00675c  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
006760  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
006764  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
006768  4bb467fe  ble.s r15, r6, -756
00676c  0b13b910  add.s r6, r18, r11
006770  8b9cb910  add.s r25, r19, r11
006774  1f0c8c00  addli r24, r24, 64
006778  9f850502  addli r11, r11, 256
00677c  1f0d0301  addli r26, r6, 128
006780  9f8d0c01  addli r27, r25, 128
006784  1f038301  addli r6, r6, 192
006788  9f8c8c01  addli r25, r25, 192
00678c  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
006790  1f8d0101  addli r26, r3, 128
006794  9f818101  addli r3, r3, 192
006798  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
00679c  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
0067a0  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
0067a4  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
0067a8  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0067ac  92913b02  vadd.f.mz.rn vr3{mr1}, r23, vr3
0067b0  12924b02  vadd.f.mz.rn vr4{mr1}, r23, vr4
0067b4  8a113b02  vmul.f.mz.rn vr3{mr1}, r22, vr3
0067b8  0a124b02  vmul.f.mz.rn vr4{mr1}, r22, vr4
0067bc  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
0067c0  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
0067c4  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
0067c8  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
0067cc  3f2dfcfe  blt.s r24, r15, -184
0067d0  db94ffff  j -860
0067d4  9f0e0fd4  addli sp, r30, -5632
0067d8  e38fae2b  loadli.w r31,  5584(sp)
0067dc  63cfae2b  loadli.w r30,  5588(sp)
0067e0  638ebe2b  loadli.w r28,  5592(sp)
0067e4  e3cdbe2b  loadli.w r27,  5596(sp)
0067e8  638dce2b  loadli.w r26,  5600(sp)
0067ec  e3ccce2b  loadli.w r25,  5604(sp)
0067f0  638cde2b  loadli.w r24,  5608(sp)
0067f4  e3cbde2b  loadli.w r23,  5612(sp)
0067f8  638bee2b  loadli.w r22,  5616(sp)
0067fc  e3caee2b  loadli.w r21,  5620(sp)
006800  638afe2b  loadli.w r20,  5624(sp)
006804  e3c9fe2b  loadli.w r19,  5628(sp)
006808  9f8e0e2c  addli sp, sp, 5632
00680c  5f800f00  jr r31, 0
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
006a4c  00100000  exit
