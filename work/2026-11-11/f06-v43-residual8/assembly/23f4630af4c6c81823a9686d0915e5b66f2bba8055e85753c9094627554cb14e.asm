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
00005c  9f497000  addli r19, zero, 60
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
0000b4  9f8e2efe  addli sp, sp, -240
0000b8  1f8f6e01  addli r30, sp, 176
0000bc  9f100000  addli r1, zero, 1
0000c0  803d0002  core_id r27
0000c4  63496f00  loadli.w r18,  52(r30)
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  37e00d00  beq r27, zero, 24
0000d0  abf0ffff  lui r1, 1048575
0000d4  9b90f0ff  ori r1, r1, 4095
0000d8  80a10004  csr_set csr3, r1
0000dc  00d00100  sync_group
0000e0  db140000  j 164
0000e4  1f210000  addli r2, zero, 2
0000e8  fdd00000  uni_sram_cfg r1, r1
0000ec  abf1ffff  lui r3, 1048575
0000f0  1d000100  lock zero, r2
0000f4  8d000020  ew_cfg r1, zero, zero, 16
0000f8  9b90f1ff  ori r1, r3, 4095
0000fc  1d100100  unlock r2
000100  1f510000  addli r2, zero, 5
000104  80a10004  csr_set csr3, r1
000108  9f301000  addli r1, zero, 11
00010c  00d00100  sync_group
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  9f300000  addli r1, zero, 3
00011c  7d000100  xsignal r2, 0
000120  7d000100  xsignal r2, 0
000124  7d000100  xsignal r2, 0
000128  7d000100  xsignal r2, 0
00012c  7d000100  xsignal r2, 0
000130  7d000100  xsignal r2, 0
000134  7d000100  xsignal r2, 0
000138  7d000100  xsignal r2, 0
00013c  7d000100  xsignal r2, 0
000140  1f111000  addli r2, zero, 9
000144  7d800000  xsignal r1, 0
000148  7d800000  xsignal r1, 0
00014c  9f700000  addli r1, zero, 7
000150  7d000100  xsignal r2, 0
000154  7d000100  xsignal r2, 0
000158  7d000100  xsignal r2, 0
00015c  7d000100  xsignal r2, 0
000160  7d000100  xsignal r2, 0
000164  7d000100  xsignal r2, 0
000168  7d000100  xsignal r2, 0
00016c  7d000100  xsignal r2, 0
000170  7d000100  xsignal r2, 0
000174  7d000100  xsignal r2, 0
000178  7d000100  xsignal r2, 0
00017c  7d800000  xsignal r1, 0
000180  7d800000  xsignal r1, 0
000184  e3006f00  loadli.w r1,  48(r30)
000188  63416f00  loadli.w r2,  52(r30)
00018c  00d20002  load_param_i r4, 1
000190  e3017f00  loadli.w r3,  56(r30)
000194  80520002  load_param_i r5, 0
000198  8b101120  mul.s r1, r2, r1
00019c  1f010200  addli r2, r4, 0
0001a0  0b913050  fmac.s r2, r1, r3
0001a4  8b903020  mul.s r1, r1, r3
0001a8  1f71f1ff  addli r2, r2, -1
0001ac  0b124130  div.s r4, r2, r4
0001b0  0b115220  mul.s r2, r4, r5
0001b4  0b125250  fmac.s r4, r4, r5
0001b8  8b111240  min.s r3, r4, r1
0001bc  4bb82104  ble.s r3, r2, 2572
0001c0  e3443f00  loadli.w r9,  28(r30)
0001c4  1f078003  addli r14, zero, 448
0001c8  e3053f00  loadli.w r11,  24(r30)
0001cc  1f0e8002  addli r28, zero, 320
0001d0  9f770000  addli r15, zero, 7
0001d4  33980128  sext_int2long r[17:18], r3
0001d8  63454f00  loadli.w r10,  36(r30)
0001dc  1f0d8000  addli r26, zero, 64
0001e0  63045f00  loadli.w r8,  40(r30)
0001e4  9f690000  addli r19, zero, 6
0001e8  e3405f00  loadli.w r1,  44(r30)
0001ec  1f020000  addli r4, zero, 0
0001f0  9f020000  addli r5, zero, 0
0001f4  1f030000  addli r6, zero, 0
0001f8  9f030000  addli r7, zero, 0
0001fc  1f5a0000  addli r20, zero, 5
000200  1f0c000e  addli r24, zero, 1792
000204  e74b0ffe  storeli.w zero, -68(r30)
000208  73300ff9  store.d r[17:18], -128(r30)
00020c  33180128  sext_int2long r[17:18], r2
000210  1ff67403  addli r12, r9, 447
000214  9ff67502  addli r13, r11, 319
000218  b31a0528  sext_int2long r[22:23], r10
00021c  0b16e630  div.s r12, r12, r14
000220  8b96c631  div.s r13, r13, r28
000224  63074f00  loadli.w r14,  32(r30)
000228  733c5ffd  store.d r[22:23], -40(r30)
00022c  8b11f620  mul.s r3, r12, r15
000230  9f170000  addli r15, zero, 1
000234  33910128  sext_int2long r[3:4], r3
000238  733c2ff6  store.d r[3:4], -136(r30)
00023c  33910628  sext_int2long r[3:4], r13
000240  73382ff6  store.d r[3:4], -144(r30)
000244  33910528  sext_int2long r[3:4], r11
000248  b3950428  sext_int2long r[12:13], r9
00024c  9f747700  addli r9, r14, 63
000250  b3160428  sext_int2long r[14:15], r8
000254  1b341400  slli r8, r8, 1
000258  e7469ffe  storeli.w r9, -148(r30)
00025c  8b94a431  div.s r9, r9, r26
000260  73382ffc  store.d r[3:4], -48(r30)
000264  0bb12a20  mul.sl r[3:4], r[22:23], r[3:4]
000268  7334bffa  store.d r[12:13], -88(r30)
00026c  674a8ffe  storeli.w r8, -92(r30)
000270  1bb41000  slli r8, r1, 1
000274  9f250000  addli r11, zero, 2
000278  1f460000  addli r12, zero, 4
00027c  7330dff6  store.d r[14:15], -160(r30)
000280  733c2ffe  store.d r[3:4], -8(r30)
000284  17b13603  sll.d r[3:4], r[14:15], r19
000288  e7458ffe  storeli.w r8, -164(r30)
00028c  73302ffe  store.d r[3:4], -32(r30)
000290  b3900028  sext_int2long r[2:3], r1
000294  e74e9ffe  storeli.w r9, -20(r30)
000298  9b341500  slli r9, r10, 1
00029c  73381ff4  store.d r[2:3], -176(r30)
0002a0  e74c9ffe  storeli.w r9, -52(r30)
0002a4  5b060000  j 48
0002a8  9f201000  addli r1, zero, 10
0002ac  63496f00  loadli.w r18,  52(r30)
0002b0  7d800000  xsignal r1, 0
0002b4  6b580ffb  load.d r[17:18], -80(r30)
0002b8  eb500ff8  load.d r[2:3], -128(r30)
0002bc  27180800  addli.d r[17:18], r[17:18], 1
0002c0  93301804  setlt.sl r1, r[17:18], r[2:3]
0002c4  63417fff  loadli.w r2,  -68(r30)
0002c8  1f110100  addli r2, r2, 1
0002cc  e74b2ffe  storeli.w r2, -68(r30)
0002d0  b7e30004  beq r1, zero, 2296
0002d4  1f750000  addli r10, zero, 7
0002d8  3bb0cd00  bneq r27, r12, 12
0002dc  9f301000  addli r1, zero, 11
0002e0  7d900000  xwait r1, 0
0002e4  e3007f00  loadli.w r1,  56(r30)
0002e8  eb568ff7  load.d r[14:15], -136(r30)
0002ec  73380ffb  store.d r[17:18], -80(r30)
0002f0  eb5a0ff7  load.d r[22:23], -144(r30)
0002f4  8b101830  div.s r1, r16, r1
0002f8  1f080900  addli r16, r18, 0
0002fc  0b912031  div.s r2, r1, r18
000300  b3080528  zext_int2long r[18:19], r10
000304  63457fff  loadli.w r10,  -68(r30)
000308  0b15b538  mod.s r10, r10, r11
00030c  33110128  sext_int2long r[3:4], r2
000310  0f14d160  div.sl r[9:10], r[3:4], r[14:15]
000314  8f16d170  mod.sl r[14:15], r[3:4], r[14:15]
000318  0b341421  mul.sl r[9:10], r[9:10], r[18:19]
00031c  8bba8a18  sub.sl r[22:23], r[22:23], r[9:10]
000320  8bb81a41  min.sl r[18:19], r[22:23], r[18:19]
000324  0f111171  mod.sl r[3:4], r[3:4], r[18:19]
000328  8f961661  div.sl r[14:15], r[14:15], r[18:19]
00032c  9f088003  addli r17, zero, 448
000330  b3880828  zext_int2long r[18:19], r17
000334  73341ff9  store.d r[18:19], -120(r30)
000338  0b212410  add.ul r[3:4], r[9:10], r[3:4]
00033c  33040e28  zext_int2long r[9:10], r28
000340  8bb61621  mul.sl r[14:15], r[14:15], r[18:19]
000344  733c8ff8  store.d r[9:10], -104(r30)
000348  0b348120  mul.sl r[9:10], r[3:4], r[9:10]
00034c  2bc10800  lui r2, 140
000350  7330dffc  store.d r[14:15], -64(r30)
000354  8b1b2520  mul.s r23, r10, r2
000358  6341dffe  loadli.w r2,  -148(r30)
00035c  73388ff8  store.d r[9:10], -112(r30)
000360  3f5ea103  blt.s r2, r26, 1940
000364  8b900039  mod.s r1, r1, r16
000368  9f010000  addli r3, zero, 0
00036c  b3900028  sext_int2long r[2:3], r1
000370  17b63003  sll.d r[13:14], r[2:3], r19
000374  eb508ffd  load.d r[2:3], -40(r30)
000378  7338cffe  store.d r[13:14], -16(r30)
00037c  8b381420  mul.sl r[18:19], r[9:10], r[2:3]
000380  eb500ff6  load.d r[2:3], -160(r30)
000384  8b301620  mul.sl r[2:3], r[13:14], r[2:3]
000388  5b330000  j 408
00038c  ab8a1100  lui r21, 280
000390  1f460000  addli r12, zero, 4
000394  1f080002  addli r16, zero, 256
000398  1f5a0000  addli r20, zero, 5
00039c  9b9a0a04  ori r21, r21, 64
0003a0  1d000600  lock zero, r12
0003a4  95870700  dma_cfg r15, r15, zero, 0
0003a8  0b145411  add.s r8, r8, r21
0003ac  15000504  dma_cfg zero, r10, zero, 2
0003b0  1584a407  dma_cfg r8, r9, r26, 3
0003b4  1f050001  addli r10, zero, 128
0003b8  9f540000  addli r9, zero, 5
0003bc  1505bd08  dma_cfg r10, r26, r11, 4
0003c0  63449fff  loadli.w r8,  -52(r30)
0003c4  1508d40a  dma_cfg r16, r8, r13, 5
0003c8  1f740000  addli r8, zero, 7
0003cc  15000010  dma_cfg zero, zero, zero, 8
0003d0  35000000  dma_run zero
0003d4  1500f00a  dma_cfg zero, zero, r15, 5
0003d8  15000010  dma_cfg zero, zero, zero, 8
0003dc  1d100600  unlock r12
0003e0  1d800400  lock zero, r9
0003e4  15000014  dma_cfg zero, zero, zero, 10
0003e8  1500f014  dma_cfg zero, zero, r15, 10
0003ec  1500b014  dma_cfg zero, zero, r11, 10
0003f0  15009015  dma_cfg zero, zero, r25, 10
0003f4  1500c014  dma_cfg zero, zero, r12, 10
0003f8  15009014  dma_cfg zero, zero, r9, 10
0003fc  15003015  dma_cfg zero, zero, r19, 10
000400  15008014  dma_cfg zero, zero, r8, 10
000404  1f041000  addli r8, zero, 8
000408  15008014  dma_cfg zero, zero, r8, 10
00040c  1f141000  addli r8, zero, 9
000410  15008014  dma_cfg zero, zero, r8, 10
000414  1f241000  addli r8, zero, 10
000418  15008014  dma_cfg zero, zero, r8, 10
00041c  1f341000  addli r8, zero, 11
000420  15008014  dma_cfg zero, zero, r8, 10
000424  1f441000  addli r8, zero, 12
000428  15008014  dma_cfg zero, zero, r8, 10
00042c  1f541000  addli r8, zero, 13
000430  15008014  dma_cfg zero, zero, r8, 10
000434  1f641000  addli r8, zero, 14
000438  15008014  dma_cfg zero, zero, r8, 10
00043c  1f741000  addli r8, zero, 15
000440  15008014  dma_cfg zero, zero, r8, 10
000444  1f042000  addli r8, zero, 16
000448  15008014  dma_cfg zero, zero, r8, 10
00044c  1f142000  addli r8, zero, 17
000450  15008014  dma_cfg zero, zero, r8, 10
000454  1f242000  addli r8, zero, 18
000458  15008014  dma_cfg zero, zero, r8, 10
00045c  1f342000  addli r8, zero, 19
000460  15008014  dma_cfg zero, zero, r8, 10
000464  1f442000  addli r8, zero, 20
000468  15008014  dma_cfg zero, zero, r8, 10
00046c  1f542000  addli r8, zero, 21
000470  15008014  dma_cfg zero, zero, r8, 10
000474  1f642000  addli r8, zero, 22
000478  15008014  dma_cfg zero, zero, r8, 10
00047c  1f742000  addli r8, zero, 23
000480  15008014  dma_cfg zero, zero, r8, 10
000484  1f043000  addli r8, zero, 24
000488  15008014  dma_cfg zero, zero, r8, 10
00048c  1f143000  addli r8, zero, 25
000490  15008014  dma_cfg zero, zero, r8, 10
000494  1f243000  addli r8, zero, 26
000498  15008014  dma_cfg zero, zero, r8, 10
00049c  1f343000  addli r8, zero, 27
0004a0  15008014  dma_cfg zero, zero, r8, 10
0004a4  1f443000  addli r8, zero, 28
0004a8  15008014  dma_cfg zero, zero, r8, 10
0004ac  1f543000  addli r8, zero, 29
0004b0  15008014  dma_cfg zero, zero, r8, 10
0004b4  1f643000  addli r8, zero, 30
0004b8  15008014  dma_cfg zero, zero, r8, 10
0004bc  1f743000  addli r8, zero, 31
0004c0  15008014  dma_cfg zero, zero, r8, 10
0004c4  95870700  dma_cfg r15, r15, zero, 0
0004c8  95070002  dma_cfg r15, zero, zero, 1
0004cc  15000004  dma_cfg zero, zero, zero, 2
0004d0  150ca007  dma_cfg r24, zero, r26, 3
0004d4  1f0c000e  addli r24, zero, 1792
0004d8  1505b008  dma_cfg r10, zero, r11, 4
0004dc  1508d00a  dma_cfg r16, zero, r13, 5
0004e0  15000010  dma_cfg zero, zero, zero, 8
0004e4  35000000  dma_run zero
0004e8  1500f00a  dma_cfg zero, zero, r15, 5
0004ec  15000010  dma_cfg zero, zero, zero, 8
0004f0  1d900400  unlock r9
0004f4  7d800500  xsignal r11, 0
0004f8  6b540ffe  load.d r[9:10], -32(r30)
0004fc  9f930300  addli r7, r7, 1
000500  1f130300  addli r6, r6, 1
000504  9f920200  addli r5, r5, 1
000508  1f120200  addli r4, r4, 1
00050c  9f910100  addli r3, r3, 1
000510  a7888800  addli.d r[18:19], r[18:19], 64
000514  8ba08010  add.ul r[2:3], r[2:3], r[9:10]
000518  6344dfff  loadli.w r8,  -20(r30)
00051c  37e78102  beq r3, r8, 1496
000520  6b540fff  load.d r[9:10], -16(r30)
000524  eb568fff  load.d r[14:15], -8(r30)
000528  1f0d000e  addli r26, zero, 1792
00052c  1f480000  addli r16, zero, 4
000530  1f661000  addli r12, zero, 14
000534  8ba48810  add.ul r[10:11], r[18:19], r[9:10]
000538  13b4d404  setlt.sl r8, r[10:11], r[14:15]
00053c  a78a0400  addli.d r[22:23], r[10:11], 0
000540  3b300400  bneq r8, zero, 12
000544  eb568fff  load.d r[14:15], -8(r30)
000548  8f9ad470  mod.sl r[22:23], r[10:11], r[14:15]
00054c  1f141000  addli r8, zero, 9
000550  2b8c1100  lui r24, 280
000554  2b470100  lui r14, 20
000558  ab4c0100  lui r25, 20
00055c  8b968338  mod.s r13, r7, r8
000560  0b14b338  mod.s r8, r6, r11
000564  8b96e620  mul.s r13, r13, r14
000568  0b1ce450  fmac.s r24, r8, r14
00056c  b795bd00  beq r27, r11, 356
000570  bb86fd00  bneq r27, r15, 416
000574  eb568ffd  load.d r[14:15], -40(r30)
000578  eb590ffd  load.d r[20:21], -48(r30)
00057c  97b4f402  sll.d r[10:11], r[10:11], r15
000580  0b149421  mul.s r8, r8, r25
000584  9f3c0000  addli r25, zero, 3
000588  1f0d8000  addli r26, zero, 64
00058c  7d900c00  xwait r25, 0
000590  8f96da60  div.sl r[14:15], r[22:23], r[14:15]
000594  a78a8602  addli.d r[22:23], r[14:15], 320
000598  8bba3a41  min.sl r[22:23], r[22:23], r[20:21]
00059c  9f690000  addli r19, zero, 6
0005a0  8bb6da18  sub.sl r[14:15], r[22:23], r[14:15]
0005a4  6b5a0f00  load.d r[21:22], 0(r30)
0005a8  8b249a10  add.ul r[10:11], r[21:22], r[10:11]
0005ac  bf8767fe  blt.s r15, r6, -544
0005b0  1f5b0000  addli r22, zero, 5
0005b4  1f0a1000  addli r20, zero, 8
0005b8  9f1a1000  addli r21, zero, 9
0005bc  1d000b00  lock zero, r22
0005c0  15000014  dma_cfg zero, zero, zero, 10
0005c4  1500f014  dma_cfg zero, zero, r15, 10
0005c8  1500b014  dma_cfg zero, zero, r11, 10
0005cc  15009015  dma_cfg zero, zero, r25, 10
0005d0  15000015  dma_cfg zero, zero, r16, 10
0005d4  1f780000  addli r16, zero, 7
0005d8  15006015  dma_cfg zero, zero, r22, 10
0005dc  15003015  dma_cfg zero, zero, r19, 10
0005e0  15000015  dma_cfg zero, zero, r16, 10
0005e4  15004015  dma_cfg zero, zero, r20, 10
0005e8  1f2a1000  addli r20, zero, 10
0005ec  15005015  dma_cfg zero, zero, r21, 10
0005f0  15004015  dma_cfg zero, zero, r20, 10
0005f4  1f3a1000  addli r20, zero, 11
0005f8  15004015  dma_cfg zero, zero, r20, 10
0005fc  1f4a1000  addli r20, zero, 12
000600  15004015  dma_cfg zero, zero, r20, 10
000604  1f5a1000  addli r20, zero, 13
000608  15004015  dma_cfg zero, zero, r20, 10
00060c  1500c014  dma_cfg zero, zero, r12, 10
000610  1f761000  addli r12, zero, 15
000614  1500c014  dma_cfg zero, zero, r12, 10
000618  1f062000  addli r12, zero, 16
00061c  1500c014  dma_cfg zero, zero, r12, 10
000620  1f162000  addli r12, zero, 17
000624  1500c014  dma_cfg zero, zero, r12, 10
000628  1f262000  addli r12, zero, 18
00062c  1500c014  dma_cfg zero, zero, r12, 10
000630  1f362000  addli r12, zero, 19
000634  1500c014  dma_cfg zero, zero, r12, 10
000638  1f462000  addli r12, zero, 20
00063c  1500c014  dma_cfg zero, zero, r12, 10
000640  1f562000  addli r12, zero, 21
000644  1500c014  dma_cfg zero, zero, r12, 10
000648  1f662000  addli r12, zero, 22
00064c  1500c014  dma_cfg zero, zero, r12, 10
000650  1f762000  addli r12, zero, 23
000654  1500c014  dma_cfg zero, zero, r12, 10
000658  1f063000  addli r12, zero, 24
00065c  1500c014  dma_cfg zero, zero, r12, 10
000660  1f163000  addli r12, zero, 25
000664  1500c014  dma_cfg zero, zero, r12, 10
000668  1f263000  addli r12, zero, 26
00066c  1500c014  dma_cfg zero, zero, r12, 10
000670  1f363000  addli r12, zero, 27
000674  1500c014  dma_cfg zero, zero, r12, 10
000678  1f463000  addli r12, zero, 28
00067c  1500c014  dma_cfg zero, zero, r12, 10
000680  1f563000  addli r12, zero, 29
000684  1500c014  dma_cfg zero, zero, r12, 10
000688  1f663000  addli r12, zero, 30
00068c  1500c014  dma_cfg zero, zero, r12, 10
000690  1f763000  addli r12, zero, 31
000694  1500c014  dma_cfg zero, zero, r12, 10
000698  1f060001  addli r12, zero, 128
00069c  95870700  dma_cfg r15, r15, zero, 0
0006a0  95070002  dma_cfg r15, zero, zero, 1
0006a4  15000004  dma_cfg zero, zero, zero, 2
0006a8  150ca007  dma_cfg r24, zero, r26, 3
0006ac  1506b008  dma_cfg r12, zero, r11, 4
0006b0  1f060002  addli r12, zero, 256
0006b4  1506c00b  dma_cfg r12, zero, r28, 5
0006b8  15000010  dma_cfg zero, zero, zero, 8
0006bc  35000000  dma_run zero
0006c0  1500f00a  dma_cfg zero, zero, r15, 5
0006c4  15000010  dma_cfg zero, zero, zero, 8
0006c8  1d100b00  unlock r22
0006cc  5b98ffff  j -832
0006d0  7d900500  xwait r11, 0
0006d4  7d100a00  xwait r20, 0
0006d8  1d000000  lock zero, zero
0006dc  1f0d8000  addli r26, zero, 64
0006e0  1f340000  addli r8, zero, 3
0006e4  1f460000  addli r12, zero, 4
0006e8  81050000  ds_cfg r11, zero, 0
0006ec  010d0002  ds_cfg r26, zero, 1
0006f0  010d001c  ds_cfg r26, zero, 14
0006f4  010e001a  ds_cfg r28, zero, 13
0006f8  a116ac03  shuffle_batch r13, r24, r26, 1
0006fc  1f0c000e  addli r24, zero, 1792
000700  1d100000  unlock zero
000704  7d000400  xsignal r8, 0
000708  7d000600  xsignal r12, 0
00070c  dbbdffff  j -532
000710  1f341000  addli r8, zero, 11
000714  2b0c1400  lui r24, 320
000718  2bc50100  lui r10, 28
00071c  2bc80100  lui r16, 28
000720  8b948238  mod.s r9, r5, r8
000724  0b14b238  mod.s r8, r4, r11
000728  0b97a420  mul.s r14, r9, r10
00072c  0b1ca450  fmac.s r24, r8, r10
000730  9f740000  addli r9, zero, 7
000734  b7cb9d00  beq r27, r9, 752
000738  9f3c0000  addli r25, zero, 3
00073c  1f460000  addli r12, zero, 4
000740  bbcc3d01  bneq r27, r19, 816
000744  eb540ffc  load.d r[10:11], -64(r30)
000748  eb598ffa  load.d r[20:21], -88(r30)
00074c  0b180421  mul.s r16, r8, r16
000750  8ba49010  add.ul r[10:11], r[2:3], r[10:11]
000754  8f963471  mod.sl r[14:15], r[10:11], r[20:21]
000758  97baf402  sll.d r[22:23], r[10:11], r15
00075c  a78d8603  addli.d r[28:29], r[14:15], 448
000760  8bbd3d41  min.sl r[28:29], r[28:29], r[20:21]
000764  9f690000  addli r19, zero, 6
000768  0bb4dd18  sub.sl r[9:10], r[28:29], r[14:15]
00076c  eb568f00  load.d r[14:15], 8(r30)
000770  9f7d0000  addli r27, zero, 7
000774  7d900d00  xwait r27, 0
000778  8ba65611  add.ul r[14:15], r[14:15], r[22:23]
00077c  bf844700  blt.s r15, r4, 288
000780  1f5a0000  addli r20, zero, 5
000784  1f051000  addli r10, zero, 8
000788  9f7a1000  addli r21, zero, 15
00078c  1f0b8000  addli r22, zero, 64
000790  1d000a00  lock zero, r20
000794  15000014  dma_cfg zero, zero, zero, 10
000798  1500f014  dma_cfg zero, zero, r15, 10
00079c  1500b014  dma_cfg zero, zero, r11, 10
0007a0  15009015  dma_cfg zero, zero, r25, 10
0007a4  1500c014  dma_cfg zero, zero, r12, 10
0007a8  15004015  dma_cfg zero, zero, r20, 10
0007ac  15003015  dma_cfg zero, zero, r19, 10
0007b0  1500b015  dma_cfg zero, zero, r27, 10
0007b4  1500a014  dma_cfg zero, zero, r10, 10
0007b8  1f151000  addli r10, zero, 9
0007bc  1500a014  dma_cfg zero, zero, r10, 10
0007c0  1f251000  addli r10, zero, 10
0007c4  1500a014  dma_cfg zero, zero, r10, 10
0007c8  1f351000  addli r10, zero, 11
0007cc  1500a014  dma_cfg zero, zero, r10, 10
0007d0  1f451000  addli r10, zero, 12
0007d4  1500a014  dma_cfg zero, zero, r10, 10
0007d8  1f551000  addli r10, zero, 13
0007dc  1500a014  dma_cfg zero, zero, r10, 10
0007e0  1f651000  addli r10, zero, 14
0007e4  1500a014  dma_cfg zero, zero, r10, 10
0007e8  15005015  dma_cfg zero, zero, r21, 10
0007ec  9f0a2000  addli r21, zero, 16
0007f0  15005015  dma_cfg zero, zero, r21, 10
0007f4  9f1a2000  addli r21, zero, 17
0007f8  15005015  dma_cfg zero, zero, r21, 10
0007fc  9f2a2000  addli r21, zero, 18
000800  15005015  dma_cfg zero, zero, r21, 10
000804  9f3a2000  addli r21, zero, 19
000808  15005015  dma_cfg zero, zero, r21, 10
00080c  9f4a2000  addli r21, zero, 20
000810  15005015  dma_cfg zero, zero, r21, 10
000814  9f5a2000  addli r21, zero, 21
000818  15005015  dma_cfg zero, zero, r21, 10
00081c  9f6a2000  addli r21, zero, 22
000820  15005015  dma_cfg zero, zero, r21, 10
000824  9f7a2000  addli r21, zero, 23
000828  15005015  dma_cfg zero, zero, r21, 10
00082c  9f0a3000  addli r21, zero, 24
000830  15005015  dma_cfg zero, zero, r21, 10
000834  9f1a3000  addli r21, zero, 25
000838  15005015  dma_cfg zero, zero, r21, 10
00083c  9f2a3000  addli r21, zero, 26
000840  15005015  dma_cfg zero, zero, r21, 10
000844  9f3a3000  addli r21, zero, 27
000848  15005015  dma_cfg zero, zero, r21, 10
00084c  9f4a3000  addli r21, zero, 28
000850  15005015  dma_cfg zero, zero, r21, 10
000854  9f5a3000  addli r21, zero, 29
000858  15005015  dma_cfg zero, zero, r21, 10
00085c  9f6a3000  addli r21, zero, 30
000860  15005015  dma_cfg zero, zero, r21, 10
000864  9f7a3000  addli r21, zero, 31
000868  15005015  dma_cfg zero, zero, r21, 10
00086c  9f0a0001  addli r21, zero, 128
000870  95870700  dma_cfg r15, r15, zero, 0
000874  95070002  dma_cfg r15, zero, zero, 1
000878  15000004  dma_cfg zero, zero, zero, 2
00087c  150c6007  dma_cfg r24, zero, r22, 3
000880  950aa008  dma_cfg r21, zero, r10, 4
000884  150d600b  dma_cfg r26, zero, r22, 5
000888  15000010  dma_cfg zero, zero, zero, 8
00088c  35000000  dma_run zero
000890  1500f00a  dma_cfg zero, zero, r15, 5
000894  15000010  dma_cfg zero, zero, zero, 8
000898  1d100a00  unlock r20
00089c  2b051400  lui r10, 320
0008a0  9f7a3400  addli r21, r8, 31
0008a4  1f0a4000  addli r20, zero, 32
0008a8  1d000600  lock zero, r12
0008ac  1f0d8000  addli r26, zero, 64
0008b0  1f0e8002  addli r28, zero, 320
0008b4  95870700  dma_cfg r15, r15, zero, 0
0008b8  1b150504  ori r10, r10, 64
0008bc  0b144439  mod.s r8, r8, r20
0008c0  15000704  dma_cfg zero, r14, zero, 2
0008c4  0b15a810  add.s r10, r16, r10
0008c8  0b984a31  div.s r16, r21, r20
0008cc  1f5a0000  addli r20, zero, 5
0008d0  1585a607  dma_cfg r10, r13, r26, 3
0008d4  9f060001  addli r13, zero, 128
0008d8  1f05000e  addli r10, zero, 1792
0008dc  1b341400  slli r8, r8, 1
0008e0  95060d09  dma_cfg r13, r26, r16, 4
0008e4  e3444fff  loadli.w r9,  -92(r30)
0008e8  1585a40b  dma_cfg r10, r9, r26, 5
0008ec  1f550000  addli r10, zero, 5
0008f0  9f041000  addli r9, zero, 8
0008f4  15008010  dma_cfg zero, zero, r8, 8
0008f8  35000000  dma_run zero
0008fc  1500f00a  dma_cfg zero, zero, r15, 5
000900  15000010  dma_cfg zero, zero, zero, 8
000904  1d100600  unlock r12
000908  1d000500  lock zero, r10
00090c  15000014  dma_cfg zero, zero, zero, 10
000910  1500f014  dma_cfg zero, zero, r15, 10
000914  1500b014  dma_cfg zero, zero, r11, 10
000918  15009015  dma_cfg zero, zero, r25, 10
00091c  1500c014  dma_cfg zero, zero, r12, 10
000920  1500a014  dma_cfg zero, zero, r10, 10
000924  15003015  dma_cfg zero, zero, r19, 10
000928  1500b015  dma_cfg zero, zero, r27, 10
00092c  803d0002  core_id r27
000930  15009014  dma_cfg zero, zero, r9, 10
000934  9f141000  addli r9, zero, 9
000938  15009014  dma_cfg zero, zero, r9, 10
00093c  9f241000  addli r9, zero, 10
000940  15009014  dma_cfg zero, zero, r9, 10
000944  9f341000  addli r9, zero, 11
000948  15009014  dma_cfg zero, zero, r9, 10
00094c  9f441000  addli r9, zero, 12
000950  15009014  dma_cfg zero, zero, r9, 10
000954  9f541000  addli r9, zero, 13
000958  15009014  dma_cfg zero, zero, r9, 10
00095c  9f641000  addli r9, zero, 14
000960  15009014  dma_cfg zero, zero, r9, 10
000964  9f741000  addli r9, zero, 15
000968  15009014  dma_cfg zero, zero, r9, 10
00096c  9f042000  addli r9, zero, 16
000970  15009014  dma_cfg zero, zero, r9, 10
000974  9f142000  addli r9, zero, 17
000978  15009014  dma_cfg zero, zero, r9, 10
00097c  9f242000  addli r9, zero, 18
000980  15009014  dma_cfg zero, zero, r9, 10
000984  9f342000  addli r9, zero, 19
000988  15009014  dma_cfg zero, zero, r9, 10
00098c  9f442000  addli r9, zero, 20
000990  15009014  dma_cfg zero, zero, r9, 10
000994  9f542000  addli r9, zero, 21
000998  15009014  dma_cfg zero, zero, r9, 10
00099c  9f642000  addli r9, zero, 22
0009a0  15009014  dma_cfg zero, zero, r9, 10
0009a4  9f742000  addli r9, zero, 23
0009a8  15009014  dma_cfg zero, zero, r9, 10
0009ac  9f043000  addli r9, zero, 24
0009b0  15009014  dma_cfg zero, zero, r9, 10
0009b4  9f143000  addli r9, zero, 25
0009b8  15009014  dma_cfg zero, zero, r9, 10
0009bc  9f243000  addli r9, zero, 26
0009c0  15009014  dma_cfg zero, zero, r9, 10
0009c4  9f343000  addli r9, zero, 27
0009c8  15009014  dma_cfg zero, zero, r9, 10
0009cc  9f443000  addli r9, zero, 28
0009d0  15009014  dma_cfg zero, zero, r9, 10
0009d4  9f543000  addli r9, zero, 29
0009d8  15009014  dma_cfg zero, zero, r9, 10
0009dc  9f643000  addli r9, zero, 30
0009e0  15009014  dma_cfg zero, zero, r9, 10
0009e4  9f743000  addli r9, zero, 31
0009e8  15009014  dma_cfg zero, zero, r9, 10
0009ec  95870700  dma_cfg r15, r15, zero, 0
0009f0  95070002  dma_cfg r15, zero, zero, 1
0009f4  15000004  dma_cfg zero, zero, zero, 2
0009f8  150ca007  dma_cfg r24, zero, r26, 3
0009fc  1f0c000e  addli r24, zero, 1792
000a00  95060009  dma_cfg r13, zero, r16, 4
000a04  150ca00b  dma_cfg r24, zero, r26, 5
000a08  15008010  dma_cfg zero, zero, r8, 8
000a0c  35000000  dma_run zero
000a10  1500f00a  dma_cfg zero, zero, r15, 5
000a14  15000010  dma_cfg zero, zero, zero, 8
000a18  1d100500  unlock r10
000a1c  7d800900  xsignal r19, 0
000a20  5b5bffff  j -1320
000a24  1f141000  addli r8, zero, 9
000a28  7d900900  xwait r19, 0
000a2c  1f0d8000  addli r26, zero, 64
000a30  1f460000  addli r12, zero, 4
000a34  7d100400  xwait r8, 0
000a38  1d000000  lock zero, zero
000a3c  1f048003  addli r8, zero, 448
000a40  81050000  ds_cfg r11, zero, 0
000a44  01040002  ds_cfg r8, zero, 1
000a48  010d001c  ds_cfg r26, zero, 14
000a4c  0104001a  ds_cfg r8, zero, 13
000a50  1f740000  addli r8, zero, 7
000a54  4107ac05  shuffle_coa r14, r24, r26, 2
000a58  1f0c000e  addli r24, zero, 1792
000a5c  1d100000  unlock zero
000a60  7d000400  xsignal r8, 0
000a64  1f041000  addli r8, zero, 8
000a68  7d000400  xsignal r8, 0
000a6c  db51ffff  j -1396
000a70  1f651000  addli r10, zero, 14
000a74  1f0c000e  addli r24, zero, 1792
000a78  1f0d8000  addli r26, zero, 64
000a7c  bbf9cdfc  bneq r27, r12, -1412
000a80  1f041000  addli r8, zero, 8
000a84  7d100600  xwait r12, 0
000a88  2b480000  lui r16, 4
000a8c  7d100400  xwait r8, 0
000a90  1f040000  addli r8, zero, 0
000a94  b7b00100  beq r3, zero, 44
000a98  1d800700  lock zero, r15
000a9c  8b948b10  add.s r9, r23, r8
000aa0  1f040402  addli r8, r8, 256
000aa4  090dcd01  mm_cfg r26, r26, r28, 0
000aa8  0906f504  mm_cfg r12, r10, r15, 2
000aac  a994e610  mm_acc r9, r13, r14, 8
000ab0  0b170711  add.s r14, r14, r16
000ab4  1d900700  unlock r15
000ab8  bb0f84ff  bneq r8, r24, -32
000abc  5b050000  j 40
000ac0  1d800700  lock zero, r15
000ac4  8b948b10  add.s r9, r23, r8
000ac8  1f040402  addli r8, r8, 256
000acc  090dcd01  mm_cfg r26, r26, r28, 0
000ad0  0906f504  mm_cfg r12, r10, r15, 2
000ad4  a984e610  mm r9, r13, r14, 8
000ad8  0b170711  add.s r14, r14, r16
000adc  1d900700  unlock r15
000ae0  bb0f84ff  bneq r8, r24, -32
000ae4  1f141000  addli r8, zero, 9
000ae8  7d000a00  xsignal r20, 0
000aec  7d000400  xsignal r8, 0
000af0  5b41ffff  j -1528
000af4  b7decdfa  beq r27, r12, -2124
000af8  63496f00  loadli.w r18,  52(r30)
000afc  bbee0dfa  bneq r27, zero, -2120
000b00  eb560ffc  load.d r[14:15], -64(r30)
000b04  6b548ffa  load.d r[9:10], -88(r30)
000b08  6b5a0ff9  load.d r[21:22], -112(r30)
000b0c  6b580ffd  load.d r[17:18], -48(r30)
000b10  9f211000  addli r3, zero, 10
000b14  1f550000  addli r10, zero, 5
000b18  a7808603  addli.d r[2:3], r[14:15], 448
000b1c  8bb08040  min.sl r[2:3], r[2:3], r[9:10]
000b20  27048a02  addli.d r[9:10], r[21:22], 320
000b24  8bb0d048  max.sl r[2:3], r[2:3], r[14:15]
000b28  0b340441  min.sl r[9:10], r[9:10], r[17:18]
000b2c  6b580f01  load.d r[17:18], 16(r30)
000b30  8bb0d018  sub.sl r[2:3], r[2:3], r[14:15]
000b34  eb568ff8  load.d r[14:15], -120(r30)
000b38  0b344449  max.sl r[9:10], r[9:10], r[21:22]
000b3c  0b344419  sub.sl r[9:10], r[9:10], r[21:22]
000b40  8bb0d040  min.sl r[2:3], r[2:3], r[14:15]
000b44  eb560ff5  load.d r[14:15], -176(r30)
000b48  8b36da20  mul.sl r[14:15], r[21:22], r[14:15]
000b4c  1f5a0000  addli r20, zero, 5
000b50  97b6f602  sll.d r[14:15], r[14:15], r15
000b54  8b26d810  add.ul r[14:15], r[17:18], r[14:15]
000b58  6b580ffc  load.d r[17:18], -64(r30)
000b5c  7d900100  xwait r3, 0
000b60  9ff13000  addli r3, r1, 31
000b64  1d000500  lock zero, r10
000b68  95870700  dma_cfg r15, r15, zero, 0
000b6c  15800702  dma_cfg zero, r15, zero, 1
000b70  1738f802  sll.d r[17:18], r[17:18], r15
000b74  8ba60611  add.ul r[14:15], r[14:15], r[17:18]
000b78  1f084000  addli r16, zero, 32
000b7c  8b910131  div.s r3, r3, r16
000b80  8b900039  mod.s r1, r1, r16
000b84  1b910b04  ori r2, r23, 64
000b88  15070004  dma_cfg r14, zero, zero, 2
000b8c  9506a107  dma_cfg r13, r2, r26, 3
000b90  1f010001  addli r2, zero, 128
000b94  eb568ff9  load.d r[14:15], -104(r30)
000b98  150d3108  dma_cfg r26, r2, r3, 4
000b9c  0b34d440  min.sl r[9:10], r[9:10], r[14:15]
000ba0  9bb01000  slli r1, r1, 1
000ba4  6341bffe  loadli.w r2,  -164(r30)
000ba8  15018c0a  dma_cfg r2, r24, r8, 5
000bac  15001010  dma_cfg zero, zero, r1, 8
000bb0  35000000  dma_run zero
000bb4  1500f00a  dma_cfg zero, zero, r15, 5
000bb8  9f301000  addli r1, zero, 11
000bbc  15000010  dma_cfg zero, zero, zero, 8
000bc0  1d100500  unlock r10
000bc4  dbddfeff  j -2324
000bc8  7d000000  xsignal zero, 0
000bcc  bbe00d00  bneq r27, zero, 56
000bd0  9f200000  addli r1, zero, 2
000bd4  7d100000  xwait zero, 0
000bd8  7d100000  xwait zero, 0
000bdc  7d100000  xwait zero, 0
000be0  7d100000  xwait zero, 0
000be4  7d100000  xwait zero, 0
000be8  7d100000  xwait zero, 0
000bec  7d100000  xwait zero, 0
000bf0  7d100000  xwait zero, 0
000bf4  1d800000  lock zero, r1
000bf8  0d000020  ew_cfg zero, zero, zero, 16
000bfc  1d900000  unlock r1
000c00  7d400000  xsignal_mode_cfg zero
000c04  9f8e6e01  addli sp, sp, 176
000c08  00a00300  mfence { lm, sm, gm }
000c0c  00100000  exit
000c10  00100000  exit
000c14  00100000  exit
000c18  00100000  exit
000c1c  00100000  exit
000c20  00100000  exit
000c24  00100000  exit
000c28  00100000  exit
000c2c  00100000  exit
000c30  00100000  exit
000c34  00100000  exit
000c38  00100000  exit
000c3c  00100000  exit
000c40  00100000  exit
000c44  00100000  exit
000c48  00100000  exit
000c4c  00100000  exit
000c50  00100000  exit
000c54  00100000  exit
000c58  00100000  exit
000c5c  00100000  exit
000c60  00100000  exit
000c64  00100000  exit
000c68  00100000  exit
000c6c  00100000  exit
000c70  00100000  exit
000c74  00100000  exit
000c78  00100000  exit
000c7c  00100000  exit
000c80  00100000  exit
000c84  00100000  exit
000c88  00100000  exit
000c8c  00100000  exit
000c90  00100000  exit
000c94  00100000  exit
000c98  00100000  exit
000c9c  00100000  exit
000ca0  00100000  exit
000ca4  00100000  exit
000ca8  00100000  exit
000cac  00100000  exit
000cb0  00100000  exit
000cb4  00100000  exit
000cb8  00100000  exit
000cbc  00100000  exit
000cc0  00100000  exit
000cc4  00100000  exit
000cc8  00100000  exit
000ccc  00100000  exit
000cd0  00100000  exit
000cd4  00100000  exit
000cd8  00100000  exit
000cdc  00100000  exit
000ce0  00100000  exit
000ce4  00100000  exit
000ce8  00100000  exit
000cec  00100000  exit
000cf0  00100000  exit
000cf4  00100000  exit
000cf8  00100000  exit
000cfc  00100000  exit
000d00  00100000  exit
000d04  00100000  exit
000d08  00100000  exit
000d0c  00100000  exit
000d10  00100000  exit
000d14  00100000  exit
000d18  00100000  exit
000d1c  00100000  exit
000d20  00100000  exit
000d24  00100000  exit
000d28  00100000  exit
000d2c  00100000  exit
000d30  00100000  exit
000d34  00100000  exit
000d38  00100000  exit
000d3c  00100000  exit
000d40  00100000  exit
000d44  00100000  exit
000d48  00100000  exit
000d4c  00100000  exit
000d50  00100000  exit
000d54  00100000  exit
000d58  00100000  exit
000d5c  00100000  exit
000d60  00100000  exit
000d64  00100000  exit
000d68  00100000  exit
000d6c  00100000  exit
000d70  00100000  exit
000d74  00100000  exit
000d78  00100000  exit
000d7c  00100000  exit
000d80  00100000  exit
000d84  00100000  exit
000d88  00100000  exit
000d8c  00100000  exit
000d90  00100000  exit
000d94  00100000  exit
000d98  00100000  exit
000d9c  00100000  exit
000da0  00100000  exit
000da4  00100000  exit
000da8  00100000  exit
000dac  00100000  exit
000db0  00100000  exit
000db4  00100000  exit
000db8  00100000  exit
000dbc  00100000  exit
000dc0  00100000  exit
000dc4  00100000  exit
000dc8  00100000  exit
000dcc  00100000  exit
000dd0  00100000  exit
000dd4  00100000  exit
000dd8  00100000  exit
000ddc  00100000  exit
000de0  00100000  exit
000de4  00100000  exit
000de8  00100000  exit
000dec  00100000  exit
000df0  00100000  exit
000df4  00100000  exit
000df8  00100000  exit
000dfc  00100000  exit
000e00  00100000  exit
000e04  00100000  exit
000e08  00100000  exit
000e0c  00100000  exit
000e10  00100000  exit
000e14  00100000  exit
000e18  00100000  exit
000e1c  00100000  exit
000e20  00100000  exit
000e24  00100000  exit
000e28  00100000  exit
000e2c  00100000  exit
000e30  00100000  exit
000e34  00100000  exit
000e38  00100000  exit
000e3c  00100000  exit
000e40  00100000  exit
000e44  00100000  exit
000e48  00100000  exit
000e4c  00100000  exit
