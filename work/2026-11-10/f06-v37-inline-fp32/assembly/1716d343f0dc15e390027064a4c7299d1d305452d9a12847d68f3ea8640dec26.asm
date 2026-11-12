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
000028  0b864138  mod.u r12, r3, r4
00002c  9f450000  addli r11, zero, 4
000030  8b86b030  div.u r13, r1, r11
000034  1f160600  addli r12, r12, 1
000038  8b00d620  mul.u r1, r12, r13
00003c  8b805010  add.u r1, r1, r5
000040  9f8e0000  addli sp, r1, 0
000044  1bba6700  slli r20, r15, 6
000048  978e4e01  and sp, sp, r20
00004c  cb003200  ble.s r4, r3, 32
000050  80520202  load_param_i r5, 4
000054  00d20102  load_param_i r4, 3
000058  ab0900f0  lui r19, 983040
00005c  9f496000  addli r19, zero, 52
000060  1f8a8eff  addli r20, sp, -64
000064  ff494201  bl_gm2lm r19, r20, 0(r[5:6])
000068  00a00200  mfence { lm, gm }
00006c  abfa0000  lui r21, 15
000070  9b9afaff  ori r21, r21, 4095
000074  80a10a04  csr_set csr3, r21
000078  00d00100  sync_group
00007c  fe8007e0  vmmov mr1, r15
000080  fe900720  vmmovh mr1, r15
000084  d7160000  jal 180
000088  fe8007e0  vmmov mr1, r15
00008c  fe900720  vmmovh mr1, r15
000090  1f8a8eff  addli r20, sp, -64
000094  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
000098  46000a02  vstore.mz vr0{mr1}, 0(r20)
00009c  00a00100  mfence { lm, sm }
0000a0  00d00100  sync_group
0000a4  97a01000  xor r1, r1, r1
0000a8  1f8f0e00  addli r30, sp, 0
0000ac  d7160000  jal 180
0000b0  00400000  trap
0000b4  9f8ecefd  addli sp, sp, -288
0000b8  1f8fce01  addli r30, sp, 224
0000bc  9f100000  addli r1, zero, 1
0000c0  003a0002  core_id r20
0000c4  630e6f00  loadli.w r28,  48(r30)
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  b7100a00  beq r20, zero, 36
0000d0  2bf1ffff  lui r2, 1048575
0000d4  7d900000  xwait r1, 0
0000d8  7d900000  xwait r1, 0
0000dc  7d100000  xwait zero, 0
0000e0  9b10f1ff  ori r1, r2, 4095
0000e4  80a10004  csr_set csr3, r1
0000e8  00d00100  sync_group
0000ec  db250000  j 300
0000f0  1f220000  addli r4, zero, 2
0000f4  fdd00000  uni_sram_cfg r1, r1
0000f8  9f420000  addli r5, zero, 4
0000fc  6b510f02  load.d r[3:4], 32(r30)
000100  1f030020  addli r6, zero, 4096
000104  1d000200  lock zero, r4
000108  8d000020  ew_cfg r1, zero, zero, 16
00010c  1d100200  unlock r4
000110  1d800200  lock zero, r5
000114  15000000  dma_cfg zero, zero, zero, 0
000118  15800104  dma_cfg zero, r3, zero, 2
00011c  15006106  dma_cfg zero, r2, r6, 3
000120  1f014000  addli r2, zero, 32
000124  9f010008  addli r3, zero, 1024
000128  15001008  dma_cfg zero, zero, r1, 4
00012c  35000000  dma_run zero
000130  1d900200  unlock r5
000134  7d800000  xsignal r1, 0
000138  7d900000  xwait r1, 0
00013c  1d000000  lock zero, zero
000140  01020000  ds_cfg r4, zero, 0
000144  01000002  ds_cfg zero, zero, 1
000148  01000016  ds_cfg zero, zero, 11
00014c  0101001a  ds_cfg r2, zero, 13
000150  1f510000  addli r2, zero, 5
000154  8101001c  ds_cfg r3, zero, 14
000158  21133008  shuffle_batch r6, zero, r3, 4
00015c  1d100000  unlock zero
000160  7d800000  xsignal r1, 0
000164  7d900000  xwait r1, 0
000168  1d000200  lock zero, r4
00016c  ab100100  lui r1, 17
000170  0d200300  ewtable_cfg r6, 0
000174  0da00002  ewtable_cfg r1, 1
000178  abf0ffff  lui r1, 1048575
00017c  1d100200  unlock r4
000180  7d000000  xsignal zero, 0
000184  7d100000  xwait zero, 0
000188  9b90f0ff  ori r1, r1, 4095
00018c  80a10004  csr_set csr3, r1
000190  9f300000  addli r1, zero, 3
000194  00d00100  sync_group
000198  7d800000  xsignal r1, 0
00019c  9f700000  addli r1, zero, 7
0001a0  7d800000  xsignal r1, 0
0001a4  7d000100  xsignal r2, 0
0001a8  9f301000  addli r1, zero, 11
0001ac  1f111000  addli r2, zero, 9
0001b0  7d800000  xsignal r1, 0
0001b4  7d000100  xsignal r2, 0
0001b8  9f501000  addli r1, zero, 13
0001bc  1f216000  addli r2, zero, 50
0001c0  7d800000  xsignal r1, 0
0001c4  7d000100  xsignal r2, 0
0001c8  9f402000  addli r1, zero, 20
0001cc  1f612000  addli r2, zero, 22
0001d0  7d800000  xsignal r1, 0
0001d4  7d000100  xsignal r2, 0
0001d8  9f003000  addli r1, zero, 24
0001dc  1f713000  addli r2, zero, 31
0001e0  7d800000  xsignal r1, 0
0001e4  7d000100  xsignal r2, 0
0001e8  9f305000  addli r1, zero, 43
0001ec  1f314000  addli r2, zero, 35
0001f0  7d800000  xsignal r1, 0
0001f4  7d000100  xsignal r2, 0
0001f8  9f704000  addli r1, zero, 39
0001fc  1f615000  addli r2, zero, 46
000200  7d800000  xsignal r1, 0
000204  7d000100  xsignal r2, 0
000208  9f306000  addli r1, zero, 51
00020c  1f416000  addli r2, zero, 52
000210  7d800000  xsignal r1, 0
000214  7d000100  xsignal r2, 0
000218  e3005f00  loadli.w r1,  40(r30)
00021c  63415f00  loadli.w r2,  44(r30)
000220  00d20002  load_param_i r4, 1
000224  e3016f00  loadli.w r3,  48(r30)
000228  8b101120  mul.s r1, r2, r1
00022c  1f010200  addli r2, r4, 0
000230  0b913050  fmac.s r2, r1, r3
000234  8b913020  mul.s r3, r1, r3
000238  1f71f1ff  addli r2, r2, -1
00023c  0b114130  div.s r2, r2, r4
000240  00520002  load_param_i r4, 0
000244  8b104120  mul.s r1, r2, r4
000248  0b114150  fmac.s r2, r2, r4
00024c  0b113140  min.s r2, r2, r3
000250  4b30110c  ble.s r2, r1, 6156
000254  33110128  sext_int2long r[3:4], r2
000258  1f5b0000  addli r22, zero, 5
00025c  9f2c0000  addli r25, zero, 2
000260  9f7a7000  addli r21, zero, 63
000264  9f028000  addli r5, zero, 64
000268  2b490000  lui r18, 4
00026c  9f794000  addli r19, zero, 39
000270  2b0c807f  lui r24, 522240
000274  733c2ff2  store.d r[3:4], -200(r30)
000278  b3910028  sext_int2long r[4:5], r1
00027c  abc00000  lui r1, 12
000280  2b010100  lui r2, 16
000284  9b900010  ori r1, r1, 256
000288  67081ffe  storeli.w r1, -128(r30)
00028c  ab20373d  lui r1, 250738
000290  9b903071  ori r1, r1, 1811
000294  67031ffe  storeli.w r1, -208(r30)
000298  9b100110  ori r1, r2, 256
00029c  2b810100  lui r2, 24
0002a0  e7471ffe  storeli.w r1, -132(r30)
0002a4  ab400100  lui r1, 20
0002a8  9b1b0110  ori r23, r2, 256
0002ac  2bf1ff7f  lui r2, 524287
0002b0  9b900010  ori r1, r1, 256
0002b4  e70f7fff  storeli.w r23, -8(r30)
0002b8  e7071ffe  storeli.w r1, -136(r30)
0002bc  ab200200  lui r1, 34
0002c0  9b900010  ori r1, r1, 256
0002c4  67491ffe  storeli.w r1, -108(r30)
0002c8  9b10f1ff  ori r1, r2, 4095
0002cc  2b414c3f  lui r2, 259268
0002d0  e74f1ffe  storeli.w r1, -4(r30)
0002d4  ab600200  lui r1, 38
0002d8  9b900010  ori r1, r1, 256
0002dc  67431ffe  storeli.w r1, -204(r30)
0002e0  9b10a122  ori r1, r2, 554
0002e4  2b810200  lui r2, 40
0002e8  e7421ffe  storeli.w r1, -212(r30)
0002ec  aba00200  lui r1, 42
0002f0  9b900010  ori r1, r1, 256
0002f4  e7021ffe  storeli.w r1, -216(r30)
0002f8  9b102184  ori r1, r2, 2114
0002fc  67421ffe  storeli.w r1, -220(r30)
000300  5b0e0000  j 112
000304  9f300000  addli r1, zero, 3
000308  00200100  mfence { sm }
00030c  9f794000  addli r19, zero, 39
000310  630e6f00  loadli.w r28,  48(r30)
000314  003a0002  core_id r20
000318  1f5b0000  addli r22, zero, 5
00031c  9f2c0000  addli r25, zero, 2
000320  9f7a7000  addli r21, zero, 63
000324  9f028000  addli r5, zero, 64
000328  2b490000  lui r18, 4
00032c  7d800000  xsignal r1, 0
000330  9f402000  addli r1, zero, 20
000334  7d800000  xsignal r1, 0
000338  9f304000  addli r1, zero, 35
00033c  7d800000  xsignal r1, 0
000340  9f305000  addli r1, zero, 43
000344  7d800900  xsignal r19, 0
000348  7d800000  xsignal r1, 0
00034c  9f106000  addli r1, zero, 49
000350  7d800000  xsignal r1, 0
000354  37500a04  beq r20, zero, 2068
000358  eb510ff5  load.d r[4:5], -176(r30)
00035c  eb508ff3  load.d r[2:3], -200(r30)
000360  2b0c807f  lui r24, 522240
000364  a7910100  addli.d r[4:5], r[4:5], 1
000368  93b01104  setlt.sl r1, r[4:5], r[2:3]
00036c  b7cb000a  beq r1, zero, 5872
000370  2b010200  lui r2, 32
000374  73383ff4  store.d r[4:5], -176(r30)
000378  8b90c131  div.s r1, r3, r28
00037c  338d0228  zext_int2long r[27:28], r5
000380  9b110110  ori r3, r2, 256
000384  67093ffe  storeli.w r3, -112(r30)
000388  9b111110  ori r3, r2, 257
00038c  e70d3ffe  storeli.w r3, -40(r30)
000390  9b112110  ori r3, r2, 258
000394  1b113110  ori r2, r2, 259
000398  674f2ffe  storeli.w r2, -12(r30)
00039c  63415f00  loadli.w r2,  44(r30)
0003a0  674e3ffe  storeli.w r3, -28(r30)
0003a4  9f010100  addli r3, r2, 0
0003a8  0b913038  mod.s r2, r1, r3
0003ac  8b903030  div.s r1, r1, r3
0003b0  abc10100  lui r3, 28
0003b4  1b920110  ori r4, r3, 256
0003b8  674d4ffe  storeli.w r4, -44(r30)
0003bc  1b921110  ori r4, r3, 257
0003c0  670d4ffe  storeli.w r4, -48(r30)
0003c4  1b922110  ori r4, r3, 258
0003c8  9b913110  ori r3, r3, 259
0003cc  e74d3ffe  storeli.w r3, -36(r30)
0003d0  abe10100  lui r3, 30
0003d4  670e4ffe  storeli.w r4, -32(r30)
0003d8  1b920110  ori r4, r3, 256
0003dc  e74c4ffe  storeli.w r4, -52(r30)
0003e0  1b921110  ori r4, r3, 257
0003e4  e70e4ffe  storeli.w r4, -24(r30)
0003e8  1b922110  ori r4, r3, 258
0003ec  9b913110  ori r3, r3, 259
0003f0  e74e3ffe  storeli.w r3, -20(r30)
0003f4  abc10000  lui r3, 12
0003f8  670f4ffe  storeli.w r4, -16(r30)
0003fc  1b92c110  ori r4, r3, 268
000400  67484ffe  storeli.w r4, -124(r30)
000404  1b928110  ori r4, r3, 264
000408  9b914110  ori r3, r3, 260
00040c  e7484ffe  storeli.w r4, -116(r30)
000410  e7083ffe  storeli.w r3, -120(r30)
000414  b3810a28  zext_int2long r[4:5], r21
000418  73383ff6  store.d r[4:5], -144(r30)
00041c  b3910028  sext_int2long r[4:5], r1
000420  73303ff4  store.d r[4:5], -192(r30)
000424  33110128  sext_int2long r[3:4], r2
000428  3b756a01  bneq r20, r22, 348
00042c  1f320000  addli r4, zero, 3
000430  9f000000  addli r1, zero, 0
000434  7d100200  xwait r4, 0
000438  1d800c00  lock zero, r25
00043c  1f620000  addli r4, zero, 6
000440  0d000002  ew_cfg zero, zero, zero, 1
000444  0d100000  ewcoeff_cfg zero, zero, zero, 0
000448  17314102  sll.d r[3:4], r[3:4], r4
00044c  2b820000  lui r4, 8
000450  0d800a04  ew_cfg zero, r21, zero, 2
000454  8d020006  ew_cfg r5, zero, zero, 3
000458  4d300000  ssaux zero, 0
00045c  1d900c00  unlock r25
000460  73342ff4  store.d r[3:4], -184(r30)
000464  1f411000  addli r2, zero, 12
000468  7d100100  xwait r2, 0
00046c  1f611000  addli r2, zero, 14
000470  7d100100  xwait r2, 0
000474  1d800c00  lock zero, r25
000478  2b01803f  lui r2, 260096
00047c  0d000002  ew_cfg zero, zero, zero, 1
000480  0d110100  ewcoeff_cfg r2, r2, zero, 0
000484  1f110000  addli r2, zero, 1
000488  0d800a04  ew_cfg zero, r21, zero, 2
00048c  0d010006  ew_cfg r2, zero, zero, 3
000490  e3010fff  loadli.w r3,  -128(r30)
000494  0b913010  add.s r2, r1, r3
000498  9f800002  addli r1, r1, 256
00049c  2d014100  dsmadd r2, r2, r4, 0
0004a0  bbdf20ff  bneq r1, r18, -12
0004a4  1f511000  addli r2, zero, 13
0004a8  e7450ffe  storeli.w zero, -164(r30)
0004ac  670c0ffe  storeli.w zero, -64(r30)
0004b0  9f72f00f  addli r5, zero, 2047
0004b4  9f800100  addli r1, r3, 0
0004b8  1f050000  addli r10, zero, 0
0004bc  9f0a0000  addli r21, zero, 0
0004c0  1f0c0000  addli r24, zero, 0
0004c4  9f010000  addli r3, zero, 0
0004c8  1d900c00  unlock r25
0004cc  7d000100  xsignal r2, 0
0004d0  1f212000  addli r2, zero, 18
0004d4  7d000100  xsignal r2, 0
0004d8  1f312000  addli r2, zero, 19
0004dc  7d000100  xsignal r2, 0
0004e0  1f612000  addli r2, zero, 22
0004e4  7d100100  xwait r2, 0
0004e8  1d800c00  lock zero, r25
0004ec  0d000002  ew_cfg zero, zero, zero, 1
0004f0  63016ffe  loadli.w r2,  -208(r30)
0004f4  0d110000  ewcoeff_cfg r2, zero, zero, 0
0004f8  0d800204  ew_cfg zero, r5, zero, 2
0004fc  8d0c0006  ew_cfg r25, zero, zero, 3
000500  8d8c0c26  ew_cfg r25, r25, zero, 19
000504  6342fffe  loadli.w r4,  -132(r30)
000508  4dd21000  hp_ssmul r4, r1, r1, 0
00050c  1f522000  addli r4, zero, 21
000510  0d000026  ew_cfg zero, zero, zero, 19
000514  1d900c00  unlock r25
000518  7d000200  xsignal r4, 0
00051c  1f023000  addli r4, zero, 24
000520  7d100200  xwait r4, 0
000524  1d800c00  lock zero, r25
000528  0d000002  ew_cfg zero, zero, zero, 1
00052c  0d102000  ewcoeff_cfg zero, zero, r2, 0
000530  0d800204  ew_cfg zero, r5, zero, 2
000534  8d0c0006  ew_cfg r25, zero, zero, 3
000538  8d8c9c27  ew_cfg r25, r25, r25, 19
00053c  6301fffe  loadli.w r2,  -136(r30)
000540  2d911000  dsmul r2, r1, r1, 0
000544  9f701000  addli r1, zero, 15
000548  0d000026  ew_cfg zero, zero, zero, 19
00054c  1d900c00  unlock r25
000550  7d800000  xsignal r1, 0
000554  9f702000  addli r1, zero, 23
000558  7d800000  xsignal r1, 0
00055c  3d000000  xfence
000560  9f70f001  addli r1, zero, 255
000564  00a00300  mfence { lm, sm, gm }
000568  80a20004  csr_set csr5, r1
00056c  00e00200  sync_core
000570  37790a02  beq r20, zero, 1628
000574  bb1b0c02  bneq r24, zero, 1764
000578  634c2fff  loadli.w r24,  -108(r30)
00057c  bb8d0a02  bneq r21, zero, 1888
000580  dbfa0000  j 2004
000584  9f600000  addli r1, zero, 6
000588  e7450ffe  storeli.w zero, -164(r30)
00058c  97301102  sll.d r[2:3], r[3:4], r1
000590  73341ff4  store.d r[2:3], -184(r30)
000594  9f300000  addli r1, zero, 3
000598  3f884009  blt.s r1, r20, 4608
00059c  e30adfff  loadli.w r21,  -24(r30)
0005a0  9f100000  addli r1, zero, 1
0005a4  b7491a08  beq r20, r1, 4720
0005a8  b75f9a09  beq r20, r25, 5108
0005ac  9f300000  addli r1, zero, 3
0005b0  bb1d1a08  bneq r20, r1, 4964
0005b4  9f701000  addli r1, zero, 15
0005b8  33010028  zext_int2long r[3:4], zero
0005bc  2bc90000  lui r18, 12
0005c0  7d900000  xwait r1, 0
0005c4  9f703000  addli r1, zero, 31
0005c8  7d900000  xwait r1, 0
0005cc  3d000000  xfence
0005d0  00a00300  mfence { lm, sm, gm }
0005d4  73302ffc  store.d r[3:4], -64(r30)
0005d8  a7000100  addli.d r[2:3], r[3:4], 0
0005dc  e3090fff  loadli.w r19,  -128(r30)
0005e0  634affff  loadli.w r20,  -4(r30)
0005e4  e34ccfff  loadli.w r25,  -28(r30)
0005e8  634b0fff  loadli.w r22,  -124(r30)
0005ec  9f620000  addli r5, zero, 6
0005f0  eb540ffc  load.d r[10:11], -64(r30)
0005f4  634e1fff  loadli.w r28,  -116(r30)
0005f8  e3011fff  loadli.w r3,  -120(r30)
0005fc  97b25002  sll.d r[6:7], r[2:3], r5
000600  8ba35410  add.ul r[8:9], r[10:11], r[6:7]
000604  9b17c911  ori r15, r18, 284
000608  1b188911  ori r16, r18, 280
00060c  9b184911  ori r17, r18, 276
000610  a7841400  addli.d r[10:11], r[10:11], 8
000614  9bb32300  slli r7, r7, 2
000618  1b140911  ori r8, r18, 272
00061c  0b966311  add.s r12, r7, r22
000620  8b953311  add.s r11, r7, r19
000624  0b948310  add.s r8, r7, r8
000628  8b96c311  add.s r13, r7, r28
00062c  0b973310  add.s r14, r7, r3
000630  8b97f310  add.s r15, r7, r15
000634  0b980311  add.s r16, r7, r16
000638  8b981311  add.s r17, r7, r17
00063c  8b937311  add.s r7, r7, r23
000640  6f460600  loads.w r12, 0(r12)
000644  efc60600  loads.w r13, 0(r13)
000648  6f470700  loads.w r14, 0(r14)
00064c  efc50500  loads.w r11, 0(r11)
000650  6f440400  loads.w r8, 0(r8)
000654  efc80800  loads.w r17, 0(r17)
000658  6f480800  loads.w r16, 0(r16)
00065c  efc70700  loads.w r15, 0(r15)
000660  17064601  and r12, r12, r20
000664  97854501  and r11, r11, r20
000668  17074701  and r14, r14, r20
00066c  97864601  and r13, r13, r20
000670  17044401  and r8, r8, r20
000674  97884801  and r17, r17, r20
000678  17084801  and r16, r16, r20
00067c  97874701  and r15, r15, r20
000680  73e6c300  stores.w r12, 12(r7)
000684  13a6a403  setneq.d r12, r[10:11], r[27:28]
000688  73e4d300  stores.w r13, 8(r7)
00068c  73e2e300  stores.w r14, 4(r7)
000690  73e0b300  stores.w r11, 0(r7)
000694  73eef300  stores.w r15, 28(r7)
000698  73ec0301  stores.w r16, 24(r7)
00069c  73ea1301  stores.w r17, 20(r7)
0006a0  73e88300  stores.w r8, 16(r7)
0006a4  3b7d06fe  bneq r12, zero, -164
0006a8  eb510ff7  load.d r[4:5], -144(r30)
0006ac  93a23004  setlt.ul r5, r[2:3], r[4:5]
0006b0  a7900000  addli.d r[2:3], r[2:3], 1
0006b4  bbec02fe  bneq r5, zero, -200
0006b8  9f002000  addli r1, zero, 16
0006bc  00200100  mfence { sm }
0006c0  7d800000  xsignal r1, 0
0006c4  9f103000  addli r1, zero, 25
0006c8  7d800000  xsignal r1, 0
0006cc  7d900000  xwait r1, 0
0006d0  9f304000  addli r1, zero, 35
0006d4  7d900000  xwait r1, 0
0006d8  3d000000  xfence
0006dc  b3000028  zext_int2long r[2:3], zero
0006e0  00a00300  mfence { lm, sm, gm }
0006e4  634a9fff  loadli.w r20,  -52(r30)
0006e8  a7810000  addli.d r[4:5], r[2:3], 0
0006ec  9f620000  addli r5, zero, 6
0006f0  9f730000  addli r7, zero, 7
0006f4  630befff  loadli.w r22,  -16(r30)
0006f8  634edfff  loadli.w r28,  -20(r30)
0006fc  a7850000  addli.d r[12:13], r[2:3], 0
000700  97b25102  sll.d r[6:7], r[4:5], r5
000704  97b47102  sll.d r[10:11], r[4:5], r7
000708  8ba35510  add.ul r[8:9], r[12:13], r[6:7]
00070c  8ba79510  add.ul r[16:17], r[12:13], r[10:11]
000710  a7c50500  addli.d r[12:13], r[12:13], 4
000714  9bb32300  slli r7, r7, 2
000718  13a9a503  setneq.d r18, r[12:13], r[27:28]
00071c  8b984711  add.s r17, r15, r20
000720  8b995711  add.s r19, r15, r21
000724  8b937311  add.s r7, r7, r23
000728  6fc40300  loads.w r8, 0(r7)
00072c  efc64300  loads.w r13, 4(r7)
000730  6fc78300  loads.w r14, 8(r7)
000734  efc3c300  loads.w r7, 12(r7)
000738  13048c04  setlt.u r8, r24, r8
00073c  9306dc04  setlt.u r13, r24, r13
000740  1307ec04  setlt.u r14, r24, r14
000744  93037c04  setlt.u r7, r24, r7
000748  73c08800  stores.b r8, 0(r17)
00074c  0b946711  add.s r8, r15, r22
000750  8b97c711  add.s r15, r15, r28
000754  73c0d900  stores.b r13, 0(r19)
000758  7340e400  stores.b r14, 0(r8)
00075c  73c07700  stores.b r7, 0(r15)
000760  bb2e09fe  bneq r18, zero, -88
000764  eb520ff7  load.d r[6:7], -144(r30)
000768  93a25104  setlt.ul r5, r[4:5], r[6:7]
00076c  a7910100  addli.d r[4:5], r[4:5], 1
000770  bbfd02fe  bneq r5, zero, -132
000774  1f213000  addli r2, zero, 26
000778  9f004000  addli r1, zero, 32
00077c  00200100  mfence { sm }
000780  7d000100  xsignal r2, 0
000784  7d800000  xsignal r1, 0
000788  9f704000  addli r1, zero, 39
00078c  7d100100  xwait r2, 0
000790  7d900000  xwait r1, 0
000794  3d000000  xfence
000798  b3000028  zext_int2long r[2:3], zero
00079c  00a00300  mfence { lm, sm, gm }
0007a0  630e6f00  loadli.w r28,  48(r30)
0007a4  630bbfff  loadli.w r22,  -40(r30)
0007a8  a7810000  addli.d r[4:5], r[2:3], 0
0007ac  9f620000  addli r5, zero, 6
0007b0  9f730000  addli r7, zero, 7
0007b4  630a2fff  loadli.w r20,  -112(r30)
0007b8  e34aefff  loadli.w r21,  -12(r30)
0007bc  a7850000  addli.d r[12:13], r[2:3], 0
0007c0  97b25102  sll.d r[6:7], r[4:5], r5
0007c4  97b47102  sll.d r[10:11], r[4:5], r7
0007c8  8ba35510  add.ul r[8:9], r[12:13], r[6:7]
0007cc  8ba79510  add.ul r[16:17], r[12:13], r[10:11]
0007d0  a7c50500  addli.d r[12:13], r[12:13], 4
0007d4  9bb32300  slli r7, r7, 2
0007d8  13a9a503  setneq.d r18, r[12:13], r[27:28]
0007dc  8b984711  add.s r17, r15, r20
0007e0  8b996711  add.s r19, r15, r22
0007e4  8b937311  add.s r7, r7, r23
0007e8  6fc40300  loads.w r8, 0(r7)
0007ec  efc64300  loads.w r13, 4(r7)
0007f0  6fc78300  loads.w r14, 8(r7)
0007f4  efc3c300  loads.w r7, 12(r7)
0007f8  13048401  seteq r8, r8, r24
0007fc  93868601  seteq r13, r13, r24
000800  13078701  seteq r14, r14, r24
000804  93838301  seteq r7, r7, r24
000808  73c08800  stores.b r8, 0(r17)
00080c  0b949711  add.s r8, r15, r25
000810  8b975711  add.s r15, r15, r21
000814  73c0d900  stores.b r13, 0(r19)
000818  7340e400  stores.b r14, 0(r8)
00081c  73c07700  stores.b r7, 0(r15)
000820  bb2e09fe  bneq r18, zero, -88
000824  eb520ff7  load.d r[6:7], -144(r30)
000828  93a25104  setlt.ul r5, r[4:5], r[6:7]
00082c  a7910100  addli.d r[4:5], r[4:5], 1
000830  bbfd02fe  bneq r5, zero, -132
000834  9f303000  addli r1, zero, 27
000838  1f414000  addli r2, zero, 36
00083c  00200100  mfence { sm }
000840  7d800000  xsignal r1, 0
000844  7d000100  xsignal r2, 0
000848  7d900000  xwait r1, 0
00084c  9f305000  addli r1, zero, 43
000850  7d900000  xwait r1, 0
000854  3d000000  xfence
000858  b3000028  zext_int2long r[2:3], zero
00085c  00a00300  mfence { lm, sm, gm }
000860  634aafff  loadli.w r20,  -44(r30)
000864  630bafff  loadli.w r22,  -48(r30)
000868  e30acfff  loadli.w r21,  -32(r30)
00086c  634cbfff  loadli.w r24,  -36(r30)
000870  a7810000  addli.d r[4:5], r[2:3], 0
000874  9f620000  addli r5, zero, 6
000878  9f730000  addli r7, zero, 7
00087c  a7850000  addli.d r[12:13], r[2:3], 0
000880  97b25102  sll.d r[6:7], r[4:5], r5
000884  97b47102  sll.d r[10:11], r[4:5], r7
000888  8ba35510  add.ul r[8:9], r[12:13], r[6:7]
00088c  8ba79510  add.ul r[16:17], r[12:13], r[10:11]
000890  a7c50500  addli.d r[12:13], r[12:13], 4
000894  9bb32300  slli r7, r7, 2
000898  13a9a503  setneq.d r18, r[12:13], r[27:28]
00089c  8b984711  add.s r17, r15, r20
0008a0  8b996711  add.s r19, r15, r22
0008a4  8b937311  add.s r7, r7, r23
0008a8  6fc40300  loads.w r8, 0(r7)
0008ac  efc64300  loads.w r13, 4(r7)
0008b0  6fc78300  loads.w r14, 8(r7)
0008b4  efc3c300  loads.w r7, 12(r7)
0008b8  13040400  seteq r8, r8, zero
0008bc  93860600  seteq r13, r13, zero
0008c0  13070700  seteq r14, r14, zero
0008c4  93830300  seteq r7, r7, zero
0008c8  73c08800  stores.b r8, 0(r17)
0008cc  0b945711  add.s r8, r15, r21
0008d0  8b978711  add.s r15, r15, r24
0008d4  73c0d900  stores.b r13, 0(r19)
0008d8  7340e400  stores.b r14, 0(r8)
0008dc  73c07700  stores.b r7, 0(r15)
0008e0  bb2e09fe  bneq r18, zero, -88
0008e4  eb520ff7  load.d r[6:7], -144(r30)
0008e8  93a25104  setlt.ul r5, r[4:5], r[6:7]
0008ec  a7910100  addli.d r[4:5], r[4:5], 1
0008f0  3b9e02fe  bneq r5, zero, -124
0008f4  9f413000  addli r3, zero, 28
0008f8  1f015000  addli r2, zero, 40
0008fc  9f502000  addli r1, zero, 21
000900  00200100  mfence { sm }
000904  2b490000  lui r18, 4
000908  7d800100  xsignal r3, 0
00090c  7d000100  xsignal r2, 0
000910  7d900000  xwait r1, 0
000914  9f702000  addli r1, zero, 23
000918  7d900000  xwait r1, 0
00091c  9f004000  addli r1, zero, 32
000920  7d900100  xwait r3, 0
000924  7d900000  xwait r1, 0
000928  9f404000  addli r1, zero, 36
00092c  7d900000  xwait r1, 0
000930  7d100100  xwait r2, 0
000934  b3000028  zext_int2long r[2:3], zero
000938  3d000000  xfence
00093c  00a00300  mfence { lm, sm, gm }
000940  73341ffa  store.d r[2:3], -88(r30)
000944  27810000  addli.d r[3:4], r[2:3], 0
000948  5b030000  j 24
00094c  eb500ff7  load.d r[2:3], -144(r30)
000950  eb510ffb  load.d r[4:5], -80(r30)
000954  93a01104  setlt.ul r1, r[4:5], r[2:3]
000958  27910100  addli.d r[3:4], r[4:5], 1
00095c  37cf0006  beq r1, zero, 4048
000960  9f600000  addli r1, zero, 6
000964  eb598ffa  load.d r[20:21], -88(r30)
000968  73382ffa  store.d r[3:4], -80(r30)
00096c  17321102  sll.d r[5:6], r[3:4], r1
000970  9f700000  addli r1, zero, 7
000974  97301102  sll.d r[2:3], r[3:4], r1
000978  73304ffc  store.d r[5:6], -64(r30)
00097c  733c1ffa  store.d r[2:3], -72(r30)
000980  5b050000  j 40
000984  a7c90900  addli.d r[20:21], r[20:21], 4
000988  e34ccfff  loadli.w r25,  -28(r30)
00098c  8b907011  add.s r1, r1, r23
000990  93a1a903  setneq.d r3, r[20:21], r[27:28]
000994  73e67000  stores.w r7, 12(r1)
000998  73e42000  stores.w r2, 8(r1)
00099c  73e25001  stores.w r21, 4(r1)
0009a0  73e06000  stores.w r6, 0(r1)
0009a4  b7ae01fe  beq r3, zero, -88
0009a8  eb500ffc  load.d r[2:3], -64(r30)
0009ac  6b528ffb  load.d r[5:6], -72(r30)
0009b0  6346efff  loadli.w r12,  -12(r30)
0009b4  e304cfff  loadli.w r9,  -32(r30)
0009b8  e306efff  loadli.w r13,  -16(r30)
0009bc  6348dfff  loadli.w r16,  -20(r30)
0009c0  8ba01910  add.ul r[2:3], r[20:21], r[2:3]
0009c4  8ba24910  add.ul r[6:7], r[20:21], r[5:6]
0009c8  6342afff  loadli.w r4,  -44(r30)
0009cc  9bb02000  slli r1, r1, 2
0009d0  6341fffe  loadli.w r2,  -132(r30)
0009d4  0b946211  add.s r8, r5, r22
0009d8  0b958211  add.s r10, r5, r24
0009dc  0b96c210  add.s r12, r5, r12
0009e0  8b949210  add.s r9, r5, r9
0009e4  8b96d210  add.s r13, r5, r13
0009e8  0b924210  add.s r4, r5, r4
0009ec  6f1b0400  loads.bu r22, 0(r8)
0009f0  6304bfff  loadli.w r8,  -40(r30)
0009f4  ef950400  loads.bu r11, 0(r9)
0009f8  8b949211  add.s r9, r5, r25
0009fc  ab0c807f  lui r25, 522240
000a00  ef9b0600  loads.bu r23, 0(r13)
000a04  e306fffe  loadli.w r13,  -136(r30)
000a08  6f150500  loads.bu r10, 0(r10)
000a0c  8b912010  add.s r3, r1, r2
000a10  6f170200  loads.bu r14, 0(r4)
000a14  63022fff  loadli.w r4,  -112(r30)
000a18  ef940400  loads.bu r9, 0(r9)
000a1c  efc30100  loads.w r7, 0(r3)
000a20  0b948210  add.s r8, r5, r8
000a24  8b96d010  add.s r13, r1, r13
000a28  efca4100  loads.w r21, 4(r3)
000a2c  6fc18100  loads.w r2, 8(r3)
000a30  efc1c100  loads.w r3, 12(r3)
000a34  0b924210  add.s r4, r5, r4
000a38  6f1c0400  loads.bu r24, 0(r8)
000a3c  63449fff  loadli.w r8,  -52(r30)
000a40  ef170200  loads.bu r15, 0(r4)
000a44  6f120600  loads.bu r4, 0(r12)
000a48  6306dfff  loadli.w r12,  -24(r30)
000a4c  0b948210  add.s r8, r5, r8
000a50  0b96c210  add.s r12, r5, r12
000a54  8b920211  add.s r5, r5, r16
000a58  6f130400  loads.bu r6, 0(r8)
000a5c  6344ffff  loadli.w r8,  -4(r30)
000a60  6f980200  loads.bu r16, 0(r5)
000a64  6f160600  loads.bu r12, 0(r12)
000a68  efc2c600  loads.w r5, 12(r13)
000a6c  97838300  and r7, r7, r8
000a70  13849301  seteq r8, r7, r25
000a74  93880300  seteq r17, r7, zero
000a78  93837c04  setlt.u r7, r25, r7
000a7c  efcc8600  loads.w r25, 8(r13)
000a80  17078700  and r14, r14, r8
000a84  6fc44600  loads.w r8, 4(r13)
000a88  97871701  and r15, r15, r17
000a8c  17936300  or r6, r7, r6
000a90  ab03c07f  lui r7, 523264
000a94  1717f700  or r14, r14, r15
000a98  17136700  or r6, r14, r6
000a9c  1b071300  andi r14, r6, 1
000aa0  2b03c07f  lui r6, 523264
000aa4  3b200700  bneq r14, zero, 8
000aa8  6fc30600  loads.w r6, 0(r13)
000aac  e346ffff  loadli.w r13,  -4(r30)
000ab0  ab08807f  lui r17, 522240
000ab4  9786da00  and r13, r21, r13
000ab8  ab0ac07f  lui r21, 523264
000abc  13871601  seteq r14, r13, r17
000ac0  93870600  seteq r15, r13, zero
000ac4  9386d804  setlt.u r13, r17, r13
000ac8  1707eb00  and r14, r22, r14
000acc  9707fc00  and r15, r24, r15
000ad0  1796c600  or r12, r13, r12
000ad4  1717f700  or r14, r14, r15
000ad8  1716c700  or r12, r14, r12
000adc  1b061600  andi r12, r12, 1
000ae0  3b200600  bneq r12, zero, 8
000ae4  9f0a0400  addli r21, r8, 0
000ae8  6344ffff  loadli.w r8,  -4(r30)
000aec  ab06807f  lui r13, 522240
000af0  630bafff  loadli.w r22,  -48(r30)
000af4  634cbfff  loadli.w r24,  -36(r30)
000af8  17018100  and r2, r2, r8
000afc  1304d100  seteq r8, r2, r13
000b00  13060100  seteq r12, r2, zero
000b04  13812604  setlt.u r2, r13, r2
000b08  17848500  and r8, r11, r8
000b0c  9784c400  and r9, r9, r12
000b10  17117101  or r2, r2, r23
000b14  17149400  or r8, r8, r9
000b18  17112400  or r2, r8, r2
000b1c  1b041100  andi r8, r2, 1
000b20  2b01c07f  lui r2, 523264
000b24  3b200400  bneq r8, zero, 8
000b28  1f810c00  addli r2, r25, 0
000b2c  6344ffff  loadli.w r8,  -4(r30)
000b30  e30bffff  loadli.w r23,  -8(r30)
000b34  97818100  and r3, r3, r8
000b38  1384d100  seteq r8, r3, r13
000b3c  93840100  seteq r9, r3, zero
000b40  93813604  setlt.u r3, r13, r3
000b44  17048500  and r8, r10, r8
000b48  17029200  and r4, r4, r9
000b4c  97910101  or r3, r3, r16
000b50  17124400  or r4, r8, r4
000b54  97113200  or r3, r4, r3
000b58  9b811100  andi r3, r3, 1
000b5c  bba801fe  bneq r3, zero, -472
000b60  9f830200  addli r7, r5, 0
000b64  5bc4ffff  j -480
000b68  6b510ff4  load.d r[3:4], -192(r30)
000b6c  9f202000  addli r1, zero, 18
000b70  eb538f01  load.d r[8:9], 24(r30)
000b74  1f130000  addli r6, zero, 1
000b78  97301102  sll.d r[2:3], r[3:4], r1
000b7c  eb518ff4  load.d r[4:5], -184(r30)
000b80  8ba01310  add.ul r[2:3], r[8:9], r[2:3]
000b84  9f136000  addli r7, zero, 49
000b88  97b16102  sll.d r[4:5], r[4:5], r6
000b8c  7d900300  xwait r7, 0
000b90  1d000b00  lock zero, r22
000b94  8ba03010  add.ul r[2:3], r[2:3], r[4:5]
000b98  15030000  dma_cfg r6, zero, zero, 0
000b9c  9f010002  addli r3, zero, 256
000ba0  15000302  dma_cfg zero, r6, zero, 1
000ba4  15010004  dma_cfg r2, zero, zero, 2
000ba8  63028fff  loadli.w r4,  -64(r30)
000bac  95003206  dma_cfg r1, r4, r3, 3
000bb0  9f000020  addli r1, zero, 4096
000bb4  95805108  dma_cfg r1, r3, r5, 4
000bb8  9f206000  addli r1, zero, 50
000bbc  35000000  dma_run zero
000bc0  1d100b00  unlock r22
000bc4  7d800000  xsignal r1, 0
000bc8  5bf2feff  j -2160
000bcc  b3000028  zext_int2long r[2:3], zero
000bd0  3d000000  xfence
000bd4  00a00300  mfence { lm, sm, gm }
000bd8  27820000  addli.d r[5:6], r[2:3], 0
000bdc  1f630000  addli r6, zero, 6
000be0  634a2fff  loadli.w r20,  -108(r30)
000be4  27840000  addli.d r[9:10], r[2:3], 0
000be8  17336202  sll.d r[7:8], r[5:6], r6
000bec  8b256410  add.ul r[12:13], r[9:10], r[7:8]
000bf0  27041400  addli.d r[9:10], r[9:10], 8
000bf4  9bb52500  slli r11, r11, 2
000bf8  1326a403  setneq.d r12, r[9:10], r[27:28]
000bfc  8b967511  add.s r13, r11, r23
000c00  8b954511  add.s r11, r11, r20
000c04  6fdb0601  loads.d r[23:24], 16(r13)
000c08  6fd78600  loads.d r[15:16], 8(r13)
000c0c  6fd80600  loads.d r[17:18], 0(r13)
000c10  6fd98601  loads.d r[19:20], 24(r13)
000c14  73f86501  stores.d r[23:24], 16(r11)
000c18  e30bffff  loadli.w r23,  -8(r30)
000c1c  73f4e500  stores.d r[15:16], 8(r11)
000c20  73f00501  stores.d r[17:18], 0(r11)
000c24  73fc2501  stores.d r[19:20], 24(r11)
000c28  3b1f06fe  bneq r12, zero, -60
000c2c  1f730000  addli r6, zero, 7
000c30  33030328  zext_int2long r[7:8], r6
000c34  13236204  setlt.ul r6, r[5:6], r[7:8]
000c38  27120200  addli.d r[5:6], r[5:6], 1
000c3c  bb0e03fe  bneq r6, zero, -96
000c40  003a0002  core_id r20
000c44  1f5b0000  addli r22, zero, 5
000c48  2b490000  lui r18, 4
000c4c  9f794000  addli r19, zero, 39
000c50  00200100  mfence { sm }
000c54  b7140cfc  beq r24, zero, -1756
000c58  3d000000  xfence
000c5c  9f001000  addli r1, zero, 8
000c60  00a00300  mfence { lm, sm, gm }
000c64  634c2fff  loadli.w r24,  -108(r30)
000c68  b3800028  zext_int2long r[2:3], r1
000c6c  1f620000  addli r4, zero, 6
000c70  33030028  zext_int2long r[7:8], zero
000c74  17b24002  sll.d r[5:6], r[2:3], r4
000c78  0b244310  add.ul r[9:10], r[7:8], r[5:6]
000c7c  27031300  addli.d r[7:8], r[7:8], 8
000c80  1b342400  slli r8, r8, 2
000c84  9324a303  setneq.d r9, r[7:8], r[27:28]
000c88  8b157411  add.s r11, r8, r23
000c8c  0b148411  add.s r8, r8, r24
000c90  6fd68500  loads.d r[13:14], 8(r11)
000c94  6fd70500  loads.d r[15:16], 0(r11)
000c98  6fd88501  loads.d r[17:18], 24(r11)
000c9c  6fd90501  loads.d r[19:20], 16(r11)
000ca0  7374c400  stores.d r[13:14], 8(r8)
000ca4  7370e400  stores.d r[15:16], 0(r8)
000ca8  737c0401  stores.d r[17:18], 24(r8)
000cac  73782401  stores.d r[19:20], 16(r8)
000cb0  3baf04fe  bneq r9, zero, -56
000cb4  1f721000  addli r4, zero, 15
000cb8  33020228  zext_int2long r[5:6], r4
000cbc  13a24004  setlt.ul r4, r[2:3], r[5:6]
000cc0  a7900000  addli.d r[2:3], r[2:3], 1
000cc4  bb2e02fe  bneq r4, zero, -88
000cc8  2b490000  lui r18, 4
000ccc  9f794000  addli r19, zero, 39
000cd0  00200100  mfence { sm }
000cd4  634c2fff  loadli.w r24,  -108(r30)
000cd8  b7f10a00  beq r21, zero, 124
000cdc  9f002000  addli r1, zero, 16
000ce0  3d000000  xfence
000ce4  9f7a2000  addli r21, zero, 23
000ce8  00a00300  mfence { lm, sm, gm }
000cec  b3800028  zext_int2long r[2:3], r1
000cf0  1f620000  addli r4, zero, 6
000cf4  33030028  zext_int2long r[7:8], zero
000cf8  17b24002  sll.d r[5:6], r[2:3], r4
000cfc  0b244310  add.ul r[9:10], r[7:8], r[5:6]
000d00  27031300  addli.d r[7:8], r[7:8], 8
000d04  1b342400  slli r8, r8, 2
000d08  9324a303  setneq.d r9, r[7:8], r[27:28]
000d0c  8b157411  add.s r11, r8, r23
000d10  0b148411  add.s r8, r8, r24
000d14  6fd68500  loads.d r[13:14], 8(r11)
000d18  6fd70500  loads.d r[15:16], 0(r11)
000d1c  6fd88501  loads.d r[17:18], 24(r11)
000d20  6fd90501  loads.d r[19:20], 16(r11)
000d24  7374c400  stores.d r[13:14], 8(r8)
000d28  7370e400  stores.d r[15:16], 0(r8)
000d2c  737c0401  stores.d r[17:18], 24(r8)
000d30  73782401  stores.d r[19:20], 16(r8)
000d34  3baf04fe  bneq r9, zero, -56
000d38  33820a28  zext_int2long r[5:6], r21
000d3c  13a24004  setlt.ul r4, r[2:3], r[5:6]
000d40  a7900000  addli.d r[2:3], r[2:3], 1
000d44  bb3e02fe  bneq r4, zero, -84
000d48  2b490000  lui r18, 4
000d4c  9f794000  addli r19, zero, 39
000d50  00200100  mfence { sm }
000d54  e340bffe  loadli.w r1,  -164(r30)
000d58  9f7a7000  addli r21, zero, 63
000d5c  3bf00000  bneq r1, zero, 28
000d60  3b520500  bneq r10, zero, 148
000d64  37146a01  beq r20, r22, 260
000d68  bbe50100  bneq r3, zero, 376
000d6c  e3008fff  loadli.w r1,  -64(r30)
000d70  bba70000  bneq r1, zero, 488
000d74  5b4a0000  j 592
000d78  9f003000  addli r1, zero, 24
000d7c  3d000000  xfence
000d80  00a00300  mfence { lm, sm, gm }
000d84  b3800028  zext_int2long r[2:3], r1
000d88  1f620000  addli r4, zero, 6
000d8c  33030028  zext_int2long r[7:8], zero
000d90  17b24002  sll.d r[5:6], r[2:3], r4
000d94  0b244310  add.ul r[9:10], r[7:8], r[5:6]
000d98  27031300  addli.d r[7:8], r[7:8], 8
000d9c  1b342400  slli r8, r8, 2
000da0  9324a303  setneq.d r9, r[7:8], r[27:28]
000da4  8b157411  add.s r11, r8, r23
000da8  0b148411  add.s r8, r8, r24
000dac  6fd68500  loads.d r[13:14], 8(r11)
000db0  6fd70500  loads.d r[15:16], 0(r11)
000db4  6fd88501  loads.d r[17:18], 24(r11)
000db8  6fd90501  loads.d r[19:20], 16(r11)
000dbc  7374c400  stores.d r[13:14], 8(r8)
000dc0  7370e400  stores.d r[15:16], 0(r8)
000dc4  737c0401  stores.d r[17:18], 24(r8)
000dc8  73782401  stores.d r[19:20], 16(r8)
000dcc  3baf04fe  bneq r9, zero, -56
000dd0  1f723000  addli r4, zero, 31
000dd4  33020228  zext_int2long r[5:6], r4
000dd8  13a24004  setlt.ul r4, r[2:3], r[5:6]
000ddc  a7900000  addli.d r[2:3], r[2:3], 1
000de0  bb2e02fe  bneq r4, zero, -88
000de4  2b490000  lui r18, 4
000de8  9f794000  addli r19, zero, 39
000dec  00200100  mfence { sm }
000df0  b75d05fe  beq r10, zero, -140
000df4  9f004000  addli r1, zero, 32
000df8  3d000000  xfence
000dfc  00a00300  mfence { lm, sm, gm }
000e00  b3800028  zext_int2long r[2:3], r1
000e04  1f620000  addli r4, zero, 6
000e08  33030028  zext_int2long r[7:8], zero
000e0c  17b24002  sll.d r[5:6], r[2:3], r4
000e10  0b244310  add.ul r[9:10], r[7:8], r[5:6]
000e14  27031300  addli.d r[7:8], r[7:8], 8
000e18  1b342400  slli r8, r8, 2
000e1c  9324a303  setneq.d r9, r[7:8], r[27:28]
000e20  0b157411  add.s r10, r8, r23
000e24  0b148411  add.s r8, r8, r24
000e28  ef558500  loads.d r[12:13], 8(r10)
000e2c  ef560500  loads.d r[14:15], 0(r10)
000e30  ef578501  loads.d r[16:17], 24(r10)
000e34  ef580501  loads.d r[18:19], 16(r10)
000e38  7374b400  stores.d r[12:13], 8(r8)
000e3c  7370d400  stores.d r[14:15], 0(r8)
000e40  737cf400  stores.d r[16:17], 24(r8)
000e44  73781401  stores.d r[18:19], 16(r8)
000e48  3baf04fe  bneq r9, zero, -56
000e4c  33820928  zext_int2long r[5:6], r19
000e50  13a24004  setlt.ul r4, r[2:3], r[5:6]
000e54  a7900000  addli.d r[2:3], r[2:3], 1
000e58  bb3e02fe  bneq r4, zero, -84
000e5c  2b490000  lui r18, 4
000e60  00200100  mfence { sm }
000e64  3b1c6aff  bneq r20, r22, -252
000e68  9f005000  addli r1, zero, 40
000e6c  3d000000  xfence
000e70  00a00300  mfence { lm, sm, gm }
000e74  b3800028  zext_int2long r[2:3], r1
000e78  1f620000  addli r4, zero, 6
000e7c  33030028  zext_int2long r[7:8], zero
000e80  17b24002  sll.d r[5:6], r[2:3], r4
000e84  0b244310  add.ul r[9:10], r[7:8], r[5:6]
000e88  27031300  addli.d r[7:8], r[7:8], 8
000e8c  1b342400  slli r8, r8, 2
000e90  9324a303  setneq.d r9, r[7:8], r[27:28]
000e94  0b157411  add.s r10, r8, r23
000e98  0b148411  add.s r8, r8, r24
000e9c  ef558500  loads.d r[12:13], 8(r10)
000ea0  ef560500  loads.d r[14:15], 0(r10)
000ea4  ef578501  loads.d r[16:17], 24(r10)
000ea8  ef580501  loads.d r[18:19], 16(r10)
000eac  7374b400  stores.d r[12:13], 8(r8)
000eb0  7370d400  stores.d r[14:15], 0(r8)
000eb4  737cf400  stores.d r[16:17], 24(r8)
000eb8  73781401  stores.d r[18:19], 16(r8)
000ebc  3baf04fe  bneq r9, zero, -56
000ec0  1f725000  addli r4, zero, 47
000ec4  33020228  zext_int2long r[5:6], r4
000ec8  13a24004  setlt.ul r4, r[2:3], r[5:6]
000ecc  a7900000  addli.d r[2:3], r[2:3], 1
000ed0  bb2e02fe  bneq r4, zero, -88
000ed4  2b490000  lui r18, 4
000ed8  00200100  mfence { sm }
000edc  37ca01fe  beq r3, zero, -368
000ee0  9f006000  addli r1, zero, 48
000ee4  3d000000  xfence
000ee8  00a00300  mfence { lm, sm, gm }
000eec  b3800028  zext_int2long r[2:3], r1
000ef0  9f610000  addli r3, zero, 6
000ef4  b3020028  zext_int2long r[6:7], zero
000ef8  97b13002  sll.d r[4:5], r[2:3], r3
000efc  8ba33210  add.ul r[8:9], r[6:7], r[4:5]
000f00  a7821200  addli.d r[6:7], r[6:7], 8
000f04  9bb32300  slli r7, r7, 2
000f08  13a4a203  setneq.d r8, r[6:7], r[27:28]
000f0c  8b947311  add.s r9, r7, r23
000f10  8b938311  add.s r7, r7, r24
000f14  6fd58400  loads.d r[11:12], 8(r9)
000f18  6fd60400  loads.d r[13:14], 0(r9)
000f1c  6fd78401  loads.d r[15:16], 24(r9)
000f20  6fd80401  loads.d r[17:18], 16(r9)
000f24  73f4a300  stores.d r[11:12], 8(r7)
000f28  73f0c300  stores.d r[13:14], 0(r7)
000f2c  73fce300  stores.d r[15:16], 24(r7)
000f30  73f80301  stores.d r[17:18], 16(r7)
000f34  3b2f04fe  bneq r8, zero, -56
000f38  9f716000  addli r3, zero, 55
000f3c  b3810128  zext_int2long r[4:5], r3
000f40  93a13004  setlt.ul r3, r[2:3], r[4:5]
000f44  a7900000  addli.d r[2:3], r[2:3], 1
000f48  bbae01fe  bneq r3, zero, -88
000f4c  00200100  mfence { sm }
000f50  e3008fff  loadli.w r1,  -64(r30)
000f54  b7c10000  beq r1, zero, 112
000f58  9f007000  addli r1, zero, 56
000f5c  3d000000  xfence
000f60  00a00300  mfence { lm, sm, gm }
000f64  b3800028  zext_int2long r[2:3], r1
000f68  9f610000  addli r3, zero, 6
000f6c  b3020028  zext_int2long r[6:7], zero
000f70  97b13002  sll.d r[4:5], r[2:3], r3
000f74  8ba33210  add.ul r[8:9], r[6:7], r[4:5]
000f78  a7821200  addli.d r[6:7], r[6:7], 8
000f7c  9bb32300  slli r7, r7, 2
000f80  13a4a203  setneq.d r8, r[6:7], r[27:28]
000f84  8b947311  add.s r9, r7, r23
000f88  8b938311  add.s r7, r7, r24
000f8c  6fd58400  loads.d r[11:12], 8(r9)
000f90  6fd60400  loads.d r[13:14], 0(r9)
000f94  6fd78401  loads.d r[15:16], 24(r9)
000f98  6fd80401  loads.d r[17:18], 16(r9)
000f9c  73f4a300  stores.d r[11:12], 8(r7)
000fa0  73f0c300  stores.d r[13:14], 0(r7)
000fa4  73fce300  stores.d r[15:16], 24(r7)
000fa8  73f80301  stores.d r[17:18], 16(r7)
000fac  3b2f04fe  bneq r8, zero, -56
000fb0  eb510ff7  load.d r[4:5], -144(r30)
000fb4  93a13004  setlt.ul r3, r[2:3], r[4:5]
000fb8  a7900000  addli.d r[2:3], r[2:3], 1
000fbc  bbbe01fe  bneq r3, zero, -84
000fc0  00200100  mfence { sm }
000fc4  9f70f001  addli r1, zero, 255
000fc8  80a20004  csr_set csr5, r1
000fcc  ab800000  lui r1, 8
000fd0  1b910010  ori r2, r1, 256
000fd4  670c2ffe  storeli.w r2, -64(r30)
000fd8  1b91c010  ori r2, r1, 268
000fdc  e70b2ffe  storeli.w r2, -72(r30)
000fe0  1b918010  ori r2, r1, 264
000fe4  9b904010  ori r1, r1, 260
000fe8  670b2ffe  storeli.w r2, -80(r30)
000fec  e70a1ffe  storeli.w r1, -88(r30)
000ff0  00e00200  sync_core
000ff4  e340bffe  loadli.w r1,  -164(r30)
000ff8  37ea0000  beq r1, zero, 664
000ffc  9f603000  addli r1, zero, 30
001000  1f415000  addli r2, zero, 44
001004  7d800000  xsignal r1, 0
001008  7d000100  xsignal r2, 0
00100c  7d900000  xwait r1, 0
001010  9f104000  addli r1, zero, 33
001014  7d900000  xwait r1, 0
001018  9f504000  addli r1, zero, 37
00101c  7d900000  xwait r1, 0
001020  9f105000  addli r1, zero, 41
001024  7d900000  xwait r1, 0
001028  9f505000  addli r1, zero, 45
00102c  7d900000  xwait r1, 0
001030  9f206000  addli r1, zero, 50
001034  7d900000  xwait r1, 0
001038  3d000000  xfence
00103c  b3000028  zext_int2long r[2:3], zero
001040  00a00300  mfence { lm, sm, gm }
001044  63092fff  loadli.w r18,  -112(r30)
001048  e345cfff  loadli.w r11,  -28(r30)
00104c  e304cfff  loadli.w r9,  -32(r30)
001050  6345bfff  loadli.w r10,  -36(r30)
001054  e306dfff  loadli.w r13,  -24(r30)
001058  73301ff6  store.d r[2:3], -160(r30)
00105c  27810000  addli.d r[3:4], r[2:3], 0
001060  5b030000  j 24
001064  eb500ff7  load.d r[2:3], -144(r30)
001068  eb518ff6  load.d r[4:5], -152(r30)
00106c  93a01104  setlt.ul r1, r[4:5], r[2:3]
001070  27910100  addli.d r[3:4], r[4:5], 1
001074  b7c90000  beq r1, zero, 624
001078  9f600000  addli r1, zero, 6
00107c  eb590ff6  load.d r[20:21], -160(r30)
001080  73342ff6  store.d r[3:4], -152(r30)
001084  17321102  sll.d r[5:6], r[3:4], r1
001088  9f700000  addli r1, zero, 7
00108c  97301102  sll.d r[2:3], r[3:4], r1
001090  73304ffa  store.d r[5:6], -96(r30)
001094  733c1ff8  store.d r[2:3], -104(r30)
001098  db090000  j 76
00109c  63027fff  loadli.w r4,  -72(r30)
0010a0  a7c90900  addli.d r[20:21], r[20:21], 4
0010a4  e3038fff  loadli.w r7,  -64(r30)
0010a8  e345cfff  loadli.w r11,  -28(r30)
0010ac  e304cfff  loadli.w r9,  -32(r30)
0010b0  e306dfff  loadli.w r13,  -24(r30)
0010b4  13a3a903  setneq.d r6, r[20:21], r[27:28]
0010b8  0b924010  add.s r4, r1, r4
0010bc  8b937010  add.s r7, r1, r7
0010c0  73605200  stores.w r5, 0(r4)
0010c4  63026fff  loadli.w r4,  -80(r30)
0010c8  e3025fff  loadli.w r5,  -88(r30)
0010cc  73e09301  stores.w r25, 0(r7)
0010d0  0b924010  add.s r4, r1, r4
0010d4  8b905010  add.s r1, r1, r5
0010d8  73602200  stores.w r2, 0(r4)
0010dc  73e03000  stores.w r3, 0(r1)
0010e0  371e03fe  beq r6, zero, -124
0010e4  eb500ffa  load.d r[2:3], -96(r30)
0010e8  6b528ff9  load.d r[5:6], -104(r30)
0010ec  6346efff  loadli.w r12,  -12(r30)
0010f0  ab08807f  lui r17, 522240
0010f4  8ba01910  add.ul r[2:3], r[20:21], r[2:3]
0010f8  8ba34910  add.ul r[8:9], r[20:21], r[5:6]
0010fc  6302afff  loadli.w r4,  -48(r30)
001100  9bb02000  slli r1, r1, 2
001104  0b939310  add.s r6, r7, r9
001108  8b94a310  add.s r9, r7, r10
00110c  6305bfff  loadli.w r10,  -40(r30)
001110  0b97c310  add.s r14, r7, r12
001114  6306efff  loadli.w r12,  -16(r30)
001118  8b95b310  add.s r11, r7, r11
00111c  0b924310  add.s r4, r7, r4
001120  8b917011  add.s r3, r1, r23
001124  6f130300  loads.bu r6, 0(r6)
001128  0b95a310  add.s r10, r7, r10
00112c  0b98c310  add.s r16, r7, r12
001130  6346dfff  loadli.w r12,  -20(r30)
001134  efc20100  loads.w r5, 0(r3)
001138  efcb4100  loads.w r23, 4(r3)
00113c  6fc18100  loads.w r2, 8(r3)
001140  6fcbc100  loads.w r22, 12(r3)
001144  e341afff  loadli.w r3,  -44(r30)
001148  6f1c0500  loads.bu r24, 0(r10)
00114c  63459fff  loadli.w r10,  -52(r30)
001150  8b913310  add.s r3, r7, r3
001154  0b95a310  add.s r10, r7, r10
001158  ef970100  loads.bu r15, 0(r3)
00115c  ef110200  loads.bu r3, 0(r4)
001160  6f920400  loads.bu r4, 0(r9)
001164  8b942311  add.s r9, r7, r18
001168  6f1e0500  loads.bu r28, 0(r10)
00116c  6f150800  loads.bu r10, 0(r16)
001170  ef9c0400  loads.bu r25, 0(r9)
001174  ef940500  loads.bu r9, 0(r11)
001178  ef150700  loads.bu r11, 0(r14)
00117c  0b97d310  add.s r14, r7, r13
001180  8b93c310  add.s r7, r7, r12
001184  6344ffff  loadli.w r8,  -4(r30)
001188  e3462fff  loadli.w r13,  -108(r30)
00118c  6f980300  loads.bu r16, 0(r7)
001190  97828200  and r5, r5, r8
001194  6f140700  loads.bu r8, 0(r14)
001198  0b97d010  add.s r14, r1, r13
00119c  938a1201  seteq r21, r5, r17
0011a0  13860200  seteq r12, r5, zero
0011a4  93825804  setlt.u r5, r17, r5
0011a8  ef43c700  loads.w r7, 12(r14)
0011ac  97865701  and r13, r15, r21
0011b0  ef4a8700  loads.w r21, 8(r14)
0011b4  ef474700  loads.w r15, 4(r14)
0011b8  1786cc00  and r12, r25, r12
0011bc  9792c201  or r5, r5, r28
0011c0  ab0cc07f  lui r25, 523264
0011c4  1796c600  or r12, r13, r12
0011c8  97125600  or r5, r12, r5
0011cc  1b861200  andi r12, r5, 1
0011d0  ab02c07f  lui r5, 523264
0011d4  3b200600  bneq r12, zero, 8
0011d8  ef4c0700  loads.w r25, 0(r14)
0011dc  6346ffff  loadli.w r12,  -4(r30)
0011e0  1786cb00  and r12, r23, r12
0011e4  93061601  seteq r13, r12, r17
0011e8  13070600  seteq r14, r12, zero
0011ec  1386c804  setlt.u r12, r17, r12
0011f0  9781d100  and r3, r3, r13
0011f4  9706ec00  and r13, r24, r14
0011f8  17148600  or r8, r12, r8
0011fc  9791d100  or r3, r3, r13
001200  97918100  or r3, r3, r8
001204  1b841100  andi r8, r3, 1
001208  ab01c07f  lui r3, 523264
00120c  3b200400  bneq r8, zero, 8
001210  9f810700  addli r3, r15, 0
001214  6344ffff  loadli.w r8,  -4(r30)
001218  ab06807f  lui r13, 522240
00121c  e30bffff  loadli.w r23,  -8(r30)
001220  17018100  and r2, r2, r8
001224  1304d100  seteq r8, r2, r13
001228  13060100  seteq r12, r2, zero
00122c  13812604  setlt.u r2, r13, r2
001230  17038300  and r6, r6, r8
001234  1784c400  and r8, r9, r12
001238  1711a100  or r2, r2, r10
00123c  6345bfff  loadli.w r10,  -36(r30)
001240  17138300  or r6, r6, r8
001244  17112300  or r2, r6, r2
001248  1b031100  andi r6, r2, 1
00124c  2b01c07f  lui r2, 523264
001250  3b200300  bneq r6, zero, 8
001254  1f810a00  addli r2, r21, 0
001258  6343ffff  loadli.w r6,  -4(r30)
00125c  17036b00  and r6, r22, r6
001260  1304d300  seteq r8, r6, r13
001264  93040300  seteq r9, r6, zero
001268  13836604  setlt.u r6, r13, r6
00126c  17028200  and r4, r4, r8
001270  17849500  and r8, r11, r9
001274  17130301  or r6, r6, r16
001278  17128200  or r4, r4, r8
00127c  17126200  or r4, r4, r6
001280  1b021200  andi r4, r4, 1
001284  3b6802fe  bneq r4, zero, -488
001288  9f820300  addli r5, r7, 0
00128c  5bc2ffff  j -496
001290  9f028000  addli r5, zero, 64
001294  3b036af9  bneq r20, r22, -3904
001298  9f002000  addli r1, zero, 16
00129c  7d900000  xwait r1, 0
0012a0  9f405000  addli r1, zero, 44
0012a4  7d900000  xwait r1, 0
0012a8  1d800c00  lock zero, r25
0012ac  ab00803f  lui r1, 260096
0012b0  0d000002  ew_cfg zero, zero, zero, 1
0012b4  0d101000  ewcoeff_cfg zero, zero, r1, 0
0012b8  9f70f00f  addli r1, zero, 2047
0012bc  0d800004  ew_cfg zero, r1, zero, 2
0012c0  8d0c0006  ew_cfg r25, zero, zero, 3
0012c4  8d8c9c27  ew_cfg r25, r25, r25, 19
0012c8  e3000fff  loadli.w r1,  -128(r30)
0012cc  2d1c1c00  dsmul r24, r24, r1, 0
0012d0  9f505000  addli r1, zero, 45
0012d4  0d000026  ew_cfg zero, zero, zero, 19
0012d8  1d900c00  unlock r25
0012dc  7d800000  xsignal r1, 0
0012e0  db0b0000  j 92
0012e4  9f703000  addli r1, zero, 31
0012e8  00200100  mfence { sm }
0012ec  630e6f00  loadli.w r28,  48(r30)
0012f0  003a0002  core_id r20
0012f4  1f5b0000  addli r22, zero, 5
0012f8  9f2c0000  addli r25, zero, 2
0012fc  9f7a7000  addli r21, zero, 63
001300  9f028000  addli r5, zero, 64
001304  2b490000  lui r18, 4
001308  9f794000  addli r19, zero, 39
00130c  7d800000  xsignal r1, 0
001310  9f204000  addli r1, zero, 34
001314  7d800000  xsignal r1, 0
001318  9f604000  addli r1, zero, 38
00131c  7d800000  xsignal r1, 0
001320  9f205000  addli r1, zero, 42
001324  7d800000  xsignal r1, 0
001328  9f605000  addli r1, zero, 46
00132c  7d800000  xsignal r1, 0
001330  9f705000  addli r1, zero, 47
001334  7d800000  xsignal r1, 0
001338  3b276a01  bneq r20, r22, 456
00133c  1f212000  addli r2, zero, 18
001340  1f72f00f  addli r4, zero, 2047
001344  9f000000  addli r1, zero, 0
001348  7d100100  xwait r2, 0
00134c  1f715000  addli r2, zero, 47
001350  7d100100  xwait r2, 0
001354  1f316000  addli r2, zero, 51
001358  7d100100  xwait r2, 0
00135c  1d800c00  lock zero, r25
001360  2b01803f  lui r2, 260096
001364  0d000002  ew_cfg zero, zero, zero, 1
001368  0d110100  ewcoeff_cfg r2, r2, zero, 0
00136c  0d000204  ew_cfg zero, r4, zero, 2
001370  8d0c0006  ew_cfg r25, zero, zero, 3
001374  8d8c9c27  ew_cfg r25, r25, r25, 19
001378  63010fff  loadli.w r2,  -128(r30)
00137c  e3416ffe  loadli.w r3,  -204(r30)
001380  63038fff  loadli.w r6,  -64(r30)
001384  ad016100  dsmadd r3, r2, r6, 0
001388  1f016000  addli r2, zero, 48
00138c  0d000026  ew_cfg zero, zero, zero, 19
001390  1d900c00  unlock r25
001394  7d000100  xsignal r2, 0
001398  1d800c00  lock zero, r25
00139c  0d000002  ew_cfg zero, zero, zero, 1
0013a0  63415ffe  loadli.w r2,  -212(r30)
0013a4  0d110000  ewcoeff_cfg r2, zero, zero, 0
0013a8  1f416000  addli r2, zero, 52
0013ac  0d000204  ew_cfg zero, r4, zero, 2
0013b0  8d0c0006  ew_cfg r25, zero, zero, 3
0013b4  8d8c0c26  ew_cfg r25, r25, zero, 19
0013b8  cdd13100  hp_ssmul r3, r3, r3, 0
0013bc  0d000026  ew_cfg zero, zero, zero, 19
0013c0  1d900c00  unlock r25
0013c4  7d100100  xwait r2, 0
0013c8  1d800c00  lock zero, r25
0013cc  2b010040  lui r2, 262144
0013d0  0d000002  ew_cfg zero, zero, zero, 1
0013d4  0d110000  ewcoeff_cfg r2, zero, zero, 0
0013d8  0d000204  ew_cfg zero, r4, zero, 2
0013dc  8d0c0006  ew_cfg r25, zero, zero, 3
0013e0  8d8c0c26  ew_cfg r25, r25, zero, 19
0013e4  63015ffe  loadli.w r2,  -216(r30)
0013e8  4dd13100  hp_ssmul r2, r3, r3, 0
0013ec  9f010100  addli r3, r2, 0
0013f0  1f110000  addli r2, zero, 1
0013f4  0d000026  ew_cfg zero, zero, zero, 19
0013f8  1d900c00  unlock r25
0013fc  1d800c00  lock zero, r25
001400  0d000002  ew_cfg zero, zero, zero, 1
001404  0d800a04  ew_cfg zero, r21, zero, 2
001408  0d010006  ew_cfg r2, zero, zero, 3
00140c  2b01a041  lui r2, 268800
001410  0d110000  ewcoeff_cfg r2, zero, zero, 0
001414  0b913010  add.s r2, r1, r3
001418  9f800002  addli r1, r1, 256
00141c  2d212108  dscmpnsel r2, r2, r2, 4
001420  bbdf20ff  bneq r1, r18, -12
001424  1d900c00  unlock r25
001428  1f110000  addli r2, zero, 1
00142c  9f000000  addli r1, zero, 0
001430  1d800c00  lock zero, r25
001434  0d000002  ew_cfg zero, zero, zero, 1
001438  0d800a04  ew_cfg zero, r21, zero, 2
00143c  0d010006  ew_cfg r2, zero, zero, 3
001440  8d0c0014  ew_cfg r25, zero, zero, 10
001444  63424ffe  loadli.w r4,  -220(r30)
001448  8d0c4116  ew_cfg r25, r2, r4, 11
00144c  2bc17f41  lui r2, 268284
001450  1f420000  addli r4, zero, 4
001454  0d00001a  ew_cfg zero, zero, zero, 13
001458  0d00221c  ew_cfg zero, r4, r2, 14
00145c  2b01a0c1  lui r2, 793088
001460  0d00001e  ew_cfg zero, zero, zero, 15
001464  0d110000  ewcoeff_cfg r2, zero, zero, 0
001468  0b913010  add.s r2, r1, r3
00146c  9f800002  addli r1, r1, 256
001470  2d212100  dscmpnsel r2, r2, r2, 0
001474  bbdf20ff  bneq r1, r18, -12
001478  0d000014  ew_cfg zero, zero, zero, 10
00147c  ab0020c1  lui r1, 791040
001480  1f71f00f  addli r2, zero, 2047
001484  1d900c00  unlock r25
001488  1d800c00  lock zero, r25
00148c  0d000002  ew_cfg zero, zero, zero, 1
001490  0d101000  ewcoeff_cfg zero, zero, r1, 0
001494  8d0c0006  ew_cfg r25, zero, zero, 3
001498  0d000104  ew_cfg zero, r2, zero, 2
00149c  8d8c9c27  ew_cfg r25, r25, r25, 19
0014a0  e3406ffe  loadli.w r1,  -204(r30)
0014a4  6d803090  dsselect zero, r1, r3, 72
0014a8  9f306000  addli r1, zero, 51
0014ac  0d000026  ew_cfg zero, zero, zero, 19
0014b0  1d900c00  unlock r25
0014b4  7d800000  xsignal r1, 0
0014b8  9f406000  addli r1, zero, 52
0014bc  7d800000  xsignal r1, 0
0014c0  9f302000  addli r1, zero, 19
0014c4  7d900000  xwait r1, 0
0014c8  1d800c00  lock zero, r25
0014cc  ab00803f  lui r1, 260096
0014d0  0d000002  ew_cfg zero, zero, zero, 1
0014d4  0d101000  ewcoeff_cfg zero, zero, r1, 0
0014d8  0d000104  ew_cfg zero, r2, zero, 2
0014dc  8d0c0006  ew_cfg r25, zero, zero, 3
0014e0  8d8c9c27  ew_cfg r25, r25, r25, 19
0014e4  e3000fff  loadli.w r1,  -128(r30)
0014e8  ad900000  dsmul r1, r1, zero, 0
0014ec  9f102000  addli r1, zero, 17
0014f0  0d000026  ew_cfg zero, zero, zero, 19
0014f4  1d900c00  unlock r25
0014f8  7d800c00  xsignal r25, 0
0014fc  7d800000  xsignal r1, 0
001500  e340bffe  loadli.w r1,  -164(r30)
001504  37c900f6  beq r1, zero, -4528
001508  9f102000  addli r1, zero, 17
00150c  7d900c00  xwait r25, 0
001510  7d900000  xwait r1, 0
001514  9f204000  addli r1, zero, 34
001518  7d900000  xwait r1, 0
00151c  9f604000  addli r1, zero, 38
001520  7d900000  xwait r1, 0
001524  9f205000  addli r1, zero, 42
001528  7d900000  xwait r1, 0
00152c  9f006000  addli r1, zero, 48
001530  7d900000  xwait r1, 0
001534  3d000000  xfence
001538  b3000028  zext_int2long r[2:3], zero
00153c  00a00300  mfence { lm, sm, gm }
001540  634affff  loadli.w r20,  -4(r30)
001544  6302bfff  loadli.w r4,  -40(r30)
001548  e344cfff  loadli.w r9,  -28(r30)
00154c  e342efff  loadli.w r5,  -12(r30)
001550  6305cfff  loadli.w r10,  -32(r30)
001554  6347bfff  loadli.w r14,  -36(r30)
001558  e307dfff  loadli.w r15,  -24(r30)
00155c  73341ff6  store.d r[2:3], -152(r30)
001560  27810000  addli.d r[3:4], r[2:3], 0
001564  5b030000  j 24
001568  eb500ff7  load.d r[2:3], -144(r30)
00156c  6b538ff9  load.d r[7:8], -104(r30)
001570  93201304  setlt.ul r1, r[7:8], r[2:3]
001574  27110300  addli.d r[3:4], r[7:8], 1
001578  37b600f6  beq r1, zero, -4724
00157c  9f700000  addli r1, zero, 7
001580  eb588ff6  load.d r[18:19], -152(r30)
001584  733c2ff8  store.d r[3:4], -104(r30)
001588  17331102  sll.d r[7:8], r[3:4], r1
00158c  9f600000  addli r1, zero, 6
001590  17361102  sll.d r[13:14], r[3:4], r1
001594  73306ffa  store.d r[7:8], -96(r30)
001598  5b0a0000  j 80
00159c  63027fff  loadli.w r4,  -72(r30)
0015a0  a7c80800  addli.d r[18:19], r[18:19], 4
0015a4  63048fff  loadli.w r8,  -64(r30)
0015a8  6305cfff  loadli.w r10,  -32(r30)
0015ac  e307dfff  loadli.w r15,  -24(r30)
0015b0  93a3a803  setneq.d r7, r[18:19], r[27:28]
0015b4  0b924010  add.s r4, r1, r4
0015b8  0b948010  add.s r8, r1, r8
0015bc  73606200  stores.w r6, 0(r4)
0015c0  63026fff  loadli.w r4,  -80(r30)
0015c4  63035fff  loadli.w r6,  -88(r30)
0015c8  73602400  stores.w r2, 0(r8)
0015cc  0b924010  add.s r4, r1, r4
0015d0  8b906010  add.s r1, r1, r6
0015d4  73605200  stores.w r5, 0(r4)
0015d8  6302bfff  loadli.w r4,  -40(r30)
0015dc  e342efff  loadli.w r5,  -12(r30)
0015e0  73e03000  stores.w r3, 0(r1)
0015e4  379e03fe  beq r7, zero, -124
0015e8  eb500ffa  load.d r[2:3], -96(r30)
0015ec  e349dfff  loadli.w r19,  -20(r30)
0015f0  2b0e807f  lui r28, 522240
0015f4  0ba31810  add.ul r[7:8], r[18:19], r[2:3]
0015f8  e3002fff  loadli.w r1,  -112(r30)
0015fc  0b114310  add.s r2, r6, r4
001600  0b125310  add.s r4, r6, r5
001604  e342afff  loadli.w r5,  -44(r30)
001608  8b119310  add.s r3, r6, r9
00160c  e304afff  loadli.w r9,  -48(r30)
001610  0b15a310  add.s r10, r6, r10
001614  8b15e310  add.s r11, r6, r14
001618  8b101310  add.s r1, r6, r1
00161c  ef1b0100  loads.bu r23, 0(r2)
001620  ef9c0100  loads.bu r25, 0(r3)
001624  6f1b0200  loads.bu r22, 0(r4)
001628  ef950500  loads.bu r11, 0(r11)
00162c  6f940000  loads.bu r8, 0(r1)
001630  8ba0c810  add.ul r[2:3], r[18:19], r[13:14]
001634  8b125310  add.s r5, r6, r5
001638  8b149310  add.s r9, r6, r9
00163c  9bb02000  slli r1, r1, 2
001640  6f970200  loads.bu r14, 0(r5)
001644  ef120500  loads.bu r5, 0(r10)
001648  0b15f310  add.s r10, r6, r15
00164c  e307efff  loadli.w r15,  -16(r30)
001650  6f9c0400  loads.bu r24, 0(r9)
001654  e3449fff  loadli.w r9,  -52(r30)
001658  6fc10000  loads.w r2, 0(r1)
00165c  efc14000  loads.w r3, 4(r1)
001660  6fc88000  loads.w r16, 8(r1)
001664  6fc2c000  loads.w r4, 12(r1)
001668  8b17f310  add.s r15, r6, r15
00166c  8b149310  add.s r9, r6, r9
001670  0b133311  add.s r6, r6, r19
001674  ef190500  loads.bu r19, 0(r10)
001678  e3430fff  loadli.w r7,  -124(r30)
00167c  6f950700  loads.bu r10, 0(r15)
001680  8b937010  add.s r7, r1, r7
001684  efc30300  loads.w r7, 0(r7)
001688  17014101  and r2, r2, r20
00168c  6f9a0400  loads.bu r20, 0(r9)
001690  ef140300  loads.bu r9, 0(r6)
001694  930a0100  seteq r21, r2, zero
001698  9307c101  seteq r15, r2, r28
00169c  13012e04  setlt.u r2, r28, r2
0016a0  17035401  and r6, r8, r21
0016a4  63441fff  loadli.w r8,  -116(r30)
0016a8  1707f700  and r14, r14, r15
0016ac  e3071fff  loadli.w r15,  -120(r30)
0016b0  1713e300  or r6, r6, r14
0016b4  17112a00  or r2, r20, r2
0016b8  0b948010  add.s r8, r1, r8
0016bc  8b97f010  add.s r15, r1, r15
0016c0  17116100  or r2, r2, r6
0016c4  2b03c07f  lui r6, 523264
0016c8  ef4a0400  loads.w r21, 0(r8)
0016cc  6fc40700  loads.w r8, 0(r15)
0016d0  1b071100  andi r14, r2, 1
0016d4  2b01c07f  lui r2, 523264
0016d8  3b400700  bneq r14, zero, 16
0016dc  63010fff  loadli.w r2,  -128(r30)
0016e0  0b912010  add.s r2, r1, r2
0016e4  6f410100  loads.w r2, 0(r2)
0016e8  634affff  loadli.w r20,  -4(r30)
0016ec  97814101  and r3, r3, r20
0016f0  13870100  seteq r14, r3, zero
0016f4  9387c101  seteq r15, r3, r28
0016f8  93013e04  setlt.u r3, r28, r3
0016fc  1787eb00  and r14, r23, r14
001700  9707fc00  and r15, r24, r15
001704  97913900  or r3, r19, r3
001708  1717f700  or r14, r14, r15
00170c  9791e100  or r3, r3, r14
001710  1b871100  andi r14, r3, 1
001714  ab01c07f  lui r3, 523264
001718  3b200700  bneq r14, zero, 8
00171c  9f010400  addli r3, r8, 0
001720  17044801  and r8, r16, r20
001724  2b08807f  lui r16, 522240
001728  e30bffff  loadli.w r23,  -8(r30)
00172c  13070400  seteq r14, r8, zero
001730  93070401  seteq r15, r8, r16
001734  13048804  setlt.u r8, r16, r8
001738  1787ec00  and r14, r25, r14
00173c  9782f200  and r5, r5, r15
001740  17148500  or r8, r10, r8
001744  97125700  or r5, r14, r5
001748  6347bfff  loadli.w r14,  -36(r30)
00174c  97125400  or r5, r8, r5
001750  1b841200  andi r8, r5, 1
001754  ab02c07f  lui r5, 523264
001758  3b200400  bneq r8, zero, 8
00175c  9f820a00  addli r5, r21, 0
001760  17024201  and r4, r4, r20
001764  13040200  seteq r8, r4, zero
001768  13050201  seteq r10, r4, r16
00176c  13024804  setlt.u r4, r16, r4
001770  17048b00  and r8, r22, r8
001774  1785a500  and r10, r11, r10
001778  17924400  or r4, r9, r4
00177c  e344cfff  loadli.w r9,  -28(r30)
001780  1714a400  or r8, r8, r10
001784  17128200  or r4, r4, r8
001788  1b021200  andi r4, r4, 1
00178c  3b4802fe  bneq r4, zero, -496
001790  1f830300  addli r6, r7, 0
001794  5bc1ffff  j -504
001798  9f400000  addli r1, zero, 4
00179c  37541a00  beq r20, r1, 276
0017a0  9f600000  addli r1, zero, 6
0017a4  37491a00  beq r20, r1, 592
0017a8  9f700000  addli r1, zero, 7
0017ac  bb251a00  bneq r20, r1, 360
0017b0  9f001000  addli r1, zero, 8
0017b4  e7450ffe  storeli.w zero, -164(r30)
0017b8  2b610000  lui r2, 6
0017bc  1f050000  addli r10, zero, 0
0017c0  9f0a0000  addli r21, zero, 0
0017c4  1f0c0000  addli r24, zero, 0
0017c8  9f010000  addli r3, zero, 0
0017cc  7d900000  xwait r1, 0
0017d0  9f301000  addli r1, zero, 11
0017d4  7d900000  xwait r1, 0
0017d8  9f300000  addli r1, zero, 3
0017dc  1d000000  lock zero, zero
0017e0  81000000  ds_cfg r1, zero, 0
0017e4  9f008000  addli r1, zero, 64
0017e8  81000002  ds_cfg r1, zero, 1
0017ec  8100001c  ds_cfg r1, zero, 14
0017f0  8100001a  ds_cfg r1, zero, 13
0017f4  41001104  shuffle_coa zero, r2, r1, 2
0017f8  9f101000  addli r1, zero, 9
0017fc  1d100000  unlock zero
001800  7d800000  xsignal r1, 0
001804  9f100000  addli r1, zero, 1
001808  670c1ffe  storeli.w r1, -64(r30)
00180c  9f201000  addli r1, zero, 10
001810  5ba9fdff  j -4792
001814  eb500ff4  load.d r[2:3], -192(r30)
001818  9f521000  addli r5, zero, 13
00181c  6b530f00  load.d r[7:8], 0(r30)
001820  1f440000  addli r8, zero, 4
001824  1f1c0000  addli r24, zero, 1
001828  e7450ffe  storeli.w zero, -164(r30)
00182c  670c0ffe  storeli.w zero, -64(r30)
001830  7d100b00  xwait r22, 0
001834  9f040001  addli r9, zero, 128
001838  1f028000  addli r4, zero, 64
00183c  1f050000  addli r10, zero, 0
001840  9f0a0000  addli r21, zero, 0
001844  9f010000  addli r3, zero, 0
001848  1d000400  lock zero, r8
00184c  97b05002  sll.d r[2:3], r[2:3], r5
001850  150c0c00  dma_cfg r24, r24, zero, 0
001854  8b201310  add.ul r[2:3], r[7:8], r[2:3]
001858  6b530f01  load.d r[7:8], 16(r30)
00185c  15000104  dma_cfg zero, r2, zero, 2
001860  15899006  dma_cfg r18, r1, r9, 3
001864  95844408  dma_cfg r9, r9, r4, 4
001868  35000000  dma_run zero
00186c  1d100400  unlock r8
001870  2b820000  lui r4, 8
001874  eb508ff4  load.d r[2:3], -184(r30)
001878  7d000400  xsignal r8, 0
00187c  7d900200  xwait r5, 0
001880  1d000400  lock zero, r8
001884  15000c00  dma_cfg zero, r24, zero, 0
001888  97b08003  sll.d r[2:3], r[2:3], r24
00188c  8b201310  add.ul r[2:3], r[7:8], r[2:3]
001890  15000104  dma_cfg zero, r2, zero, 2
001894  15829006  dma_cfg r4, r1, r9, 3
001898  9f000002  addli r1, zero, 256
00189c  95808409  dma_cfg r1, r9, r24, 4
0018a0  35000000  dma_run zero
0018a4  1d100400  unlock r8
0018a8  9f401000  addli r1, zero, 12
0018ac  db95fdff  j -4948
0018b0  9f600000  addli r1, zero, 6
0018b4  e7450ffe  storeli.w zero, -164(r30)
0018b8  670c0ffe  storeli.w zero, -64(r30)
0018bc  1f150000  addli r10, zero, 1
0018c0  1f412000  addli r2, zero, 20
0018c4  9f0a0000  addli r21, zero, 0
0018c8  1f0c0000  addli r24, zero, 0
0018cc  9f010000  addli r3, zero, 0
0018d0  7d900000  xwait r1, 0
0018d4  9f201000  addli r1, zero, 10
0018d8  7d900000  xwait r1, 0
0018dc  9f008000  addli r1, zero, 64
0018e0  7d100100  xwait r2, 0
0018e4  1d000500  lock zero, r10
0018e8  89801000  mm_cfg r1, r1, r1, 0
0018ec  898cac04  mm_cfg r25, r25, r10, 2
0018f0  e3000fff  loadli.w r1,  -128(r30)
0018f4  a900000a  mm r1, zero, zero, 5
0018f8  9f700000  addli r1, zero, 7
0018fc  1d100500  unlock r10
001900  7d800000  xsignal r1, 0
001904  9f301000  addli r1, zero, 11
001908  7d800000  xsignal r1, 0
00190c  9f601000  addli r1, zero, 14
001910  5b89fdff  j -5048
001914  e341bffe  loadli.w r3,  -164(r30)
001918  1f850100  addli r10, r3, 0
00191c  670c3ffe  storeli.w r3, -64(r30)
001920  9f8a0100  addli r21, r3, 0
001924  1f8c0100  addli r24, r3, 0
001928  db86fdff  j -5068
00192c  9f602000  addli r1, zero, 22
001930  670c0ffe  storeli.w zero, -64(r30)
001934  1f513000  addli r2, zero, 29
001938  1f050000  addli r10, zero, 0
00193c  9f0a0000  addli r21, zero, 0
001940  1f0c0000  addli r24, zero, 0
001944  9f010000  addli r3, zero, 0
001948  003a0002  core_id r20
00194c  1f5b0000  addli r22, zero, 5
001950  9f2c0000  addli r25, zero, 2
001954  9f794000  addli r19, zero, 39
001958  00200100  mfence { sm }
00195c  7d800000  xsignal r1, 0
001960  9f003000  addli r1, zero, 24
001964  7d800000  xsignal r1, 0
001968  9f104000  addli r1, zero, 33
00196c  7d000100  xsignal r2, 0
001970  7d800000  xsignal r1, 0
001974  9f504000  addli r1, zero, 37
001978  7d800000  xsignal r1, 0
00197c  9f105000  addli r1, zero, 41
001980  7d800000  xsignal r1, 0
001984  9f100000  addli r1, zero, 1
001988  7d100100  xwait r2, 0
00198c  e7451ffe  storeli.w r1, -164(r30)
001990  9f605000  addli r1, zero, 46
001994  7d900000  xwait r1, 0
001998  db78fdff  j -5180
00199c  9f400000  addli r1, zero, 4
0019a0  e7450ffe  storeli.w zero, -164(r30)
0019a4  670c0ffe  storeli.w zero, -64(r30)
0019a8  1f018000  addli r2, zero, 64
0019ac  1f050000  addli r10, zero, 0
0019b0  1f0c0000  addli r24, zero, 0
0019b4  9f010000  addli r3, zero, 0
0019b8  9f1a0000  addli r21, zero, 1
0019bc  7d900000  xwait r1, 0
0019c0  9f700000  addli r1, zero, 7
0019c4  7d900000  xwait r1, 0
0019c8  9f300000  addli r1, zero, 3
0019cc  1d000000  lock zero, zero
0019d0  81000000  ds_cfg r1, zero, 0
0019d4  9f600000  addli r1, zero, 6
0019d8  01010002  ds_cfg r2, zero, 1
0019dc  0101001c  ds_cfg r2, zero, 14
0019e0  0101001a  ds_cfg r2, zero, 13
0019e4  21102902  shuffle_batch zero, r18, r2, 1
0019e8  1d100000  unlock zero
0019ec  7d000b00  xsignal r22, 0
0019f0  5b6dfdff  j -5272
0019f4  9f101000  addli r1, zero, 9
0019f8  e7450ffe  storeli.w zero, -164(r30)
0019fc  670c0ffe  storeli.w zero, -64(r30)
001a00  9f110000  addli r3, zero, 1
001a04  eb528f00  load.d r[6:7], 8(r30)
001a08  9f430000  addli r7, zero, 4
001a0c  1f028000  addli r4, zero, 64
001a10  1f050000  addli r10, zero, 0
001a14  9f0a0000  addli r21, zero, 0
001a18  1f0c0000  addli r24, zero, 0
001a1c  7d900000  xwait r1, 0
001a20  eb508ff4  load.d r[2:3], -184(r30)
001a24  1d800300  lock zero, r7
001a28  95810100  dma_cfg r3, r3, zero, 0
001a2c  97b03002  sll.d r[2:3], r[2:3], r3
001a30  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
001a34  9f020001  addli r5, zero, 128
001a38  2b630000  lui r6, 6
001a3c  15000104  dma_cfg zero, r2, zero, 2
001a40  15835006  dma_cfg r6, r1, r5, 3
001a44  9f000020  addli r1, zero, 4096
001a48  95824008  dma_cfg r5, r1, r4, 4
001a4c  35000000  dma_run zero
001a50  1d900300  unlock r7
001a54  9f001000  addli r1, zero, 8
001a58  5b60fdff  j -5376
001a5c  7d000000  xsignal zero, 0
001a60  bb600a00  bneq r20, zero, 56
001a64  9f200000  addli r1, zero, 2
001a68  7d100000  xwait zero, 0
001a6c  7d100000  xwait zero, 0
001a70  7d100000  xwait zero, 0
001a74  7d100000  xwait zero, 0
001a78  7d100000  xwait zero, 0
001a7c  7d100000  xwait zero, 0
001a80  7d100000  xwait zero, 0
001a84  7d100000  xwait zero, 0
001a88  1d800000  lock zero, r1
001a8c  0d000020  ew_cfg zero, zero, zero, 16
001a90  1d900000  unlock r1
001a94  7d400000  xsignal_mode_cfg zero
001a98  9f8ece01  addli sp, sp, 224
001a9c  00a00300  mfence { lm, sm, gm }
001aa0  00100000  exit
001aa4  00100000  exit
001aa8  00100000  exit
001aac  00100000  exit
001ab0  00100000  exit
001ab4  00100000  exit
001ab8  00100000  exit
001abc  00100000  exit
001ac0  00100000  exit
001ac4  00100000  exit
001ac8  00100000  exit
001acc  00100000  exit
001ad0  00100000  exit
001ad4  00100000  exit
001ad8  00100000  exit
001adc  00100000  exit
001ae0  00100000  exit
001ae4  00100000  exit
001ae8  00100000  exit
001aec  00100000  exit
001af0  00100000  exit
001af4  00100000  exit
001af8  00100000  exit
001afc  00100000  exit
001b00  00100000  exit
001b04  00100000  exit
001b08  00100000  exit
001b0c  00100000  exit
001b10  00100000  exit
001b14  00100000  exit
001b18  00100000  exit
001b1c  00100000  exit
001b20  00100000  exit
001b24  00100000  exit
001b28  00100000  exit
001b2c  00100000  exit
001b30  00100000  exit
001b34  00100000  exit
001b38  00100000  exit
001b3c  00100000  exit
001b40  00100000  exit
001b44  00100000  exit
001b48  00100000  exit
001b4c  00100000  exit
001b50  00100000  exit
001b54  00100000  exit
001b58  00100000  exit
001b5c  00100000  exit
001b60  00100000  exit
001b64  00100000  exit
001b68  00100000  exit
001b6c  00100000  exit
001b70  00100000  exit
001b74  00100000  exit
001b78  00100000  exit
001b7c  00100000  exit
001b80  00100000  exit
001b84  00100000  exit
001b88  00100000  exit
001b8c  00100000  exit
001b90  00100000  exit
001b94  00100000  exit
001b98  00100000  exit
001b9c  00100000  exit
001ba0  00100000  exit
001ba4  00100000  exit
001ba8  00100000  exit
001bac  00100000  exit
001bb0  00100000  exit
001bb4  00100000  exit
001bb8  00100000  exit
001bbc  00100000  exit
001bc0  00100000  exit
001bc4  00100000  exit
001bc8  00100000  exit
001bcc  00100000  exit
001bd0  00100000  exit
001bd4  00100000  exit
001bd8  00100000  exit
001bdc  00100000  exit
001be0  00100000  exit
001be4  00100000  exit
001be8  00100000  exit
001bec  00100000  exit
001bf0  00100000  exit
001bf4  00100000  exit
001bf8  00100000  exit
001bfc  00100000  exit
001c00  00100000  exit
001c04  00100000  exit
001c08  00100000  exit
001c0c  00100000  exit
001c10  00100000  exit
001c14  00100000  exit
001c18  00100000  exit
001c1c  00100000  exit
001c20  00100000  exit
001c24  00100000  exit
001c28  00100000  exit
001c2c  00100000  exit
001c30  00100000  exit
001c34  00100000  exit
001c38  00100000  exit
001c3c  00100000  exit
001c40  00100000  exit
001c44  00100000  exit
001c48  00100000  exit
001c4c  00100000  exit
001c50  00100000  exit
001c54  00100000  exit
001c58  00100000  exit
001c5c  00100000  exit
001c60  00100000  exit
001c64  00100000  exit
001c68  00100000  exit
001c6c  00100000  exit
001c70  00100000  exit
001c74  00100000  exit
001c78  00100000  exit
001c7c  00100000  exit
001c80  00100000  exit
001c84  00100000  exit
001c88  00100000  exit
001c8c  00100000  exit
001c90  00100000  exit
001c94  00100000  exit
001c98  00100000  exit
001c9c  00100000  exit
001ca0  00100000  exit
001ca4  00100000  exit
001ca8  00100000  exit
001cac  00100000  exit
001cb0  00100000  exit
001cb4  00100000  exit
001cb8  00100000  exit
001cbc  00100000  exit
001cc0  00100000  exit
001cc4  00100000  exit
001cc8  00100000  exit
001ccc  00100000  exit
001cd0  00100000  exit
001cd4  00100000  exit
001cd8  00100000  exit
001cdc  00100000  exit
001ce0  00100000  exit
