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
0000bc  80340002  core_id r9
0000c0  1f8f5e01  addli r30, sp, 168
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00400  beq r9, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b150000  j 168
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  1d100100  unlock r2
0000fc  1f510000  addli r2, zero, 5
000100  80a10004  csr_set csr3, r1
000104  9f301000  addli r1, zero, 11
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  7d000100  xsignal r2, 0
00011c  7d000100  xsignal r2, 0
000120  7d000100  xsignal r2, 0
000124  9f300000  addli r1, zero, 3
000128  1f111000  addli r2, zero, 9
00012c  7d800000  xsignal r1, 0
000130  7d800000  xsignal r1, 0
000134  7d800000  xsignal r1, 0
000138  7d000100  xsignal r2, 0
00013c  7d000100  xsignal r2, 0
000140  7d000100  xsignal r2, 0
000144  9f700000  addli r1, zero, 7
000148  1f212000  addli r2, zero, 18
00014c  7d800000  xsignal r1, 0
000150  7d800000  xsignal r1, 0
000154  7d800000  xsignal r1, 0
000158  7d000100  xsignal r2, 0
00015c  7d000100  xsignal r2, 0
000160  7d000100  xsignal r2, 0
000164  9f002000  addli r1, zero, 16
000168  1f611000  addli r2, zero, 14
00016c  7d800000  xsignal r1, 0
000170  7d800000  xsignal r1, 0
000174  7d800000  xsignal r1, 0
000178  7d000100  xsignal r2, 0
00017c  7d000100  xsignal r2, 0
000180  7d000100  xsignal r2, 0
000184  e3004f00  loadli.w r1,  32(r30)
000188  63414f00  loadli.w r2,  36(r30)
00018c  00d20002  load_param_i r4, 1
000190  e3015f00  loadli.w r3,  40(r30)
000194  8b101120  mul.s r1, r2, r1
000198  1f010200  addli r2, r4, 0
00019c  0b913050  fmac.s r2, r1, r3
0001a0  8b913020  mul.s r3, r1, r3
0001a4  1f71f1ff  addli r2, r2, -1
0001a8  0b114130  div.s r2, r2, r4
0001ac  00520002  load_param_i r4, 0
0001b0  8b104120  mul.s r1, r2, r4
0001b4  0b114150  fmac.s r2, r2, r4
0001b8  0b113140  min.s r2, r2, r3
0001bc  cb341112  ble.s r2, r1, 9516
0001c0  33110128  sext_int2long r[3:4], r2
0001c4  33950028  sext_int2long r[11:12], r1
0001c8  1f390000  addli r18, zero, 3
0001cc  9f098000  addli r19, zero, 64
0001d0  9f6a0000  addli r21, zero, 6
0001d4  1f5b1000  addli r22, zero, 13
0001d8  9f1b0000  addli r23, zero, 1
0001dc  1f2c0000  addli r24, zero, 2
0001e0  1f4d0000  addli r26, zero, 4
0001e4  9f6d1000  addli r27, zero, 14
0001e8  ab0c4000  lui r25, 1024
0001ec  1f020000  addli r4, zero, 0
0001f0  73342ff6  store.d r[3:4], -152(r30)
0001f4  1f71f00f  addli r2, zero, 2047
0001f8  ab01807f  lui r3, 522240
0001fc  ab80ffff  lui r1, 1048568
000200  73301ff6  store.d r[2:3], -160(r30)
000204  abf0ff7f  lui r1, 524287
000208  2bf17f7f  lui r2, 522239
00020c  9b96f0ff  ori r13, r1, 4095
000210  ab700000  lui r1, 7
000214  9b18f1ff  ori r17, r2, 4095
000218  1b97f0ff  ori r14, r1, 4095
00021c  b3000028  zext_int2long r[2:3], zero
000220  733c1ff4  store.d r[2:3], -168(r30)
000224  ab00ffff  lui r1, 1048560
000228  5b090000  j 72
00022c  9f6d1000  addli r27, zero, 14
000230  1f112000  addli r2, zero, 17
000234  9f098000  addli r19, zero, 64
000238  9f6a0000  addli r21, zero, 6
00023c  1f5b1000  addli r22, zero, 13
000240  9f1b0000  addli r23, zero, 1
000244  1f2c0000  addli r24, zero, 2
000248  1f4d0000  addli r26, zero, 4
00024c  7d800d00  xsignal r27, 0
000250  7d000100  xsignal r2, 0
000254  6b550ff9  load.d r[11:12], -112(r30)
000258  6b528ff6  load.d r[5:6], -152(r30)
00025c  27150500  addli.d r[11:12], r[11:12], 1
000260  13314504  setlt.sl r2, r[11:12], r[5:6]
000264  63424fff  loadli.w r4,  -92(r30)
000268  1f120200  addli r4, r4, 1
00026c  b7710112  beq r2, zero, 9340
000270  63015f00  loadli.w r2,  40(r30)
000274  674a4ffe  storeli.w r4, -92(r30)
000278  63424f00  loadli.w r4,  36(r30)
00027c  9f031000  addli r7, zero, 8
000280  1f740000  addli r8, zero, 7
000284  7338aff8  store.d r[11:12], -112(r30)
000288  1f7a0000  addli r20, zero, 7
00028c  0b112530  div.s r2, r10, r2
000290  8b124130  div.s r5, r2, r4
000294  0b933231  div.s r6, r5, r19
000298  1b313300  slli r2, r6, 3
00029c  0b922318  sub.s r4, r7, r2
0002a0  8b137240  min.s r7, r4, r7
0002a4  0b927238  mod.s r4, r5, r7
0002a8  0b122210  add.s r4, r4, r2
0002ac  13014404  setlt.u r2, r8, r4
0002b0  33040228  zext_int2long r[9:10], r4
0002b4  67474ffe  storeli.w r4, -140(r30)
0002b8  1f421000  addli r4, zero, 12
0002bc  73308ff8  store.d r[9:10], -128(r30)
0002c0  97344402  sll.d r[10:11], r[9:10], r4
0002c4  3b300100  bneq r2, zero, 12
0002c8  eb558ff5  load.d r[12:13], -168(r30)
0002cc  db010000  j 12
0002d0  eb550ff6  load.d r[12:13], -160(r30)
0002d4  9785b402  and.d r[12:13], r[10:11], r[12:13]
0002d8  634e4fff  loadli.w r28,  -92(r30)
0002dc  0b112e39  mod.s r2, r28, r18
0002e0  670b2ffe  storeli.w r2, -80(r30)
0002e4  1b32e100  slli r4, r2, 14
0002e8  1f018003  addli r2, zero, 448
0002ec  b3070128  zext_int2long r[16:17], r2
0002f0  2b810100  lui r2, 24
0002f4  0b142210  add.s r8, r4, r2
0002f8  00310002  core_id r2
0002fc  7334fffa  store.d r[16:17], -88(r30)
000300  bb0a7101  bneq r2, r23, 672
000304  8bb4b418  sub.sl r[10:11], r[10:11], r[12:13]
000308  97d45403  sra.d r[10:11], r[10:11], r21
00030c  8bb5f440  min.sl r[12:13], r[10:11], r[16:17]
000310  eb570ff8  load.d r[16:17], -128(r30)
000314  7d100900  xwait r18, 0
000318  8bb49518  sub.sl r[10:11], r[12:13], r[10:11]
00031c  eb550f00  load.d r[12:13], 0(r30)
000320  97b76703  sll.d r[16:17], r[16:17], r22
000324  9f848400  addli r9, r9, 64
000328  8ba7f510  add.ul r[16:17], r[12:13], r[16:17]
00032c  1f062000  addli r12, zero, 16
000330  3f54cc01  blt.s r24, r28, 276
000334  1f550000  addli r10, zero, 5
000338  1f011000  addli r2, zero, 8
00033c  1d000500  lock zero, r10
000340  15000014  dma_cfg zero, zero, zero, 10
000344  15007015  dma_cfg zero, zero, r23, 10
000348  15008015  dma_cfg zero, zero, r24, 10
00034c  15002015  dma_cfg zero, zero, r18, 10
000350  1500a015  dma_cfg zero, zero, r26, 10
000354  1500a014  dma_cfg zero, zero, r10, 10
000358  15005015  dma_cfg zero, zero, r21, 10
00035c  15004015  dma_cfg zero, zero, r20, 10
000360  15002014  dma_cfg zero, zero, r2, 10
000364  1f111000  addli r2, zero, 9
000368  15002014  dma_cfg zero, zero, r2, 10
00036c  1f211000  addli r2, zero, 10
000370  15002014  dma_cfg zero, zero, r2, 10
000374  1f311000  addli r2, zero, 11
000378  15002014  dma_cfg zero, zero, r2, 10
00037c  1f411000  addli r2, zero, 12
000380  15002014  dma_cfg zero, zero, r2, 10
000384  1f711000  addli r2, zero, 15
000388  15006015  dma_cfg zero, zero, r22, 10
00038c  1500b015  dma_cfg zero, zero, r27, 10
000390  15002014  dma_cfg zero, zero, r2, 10
000394  1f112000  addli r2, zero, 17
000398  1500c014  dma_cfg zero, zero, r12, 10
00039c  15002014  dma_cfg zero, zero, r2, 10
0003a0  1f212000  addli r2, zero, 18
0003a4  15002014  dma_cfg zero, zero, r2, 10
0003a8  1f312000  addli r2, zero, 19
0003ac  15002014  dma_cfg zero, zero, r2, 10
0003b0  1f412000  addli r2, zero, 20
0003b4  15002014  dma_cfg zero, zero, r2, 10
0003b8  1f512000  addli r2, zero, 21
0003bc  15002014  dma_cfg zero, zero, r2, 10
0003c0  1f612000  addli r2, zero, 22
0003c4  15002014  dma_cfg zero, zero, r2, 10
0003c8  1f712000  addli r2, zero, 23
0003cc  15002014  dma_cfg zero, zero, r2, 10
0003d0  1f013000  addli r2, zero, 24
0003d4  15002014  dma_cfg zero, zero, r2, 10
0003d8  1f113000  addli r2, zero, 25
0003dc  15002014  dma_cfg zero, zero, r2, 10
0003e0  1f213000  addli r2, zero, 26
0003e4  15002014  dma_cfg zero, zero, r2, 10
0003e8  1f313000  addli r2, zero, 27
0003ec  15002014  dma_cfg zero, zero, r2, 10
0003f0  1f413000  addli r2, zero, 28
0003f4  15002014  dma_cfg zero, zero, r2, 10
0003f8  1f513000  addli r2, zero, 29
0003fc  15002014  dma_cfg zero, zero, r2, 10
000400  1f613000  addli r2, zero, 30
000404  15002014  dma_cfg zero, zero, r2, 10
000408  1f713000  addli r2, zero, 31
00040c  15002014  dma_cfg zero, zero, r2, 10
000410  1f010001  addli r2, zero, 128
000414  958b0b00  dma_cfg r23, r23, zero, 0
000418  950b0002  dma_cfg r23, zero, zero, 1
00041c  15000004  dma_cfg zero, zero, zero, 2
000420  15043007  dma_cfg r8, zero, r19, 3
000424  15018009  dma_cfg r2, zero, r24, 4
000428  1f010002  addli r2, zero, 256
00042c  1501300b  dma_cfg r2, zero, r19, 5
000430  15000010  dma_cfg zero, zero, zero, 8
000434  35000000  dma_run zero
000438  1500700b  dma_cfg zero, zero, r23, 5
00043c  15000010  dma_cfg zero, zero, zero, 8
000440  1d100500  unlock r10
000444  2b810100  lui r2, 24
000448  e7090ffe  storeli.w zero, -104(r30)
00044c  9f550000  addli r11, zero, 5
000450  1f750000  addli r10, zero, 7
000454  1d000d00  lock zero, r26
000458  1b110104  ori r2, r2, 64
00045c  958b0b00  dma_cfg r23, r23, zero, 0
000460  15000804  dma_cfg zero, r16, zero, 2
000464  0b112210  add.s r2, r4, r2
000468  15813707  dma_cfg r2, r15, r19, 3
00046c  9f070001  addli r15, zero, 128
000470  1f080002  addli r16, zero, 256
000474  1f011000  addli r2, zero, 8
000478  95878909  dma_cfg r15, r19, r24, 4
00047c  1588970a  dma_cfg r16, r15, r9, 5
000480  15000010  dma_cfg zero, zero, zero, 8
000484  35000000  dma_run zero
000488  1500700b  dma_cfg zero, zero, r23, 5
00048c  15000010  dma_cfg zero, zero, zero, 8
000490  1d100d00  unlock r26
000494  1d800500  lock zero, r11
000498  15000014  dma_cfg zero, zero, zero, 10
00049c  15007015  dma_cfg zero, zero, r23, 10
0004a0  15008015  dma_cfg zero, zero, r24, 10
0004a4  15002015  dma_cfg zero, zero, r18, 10
0004a8  1500a015  dma_cfg zero, zero, r26, 10
0004ac  1500b014  dma_cfg zero, zero, r11, 10
0004b0  15005015  dma_cfg zero, zero, r21, 10
0004b4  1500a014  dma_cfg zero, zero, r10, 10
0004b8  15002014  dma_cfg zero, zero, r2, 10
0004bc  1f111000  addli r2, zero, 9
0004c0  15002014  dma_cfg zero, zero, r2, 10
0004c4  1f211000  addli r2, zero, 10
0004c8  15002014  dma_cfg zero, zero, r2, 10
0004cc  1f311000  addli r2, zero, 11
0004d0  15002014  dma_cfg zero, zero, r2, 10
0004d4  1f411000  addli r2, zero, 12
0004d8  15002014  dma_cfg zero, zero, r2, 10
0004dc  1f711000  addli r2, zero, 15
0004e0  15006015  dma_cfg zero, zero, r22, 10
0004e4  1500b015  dma_cfg zero, zero, r27, 10
0004e8  15002014  dma_cfg zero, zero, r2, 10
0004ec  1f112000  addli r2, zero, 17
0004f0  1500c014  dma_cfg zero, zero, r12, 10
0004f4  15002014  dma_cfg zero, zero, r2, 10
0004f8  1f212000  addli r2, zero, 18
0004fc  15002014  dma_cfg zero, zero, r2, 10
000500  1f312000  addli r2, zero, 19
000504  15002014  dma_cfg zero, zero, r2, 10
000508  1f412000  addli r2, zero, 20
00050c  15002014  dma_cfg zero, zero, r2, 10
000510  1f512000  addli r2, zero, 21
000514  15002014  dma_cfg zero, zero, r2, 10
000518  1f612000  addli r2, zero, 22
00051c  15002014  dma_cfg zero, zero, r2, 10
000520  1f712000  addli r2, zero, 23
000524  15002014  dma_cfg zero, zero, r2, 10
000528  1f013000  addli r2, zero, 24
00052c  15002014  dma_cfg zero, zero, r2, 10
000530  1f113000  addli r2, zero, 25
000534  15002014  dma_cfg zero, zero, r2, 10
000538  1f213000  addli r2, zero, 26
00053c  15002014  dma_cfg zero, zero, r2, 10
000540  1f313000  addli r2, zero, 27
000544  15002014  dma_cfg zero, zero, r2, 10
000548  1f413000  addli r2, zero, 28
00054c  15002014  dma_cfg zero, zero, r2, 10
000550  1f513000  addli r2, zero, 29
000554  15002014  dma_cfg zero, zero, r2, 10
000558  1f613000  addli r2, zero, 30
00055c  15002014  dma_cfg zero, zero, r2, 10
000560  1f713000  addli r2, zero, 31
000564  15002014  dma_cfg zero, zero, r2, 10
000568  958b0b00  dma_cfg r23, r23, zero, 0
00056c  950b0002  dma_cfg r23, zero, zero, 1
000570  15000004  dma_cfg zero, zero, zero, 2
000574  15043007  dma_cfg r8, zero, r19, 3
000578  95078009  dma_cfg r15, zero, r24, 4
00057c  1508900a  dma_cfg r16, zero, r9, 5
000580  80340002  core_id r9
000584  15000010  dma_cfg zero, zero, zero, 8
000588  35000000  dma_run zero
00058c  1500700b  dma_cfg zero, zero, r23, 5
000590  15000010  dma_cfg zero, zero, zero, 8
000594  1d900500  unlock r11
000598  7d000c00  xsignal r24, 0
00059c  5b0a0000  j 80
0005a0  80340002  core_id r9
0005a4  3b818401  bneq r9, r24, 64
0005a8  1f510000  addli r2, zero, 5
0005ac  7d100c00  xwait r24, 0
0005b0  7d100100  xwait r2, 0
0005b4  1d000000  lock zero, zero
0005b8  1f110000  addli r2, zero, 1
0005bc  010c0000  ds_cfg r24, zero, 0
0005c0  81090002  ds_cfg r19, zero, 1
0005c4  8109001c  ds_cfg r19, zero, 14
0005c8  8109001a  ds_cfg r19, zero, 13
0005cc  21123403  shuffle_batch r4, r8, r19, 1
0005d0  1d100000  unlock zero
0005d4  7d000900  xsignal r18, 0
0005d8  e7092ffe  storeli.w r2, -104(r30)
0005dc  7d000d00  xsignal r26, 0
0005e0  5b010000  j 8
0005e4  e7090ffe  storeli.w zero, -104(r30)
0005e8  1f750000  addli r10, zero, 7
0005ec  1b316300  slli r2, r6, 6
0005f0  0b912218  sub.s r2, r5, r2
0005f4  0b117130  div.s r2, r2, r7
0005f8  b3020128  zext_int2long r[6:7], r2
0005fc  e7082ffe  storeli.w r2, -120(r30)
000600  63016fff  loadli.w r2,  -80(r30)
000604  17b3a202  sll.d r[7:8], r[6:7], r10
000608  1b36f100  slli r12, r2, 15
00060c  2b410200  lui r2, 36
000610  17337303  sll.d r[7:8], r[7:8], r23
000614  8b122610  add.s r5, r12, r2
000618  733c6ff6  store.d r[7:8], -136(r30)
00061c  3bca5401  bneq r9, r21, 656
000620  a7070300  addli.d r[16:17], r[7:8], 0
000624  6b538f00  load.d r[7:8], 8(r30)
000628  7d100500  xwait r10, 0
00062c  63414fff  loadli.w r2,  -92(r30)
000630  0b23f310  add.ul r[7:8], r[7:8], r[16:17]
000634  3f642c00  blt.s r24, r2, 280
000638  1f520000  addli r4, zero, 5
00063c  1f011000  addli r2, zero, 8
000640  1d000200  lock zero, r4
000644  15000014  dma_cfg zero, zero, zero, 10
000648  15007015  dma_cfg zero, zero, r23, 10
00064c  15008015  dma_cfg zero, zero, r24, 10
000650  15002015  dma_cfg zero, zero, r18, 10
000654  1500a015  dma_cfg zero, zero, r26, 10
000658  15004014  dma_cfg zero, zero, r4, 10
00065c  15005015  dma_cfg zero, zero, r21, 10
000660  1500a014  dma_cfg zero, zero, r10, 10
000664  15002014  dma_cfg zero, zero, r2, 10
000668  1f111000  addli r2, zero, 9
00066c  15002014  dma_cfg zero, zero, r2, 10
000670  1f211000  addli r2, zero, 10
000674  15002014  dma_cfg zero, zero, r2, 10
000678  1f311000  addli r2, zero, 11
00067c  15002014  dma_cfg zero, zero, r2, 10
000680  1f411000  addli r2, zero, 12
000684  15002014  dma_cfg zero, zero, r2, 10
000688  1f711000  addli r2, zero, 15
00068c  15006015  dma_cfg zero, zero, r22, 10
000690  1500b015  dma_cfg zero, zero, r27, 10
000694  15002014  dma_cfg zero, zero, r2, 10
000698  1f012000  addli r2, zero, 16
00069c  15002014  dma_cfg zero, zero, r2, 10
0006a0  1f112000  addli r2, zero, 17
0006a4  15002014  dma_cfg zero, zero, r2, 10
0006a8  1f212000  addli r2, zero, 18
0006ac  15002014  dma_cfg zero, zero, r2, 10
0006b0  1f312000  addli r2, zero, 19
0006b4  15002014  dma_cfg zero, zero, r2, 10
0006b8  1f412000  addli r2, zero, 20
0006bc  15002014  dma_cfg zero, zero, r2, 10
0006c0  1f512000  addli r2, zero, 21
0006c4  15002014  dma_cfg zero, zero, r2, 10
0006c8  1f612000  addli r2, zero, 22
0006cc  15002014  dma_cfg zero, zero, r2, 10
0006d0  1f712000  addli r2, zero, 23
0006d4  15002014  dma_cfg zero, zero, r2, 10
0006d8  1f013000  addli r2, zero, 24
0006dc  15002014  dma_cfg zero, zero, r2, 10
0006e0  1f113000  addli r2, zero, 25
0006e4  15002014  dma_cfg zero, zero, r2, 10
0006e8  1f213000  addli r2, zero, 26
0006ec  15002014  dma_cfg zero, zero, r2, 10
0006f0  1f313000  addli r2, zero, 27
0006f4  15002014  dma_cfg zero, zero, r2, 10
0006f8  1f413000  addli r2, zero, 28
0006fc  15002014  dma_cfg zero, zero, r2, 10
000700  1f513000  addli r2, zero, 29
000704  15002014  dma_cfg zero, zero, r2, 10
000708  1f613000  addli r2, zero, 30
00070c  15002014  dma_cfg zero, zero, r2, 10
000710  1f713000  addli r2, zero, 31
000714  15002014  dma_cfg zero, zero, r2, 10
000718  1f010001  addli r2, zero, 128
00071c  958b0b00  dma_cfg r23, r23, zero, 0
000720  950b0002  dma_cfg r23, zero, zero, 1
000724  15000004  dma_cfg zero, zero, zero, 2
000728  95023007  dma_cfg r5, zero, r19, 3
00072c  1501a009  dma_cfg r2, zero, r26, 4
000730  1f010004  addli r2, zero, 512
000734  1501300b  dma_cfg r2, zero, r19, 5
000738  15000010  dma_cfg zero, zero, zero, 8
00073c  35000000  dma_run zero
000740  1500700b  dma_cfg zero, zero, r23, 5
000744  15000010  dma_cfg zero, zero, zero, 8
000748  1d100200  unlock r4
00074c  2b410200  lui r2, 36
000750  e7490ffe  storeli.w zero, -100(r30)
000754  670a0ffe  storeli.w zero, -96(r30)
000758  1f520000  addli r4, zero, 5
00075c  1d000d00  lock zero, r26
000760  1b110104  ori r2, r2, 64
000764  958b0b00  dma_cfg r23, r23, zero, 0
000768  15800304  dma_cfg zero, r7, zero, 2
00076c  0b112610  add.s r2, r12, r2
000770  15013307  dma_cfg r2, r6, r19, 3
000774  1f030001  addli r6, zero, 128
000778  9f030004  addli r7, zero, 512
00077c  1f010010  addli r2, zero, 2048
000780  1583a909  dma_cfg r6, r19, r26, 4
000784  9503310b  dma_cfg r7, r2, r19, 5
000788  1f011000  addli r2, zero, 8
00078c  15000010  dma_cfg zero, zero, zero, 8
000790  35000000  dma_run zero
000794  1500700b  dma_cfg zero, zero, r23, 5
000798  15000010  dma_cfg zero, zero, zero, 8
00079c  1d100d00  unlock r26
0007a0  1d000200  lock zero, r4
0007a4  15000014  dma_cfg zero, zero, zero, 10
0007a8  15007015  dma_cfg zero, zero, r23, 10
0007ac  15008015  dma_cfg zero, zero, r24, 10
0007b0  15002015  dma_cfg zero, zero, r18, 10
0007b4  1500a015  dma_cfg zero, zero, r26, 10
0007b8  15004014  dma_cfg zero, zero, r4, 10
0007bc  15005015  dma_cfg zero, zero, r21, 10
0007c0  1500a014  dma_cfg zero, zero, r10, 10
0007c4  15002014  dma_cfg zero, zero, r2, 10
0007c8  1f111000  addli r2, zero, 9
0007cc  15002014  dma_cfg zero, zero, r2, 10
0007d0  1f211000  addli r2, zero, 10
0007d4  15002014  dma_cfg zero, zero, r2, 10
0007d8  1f311000  addli r2, zero, 11
0007dc  15002014  dma_cfg zero, zero, r2, 10
0007e0  1f411000  addli r2, zero, 12
0007e4  15002014  dma_cfg zero, zero, r2, 10
0007e8  1f711000  addli r2, zero, 15
0007ec  15006015  dma_cfg zero, zero, r22, 10
0007f0  1500b015  dma_cfg zero, zero, r27, 10
0007f4  15002014  dma_cfg zero, zero, r2, 10
0007f8  1f012000  addli r2, zero, 16
0007fc  15002014  dma_cfg zero, zero, r2, 10
000800  1f112000  addli r2, zero, 17
000804  15002014  dma_cfg zero, zero, r2, 10
000808  1f212000  addli r2, zero, 18
00080c  15002014  dma_cfg zero, zero, r2, 10
000810  1f312000  addli r2, zero, 19
000814  15002014  dma_cfg zero, zero, r2, 10
000818  1f412000  addli r2, zero, 20
00081c  15002014  dma_cfg zero, zero, r2, 10
000820  1f512000  addli r2, zero, 21
000824  15002014  dma_cfg zero, zero, r2, 10
000828  1f612000  addli r2, zero, 22
00082c  15002014  dma_cfg zero, zero, r2, 10
000830  1f712000  addli r2, zero, 23
000834  15002014  dma_cfg zero, zero, r2, 10
000838  1f013000  addli r2, zero, 24
00083c  15002014  dma_cfg zero, zero, r2, 10
000840  1f113000  addli r2, zero, 25
000844  15002014  dma_cfg zero, zero, r2, 10
000848  1f213000  addli r2, zero, 26
00084c  15002014  dma_cfg zero, zero, r2, 10
000850  1f313000  addli r2, zero, 27
000854  15002014  dma_cfg zero, zero, r2, 10
000858  1f413000  addli r2, zero, 28
00085c  15002014  dma_cfg zero, zero, r2, 10
000860  1f513000  addli r2, zero, 29
000864  15002014  dma_cfg zero, zero, r2, 10
000868  1f613000  addli r2, zero, 30
00086c  15002014  dma_cfg zero, zero, r2, 10
000870  1f713000  addli r2, zero, 31
000874  15002014  dma_cfg zero, zero, r2, 10
000878  958b0b00  dma_cfg r23, r23, zero, 0
00087c  950b0002  dma_cfg r23, zero, zero, 1
000880  15000004  dma_cfg zero, zero, zero, 2
000884  95023007  dma_cfg r5, zero, r19, 3
000888  1503a009  dma_cfg r6, zero, r26, 4
00088c  9503300b  dma_cfg r7, zero, r19, 5
000890  15000010  dma_cfg zero, zero, zero, 8
000894  35000000  dma_run zero
000898  1500700b  dma_cfg zero, zero, r23, 5
00089c  15000010  dma_cfg zero, zero, zero, 8
0008a0  1d100200  unlock r4
0008a4  7d800a00  xsignal r21, 0
0008a8  db1a0000  j 212
0008ac  37e1a401  beq r9, r26, 88
0008b0  9f730000  addli r7, zero, 7
0008b4  bb98740e  bneq r9, r7, 7716
0008b8  1f111000  addli r2, zero, 9
0008bc  e7490ffe  storeli.w zero, -100(r30)
0008c0  7d900a00  xwait r21, 0
0008c4  7d100100  xwait r2, 0
0008c8  1d000000  lock zero, zero
0008cc  1f010001  addli r2, zero, 128
0008d0  010c0000  ds_cfg r24, zero, 0
0008d4  01010002  ds_cfg r2, zero, 1
0008d8  8109001c  ds_cfg r19, zero, 14
0008dc  0101001a  ds_cfg r2, zero, 13
0008e0  1f110000  addli r2, zero, 1
0008e4  41863205  shuffle_coa r12, r5, r19, 2
0008e8  1d100000  unlock zero
0008ec  7d800300  xsignal r7, 0
0008f0  670a2ffe  storeli.w r2, -96(r30)
0008f4  1f011000  addli r2, zero, 8
0008f8  7d000100  xsignal r2, 0
0008fc  37a22401  beq r9, r18, 136
000900  5b120000  j 144
000904  1f011000  addli r2, zero, 8
000908  7d100d00  xwait r26, 0
00090c  1f030000  addli r6, zero, 0
000910  9f120000  addli r5, zero, 1
000914  9f331000  addli r7, zero, 11
000918  7d100100  xwait r2, 0
00091c  1f110000  addli r2, zero, 1
000920  7d900300  xwait r7, 0
000924  9b33e300  slli r7, r6, 14
000928  1b338300  slli r6, r6, 8
00092c  1d000100  lock zero, r2
000930  89893901  mm_cfg r19, r19, r19, 0
000934  9793c300  or r7, r7, r12
000938  1713c300  or r6, r6, r12
00093c  090d2d04  mm_cfg r26, r26, r2, 2
000940  29037210  mm r6, r4, r7, 8
000944  9b831200  andi r7, r5, 1
000948  1f130000  addli r6, zero, 1
00094c  9f020000  addli r5, zero, 0
000950  1d100100  unlock r2
000954  3bcf03fe  bneq r7, zero, -48
000958  1f510000  addli r2, zero, 5
00095c  670a0ffe  storeli.w zero, -96(r30)
000960  7d000100  xsignal r2, 0
000964  1f111000  addli r2, zero, 9
000968  7d000100  xsignal r2, 0
00096c  1f110000  addli r2, zero, 1
000970  e7492ffe  storeli.w r2, -100(r30)
000974  1f211000  addli r2, zero, 10
000978  7d000100  xsignal r2, 0
00097c  9f730000  addli r7, zero, 7
000980  3bc02401  bneq r9, r18, 16
000984  1f211000  addli r2, zero, 10
000988  7d100100  xwait r2, 0
00098c  7d900d00  xwait r27, 0
000990  2b410500  lui r2, 84
000994  1f020001  addli r4, zero, 128
000998  3d000000  xfence
00099c  00a00300  mfence { lm, sm, gm }
0009a0  1b110160  ori r2, r2, 1536
0009a4  330d0228  zext_int2long r[27:28], r4
0009a8  33820328  zext_int2long r[5:6], r7
0009ac  0b1c2610  add.s r24, r12, r2
0009b0  1f71f001  addli r2, zero, 255
0009b4  80220104  csr_set csr5, r2
0009b8  733c4ffa  store.d r[5:6], -72(r30)
0009bc  00e00200  sync_core
0009c0  bbc50400  bneq r9, zero, 368
0009c4  3d000000  xfence
0009c8  33020028  zext_int2long r[5:6], zero
0009cc  00a00300  mfence { lm, sm, gm }
0009d0  73384ffe  store.d r[5:6], -16(r30)
0009d4  5b030000  j 24
0009d8  6b528ffb  load.d r[5:6], -72(r30)
0009dc  6b548fff  load.d r[9:10], -8(r30)
0009e0  13214404  setlt.ul r2, r[9:10], r[5:6]
0009e4  27120400  addli.d r[5:6], r[9:10], 1
0009e8  37050100  beq r2, zero, 320
0009ec  eb570fff  load.d r[16:17], -16(r30)
0009f0  17347202  sll.d r[9:10], r[5:6], r7
0009f4  733c4ffe  store.d r[5:6], -8(r30)
0009f8  db040000  j 36
0009fc  a7c70700  addli.d r[16:17], r[16:17], 4
000a00  0b13ac10  add.s r6, r24, r10
000a04  93a2a703  setneq.d r5, r[16:17], r[27:28]
000a08  73662300  stores.w r2, 12(r6)
000a0c  73644301  stores.w r20, 8(r6)
000a10  73626301  stores.w r22, 4(r6)
000a14  73604300  stores.w r4, 0(r6)
000a18  378f02fe  beq r5, zero, -64
000a1c  0ba28710  add.ul r[5:6], r[16:17], r[9:10]
000a20  1b352200  slli r10, r4, 2
000a24  0b11a610  add.s r2, r12, r10
000a28  6f49c100  loads.w r18, 12(r2)
000a2c  6f4e0100  loads.w r28, 0(r2)
000a30  ef4b4100  loads.w r23, 4(r2)
000a34  ef4a8100  loads.w r21, 8(r2)
000a38  9709d900  and r19, r18, r13
000a3c  13813105  setlt.u r2, r3, r19
000a40  3b300100  bneq r2, zero, 12
000a44  1f010900  addli r2, r18, 0
000a48  5b010000  j 8
000a4c  17119901  or r2, r18, r25
000a50  9785da00  and r11, r21, r13
000a54  1382b104  setlt.u r4, r3, r11
000a58  3b300200  bneq r4, zero, 12
000a5c  1f8a0a00  addli r20, r21, 0
000a60  5b010000  j 8
000a64  179a9a01  or r20, r21, r25
000a68  9782db00  and r5, r23, r13
000a6c  13825104  setlt.u r4, r3, r5
000a70  3b300200  bneq r4, zero, 12
000a74  1f8b0b00  addli r22, r23, 0
000a78  5b010000  j 8
000a7c  179b9b01  or r22, r23, r25
000a80  1703de00  and r6, r28, r13
000a84  13826104  setlt.u r4, r3, r6
000a88  3b500200  bneq r4, zero, 20
000a8c  1f020e00  addli r4, r28, 0
000a90  13836804  setlt.u r6, r17, r6
000a94  37500300  beq r6, zero, 20
000a98  db040000  j 36
000a9c  17129e01  or r4, r28, r25
000aa0  13836804  setlt.u r6, r17, r6
000aa4  3b600300  bneq r6, zero, 24
000aa8  1b420e01  srli r4, r28, 16
000aac  1b021200  andi r4, r4, 1
000ab0  0b124e10  add.s r4, r28, r4
000ab4  0b12e210  add.s r4, r4, r14
000ab8  17021200  and r4, r4, r1
000abc  93825804  setlt.u r5, r17, r5
000ac0  37e00200  beq r5, zero, 24
000ac4  9382b804  setlt.u r5, r17, r11
000ac8  b7b00200  beq r5, zero, 44
000acc  93823805  setlt.u r5, r17, r19
000ad0  bbbc02fe  bneq r5, zero, -212
000ad4  db070000  j 60
000ad8  9bc20b01  srli r5, r23, 16
000adc  9b821200  andi r5, r5, 1
000ae0  8b925b10  add.s r5, r23, r5
000ae4  8b92e210  add.s r5, r5, r14
000ae8  178b1200  and r22, r5, r1
000aec  9382b804  setlt.u r5, r17, r11
000af0  3bff02fe  bneq r5, zero, -36
000af4  9bc20a01  srli r5, r21, 16
000af8  9b821200  andi r5, r5, 1
000afc  8b925a10  add.s r5, r21, r5
000b00  8b92e210  add.s r5, r5, r14
000b04  178a1200  and r20, r5, r1
000b08  93823805  setlt.u r5, r17, r19
000b0c  bbcb02fe  bneq r5, zero, -272
000b10  1b410901  srli r2, r18, 16
000b14  1b011100  andi r2, r2, 1
000b18  0b112910  add.s r2, r18, r2
000b1c  0b11e110  add.s r2, r2, r14
000b20  17011100  and r2, r2, r1
000b24  5bdbffff  j -296
000b28  80340002  core_id r9
000b2c  00200100  mfence { sm }
000b30  1f711000  addli r2, zero, 15
000b34  33020128  zext_int2long r[5:6], r2
000b38  1f110000  addli r2, zero, 1
000b3c  733c4ffe  store.d r[5:6], -8(r30)
000b40  bbe52400  bneq r9, r2, 376
000b44  1f011000  addli r2, zero, 8
000b48  3d000000  xfence
000b4c  00a00300  mfence { lm, sm, gm }
000b50  33020128  zext_int2long r[5:6], r2
000b54  db030000  j 28
000b58  6b528fff  load.d r[5:6], -8(r30)
000b5c  6b530fff  load.d r[7:8], -16(r30)
000b60  13214304  setlt.ul r2, r[7:8], r[5:6]
000b64  27120300  addli.d r[5:6], r[7:8], 1
000b68  9f730000  addli r7, zero, 7
000b6c  37150100  beq r2, zero, 324
000b70  1f710000  addli r2, zero, 7
000b74  33040028  zext_int2long r[9:10], zero
000b78  73384ffe  store.d r[5:6], -16(r30)
000b7c  17332202  sll.d r[7:8], r[5:6], r2
000b80  db040000  j 36
000b84  27440400  addli.d r[9:10], r[9:10], 4
000b88  8b12ac10  add.s r5, r24, r10
000b8c  1322a403  setneq.d r4, r[9:10], r[27:28]
000b90  73e62200  stores.w r2, 12(r5)
000b94  73e42201  stores.w r18, 8(r5)
000b98  73e24201  stores.w r20, 4(r5)
000b9c  73e06201  stores.w r22, 0(r5)
000ba0  b76e02fe  beq r4, zero, -72
000ba4  0b226410  add.ul r[5:6], r[9:10], r[7:8]
000ba8  1b352200  slli r10, r4, 2
000bac  0b11a610  add.s r2, r12, r10
000bb0  ef47c100  loads.w r15, 12(r2)
000bb4  ef4b0100  loads.w r23, 0(r2)
000bb8  ef4a4100  loads.w r21, 4(r2)
000bbc  ef498100  loads.w r19, 8(r2)
000bc0  1788d700  and r16, r15, r13
000bc4  13810105  setlt.u r2, r3, r16
000bc8  3b300100  bneq r2, zero, 12
000bcc  1f810700  addli r2, r15, 0
000bd0  5b010000  j 8
000bd4  17919701  or r2, r15, r25
000bd8  9785d900  and r11, r19, r13
000bdc  1382b104  setlt.u r4, r3, r11
000be0  3b300200  bneq r4, zero, 12
000be4  1f890900  addli r18, r19, 0
000be8  5b010000  j 8
000bec  17999901  or r18, r19, r25
000bf0  178eda00  and r28, r21, r13
000bf4  1382c105  setlt.u r4, r3, r28
000bf8  3b300200  bneq r4, zero, 12
000bfc  1f8a0a00  addli r20, r21, 0
000c00  5b010000  j 8
000c04  179a9a01  or r20, r21, r25
000c08  1782db00  and r4, r23, r13
000c0c  93824104  setlt.u r5, r3, r4
000c10  3bd00200  bneq r5, zero, 20
000c14  1f8b0b00  addli r22, r23, 0
000c18  13824804  setlt.u r4, r17, r4
000c1c  37500200  beq r4, zero, 20
000c20  db040000  j 36
000c24  179b9b01  or r22, r23, r25
000c28  13824804  setlt.u r4, r17, r4
000c2c  3b600200  bneq r4, zero, 24
000c30  1bc20b01  srli r4, r23, 16
000c34  1b021200  andi r4, r4, 1
000c38  0b924b10  add.s r4, r23, r4
000c3c  0b12e210  add.s r4, r4, r14
000c40  170b1200  and r22, r4, r1
000c44  1382c805  setlt.u r4, r17, r28
000c48  37600200  beq r4, zero, 24
000c4c  1382b804  setlt.u r4, r17, r11
000c50  b7300200  beq r4, zero, 44
000c54  13820805  setlt.u r4, r17, r16
000c58  bb3c02fe  bneq r4, zero, -212
000c5c  db070000  j 60
000c60  1bc20a01  srli r4, r21, 16
000c64  1b021200  andi r4, r4, 1
000c68  0b924a10  add.s r4, r21, r4
000c6c  0b12e210  add.s r4, r4, r14
000c70  170a1200  and r20, r4, r1
000c74  1382b804  setlt.u r4, r17, r11
000c78  3b7f02fe  bneq r4, zero, -36
000c7c  1bc20901  srli r4, r19, 16
000c80  1b021200  andi r4, r4, 1
000c84  0b924910  add.s r4, r19, r4
000c88  0b12e210  add.s r4, r4, r14
000c8c  17091200  and r18, r4, r1
000c90  13820805  setlt.u r4, r17, r16
000c94  bb4b02fe  bneq r4, zero, -272
000c98  1bc10701  srli r2, r15, 16
000c9c  1b011100  andi r2, r2, 1
000ca0  0b912710  add.s r2, r15, r2
000ca4  0b11e110  add.s r2, r2, r14
000ca8  17011100  and r2, r2, r1
000cac  5bdbffff  j -296
000cb0  80340002  core_id r9
000cb4  00200100  mfence { sm }
000cb8  1f712000  addli r2, zero, 23
000cbc  33020128  zext_int2long r[5:6], r2
000cc0  63013fff  loadli.w r2,  -104(r30)
000cc4  73384ffe  store.d r[5:6], -16(r30)
000cc8  b7550100  beq r2, zero, 372
000ccc  1f012000  addli r2, zero, 16
000cd0  3d000000  xfence
000cd4  00a00300  mfence { lm, sm, gm }
000cd8  33020128  zext_int2long r[5:6], r2
000cdc  db030000  j 28
000ce0  6b520fff  load.d r[5:6], -16(r30)
000ce4  6b538ffe  load.d r[7:8], -24(r30)
000ce8  13214304  setlt.ul r2, r[7:8], r[5:6]
000cec  27120300  addli.d r[5:6], r[7:8], 1
000cf0  9f730000  addli r7, zero, 7
000cf4  37050100  beq r2, zero, 320
000cf8  73344ffe  store.d r[5:6], -24(r30)
000cfc  17327202  sll.d r[5:6], r[5:6], r7
000d00  33040028  zext_int2long r[9:10], zero
000d04  db040000  j 36
000d08  27440400  addli.d r[9:10], r[9:10], 4
000d0c  8b13ac10  add.s r7, r24, r10
000d10  1323a403  setneq.d r6, r[9:10], r[27:28]
000d14  73e62300  stores.w r2, 12(r7)
000d18  73e42301  stores.w r18, 8(r7)
000d1c  73e24301  stores.w r20, 4(r7)
000d20  73e06301  stores.w r22, 0(r7)
000d24  b77e03fe  beq r6, zero, -68
000d28  0b234410  add.ul r[7:8], r[9:10], r[5:6]
000d2c  1b352300  slli r10, r6, 2
000d30  0b11a610  add.s r2, r12, r10
000d34  ef47c100  loads.w r15, 12(r2)
000d38  ef4b0100  loads.w r23, 0(r2)
000d3c  ef4a4100  loads.w r21, 4(r2)
000d40  ef498100  loads.w r19, 8(r2)
000d44  1788d700  and r16, r15, r13
000d48  13810105  setlt.u r2, r3, r16
000d4c  3b300100  bneq r2, zero, 12
000d50  1f810700  addli r2, r15, 0
000d54  5b010000  j 8
000d58  17919701  or r2, r15, r25
000d5c  9785d900  and r11, r19, r13
000d60  1383b104  setlt.u r6, r3, r11
000d64  3b300300  bneq r6, zero, 12
000d68  1f890900  addli r18, r19, 0
000d6c  5b010000  j 8
000d70  17999901  or r18, r19, r25
000d74  178eda00  and r28, r21, r13
000d78  1383c105  setlt.u r6, r3, r28
000d7c  3b300300  bneq r6, zero, 12
000d80  1f8a0a00  addli r20, r21, 0
000d84  5b010000  j 8
000d88  179a9a01  or r20, r21, r25
000d8c  1783db00  and r6, r23, r13
000d90  93836104  setlt.u r7, r3, r6
000d94  3bd00300  bneq r7, zero, 20
000d98  1f8b0b00  addli r22, r23, 0
000d9c  13836804  setlt.u r6, r17, r6
000da0  37500300  beq r6, zero, 20
000da4  db040000  j 36
000da8  179b9b01  or r22, r23, r25
000dac  13836804  setlt.u r6, r17, r6
000db0  3b600300  bneq r6, zero, 24
000db4  1bc30b01  srli r6, r23, 16
000db8  1b031300  andi r6, r6, 1
000dbc  0b936b10  add.s r6, r23, r6
000dc0  0b13e310  add.s r6, r6, r14
000dc4  170b1300  and r22, r6, r1
000dc8  1383c805  setlt.u r6, r17, r28
000dcc  37600300  beq r6, zero, 24
000dd0  1383b804  setlt.u r6, r17, r11
000dd4  b7300300  beq r6, zero, 44
000dd8  13830805  setlt.u r6, r17, r16
000ddc  bb3c03fe  bneq r6, zero, -212
000de0  db070000  j 60
000de4  1bc30a01  srli r6, r21, 16
000de8  1b031300  andi r6, r6, 1
000dec  0b936a10  add.s r6, r21, r6
000df0  0b13e310  add.s r6, r6, r14
000df4  170a1300  and r20, r6, r1
000df8  1383b804  setlt.u r6, r17, r11
000dfc  3b7f03fe  bneq r6, zero, -36
000e00  1bc30901  srli r6, r19, 16
000e04  1b031300  andi r6, r6, 1
000e08  0b936910  add.s r6, r19, r6
000e0c  0b13e310  add.s r6, r6, r14
000e10  17091300  and r18, r6, r1
000e14  13830805  setlt.u r6, r17, r16
000e18  bb4b03fe  bneq r6, zero, -272
000e1c  1bc10701  srli r2, r15, 16
000e20  1b011100  andi r2, r2, 1
000e24  0b912710  add.s r2, r15, r2
000e28  0b11e110  add.s r2, r2, r14
000e2c  17011100  and r2, r2, r1
000e30  5bdbffff  j -296
000e34  80340002  core_id r9
000e38  00200100  mfence { sm }
000e3c  1f713000  addli r2, zero, 31
000e40  33020128  zext_int2long r[5:6], r2
000e44  1f310000  addli r2, zero, 3
000e48  73344ffe  store.d r[5:6], -24(r30)
000e4c  bbd52400  bneq r9, r2, 372
000e50  1f013000  addli r2, zero, 24
000e54  3d000000  xfence
000e58  00a00300  mfence { lm, sm, gm }
000e5c  33020128  zext_int2long r[5:6], r2
000e60  db030000  j 28
000e64  6b528ffe  load.d r[5:6], -24(r30)
000e68  6b530ffe  load.d r[7:8], -32(r30)
000e6c  13214304  setlt.ul r2, r[7:8], r[5:6]
000e70  27120300  addli.d r[5:6], r[7:8], 1
000e74  9f730000  addli r7, zero, 7
000e78  37050100  beq r2, zero, 320
000e7c  73304ffe  store.d r[5:6], -32(r30)
000e80  17327202  sll.d r[5:6], r[5:6], r7
000e84  33040028  zext_int2long r[9:10], zero
000e88  db040000  j 36
000e8c  27440400  addli.d r[9:10], r[9:10], 4
000e90  8b13ac10  add.s r7, r24, r10
000e94  1323a403  setneq.d r6, r[9:10], r[27:28]
000e98  73e62300  stores.w r2, 12(r7)
000e9c  73e42301  stores.w r18, 8(r7)
000ea0  73e24301  stores.w r20, 4(r7)
000ea4  73e06301  stores.w r22, 0(r7)
000ea8  b77e03fe  beq r6, zero, -68
000eac  0b234410  add.ul r[7:8], r[9:10], r[5:6]
000eb0  1b352300  slli r10, r6, 2
000eb4  0b11a610  add.s r2, r12, r10
000eb8  ef47c100  loads.w r15, 12(r2)
000ebc  ef4b0100  loads.w r23, 0(r2)
000ec0  ef4a4100  loads.w r21, 4(r2)
000ec4  ef498100  loads.w r19, 8(r2)
000ec8  1788d700  and r16, r15, r13
000ecc  13810105  setlt.u r2, r3, r16
000ed0  3b300100  bneq r2, zero, 12
000ed4  1f810700  addli r2, r15, 0
000ed8  5b010000  j 8
000edc  17919701  or r2, r15, r25
000ee0  9785d900  and r11, r19, r13
000ee4  1383b104  setlt.u r6, r3, r11
000ee8  3b300300  bneq r6, zero, 12
000eec  1f890900  addli r18, r19, 0
000ef0  5b010000  j 8
000ef4  17999901  or r18, r19, r25
000ef8  178eda00  and r28, r21, r13
000efc  1383c105  setlt.u r6, r3, r28
000f00  3b300300  bneq r6, zero, 12
000f04  1f8a0a00  addli r20, r21, 0
000f08  5b010000  j 8
000f0c  179a9a01  or r20, r21, r25
000f10  1783db00  and r6, r23, r13
000f14  93836104  setlt.u r7, r3, r6
000f18  3bd00300  bneq r7, zero, 20
000f1c  1f8b0b00  addli r22, r23, 0
000f20  13836804  setlt.u r6, r17, r6
000f24  37500300  beq r6, zero, 20
000f28  db040000  j 36
000f2c  179b9b01  or r22, r23, r25
000f30  13836804  setlt.u r6, r17, r6
000f34  3b600300  bneq r6, zero, 24
000f38  1bc30b01  srli r6, r23, 16
000f3c  1b031300  andi r6, r6, 1
000f40  0b936b10  add.s r6, r23, r6
000f44  0b13e310  add.s r6, r6, r14
000f48  170b1300  and r22, r6, r1
000f4c  1383c805  setlt.u r6, r17, r28
000f50  37600300  beq r6, zero, 24
000f54  1383b804  setlt.u r6, r17, r11
000f58  b7300300  beq r6, zero, 44
000f5c  13830805  setlt.u r6, r17, r16
000f60  bb3c03fe  bneq r6, zero, -212
000f64  db070000  j 60
000f68  1bc30a01  srli r6, r21, 16
000f6c  1b031300  andi r6, r6, 1
000f70  0b936a10  add.s r6, r21, r6
000f74  0b13e310  add.s r6, r6, r14
000f78  170a1300  and r20, r6, r1
000f7c  1383b804  setlt.u r6, r17, r11
000f80  3b7f03fe  bneq r6, zero, -36
000f84  1bc30901  srli r6, r19, 16
000f88  1b031300  andi r6, r6, 1
000f8c  0b936910  add.s r6, r19, r6
000f90  0b13e310  add.s r6, r6, r14
000f94  17091300  and r18, r6, r1
000f98  13830805  setlt.u r6, r17, r16
000f9c  bb4b03fe  bneq r6, zero, -272
000fa0  1bc10701  srli r2, r15, 16
000fa4  1b011100  andi r2, r2, 1
000fa8  0b912710  add.s r2, r15, r2
000fac  0b11e110  add.s r2, r2, r14
000fb0  17011100  and r2, r2, r1
000fb4  5bdbffff  j -296
000fb8  80340002  core_id r9
000fbc  00200100  mfence { sm }
000fc0  1f714000  addli r2, zero, 39
000fc4  33020128  zext_int2long r[5:6], r2
000fc8  63413fff  loadli.w r2,  -100(r30)
000fcc  73304ffe  store.d r[5:6], -32(r30)
000fd0  b7550100  beq r2, zero, 372
000fd4  1f014000  addli r2, zero, 32
000fd8  3d000000  xfence
000fdc  00a00300  mfence { lm, sm, gm }
000fe0  33020128  zext_int2long r[5:6], r2
000fe4  db030000  j 28
000fe8  6b520ffe  load.d r[5:6], -32(r30)
000fec  6b538ffd  load.d r[7:8], -40(r30)
000ff0  13214304  setlt.ul r2, r[7:8], r[5:6]
000ff4  27120300  addli.d r[5:6], r[7:8], 1
000ff8  9f730000  addli r7, zero, 7
000ffc  37050100  beq r2, zero, 320
001000  733c4ffc  store.d r[5:6], -40(r30)
001004  17327202  sll.d r[5:6], r[5:6], r7
001008  33040028  zext_int2long r[9:10], zero
00100c  db040000  j 36
001010  27440400  addli.d r[9:10], r[9:10], 4
001014  8b13ac10  add.s r7, r24, r10
001018  1323a403  setneq.d r6, r[9:10], r[27:28]
00101c  73e62300  stores.w r2, 12(r7)
001020  73e42301  stores.w r18, 8(r7)
001024  73e24301  stores.w r20, 4(r7)
001028  73e06301  stores.w r22, 0(r7)
00102c  b77e03fe  beq r6, zero, -68
001030  0b234410  add.ul r[7:8], r[9:10], r[5:6]
001034  1b352300  slli r10, r6, 2
001038  0b11a610  add.s r2, r12, r10
00103c  ef47c100  loads.w r15, 12(r2)
001040  ef4b0100  loads.w r23, 0(r2)
001044  ef4a4100  loads.w r21, 4(r2)
001048  ef498100  loads.w r19, 8(r2)
00104c  1788d700  and r16, r15, r13
001050  13810105  setlt.u r2, r3, r16
001054  3b300100  bneq r2, zero, 12
001058  1f810700  addli r2, r15, 0
00105c  5b010000  j 8
001060  17919701  or r2, r15, r25
001064  9785d900  and r11, r19, r13
001068  1383b104  setlt.u r6, r3, r11
00106c  3b300300  bneq r6, zero, 12
001070  1f890900  addli r18, r19, 0
001074  5b010000  j 8
001078  17999901  or r18, r19, r25
00107c  178eda00  and r28, r21, r13
001080  1383c105  setlt.u r6, r3, r28
001084  3b300300  bneq r6, zero, 12
001088  1f8a0a00  addli r20, r21, 0
00108c  5b010000  j 8
001090  179a9a01  or r20, r21, r25
001094  1783db00  and r6, r23, r13
001098  93836104  setlt.u r7, r3, r6
00109c  3bd00300  bneq r7, zero, 20
0010a0  1f8b0b00  addli r22, r23, 0
0010a4  13836804  setlt.u r6, r17, r6
0010a8  37500300  beq r6, zero, 20
0010ac  db040000  j 36
0010b0  179b9b01  or r22, r23, r25
0010b4  13836804  setlt.u r6, r17, r6
0010b8  3b600300  bneq r6, zero, 24
0010bc  1bc30b01  srli r6, r23, 16
0010c0  1b031300  andi r6, r6, 1
0010c4  0b936b10  add.s r6, r23, r6
0010c8  0b13e310  add.s r6, r6, r14
0010cc  170b1300  and r22, r6, r1
0010d0  1383c805  setlt.u r6, r17, r28
0010d4  37600300  beq r6, zero, 24
0010d8  1383b804  setlt.u r6, r17, r11
0010dc  b7300300  beq r6, zero, 44
0010e0  13830805  setlt.u r6, r17, r16
0010e4  bb3c03fe  bneq r6, zero, -212
0010e8  db070000  j 60
0010ec  1bc30a01  srli r6, r21, 16
0010f0  1b031300  andi r6, r6, 1
0010f4  0b936a10  add.s r6, r21, r6
0010f8  0b13e310  add.s r6, r6, r14
0010fc  170a1300  and r20, r6, r1
001100  1383b804  setlt.u r6, r17, r11
001104  3b7f03fe  bneq r6, zero, -36
001108  1bc30901  srli r6, r19, 16
00110c  1b031300  andi r6, r6, 1
001110  0b936910  add.s r6, r19, r6
001114  0b13e310  add.s r6, r6, r14
001118  17091300  and r18, r6, r1
00111c  13830805  setlt.u r6, r17, r16
001120  bb4b03fe  bneq r6, zero, -272
001124  1bc10701  srli r2, r15, 16
001128  1b011100  andi r2, r2, 1
00112c  0b912710  add.s r2, r15, r2
001130  0b11e110  add.s r2, r2, r14
001134  17011100  and r2, r2, r1
001138  5bdbffff  j -296
00113c  80340002  core_id r9
001140  00200100  mfence { sm }
001144  1f715000  addli r2, zero, 47
001148  33020128  zext_int2long r[5:6], r2
00114c  1f510000  addli r2, zero, 5
001150  733c4ffc  store.d r[5:6], -40(r30)
001154  bbd52400  bneq r9, r2, 372
001158  1f015000  addli r2, zero, 40
00115c  3d000000  xfence
001160  00a00300  mfence { lm, sm, gm }
001164  33020128  zext_int2long r[5:6], r2
001168  db030000  j 28
00116c  6b528ffd  load.d r[5:6], -40(r30)
001170  6b530ffd  load.d r[7:8], -48(r30)
001174  13214304  setlt.ul r2, r[7:8], r[5:6]
001178  27120300  addli.d r[5:6], r[7:8], 1
00117c  9f730000  addli r7, zero, 7
001180  37050100  beq r2, zero, 320
001184  73384ffc  store.d r[5:6], -48(r30)
001188  17327202  sll.d r[5:6], r[5:6], r7
00118c  33040028  zext_int2long r[9:10], zero
001190  db040000  j 36
001194  27440400  addli.d r[9:10], r[9:10], 4
001198  0b15ac10  add.s r10, r24, r10
00119c  1323a403  setneq.d r6, r[9:10], r[27:28]
0011a0  73662500  stores.w r2, 12(r10)
0011a4  73647500  stores.w r7, 8(r10)
0011a8  73624501  stores.w r20, 4(r10)
0011ac  73606501  stores.w r22, 0(r10)
0011b0  b77e03fe  beq r6, zero, -68
0011b4  0b234410  add.ul r[7:8], r[9:10], r[5:6]
0011b8  1b352300  slli r10, r6, 2
0011bc  0b11a610  add.s r2, r12, r10
0011c0  6f49c100  loads.w r18, 12(r2)
0011c4  ef4b0100  loads.w r23, 0(r2)
0011c8  ef4a4100  loads.w r21, 4(r2)
0011cc  ef498100  loads.w r19, 8(r2)
0011d0  1703d900  and r6, r18, r13
0011d4  13816104  setlt.u r2, r3, r6
0011d8  3b300100  bneq r2, zero, 12
0011dc  1f010900  addli r2, r18, 0
0011e0  5b010000  j 8
0011e4  17119901  or r2, r18, r25
0011e8  9785d900  and r11, r19, r13
0011ec  9383b104  setlt.u r7, r3, r11
0011f0  3bb00300  bneq r7, zero, 12
0011f4  9f830900  addli r7, r19, 0
0011f8  5b010000  j 8
0011fc  97939901  or r7, r19, r25
001200  178eda00  and r28, r21, r13
001204  9387c105  setlt.u r15, r3, r28
001208  3bb00700  bneq r15, zero, 12
00120c  1f8a0a00  addli r20, r21, 0
001210  5b010000  j 8
001214  179a9a01  or r20, r21, r25
001218  9787db00  and r15, r23, r13
00121c  1388f104  setlt.u r16, r3, r15
001220  3b500800  bneq r16, zero, 20
001224  1f8b0b00  addli r22, r23, 0
001228  9387f804  setlt.u r15, r17, r15
00122c  37d00700  beq r15, zero, 20
001230  db040000  j 36
001234  179b9b01  or r22, r23, r25
001238  9387f804  setlt.u r15, r17, r15
00123c  3be00700  bneq r15, zero, 24
001240  9bc70b01  srli r15, r23, 16
001244  9b871700  andi r15, r15, 1
001248  8b97fb10  add.s r15, r23, r15
00124c  8b97e710  add.s r15, r15, r14
001250  178b1700  and r22, r15, r1
001254  9387c805  setlt.u r15, r17, r28
001258  37e00700  beq r15, zero, 24
00125c  9385b804  setlt.u r11, r17, r11
001260  b7b00500  beq r11, zero, 44
001264  13836804  setlt.u r6, r17, r6
001268  bb3c03fe  bneq r6, zero, -212
00126c  db070000  j 60
001270  9bc70a01  srli r15, r21, 16
001274  9b871700  andi r15, r15, 1
001278  8b97fa10  add.s r15, r21, r15
00127c  8b97e710  add.s r15, r15, r14
001280  178a1700  and r20, r15, r1
001284  9385b804  setlt.u r11, r17, r11
001288  3bff05fe  bneq r11, zero, -36
00128c  9bc30901  srli r7, r19, 16
001290  9b831300  andi r7, r7, 1
001294  8b937910  add.s r7, r19, r7
001298  8b93e310  add.s r7, r7, r14
00129c  97831300  and r7, r7, r1
0012a0  13836804  setlt.u r6, r17, r6
0012a4  bb4b03fe  bneq r6, zero, -272
0012a8  1b410901  srli r2, r18, 16
0012ac  1b011100  andi r2, r2, 1
0012b0  0b112910  add.s r2, r18, r2
0012b4  0b11e110  add.s r2, r2, r14
0012b8  17011100  and r2, r2, r1
0012bc  5bdbffff  j -296
0012c0  80340002  core_id r9
0012c4  00200100  mfence { sm }
0012c8  1f716000  addli r2, zero, 55
0012cc  33020128  zext_int2long r[5:6], r2
0012d0  1f610000  addli r2, zero, 6
0012d4  73384ffc  store.d r[5:6], -48(r30)
0012d8  bbd52400  bneq r9, r2, 372
0012dc  1f016000  addli r2, zero, 48
0012e0  3d000000  xfence
0012e4  00a00300  mfence { lm, sm, gm }
0012e8  33020128  zext_int2long r[5:6], r2
0012ec  db030000  j 28
0012f0  6b520ffd  load.d r[5:6], -48(r30)
0012f4  6b538ffc  load.d r[7:8], -56(r30)
0012f8  13214304  setlt.ul r2, r[7:8], r[5:6]
0012fc  27120300  addli.d r[5:6], r[7:8], 1
001300  9f730000  addli r7, zero, 7
001304  37050100  beq r2, zero, 320
001308  73344ffc  store.d r[5:6], -56(r30)
00130c  17327202  sll.d r[5:6], r[5:6], r7
001310  33040028  zext_int2long r[9:10], zero
001314  db040000  j 36
001318  27440400  addli.d r[9:10], r[9:10], 4
00131c  0b15ac10  add.s r10, r24, r10
001320  1323a403  setneq.d r6, r[9:10], r[27:28]
001324  73662500  stores.w r2, 12(r10)
001328  73647500  stores.w r7, 8(r10)
00132c  73620501  stores.w r16, 4(r10)
001330  73606501  stores.w r22, 0(r10)
001334  b77e03fe  beq r6, zero, -68
001338  0b234410  add.ul r[7:8], r[9:10], r[5:6]
00133c  1b352300  slli r10, r6, 2
001340  0b11a610  add.s r2, r12, r10
001344  6f49c100  loads.w r18, 12(r2)
001348  ef4b0100  loads.w r23, 0(r2)
00134c  ef494100  loads.w r19, 4(r2)
001350  ef478100  loads.w r15, 8(r2)
001354  1703d900  and r6, r18, r13
001358  13816104  setlt.u r2, r3, r6
00135c  3b300100  bneq r2, zero, 12
001360  1f010900  addli r2, r18, 0
001364  5b010000  j 8
001368  17119901  or r2, r18, r25
00136c  9785d700  and r11, r15, r13
001370  9383b104  setlt.u r7, r3, r11
001374  3bb00300  bneq r7, zero, 12
001378  9f830700  addli r7, r15, 0
00137c  5b010000  j 8
001380  97939701  or r7, r15, r25
001384  178ed900  and r28, r19, r13
001388  1388c105  setlt.u r16, r3, r28
00138c  3b300800  bneq r16, zero, 12
001390  1f880900  addli r16, r19, 0
001394  5b010000  j 8
001398  17989901  or r16, r19, r25
00139c  178adb00  and r20, r23, r13
0013a0  938a4105  setlt.u r21, r3, r20
0013a4  3bd00a00  bneq r21, zero, 20
0013a8  1f8b0b00  addli r22, r23, 0
0013ac  138a4805  setlt.u r20, r17, r20
0013b0  37500a00  beq r20, zero, 20
0013b4  db040000  j 36
0013b8  179b9b01  or r22, r23, r25
0013bc  138a4805  setlt.u r20, r17, r20
0013c0  3b600a00  bneq r20, zero, 24
0013c4  1bca0b01  srli r20, r23, 16
0013c8  1b0a1a00  andi r20, r20, 1
0013cc  0b9a4b11  add.s r20, r23, r20
0013d0  0b1aea10  add.s r20, r20, r14
0013d4  170b1a00  and r22, r20, r1
0013d8  138ac805  setlt.u r20, r17, r28
0013dc  37600a00  beq r20, zero, 24
0013e0  9385b804  setlt.u r11, r17, r11
0013e4  b7b00500  beq r11, zero, 44
0013e8  13836804  setlt.u r6, r17, r6
0013ec  bb3c03fe  bneq r6, zero, -212
0013f0  db070000  j 60
0013f4  1bc80901  srli r16, r19, 16
0013f8  1b081800  andi r16, r16, 1
0013fc  0b980911  add.s r16, r19, r16
001400  0b18e810  add.s r16, r16, r14
001404  17081800  and r16, r16, r1
001408  9385b804  setlt.u r11, r17, r11
00140c  3bff05fe  bneq r11, zero, -36
001410  9bc30701  srli r7, r15, 16
001414  9b831300  andi r7, r7, 1
001418  8b937710  add.s r7, r15, r7
00141c  8b93e310  add.s r7, r7, r14
001420  97831300  and r7, r7, r1
001424  13836804  setlt.u r6, r17, r6
001428  bb4b03fe  bneq r6, zero, -272
00142c  1b410901  srli r2, r18, 16
001430  1b011100  andi r2, r2, 1
001434  0b112910  add.s r2, r18, r2
001438  0b11e110  add.s r2, r2, r14
00143c  17011100  and r2, r2, r1
001440  5bdbffff  j -296
001444  80340002  core_id r9
001448  00200100  mfence { sm }
00144c  1f717000  addli r2, zero, 63
001450  33020128  zext_int2long r[5:6], r2
001454  63014fff  loadli.w r2,  -96(r30)
001458  73344ffc  store.d r[5:6], -56(r30)
00145c  b7550100  beq r2, zero, 372
001460  1f017000  addli r2, zero, 56
001464  3d000000  xfence
001468  00a00300  mfence { lm, sm, gm }
00146c  33020128  zext_int2long r[5:6], r2
001470  db030000  j 28
001474  6b528ffc  load.d r[5:6], -56(r30)
001478  6b530ffc  load.d r[7:8], -64(r30)
00147c  13214304  setlt.ul r2, r[7:8], r[5:6]
001480  27120300  addli.d r[5:6], r[7:8], 1
001484  9f730000  addli r7, zero, 7
001488  37050100  beq r2, zero, 320
00148c  73304ffc  store.d r[5:6], -64(r30)
001490  17327202  sll.d r[5:6], r[5:6], r7
001494  33040028  zext_int2long r[9:10], zero
001498  db040000  j 36
00149c  27440400  addli.d r[9:10], r[9:10], 4
0014a0  0b15ac10  add.s r10, r24, r10
0014a4  1323a403  setneq.d r6, r[9:10], r[27:28]
0014a8  73662500  stores.w r2, 12(r10)
0014ac  73647500  stores.w r7, 8(r10)
0014b0  73620501  stores.w r16, 4(r10)
0014b4  73604501  stores.w r20, 0(r10)
0014b8  b77e03fe  beq r6, zero, -68
0014bc  0b234410  add.ul r[7:8], r[9:10], r[5:6]
0014c0  1b352300  slli r10, r6, 2
0014c4  0b11a610  add.s r2, r12, r10
0014c8  6f49c100  loads.w r18, 12(r2)
0014cc  ef4a0100  loads.w r21, 0(r2)
0014d0  ef494100  loads.w r19, 4(r2)
0014d4  ef478100  loads.w r15, 8(r2)
0014d8  1703d900  and r6, r18, r13
0014dc  13816104  setlt.u r2, r3, r6
0014e0  3b300100  bneq r2, zero, 12
0014e4  1f010900  addli r2, r18, 0
0014e8  5b010000  j 8
0014ec  17119901  or r2, r18, r25
0014f0  9785d700  and r11, r15, r13
0014f4  9383b104  setlt.u r7, r3, r11
0014f8  3bb00300  bneq r7, zero, 12
0014fc  9f830700  addli r7, r15, 0
001500  5b010000  j 8
001504  97939701  or r7, r15, r25
001508  178ed900  and r28, r19, r13
00150c  1388c105  setlt.u r16, r3, r28
001510  3b300800  bneq r16, zero, 12
001514  1f880900  addli r16, r19, 0
001518  5b010000  j 8
00151c  17989901  or r16, r19, r25
001520  178bda00  and r22, r21, r13
001524  138a6105  setlt.u r20, r3, r22
001528  3b500a00  bneq r20, zero, 20
00152c  1f8a0a00  addli r20, r21, 0
001530  138b6805  setlt.u r22, r17, r22
001534  37500b00  beq r22, zero, 20
001538  db040000  j 36
00153c  179a9a01  or r20, r21, r25
001540  138b6805  setlt.u r22, r17, r22
001544  3b600b00  bneq r22, zero, 24
001548  1bca0a01  srli r20, r21, 16
00154c  1b0a1a00  andi r20, r20, 1
001550  0b9a4a11  add.s r20, r21, r20
001554  0b1aea10  add.s r20, r20, r14
001558  170a1a00  and r20, r20, r1
00155c  938ac805  setlt.u r21, r17, r28
001560  37e00a00  beq r21, zero, 24
001564  9385b804  setlt.u r11, r17, r11
001568  b7b00500  beq r11, zero, 44
00156c  13836804  setlt.u r6, r17, r6
001570  bb3c03fe  bneq r6, zero, -212
001574  db070000  j 60
001578  1bc80901  srli r16, r19, 16
00157c  1b081800  andi r16, r16, 1
001580  0b980911  add.s r16, r19, r16
001584  0b18e810  add.s r16, r16, r14
001588  17081800  and r16, r16, r1
00158c  9385b804  setlt.u r11, r17, r11
001590  3bff05fe  bneq r11, zero, -36
001594  9bc30701  srli r7, r15, 16
001598  9b831300  andi r7, r7, 1
00159c  8b937710  add.s r7, r15, r7
0015a0  8b93e310  add.s r7, r7, r14
0015a4  97831300  and r7, r7, r1
0015a8  13836804  setlt.u r6, r17, r6
0015ac  bb4b03fe  bneq r6, zero, -272
0015b0  1b410901  srli r2, r18, 16
0015b4  1b011100  andi r2, r2, 1
0015b8  0b112910  add.s r2, r18, r2
0015bc  0b11e110  add.s r2, r2, r14
0015c0  17011100  and r2, r2, r1
0015c4  5bdbffff  j -296
0015c8  80340002  core_id r9
0015cc  00200100  mfence { sm }
0015d0  63011fff  loadli.w r2,  -120(r30)
0015d4  1f020007  addli r4, zero, 896
0015d8  1f740000  addli r8, zero, 7
0015dc  33020228  zext_int2long r[5:6], r4
0015e0  1b317100  slli r2, r2, 7
0015e4  33030128  zext_int2long r[7:8], r2
0015e8  1f71f001  addli r2, zero, 255
0015ec  0b224340  min.ul r[5:6], r[7:8], r[5:6]
0015f0  27020201  addli.d r[5:6], r[5:6], 128
0015f4  0b226248  max.ul r[5:6], r[5:6], r[7:8]
0015f8  0b326218  sub.sl r[5:6], r[5:6], r[7:8]
0015fc  0b22a241  min.ul r[5:6], r[5:6], r[27:28]
001600  73344ff8  store.d r[5:6], -120(r30)
001604  80220104  csr_set csr5, r2
001608  1f310000  addli r2, zero, 3
00160c  00e00200  sync_core
001610  bbb02400  bneq r9, r2, 44
001614  1f311000  addli r2, zero, 11
001618  9f720000  addli r5, zero, 7
00161c  7d000100  xsignal r2, 0
001620  1f411000  addli r2, zero, 12
001624  7d000100  xsignal r2, 0
001628  1f511000  addli r2, zero, 13
00162c  7d100100  xwait r2, 0
001630  1f212000  addli r2, zero, 18
001634  7d100100  xwait r2, 0
001638  db6c0000  j 868
00163c  63016fff  loadli.w r2,  -80(r30)
001640  2b420500  lui r4, 84
001644  1b319100  slli r2, r2, 9
001648  0b154110  add.s r10, r2, r4
00164c  1f120000  addli r4, zero, 1
001650  3bfb4400  bneq r9, r4, 732
001654  6b520f01  load.d r[5:6], 16(r30)
001658  6b538ff7  load.d r[7:8], -136(r30)
00165c  1f092000  addli r18, zero, 16
001660  9f250000  addli r11, zero, 2
001664  7d100900  xwait r18, 0
001668  0b226210  add.ul r[5:6], r[5:6], r[7:8]
00166c  63434fff  loadli.w r6,  -92(r30)
001670  bfc46500  blt.s r11, r6, 304
001674  9f570000  addli r15, zero, 5
001678  9f130000  addli r7, zero, 1
00167c  1f330000  addli r6, zero, 3
001680  1f480000  addli r16, zero, 4
001684  1d800700  lock zero, r15
001688  15000014  dma_cfg zero, zero, zero, 10
00168c  15007014  dma_cfg zero, zero, r7, 10
001690  1500b014  dma_cfg zero, zero, r11, 10
001694  15006014  dma_cfg zero, zero, r6, 10
001698  1f630000  addli r6, zero, 6
00169c  15000015  dma_cfg zero, zero, r16, 10
0016a0  1500f014  dma_cfg zero, zero, r15, 10
0016a4  15006014  dma_cfg zero, zero, r6, 10
0016a8  1f031000  addli r6, zero, 8
0016ac  15008014  dma_cfg zero, zero, r8, 10
0016b0  15006014  dma_cfg zero, zero, r6, 10
0016b4  1f131000  addli r6, zero, 9
0016b8  15006014  dma_cfg zero, zero, r6, 10
0016bc  1f231000  addli r6, zero, 10
0016c0  15006014  dma_cfg zero, zero, r6, 10
0016c4  1f331000  addli r6, zero, 11
0016c8  15006014  dma_cfg zero, zero, r6, 10
0016cc  1f431000  addli r6, zero, 12
0016d0  15006014  dma_cfg zero, zero, r6, 10
0016d4  1f531000  addli r6, zero, 13
0016d8  15006014  dma_cfg zero, zero, r6, 10
0016dc  1f631000  addli r6, zero, 14
0016e0  15006014  dma_cfg zero, zero, r6, 10
0016e4  1f731000  addli r6, zero, 15
0016e8  15006014  dma_cfg zero, zero, r6, 10
0016ec  1f132000  addli r6, zero, 17
0016f0  15002015  dma_cfg zero, zero, r18, 10
0016f4  15006014  dma_cfg zero, zero, r6, 10
0016f8  1f232000  addli r6, zero, 18
0016fc  15006014  dma_cfg zero, zero, r6, 10
001700  1f332000  addli r6, zero, 19
001704  15006014  dma_cfg zero, zero, r6, 10
001708  1f432000  addli r6, zero, 20
00170c  15006014  dma_cfg zero, zero, r6, 10
001710  1f532000  addli r6, zero, 21
001714  15006014  dma_cfg zero, zero, r6, 10
001718  1f632000  addli r6, zero, 22
00171c  15006014  dma_cfg zero, zero, r6, 10
001720  1f732000  addli r6, zero, 23
001724  15006014  dma_cfg zero, zero, r6, 10
001728  1f033000  addli r6, zero, 24
00172c  15006014  dma_cfg zero, zero, r6, 10
001730  1f133000  addli r6, zero, 25
001734  15006014  dma_cfg zero, zero, r6, 10
001738  1f233000  addli r6, zero, 26
00173c  15006014  dma_cfg zero, zero, r6, 10
001740  1f333000  addli r6, zero, 27
001744  15006014  dma_cfg zero, zero, r6, 10
001748  1f433000  addli r6, zero, 28
00174c  15006014  dma_cfg zero, zero, r6, 10
001750  1f533000  addli r6, zero, 29
001754  15006014  dma_cfg zero, zero, r6, 10
001758  1f633000  addli r6, zero, 30
00175c  15006014  dma_cfg zero, zero, r6, 10
001760  1f733000  addli r6, zero, 31
001764  15006014  dma_cfg zero, zero, r6, 10
001768  1f038000  addli r6, zero, 64
00176c  95830300  dma_cfg r7, r7, zero, 0
001770  95030002  dma_cfg r7, zero, zero, 1
001774  15000004  dma_cfg zero, zero, zero, 2
001778  15056006  dma_cfg r10, zero, r6, 3
00177c  1f030001  addli r6, zero, 128
001780  15030009  dma_cfg r6, zero, r16, 4
001784  1f030004  addli r6, zero, 512
001788  1503700a  dma_cfg r6, zero, r7, 5
00178c  15000010  dma_cfg zero, zero, zero, 8
001790  35000000  dma_run zero
001794  1500700a  dma_cfg zero, zero, r7, 5
001798  15000010  dma_cfg zero, zero, zero, 8
00179c  1d900700  unlock r15
0017a0  9f470000  addli r15, zero, 4
0017a4  1f140000  addli r8, zero, 1
0017a8  2b430500  lui r6, 84
0017ac  9f038000  addli r7, zero, 64
0017b0  1f080001  addli r16, zero, 128
0017b4  1d800700  lock zero, r15
0017b8  1b130304  ori r6, r6, 64
0017bc  15040400  dma_cfg r8, r8, zero, 0
0017c0  15800204  dma_cfg zero, r5, zero, 2
0017c4  0b116110  add.s r2, r2, r6
0017c8  eb598ff8  load.d r[20:21], -120(r30)
0017cc  15017206  dma_cfg r2, r4, r7, 3
0017d0  9f020002  addli r5, zero, 256
0017d4  1ff33900  addli r6, r19, 31
0017d8  1bb21900  slli r4, r19, 1
0017dc  9f090004  addli r19, zero, 512
0017e0  1b415300  srli r2, r6, 5
0017e4  1b02e203  andi r4, r4, 62
0017e8  1f530000  addli r6, zero, 5
0017ec  15882308  dma_cfg r16, r7, r2, 4
0017f0  9589820a  dma_cfg r19, r5, r8, 5
0017f4  9f320000  addli r5, zero, 3
0017f8  15004010  dma_cfg zero, zero, r4, 8
0017fc  35000000  dma_run zero
001800  1500800a  dma_cfg zero, zero, r8, 5
001804  15000010  dma_cfg zero, zero, zero, 8
001808  1d900700  unlock r15
00180c  1d000300  lock zero, r6
001810  15000014  dma_cfg zero, zero, zero, 10
001814  15008014  dma_cfg zero, zero, r8, 10
001818  1500b014  dma_cfg zero, zero, r11, 10
00181c  9f751000  addli r11, zero, 15
001820  15005014  dma_cfg zero, zero, r5, 10
001824  9f620000  addli r5, zero, 6
001828  1500f014  dma_cfg zero, zero, r15, 10
00182c  15006014  dma_cfg zero, zero, r6, 10
001830  15005014  dma_cfg zero, zero, r5, 10
001834  9f720000  addli r5, zero, 7
001838  15005014  dma_cfg zero, zero, r5, 10
00183c  9f021000  addli r5, zero, 8
001840  15005014  dma_cfg zero, zero, r5, 10
001844  9f121000  addli r5, zero, 9
001848  15005014  dma_cfg zero, zero, r5, 10
00184c  9f221000  addli r5, zero, 10
001850  15005014  dma_cfg zero, zero, r5, 10
001854  9f321000  addli r5, zero, 11
001858  15005014  dma_cfg zero, zero, r5, 10
00185c  9f421000  addli r5, zero, 12
001860  15005014  dma_cfg zero, zero, r5, 10
001864  9f521000  addli r5, zero, 13
001868  15005014  dma_cfg zero, zero, r5, 10
00186c  9f621000  addli r5, zero, 14
001870  15005014  dma_cfg zero, zero, r5, 10
001874  9f122000  addli r5, zero, 17
001878  1500b014  dma_cfg zero, zero, r11, 10
00187c  15002015  dma_cfg zero, zero, r18, 10
001880  15005014  dma_cfg zero, zero, r5, 10
001884  9f222000  addli r5, zero, 18
001888  15005014  dma_cfg zero, zero, r5, 10
00188c  9f322000  addli r5, zero, 19
001890  15005014  dma_cfg zero, zero, r5, 10
001894  9f422000  addli r5, zero, 20
001898  15005014  dma_cfg zero, zero, r5, 10
00189c  9f522000  addli r5, zero, 21
0018a0  15005014  dma_cfg zero, zero, r5, 10
0018a4  9f622000  addli r5, zero, 22
0018a8  15005014  dma_cfg zero, zero, r5, 10
0018ac  9f722000  addli r5, zero, 23
0018b0  15005014  dma_cfg zero, zero, r5, 10
0018b4  9f023000  addli r5, zero, 24
0018b8  15005014  dma_cfg zero, zero, r5, 10
0018bc  9f123000  addli r5, zero, 25
0018c0  15005014  dma_cfg zero, zero, r5, 10
0018c4  9f223000  addli r5, zero, 26
0018c8  15005014  dma_cfg zero, zero, r5, 10
0018cc  9f323000  addli r5, zero, 27
0018d0  15005014  dma_cfg zero, zero, r5, 10
0018d4  9f423000  addli r5, zero, 28
0018d8  15005014  dma_cfg zero, zero, r5, 10
0018dc  9f523000  addli r5, zero, 29
0018e0  15005014  dma_cfg zero, zero, r5, 10
0018e4  9f623000  addli r5, zero, 30
0018e8  15005014  dma_cfg zero, zero, r5, 10
0018ec  9f723000  addli r5, zero, 31
0018f0  15005014  dma_cfg zero, zero, r5, 10
0018f4  9f720000  addli r5, zero, 7
0018f8  15040400  dma_cfg r8, r8, zero, 0
0018fc  15040002  dma_cfg r8, zero, zero, 1
001900  15000004  dma_cfg zero, zero, zero, 2
001904  15057006  dma_cfg r10, zero, r7, 3
001908  15082008  dma_cfg r16, zero, r2, 4
00190c  9509800a  dma_cfg r19, zero, r8, 5
001910  15004010  dma_cfg zero, zero, r4, 8
001914  35000000  dma_run zero
001918  1500800a  dma_cfg zero, zero, r8, 5
00191c  15000010  dma_cfg zero, zero, zero, 8
001920  1d100300  unlock r6
001924  7d800500  xsignal r11, 0
001928  db0e0000  j 116
00192c  9f720000  addli r5, zero, 7
001930  1f510000  addli r2, zero, 5
001934  bba12400  bneq r9, r2, 104
001938  1f421000  addli r4, zero, 12
00193c  1f010000  addli r2, zero, 0
001940  2b830000  lui r6, 8
001944  7d100200  xwait r4, 0
001948  1f721000  addli r4, zero, 15
00194c  7d100200  xwait r4, 0
001950  1f220000  addli r4, zero, 2
001954  1d000200  lock zero, r4
001958  2b02803f  lui r4, 260096
00195c  0d000002  ew_cfg zero, zero, zero, 1
001960  0d120200  ewcoeff_cfg r4, r4, zero, 0
001964  1f72f000  addli r4, zero, 127
001968  0d000204  ew_cfg zero, r4, zero, 2
00196c  1f120000  addli r4, zero, 1
001970  0d020006  ew_cfg r4, zero, zero, 3
001974  0b122c10  add.s r4, r24, r2
001978  1f010104  addli r2, r2, 512
00197c  2d02a200  dsmadd r4, r4, r10, 0
001980  bb5f61fe  bneq r2, r6, -12
001984  1f210000  addli r2, zero, 2
001988  1d100100  unlock r2
00198c  1f511000  addli r2, zero, 13
001990  7d000100  xsignal r2, 0
001994  1f012000  addli r2, zero, 16
001998  7d000100  xsignal r2, 0
00199c  2bc10300  lui r2, 60
0019a0  6b538ffa  load.d r[7:8], -88(r30)
0019a4  3d000000  xfence
0019a8  00a00300  mfence { lm, sm, gm }
0019ac  0b152610  add.s r10, r12, r2
0019b0  1f71f001  addli r2, zero, 255
0019b4  80220104  csr_set csr5, r2
0019b8  00e00200  sync_core
0019bc  37810400  beq r9, zero, 64
0019c0  1f110000  addli r2, zero, 1
0019c4  b7e62400  beq r9, r2, 440
0019c8  63013fff  loadli.w r2,  -104(r30)
0019cc  bb4c0100  bneq r2, zero, 816
0019d0  1f310000  addli r2, zero, 3
0019d4  b7a22402  beq r9, r2, 1192
0019d8  63413fff  loadli.w r2,  -100(r30)
0019dc  bb080102  bneq r2, zero, 1568
0019e0  1f510000  addli r2, zero, 5
0019e4  37ee2402  beq r9, r2, 1944
0019e8  1f610000  addli r2, zero, 6
0019ec  37c42404  beq r9, r2, 2320
0019f0  63014fff  loadli.w r2,  -96(r30)
0019f4  3b1a0104  bneq r2, zero, 2692
0019f8  db7e0100  j 3060
0019fc  3d000000  xfence
001a00  33030028  zext_int2long r[7:8], zero
001a04  00a00300  mfence { lm, sm, gm }
001a08  73386ffa  store.d r[7:8], -80(r30)
001a0c  5b040000  j 32
001a10  6b528ffb  load.d r[5:6], -72(r30)
001a14  6b530ffc  load.d r[7:8], -64(r30)
001a18  13214304  setlt.ul r2, r[7:8], r[5:6]
001a1c  27120300  addli.d r[5:6], r[7:8], 1
001a20  27030200  addli.d r[7:8], r[5:6], 0
001a24  9f720000  addli r5, zero, 7
001a28  37050100  beq r2, zero, 320
001a2c  17345302  sll.d r[9:10], r[7:8], r5
001a30  6b520ffb  load.d r[5:6], -80(r30)
001a34  73306ffc  store.d r[7:8], -64(r30)
001a38  db040000  j 36
001a3c  27420200  addli.d r[5:6], r[5:6], 4
001a40  8b13c511  add.s r7, r10, r28
001a44  1321a203  setneq.d r2, r[5:6], r[27:28]
001a48  73e66300  stores.w r6, 12(r7)
001a4c  73e4f300  stores.w r15, 8(r7)
001a50  73e24301  stores.w r20, 4(r7)
001a54  73e0b300  stores.w r11, 0(r7)
001a58  b76e01fe  beq r2, zero, -72
001a5c  0b238210  add.ul r[7:8], r[5:6], r[9:10]
001a60  1b3e2300  slli r28, r6, 2
001a64  0b13cc11  add.s r6, r24, r28
001a68  6f41c300  loads.w r2, 12(r6)
001a6c  ef490300  loads.w r19, 0(r6)
001a70  ef4a4300  loads.w r21, 4(r6)
001a74  6f488300  loads.w r16, 8(r6)
001a78  9703d100  and r7, r2, r13
001a7c  13837104  setlt.u r6, r3, r7
001a80  3b300300  bneq r6, zero, 12
001a84  1f030100  addli r6, r2, 0
001a88  5b010000  j 8
001a8c  17139101  or r6, r2, r25
001a90  1709d800  and r18, r16, r13
001a94  93852105  setlt.u r11, r3, r18
001a98  3bb00500  bneq r11, zero, 12
001a9c  9f070800  addli r15, r16, 0
001aa0  5b010000  j 8
001aa4  97179801  or r15, r16, r25
001aa8  178bda00  and r22, r21, r13
001aac  93856105  setlt.u r11, r3, r22
001ab0  3bb00500  bneq r11, zero, 12
001ab4  1f8a0a00  addli r20, r21, 0
001ab8  5b010000  j 8
001abc  179a9a01  or r20, r21, r25
001ac0  978bd900  and r23, r19, r13
001ac4  93857105  setlt.u r11, r3, r23
001ac8  3bd00500  bneq r11, zero, 20
001acc  9f850900  addli r11, r19, 0
001ad0  938b7805  setlt.u r23, r17, r23
001ad4  37d00b00  beq r23, zero, 20
001ad8  db040000  j 36
001adc  97959901  or r11, r19, r25
001ae0  938b7805  setlt.u r23, r17, r23
001ae4  3be00b00  bneq r23, zero, 24
001ae8  9bc50901  srli r11, r19, 16
001aec  9b851500  andi r11, r11, 1
001af0  8b95b910  add.s r11, r19, r11
001af4  8b95e510  add.s r11, r11, r14
001af8  97851500  and r11, r11, r1
001afc  93896805  setlt.u r19, r17, r22
001b00  37e00900  beq r19, zero, 24
001b04  13892805  setlt.u r18, r17, r18
001b08  b7300900  beq r18, zero, 44
001b0c  93837804  setlt.u r7, r17, r7
001b10  bbbc03fe  bneq r7, zero, -212
001b14  db070000  j 60
001b18  9bc90a01  srli r19, r21, 16
001b1c  9b891900  andi r19, r19, 1
001b20  8b993a11  add.s r19, r21, r19
001b24  8b99e910  add.s r19, r19, r14
001b28  178a1900  and r20, r19, r1
001b2c  13892805  setlt.u r18, r17, r18
001b30  3b7f09fe  bneq r18, zero, -36
001b34  9b470801  srli r15, r16, 16
001b38  9b871700  andi r15, r15, 1
001b3c  8b17f810  add.s r15, r16, r15
001b40  8b97e710  add.s r15, r15, r14
001b44  97871700  and r15, r15, r1
001b48  93837804  setlt.u r7, r17, r7
001b4c  bbcb03fe  bneq r7, zero, -272
001b50  1b430101  srli r6, r2, 16
001b54  1b031300  andi r6, r6, 1
001b58  0b116110  add.s r2, r2, r6
001b5c  0b11e110  add.s r2, r2, r14
001b60  17031100  and r6, r2, r1
001b64  5bdbffff  j -296
001b68  00200100  mfence { sm }
001b6c  80340002  core_id r9
001b70  6b538ffa  load.d r[7:8], -88(r30)
001b74  1f110000  addli r2, zero, 1
001b78  3bc924fe  bneq r9, r2, -432
001b7c  1f011000  addli r2, zero, 8
001b80  3d000000  xfence
001b84  00a00300  mfence { lm, sm, gm }
001b88  33030128  zext_int2long r[7:8], r2
001b8c  5b040000  j 32
001b90  6b528fff  load.d r[5:6], -8(r30)
001b94  6b530ffc  load.d r[7:8], -64(r30)
001b98  13214304  setlt.ul r2, r[7:8], r[5:6]
001b9c  27120300  addli.d r[5:6], r[7:8], 1
001ba0  27030200  addli.d r[7:8], r[5:6], 0
001ba4  9f720000  addli r5, zero, 7
001ba8  37050100  beq r2, zero, 320
001bac  17325302  sll.d r[5:6], r[7:8], r5
001bb0  33040028  zext_int2long r[9:10], zero
001bb4  73306ffc  store.d r[7:8], -64(r30)
001bb8  db040000  j 36
001bbc  27440400  addli.d r[9:10], r[9:10], 4
001bc0  8b132511  add.s r7, r10, r18
001bc4  1321a403  setneq.d r2, r[9:10], r[27:28]
001bc8  73e66300  stores.w r6, 12(r7)
001bcc  73e4f300  stores.w r15, 8(r7)
001bd0  73e23301  stores.w r19, 4(r7)
001bd4  73e0b300  stores.w r11, 0(r7)
001bd8  b76e01fe  beq r2, zero, -72
001bdc  0b234410  add.ul r[7:8], r[9:10], r[5:6]
001be0  1b392300  slli r18, r6, 2
001be4  0b132c11  add.s r6, r24, r18
001be8  6f41c300  loads.w r2, 12(r6)
001bec  6f4e0300  loads.w r28, 0(r6)
001bf0  6f4a4300  loads.w r20, 4(r6)
001bf4  6f488300  loads.w r16, 8(r6)
001bf8  9703d100  and r7, r2, r13
001bfc  13837104  setlt.u r6, r3, r7
001c00  3b300300  bneq r6, zero, 12
001c04  1f030100  addli r6, r2, 0
001c08  5b010000  j 8
001c0c  17139101  or r6, r2, r25
001c10  970ad800  and r21, r16, r13
001c14  93855105  setlt.u r11, r3, r21
001c18  3bb00500  bneq r11, zero, 12
001c1c  9f070800  addli r15, r16, 0
001c20  5b010000  j 8
001c24  97179801  or r15, r16, r25
001c28  170bda00  and r22, r20, r13
001c2c  93856105  setlt.u r11, r3, r22
001c30  3bb00500  bneq r11, zero, 12
001c34  9f090a00  addli r19, r20, 0
001c38  5b010000  j 8
001c3c  97199a01  or r19, r20, r25
001c40  970bde00  and r23, r28, r13
001c44  93857105  setlt.u r11, r3, r23
001c48  3bd00500  bneq r11, zero, 20
001c4c  9f050e00  addli r11, r28, 0
001c50  938b7805  setlt.u r23, r17, r23
001c54  37d00b00  beq r23, zero, 20
001c58  db040000  j 36
001c5c  97159e01  or r11, r28, r25
001c60  938b7805  setlt.u r23, r17, r23
001c64  3be00b00  bneq r23, zero, 24
001c68  9b450e01  srli r11, r28, 16
001c6c  9b851500  andi r11, r11, 1
001c70  8b15be10  add.s r11, r28, r11
001c74  8b95e510  add.s r11, r11, r14
001c78  97851500  and r11, r11, r1
001c7c  138b6805  setlt.u r22, r17, r22
001c80  37600b00  beq r22, zero, 24
001c84  138a5805  setlt.u r20, r17, r21
001c88  b7300a00  beq r20, zero, 44
001c8c  93837804  setlt.u r7, r17, r7
001c90  bbbc03fe  bneq r7, zero, -212
001c94  db070000  j 60
001c98  9b490a01  srli r19, r20, 16
001c9c  9b891900  andi r19, r19, 1
001ca0  8b193a11  add.s r19, r20, r19
001ca4  8b99e910  add.s r19, r19, r14
001ca8  97891900  and r19, r19, r1
001cac  138a5805  setlt.u r20, r17, r21
001cb0  3b7f0afe  bneq r20, zero, -36
001cb4  9b470801  srli r15, r16, 16
001cb8  9b871700  andi r15, r15, 1
001cbc  8b17f810  add.s r15, r16, r15
001cc0  8b97e710  add.s r15, r15, r14
001cc4  97871700  and r15, r15, r1
001cc8  93837804  setlt.u r7, r17, r7
001ccc  bbcb03fe  bneq r7, zero, -272
001cd0  1b430101  srli r6, r2, 16
001cd4  1b031300  andi r6, r6, 1
001cd8  0b116110  add.s r2, r2, r6
001cdc  0b11e110  add.s r2, r2, r14
001ce0  17031100  and r6, r2, r1
001ce4  5bdbffff  j -296
001ce8  00200100  mfence { sm }
001cec  80340002  core_id r9
001cf0  6b538ffa  load.d r[7:8], -88(r30)
001cf4  63013fff  loadli.w r2,  -104(r30)
001cf8  376301fe  beq r2, zero, -808
001cfc  1f012000  addli r2, zero, 16
001d00  3d000000  xfence
001d04  00a00300  mfence { lm, sm, gm }
001d08  33030128  zext_int2long r[7:8], r2
001d0c  5b040000  j 32
001d10  6b520fff  load.d r[5:6], -16(r30)
001d14  6b538fff  load.d r[7:8], -8(r30)
001d18  13214304  setlt.ul r2, r[7:8], r[5:6]
001d1c  27120300  addli.d r[5:6], r[7:8], 1
001d20  27030200  addli.d r[7:8], r[5:6], 0
001d24  9f720000  addli r5, zero, 7
001d28  37050100  beq r2, zero, 320
001d2c  17325302  sll.d r[5:6], r[7:8], r5
001d30  33040028  zext_int2long r[9:10], zero
001d34  733c6ffe  store.d r[7:8], -8(r30)
001d38  db040000  j 36
001d3c  27440400  addli.d r[9:10], r[9:10], 4
001d40  8b132511  add.s r7, r10, r18
001d44  1321a403  setneq.d r2, r[9:10], r[27:28]
001d48  73e66300  stores.w r6, 12(r7)
001d4c  73e4f300  stores.w r15, 8(r7)
001d50  73e23301  stores.w r19, 4(r7)
001d54  73e0b300  stores.w r11, 0(r7)
001d58  b76e01fe  beq r2, zero, -72
001d5c  0b234410  add.ul r[7:8], r[9:10], r[5:6]
001d60  1b392300  slli r18, r6, 2
001d64  0b132c11  add.s r6, r24, r18
001d68  6f41c300  loads.w r2, 12(r6)
001d6c  6f4e0300  loads.w r28, 0(r6)
001d70  6f4a4300  loads.w r20, 4(r6)
001d74  6f488300  loads.w r16, 8(r6)
001d78  9703d100  and r7, r2, r13
001d7c  13837104  setlt.u r6, r3, r7
001d80  3b300300  bneq r6, zero, 12
001d84  1f030100  addli r6, r2, 0
001d88  5b010000  j 8
001d8c  17139101  or r6, r2, r25
001d90  970ad800  and r21, r16, r13
001d94  93855105  setlt.u r11, r3, r21
001d98  3bb00500  bneq r11, zero, 12
001d9c  9f070800  addli r15, r16, 0
001da0  5b010000  j 8
001da4  97179801  or r15, r16, r25
001da8  170bda00  and r22, r20, r13
001dac  93856105  setlt.u r11, r3, r22
001db0  3bb00500  bneq r11, zero, 12
001db4  9f090a00  addli r19, r20, 0
001db8  5b010000  j 8
001dbc  97199a01  or r19, r20, r25
001dc0  970bde00  and r23, r28, r13
001dc4  93857105  setlt.u r11, r3, r23
001dc8  3bd00500  bneq r11, zero, 20
001dcc  9f050e00  addli r11, r28, 0
001dd0  938b7805  setlt.u r23, r17, r23
001dd4  37d00b00  beq r23, zero, 20
001dd8  db040000  j 36
001ddc  97159e01  or r11, r28, r25
001de0  938b7805  setlt.u r23, r17, r23
001de4  3be00b00  bneq r23, zero, 24
001de8  9b450e01  srli r11, r28, 16
001dec  9b851500  andi r11, r11, 1
001df0  8b15be10  add.s r11, r28, r11
001df4  8b95e510  add.s r11, r11, r14
001df8  97851500  and r11, r11, r1
001dfc  138b6805  setlt.u r22, r17, r22
001e00  37600b00  beq r22, zero, 24
001e04  138a5805  setlt.u r20, r17, r21
001e08  b7300a00  beq r20, zero, 44
001e0c  93837804  setlt.u r7, r17, r7
001e10  bbbc03fe  bneq r7, zero, -212
001e14  db070000  j 60
001e18  9b490a01  srli r19, r20, 16
001e1c  9b891900  andi r19, r19, 1
001e20  8b193a11  add.s r19, r20, r19
001e24  8b99e910  add.s r19, r19, r14
001e28  97891900  and r19, r19, r1
001e2c  138a5805  setlt.u r20, r17, r21
001e30  3b7f0afe  bneq r20, zero, -36
001e34  9b470801  srli r15, r16, 16
001e38  9b871700  andi r15, r15, 1
001e3c  8b17f810  add.s r15, r16, r15
001e40  8b97e710  add.s r15, r15, r14
001e44  97871700  and r15, r15, r1
001e48  93837804  setlt.u r7, r17, r7
001e4c  bbcb03fe  bneq r7, zero, -272
001e50  1b430101  srli r6, r2, 16
001e54  1b031300  andi r6, r6, 1
001e58  0b116110  add.s r2, r2, r6
001e5c  0b11e110  add.s r2, r2, r14
001e60  17031100  and r6, r2, r1
001e64  5bdbffff  j -296
001e68  00200100  mfence { sm }
001e6c  80340002  core_id r9
001e70  6b538ffa  load.d r[7:8], -88(r30)
001e74  1f310000  addli r2, zero, 3
001e78  bb8d24fc  bneq r9, r2, -1184
001e7c  1f013000  addli r2, zero, 24
001e80  3d000000  xfence
001e84  00a00300  mfence { lm, sm, gm }
001e88  33030128  zext_int2long r[7:8], r2
001e8c  5b040000  j 32
001e90  6b528ffe  load.d r[5:6], -24(r30)
001e94  6b538fff  load.d r[7:8], -8(r30)
001e98  13214304  setlt.ul r2, r[7:8], r[5:6]
001e9c  27120300  addli.d r[5:6], r[7:8], 1
001ea0  27030200  addli.d r[7:8], r[5:6], 0
001ea4  9f720000  addli r5, zero, 7
001ea8  37050100  beq r2, zero, 320
001eac  173b5302  sll.d r[23:24], r[7:8], r5
001eb0  33040028  zext_int2long r[9:10], zero
001eb4  733c6ffe  store.d r[7:8], -8(r30)
001eb8  db040000  j 36
001ebc  27440400  addli.d r[9:10], r[9:10], 4
001ec0  0b122511  add.s r4, r10, r18
001ec4  1321a403  setneq.d r2, r[9:10], r[27:28]
001ec8  73666200  stores.w r6, 12(r4)
001ecc  7364f200  stores.w r15, 8(r4)
001ed0  73623201  stores.w r19, 4(r4)
001ed4  7360b200  stores.w r11, 0(r4)
001ed8  b76e01fe  beq r2, zero, -72
001edc  0b226411  add.ul r[5:6], r[9:10], r[23:24]
001ee0  1b392200  slli r18, r4, 2
001ee4  0b122c11  add.s r4, r24, r18
001ee8  6f41c200  loads.w r2, 12(r4)
001eec  6f4e0200  loads.w r28, 0(r4)
001ef0  6f4a4200  loads.w r20, 4(r4)
001ef4  6f488200  loads.w r16, 8(r4)
001ef8  9703d100  and r7, r2, r13
001efc  13827104  setlt.u r4, r3, r7
001f00  3b300200  bneq r4, zero, 12
001f04  1f030100  addli r6, r2, 0
001f08  5b010000  j 8
001f0c  17139101  or r6, r2, r25
001f10  970ad800  and r21, r16, r13
001f14  13825105  setlt.u r4, r3, r21
001f18  3b300200  bneq r4, zero, 12
001f1c  9f070800  addli r15, r16, 0
001f20  5b010000  j 8
001f24  97179801  or r15, r16, r25
001f28  1702da00  and r4, r20, r13
001f2c  93824104  setlt.u r5, r3, r4
001f30  3bb00200  bneq r5, zero, 12
001f34  9f090a00  addli r19, r20, 0
001f38  5b010000  j 8
001f3c  97199a01  or r19, r20, r25
001f40  9702de00  and r5, r28, r13
001f44  93855104  setlt.u r11, r3, r5
001f48  3bd00500  bneq r11, zero, 20
001f4c  9f050e00  addli r11, r28, 0
001f50  93825804  setlt.u r5, r17, r5
001f54  37d00200  beq r5, zero, 20
001f58  db040000  j 36
001f5c  97159e01  or r11, r28, r25
001f60  93825804  setlt.u r5, r17, r5
001f64  3be00200  bneq r5, zero, 24
001f68  9b420e01  srli r5, r28, 16
001f6c  9b821200  andi r5, r5, 1
001f70  8b125e10  add.s r5, r28, r5
001f74  8b92e210  add.s r5, r5, r14
001f78  97851200  and r11, r5, r1
001f7c  13824804  setlt.u r4, r17, r4
001f80  37600200  beq r4, zero, 24
001f84  13825805  setlt.u r4, r17, r21
001f88  b7300200  beq r4, zero, 44
001f8c  13827804  setlt.u r4, r17, r7
001f90  bb3c02fe  bneq r4, zero, -212
001f94  db070000  j 60
001f98  1b420a01  srli r4, r20, 16
001f9c  1b021200  andi r4, r4, 1
001fa0  0b124a10  add.s r4, r20, r4
001fa4  0b12e210  add.s r4, r4, r14
001fa8  97091200  and r19, r4, r1
001fac  13825805  setlt.u r4, r17, r21
001fb0  3b7f02fe  bneq r4, zero, -36
001fb4  1b420801  srli r4, r16, 16
001fb8  1b021200  andi r4, r4, 1
001fbc  0b124810  add.s r4, r16, r4
001fc0  0b12e210  add.s r4, r4, r14
001fc4  97071200  and r15, r4, r1
001fc8  13827804  setlt.u r4, r17, r7
001fcc  bb4b02fe  bneq r4, zero, -272
001fd0  1b420101  srli r4, r2, 16
001fd4  1b021200  andi r4, r4, 1
001fd8  0b114110  add.s r2, r2, r4
001fdc  0b11e110  add.s r2, r2, r14
001fe0  17031100  and r6, r2, r1
001fe4  5bdbffff  j -296
001fe8  00200100  mfence { sm }
001fec  80340002  core_id r9
001ff0  6b538ffa  load.d r[7:8], -88(r30)
001ff4  63413fff  loadli.w r2,  -100(r30)
001ff8  b72701fc  beq r2, zero, -1560
001ffc  1f014000  addli r2, zero, 32
002000  3d000000  xfence
002004  00a00300  mfence { lm, sm, gm }
002008  33030128  zext_int2long r[7:8], r2
00200c  5b040000  j 32
002010  6b520ffe  load.d r[5:6], -32(r30)
002014  6b538fff  load.d r[7:8], -8(r30)
002018  13214304  setlt.ul r2, r[7:8], r[5:6]
00201c  27120300  addli.d r[5:6], r[7:8], 1
002020  27030200  addli.d r[7:8], r[5:6], 0
002024  9f720000  addli r5, zero, 7
002028  37050100  beq r2, zero, 320
00202c  17345302  sll.d r[9:10], r[7:8], r5
002030  330b0028  zext_int2long r[23:24], zero
002034  733c6ffe  store.d r[7:8], -8(r30)
002038  db040000  j 36
00203c  274b0b00  addli.d r[23:24], r[23:24], 4
002040  0b122511  add.s r4, r10, r18
002044  1321ab03  setneq.d r2, r[23:24], r[27:28]
002048  73666200  stores.w r6, 12(r4)
00204c  7364f200  stores.w r15, 8(r4)
002050  73623201  stores.w r19, 4(r4)
002054  7360b200  stores.w r11, 0(r4)
002058  b76e01fe  beq r2, zero, -72
00205c  0b228b10  add.ul r[5:6], r[23:24], r[9:10]
002060  1b392200  slli r18, r4, 2
002064  0b122c11  add.s r4, r24, r18
002068  6f41c200  loads.w r2, 12(r4)
00206c  6f4e0200  loads.w r28, 0(r4)
002070  6f4a4200  loads.w r20, 4(r4)
002074  6f488200  loads.w r16, 8(r4)
002078  9703d100  and r7, r2, r13
00207c  13827104  setlt.u r4, r3, r7
002080  3b300200  bneq r4, zero, 12
002084  1f030100  addli r6, r2, 0
002088  5b010000  j 8
00208c  17139101  or r6, r2, r25
002090  970ad800  and r21, r16, r13
002094  13825105  setlt.u r4, r3, r21
002098  3b300200  bneq r4, zero, 12
00209c  9f070800  addli r15, r16, 0
0020a0  5b010000  j 8
0020a4  97179801  or r15, r16, r25
0020a8  1702da00  and r4, r20, r13
0020ac  93824104  setlt.u r5, r3, r4
0020b0  3bb00200  bneq r5, zero, 12
0020b4  9f090a00  addli r19, r20, 0
0020b8  5b010000  j 8
0020bc  97199a01  or r19, r20, r25
0020c0  9702de00  and r5, r28, r13
0020c4  93855104  setlt.u r11, r3, r5
0020c8  3bd00500  bneq r11, zero, 20
0020cc  9f050e00  addli r11, r28, 0
0020d0  93825804  setlt.u r5, r17, r5
0020d4  37d00200  beq r5, zero, 20
0020d8  db040000  j 36
0020dc  97159e01  or r11, r28, r25
0020e0  93825804  setlt.u r5, r17, r5
0020e4  3be00200  bneq r5, zero, 24
0020e8  9b420e01  srli r5, r28, 16
0020ec  9b821200  andi r5, r5, 1
0020f0  8b125e10  add.s r5, r28, r5
0020f4  8b92e210  add.s r5, r5, r14
0020f8  97851200  and r11, r5, r1
0020fc  13824804  setlt.u r4, r17, r4
002100  37600200  beq r4, zero, 24
002104  13825805  setlt.u r4, r17, r21
002108  b7300200  beq r4, zero, 44
00210c  13827804  setlt.u r4, r17, r7
002110  bb3c02fe  bneq r4, zero, -212
002114  db070000  j 60
002118  1b420a01  srli r4, r20, 16
00211c  1b021200  andi r4, r4, 1
002120  0b124a10  add.s r4, r20, r4
002124  0b12e210  add.s r4, r4, r14
002128  97091200  and r19, r4, r1
00212c  13825805  setlt.u r4, r17, r21
002130  3b7f02fe  bneq r4, zero, -36
002134  1b420801  srli r4, r16, 16
002138  1b021200  andi r4, r4, 1
00213c  0b124810  add.s r4, r16, r4
002140  0b12e210  add.s r4, r4, r14
002144  97071200  and r15, r4, r1
002148  13827804  setlt.u r4, r17, r7
00214c  bb4b02fe  bneq r4, zero, -272
002150  1b420101  srli r4, r2, 16
002154  1b021200  andi r4, r4, 1
002158  0b114110  add.s r2, r2, r4
00215c  0b11e110  add.s r2, r2, r14
002160  17031100  and r6, r2, r1
002164  5bdbffff  j -296
002168  00200100  mfence { sm }
00216c  80340002  core_id r9
002170  6b538ffa  load.d r[7:8], -88(r30)
002174  1f510000  addli r2, zero, 5
002178  bbc124fc  bneq r9, r2, -1936
00217c  1f015000  addli r2, zero, 40
002180  3d000000  xfence
002184  00a00300  mfence { lm, sm, gm }
002188  33030128  zext_int2long r[7:8], r2
00218c  5b040000  j 32
002190  6b528ffd  load.d r[5:6], -40(r30)
002194  6b538fff  load.d r[7:8], -8(r30)
002198  13214304  setlt.ul r2, r[7:8], r[5:6]
00219c  27120300  addli.d r[5:6], r[7:8], 1
0021a0  27030200  addli.d r[7:8], r[5:6], 0
0021a4  9f720000  addli r5, zero, 7
0021a8  37050100  beq r2, zero, 320
0021ac  17345302  sll.d r[9:10], r[7:8], r5
0021b0  33090028  zext_int2long r[19:20], zero
0021b4  733c6ffe  store.d r[7:8], -8(r30)
0021b8  db040000  j 36
0021bc  27490900  addli.d r[19:20], r[19:20], 4
0021c0  0b126511  add.s r4, r10, r22
0021c4  1321a903  setneq.d r2, r[19:20], r[27:28]
0021c8  73666200  stores.w r6, 12(r4)
0021cc  7364f200  stores.w r15, 8(r4)
0021d0  73624201  stores.w r20, 4(r4)
0021d4  7360b200  stores.w r11, 0(r4)
0021d8  b76e01fe  beq r2, zero, -72
0021dc  0b228910  add.ul r[5:6], r[19:20], r[9:10]
0021e0  1b3b2200  slli r22, r4, 2
0021e4  0b126c11  add.s r4, r24, r22
0021e8  6f41c200  loads.w r2, 12(r4)
0021ec  6f4e0200  loads.w r28, 0(r4)
0021f0  ef4a4200  loads.w r21, 4(r4)
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
002228  1782da00  and r4, r21, r13
00222c  93824104  setlt.u r5, r3, r4
002230  3bb00200  bneq r5, zero, 12
002234  1f8a0a00  addli r20, r21, 0
002238  5b010000  j 8
00223c  179a9a01  or r20, r21, r25
002240  9702de00  and r5, r28, r13
002244  93855104  setlt.u r11, r3, r5
002248  3bd00500  bneq r11, zero, 20
00224c  9f050e00  addli r11, r28, 0
002250  93825804  setlt.u r5, r17, r5
002254  37d00200  beq r5, zero, 20
002258  db040000  j 36
00225c  97159e01  or r11, r28, r25
002260  93825804  setlt.u r5, r17, r5
002264  3be00200  bneq r5, zero, 24
002268  9b420e01  srli r5, r28, 16
00226c  9b821200  andi r5, r5, 1
002270  8b125e10  add.s r5, r28, r5
002274  8b92e210  add.s r5, r5, r14
002278  97851200  and r11, r5, r1
00227c  13824804  setlt.u r4, r17, r4
002280  37600200  beq r4, zero, 24
002284  13827805  setlt.u r4, r17, r23
002288  b7300200  beq r4, zero, 44
00228c  13827804  setlt.u r4, r17, r7
002290  bb3c02fe  bneq r4, zero, -212
002294  db070000  j 60
002298  1bc20a01  srli r4, r21, 16
00229c  1b021200  andi r4, r4, 1
0022a0  0b924a10  add.s r4, r21, r4
0022a4  0b12e210  add.s r4, r4, r14
0022a8  170a1200  and r20, r4, r1
0022ac  13827805  setlt.u r4, r17, r23
0022b0  3b7f02fe  bneq r4, zero, -36
0022b4  1b420801  srli r4, r16, 16
0022b8  1b021200  andi r4, r4, 1
0022bc  0b124810  add.s r4, r16, r4
0022c0  0b12e210  add.s r4, r4, r14
0022c4  97071200  and r15, r4, r1
0022c8  13827804  setlt.u r4, r17, r7
0022cc  bb4b02fe  bneq r4, zero, -272
0022d0  1b420101  srli r4, r2, 16
0022d4  1b021200  andi r4, r4, 1
0022d8  0b114110  add.s r2, r2, r4
0022dc  0b11e110  add.s r2, r2, r14
0022e0  17031100  and r6, r2, r1
0022e4  5bdbffff  j -296
0022e8  00200100  mfence { sm }
0022ec  80340002  core_id r9
0022f0  6b538ffa  load.d r[7:8], -88(r30)
0022f4  1f610000  addli r2, zero, 6
0022f8  bbeb24fa  bneq r9, r2, -2312
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
002328  33040028  zext_int2long r[9:10], zero
00232c  733c4ffe  store.d r[5:6], -8(r30)
002330  17332202  sll.d r[7:8], r[5:6], r2
002334  db040000  j 36
002338  27440400  addli.d r[9:10], r[9:10], 4
00233c  0b122511  add.s r4, r10, r18
002340  1321a403  setneq.d r2, r[9:10], r[27:28]
002344  73663201  stores.w r19, 12(r4)
002348  7364f200  stores.w r15, 8(r4)
00234c  73624201  stores.w r20, 4(r4)
002350  7360b200  stores.w r11, 0(r4)
002354  b77e01fe  beq r2, zero, -68
002358  0b226410  add.ul r[5:6], r[9:10], r[7:8]
00235c  1b392200  slli r18, r4, 2
002360  0b122c11  add.s r4, r24, r18
002364  6f41c200  loads.w r2, 12(r4)
002368  6f4e0200  loads.w r28, 0(r4)
00236c  ef4a4200  loads.w r21, 4(r4)
002370  6f488200  loads.w r16, 8(r4)
002374  170bd100  and r22, r2, r13
002378  13826105  setlt.u r4, r3, r22
00237c  3b300200  bneq r4, zero, 12
002380  9f090100  addli r19, r2, 0
002384  5b010000  j 8
002388  97199101  or r19, r2, r25
00238c  970bd800  and r23, r16, r13
002390  13827105  setlt.u r4, r3, r23
002394  3b300200  bneq r4, zero, 12
002398  9f070800  addli r15, r16, 0
00239c  5b010000  j 8
0023a0  97179801  or r15, r16, r25
0023a4  1782da00  and r4, r21, r13
0023a8  93824104  setlt.u r5, r3, r4
0023ac  3bb00200  bneq r5, zero, 12
0023b0  1f8a0a00  addli r20, r21, 0
0023b4  5b010000  j 8
0023b8  179a9a01  or r20, r21, r25
0023bc  9702de00  and r5, r28, r13
0023c0  93855104  setlt.u r11, r3, r5
0023c4  3bd00500  bneq r11, zero, 20
0023c8  9f050e00  addli r11, r28, 0
0023cc  93825804  setlt.u r5, r17, r5
0023d0  37d00200  beq r5, zero, 20
0023d4  db040000  j 36
0023d8  97159e01  or r11, r28, r25
0023dc  93825804  setlt.u r5, r17, r5
0023e0  3be00200  bneq r5, zero, 24
0023e4  9b420e01  srli r5, r28, 16
0023e8  9b821200  andi r5, r5, 1
0023ec  8b125e10  add.s r5, r28, r5
0023f0  8b92e210  add.s r5, r5, r14
0023f4  97851200  and r11, r5, r1
0023f8  13824804  setlt.u r4, r17, r4
0023fc  37600200  beq r4, zero, 24
002400  13827805  setlt.u r4, r17, r23
002404  b7300200  beq r4, zero, 44
002408  13826805  setlt.u r4, r17, r22
00240c  bb3c02fe  bneq r4, zero, -212
002410  db070000  j 60
002414  1bc20a01  srli r4, r21, 16
002418  1b021200  andi r4, r4, 1
00241c  0b924a10  add.s r4, r21, r4
002420  0b12e210  add.s r4, r4, r14
002424  170a1200  and r20, r4, r1
002428  13827805  setlt.u r4, r17, r23
00242c  3b7f02fe  bneq r4, zero, -36
002430  1b420801  srli r4, r16, 16
002434  1b021200  andi r4, r4, 1
002438  0b124810  add.s r4, r16, r4
00243c  0b12e210  add.s r4, r4, r14
002440  97071200  and r15, r4, r1
002444  13826805  setlt.u r4, r17, r22
002448  bb4b02fe  bneq r4, zero, -272
00244c  1b420101  srli r4, r2, 16
002450  1b021200  andi r4, r4, 1
002454  0b114110  add.s r2, r2, r4
002458  0b11e110  add.s r2, r2, r14
00245c  97091100  and r19, r2, r1
002460  5bdbffff  j -296
002464  00200100  mfence { sm }
002468  80340002  core_id r9
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
0024a4  33040028  zext_int2long r[9:10], zero
0024a8  733c4ffe  store.d r[5:6], -8(r30)
0024ac  17332202  sll.d r[7:8], r[5:6], r2
0024b0  db040000  j 36
0024b4  27440400  addli.d r[9:10], r[9:10], 4
0024b8  0b12f510  add.s r4, r10, r15
0024bc  1321a403  setneq.d r2, r[9:10], r[27:28]
0024c0  73660201  stores.w r16, 12(r4)
0024c4  73643201  stores.w r19, 8(r4)
0024c8  73624201  stores.w r20, 4(r4)
0024cc  7360b200  stores.w r11, 0(r4)
0024d0  b77e01fe  beq r2, zero, -68
0024d4  0b226410  add.ul r[5:6], r[9:10], r[7:8]
0024d8  9b372200  slli r15, r4, 2
0024dc  0b12fc10  add.s r4, r24, r15
0024e0  6f41c200  loads.w r2, 12(r4)
0024e4  6f4e0200  loads.w r28, 0(r4)
0024e8  ef4a4200  loads.w r21, 4(r4)
0024ec  6f4b8200  loads.w r22, 8(r4)
0024f0  1709d100  and r18, r2, r13
0024f4  13822105  setlt.u r4, r3, r18
0024f8  3b300200  bneq r4, zero, 12
0024fc  1f080100  addli r16, r2, 0
002500  5b010000  j 8
002504  17189101  or r16, r2, r25
002508  970bdb00  and r23, r22, r13
00250c  13827105  setlt.u r4, r3, r23
002510  3b300200  bneq r4, zero, 12
002514  9f090b00  addli r19, r22, 0
002518  5b010000  j 8
00251c  97199b01  or r19, r22, r25
002520  1782da00  and r4, r21, r13
002524  93824104  setlt.u r5, r3, r4
002528  3bb00200  bneq r5, zero, 12
00252c  1f8a0a00  addli r20, r21, 0
002530  5b010000  j 8
002534  179a9a01  or r20, r21, r25
002538  9702de00  and r5, r28, r13
00253c  93855104  setlt.u r11, r3, r5
002540  3bd00500  bneq r11, zero, 20
002544  9f050e00  addli r11, r28, 0
002548  93825804  setlt.u r5, r17, r5
00254c  37d00200  beq r5, zero, 20
002550  db040000  j 36
002554  97159e01  or r11, r28, r25
002558  93825804  setlt.u r5, r17, r5
00255c  3be00200  bneq r5, zero, 24
002560  9b420e01  srli r5, r28, 16
002564  9b821200  andi r5, r5, 1
002568  8b125e10  add.s r5, r28, r5
00256c  8b92e210  add.s r5, r5, r14
002570  97851200  and r11, r5, r1
002574  13824804  setlt.u r4, r17, r4
002578  37600200  beq r4, zero, 24
00257c  13827805  setlt.u r4, r17, r23
002580  b7300200  beq r4, zero, 44
002584  13822805  setlt.u r4, r17, r18
002588  bb3c02fe  bneq r4, zero, -212
00258c  db070000  j 60
002590  1bc20a01  srli r4, r21, 16
002594  1b021200  andi r4, r4, 1
002598  0b924a10  add.s r4, r21, r4
00259c  0b12e210  add.s r4, r4, r14
0025a0  170a1200  and r20, r4, r1
0025a4  13827805  setlt.u r4, r17, r23
0025a8  3b7f02fe  bneq r4, zero, -36
0025ac  1b420b01  srli r4, r22, 16
0025b0  1b021200  andi r4, r4, 1
0025b4  0b124b10  add.s r4, r22, r4
0025b8  0b12e210  add.s r4, r4, r14
0025bc  97091200  and r19, r4, r1
0025c0  13822805  setlt.u r4, r17, r18
0025c4  bb4b02fe  bneq r4, zero, -272
0025c8  1b420101  srli r4, r2, 16
0025cc  1b021200  andi r4, r4, 1
0025d0  0b114110  add.s r2, r2, r4
0025d4  0b11e110  add.s r2, r2, r14
0025d8  17081100  and r16, r2, r1
0025dc  5bdbffff  j -296
0025e0  00200100  mfence { sm }
0025e4  80340002  core_id r9
0025e8  6b538ffa  load.d r[7:8], -88(r30)
0025ec  1f71f001  addli r2, zero, 255
0025f0  1f390000  addli r18, zero, 3
0025f4  80220104  csr_set csr5, r2
0025f8  00e00200  sync_core
0025fc  b7c024ef  beq r9, r18, -9168
002600  6b550ff9  load.d r[11:12], -112(r30)
002604  9f098000  addli r19, zero, 64
002608  9f6a0000  addli r21, zero, 6
00260c  1f5b1000  addli r22, zero, 13
002610  9f1b0000  addli r23, zero, 1
002614  1f2c0000  addli r24, zero, 2
002618  1f4d0000  addli r26, zero, 4
00261c  9f6d1000  addli r27, zero, 14
002620  bbe004ee  bneq r9, zero, -9160
002624  6341effe  loadli.w r2,  -140(r30)
002628  6b540ff8  load.d r[9:10], -128(r30)
00262c  eb578f01  load.d r[16:17], 24(r30)
002630  1f5a0000  addli r20, zero, 5
002634  1b316100  slli r2, r2, 6
002638  33120128  sext_int2long r[5:6], r2
00263c  1f112000  addli r2, zero, 17
002640  17342402  sll.d r[9:10], r[9:10], r2
002644  7d100100  xwait r2, 0
002648  1d000a00  lock zero, r20
00264c  0b336240  min.sl r[7:8], r[5:6], r[7:8]
002650  2bc10300  lui r2, 60
002654  0ba48710  add.ul r[9:10], r[16:17], r[9:10]
002658  eb578ff7  load.d r[16:17], -136(r30)
00265c  27038300  addli.d r[7:8], r[7:8], 64
002660  958b0b00  dma_cfg r23, r23, zero, 0
002664  1b110104  ori r2, r2, 64
002668  15800b02  dma_cfg zero, r23, zero, 1
00266c  0b334348  max.sl r[7:8], r[7:8], r[5:6]
002670  0b112610  add.s r2, r12, r2
002674  0b24f410  add.ul r[9:10], r[9:10], r[16:17]
002678  0b324318  sub.sl r[5:6], r[7:8], r[5:6]
00267c  33830928  zext_int2long r[7:8], r19
002680  95040004  dma_cfg r9, zero, zero, 2
002684  eb578ff8  load.d r[16:17], -120(r30)
002688  0b326240  min.sl r[5:6], r[5:6], r[7:8]
00268c  15043107  dma_cfg r8, r2, r19, 3
002690  9f030001  addli r7, zero, 128
002694  80340002  core_id r9
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
0026c0  1500700b  dma_cfg zero, zero, r23, 5
0026c4  1f212000  addli r2, zero, 18
0026c8  15000010  dma_cfg zero, zero, zero, 8
0026cc  1d100a00  unlock r20
0026d0  7d000100  xsignal r2, 0
0026d4  db70fbff  j -9340
0026d8  e7490ffe  storeli.w zero, -100(r30)
0026dc  670a0ffe  storeli.w zero, -96(r30)
0026e0  b79a24f1  beq r9, r18, -7516
0026e4  db55fcff  j -7508
0026e8  7d000000  xsignal zero, 0
0026ec  bbe00400  bneq r9, zero, 56
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
