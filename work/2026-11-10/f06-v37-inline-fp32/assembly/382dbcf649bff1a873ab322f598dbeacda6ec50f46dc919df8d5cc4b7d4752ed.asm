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
0000b4  9f8ebefd  addli sp, sp, -296
0000b8  9f100000  addli r1, zero, 1
0000bc  003a0002  core_id r20
0000c0  1f8fde01  addli r30, sp, 232
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100a00  beq r20, zero, 36
0000cc  2bf1ffff  lui r2, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b10f1ff  ori r1, r2, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db250000  j 300
0000ec  1f220000  addli r4, zero, 2
0000f0  fdd00000  uni_sram_cfg r1, r1
0000f4  9f420000  addli r5, zero, 4
0000f8  6b510f02  load.d r[3:4], 32(r30)
0000fc  1f030020  addli r6, zero, 4096
000100  1d000200  lock zero, r4
000104  8d000020  ew_cfg r1, zero, zero, 16
000108  1d100200  unlock r4
00010c  1d800200  lock zero, r5
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15800104  dma_cfg zero, r3, zero, 2
000118  15006106  dma_cfg zero, r2, r6, 3
00011c  1f014000  addli r2, zero, 32
000120  9f010008  addli r3, zero, 1024
000124  15001008  dma_cfg zero, zero, r1, 4
000128  35000000  dma_run zero
00012c  1d900200  unlock r5
000130  7d800000  xsignal r1, 0
000134  7d900000  xwait r1, 0
000138  1d000000  lock zero, zero
00013c  01020000  ds_cfg r4, zero, 0
000140  01000002  ds_cfg zero, zero, 1
000144  01000016  ds_cfg zero, zero, 11
000148  0101001a  ds_cfg r2, zero, 13
00014c  1f510000  addli r2, zero, 5
000150  8101001c  ds_cfg r3, zero, 14
000154  21133008  shuffle_batch r6, zero, r3, 4
000158  1d100000  unlock zero
00015c  7d800000  xsignal r1, 0
000160  7d900000  xwait r1, 0
000164  1d000200  lock zero, r4
000168  ab100100  lui r1, 17
00016c  0d200300  ewtable_cfg r6, 0
000170  0da00002  ewtable_cfg r1, 1
000174  abf0ffff  lui r1, 1048575
000178  1d100200  unlock r4
00017c  7d000000  xsignal zero, 0
000180  7d100000  xwait zero, 0
000184  9b90f0ff  ori r1, r1, 4095
000188  80a10004  csr_set csr3, r1
00018c  9f300000  addli r1, zero, 3
000190  00d00100  sync_group
000194  7d800000  xsignal r1, 0
000198  9f700000  addli r1, zero, 7
00019c  7d800000  xsignal r1, 0
0001a0  7d000100  xsignal r2, 0
0001a4  9f301000  addli r1, zero, 11
0001a8  1f111000  addli r2, zero, 9
0001ac  7d800000  xsignal r1, 0
0001b0  7d000100  xsignal r2, 0
0001b4  9f501000  addli r1, zero, 13
0001b8  1f216000  addli r2, zero, 50
0001bc  7d800000  xsignal r1, 0
0001c0  7d000100  xsignal r2, 0
0001c4  9f402000  addli r1, zero, 20
0001c8  1f612000  addli r2, zero, 22
0001cc  7d800000  xsignal r1, 0
0001d0  7d000100  xsignal r2, 0
0001d4  9f003000  addli r1, zero, 24
0001d8  1f713000  addli r2, zero, 31
0001dc  7d800000  xsignal r1, 0
0001e0  7d000100  xsignal r2, 0
0001e4  9f305000  addli r1, zero, 43
0001e8  1f314000  addli r2, zero, 35
0001ec  7d800000  xsignal r1, 0
0001f0  7d000100  xsignal r2, 0
0001f4  9f704000  addli r1, zero, 39
0001f8  1f615000  addli r2, zero, 46
0001fc  7d800000  xsignal r1, 0
000200  7d000100  xsignal r2, 0
000204  9f306000  addli r1, zero, 51
000208  1f416000  addli r2, zero, 52
00020c  7d800000  xsignal r1, 0
000210  7d000100  xsignal r2, 0
000214  e3005f00  loadli.w r1,  40(r30)
000218  63415f00  loadli.w r2,  44(r30)
00021c  00d20002  load_param_i r4, 1
000220  e3016f00  loadli.w r3,  48(r30)
000224  8b101120  mul.s r1, r2, r1
000228  1f010200  addli r2, r4, 0
00022c  0b913050  fmac.s r2, r1, r3
000230  8b913020  mul.s r3, r1, r3
000234  1f71f1ff  addli r2, r2, -1
000238  0b114130  div.s r2, r2, r4
00023c  00520002  load_param_i r4, 0
000240  8b104120  mul.s r1, r2, r4
000244  0b114150  fmac.s r2, r2, r4
000248  0b113140  min.s r2, r2, r3
00024c  4b51110c  ble.s r2, r1, 6228
000250  33110128  sext_int2long r[3:4], r2
000254  1f2c0000  addli r24, zero, 2
000258  1f757000  addli r10, zero, 63
00025c  9f028000  addli r5, zero, 64
000260  2b490000  lui r18, 4
000264  1f7b1000  addli r22, zero, 15
000268  9f794000  addli r19, zero, 39
00026c  73382ff2  store.d r[3:4], -208(r30)
000270  b3910028  sext_int2long r[4:5], r1
000274  abc00000  lui r1, 12
000278  2b010100  lui r2, 16
00027c  9b9c0010  ori r25, r1, 256
000280  ab20373d  lui r1, 250738
000284  9b903071  ori r1, r1, 1811
000288  e7479fff  storeli.w r25, -132(r30)
00028c  e7021ffe  storeli.w r1, -216(r30)
000290  9b100110  ori r1, r2, 256
000294  2b810100  lui r2, 24
000298  e7071ffe  storeli.w r1, -136(r30)
00029c  ab400100  lui r1, 20
0002a0  9b1b0110  ori r23, r2, 256
0002a4  2bf1ff7f  lui r2, 524287
0002a8  9b900010  ori r1, r1, 256
0002ac  e70f7fff  storeli.w r23, -8(r30)
0002b0  67471ffe  storeli.w r1, -140(r30)
0002b4  ab200200  lui r1, 34
0002b8  9b900010  ori r1, r1, 256
0002bc  674a1ffe  storeli.w r1, -92(r30)
0002c0  9b10f1ff  ori r1, r2, 4095
0002c4  2b414c3f  lui r2, 259268
0002c8  e74f1ffe  storeli.w r1, -4(r30)
0002cc  ab600200  lui r1, 38
0002d0  9b900010  ori r1, r1, 256
0002d4  e7421ffe  storeli.w r1, -212(r30)
0002d8  9b10a122  ori r1, r2, 554
0002dc  2b810200  lui r2, 40
0002e0  67421ffe  storeli.w r1, -220(r30)
0002e4  aba00200  lui r1, 42
0002e8  9b900010  ori r1, r1, 256
0002ec  67021ffe  storeli.w r1, -224(r30)
0002f0  9b102184  ori r1, r2, 2114
0002f4  e7411ffe  storeli.w r1, -228(r30)
0002f8  db0d0000  j 108
0002fc  9f300000  addli r1, zero, 3
000300  00200100  mfence { sm }
000304  9f794000  addli r19, zero, 39
000308  003a0002  core_id r20
00030c  1f2c0000  addli r24, zero, 2
000310  1f757000  addli r10, zero, 63
000314  9f028000  addli r5, zero, 64
000318  2b490000  lui r18, 4
00031c  1f7b1000  addli r22, zero, 15
000320  7d800000  xsignal r1, 0
000324  9f402000  addli r1, zero, 20
000328  7d800000  xsignal r1, 0
00032c  9f304000  addli r1, zero, 35
000330  7d800000  xsignal r1, 0
000334  9f305000  addli r1, zero, 43
000338  7d800900  xsignal r19, 0
00033c  7d800000  xsignal r1, 0
000340  9f106000  addli r1, zero, 49
000344  7d800000  xsignal r1, 0
000348  e34cfffe  loadli.w r25,  -132(r30)
00034c  37100a04  beq r20, zero, 2052
000350  eb518ff4  load.d r[4:5], -184(r30)
000354  eb500ff3  load.d r[2:3], -208(r30)
000358  a7910100  addli.d r[4:5], r[4:5], 1
00035c  93b01104  setlt.sl r1, r[4:5], r[2:3]
000360  378d000a  beq r1, zero, 5952
000364  e3006f00  loadli.w r1,  48(r30)
000368  2b010200  lui r2, 32
00036c  73343ff4  store.d r[4:5], -184(r30)
000370  338d0228  zext_int2long r[27:28], r5
000374  1b1e2110  ori r28, r2, 258
000378  8b901130  div.s r1, r3, r1
00037c  9b110110  ori r3, r2, 256
000380  674ecfff  storeli.w r28, -28(r30)
000384  e7483ffe  storeli.w r3, -116(r30)
000388  9b111110  ori r3, r2, 257
00038c  1b113110  ori r2, r2, 259
000390  670e2ffe  storeli.w r2, -32(r30)
000394  63415f00  loadli.w r2,  44(r30)
000398  e74d3ffe  storeli.w r3, -36(r30)
00039c  9f010100  addli r3, r2, 0
0003a0  0b913038  mod.s r2, r1, r3
0003a4  8b903030  div.s r1, r1, r3
0003a8  abc10100  lui r3, 28
0003ac  1b920110  ori r4, r3, 256
0003b0  e70d4ffe  storeli.w r4, -40(r30)
0003b4  1b921110  ori r4, r3, 257
0003b8  674d4ffe  storeli.w r4, -44(r30)
0003bc  1b922110  ori r4, r3, 258
0003c0  9b913110  ori r3, r3, 259
0003c4  674f3ffe  storeli.w r3, -12(r30)
0003c8  abe10100  lui r3, 30
0003cc  670d4ffe  storeli.w r4, -48(r30)
0003d0  1b920110  ori r4, r3, 256
0003d4  670f4ffe  storeli.w r4, -16(r30)
0003d8  1b921110  ori r4, r3, 257
0003dc  e74e4ffe  storeli.w r4, -20(r30)
0003e0  1b922110  ori r4, r3, 258
0003e4  9b913110  ori r3, r3, 259
0003e8  e70e3ffe  storeli.w r3, -24(r30)
0003ec  abc10000  lui r3, 12
0003f0  e74c4ffe  storeli.w r4, -52(r30)
0003f4  9b9ac110  ori r21, r3, 268
0003f8  1b928110  ori r4, r3, 264
0003fc  9b914110  ori r3, r3, 260
000400  e7084ffe  storeli.w r4, -120(r30)
000404  67483ffe  storeli.w r3, -124(r30)
000408  b3010528  zext_int2long r[4:5], r10
00040c  67085fff  storeli.w r21, -128(r30)
000410  73343ff6  store.d r[4:5], -152(r30)
000414  b3910028  sext_int2long r[4:5], r1
000418  9f500000  addli r1, zero, 5
00041c  733c3ff2  store.d r[4:5], -200(r30)
000420  33110128  sext_int2long r[3:4], r2
000424  3b451a00  bneq r20, r1, 336
000428  1f320000  addli r4, zero, 3
00042c  9f000000  addli r1, zero, 0
000430  1f6e0000  addli r28, zero, 6
000434  7d100200  xwait r4, 0
000438  1d000c00  lock zero, r24
00043c  0d000002  ew_cfg zero, zero, zero, 1
000440  0d100000  ewcoeff_cfg zero, zero, zero, 0
000444  0d000504  ew_cfg zero, r10, zero, 2
000448  8d020006  ew_cfg r5, zero, zero, 3
00044c  9f620000  addli r5, zero, 6
000450  4d300000  ssaux zero, 0
000454  17315102  sll.d r[3:4], r[3:4], r5
000458  1d100c00  unlock r24
00045c  73302ff4  store.d r[3:4], -192(r30)
000460  1f411000  addli r2, zero, 12
000464  ab810000  lui r3, 8
000468  7d100100  xwait r2, 0
00046c  1f611000  addli r2, zero, 14
000470  7d100100  xwait r2, 0
000474  1d000c00  lock zero, r24
000478  2b01803f  lui r2, 260096
00047c  0d000002  ew_cfg zero, zero, zero, 1
000480  0d110100  ewcoeff_cfg r2, r2, zero, 0
000484  1f110000  addli r2, zero, 1
000488  0d000504  ew_cfg zero, r10, zero, 2
00048c  0d010006  ew_cfg r2, zero, zero, 3
000490  0b919011  add.s r2, r1, r25
000494  9f800002  addli r1, r1, 256
000498  2d013100  dsmadd r2, r2, r3, 0
00049c  bbdf20ff  bneq r1, r18, -12
0004a0  9f501000  addli r1, zero, 13
0004a4  67450ffe  storeli.w zero, -172(r30)
0004a8  670c0ffe  storeli.w zero, -64(r30)
0004ac  e70b0ffe  storeli.w zero, -72(r30)
0004b0  9f71f00f  addli r3, zero, 2047
0004b4  1f050000  addli r10, zero, 0
0004b8  9f0a0000  addli r21, zero, 0
0004bc  9f0b0000  addli r23, zero, 0
0004c0  1d100c00  unlock r24
0004c4  7d800000  xsignal r1, 0
0004c8  9f202000  addli r1, zero, 18
0004cc  7d800000  xsignal r1, 0
0004d0  9f302000  addli r1, zero, 19
0004d4  7d800000  xsignal r1, 0
0004d8  9f602000  addli r1, zero, 22
0004dc  7d900000  xwait r1, 0
0004e0  1d000c00  lock zero, r24
0004e4  0d000002  ew_cfg zero, zero, zero, 1
0004e8  e3005ffe  loadli.w r1,  -216(r30)
0004ec  8d100000  ewcoeff_cfg r1, zero, zero, 0
0004f0  0d800104  ew_cfg zero, r3, zero, 2
0004f4  0d0c0006  ew_cfg r24, zero, zero, 3
0004f8  0d0c0c26  ew_cfg r24, r24, zero, 19
0004fc  6301fffe  loadli.w r2,  -136(r30)
000500  4dd19c01  hp_ssmul r2, r25, r25, 0
000504  1f512000  addli r2, zero, 21
000508  0d000026  ew_cfg zero, zero, zero, 19
00050c  1d100c00  unlock r24
000510  7d000100  xsignal r2, 0
000514  1f013000  addli r2, zero, 24
000518  7d100100  xwait r2, 0
00051c  1d000c00  lock zero, r24
000520  0d000002  ew_cfg zero, zero, zero, 1
000524  0d101000  ewcoeff_cfg zero, zero, r1, 0
000528  0d800104  ew_cfg zero, r3, zero, 2
00052c  0d0c0006  ew_cfg r24, zero, zero, 3
000530  0d0c8c27  ew_cfg r24, r24, r24, 19
000534  e340effe  loadli.w r1,  -140(r30)
000538  ad909c01  dsmul r1, r25, r25, 0
00053c  9f702000  addli r1, zero, 23
000540  0d000026  ew_cfg zero, zero, zero, 19
000544  1d100c00  unlock r24
000548  7d000b00  xsignal r22, 0
00054c  7d800000  xsignal r1, 0
000550  e3414fff  loadli.w r3,  -92(r30)
000554  3d000000  xfence
000558  9f70f001  addli r1, zero, 255
00055c  00a00300  mfence { lm, sm, gm }
000560  80a20004  csr_set csr5, r1
000564  00e00200  sync_core
000568  37490a02  beq r20, zero, 1616
00056c  3beb0b02  bneq r23, zero, 1752
000570  5be90000  j 1864
000574  9f600000  addli r1, zero, 6
000578  67450ffe  storeli.w zero, -172(r30)
00057c  97301102  sll.d r[2:3], r[3:4], r1
000580  73301ff4  store.d r[2:3], -192(r30)
000584  9f300000  addli r1, zero, 3
000588  3fe84009  blt.s r1, r20, 4632
00058c  e3414fff  loadli.w r3,  -92(r30)
000590  9f100000  addli r1, zero, 1
000594  375a1a08  beq r20, r1, 4756
000598  37408a0b  beq r20, r24, 5136
00059c  9f300000  addli r1, zero, 3
0005a0  bb031a0a  bneq r20, r1, 5344
0005a4  9f703000  addli r1, zero, 31
0005a8  7d100b00  xwait r22, 0
0005ac  33010028  zext_int2long r[3:4], zero
0005b0  2bc90000  lui r18, 12
0005b4  7d900000  xwait r1, 0
0005b8  3d000000  xfence
0005bc  00a00300  mfence { lm, sm, gm }
0005c0  73302ffc  store.d r[3:4], -64(r30)
0005c4  a7000100  addli.d r[2:3], r[3:4], 0
0005c8  e349ffff  loadli.w r19,  -4(r30)
0005cc  634cbfff  loadli.w r24,  -36(r30)
0005d0  e30ccfff  loadli.w r25,  -32(r30)
0005d4  630a1fff  loadli.w r20,  -120(r30)
0005d8  634b0fff  loadli.w r22,  -124(r30)
0005dc  9f620000  addli r5, zero, 6
0005e0  eb540ffc  load.d r[10:11], -64(r30)
0005e4  e341fffe  loadli.w r3,  -132(r30)
0005e8  97b25002  sll.d r[6:7], r[2:3], r5
0005ec  8ba35410  add.ul r[8:9], r[10:11], r[6:7]
0005f0  9b17c911  ori r15, r18, 284
0005f4  1b188911  ori r16, r18, 280
0005f8  9b184911  ori r17, r18, 276
0005fc  a7841400  addli.d r[10:11], r[10:11], 8
000600  9bb32300  slli r7, r7, 2
000604  1b140911  ori r8, r18, 272
000608  0b965311  add.s r12, r7, r21
00060c  8b953310  add.s r11, r7, r3
000610  0b948310  add.s r8, r7, r8
000614  8b964311  add.s r13, r7, r20
000618  0b976311  add.s r14, r7, r22
00061c  8b97f310  add.s r15, r7, r15
000620  0b980311  add.s r16, r7, r16
000624  8b981311  add.s r17, r7, r17
000628  8b937311  add.s r7, r7, r23
00062c  6f460600  loads.w r12, 0(r12)
000630  efc60600  loads.w r13, 0(r13)
000634  6f470700  loads.w r14, 0(r14)
000638  efc50500  loads.w r11, 0(r11)
00063c  6f440400  loads.w r8, 0(r8)
000640  efc80800  loads.w r17, 0(r17)
000644  6f480800  loads.w r16, 0(r16)
000648  efc70700  loads.w r15, 0(r15)
00064c  17063601  and r12, r12, r19
000650  97853501  and r11, r11, r19
000654  17073701  and r14, r14, r19
000658  97863601  and r13, r13, r19
00065c  17043401  and r8, r8, r19
000660  97883801  and r17, r17, r19
000664  17083801  and r16, r16, r19
000668  97873701  and r15, r15, r19
00066c  73e6c300  stores.w r12, 12(r7)
000670  13a6a403  setneq.d r12, r[10:11], r[27:28]
000674  73e4d300  stores.w r13, 8(r7)
000678  73e2e300  stores.w r14, 4(r7)
00067c  73e0b300  stores.w r11, 0(r7)
000680  73eef300  stores.w r15, 28(r7)
000684  73ec0301  stores.w r16, 24(r7)
000688  73ea1301  stores.w r17, 20(r7)
00068c  73e88300  stores.w r8, 16(r7)
000690  3b7d06fe  bneq r12, zero, -164
000694  eb528ff6  load.d r[6:7], -152(r30)
000698  93a25004  setlt.ul r5, r[2:3], r[6:7]
00069c  a7900000  addli.d r[2:3], r[2:3], 1
0006a0  bbfc02fe  bneq r5, zero, -196
0006a4  9f002000  addli r1, zero, 16
0006a8  00200100  mfence { sm }
0006ac  b3010028  zext_int2long r[4:5], zero
0006b0  2b0b807f  lui r22, 522240
0006b4  7d800000  xsignal r1, 0
0006b8  9f103000  addli r1, zero, 25
0006bc  7d800000  xsignal r1, 0
0006c0  7d900000  xwait r1, 0
0006c4  9f304000  addli r1, zero, 35
0006c8  7d900000  xwait r1, 0
0006cc  3d000000  xfence
0006d0  00a00300  mfence { lm, sm, gm }
0006d4  73303ffc  store.d r[4:5], -64(r30)
0006d8  63419fff  loadli.w r2,  -52(r30)
0006dc  9f600000  addli r1, zero, 6
0006e0  9f730000  addli r7, zero, 7
0006e4  eb550ffc  load.d r[12:13], -64(r30)
0006e8  630aefff  loadli.w r20,  -16(r30)
0006ec  e30adfff  loadli.w r21,  -24(r30)
0006f0  97b21102  sll.d r[6:7], r[4:5], r1
0006f4  e340dfff  loadli.w r1,  -20(r30)
0006f8  97b47102  sll.d r[10:11], r[4:5], r7
0006fc  8ba35510  add.ul r[8:9], r[12:13], r[6:7]
000700  8ba79510  add.ul r[16:17], r[12:13], r[10:11]
000704  a7c50500  addli.d r[12:13], r[12:13], 4
000708  9bb32300  slli r7, r7, 2
00070c  13a9a503  setneq.d r18, r[12:13], r[27:28]
000710  8b984711  add.s r17, r15, r20
000714  8b991710  add.s r19, r15, r1
000718  8b937311  add.s r7, r7, r23
00071c  6fc40300  loads.w r8, 0(r7)
000720  efc64300  loads.w r13, 4(r7)
000724  6fc78300  loads.w r14, 8(r7)
000728  efc3c300  loads.w r7, 12(r7)
00072c  13048b04  setlt.u r8, r22, r8
000730  9306db04  setlt.u r13, r22, r13
000734  1307eb04  setlt.u r14, r22, r14
000738  93037b04  setlt.u r7, r22, r7
00073c  73c08800  stores.b r8, 0(r17)
000740  0b942710  add.s r8, r15, r2
000744  8b975711  add.s r15, r15, r21
000748  73c0d900  stores.b r13, 0(r19)
00074c  7340e400  stores.b r14, 0(r8)
000750  73c07700  stores.b r7, 0(r15)
000754  bb2e09fe  bneq r18, zero, -88
000758  eb528ff6  load.d r[6:7], -152(r30)
00075c  93a25104  setlt.ul r5, r[4:5], r[6:7]
000760  a7910100  addli.d r[4:5], r[4:5], 1
000764  bbed02fe  bneq r5, zero, -136
000768  1f213000  addli r2, zero, 26
00076c  9f004000  addli r1, zero, 32
000770  00200100  mfence { sm }
000774  9f6a0000  addli r21, zero, 6
000778  7d000100  xsignal r2, 0
00077c  7d800000  xsignal r1, 0
000780  9f704000  addli r1, zero, 39
000784  7d100100  xwait r2, 0
000788  7d900000  xwait r1, 0
00078c  b3000028  zext_int2long r[2:3], zero
000790  3d000000  xfence
000794  00a00300  mfence { lm, sm, gm }
000798  a7810000  addli.d r[4:5], r[2:3], 0
00079c  9f730000  addli r7, zero, 7
0007a0  634a1fff  loadli.w r20,  -116(r30)
0007a4  97b25103  sll.d r[6:7], r[4:5], r21
0007a8  a7850000  addli.d r[12:13], r[2:3], 0
0007ac  97b47102  sll.d r[10:11], r[4:5], r7
0007b0  8ba35510  add.ul r[8:9], r[12:13], r[6:7]
0007b4  8ba79510  add.ul r[16:17], r[12:13], r[10:11]
0007b8  a7c50500  addli.d r[12:13], r[12:13], 4
0007bc  9bb32300  slli r7, r7, 2
0007c0  13a9a503  setneq.d r18, r[12:13], r[27:28]
0007c4  8b984711  add.s r17, r15, r20
0007c8  8b998711  add.s r19, r15, r24
0007cc  8b937311  add.s r7, r7, r23
0007d0  6fc40300  loads.w r8, 0(r7)
0007d4  efc64300  loads.w r13, 4(r7)
0007d8  6fc78300  loads.w r14, 8(r7)
0007dc  efc3c300  loads.w r7, 12(r7)
0007e0  13046401  seteq r8, r8, r22
0007e4  93866601  seteq r13, r13, r22
0007e8  13076701  seteq r14, r14, r22
0007ec  93836301  seteq r7, r7, r22
0007f0  73c08800  stores.b r8, 0(r17)
0007f4  0b94c711  add.s r8, r15, r28
0007f8  8b979711  add.s r15, r15, r25
0007fc  73c0d900  stores.b r13, 0(r19)
000800  7340e400  stores.b r14, 0(r8)
000804  73c07700  stores.b r7, 0(r15)
000808  bb2e09fe  bneq r18, zero, -88
00080c  eb528ff6  load.d r[6:7], -152(r30)
000810  93a25104  setlt.ul r5, r[4:5], r[6:7]
000814  a7910100  addli.d r[4:5], r[4:5], 1
000818  3b9e02fe  bneq r5, zero, -124
00081c  9f303000  addli r1, zero, 27
000820  1f414000  addli r2, zero, 36
000824  00200100  mfence { sm }
000828  b3010028  zext_int2long r[4:5], zero
00082c  7d800000  xsignal r1, 0
000830  7d000100  xsignal r2, 0
000834  7d900000  xwait r1, 0
000838  9f305000  addli r1, zero, 43
00083c  7d900000  xwait r1, 0
000840  3d000000  xfence
000844  00a00300  mfence { lm, sm, gm }
000848  73303ffc  store.d r[4:5], -64(r30)
00084c  630bbfff  loadli.w r22,  -40(r30)
000850  634aafff  loadli.w r20,  -44(r30)
000854  630eafff  loadli.w r28,  -48(r30)
000858  9f730000  addli r7, zero, 7
00085c  eb550ffc  load.d r[12:13], -64(r30)
000860  e340efff  loadli.w r1,  -12(r30)
000864  97b25103  sll.d r[6:7], r[4:5], r21
000868  97b47102  sll.d r[10:11], r[4:5], r7
00086c  8ba35510  add.ul r[8:9], r[12:13], r[6:7]
000870  8ba79510  add.ul r[16:17], r[12:13], r[10:11]
000874  a7c50500  addli.d r[12:13], r[12:13], 4
000878  9bb32300  slli r7, r7, 2
00087c  13a9a503  setneq.d r18, r[12:13], r[27:28]
000880  8b986711  add.s r17, r15, r22
000884  8b994711  add.s r19, r15, r20
000888  8b937311  add.s r7, r7, r23
00088c  6fc40300  loads.w r8, 0(r7)
000890  efc64300  loads.w r13, 4(r7)
000894  6fc78300  loads.w r14, 8(r7)
000898  efc3c300  loads.w r7, 12(r7)
00089c  13040400  seteq r8, r8, zero
0008a0  93860600  seteq r13, r13, zero
0008a4  13070700  seteq r14, r14, zero
0008a8  93830300  seteq r7, r7, zero
0008ac  73c08800  stores.b r8, 0(r17)
0008b0  0b94c711  add.s r8, r15, r28
0008b4  8b971710  add.s r15, r15, r1
0008b8  73c0d900  stores.b r13, 0(r19)
0008bc  7340e400  stores.b r14, 0(r8)
0008c0  73c07700  stores.b r7, 0(r15)
0008c4  bb2e09fe  bneq r18, zero, -88
0008c8  eb508ff6  load.d r[2:3], -152(r30)
0008cc  93a21104  setlt.ul r5, r[4:5], r[2:3]
0008d0  a7910100  addli.d r[4:5], r[4:5], 1
0008d4  3b9e02fe  bneq r5, zero, -124
0008d8  9f413000  addli r3, zero, 28
0008dc  1f015000  addli r2, zero, 40
0008e0  9f502000  addli r1, zero, 21
0008e4  00200100  mfence { sm }
0008e8  1f6e0000  addli r28, zero, 6
0008ec  2b490000  lui r18, 4
0008f0  7d800100  xsignal r3, 0
0008f4  7d000100  xsignal r2, 0
0008f8  7d900000  xwait r1, 0
0008fc  9f702000  addli r1, zero, 23
000900  7d900000  xwait r1, 0
000904  9f004000  addli r1, zero, 32
000908  7d900100  xwait r3, 0
00090c  7d900000  xwait r1, 0
000910  9f404000  addli r1, zero, 36
000914  7d900000  xwait r1, 0
000918  7d100100  xwait r2, 0
00091c  3d000000  xfence
000920  b3000028  zext_int2long r[2:3], zero
000924  00a00300  mfence { lm, sm, gm }
000928  6345efff  loadli.w r10,  -12(r30)
00092c  73341ffa  store.d r[2:3], -88(r30)
000930  27810000  addli.d r[3:4], r[2:3], 0
000934  5b030000  j 24
000938  eb508ff6  load.d r[2:3], -152(r30)
00093c  eb510ffb  load.d r[4:5], -80(r30)
000940  93a01104  setlt.ul r1, r[4:5], r[2:3]
000944  27910100  addli.d r[3:4], r[4:5], 1
000948  b7cf0006  beq r1, zero, 4080
00094c  9f700000  addli r1, zero, 7
000950  eb598ffa  load.d r[20:21], -88(r30)
000954  1732c103  sll.d r[5:6], r[3:4], r28
000958  73382ffa  store.d r[3:4], -80(r30)
00095c  97301102  sll.d r[2:3], r[3:4], r1
000960  73304ffc  store.d r[5:6], -64(r30)
000964  733c1ffa  store.d r[2:3], -72(r30)
000968  5b050000  j 40
00096c  a7c90900  addli.d r[20:21], r[20:21], 4
000970  e30ccfff  loadli.w r25,  -32(r30)
000974  8b904010  add.s r1, r1, r4
000978  93a1a903  setneq.d r3, r[20:21], r[27:28]
00097c  73e67000  stores.w r7, 12(r1)
000980  73e42000  stores.w r2, 8(r1)
000984  73e25001  stores.w r21, 4(r1)
000988  73e06000  stores.w r6, 0(r1)
00098c  b7be01fe  beq r3, zero, -84
000990  eb500ffc  load.d r[2:3], -64(r30)
000994  6b528ffb  load.d r[5:6], -72(r30)
000998  6344afff  loadli.w r8,  -44(r30)
00099c  e304afff  loadli.w r9,  -48(r30)
0009a0  e3469fff  loadli.w r13,  -52(r30)
0009a4  6308dfff  loadli.w r16,  -24(r30)
0009a8  8ba01910  add.ul r[2:3], r[20:21], r[2:3]
0009ac  8ba24910  add.ul r[6:7], r[20:21], r[5:6]
0009b0  9bb02000  slli r1, r1, 2
0009b4  6301fffe  loadli.w r2,  -136(r30)
0009b8  0b926211  add.s r4, r5, r22
0009bc  0b948210  add.s r8, r5, r8
0009c0  8b949210  add.s r9, r5, r9
0009c4  0b969211  add.s r12, r5, r25
0009c8  0b95a210  add.s r10, r5, r10
0009cc  8b96d210  add.s r13, r5, r13
0009d0  ab0c807f  lui r25, 522240
0009d4  6f170200  loads.bu r14, 0(r4)
0009d8  63421fff  loadli.w r4,  -116(r30)
0009dc  6f1b0400  loads.bu r22, 0(r8)
0009e0  0b948211  add.s r8, r5, r24
0009e4  ef950400  loads.bu r11, 0(r9)
0009e8  e344cfff  loadli.w r9,  -28(r30)
0009ec  ef9b0600  loads.bu r23, 0(r13)
0009f0  e346effe  loadli.w r13,  -140(r30)
0009f4  6f150500  loads.bu r10, 0(r10)
0009f8  8b912010  add.s r3, r1, r2
0009fc  6f1c0400  loads.bu r24, 0(r8)
000a00  6304efff  loadli.w r8,  -16(r30)
000a04  efc30100  loads.w r7, 0(r3)
000a08  0b924210  add.s r4, r5, r4
000a0c  8b949210  add.s r9, r5, r9
000a10  8b96d010  add.s r13, r1, r13
000a14  efca4100  loads.w r21, 4(r3)
000a18  6fc18100  loads.w r2, 8(r3)
000a1c  efc1c100  loads.w r3, 12(r3)
000a20  ef170200  loads.bu r15, 0(r4)
000a24  6f120600  loads.bu r4, 0(r12)
000a28  6346dfff  loadli.w r12,  -20(r30)
000a2c  0b948210  add.s r8, r5, r8
000a30  ef940400  loads.bu r9, 0(r9)
000a34  0b96c210  add.s r12, r5, r12
000a38  8b920211  add.s r5, r5, r16
000a3c  6f130400  loads.bu r6, 0(r8)
000a40  6344ffff  loadli.w r8,  -4(r30)
000a44  6f980200  loads.bu r16, 0(r5)
000a48  6f160600  loads.bu r12, 0(r12)
000a4c  efc2c600  loads.w r5, 12(r13)
000a50  97838300  and r7, r7, r8
000a54  13849301  seteq r8, r7, r25
000a58  93880300  seteq r17, r7, zero
000a5c  93837c04  setlt.u r7, r25, r7
000a60  efcc8600  loads.w r25, 8(r13)
000a64  17078700  and r14, r14, r8
000a68  6fc44600  loads.w r8, 4(r13)
000a6c  97871701  and r15, r15, r17
000a70  17936300  or r6, r7, r6
000a74  ab03c07f  lui r7, 523264
000a78  1717f700  or r14, r14, r15
000a7c  17136700  or r6, r14, r6
000a80  1b071300  andi r14, r6, 1
000a84  2b03c07f  lui r6, 523264
000a88  3b200700  bneq r14, zero, 8
000a8c  6fc30600  loads.w r6, 0(r13)
000a90  e346ffff  loadli.w r13,  -4(r30)
000a94  ab08807f  lui r17, 522240
000a98  9786da00  and r13, r21, r13
000a9c  ab0ac07f  lui r21, 523264
000aa0  13871601  seteq r14, r13, r17
000aa4  93870600  seteq r15, r13, zero
000aa8  9386d804  setlt.u r13, r17, r13
000aac  1707eb00  and r14, r22, r14
000ab0  9707fc00  and r15, r24, r15
000ab4  1796c600  or r12, r13, r12
000ab8  1717f700  or r14, r14, r15
000abc  1716c700  or r12, r14, r12
000ac0  1b061600  andi r12, r12, 1
000ac4  3b200600  bneq r12, zero, 8
000ac8  9f0a0400  addli r21, r8, 0
000acc  e346ffff  loadli.w r13,  -4(r30)
000ad0  2b07807f  lui r14, 522240
000ad4  634cbfff  loadli.w r24,  -36(r30)
000ad8  630bbfff  loadli.w r22,  -40(r30)
000adc  1701d100  and r2, r2, r13
000ae0  1304e100  seteq r8, r2, r14
000ae4  13060100  seteq r12, r2, zero
000ae8  13012704  setlt.u r2, r14, r2
000aec  17848500  and r8, r11, r8
000af0  9784c400  and r9, r9, r12
000af4  17117101  or r2, r2, r23
000af8  17149400  or r8, r8, r9
000afc  17112400  or r2, r8, r2
000b00  1b041100  andi r8, r2, 1
000b04  2b01c07f  lui r2, 523264
000b08  3b200400  bneq r8, zero, 8
000b0c  1f810c00  addli r2, r25, 0
000b10  9781d100  and r3, r3, r13
000b14  ab05807f  lui r11, 522240
000b18  1384b100  seteq r8, r3, r11
000b1c  93840100  seteq r9, r3, zero
000b20  93813504  setlt.u r3, r11, r3
000b24  17048500  and r8, r10, r8
000b28  17029200  and r4, r4, r9
000b2c  97910101  or r3, r3, r16
000b30  6345efff  loadli.w r10,  -12(r30)
000b34  17124400  or r4, r8, r4
000b38  97113200  or r3, r4, r3
000b3c  6302ffff  loadli.w r4,  -8(r30)
000b40  9b811100  andi r3, r3, 1
000b44  bba801fe  bneq r3, zero, -472
000b48  9f830200  addli r7, r5, 0
000b4c  5bc4ffff  j -480
000b50  6b518ff3  load.d r[3:4], -200(r30)
000b54  9f102000  addli r1, zero, 17
000b58  eb538f01  load.d r[8:9], 24(r30)
000b5c  1f130000  addli r6, zero, 1
000b60  97301102  sll.d r[2:3], r[3:4], r1
000b64  eb510ff4  load.d r[4:5], -192(r30)
000b68  8ba01310  add.ul r[2:3], r[8:9], r[2:3]
000b6c  9f136000  addli r7, zero, 49
000b70  97b16102  sll.d r[4:5], r[4:5], r6
000b74  7d900300  xwait r7, 0
000b78  8ba03010  add.ul r[2:3], r[2:3], r[4:5]
000b7c  1f520000  addli r4, zero, 5
000b80  9f010002  addli r3, zero, 256
000b84  1d000200  lock zero, r4
000b88  15030000  dma_cfg r6, zero, zero, 0
000b8c  15000302  dma_cfg zero, r6, zero, 1
000b90  15010004  dma_cfg r2, zero, zero, 2
000b94  63038fff  loadli.w r6,  -64(r30)
000b98  95003306  dma_cfg r1, r6, r3, 3
000b9c  9f000010  addli r1, zero, 2048
000ba0  95805108  dma_cfg r1, r3, r5, 4
000ba4  9f206000  addli r1, zero, 50
000ba8  35000000  dma_run zero
000bac  1d100200  unlock r4
000bb0  7d800000  xsignal r1, 0
000bb4  dbf3feff  j -2148
000bb8  b3000028  zext_int2long r[2:3], zero
000bbc  3d000000  xfence
000bc0  00a00300  mfence { lm, sm, gm }
000bc4  27820000  addli.d r[5:6], r[2:3], 0
000bc8  e301ffff  loadli.w r3,  -8(r30)
000bcc  634b4fff  loadli.w r22,  -92(r30)
000bd0  1733c203  sll.d r[7:8], r[5:6], r28
000bd4  27840000  addli.d r[9:10], r[2:3], 0
000bd8  8b256410  add.ul r[12:13], r[9:10], r[7:8]
000bdc  27041400  addli.d r[9:10], r[9:10], 8
000be0  9bb52500  slli r11, r11, 2
000be4  1326a403  setneq.d r12, r[9:10], r[27:28]
000be8  8b963510  add.s r13, r11, r3
000bec  8b956511  add.s r11, r11, r22
000bf0  6fd78600  loads.d r[15:16], 8(r13)
000bf4  6fd80600  loads.d r[17:18], 0(r13)
000bf8  6fd98601  loads.d r[19:20], 24(r13)
000bfc  6fdc0601  loads.d r[25:26], 16(r13)
000c00  73f4e500  stores.d r[15:16], 8(r11)
000c04  73f00501  stores.d r[17:18], 0(r11)
000c08  73fc2501  stores.d r[19:20], 24(r11)
000c0c  73f88501  stores.d r[25:26], 16(r11)
000c10  3b2f06fe  bneq r12, zero, -56
000c14  9f710000  addli r3, zero, 7
000c18  33830128  zext_int2long r[7:8], r3
000c1c  13236204  setlt.ul r6, r[5:6], r[7:8]
000c20  27120200  addli.d r[5:6], r[5:6], 1
000c24  bb1e03fe  bneq r6, zero, -92
000c28  00200100  mfence { sm }
000c2c  1f2c0000  addli r24, zero, 2
000c30  2b490000  lui r18, 4
000c34  1f7b1000  addli r22, zero, 15
000c38  9f794000  addli r19, zero, 39
000c3c  e3414fff  loadli.w r3,  -92(r30)
000c40  b7e10b00  beq r23, zero, 120
000c44  3d000000  xfence
000c48  9f001000  addli r1, zero, 8
000c4c  00a00300  mfence { lm, sm, gm }
000c50  e30bffff  loadli.w r23,  -8(r30)
000c54  b3800028  zext_int2long r[2:3], r1
000c58  17b2c003  sll.d r[5:6], r[2:3], r28
000c5c  33030028  zext_int2long r[7:8], zero
000c60  0b244310  add.ul r[9:10], r[7:8], r[5:6]
000c64  27031300  addli.d r[7:8], r[7:8], 8
000c68  1b342400  slli r8, r8, 2
000c6c  9324a303  setneq.d r9, r[7:8], r[27:28]
000c70  8b157411  add.s r11, r8, r23
000c74  0b143410  add.s r8, r8, r3
000c78  6fd68500  loads.d r[13:14], 8(r11)
000c7c  6fd70500  loads.d r[15:16], 0(r11)
000c80  6fd88501  loads.d r[17:18], 24(r11)
000c84  6fd90501  loads.d r[19:20], 16(r11)
000c88  7374c400  stores.d r[13:14], 8(r8)
000c8c  7370e400  stores.d r[15:16], 0(r8)
000c90  737c0401  stores.d r[17:18], 24(r8)
000c94  73782401  stores.d r[19:20], 16(r8)
000c98  3baf04fe  bneq r9, zero, -56
000c9c  33020b28  zext_int2long r[5:6], r22
000ca0  13a24004  setlt.ul r4, r[2:3], r[5:6]
000ca4  a7900000  addli.d r[2:3], r[2:3], 1
000ca8  bb4e02fe  bneq r4, zero, -80
000cac  2b490000  lui r18, 4
000cb0  9f794000  addli r19, zero, 39
000cb4  00200100  mfence { sm }
000cb8  e34cfffe  loadli.w r25,  -132(r30)
000cbc  e30bffff  loadli.w r23,  -8(r30)
000cc0  634ecfff  loadli.w r28,  -28(r30)
000cc4  37b60a00  beq r21, zero, 396
000cc8  9f002000  addli r1, zero, 16
000ccc  3d000000  xfence
000cd0  9f6a0000  addli r21, zero, 6
000cd4  00a00300  mfence { lm, sm, gm }
000cd8  b3800028  zext_int2long r[2:3], r1
000cdc  17b25003  sll.d r[5:6], r[2:3], r21
000ce0  33030028  zext_int2long r[7:8], zero
000ce4  0b244310  add.ul r[9:10], r[7:8], r[5:6]
000ce8  27031300  addli.d r[7:8], r[7:8], 8
000cec  1b342400  slli r8, r8, 2
000cf0  9324a303  setneq.d r9, r[7:8], r[27:28]
000cf4  8b157411  add.s r11, r8, r23
000cf8  0b143410  add.s r8, r8, r3
000cfc  6fd68500  loads.d r[13:14], 8(r11)
000d00  6fd70500  loads.d r[15:16], 0(r11)
000d04  6fd88501  loads.d r[17:18], 24(r11)
000d08  6fd90501  loads.d r[19:20], 16(r11)
000d0c  7374c400  stores.d r[13:14], 8(r8)
000d10  7370e400  stores.d r[15:16], 0(r8)
000d14  737c0401  stores.d r[17:18], 24(r8)
000d18  73782401  stores.d r[19:20], 16(r8)
000d1c  3baf04fe  bneq r9, zero, -56
000d20  1f722000  addli r4, zero, 23
000d24  33020228  zext_int2long r[5:6], r4
000d28  13a24004  setlt.ul r4, r[2:3], r[5:6]
000d2c  a7900000  addli.d r[2:3], r[2:3], 1
000d30  bb3e02fe  bneq r4, zero, -84
000d34  2b490000  lui r18, 4
000d38  9f794000  addli r19, zero, 39
000d3c  00200100  mfence { sm }
000d40  e34aaffe  loadli.w r21,  -172(r30)
000d44  3bd40a00  bneq r21, zero, 276
000d48  37360500  beq r10, zero, 396
000d4c  9f004000  addli r1, zero, 32
000d50  3d000000  xfence
000d54  00a00300  mfence { lm, sm, gm }
000d58  b3800028  zext_int2long r[2:3], r1
000d5c  1f620000  addli r4, zero, 6
000d60  33030028  zext_int2long r[7:8], zero
000d64  17b24002  sll.d r[5:6], r[2:3], r4
000d68  0b244310  add.ul r[9:10], r[7:8], r[5:6]
000d6c  27031300  addli.d r[7:8], r[7:8], 8
000d70  1b342400  slli r8, r8, 2
000d74  9324a303  setneq.d r9, r[7:8], r[27:28]
000d78  0b157411  add.s r10, r8, r23
000d7c  0b143410  add.s r8, r8, r3
000d80  ef558500  loads.d r[12:13], 8(r10)
000d84  ef560500  loads.d r[14:15], 0(r10)
000d88  ef578501  loads.d r[16:17], 24(r10)
000d8c  ef580501  loads.d r[18:19], 16(r10)
000d90  7374b400  stores.d r[12:13], 8(r8)
000d94  7370d400  stores.d r[14:15], 0(r8)
000d98  737cf400  stores.d r[16:17], 24(r8)
000d9c  73781401  stores.d r[18:19], 16(r8)
000da0  3baf04fe  bneq r9, zero, -56
000da4  33820928  zext_int2long r[5:6], r19
000da8  13a24004  setlt.ul r4, r[2:3], r[5:6]
000dac  a7900000  addli.d r[2:3], r[2:3], 1
000db0  bb3e02fe  bneq r4, zero, -84
000db4  2b490000  lui r18, 4
000db8  00200100  mfence { sm }
000dbc  9f500000  addli r1, zero, 5
000dc0  37741a00  beq r20, r1, 284
000dc4  e3007fff  loadli.w r1,  -72(r30)
000dc8  37c60000  beq r1, zero, 400
000dcc  9f006000  addli r1, zero, 48
000dd0  3d000000  xfence
000dd4  00a00300  mfence { lm, sm, gm }
000dd8  b3800028  zext_int2long r[2:3], r1
000ddc  9f610000  addli r3, zero, 6
000de0  e3494fff  loadli.w r19,  -92(r30)
000de4  b3020028  zext_int2long r[6:7], zero
000de8  97b13002  sll.d r[4:5], r[2:3], r3
000dec  8ba33210  add.ul r[8:9], r[6:7], r[4:5]
000df0  a7821200  addli.d r[6:7], r[6:7], 8
000df4  9bb32300  slli r7, r7, 2
000df8  13a4a203  setneq.d r8, r[6:7], r[27:28]
000dfc  8b947311  add.s r9, r7, r23
000e00  8b933311  add.s r7, r7, r19
000e04  6fd58400  loads.d r[11:12], 8(r9)
000e08  6fd60400  loads.d r[13:14], 0(r9)
000e0c  6fd78401  loads.d r[15:16], 24(r9)
000e10  6fd80401  loads.d r[17:18], 16(r9)
000e14  73f4a300  stores.d r[11:12], 8(r7)
000e18  73f0c300  stores.d r[13:14], 0(r7)
000e1c  73fce300  stores.d r[15:16], 24(r7)
000e20  73f80301  stores.d r[17:18], 16(r7)
000e24  3b2f04fe  bneq r8, zero, -56
000e28  9f716000  addli r3, zero, 55
000e2c  b3810128  zext_int2long r[4:5], r3
000e30  93a13004  setlt.ul r3, r[2:3], r[4:5]
000e34  a7900000  addli.d r[2:3], r[2:3], 1
000e38  bb9e01fe  bneq r3, zero, -92
000e3c  9f794000  addli r19, zero, 39
000e40  00200100  mfence { sm }
000e44  e3008fff  loadli.w r1,  -64(r30)
000e48  37b60000  beq r1, zero, 396
000e4c  db220000  j 276
000e50  e34aaffe  loadli.w r21,  -172(r30)
000e54  b7db0afe  beq r21, zero, -268
000e58  9f003000  addli r1, zero, 24
000e5c  3d000000  xfence
000e60  00a00300  mfence { lm, sm, gm }
000e64  b3800028  zext_int2long r[2:3], r1
000e68  1f620000  addli r4, zero, 6
000e6c  33030028  zext_int2long r[7:8], zero
000e70  17b24002  sll.d r[5:6], r[2:3], r4
000e74  0b244310  add.ul r[9:10], r[7:8], r[5:6]
000e78  27031300  addli.d r[7:8], r[7:8], 8
000e7c  1b342400  slli r8, r8, 2
000e80  9324a303  setneq.d r9, r[7:8], r[27:28]
000e84  8b157411  add.s r11, r8, r23
000e88  0b143410  add.s r8, r8, r3
000e8c  6fd68500  loads.d r[13:14], 8(r11)
000e90  6fd70500  loads.d r[15:16], 0(r11)
000e94  6fd88501  loads.d r[17:18], 24(r11)
000e98  6fd90501  loads.d r[19:20], 16(r11)
000e9c  7374c400  stores.d r[13:14], 8(r8)
000ea0  7370e400  stores.d r[15:16], 0(r8)
000ea4  737c0401  stores.d r[17:18], 24(r8)
000ea8  73782401  stores.d r[19:20], 16(r8)
000eac  3baf04fe  bneq r9, zero, -56
000eb0  1f723000  addli r4, zero, 31
000eb4  33020228  zext_int2long r[5:6], r4
000eb8  13a24004  setlt.ul r4, r[2:3], r[5:6]
000ebc  a7900000  addli.d r[2:3], r[2:3], 1
000ec0  bb2e02fe  bneq r4, zero, -88
000ec4  2b490000  lui r18, 4
000ec8  9f794000  addli r19, zero, 39
000ecc  00200100  mfence { sm }
000ed0  bb7905fe  bneq r10, zero, -388
000ed4  9f500000  addli r1, zero, 5
000ed8  bb3b1afe  bneq r20, r1, -276
000edc  9f005000  addli r1, zero, 40
000ee0  3d000000  xfence
000ee4  00a00300  mfence { lm, sm, gm }
000ee8  b3800028  zext_int2long r[2:3], r1
000eec  1f620000  addli r4, zero, 6
000ef0  33030028  zext_int2long r[7:8], zero
000ef4  17b24002  sll.d r[5:6], r[2:3], r4
000ef8  0b244310  add.ul r[9:10], r[7:8], r[5:6]
000efc  27031300  addli.d r[7:8], r[7:8], 8
000f00  1b342400  slli r8, r8, 2
000f04  9324a303  setneq.d r9, r[7:8], r[27:28]
000f08  0b157411  add.s r10, r8, r23
000f0c  0b143410  add.s r8, r8, r3
000f10  ef558500  loads.d r[12:13], 8(r10)
000f14  ef560500  loads.d r[14:15], 0(r10)
000f18  ef578501  loads.d r[16:17], 24(r10)
000f1c  ef580501  loads.d r[18:19], 16(r10)
000f20  7374b400  stores.d r[12:13], 8(r8)
000f24  7370d400  stores.d r[14:15], 0(r8)
000f28  737cf400  stores.d r[16:17], 24(r8)
000f2c  73781401  stores.d r[18:19], 16(r8)
000f30  3baf04fe  bneq r9, zero, -56
000f34  1f725000  addli r4, zero, 47
000f38  33020228  zext_int2long r[5:6], r4
000f3c  13a24004  setlt.ul r4, r[2:3], r[5:6]
000f40  a7900000  addli.d r[2:3], r[2:3], 1
000f44  bb2e02fe  bneq r4, zero, -88
000f48  2b490000  lui r18, 4
000f4c  00200100  mfence { sm }
000f50  e3007fff  loadli.w r1,  -72(r30)
000f54  bbe900fe  bneq r1, zero, -392
000f58  e3008fff  loadli.w r1,  -64(r30)
000f5c  b7e10000  beq r1, zero, 120
000f60  9f007000  addli r1, zero, 56
000f64  3d000000  xfence
000f68  00a00300  mfence { lm, sm, gm }
000f6c  b3800028  zext_int2long r[2:3], r1
000f70  9f610000  addli r3, zero, 6
000f74  e3494fff  loadli.w r19,  -92(r30)
000f78  b3020028  zext_int2long r[6:7], zero
000f7c  97b13002  sll.d r[4:5], r[2:3], r3
000f80  8ba33210  add.ul r[8:9], r[6:7], r[4:5]
000f84  a7821200  addli.d r[6:7], r[6:7], 8
000f88  9bb32300  slli r7, r7, 2
000f8c  13a4a203  setneq.d r8, r[6:7], r[27:28]
000f90  8b947311  add.s r9, r7, r23
000f94  8b933311  add.s r7, r7, r19
000f98  6fd58400  loads.d r[11:12], 8(r9)
000f9c  6fd60400  loads.d r[13:14], 0(r9)
000fa0  6fd78401  loads.d r[15:16], 24(r9)
000fa4  6fd80401  loads.d r[17:18], 16(r9)
000fa8  73f4a300  stores.d r[11:12], 8(r7)
000fac  73f0c300  stores.d r[13:14], 0(r7)
000fb0  73fce300  stores.d r[15:16], 24(r7)
000fb4  73f80301  stores.d r[17:18], 16(r7)
000fb8  3b2f04fe  bneq r8, zero, -56
000fbc  eb518ff6  load.d r[4:5], -152(r30)
000fc0  93a13004  setlt.ul r3, r[2:3], r[4:5]
000fc4  a7900000  addli.d r[2:3], r[2:3], 1
000fc8  bbae01fe  bneq r3, zero, -88
000fcc  9f794000  addli r19, zero, 39
000fd0  00200100  mfence { sm }
000fd4  9f70f001  addli r1, zero, 255
000fd8  80a20004  csr_set csr5, r1
000fdc  ab800000  lui r1, 8
000fe0  1b910010  ori r2, r1, 256
000fe4  670c2ffe  storeli.w r2, -64(r30)
000fe8  1b91c010  ori r2, r1, 268
000fec  e70b2ffe  storeli.w r2, -72(r30)
000ff0  1b918010  ori r2, r1, 264
000ff4  9b904010  ori r1, r1, 260
000ff8  670b2ffe  storeli.w r2, -80(r30)
000ffc  e70a1ffe  storeli.w r1, -88(r30)
001000  00e00200  sync_core
001004  37ca0a00  beq r21, zero, 656
001008  9f603000  addli r1, zero, 30
00100c  1f415000  addli r2, zero, 44
001010  7d800000  xsignal r1, 0
001014  7d000100  xsignal r2, 0
001018  7d900000  xwait r1, 0
00101c  9f104000  addli r1, zero, 33
001020  7d900000  xwait r1, 0
001024  9f504000  addli r1, zero, 37
001028  7d900000  xwait r1, 0
00102c  9f105000  addli r1, zero, 41
001030  7d900000  xwait r1, 0
001034  9f505000  addli r1, zero, 45
001038  7d900000  xwait r1, 0
00103c  9f206000  addli r1, zero, 50
001040  7d900000  xwait r1, 0
001044  3d000000  xfence
001048  b3000028  zext_int2long r[2:3], zero
00104c  00a00300  mfence { lm, sm, gm }
001050  63491fff  loadli.w r18,  -116(r30)
001054  6306cfff  loadli.w r12,  -32(r30)
001058  733c1ff4  store.d r[2:3], -168(r30)
00105c  a7810000  addli.d r[4:5], r[2:3], 0
001060  1f610000  addli r2, zero, 6
001064  5b040000  j 32
001068  eb508ff6  load.d r[2:3], -152(r30)
00106c  eb510ff6  load.d r[4:5], -160(r30)
001070  93a01104  setlt.ul r1, r[4:5], r[2:3]
001074  27910100  addli.d r[3:4], r[4:5], 1
001078  a7010100  addli.d r[4:5], r[3:4], 0
00107c  1f610000  addli r2, zero, 6
001080  b7c90000  beq r1, zero, 624
001084  97b02102  sll.d r[2:3], r[4:5], r2
001088  eb598ff5  load.d r[20:21], -168(r30)
00108c  73303ff6  store.d r[4:5], -160(r30)
001090  733c1ff8  store.d r[2:3], -104(r30)
001094  9f700000  addli r1, zero, 7
001098  97b01102  sll.d r[2:3], r[4:5], r1
00109c  73381ff8  store.d r[2:3], -112(r30)
0010a0  5b090000  j 72
0010a4  63027fff  loadli.w r4,  -72(r30)
0010a8  a7c90900  addli.d r[20:21], r[20:21], 4
0010ac  e3038fff  loadli.w r7,  -64(r30)
0010b0  634ecfff  loadli.w r28,  -28(r30)
0010b4  6306cfff  loadli.w r12,  -32(r30)
0010b8  13a3a903  setneq.d r6, r[20:21], r[27:28]
0010bc  0b924010  add.s r4, r1, r4
0010c0  8b937010  add.s r7, r1, r7
0010c4  73605200  stores.w r5, 0(r4)
0010c8  63026fff  loadli.w r4,  -80(r30)
0010cc  e3025fff  loadli.w r5,  -88(r30)
0010d0  73e09301  stores.w r25, 0(r7)
0010d4  0b924010  add.s r4, r1, r4
0010d8  8b905010  add.s r1, r1, r5
0010dc  73602200  stores.w r2, 0(r4)
0010e0  73e03000  stores.w r3, 0(r1)
0010e4  371e03fe  beq r6, zero, -124
0010e8  eb508ff9  load.d r[2:3], -104(r30)
0010ec  6b520ff9  load.d r[5:6], -112(r30)
0010f0  e344efff  loadli.w r9,  -12(r30)
0010f4  6345bfff  loadli.w r10,  -36(r30)
0010f8  6303afff  loadli.w r6,  -48(r30)
0010fc  ab08807f  lui r17, 522240
001100  e3464fff  loadli.w r13,  -92(r30)
001104  8ba01910  add.ul r[2:3], r[20:21], r[2:3]
001108  8ba34910  add.ul r[8:9], r[20:21], r[5:6]
00110c  6342afff  loadli.w r4,  -44(r30)
001110  9bb02000  slli r1, r1, 2
001114  8b949310  add.s r9, r7, r9
001118  0b97c310  add.s r14, r7, r12
00111c  6346dfff  loadli.w r12,  -20(r30)
001120  8b95c311  add.s r11, r7, r28
001124  0b95a310  add.s r10, r7, r10
001128  0b936310  add.s r6, r7, r6
00112c  0b924310  add.s r4, r7, r4
001130  8b917011  add.s r3, r1, r23
001134  ef1b0500  loads.bu r23, 0(r10)
001138  6305efff  loadli.w r10,  -16(r30)
00113c  6f130300  loads.bu r6, 0(r6)
001140  efc20100  loads.w r5, 0(r3)
001144  6fcc4100  loads.w r24, 4(r3)
001148  6fc18100  loads.w r2, 8(r3)
00114c  6fcbc100  loads.w r22, 12(r3)
001150  e301bfff  loadli.w r3,  -40(r30)
001154  0b95a310  add.s r10, r7, r10
001158  8b913310  add.s r3, r7, r3
00115c  6f1e0500  loads.bu r28, 0(r10)
001160  ef970100  loads.bu r15, 0(r3)
001164  ef110200  loads.bu r3, 0(r4)
001168  6f920400  loads.bu r4, 0(r9)
00116c  8b942311  add.s r9, r7, r18
001170  ef9c0400  loads.bu r25, 0(r9)
001174  ef940500  loads.bu r9, 0(r11)
001178  ef150700  loads.bu r11, 0(r14)
00117c  0b97c310  add.s r14, r7, r12
001180  63469fff  loadli.w r12,  -52(r30)
001184  0b98c310  add.s r16, r7, r12
001188  6306dfff  loadli.w r12,  -24(r30)
00118c  6f150800  loads.bu r10, 0(r16)
001190  8b93c310  add.s r7, r7, r12
001194  6344ffff  loadli.w r8,  -4(r30)
001198  6f980300  loads.bu r16, 0(r7)
00119c  97828200  and r5, r5, r8
0011a0  6f140700  loads.bu r8, 0(r14)
0011a4  0b97d010  add.s r14, r1, r13
0011a8  938a1201  seteq r21, r5, r17
0011ac  13860200  seteq r12, r5, zero
0011b0  93825804  setlt.u r5, r17, r5
0011b4  ef43c700  loads.w r7, 12(r14)
0011b8  97865701  and r13, r15, r21
0011bc  ef4a8700  loads.w r21, 8(r14)
0011c0  ef474700  loads.w r15, 4(r14)
0011c4  1786cc00  and r12, r25, r12
0011c8  9792c201  or r5, r5, r28
0011cc  ab0cc07f  lui r25, 523264
0011d0  1796c600  or r12, r13, r12
0011d4  97125600  or r5, r12, r5
0011d8  1b861200  andi r12, r5, 1
0011dc  ab02c07f  lui r5, 523264
0011e0  3b200600  bneq r12, zero, 8
0011e4  ef4c0700  loads.w r25, 0(r14)
0011e8  e346ffff  loadli.w r13,  -4(r30)
0011ec  2b0e807f  lui r28, 522240
0011f0  1706dc00  and r12, r24, r13
0011f4  1f8c0600  addli r24, r13, 0
0011f8  9306c601  seteq r13, r12, r28
0011fc  13070600  seteq r14, r12, zero
001200  1306ce04  setlt.u r12, r28, r12
001204  9781d100  and r3, r3, r13
001208  9786eb00  and r13, r23, r14
00120c  17148600  or r8, r12, r8
001210  9791d100  or r3, r3, r13
001214  97918100  or r3, r3, r8
001218  1b841100  andi r8, r3, 1
00121c  ab01c07f  lui r3, 523264
001220  3b200400  bneq r8, zero, 8
001224  9f810700  addli r3, r15, 0
001228  17018101  and r2, r2, r24
00122c  e30bffff  loadli.w r23,  -8(r30)
001230  1304c101  seteq r8, r2, r28
001234  13060100  seteq r12, r2, zero
001238  13012e04  setlt.u r2, r28, r2
00123c  17038300  and r6, r6, r8
001240  1784c400  and r8, r9, r12
001244  1711a100  or r2, r2, r10
001248  17138300  or r6, r6, r8
00124c  17112300  or r2, r6, r2
001250  1b031100  andi r6, r2, 1
001254  2b01c07f  lui r2, 523264
001258  3b200300  bneq r6, zero, 8
00125c  1f810a00  addli r2, r21, 0
001260  17038b01  and r6, r22, r24
001264  1304c301  seteq r8, r6, r28
001268  93040300  seteq r9, r6, zero
00126c  13036e04  setlt.u r6, r28, r6
001270  17028200  and r4, r4, r8
001274  17849500  and r8, r11, r9
001278  17130301  or r6, r6, r16
00127c  17128200  or r4, r4, r8
001280  17126200  or r4, r4, r6
001284  1b021200  andi r4, r4, 1
001288  3b7802fe  bneq r4, zero, -484
00128c  9f820300  addli r5, r7, 0
001290  dbc2ffff  j -492
001294  9f028000  addli r5, zero, 64
001298  9f500000  addli r1, zero, 5
00129c  1f757000  addli r10, zero, 63
0012a0  bb321af8  bneq r20, r1, -3924
0012a4  9f002000  addli r1, zero, 16
0012a8  7d900000  xwait r1, 0
0012ac  9f405000  addli r1, zero, 44
0012b0  7d900000  xwait r1, 0
0012b4  1d000c00  lock zero, r24
0012b8  ab00803f  lui r1, 260096
0012bc  0d000002  ew_cfg zero, zero, zero, 1
0012c0  0d101000  ewcoeff_cfg zero, zero, r1, 0
0012c4  9f70f00f  addli r1, zero, 2047
0012c8  0d800004  ew_cfg zero, r1, zero, 2
0012cc  0d0c0006  ew_cfg r24, zero, zero, 3
0012d0  0d0c8c27  ew_cfg r24, r24, r24, 19
0012d4  e3404fff  loadli.w r1,  -92(r30)
0012d8  ad909001  dsmul r1, r1, r25, 0
0012dc  9f505000  addli r1, zero, 45
0012e0  0d000026  ew_cfg zero, zero, zero, 19
0012e4  1d100c00  unlock r24
0012e8  7d800000  xsignal r1, 0
0012ec  db0c0000  j 100
0012f0  9f703000  addli r1, zero, 31
0012f4  00200100  mfence { sm }
0012f8  003a0002  core_id r20
0012fc  1f2c0000  addli r24, zero, 2
001300  1f757000  addli r10, zero, 63
001304  9f028000  addli r5, zero, 64
001308  2b490000  lui r18, 4
00130c  1f7b1000  addli r22, zero, 15
001310  9f794000  addli r19, zero, 39
001314  7d800000  xsignal r1, 0
001318  9f204000  addli r1, zero, 34
00131c  7d800000  xsignal r1, 0
001320  9f604000  addli r1, zero, 38
001324  7d800000  xsignal r1, 0
001328  9f205000  addli r1, zero, 42
00132c  7d800000  xsignal r1, 0
001330  9f605000  addli r1, zero, 46
001334  7d800000  xsignal r1, 0
001338  9f705000  addli r1, zero, 47
00133c  7d800000  xsignal r1, 0
001340  e34cfffe  loadli.w r25,  -132(r30)
001344  e34aaffe  loadli.w r21,  -172(r30)
001348  9f500000  addli r1, zero, 5
00134c  bb761a00  bneq r20, r1, 444
001350  1f212000  addli r2, zero, 18
001354  1f72f00f  addli r4, zero, 2047
001358  9f000000  addli r1, zero, 0
00135c  7d100100  xwait r2, 0
001360  1f715000  addli r2, zero, 47
001364  7d100100  xwait r2, 0
001368  1f316000  addli r2, zero, 51
00136c  7d100100  xwait r2, 0
001370  1d000c00  lock zero, r24
001374  2b01803f  lui r2, 260096
001378  0d000002  ew_cfg zero, zero, zero, 1
00137c  0d110100  ewcoeff_cfg r2, r2, zero, 0
001380  0d000204  ew_cfg zero, r4, zero, 2
001384  0d0c0006  ew_cfg r24, zero, zero, 3
001388  0d0c8c27  ew_cfg r24, r24, r24, 19
00138c  63415ffe  loadli.w r2,  -212(r30)
001390  e3018fff  loadli.w r3,  -64(r30)
001394  2d813c00  dsmadd r2, r25, r3, 0
001398  9f016000  addli r3, zero, 48
00139c  0d000026  ew_cfg zero, zero, zero, 19
0013a0  1d100c00  unlock r24
0013a4  7d800100  xsignal r3, 0
0013a8  1d000c00  lock zero, r24
0013ac  0d000002  ew_cfg zero, zero, zero, 1
0013b0  e3414ffe  loadli.w r3,  -220(r30)
0013b4  8d110000  ewcoeff_cfg r3, zero, zero, 0
0013b8  9f416000  addli r3, zero, 52
0013bc  0d000204  ew_cfg zero, r4, zero, 2
0013c0  0d0c0006  ew_cfg r24, zero, zero, 3
0013c4  0d0c0c26  ew_cfg r24, r24, zero, 19
0013c8  4d512100  hp_ssmul r2, r2, r2, 0
0013cc  0d000026  ew_cfg zero, zero, zero, 19
0013d0  1d100c00  unlock r24
0013d4  7d900100  xwait r3, 0
0013d8  1d000c00  lock zero, r24
0013dc  ab010040  lui r3, 262144
0013e0  0d000002  ew_cfg zero, zero, zero, 1
0013e4  8d110000  ewcoeff_cfg r3, zero, zero, 0
0013e8  0d000204  ew_cfg zero, r4, zero, 2
0013ec  0d0c0006  ew_cfg r24, zero, zero, 3
0013f0  0d0c0c26  ew_cfg r24, r24, zero, 19
0013f4  e3014ffe  loadli.w r3,  -224(r30)
0013f8  cd512100  hp_ssmul r3, r2, r2, 0
0013fc  1f110000  addli r2, zero, 1
001400  0d000026  ew_cfg zero, zero, zero, 19
001404  1d100c00  unlock r24
001408  1d000c00  lock zero, r24
00140c  0d000002  ew_cfg zero, zero, zero, 1
001410  0d000504  ew_cfg zero, r10, zero, 2
001414  0d010006  ew_cfg r2, zero, zero, 3
001418  2b01a041  lui r2, 268800
00141c  0d110000  ewcoeff_cfg r2, zero, zero, 0
001420  0b913010  add.s r2, r1, r3
001424  9f800002  addli r1, r1, 256
001428  2d212108  dscmpnsel r2, r2, r2, 4
00142c  bbdf20ff  bneq r1, r18, -12
001430  1d100c00  unlock r24
001434  1f110000  addli r2, zero, 1
001438  9f000000  addli r1, zero, 0
00143c  1d000c00  lock zero, r24
001440  0d000002  ew_cfg zero, zero, zero, 1
001444  0d000504  ew_cfg zero, r10, zero, 2
001448  0d010006  ew_cfg r2, zero, zero, 3
00144c  0d0c0014  ew_cfg r24, zero, zero, 10
001450  63423ffe  loadli.w r4,  -228(r30)
001454  0d0c4116  ew_cfg r24, r2, r4, 11
001458  2bc17f41  lui r2, 268284
00145c  1f420000  addli r4, zero, 4
001460  0d00001a  ew_cfg zero, zero, zero, 13
001464  0d00221c  ew_cfg zero, r4, r2, 14
001468  2b01a0c1  lui r2, 793088
00146c  0d00001e  ew_cfg zero, zero, zero, 15
001470  0d110000  ewcoeff_cfg r2, zero, zero, 0
001474  0b913010  add.s r2, r1, r3
001478  9f800002  addli r1, r1, 256
00147c  2d212100  dscmpnsel r2, r2, r2, 0
001480  bbdf20ff  bneq r1, r18, -12
001484  0d000014  ew_cfg zero, zero, zero, 10
001488  ab0020c1  lui r1, 791040
00148c  1f71f00f  addli r2, zero, 2047
001490  1d100c00  unlock r24
001494  1d000c00  lock zero, r24
001498  0d000002  ew_cfg zero, zero, zero, 1
00149c  0d101000  ewcoeff_cfg zero, zero, r1, 0
0014a0  0d0c0006  ew_cfg r24, zero, zero, 3
0014a4  0d000104  ew_cfg zero, r2, zero, 2
0014a8  0d0c8c27  ew_cfg r24, r24, r24, 19
0014ac  e3405ffe  loadli.w r1,  -212(r30)
0014b0  6d803090  dsselect zero, r1, r3, 72
0014b4  9f306000  addli r1, zero, 51
0014b8  0d000026  ew_cfg zero, zero, zero, 19
0014bc  1d100c00  unlock r24
0014c0  7d800000  xsignal r1, 0
0014c4  9f406000  addli r1, zero, 52
0014c8  7d800000  xsignal r1, 0
0014cc  9f302000  addli r1, zero, 19
0014d0  7d900000  xwait r1, 0
0014d4  1d000c00  lock zero, r24
0014d8  ab00803f  lui r1, 260096
0014dc  0d000002  ew_cfg zero, zero, zero, 1
0014e0  0d101000  ewcoeff_cfg zero, zero, r1, 0
0014e4  9f102000  addli r1, zero, 17
0014e8  0d000104  ew_cfg zero, r2, zero, 2
0014ec  0d0c0006  ew_cfg r24, zero, zero, 3
0014f0  0d0c8c27  ew_cfg r24, r24, r24, 19
0014f4  ad9c0c00  dsmul r25, r25, zero, 0
0014f8  0d000026  ew_cfg zero, zero, zero, 19
0014fc  1d100c00  unlock r24
001500  7d000c00  xsignal r24, 0
001504  7d800000  xsignal r1, 0
001508  37990af6  beq r21, zero, -4540
00150c  9f102000  addli r1, zero, 17
001510  7d100c00  xwait r24, 0
001514  7d900000  xwait r1, 0
001518  9f204000  addli r1, zero, 34
00151c  7d900000  xwait r1, 0
001520  9f604000  addli r1, zero, 38
001524  7d900000  xwait r1, 0
001528  9f205000  addli r1, zero, 42
00152c  7d900000  xwait r1, 0
001530  9f006000  addli r1, zero, 48
001534  7d900000  xwait r1, 0
001538  3d000000  xfence
00153c  b3000028  zext_int2long r[2:3], zero
001540  00a00300  mfence { lm, sm, gm }
001544  e347bfff  loadli.w r15,  -36(r30)
001548  e304cfff  loadli.w r9,  -32(r30)
00154c  73301ff6  store.d r[2:3], -160(r30)
001550  a7810000  addli.d r[4:5], r[2:3], 0
001554  1f610000  addli r2, zero, 6
001558  5b040000  j 32
00155c  eb508ff6  load.d r[2:3], -152(r30)
001560  eb510ff9  load.d r[4:5], -112(r30)
001564  93a01104  setlt.ul r1, r[4:5], r[2:3]
001568  27910100  addli.d r[3:4], r[4:5], 1
00156c  a7010100  addli.d r[4:5], r[3:4], 0
001570  1f610000  addli r2, zero, 6
001574  37a600f6  beq r1, zero, -4728
001578  9f700000  addli r1, zero, 7
00157c  eb580ff6  load.d r[18:19], -160(r30)
001580  17b62102  sll.d r[13:14], r[4:5], r2
001584  73383ff8  store.d r[4:5], -112(r30)
001588  97b21102  sll.d r[6:7], r[4:5], r1
00158c  733c5ff8  store.d r[6:7], -104(r30)
001590  5b080000  j 64
001594  63027fff  loadli.w r4,  -72(r30)
001598  a7c80800  addli.d r[18:19], r[18:19], 4
00159c  63048fff  loadli.w r8,  -64(r30)
0015a0  93a3a803  setneq.d r7, r[18:19], r[27:28]
0015a4  0b924010  add.s r4, r1, r4
0015a8  0b948010  add.s r8, r1, r8
0015ac  73606200  stores.w r6, 0(r4)
0015b0  63026fff  loadli.w r4,  -80(r30)
0015b4  63035fff  loadli.w r6,  -88(r30)
0015b8  73602400  stores.w r2, 0(r8)
0015bc  0b924010  add.s r4, r1, r4
0015c0  8b906010  add.s r1, r1, r6
0015c4  73605200  stores.w r5, 0(r4)
0015c8  73e03000  stores.w r3, 0(r1)
0015cc  37ce03fe  beq r7, zero, -112
0015d0  eb508ff9  load.d r[2:3], -104(r30)
0015d4  e302bfff  loadli.w r5,  -40(r30)
0015d8  6305afff  loadli.w r10,  -48(r30)
0015dc  e345efff  loadli.w r11,  -12(r30)
0015e0  e309dfff  loadli.w r19,  -24(r30)
0015e4  0ba31810  add.ul r[7:8], r[18:19], r[2:3]
0015e8  e3401fff  loadli.w r1,  -116(r30)
0015ec  0b11f310  add.s r2, r6, r15
0015f0  0b129310  add.s r4, r6, r9
0015f4  e344afff  loadli.w r9,  -44(r30)
0015f8  8b125310  add.s r5, r6, r5
0015fc  0b15a310  add.s r10, r6, r10
001600  e3479fff  loadli.w r15,  -52(r30)
001604  8b11c311  add.s r3, r6, r28
001608  8b15b310  add.s r11, r6, r11
00160c  2b0e807f  lui r28, 522240
001610  8b101310  add.s r1, r6, r1
001614  6f1c0100  loads.bu r24, 0(r2)
001618  6f970200  loads.bu r14, 0(r5)
00161c  ef120500  loads.bu r5, 0(r10)
001620  6345dfff  loadli.w r10,  -20(r30)
001624  ef9c0100  loads.bu r25, 0(r3)
001628  6f1b0200  loads.bu r22, 0(r4)
00162c  ef950500  loads.bu r11, 0(r11)
001630  6f940000  loads.bu r8, 0(r1)
001634  8ba0c810  add.ul r[2:3], r[18:19], r[13:14]
001638  8b149310  add.s r9, r6, r9
00163c  8b17f310  add.s r15, r6, r15
001640  9bb02000  slli r1, r1, 2
001644  ef9b0400  loads.bu r23, 0(r9)
001648  e304efff  loadli.w r9,  -16(r30)
00164c  0b15a310  add.s r10, r6, r10
001650  6fc10000  loads.w r2, 0(r1)
001654  efc14000  loads.w r3, 4(r1)
001658  6fc88000  loads.w r16, 8(r1)
00165c  6fc2c000  loads.w r4, 12(r1)
001660  8b149310  add.s r9, r6, r9
001664  0b133311  add.s r6, r6, r19
001668  e343ffff  loadli.w r7,  -4(r30)
00166c  ef190500  loads.bu r19, 0(r10)
001670  6f950700  loads.bu r10, 0(r15)
001674  6f9a0400  loads.bu r20, 0(r9)
001678  ef140300  loads.bu r9, 0(r6)
00167c  17017100  and r2, r2, r7
001680  e3030fff  loadli.w r7,  -128(r30)
001684  930a0100  seteq r21, r2, zero
001688  9307c101  seteq r15, r2, r28
00168c  13012e04  setlt.u r2, r28, r2
001690  8b937010  add.s r7, r1, r7
001694  efc30300  loads.w r7, 0(r7)
001698  17035401  and r6, r8, r21
00169c  63041fff  loadli.w r8,  -120(r30)
0016a0  1707f700  and r14, r14, r15
0016a4  e3470fff  loadli.w r15,  -124(r30)
0016a8  17112a00  or r2, r20, r2
0016ac  1713e300  or r6, r6, r14
0016b0  0b948010  add.s r8, r1, r8
0016b4  8b97f010  add.s r15, r1, r15
0016b8  17116100  or r2, r2, r6
0016bc  2b03c07f  lui r6, 523264
0016c0  ef4a0400  loads.w r21, 0(r8)
0016c4  6fc40700  loads.w r8, 0(r15)
0016c8  1b071100  andi r14, r2, 1
0016cc  2b01c07f  lui r2, 523264
0016d0  3b400700  bneq r14, zero, 16
0016d4  6341fffe  loadli.w r2,  -132(r30)
0016d8  0b912010  add.s r2, r1, r2
0016dc  6f410100  loads.w r2, 0(r2)
0016e0  6347ffff  loadli.w r14,  -4(r30)
0016e4  2b0a807f  lui r20, 522240
0016e8  9781e100  and r3, r3, r14
0016ec  13870100  seteq r14, r3, zero
0016f0  93874101  seteq r15, r3, r20
0016f4  93013a04  setlt.u r3, r20, r3
0016f8  1707ec00  and r14, r24, r14
0016fc  9787fb00  and r15, r23, r15
001700  97913900  or r3, r19, r3
001704  1717f700  or r14, r14, r15
001708  9791e100  or r3, r3, r14
00170c  1b871100  andi r14, r3, 1
001710  ab01c07f  lui r3, 523264
001714  3b200700  bneq r14, zero, 8
001718  9f010400  addli r3, r8, 0
00171c  e349ffff  loadli.w r19,  -4(r30)
001720  e30bffff  loadli.w r23,  -8(r30)
001724  634ecfff  loadli.w r28,  -28(r30)
001728  17043801  and r8, r16, r19
00172c  2b08807f  lui r16, 522240
001730  13070400  seteq r14, r8, zero
001734  93070401  seteq r15, r8, r16
001738  13048804  setlt.u r8, r16, r8
00173c  9782f200  and r5, r5, r15
001740  1787ec00  and r14, r25, r14
001744  17148500  or r8, r10, r8
001748  e347bfff  loadli.w r15,  -36(r30)
00174c  97125700  or r5, r14, r5
001750  97125400  or r5, r8, r5
001754  1b841200  andi r8, r5, 1
001758  ab02c07f  lui r5, 523264
00175c  3b200400  bneq r8, zero, 8
001760  9f820a00  addli r5, r21, 0
001764  17023201  and r4, r4, r19
001768  2b07807f  lui r14, 522240
00176c  13040200  seteq r8, r4, zero
001770  1305e200  seteq r10, r4, r14
001774  13024704  setlt.u r4, r14, r4
001778  17048b00  and r8, r22, r8
00177c  1785a500  and r10, r11, r10
001780  17924400  or r4, r9, r4
001784  e304cfff  loadli.w r9,  -32(r30)
001788  1714a400  or r8, r8, r10
00178c  17128200  or r4, r4, r8
001790  1b021200  andi r4, r4, 1
001794  3b0802fe  bneq r4, zero, -512
001798  1f830300  addli r6, r7, 0
00179c  5bbfffff  j -520
0017a0  e3414fff  loadli.w r3,  -92(r30)
0017a4  9f400000  addli r1, zero, 4
0017a8  b7241a00  beq r20, r1, 296
0017ac  1f6e0000  addli r28, zero, 6
0017b0  9f600000  addli r1, zero, 6
0017b4  37691a00  beq r20, r1, 600
0017b8  9f700000  addli r1, zero, 7
0017bc  3b2b1a00  bneq r20, r1, 712
0017c0  9f001000  addli r1, zero, 8
0017c4  67450ffe  storeli.w zero, -172(r30)
0017c8  e70b0ffe  storeli.w zero, -72(r30)
0017cc  2b610000  lui r2, 6
0017d0  1f050000  addli r10, zero, 0
0017d4  9f0a0000  addli r21, zero, 0
0017d8  9f0b0000  addli r23, zero, 0
0017dc  7d900000  xwait r1, 0
0017e0  9f301000  addli r1, zero, 11
0017e4  7d900000  xwait r1, 0
0017e8  9f300000  addli r1, zero, 3
0017ec  1d000000  lock zero, zero
0017f0  81000000  ds_cfg r1, zero, 0
0017f4  9f008000  addli r1, zero, 64
0017f8  81000002  ds_cfg r1, zero, 1
0017fc  8100001c  ds_cfg r1, zero, 14
001800  8100001a  ds_cfg r1, zero, 13
001804  41001104  shuffle_coa zero, r2, r1, 2
001808  9f101000  addli r1, zero, 9
00180c  1d100000  unlock zero
001810  7d800000  xsignal r1, 0
001814  9f100000  addli r1, zero, 1
001818  670c1ffe  storeli.w r1, -64(r30)
00181c  9f201000  addli r1, zero, 10
001820  7d800000  xsignal r1, 0
001824  5ba6fdff  j -4816
001828  eb508ff3  load.d r[2:3], -200(r30)
00182c  1f530000  addli r6, zero, 5
001830  9f521000  addli r5, zero, 13
001834  67450ffe  storeli.w zero, -172(r30)
001838  670c0ffe  storeli.w zero, -64(r30)
00183c  e70b0ffe  storeli.w zero, -72(r30)
001840  1f440000  addli r8, zero, 4
001844  9f1b0000  addli r23, zero, 1
001848  9f040001  addli r9, zero, 128
00184c  1f028000  addli r4, zero, 64
001850  1f6e0000  addli r28, zero, 6
001854  1f050000  addli r10, zero, 0
001858  9f0a0000  addli r21, zero, 0
00185c  7d100300  xwait r6, 0
001860  6b530f00  load.d r[7:8], 0(r30)
001864  1d000400  lock zero, r8
001868  97b05002  sll.d r[2:3], r[2:3], r5
00186c  958b0b00  dma_cfg r23, r23, zero, 0
001870  8b201310  add.ul r[2:3], r[7:8], r[2:3]
001874  6b530f01  load.d r[7:8], 16(r30)
001878  15000104  dma_cfg zero, r2, zero, 2
00187c  15899006  dma_cfg r18, r1, r9, 3
001880  95844408  dma_cfg r9, r9, r4, 4
001884  35000000  dma_run zero
001888  1d100400  unlock r8
00188c  2b820000  lui r4, 8
001890  eb500ff4  load.d r[2:3], -192(r30)
001894  7d000400  xsignal r8, 0
001898  7d900200  xwait r5, 0
00189c  1d000400  lock zero, r8
0018a0  15800b00  dma_cfg zero, r23, zero, 0
0018a4  97b07003  sll.d r[2:3], r[2:3], r23
0018a8  8b201310  add.ul r[2:3], r[7:8], r[2:3]
0018ac  15000104  dma_cfg zero, r2, zero, 2
0018b0  15829006  dma_cfg r4, r1, r9, 3
0018b4  9f000002  addli r1, zero, 256
0018b8  95807409  dma_cfg r1, r9, r23, 4
0018bc  9f401000  addli r1, zero, 12
0018c0  35000000  dma_run zero
0018c4  1d100400  unlock r8
0018c8  7d800000  xsignal r1, 0
0018cc  5b91fdff  j -4984
0018d0  9f600000  addli r1, zero, 6
0018d4  67450ffe  storeli.w zero, -172(r30)
0018d8  670c0ffe  storeli.w zero, -64(r30)
0018dc  e70b0ffe  storeli.w zero, -72(r30)
0018e0  1f150000  addli r10, zero, 1
0018e4  1f422000  addli r4, zero, 20
0018e8  9f0a0000  addli r21, zero, 0
0018ec  9f0b0000  addli r23, zero, 0
0018f0  1f6e0000  addli r28, zero, 6
0018f4  7d900000  xwait r1, 0
0018f8  9f201000  addli r1, zero, 10
0018fc  7d900000  xwait r1, 0
001900  9f008000  addli r1, zero, 64
001904  7d100200  xwait r4, 0
001908  1d000500  lock zero, r10
00190c  89801000  mm_cfg r1, r1, r1, 0
001910  9f700000  addli r1, zero, 7
001914  090cac04  mm_cfg r24, r24, r10, 2
001918  a90c000a  mm r25, zero, zero, 5
00191c  1d100500  unlock r10
001920  7d800000  xsignal r1, 0
001924  9f301000  addli r1, zero, 11
001928  7d800000  xsignal r1, 0
00192c  9f601000  addli r1, zero, 14
001930  7d800000  xsignal r1, 0
001934  5b84fdff  j -5088
001938  9f602000  addli r1, zero, 22
00193c  670c0ffe  storeli.w zero, -64(r30)
001940  e70b0ffe  storeli.w zero, -72(r30)
001944  1f513000  addli r2, zero, 29
001948  1f050000  addli r10, zero, 0
00194c  9f0a0000  addli r21, zero, 0
001950  9f0b0000  addli r23, zero, 0
001954  003a0002  core_id r20
001958  1f2c0000  addli r24, zero, 2
00195c  1f7b1000  addli r22, zero, 15
001960  9f794000  addli r19, zero, 39
001964  00200100  mfence { sm }
001968  7d800000  xsignal r1, 0
00196c  9f003000  addli r1, zero, 24
001970  7d800000  xsignal r1, 0
001974  9f104000  addli r1, zero, 33
001978  7d000100  xsignal r2, 0
00197c  7d800000  xsignal r1, 0
001980  9f504000  addli r1, zero, 37
001984  7d800000  xsignal r1, 0
001988  9f105000  addli r1, zero, 41
00198c  7d800000  xsignal r1, 0
001990  9f100000  addli r1, zero, 1
001994  7d100100  xwait r2, 0
001998  67451ffe  storeli.w r1, -172(r30)
00199c  9f605000  addli r1, zero, 46
0019a0  7d900000  xwait r1, 0
0019a4  db75fdff  j -5204
0019a8  9f400000  addli r1, zero, 4
0019ac  67450ffe  storeli.w zero, -172(r30)
0019b0  670c0ffe  storeli.w zero, -64(r30)
0019b4  e70b0ffe  storeli.w zero, -72(r30)
0019b8  1f018000  addli r2, zero, 64
0019bc  1f050000  addli r10, zero, 0
0019c0  9f0b0000  addli r23, zero, 0
0019c4  9f1a0000  addli r21, zero, 1
0019c8  1f6e0000  addli r28, zero, 6
0019cc  7d900000  xwait r1, 0
0019d0  9f700000  addli r1, zero, 7
0019d4  7d900000  xwait r1, 0
0019d8  9f300000  addli r1, zero, 3
0019dc  1d000000  lock zero, zero
0019e0  81000000  ds_cfg r1, zero, 0
0019e4  9f500000  addli r1, zero, 5
0019e8  01010002  ds_cfg r2, zero, 1
0019ec  0101001c  ds_cfg r2, zero, 14
0019f0  0101001a  ds_cfg r2, zero, 13
0019f4  21102902  shuffle_batch zero, r18, r2, 1
0019f8  1d100000  unlock zero
0019fc  7d800000  xsignal r1, 0
001a00  9f600000  addli r1, zero, 6
001a04  7d800000  xsignal r1, 0
001a08  db69fdff  j -5300
001a0c  9f101000  addli r1, zero, 9
001a10  67450ffe  storeli.w zero, -172(r30)
001a14  670c0ffe  storeli.w zero, -64(r30)
001a18  1f140000  addli r8, zero, 1
001a1c  eb528f00  load.d r[6:7], 8(r30)
001a20  9f430000  addli r7, zero, 4
001a24  1f028000  addli r4, zero, 64
001a28  1f050000  addli r10, zero, 0
001a2c  9f0a0000  addli r21, zero, 0
001a30  9f0b0000  addli r23, zero, 0
001a34  7d900000  xwait r1, 0
001a38  eb500ff4  load.d r[2:3], -192(r30)
001a3c  1d800300  lock zero, r7
001a40  97b08002  sll.d r[2:3], r[2:3], r8
001a44  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
001a48  9f120000  addli r5, zero, 1
001a4c  2b630000  lui r6, 6
001a50  e70b5ffe  storeli.w r5, -72(r30)
001a54  9f020001  addli r5, zero, 128
001a58  15040400  dma_cfg r8, r8, zero, 0
001a5c  15000104  dma_cfg zero, r2, zero, 2
001a60  15835006  dma_cfg r6, r1, r5, 3
001a64  9f000010  addli r1, zero, 2048
001a68  95824008  dma_cfg r5, r1, r4, 4
001a6c  9f001000  addli r1, zero, 8
001a70  35000000  dma_run zero
001a74  1d900300  unlock r7
001a78  7d800000  xsignal r1, 0
001a7c  5b5bfdff  j -5416
001a80  1f6e0000  addli r28, zero, 6
001a84  e340affe  loadli.w r1,  -172(r30)
001a88  1f850000  addli r10, r1, 0
001a8c  670c1ffe  storeli.w r1, -64(r30)
001a90  9f8a0000  addli r21, r1, 0
001a94  9f8b0000  addli r23, r1, 0
001a98  e70b1ffe  storeli.w r1, -72(r30)
001a9c  5b57fdff  j -5448
001aa0  7d000000  xsignal zero, 0
001aa4  bb600a00  bneq r20, zero, 56
001aa8  9f200000  addli r1, zero, 2
001aac  7d100000  xwait zero, 0
001ab0  7d100000  xwait zero, 0
001ab4  7d100000  xwait zero, 0
001ab8  7d100000  xwait zero, 0
001abc  7d100000  xwait zero, 0
001ac0  7d100000  xwait zero, 0
001ac4  7d100000  xwait zero, 0
001ac8  7d100000  xwait zero, 0
001acc  1d800000  lock zero, r1
001ad0  0d000020  ew_cfg zero, zero, zero, 16
001ad4  1d900000  unlock r1
001ad8  7d400000  xsignal_mode_cfg zero
001adc  9f8ede01  addli sp, sp, 232
001ae0  00a00300  mfence { lm, sm, gm }
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
001ce4  00100000  exit
001ce8  00100000  exit
001cec  00100000  exit
001cf0  00100000  exit
001cf4  00100000  exit
001cf8  00100000  exit
001cfc  00100000  exit
001d00  00100000  exit
001d04  00100000  exit
001d08  00100000  exit
001d0c  00100000  exit
001d10  00100000  exit
001d14  00100000  exit
001d18  00100000  exit
001d1c  00100000  exit
001d20  00100000  exit
001d24  00100000  exit
