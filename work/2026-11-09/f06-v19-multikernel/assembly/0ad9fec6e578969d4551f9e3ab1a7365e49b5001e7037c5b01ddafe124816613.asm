; SHA-256 0ad9fec6e578969d4551f9e3ab1a7365e49b5001e7037c5b01ddafe124816613
; P800 SDNN · XTDK LLVM 19 · 2652 / 2652 words decoded
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
00005c  9f495000  addli r19, zero, 44
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
0000b4  9f8e3efe  addli sp, sp, -232
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  80320002  core_id r5
0000c4  1f8f5e01  addli r30, sp, 168
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  37600100  beq r2, zero, 24
0000d0  abf0ffff  lui r1, 1048575
0000d4  9b90f0ff  ori r1, r1, 4095
0000d8  80a10004  csr_set csr3, r1
0000dc  00d00100  sync_group
0000e0  5b190000  j 200
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
000118  7d800000  xsignal r1, 0
00011c  7d800000  xsignal r1, 0
000120  7d000100  xsignal r2, 0
000124  7d000100  xsignal r2, 0
000128  7d000100  xsignal r2, 0
00012c  7d000100  xsignal r2, 0
000130  9f300000  addli r1, zero, 3
000134  1f111000  addli r2, zero, 9
000138  7d800000  xsignal r1, 0
00013c  7d800000  xsignal r1, 0
000140  7d800000  xsignal r1, 0
000144  7d800000  xsignal r1, 0
000148  7d000100  xsignal r2, 0
00014c  7d000100  xsignal r2, 0
000150  7d000100  xsignal r2, 0
000154  7d000100  xsignal r2, 0
000158  9f700000  addli r1, zero, 7
00015c  1f212000  addli r2, zero, 18
000160  7d800000  xsignal r1, 0
000164  7d800000  xsignal r1, 0
000168  7d800000  xsignal r1, 0
00016c  7d800000  xsignal r1, 0
000170  7d000100  xsignal r2, 0
000174  7d000100  xsignal r2, 0
000178  7d000100  xsignal r2, 0
00017c  7d000100  xsignal r2, 0
000180  9f002000  addli r1, zero, 16
000184  1f611000  addli r2, zero, 14
000188  7d800000  xsignal r1, 0
00018c  7d800000  xsignal r1, 0
000190  7d800000  xsignal r1, 0
000194  7d800000  xsignal r1, 0
000198  7d000100  xsignal r2, 0
00019c  7d000100  xsignal r2, 0
0001a0  7d000100  xsignal r2, 0
0001a4  7d000100  xsignal r2, 0
0001a8  e3004f00  loadli.w r1,  32(r30)
0001ac  63414f00  loadli.w r2,  36(r30)
0001b0  00d20002  load_param_i r4, 1
0001b4  e3015f00  loadli.w r3,  40(r30)
0001b8  8b101120  mul.s r1, r2, r1
0001bc  1f010200  addli r2, r4, 0
0001c0  0b913050  fmac.s r2, r1, r3
0001c4  8b913020  mul.s r3, r1, r3
0001c8  1f71f1ff  addli r2, r2, -1
0001cc  0b114130  div.s r2, r2, r4
0001d0  00520002  load_param_i r4, 0
0001d4  8b104120  mul.s r1, r2, r4
0001d8  0b114150  fmac.s r2, r2, r4
0001dc  0b113140  min.s r2, r2, r3
0001e0  4b241112  ble.s r2, r1, 9480
0001e4  33110128  sext_int2long r[3:4], r2
0001e8  33950028  sext_int2long r[11:12], r1
0001ec  1f490000  addli r18, zero, 4
0001f0  9f098000  addli r19, zero, 64
0001f4  1f7a0000  addli r20, zero, 7
0001f8  9f6a0000  addli r21, zero, 6
0001fc  1f5b1000  addli r22, zero, 13
000200  9f3b0000  addli r23, zero, 3
000204  1f1c0000  addli r24, zero, 1
000208  1f2d0000  addli r26, zero, 2
00020c  9f6d1000  addli r27, zero, 14
000210  ab0c4000  lui r25, 1024
000214  1f020000  addli r4, zero, 0
000218  73342ff6  store.d r[3:4], -152(r30)
00021c  1f71f00f  addli r2, zero, 2047
000220  ab01807f  lui r3, 522240
000224  ab80ffff  lui r1, 1048568
000228  73301ff6  store.d r[2:3], -160(r30)
00022c  abf0ff7f  lui r1, 524287
000230  2bf17f7f  lui r2, 522239
000234  9b96f0ff  ori r13, r1, 4095
000238  ab700000  lui r1, 7
00023c  9b18f1ff  ori r17, r2, 4095
000240  1b97f0ff  ori r14, r1, 4095
000244  b3000028  zext_int2long r[2:3], zero
000248  733c1ff4  store.d r[2:3], -168(r30)
00024c  ab00ffff  lui r1, 1048560
000250  5b0a0000  j 80
000254  9f6d1000  addli r27, zero, 14
000258  1f112000  addli r2, zero, 17
00025c  1f490000  addli r18, zero, 4
000260  9f098000  addli r19, zero, 64
000264  1f7a0000  addli r20, zero, 7
000268  9f6a0000  addli r21, zero, 6
00026c  1f5b1000  addli r22, zero, 13
000270  1f1c0000  addli r24, zero, 1
000274  1f2d0000  addli r26, zero, 2
000278  7d800d00  xsignal r27, 0
00027c  7d000100  xsignal r2, 0
000280  6b550ff9  load.d r[11:12], -112(r30)
000284  6b538ff6  load.d r[7:8], -152(r30)
000288  27150500  addli.d r[11:12], r[11:12], 1
00028c  63424fff  loadli.w r4,  -92(r30)
000290  80320002  core_id r5
000294  13316504  setlt.sl r2, r[11:12], r[7:8]
000298  1f120200  addli r4, r4, 1
00029c  37310112  beq r2, zero, 9292
0002a0  63015f00  loadli.w r2,  40(r30)
0002a4  674a4ffe  storeli.w r4, -92(r30)
0002a8  63424f00  loadli.w r4,  36(r30)
0002ac  9f031000  addli r7, zero, 8
0002b0  7338aff8  store.d r[11:12], -112(r30)
0002b4  0b112530  div.s r2, r10, r2
0002b8  8b124130  div.s r5, r2, r4
0002bc  0b933231  div.s r6, r5, r19
0002c0  1b313300  slli r2, r6, 3
0002c4  0b922318  sub.s r4, r7, r2
0002c8  8b137240  min.s r7, r4, r7
0002cc  0b927238  mod.s r4, r5, r7
0002d0  0b122210  add.s r4, r4, r2
0002d4  13014a04  setlt.u r2, r20, r4
0002d8  33040228  zext_int2long r[9:10], r4
0002dc  67474ffe  storeli.w r4, -140(r30)
0002e0  1f421000  addli r4, zero, 12
0002e4  73308ff8  store.d r[9:10], -128(r30)
0002e8  97344402  sll.d r[10:11], r[9:10], r4
0002ec  3b300100  bneq r2, zero, 12
0002f0  eb558ff5  load.d r[12:13], -168(r30)
0002f4  db010000  j 12
0002f8  eb550ff6  load.d r[12:13], -160(r30)
0002fc  9785b402  and.d r[12:13], r[10:11], r[12:13]
000300  634e4fff  loadli.w r28,  -92(r30)
000304  0b112e39  mod.s r2, r28, r18
000308  670b2ffe  storeli.w r2, -80(r30)
00030c  1b32e100  slli r4, r2, 14
000310  1f018003  addli r2, zero, 448
000314  b3070128  zext_int2long r[16:17], r2
000318  2b010200  lui r2, 32
00031c  0b142210  add.s r8, r4, r2
000320  00310002  core_id r2
000324  7334fffa  store.d r[16:17], -88(r30)
000328  3b6a5101  bneq r2, r21, 664
00032c  8bb4b418  sub.sl r[10:11], r[10:11], r[12:13]
000330  97d45403  sra.d r[10:11], r[10:11], r21
000334  8bb5f440  min.sl r[12:13], r[10:11], r[16:17]
000338  eb570ff8  load.d r[16:17], -128(r30)
00033c  7d900b00  xwait r23, 0
000340  8bb49518  sub.sl r[10:11], r[12:13], r[10:11]
000344  eb550f00  load.d r[12:13], 0(r30)
000348  97b76703  sll.d r[16:17], r[16:17], r22
00034c  9f848400  addli r9, r9, 64
000350  8ba7f510  add.ul r[16:17], r[12:13], r[16:17]
000354  9f052000  addli r11, zero, 16
000358  3fd4cb01  blt.s r23, r28, 276
00035c  1f550000  addli r10, zero, 5
000360  1f011000  addli r2, zero, 8
000364  1d000500  lock zero, r10
000368  15000014  dma_cfg zero, zero, zero, 10
00036c  15008015  dma_cfg zero, zero, r24, 10
000370  1500a015  dma_cfg zero, zero, r26, 10
000374  15007015  dma_cfg zero, zero, r23, 10
000378  15002015  dma_cfg zero, zero, r18, 10
00037c  1500a014  dma_cfg zero, zero, r10, 10
000380  15005015  dma_cfg zero, zero, r21, 10
000384  15004015  dma_cfg zero, zero, r20, 10
000388  15002014  dma_cfg zero, zero, r2, 10
00038c  1f111000  addli r2, zero, 9
000390  15002014  dma_cfg zero, zero, r2, 10
000394  1f211000  addli r2, zero, 10
000398  15002014  dma_cfg zero, zero, r2, 10
00039c  1f311000  addli r2, zero, 11
0003a0  15002014  dma_cfg zero, zero, r2, 10
0003a4  1f411000  addli r2, zero, 12
0003a8  15002014  dma_cfg zero, zero, r2, 10
0003ac  1f711000  addli r2, zero, 15
0003b0  15006015  dma_cfg zero, zero, r22, 10
0003b4  1500b015  dma_cfg zero, zero, r27, 10
0003b8  15002014  dma_cfg zero, zero, r2, 10
0003bc  1f112000  addli r2, zero, 17
0003c0  1500b014  dma_cfg zero, zero, r11, 10
0003c4  15002014  dma_cfg zero, zero, r2, 10
0003c8  1f212000  addli r2, zero, 18
0003cc  15002014  dma_cfg zero, zero, r2, 10
0003d0  1f312000  addli r2, zero, 19
0003d4  15002014  dma_cfg zero, zero, r2, 10
0003d8  1f412000  addli r2, zero, 20
0003dc  15002014  dma_cfg zero, zero, r2, 10
0003e0  1f512000  addli r2, zero, 21
0003e4  15002014  dma_cfg zero, zero, r2, 10
0003e8  1f612000  addli r2, zero, 22
0003ec  15002014  dma_cfg zero, zero, r2, 10
0003f0  1f712000  addli r2, zero, 23
0003f4  15002014  dma_cfg zero, zero, r2, 10
0003f8  1f013000  addli r2, zero, 24
0003fc  15002014  dma_cfg zero, zero, r2, 10
000400  1f113000  addli r2, zero, 25
000404  15002014  dma_cfg zero, zero, r2, 10
000408  1f213000  addli r2, zero, 26
00040c  15002014  dma_cfg zero, zero, r2, 10
000410  1f313000  addli r2, zero, 27
000414  15002014  dma_cfg zero, zero, r2, 10
000418  1f413000  addli r2, zero, 28
00041c  15002014  dma_cfg zero, zero, r2, 10
000420  1f513000  addli r2, zero, 29
000424  15002014  dma_cfg zero, zero, r2, 10
000428  1f613000  addli r2, zero, 30
00042c  15002014  dma_cfg zero, zero, r2, 10
000430  1f713000  addli r2, zero, 31
000434  15002014  dma_cfg zero, zero, r2, 10
000438  1f010001  addli r2, zero, 128
00043c  150c0c00  dma_cfg r24, r24, zero, 0
000440  150c0002  dma_cfg r24, zero, zero, 1
000444  15000004  dma_cfg zero, zero, zero, 2
000448  15043007  dma_cfg r8, zero, r19, 3
00044c  1501a009  dma_cfg r2, zero, r26, 4
000450  1f010002  addli r2, zero, 256
000454  1501300b  dma_cfg r2, zero, r19, 5
000458  15000010  dma_cfg zero, zero, zero, 8
00045c  35000000  dma_run zero
000460  1500800b  dma_cfg zero, zero, r24, 5
000464  15000010  dma_cfg zero, zero, zero, 8
000468  1d100500  unlock r10
00046c  2b010200  lui r2, 32
000470  e7090ffe  storeli.w zero, -104(r30)
000474  1f060001  addli r12, zero, 128
000478  1f550000  addli r10, zero, 5
00047c  1d000900  lock zero, r18
000480  1b110104  ori r2, r2, 64
000484  150c0c00  dma_cfg r24, r24, zero, 0
000488  15000804  dma_cfg zero, r16, zero, 2
00048c  0b112210  add.s r2, r4, r2
000490  15813707  dma_cfg r2, r15, r19, 3
000494  9f070002  addli r15, zero, 256
000498  1f011000  addli r2, zero, 8
00049c  1586a909  dma_cfg r12, r19, r26, 4
0004a0  9507960a  dma_cfg r15, r12, r9, 5
0004a4  15000010  dma_cfg zero, zero, zero, 8
0004a8  35000000  dma_run zero
0004ac  1500800b  dma_cfg zero, zero, r24, 5
0004b0  15000010  dma_cfg zero, zero, zero, 8
0004b4  1d100900  unlock r18
0004b8  1d000500  lock zero, r10
0004bc  15000014  dma_cfg zero, zero, zero, 10
0004c0  15008015  dma_cfg zero, zero, r24, 10
0004c4  1500a015  dma_cfg zero, zero, r26, 10
0004c8  15007015  dma_cfg zero, zero, r23, 10
0004cc  15002015  dma_cfg zero, zero, r18, 10
0004d0  1500a014  dma_cfg zero, zero, r10, 10
0004d4  15005015  dma_cfg zero, zero, r21, 10
0004d8  15004015  dma_cfg zero, zero, r20, 10
0004dc  15002014  dma_cfg zero, zero, r2, 10
0004e0  1f111000  addli r2, zero, 9
0004e4  15002014  dma_cfg zero, zero, r2, 10
0004e8  1f211000  addli r2, zero, 10
0004ec  15002014  dma_cfg zero, zero, r2, 10
0004f0  1f311000  addli r2, zero, 11
0004f4  15002014  dma_cfg zero, zero, r2, 10
0004f8  1f411000  addli r2, zero, 12
0004fc  15002014  dma_cfg zero, zero, r2, 10
000500  1f711000  addli r2, zero, 15
000504  15006015  dma_cfg zero, zero, r22, 10
000508  1500b015  dma_cfg zero, zero, r27, 10
00050c  15002014  dma_cfg zero, zero, r2, 10
000510  1f112000  addli r2, zero, 17
000514  1500b014  dma_cfg zero, zero, r11, 10
000518  15002014  dma_cfg zero, zero, r2, 10
00051c  1f212000  addli r2, zero, 18
000520  15002014  dma_cfg zero, zero, r2, 10
000524  1f312000  addli r2, zero, 19
000528  15002014  dma_cfg zero, zero, r2, 10
00052c  1f412000  addli r2, zero, 20
000530  15002014  dma_cfg zero, zero, r2, 10
000534  1f512000  addli r2, zero, 21
000538  15002014  dma_cfg zero, zero, r2, 10
00053c  1f612000  addli r2, zero, 22
000540  15002014  dma_cfg zero, zero, r2, 10
000544  1f712000  addli r2, zero, 23
000548  15002014  dma_cfg zero, zero, r2, 10
00054c  1f013000  addli r2, zero, 24
000550  15002014  dma_cfg zero, zero, r2, 10
000554  1f113000  addli r2, zero, 25
000558  15002014  dma_cfg zero, zero, r2, 10
00055c  1f213000  addli r2, zero, 26
000560  15002014  dma_cfg zero, zero, r2, 10
000564  1f313000  addli r2, zero, 27
000568  15002014  dma_cfg zero, zero, r2, 10
00056c  1f413000  addli r2, zero, 28
000570  15002014  dma_cfg zero, zero, r2, 10
000574  1f513000  addli r2, zero, 29
000578  15002014  dma_cfg zero, zero, r2, 10
00057c  1f613000  addli r2, zero, 30
000580  15002014  dma_cfg zero, zero, r2, 10
000584  1f713000  addli r2, zero, 31
000588  15002014  dma_cfg zero, zero, r2, 10
00058c  150c0c00  dma_cfg r24, r24, zero, 0
000590  150c0002  dma_cfg r24, zero, zero, 1
000594  15000004  dma_cfg zero, zero, zero, 2
000598  15043007  dma_cfg r8, zero, r19, 3
00059c  1506a009  dma_cfg r12, zero, r26, 4
0005a0  9507900a  dma_cfg r15, zero, r9, 5
0005a4  15000010  dma_cfg zero, zero, zero, 8
0005a8  35000000  dma_run zero
0005ac  1500800b  dma_cfg zero, zero, r24, 5
0005b0  15000010  dma_cfg zero, zero, zero, 8
0005b4  1d100500  unlock r10
0005b8  7d000d00  xsignal r26, 0
0005bc  5b090000  j 72
0005c0  3b01a101  bneq r2, r26, 64
0005c4  1f510000  addli r2, zero, 5
0005c8  7d100d00  xwait r26, 0
0005cc  7d100100  xwait r2, 0
0005d0  1d000000  lock zero, zero
0005d4  1f110000  addli r2, zero, 1
0005d8  010d0000  ds_cfg r26, zero, 0
0005dc  81090002  ds_cfg r19, zero, 1
0005e0  8109001c  ds_cfg r19, zero, 14
0005e4  8109001a  ds_cfg r19, zero, 13
0005e8  21123403  shuffle_batch r4, r8, r19, 1
0005ec  1d100000  unlock zero
0005f0  7d800b00  xsignal r23, 0
0005f4  e7092ffe  storeli.w r2, -104(r30)
0005f8  7d000900  xsignal r18, 0
0005fc  5b010000  j 8
000600  e7090ffe  storeli.w zero, -104(r30)
000604  1b316300  slli r2, r6, 6
000608  0b912218  sub.s r2, r5, r2
00060c  0b117130  div.s r2, r2, r7
000610  b3020128  zext_int2long r[6:7], r2
000614  e7082ffe  storeli.w r2, -120(r30)
000618  63016fff  loadli.w r2,  -80(r30)
00061c  17b34203  sll.d r[7:8], r[6:7], r20
000620  1b36f100  slli r12, r2, 15
000624  2b010300  lui r2, 48
000628  17348303  sll.d r[9:10], r[7:8], r24
00062c  8b122610  add.s r5, r12, r2
000630  00310002  core_id r2
000634  3b3a8101  bneq r2, r24, 652
000638  6b538f00  load.d r[7:8], 8(r30)
00063c  7d100a00  xwait r20, 0
000640  63414fff  loadli.w r2,  -92(r30)
000644  0b238310  add.ul r[7:8], r[7:8], r[9:10]
000648  3fe42b00  blt.s r23, r2, 280
00064c  1f520000  addli r4, zero, 5
000650  1f011000  addli r2, zero, 8
000654  1d000200  lock zero, r4
000658  15000014  dma_cfg zero, zero, zero, 10
00065c  15008015  dma_cfg zero, zero, r24, 10
000660  1500a015  dma_cfg zero, zero, r26, 10
000664  15007015  dma_cfg zero, zero, r23, 10
000668  15002015  dma_cfg zero, zero, r18, 10
00066c  15004014  dma_cfg zero, zero, r4, 10
000670  15005015  dma_cfg zero, zero, r21, 10
000674  15004015  dma_cfg zero, zero, r20, 10
000678  15002014  dma_cfg zero, zero, r2, 10
00067c  1f111000  addli r2, zero, 9
000680  15002014  dma_cfg zero, zero, r2, 10
000684  1f211000  addli r2, zero, 10
000688  15002014  dma_cfg zero, zero, r2, 10
00068c  1f311000  addli r2, zero, 11
000690  15002014  dma_cfg zero, zero, r2, 10
000694  1f411000  addli r2, zero, 12
000698  15002014  dma_cfg zero, zero, r2, 10
00069c  1f711000  addli r2, zero, 15
0006a0  15006015  dma_cfg zero, zero, r22, 10
0006a4  1500b015  dma_cfg zero, zero, r27, 10
0006a8  15002014  dma_cfg zero, zero, r2, 10
0006ac  1f012000  addli r2, zero, 16
0006b0  15002014  dma_cfg zero, zero, r2, 10
0006b4  1f112000  addli r2, zero, 17
0006b8  15002014  dma_cfg zero, zero, r2, 10
0006bc  1f212000  addli r2, zero, 18
0006c0  15002014  dma_cfg zero, zero, r2, 10
0006c4  1f312000  addli r2, zero, 19
0006c8  15002014  dma_cfg zero, zero, r2, 10
0006cc  1f412000  addli r2, zero, 20
0006d0  15002014  dma_cfg zero, zero, r2, 10
0006d4  1f512000  addli r2, zero, 21
0006d8  15002014  dma_cfg zero, zero, r2, 10
0006dc  1f612000  addli r2, zero, 22
0006e0  15002014  dma_cfg zero, zero, r2, 10
0006e4  1f712000  addli r2, zero, 23
0006e8  15002014  dma_cfg zero, zero, r2, 10
0006ec  1f013000  addli r2, zero, 24
0006f0  15002014  dma_cfg zero, zero, r2, 10
0006f4  1f113000  addli r2, zero, 25
0006f8  15002014  dma_cfg zero, zero, r2, 10
0006fc  1f213000  addli r2, zero, 26
000700  15002014  dma_cfg zero, zero, r2, 10
000704  1f313000  addli r2, zero, 27
000708  15002014  dma_cfg zero, zero, r2, 10
00070c  1f413000  addli r2, zero, 28
000710  15002014  dma_cfg zero, zero, r2, 10
000714  1f513000  addli r2, zero, 29
000718  15002014  dma_cfg zero, zero, r2, 10
00071c  1f613000  addli r2, zero, 30
000720  15002014  dma_cfg zero, zero, r2, 10
000724  1f713000  addli r2, zero, 31
000728  15002014  dma_cfg zero, zero, r2, 10
00072c  1f010001  addli r2, zero, 128
000730  150c0c00  dma_cfg r24, r24, zero, 0
000734  150c0002  dma_cfg r24, zero, zero, 1
000738  15000004  dma_cfg zero, zero, zero, 2
00073c  95023007  dma_cfg r5, zero, r19, 3
000740  15012009  dma_cfg r2, zero, r18, 4
000744  1f010004  addli r2, zero, 512
000748  1501300b  dma_cfg r2, zero, r19, 5
00074c  15000010  dma_cfg zero, zero, zero, 8
000750  35000000  dma_run zero
000754  1500800b  dma_cfg zero, zero, r24, 5
000758  15000010  dma_cfg zero, zero, zero, 8
00075c  1d100200  unlock r4
000760  2b010300  lui r2, 48
000764  e7490ffe  storeli.w zero, -100(r30)
000768  670a0ffe  storeli.w zero, -96(r30)
00076c  1f520000  addli r4, zero, 5
000770  1d000900  lock zero, r18
000774  1b110104  ori r2, r2, 64
000778  150c0c00  dma_cfg r24, r24, zero, 0
00077c  15800304  dma_cfg zero, r7, zero, 2
000780  0b112610  add.s r2, r12, r2
000784  15013307  dma_cfg r2, r6, r19, 3
000788  1f030001  addli r6, zero, 128
00078c  9f030004  addli r7, zero, 512
000790  1f010010  addli r2, zero, 2048
000794  15832909  dma_cfg r6, r19, r18, 4
000798  9503310b  dma_cfg r7, r2, r19, 5
00079c  1f011000  addli r2, zero, 8
0007a0  15000010  dma_cfg zero, zero, zero, 8
0007a4  35000000  dma_run zero
0007a8  1500800b  dma_cfg zero, zero, r24, 5
0007ac  15000010  dma_cfg zero, zero, zero, 8
0007b0  1d100900  unlock r18
0007b4  1d000200  lock zero, r4
0007b8  15000014  dma_cfg zero, zero, zero, 10
0007bc  15008015  dma_cfg zero, zero, r24, 10
0007c0  1500a015  dma_cfg zero, zero, r26, 10
0007c4  15007015  dma_cfg zero, zero, r23, 10
0007c8  15002015  dma_cfg zero, zero, r18, 10
0007cc  15004014  dma_cfg zero, zero, r4, 10
0007d0  15005015  dma_cfg zero, zero, r21, 10
0007d4  15004015  dma_cfg zero, zero, r20, 10
0007d8  15002014  dma_cfg zero, zero, r2, 10
0007dc  1f111000  addli r2, zero, 9
0007e0  15002014  dma_cfg zero, zero, r2, 10
0007e4  1f211000  addli r2, zero, 10
0007e8  15002014  dma_cfg zero, zero, r2, 10
0007ec  1f311000  addli r2, zero, 11
0007f0  15002014  dma_cfg zero, zero, r2, 10
0007f4  1f411000  addli r2, zero, 12
0007f8  15002014  dma_cfg zero, zero, r2, 10
0007fc  1f711000  addli r2, zero, 15
000800  15006015  dma_cfg zero, zero, r22, 10
000804  1500b015  dma_cfg zero, zero, r27, 10
000808  15002014  dma_cfg zero, zero, r2, 10
00080c  1f012000  addli r2, zero, 16
000810  15002014  dma_cfg zero, zero, r2, 10
000814  1f112000  addli r2, zero, 17
000818  15002014  dma_cfg zero, zero, r2, 10
00081c  1f212000  addli r2, zero, 18
000820  15002014  dma_cfg zero, zero, r2, 10
000824  1f312000  addli r2, zero, 19
000828  15002014  dma_cfg zero, zero, r2, 10
00082c  1f412000  addli r2, zero, 20
000830  15002014  dma_cfg zero, zero, r2, 10
000834  1f512000  addli r2, zero, 21
000838  15002014  dma_cfg zero, zero, r2, 10
00083c  1f612000  addli r2, zero, 22
000840  15002014  dma_cfg zero, zero, r2, 10
000844  1f712000  addli r2, zero, 23
000848  15002014  dma_cfg zero, zero, r2, 10
00084c  1f013000  addli r2, zero, 24
000850  15002014  dma_cfg zero, zero, r2, 10
000854  1f113000  addli r2, zero, 25
000858  15002014  dma_cfg zero, zero, r2, 10
00085c  1f213000  addli r2, zero, 26
000860  15002014  dma_cfg zero, zero, r2, 10
000864  1f313000  addli r2, zero, 27
000868  15002014  dma_cfg zero, zero, r2, 10
00086c  1f413000  addli r2, zero, 28
000870  15002014  dma_cfg zero, zero, r2, 10
000874  1f513000  addli r2, zero, 29
000878  15002014  dma_cfg zero, zero, r2, 10
00087c  1f613000  addli r2, zero, 30
000880  15002014  dma_cfg zero, zero, r2, 10
000884  1f713000  addli r2, zero, 31
000888  15002014  dma_cfg zero, zero, r2, 10
00088c  150c0c00  dma_cfg r24, r24, zero, 0
000890  150c0002  dma_cfg r24, zero, zero, 1
000894  15000004  dma_cfg zero, zero, zero, 2
000898  95023007  dma_cfg r5, zero, r19, 3
00089c  15032009  dma_cfg r6, zero, r18, 4
0008a0  9503300b  dma_cfg r7, zero, r19, 5
0008a4  15000010  dma_cfg zero, zero, zero, 8
0008a8  35000000  dma_run zero
0008ac  1500800b  dma_cfg zero, zero, r24, 5
0008b0  15000010  dma_cfg zero, zero, zero, 8
0008b4  1d100200  unlock r4
0008b8  7d800a00  xsignal r21, 0
0008bc  db1a0000  j 212
0008c0  37612101  beq r2, r18, 88
0008c4  00320002  core_id r4
0008c8  3b48420f  bneq r4, r20, 7696
0008cc  1f111000  addli r2, zero, 9
0008d0  e7490ffe  storeli.w zero, -100(r30)
0008d4  7d900a00  xwait r21, 0
0008d8  7d100100  xwait r2, 0
0008dc  1d000000  lock zero, zero
0008e0  1f010001  addli r2, zero, 128
0008e4  010d0000  ds_cfg r26, zero, 0
0008e8  01010002  ds_cfg r2, zero, 1
0008ec  8109001c  ds_cfg r19, zero, 14
0008f0  0101001a  ds_cfg r2, zero, 13
0008f4  1f110000  addli r2, zero, 1
0008f8  41863205  shuffle_coa r12, r5, r19, 2
0008fc  1d100000  unlock zero
000900  7d000a00  xsignal r20, 0
000904  670a2ffe  storeli.w r2, -96(r30)
000908  1f011000  addli r2, zero, 8
00090c  7d000100  xsignal r2, 0
000910  37227201  beq r4, r23, 136
000914  5b120000  j 144
000918  1f011000  addli r2, zero, 8
00091c  7d100900  xwait r18, 0
000920  1f030000  addli r6, zero, 0
000924  9f120000  addli r5, zero, 1
000928  9f331000  addli r7, zero, 11
00092c  7d100100  xwait r2, 0
000930  1f110000  addli r2, zero, 1
000934  7d900300  xwait r7, 0
000938  9b33e300  slli r7, r6, 14
00093c  1b338300  slli r6, r6, 8
000940  1d000100  lock zero, r2
000944  89893901  mm_cfg r19, r19, r19, 0
000948  9793c300  or r7, r7, r12
00094c  1713c300  or r6, r6, r12
000950  09092904  mm_cfg r18, r18, r2, 2
000954  29037210  mm r6, r4, r7, 8
000958  9b831200  andi r7, r5, 1
00095c  1f130000  addli r6, zero, 1
000960  9f020000  addli r5, zero, 0
000964  1d100100  unlock r2
000968  3bcf03fe  bneq r7, zero, -48
00096c  1f510000  addli r2, zero, 5
000970  670a0ffe  storeli.w zero, -96(r30)
000974  7d000100  xsignal r2, 0
000978  1f111000  addli r2, zero, 9
00097c  7d000100  xsignal r2, 0
000980  1f110000  addli r2, zero, 1
000984  e7492ffe  storeli.w r2, -100(r30)
000988  1f211000  addli r2, zero, 10
00098c  7d000100  xsignal r2, 0
000990  00320002  core_id r4
000994  3b407201  bneq r4, r23, 16
000998  1f211000  addli r2, zero, 10
00099c  7d100100  xwait r2, 0
0009a0  7d900d00  xwait r27, 0
0009a4  2b010700  lui r2, 112
0009a8  3d000000  xfence
0009ac  9f020001  addli r5, zero, 128
0009b0  00a00300  mfence { lm, sm, gm }
0009b4  1b110180  ori r2, r2, 2048
0009b8  338d0228  zext_int2long r[27:28], r5
0009bc  0b1c2610  add.s r24, r12, r2
0009c0  1f71f001  addli r2, zero, 255
0009c4  80220104  csr_set csr5, r2
0009c8  1f710000  addli r2, zero, 7
0009cc  b3020128  zext_int2long r[6:7], r2
0009d0  733c5ffa  store.d r[6:7], -72(r30)
0009d4  00e00200  sync_core
0009d8  733c8ff6  store.d r[9:10], -136(r30)
0009dc  bb550200  bneq r4, zero, 372
0009e0  3d000000  xfence
0009e4  33020028  zext_int2long r[5:6], zero
0009e8  00a00300  mfence { lm, sm, gm }
0009ec  73384ffe  store.d r[5:6], -16(r30)
0009f0  5b030000  j 24
0009f4  6b528ffb  load.d r[5:6], -72(r30)
0009f8  6b538fff  load.d r[7:8], -8(r30)
0009fc  13214304  setlt.ul r2, r[7:8], r[5:6]
000a00  27120300  addli.d r[5:6], r[7:8], 1
000a04  37150100  beq r2, zero, 324
000a08  1f710000  addli r2, zero, 7
000a0c  eb570fff  load.d r[16:17], -16(r30)
000a10  733c4ffe  store.d r[5:6], -8(r30)
000a14  17342202  sll.d r[9:10], r[5:6], r2
000a18  db040000  j 36
000a1c  a7c70700  addli.d r[16:17], r[16:17], 4
000a20  0b13ac10  add.s r6, r24, r10
000a24  93a2a703  setneq.d r5, r[16:17], r[27:28]
000a28  73662300  stores.w r2, 12(r6)
000a2c  73644301  stores.w r20, 8(r6)
000a30  73626301  stores.w r22, 4(r6)
000a34  73604300  stores.w r4, 0(r6)
000a38  b7fe02fe  beq r5, zero, -68
000a3c  0ba28710  add.ul r[5:6], r[16:17], r[9:10]
000a40  1b352200  slli r10, r4, 2
000a44  0b11a610  add.s r2, r12, r10
000a48  6f49c100  loads.w r18, 12(r2)
000a4c  6f4e0100  loads.w r28, 0(r2)
000a50  ef4b4100  loads.w r23, 4(r2)
000a54  ef4a8100  loads.w r21, 8(r2)
000a58  9709d900  and r19, r18, r13
000a5c  13813105  setlt.u r2, r3, r19
000a60  3b300100  bneq r2, zero, 12
000a64  1f010900  addli r2, r18, 0
000a68  5b010000  j 8
000a6c  17119901  or r2, r18, r25
000a70  9785da00  and r11, r21, r13
000a74  1382b104  setlt.u r4, r3, r11
000a78  3b300200  bneq r4, zero, 12
000a7c  1f8a0a00  addli r20, r21, 0
000a80  5b010000  j 8
000a84  179a9a01  or r20, r21, r25
000a88  9782db00  and r5, r23, r13
000a8c  13825104  setlt.u r4, r3, r5
000a90  3b300200  bneq r4, zero, 12
000a94  1f8b0b00  addli r22, r23, 0
000a98  5b010000  j 8
000a9c  179b9b01  or r22, r23, r25
000aa0  1703de00  and r6, r28, r13
000aa4  13826104  setlt.u r4, r3, r6
000aa8  3b500200  bneq r4, zero, 20
000aac  1f020e00  addli r4, r28, 0
000ab0  13836804  setlt.u r6, r17, r6
000ab4  37500300  beq r6, zero, 20
000ab8  db040000  j 36
000abc  17129e01  or r4, r28, r25
000ac0  13836804  setlt.u r6, r17, r6
000ac4  3b600300  bneq r6, zero, 24
000ac8  1b420e01  srli r4, r28, 16
000acc  1b021200  andi r4, r4, 1
000ad0  0b124e10  add.s r4, r28, r4
000ad4  0b12e210  add.s r4, r4, r14
000ad8  17021200  and r4, r4, r1
000adc  93825804  setlt.u r5, r17, r5
000ae0  37e00200  beq r5, zero, 24
000ae4  9382b804  setlt.u r5, r17, r11
000ae8  b7b00200  beq r5, zero, 44
000aec  93823805  setlt.u r5, r17, r19
000af0  bbbc02fe  bneq r5, zero, -212
000af4  db070000  j 60
000af8  9bc20b01  srli r5, r23, 16
000afc  9b821200  andi r5, r5, 1
000b00  8b925b10  add.s r5, r23, r5
000b04  8b92e210  add.s r5, r5, r14
000b08  178b1200  and r22, r5, r1
000b0c  9382b804  setlt.u r5, r17, r11
000b10  3bff02fe  bneq r5, zero, -36
000b14  9bc20a01  srli r5, r21, 16
000b18  9b821200  andi r5, r5, 1
000b1c  8b925a10  add.s r5, r21, r5
000b20  8b92e210  add.s r5, r5, r14
000b24  178a1200  and r20, r5, r1
000b28  93823805  setlt.u r5, r17, r19
000b2c  bbcb02fe  bneq r5, zero, -272
000b30  1b410901  srli r2, r18, 16
000b34  1b011100  andi r2, r2, 1
000b38  0b112910  add.s r2, r18, r2
000b3c  0b11e110  add.s r2, r2, r14
000b40  17011100  and r2, r2, r1
000b44  5bdbffff  j -296
000b48  00320002  core_id r4
000b4c  00200100  mfence { sm }
000b50  1f711000  addli r2, zero, 15
000b54  b3020128  zext_int2long r[6:7], r2
000b58  1f110000  addli r2, zero, 1
000b5c  733c5ffe  store.d r[6:7], -8(r30)
000b60  bb552200  bneq r4, r2, 372
000b64  1f011000  addli r2, zero, 8
000b68  3d000000  xfence
000b6c  00a00300  mfence { lm, sm, gm }
000b70  33020128  zext_int2long r[5:6], r2
000b74  5b030000  j 24
000b78  6b528fff  load.d r[5:6], -8(r30)
000b7c  6b530fff  load.d r[7:8], -16(r30)
000b80  13214304  setlt.ul r2, r[7:8], r[5:6]
000b84  27120300  addli.d r[5:6], r[7:8], 1
000b88  37150100  beq r2, zero, 324
000b8c  1f710000  addli r2, zero, 7
000b90  33040028  zext_int2long r[9:10], zero
000b94  73384ffe  store.d r[5:6], -16(r30)
000b98  17332202  sll.d r[7:8], r[5:6], r2
000b9c  db040000  j 36
000ba0  27440400  addli.d r[9:10], r[9:10], 4
000ba4  8b12ac10  add.s r5, r24, r10
000ba8  1322a403  setneq.d r4, r[9:10], r[27:28]
000bac  73e62200  stores.w r2, 12(r5)
000bb0  73e42201  stores.w r18, 8(r5)
000bb4  73e24201  stores.w r20, 4(r5)
000bb8  73e06201  stores.w r22, 0(r5)
000bbc  b77e02fe  beq r4, zero, -68
000bc0  0b226410  add.ul r[5:6], r[9:10], r[7:8]
000bc4  1b352200  slli r10, r4, 2
000bc8  0b11a610  add.s r2, r12, r10
000bcc  ef47c100  loads.w r15, 12(r2)
000bd0  ef4b0100  loads.w r23, 0(r2)
000bd4  ef4a4100  loads.w r21, 4(r2)
000bd8  ef498100  loads.w r19, 8(r2)
000bdc  1788d700  and r16, r15, r13
000be0  13810105  setlt.u r2, r3, r16
000be4  3b300100  bneq r2, zero, 12
000be8  1f810700  addli r2, r15, 0
000bec  5b010000  j 8
000bf0  17919701  or r2, r15, r25
000bf4  9785d900  and r11, r19, r13
000bf8  1382b104  setlt.u r4, r3, r11
000bfc  3b300200  bneq r4, zero, 12
000c00  1f890900  addli r18, r19, 0
000c04  5b010000  j 8
000c08  17999901  or r18, r19, r25
000c0c  178eda00  and r28, r21, r13
000c10  1382c105  setlt.u r4, r3, r28
000c14  3b300200  bneq r4, zero, 12
000c18  1f8a0a00  addli r20, r21, 0
000c1c  5b010000  j 8
000c20  179a9a01  or r20, r21, r25
000c24  1782db00  and r4, r23, r13
000c28  93824104  setlt.u r5, r3, r4
000c2c  3bd00200  bneq r5, zero, 20
000c30  1f8b0b00  addli r22, r23, 0
000c34  13824804  setlt.u r4, r17, r4
000c38  37500200  beq r4, zero, 20
000c3c  db040000  j 36
000c40  179b9b01  or r22, r23, r25
000c44  13824804  setlt.u r4, r17, r4
000c48  3b600200  bneq r4, zero, 24
000c4c  1bc20b01  srli r4, r23, 16
000c50  1b021200  andi r4, r4, 1
000c54  0b924b10  add.s r4, r23, r4
000c58  0b12e210  add.s r4, r4, r14
000c5c  170b1200  and r22, r4, r1
000c60  1382c805  setlt.u r4, r17, r28
000c64  37600200  beq r4, zero, 24
000c68  1382b804  setlt.u r4, r17, r11
000c6c  b7300200  beq r4, zero, 44
000c70  13820805  setlt.u r4, r17, r16
000c74  bb3c02fe  bneq r4, zero, -212
000c78  db070000  j 60
000c7c  1bc20a01  srli r4, r21, 16
000c80  1b021200  andi r4, r4, 1
000c84  0b924a10  add.s r4, r21, r4
000c88  0b12e210  add.s r4, r4, r14
000c8c  170a1200  and r20, r4, r1
000c90  1382b804  setlt.u r4, r17, r11
000c94  3b7f02fe  bneq r4, zero, -36
000c98  1bc20901  srli r4, r19, 16
000c9c  1b021200  andi r4, r4, 1
000ca0  0b924910  add.s r4, r19, r4
000ca4  0b12e210  add.s r4, r4, r14
000ca8  17091200  and r18, r4, r1
000cac  13820805  setlt.u r4, r17, r16
000cb0  bb4b02fe  bneq r4, zero, -272
000cb4  1bc10701  srli r2, r15, 16
000cb8  1b011100  andi r2, r2, 1
000cbc  0b912710  add.s r2, r15, r2
000cc0  0b11e110  add.s r2, r2, r14
000cc4  17011100  and r2, r2, r1
000cc8  5bdbffff  j -296
000ccc  00320002  core_id r4
000cd0  00200100  mfence { sm }
000cd4  1f712000  addli r2, zero, 23
000cd8  b3020128  zext_int2long r[6:7], r2
000cdc  63013fff  loadli.w r2,  -104(r30)
000ce0  73385ffe  store.d r[6:7], -16(r30)
000ce4  b7550100  beq r2, zero, 372
000ce8  1f012000  addli r2, zero, 16
000cec  3d000000  xfence
000cf0  00a00300  mfence { lm, sm, gm }
000cf4  33020128  zext_int2long r[5:6], r2
000cf8  5b030000  j 24
000cfc  6b520fff  load.d r[5:6], -16(r30)
000d00  6b538ffe  load.d r[7:8], -24(r30)
000d04  13214304  setlt.ul r2, r[7:8], r[5:6]
000d08  27120300  addli.d r[5:6], r[7:8], 1
000d0c  37150100  beq r2, zero, 324
000d10  1f710000  addli r2, zero, 7
000d14  33040028  zext_int2long r[9:10], zero
000d18  73344ffe  store.d r[5:6], -24(r30)
000d1c  17332202  sll.d r[7:8], r[5:6], r2
000d20  db040000  j 36
000d24  27440400  addli.d r[9:10], r[9:10], 4
000d28  8b12ac10  add.s r5, r24, r10
000d2c  1322a403  setneq.d r4, r[9:10], r[27:28]
000d30  73e62200  stores.w r2, 12(r5)
000d34  73e42201  stores.w r18, 8(r5)
000d38  73e24201  stores.w r20, 4(r5)
000d3c  73e06201  stores.w r22, 0(r5)
000d40  b77e02fe  beq r4, zero, -68
000d44  0b226410  add.ul r[5:6], r[9:10], r[7:8]
000d48  1b352200  slli r10, r4, 2
000d4c  0b11a610  add.s r2, r12, r10
000d50  ef47c100  loads.w r15, 12(r2)
000d54  ef4b0100  loads.w r23, 0(r2)
000d58  ef4a4100  loads.w r21, 4(r2)
000d5c  ef498100  loads.w r19, 8(r2)
000d60  1788d700  and r16, r15, r13
000d64  13810105  setlt.u r2, r3, r16
000d68  3b300100  bneq r2, zero, 12
000d6c  1f810700  addli r2, r15, 0
000d70  5b010000  j 8
000d74  17919701  or r2, r15, r25
000d78  9785d900  and r11, r19, r13
000d7c  1382b104  setlt.u r4, r3, r11
000d80  3b300200  bneq r4, zero, 12
000d84  1f890900  addli r18, r19, 0
000d88  5b010000  j 8
000d8c  17999901  or r18, r19, r25
000d90  178eda00  and r28, r21, r13
000d94  1382c105  setlt.u r4, r3, r28
000d98  3b300200  bneq r4, zero, 12
000d9c  1f8a0a00  addli r20, r21, 0
000da0  5b010000  j 8
000da4  179a9a01  or r20, r21, r25
000da8  1782db00  and r4, r23, r13
000dac  93824104  setlt.u r5, r3, r4
000db0  3bd00200  bneq r5, zero, 20
000db4  1f8b0b00  addli r22, r23, 0
000db8  13824804  setlt.u r4, r17, r4
000dbc  37500200  beq r4, zero, 20
000dc0  db040000  j 36
000dc4  179b9b01  or r22, r23, r25
000dc8  13824804  setlt.u r4, r17, r4
000dcc  3b600200  bneq r4, zero, 24
000dd0  1bc20b01  srli r4, r23, 16
000dd4  1b021200  andi r4, r4, 1
000dd8  0b924b10  add.s r4, r23, r4
000ddc  0b12e210  add.s r4, r4, r14
000de0  170b1200  and r22, r4, r1
000de4  1382c805  setlt.u r4, r17, r28
000de8  37600200  beq r4, zero, 24
000dec  1382b804  setlt.u r4, r17, r11
000df0  b7300200  beq r4, zero, 44
000df4  13820805  setlt.u r4, r17, r16
000df8  bb3c02fe  bneq r4, zero, -212
000dfc  db070000  j 60
000e00  1bc20a01  srli r4, r21, 16
000e04  1b021200  andi r4, r4, 1
000e08  0b924a10  add.s r4, r21, r4
000e0c  0b12e210  add.s r4, r4, r14
000e10  170a1200  and r20, r4, r1
000e14  1382b804  setlt.u r4, r17, r11
000e18  3b7f02fe  bneq r4, zero, -36
000e1c  1bc20901  srli r4, r19, 16
000e20  1b021200  andi r4, r4, 1
000e24  0b924910  add.s r4, r19, r4
000e28  0b12e210  add.s r4, r4, r14
000e2c  17091200  and r18, r4, r1
000e30  13820805  setlt.u r4, r17, r16
000e34  bb4b02fe  bneq r4, zero, -272
000e38  1bc10701  srli r2, r15, 16
000e3c  1b011100  andi r2, r2, 1
000e40  0b912710  add.s r2, r15, r2
000e44  0b11e110  add.s r2, r2, r14
000e48  17011100  and r2, r2, r1
000e4c  5bdbffff  j -296
000e50  00320002  core_id r4
000e54  00200100  mfence { sm }
000e58  1f713000  addli r2, zero, 31
000e5c  b3020128  zext_int2long r[6:7], r2
000e60  1f310000  addli r2, zero, 3
000e64  73345ffe  store.d r[6:7], -24(r30)
000e68  bb552200  bneq r4, r2, 372
000e6c  1f013000  addli r2, zero, 24
000e70  3d000000  xfence
000e74  00a00300  mfence { lm, sm, gm }
000e78  33020128  zext_int2long r[5:6], r2
000e7c  5b030000  j 24
000e80  6b528ffe  load.d r[5:6], -24(r30)
000e84  6b530ffe  load.d r[7:8], -32(r30)
000e88  13214304  setlt.ul r2, r[7:8], r[5:6]
000e8c  27120300  addli.d r[5:6], r[7:8], 1
000e90  37150100  beq r2, zero, 324
000e94  1f710000  addli r2, zero, 7
000e98  33040028  zext_int2long r[9:10], zero
000e9c  73304ffe  store.d r[5:6], -32(r30)
000ea0  17332202  sll.d r[7:8], r[5:6], r2
000ea4  db040000  j 36
000ea8  27440400  addli.d r[9:10], r[9:10], 4
000eac  8b12ac10  add.s r5, r24, r10
000eb0  1322a403  setneq.d r4, r[9:10], r[27:28]
000eb4  73e62200  stores.w r2, 12(r5)
000eb8  73e42201  stores.w r18, 8(r5)
000ebc  73e24201  stores.w r20, 4(r5)
000ec0  73e06201  stores.w r22, 0(r5)
000ec4  b77e02fe  beq r4, zero, -68
000ec8  0b226410  add.ul r[5:6], r[9:10], r[7:8]
000ecc  1b352200  slli r10, r4, 2
000ed0  0b11a610  add.s r2, r12, r10
000ed4  ef47c100  loads.w r15, 12(r2)
000ed8  ef4b0100  loads.w r23, 0(r2)
000edc  ef4a4100  loads.w r21, 4(r2)
000ee0  ef498100  loads.w r19, 8(r2)
000ee4  1788d700  and r16, r15, r13
000ee8  13810105  setlt.u r2, r3, r16
000eec  3b300100  bneq r2, zero, 12
000ef0  1f810700  addli r2, r15, 0
000ef4  5b010000  j 8
000ef8  17919701  or r2, r15, r25
000efc  9785d900  and r11, r19, r13
000f00  1382b104  setlt.u r4, r3, r11
000f04  3b300200  bneq r4, zero, 12
000f08  1f890900  addli r18, r19, 0
000f0c  5b010000  j 8
000f10  17999901  or r18, r19, r25
000f14  178eda00  and r28, r21, r13
000f18  1382c105  setlt.u r4, r3, r28
000f1c  3b300200  bneq r4, zero, 12
000f20  1f8a0a00  addli r20, r21, 0
000f24  5b010000  j 8
000f28  179a9a01  or r20, r21, r25
000f2c  1782db00  and r4, r23, r13
000f30  93824104  setlt.u r5, r3, r4
000f34  3bd00200  bneq r5, zero, 20
000f38  1f8b0b00  addli r22, r23, 0
000f3c  13824804  setlt.u r4, r17, r4
000f40  37500200  beq r4, zero, 20
000f44  db040000  j 36
000f48  179b9b01  or r22, r23, r25
000f4c  13824804  setlt.u r4, r17, r4
000f50  3b600200  bneq r4, zero, 24
000f54  1bc20b01  srli r4, r23, 16
000f58  1b021200  andi r4, r4, 1
000f5c  0b924b10  add.s r4, r23, r4
000f60  0b12e210  add.s r4, r4, r14
000f64  170b1200  and r22, r4, r1
000f68  1382c805  setlt.u r4, r17, r28
000f6c  37600200  beq r4, zero, 24
000f70  1382b804  setlt.u r4, r17, r11
000f74  b7300200  beq r4, zero, 44
000f78  13820805  setlt.u r4, r17, r16
000f7c  bb3c02fe  bneq r4, zero, -212
000f80  db070000  j 60
000f84  1bc20a01  srli r4, r21, 16
000f88  1b021200  andi r4, r4, 1
000f8c  0b924a10  add.s r4, r21, r4
000f90  0b12e210  add.s r4, r4, r14
000f94  170a1200  and r20, r4, r1
000f98  1382b804  setlt.u r4, r17, r11
000f9c  3b7f02fe  bneq r4, zero, -36
000fa0  1bc20901  srli r4, r19, 16
000fa4  1b021200  andi r4, r4, 1
000fa8  0b924910  add.s r4, r19, r4
000fac  0b12e210  add.s r4, r4, r14
000fb0  17091200  and r18, r4, r1
000fb4  13820805  setlt.u r4, r17, r16
000fb8  bb4b02fe  bneq r4, zero, -272
000fbc  1bc10701  srli r2, r15, 16
000fc0  1b011100  andi r2, r2, 1
000fc4  0b912710  add.s r2, r15, r2
000fc8  0b11e110  add.s r2, r2, r14
000fcc  17011100  and r2, r2, r1
000fd0  5bdbffff  j -296
000fd4  00320002  core_id r4
000fd8  00200100  mfence { sm }
000fdc  1f714000  addli r2, zero, 39
000fe0  b3020128  zext_int2long r[6:7], r2
000fe4  63413fff  loadli.w r2,  -100(r30)
000fe8  73305ffe  store.d r[6:7], -32(r30)
000fec  b7550100  beq r2, zero, 372
000ff0  1f014000  addli r2, zero, 32
000ff4  3d000000  xfence
000ff8  00a00300  mfence { lm, sm, gm }
000ffc  33020128  zext_int2long r[5:6], r2
001000  5b030000  j 24
001004  6b520ffe  load.d r[5:6], -32(r30)
001008  6b538ffd  load.d r[7:8], -40(r30)
00100c  13214304  setlt.ul r2, r[7:8], r[5:6]
001010  27120300  addli.d r[5:6], r[7:8], 1
001014  37150100  beq r2, zero, 324
001018  1f710000  addli r2, zero, 7
00101c  33040028  zext_int2long r[9:10], zero
001020  733c4ffc  store.d r[5:6], -40(r30)
001024  17332202  sll.d r[7:8], r[5:6], r2
001028  db040000  j 36
00102c  27440400  addli.d r[9:10], r[9:10], 4
001030  8b12ac10  add.s r5, r24, r10
001034  1322a403  setneq.d r4, r[9:10], r[27:28]
001038  73e62200  stores.w r2, 12(r5)
00103c  73e42201  stores.w r18, 8(r5)
001040  73e24201  stores.w r20, 4(r5)
001044  73e06201  stores.w r22, 0(r5)
001048  b77e02fe  beq r4, zero, -68
00104c  0b226410  add.ul r[5:6], r[9:10], r[7:8]
001050  1b352200  slli r10, r4, 2
001054  0b11a610  add.s r2, r12, r10
001058  ef47c100  loads.w r15, 12(r2)
00105c  ef4b0100  loads.w r23, 0(r2)
001060  ef4a4100  loads.w r21, 4(r2)
001064  ef498100  loads.w r19, 8(r2)
001068  1788d700  and r16, r15, r13
00106c  13810105  setlt.u r2, r3, r16
001070  3b300100  bneq r2, zero, 12
001074  1f810700  addli r2, r15, 0
001078  5b010000  j 8
00107c  17919701  or r2, r15, r25
001080  9785d900  and r11, r19, r13
001084  1382b104  setlt.u r4, r3, r11
001088  3b300200  bneq r4, zero, 12
00108c  1f890900  addli r18, r19, 0
001090  5b010000  j 8
001094  17999901  or r18, r19, r25
001098  178eda00  and r28, r21, r13
00109c  1382c105  setlt.u r4, r3, r28
0010a0  3b300200  bneq r4, zero, 12
0010a4  1f8a0a00  addli r20, r21, 0
0010a8  5b010000  j 8
0010ac  179a9a01  or r20, r21, r25
0010b0  1782db00  and r4, r23, r13
0010b4  93824104  setlt.u r5, r3, r4
0010b8  3bd00200  bneq r5, zero, 20
0010bc  1f8b0b00  addli r22, r23, 0
0010c0  13824804  setlt.u r4, r17, r4
0010c4  37500200  beq r4, zero, 20
0010c8  db040000  j 36
0010cc  179b9b01  or r22, r23, r25
0010d0  13824804  setlt.u r4, r17, r4
0010d4  3b600200  bneq r4, zero, 24
0010d8  1bc20b01  srli r4, r23, 16
0010dc  1b021200  andi r4, r4, 1
0010e0  0b924b10  add.s r4, r23, r4
0010e4  0b12e210  add.s r4, r4, r14
0010e8  170b1200  and r22, r4, r1
0010ec  1382c805  setlt.u r4, r17, r28
0010f0  37600200  beq r4, zero, 24
0010f4  1382b804  setlt.u r4, r17, r11
0010f8  b7300200  beq r4, zero, 44
0010fc  13820805  setlt.u r4, r17, r16
001100  bb3c02fe  bneq r4, zero, -212
001104  db070000  j 60
001108  1bc20a01  srli r4, r21, 16
00110c  1b021200  andi r4, r4, 1
001110  0b924a10  add.s r4, r21, r4
001114  0b12e210  add.s r4, r4, r14
001118  170a1200  and r20, r4, r1
00111c  1382b804  setlt.u r4, r17, r11
001120  3b7f02fe  bneq r4, zero, -36
001124  1bc20901  srli r4, r19, 16
001128  1b021200  andi r4, r4, 1
00112c  0b924910  add.s r4, r19, r4
001130  0b12e210  add.s r4, r4, r14
001134  17091200  and r18, r4, r1
001138  13820805  setlt.u r4, r17, r16
00113c  bb4b02fe  bneq r4, zero, -272
001140  1bc10701  srli r2, r15, 16
001144  1b011100  andi r2, r2, 1
001148  0b912710  add.s r2, r15, r2
00114c  0b11e110  add.s r2, r2, r14
001150  17011100  and r2, r2, r1
001154  5bdbffff  j -296
001158  00320002  core_id r4
00115c  00200100  mfence { sm }
001160  1f715000  addli r2, zero, 47
001164  b3020128  zext_int2long r[6:7], r2
001168  1f510000  addli r2, zero, 5
00116c  733c5ffc  store.d r[6:7], -40(r30)
001170  bb552200  bneq r4, r2, 372
001174  1f015000  addli r2, zero, 40
001178  3d000000  xfence
00117c  00a00300  mfence { lm, sm, gm }
001180  33020128  zext_int2long r[5:6], r2
001184  5b030000  j 24
001188  6b528ffd  load.d r[5:6], -40(r30)
00118c  6b530ffd  load.d r[7:8], -48(r30)
001190  13214304  setlt.ul r2, r[7:8], r[5:6]
001194  27120300  addli.d r[5:6], r[7:8], 1
001198  37150100  beq r2, zero, 324
00119c  1f710000  addli r2, zero, 7
0011a0  33040028  zext_int2long r[9:10], zero
0011a4  73384ffc  store.d r[5:6], -48(r30)
0011a8  97372202  sll.d r[16:17], r[5:6], r2
0011ac  db040000  j 36
0011b0  27440400  addli.d r[9:10], r[9:10], 4
0011b4  8b12ac10  add.s r5, r24, r10
0011b8  1322a403  setneq.d r4, r[9:10], r[27:28]
0011bc  73e62200  stores.w r2, 12(r5)
0011c0  73e47200  stores.w r7, 8(r5)
0011c4  73e24201  stores.w r20, 4(r5)
0011c8  73e06201  stores.w r22, 0(r5)
0011cc  b77e02fe  beq r4, zero, -68
0011d0  0b22f410  add.ul r[5:6], r[9:10], r[16:17]
0011d4  1b352200  slli r10, r4, 2
0011d8  0b11a610  add.s r2, r12, r10
0011dc  6f49c100  loads.w r18, 12(r2)
0011e0  ef4b0100  loads.w r23, 0(r2)
0011e4  ef4a4100  loads.w r21, 4(r2)
0011e8  ef498100  loads.w r19, 8(r2)
0011ec  1703d900  and r6, r18, r13
0011f0  13816104  setlt.u r2, r3, r6
0011f4  3b300100  bneq r2, zero, 12
0011f8  1f010900  addli r2, r18, 0
0011fc  5b010000  j 8
001200  17119901  or r2, r18, r25
001204  9785d900  and r11, r19, r13
001208  1382b104  setlt.u r4, r3, r11
00120c  3b300200  bneq r4, zero, 12
001210  9f830900  addli r7, r19, 0
001214  5b010000  j 8
001218  97939901  or r7, r19, r25
00121c  178eda00  and r28, r21, r13
001220  1382c105  setlt.u r4, r3, r28
001224  3b300200  bneq r4, zero, 12
001228  1f8a0a00  addli r20, r21, 0
00122c  5b010000  j 8
001230  179a9a01  or r20, r21, r25
001234  1782db00  and r4, r23, r13
001238  93824104  setlt.u r5, r3, r4
00123c  3bd00200  bneq r5, zero, 20
001240  1f8b0b00  addli r22, r23, 0
001244  13824804  setlt.u r4, r17, r4
001248  37500200  beq r4, zero, 20
00124c  db040000  j 36
001250  179b9b01  or r22, r23, r25
001254  13824804  setlt.u r4, r17, r4
001258  3b600200  bneq r4, zero, 24
00125c  1bc20b01  srli r4, r23, 16
001260  1b021200  andi r4, r4, 1
001264  0b924b10  add.s r4, r23, r4
001268  0b12e210  add.s r4, r4, r14
00126c  170b1200  and r22, r4, r1
001270  1382c805  setlt.u r4, r17, r28
001274  37600200  beq r4, zero, 24
001278  1382b804  setlt.u r4, r17, r11
00127c  b7300200  beq r4, zero, 44
001280  13826804  setlt.u r4, r17, r6
001284  bb3c02fe  bneq r4, zero, -212
001288  db070000  j 60
00128c  1bc20a01  srli r4, r21, 16
001290  1b021200  andi r4, r4, 1
001294  0b924a10  add.s r4, r21, r4
001298  0b12e210  add.s r4, r4, r14
00129c  170a1200  and r20, r4, r1
0012a0  1382b804  setlt.u r4, r17, r11
0012a4  3b7f02fe  bneq r4, zero, -36
0012a8  1bc20901  srli r4, r19, 16
0012ac  1b021200  andi r4, r4, 1
0012b0  0b924910  add.s r4, r19, r4
0012b4  0b12e210  add.s r4, r4, r14
0012b8  97031200  and r7, r4, r1
0012bc  13826804  setlt.u r4, r17, r6
0012c0  bb4b02fe  bneq r4, zero, -272
0012c4  1b410901  srli r2, r18, 16
0012c8  1b011100  andi r2, r2, 1
0012cc  0b112910  add.s r2, r18, r2
0012d0  0b11e110  add.s r2, r2, r14
0012d4  17011100  and r2, r2, r1
0012d8  5bdbffff  j -296
0012dc  00320002  core_id r4
0012e0  00200100  mfence { sm }
0012e4  1f716000  addli r2, zero, 55
0012e8  b3020128  zext_int2long r[6:7], r2
0012ec  1f610000  addli r2, zero, 6
0012f0  73385ffc  store.d r[6:7], -48(r30)
0012f4  bb452200  bneq r4, r2, 368
0012f8  1f016000  addli r2, zero, 48
0012fc  3d000000  xfence
001300  00a00300  mfence { lm, sm, gm }
001304  33020128  zext_int2long r[5:6], r2
001308  5b030000  j 24
00130c  6b520ffd  load.d r[5:6], -48(r30)
001310  6b538ffc  load.d r[7:8], -56(r30)
001314  13214304  setlt.ul r2, r[7:8], r[5:6]
001318  27120300  addli.d r[5:6], r[7:8], 1
00131c  37150100  beq r2, zero, 324
001320  1f710000  addli r2, zero, 7
001324  33040028  zext_int2long r[9:10], zero
001328  73344ffc  store.d r[5:6], -56(r30)
00132c  17392202  sll.d r[19:20], r[5:6], r2
001330  db040000  j 36
001334  27440400  addli.d r[9:10], r[9:10], 4
001338  8b12ac10  add.s r5, r24, r10
00133c  1322a403  setneq.d r4, r[9:10], r[27:28]
001340  73e62200  stores.w r2, 12(r5)
001344  73e47200  stores.w r7, 8(r5)
001348  73e20201  stores.w r16, 4(r5)
00134c  73e06201  stores.w r22, 0(r5)
001350  b77e02fe  beq r4, zero, -68
001354  0b222411  add.ul r[5:6], r[9:10], r[19:20]
001358  1b352200  slli r10, r4, 2
00135c  0b11a610  add.s r2, r12, r10
001360  6f4ac100  loads.w r20, 12(r2)
001364  ef4b0100  loads.w r23, 0(r2)
001368  ef4a4100  loads.w r21, 4(r2)
00136c  ef478100  loads.w r15, 8(r2)
001370  1703da00  and r6, r20, r13
001374  13816104  setlt.u r2, r3, r6
001378  3b300100  bneq r2, zero, 12
00137c  1f010a00  addli r2, r20, 0
001380  5b010000  j 8
001384  17119a01  or r2, r20, r25
001388  9785d700  and r11, r15, r13
00138c  1382b104  setlt.u r4, r3, r11
001390  3b300200  bneq r4, zero, 12
001394  9f830700  addli r7, r15, 0
001398  5b010000  j 8
00139c  97939701  or r7, r15, r25
0013a0  178eda00  and r28, r21, r13
0013a4  1382c105  setlt.u r4, r3, r28
0013a8  3b300200  bneq r4, zero, 12
0013ac  1f880a00  addli r16, r21, 0
0013b0  5b010000  j 8
0013b4  17989a01  or r16, r21, r25
0013b8  1782db00  and r4, r23, r13
0013bc  93824104  setlt.u r5, r3, r4
0013c0  3bd00200  bneq r5, zero, 20
0013c4  1f8b0b00  addli r22, r23, 0
0013c8  13824804  setlt.u r4, r17, r4
0013cc  37500200  beq r4, zero, 20
0013d0  db040000  j 36
0013d4  179b9b01  or r22, r23, r25
0013d8  13824804  setlt.u r4, r17, r4
0013dc  3b600200  bneq r4, zero, 24
0013e0  1bc20b01  srli r4, r23, 16
0013e4  1b021200  andi r4, r4, 1
0013e8  0b924b10  add.s r4, r23, r4
0013ec  0b12e210  add.s r4, r4, r14
0013f0  170b1200  and r22, r4, r1
0013f4  1382c805  setlt.u r4, r17, r28
0013f8  37600200  beq r4, zero, 24
0013fc  1382b804  setlt.u r4, r17, r11
001400  b7300200  beq r4, zero, 44
001404  13826804  setlt.u r4, r17, r6
001408  bb3c02fe  bneq r4, zero, -212
00140c  db070000  j 60
001410  1bc20a01  srli r4, r21, 16
001414  1b021200  andi r4, r4, 1
001418  0b924a10  add.s r4, r21, r4
00141c  0b12e210  add.s r4, r4, r14
001420  17081200  and r16, r4, r1
001424  1382b804  setlt.u r4, r17, r11
001428  3b7f02fe  bneq r4, zero, -36
00142c  1bc20701  srli r4, r15, 16
001430  1b021200  andi r4, r4, 1
001434  0b924710  add.s r4, r15, r4
001438  0b12e210  add.s r4, r4, r14
00143c  97031200  and r7, r4, r1
001440  13826804  setlt.u r4, r17, r6
001444  bb4b02fe  bneq r4, zero, -272
001448  1b410a01  srli r2, r20, 16
00144c  1b011100  andi r2, r2, 1
001450  0b112a10  add.s r2, r20, r2
001454  0b11e110  add.s r2, r2, r14
001458  17011100  and r2, r2, r1
00145c  5bdbffff  j -296
001460  00200100  mfence { sm }
001464  1f717000  addli r2, zero, 63
001468  33020128  zext_int2long r[5:6], r2
00146c  63014fff  loadli.w r2,  -96(r30)
001470  73344ffc  store.d r[5:6], -56(r30)
001474  b7450100  beq r2, zero, 368
001478  1f017000  addli r2, zero, 56
00147c  3d000000  xfence
001480  00a00300  mfence { lm, sm, gm }
001484  33020128  zext_int2long r[5:6], r2
001488  5b030000  j 24
00148c  6b528ffc  load.d r[5:6], -56(r30)
001490  6b530ffc  load.d r[7:8], -64(r30)
001494  13214304  setlt.ul r2, r[7:8], r[5:6]
001498  27120300  addli.d r[5:6], r[7:8], 1
00149c  37150100  beq r2, zero, 324
0014a0  1f710000  addli r2, zero, 7
0014a4  33040028  zext_int2long r[9:10], zero
0014a8  73304ffc  store.d r[5:6], -64(r30)
0014ac  173b2202  sll.d r[23:24], r[5:6], r2
0014b0  db040000  j 36
0014b4  27440400  addli.d r[9:10], r[9:10], 4
0014b8  0b13ac10  add.s r6, r24, r10
0014bc  1322a403  setneq.d r4, r[9:10], r[27:28]
0014c0  73662300  stores.w r2, 12(r6)
0014c4  73647300  stores.w r7, 8(r6)
0014c8  73620301  stores.w r16, 4(r6)
0014cc  73605300  stores.w r5, 0(r6)
0014d0  b77e02fe  beq r4, zero, -68
0014d4  0b226411  add.ul r[5:6], r[9:10], r[23:24]
0014d8  1b352200  slli r10, r4, 2
0014dc  0b11a610  add.s r2, r12, r10
0014e0  6f4ac100  loads.w r20, 12(r2)
0014e4  ef4a0100  loads.w r21, 0(r2)
0014e8  6f424100  loads.w r4, 4(r2)
0014ec  ef478100  loads.w r15, 8(r2)
0014f0  1703da00  and r6, r20, r13
0014f4  13816104  setlt.u r2, r3, r6
0014f8  3b300100  bneq r2, zero, 12
0014fc  1f010a00  addli r2, r20, 0
001500  5b010000  j 8
001504  17119a01  or r2, r20, r25
001508  9785d700  and r11, r15, r13
00150c  9382b104  setlt.u r5, r3, r11
001510  3bb00200  bneq r5, zero, 12
001514  9f830700  addli r7, r15, 0
001518  5b010000  j 8
00151c  97939701  or r7, r15, r25
001520  170ed200  and r28, r4, r13
001524  9382c105  setlt.u r5, r3, r28
001528  3bb00200  bneq r5, zero, 12
00152c  1f080200  addli r16, r4, 0
001530  5b010000  j 8
001534  17189201  or r16, r4, r25
001538  1789da00  and r18, r21, r13
00153c  93822105  setlt.u r5, r3, r18
001540  3bd00200  bneq r5, zero, 20
001544  9f820a00  addli r5, r21, 0
001548  13892805  setlt.u r18, r17, r18
00154c  37500900  beq r18, zero, 20
001550  db040000  j 36
001554  97929a01  or r5, r21, r25
001558  13892805  setlt.u r18, r17, r18
00155c  3b600900  bneq r18, zero, 24
001560  9bc20a01  srli r5, r21, 16
001564  9b821200  andi r5, r5, 1
001568  8b925a10  add.s r5, r21, r5
00156c  8b92e210  add.s r5, r5, r14
001570  97821200  and r5, r5, r1
001574  1389c805  setlt.u r18, r17, r28
001578  37600900  beq r18, zero, 24
00157c  1382b804  setlt.u r4, r17, r11
001580  b7300200  beq r4, zero, 44
001584  13826804  setlt.u r4, r17, r6
001588  bb3c02fe  bneq r4, zero, -212
00158c  db070000  j 60
001590  1b480201  srli r16, r4, 16
001594  1b081800  andi r16, r16, 1
001598  0b120211  add.s r4, r4, r16
00159c  0b12e210  add.s r4, r4, r14
0015a0  17081200  and r16, r4, r1
0015a4  1382b804  setlt.u r4, r17, r11
0015a8  3b7f02fe  bneq r4, zero, -36
0015ac  1bc20701  srli r4, r15, 16
0015b0  1b021200  andi r4, r4, 1
0015b4  0b924710  add.s r4, r15, r4
0015b8  0b12e210  add.s r4, r4, r14
0015bc  97031200  and r7, r4, r1
0015c0  13826804  setlt.u r4, r17, r6
0015c4  bb4b02fe  bneq r4, zero, -272
0015c8  1b410a01  srli r2, r20, 16
0015cc  1b011100  andi r2, r2, 1
0015d0  0b112a10  add.s r2, r20, r2
0015d4  0b11e110  add.s r2, r2, r14
0015d8  17011100  and r2, r2, r1
0015dc  5bdbffff  j -296
0015e0  00200100  mfence { sm }
0015e4  63011fff  loadli.w r2,  -120(r30)
0015e8  1f020007  addli r4, zero, 896
0015ec  33020228  zext_int2long r[5:6], r4
0015f0  1b317100  slli r2, r2, 7
0015f4  33030128  zext_int2long r[7:8], r2
0015f8  1f71f001  addli r2, zero, 255
0015fc  0b224340  min.ul r[5:6], r[7:8], r[5:6]
001600  80220104  csr_set csr5, r2
001604  1f310000  addli r2, zero, 3
001608  00e00200  sync_core
00160c  27020201  addli.d r[5:6], r[5:6], 128
001610  0b226248  max.ul r[5:6], r[5:6], r[7:8]
001614  0b326218  sub.sl r[5:6], r[5:6], r[7:8]
001618  0b29a241  min.ul r[19:20], r[5:6], r[27:28]
00161c  00320002  core_id r4
001620  73342ff9  store.d r[19:20], -120(r30)
001624  bb302200  bneq r4, r2, 44
001628  1f311000  addli r2, zero, 11
00162c  7d000100  xsignal r2, 0
001630  1f411000  addli r2, zero, 12
001634  7d000100  xsignal r2, 0
001638  1f511000  addli r2, zero, 13
00163c  7d100100  xwait r2, 0
001640  1f212000  addli r2, zero, 18
001644  7d100100  xwait r2, 0
001648  6b538ffa  load.d r[7:8], -88(r30)
00164c  db6d0000  j 876
001650  63016fff  loadli.w r2,  -80(r30)
001654  ab020700  lui r5, 112
001658  6b538ffa  load.d r[7:8], -88(r30)
00165c  1b319100  slli r2, r2, 9
001660  0b155110  add.s r10, r2, r5
001664  9f620000  addli r5, zero, 6
001668  bb0b5200  bneq r4, r5, 736
00166c  6b520f01  load.d r[5:6], 16(r30)
001670  6b538ff7  load.d r[7:8], -136(r30)
001674  9f072000  addli r15, zero, 16
001678  9f340000  addli r9, zero, 3
00167c  7d900700  xwait r15, 0
001680  0b226210  add.ul r[5:6], r[5:6], r[7:8]
001684  63434fff  loadli.w r6,  -92(r30)
001688  bfd46400  blt.s r9, r6, 308
00168c  1f540000  addli r8, zero, 5
001690  9f150000  addli r11, zero, 1
001694  1f230000  addli r6, zero, 2
001698  9f630000  addli r7, zero, 6
00169c  1d000400  lock zero, r8
0016a0  15000014  dma_cfg zero, zero, zero, 10
0016a4  1500b014  dma_cfg zero, zero, r11, 10
0016a8  15006014  dma_cfg zero, zero, r6, 10
0016ac  1f430000  addli r6, zero, 4
0016b0  15009014  dma_cfg zero, zero, r9, 10
0016b4  15006014  dma_cfg zero, zero, r6, 10
0016b8  15008014  dma_cfg zero, zero, r8, 10
0016bc  15007014  dma_cfg zero, zero, r7, 10
0016c0  9f730000  addli r7, zero, 7
0016c4  15007014  dma_cfg zero, zero, r7, 10
0016c8  9f031000  addli r7, zero, 8
0016cc  15007014  dma_cfg zero, zero, r7, 10
0016d0  9f131000  addli r7, zero, 9
0016d4  15007014  dma_cfg zero, zero, r7, 10
0016d8  9f231000  addli r7, zero, 10
0016dc  15007014  dma_cfg zero, zero, r7, 10
0016e0  9f331000  addli r7, zero, 11
0016e4  15007014  dma_cfg zero, zero, r7, 10
0016e8  9f431000  addli r7, zero, 12
0016ec  15007014  dma_cfg zero, zero, r7, 10
0016f0  9f531000  addli r7, zero, 13
0016f4  15007014  dma_cfg zero, zero, r7, 10
0016f8  9f631000  addli r7, zero, 14
0016fc  15007014  dma_cfg zero, zero, r7, 10
001700  9f731000  addli r7, zero, 15
001704  15007014  dma_cfg zero, zero, r7, 10
001708  9f132000  addli r7, zero, 17
00170c  1500f014  dma_cfg zero, zero, r15, 10
001710  15007014  dma_cfg zero, zero, r7, 10
001714  9f232000  addli r7, zero, 18
001718  15007014  dma_cfg zero, zero, r7, 10
00171c  9f332000  addli r7, zero, 19
001720  15007014  dma_cfg zero, zero, r7, 10
001724  9f432000  addli r7, zero, 20
001728  15007014  dma_cfg zero, zero, r7, 10
00172c  9f532000  addli r7, zero, 21
001730  15007014  dma_cfg zero, zero, r7, 10
001734  9f632000  addli r7, zero, 22
001738  15007014  dma_cfg zero, zero, r7, 10
00173c  9f732000  addli r7, zero, 23
001740  15007014  dma_cfg zero, zero, r7, 10
001744  9f033000  addli r7, zero, 24
001748  15007014  dma_cfg zero, zero, r7, 10
00174c  9f133000  addli r7, zero, 25
001750  15007014  dma_cfg zero, zero, r7, 10
001754  9f233000  addli r7, zero, 26
001758  15007014  dma_cfg zero, zero, r7, 10
00175c  9f333000  addli r7, zero, 27
001760  15007014  dma_cfg zero, zero, r7, 10
001764  9f433000  addli r7, zero, 28
001768  15007014  dma_cfg zero, zero, r7, 10
00176c  9f533000  addli r7, zero, 29
001770  15007014  dma_cfg zero, zero, r7, 10
001774  9f633000  addli r7, zero, 30
001778  15007014  dma_cfg zero, zero, r7, 10
00177c  9f733000  addli r7, zero, 31
001780  15007014  dma_cfg zero, zero, r7, 10
001784  9f038000  addli r7, zero, 64
001788  95850500  dma_cfg r11, r11, zero, 0
00178c  95050002  dma_cfg r11, zero, zero, 1
001790  15000004  dma_cfg zero, zero, zero, 2
001794  15057006  dma_cfg r10, zero, r7, 3
001798  9f030001  addli r7, zero, 128
00179c  95036008  dma_cfg r7, zero, r6, 4
0017a0  1f030004  addli r6, zero, 512
0017a4  1503b00a  dma_cfg r6, zero, r11, 5
0017a8  15000010  dma_cfg zero, zero, zero, 8
0017ac  35000000  dma_run zero
0017b0  1500b00a  dma_cfg zero, zero, r11, 5
0017b4  15000010  dma_cfg zero, zero, zero, 8
0017b8  1d100400  unlock r8
0017bc  2b030700  lui r6, 112
0017c0  9f430000  addli r7, zero, 4
0017c4  9f150000  addli r11, zero, 1
0017c8  1f048000  addli r8, zero, 64
0017cc  1f080001  addli r16, zero, 128
0017d0  1b130304  ori r6, r6, 64
0017d4  1d800300  lock zero, r7
0017d8  95850500  dma_cfg r11, r11, zero, 0
0017dc  0b116110  add.s r2, r2, r6
0017e0  1f733900  addli r6, r18, 31
0017e4  15800204  dma_cfg zero, r5, zero, 2
0017e8  15018206  dma_cfg r2, r4, r8, 3
0017ec  1b321900  slli r4, r18, 1
0017f0  1b415300  srli r2, r6, 5
0017f4  9f020002  addli r5, zero, 256
0017f8  1f090004  addli r18, zero, 512
0017fc  1f530000  addli r6, zero, 5
001800  15082408  dma_cfg r16, r8, r2, 4
001804  1b02e203  andi r4, r4, 62
001808  1589b20a  dma_cfg r18, r5, r11, 5
00180c  9f220000  addli r5, zero, 2
001810  15004010  dma_cfg zero, zero, r4, 8
001814  35000000  dma_run zero
001818  1500b00a  dma_cfg zero, zero, r11, 5
00181c  15000010  dma_cfg zero, zero, zero, 8
001820  1d900300  unlock r7
001824  1d000300  lock zero, r6
001828  15000014  dma_cfg zero, zero, zero, 10
00182c  1500b014  dma_cfg zero, zero, r11, 10
001830  15005014  dma_cfg zero, zero, r5, 10
001834  9f620000  addli r5, zero, 6
001838  15009014  dma_cfg zero, zero, r9, 10
00183c  15007014  dma_cfg zero, zero, r7, 10
001840  9f132000  addli r7, zero, 17
001844  15006014  dma_cfg zero, zero, r6, 10
001848  15005014  dma_cfg zero, zero, r5, 10
00184c  9f720000  addli r5, zero, 7
001850  15005014  dma_cfg zero, zero, r5, 10
001854  9f021000  addli r5, zero, 8
001858  15005014  dma_cfg zero, zero, r5, 10
00185c  9f121000  addli r5, zero, 9
001860  15005014  dma_cfg zero, zero, r5, 10
001864  9f221000  addli r5, zero, 10
001868  15005014  dma_cfg zero, zero, r5, 10
00186c  9f321000  addli r5, zero, 11
001870  15005014  dma_cfg zero, zero, r5, 10
001874  9f421000  addli r5, zero, 12
001878  15005014  dma_cfg zero, zero, r5, 10
00187c  9f521000  addli r5, zero, 13
001880  15005014  dma_cfg zero, zero, r5, 10
001884  9f621000  addli r5, zero, 14
001888  15005014  dma_cfg zero, zero, r5, 10
00188c  9f721000  addli r5, zero, 15
001890  15005014  dma_cfg zero, zero, r5, 10
001894  1500f014  dma_cfg zero, zero, r15, 10
001898  15007014  dma_cfg zero, zero, r7, 10
00189c  9f232000  addli r7, zero, 18
0018a0  15007014  dma_cfg zero, zero, r7, 10
0018a4  9f332000  addli r7, zero, 19
0018a8  15007014  dma_cfg zero, zero, r7, 10
0018ac  9f432000  addli r7, zero, 20
0018b0  15007014  dma_cfg zero, zero, r7, 10
0018b4  9f532000  addli r7, zero, 21
0018b8  15007014  dma_cfg zero, zero, r7, 10
0018bc  9f632000  addli r7, zero, 22
0018c0  15007014  dma_cfg zero, zero, r7, 10
0018c4  9f732000  addli r7, zero, 23
0018c8  15007014  dma_cfg zero, zero, r7, 10
0018cc  9f033000  addli r7, zero, 24
0018d0  15007014  dma_cfg zero, zero, r7, 10
0018d4  9f133000  addli r7, zero, 25
0018d8  15007014  dma_cfg zero, zero, r7, 10
0018dc  9f233000  addli r7, zero, 26
0018e0  15007014  dma_cfg zero, zero, r7, 10
0018e4  9f333000  addli r7, zero, 27
0018e8  15007014  dma_cfg zero, zero, r7, 10
0018ec  9f433000  addli r7, zero, 28
0018f0  15007014  dma_cfg zero, zero, r7, 10
0018f4  9f533000  addli r7, zero, 29
0018f8  15007014  dma_cfg zero, zero, r7, 10
0018fc  9f633000  addli r7, zero, 30
001900  15007014  dma_cfg zero, zero, r7, 10
001904  9f733000  addli r7, zero, 31
001908  15007014  dma_cfg zero, zero, r7, 10
00190c  95850500  dma_cfg r11, r11, zero, 0
001910  95050002  dma_cfg r11, zero, zero, 1
001914  15000004  dma_cfg zero, zero, zero, 2
001918  15058006  dma_cfg r10, zero, r8, 3
00191c  15082008  dma_cfg r16, zero, r2, 4
001920  1509b00a  dma_cfg r18, zero, r11, 5
001924  15004010  dma_cfg zero, zero, r4, 8
001928  35000000  dma_run zero
00192c  1500b00a  dma_cfg zero, zero, r11, 5
001930  00320002  core_id r4
001934  15000010  dma_cfg zero, zero, zero, 8
001938  1d100300  unlock r6
00193c  7d800200  xsignal r5, 0
001940  6b538ffa  load.d r[7:8], -88(r30)
001944  db0e0000  j 116
001948  1f510000  addli r2, zero, 5
00194c  bb312200  bneq r4, r2, 108
001950  1f421000  addli r4, zero, 12
001954  1f010000  addli r2, zero, 0
001958  ab820000  lui r5, 8
00195c  7d100200  xwait r4, 0
001960  1f721000  addli r4, zero, 15
001964  7d100200  xwait r4, 0
001968  1f220000  addli r4, zero, 2
00196c  1d000200  lock zero, r4
001970  2b02803f  lui r4, 260096
001974  0d000002  ew_cfg zero, zero, zero, 1
001978  0d120200  ewcoeff_cfg r4, r4, zero, 0
00197c  1f72f000  addli r4, zero, 127
001980  0d000204  ew_cfg zero, r4, zero, 2
001984  1f120000  addli r4, zero, 1
001988  0d020006  ew_cfg r4, zero, zero, 3
00198c  0b122c10  add.s r4, r24, r2
001990  1f010104  addli r2, r2, 512
001994  2d02a200  dsmadd r4, r4, r10, 0
001998  bb5f51fe  bneq r2, r5, -12
00199c  1f210000  addli r2, zero, 2
0019a0  00320002  core_id r4
0019a4  1d100100  unlock r2
0019a8  1f511000  addli r2, zero, 13
0019ac  7d000100  xsignal r2, 0
0019b0  1f012000  addli r2, zero, 16
0019b4  7d000100  xsignal r2, 0
0019b8  2b010500  lui r2, 80
0019bc  3d000000  xfence
0019c0  00a00300  mfence { lm, sm, gm }
0019c4  0b152610  add.s r10, r12, r2
0019c8  1f71f001  addli r2, zero, 255
0019cc  80220104  csr_set csr5, r2
0019d0  00e00200  sync_core
0019d4  37010200  beq r4, zero, 64
0019d8  1f110000  addli r2, zero, 1
0019dc  b7562200  beq r4, r2, 436
0019e0  63013fff  loadli.w r2,  -104(r30)
0019e4  bb2c0100  bneq r2, zero, 808
0019e8  1f310000  addli r2, zero, 3
0019ec  37722202  beq r4, r2, 1180
0019f0  63413fff  loadli.w r2,  -100(r30)
0019f4  3b480102  bneq r2, zero, 1552
0019f8  1f510000  addli r2, zero, 5
0019fc  371e2202  beq r4, r2, 1924
001a00  1f610000  addli r2, zero, 6
001a04  b7632204  beq r4, r2, 2296
001a08  63014fff  loadli.w r2,  -96(r30)
001a0c  bb390104  bneq r2, zero, 2668
001a10  db7b0100  j 3036
001a14  3d000000  xfence
001a18  33020028  zext_int2long r[5:6], zero
001a1c  00a00300  mfence { lm, sm, gm }
001a20  73384ffa  store.d r[5:6], -80(r30)
001a24  5b030000  j 24
001a28  6b528ffb  load.d r[5:6], -72(r30)
001a2c  6b530ffc  load.d r[7:8], -64(r30)
001a30  13214304  setlt.ul r2, r[7:8], r[5:6]
001a34  27120300  addli.d r[5:6], r[7:8], 1
001a38  37150100  beq r2, zero, 324
001a3c  1f710000  addli r2, zero, 7
001a40  6b5b0ffb  load.d r[23:24], -80(r30)
001a44  73304ffc  store.d r[5:6], -64(r30)
001a48  17342202  sll.d r[9:10], r[5:6], r2
001a4c  db040000  j 36
001a50  274b0b00  addli.d r[23:24], r[23:24], 4
001a54  8b12c511  add.s r5, r10, r28
001a58  1321ab03  setneq.d r2, r[23:24], r[27:28]
001a5c  73e66200  stores.w r6, 12(r5)
001a60  73e4f200  stores.w r15, 8(r5)
001a64  73e24200  stores.w r4, 4(r5)
001a68  73e0b200  stores.w r11, 0(r5)
001a6c  b77e01fe  beq r2, zero, -68
001a70  0b228b10  add.ul r[5:6], r[23:24], r[9:10]
001a74  1b3e2200  slli r28, r4, 2
001a78  0b12cc11  add.s r4, r24, r28
001a7c  6f41c200  loads.w r2, 12(r4)
001a80  ef4a0200  loads.w r21, 0(r4)
001a84  ef424200  loads.w r5, 4(r4)
001a88  6f488200  loads.w r16, 8(r4)
001a8c  9703d100  and r7, r2, r13
001a90  13827104  setlt.u r4, r3, r7
001a94  3b300200  bneq r4, zero, 12
001a98  1f030100  addli r6, r2, 0
001a9c  5b010000  j 8
001aa0  17139101  or r6, r2, r25
001aa4  170ad800  and r20, r16, r13
001aa8  13824105  setlt.u r4, r3, r20
001aac  3b300200  bneq r4, zero, 12
001ab0  9f070800  addli r15, r16, 0
001ab4  5b010000  j 8
001ab8  97179801  or r15, r16, r25
001abc  1789d200  and r18, r5, r13
001ac0  13822105  setlt.u r4, r3, r18
001ac4  3b300200  bneq r4, zero, 12
001ac8  1f820200  addli r4, r5, 0
001acc  5b010000  j 8
001ad0  17929201  or r4, r5, r25
001ad4  9789da00  and r19, r21, r13
001ad8  93853105  setlt.u r11, r3, r19
001adc  3bd00500  bneq r11, zero, 20
001ae0  9f850a00  addli r11, r21, 0
001ae4  93893805  setlt.u r19, r17, r19
001ae8  37d00900  beq r19, zero, 20
001aec  db040000  j 36
001af0  97959a01  or r11, r21, r25
001af4  93893805  setlt.u r19, r17, r19
001af8  3be00900  bneq r19, zero, 24
001afc  9bc50a01  srli r11, r21, 16
001b00  9b851500  andi r11, r11, 1
001b04  8b95ba10  add.s r11, r21, r11
001b08  8b95e510  add.s r11, r11, r14
001b0c  97851500  and r11, r11, r1
001b10  13892805  setlt.u r18, r17, r18
001b14  37600900  beq r18, zero, 24
001b18  93824805  setlt.u r5, r17, r20
001b1c  b7b00200  beq r5, zero, 44
001b20  93827804  setlt.u r5, r17, r7
001b24  bbbc02fe  bneq r5, zero, -212
001b28  db070000  j 60
001b2c  1bc20201  srli r4, r5, 16
001b30  1b021200  andi r4, r4, 1
001b34  0b924210  add.s r4, r5, r4
001b38  0b12e210  add.s r4, r4, r14
001b3c  17021200  and r4, r4, r1
001b40  93824805  setlt.u r5, r17, r20
001b44  3bff02fe  bneq r5, zero, -36
001b48  9b420801  srli r5, r16, 16
001b4c  9b821200  andi r5, r5, 1
001b50  8b125810  add.s r5, r16, r5
001b54  8b92e210  add.s r5, r5, r14
001b58  97871200  and r15, r5, r1
001b5c  93827804  setlt.u r5, r17, r7
001b60  bbcb02fe  bneq r5, zero, -272
001b64  9b420101  srli r5, r2, 16
001b68  9b821200  andi r5, r5, 1
001b6c  0b115110  add.s r2, r2, r5
001b70  0b11e110  add.s r2, r2, r14
001b74  17031100  and r6, r2, r1
001b78  5bdbffff  j -296
001b7c  00200100  mfence { sm }
001b80  00320002  core_id r4
001b84  6b538ffa  load.d r[7:8], -88(r30)
001b88  1f110000  addli r2, zero, 1
001b8c  3b5922fe  bneq r4, r2, -428
001b90  1f011000  addli r2, zero, 8
001b94  3d000000  xfence
001b98  00a00300  mfence { lm, sm, gm }
001b9c  33020128  zext_int2long r[5:6], r2
001ba0  5b030000  j 24
001ba4  6b528fff  load.d r[5:6], -8(r30)
001ba8  6b530ffc  load.d r[7:8], -64(r30)
001bac  13214304  setlt.ul r2, r[7:8], r[5:6]
001bb0  27120300  addli.d r[5:6], r[7:8], 1
001bb4  37150100  beq r2, zero, 324
001bb8  1f710000  addli r2, zero, 7
001bbc  33040028  zext_int2long r[9:10], zero
001bc0  73304ffc  store.d r[5:6], -64(r30)
001bc4  173b2202  sll.d r[23:24], r[5:6], r2
001bc8  db040000  j 36
001bcc  27440400  addli.d r[9:10], r[9:10], 4
001bd0  8b124511  add.s r5, r10, r20
001bd4  1321a403  setneq.d r2, r[9:10], r[27:28]
001bd8  73e66200  stores.w r6, 12(r5)
001bdc  73e4f200  stores.w r15, 8(r5)
001be0  73e24200  stores.w r4, 4(r5)
001be4  73e0b200  stores.w r11, 0(r5)
001be8  b77e01fe  beq r2, zero, -68
001bec  0b226411  add.ul r[5:6], r[9:10], r[23:24]
001bf0  1b3a2200  slli r20, r4, 2
001bf4  0b124c11  add.s r4, r24, r20
001bf8  6f41c200  loads.w r2, 12(r4)
001bfc  6f4e0200  loads.w r28, 0(r4)
001c00  ef424200  loads.w r5, 4(r4)
001c04  6f488200  loads.w r16, 8(r4)
001c08  9703d100  and r7, r2, r13
001c0c  13827104  setlt.u r4, r3, r7
001c10  3b300200  bneq r4, zero, 12
001c14  1f030100  addli r6, r2, 0
001c18  5b010000  j 8
001c1c  17139101  or r6, r2, r25
001c20  970ad800  and r21, r16, r13
001c24  13825105  setlt.u r4, r3, r21
001c28  3b300200  bneq r4, zero, 12
001c2c  9f070800  addli r15, r16, 0
001c30  5b010000  j 8
001c34  97179801  or r15, r16, r25
001c38  1789d200  and r18, r5, r13
001c3c  13822105  setlt.u r4, r3, r18
001c40  3b300200  bneq r4, zero, 12
001c44  1f820200  addli r4, r5, 0
001c48  5b010000  j 8
001c4c  17929201  or r4, r5, r25
001c50  9709de00  and r19, r28, r13
001c54  93853105  setlt.u r11, r3, r19
001c58  3bd00500  bneq r11, zero, 20
001c5c  9f050e00  addli r11, r28, 0
001c60  93893805  setlt.u r19, r17, r19
001c64  37d00900  beq r19, zero, 20
001c68  db040000  j 36
001c6c  97159e01  or r11, r28, r25
001c70  93893805  setlt.u r19, r17, r19
001c74  3be00900  bneq r19, zero, 24
001c78  9b450e01  srli r11, r28, 16
001c7c  9b851500  andi r11, r11, 1
001c80  8b15be10  add.s r11, r28, r11
001c84  8b95e510  add.s r11, r11, r14
001c88  97851500  and r11, r11, r1
001c8c  13892805  setlt.u r18, r17, r18
001c90  37600900  beq r18, zero, 24
001c94  93825805  setlt.u r5, r17, r21
001c98  b7b00200  beq r5, zero, 44
001c9c  93827804  setlt.u r5, r17, r7
001ca0  bbbc02fe  bneq r5, zero, -212
001ca4  db070000  j 60
001ca8  1bc20201  srli r4, r5, 16
001cac  1b021200  andi r4, r4, 1
001cb0  0b924210  add.s r4, r5, r4
001cb4  0b12e210  add.s r4, r4, r14
001cb8  17021200  and r4, r4, r1
001cbc  93825805  setlt.u r5, r17, r21
001cc0  3bff02fe  bneq r5, zero, -36
001cc4  9b420801  srli r5, r16, 16
001cc8  9b821200  andi r5, r5, 1
001ccc  8b125810  add.s r5, r16, r5
001cd0  8b92e210  add.s r5, r5, r14
001cd4  97871200  and r15, r5, r1
001cd8  93827804  setlt.u r5, r17, r7
001cdc  bbcb02fe  bneq r5, zero, -272
001ce0  9b420101  srli r5, r2, 16
001ce4  9b821200  andi r5, r5, 1
001ce8  0b115110  add.s r2, r2, r5
001cec  0b11e110  add.s r2, r2, r14
001cf0  17031100  and r6, r2, r1
001cf4  5bdbffff  j -296
001cf8  00200100  mfence { sm }
001cfc  00320002  core_id r4
001d00  6b538ffa  load.d r[7:8], -88(r30)
001d04  63013fff  loadli.w r2,  -104(r30)
001d08  b70301fe  beq r2, zero, -800
001d0c  1f012000  addli r2, zero, 16
001d10  3d000000  xfence
001d14  00a00300  mfence { lm, sm, gm }
001d18  33020128  zext_int2long r[5:6], r2
001d1c  5b030000  j 24
001d20  6b520fff  load.d r[5:6], -16(r30)
001d24  6b538fff  load.d r[7:8], -8(r30)
001d28  13214304  setlt.ul r2, r[7:8], r[5:6]
001d2c  27120300  addli.d r[5:6], r[7:8], 1
001d30  37150100  beq r2, zero, 324
001d34  1f710000  addli r2, zero, 7
001d38  33040028  zext_int2long r[9:10], zero
001d3c  733c4ffe  store.d r[5:6], -8(r30)
001d40  173b2202  sll.d r[23:24], r[5:6], r2
001d44  db040000  j 36
001d48  27440400  addli.d r[9:10], r[9:10], 4
001d4c  8b124511  add.s r5, r10, r20
001d50  1321a403  setneq.d r2, r[9:10], r[27:28]
001d54  73e66200  stores.w r6, 12(r5)
001d58  73e4f200  stores.w r15, 8(r5)
001d5c  73e24200  stores.w r4, 4(r5)
001d60  73e0b200  stores.w r11, 0(r5)
001d64  b77e01fe  beq r2, zero, -68
001d68  0b226411  add.ul r[5:6], r[9:10], r[23:24]
001d6c  1b3a2200  slli r20, r4, 2
001d70  0b124c11  add.s r4, r24, r20
001d74  6f41c200  loads.w r2, 12(r4)
001d78  6f4e0200  loads.w r28, 0(r4)
001d7c  ef424200  loads.w r5, 4(r4)
001d80  6f488200  loads.w r16, 8(r4)
001d84  9703d100  and r7, r2, r13
001d88  13827104  setlt.u r4, r3, r7
001d8c  3b300200  bneq r4, zero, 12
001d90  1f030100  addli r6, r2, 0
001d94  5b010000  j 8
001d98  17139101  or r6, r2, r25
001d9c  970ad800  and r21, r16, r13
001da0  13825105  setlt.u r4, r3, r21
001da4  3b300200  bneq r4, zero, 12
001da8  9f070800  addli r15, r16, 0
001dac  5b010000  j 8
001db0  97179801  or r15, r16, r25
001db4  1789d200  and r18, r5, r13
001db8  13822105  setlt.u r4, r3, r18
001dbc  3b300200  bneq r4, zero, 12
001dc0  1f820200  addli r4, r5, 0
001dc4  5b010000  j 8
001dc8  17929201  or r4, r5, r25
001dcc  9709de00  and r19, r28, r13
001dd0  93853105  setlt.u r11, r3, r19
001dd4  3bd00500  bneq r11, zero, 20
001dd8  9f050e00  addli r11, r28, 0
001ddc  93893805  setlt.u r19, r17, r19
001de0  37d00900  beq r19, zero, 20
001de4  db040000  j 36
001de8  97159e01  or r11, r28, r25
001dec  93893805  setlt.u r19, r17, r19
001df0  3be00900  bneq r19, zero, 24
001df4  9b450e01  srli r11, r28, 16
001df8  9b851500  andi r11, r11, 1
001dfc  8b15be10  add.s r11, r28, r11
001e00  8b95e510  add.s r11, r11, r14
001e04  97851500  and r11, r11, r1
001e08  13892805  setlt.u r18, r17, r18
001e0c  37600900  beq r18, zero, 24
001e10  93825805  setlt.u r5, r17, r21
001e14  b7b00200  beq r5, zero, 44
001e18  93827804  setlt.u r5, r17, r7
001e1c  bbbc02fe  bneq r5, zero, -212
001e20  db070000  j 60
001e24  1bc20201  srli r4, r5, 16
001e28  1b021200  andi r4, r4, 1
001e2c  0b924210  add.s r4, r5, r4
001e30  0b12e210  add.s r4, r4, r14
001e34  17021200  and r4, r4, r1
001e38  93825805  setlt.u r5, r17, r21
001e3c  3bff02fe  bneq r5, zero, -36
001e40  9b420801  srli r5, r16, 16
001e44  9b821200  andi r5, r5, 1
001e48  8b125810  add.s r5, r16, r5
001e4c  8b92e210  add.s r5, r5, r14
001e50  97871200  and r15, r5, r1
001e54  93827804  setlt.u r5, r17, r7
001e58  bbcb02fe  bneq r5, zero, -272
001e5c  9b420101  srli r5, r2, 16
001e60  9b821200  andi r5, r5, 1
001e64  0b115110  add.s r2, r2, r5
001e68  0b11e110  add.s r2, r2, r14
001e6c  17031100  and r6, r2, r1
001e70  5bdbffff  j -296
001e74  00200100  mfence { sm }
001e78  00320002  core_id r4
001e7c  6b538ffa  load.d r[7:8], -88(r30)
001e80  1f310000  addli r2, zero, 3
001e84  bb3d22fc  bneq r4, r2, -1172
001e88  1f013000  addli r2, zero, 24
001e8c  3d000000  xfence
001e90  00a00300  mfence { lm, sm, gm }
001e94  33020128  zext_int2long r[5:6], r2
001e98  5b030000  j 24
001e9c  6b528ffe  load.d r[5:6], -24(r30)
001ea0  6b538fff  load.d r[7:8], -8(r30)
001ea4  13214304  setlt.ul r2, r[7:8], r[5:6]
001ea8  27120300  addli.d r[5:6], r[7:8], 1
001eac  37150100  beq r2, zero, 324
001eb0  1f710000  addli r2, zero, 7
001eb4  33040028  zext_int2long r[9:10], zero
001eb8  733c4ffe  store.d r[5:6], -8(r30)
001ebc  173b2202  sll.d r[23:24], r[5:6], r2
001ec0  db040000  j 36
001ec4  27440400  addli.d r[9:10], r[9:10], 4
001ec8  8b124511  add.s r5, r10, r20
001ecc  1321a403  setneq.d r2, r[9:10], r[27:28]
001ed0  73e66200  stores.w r6, 12(r5)
001ed4  73e4f200  stores.w r15, 8(r5)
001ed8  73e24200  stores.w r4, 4(r5)
001edc  73e0b200  stores.w r11, 0(r5)
001ee0  b77e01fe  beq r2, zero, -68
001ee4  0b226411  add.ul r[5:6], r[9:10], r[23:24]
001ee8  1b3a2200  slli r20, r4, 2
001eec  0b124c11  add.s r4, r24, r20
001ef0  6f41c200  loads.w r2, 12(r4)
001ef4  6f4e0200  loads.w r28, 0(r4)
001ef8  ef424200  loads.w r5, 4(r4)
001efc  6f488200  loads.w r16, 8(r4)
001f00  9703d100  and r7, r2, r13
001f04  13827104  setlt.u r4, r3, r7
001f08  3b300200  bneq r4, zero, 12
001f0c  1f030100  addli r6, r2, 0
001f10  5b010000  j 8
001f14  17139101  or r6, r2, r25
001f18  970ad800  and r21, r16, r13
001f1c  13825105  setlt.u r4, r3, r21
001f20  3b300200  bneq r4, zero, 12
001f24  9f070800  addli r15, r16, 0
001f28  5b010000  j 8
001f2c  97179801  or r15, r16, r25
001f30  1789d200  and r18, r5, r13
001f34  13822105  setlt.u r4, r3, r18
001f38  3b300200  bneq r4, zero, 12
001f3c  1f820200  addli r4, r5, 0
001f40  5b010000  j 8
001f44  17929201  or r4, r5, r25
001f48  9709de00  and r19, r28, r13
001f4c  93853105  setlt.u r11, r3, r19
001f50  3bd00500  bneq r11, zero, 20
001f54  9f050e00  addli r11, r28, 0
001f58  93893805  setlt.u r19, r17, r19
001f5c  37d00900  beq r19, zero, 20
001f60  db040000  j 36
001f64  97159e01  or r11, r28, r25
001f68  93893805  setlt.u r19, r17, r19
001f6c  3be00900  bneq r19, zero, 24
001f70  9b450e01  srli r11, r28, 16
001f74  9b851500  andi r11, r11, 1
001f78  8b15be10  add.s r11, r28, r11
001f7c  8b95e510  add.s r11, r11, r14
001f80  97851500  and r11, r11, r1
001f84  13892805  setlt.u r18, r17, r18
001f88  37600900  beq r18, zero, 24
001f8c  93825805  setlt.u r5, r17, r21
001f90  b7b00200  beq r5, zero, 44
001f94  93827804  setlt.u r5, r17, r7
001f98  bbbc02fe  bneq r5, zero, -212
001f9c  db070000  j 60
001fa0  1bc20201  srli r4, r5, 16
001fa4  1b021200  andi r4, r4, 1
001fa8  0b924210  add.s r4, r5, r4
001fac  0b12e210  add.s r4, r4, r14
001fb0  17021200  and r4, r4, r1
001fb4  93825805  setlt.u r5, r17, r21
001fb8  3bff02fe  bneq r5, zero, -36
001fbc  9b420801  srli r5, r16, 16
001fc0  9b821200  andi r5, r5, 1
001fc4  8b125810  add.s r5, r16, r5
001fc8  8b92e210  add.s r5, r5, r14
001fcc  97871200  and r15, r5, r1
001fd0  93827804  setlt.u r5, r17, r7
001fd4  bbcb02fe  bneq r5, zero, -272
001fd8  9b420101  srli r5, r2, 16
001fdc  9b821200  andi r5, r5, 1
001fe0  0b115110  add.s r2, r2, r5
001fe4  0b11e110  add.s r2, r2, r14
001fe8  17031100  and r6, r2, r1
001fec  5bdbffff  j -296
001ff0  00200100  mfence { sm }
001ff4  00320002  core_id r4
001ff8  6b538ffa  load.d r[7:8], -88(r30)
001ffc  63413fff  loadli.w r2,  -100(r30)
002000  b76701fc  beq r2, zero, -1544
002004  1f014000  addli r2, zero, 32
002008  3d000000  xfence
00200c  00a00300  mfence { lm, sm, gm }
002010  33020128  zext_int2long r[5:6], r2
002014  5b030000  j 24
002018  6b520ffe  load.d r[5:6], -32(r30)
00201c  6b538fff  load.d r[7:8], -8(r30)
002020  13214304  setlt.ul r2, r[7:8], r[5:6]
002024  27120300  addli.d r[5:6], r[7:8], 1
002028  37150100  beq r2, zero, 324
00202c  1f710000  addli r2, zero, 7
002030  330b0028  zext_int2long r[23:24], zero
002034  733c4ffe  store.d r[5:6], -8(r30)
002038  17392202  sll.d r[19:20], r[5:6], r2
00203c  db040000  j 36
002040  274b0b00  addli.d r[23:24], r[23:24], 4
002044  8b124511  add.s r5, r10, r20
002048  1321ab03  setneq.d r2, r[23:24], r[27:28]
00204c  73e66200  stores.w r6, 12(r5)
002050  73e4f200  stores.w r15, 8(r5)
002054  73e24200  stores.w r4, 4(r5)
002058  73e0b200  stores.w r11, 0(r5)
00205c  b77e01fe  beq r2, zero, -68
002060  0b222b11  add.ul r[5:6], r[23:24], r[19:20]
002064  1b3a2200  slli r20, r4, 2
002068  0b124c11  add.s r4, r24, r20
00206c  6f41c200  loads.w r2, 12(r4)
002070  6f4e0200  loads.w r28, 0(r4)
002074  ef424200  loads.w r5, 4(r4)
002078  6f488200  loads.w r16, 8(r4)
00207c  9703d100  and r7, r2, r13
002080  13827104  setlt.u r4, r3, r7
002084  3b300200  bneq r4, zero, 12
002088  1f030100  addli r6, r2, 0
00208c  5b010000  j 8
002090  17139101  or r6, r2, r25
002094  970ad800  and r21, r16, r13
002098  13825105  setlt.u r4, r3, r21
00209c  3b300200  bneq r4, zero, 12
0020a0  9f070800  addli r15, r16, 0
0020a4  5b010000  j 8
0020a8  97179801  or r15, r16, r25
0020ac  1784d200  and r8, r5, r13
0020b0  13828104  setlt.u r4, r3, r8
0020b4  3b300200  bneq r4, zero, 12
0020b8  1f820200  addli r4, r5, 0
0020bc  5b010000  j 8
0020c0  17929201  or r4, r5, r25
0020c4  9704de00  and r9, r28, r13
0020c8  93859104  setlt.u r11, r3, r9
0020cc  3bd00500  bneq r11, zero, 20
0020d0  9f050e00  addli r11, r28, 0
0020d4  93849804  setlt.u r9, r17, r9
0020d8  37d00400  beq r9, zero, 20
0020dc  db040000  j 36
0020e0  97159e01  or r11, r28, r25
0020e4  93849804  setlt.u r9, r17, r9
0020e8  3be00400  bneq r9, zero, 24
0020ec  9b440e01  srli r9, r28, 16
0020f0  9b841400  andi r9, r9, 1
0020f4  8b149e10  add.s r9, r28, r9
0020f8  8b94e410  add.s r9, r9, r14
0020fc  97851400  and r11, r9, r1
002100  13848804  setlt.u r8, r17, r8
002104  37600400  beq r8, zero, 24
002108  93825805  setlt.u r5, r17, r21
00210c  b7b00200  beq r5, zero, 44
002110  93827804  setlt.u r5, r17, r7
002114  bbbc02fe  bneq r5, zero, -212
002118  db070000  j 60
00211c  1bc20201  srli r4, r5, 16
002120  1b021200  andi r4, r4, 1
002124  0b924210  add.s r4, r5, r4
002128  0b12e210  add.s r4, r4, r14
00212c  17021200  and r4, r4, r1
002130  93825805  setlt.u r5, r17, r21
002134  3bff02fe  bneq r5, zero, -36
002138  9b420801  srli r5, r16, 16
00213c  9b821200  andi r5, r5, 1
002140  8b125810  add.s r5, r16, r5
002144  8b92e210  add.s r5, r5, r14
002148  97871200  and r15, r5, r1
00214c  93827804  setlt.u r5, r17, r7
002150  bbcb02fe  bneq r5, zero, -272
002154  9b420101  srli r5, r2, 16
002158  9b821200  andi r5, r5, 1
00215c  0b115110  add.s r2, r2, r5
002160  0b11e110  add.s r2, r2, r14
002164  17031100  and r6, r2, r1
002168  5bdbffff  j -296
00216c  00200100  mfence { sm }
002170  00320002  core_id r4
002174  6b538ffa  load.d r[7:8], -88(r30)
002178  1f510000  addli r2, zero, 5
00217c  3b1222fc  bneq r4, r2, -1916
002180  1f015000  addli r2, zero, 40
002184  3d000000  xfence
002188  00a00300  mfence { lm, sm, gm }
00218c  33020128  zext_int2long r[5:6], r2
002190  5b030000  j 24
002194  6b528ffd  load.d r[5:6], -40(r30)
002198  6b538fff  load.d r[7:8], -8(r30)
00219c  13214304  setlt.ul r2, r[7:8], r[5:6]
0021a0  27120300  addli.d r[5:6], r[7:8], 1
0021a4  37150100  beq r2, zero, 324
0021a8  1f710000  addli r2, zero, 7
0021ac  330a0028  zext_int2long r[21:22], zero
0021b0  733c4ffe  store.d r[5:6], -8(r30)
0021b4  17392202  sll.d r[19:20], r[5:6], r2
0021b8  db040000  j 36
0021bc  274a0a00  addli.d r[21:22], r[21:22], 4
0021c0  8b126511  add.s r5, r10, r22
0021c4  1321aa03  setneq.d r2, r[21:22], r[27:28]
0021c8  73e66200  stores.w r6, 12(r5)
0021cc  73e4f200  stores.w r15, 8(r5)
0021d0  73e24200  stores.w r4, 4(r5)
0021d4  73e0b200  stores.w r11, 0(r5)
0021d8  b77e01fe  beq r2, zero, -68
0021dc  0b222a11  add.ul r[5:6], r[21:22], r[19:20]
0021e0  1b3b2200  slli r22, r4, 2
0021e4  0b126c11  add.s r4, r24, r22
0021e8  6f41c200  loads.w r2, 12(r4)
0021ec  6f4e0200  loads.w r28, 0(r4)
0021f0  ef424200  loads.w r5, 4(r4)
0021f4  6f488200  loads.w r16, 8(r4)
0021f8  9703d100  and r7, r2, r13
0021fc  13827104  setlt.u r4, r3, r7
002200  3b300200  bneq r4, zero, 12
002204  1f030100  addli r6, r2, 0
002208  5b010000  j 8
00220c  17139101  or r6, r2, r25
002210  970bd800  and r23, r16, r13
002214  13827105  setlt.u r4, r3, r23
002218  3b300200  bneq r4, zero, 12
00221c  9f070800  addli r15, r16, 0
002220  5b010000  j 8
002224  97179801  or r15, r16, r25
002228  1784d200  and r8, r5, r13
00222c  13828104  setlt.u r4, r3, r8
002230  3b300200  bneq r4, zero, 12
002234  1f820200  addli r4, r5, 0
002238  5b010000  j 8
00223c  17929201  or r4, r5, r25
002240  9704de00  and r9, r28, r13
002244  93859104  setlt.u r11, r3, r9
002248  3bd00500  bneq r11, zero, 20
00224c  9f050e00  addli r11, r28, 0
002250  93849804  setlt.u r9, r17, r9
002254  37d00400  beq r9, zero, 20
002258  db040000  j 36
00225c  97159e01  or r11, r28, r25
002260  93849804  setlt.u r9, r17, r9
002264  3be00400  bneq r9, zero, 24
002268  9b440e01  srli r9, r28, 16
00226c  9b841400  andi r9, r9, 1
002270  8b149e10  add.s r9, r28, r9
002274  8b94e410  add.s r9, r9, r14
002278  97851400  and r11, r9, r1
00227c  13848804  setlt.u r8, r17, r8
002280  37600400  beq r8, zero, 24
002284  93827805  setlt.u r5, r17, r23
002288  b7b00200  beq r5, zero, 44
00228c  93827804  setlt.u r5, r17, r7
002290  bbbc02fe  bneq r5, zero, -212
002294  db070000  j 60
002298  1bc20201  srli r4, r5, 16
00229c  1b021200  andi r4, r4, 1
0022a0  0b924210  add.s r4, r5, r4
0022a4  0b12e210  add.s r4, r4, r14
0022a8  17021200  and r4, r4, r1
0022ac  93827805  setlt.u r5, r17, r23
0022b0  3bff02fe  bneq r5, zero, -36
0022b4  9b420801  srli r5, r16, 16
0022b8  9b821200  andi r5, r5, 1
0022bc  8b125810  add.s r5, r16, r5
0022c0  8b92e210  add.s r5, r5, r14
0022c4  97871200  and r15, r5, r1
0022c8  93827804  setlt.u r5, r17, r7
0022cc  bbcb02fe  bneq r5, zero, -272
0022d0  9b420101  srli r5, r2, 16
0022d4  9b821200  andi r5, r5, 1
0022d8  0b115110  add.s r2, r2, r5
0022dc  0b11e110  add.s r2, r2, r14
0022e0  17031100  and r6, r2, r1
0022e4  5bdbffff  j -296
0022e8  00200100  mfence { sm }
0022ec  00320002  core_id r4
0022f0  6b538ffa  load.d r[7:8], -88(r30)
0022f4  1f610000  addli r2, zero, 6
0022f8  3b4c22fa  bneq r4, r2, -2288
0022fc  1f016000  addli r2, zero, 48
002300  3d000000  xfence
002304  00a00300  mfence { lm, sm, gm }
002308  33020128  zext_int2long r[5:6], r2
00230c  5b030000  j 24
002310  6b520ffd  load.d r[5:6], -48(r30)
002314  6b538fff  load.d r[7:8], -8(r30)
002318  13214304  setlt.ul r2, r[7:8], r[5:6]
00231c  27120300  addli.d r[5:6], r[7:8], 1
002320  37150100  beq r2, zero, 324
002324  1f710000  addli r2, zero, 7
002328  33090028  zext_int2long r[19:20], zero
00232c  733c4ffe  store.d r[5:6], -8(r30)
002330  17342202  sll.d r[9:10], r[5:6], r2
002334  db040000  j 36
002338  27490900  addli.d r[19:20], r[19:20], 4
00233c  8b124511  add.s r5, r10, r20
002340  1321a903  setneq.d r2, r[19:20], r[27:28]
002344  73e65201  stores.w r21, 12(r5)
002348  73e4f200  stores.w r15, 8(r5)
00234c  73e24200  stores.w r4, 4(r5)
002350  73e0b200  stores.w r11, 0(r5)
002354  b77e01fe  beq r2, zero, -68
002358  0b228910  add.ul r[5:6], r[19:20], r[9:10]
00235c  1b3a2200  slli r20, r4, 2
002360  0b124c11  add.s r4, r24, r20
002364  6f41c200  loads.w r2, 12(r4)
002368  6f4e0200  loads.w r28, 0(r4)
00236c  ef424200  loads.w r5, 4(r4)
002370  6f488200  loads.w r16, 8(r4)
002374  170bd100  and r22, r2, r13
002378  13826105  setlt.u r4, r3, r22
00237c  3b300200  bneq r4, zero, 12
002380  9f0a0100  addli r21, r2, 0
002384  5b010000  j 8
002388  971a9101  or r21, r2, r25
00238c  970bd800  and r23, r16, r13
002390  13827105  setlt.u r4, r3, r23
002394  3b300200  bneq r4, zero, 12
002398  9f070800  addli r15, r16, 0
00239c  5b010000  j 8
0023a0  97179801  or r15, r16, r25
0023a4  1783d200  and r6, r5, r13
0023a8  13826104  setlt.u r4, r3, r6
0023ac  3b300200  bneq r4, zero, 12
0023b0  1f820200  addli r4, r5, 0
0023b4  5b010000  j 8
0023b8  17929201  or r4, r5, r25
0023bc  9703de00  and r7, r28, r13
0023c0  93857104  setlt.u r11, r3, r7
0023c4  3bd00500  bneq r11, zero, 20
0023c8  9f050e00  addli r11, r28, 0
0023cc  93837804  setlt.u r7, r17, r7
0023d0  37d00300  beq r7, zero, 20
0023d4  db040000  j 36
0023d8  97159e01  or r11, r28, r25
0023dc  93837804  setlt.u r7, r17, r7
0023e0  3be00300  bneq r7, zero, 24
0023e4  9b430e01  srli r7, r28, 16
0023e8  9b831300  andi r7, r7, 1
0023ec  8b137e10  add.s r7, r28, r7
0023f0  8b93e310  add.s r7, r7, r14
0023f4  97851300  and r11, r7, r1
0023f8  13836804  setlt.u r6, r17, r6
0023fc  37600300  beq r6, zero, 24
002400  93827805  setlt.u r5, r17, r23
002404  b7b00200  beq r5, zero, 44
002408  93826805  setlt.u r5, r17, r22
00240c  bbbc02fe  bneq r5, zero, -212
002410  db070000  j 60
002414  1bc20201  srli r4, r5, 16
002418  1b021200  andi r4, r4, 1
00241c  0b924210  add.s r4, r5, r4
002420  0b12e210  add.s r4, r4, r14
002424  17021200  and r4, r4, r1
002428  93827805  setlt.u r5, r17, r23
00242c  3bff02fe  bneq r5, zero, -36
002430  9b420801  srli r5, r16, 16
002434  9b821200  andi r5, r5, 1
002438  8b125810  add.s r5, r16, r5
00243c  8b92e210  add.s r5, r5, r14
002440  97871200  and r15, r5, r1
002444  93826805  setlt.u r5, r17, r22
002448  bbcb02fe  bneq r5, zero, -272
00244c  9b420101  srli r5, r2, 16
002450  9b821200  andi r5, r5, 1
002454  0b115110  add.s r2, r2, r5
002458  0b11e110  add.s r2, r2, r14
00245c  970a1100  and r21, r2, r1
002460  5bdbffff  j -296
002464  00200100  mfence { sm }
002468  00320002  core_id r4
00246c  6b538ffa  load.d r[7:8], -88(r30)
002470  63014fff  loadli.w r2,  -96(r30)
002474  b7650100  beq r2, zero, 376
002478  1f017000  addli r2, zero, 56
00247c  3d000000  xfence
002480  00a00300  mfence { lm, sm, gm }
002484  33020128  zext_int2long r[5:6], r2
002488  5b030000  j 24
00248c  6b528ffc  load.d r[5:6], -56(r30)
002490  6b538fff  load.d r[7:8], -8(r30)
002494  13214304  setlt.ul r2, r[7:8], r[5:6]
002498  27120300  addli.d r[5:6], r[7:8], 1
00249c  37150100  beq r2, zero, 324
0024a0  1f710000  addli r2, zero, 7
0024a4  b3070028  zext_int2long r[16:17], zero
0024a8  733c4ffe  store.d r[5:6], -8(r30)
0024ac  17342202  sll.d r[9:10], r[5:6], r2
0024b0  db040000  j 36
0024b4  a7c70700  addli.d r[16:17], r[16:17], 4
0024b8  8b122511  add.s r5, r10, r18
0024bc  13a1a703  setneq.d r2, r[16:17], r[27:28]
0024c0  73e63201  stores.w r19, 12(r5)
0024c4  73e45201  stores.w r21, 8(r5)
0024c8  73e24200  stores.w r4, 4(r5)
0024cc  73e0b200  stores.w r11, 0(r5)
0024d0  b77e01fe  beq r2, zero, -68
0024d4  0ba28710  add.ul r[5:6], r[16:17], r[9:10]
0024d8  1b392200  slli r18, r4, 2
0024dc  0b122c11  add.s r4, r24, r18
0024e0  6f41c200  loads.w r2, 12(r4)
0024e4  6f4e0200  loads.w r28, 0(r4)
0024e8  ef424200  loads.w r5, 4(r4)
0024ec  6f4b8200  loads.w r22, 8(r4)
0024f0  170ad100  and r20, r2, r13
0024f4  13824105  setlt.u r4, r3, r20
0024f8  3b300200  bneq r4, zero, 12
0024fc  9f090100  addli r19, r2, 0
002500  5b010000  j 8
002504  97199101  or r19, r2, r25
002508  970bdb00  and r23, r22, r13
00250c  13827105  setlt.u r4, r3, r23
002510  3b300200  bneq r4, zero, 12
002514  9f0a0b00  addli r21, r22, 0
002518  5b010000  j 8
00251c  971a9b01  or r21, r22, r25
002520  1783d200  and r6, r5, r13
002524  13826104  setlt.u r4, r3, r6
002528  3b300200  bneq r4, zero, 12
00252c  1f820200  addli r4, r5, 0
002530  5b010000  j 8
002534  17929201  or r4, r5, r25
002538  9703de00  and r7, r28, r13
00253c  93857104  setlt.u r11, r3, r7
002540  3bd00500  bneq r11, zero, 20
002544  9f050e00  addli r11, r28, 0
002548  93837804  setlt.u r7, r17, r7
00254c  37d00300  beq r7, zero, 20
002550  db040000  j 36
002554  97159e01  or r11, r28, r25
002558  93837804  setlt.u r7, r17, r7
00255c  3be00300  bneq r7, zero, 24
002560  9b430e01  srli r7, r28, 16
002564  9b831300  andi r7, r7, 1
002568  8b137e10  add.s r7, r28, r7
00256c  8b93e310  add.s r7, r7, r14
002570  97851300  and r11, r7, r1
002574  13836804  setlt.u r6, r17, r6
002578  37600300  beq r6, zero, 24
00257c  93827805  setlt.u r5, r17, r23
002580  b7b00200  beq r5, zero, 44
002584  93824805  setlt.u r5, r17, r20
002588  bbbc02fe  bneq r5, zero, -212
00258c  db070000  j 60
002590  1bc20201  srli r4, r5, 16
002594  1b021200  andi r4, r4, 1
002598  0b924210  add.s r4, r5, r4
00259c  0b12e210  add.s r4, r4, r14
0025a0  17021200  and r4, r4, r1
0025a4  93827805  setlt.u r5, r17, r23
0025a8  3bff02fe  bneq r5, zero, -36
0025ac  9b420b01  srli r5, r22, 16
0025b0  9b821200  andi r5, r5, 1
0025b4  8b125b10  add.s r5, r22, r5
0025b8  8b92e210  add.s r5, r5, r14
0025bc  978a1200  and r21, r5, r1
0025c0  93824805  setlt.u r5, r17, r20
0025c4  bbcb02fe  bneq r5, zero, -272
0025c8  9b420101  srli r5, r2, 16
0025cc  9b821200  andi r5, r5, 1
0025d0  0b115110  add.s r2, r2, r5
0025d4  0b11e110  add.s r2, r2, r14
0025d8  97091100  and r19, r2, r1
0025dc  5bdbffff  j -296
0025e0  00200100  mfence { sm }
0025e4  00320002  core_id r4
0025e8  6b538ffa  load.d r[7:8], -88(r30)
0025ec  1f71f001  addli r2, zero, 255
0025f0  9f3b0000  addli r23, zero, 3
0025f4  80220104  csr_set csr5, r2
0025f8  00e00200  sync_core
0025fc  376172ef  beq r4, r23, -9128
002600  6b550ff9  load.d r[11:12], -112(r30)
002604  1f490000  addli r18, zero, 4
002608  9f098000  addli r19, zero, 64
00260c  1f7a0000  addli r20, zero, 7
002610  9f6a0000  addli r21, zero, 6
002614  1f5b1000  addli r22, zero, 13
002618  1f1c0000  addli r24, zero, 1
00261c  1f2d0000  addli r26, zero, 2
002620  9f6d1000  addli r27, zero, 14
002624  bb0102ee  bneq r4, zero, -9120
002628  6341effe  loadli.w r2,  -140(r30)
00262c  6b540ff8  load.d r[9:10], -128(r30)
002630  eb578f01  load.d r[16:17], 24(r30)
002634  1f5e0000  addli r28, zero, 5
002638  1b316100  slli r2, r2, 6
00263c  33120128  sext_int2long r[5:6], r2
002640  1f112000  addli r2, zero, 17
002644  17342402  sll.d r[9:10], r[9:10], r2
002648  7d100100  xwait r2, 0
00264c  1d000e00  lock zero, r28
002650  0b336240  min.sl r[7:8], r[5:6], r[7:8]
002654  2b010500  lui r2, 80
002658  0ba48710  add.ul r[9:10], r[16:17], r[9:10]
00265c  eb578ff7  load.d r[16:17], -136(r30)
002660  27038300  addli.d r[7:8], r[7:8], 64
002664  150c0c00  dma_cfg r24, r24, zero, 0
002668  1b110104  ori r2, r2, 64
00266c  15000c02  dma_cfg zero, r24, zero, 1
002670  0b334348  max.sl r[7:8], r[7:8], r[5:6]
002674  0b112610  add.s r2, r12, r2
002678  0b24f410  add.ul r[9:10], r[9:10], r[16:17]
00267c  0b324318  sub.sl r[5:6], r[7:8], r[5:6]
002680  33830928  zext_int2long r[7:8], r19
002684  95040004  dma_cfg r9, zero, zero, 2
002688  eb578ff8  load.d r[16:17], -120(r30)
00268c  0b326240  min.sl r[5:6], r[5:6], r[7:8]
002690  15043107  dma_cfg r8, r2, r19, 3
002694  9f030001  addli r7, zero, 128
002698  1ff33700  addli r6, r15, 31
00269c  1b415300  srli r2, r6, 5
0026a0  1bb31700  slli r6, r15, 1
0026a4  95892308  dma_cfg r19, r7, r2, 4
0026a8  1b01e303  andi r2, r6, 62
0026ac  1f030004  addli r6, zero, 512
0026b0  9f030010  addli r7, zero, 2048
0026b4  9503430a  dma_cfg r7, r6, r4, 5
0026b8  15002010  dma_cfg zero, zero, r2, 8
0026bc  35000000  dma_run zero
0026c0  1500800b  dma_cfg zero, zero, r24, 5
0026c4  1f212000  addli r2, zero, 18
0026c8  15000010  dma_cfg zero, zero, zero, 8
0026cc  1d100e00  unlock r28
0026d0  7d000100  xsignal r2, 0
0026d4  5b76fbff  j -9296
0026d8  e7490ffe  storeli.w zero, -100(r30)
0026dc  670a0ffe  storeli.w zero, -96(r30)
0026e0  b76a72f1  beq r4, r23, -7496
0026e4  5b58fcff  j -7488
0026e8  7d000000  xsignal zero, 0
0026ec  bbe00200  bneq r5, zero, 56
0026f0  9f200000  addli r1, zero, 2
0026f4  7d100000  xwait zero, 0
0026f8  7d100000  xwait zero, 0
0026fc  7d100000  xwait zero, 0
002700  7d100000  xwait zero, 0
002704  7d100000  xwait zero, 0
002708  7d100000  xwait zero, 0
00270c  7d100000  xwait zero, 0
002710  7d100000  xwait zero, 0
002714  1d800000  lock zero, r1
002718  0d000020  ew_cfg zero, zero, zero, 16
00271c  1d900000  unlock r1
002720  7d400000  xsignal_mode_cfg zero
002724  9f8e5e01  addli sp, sp, 168
002728  00a00300  mfence { lm, sm, gm }
00272c  00100000  exit
002730  00100000  exit
002734  00100000  exit
002738  00100000  exit
00273c  00100000  exit
002740  00100000  exit
002744  00100000  exit
002748  00100000  exit
00274c  00100000  exit
002750  00100000  exit
002754  00100000  exit
002758  00100000  exit
00275c  00100000  exit
002760  00100000  exit
002764  00100000  exit
002768  00100000  exit
00276c  00100000  exit
002770  00100000  exit
002774  00100000  exit
002778  00100000  exit
00277c  00100000  exit
002780  00100000  exit
002784  00100000  exit
002788  00100000  exit
00278c  00100000  exit
002790  00100000  exit
002794  00100000  exit
002798  00100000  exit
00279c  00100000  exit
0027a0  00100000  exit
0027a4  00100000  exit
0027a8  00100000  exit
0027ac  00100000  exit
0027b0  00100000  exit
0027b4  00100000  exit
0027b8  00100000  exit
0027bc  00100000  exit
0027c0  00100000  exit
0027c4  00100000  exit
0027c8  00100000  exit
0027cc  00100000  exit
0027d0  00100000  exit
0027d4  00100000  exit
0027d8  00100000  exit
0027dc  00100000  exit
0027e0  00100000  exit
0027e4  00100000  exit
0027e8  00100000  exit
0027ec  00100000  exit
0027f0  00100000  exit
0027f4  00100000  exit
0027f8  00100000  exit
0027fc  00100000  exit
002800  00100000  exit
002804  00100000  exit
002808  00100000  exit
00280c  00100000  exit
002810  00100000  exit
002814  00100000  exit
002818  00100000  exit
00281c  00100000  exit
002820  00100000  exit
002824  00100000  exit
002828  00100000  exit
00282c  00100000  exit
002830  00100000  exit
002834  00100000  exit
002838  00100000  exit
00283c  00100000  exit
002840  00100000  exit
002844  00100000  exit
002848  00100000  exit
00284c  00100000  exit
002850  00100000  exit
002854  00100000  exit
002858  00100000  exit
00285c  00100000  exit
002860  00100000  exit
002864  00100000  exit
002868  00100000  exit
00286c  00100000  exit
002870  00100000  exit
002874  00100000  exit
002878  00100000  exit
00287c  00100000  exit
002880  00100000  exit
002884  00100000  exit
002888  00100000  exit
00288c  00100000  exit
002890  00100000  exit
002894  00100000  exit
002898  00100000  exit
00289c  00100000  exit
0028a0  00100000  exit
0028a4  00100000  exit
0028a8  00100000  exit
0028ac  00100000  exit
0028b0  00100000  exit
0028b4  00100000  exit
0028b8  00100000  exit
0028bc  00100000  exit
0028c0  00100000  exit
0028c4  00100000  exit
0028c8  00100000  exit
0028cc  00100000  exit
0028d0  00100000  exit
0028d4  00100000  exit
0028d8  00100000  exit
0028dc  00100000  exit
0028e0  00100000  exit
0028e4  00100000  exit
0028e8  00100000  exit
0028ec  00100000  exit
0028f0  00100000  exit
0028f4  00100000  exit
0028f8  00100000  exit
0028fc  00100000  exit
002900  00100000  exit
002904  00100000  exit
002908  00100000  exit
00290c  00100000  exit
002910  00100000  exit
002914  00100000  exit
002918  00100000  exit
00291c  00100000  exit
002920  00100000  exit
002924  00100000  exit
002928  00100000  exit
00292c  00100000  exit
002930  00100000  exit
002934  00100000  exit
002938  00100000  exit
00293c  00100000  exit
002940  00100000  exit
002944  00100000  exit
002948  00100000  exit
00294c  00100000  exit
002950  00100000  exit
002954  00100000  exit
002958  00100000  exit
00295c  00100000  exit
002960  00100000  exit
002964  00100000  exit
002968  00100000  exit
00296c  00100000  exit
