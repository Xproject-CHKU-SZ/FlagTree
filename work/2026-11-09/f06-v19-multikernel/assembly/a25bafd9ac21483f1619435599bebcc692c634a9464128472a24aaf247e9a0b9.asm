; SHA-256 a25bafd9ac21483f1619435599bebcc692c634a9464128472a24aaf247e9a0b9
; P800 SDNN · XTDK LLVM 19 · 1017 / 1017 words decoded
; bound names: triton_unk_fused_0
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
0000b4  9f8e2eff  addli sp, sp, -112
0000b8  1f8f6e00  addli r30, sp, 48
0000bc  9f100000  addli r1, zero, 1
0000c0  00360002  core_id r12
0000c4  e3056f00  loadli.w r11,  48(r30)
0000c8  e34b5f00  loadli.w r23,  44(r30)
0000cc  7dc00000  xsignal_mode_cfg r1
0000d0  b7100600  beq r12, zero, 36
0000d4  2bf1ffff  lui r2, 1048575
0000d8  7d900000  xwait r1, 0
0000dc  7d900000  xwait r1, 0
0000e0  7d100000  xwait zero, 0
0000e4  9b10f1ff  ori r1, r2, 4095
0000e8  80a10004  csr_set csr3, r1
0000ec  00d00100  sync_group
0000f0  db1e0000  j 244
0000f4  1f220000  addli r4, zero, 2
0000f8  fdd00000  uni_sram_cfg r1, r1
0000fc  9f420000  addli r5, zero, 4
000100  6b510f02  load.d r[3:4], 32(r30)
000104  1f030020  addli r6, zero, 4096
000108  1d000200  lock zero, r4
00010c  8d000020  ew_cfg r1, zero, zero, 16
000110  1d100200  unlock r4
000114  1d800200  lock zero, r5
000118  15000000  dma_cfg zero, zero, zero, 0
00011c  15800104  dma_cfg zero, r3, zero, 2
000120  15006106  dma_cfg zero, r2, r6, 3
000124  1f014000  addli r2, zero, 32
000128  9f010008  addli r3, zero, 1024
00012c  15001008  dma_cfg zero, zero, r1, 4
000130  35000000  dma_run zero
000134  1d900200  unlock r5
000138  7d800000  xsignal r1, 0
00013c  7d900000  xwait r1, 0
000140  1d000000  lock zero, zero
000144  01020000  ds_cfg r4, zero, 0
000148  01000002  ds_cfg zero, zero, 1
00014c  01000016  ds_cfg zero, zero, 11
000150  0101001a  ds_cfg r2, zero, 13
000154  1f011000  addli r2, zero, 8
000158  8101001c  ds_cfg r3, zero, 14
00015c  21133008  shuffle_batch r6, zero, r3, 4
000160  1d100000  unlock zero
000164  7d800000  xsignal r1, 0
000168  7d900000  xwait r1, 0
00016c  1d000200  lock zero, r4
000170  ab100100  lui r1, 17
000174  0d200300  ewtable_cfg r6, 0
000178  0da00002  ewtable_cfg r1, 1
00017c  abf0ffff  lui r1, 1048575
000180  1d100200  unlock r4
000184  7d000000  xsignal zero, 0
000188  7d100000  xwait zero, 0
00018c  9b90f0ff  ori r1, r1, 4095
000190  80a10004  csr_set csr3, r1
000194  9f500000  addli r1, zero, 5
000198  00d00100  sync_group
00019c  7d800000  xsignal r1, 0
0001a0  7d000100  xsignal r2, 0
0001a4  9f201000  addli r1, zero, 10
0001a8  1f411000  addli r2, zero, 12
0001ac  7d800000  xsignal r1, 0
0001b0  7d000100  xsignal r2, 0
0001b4  9f601000  addli r1, zero, 14
0001b8  1f213000  addli r2, zero, 26
0001bc  7d800000  xsignal r1, 0
0001c0  7d000100  xsignal r2, 0
0001c4  9f502000  addli r1, zero, 21
0001c8  1f712000  addli r2, zero, 23
0001cc  7d800000  xsignal r1, 0
0001d0  7d000100  xsignal r2, 0
0001d4  9f503000  addli r1, zero, 29
0001d8  1f713000  addli r2, zero, 31
0001dc  7d800000  xsignal r1, 0
0001e0  7d000100  xsignal r2, 0
0001e4  e3005f00  loadli.w r1,  40(r30)
0001e8  63415f00  loadli.w r2,  44(r30)
0001ec  00d20002  load_param_i r4, 1
0001f0  e3016f00  loadli.w r3,  48(r30)
0001f4  8b101120  mul.s r1, r2, r1
0001f8  1f010200  addli r2, r4, 0
0001fc  0b913050  fmac.s r2, r1, r3
000200  8b913020  mul.s r3, r1, r3
000204  1f71f1ff  addli r2, r2, -1
000208  0b114130  div.s r2, r2, r4
00020c  00520002  load_param_i r4, 0
000210  8b104120  mul.s r1, r2, r4
000214  0b114150  fmac.s r2, r2, r4
000218  0b113140  min.s r2, r2, r3
00021c  4b0d1104  ble.s r2, r1, 2880
000220  33940028  sext_int2long r[9:10], r1
000224  9f000010  addli r1, zero, 2048
000228  33110128  sext_int2long r[3:4], r2
00022c  1f1e0000  addli r28, zero, 1
000230  2b02807f  lui r4, 522240
000234  2b0a8041  lui r20, 268288
000238  338d0028  zext_int2long r[27:28], r1
00023c  ab20373d  lui r1, 250738
000240  73342ffe  store.d r[3:4], -24(r30)
000244  1f010020  addli r2, zero, 4096
000248  9b903071  ori r1, r1, 1811
00024c  b3060128  zext_int2long r[14:15], r2
000250  2b810300  lui r2, 56
000254  733cafff  store.d r[27:28], -8(r30)
000258  e74d1ffe  storeli.w r1, -36(r30)
00025c  ab404c3f  lui r1, 259268
000260  9b90a022  ori r1, r1, 554
000264  e70d1ffe  storeli.w r1, -40(r30)
000268  9b103184  ori r1, r2, 2115
00026c  2bf17f00  lui r2, 2047
000270  674d1ffe  storeli.w r1, -44(r30)
000274  abf0ff7f  lui r1, 524287
000278  1b1cf1ff  ori r24, r2, 4095
00027c  1b95f0ff  ori r10, r1, 4095
000280  b3000028  zext_int2long r[2:3], zero
000284  73301ffe  store.d r[2:3], -32(r30)
000288  5b090000  j 72
00028c  9f201000  addli r1, zero, 10
000290  00200100  mfence { sm }
000294  e3056f00  loadli.w r11,  48(r30)
000298  e34b5f00  loadli.w r23,  44(r30)
00029c  00360002  core_id r12
0002a0  7d800000  xsignal r1, 0
0002a4  9f402000  addli r1, zero, 20
0002a8  7d800000  xsignal r1, 0
0002ac  9f503000  addli r1, zero, 29
0002b0  7d800000  xsignal r1, 0
0002b4  9f703000  addli r1, zero, 31
0002b8  7d800000  xsignal r1, 0
0002bc  6b540fff  load.d r[9:10], -16(r30)
0002c0  eb508ffe  load.d r[2:3], -24(r30)
0002c4  27140400  addli.d r[9:10], r[9:10], 1
0002c8  93301404  setlt.sl r1, r[9:10], r[2:3]
0002cc  37ca0004  beq r1, zero, 2704
0002d0  8b10b430  div.s r1, r8, r11
0002d4  73388ffe  store.d r[9:10], -16(r30)
0002d8  8b907031  div.s r1, r1, r23
0002dc  b3920028  sext_int2long r[6:7], r1
0002e0  9f401000  addli r1, zero, 12
0002e4  17b31202  sll.d r[7:8], r[6:7], r1
0002e8  9f600000  addli r1, zero, 6
0002ec  37411600  beq r12, r1, 80
0002f0  9f000000  addli r1, zero, 0
0002f4  3b51c601  bneq r12, r28, 84
0002f8  9f210000  addli r3, zero, 2
0002fc  eb570f00  load.d r[16:17], 0(r30)
000300  1f510000  addli r2, zero, 5
000304  9f420000  addli r5, zero, 4
000308  17343302  sll.d r[9:10], r[7:8], r3
00030c  7d100100  xwait r2, 0
000310  1d800200  lock zero, r5
000314  2b410000  lui r2, 4
000318  15000000  dma_cfg zero, zero, zero, 0
00031c  0ba48710  add.ul r[9:10], r[16:17], r[9:10]
000320  15800404  dma_cfg zero, r9, zero, 2
000324  15002406  dma_cfg zero, r8, r2, 3
000328  1501c109  dma_cfg r2, r2, r28, 4
00032c  35000000  dma_run zero
000330  1d900200  unlock r5
000334  7d800100  xsignal r3, 0
000338  db020000  j 20
00033c  9f100000  addli r1, zero, 1
000340  1f011000  addli r2, zero, 8
000344  7d100100  xwait r2, 0
000348  2b410000  lui r2, 4
00034c  6b540ffe  load.d r[9:10], -32(r30)
000350  9f110000  addli r3, zero, 1
000354  db090000  j 76
000358  9f290000  addli r19, zero, 2
00035c  eb5a8f00  load.d r[22:23], 8(r30)
000360  9b312400  slli r3, r8, 2
000364  97b83803  sll.d r[18:19], r[18:19], r19
000368  8b912110  add.s r3, r3, r2
00036c  9bb92700  slli r19, r15, 2
000370  8ba81a11  add.ul r[18:19], r[22:23], r[18:19]
000374  9f4a0000  addli r21, zero, 4
000378  1d800a00  lock zero, r21
00037c  15000000  dma_cfg zero, zero, zero, 0
000380  15000904  dma_cfg zero, r18, zero, 2
000384  95813807  dma_cfg r3, r17, r19, 3
000388  9589c909  dma_cfg r19, r19, r28, 4
00038c  35000000  dma_run zero
000390  1d900a00  unlock r21
000394  37e70200  beq r5, zero, 472
000398  0ba48710  add.ul r[9:10], r[16:17], r[9:10]
00039c  9f010000  addli r3, zero, 0
0003a0  8b276410  add.ul r[16:17], r[9:10], r[7:8]
0003a4  9b821100  andi r5, r3, 1
0003a8  8f98a771  mod.sl r[18:19], r[16:17], r[27:28]
0003ac  8bb78618  sub.sl r[16:17], r[14:15], r[9:10]
0003b0  8b3a1d19  sub.sl r[22:23], r[27:28], r[18:19]
0003b4  8ba75741  min.ul r[16:17], r[16:17], r[22:23]
0003b8  bb8e00fe  bneq r1, zero, -96
0003bc  3bff02fe  bneq r5, zero, -36
0003c0  9f500000  addli r1, zero, 5
0003c4  b7661600  beq r12, r1, 440
0003c8  9f300000  addli r1, zero, 3
0003cc  bb641604  bneq r12, r1, 2360
0003d0  7d900000  xwait r1, 0
0003d4  9f301000  addli r1, zero, 11
0003d8  330b0028  zext_int2long r[23:24], zero
0003dc  2bc10000  lui r2, 12
0003e0  ab050100  lui r11, 16
0003e4  2b860100  lui r12, 24
0003e8  7d900000  xwait r1, 0
0003ec  9f501000  addli r1, zero, 13
0003f0  7d900000  xwait r1, 0
0003f4  9f502000  addli r1, zero, 21
0003f8  7d900000  xwait r1, 0
0003fc  3d000000  xfence
000400  00a00300  mfence { lm, sm, gm }
000404  db040000  j 36
000408  274b0b00  addli.d r[23:24], r[23:24], 4
00040c  8b90c010  add.s r1, r1, r12
000410  9321db02  setneq.d r3, r[23:24], r[14:15]
000414  73e68000  stores.w r8, 12(r1)
000418  73e4f000  stores.w r15, 8(r1)
00041c  73e21001  stores.w r17, 4(r1)
000420  73e05000  stores.w r5, 0(r1)
000424  b79e0100  beq r3, zero, 932
000428  9b302b00  slli r1, r22, 2
00042c  9b114100  ori r3, r2, 4
000430  1b13c100  ori r6, r2, 12
000434  8b922010  add.s r5, r1, r2
000438  6fc40000  loads.w r8, 0(r1)
00043c  8b913010  add.s r3, r1, r3
000440  8b9cb010  add.s r25, r1, r11
000444  0b936010  add.s r6, r1, r6
000448  efc94000  loads.w r19, 4(r1)
00044c  6fc98000  loads.w r18, 8(r1)
000450  efc4c000  loads.w r9, 12(r1)
000454  efc20200  loads.w r5, 0(r5)
000458  efc80100  loads.w r17, 0(r3)
00045c  9b118100  ori r3, r2, 8
000460  ef430300  loads.w r7, 0(r6)
000464  6fc3cc00  loads.w r6, 12(r25)
000468  6fc88c00  loads.w r16, 8(r25)
00046c  efca4c00  loads.w r21, 4(r25)
000470  8b913010  add.s r3, r1, r3
000474  efc70100  loads.w r15, 0(r3)
000478  9781a200  and r3, r5, r10
00047c  9702a400  and r5, r8, r10
000480  13844100  seteq r8, r3, r4
000484  138e0100  seteq r28, r3, zero
000488  138d0200  seteq r26, r5, zero
00048c  938d4200  seteq r27, r5, r4
000490  8b815148  max.u r3, r3, r5
000494  93013204  setlt.u r3, r4, r3
000498  9702a401  and r5, r8, r26
00049c  1704be01  and r8, r28, r27
0004a0  97928200  or r5, r5, r8
0004a4  2b04c07f  lui r8, 523264
0004a8  97915100  or r3, r3, r5
0004ac  ab02c07f  lui r5, 523264
0004b0  3ba00100  bneq r3, zero, 8
0004b4  efc20c00  loads.w r5, 0(r25)
0004b8  9781a800  and r3, r17, r10
0004bc  9788a900  and r17, r19, r10
0004c0  93894100  seteq r19, r3, r4
0004c4  938d0100  seteq r27, r3, zero
0004c8  938c0800  seteq r25, r17, zero
0004cc  138d4800  seteq r26, r17, r4
0004d0  8b811149  max.u r3, r3, r17
0004d4  93013204  setlt.u r3, r4, r3
0004d8  97889901  and r17, r19, r25
0004dc  9789ad01  and r19, r27, r26
0004e0  97983801  or r17, r17, r19
0004e4  97911101  or r3, r3, r17
0004e8  ab08c07f  lui r17, 523264
0004ec  3ba00100  bneq r3, zero, 8
0004f0  9f880a00  addli r17, r21, 0
0004f4  9781a700  and r3, r15, r10
0004f8  9707a900  and r15, r18, r10
0004fc  13894100  seteq r18, r3, r4
000500  938c0100  seteq r25, r3, zero
000504  93890700  seteq r19, r15, zero
000508  938a4700  seteq r21, r15, r4
00050c  8b81f148  max.u r3, r3, r15
000510  93013204  setlt.u r3, r4, r3
000514  97073901  and r15, r18, r19
000518  17895c01  and r18, r25, r21
00051c  97972701  or r15, r15, r18
000520  9791f100  or r3, r3, r15
000524  ab07c07f  lui r15, 523264
000528  3ba00100  bneq r3, zero, 8
00052c  9f070800  addli r15, r16, 0
000530  9781a300  and r3, r7, r10
000534  9783a400  and r7, r9, r10
000538  93844100  seteq r9, r3, r4
00053c  93890100  seteq r19, r3, zero
000540  13880300  seteq r16, r7, zero
000544  13894300  seteq r18, r7, r4
000548  8b817148  max.u r3, r3, r7
00054c  93013204  setlt.u r3, r4, r3
000550  97830401  and r7, r9, r16
000554  97842901  and r9, r19, r18
000558  97939300  or r7, r7, r9
00055c  97917100  or r3, r3, r7
000560  bbaa01fe  bneq r3, zero, -344
000564  1f040300  addli r8, r6, 0
000568  5bd4ffff  j -352
00056c  9f700000  addli r1, zero, 7
000570  7d800000  xsignal r1, 0
000574  9f500000  addli r1, zero, 5
000578  3b4916fe  bneq r12, r1, -432
00057c  9f210000  addli r3, zero, 2
000580  9f700000  addli r1, zero, 7
000584  ab02803f  lui r5, 260096
000588  1f733000  addli r6, zero, 31
00058c  9f030001  addli r7, zero, 128
000590  2b04003f  lui r8, 258048
000594  9f641000  addli r9, zero, 14
000598  9f370000  addli r15, zero, 3
00059c  2b880100  lui r16, 24
0005a0  abc80100  lui r17, 28
0005a4  7d900100  xwait r3, 0
0005a8  7d900000  xwait r1, 0
0005ac  1d800100  lock zero, r3
0005b0  9f001000  addli r1, zero, 8
0005b4  0d000002  ew_cfg zero, zero, zero, 1
0005b8  8d920200  ewcoeff_cfg r5, r5, zero, 0
0005bc  0d000304  ew_cfg zero, r6, zero, 2
0005c0  8d030006  ew_cfg r7, zero, zero, 3
0005c4  8d837326  ew_cfg r7, r7, r7, 19
0005c8  2d002000  dsmadd zero, zero, r2, 0
0005cc  1f610000  addli r2, zero, 6
0005d0  0d000026  ew_cfg zero, zero, zero, 19
0005d4  1d900100  unlock r3
0005d8  7d000100  xsignal r2, 0
0005dc  7d800000  xsignal r1, 0
0005e0  9f201000  addli r1, zero, 10
0005e4  7d900000  xwait r1, 0
0005e8  1d800100  lock zero, r3
0005ec  ab800000  lui r1, 8
0005f0  0d000002  ew_cfg zero, zero, zero, 1
0005f4  0d140000  ewcoeff_cfg r8, zero, zero, 0
0005f8  0d000304  ew_cfg zero, r6, zero, 2
0005fc  8d030006  ew_cfg r7, zero, zero, 3
000600  8d830326  ew_cfg r7, r7, zero, 19
000604  cd500000  hp_ssmul r1, zero, zero, 0
000608  9f101000  addli r1, zero, 9
00060c  0d000026  ew_cfg zero, zero, zero, 19
000610  1d900100  unlock r3
000614  7d800000  xsignal r1, 0
000618  9f401000  addli r1, zero, 12
00061c  7d900000  xwait r1, 0
000620  1d800100  lock zero, r3
000624  abc00000  lui r1, 12
000628  0d000002  ew_cfg zero, zero, zero, 1
00062c  0d105000  ewcoeff_cfg zero, zero, r5, 0
000630  0d000304  ew_cfg zero, r6, zero, 2
000634  8d030006  ew_cfg r7, zero, zero, 3
000638  8d837326  ew_cfg r7, r7, r7, 19
00063c  ad100000  dsmul r1, zero, zero, 0
000640  0d000026  ew_cfg zero, zero, zero, 19
000644  1d900100  unlock r3
000648  7d900400  xwait r9, 0
00064c  1d800100  lock zero, r3
000650  ab040100  lui r9, 16
000654  0d000002  ew_cfg zero, zero, zero, 1
000658  0d105000  ewcoeff_cfg zero, zero, r5, 0
00065c  0d000304  ew_cfg zero, r6, zero, 2
000660  8d030006  ew_cfg r7, zero, zero, 3
000664  8d837326  ew_cfg r7, r7, r7, 19
000668  ad940000  dsmul r9, r1, zero, 0
00066c  9f301000  addli r1, zero, 11
000670  9f741000  addli r9, zero, 15
000674  0d000026  ew_cfg zero, zero, zero, 19
000678  1d900100  unlock r3
00067c  7d800700  xsignal r15, 0
000680  7d800000  xsignal r1, 0
000684  9f501000  addli r1, zero, 13
000688  7d800000  xsignal r1, 0
00068c  9f400000  addli r1, zero, 4
000690  7d900000  xwait r1, 0
000694  7d900400  xwait r9, 0
000698  9f742000  addli r9, zero, 23
00069c  7d900400  xwait r9, 0
0006a0  1d800100  lock zero, r3
0006a4  0d000002  ew_cfg zero, zero, zero, 1
0006a8  e344bfff  loadli.w r9,  -36(r30)
0006ac  8d920400  ewcoeff_cfg r5, r9, zero, 0
0006b0  9f042000  addli r9, zero, 16
0006b4  0d000304  ew_cfg zero, r6, zero, 2
0006b8  8d030006  ew_cfg r7, zero, zero, 3
0006bc  8d837326  ew_cfg r7, r7, r7, 19
0006c0  ad080001  dsmadd r17, zero, r16, 0
0006c4  0d000026  ew_cfg zero, zero, zero, 19
0006c8  1d900100  unlock r3
0006cc  7d800400  xsignal r9, 0
0006d0  1d800100  lock zero, r3
0006d4  0d000002  ew_cfg zero, zero, zero, 1
0006d8  e304bfff  loadli.w r9,  -40(r30)
0006dc  8d140000  ewcoeff_cfg r9, zero, zero, 0
0006e0  9f642000  addli r9, zero, 22
0006e4  0d000304  ew_cfg zero, r6, zero, 2
0006e8  8d030006  ew_cfg r7, zero, zero, 3
0006ec  8d830326  ew_cfg r7, r7, zero, 19
0006f0  cdd81801  hp_ssmul r17, r17, r17, 0
0006f4  0d000026  ew_cfg zero, zero, zero, 19
0006f8  1d900100  unlock r3
0006fc  7d800400  xsignal r9, 0
000700  9f142000  addli r9, zero, 17
000704  7d900400  xwait r9, 0
000708  1d800100  lock zero, r3
00070c  0d000002  ew_cfg zero, zero, zero, 1
000710  0d000304  ew_cfg zero, r6, zero, 2
000714  8d030006  ew_cfg r7, zero, zero, 3
000718  8d830326  ew_cfg r7, r7, zero, 19
00071c  8d070014  ew_cfg r15, zero, zero, 10
000720  e344afff  loadli.w r9,  -44(r30)
000724  8d019e16  ew_cfg r3, r28, r9, 11
000728  abc47f41  lui r9, 268284
00072c  0d00001a  ew_cfg zero, zero, zero, 13
000730  0d80901c  ew_cfg zero, r1, r9, 14
000734  9f202000  addli r1, zero, 18
000738  0d00001e  ew_cfg zero, zero, zero, 15
00073c  4d280800  sslut r16, r16, 0
000740  0d000014  ew_cfg zero, zero, zero, 10
000744  0d000026  ew_cfg zero, zero, zero, 19
000748  1d900100  unlock r3
00074c  7d800000  xsignal r1, 0
000750  9f303000  addli r1, zero, 27
000754  7d900000  xwait r1, 0
000758  1d800100  lock zero, r3
00075c  ab000200  lui r1, 32
000760  0d000002  ew_cfg zero, zero, zero, 1
000764  8d125000  ewcoeff_cfg r5, zero, r5, 0
000768  0d000304  ew_cfg zero, r6, zero, 2
00076c  8d030006  ew_cfg r7, zero, zero, 3
000770  8d830326  ew_cfg r7, r7, zero, 19
000774  ad801000  dsmadd r1, r1, r1, 0
000778  0d000026  ew_cfg zero, zero, zero, 19
00077c  1d900100  unlock r3
000780  7d100100  xwait r2, 0
000784  7d100300  xwait r6, 0
000788  1d800100  lock zero, r3
00078c  2b410200  lui r2, 36
000790  0d000002  ew_cfg zero, zero, zero, 1
000794  0d108000  ewcoeff_cfg zero, zero, r8, 0
000798  0d000304  ew_cfg zero, r6, zero, 2
00079c  8d030006  ew_cfg r7, zero, zero, 3
0007a0  8d837326  ew_cfg r7, r7, r7, 19
0007a4  2d111000  dsmul r2, zero, r1, 0
0007a8  9f500000  addli r1, zero, 5
0007ac  0d000026  ew_cfg zero, zero, zero, 19
0007b0  1d900100  unlock r3
0007b4  7d800000  xsignal r1, 0
0007b8  9f403000  addli r1, zero, 28
0007bc  7d800000  xsignal r1, 0
0007c0  9f603000  addli r1, zero, 30
0007c4  db5effff  j -1292
0007c8  9f400000  addli r1, zero, 4
0007cc  00200100  mfence { sm }
0007d0  b3020028  zext_int2long r[6:7], zero
0007d4  2bc10100  lui r2, 28
0007d8  ab450100  lui r11, 20
0007dc  ab090080  lui r19, 524288
0007e0  7d800000  xsignal r1, 0
0007e4  9f401000  addli r1, zero, 12
0007e8  7d800000  xsignal r1, 0
0007ec  9f601000  addli r1, zero, 14
0007f0  7d800000  xsignal r1, 0
0007f4  9f701000  addli r1, zero, 15
0007f8  7d800000  xsignal r1, 0
0007fc  9f602000  addli r1, zero, 22
000800  7d900000  xwait r1, 0
000804  9f203000  addli r1, zero, 26
000808  7d900000  xwait r1, 0
00080c  3d000000  xfence
000810  00a00300  mfence { lm, sm, gm }
000814  9bb02200  slli r1, r5, 2
000818  a7821200  addli.d r[6:7], r[6:7], 8
00081c  8b912010  add.s r3, r1, r2
000820  8b90b010  add.s r1, r1, r11
000824  efd38100  loads.d r[8:9], 8(r3)
000828  efd70100  loads.d r[16:17], 0(r3)
00082c  efd88101  loads.d r[18:19], 24(r3)
000830  efda0101  loads.d r[22:23], 16(r3)
000834  93a1d202  setneq.d r3, r[6:7], r[14:15]
000838  73f47000  stores.d r[8:9], 8(r1)
00083c  73f0f000  stores.d r[16:17], 0(r1)
000840  73fc1001  stores.d r[18:19], 24(r1)
000844  73f85001  stores.d r[22:23], 16(r1)
000848  3bbf01fe  bneq r3, zero, -52
00084c  9f702000  addli r1, zero, 23
000850  00200100  mfence { sm }
000854  1f013000  addli r2, zero, 24
000858  33030028  zext_int2long r[7:8], zero
00085c  7d800000  xsignal r1, 0
000860  9f002000  addli r1, zero, 16
000864  7d000100  xsignal r2, 0
000868  7d900000  xwait r1, 0
00086c  7d100100  xwait r2, 0
000870  3d000000  xfence
000874  00a00300  mfence { lm, sm, gm }
000878  db060000  j 52
00087c  27031300  addli.d r[7:8], r[7:8], 8
000880  8b91cb10  add.s r3, r23, r12
000884  9322d302  setneq.d r5, r[7:8], r[14:15]
000888  73e66101  stores.w r22, 12(r3)
00088c  73e45101  stores.w r21, 8(r3)
000890  73e22101  stores.w r18, 4(r3)
000894  73e01100  stores.w r1, 0(r3)
000898  73ee0101  stores.w r16, 28(r3)
00089c  73ecf100  stores.w r15, 24(r3)
0008a0  73ea9100  stores.w r9, 20(r3)
0008a4  73e88100  stores.w r8, 16(r3)
0008a8  37c30200  beq r5, zero, 208
0008ac  9b3b2300  slli r23, r6, 2
0008b0  8b91bb10  add.s r3, r23, r11
0008b4  efc00100  loads.w r1, 0(r3)
0008b8  6fcbc100  loads.w r22, 12(r3)
0008bc  efca8100  loads.w r21, 8(r3)
0008c0  6fc94100  loads.w r18, 4(r3)
0008c4  6fc8c101  loads.w r16, 28(r3)
0008c8  efc78101  loads.w r15, 24(r3)
0008cc  efc44101  loads.w r9, 20(r3)
0008d0  6fc40101  loads.w r8, 16(r3)
0008d4  9781a000  and r3, r1, r10
0008d8  93013a04  setlt.u r3, r20, r3
0008dc  37b00100  beq r3, zero, 12
0008e0  97803001  and r1, r1, r19
0008e4  97904001  or r1, r1, r20
0008e8  9701a900  and r3, r18, r10
0008ec  93013a04  setlt.u r3, r20, r3
0008f0  37b00100  beq r3, zero, 12
0008f4  97013901  and r3, r18, r19
0008f8  17994101  or r18, r3, r20
0008fc  9781aa00  and r3, r21, r10
000900  93013a04  setlt.u r3, r20, r3
000904  37b00100  beq r3, zero, 12
000908  97813a01  and r3, r21, r19
00090c  979a4101  or r21, r3, r20
000910  9701ab00  and r3, r22, r10
000914  93013a04  setlt.u r3, r20, r3
000918  37b00100  beq r3, zero, 12
00091c  97013b01  and r3, r22, r19
000920  179b4101  or r22, r3, r20
000924  9701a400  and r3, r8, r10
000928  93013a04  setlt.u r3, r20, r3
00092c  37b00100  beq r3, zero, 12
000930  97013401  and r3, r8, r19
000934  17944101  or r8, r3, r20
000938  9781a400  and r3, r9, r10
00093c  93013a04  setlt.u r3, r20, r3
000940  37b00100  beq r3, zero, 12
000944  97813401  and r3, r9, r19
000948  97944101  or r9, r3, r20
00094c  9781a700  and r3, r15, r10
000950  93013a04  setlt.u r3, r20, r3
000954  37b00100  beq r3, zero, 12
000958  97813701  and r3, r15, r19
00095c  97974101  or r15, r3, r20
000960  9701a800  and r3, r16, r10
000964  93013a04  setlt.u r3, r20, r3
000968  37dc01fe  beq r3, zero, -236
00096c  97013801  and r3, r16, r19
000970  17984101  or r16, r3, r20
000974  5be1ffff  j -248
000978  9f102000  addli r1, zero, 17
00097c  00200100  mfence { sm }
000980  1f113000  addli r2, zero, 25
000984  330b0028  zext_int2long r[23:24], zero
000988  7d800000  xsignal r1, 0
00098c  9f202000  addli r1, zero, 18
000990  7d000100  xsignal r2, 0
000994  7d900000  xwait r1, 0
000998  9f503000  addli r1, zero, 29
00099c  7d100100  xwait r2, 0
0009a0  7d900000  xwait r1, 0
0009a4  3d000000  xfence
0009a8  00a00300  mfence { lm, sm, gm }
0009ac  5b070000  j 56
0009b0  270b1b00  addli.d r[23:24], r[23:24], 8
0009b4  2b010200  lui r2, 32
0009b8  9321db00  seteq.d r3, r[23:24], r[14:15]
0009bc  0b912c10  add.s r2, r25, r2
0009c0  7366f100  stores.w r15, 12(r2)
0009c4  73649100  stores.w r9, 8(r2)
0009c8  73628100  stores.w r8, 4(r2)
0009cc  73602101  stores.w r18, 0(r2)
0009d0  736e7100  stores.w r7, 28(r2)
0009d4  736c6100  stores.w r6, 24(r2)
0009d8  736a5101  stores.w r21, 20(r2)
0009dc  73681100  stores.w r1, 16(r2)
0009e0  bb950100  bneq r3, zero, 356
0009e4  9b3c2b00  slli r25, r22, 2
0009e8  8b90bc10  add.s r1, r25, r11
0009ec  8b91cc10  add.s r3, r25, r12
0009f0  6fc90000  loads.w r18, 0(r1)
0009f4  efc94000  loads.w r19, 4(r1)
0009f8  6fce8000  loads.w r28, 8(r1)
0009fc  6fcdc000  loads.w r26, 12(r1)
000a00  efc20001  loads.w r5, 16(r1)
000a04  efc84001  loads.w r17, 20(r1)
000a08  efcd8001  loads.w r27, 24(r1)
000a0c  6fc8c001  loads.w r16, 28(r1)
000a10  efc7c100  loads.w r15, 12(r3)
000a14  efc48100  loads.w r9, 8(r3)
000a18  6fc44100  loads.w r8, 4(r3)
000a1c  efc3c101  loads.w r7, 28(r3)
000a20  6fc38101  loads.w r6, 24(r3)
000a24  efca4101  loads.w r21, 20(r3)
000a28  efc00101  loads.w r1, 16(r3)
000a2c  17014900  and r2, r18, r4
000a30  97058901  and r11, r18, r24
000a34  13014100  seteq r2, r2, r4
000a38  93850502  setneq r11, r11, zero
000a3c  1701b100  and r2, r2, r11
000a40  3b300100  bneq r2, zero, 12
000a44  6fc90100  loads.w r18, 0(r3)
000a48  db010000  j 12
000a4c  2b014000  lui r2, 1024
000a50  17192900  or r18, r18, r2
000a54  17814900  and r2, r19, r4
000a58  97818901  and r3, r19, r24
000a5c  ab450100  lui r11, 20
000a60  13014100  seteq r2, r2, r4
000a64  93810102  setneq r3, r3, zero
000a68  17013100  and r2, r2, r3
000a6c  37300100  beq r2, zero, 12
000a70  2b014000  lui r2, 1024
000a74  17942900  or r8, r19, r2
000a78  17014e00  and r2, r28, r4
000a7c  97018e01  and r3, r28, r24
000a80  13014100  seteq r2, r2, r4
000a84  93810102  setneq r3, r3, zero
000a88  17013100  and r2, r2, r3
000a8c  37300100  beq r2, zero, 12
000a90  2b014000  lui r2, 1024
000a94  97142e00  or r9, r28, r2
000a98  17014d00  and r2, r26, r4
000a9c  97018d01  and r3, r26, r24
000aa0  1f1e0000  addli r28, zero, 1
000aa4  13014100  seteq r2, r2, r4
000aa8  93810102  setneq r3, r3, zero
000aac  17013100  and r2, r2, r3
000ab0  37300100  beq r2, zero, 12
000ab4  2b014000  lui r2, 1024
000ab8  97172d00  or r15, r26, r2
000abc  17814200  and r2, r5, r4
000ac0  97818201  and r3, r5, r24
000ac4  13014100  seteq r2, r2, r4
000ac8  93810102  setneq r3, r3, zero
000acc  17013100  and r2, r2, r3
000ad0  37300100  beq r2, zero, 12
000ad4  ab004000  lui r1, 1024
000ad8  97901200  or r1, r5, r1
000adc  17814800  and r2, r17, r4
000ae0  97818801  and r3, r17, r24
000ae4  13014100  seteq r2, r2, r4
000ae8  93810102  setneq r3, r3, zero
000aec  17013100  and r2, r2, r3
000af0  37300100  beq r2, zero, 12
000af4  2b014000  lui r2, 1024
000af8  979a2800  or r21, r17, r2
000afc  17814d00  and r2, r27, r4
000b00  97818d01  and r3, r27, r24
000b04  13014100  seteq r2, r2, r4
000b08  93810102  setneq r3, r3, zero
000b0c  17013100  and r2, r2, r3
000b10  37300100  beq r2, zero, 12
000b14  2b014000  lui r2, 1024
000b18  17932d00  or r6, r27, r2
000b1c  17014800  and r2, r16, r4
000b20  97018801  and r3, r16, r24
000b24  6b5d8fff  load.d r[27:28], -8(r30)
000b28  13014100  seteq r2, r2, r4
000b2c  93810102  setneq r3, r3, zero
000b30  17013100  and r2, r2, r3
000b34  b77901fe  beq r2, zero, -388
000b38  2b014000  lui r2, 1024
000b3c  97132800  or r7, r16, r2
000b40  5bceffff  j -400
000b44  1f312000  addli r2, zero, 19
000b48  9f203000  addli r1, zero, 26
000b4c  00200100  mfence { sm }
000b50  330b0028  zext_int2long r[23:24], zero
000b54  7d000100  xsignal r2, 0
000b58  7d800000  xsignal r1, 0
000b5c  9f303000  addli r1, zero, 27
000b60  7d800000  xsignal r1, 0
000b64  9f101000  addli r1, zero, 9
000b68  7d900000  xwait r1, 0
000b6c  9f403000  addli r1, zero, 28
000b70  7d100100  xwait r2, 0
000b74  7d900000  xwait r1, 0
000b78  9f603000  addli r1, zero, 30
000b7c  7d900000  xwait r1, 0
000b80  3d000000  xfence
000b84  00a00300  mfence { lm, sm, gm }
000b88  5b050000  j 40
000b8c  274b0b00  addli.d r[23:24], r[23:24], 4
000b90  ab810100  lui r3, 24
000b94  1321db02  setneq.d r2, r[23:24], r[14:15]
000b98  8b903010  add.s r1, r1, r3
000b9c  73e68000  stores.w r8, 12(r1)
000ba0  73e4f000  stores.w r15, 8(r1)
000ba4  73e21001  stores.w r17, 4(r1)
000ba8  73e05000  stores.w r5, 0(r1)
000bac  b70b01fa  beq r2, zero, -2336
000bb0  2b830000  lui r6, 8
000bb4  9b302b00  slli r1, r22, 2
000bb8  ab020200  lui r5, 32
000bbc  8b925010  add.s r5, r1, r5
000bc0  8b916010  add.s r3, r1, r6
000bc4  1b114300  ori r2, r6, 4
000bc8  efc10100  loads.w r3, 0(r3)
000bcc  6fc40200  loads.w r8, 0(r5)
000bd0  0b912010  add.s r2, r1, r2
000bd4  efc94200  loads.w r19, 4(r5)
000bd8  6fc98200  loads.w r18, 8(r5)
000bdc  efc4c200  loads.w r9, 12(r5)
000be0  ef480100  loads.w r17, 0(r2)
000be4  1b118300  ori r2, r6, 8
000be8  1b13c300  ori r6, r6, 12
000bec  0b912010  add.s r2, r1, r2
000bf0  0b936010  add.s r6, r1, r6
000bf4  ef470100  loads.w r15, 0(r2)
000bf8  2b410200  lui r2, 36
000bfc  ef430300  loads.w r7, 0(r6)
000c00  8b9c2010  add.s r25, r1, r2
000c04  6fc3cc00  loads.w r6, 12(r25)
000c08  6fc88c00  loads.w r16, 8(r25)
000c0c  efca4c00  loads.w r21, 4(r25)
000c10  1781a100  and r2, r3, r10
000c14  9701a400  and r3, r8, r10
000c18  93024100  seteq r5, r2, r4
000c1c  13060100  seteq r12, r2, zero
000c20  13840100  seteq r8, r3, zero
000c24  93854100  seteq r11, r3, r4
000c28  0b013148  max.u r2, r2, r3
000c2c  13012204  setlt.u r2, r4, r2
000c30  97818200  and r3, r5, r8
000c34  9702b600  and r5, r12, r11
000c38  2b04c07f  lui r8, 523264
000c3c  97915100  or r3, r3, r5
000c40  ab02c07f  lui r5, 523264
000c44  17113100  or r2, r2, r3
000c48  3b200100  bneq r2, zero, 8
000c4c  efc20c00  loads.w r5, 0(r25)
000c50  1781a800  and r2, r17, r10
000c54  9781a900  and r3, r19, r10
000c58  93054100  seteq r11, r2, r4
000c5c  93090100  seteq r19, r2, zero
000c60  13860100  seteq r12, r3, zero
000c64  93884100  seteq r17, r3, r4
000c68  0b013148  max.u r2, r2, r3
000c6c  13012204  setlt.u r2, r4, r2
000c70  9781c500  and r3, r11, r12
000c74  97851901  and r11, r19, r17
000c78  ab08c07f  lui r17, 523264
000c7c  9791b100  or r3, r3, r11
000c80  17113100  or r2, r2, r3
000c84  3b200100  bneq r2, zero, 8
000c88  9f880a00  addli r17, r21, 0
000c8c  1781a700  and r2, r15, r10
000c90  9701a900  and r3, r18, r10
000c94  93054100  seteq r11, r2, r4
000c98  13090100  seteq r18, r2, zero
000c9c  13860100  seteq r12, r3, zero
000ca0  93874100  seteq r15, r3, r4
000ca4  0b013148  max.u r2, r2, r3
000ca8  13012204  setlt.u r2, r4, r2
000cac  9781c500  and r3, r11, r12
000cb0  9705f900  and r11, r18, r15
000cb4  ab07c07f  lui r15, 523264
000cb8  9791b100  or r3, r3, r11
000cbc  17113100  or r2, r2, r3
000cc0  3b200100  bneq r2, zero, 8
000cc4  9f070800  addli r15, r16, 0
000cc8  1781a300  and r2, r7, r10
000ccc  9781a400  and r3, r9, r10
000cd0  93034100  seteq r7, r2, r4
000cd4  13060100  seteq r12, r2, zero
000cd8  93840100  seteq r9, r3, zero
000cdc  93854100  seteq r11, r3, r4
000ce0  0b013148  max.u r2, r2, r3
000ce4  13012204  setlt.u r2, r4, r2
000ce8  97819300  and r3, r7, r9
000cec  9703b600  and r7, r12, r11
000cf0  97917100  or r3, r3, r7
000cf4  17113100  or r2, r2, r3
000cf8  3b5a01fe  bneq r2, zero, -364
000cfc  1f040300  addli r8, r6, 0
000d00  dbd1ffff  j -372
000d04  6b540fff  load.d r[9:10], -16(r30)
000d08  bb6606fa  bneq r12, zero, -2632
000d0c  9f200000  addli r1, zero, 2
000d10  9f412000  addli r3, zero, 20
000d14  97301302  sll.d r[2:3], r[7:8], r1
000d18  eb520f01  load.d r[6:7], 16(r30)
000d1c  7d900100  xwait r3, 0
000d20  ab410000  lui r3, 4
000d24  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
000d28  9f520000  addli r5, zero, 5
000d2c  2b830100  lui r6, 24
000d30  1d800200  lock zero, r5
000d34  15000000  dma_cfg zero, zero, zero, 0
000d38  15000e02  dma_cfg zero, r28, zero, 1
000d3c  15010004  dma_cfg r2, zero, zero, 2
000d40  95003306  dma_cfg r1, r6, r3, 3
000d44  9f502000  addli r1, zero, 21
000d48  9581c109  dma_cfg r3, r3, r28, 4
000d4c  35000000  dma_run zero
000d50  1d900200  unlock r5
000d54  7d800000  xsignal r1, 0
000d58  5badfeff  j -2712
000d5c  7d000000  xsignal zero, 0
000d60  bb600600  bneq r12, zero, 56
000d64  9f200000  addli r1, zero, 2
000d68  7d100000  xwait zero, 0
000d6c  7d100000  xwait zero, 0
000d70  7d100000  xwait zero, 0
000d74  7d100000  xwait zero, 0
000d78  7d100000  xwait zero, 0
000d7c  7d100000  xwait zero, 0
000d80  7d100000  xwait zero, 0
000d84  7d100000  xwait zero, 0
000d88  1d800000  lock zero, r1
000d8c  0d000020  ew_cfg zero, zero, zero, 16
000d90  1d900000  unlock r1
000d94  7d400000  xsignal_mode_cfg zero
000d98  9f8e6e00  addli sp, sp, 48
000d9c  00a00300  mfence { lm, sm, gm }
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
000e50  00100000  exit
000e54  00100000  exit
000e58  00100000  exit
000e5c  00100000  exit
000e60  00100000  exit
000e64  00100000  exit
000e68  00100000  exit
000e6c  00100000  exit
000e70  00100000  exit
000e74  00100000  exit
000e78  00100000  exit
000e7c  00100000  exit
000e80  00100000  exit
000e84  00100000  exit
000e88  00100000  exit
000e8c  00100000  exit
000e90  00100000  exit
000e94  00100000  exit
000e98  00100000  exit
000e9c  00100000  exit
000ea0  00100000  exit
000ea4  00100000  exit
000ea8  00100000  exit
000eac  00100000  exit
000eb0  00100000  exit
000eb4  00100000  exit
000eb8  00100000  exit
000ebc  00100000  exit
000ec0  00100000  exit
000ec4  00100000  exit
000ec8  00100000  exit
000ecc  00100000  exit
000ed0  00100000  exit
000ed4  00100000  exit
000ed8  00100000  exit
000edc  00100000  exit
000ee0  00100000  exit
000ee4  00100000  exit
000ee8  00100000  exit
000eec  00100000  exit
000ef0  00100000  exit
000ef4  00100000  exit
000ef8  00100000  exit
000efc  00100000  exit
000f00  00100000  exit
000f04  00100000  exit
000f08  00100000  exit
000f0c  00100000  exit
000f10  00100000  exit
000f14  00100000  exit
000f18  00100000  exit
000f1c  00100000  exit
000f20  00100000  exit
000f24  00100000  exit
000f28  00100000  exit
000f2c  00100000  exit
000f30  00100000  exit
000f34  00100000  exit
000f38  00100000  exit
000f3c  00100000  exit
000f40  00100000  exit
000f44  00100000  exit
000f48  00100000  exit
000f4c  00100000  exit
000f50  00100000  exit
000f54  00100000  exit
000f58  00100000  exit
000f5c  00100000  exit
000f60  00100000  exit
000f64  00100000  exit
000f68  00100000  exit
000f6c  00100000  exit
000f70  00100000  exit
000f74  00100000  exit
000f78  00100000  exit
000f7c  00100000  exit
000f80  00100000  exit
000f84  00100000  exit
000f88  00100000  exit
000f8c  00100000  exit
000f90  00100000  exit
000f94  00100000  exit
000f98  00100000  exit
000f9c  00100000  exit
000fa0  00100000  exit
000fa4  00100000  exit
000fa8  00100000  exit
000fac  00100000  exit
000fb0  00100000  exit
000fb4  00100000  exit
000fb8  00100000  exit
000fbc  00100000  exit
000fc0  00100000  exit
000fc4  00100000  exit
000fc8  00100000  exit
000fcc  00100000  exit
000fd0  00100000  exit
000fd4  00100000  exit
000fd8  00100000  exit
000fdc  00100000  exit
000fe0  00100000  exit
