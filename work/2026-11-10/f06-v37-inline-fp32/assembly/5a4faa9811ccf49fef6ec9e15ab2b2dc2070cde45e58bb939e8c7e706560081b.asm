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
0000b4  9f8e7efe  addli sp, sp, -200
0000b8  9f100000  addli r1, zero, 1
0000bc  00370002  core_id r14
0000c0  1f8f1e01  addli r30, sp, 136
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100700  beq r14, zero, 36
0000cc  2bf1ffff  lui r2, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b10f1ff  ori r1, r2, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  5b220000  j 272
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
00014c  8101001c  ds_cfg r3, zero, 14
000150  21133008  shuffle_batch r6, zero, r3, 4
000154  9f510000  addli r3, zero, 5
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
000198  9f101000  addli r1, zero, 9
00019c  7d800100  xsignal r3, 0
0001a0  9f710000  addli r3, zero, 7
0001a4  7d800000  xsignal r1, 0
0001a8  9f501000  addli r1, zero, 13
0001ac  7d800100  xsignal r3, 0
0001b0  7d000100  xsignal r2, 0
0001b4  1f711000  addli r2, zero, 15
0001b8  7d800000  xsignal r1, 0
0001bc  9f301000  addli r1, zero, 11
0001c0  7d800000  xsignal r1, 0
0001c4  7d000100  xsignal r2, 0
0001c8  9f702000  addli r1, zero, 23
0001cc  1f015000  addli r2, zero, 40
0001d0  7d800000  xsignal r1, 0
0001d4  7d000100  xsignal r2, 0
0001d8  9f203000  addli r1, zero, 26
0001dc  1f314000  addli r2, zero, 35
0001e0  7d800000  xsignal r1, 0
0001e4  7d000100  xsignal r2, 0
0001e8  9f305000  addli r1, zero, 43
0001ec  1f514000  addli r2, zero, 37
0001f0  7d800000  xsignal r1, 0
0001f4  7d000100  xsignal r2, 0
0001f8  e3005f00  loadli.w r1,  40(r30)
0001fc  63415f00  loadli.w r2,  44(r30)
000200  00d20002  load_param_i r4, 1
000204  e3016f00  loadli.w r3,  48(r30)
000208  8b101120  mul.s r1, r2, r1
00020c  1f010200  addli r2, r4, 0
000210  0b913050  fmac.s r2, r1, r3
000214  8b913020  mul.s r3, r1, r3
000218  1f71f1ff  addli r2, r2, -1
00021c  0b114130  div.s r2, r2, r4
000220  00520002  load_param_i r4, 0
000224  8b104120  mul.s r1, r2, r4
000228  0b114150  fmac.s r2, r2, r4
00022c  0b113140  min.s r2, r2, r3
000230  4b351116  ble.s r2, r1, 11596
000234  33920028  sext_int2long r[5:6], r1
000238  ab400100  lui r1, 20
00023c  33110128  sext_int2long r[3:4], r2
000240  9f5d0000  addli r27, zero, 5
000244  1f2d0000  addli r26, zero, 2
000248  9f048000  addli r9, zero, 64
00024c  2b490000  lui r18, 4
000250  9f7c4000  addli r25, zero, 39
000254  9f7a6000  addli r21, zero, 55
000258  1b9c0010  ori r24, r1, 256
00025c  abc00100  lui r1, 28
000260  73302ff8  store.d r[3:4], -128(r30)
000264  2b810100  lui r2, 24
000268  9b9b0010  ori r23, r1, 256
00026c  abf0ff7f  lui r1, 524287
000270  e74f8fff  storeli.w r24, -4(r30)
000274  1b9ef0ff  ori r28, r1, 4095
000278  9b100110  ori r1, r2, 256
00027c  2b810800  lui r2, 136
000280  e70d7fff  storeli.w r23, -40(r30)
000284  e74b1ffe  storeli.w r1, -68(r30)
000288  ab600200  lui r1, 38
00028c  e74ccfff  storeli.w r28, -52(r30)
000290  9b900010  ori r1, r1, 256
000294  674c1ffe  storeli.w r1, -60(r30)
000298  9b1081b4  ori r1, r2, 2888
00029c  2bf17f7f  lui r2, 522239
0002a0  e7471ffe  storeli.w r1, -132(r30)
0002a4  ab700000  lui r1, 7
0002a8  9b90f0ff  ori r1, r1, 4095
0002ac  e70f1ffe  storeli.w r1, -8(r30)
0002b0  9b10f1ff  ori r1, r2, 4095
0002b4  e70c1ffe  storeli.w r1, -56(r30)
0002b8  ab000200  lui r1, 32
0002bc  9b900010  ori r1, r1, 256
0002c0  670c1ffe  storeli.w r1, -64(r30)
0002c4  db030000  j 28
0002c8  6b528ff9  load.d r[5:6], -104(r30)
0002cc  eb500ff8  load.d r[2:3], -128(r30)
0002d0  9f048000  addli r9, zero, 64
0002d4  27120200  addli.d r[5:6], r[5:6], 1
0002d8  93301204  setlt.sl r1, r[5:6], r[2:3]
0002dc  b7820016  beq r1, zero, 11424
0002e0  e3006f00  loadli.w r1,  48(r30)
0002e4  63415f00  loadli.w r2,  44(r30)
0002e8  733c4ff8  store.d r[5:6], -104(r30)
0002ec  8b101230  div.s r1, r4, r1
0002f0  9f010100  addli r3, r2, 0
0002f4  0b913030  div.s r2, r1, r3
0002f8  8b903038  mod.s r1, r1, r3
0002fc  33130128  sext_int2long r[7:8], r2
000300  33910028  sext_int2long r[3:4], r1
000304  73346ff8  store.d r[7:8], -120(r30)
000308  bb33b701  bneq r14, r27, 236
00030c  1f320000  addli r4, zero, 3
000310  ab02c07f  lui r5, 523264
000314  9f000000  addli r1, zero, 0
000318  7d100200  xwait r4, 0
00031c  1d000d00  lock zero, r26
000320  2b02807f  lui r4, 522240
000324  0d000002  ew_cfg zero, zero, zero, 1
000328  0d120000  ewcoeff_cfg r4, zero, zero, 0
00032c  1f727000  addli r4, zero, 63
000330  0d000204  ew_cfg zero, r4, zero, 2
000334  8d040006  ew_cfg r9, zero, zero, 3
000338  4d300000  ssaux zero, 0
00033c  1d100d00  unlock r26
000340  7d000d00  xsignal r26, 0
000344  7d900d00  xwait r27, 0
000348  1d000d00  lock zero, r26
00034c  0d000002  ew_cfg zero, zero, zero, 1
000350  8d120000  ewcoeff_cfg r5, zero, zero, 0
000354  9f420000  addli r5, zero, 4
000358  0d000204  ew_cfg zero, r4, zero, 2
00035c  8d040006  ew_cfg r9, zero, zero, 3
000360  4d390000  ssaux r18, 0
000364  1d100d00  unlock r26
000368  7d800200  xsignal r5, 0
00036c  9f620000  addli r5, zero, 6
000370  17315102  sll.d r[3:4], r[3:4], r5
000374  73382ff8  store.d r[3:4], -112(r30)
000378  1f611000  addli r2, zero, 14
00037c  ab410100  lui r3, 20
000380  7d100100  xwait r2, 0
000384  1f012000  addli r2, zero, 16
000388  7d100100  xwait r2, 0
00038c  1d000d00  lock zero, r26
000390  2b01803f  lui r2, 260096
000394  0d000002  ew_cfg zero, zero, zero, 1
000398  0d110100  ewcoeff_cfg r2, r2, zero, 0
00039c  1f110000  addli r2, zero, 1
0003a0  0d000204  ew_cfg zero, r4, zero, 2
0003a4  0d010006  ew_cfg r2, zero, zero, 3
0003a8  0b918011  add.s r2, r1, r24
0003ac  9f800002  addli r1, r1, 256
0003b0  2d013100  dsmadd r2, r2, r3, 0
0003b4  bbdf20ff  bneq r1, r18, -12
0003b8  9f701000  addli r1, zero, 15
0003bc  670d0ffe  storeli.w zero, -48(r30)
0003c0  9f010000  addli r3, zero, 0
0003c4  9f020000  addli r5, zero, 0
0003c8  9f060000  addli r13, zero, 0
0003cc  9f090000  addli r19, zero, 0
0003d0  1f010000  addli r2, zero, 0
0003d4  1d100d00  unlock r26
0003d8  7d800000  xsignal r1, 0
0003dc  9f502000  addli r1, zero, 21
0003e0  7d800000  xsignal r1, 0
0003e4  9f602000  addli r1, zero, 22
0003e8  7d800000  xsignal r1, 0
0003ec  9f102000  addli r1, zero, 17
0003f0  db2c0100  j 2404
0003f4  9f600000  addli r1, zero, 6
0003f8  670d0ffe  storeli.w zero, -48(r30)
0003fc  97301102  sll.d r[2:3], r[3:4], r1
000400  73381ff8  store.d r[2:3], -112(r30)
000404  9f300000  addli r1, zero, 3
000408  3fa1e000  blt.s r1, r14, 72
00040c  9f100000  addli r1, zero, 1
000410  b7421700  beq r14, r1, 176
000414  3739a703  beq r14, r26, 1612
000418  9f300000  addli r1, zero, 3
00041c  bb381702  bneq r14, r1, 1580
000420  9f102000  addli r1, zero, 17
000424  9f010000  addli r3, zero, 0
000428  9f020000  addli r5, zero, 0
00042c  9f060000  addli r13, zero, 0
000430  9f090000  addli r19, zero, 0
000434  1f010000  addli r2, zero, 0
000438  7d900000  xwait r1, 0
00043c  9f100000  addli r1, zero, 1
000440  670d1ffe  storeli.w r1, -48(r30)
000444  9f203000  addli r1, zero, 26
000448  7d900000  xwait r1, 0
00044c  db210100  j 2316
000450  9f400000  addli r1, zero, 4
000454  37561702  beq r14, r1, 1428
000458  1f640000  addli r8, zero, 6
00045c  37798702  beq r14, r8, 1628
000460  9f700000  addli r1, zero, 7
000464  bb171702  bneq r14, r1, 1508
000468  9f201000  addli r1, zero, 10
00046c  670d0ffe  storeli.w zero, -48(r30)
000470  9f010000  addli r3, zero, 0
000474  9f060000  addli r13, zero, 0
000478  9f090000  addli r19, zero, 0
00047c  1f010000  addli r2, zero, 0
000480  9f120000  addli r5, zero, 1
000484  7d900000  xwait r1, 0
000488  9f501000  addli r1, zero, 13
00048c  7d900000  xwait r1, 0
000490  1d000000  lock zero, zero
000494  ab000100  lui r1, 16
000498  010d0000  ds_cfg r26, zero, 0
00049c  81040002  ds_cfg r9, zero, 1
0004a0  8104001c  ds_cfg r9, zero, 14
0004a4  8104001a  ds_cfg r9, zero, 13
0004a8  41809004  shuffle_coa zero, r1, r9, 2
0004ac  9f301000  addli r1, zero, 11
0004b0  1d100000  unlock zero
0004b4  7d800000  xsignal r1, 0
0004b8  9f401000  addli r1, zero, 12
0004bc  5b130100  j 2200
0004c0  9f501000  addli r1, zero, 13
0004c4  670d0ffe  storeli.w zero, -48(r30)
0004c8  6b540f00  load.d r[9:10], 0(r30)
0004cc  9f190000  addli r19, zero, 1
0004d0  1f750000  addli r10, zero, 7
0004d4  1f521000  addli r4, zero, 13
0004d8  9f058000  addli r11, zero, 64
0004dc  2b8a0000  lui r20, 8
0004e0  9f0a0002  addli r21, zero, 256
0004e4  9f380000  addli r17, zero, 3
0004e8  1f6b0000  addli r22, zero, 6
0004ec  9f372000  addli r15, zero, 19
0004f0  1f482000  addli r16, zero, 20
0004f4  1f562000  addli r12, zero, 21
0004f8  9f010000  addli r3, zero, 0
0004fc  9f020000  addli r5, zero, 0
000500  9f060000  addli r13, zero, 0
000504  1f010000  addli r2, zero, 0
000508  17331302  sll.d r[7:8], r[7:8], r1
00050c  9f700000  addli r1, zero, 7
000510  7d900000  xwait r1, 0
000514  1d800d00  lock zero, r27
000518  9f300000  addli r1, zero, 3
00051c  0b236410  add.ul r[7:8], r[9:10], r[7:8]
000520  9f440000  addli r9, zero, 4
000524  1f040001  addli r8, zero, 128
000528  15000014  dma_cfg zero, zero, zero, 10
00052c  15003015  dma_cfg zero, zero, r19, 10
000530  1500a015  dma_cfg zero, zero, r26, 10
000534  15001014  dma_cfg zero, zero, r1, 10
000538  9f600000  addli r1, zero, 6
00053c  15009014  dma_cfg zero, zero, r9, 10
000540  1500b015  dma_cfg zero, zero, r27, 10
000544  9f3d3000  addli r27, zero, 27
000548  15001014  dma_cfg zero, zero, r1, 10
00054c  9f001000  addli r1, zero, 8
000550  1500a014  dma_cfg zero, zero, r10, 10
000554  1f051000  addli r10, zero, 8
000558  15001014  dma_cfg zero, zero, r1, 10
00055c  9f101000  addli r1, zero, 9
000560  15001014  dma_cfg zero, zero, r1, 10
000564  9f201000  addli r1, zero, 10
000568  15001014  dma_cfg zero, zero, r1, 10
00056c  9f301000  addli r1, zero, 11
000570  15001014  dma_cfg zero, zero, r1, 10
000574  9f401000  addli r1, zero, 12
000578  15001014  dma_cfg zero, zero, r1, 10
00057c  9f601000  addli r1, zero, 14
000580  15004014  dma_cfg zero, zero, r4, 10
000584  1f520000  addli r4, zero, 5
000588  15001014  dma_cfg zero, zero, r1, 10
00058c  9f701000  addli r1, zero, 15
000590  15001014  dma_cfg zero, zero, r1, 10
000594  9f002000  addli r1, zero, 16
000598  15001014  dma_cfg zero, zero, r1, 10
00059c  9f102000  addli r1, zero, 17
0005a0  15001014  dma_cfg zero, zero, r1, 10
0005a4  9f202000  addli r1, zero, 18
0005a8  15001014  dma_cfg zero, zero, r1, 10
0005ac  9f302000  addli r1, zero, 19
0005b0  15001014  dma_cfg zero, zero, r1, 10
0005b4  9f402000  addli r1, zero, 20
0005b8  15001014  dma_cfg zero, zero, r1, 10
0005bc  9f502000  addli r1, zero, 21
0005c0  15001014  dma_cfg zero, zero, r1, 10
0005c4  9f602000  addli r1, zero, 22
0005c8  15001014  dma_cfg zero, zero, r1, 10
0005cc  9f702000  addli r1, zero, 23
0005d0  15001014  dma_cfg zero, zero, r1, 10
0005d4  9f003000  addli r1, zero, 24
0005d8  15001014  dma_cfg zero, zero, r1, 10
0005dc  9f103000  addli r1, zero, 25
0005e0  15001014  dma_cfg zero, zero, r1, 10
0005e4  9f203000  addli r1, zero, 26
0005e8  15001014  dma_cfg zero, zero, r1, 10
0005ec  9f303000  addli r1, zero, 27
0005f0  15001014  dma_cfg zero, zero, r1, 10
0005f4  9f403000  addli r1, zero, 28
0005f8  15001014  dma_cfg zero, zero, r1, 10
0005fc  9f503000  addli r1, zero, 29
000600  15001014  dma_cfg zero, zero, r1, 10
000604  9f603000  addli r1, zero, 30
000608  15001014  dma_cfg zero, zero, r1, 10
00060c  9f703000  addli r1, zero, 31
000610  15001014  dma_cfg zero, zero, r1, 10
000614  9f000002  addli r1, zero, 256
000618  95890900  dma_cfg r19, r19, zero, 0
00061c  95090002  dma_cfg r19, zero, zero, 1
000620  15000004  dma_cfg zero, zero, zero, 2
000624  150ab006  dma_cfg r20, zero, r11, 3
000628  1504a009  dma_cfg r8, zero, r26, 4
00062c  9500b00a  dma_cfg r1, zero, r11, 5
000630  9b100a04  ori r1, r20, 64
000634  15000010  dma_cfg zero, zero, zero, 8
000638  35000000  dma_run zero
00063c  1500300b  dma_cfg zero, zero, r19, 5
000640  15000010  dma_cfg zero, zero, zero, 8
000644  1d100200  unlock r4
000648  1d800400  lock zero, r9
00064c  95890900  dma_cfg r19, r19, zero, 0
000650  15800304  dma_cfg zero, r7, zero, 2
000654  9500b306  dma_cfg r1, r6, r11, 3
000658  9f700000  addli r1, zero, 7
00065c  1584a509  dma_cfg r8, r11, r26, 4
000660  950ab40a  dma_cfg r21, r8, r11, 5
000664  15000010  dma_cfg zero, zero, zero, 8
000668  35000000  dma_run zero
00066c  1500300b  dma_cfg zero, zero, r19, 5
000670  15000010  dma_cfg zero, zero, zero, 8
000674  1d900400  unlock r9
000678  1d000200  lock zero, r4
00067c  15000014  dma_cfg zero, zero, zero, 10
000680  15003015  dma_cfg zero, zero, r19, 10
000684  1500a015  dma_cfg zero, zero, r26, 10
000688  15001015  dma_cfg zero, zero, r17, 10
00068c  15009014  dma_cfg zero, zero, r9, 10
000690  15004014  dma_cfg zero, zero, r4, 10
000694  15006015  dma_cfg zero, zero, r22, 10
000698  1f5b1000  addli r22, zero, 13
00069c  15001014  dma_cfg zero, zero, r1, 10
0006a0  9f101000  addli r1, zero, 9
0006a4  1500a014  dma_cfg zero, zero, r10, 10
0006a8  1f451000  addli r10, zero, 12
0006ac  15001014  dma_cfg zero, zero, r1, 10
0006b0  9f201000  addli r1, zero, 10
0006b4  15001014  dma_cfg zero, zero, r1, 10
0006b8  9f301000  addli r1, zero, 11
0006bc  15001014  dma_cfg zero, zero, r1, 10
0006c0  9f601000  addli r1, zero, 14
0006c4  1500a014  dma_cfg zero, zero, r10, 10
0006c8  15006015  dma_cfg zero, zero, r22, 10
0006cc  15001014  dma_cfg zero, zero, r1, 10
0006d0  9f701000  addli r1, zero, 15
0006d4  15001014  dma_cfg zero, zero, r1, 10
0006d8  9f002000  addli r1, zero, 16
0006dc  15001014  dma_cfg zero, zero, r1, 10
0006e0  9f102000  addli r1, zero, 17
0006e4  15001014  dma_cfg zero, zero, r1, 10
0006e8  9f202000  addli r1, zero, 18
0006ec  15001014  dma_cfg zero, zero, r1, 10
0006f0  9f103000  addli r1, zero, 25
0006f4  1500f014  dma_cfg zero, zero, r15, 10
0006f8  9f772000  addli r15, zero, 23
0006fc  15000015  dma_cfg zero, zero, r16, 10
000700  1f083000  addli r16, zero, 24
000704  1500c014  dma_cfg zero, zero, r12, 10
000708  1f662000  addli r12, zero, 22
00070c  1500c014  dma_cfg zero, zero, r12, 10
000710  1500f014  dma_cfg zero, zero, r15, 10
000714  15000015  dma_cfg zero, zero, r16, 10
000718  15001014  dma_cfg zero, zero, r1, 10
00071c  9f203000  addli r1, zero, 26
000720  15001014  dma_cfg zero, zero, r1, 10
000724  9f403000  addli r1, zero, 28
000728  1500b015  dma_cfg zero, zero, r27, 10
00072c  9f7d3000  addli r27, zero, 31
000730  15001014  dma_cfg zero, zero, r1, 10
000734  9f503000  addli r1, zero, 29
000738  15001014  dma_cfg zero, zero, r1, 10
00073c  9f603000  addli r1, zero, 30
000740  15001014  dma_cfg zero, zero, r1, 10
000744  9f600000  addli r1, zero, 6
000748  1500b015  dma_cfg zero, zero, r27, 10
00074c  95890900  dma_cfg r19, r19, zero, 0
000750  95090002  dma_cfg r19, zero, zero, 1
000754  15000004  dma_cfg zero, zero, zero, 2
000758  150ab006  dma_cfg r20, zero, r11, 3
00075c  1504a009  dma_cfg r8, zero, r26, 4
000760  950ab00a  dma_cfg r21, zero, r11, 5
000764  6b5a0f01  load.d r[21:22], 16(r30)
000768  15000010  dma_cfg zero, zero, zero, 8
00076c  35000000  dma_run zero
000770  1500300b  dma_cfg zero, zero, r19, 5
000774  15000010  dma_cfg zero, zero, zero, 8
000778  1d100200  unlock r4
00077c  6b530ff9  load.d r[7:8], -112(r30)
000780  7d800000  xsignal r1, 0
000784  17333303  sll.d r[7:8], r[7:8], r19
000788  0b236a10  add.ul r[7:8], r[21:22], r[7:8]
00078c  1f7a1000  addli r20, zero, 15
000790  9f7a6000  addli r21, zero, 55
000794  7d100a00  xwait r20, 0
000798  1d000200  lock zero, r4
00079c  15000014  dma_cfg zero, zero, zero, 10
0007a0  15003015  dma_cfg zero, zero, r19, 10
0007a4  1500a015  dma_cfg zero, zero, r26, 10
0007a8  15001015  dma_cfg zero, zero, r17, 10
0007ac  9f581000  addli r17, zero, 13
0007b0  15009014  dma_cfg zero, zero, r9, 10
0007b4  15004014  dma_cfg zero, zero, r4, 10
0007b8  15001014  dma_cfg zero, zero, r1, 10
0007bc  9f700000  addli r1, zero, 7
0007c0  15001014  dma_cfg zero, zero, r1, 10
0007c4  9f001000  addli r1, zero, 8
0007c8  15001014  dma_cfg zero, zero, r1, 10
0007cc  9f101000  addli r1, zero, 9
0007d0  15001014  dma_cfg zero, zero, r1, 10
0007d4  9f201000  addli r1, zero, 10
0007d8  15001014  dma_cfg zero, zero, r1, 10
0007dc  9f301000  addli r1, zero, 11
0007e0  15001014  dma_cfg zero, zero, r1, 10
0007e4  9f601000  addli r1, zero, 14
0007e8  1500a014  dma_cfg zero, zero, r10, 10
0007ec  1f052000  addli r10, zero, 16
0007f0  15006015  dma_cfg zero, zero, r22, 10
0007f4  1f7b1000  addli r22, zero, 15
0007f8  15001014  dma_cfg zero, zero, r1, 10
0007fc  9f102000  addli r1, zero, 17
000800  15004015  dma_cfg zero, zero, r20, 10
000804  2b4a0100  lui r20, 20
000808  1500a014  dma_cfg zero, zero, r10, 10
00080c  1f653000  addli r10, zero, 30
000810  15001014  dma_cfg zero, zero, r1, 10
000814  9f202000  addli r1, zero, 18
000818  15001014  dma_cfg zero, zero, r1, 10
00081c  9f302000  addli r1, zero, 19
000820  15001014  dma_cfg zero, zero, r1, 10
000824  9f402000  addli r1, zero, 20
000828  15001014  dma_cfg zero, zero, r1, 10
00082c  9f502000  addli r1, zero, 21
000830  15001014  dma_cfg zero, zero, r1, 10
000834  9f103000  addli r1, zero, 25
000838  1500c014  dma_cfg zero, zero, r12, 10
00083c  1f762000  addli r12, zero, 23
000840  1500f014  dma_cfg zero, zero, r15, 10
000844  9f073000  addli r15, zero, 24
000848  15000015  dma_cfg zero, zero, r16, 10
00084c  1f783000  addli r16, zero, 31
000850  15001014  dma_cfg zero, zero, r1, 10
000854  9f203000  addli r1, zero, 26
000858  15001014  dma_cfg zero, zero, r1, 10
00085c  9f303000  addli r1, zero, 27
000860  15001014  dma_cfg zero, zero, r1, 10
000864  9f403000  addli r1, zero, 28
000868  15001014  dma_cfg zero, zero, r1, 10
00086c  9f503000  addli r1, zero, 29
000870  15001014  dma_cfg zero, zero, r1, 10
000874  9b100a04  ori r1, r20, 64
000878  1500a014  dma_cfg zero, zero, r10, 10
00087c  1500b015  dma_cfg zero, zero, r27, 10
000880  9f0d0002  addli r27, zero, 256
000884  95890900  dma_cfg r19, r19, zero, 0
000888  95090002  dma_cfg r19, zero, zero, 1
00088c  15000004  dma_cfg zero, zero, zero, 2
000890  150ab006  dma_cfg r20, zero, r11, 3
000894  1504a009  dma_cfg r8, zero, r26, 4
000898  950d300b  dma_cfg r27, zero, r19, 5
00089c  15000010  dma_cfg zero, zero, zero, 8
0008a0  35000000  dma_run zero
0008a4  1500300b  dma_cfg zero, zero, r19, 5
0008a8  15000010  dma_cfg zero, zero, zero, 8
0008ac  1d100200  unlock r4
0008b0  1d800400  lock zero, r9
0008b4  95890900  dma_cfg r19, r19, zero, 0
0008b8  15800304  dma_cfg zero, r7, zero, 2
0008bc  9500b306  dma_cfg r1, r6, r11, 3
0008c0  9f300000  addli r1, zero, 3
0008c4  1f030002  addli r6, zero, 256
0008c8  1584a509  dma_cfg r8, r11, r26, 4
0008cc  950d340b  dma_cfg r27, r8, r19, 5
0008d0  9f5d0000  addli r27, zero, 5
0008d4  15000010  dma_cfg zero, zero, zero, 8
0008d8  35000000  dma_run zero
0008dc  1500300b  dma_cfg zero, zero, r19, 5
0008e0  15000010  dma_cfg zero, zero, zero, 8
0008e4  1d900400  unlock r9
0008e8  1d000200  lock zero, r4
0008ec  15000014  dma_cfg zero, zero, zero, 10
0008f0  15003015  dma_cfg zero, zero, r19, 10
0008f4  1500a015  dma_cfg zero, zero, r26, 10
0008f8  15001014  dma_cfg zero, zero, r1, 10
0008fc  9f600000  addli r1, zero, 6
000900  15009014  dma_cfg zero, zero, r9, 10
000904  9f048000  addli r9, zero, 64
000908  15004014  dma_cfg zero, zero, r4, 10
00090c  1f022000  addli r4, zero, 16
000910  15001014  dma_cfg zero, zero, r1, 10
000914  9f700000  addli r1, zero, 7
000918  15001014  dma_cfg zero, zero, r1, 10
00091c  9f001000  addli r1, zero, 8
000920  15001014  dma_cfg zero, zero, r1, 10
000924  9f101000  addli r1, zero, 9
000928  15001014  dma_cfg zero, zero, r1, 10
00092c  9f201000  addli r1, zero, 10
000930  15001014  dma_cfg zero, zero, r1, 10
000934  9f301000  addli r1, zero, 11
000938  15001014  dma_cfg zero, zero, r1, 10
00093c  9f401000  addli r1, zero, 12
000940  15001014  dma_cfg zero, zero, r1, 10
000944  9f601000  addli r1, zero, 14
000948  15001015  dma_cfg zero, zero, r17, 10
00094c  15001014  dma_cfg zero, zero, r1, 10
000950  15006015  dma_cfg zero, zero, r22, 10
000954  15004014  dma_cfg zero, zero, r4, 10
000958  1f122000  addli r4, zero, 17
00095c  15004014  dma_cfg zero, zero, r4, 10
000960  1f222000  addli r4, zero, 18
000964  15004014  dma_cfg zero, zero, r4, 10
000968  1f322000  addli r4, zero, 19
00096c  15004014  dma_cfg zero, zero, r4, 10
000970  1f422000  addli r4, zero, 20
000974  15004014  dma_cfg zero, zero, r4, 10
000978  1f522000  addli r4, zero, 21
00097c  15004014  dma_cfg zero, zero, r4, 10
000980  1f622000  addli r4, zero, 22
000984  15004014  dma_cfg zero, zero, r4, 10
000988  1f123000  addli r4, zero, 25
00098c  1500c014  dma_cfg zero, zero, r12, 10
000990  1500f014  dma_cfg zero, zero, r15, 10
000994  15004014  dma_cfg zero, zero, r4, 10
000998  1f223000  addli r4, zero, 26
00099c  15004014  dma_cfg zero, zero, r4, 10
0009a0  1f323000  addli r4, zero, 27
0009a4  15004014  dma_cfg zero, zero, r4, 10
0009a8  1f423000  addli r4, zero, 28
0009ac  15004014  dma_cfg zero, zero, r4, 10
0009b0  1f523000  addli r4, zero, 29
0009b4  15004014  dma_cfg zero, zero, r4, 10
0009b8  1500a014  dma_cfg zero, zero, r10, 10
0009bc  15000015  dma_cfg zero, zero, r16, 10
0009c0  95890900  dma_cfg r19, r19, zero, 0
0009c4  95090002  dma_cfg r19, zero, zero, 1
0009c8  15000004  dma_cfg zero, zero, zero, 2
0009cc  150a9006  dma_cfg r20, zero, r9, 3
0009d0  1504a009  dma_cfg r8, zero, r26, 4
0009d4  1503300b  dma_cfg r6, zero, r19, 5
0009d8  15000010  dma_cfg zero, zero, zero, 8
0009dc  35000000  dma_run zero
0009e0  1500300b  dma_cfg zero, zero, r19, 5
0009e4  5b6d0000  j 872
0009e8  9f001000  addli r1, zero, 8
0009ec  670d0ffe  storeli.w zero, -48(r30)
0009f0  9f110000  addli r3, zero, 1
0009f4  9f020000  addli r5, zero, 0
0009f8  9f060000  addli r13, zero, 0
0009fc  9f090000  addli r19, zero, 0
000a00  1f010000  addli r2, zero, 0
000a04  7d900000  xwait r1, 0
000a08  9f401000  addli r1, zero, 12
000a0c  7d900000  xwait r1, 0
000a10  9f702000  addli r1, zero, 23
000a14  7d900000  xwait r1, 0
000a18  1d800100  lock zero, r3
000a1c  9f400000  addli r1, zero, 4
000a20  89849400  mm_cfg r9, r9, r9, 0
000a24  89003d04  mm_cfg r1, r26, r3, 2
000a28  9f101000  addli r1, zero, 9
000a2c  290c0010  mm r24, zero, zero, 8
000a30  1d900100  unlock r3
000a34  7d800000  xsignal r1, 0
000a38  9f501000  addli r1, zero, 13
000a3c  7d800000  xsignal r1, 0
000a40  9f002000  addli r1, zero, 16
000a44  5b620000  j 784
000a48  6301afff  loadli.w r2,  -48(r30)
000a4c  9f010100  addli r3, r2, 0
000a50  9f020100  addli r5, r2, 0
000a54  9f060100  addli r13, r2, 0
000a58  9f090100  addli r19, r2, 0
000a5c  db5f0000  j 764
000a60  9f600000  addli r1, zero, 6
000a64  670d0ffe  storeli.w zero, -48(r30)
000a68  9f010000  addli r3, zero, 0
000a6c  9f020000  addli r5, zero, 0
000a70  9f090000  addli r19, zero, 0
000a74  1f010000  addli r2, zero, 0
000a78  9f160000  addli r13, zero, 1
000a7c  7d900000  xwait r1, 0
000a80  9f101000  addli r1, zero, 9
000a84  7d900000  xwait r1, 0
000a88  1d000000  lock zero, zero
000a8c  ab800000  lui r1, 8
000a90  010d0000  ds_cfg r26, zero, 0
000a94  81040002  ds_cfg r9, zero, 1
000a98  8104001c  ds_cfg r9, zero, 14
000a9c  8104001a  ds_cfg r9, zero, 13
000aa0  21909002  shuffle_batch zero, r1, r9, 1
000aa4  9f700000  addli r1, zero, 7
000aa8  1d100000  unlock zero
000aac  7d800000  xsignal r1, 0
000ab0  9f001000  addli r1, zero, 8
000ab4  5b540000  j 672
000ab8  1f381000  addli r16, zero, 11
000abc  670d0ffe  storeli.w zero, -48(r30)
000ac0  1f110000  addli r2, zero, 1
000ac4  eb548f00  load.d r[10:11], 8(r30)
000ac8  9f300000  addli r1, zero, 3
000acc  9f780000  addli r17, zero, 7
000ad0  1f0a1000  addli r20, zero, 8
000ad4  9f7a2000  addli r21, zero, 23
000ad8  1f0b3000  addli r22, zero, 24
000adc  9f7c3000  addli r25, zero, 31
000ae0  1f028000  addli r4, zero, 64
000ae4  ab050100  lui r11, 16
000ae8  1f060001  addli r12, zero, 128
000aec  9f070002  addli r15, zero, 256
000af0  9f010000  addli r3, zero, 0
000af4  9f020000  addli r5, zero, 0
000af8  9f060000  addli r13, zero, 0
000afc  9f090000  addli r19, zero, 0
000b00  7d100800  xwait r16, 0
000b04  6b530ff9  load.d r[7:8], -112(r30)
000b08  1d800d00  lock zero, r27
000b0c  15000014  dma_cfg zero, zero, zero, 10
000b10  15002014  dma_cfg zero, zero, r2, 10
000b14  17332302  sll.d r[7:8], r[7:8], r2
000b18  1500a015  dma_cfg zero, zero, r26, 10
000b1c  15001014  dma_cfg zero, zero, r1, 10
000b20  9f101000  addli r1, zero, 9
000b24  0ba36410  add.ul r[7:8], r[10:11], r[7:8]
000b28  9f440000  addli r9, zero, 4
000b2c  1f550000  addli r10, zero, 5
000b30  15009014  dma_cfg zero, zero, r9, 10
000b34  1500b015  dma_cfg zero, zero, r27, 10
000b38  9f3d2000  addli r27, zero, 19
000b3c  15008014  dma_cfg zero, zero, r8, 10
000b40  15001015  dma_cfg zero, zero, r17, 10
000b44  15004015  dma_cfg zero, zero, r20, 10
000b48  15001014  dma_cfg zero, zero, r1, 10
000b4c  9f201000  addli r1, zero, 10
000b50  15001014  dma_cfg zero, zero, r1, 10
000b54  9f401000  addli r1, zero, 12
000b58  15000015  dma_cfg zero, zero, r16, 10
000b5c  15001014  dma_cfg zero, zero, r1, 10
000b60  9f501000  addli r1, zero, 13
000b64  15001014  dma_cfg zero, zero, r1, 10
000b68  9f601000  addli r1, zero, 14
000b6c  15001014  dma_cfg zero, zero, r1, 10
000b70  9f701000  addli r1, zero, 15
000b74  15001014  dma_cfg zero, zero, r1, 10
000b78  9f002000  addli r1, zero, 16
000b7c  15001014  dma_cfg zero, zero, r1, 10
000b80  9f102000  addli r1, zero, 17
000b84  15001014  dma_cfg zero, zero, r1, 10
000b88  9f202000  addli r1, zero, 18
000b8c  15001014  dma_cfg zero, zero, r1, 10
000b90  9f402000  addli r1, zero, 20
000b94  1500b015  dma_cfg zero, zero, r27, 10
000b98  15001014  dma_cfg zero, zero, r1, 10
000b9c  9f502000  addli r1, zero, 21
000ba0  15001014  dma_cfg zero, zero, r1, 10
000ba4  9f602000  addli r1, zero, 22
000ba8  15001014  dma_cfg zero, zero, r1, 10
000bac  9f103000  addli r1, zero, 25
000bb0  15005015  dma_cfg zero, zero, r21, 10
000bb4  15006015  dma_cfg zero, zero, r22, 10
000bb8  15001014  dma_cfg zero, zero, r1, 10
000bbc  9f203000  addli r1, zero, 26
000bc0  15001014  dma_cfg zero, zero, r1, 10
000bc4  9f303000  addli r1, zero, 27
000bc8  15001014  dma_cfg zero, zero, r1, 10
000bcc  9f403000  addli r1, zero, 28
000bd0  15001014  dma_cfg zero, zero, r1, 10
000bd4  9f503000  addli r1, zero, 29
000bd8  15001014  dma_cfg zero, zero, r1, 10
000bdc  9f603000  addli r1, zero, 30
000be0  15001014  dma_cfg zero, zero, r1, 10
000be4  9b900504  ori r1, r11, 64
000be8  15009015  dma_cfg zero, zero, r25, 10
000bec  15010100  dma_cfg r2, r2, zero, 0
000bf0  15010002  dma_cfg r2, zero, zero, 1
000bf4  15000004  dma_cfg zero, zero, zero, 2
000bf8  95054006  dma_cfg r11, zero, r4, 3
000bfc  1506a009  dma_cfg r12, zero, r26, 4
000c00  9507400a  dma_cfg r15, zero, r4, 5
000c04  15000010  dma_cfg zero, zero, zero, 8
000c08  35000000  dma_run zero
000c0c  1500200a  dma_cfg zero, zero, r2, 5
000c10  15000010  dma_cfg zero, zero, zero, 8
000c14  1d100500  unlock r10
000c18  1d800400  lock zero, r9
000c1c  15010100  dma_cfg r2, r2, zero, 0
000c20  15800304  dma_cfg zero, r7, zero, 2
000c24  95004306  dma_cfg r1, r6, r4, 3
000c28  9f000010  addli r1, zero, 2048
000c2c  1506a209  dma_cfg r12, r4, r26, 4
000c30  9587400a  dma_cfg r15, r1, r4, 5
000c34  9f300000  addli r1, zero, 3
000c38  1f421000  addli r4, zero, 12
000c3c  15000010  dma_cfg zero, zero, zero, 8
000c40  35000000  dma_run zero
000c44  1500200a  dma_cfg zero, zero, r2, 5
000c48  15000010  dma_cfg zero, zero, zero, 8
000c4c  1d900400  unlock r9
000c50  1d000500  lock zero, r10
000c54  15000014  dma_cfg zero, zero, zero, 10
000c58  15002014  dma_cfg zero, zero, r2, 10
000c5c  1500a015  dma_cfg zero, zero, r26, 10
000c60  15001014  dma_cfg zero, zero, r1, 10
000c64  9f101000  addli r1, zero, 9
000c68  15009014  dma_cfg zero, zero, r9, 10
000c6c  9f048000  addli r9, zero, 64
000c70  1500a014  dma_cfg zero, zero, r10, 10
000c74  15008014  dma_cfg zero, zero, r8, 10
000c78  15001015  dma_cfg zero, zero, r17, 10
000c7c  15004015  dma_cfg zero, zero, r20, 10
000c80  15001014  dma_cfg zero, zero, r1, 10
000c84  9f201000  addli r1, zero, 10
000c88  15001014  dma_cfg zero, zero, r1, 10
000c8c  15000015  dma_cfg zero, zero, r16, 10
000c90  15004014  dma_cfg zero, zero, r4, 10
000c94  1f521000  addli r4, zero, 13
000c98  15004014  dma_cfg zero, zero, r4, 10
000c9c  1f621000  addli r4, zero, 14
000ca0  15004014  dma_cfg zero, zero, r4, 10
000ca4  1f721000  addli r4, zero, 15
000ca8  15004014  dma_cfg zero, zero, r4, 10
000cac  1f022000  addli r4, zero, 16
000cb0  15004014  dma_cfg zero, zero, r4, 10
000cb4  1f122000  addli r4, zero, 17
000cb8  15004014  dma_cfg zero, zero, r4, 10
000cbc  1f222000  addli r4, zero, 18
000cc0  15004014  dma_cfg zero, zero, r4, 10
000cc4  1f422000  addli r4, zero, 20
000cc8  1500b015  dma_cfg zero, zero, r27, 10
000ccc  9f5d0000  addli r27, zero, 5
000cd0  15004014  dma_cfg zero, zero, r4, 10
000cd4  1f522000  addli r4, zero, 21
000cd8  15004014  dma_cfg zero, zero, r4, 10
000cdc  1f622000  addli r4, zero, 22
000ce0  15004014  dma_cfg zero, zero, r4, 10
000ce4  1f123000  addli r4, zero, 25
000ce8  15005015  dma_cfg zero, zero, r21, 10
000cec  9f7a6000  addli r21, zero, 55
000cf0  15006015  dma_cfg zero, zero, r22, 10
000cf4  15004014  dma_cfg zero, zero, r4, 10
000cf8  1f223000  addli r4, zero, 26
000cfc  15004014  dma_cfg zero, zero, r4, 10
000d00  1f323000  addli r4, zero, 27
000d04  15004014  dma_cfg zero, zero, r4, 10
000d08  1f423000  addli r4, zero, 28
000d0c  15004014  dma_cfg zero, zero, r4, 10
000d10  1f523000  addli r4, zero, 29
000d14  15004014  dma_cfg zero, zero, r4, 10
000d18  1f623000  addli r4, zero, 30
000d1c  15004014  dma_cfg zero, zero, r4, 10
000d20  15009015  dma_cfg zero, zero, r25, 10
000d24  9f7c4000  addli r25, zero, 39
000d28  15010100  dma_cfg r2, r2, zero, 0
000d2c  15010002  dma_cfg r2, zero, zero, 1
000d30  15000004  dma_cfg zero, zero, zero, 2
000d34  95059006  dma_cfg r11, zero, r9, 3
000d38  1506a009  dma_cfg r12, zero, r26, 4
000d3c  9507900a  dma_cfg r15, zero, r9, 5
000d40  15000010  dma_cfg zero, zero, zero, 8
000d44  35000000  dma_run zero
000d48  1500200a  dma_cfg zero, zero, r2, 5
000d4c  15000010  dma_cfg zero, zero, zero, 8
000d50  1d900d00  unlock r27
000d54  7d800000  xsignal r1, 0
000d58  3d000000  xfence
000d5c  9f70f001  addli r1, zero, 255
000d60  33830428  zext_int2long r[7:8], r9
000d64  00a00300  mfence { lm, sm, gm }
000d68  80a20004  csr_set csr5, r1
000d6c  00e00200  sync_core
000d70  b7100700  beq r14, zero, 36
000d74  bbe20900  bneq r19, zero, 184
000d78  3b850600  bneq r13, zero, 320
000d7c  e300afff  loadli.w r1,  -48(r30)
000d80  3b970000  bneq r1, zero, 452
000d84  3ba90100  bneq r3, zero, 584
000d88  b77ab701  beq r14, r27, 700
000d8c  bb5c0100  bneq r2, zero, 820
000d90  5b740000  j 928
000d94  33040028  zext_int2long r[9:10], zero
000d98  3d000000  xfence
000d9c  00a00300  mfence { lm, sm, gm }
000da0  a7070400  addli.d r[16:17], r[9:10], 0
000da4  9f600000  addli r1, zero, 6
000da8  630ebfff  loadli.w r28,  -40(r30)
000dac  a7080400  addli.d r[18:19], r[9:10], 0
000db0  17b51702  sll.d r[11:12], r[16:17], r1
000db4  0baaa810  add.ul r[21:22], r[18:19], r[11:12]
000db8  a7881800  addli.d r[18:19], r[18:19], 8
000dbc  9b302a00  slli r1, r20, 2
000dc0  13a26802  setneq.d r4, r[18:19], r[7:8]
000dc4  0b968011  add.s r12, r1, r24
000dc8  8b90c011  add.s r1, r1, r28
000dcc  6f5c8601  loads.d r[25:26], 24(r12)
000dd0  6f5a8600  loads.d r[21:22], 8(r12)
000dd4  6f5b0600  loads.d r[23:24], 0(r12)
000dd8  6f5d0601  loads.d r[27:28], 16(r12)
000ddc  73fc8001  stores.d r[25:26], 24(r1)
000de0  634cffff  loadli.w r24,  -4(r30)
000de4  73f44001  stores.d r[21:22], 8(r1)
000de8  73f06001  stores.d r[23:24], 0(r1)
000dec  73f8a001  stores.d r[27:28], 16(r1)
000df0  3b1f02fe  bneq r4, zero, -60
000df4  9f700000  addli r1, zero, 7
000df8  33850028  zext_int2long r[11:12], r1
000dfc  93a0a704  setlt.ul r1, r[16:17], r[11:12]
000e00  a7970700  addli.d r[16:17], r[16:17], 1
000e04  bb8e00fe  bneq r1, zero, -96
000e08  00200100  mfence { sm }
000e0c  1f2d0000  addli r26, zero, 2
000e10  2b490000  lui r18, 4
000e14  9f7c4000  addli r25, zero, 39
000e18  9f7a6000  addli r21, zero, 55
000e1c  9f5d0000  addli r27, zero, 5
000e20  e30bbfff  loadli.w r23,  -40(r30)
000e24  634e9fff  loadli.w r28,  -52(r30)
000e28  37cd09fe  beq r19, zero, -176
000e2c  9f001000  addli r1, zero, 8
000e30  3d000000  xfence
000e34  00a00300  mfence { lm, sm, gm }
000e38  33840028  zext_int2long r[9:10], r1
000e3c  9f600000  addli r1, zero, 6
000e40  630ebfff  loadli.w r28,  -40(r30)
000e44  b3070028  zext_int2long r[16:17], zero
000e48  17351402  sll.d r[11:12], r[9:10], r1
000e4c  8ba8a710  add.ul r[18:19], r[16:17], r[11:12]
000e50  a7871700  addli.d r[16:17], r[16:17], 8
000e54  9bb02800  slli r1, r17, 2
000e58  13a26702  setneq.d r4, r[16:17], r[7:8]
000e5c  0b968011  add.s r12, r1, r24
000e60  8b90c011  add.s r1, r1, r28
000e64  ef5b0601  loads.d r[24:25], 16(r12)
000e68  ef588600  loads.d r[18:19], 8(r12)
000e6c  ef590600  loads.d r[20:21], 0(r12)
000e70  ef5a8601  loads.d r[22:23], 24(r12)
000e74  73f87001  stores.d r[24:25], 16(r1)
000e78  634cffff  loadli.w r24,  -4(r30)
000e7c  73f41001  stores.d r[18:19], 8(r1)
000e80  73f03001  stores.d r[20:21], 0(r1)
000e84  73fc5001  stores.d r[22:23], 24(r1)
000e88  3b1f02fe  bneq r4, zero, -60
000e8c  9f701000  addli r1, zero, 15
000e90  33850028  zext_int2long r[11:12], r1
000e94  9320a404  setlt.ul r1, r[9:10], r[11:12]
000e98  27140400  addli.d r[9:10], r[9:10], 1
000e9c  bb8e00fe  bneq r1, zero, -96
000ea0  00200100  mfence { sm }
000ea4  2b490000  lui r18, 4
000ea8  9f7a6000  addli r21, zero, 55
000eac  e30bbfff  loadli.w r23,  -40(r30)
000eb0  634e9fff  loadli.w r28,  -52(r30)
000eb4  37ab06fe  beq r13, zero, -312
000eb8  9f002000  addli r1, zero, 16
000ebc  3d000000  xfence
000ec0  00a00300  mfence { lm, sm, gm }
000ec4  33840028  zext_int2long r[9:10], r1
000ec8  9f600000  addli r1, zero, 6
000ecc  630ebfff  loadli.w r28,  -40(r30)
000ed0  33060028  zext_int2long r[13:14], zero
000ed4  17351402  sll.d r[11:12], r[9:10], r1
000ed8  8b27a610  add.ul r[16:17], r[13:14], r[11:12]
000edc  27061600  addli.d r[13:14], r[13:14], 8
000ee0  9bb02700  slli r1, r15, 2
000ee4  13226602  setneq.d r4, r[13:14], r[7:8]
000ee8  8b978011  add.s r15, r1, r24
000eec  8b90c011  add.s r1, r1, r28
000ef0  6fd88700  loads.d r[17:18], 8(r15)
000ef4  6fd90700  loads.d r[19:20], 0(r15)
000ef8  6fda8701  loads.d r[21:22], 24(r15)
000efc  6fdb0701  loads.d r[23:24], 16(r15)
000f00  73f40001  stores.d r[17:18], 8(r1)
000f04  73f02001  stores.d r[19:20], 0(r1)
000f08  73fc4001  stores.d r[21:22], 24(r1)
000f0c  73f86001  stores.d r[23:24], 16(r1)
000f10  3b2f02fe  bneq r4, zero, -56
000f14  9f702000  addli r1, zero, 23
000f18  33850028  zext_int2long r[11:12], r1
000f1c  9320a404  setlt.ul r1, r[9:10], r[11:12]
000f20  27140400  addli.d r[9:10], r[9:10], 1
000f24  bb9e00fe  bneq r1, zero, -92
000f28  00200100  mfence { sm }
000f2c  2b490000  lui r18, 4
000f30  9f7a6000  addli r21, zero, 55
000f34  e30bbfff  loadli.w r23,  -40(r30)
000f38  634e9fff  loadli.w r28,  -52(r30)
000f3c  e300afff  loadli.w r1,  -48(r30)
000f40  379900fe  beq r1, zero, -444
000f44  9f003000  addli r1, zero, 24
000f48  3d000000  xfence
000f4c  00a00300  mfence { lm, sm, gm }
000f50  33840028  zext_int2long r[9:10], r1
000f54  9f600000  addli r1, zero, 6
000f58  630ebfff  loadli.w r28,  -40(r30)
000f5c  33060028  zext_int2long r[13:14], zero
000f60  17351402  sll.d r[11:12], r[9:10], r1
000f64  8b27a610  add.ul r[16:17], r[13:14], r[11:12]
000f68  27061600  addli.d r[13:14], r[13:14], 8
000f6c  9bb02700  slli r1, r15, 2
000f70  13226602  setneq.d r4, r[13:14], r[7:8]
000f74  8b978011  add.s r15, r1, r24
000f78  8b90c011  add.s r1, r1, r28
000f7c  6fd88700  loads.d r[17:18], 8(r15)
000f80  6fd90700  loads.d r[19:20], 0(r15)
000f84  6fda8701  loads.d r[21:22], 24(r15)
000f88  6fdb0701  loads.d r[23:24], 16(r15)
000f8c  73f40001  stores.d r[17:18], 8(r1)
000f90  73f02001  stores.d r[19:20], 0(r1)
000f94  73fc4001  stores.d r[21:22], 24(r1)
000f98  73f86001  stores.d r[23:24], 16(r1)
000f9c  3b2f02fe  bneq r4, zero, -56
000fa0  9f703000  addli r1, zero, 31
000fa4  33850028  zext_int2long r[11:12], r1
000fa8  9320a404  setlt.ul r1, r[9:10], r[11:12]
000fac  27140400  addli.d r[9:10], r[9:10], 1
000fb0  bb9e00fe  bneq r1, zero, -92
000fb4  00200100  mfence { sm }
000fb8  2b490000  lui r18, 4
000fbc  9f7a6000  addli r21, zero, 55
000fc0  e30bbfff  loadli.w r23,  -40(r30)
000fc4  634e9fff  loadli.w r28,  -52(r30)
000fc8  378701fe  beq r3, zero, -576
000fcc  9f004000  addli r1, zero, 32
000fd0  3d000000  xfence
000fd4  00a00300  mfence { lm, sm, gm }
000fd8  b3810028  zext_int2long r[4:5], r1
000fdc  9f600000  addli r1, zero, 6
000fe0  33050028  zext_int2long r[11:12], zero
000fe4  17b41102  sll.d r[9:10], r[4:5], r1
000fe8  0b268510  add.ul r[13:14], r[11:12], r[9:10]
000fec  27051500  addli.d r[11:12], r[11:12], 8
000ff0  9b302600  slli r1, r12, 2
000ff4  13266502  setneq.d r12, r[11:12], r[7:8]
000ff8  8b968011  add.s r13, r1, r24
000ffc  8b907011  add.s r1, r1, r23
001000  efd78600  loads.d r[16:17], 8(r13)
001004  efd80600  loads.d r[18:19], 0(r13)
001008  efd98601  loads.d r[20:21], 24(r13)
00100c  efda0601  loads.d r[22:23], 16(r13)
001010  73f4f000  stores.d r[16:17], 8(r1)
001014  73f01001  stores.d r[18:19], 0(r1)
001018  73fc3001  stores.d r[20:21], 24(r1)
00101c  73f85001  stores.d r[22:23], 16(r1)
001020  3b2f06fe  bneq r12, zero, -56
001024  33840c28  zext_int2long r[9:10], r25
001028  93a08104  setlt.ul r1, r[4:5], r[9:10]
00102c  a7910100  addli.d r[4:5], r[4:5], 1
001030  bbbe00fe  bneq r1, zero, -84
001034  2b490000  lui r18, 4
001038  9f7a6000  addli r21, zero, 55
00103c  00200100  mfence { sm }
001040  3b35b7ff  bneq r14, r27, -692
001044  9f005000  addli r1, zero, 40
001048  3d000000  xfence
00104c  00a00300  mfence { lm, sm, gm }
001050  b3810028  zext_int2long r[4:5], r1
001054  9f600000  addli r1, zero, 6
001058  33050028  zext_int2long r[11:12], zero
00105c  17b41102  sll.d r[9:10], r[4:5], r1
001060  0b268510  add.ul r[13:14], r[11:12], r[9:10]
001064  27051500  addli.d r[11:12], r[11:12], 8
001068  9b302600  slli r1, r12, 2
00106c  13266502  setneq.d r12, r[11:12], r[7:8]
001070  8b968011  add.s r13, r1, r24
001074  8b907011  add.s r1, r1, r23
001078  efd78600  loads.d r[16:17], 8(r13)
00107c  efd80600  loads.d r[18:19], 0(r13)
001080  efd98601  loads.d r[20:21], 24(r13)
001084  efda0601  loads.d r[22:23], 16(r13)
001088  73f4f000  stores.d r[16:17], 8(r1)
00108c  73f01001  stores.d r[18:19], 0(r1)
001090  73fc3001  stores.d r[20:21], 24(r1)
001094  73f85001  stores.d r[22:23], 16(r1)
001098  3b2f06fe  bneq r12, zero, -56
00109c  9f705000  addli r1, zero, 47
0010a0  33840028  zext_int2long r[9:10], r1
0010a4  93a08104  setlt.ul r1, r[4:5], r[9:10]
0010a8  a7910100  addli.d r[4:5], r[4:5], 1
0010ac  bbae00fe  bneq r1, zero, -88
0010b0  2b490000  lui r18, 4
0010b4  9f7a6000  addli r21, zero, 55
0010b8  00200100  mfence { sm }
0010bc  b7510100  beq r2, zero, 116
0010c0  9f006000  addli r1, zero, 48
0010c4  3d000000  xfence
0010c8  00a00300  mfence { lm, sm, gm }
0010cc  b3800028  zext_int2long r[2:3], r1
0010d0  9f610000  addli r3, zero, 6
0010d4  33040028  zext_int2long r[9:10], zero
0010d8  97b13002  sll.d r[4:5], r[2:3], r3
0010dc  0b253410  add.ul r[11:12], r[9:10], r[4:5]
0010e0  27041400  addli.d r[9:10], r[9:10], 8
0010e4  1b352500  slli r10, r10, 2
0010e8  93256402  setneq.d r11, r[9:10], r[7:8]
0010ec  0b168511  add.s r12, r10, r24
0010f0  0b157511  add.s r10, r10, r23
0010f4  ef578600  loads.d r[16:17], 8(r12)
0010f8  ef580600  loads.d r[18:19], 0(r12)
0010fc  ef598601  loads.d r[20:21], 24(r12)
001100  6f560601  loads.d r[13:14], 16(r12)
001104  7374f500  stores.d r[16:17], 8(r10)
001108  73701501  stores.d r[18:19], 0(r10)
00110c  737c3501  stores.d r[20:21], 24(r10)
001110  7378c500  stores.d r[13:14], 16(r10)
001114  3baf05fe  bneq r11, zero, -56
001118  b3810a28  zext_int2long r[4:5], r21
00111c  93a13004  setlt.ul r3, r[2:3], r[4:5]
001120  a7900000  addli.d r[2:3], r[2:3], 1
001124  bbbe01fe  bneq r3, zero, -84
001128  2b490000  lui r18, 4
00112c  00200100  mfence { sm }
001130  9f707000  addli r1, zero, 63
001134  b3800028  zext_int2long r[2:3], r1
001138  73381ffa  store.d r[2:3], -80(r30)
00113c  b7d10200  beq r5, zero, 116
001140  9f007000  addli r1, zero, 56
001144  3d000000  xfence
001148  00a00300  mfence { lm, sm, gm }
00114c  b3800028  zext_int2long r[2:3], r1
001150  9f610000  addli r3, zero, 6
001154  33040028  zext_int2long r[9:10], zero
001158  97b13002  sll.d r[4:5], r[2:3], r3
00115c  0b253410  add.ul r[11:12], r[9:10], r[4:5]
001160  27041400  addli.d r[9:10], r[9:10], 8
001164  9b322500  slli r5, r10, 2
001168  13256402  setneq.d r10, r[9:10], r[7:8]
00116c  8b958211  add.s r11, r5, r24
001170  8b927211  add.s r5, r5, r23
001174  6fd68500  loads.d r[13:14], 8(r11)
001178  efd70500  loads.d r[16:17], 0(r11)
00117c  efd88501  loads.d r[18:19], 24(r11)
001180  efd90501  loads.d r[20:21], 16(r11)
001184  73f4c200  stores.d r[13:14], 8(r5)
001188  73f0f200  stores.d r[16:17], 0(r5)
00118c  73fc1201  stores.d r[18:19], 24(r5)
001190  73f83201  stores.d r[20:21], 16(r5)
001194  3b2f05fe  bneq r10, zero, -56
001198  eb510ffb  load.d r[4:5], -80(r30)
00119c  93a13004  setlt.ul r3, r[2:3], r[4:5]
0011a0  a7900000  addli.d r[2:3], r[2:3], 1
0011a4  bbbe01fe  bneq r3, zero, -84
0011a8  2b490000  lui r18, 4
0011ac  00200100  mfence { sm }
0011b0  9f70f001  addli r1, zero, 255
0011b4  abc40000  lui r9, 12
0011b8  80a20004  csr_set csr5, r1
0011bc  9b90c400  ori r1, r9, 12
0011c0  674f1ffe  storeli.w r1, -12(r30)
0011c4  9b908400  ori r1, r9, 8
0011c8  670f1ffe  storeli.w r1, -16(r30)
0011cc  9b904400  ori r1, r9, 4
0011d0  e74e1ffe  storeli.w r1, -20(r30)
0011d4  ab400200  lui r1, 36
0011d8  1b910010  ori r2, r1, 256
0011dc  9b983010  ori r17, r1, 259
0011e0  670e2ffe  storeli.w r2, -32(r30)
0011e4  1b911010  ori r2, r1, 257
0011e8  e74d2ffe  storeli.w r2, -36(r30)
0011ec  1b912010  ori r2, r1, 258
0011f0  674e2ffe  storeli.w r2, -28(r30)
0011f4  00e00200  sync_core
0011f8  e300afff  loadli.w r1,  -48(r30)
0011fc  e70e1fff  storeli.w r17, -24(r30)
001200  b7d30002  beq r1, zero, 1268
001204  1f212000  addli r2, zero, 18
001208  9f003000  addli r1, zero, 24
00120c  7d000100  xsignal r2, 0
001210  7d800000  xsignal r1, 0
001214  9f004000  addli r1, zero, 32
001218  7d100100  xwait r2, 0
00121c  7d900000  xwait r1, 0
001220  b3000028  zext_int2long r[2:3], zero
001224  3d000000  xfence
001228  00a00300  mfence { lm, sm, gm }
00122c  a7810000  addli.d r[4:5], r[2:3], 0
001230  9f620000  addli r5, zero, 6
001234  6347efff  loadli.w r14,  -12(r30)
001238  e30cefff  loadli.w r25,  -16(r30)
00123c  634ddfff  loadli.w r26,  -20(r30)
001240  a7870000  addli.d r[16:17], r[2:3], 0
001244  abcd0000  lui r27, 12
001248  17b65102  sll.d r[13:14], r[4:5], r5
00124c  0ba4c710  add.ul r[9:10], r[16:17], r[13:14]
001250  a7871700  addli.d r[16:17], r[16:17], 8
001254  1b9b0d01  ori r22, r27, 16
001258  9b322400  slli r5, r8, 2
00125c  0b948211  add.s r8, r5, r24
001260  8b9be210  add.s r23, r5, r14
001264  8b9ab211  add.s r21, r5, r27
001268  0b9b6211  add.s r22, r5, r22
00126c  ef48c400  loads.w r17, 12(r8)
001270  6f454400  loads.w r10, 4(r8)
001274  ef440400  loads.w r9, 0(r8)
001278  ef458400  loads.w r11, 8(r8)
00127c  6f490401  loads.w r18, 16(r8)
001280  ef494401  loads.w r19, 20(r8)
001284  6f4a8401  loads.w r20, 24(r8)
001288  6f44c401  loads.w r8, 28(r8)
00128c  8be80860  abs.f r17, r17
001290  0b650560  abs.f r10, r10
001294  8be40460  abs.f r9, r9
001298  0b640460  abs.f r8, r8
00129c  0b690960  abs.f r18, r18
0012a0  8be50560  abs.f r11, r11
0012a4  8be90960  abs.f r19, r19
0012a8  0b6a0a60  abs.f r20, r20
0012ac  73e01b01  stores.w r17, 0(r23)
0012b0  8b9ba211  add.s r23, r5, r26
0012b4  73e09a00  stores.w r9, 0(r21)
0012b8  8b989211  add.s r17, r5, r25
0012bc  73602b01  stores.w r18, 0(r22)
0012c0  73e0ab00  stores.w r10, 0(r23)
0012c4  1b95cd01  ori r10, r27, 28
0012c8  73e0b800  stores.w r11, 0(r17)
0012cc  8b94a210  add.s r9, r5, r10
0012d0  1b954d01  ori r10, r27, 20
0012d4  73e08400  stores.w r8, 0(r9)
0012d8  13a46702  setneq.d r8, r[16:17], r[7:8]
0012dc  9b948d01  ori r9, r27, 24
0012e0  8b949210  add.s r9, r5, r9
0012e4  8b92a210  add.s r5, r5, r10
0012e8  73e04401  stores.w r20, 0(r9)
0012ec  73e03201  stores.w r19, 0(r5)
0012f0  3b7d04fe  bneq r8, zero, -164
0012f4  6b540ffb  load.d r[9:10], -80(r30)
0012f8  93a28104  setlt.ul r5, r[4:5], r[9:10]
0012fc  a7910100  addli.d r[4:5], r[4:5], 1
001300  bbcc02fe  bneq r5, zero, -208
001304  9f302000  addli r1, zero, 19
001308  00200100  mfence { sm }
00130c  2b490000  lui r18, 4
001310  9f7a6000  addli r21, zero, 55
001314  abc40000  lui r9, 12
001318  9f5d0000  addli r27, zero, 5
00131c  00370002  core_id r14
001320  9f7c4000  addli r25, zero, 39
001324  1f2d0000  addli r26, zero, 2
001328  7d800000  xsignal r1, 0
00132c  9f303000  addli r1, zero, 27
001330  7d800000  xsignal r1, 0
001334  e30bbfff  loadli.w r23,  -40(r30)
001338  e308dfff  loadli.w r17,  -24(r30)
00133c  b77eb701  beq r14, r27, 956
001340  9f003000  addli r1, zero, 24
001344  2b07807f  lui r14, 522240
001348  9f6b0000  addli r23, zero, 6
00134c  7d900000  xwait r1, 0
001350  9f005000  addli r1, zero, 40
001354  7d900000  xwait r1, 0
001358  3d000000  xfence
00135c  b3000028  zext_int2long r[2:3], zero
001360  00a00300  mfence { lm, sm, gm }
001364  634c7fff  loadli.w r24,  -68(r30)
001368  630dcfff  loadli.w r26,  -32(r30)
00136c  e34dbfff  loadli.w r27,  -36(r30)
001370  a7810000  addli.d r[4:5], r[2:3], 0
001374  630bbfff  loadli.w r22,  -40(r30)
001378  17b47103  sll.d r[9:10], r[4:5], r23
00137c  27860000  addli.d r[13:14], r[2:3], 0
001380  0b258610  add.ul r[11:12], r[13:14], r[9:10]
001384  27061600  addli.d r[13:14], r[13:14], 8
001388  9b322500  slli r5, r10, 2
00138c  13256602  setneq.d r10, r[13:14], r[7:8]
001390  8b956211  add.s r11, r5, r22
001394  8b928211  add.s r5, r5, r24
001398  efc7c500  loads.w r15, 12(r11)
00139c  6fc80500  loads.w r16, 0(r11)
0013a0  efc84500  loads.w r17, 4(r11)
0013a4  6fc98500  loads.w r18, 8(r11)
0013a8  efc90501  loads.w r19, 16(r11)
0013ac  6fca4501  loads.w r20, 20(r11)
0013b0  efca8501  loads.w r21, 24(r11)
0013b4  efc5c501  loads.w r11, 28(r11)
0013b8  9787c701  and r15, r15, r28
0013bc  9785c501  and r11, r11, r28
0013c0  73e6f200  stores.w r15, 12(r5)
0013c4  9707c801  and r15, r16, r28
0013c8  1788c801  and r16, r17, r28
0013cc  9708c901  and r17, r18, r28
0013d0  1789c901  and r18, r19, r28
0013d4  9709ca01  and r19, r20, r28
0013d8  178aca01  and r20, r21, r28
0013dc  73eeb200  stores.w r11, 28(r5)
0013e0  73e41201  stores.w r17, 8(r5)
0013e4  73e20201  stores.w r16, 4(r5)
0013e8  73e0f200  stores.w r15, 0(r5)
0013ec  73ec4201  stores.w r20, 24(r5)
0013f0  73ea3201  stores.w r19, 20(r5)
0013f4  73e82201  stores.w r18, 16(r5)
0013f8  3b2e05fe  bneq r10, zero, -120
0013fc  6b540ffb  load.d r[9:10], -80(r30)
001400  93a28104  setlt.ul r5, r[4:5], r[9:10]
001404  a7910100  addli.d r[4:5], r[4:5], 1
001408  bbbd02fe  bneq r5, zero, -148
00140c  9f103000  addli r1, zero, 25
001410  00200100  mfence { sm }
001414  7d800000  xsignal r1, 0
001418  9f604000  addli r1, zero, 38
00141c  7d800000  xsignal r1, 0
001420  7d900000  xwait r1, 0
001424  9f305000  addli r1, zero, 43
001428  7d900000  xwait r1, 0
00142c  b3000028  zext_int2long r[2:3], zero
001430  3d000000  xfence
001434  00a00300  mfence { lm, sm, gm }
001438  a7810000  addli.d r[4:5], r[2:3], 0
00143c  9f720000  addli r5, zero, 7
001440  17b47103  sll.d r[9:10], r[4:5], r23
001444  e34ccfff  loadli.w r25,  -28(r30)
001448  e30bdfff  loadli.w r23,  -24(r30)
00144c  a7870000  addli.d r[16:17], r[2:3], 0
001450  17b65102  sll.d r[13:14], r[4:5], r5
001454  0ba58710  add.ul r[11:12], r[16:17], r[9:10]
001458  0ba9c710  add.ul r[19:20], r[16:17], r[13:14]
00145c  a7c70700  addli.d r[16:17], r[16:17], 4
001460  9b322500  slli r5, r10, 2
001464  93aa6702  setneq.d r21, r[16:17], r[7:8]
001468  0b1aa911  add.s r20, r18, r26
00146c  0b1bb911  add.s r22, r18, r27
001470  8b928211  add.s r5, r5, r24
001474  6fc50200  loads.w r10, 0(r5)
001478  efc54200  loads.w r11, 4(r5)
00147c  efc88200  loads.w r17, 8(r5)
001480  efc2c200  loads.w r5, 12(r5)
001484  1305a704  setlt.u r10, r14, r10
001488  9305b704  setlt.u r11, r14, r11
00148c  93081705  setlt.u r17, r14, r17
001490  93025704  setlt.u r5, r14, r5
001494  7340aa00  stores.b r10, 0(r20)
001498  0b159911  add.s r10, r18, r25
00149c  0b197911  add.s r18, r18, r23
0014a0  7340bb00  stores.b r11, 0(r22)
0014a4  73401501  stores.b r17, 0(r10)
0014a8  73405900  stores.b r5, 0(r18)
0014ac  bbae0afe  bneq r21, zero, -88
0014b0  6b540ffb  load.d r[9:10], -80(r30)
0014b4  9f6b0000  addli r23, zero, 6
0014b8  93a28104  setlt.ul r5, r[4:5], r[9:10]
0014bc  a7910100  addli.d r[4:5], r[4:5], 1
0014c0  bbfd02fe  bneq r5, zero, -132
0014c4  9f714000  addli r3, zero, 39
0014c8  9f105000  addli r1, zero, 41
0014cc  1f413000  addli r2, zero, 28
0014d0  00200100  mfence { sm }
0014d4  7d800100  xsignal r3, 0
0014d8  7d800000  xsignal r1, 0
0014dc  7d100100  xwait r2, 0
0014e0  1f114000  addli r2, zero, 33
0014e4  7d100100  xwait r2, 0
0014e8  1f414000  addli r2, zero, 36
0014ec  7d100100  xwait r2, 0
0014f0  7d900100  xwait r3, 0
0014f4  7d900000  xwait r1, 0
0014f8  b3000028  zext_int2long r[2:3], zero
0014fc  3d000000  xfence
001500  00a00300  mfence { lm, sm, gm }
001504  27840000  addli.d r[9:10], r[2:3], 0
001508  73341ffa  store.d r[2:3], -88(r30)
00150c  db030000  j 28
001510  eb500ffb  load.d r[2:3], -80(r30)
001514  eb510ffd  load.d r[4:5], -48(r30)
001518  93a01104  setlt.ul r1, r[4:5], r[2:3]
00151c  27910100  addli.d r[3:4], r[4:5], 1
001520  27040100  addli.d r[9:10], r[3:4], 0
001524  37a9000a  beq r1, zero, 5704
001528  9f600000  addli r1, zero, 6
00152c  6b5d8ffa  load.d r[27:28], -88(r30)
001530  73388ffc  store.d r[9:10], -48(r30)
001534  97311402  sll.d r[4:5], r[9:10], r1
001538  9f700000  addli r1, zero, 7
00153c  97381402  sll.d r[18:19], r[9:10], r1
001540  5b080000  j 64
001544  e340efff  loadli.w r1,  -12(r30)
001548  274d0d00  addli.d r[27:28], r[27:28], 4
00154c  2bc50000  lui r10, 12
001550  93246d02  setneq.d r9, r[27:28], r[7:8]
001554  0b15a410  add.s r10, r8, r10
001558  8b101410  add.s r1, r8, r1
00155c  7360c500  stores.w r12, 0(r10)
001560  73e02000  stores.w r2, 0(r1)
001564  e300efff  loadli.w r1,  -16(r30)
001568  6341dfff  loadli.w r2,  -20(r30)
00156c  8b101410  add.s r1, r8, r1
001570  0b112410  add.s r2, r8, r2
001574  73e05000  stores.w r5, 0(r1)
001578  73603101  stores.w r19, 0(r2)
00157c  37de04fe  beq r9, zero, -108
001580  8b203d10  add.ul r[2:3], r[27:28], r[4:5]
001584  8b271d11  add.ul r[16:17], r[27:28], r[18:19]
001588  e342bfff  loadli.w r5,  -36(r30)
00158c  e346cfff  loadli.w r13,  -28(r30)
001590  e30adfff  loadli.w r21,  -24(r30)
001594  1bb42000  slli r8, r1, 2
001598  63018fff  loadli.w r2,  -64(r30)
00159c  8b925710  add.s r5, r15, r5
0015a0  8b96d710  add.s r13, r15, r13
0015a4  8b108411  add.s r1, r8, r24
0015a8  0b112410  add.s r2, r8, r2
0015ac  ef920200  loads.bu r5, 0(r5)
0015b0  efc50000  loads.w r11, 0(r1)
0015b4  6fc5c000  loads.w r10, 12(r1)
0015b8  6fca8000  loads.w r20, 8(r1)
0015bc  efc44000  loads.w r9, 4(r1)
0015c0  6f460100  loads.w r12, 0(r2)
0015c4  ef494100  loads.w r19, 4(r2)
0015c8  6f4b8100  loads.w r22, 8(r2)
0015cc  ef40c100  loads.w r1, 12(r2)
0015d0  6301cfff  loadli.w r2,  -32(r30)
0015d4  0b912710  add.s r2, r15, r2
0015d8  8b975711  add.s r15, r15, r21
0015dc  6f980600  loads.bu r16, 0(r13)
0015e0  e3468fff  loadli.w r13,  -60(r30)
0015e4  6f110100  loads.bu r2, 0(r2)
0015e8  ef970700  loads.bu r15, 0(r15)
0015ec  8b1bd410  add.s r23, r8, r13
0015f0  efc6cb00  loads.w r13, 12(r23)
0015f4  938ae500  seteq r21, r11, r14
0015f8  93850500  seteq r11, r11, zero
0015fc  1706c601  and r12, r12, r28
001600  130c0600  seteq r24, r12, zero
001604  930ce600  seteq r25, r12, r14
001608  1306c704  setlt.u r12, r14, r12
00160c  178c8a01  and r24, r21, r24
001610  978c9501  and r25, r11, r25
001614  efca8b00  loads.w r21, 8(r23)
001618  efc54b00  loads.w r11, 4(r23)
00161c  1711c100  or r2, r2, r12
001620  2b06c07f  lui r12, 523264
001624  171c9c01  or r24, r24, r25
001628  17118101  or r2, r2, r24
00162c  1b0c1100  andi r24, r2, 1
001630  2b01c07f  lui r2, 523264
001634  3b200c00  bneq r24, zero, 8
001638  6fc60b00  loads.w r12, 0(r23)
00163c  9789c901  and r19, r19, r28
001640  938be400  seteq r23, r9, r14
001644  93840400  seteq r9, r9, zero
001648  138c0900  seteq r24, r19, zero
00164c  938ce900  seteq r25, r19, r14
001650  93093705  setlt.u r19, r14, r19
001654  978b8b01  and r23, r23, r24
001658  97849401  and r9, r9, r25
00165c  97923201  or r5, r5, r19
001660  ab09c07f  lui r19, 523264
001664  97949b00  or r9, r23, r9
001668  97929200  or r5, r5, r9
00166c  9b821200  andi r5, r5, 1
001670  3ba00200  bneq r5, zero, 8
001674  9f890500  addli r19, r11, 0
001678  9702cb01  and r5, r22, r28
00167c  9304ea00  seteq r9, r20, r14
001680  130a0a00  seteq r20, r20, zero
001684  634c7fff  loadli.w r24,  -68(r30)
001688  93850200  seteq r11, r5, zero
00168c  138be200  seteq r22, r5, r14
001690  93025704  setlt.u r5, r14, r5
001694  9784b400  and r9, r9, r11
001698  97056a01  and r11, r20, r22
00169c  97125800  or r5, r16, r5
0016a0  9794b400  or r9, r9, r11
0016a4  97929200  or r5, r5, r9
0016a8  9b841200  andi r9, r5, 1
0016ac  ab02c07f  lui r5, 523264
0016b0  3ba00400  bneq r9, zero, 8
0016b4  9f820a00  addli r5, r21, 0
0016b8  9780c001  and r1, r1, r28
0016bc  9304e500  seteq r9, r10, r14
0016c0  13050500  seteq r10, r10, zero
0016c4  93850000  seteq r11, r1, zero
0016c8  1388e000  seteq r16, r1, r14
0016cc  93001704  setlt.u r1, r14, r1
0016d0  9784b400  and r9, r9, r11
0016d4  17050501  and r10, r10, r16
0016d8  97901700  or r1, r15, r1
0016dc  9794a400  or r9, r9, r10
0016e0  97909000  or r1, r1, r9
0016e4  9b801000  andi r1, r1, 1
0016e8  3bf900fe  bneq r1, zero, -420
0016ec  1f810600  addli r2, r13, 0
0016f0  dbcaffff  j -428
0016f4  3b20b70d  bneq r14, r27, 6152
0016f8  9f303000  addli r1, zero, 27
0016fc  1f344000  addli r8, zero, 35
001700  9f110000  addli r3, zero, 1
001704  2bc17fc1  lui r2, 792572
001708  1f75f00f  addli r10, zero, 2047
00170c  1f723000  addli r4, zero, 31
001710  abd50000  lui r11, 13
001714  7d900000  xwait r1, 0
001718  9f001000  addli r1, zero, 8
00171c  7d100400  xwait r8, 0
001720  1d000d00  lock zero, r26
001724  8d000014  ew_cfg r1, zero, zero, 10
001728  e340fffe  loadli.w r1,  -132(r30)
00172c  0d8d1116  ew_cfg r26, r3, r1, 11
001730  9f300000  addli r1, zero, 3
001734  0d00101a  ew_cfg zero, zero, r1, 13
001738  9f400000  addli r1, zero, 4
00173c  0d81001c  ew_cfg r2, r1, zero, 14
001740  ab0080bf  lui r1, 784384
001744  2b01803f  lui r2, 260096
001748  0d00001e  ew_cfg zero, zero, zero, 15
00174c  0d000002  ew_cfg zero, zero, zero, 1
001750  8d100000  ewcoeff_cfg r1, zero, zero, 0
001754  9f403000  addli r1, zero, 28
001758  0d000504  ew_cfg zero, r10, zero, 2
00175c  0d0d0006  ew_cfg r26, zero, zero, 3
001760  0d0d0d26  ew_cfg r26, r26, zero, 19
001764  e3028fff  loadli.w r5,  -64(r30)
001768  ad829400  dsmadd r5, r9, r9, 0
00176c  0d000014  ew_cfg zero, zero, zero, 10
001770  0d000026  ew_cfg zero, zero, zero, 19
001774  1d100d00  unlock r26
001778  7d800000  xsignal r1, 0
00177c  9f302000  addli r1, zero, 19
001780  7d900000  xwait r1, 0
001784  9f504000  addli r1, zero, 37
001788  7d900000  xwait r1, 0
00178c  1d000d00  lock zero, r26
001790  0d000002  ew_cfg zero, zero, zero, 1
001794  0d102000  ewcoeff_cfg zero, zero, r2, 0
001798  0d000504  ew_cfg zero, r10, zero, 2
00179c  0d0d0006  ew_cfg r26, zero, zero, 3
0017a0  0d0dad27  ew_cfg r26, r26, r26, 19
0017a4  e3408fff  loadli.w r1,  -60(r30)
0017a8  ad105c00  dsmul r1, r24, r5, 0
0017ac  9f104000  addli r1, zero, 33
0017b0  0d000026  ew_cfg zero, zero, zero, 19
0017b4  1d100d00  unlock r26
0017b8  7d800000  xsignal r1, 0
0017bc  9f404000  addli r1, zero, 36
0017c0  7d800000  xsignal r1, 0
0017c4  9f502000  addli r1, zero, 21
0017c8  7d900000  xwait r1, 0
0017cc  9f503000  addli r1, zero, 29
0017d0  7d900000  xwait r1, 0
0017d4  1d000d00  lock zero, r26
0017d8  9f204000  addli r1, zero, 34
0017dc  0d000002  ew_cfg zero, zero, zero, 1
0017e0  0d100000  ewcoeff_cfg zero, zero, zero, 0
0017e4  0d0d0006  ew_cfg r26, zero, zero, 3
0017e8  0d000504  ew_cfg zero, r10, zero, 2
0017ec  0d0dad27  ew_cfg r26, r26, r26, 19
0017f0  ed049c94  dsselect r9, r24, r9, 74
0017f4  0d000026  ew_cfg zero, zero, zero, 19
0017f8  1d100d00  unlock r26
0017fc  7d900000  xwait r1, 0
001800  1d000d00  lock zero, r26
001804  0d000002  ew_cfg zero, zero, zero, 1
001808  0d112000  ewcoeff_cfg r2, zero, r2, 0
00180c  0d000504  ew_cfg zero, r10, zero, 2
001810  0d0d0006  ew_cfg r26, zero, zero, 3
001814  0d0d0d26  ew_cfg r26, r26, zero, 19
001818  ad825200  dsmadd r5, r5, r5, 0
00181c  0d000026  ew_cfg zero, zero, zero, 19
001820  1d100d00  unlock r26
001824  1d000d00  lock zero, r26
001828  0d000002  ew_cfg zero, zero, zero, 1
00182c  0d110000  ewcoeff_cfg r2, zero, zero, 0
001830  8d010006  ew_cfg r3, zero, zero, 3
001834  0d0d0d26  ew_cfg r26, r26, zero, 19
001838  0d000204  ew_cfg zero, r4, zero, 2
00183c  8d320008  ewcoeff_nlf_cfg r5, 4
001840  ab020200  lui r5, 32
001844  0d000204  ew_cfg zero, r4, zero, 2
001848  cdd49400  hp_ssmul r9, r9, r9, 0
00184c  9b900218  ori r1, r5, 384
001850  0d000204  ew_cfg zero, r4, zero, 2
001854  8d300008  ewcoeff_nlf_cfg r1, 4
001858  9b900408  ori r1, r9, 128
00185c  0d000204  ew_cfg zero, r4, zero, 2
001860  cdd01000  hp_ssmul r1, r1, r1, 0
001864  9b900220  ori r1, r5, 512
001868  0d000026  ew_cfg zero, zero, zero, 19
00186c  1d100d00  unlock r26
001870  1d000d00  lock zero, r26
001874  0d000002  ew_cfg zero, zero, zero, 1
001878  0d110000  ewcoeff_cfg r2, zero, zero, 0
00187c  8d010006  ew_cfg r3, zero, zero, 3
001880  0d0d0d26  ew_cfg r26, r26, zero, 19
001884  0d000204  ew_cfg zero, r4, zero, 2
001888  8d300008  ewcoeff_nlf_cfg r1, 4
00188c  9b900410  ori r1, r9, 256
001890  0d000204  ew_cfg zero, r4, zero, 2
001894  cdd01000  hp_ssmul r1, r1, r1, 0
001898  9b900228  ori r1, r5, 640
00189c  0d000204  ew_cfg zero, r4, zero, 2
0018a0  8d300008  ewcoeff_nlf_cfg r1, 4
0018a4  9b900418  ori r1, r9, 384
0018a8  0d000204  ew_cfg zero, r4, zero, 2
0018ac  cdd01000  hp_ssmul r1, r1, r1, 0
0018b0  9b900230  ori r1, r5, 768
0018b4  0d000026  ew_cfg zero, zero, zero, 19
0018b8  1d100d00  unlock r26
0018bc  1d000d00  lock zero, r26
0018c0  0d000002  ew_cfg zero, zero, zero, 1
0018c4  0d110000  ewcoeff_cfg r2, zero, zero, 0
0018c8  8d010006  ew_cfg r3, zero, zero, 3
0018cc  0d0d0d26  ew_cfg r26, r26, zero, 19
0018d0  0d000204  ew_cfg zero, r4, zero, 2
0018d4  8d300008  ewcoeff_nlf_cfg r1, 4
0018d8  9b900420  ori r1, r9, 512
0018dc  0d000204  ew_cfg zero, r4, zero, 2
0018e0  cdd01000  hp_ssmul r1, r1, r1, 0
0018e4  9b900238  ori r1, r5, 896
0018e8  0d000204  ew_cfg zero, r4, zero, 2
0018ec  8d300008  ewcoeff_nlf_cfg r1, 4
0018f0  9b900428  ori r1, r9, 640
0018f4  0d000204  ew_cfg zero, r4, zero, 2
0018f8  cdd01000  hp_ssmul r1, r1, r1, 0
0018fc  9b900240  ori r1, r5, 1024
001900  0d000026  ew_cfg zero, zero, zero, 19
001904  1d100d00  unlock r26
001908  1d000d00  lock zero, r26
00190c  0d000002  ew_cfg zero, zero, zero, 1
001910  0d110000  ewcoeff_cfg r2, zero, zero, 0
001914  8d010006  ew_cfg r3, zero, zero, 3
001918  0d0d0d26  ew_cfg r26, r26, zero, 19
00191c  0d000204  ew_cfg zero, r4, zero, 2
001920  8d300008  ewcoeff_nlf_cfg r1, 4
001924  9b900430  ori r1, r9, 768
001928  0d000204  ew_cfg zero, r4, zero, 2
00192c  cdd01000  hp_ssmul r1, r1, r1, 0
001930  9b900248  ori r1, r5, 1152
001934  0d000204  ew_cfg zero, r4, zero, 2
001938  8d300008  ewcoeff_nlf_cfg r1, 4
00193c  9b900438  ori r1, r9, 896
001940  0d000204  ew_cfg zero, r4, zero, 2
001944  cdd01000  hp_ssmul r1, r1, r1, 0
001948  9b900250  ori r1, r5, 1280
00194c  0d000026  ew_cfg zero, zero, zero, 19
001950  1d100d00  unlock r26
001954  1d000d00  lock zero, r26
001958  0d000002  ew_cfg zero, zero, zero, 1
00195c  0d110000  ewcoeff_cfg r2, zero, zero, 0
001960  8d010006  ew_cfg r3, zero, zero, 3
001964  0d0d0d26  ew_cfg r26, r26, zero, 19
001968  0d000204  ew_cfg zero, r4, zero, 2
00196c  8d300008  ewcoeff_nlf_cfg r1, 4
001970  9b900440  ori r1, r9, 1024
001974  0d000204  ew_cfg zero, r4, zero, 2
001978  cdd01000  hp_ssmul r1, r1, r1, 0
00197c  9b900258  ori r1, r5, 1408
001980  0d000204  ew_cfg zero, r4, zero, 2
001984  8d300008  ewcoeff_nlf_cfg r1, 4
001988  9b900448  ori r1, r9, 1152
00198c  0d000204  ew_cfg zero, r4, zero, 2
001990  cdd01000  hp_ssmul r1, r1, r1, 0
001994  9b900260  ori r1, r5, 1536
001998  0d000026  ew_cfg zero, zero, zero, 19
00199c  1d100d00  unlock r26
0019a0  1d000d00  lock zero, r26
0019a4  0d000002  ew_cfg zero, zero, zero, 1
0019a8  0d110000  ewcoeff_cfg r2, zero, zero, 0
0019ac  8d010006  ew_cfg r3, zero, zero, 3
0019b0  0d0d0d26  ew_cfg r26, r26, zero, 19
0019b4  0d000204  ew_cfg zero, r4, zero, 2
0019b8  8d300008  ewcoeff_nlf_cfg r1, 4
0019bc  9b900450  ori r1, r9, 1280
0019c0  0d000204  ew_cfg zero, r4, zero, 2
0019c4  cdd01000  hp_ssmul r1, r1, r1, 0
0019c8  9b900268  ori r1, r5, 1664
0019cc  0d000204  ew_cfg zero, r4, zero, 2
0019d0  8d300008  ewcoeff_nlf_cfg r1, 4
0019d4  9b900458  ori r1, r9, 1408
0019d8  0d000204  ew_cfg zero, r4, zero, 2
0019dc  cdd01000  hp_ssmul r1, r1, r1, 0
0019e0  9b900270  ori r1, r5, 1792
0019e4  0d000026  ew_cfg zero, zero, zero, 19
0019e8  1d100d00  unlock r26
0019ec  1d000d00  lock zero, r26
0019f0  0d000002  ew_cfg zero, zero, zero, 1
0019f4  0d110000  ewcoeff_cfg r2, zero, zero, 0
0019f8  8d010006  ew_cfg r3, zero, zero, 3
0019fc  0d0d0d26  ew_cfg r26, r26, zero, 19
001a00  0d000204  ew_cfg zero, r4, zero, 2
001a04  8d300008  ewcoeff_nlf_cfg r1, 4
001a08  9b900460  ori r1, r9, 1536
001a0c  0d000204  ew_cfg zero, r4, zero, 2
001a10  cdd01000  hp_ssmul r1, r1, r1, 0
001a14  9b900278  ori r1, r5, 1920
001a18  0d000204  ew_cfg zero, r4, zero, 2
001a1c  8d300008  ewcoeff_nlf_cfg r1, 4
001a20  9b900468  ori r1, r9, 1664
001a24  0d000204  ew_cfg zero, r4, zero, 2
001a28  cdd01000  hp_ssmul r1, r1, r1, 0
001a2c  9b900280  ori r1, r5, 2048
001a30  0d000026  ew_cfg zero, zero, zero, 19
001a34  1d100d00  unlock r26
001a38  1d000d00  lock zero, r26
001a3c  0d000002  ew_cfg zero, zero, zero, 1
001a40  0d110000  ewcoeff_cfg r2, zero, zero, 0
001a44  8d010006  ew_cfg r3, zero, zero, 3
001a48  0d0d0d26  ew_cfg r26, r26, zero, 19
001a4c  0d000204  ew_cfg zero, r4, zero, 2
001a50  8d300008  ewcoeff_nlf_cfg r1, 4
001a54  9b900470  ori r1, r9, 1792
001a58  0d000204  ew_cfg zero, r4, zero, 2
001a5c  cdd01000  hp_ssmul r1, r1, r1, 0
001a60  9b900288  ori r1, r5, 2176
001a64  0d000204  ew_cfg zero, r4, zero, 2
001a68  8d300008  ewcoeff_nlf_cfg r1, 4
001a6c  9b900478  ori r1, r9, 1920
001a70  0d000204  ew_cfg zero, r4, zero, 2
001a74  cdd01000  hp_ssmul r1, r1, r1, 0
001a78  9b900290  ori r1, r5, 2304
001a7c  0d000026  ew_cfg zero, zero, zero, 19
001a80  1d100d00  unlock r26
001a84  1d000d00  lock zero, r26
001a88  0d000002  ew_cfg zero, zero, zero, 1
001a8c  0d110000  ewcoeff_cfg r2, zero, zero, 0
001a90  8d010006  ew_cfg r3, zero, zero, 3
001a94  0d0d0d26  ew_cfg r26, r26, zero, 19
001a98  0d000204  ew_cfg zero, r4, zero, 2
001a9c  8d300008  ewcoeff_nlf_cfg r1, 4
001aa0  9b900480  ori r1, r9, 2048
001aa4  0d000204  ew_cfg zero, r4, zero, 2
001aa8  cdd01000  hp_ssmul r1, r1, r1, 0
001aac  9b900298  ori r1, r5, 2432
001ab0  0d000204  ew_cfg zero, r4, zero, 2
001ab4  8d300008  ewcoeff_nlf_cfg r1, 4
001ab8  9b900488  ori r1, r9, 2176
001abc  0d000204  ew_cfg zero, r4, zero, 2
001ac0  cdd01000  hp_ssmul r1, r1, r1, 0
001ac4  9b9002a0  ori r1, r5, 2560
001ac8  0d000026  ew_cfg zero, zero, zero, 19
001acc  1d100d00  unlock r26
001ad0  1d000d00  lock zero, r26
001ad4  0d000002  ew_cfg zero, zero, zero, 1
001ad8  0d110000  ewcoeff_cfg r2, zero, zero, 0
001adc  8d010006  ew_cfg r3, zero, zero, 3
001ae0  0d0d0d26  ew_cfg r26, r26, zero, 19
001ae4  0d000204  ew_cfg zero, r4, zero, 2
001ae8  8d300008  ewcoeff_nlf_cfg r1, 4
001aec  9b900490  ori r1, r9, 2304
001af0  0d000204  ew_cfg zero, r4, zero, 2
001af4  cdd01000  hp_ssmul r1, r1, r1, 0
001af8  9b9002a8  ori r1, r5, 2688
001afc  0d000204  ew_cfg zero, r4, zero, 2
001b00  8d300008  ewcoeff_nlf_cfg r1, 4
001b04  9b900498  ori r1, r9, 2432
001b08  0d000204  ew_cfg zero, r4, zero, 2
001b0c  cdd01000  hp_ssmul r1, r1, r1, 0
001b10  9b9002b0  ori r1, r5, 2816
001b14  0d000026  ew_cfg zero, zero, zero, 19
001b18  1d100d00  unlock r26
001b1c  1d000d00  lock zero, r26
001b20  0d000002  ew_cfg zero, zero, zero, 1
001b24  0d110000  ewcoeff_cfg r2, zero, zero, 0
001b28  8d010006  ew_cfg r3, zero, zero, 3
001b2c  0d0d0d26  ew_cfg r26, r26, zero, 19
001b30  0d000204  ew_cfg zero, r4, zero, 2
001b34  8d300008  ewcoeff_nlf_cfg r1, 4
001b38  9b9004a0  ori r1, r9, 2560
001b3c  0d000204  ew_cfg zero, r4, zero, 2
001b40  cdd01000  hp_ssmul r1, r1, r1, 0
001b44  9b9002b8  ori r1, r5, 2944
001b48  0d000204  ew_cfg zero, r4, zero, 2
001b4c  8d300008  ewcoeff_nlf_cfg r1, 4
001b50  9b9004a8  ori r1, r9, 2688
001b54  0d000204  ew_cfg zero, r4, zero, 2
001b58  cdd01000  hp_ssmul r1, r1, r1, 0
001b5c  9b9002c0  ori r1, r5, 3072
001b60  0d000026  ew_cfg zero, zero, zero, 19
001b64  1d100d00  unlock r26
001b68  1d000d00  lock zero, r26
001b6c  0d000002  ew_cfg zero, zero, zero, 1
001b70  0d110000  ewcoeff_cfg r2, zero, zero, 0
001b74  8d010006  ew_cfg r3, zero, zero, 3
001b78  0d0d0d26  ew_cfg r26, r26, zero, 19
001b7c  0d000204  ew_cfg zero, r4, zero, 2
001b80  8d300008  ewcoeff_nlf_cfg r1, 4
001b84  9b9004b0  ori r1, r9, 2816
001b88  0d000204  ew_cfg zero, r4, zero, 2
001b8c  cdd01000  hp_ssmul r1, r1, r1, 0
001b90  9b9002c8  ori r1, r5, 3200
001b94  0d000204  ew_cfg zero, r4, zero, 2
001b98  8d300008  ewcoeff_nlf_cfg r1, 4
001b9c  9b9004b8  ori r1, r9, 2944
001ba0  0d000204  ew_cfg zero, r4, zero, 2
001ba4  cdd01000  hp_ssmul r1, r1, r1, 0
001ba8  9b9002d0  ori r1, r5, 3328
001bac  0d000026  ew_cfg zero, zero, zero, 19
001bb0  1d100d00  unlock r26
001bb4  1d000d00  lock zero, r26
001bb8  0d000002  ew_cfg zero, zero, zero, 1
001bbc  0d110000  ewcoeff_cfg r2, zero, zero, 0
001bc0  8d010006  ew_cfg r3, zero, zero, 3
001bc4  0d0d0d26  ew_cfg r26, r26, zero, 19
001bc8  0d000204  ew_cfg zero, r4, zero, 2
001bcc  8d300008  ewcoeff_nlf_cfg r1, 4
001bd0  9b9004c0  ori r1, r9, 3072
001bd4  0d000204  ew_cfg zero, r4, zero, 2
001bd8  cdd01000  hp_ssmul r1, r1, r1, 0
001bdc  9b9002d8  ori r1, r5, 3456
001be0  0d000204  ew_cfg zero, r4, zero, 2
001be4  8d300008  ewcoeff_nlf_cfg r1, 4
001be8  9b9004c8  ori r1, r9, 3200
001bec  0d000204  ew_cfg zero, r4, zero, 2
001bf0  cdd01000  hp_ssmul r1, r1, r1, 0
001bf4  9b9002e0  ori r1, r5, 3584
001bf8  0d000026  ew_cfg zero, zero, zero, 19
001bfc  1d100d00  unlock r26
001c00  1d000d00  lock zero, r26
001c04  0d000002  ew_cfg zero, zero, zero, 1
001c08  0d110000  ewcoeff_cfg r2, zero, zero, 0
001c0c  8d010006  ew_cfg r3, zero, zero, 3
001c10  0d0d0d26  ew_cfg r26, r26, zero, 19
001c14  0d000204  ew_cfg zero, r4, zero, 2
001c18  8d300008  ewcoeff_nlf_cfg r1, 4
001c1c  9b9004d0  ori r1, r9, 3328
001c20  0d000204  ew_cfg zero, r4, zero, 2
001c24  cdd01000  hp_ssmul r1, r1, r1, 0
001c28  9b9002e8  ori r1, r5, 3712
001c2c  0d000204  ew_cfg zero, r4, zero, 2
001c30  8d300008  ewcoeff_nlf_cfg r1, 4
001c34  9b9004d8  ori r1, r9, 3456
001c38  0d000204  ew_cfg zero, r4, zero, 2
001c3c  cdd01000  hp_ssmul r1, r1, r1, 0
001c40  9b9002f0  ori r1, r5, 3840
001c44  0d000026  ew_cfg zero, zero, zero, 19
001c48  1d100d00  unlock r26
001c4c  1d000d00  lock zero, r26
001c50  0d000002  ew_cfg zero, zero, zero, 1
001c54  0d110000  ewcoeff_cfg r2, zero, zero, 0
001c58  8d010006  ew_cfg r3, zero, zero, 3
001c5c  0d0d0d26  ew_cfg r26, r26, zero, 19
001c60  0d000204  ew_cfg zero, r4, zero, 2
001c64  8d300008  ewcoeff_nlf_cfg r1, 4
001c68  9b9004e0  ori r1, r9, 3584
001c6c  0d000204  ew_cfg zero, r4, zero, 2
001c70  cdd01000  hp_ssmul r1, r1, r1, 0
001c74  9b9002f8  ori r1, r5, 3968
001c78  ab120200  lui r5, 33
001c7c  0d000204  ew_cfg zero, r4, zero, 2
001c80  8d300008  ewcoeff_nlf_cfg r1, 4
001c84  9b9004e8  ori r1, r9, 3712
001c88  0d000204  ew_cfg zero, r4, zero, 2
001c8c  cdd01000  hp_ssmul r1, r1, r1, 0
001c90  9b9004f0  ori r1, r9, 3840
001c94  0d000026  ew_cfg zero, zero, zero, 19
001c98  1d100d00  unlock r26
001c9c  1d000d00  lock zero, r26
001ca0  0d000002  ew_cfg zero, zero, zero, 1
001ca4  0d110000  ewcoeff_cfg r2, zero, zero, 0
001ca8  8d010006  ew_cfg r3, zero, zero, 3
001cac  0d0d0d26  ew_cfg r26, r26, zero, 19
001cb0  0d000204  ew_cfg zero, r4, zero, 2
001cb4  8d320008  ewcoeff_nlf_cfg r5, 4
001cb8  0d000204  ew_cfg zero, r4, zero, 2
001cbc  cdd01000  hp_ssmul r1, r1, r1, 0
001cc0  9b900208  ori r1, r5, 128
001cc4  0d000204  ew_cfg zero, r4, zero, 2
001cc8  8d300008  ewcoeff_nlf_cfg r1, 4
001ccc  9b9004f8  ori r1, r9, 3968
001cd0  0d000204  ew_cfg zero, r4, zero, 2
001cd4  cdd01000  hp_ssmul r1, r1, r1, 0
001cd8  9b900210  ori r1, r5, 256
001cdc  0d000026  ew_cfg zero, zero, zero, 19
001ce0  1d100d00  unlock r26
001ce4  1d000d00  lock zero, r26
001ce8  0d000002  ew_cfg zero, zero, zero, 1
001cec  0d110000  ewcoeff_cfg r2, zero, zero, 0
001cf0  8d010006  ew_cfg r3, zero, zero, 3
001cf4  0d0d0d26  ew_cfg r26, r26, zero, 19
001cf8  0d000204  ew_cfg zero, r4, zero, 2
001cfc  8d300008  ewcoeff_nlf_cfg r1, 4
001d00  9b900218  ori r1, r5, 384
001d04  0d000204  ew_cfg zero, r4, zero, 2
001d08  cdd5b500  hp_ssmul r11, r11, r11, 0
001d0c  0d000204  ew_cfg zero, r4, zero, 2
001d10  8d300008  ewcoeff_nlf_cfg r1, 4
001d14  9b900508  ori r1, r11, 128
001d18  0d000204  ew_cfg zero, r4, zero, 2
001d1c  cdd01000  hp_ssmul r1, r1, r1, 0
001d20  9b900220  ori r1, r5, 512
001d24  0d000026  ew_cfg zero, zero, zero, 19
001d28  1d100d00  unlock r26
001d2c  1d000d00  lock zero, r26
001d30  0d000002  ew_cfg zero, zero, zero, 1
001d34  0d110000  ewcoeff_cfg r2, zero, zero, 0
001d38  8d010006  ew_cfg r3, zero, zero, 3
001d3c  0d0d0d26  ew_cfg r26, r26, zero, 19
001d40  0d000204  ew_cfg zero, r4, zero, 2
001d44  8d300008  ewcoeff_nlf_cfg r1, 4
001d48  9b900510  ori r1, r11, 256
001d4c  0d000204  ew_cfg zero, r4, zero, 2
001d50  cdd01000  hp_ssmul r1, r1, r1, 0
001d54  9b900228  ori r1, r5, 640
001d58  0d000204  ew_cfg zero, r4, zero, 2
001d5c  8d300008  ewcoeff_nlf_cfg r1, 4
001d60  9b900518  ori r1, r11, 384
001d64  0d000204  ew_cfg zero, r4, zero, 2
001d68  cdd01000  hp_ssmul r1, r1, r1, 0
001d6c  9b900230  ori r1, r5, 768
001d70  0d000026  ew_cfg zero, zero, zero, 19
001d74  1d100d00  unlock r26
001d78  1d000d00  lock zero, r26
001d7c  0d000002  ew_cfg zero, zero, zero, 1
001d80  0d110000  ewcoeff_cfg r2, zero, zero, 0
001d84  8d010006  ew_cfg r3, zero, zero, 3
001d88  0d0d0d26  ew_cfg r26, r26, zero, 19
001d8c  0d000204  ew_cfg zero, r4, zero, 2
001d90  8d300008  ewcoeff_nlf_cfg r1, 4
001d94  9b900520  ori r1, r11, 512
001d98  0d000204  ew_cfg zero, r4, zero, 2
001d9c  cdd01000  hp_ssmul r1, r1, r1, 0
001da0  9b900238  ori r1, r5, 896
001da4  0d000204  ew_cfg zero, r4, zero, 2
001da8  8d300008  ewcoeff_nlf_cfg r1, 4
001dac  9b900528  ori r1, r11, 640
001db0  0d000204  ew_cfg zero, r4, zero, 2
001db4  cdd01000  hp_ssmul r1, r1, r1, 0
001db8  9b900240  ori r1, r5, 1024
001dbc  0d000026  ew_cfg zero, zero, zero, 19
001dc0  1d100d00  unlock r26
001dc4  1d000d00  lock zero, r26
001dc8  0d000002  ew_cfg zero, zero, zero, 1
001dcc  0d110000  ewcoeff_cfg r2, zero, zero, 0
001dd0  8d010006  ew_cfg r3, zero, zero, 3
001dd4  0d0d0d26  ew_cfg r26, r26, zero, 19
001dd8  0d000204  ew_cfg zero, r4, zero, 2
001ddc  8d300008  ewcoeff_nlf_cfg r1, 4
001de0  9b900530  ori r1, r11, 768
001de4  0d000204  ew_cfg zero, r4, zero, 2
001de8  cdd01000  hp_ssmul r1, r1, r1, 0
001dec  9b900248  ori r1, r5, 1152
001df0  0d000204  ew_cfg zero, r4, zero, 2
001df4  8d300008  ewcoeff_nlf_cfg r1, 4
001df8  9b900538  ori r1, r11, 896
001dfc  0d000204  ew_cfg zero, r4, zero, 2
001e00  cdd01000  hp_ssmul r1, r1, r1, 0
001e04  9b900250  ori r1, r5, 1280
001e08  0d000026  ew_cfg zero, zero, zero, 19
001e0c  1d100d00  unlock r26
001e10  1d000d00  lock zero, r26
001e14  0d000002  ew_cfg zero, zero, zero, 1
001e18  0d110000  ewcoeff_cfg r2, zero, zero, 0
001e1c  8d010006  ew_cfg r3, zero, zero, 3
001e20  0d0d0d26  ew_cfg r26, r26, zero, 19
001e24  0d000204  ew_cfg zero, r4, zero, 2
001e28  8d300008  ewcoeff_nlf_cfg r1, 4
001e2c  9b900540  ori r1, r11, 1024
001e30  0d000204  ew_cfg zero, r4, zero, 2
001e34  cdd01000  hp_ssmul r1, r1, r1, 0
001e38  9b900258  ori r1, r5, 1408
001e3c  0d000204  ew_cfg zero, r4, zero, 2
001e40  8d300008  ewcoeff_nlf_cfg r1, 4
001e44  9b900548  ori r1, r11, 1152
001e48  0d000204  ew_cfg zero, r4, zero, 2
001e4c  cdd01000  hp_ssmul r1, r1, r1, 0
001e50  9b900260  ori r1, r5, 1536
001e54  0d000026  ew_cfg zero, zero, zero, 19
001e58  1d100d00  unlock r26
001e5c  1d000d00  lock zero, r26
001e60  0d000002  ew_cfg zero, zero, zero, 1
001e64  0d110000  ewcoeff_cfg r2, zero, zero, 0
001e68  8d010006  ew_cfg r3, zero, zero, 3
001e6c  0d0d0d26  ew_cfg r26, r26, zero, 19
001e70  0d000204  ew_cfg zero, r4, zero, 2
001e74  8d300008  ewcoeff_nlf_cfg r1, 4
001e78  9b900550  ori r1, r11, 1280
001e7c  0d000204  ew_cfg zero, r4, zero, 2
001e80  cdd01000  hp_ssmul r1, r1, r1, 0
001e84  9b900268  ori r1, r5, 1664
001e88  0d000204  ew_cfg zero, r4, zero, 2
001e8c  8d300008  ewcoeff_nlf_cfg r1, 4
001e90  9b900558  ori r1, r11, 1408
001e94  0d000204  ew_cfg zero, r4, zero, 2
001e98  cdd01000  hp_ssmul r1, r1, r1, 0
001e9c  9b900270  ori r1, r5, 1792
001ea0  0d000026  ew_cfg zero, zero, zero, 19
001ea4  1d100d00  unlock r26
001ea8  1d000d00  lock zero, r26
001eac  0d000002  ew_cfg zero, zero, zero, 1
001eb0  0d110000  ewcoeff_cfg r2, zero, zero, 0
001eb4  8d010006  ew_cfg r3, zero, zero, 3
001eb8  0d0d0d26  ew_cfg r26, r26, zero, 19
001ebc  0d000204  ew_cfg zero, r4, zero, 2
001ec0  8d300008  ewcoeff_nlf_cfg r1, 4
001ec4  9b900560  ori r1, r11, 1536
001ec8  0d000204  ew_cfg zero, r4, zero, 2
001ecc  cdd01000  hp_ssmul r1, r1, r1, 0
001ed0  9b900278  ori r1, r5, 1920
001ed4  0d000204  ew_cfg zero, r4, zero, 2
001ed8  8d300008  ewcoeff_nlf_cfg r1, 4
001edc  9b900568  ori r1, r11, 1664
001ee0  0d000204  ew_cfg zero, r4, zero, 2
001ee4  cdd01000  hp_ssmul r1, r1, r1, 0
001ee8  9b900280  ori r1, r5, 2048
001eec  0d000026  ew_cfg zero, zero, zero, 19
001ef0  1d100d00  unlock r26
001ef4  1d000d00  lock zero, r26
001ef8  0d000002  ew_cfg zero, zero, zero, 1
001efc  0d110000  ewcoeff_cfg r2, zero, zero, 0
001f00  8d010006  ew_cfg r3, zero, zero, 3
001f04  0d0d0d26  ew_cfg r26, r26, zero, 19
001f08  0d000204  ew_cfg zero, r4, zero, 2
001f0c  8d300008  ewcoeff_nlf_cfg r1, 4
001f10  9b900570  ori r1, r11, 1792
001f14  0d000204  ew_cfg zero, r4, zero, 2
001f18  cdd01000  hp_ssmul r1, r1, r1, 0
001f1c  9b900288  ori r1, r5, 2176
001f20  0d000204  ew_cfg zero, r4, zero, 2
001f24  8d300008  ewcoeff_nlf_cfg r1, 4
001f28  9b900578  ori r1, r11, 1920
001f2c  0d000204  ew_cfg zero, r4, zero, 2
001f30  cdd01000  hp_ssmul r1, r1, r1, 0
001f34  9b900290  ori r1, r5, 2304
001f38  0d000026  ew_cfg zero, zero, zero, 19
001f3c  1d100d00  unlock r26
001f40  1d000d00  lock zero, r26
001f44  0d000002  ew_cfg zero, zero, zero, 1
001f48  0d110000  ewcoeff_cfg r2, zero, zero, 0
001f4c  8d010006  ew_cfg r3, zero, zero, 3
001f50  0d0d0d26  ew_cfg r26, r26, zero, 19
001f54  0d000204  ew_cfg zero, r4, zero, 2
001f58  8d300008  ewcoeff_nlf_cfg r1, 4
001f5c  9b900580  ori r1, r11, 2048
001f60  0d000204  ew_cfg zero, r4, zero, 2
001f64  cdd01000  hp_ssmul r1, r1, r1, 0
001f68  9b900298  ori r1, r5, 2432
001f6c  0d000204  ew_cfg zero, r4, zero, 2
001f70  8d300008  ewcoeff_nlf_cfg r1, 4
001f74  9b900588  ori r1, r11, 2176
001f78  0d000204  ew_cfg zero, r4, zero, 2
001f7c  cdd01000  hp_ssmul r1, r1, r1, 0
001f80  9b9002a0  ori r1, r5, 2560
001f84  0d000026  ew_cfg zero, zero, zero, 19
001f88  1d100d00  unlock r26
001f8c  1d000d00  lock zero, r26
001f90  0d000002  ew_cfg zero, zero, zero, 1
001f94  0d110000  ewcoeff_cfg r2, zero, zero, 0
001f98  8d010006  ew_cfg r3, zero, zero, 3
001f9c  0d0d0d26  ew_cfg r26, r26, zero, 19
001fa0  0d000204  ew_cfg zero, r4, zero, 2
001fa4  8d300008  ewcoeff_nlf_cfg r1, 4
001fa8  9b900590  ori r1, r11, 2304
001fac  0d000204  ew_cfg zero, r4, zero, 2
001fb0  cdd01000  hp_ssmul r1, r1, r1, 0
001fb4  9b9002a8  ori r1, r5, 2688
001fb8  0d000204  ew_cfg zero, r4, zero, 2
001fbc  8d300008  ewcoeff_nlf_cfg r1, 4
001fc0  9b900598  ori r1, r11, 2432
001fc4  0d000204  ew_cfg zero, r4, zero, 2
001fc8  cdd01000  hp_ssmul r1, r1, r1, 0
001fcc  9b9002b0  ori r1, r5, 2816
001fd0  0d000026  ew_cfg zero, zero, zero, 19
001fd4  1d100d00  unlock r26
001fd8  1d000d00  lock zero, r26
001fdc  0d000002  ew_cfg zero, zero, zero, 1
001fe0  0d110000  ewcoeff_cfg r2, zero, zero, 0
001fe4  8d010006  ew_cfg r3, zero, zero, 3
001fe8  0d0d0d26  ew_cfg r26, r26, zero, 19
001fec  0d000204  ew_cfg zero, r4, zero, 2
001ff0  8d300008  ewcoeff_nlf_cfg r1, 4
001ff4  9b9005a0  ori r1, r11, 2560
001ff8  0d000204  ew_cfg zero, r4, zero, 2
001ffc  cdd01000  hp_ssmul r1, r1, r1, 0
002000  9b9002b8  ori r1, r5, 2944
002004  0d000204  ew_cfg zero, r4, zero, 2
002008  8d300008  ewcoeff_nlf_cfg r1, 4
00200c  9b9005a8  ori r1, r11, 2688
002010  0d000204  ew_cfg zero, r4, zero, 2
002014  cdd01000  hp_ssmul r1, r1, r1, 0
002018  9b9002c0  ori r1, r5, 3072
00201c  0d000026  ew_cfg zero, zero, zero, 19
002020  1d100d00  unlock r26
002024  1d000d00  lock zero, r26
002028  0d000002  ew_cfg zero, zero, zero, 1
00202c  0d110000  ewcoeff_cfg r2, zero, zero, 0
002030  8d010006  ew_cfg r3, zero, zero, 3
002034  0d0d0d26  ew_cfg r26, r26, zero, 19
002038  0d000204  ew_cfg zero, r4, zero, 2
00203c  8d300008  ewcoeff_nlf_cfg r1, 4
002040  9b9005b0  ori r1, r11, 2816
002044  0d000204  ew_cfg zero, r4, zero, 2
002048  cdd01000  hp_ssmul r1, r1, r1, 0
00204c  9b9002c8  ori r1, r5, 3200
002050  0d000204  ew_cfg zero, r4, zero, 2
002054  8d300008  ewcoeff_nlf_cfg r1, 4
002058  9b9005b8  ori r1, r11, 2944
00205c  0d000204  ew_cfg zero, r4, zero, 2
002060  cdd01000  hp_ssmul r1, r1, r1, 0
002064  9b9002d0  ori r1, r5, 3328
002068  0d000026  ew_cfg zero, zero, zero, 19
00206c  1d100d00  unlock r26
002070  1d000d00  lock zero, r26
002074  0d000002  ew_cfg zero, zero, zero, 1
002078  0d110000  ewcoeff_cfg r2, zero, zero, 0
00207c  8d010006  ew_cfg r3, zero, zero, 3
002080  0d0d0d26  ew_cfg r26, r26, zero, 19
002084  0d000204  ew_cfg zero, r4, zero, 2
002088  8d300008  ewcoeff_nlf_cfg r1, 4
00208c  9b9005c0  ori r1, r11, 3072
002090  0d000204  ew_cfg zero, r4, zero, 2
002094  cdd01000  hp_ssmul r1, r1, r1, 0
002098  9b9002d8  ori r1, r5, 3456
00209c  0d000204  ew_cfg zero, r4, zero, 2
0020a0  8d300008  ewcoeff_nlf_cfg r1, 4
0020a4  9b9005c8  ori r1, r11, 3200
0020a8  0d000204  ew_cfg zero, r4, zero, 2
0020ac  cdd01000  hp_ssmul r1, r1, r1, 0
0020b0  9b9002e0  ori r1, r5, 3584
0020b4  0d000026  ew_cfg zero, zero, zero, 19
0020b8  1d100d00  unlock r26
0020bc  1d000d00  lock zero, r26
0020c0  0d000002  ew_cfg zero, zero, zero, 1
0020c4  0d110000  ewcoeff_cfg r2, zero, zero, 0
0020c8  8d010006  ew_cfg r3, zero, zero, 3
0020cc  0d0d0d26  ew_cfg r26, r26, zero, 19
0020d0  0d000204  ew_cfg zero, r4, zero, 2
0020d4  8d300008  ewcoeff_nlf_cfg r1, 4
0020d8  9b9005d0  ori r1, r11, 3328
0020dc  0d000204  ew_cfg zero, r4, zero, 2
0020e0  cdd01000  hp_ssmul r1, r1, r1, 0
0020e4  9b9002e8  ori r1, r5, 3712
0020e8  0d000204  ew_cfg zero, r4, zero, 2
0020ec  8d300008  ewcoeff_nlf_cfg r1, 4
0020f0  9b9005d8  ori r1, r11, 3456
0020f4  0d000204  ew_cfg zero, r4, zero, 2
0020f8  cdd01000  hp_ssmul r1, r1, r1, 0
0020fc  9b9002f0  ori r1, r5, 3840
002100  0d000026  ew_cfg zero, zero, zero, 19
002104  1d100d00  unlock r26
002108  1d000d00  lock zero, r26
00210c  0d000002  ew_cfg zero, zero, zero, 1
002110  0d110000  ewcoeff_cfg r2, zero, zero, 0
002114  8d010006  ew_cfg r3, zero, zero, 3
002118  0d0d0d26  ew_cfg r26, r26, zero, 19
00211c  0d000204  ew_cfg zero, r4, zero, 2
002120  8d300008  ewcoeff_nlf_cfg r1, 4
002124  9b9005e0  ori r1, r11, 3584
002128  0d000204  ew_cfg zero, r4, zero, 2
00212c  cdd01000  hp_ssmul r1, r1, r1, 0
002130  9b9002f8  ori r1, r5, 3968
002134  ab220200  lui r5, 34
002138  0d000204  ew_cfg zero, r4, zero, 2
00213c  8d300008  ewcoeff_nlf_cfg r1, 4
002140  9b9005e8  ori r1, r11, 3712
002144  0d000204  ew_cfg zero, r4, zero, 2
002148  cdd01000  hp_ssmul r1, r1, r1, 0
00214c  9b9005f0  ori r1, r11, 3840
002150  0d000026  ew_cfg zero, zero, zero, 19
002154  1d100d00  unlock r26
002158  1d000d00  lock zero, r26
00215c  0d000002  ew_cfg zero, zero, zero, 1
002160  0d110000  ewcoeff_cfg r2, zero, zero, 0
002164  8d010006  ew_cfg r3, zero, zero, 3
002168  0d0d0d26  ew_cfg r26, r26, zero, 19
00216c  0d000204  ew_cfg zero, r4, zero, 2
002170  8d320008  ewcoeff_nlf_cfg r5, 4
002174  0d000204  ew_cfg zero, r4, zero, 2
002178  cdd01000  hp_ssmul r1, r1, r1, 0
00217c  9b900208  ori r1, r5, 128
002180  0d000204  ew_cfg zero, r4, zero, 2
002184  8d300008  ewcoeff_nlf_cfg r1, 4
002188  9b9005f8  ori r1, r11, 3968
00218c  abe50000  lui r11, 14
002190  0d000204  ew_cfg zero, r4, zero, 2
002194  cdd01000  hp_ssmul r1, r1, r1, 0
002198  9b900210  ori r1, r5, 256
00219c  0d000026  ew_cfg zero, zero, zero, 19
0021a0  1d100d00  unlock r26
0021a4  1d000d00  lock zero, r26
0021a8  0d000002  ew_cfg zero, zero, zero, 1
0021ac  0d110000  ewcoeff_cfg r2, zero, zero, 0
0021b0  8d010006  ew_cfg r3, zero, zero, 3
0021b4  0d0d0d26  ew_cfg r26, r26, zero, 19
0021b8  0d000204  ew_cfg zero, r4, zero, 2
0021bc  8d300008  ewcoeff_nlf_cfg r1, 4
0021c0  9b900218  ori r1, r5, 384
0021c4  0d000204  ew_cfg zero, r4, zero, 2
0021c8  cdd5b500  hp_ssmul r11, r11, r11, 0
0021cc  0d000204  ew_cfg zero, r4, zero, 2
0021d0  8d300008  ewcoeff_nlf_cfg r1, 4
0021d4  9b900508  ori r1, r11, 128
0021d8  0d000204  ew_cfg zero, r4, zero, 2
0021dc  cdd01000  hp_ssmul r1, r1, r1, 0
0021e0  9b900220  ori r1, r5, 512
0021e4  0d000026  ew_cfg zero, zero, zero, 19
0021e8  1d100d00  unlock r26
0021ec  1d000d00  lock zero, r26
0021f0  0d000002  ew_cfg zero, zero, zero, 1
0021f4  0d110000  ewcoeff_cfg r2, zero, zero, 0
0021f8  8d010006  ew_cfg r3, zero, zero, 3
0021fc  0d0d0d26  ew_cfg r26, r26, zero, 19
002200  0d000204  ew_cfg zero, r4, zero, 2
002204  8d300008  ewcoeff_nlf_cfg r1, 4
002208  9b900510  ori r1, r11, 256
00220c  0d000204  ew_cfg zero, r4, zero, 2
002210  cdd01000  hp_ssmul r1, r1, r1, 0
002214  9b900228  ori r1, r5, 640
002218  0d000204  ew_cfg zero, r4, zero, 2
00221c  8d300008  ewcoeff_nlf_cfg r1, 4
002220  9b900518  ori r1, r11, 384
002224  0d000204  ew_cfg zero, r4, zero, 2
002228  cdd01000  hp_ssmul r1, r1, r1, 0
00222c  9b900230  ori r1, r5, 768
002230  0d000026  ew_cfg zero, zero, zero, 19
002234  1d100d00  unlock r26
002238  1d000d00  lock zero, r26
00223c  0d000002  ew_cfg zero, zero, zero, 1
002240  0d110000  ewcoeff_cfg r2, zero, zero, 0
002244  8d010006  ew_cfg r3, zero, zero, 3
002248  0d0d0d26  ew_cfg r26, r26, zero, 19
00224c  0d000204  ew_cfg zero, r4, zero, 2
002250  8d300008  ewcoeff_nlf_cfg r1, 4
002254  9b900520  ori r1, r11, 512
002258  0d000204  ew_cfg zero, r4, zero, 2
00225c  cdd01000  hp_ssmul r1, r1, r1, 0
002260  9b900238  ori r1, r5, 896
002264  0d000204  ew_cfg zero, r4, zero, 2
002268  8d300008  ewcoeff_nlf_cfg r1, 4
00226c  9b900528  ori r1, r11, 640
002270  0d000204  ew_cfg zero, r4, zero, 2
002274  cdd01000  hp_ssmul r1, r1, r1, 0
002278  9b900240  ori r1, r5, 1024
00227c  0d000026  ew_cfg zero, zero, zero, 19
002280  1d100d00  unlock r26
002284  1d000d00  lock zero, r26
002288  0d000002  ew_cfg zero, zero, zero, 1
00228c  0d110000  ewcoeff_cfg r2, zero, zero, 0
002290  8d010006  ew_cfg r3, zero, zero, 3
002294  0d0d0d26  ew_cfg r26, r26, zero, 19
002298  0d000204  ew_cfg zero, r4, zero, 2
00229c  8d300008  ewcoeff_nlf_cfg r1, 4
0022a0  9b900530  ori r1, r11, 768
0022a4  0d000204  ew_cfg zero, r4, zero, 2
0022a8  cdd01000  hp_ssmul r1, r1, r1, 0
0022ac  9b900248  ori r1, r5, 1152
0022b0  0d000204  ew_cfg zero, r4, zero, 2
0022b4  8d300008  ewcoeff_nlf_cfg r1, 4
0022b8  9b900538  ori r1, r11, 896
0022bc  0d000204  ew_cfg zero, r4, zero, 2
0022c0  cdd01000  hp_ssmul r1, r1, r1, 0
0022c4  9b900250  ori r1, r5, 1280
0022c8  0d000026  ew_cfg zero, zero, zero, 19
0022cc  1d100d00  unlock r26
0022d0  1d000d00  lock zero, r26
0022d4  0d000002  ew_cfg zero, zero, zero, 1
0022d8  0d110000  ewcoeff_cfg r2, zero, zero, 0
0022dc  8d010006  ew_cfg r3, zero, zero, 3
0022e0  0d0d0d26  ew_cfg r26, r26, zero, 19
0022e4  0d000204  ew_cfg zero, r4, zero, 2
0022e8  8d300008  ewcoeff_nlf_cfg r1, 4
0022ec  9b900540  ori r1, r11, 1024
0022f0  0d000204  ew_cfg zero, r4, zero, 2
0022f4  cdd01000  hp_ssmul r1, r1, r1, 0
0022f8  9b900258  ori r1, r5, 1408
0022fc  0d000204  ew_cfg zero, r4, zero, 2
002300  8d300008  ewcoeff_nlf_cfg r1, 4
002304  9b900548  ori r1, r11, 1152
002308  0d000204  ew_cfg zero, r4, zero, 2
00230c  cdd01000  hp_ssmul r1, r1, r1, 0
002310  9b900260  ori r1, r5, 1536
002314  0d000026  ew_cfg zero, zero, zero, 19
002318  1d100d00  unlock r26
00231c  1d000d00  lock zero, r26
002320  0d000002  ew_cfg zero, zero, zero, 1
002324  0d110000  ewcoeff_cfg r2, zero, zero, 0
002328  8d010006  ew_cfg r3, zero, zero, 3
00232c  0d0d0d26  ew_cfg r26, r26, zero, 19
002330  0d000204  ew_cfg zero, r4, zero, 2
002334  8d300008  ewcoeff_nlf_cfg r1, 4
002338  9b900550  ori r1, r11, 1280
00233c  0d000204  ew_cfg zero, r4, zero, 2
002340  cdd01000  hp_ssmul r1, r1, r1, 0
002344  9b900268  ori r1, r5, 1664
002348  0d000204  ew_cfg zero, r4, zero, 2
00234c  8d300008  ewcoeff_nlf_cfg r1, 4
002350  9b900558  ori r1, r11, 1408
002354  0d000204  ew_cfg zero, r4, zero, 2
002358  cdd01000  hp_ssmul r1, r1, r1, 0
00235c  9b900270  ori r1, r5, 1792
002360  0d000026  ew_cfg zero, zero, zero, 19
002364  1d100d00  unlock r26
002368  1d000d00  lock zero, r26
00236c  0d000002  ew_cfg zero, zero, zero, 1
002370  0d110000  ewcoeff_cfg r2, zero, zero, 0
002374  8d010006  ew_cfg r3, zero, zero, 3
002378  0d0d0d26  ew_cfg r26, r26, zero, 19
00237c  0d000204  ew_cfg zero, r4, zero, 2
002380  8d300008  ewcoeff_nlf_cfg r1, 4
002384  9b900560  ori r1, r11, 1536
002388  0d000204  ew_cfg zero, r4, zero, 2
00238c  cdd01000  hp_ssmul r1, r1, r1, 0
002390  9b900278  ori r1, r5, 1920
002394  0d000204  ew_cfg zero, r4, zero, 2
002398  8d300008  ewcoeff_nlf_cfg r1, 4
00239c  9b900568  ori r1, r11, 1664
0023a0  0d000204  ew_cfg zero, r4, zero, 2
0023a4  cdd01000  hp_ssmul r1, r1, r1, 0
0023a8  9b900280  ori r1, r5, 2048
0023ac  0d000026  ew_cfg zero, zero, zero, 19
0023b0  1d100d00  unlock r26
0023b4  1d000d00  lock zero, r26
0023b8  0d000002  ew_cfg zero, zero, zero, 1
0023bc  0d110000  ewcoeff_cfg r2, zero, zero, 0
0023c0  8d010006  ew_cfg r3, zero, zero, 3
0023c4  0d0d0d26  ew_cfg r26, r26, zero, 19
0023c8  0d000204  ew_cfg zero, r4, zero, 2
0023cc  8d300008  ewcoeff_nlf_cfg r1, 4
0023d0  9b900570  ori r1, r11, 1792
0023d4  0d000204  ew_cfg zero, r4, zero, 2
0023d8  cdd01000  hp_ssmul r1, r1, r1, 0
0023dc  9b900288  ori r1, r5, 2176
0023e0  0d000204  ew_cfg zero, r4, zero, 2
0023e4  8d300008  ewcoeff_nlf_cfg r1, 4
0023e8  9b900578  ori r1, r11, 1920
0023ec  0d000204  ew_cfg zero, r4, zero, 2
0023f0  cdd01000  hp_ssmul r1, r1, r1, 0
0023f4  9b900290  ori r1, r5, 2304
0023f8  0d000026  ew_cfg zero, zero, zero, 19
0023fc  1d100d00  unlock r26
002400  1d000d00  lock zero, r26
002404  0d000002  ew_cfg zero, zero, zero, 1
002408  0d110000  ewcoeff_cfg r2, zero, zero, 0
00240c  8d010006  ew_cfg r3, zero, zero, 3
002410  0d0d0d26  ew_cfg r26, r26, zero, 19
002414  0d000204  ew_cfg zero, r4, zero, 2
002418  8d300008  ewcoeff_nlf_cfg r1, 4
00241c  9b900580  ori r1, r11, 2048
002420  0d000204  ew_cfg zero, r4, zero, 2
002424  cdd01000  hp_ssmul r1, r1, r1, 0
002428  9b900298  ori r1, r5, 2432
00242c  0d000204  ew_cfg zero, r4, zero, 2
002430  8d300008  ewcoeff_nlf_cfg r1, 4
002434  9b900588  ori r1, r11, 2176
002438  0d000204  ew_cfg zero, r4, zero, 2
00243c  cdd01000  hp_ssmul r1, r1, r1, 0
002440  9b9002a0  ori r1, r5, 2560
002444  0d000026  ew_cfg zero, zero, zero, 19
002448  1d100d00  unlock r26
00244c  1d000d00  lock zero, r26
002450  0d000002  ew_cfg zero, zero, zero, 1
002454  0d110000  ewcoeff_cfg r2, zero, zero, 0
002458  8d010006  ew_cfg r3, zero, zero, 3
00245c  0d0d0d26  ew_cfg r26, r26, zero, 19
002460  0d000204  ew_cfg zero, r4, zero, 2
002464  8d300008  ewcoeff_nlf_cfg r1, 4
002468  9b900590  ori r1, r11, 2304
00246c  0d000204  ew_cfg zero, r4, zero, 2
002470  cdd01000  hp_ssmul r1, r1, r1, 0
002474  9b9002a8  ori r1, r5, 2688
002478  0d000204  ew_cfg zero, r4, zero, 2
00247c  8d300008  ewcoeff_nlf_cfg r1, 4
002480  9b900598  ori r1, r11, 2432
002484  0d000204  ew_cfg zero, r4, zero, 2
002488  cdd01000  hp_ssmul r1, r1, r1, 0
00248c  9b9002b0  ori r1, r5, 2816
002490  0d000026  ew_cfg zero, zero, zero, 19
002494  1d100d00  unlock r26
002498  1d000d00  lock zero, r26
00249c  0d000002  ew_cfg zero, zero, zero, 1
0024a0  0d110000  ewcoeff_cfg r2, zero, zero, 0
0024a4  8d010006  ew_cfg r3, zero, zero, 3
0024a8  0d0d0d26  ew_cfg r26, r26, zero, 19
0024ac  0d000204  ew_cfg zero, r4, zero, 2
0024b0  8d300008  ewcoeff_nlf_cfg r1, 4
0024b4  9b9005a0  ori r1, r11, 2560
0024b8  0d000204  ew_cfg zero, r4, zero, 2
0024bc  cdd01000  hp_ssmul r1, r1, r1, 0
0024c0  9b9002b8  ori r1, r5, 2944
0024c4  0d000204  ew_cfg zero, r4, zero, 2
0024c8  8d300008  ewcoeff_nlf_cfg r1, 4
0024cc  9b9005a8  ori r1, r11, 2688
0024d0  0d000204  ew_cfg zero, r4, zero, 2
0024d4  cdd01000  hp_ssmul r1, r1, r1, 0
0024d8  9b9002c0  ori r1, r5, 3072
0024dc  0d000026  ew_cfg zero, zero, zero, 19
0024e0  1d100d00  unlock r26
0024e4  1d000d00  lock zero, r26
0024e8  0d000002  ew_cfg zero, zero, zero, 1
0024ec  0d110000  ewcoeff_cfg r2, zero, zero, 0
0024f0  8d010006  ew_cfg r3, zero, zero, 3
0024f4  0d0d0d26  ew_cfg r26, r26, zero, 19
0024f8  0d000204  ew_cfg zero, r4, zero, 2
0024fc  8d300008  ewcoeff_nlf_cfg r1, 4
002500  9b9005b0  ori r1, r11, 2816
002504  0d000204  ew_cfg zero, r4, zero, 2
002508  cdd01000  hp_ssmul r1, r1, r1, 0
00250c  9b9002c8  ori r1, r5, 3200
002510  0d000204  ew_cfg zero, r4, zero, 2
002514  8d300008  ewcoeff_nlf_cfg r1, 4
002518  9b9005b8  ori r1, r11, 2944
00251c  0d000204  ew_cfg zero, r4, zero, 2
002520  cdd01000  hp_ssmul r1, r1, r1, 0
002524  9b9002d0  ori r1, r5, 3328
002528  0d000026  ew_cfg zero, zero, zero, 19
00252c  1d100d00  unlock r26
002530  1d000d00  lock zero, r26
002534  0d000002  ew_cfg zero, zero, zero, 1
002538  0d110000  ewcoeff_cfg r2, zero, zero, 0
00253c  8d010006  ew_cfg r3, zero, zero, 3
002540  0d0d0d26  ew_cfg r26, r26, zero, 19
002544  0d000204  ew_cfg zero, r4, zero, 2
002548  8d300008  ewcoeff_nlf_cfg r1, 4
00254c  9b9005c0  ori r1, r11, 3072
002550  0d000204  ew_cfg zero, r4, zero, 2
002554  cdd01000  hp_ssmul r1, r1, r1, 0
002558  9b9002d8  ori r1, r5, 3456
00255c  0d000204  ew_cfg zero, r4, zero, 2
002560  8d300008  ewcoeff_nlf_cfg r1, 4
002564  9b9005c8  ori r1, r11, 3200
002568  0d000204  ew_cfg zero, r4, zero, 2
00256c  cdd01000  hp_ssmul r1, r1, r1, 0
002570  9b9002e0  ori r1, r5, 3584
002574  0d000026  ew_cfg zero, zero, zero, 19
002578  1d100d00  unlock r26
00257c  1d000d00  lock zero, r26
002580  0d000002  ew_cfg zero, zero, zero, 1
002584  0d110000  ewcoeff_cfg r2, zero, zero, 0
002588  8d010006  ew_cfg r3, zero, zero, 3
00258c  0d0d0d26  ew_cfg r26, r26, zero, 19
002590  0d000204  ew_cfg zero, r4, zero, 2
002594  8d300008  ewcoeff_nlf_cfg r1, 4
002598  9b9005d0  ori r1, r11, 3328
00259c  0d000204  ew_cfg zero, r4, zero, 2
0025a0  cdd01000  hp_ssmul r1, r1, r1, 0
0025a4  9b9002e8  ori r1, r5, 3712
0025a8  0d000204  ew_cfg zero, r4, zero, 2
0025ac  8d300008  ewcoeff_nlf_cfg r1, 4
0025b0  9b9005d8  ori r1, r11, 3456
0025b4  0d000204  ew_cfg zero, r4, zero, 2
0025b8  cdd01000  hp_ssmul r1, r1, r1, 0
0025bc  9b9002f0  ori r1, r5, 3840
0025c0  0d000026  ew_cfg zero, zero, zero, 19
0025c4  1d100d00  unlock r26
0025c8  1d000d00  lock zero, r26
0025cc  0d000002  ew_cfg zero, zero, zero, 1
0025d0  0d110000  ewcoeff_cfg r2, zero, zero, 0
0025d4  8d010006  ew_cfg r3, zero, zero, 3
0025d8  0d0d0d26  ew_cfg r26, r26, zero, 19
0025dc  0d000204  ew_cfg zero, r4, zero, 2
0025e0  8d300008  ewcoeff_nlf_cfg r1, 4
0025e4  9b9005e0  ori r1, r11, 3584
0025e8  0d000204  ew_cfg zero, r4, zero, 2
0025ec  cdd01000  hp_ssmul r1, r1, r1, 0
0025f0  9b9002f8  ori r1, r5, 3968
0025f4  ab320200  lui r5, 35
0025f8  0d000204  ew_cfg zero, r4, zero, 2
0025fc  8d300008  ewcoeff_nlf_cfg r1, 4
002600  9b9005e8  ori r1, r11, 3712
002604  0d000204  ew_cfg zero, r4, zero, 2
002608  cdd01000  hp_ssmul r1, r1, r1, 0
00260c  9b9005f0  ori r1, r11, 3840
002610  0d000026  ew_cfg zero, zero, zero, 19
002614  1d100d00  unlock r26
002618  1d000d00  lock zero, r26
00261c  0d000002  ew_cfg zero, zero, zero, 1
002620  0d110000  ewcoeff_cfg r2, zero, zero, 0
002624  8d010006  ew_cfg r3, zero, zero, 3
002628  0d0d0d26  ew_cfg r26, r26, zero, 19
00262c  0d000204  ew_cfg zero, r4, zero, 2
002630  8d320008  ewcoeff_nlf_cfg r5, 4
002634  0d000204  ew_cfg zero, r4, zero, 2
002638  cdd01000  hp_ssmul r1, r1, r1, 0
00263c  9b900208  ori r1, r5, 128
002640  0d000204  ew_cfg zero, r4, zero, 2
002644  8d300008  ewcoeff_nlf_cfg r1, 4
002648  9b9005f8  ori r1, r11, 3968
00264c  abf50000  lui r11, 15
002650  0d000204  ew_cfg zero, r4, zero, 2
002654  cdd01000  hp_ssmul r1, r1, r1, 0
002658  9b900210  ori r1, r5, 256
00265c  0d000026  ew_cfg zero, zero, zero, 19
002660  1d100d00  unlock r26
002664  1d000d00  lock zero, r26
002668  0d000002  ew_cfg zero, zero, zero, 1
00266c  0d110000  ewcoeff_cfg r2, zero, zero, 0
002670  8d010006  ew_cfg r3, zero, zero, 3
002674  0d0d0d26  ew_cfg r26, r26, zero, 19
002678  0d000204  ew_cfg zero, r4, zero, 2
00267c  8d300008  ewcoeff_nlf_cfg r1, 4
002680  9b900218  ori r1, r5, 384
002684  0d000204  ew_cfg zero, r4, zero, 2
002688  cdd5b500  hp_ssmul r11, r11, r11, 0
00268c  0d000204  ew_cfg zero, r4, zero, 2
002690  8d300008  ewcoeff_nlf_cfg r1, 4
002694  9b900508  ori r1, r11, 128
002698  0d000204  ew_cfg zero, r4, zero, 2
00269c  cdd01000  hp_ssmul r1, r1, r1, 0
0026a0  9b900220  ori r1, r5, 512
0026a4  0d000026  ew_cfg zero, zero, zero, 19
0026a8  1d100d00  unlock r26
0026ac  1d000d00  lock zero, r26
0026b0  0d000002  ew_cfg zero, zero, zero, 1
0026b4  0d110000  ewcoeff_cfg r2, zero, zero, 0
0026b8  8d010006  ew_cfg r3, zero, zero, 3
0026bc  0d0d0d26  ew_cfg r26, r26, zero, 19
0026c0  0d000204  ew_cfg zero, r4, zero, 2
0026c4  8d300008  ewcoeff_nlf_cfg r1, 4
0026c8  9b900510  ori r1, r11, 256
0026cc  0d000204  ew_cfg zero, r4, zero, 2
0026d0  cdd01000  hp_ssmul r1, r1, r1, 0
0026d4  9b900228  ori r1, r5, 640
0026d8  0d000204  ew_cfg zero, r4, zero, 2
0026dc  8d300008  ewcoeff_nlf_cfg r1, 4
0026e0  9b900518  ori r1, r11, 384
0026e4  0d000204  ew_cfg zero, r4, zero, 2
0026e8  cdd01000  hp_ssmul r1, r1, r1, 0
0026ec  9b900230  ori r1, r5, 768
0026f0  0d000026  ew_cfg zero, zero, zero, 19
0026f4  1d100d00  unlock r26
0026f8  1d000d00  lock zero, r26
0026fc  0d000002  ew_cfg zero, zero, zero, 1
002700  0d110000  ewcoeff_cfg r2, zero, zero, 0
002704  8d010006  ew_cfg r3, zero, zero, 3
002708  0d0d0d26  ew_cfg r26, r26, zero, 19
00270c  0d000204  ew_cfg zero, r4, zero, 2
002710  8d300008  ewcoeff_nlf_cfg r1, 4
002714  9b900520  ori r1, r11, 512
002718  0d000204  ew_cfg zero, r4, zero, 2
00271c  cdd01000  hp_ssmul r1, r1, r1, 0
002720  9b900238  ori r1, r5, 896
002724  0d000204  ew_cfg zero, r4, zero, 2
002728  8d300008  ewcoeff_nlf_cfg r1, 4
00272c  9b900528  ori r1, r11, 640
002730  0d000204  ew_cfg zero, r4, zero, 2
002734  cdd01000  hp_ssmul r1, r1, r1, 0
002738  9b900240  ori r1, r5, 1024
00273c  0d000026  ew_cfg zero, zero, zero, 19
002740  1d100d00  unlock r26
002744  1d000d00  lock zero, r26
002748  0d000002  ew_cfg zero, zero, zero, 1
00274c  0d110000  ewcoeff_cfg r2, zero, zero, 0
002750  8d010006  ew_cfg r3, zero, zero, 3
002754  0d0d0d26  ew_cfg r26, r26, zero, 19
002758  0d000204  ew_cfg zero, r4, zero, 2
00275c  8d300008  ewcoeff_nlf_cfg r1, 4
002760  9b900530  ori r1, r11, 768
002764  0d000204  ew_cfg zero, r4, zero, 2
002768  cdd01000  hp_ssmul r1, r1, r1, 0
00276c  9b900248  ori r1, r5, 1152
002770  0d000204  ew_cfg zero, r4, zero, 2
002774  8d300008  ewcoeff_nlf_cfg r1, 4
002778  9b900538  ori r1, r11, 896
00277c  0d000204  ew_cfg zero, r4, zero, 2
002780  cdd01000  hp_ssmul r1, r1, r1, 0
002784  9b900250  ori r1, r5, 1280
002788  0d000026  ew_cfg zero, zero, zero, 19
00278c  1d100d00  unlock r26
002790  1d000d00  lock zero, r26
002794  0d000002  ew_cfg zero, zero, zero, 1
002798  0d110000  ewcoeff_cfg r2, zero, zero, 0
00279c  8d010006  ew_cfg r3, zero, zero, 3
0027a0  0d0d0d26  ew_cfg r26, r26, zero, 19
0027a4  0d000204  ew_cfg zero, r4, zero, 2
0027a8  8d300008  ewcoeff_nlf_cfg r1, 4
0027ac  9b900540  ori r1, r11, 1024
0027b0  0d000204  ew_cfg zero, r4, zero, 2
0027b4  cdd01000  hp_ssmul r1, r1, r1, 0
0027b8  9b900258  ori r1, r5, 1408
0027bc  0d000204  ew_cfg zero, r4, zero, 2
0027c0  8d300008  ewcoeff_nlf_cfg r1, 4
0027c4  9b900548  ori r1, r11, 1152
0027c8  0d000204  ew_cfg zero, r4, zero, 2
0027cc  cdd01000  hp_ssmul r1, r1, r1, 0
0027d0  9b900260  ori r1, r5, 1536
0027d4  0d000026  ew_cfg zero, zero, zero, 19
0027d8  1d100d00  unlock r26
0027dc  1d000d00  lock zero, r26
0027e0  0d000002  ew_cfg zero, zero, zero, 1
0027e4  0d110000  ewcoeff_cfg r2, zero, zero, 0
0027e8  8d010006  ew_cfg r3, zero, zero, 3
0027ec  0d0d0d26  ew_cfg r26, r26, zero, 19
0027f0  0d000204  ew_cfg zero, r4, zero, 2
0027f4  8d300008  ewcoeff_nlf_cfg r1, 4
0027f8  9b900550  ori r1, r11, 1280
0027fc  0d000204  ew_cfg zero, r4, zero, 2
002800  cdd01000  hp_ssmul r1, r1, r1, 0
002804  9b900268  ori r1, r5, 1664
002808  0d000204  ew_cfg zero, r4, zero, 2
00280c  8d300008  ewcoeff_nlf_cfg r1, 4
002810  9b900558  ori r1, r11, 1408
002814  0d000204  ew_cfg zero, r4, zero, 2
002818  cdd01000  hp_ssmul r1, r1, r1, 0
00281c  9b900270  ori r1, r5, 1792
002820  0d000026  ew_cfg zero, zero, zero, 19
002824  1d100d00  unlock r26
002828  1d000d00  lock zero, r26
00282c  0d000002  ew_cfg zero, zero, zero, 1
002830  0d110000  ewcoeff_cfg r2, zero, zero, 0
002834  8d010006  ew_cfg r3, zero, zero, 3
002838  0d0d0d26  ew_cfg r26, r26, zero, 19
00283c  0d000204  ew_cfg zero, r4, zero, 2
002840  8d300008  ewcoeff_nlf_cfg r1, 4
002844  9b900560  ori r1, r11, 1536
002848  0d000204  ew_cfg zero, r4, zero, 2
00284c  cdd01000  hp_ssmul r1, r1, r1, 0
002850  9b900278  ori r1, r5, 1920
002854  0d000204  ew_cfg zero, r4, zero, 2
002858  8d300008  ewcoeff_nlf_cfg r1, 4
00285c  9b900568  ori r1, r11, 1664
002860  0d000204  ew_cfg zero, r4, zero, 2
002864  cdd01000  hp_ssmul r1, r1, r1, 0
002868  9b900280  ori r1, r5, 2048
00286c  0d000026  ew_cfg zero, zero, zero, 19
002870  1d100d00  unlock r26
002874  1d000d00  lock zero, r26
002878  0d000002  ew_cfg zero, zero, zero, 1
00287c  0d110000  ewcoeff_cfg r2, zero, zero, 0
002880  8d010006  ew_cfg r3, zero, zero, 3
002884  0d0d0d26  ew_cfg r26, r26, zero, 19
002888  0d000204  ew_cfg zero, r4, zero, 2
00288c  8d300008  ewcoeff_nlf_cfg r1, 4
002890  9b900570  ori r1, r11, 1792
002894  0d000204  ew_cfg zero, r4, zero, 2
002898  cdd01000  hp_ssmul r1, r1, r1, 0
00289c  9b900288  ori r1, r5, 2176
0028a0  0d000204  ew_cfg zero, r4, zero, 2
0028a4  8d300008  ewcoeff_nlf_cfg r1, 4
0028a8  9b900578  ori r1, r11, 1920
0028ac  0d000204  ew_cfg zero, r4, zero, 2
0028b0  cdd01000  hp_ssmul r1, r1, r1, 0
0028b4  9b900290  ori r1, r5, 2304
0028b8  0d000026  ew_cfg zero, zero, zero, 19
0028bc  1d100d00  unlock r26
0028c0  1d000d00  lock zero, r26
0028c4  0d000002  ew_cfg zero, zero, zero, 1
0028c8  0d110000  ewcoeff_cfg r2, zero, zero, 0
0028cc  8d010006  ew_cfg r3, zero, zero, 3
0028d0  0d0d0d26  ew_cfg r26, r26, zero, 19
0028d4  0d000204  ew_cfg zero, r4, zero, 2
0028d8  8d300008  ewcoeff_nlf_cfg r1, 4
0028dc  9b900580  ori r1, r11, 2048
0028e0  0d000204  ew_cfg zero, r4, zero, 2
0028e4  cdd01000  hp_ssmul r1, r1, r1, 0
0028e8  9b900298  ori r1, r5, 2432
0028ec  0d000204  ew_cfg zero, r4, zero, 2
0028f0  8d300008  ewcoeff_nlf_cfg r1, 4
0028f4  9b900588  ori r1, r11, 2176
0028f8  0d000204  ew_cfg zero, r4, zero, 2
0028fc  cdd01000  hp_ssmul r1, r1, r1, 0
002900  9b9002a0  ori r1, r5, 2560
002904  0d000026  ew_cfg zero, zero, zero, 19
002908  1d100d00  unlock r26
00290c  1d000d00  lock zero, r26
002910  0d000002  ew_cfg zero, zero, zero, 1
002914  0d110000  ewcoeff_cfg r2, zero, zero, 0
002918  8d010006  ew_cfg r3, zero, zero, 3
00291c  0d0d0d26  ew_cfg r26, r26, zero, 19
002920  0d000204  ew_cfg zero, r4, zero, 2
002924  8d300008  ewcoeff_nlf_cfg r1, 4
002928  9b900590  ori r1, r11, 2304
00292c  0d000204  ew_cfg zero, r4, zero, 2
002930  cdd01000  hp_ssmul r1, r1, r1, 0
002934  9b9002a8  ori r1, r5, 2688
002938  0d000204  ew_cfg zero, r4, zero, 2
00293c  8d300008  ewcoeff_nlf_cfg r1, 4
002940  9b900598  ori r1, r11, 2432
002944  0d000204  ew_cfg zero, r4, zero, 2
002948  cdd01000  hp_ssmul r1, r1, r1, 0
00294c  9b9002b0  ori r1, r5, 2816
002950  0d000026  ew_cfg zero, zero, zero, 19
002954  1d100d00  unlock r26
002958  1d000d00  lock zero, r26
00295c  0d000002  ew_cfg zero, zero, zero, 1
002960  0d110000  ewcoeff_cfg r2, zero, zero, 0
002964  8d010006  ew_cfg r3, zero, zero, 3
002968  0d0d0d26  ew_cfg r26, r26, zero, 19
00296c  0d000204  ew_cfg zero, r4, zero, 2
002970  8d300008  ewcoeff_nlf_cfg r1, 4
002974  9b9005a0  ori r1, r11, 2560
002978  0d000204  ew_cfg zero, r4, zero, 2
00297c  cdd01000  hp_ssmul r1, r1, r1, 0
002980  9b9002b8  ori r1, r5, 2944
002984  0d000204  ew_cfg zero, r4, zero, 2
002988  8d300008  ewcoeff_nlf_cfg r1, 4
00298c  9b9005a8  ori r1, r11, 2688
002990  0d000204  ew_cfg zero, r4, zero, 2
002994  cdd01000  hp_ssmul r1, r1, r1, 0
002998  9b9002c0  ori r1, r5, 3072
00299c  0d000026  ew_cfg zero, zero, zero, 19
0029a0  1d100d00  unlock r26
0029a4  1d000d00  lock zero, r26
0029a8  0d000002  ew_cfg zero, zero, zero, 1
0029ac  0d110000  ewcoeff_cfg r2, zero, zero, 0
0029b0  8d010006  ew_cfg r3, zero, zero, 3
0029b4  0d0d0d26  ew_cfg r26, r26, zero, 19
0029b8  0d000204  ew_cfg zero, r4, zero, 2
0029bc  8d300008  ewcoeff_nlf_cfg r1, 4
0029c0  9b9005b0  ori r1, r11, 2816
0029c4  0d000204  ew_cfg zero, r4, zero, 2
0029c8  cdd01000  hp_ssmul r1, r1, r1, 0
0029cc  9b9002c8  ori r1, r5, 3200
0029d0  0d000204  ew_cfg zero, r4, zero, 2
0029d4  8d300008  ewcoeff_nlf_cfg r1, 4
0029d8  9b9005b8  ori r1, r11, 2944
0029dc  0d000204  ew_cfg zero, r4, zero, 2
0029e0  cdd01000  hp_ssmul r1, r1, r1, 0
0029e4  9b9002d0  ori r1, r5, 3328
0029e8  0d000026  ew_cfg zero, zero, zero, 19
0029ec  1d100d00  unlock r26
0029f0  1d000d00  lock zero, r26
0029f4  0d000002  ew_cfg zero, zero, zero, 1
0029f8  0d110000  ewcoeff_cfg r2, zero, zero, 0
0029fc  8d010006  ew_cfg r3, zero, zero, 3
002a00  0d0d0d26  ew_cfg r26, r26, zero, 19
002a04  0d000204  ew_cfg zero, r4, zero, 2
002a08  8d300008  ewcoeff_nlf_cfg r1, 4
002a0c  9b9005c0  ori r1, r11, 3072
002a10  0d000204  ew_cfg zero, r4, zero, 2
002a14  cdd01000  hp_ssmul r1, r1, r1, 0
002a18  9b9002d8  ori r1, r5, 3456
002a1c  0d000204  ew_cfg zero, r4, zero, 2
002a20  8d300008  ewcoeff_nlf_cfg r1, 4
002a24  9b9005c8  ori r1, r11, 3200
002a28  0d000204  ew_cfg zero, r4, zero, 2
002a2c  cdd01000  hp_ssmul r1, r1, r1, 0
002a30  9b9002e0  ori r1, r5, 3584
002a34  0d000026  ew_cfg zero, zero, zero, 19
002a38  1d100d00  unlock r26
002a3c  1d000d00  lock zero, r26
002a40  0d000002  ew_cfg zero, zero, zero, 1
002a44  0d110000  ewcoeff_cfg r2, zero, zero, 0
002a48  8d010006  ew_cfg r3, zero, zero, 3
002a4c  0d0d0d26  ew_cfg r26, r26, zero, 19
002a50  0d000204  ew_cfg zero, r4, zero, 2
002a54  8d300008  ewcoeff_nlf_cfg r1, 4
002a58  9b9005d0  ori r1, r11, 3328
002a5c  0d000204  ew_cfg zero, r4, zero, 2
002a60  cdd01000  hp_ssmul r1, r1, r1, 0
002a64  9b9002e8  ori r1, r5, 3712
002a68  0d000204  ew_cfg zero, r4, zero, 2
002a6c  8d300008  ewcoeff_nlf_cfg r1, 4
002a70  9b9005d8  ori r1, r11, 3456
002a74  0d000204  ew_cfg zero, r4, zero, 2
002a78  cdd01000  hp_ssmul r1, r1, r1, 0
002a7c  9b9002f0  ori r1, r5, 3840
002a80  0d000026  ew_cfg zero, zero, zero, 19
002a84  1d100d00  unlock r26
002a88  1d000d00  lock zero, r26
002a8c  0d000002  ew_cfg zero, zero, zero, 1
002a90  0d110000  ewcoeff_cfg r2, zero, zero, 0
002a94  8d010006  ew_cfg r3, zero, zero, 3
002a98  0d0d0d26  ew_cfg r26, r26, zero, 19
002a9c  0d000204  ew_cfg zero, r4, zero, 2
002aa0  8d300008  ewcoeff_nlf_cfg r1, 4
002aa4  9b9005e0  ori r1, r11, 3584
002aa8  0d000204  ew_cfg zero, r4, zero, 2
002aac  cdd01000  hp_ssmul r1, r1, r1, 0
002ab0  9b9002f8  ori r1, r5, 3968
002ab4  0d000204  ew_cfg zero, r4, zero, 2
002ab8  8d300008  ewcoeff_nlf_cfg r1, 4
002abc  9b9005e8  ori r1, r11, 3712
002ac0  0d000204  ew_cfg zero, r4, zero, 2
002ac4  cdd01000  hp_ssmul r1, r1, r1, 0
002ac8  9b9005f0  ori r1, r11, 3840
002acc  0d000026  ew_cfg zero, zero, zero, 19
002ad0  1d100d00  unlock r26
002ad4  1d000d00  lock zero, r26
002ad8  0d000002  ew_cfg zero, zero, zero, 1
002adc  0d110000  ewcoeff_cfg r2, zero, zero, 0
002ae0  2b410200  lui r2, 36
002ae4  8d010006  ew_cfg r3, zero, zero, 3
002ae8  0d0d0d26  ew_cfg r26, r26, zero, 19
002aec  0d000204  ew_cfg zero, r4, zero, 2
002af0  0d310008  ewcoeff_nlf_cfg r2, 4
002af4  0d000204  ew_cfg zero, r4, zero, 2
002af8  cdd01000  hp_ssmul r1, r1, r1, 0
002afc  9b100108  ori r1, r2, 128
002b00  0d000204  ew_cfg zero, r4, zero, 2
002b04  8d300008  ewcoeff_nlf_cfg r1, 4
002b08  9b9005f8  ori r1, r11, 3968
002b0c  0d000204  ew_cfg zero, r4, zero, 2
002b10  cdd01000  hp_ssmul r1, r1, r1, 0
002b14  9f602000  addli r1, zero, 22
002b18  0d000026  ew_cfg zero, zero, zero, 19
002b1c  1d100d00  unlock r26
002b20  7d000400  xsignal r8, 0
002b24  7d900000  xwait r1, 0
002b28  1d000d00  lock zero, r26
002b2c  ab000042  lui r1, 270336
002b30  0d000002  ew_cfg zero, zero, zero, 1
002b34  0d101000  ewcoeff_cfg zero, zero, r1, 0
002b38  9f402000  addli r1, zero, 20
002b3c  0d0d0006  ew_cfg r26, zero, zero, 3
002b40  0d000504  ew_cfg zero, r10, zero, 2
002b44  0d0dad27  ew_cfg r26, r26, r26, 19
002b48  6d0c9c94  dsselect r24, r24, r9, 74
002b4c  0d000026  ew_cfg zero, zero, zero, 19
002b50  1d100d00  unlock r26
002b54  7d800000  xsignal r1, 0
002b58  9f603000  addli r1, zero, 30
002b5c  7d800000  xsignal r1, 0
002b60  e300afff  loadli.w r1,  -48(r30)
002b64  b79d00ea  beq r1, zero, -10396
002b68  5b080000  j 64
002b6c  9f503000  addli r1, zero, 29
002b70  00200100  mfence { sm }
002b74  1f2d0000  addli r26, zero, 2
002b78  2b490000  lui r18, 4
002b7c  7d800000  xsignal r1, 0
002b80  9f204000  addli r1, zero, 34
002b84  7d800000  xsignal r1, 0
002b88  9f504000  addli r1, zero, 37
002b8c  7d800000  xsignal r1, 0
002b90  9f005000  addli r1, zero, 40
002b94  7d800000  xsignal r1, 0
002b98  9f205000  addli r1, zero, 42
002b9c  7d800000  xsignal r1, 0
002ba0  e30bbfff  loadli.w r23,  -40(r30)
002ba4  e308dfff  loadli.w r17,  -24(r30)
002ba8  9f400000  addli r1, zero, 4
002bac  7d100d00  xwait r26, 0
002bb0  33010028  zext_int2long r[3:4], zero
002bb4  7d900000  xwait r1, 0
002bb8  9f402000  addli r1, zero, 20
002bbc  7d900000  xwait r1, 0
002bc0  9f103000  addli r1, zero, 25
002bc4  7d900000  xwait r1, 0
002bc8  9f603000  addli r1, zero, 30
002bcc  7d900000  xwait r1, 0
002bd0  9f205000  addli r1, zero, 42
002bd4  7d900000  xwait r1, 0
002bd8  3d000000  xfence
002bdc  00a00300  mfence { lm, sm, gm }
002be0  73302ffa  store.d r[3:4], -96(r30)
002be4  6347cfff  loadli.w r14,  -28(r30)
002be8  5b030000  j 24
002bec  eb500ffb  load.d r[2:3], -80(r30)
002bf0  eb518ffa  load.d r[4:5], -88(r30)
002bf4  93a01104  setlt.ul r1, r[4:5], r[2:3]
002bf8  27910100  addli.d r[3:4], r[4:5], 1
002bfc  b7da0000  beq r1, zero, 692
002c00  9f600000  addli r1, zero, 6
002c04  6b5d0ffa  load.d r[27:28], -96(r30)
002c08  73342ffa  store.d r[3:4], -88(r30)
002c0c  17321102  sll.d r[5:6], r[3:4], r1
002c10  9f700000  addli r1, zero, 7
002c14  97371102  sll.d r[16:17], r[3:4], r1
002c18  73384ffc  store.d r[5:6], -48(r30)
002c1c  db070000  j 60
002c20  274d0d00  addli.d r[27:28], r[27:28], 4
002c24  8b105410  add.s r1, r8, r5
002c28  abc40000  lui r9, 12
002c2c  e30bbfff  loadli.w r23,  -40(r30)
002c30  13226d02  setneq.d r4, r[27:28], r[7:8]
002c34  73e02000  stores.w r2, 0(r1)
002c38  6341dfff  loadli.w r2,  -20(r30)
002c3c  8b129410  add.s r5, r8, r9
002c40  8b10a410  add.s r1, r8, r10
002c44  73e03000  stores.w r3, 0(r1)
002c48  73e06201  stores.w r22, 0(r5)
002c4c  0b112410  add.s r2, r8, r2
002c50  73604101  stores.w r20, 0(r2)
002c54  376e02fe  beq r4, zero, -104
002c58  eb500ffd  load.d r[2:3], -48(r30)
002c5c  e302cfff  loadli.w r5,  -32(r30)
002c60  e345bfff  loadli.w r11,  -36(r30)
002c64  8b24fd10  add.ul r[10:11], r[27:28], r[16:17]
002c68  8b99e410  add.s r19, r9, r14
002c6c  8b201d10  add.ul r[2:3], r[27:28], r[2:3]
002c70  8b925410  add.s r5, r9, r5
002c74  8b95b410  add.s r11, r9, r11
002c78  8b941411  add.s r9, r9, r17
002c7c  1b154900  ori r10, r18, 4
002c80  e348ffff  loadli.w r17,  -4(r30)
002c84  1bb42000  slli r8, r1, 2
002c88  6f9c0500  loads.bu r24, 0(r11)
002c8c  ef950900  loads.bu r11, 0(r19)
002c90  6f970400  loads.bu r14, 0(r9)
002c94  9b198900  ori r19, r18, 8
002c98  ef920200  loads.bu r5, 0(r5)
002c9c  8b107411  add.s r1, r8, r23
002ca0  0b15a410  add.s r10, r8, r10
002ca4  8b1a1411  add.s r21, r8, r17
002ca8  8b142411  add.s r9, r8, r18
002cac  ab0880ff  lui r17, 1046528
002cb0  ef4b8400  loads.w r23, 8(r8)
002cb4  6f424400  loads.w r4, 4(r8)
002cb8  6f460400  loads.w r12, 0(r8)
002cbc  6fc1c000  loads.w r2, 12(r1)
002cc0  6f4e0500  loads.w r28, 0(r10)
002cc4  0b153411  add.s r10, r8, r19
002cc8  6fca0000  loads.w r20, 0(r1)
002ccc  efc64000  loads.w r13, 4(r1)
002cd0  efc18000  loads.w r3, 8(r1)
002cd4  ef40c400  loads.w r1, 12(r8)
002cd8  efc40400  loads.w r9, 0(r9)
002cdc  efcc0a00  loads.w r25, 0(r21)
002ce0  6fcb4a00  loads.w r22, 4(r21)
002ce4  efc98a00  loads.w r19, 8(r21)
002ce8  6f450500  loads.w r10, 0(r10)
002cec  93081101  seteq r17, r2, r17
002cf0  1797e800  or r14, r17, r14
002cf4  1b071700  andi r14, r14, 1
002cf8  3b300700  bneq r14, zero, 12
002cfc  efcaca00  loads.w r21, 12(r21)
002d00  5b020000  j 16
002d04  1b17c900  ori r14, r18, 12
002d08  0b17e410  add.s r14, r8, r14
002d0c  ef4a0700  loads.w r21, 0(r14)
002d10  2b0780ff  lui r14, 1046528
002d14  e308dfff  loadli.w r17,  -24(r30)
002d18  1387e100  seteq r14, r3, r14
002d1c  9715b700  or r11, r14, r11
002d20  9b851500  andi r11, r11, 1
002d24  3ba00500  bneq r11, zero, 8
002d28  1f850900  addli r10, r19, 0
002d2c  ab0580ff  lui r11, 1046528
002d30  2b07807f  lui r14, 522240
002d34  9385b600  seteq r11, r13, r11
002d38  97958501  or r11, r11, r24
002d3c  9b851500  andi r11, r11, 1
002d40  3ba00500  bneq r11, zero, 8
002d44  1f0e0b00  addli r28, r22, 0
002d48  ab0580ff  lui r11, 1046528
002d4c  9305ba00  seteq r11, r20, r11
002d50  97925500  or r5, r11, r5
002d54  9b821200  andi r5, r5, 1
002d58  b7c00200  beq r5, zero, 48
002d5c  bb50ea00  bneq r20, r14, 52
002d60  bbe0e600  bneq r13, r14, 56
002d64  bbf0e100  bneq r3, r14, 60
002d68  63459fff  loadli.w r10,  -52(r30)
002d6c  3720e100  beq r2, r14, 8
002d70  9f800a00  addli r1, r21, 0
002d74  9786a000  and r13, r1, r10
002d78  1301d704  setlt.u r2, r14, r13
002d7c  bb500100  bneq r2, zero, 52
002d80  1f810000  addli r2, r1, 0
002d84  db060000  j 52
002d88  9f840c00  addli r9, r25, 0
002d8c  375feafe  beq r20, r14, -44
002d90  1f860400  addli r12, r9, 0
002d94  37cfe6fe  beq r13, r14, -48
002d98  1f020e00  addli r4, r28, 0
002d9c  37bfe1fe  beq r3, r14, -52
002da0  9f0b0500  addli r23, r10, 0
002da4  63459fff  loadli.w r10,  -52(r30)
002da8  3b2fe1fe  bneq r2, r14, -56
002dac  5bf9ffff  j -56
002db0  2b014000  lui r2, 1024
002db4  17912000  or r2, r1, r2
002db8  9789ab00  and r19, r23, r10
002dbc  93013705  setlt.u r3, r14, r19
002dc0  3bb00100  bneq r3, zero, 12
002dc4  9f810b00  addli r3, r23, 0
002dc8  db010000  j 12
002dcc  ab014000  lui r3, 1024
002dd0  97913b00  or r3, r23, r3
002dd4  9702a200  and r5, r4, r10
002dd8  93045704  setlt.u r9, r14, r5
002ddc  3bb00400  bneq r9, zero, 12
002de0  1f0a0200  addli r20, r4, 0
002de4  db010000  j 12
002de8  ab044000  lui r9, 1024
002dec  171a9200  or r20, r4, r9
002df0  9704a600  and r9, r12, r10
002df4  13059704  setlt.u r10, r14, r9
002df8  3b300500  bneq r10, zero, 12
002dfc  1f0b0600  addli r22, r12, 0
002e00  db010000  j 12
002e04  2b054000  lui r10, 1024
002e08  171ba600  or r22, r12, r10
002e0c  e3059fff  loadli.w r11,  -56(r30)
002e10  6347cfff  loadli.w r14,  -28(r30)
002e14  93849504  setlt.u r9, r11, r9
002e18  bb800400  bneq r9, zero, 32
002e1c  9b440601  srli r9, r12, 16
002e20  6305ffff  loadli.w r10,  -8(r30)
002e24  9b841400  andi r9, r9, 1
002e28  8b149610  add.s r9, r12, r9
002e2c  8b94a410  add.s r9, r9, r10
002e30  2b05ffff  lui r10, 1048560
002e34  178ba400  and r22, r9, r10
002e38  93825504  setlt.u r5, r11, r5
002e3c  bb800200  bneq r5, zero, 32
002e40  9b420201  srli r5, r4, 16
002e44  9b821200  andi r5, r5, 1
002e48  0b125210  add.s r4, r4, r5
002e4c  e302ffff  loadli.w r5,  -8(r30)
002e50  0b125210  add.s r4, r4, r5
002e54  ab02ffff  lui r5, 1048560
002e58  170a5200  and r20, r4, r5
002e5c  13823505  setlt.u r4, r11, r19
002e60  6305efff  loadli.w r10,  -16(r30)
002e64  bb000200  bneq r4, zero, 32
002e68  9bc10b01  srli r3, r23, 16
002e6c  6302ffff  loadli.w r4,  -8(r30)
002e70  9b811100  andi r3, r3, 1
002e74  8b913b10  add.s r3, r23, r3
002e78  8b914110  add.s r3, r3, r4
002e7c  2b02ffff  lui r4, 1048560
002e80  97814100  and r3, r3, r4
002e84  1382d504  setlt.u r4, r11, r13
002e88  e342efff  loadli.w r5,  -12(r30)
002e8c  3b5602fe  bneq r4, zero, -620
002e90  1bc10001  srli r2, r1, 16
002e94  1b011100  andi r2, r2, 1
002e98  8b902010  add.s r1, r1, r2
002e9c  6301ffff  loadli.w r2,  -8(r30)
002ea0  8b902010  add.s r1, r1, r2
002ea4  2b01ffff  lui r2, 1048560
002ea8  17812000  and r2, r1, r2
002eac  dbaeffff  j -652
002eb0  9f300000  addli r1, zero, 3
002eb4  00200100  mfence { sm }
002eb8  9f5d0000  addli r27, zero, 5
002ebc  00370002  core_id r14
002ec0  1f2d0000  addli r26, zero, 2
002ec4  9f7c4000  addli r25, zero, 39
002ec8  9f7a6000  addli r21, zero, 55
002ecc  7d800000  xsignal r1, 0
002ed0  9f702000  addli r1, zero, 23
002ed4  7d800d00  xsignal r27, 0
002ed8  7d800000  xsignal r1, 0
002edc  9f203000  addli r1, zero, 26
002ee0  7d800000  xsignal r1, 0
002ee4  9f703000  addli r1, zero, 31
002ee8  7d800000  xsignal r1, 0
002eec  9f305000  addli r1, zero, 43
002ef0  7d800000  xsignal r1, 0
002ef4  634cffff  loadli.w r24,  -4(r30)
002ef8  634e9fff  loadli.w r28,  -52(r30)
002efc  3b3f07e8  bneq r14, zero, -11316
002f00  6b518ff8  load.d r[3:4], -120(r30)
002f04  9f102000  addli r1, zero, 17
002f08  6b538f01  load.d r[7:8], 24(r30)
002f0c  9f120000  addli r5, zero, 1
002f10  97301102  sll.d r[2:3], r[3:4], r1
002f14  eb510ff9  load.d r[4:5], -112(r30)
002f18  8b201310  add.ul r[2:3], r[7:8], r[2:3]
002f1c  1f733000  addli r6, zero, 31
002f20  97b15102  sll.d r[4:5], r[4:5], r5
002f24  7d100300  xwait r6, 0
002f28  1d800d00  lock zero, r27
002f2c  8ba03010  add.ul r[2:3], r[2:3], r[4:5]
002f30  95820200  dma_cfg r5, r5, zero, 0
002f34  9b910404  ori r3, r9, 64
002f38  1f028000  addli r4, zero, 64
002f3c  15800202  dma_cfg zero, r5, zero, 1
002f40  15010004  dma_cfg r2, zero, zero, 2
002f44  95804106  dma_cfg r1, r3, r4, 3
002f48  9f000001  addli r1, zero, 128
002f4c  1f010010  addli r2, zero, 2048
002f50  1582a009  dma_cfg r4, r1, r26, 4
002f54  9f000002  addli r1, zero, 256
002f58  1581400a  dma_cfg r2, r1, r4, 5
002f5c  9f004000  addli r1, zero, 32
002f60  15000010  dma_cfg zero, zero, zero, 8
002f64  35000000  dma_run zero
002f68  1500500a  dma_cfg zero, zero, r5, 5
002f6c  15000010  dma_cfg zero, zero, zero, 8
002f70  1d900d00  unlock r27
002f74  7d800000  xsignal r1, 0
002f78  5b6afaff  j -11440
002f7c  7d000000  xsignal zero, 0
002f80  bb600700  bneq r14, zero, 56
002f84  9f200000  addli r1, zero, 2
002f88  7d100000  xwait zero, 0
002f8c  7d100000  xwait zero, 0
002f90  7d100000  xwait zero, 0
002f94  7d100000  xwait zero, 0
002f98  7d100000  xwait zero, 0
002f9c  7d100000  xwait zero, 0
002fa0  7d100000  xwait zero, 0
002fa4  7d100000  xwait zero, 0
002fa8  1d800000  lock zero, r1
002fac  0d000020  ew_cfg zero, zero, zero, 16
002fb0  1d900000  unlock r1
002fb4  7d400000  xsignal_mode_cfg zero
002fb8  9f8e1e01  addli sp, sp, 136
002fbc  00a00300  mfence { lm, sm, gm }
002fc0  00100000  exit
002fc4  00100000  exit
002fc8  00100000  exit
002fcc  00100000  exit
002fd0  00100000  exit
002fd4  00100000  exit
002fd8  00100000  exit
002fdc  00100000  exit
002fe0  00100000  exit
002fe4  00100000  exit
002fe8  00100000  exit
002fec  00100000  exit
002ff0  00100000  exit
002ff4  00100000  exit
002ff8  00100000  exit
002ffc  00100000  exit
003000  00100000  exit
003004  00100000  exit
003008  00100000  exit
00300c  00100000  exit
003010  00100000  exit
003014  00100000  exit
003018  00100000  exit
00301c  00100000  exit
003020  00100000  exit
003024  00100000  exit
003028  00100000  exit
00302c  00100000  exit
003030  00100000  exit
003034  00100000  exit
003038  00100000  exit
00303c  00100000  exit
003040  00100000  exit
003044  00100000  exit
003048  00100000  exit
00304c  00100000  exit
003050  00100000  exit
003054  00100000  exit
003058  00100000  exit
00305c  00100000  exit
003060  00100000  exit
003064  00100000  exit
003068  00100000  exit
00306c  00100000  exit
003070  00100000  exit
003074  00100000  exit
003078  00100000  exit
00307c  00100000  exit
003080  00100000  exit
003084  00100000  exit
003088  00100000  exit
00308c  00100000  exit
003090  00100000  exit
003094  00100000  exit
003098  00100000  exit
00309c  00100000  exit
0030a0  00100000  exit
0030a4  00100000  exit
0030a8  00100000  exit
0030ac  00100000  exit
0030b0  00100000  exit
0030b4  00100000  exit
0030b8  00100000  exit
0030bc  00100000  exit
0030c0  00100000  exit
0030c4  00100000  exit
0030c8  00100000  exit
0030cc  00100000  exit
0030d0  00100000  exit
0030d4  00100000  exit
0030d8  00100000  exit
0030dc  00100000  exit
0030e0  00100000  exit
0030e4  00100000  exit
0030e8  00100000  exit
0030ec  00100000  exit
0030f0  00100000  exit
0030f4  00100000  exit
0030f8  00100000  exit
0030fc  00100000  exit
003100  00100000  exit
003104  00100000  exit
003108  00100000  exit
00310c  00100000  exit
003110  00100000  exit
003114  00100000  exit
003118  00100000  exit
00311c  00100000  exit
003120  00100000  exit
003124  00100000  exit
003128  00100000  exit
00312c  00100000  exit
003130  00100000  exit
003134  00100000  exit
003138  00100000  exit
00313c  00100000  exit
003140  00100000  exit
003144  00100000  exit
003148  00100000  exit
00314c  00100000  exit
003150  00100000  exit
003154  00100000  exit
003158  00100000  exit
00315c  00100000  exit
003160  00100000  exit
003164  00100000  exit
003168  00100000  exit
00316c  00100000  exit
003170  00100000  exit
003174  00100000  exit
003178  00100000  exit
00317c  00100000  exit
003180  00100000  exit
003184  00100000  exit
003188  00100000  exit
00318c  00100000  exit
003190  00100000  exit
003194  00100000  exit
003198  00100000  exit
00319c  00100000  exit
0031a0  00100000  exit
0031a4  00100000  exit
0031a8  00100000  exit
0031ac  00100000  exit
0031b0  00100000  exit
0031b4  00100000  exit
0031b8  00100000  exit
0031bc  00100000  exit
0031c0  00100000  exit
0031c4  00100000  exit
0031c8  00100000  exit
0031cc  00100000  exit
0031d0  00100000  exit
0031d4  00100000  exit
0031d8  00100000  exit
0031dc  00100000  exit
0031e0  00100000  exit
0031e4  00100000  exit
0031e8  00100000  exit
0031ec  00100000  exit
0031f0  00100000  exit
0031f4  00100000  exit
0031f8  00100000  exit
0031fc  00100000  exit
003200  00100000  exit
