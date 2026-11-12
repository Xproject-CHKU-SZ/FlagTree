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
0000b4  9f8e4eff  addli sp, sp, -96
0000b8  9f100000  addli r1, zero, 1
0000bc  80360002  core_id r13
0000c0  1f8f4e00  addli r30, sp, 32
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00600  beq r13, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b0d0000  j 104
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  1d100100  unlock r2
0000fc  1f310000  addli r2, zero, 3
000100  80a10004  csr_set csr3, r1
000104  9f500000  addli r1, zero, 5
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  7d000100  xsignal r2, 0
000114  9f101000  addli r1, zero, 9
000118  1f710000  addli r2, zero, 7
00011c  7d800000  xsignal r1, 0
000120  7d000100  xsignal r2, 0
000124  9f202000  addli r1, zero, 18
000128  1f311000  addli r2, zero, 11
00012c  7d800000  xsignal r1, 0
000130  7d000100  xsignal r2, 0
000134  9f601000  addli r1, zero, 14
000138  1f012000  addli r2, zero, 16
00013c  7d800000  xsignal r1, 0
000140  7d000100  xsignal r2, 0
000144  e3004f00  loadli.w r1,  32(r30)
000148  63414f00  loadli.w r2,  36(r30)
00014c  00d20002  load_param_i r4, 1
000150  e3015f00  loadli.w r3,  40(r30)
000154  8b101120  mul.s r1, r2, r1
000158  1f010200  addli r2, r4, 0
00015c  0b913050  fmac.s r2, r1, r3
000160  8b913020  mul.s r3, r1, r3
000164  1f71f1ff  addli r2, r2, -1
000168  0b114130  div.s r2, r2, r4
00016c  00520002  load_param_i r4, 0
000170  8b104120  mul.s r1, r2, r4
000174  0b114150  fmac.s r2, r2, r4
000178  0b113140  min.s r2, r2, r3
00017c  cb521106  ble.s r2, r1, 3252
000180  b3140128  sext_int2long r[10:11], r2
000184  b3950028  sext_int2long r[12:13], r1
000188  abc00100  lui r1, 28
00018c  2bf1ff7f  lui r2, 524287
000190  ab4c0100  lui r25, 20
000194  1f340000  addli r8, zero, 3
000198  1f170000  addli r14, zero, 1
00019c  9f570000  addli r15, zero, 5
0001a0  1f280000  addli r16, zero, 2
0001a4  1f4a0000  addli r20, zero, 4
0001a8  9f6b0000  addli r23, zero, 6
0001ac  1f0e0001  addli r28, zero, 128
0001b0  ab09807f  lui r19, 522240
0001b4  ab0affff  lui r21, 1048560
0001b8  2bcb0000  lui r22, 12
0001bc  ab820000  lui r5, 8
0001c0  1b9c0020  ori r24, r1, 512
0001c4  1b1df1ff  ori r26, r2, 4095
0001c8  ab700000  lui r1, 7
0001cc  2bf17f7f  lui r2, 522239
0001d0  9b980c20  ori r17, r25, 512
0001d4  73349ffe  store.d r[10:11], -24(r30)
0001d8  9b9df0ff  ori r27, r1, 4095
0001dc  9b10f1ff  ori r1, r2, 4095
0001e0  1f090c00  addli r18, r24, 0
0001e4  db0d0000  j 108
0001e8  1f011000  addli r2, zero, 8
0001ec  7d100a00  xwait r20, 0
0001f0  ab410000  lui r3, 4
0001f4  7d100100  xwait r2, 0
0001f8  1f611000  addli r2, zero, 14
0001fc  7d100100  xwait r2, 0
000200  1f018000  addli r2, zero, 64
000204  1d000700  lock zero, r14
000208  09012100  mm_cfg r2, r2, r2, 0
00020c  090aea04  mm_cfg r20, r20, r14, 2
000210  a9080010  mm r17, zero, zero, 8
000214  1d100700  unlock r14
000218  1d000700  lock zero, r14
00021c  09012100  mm_cfg r2, r2, r2, 0
000220  1b910c30  ori r2, r25, 768
000224  090aea04  mm_cfg r20, r20, r14, 2
000228  29013010  mm r2, zero, r3, 8
00022c  1f111000  addli r2, zero, 9
000230  1d100700  unlock r14
000234  7d800700  xsignal r15, 0
000238  7d000100  xsignal r2, 0
00023c  1f411000  addli r2, zero, 12
000240  7d000100  xsignal r2, 0
000244  a7950500  addli.d r[12:13], r[12:13], 1
000248  13b19504  setlt.sl r2, r[12:13], r[10:11]
00024c  b71f0104  beq r2, zero, 3044
000250  63015f00  loadli.w r2,  40(r30)
000254  e3414f00  loadli.w r3,  36(r30)
000258  0b912530  div.s r2, r11, r2
00025c  1f820100  addli r4, r3, 0
000260  8b114138  mod.s r3, r2, r4
000264  0b114130  div.s r2, r2, r4
000268  33130128  sext_int2long r[7:8], r2
00026c  b3910128  sext_int2long r[4:5], r3
000270  1f710000  addli r2, zero, 7
000274  97b12102  sll.d r[4:5], r[4:5], r2
000278  733c6ffe  store.d r[7:8], -8(r30)
00027c  3f20d400  blt.s r8, r13, 8
000280  5b150000  j 168
000284  bfcbd700  blt.s r15, r13, 752
000288  b78d46ff  beq r13, r20, -160
00028c  bbbbf604  bneq r13, r15, 2796
000290  9f211000  addli r3, zero, 10
000294  1f010000  addli r2, zero, 0
000298  7d900100  xwait r3, 0
00029c  9f411000  addli r3, zero, 12
0002a0  7d900100  xwait r3, 0
0002a4  1d000800  lock zero, r16
0002a8  ab01803f  lui r3, 260096
0002ac  0d000002  ew_cfg zero, zero, zero, 1
0002b0  8d910100  ewcoeff_cfg r3, r3, zero, 0
0002b4  9f71f000  addli r3, zero, 127
0002b8  0d800104  ew_cfg zero, r3, zero, 2
0002bc  0d070006  ew_cfg r14, zero, zero, 3
0002c0  8b111111  add.s r3, r2, r17
0002c4  1f010104  addli r2, r2, 512
0002c8  ad819101  dsmadd r3, r3, r25, 0
0002cc  bb5f51fe  bneq r2, r5, -12
0002d0  9f311000  addli r3, zero, 11
0002d4  1d100800  unlock r16
0002d8  1f010000  addli r2, zero, 0
0002dc  7d800100  xsignal r3, 0
0002e0  9f012000  addli r3, zero, 16
0002e4  7d900100  xwait r3, 0
0002e8  1d000800  lock zero, r16
0002ec  9f71f000  addli r3, zero, 127
0002f0  0d000002  ew_cfg zero, zero, zero, 1
0002f4  0d800104  ew_cfg zero, r3, zero, 2
0002f8  0d070006  ew_cfg r14, zero, zero, 3
0002fc  0d100000  ewcoeff_cfg zero, zero, zero, 0
000300  8b118111  add.s r3, r2, r24
000304  0b121111  add.s r4, r2, r17
000308  1f010104  addli r2, r2, 512
00030c  ad214200  dscmpnsel r3, r4, r4, 0
000310  bb4f51fe  bneq r2, r5, -16
000314  1f511000  addli r2, zero, 13
000318  1d100800  unlock r16
00031c  7d000100  xsignal r2, 0
000320  1f711000  addli r2, zero, 15
000324  dbe3ffff  j -228
000328  b78ae600  beq r13, r14, 672
00032c  37cb0605  beq r13, r16, 2768
000330  3ba98604  bneq r13, r8, 2632
000334  1f511000  addli r2, zero, 13
000338  73383ffe  store.d r[4:5], -16(r30)
00033c  7330bffe  store.d r[12:13], -32(r30)
000340  7d100100  xwait r2, 0
000344  1f711000  addli r2, zero, 15
000348  7d100100  xwait r2, 0
00034c  1f212000  addli r2, zero, 18
000350  7d100100  xwait r2, 0
000354  3d000000  xfence
000358  33010028  zext_int2long r[3:4], zero
00035c  00a00300  mfence { lm, sm, gm }
000360  5b030000  j 24
000364  1f727000  addli r4, zero, 63
000368  33020228  zext_int2long r[5:6], r4
00036c  13224104  setlt.ul r4, r[3:4], r[5:6]
000370  27110100  addli.d r[3:4], r[3:4], 1
000374  b7660204  beq r4, zero, 2488
000378  1f720000  addli r4, zero, 7
00037c  33040028  zext_int2long r[9:10], zero
000380  17324102  sll.d r[5:6], r[3:4], r4
000384  db080000  j 68
000388  1b13cb00  ori r6, r22, 12
00038c  27440400  addli.d r[9:10], r[9:10], 4
000390  9b168b00  ori r13, r22, 8
000394  0b936510  add.s r6, r11, r6
000398  8b96d510  add.s r13, r11, r13
00039c  7360e300  stores.w r14, 0(r6)
0003a0  33030e28  zext_int2long r[7:8], r28
0003a4  73e0a600  stores.w r10, 0(r13)
0003a8  13236402  setneq.d r6, r[9:10], r[7:8]
0003ac  9b134b00  ori r7, r22, 4
0003b0  8b937510  add.s r7, r11, r7
0003b4  8b956511  add.s r11, r11, r22
0003b8  73e08501  stores.w r24, 0(r11)
0003bc  1f0c0900  addli r24, r18, 0
0003c0  73e0c300  stores.w r12, 0(r7)
0003c4  b70e03fe  beq r6, zero, -96
0003c8  0b234410  add.ul r[7:8], r[9:10], r[5:6]
0003cc  9b352300  slli r11, r6, 2
0003d0  0b951511  add.s r10, r11, r17
0003d4  0b968511  add.s r12, r11, r24
0003d8  ef4b0500  loads.w r23, 0(r10)
0003dc  6f43c500  loads.w r6, 12(r10)
0003e0  ef438500  loads.w r7, 8(r10)
0003e4  6f454500  loads.w r10, 4(r10)
0003e8  6f4ac600  loads.w r20, 12(r12)
0003ec  ef4c8600  loads.w r25, 8(r12)
0003f0  6f484600  loads.w r16, 4(r12)
0003f4  9bb69b00  slli r13, r23, 9
0003f8  1bc77b01  srli r14, r23, 23
0003fc  93860600  seteq r13, r13, zero
000400  1b07f70f  andi r14, r14, 255
000404  1b77f70f  setlti r14, r14, 255
000408  9716d700  or r13, r14, r13
00040c  37a00600  beq r13, zero, 8
000410  ef4b0600  loads.w r23, 0(r12)
000414  1b369500  slli r12, r10, 9
000418  9b467501  srli r13, r10, 23
00041c  13060600  seteq r12, r12, zero
000420  9b86f60f  andi r13, r13, 255
000424  9bf6f60f  setlti r13, r13, 255
000428  1796c600  or r12, r13, r12
00042c  3b200600  bneq r12, zero, 8
000430  1f080500  addli r16, r10, 0
000434  1bb59300  slli r10, r7, 9
000438  1bc67301  srli r12, r7, 23
00043c  13050500  seteq r10, r10, zero
000440  1b06f60f  andi r12, r12, 255
000444  1b76f60f  setlti r12, r12, 255
000448  1715a600  or r10, r12, r10
00044c  3b200500  bneq r10, zero, 8
000450  9f8c0300  addli r25, r7, 0
000454  9b339300  slli r7, r6, 9
000458  1b457301  srli r10, r6, 23
00045c  93830300  seteq r7, r7, zero
000460  1b05f50f  andi r10, r10, 255
000464  1b75f50f  setlti r10, r10, 255
000468  97137500  or r7, r10, r7
00046c  3ba00300  bneq r7, zero, 8
000470  1f0a0300  addli r20, r6, 0
000474  9706aa01  and r13, r20, r26
000478  1383d904  setlt.u r6, r19, r13
00047c  3b300300  bneq r6, zero, 12
000480  1f070a00  addli r14, r20, 0
000484  db010000  j 12
000488  2b034000  lui r6, 1024
00048c  17176a00  or r14, r20, r6
000490  1783ac01  and r6, r25, r26
000494  93836904  setlt.u r7, r19, r6
000498  3bb00300  bneq r7, zero, 12
00049c  1f850c00  addli r10, r25, 0
0004a0  db010000  j 12
0004a4  ab034000  lui r7, 1024
0004a8  17957c00  or r10, r25, r7
0004ac  9703a801  and r7, r16, r26
0004b0  13867904  setlt.u r12, r19, r7
0004b4  3b300600  bneq r12, zero, 12
0004b8  1f060800  addli r12, r16, 0
0004bc  db010000  j 12
0004c0  2b064000  lui r12, 1024
0004c4  1716c800  or r12, r16, r12
0004c8  9787ab01  and r15, r23, r26
0004cc  138cf904  setlt.u r24, r19, r15
0004d0  3b500c00  bneq r24, zero, 20
0004d4  1f8c0b00  addli r24, r23, 0
0004d8  9387f004  setlt.u r15, r1, r15
0004dc  37e00700  beq r15, zero, 24
0004e0  5b050000  j 40
0004e4  2b0c4000  lui r24, 1024
0004e8  179c8b01  or r24, r23, r24
0004ec  9387f004  setlt.u r15, r1, r15
0004f0  3be00700  bneq r15, zero, 24
0004f4  9bc70b01  srli r15, r23, 16
0004f8  9b871700  andi r15, r15, 1
0004fc  8b97fb10  add.s r15, r23, r15
000500  8b97b711  add.s r15, r15, r27
000504  178c5701  and r24, r15, r21
000508  93837004  setlt.u r7, r1, r7
00050c  bbb00300  bneq r7, zero, 44
000510  9b430801  srli r7, r16, 16
000514  9b831300  andi r7, r7, 1
000518  8b137810  add.s r7, r16, r7
00051c  8b93b311  add.s r7, r7, r27
000520  17865301  and r12, r7, r21
000524  13836004  setlt.u r6, r1, r6
000528  37600300  beq r6, zero, 24
00052c  1383d004  setlt.u r6, r1, r13
000530  3b6903fe  bneq r6, zero, -424
000534  5b050000  j 40
000538  13836004  setlt.u r6, r1, r6
00053c  bb4f03fe  bneq r6, zero, -16
000540  1bc30c01  srli r6, r25, 16
000544  1b031300  andi r6, r6, 1
000548  0b936c10  add.s r6, r25, r6
00054c  0b13b311  add.s r6, r6, r27
000550  17055301  and r10, r6, r21
000554  1383d004  setlt.u r6, r1, r13
000558  bb4803fe  bneq r6, zero, -464
00055c  1b430a01  srli r6, r20, 16
000560  1b031300  andi r6, r6, 1
000564  0b136a10  add.s r6, r20, r6
000568  0b13b311  add.s r6, r6, r27
00056c  17075301  and r14, r6, r21
000570  5bc3ffff  j -488
000574  37bb7601  beq r13, r23, 716
000578  1f710000  addli r2, zero, 7
00057c  bbff2602  bneq r13, r2, 2044
000580  1f111000  addli r2, zero, 9
000584  7d900b00  xwait r23, 0
000588  9f010001  addli r3, zero, 128
00058c  1f0e0001  addli r28, zero, 128
000590  7d100100  xwait r2, 0
000594  1d000000  lock zero, zero
000598  1f018000  addli r2, zero, 64
00059c  01080000  ds_cfg r16, zero, 0
0005a0  81010002  ds_cfg r3, zero, 1
0005a4  0101001c  ds_cfg r2, zero, 14
0005a8  8101001a  ds_cfg r3, zero, 13
0005ac  ab410000  lui r3, 4
0005b0  41802104  shuffle_coa zero, r3, r2, 2
0005b4  1f710000  addli r2, zero, 7
0005b8  1d100000  unlock zero
0005bc  7d000100  xsignal r2, 0
0005c0  1f011000  addli r2, zero, 8
0005c4  db8fffff  j -900
0005c8  9f720000  addli r5, zero, 7
0005cc  17b1e102  sll.d r[3:4], r[4:5], r14
0005d0  1f021000  addli r4, zero, 8
0005d4  1f2e1000  addli r28, zero, 10
0005d8  9f331000  addli r7, zero, 11
0005dc  eb548f00  load.d r[10:11], 8(r30)
0005e0  2b4c0000  lui r24, 4
0005e4  1f030001  addli r6, zero, 128
0005e8  9f0c0004  addli r25, zero, 512
0005ec  7d900200  xwait r5, 0
0005f0  1d800700  lock zero, r15
0005f4  15000014  dma_cfg zero, zero, zero, 10
0005f8  0ba12410  add.ul r[3:4], r[10:11], r[3:4]
0005fc  1f751000  addli r10, zero, 15
000600  9f640000  addli r9, zero, 6
000604  1500e014  dma_cfg zero, zero, r14, 10
000608  15000015  dma_cfg zero, zero, r16, 10
00060c  15008014  dma_cfg zero, zero, r8, 10
000610  15004015  dma_cfg zero, zero, r20, 10
000614  1500f014  dma_cfg zero, zero, r15, 10
000618  15007015  dma_cfg zero, zero, r23, 10
00061c  9f0b8000  addli r23, zero, 64
000620  15005014  dma_cfg zero, zero, r5, 10
000624  15004014  dma_cfg zero, zero, r4, 10
000628  1f121000  addli r4, zero, 9
00062c  15004014  dma_cfg zero, zero, r4, 10
000630  1f421000  addli r4, zero, 12
000634  1500c015  dma_cfg zero, zero, r28, 10
000638  15007014  dma_cfg zero, zero, r7, 10
00063c  15004014  dma_cfg zero, zero, r4, 10
000640  1f521000  addli r4, zero, 13
000644  15004014  dma_cfg zero, zero, r4, 10
000648  1f621000  addli r4, zero, 14
00064c  15004014  dma_cfg zero, zero, r4, 10
000650  1f022000  addli r4, zero, 16
000654  1500a014  dma_cfg zero, zero, r10, 10
000658  15004014  dma_cfg zero, zero, r4, 10
00065c  1f122000  addli r4, zero, 17
000660  15004014  dma_cfg zero, zero, r4, 10
000664  1f222000  addli r4, zero, 18
000668  15004014  dma_cfg zero, zero, r4, 10
00066c  1f322000  addli r4, zero, 19
000670  15004014  dma_cfg zero, zero, r4, 10
000674  1f422000  addli r4, zero, 20
000678  15004014  dma_cfg zero, zero, r4, 10
00067c  1f522000  addli r4, zero, 21
000680  15004014  dma_cfg zero, zero, r4, 10
000684  1f622000  addli r4, zero, 22
000688  15004014  dma_cfg zero, zero, r4, 10
00068c  1f722000  addli r4, zero, 23
000690  15004014  dma_cfg zero, zero, r4, 10
000694  1f023000  addli r4, zero, 24
000698  15004014  dma_cfg zero, zero, r4, 10
00069c  1f123000  addli r4, zero, 25
0006a0  15004014  dma_cfg zero, zero, r4, 10
0006a4  1f223000  addli r4, zero, 26
0006a8  15004014  dma_cfg zero, zero, r4, 10
0006ac  1f323000  addli r4, zero, 27
0006b0  15004014  dma_cfg zero, zero, r4, 10
0006b4  1f423000  addli r4, zero, 28
0006b8  15004014  dma_cfg zero, zero, r4, 10
0006bc  1f523000  addli r4, zero, 29
0006c0  15004014  dma_cfg zero, zero, r4, 10
0006c4  1f623000  addli r4, zero, 30
0006c8  15004014  dma_cfg zero, zero, r4, 10
0006cc  1f723000  addli r4, zero, 31
0006d0  15004014  dma_cfg zero, zero, r4, 10
0006d4  1b120c04  ori r4, r24, 64
0006d8  15070700  dma_cfg r14, r14, zero, 0
0006dc  15070002  dma_cfg r14, zero, zero, 1
0006e0  15000004  dma_cfg zero, zero, zero, 2
0006e4  150c7007  dma_cfg r24, zero, r23, 3
0006e8  15034009  dma_cfg r6, zero, r20, 4
0006ec  950c700b  dma_cfg r25, zero, r23, 5
0006f0  15000010  dma_cfg zero, zero, zero, 8
0006f4  35000000  dma_run zero
0006f8  1500e00a  dma_cfg zero, zero, r14, 5
0006fc  15000010  dma_cfg zero, zero, zero, 8
000700  1d900700  unlock r15
000704  1d000a00  lock zero, r20
000708  15070700  dma_cfg r14, r14, zero, 0
00070c  15800104  dma_cfg zero, r3, zero, 2
000710  15027107  dma_cfg r4, r2, r23, 3
000714  1f010010  addli r2, zero, 2048
000718  15834b09  dma_cfg r6, r23, r20, 4
00071c  950c710b  dma_cfg r25, r2, r23, 5
000720  1f011000  addli r2, zero, 8
000724  15000010  dma_cfg zero, zero, zero, 8
000728  35000000  dma_run zero
00072c  1500e00a  dma_cfg zero, zero, r14, 5
000730  15000010  dma_cfg zero, zero, zero, 8
000734  1d100a00  unlock r20
000738  1d800700  lock zero, r15
00073c  15000014  dma_cfg zero, zero, zero, 10
000740  1500e014  dma_cfg zero, zero, r14, 10
000744  15000015  dma_cfg zero, zero, r16, 10
000748  15008014  dma_cfg zero, zero, r8, 10
00074c  15004015  dma_cfg zero, zero, r20, 10
000750  1500f014  dma_cfg zero, zero, r15, 10
000754  15009014  dma_cfg zero, zero, r9, 10
000758  15005014  dma_cfg zero, zero, r5, 10
00075c  ab820000  lui r5, 8
000760  15002014  dma_cfg zero, zero, r2, 10
000764  1f111000  addli r2, zero, 9
000768  15002014  dma_cfg zero, zero, r2, 10
00076c  1f411000  addli r2, zero, 12
000770  1500c015  dma_cfg zero, zero, r28, 10
000774  1f0e0001  addli r28, zero, 128
000778  15007014  dma_cfg zero, zero, r7, 10
00077c  15002014  dma_cfg zero, zero, r2, 10
000780  1f511000  addli r2, zero, 13
000784  15002014  dma_cfg zero, zero, r2, 10
000788  1f611000  addli r2, zero, 14
00078c  15002014  dma_cfg zero, zero, r2, 10
000790  1f012000  addli r2, zero, 16
000794  1500a014  dma_cfg zero, zero, r10, 10
000798  15002014  dma_cfg zero, zero, r2, 10
00079c  1f112000  addli r2, zero, 17
0007a0  15002014  dma_cfg zero, zero, r2, 10
0007a4  1f212000  addli r2, zero, 18
0007a8  15002014  dma_cfg zero, zero, r2, 10
0007ac  1f312000  addli r2, zero, 19
0007b0  15002014  dma_cfg zero, zero, r2, 10
0007b4  1f412000  addli r2, zero, 20
0007b8  15002014  dma_cfg zero, zero, r2, 10
0007bc  1f512000  addli r2, zero, 21
0007c0  15002014  dma_cfg zero, zero, r2, 10
0007c4  1f612000  addli r2, zero, 22
0007c8  15002014  dma_cfg zero, zero, r2, 10
0007cc  1f712000  addli r2, zero, 23
0007d0  15002014  dma_cfg zero, zero, r2, 10
0007d4  1f013000  addli r2, zero, 24
0007d8  15002014  dma_cfg zero, zero, r2, 10
0007dc  1f113000  addli r2, zero, 25
0007e0  15002014  dma_cfg zero, zero, r2, 10
0007e4  1f213000  addli r2, zero, 26
0007e8  15002014  dma_cfg zero, zero, r2, 10
0007ec  1f313000  addli r2, zero, 27
0007f0  15002014  dma_cfg zero, zero, r2, 10
0007f4  1f413000  addli r2, zero, 28
0007f8  15002014  dma_cfg zero, zero, r2, 10
0007fc  1f513000  addli r2, zero, 29
000800  15002014  dma_cfg zero, zero, r2, 10
000804  1f613000  addli r2, zero, 30
000808  15002014  dma_cfg zero, zero, r2, 10
00080c  1f713000  addli r2, zero, 31
000810  15002014  dma_cfg zero, zero, r2, 10
000814  1f610000  addli r2, zero, 6
000818  15070700  dma_cfg r14, r14, zero, 0
00081c  15070002  dma_cfg r14, zero, zero, 1
000820  15000004  dma_cfg zero, zero, zero, 2
000824  150c7007  dma_cfg r24, zero, r23, 3
000828  1f0c0900  addli r24, r18, 0
00082c  15034009  dma_cfg r6, zero, r20, 4
000830  950c700b  dma_cfg r25, zero, r23, 5
000834  ab4c0100  lui r25, 20
000838  9f6b0000  addli r23, zero, 6
00083c  5b9d0000  j 1256
000840  73383ffe  store.d r[4:5], -16(r30)
000844  6b518fff  load.d r[3:4], -8(r30)
000848  7d100400  xwait r8, 0
00084c  1d800700  lock zero, r15
000850  9f521000  addli r5, zero, 13
000854  1f531000  addli r6, zero, 13
000858  1f0c0001  addli r24, zero, 128
00085c  9f131000  addli r7, zero, 9
000860  1f5e1000  addli r28, zero, 13
000864  eb540f01  load.d r[10:11], 16(r30)
000868  15000014  dma_cfg zero, zero, zero, 10
00086c  1500e014  dma_cfg zero, zero, r14, 10
000870  17315102  sll.d r[3:4], r[3:4], r5
000874  6b520f00  load.d r[5:6], 0(r30)
000878  15000015  dma_cfg zero, zero, r16, 10
00087c  15008014  dma_cfg zero, zero, r8, 10
000880  15004015  dma_cfg zero, zero, r20, 10
000884  0b212210  add.ul r[3:4], r[5:6], r[3:4]
000888  1500f014  dma_cfg zero, zero, r15, 10
00088c  1f720000  addli r4, zero, 7
000890  9f028000  addli r5, zero, 64
000894  15007015  dma_cfg zero, zero, r23, 10
000898  9f3b1000  addli r23, zero, 11
00089c  15004014  dma_cfg zero, zero, r4, 10
0008a0  1f021000  addli r4, zero, 8
0008a4  15004014  dma_cfg zero, zero, r4, 10
0008a8  1f121000  addli r4, zero, 9
0008ac  15004014  dma_cfg zero, zero, r4, 10
0008b0  1f221000  addli r4, zero, 10
0008b4  15004014  dma_cfg zero, zero, r4, 10
0008b8  1f321000  addli r4, zero, 11
0008bc  15004014  dma_cfg zero, zero, r4, 10
0008c0  1f421000  addli r4, zero, 12
0008c4  15004014  dma_cfg zero, zero, r4, 10
0008c8  1f621000  addli r4, zero, 14
0008cc  15006014  dma_cfg zero, zero, r6, 10
0008d0  1f031000  addli r6, zero, 8
0008d4  15004014  dma_cfg zero, zero, r4, 10
0008d8  1f721000  addli r4, zero, 15
0008dc  15004014  dma_cfg zero, zero, r4, 10
0008e0  1f022000  addli r4, zero, 16
0008e4  15004014  dma_cfg zero, zero, r4, 10
0008e8  1f122000  addli r4, zero, 17
0008ec  15004014  dma_cfg zero, zero, r4, 10
0008f0  1f222000  addli r4, zero, 18
0008f4  15004014  dma_cfg zero, zero, r4, 10
0008f8  1f322000  addli r4, zero, 19
0008fc  15004014  dma_cfg zero, zero, r4, 10
000900  1f422000  addli r4, zero, 20
000904  15004014  dma_cfg zero, zero, r4, 10
000908  1f522000  addli r4, zero, 21
00090c  15004014  dma_cfg zero, zero, r4, 10
000910  1f622000  addli r4, zero, 22
000914  15004014  dma_cfg zero, zero, r4, 10
000918  1f722000  addli r4, zero, 23
00091c  15004014  dma_cfg zero, zero, r4, 10
000920  1f023000  addli r4, zero, 24
000924  15004014  dma_cfg zero, zero, r4, 10
000928  1f123000  addli r4, zero, 25
00092c  15004014  dma_cfg zero, zero, r4, 10
000930  1f223000  addli r4, zero, 26
000934  15004014  dma_cfg zero, zero, r4, 10
000938  1f323000  addli r4, zero, 27
00093c  15004014  dma_cfg zero, zero, r4, 10
000940  1f423000  addli r4, zero, 28
000944  15004014  dma_cfg zero, zero, r4, 10
000948  1f523000  addli r4, zero, 29
00094c  15004014  dma_cfg zero, zero, r4, 10
000950  1f623000  addli r4, zero, 30
000954  15004014  dma_cfg zero, zero, r4, 10
000958  1f723000  addli r4, zero, 31
00095c  15004014  dma_cfg zero, zero, r4, 10
000960  1f020002  addli r4, zero, 256
000964  15070700  dma_cfg r14, r14, zero, 0
000968  15070002  dma_cfg r14, zero, zero, 1
00096c  15000004  dma_cfg zero, zero, zero, 2
000970  15005006  dma_cfg zero, zero, r5, 3
000974  150c0009  dma_cfg r24, zero, r16, 4
000978  1502500a  dma_cfg r4, zero, r5, 5
00097c  1f020002  addli r4, zero, 256
000980  15000010  dma_cfg zero, zero, zero, 8
000984  35000000  dma_run zero
000988  1500e00a  dma_cfg zero, zero, r14, 5
00098c  15000010  dma_cfg zero, zero, zero, 8
000990  1d900700  unlock r15
000994  1d000a00  lock zero, r20
000998  15070700  dma_cfg r14, r14, zero, 0
00099c  15800104  dma_cfg zero, r3, zero, 2
0009a0  95025106  dma_cfg r5, r2, r5, 3
0009a4  1f610000  addli r2, zero, 6
0009a8  9f010002  addli r3, zero, 256
0009ac  158c0209  dma_cfg r24, r5, r16, 4
0009b0  15025c0a  dma_cfg r4, r24, r5, 5
0009b4  1f720000  addli r4, zero, 7
0009b8  15000010  dma_cfg zero, zero, zero, 8
0009bc  35000000  dma_run zero
0009c0  1500e00a  dma_cfg zero, zero, r14, 5
0009c4  15000010  dma_cfg zero, zero, zero, 8
0009c8  1d100a00  unlock r20
0009cc  1d800700  lock zero, r15
0009d0  15000014  dma_cfg zero, zero, zero, 10
0009d4  1500e014  dma_cfg zero, zero, r14, 10
0009d8  15000015  dma_cfg zero, zero, r16, 10
0009dc  15008014  dma_cfg zero, zero, r8, 10
0009e0  15004015  dma_cfg zero, zero, r20, 10
0009e4  1500f014  dma_cfg zero, zero, r15, 10
0009e8  15002014  dma_cfg zero, zero, r2, 10
0009ec  1f211000  addli r2, zero, 10
0009f0  15004014  dma_cfg zero, zero, r4, 10
0009f4  15006014  dma_cfg zero, zero, r6, 10
0009f8  15007014  dma_cfg zero, zero, r7, 10
0009fc  15002014  dma_cfg zero, zero, r2, 10
000a00  1f411000  addli r2, zero, 12
000a04  15007015  dma_cfg zero, zero, r23, 10
000a08  9f7b1000  addli r23, zero, 15
000a0c  15002014  dma_cfg zero, zero, r2, 10
000a10  1f611000  addli r2, zero, 14
000a14  1500c015  dma_cfg zero, zero, r28, 10
000a18  1f0e2000  addli r28, zero, 16
000a1c  15002014  dma_cfg zero, zero, r2, 10
000a20  1f112000  addli r2, zero, 17
000a24  15007015  dma_cfg zero, zero, r23, 10
000a28  1500c015  dma_cfg zero, zero, r28, 10
000a2c  15002014  dma_cfg zero, zero, r2, 10
000a30  1f212000  addli r2, zero, 18
000a34  15002014  dma_cfg zero, zero, r2, 10
000a38  1f312000  addli r2, zero, 19
000a3c  15002014  dma_cfg zero, zero, r2, 10
000a40  1f412000  addli r2, zero, 20
000a44  15002014  dma_cfg zero, zero, r2, 10
000a48  1f512000  addli r2, zero, 21
000a4c  15002014  dma_cfg zero, zero, r2, 10
000a50  1f612000  addli r2, zero, 22
000a54  15002014  dma_cfg zero, zero, r2, 10
000a58  1f712000  addli r2, zero, 23
000a5c  15002014  dma_cfg zero, zero, r2, 10
000a60  1f013000  addli r2, zero, 24
000a64  15002014  dma_cfg zero, zero, r2, 10
000a68  1f113000  addli r2, zero, 25
000a6c  15002014  dma_cfg zero, zero, r2, 10
000a70  1f213000  addli r2, zero, 26
000a74  15002014  dma_cfg zero, zero, r2, 10
000a78  1f313000  addli r2, zero, 27
000a7c  15002014  dma_cfg zero, zero, r2, 10
000a80  1f413000  addli r2, zero, 28
000a84  15002014  dma_cfg zero, zero, r2, 10
000a88  1f513000  addli r2, zero, 29
000a8c  15002014  dma_cfg zero, zero, r2, 10
000a90  1f613000  addli r2, zero, 30
000a94  15002014  dma_cfg zero, zero, r2, 10
000a98  1f713000  addli r2, zero, 31
000a9c  15002014  dma_cfg zero, zero, r2, 10
000aa0  15070700  dma_cfg r14, r14, zero, 0
000aa4  15070002  dma_cfg r14, zero, zero, 1
000aa8  15000004  dma_cfg zero, zero, zero, 2
000aac  15005006  dma_cfg zero, zero, r5, 3
000ab0  150c0009  dma_cfg r24, zero, r16, 4
000ab4  9501500a  dma_cfg r3, zero, r5, 5
000ab8  15000010  dma_cfg zero, zero, zero, 8
000abc  35000000  dma_run zero
000ac0  1500e00a  dma_cfg zero, zero, r14, 5
000ac4  15000010  dma_cfg zero, zero, zero, 8
000ac8  1d900700  unlock r15
000acc  6b510fff  load.d r[3:4], -16(r30)
000ad0  7d000800  xsignal r16, 0
000ad4  1731e102  sll.d r[3:4], r[3:4], r14
000ad8  0ba12410  add.ul r[3:4], r[10:11], r[3:4]
000adc  1f351000  addli r10, zero, 11
000ae0  9f640000  addli r9, zero, 6
000ae4  7d100500  xwait r10, 0
000ae8  1d800700  lock zero, r15
000aec  15000014  dma_cfg zero, zero, zero, 10
000af0  1500e014  dma_cfg zero, zero, r14, 10
000af4  15000015  dma_cfg zero, zero, r16, 10
000af8  15008014  dma_cfg zero, zero, r8, 10
000afc  15004015  dma_cfg zero, zero, r20, 10
000b00  1500f014  dma_cfg zero, zero, r15, 10
000b04  15009014  dma_cfg zero, zero, r9, 10
000b08  9f040004  addli r9, zero, 512
000b0c  15004014  dma_cfg zero, zero, r4, 10
000b10  1f221000  addli r4, zero, 10
000b14  15006014  dma_cfg zero, zero, r6, 10
000b18  1f232000  addli r6, zero, 18
000b1c  15007014  dma_cfg zero, zero, r7, 10
000b20  9f332000  addli r7, zero, 19
000b24  15004014  dma_cfg zero, zero, r4, 10
000b28  1f421000  addli r4, zero, 12
000b2c  1500a014  dma_cfg zero, zero, r10, 10
000b30  1f452000  addli r10, zero, 20
000b34  15004014  dma_cfg zero, zero, r4, 10
000b38  1f521000  addli r4, zero, 13
000b3c  15004014  dma_cfg zero, zero, r4, 10
000b40  1f621000  addli r4, zero, 14
000b44  15004014  dma_cfg zero, zero, r4, 10
000b48  1f122000  addli r4, zero, 17
000b4c  15007015  dma_cfg zero, zero, r23, 10
000b50  9f6b0000  addli r23, zero, 6
000b54  1500c015  dma_cfg zero, zero, r28, 10
000b58  1f1e2000  addli r28, zero, 17
000b5c  15004014  dma_cfg zero, zero, r4, 10
000b60  1f522000  addli r4, zero, 21
000b64  15006014  dma_cfg zero, zero, r6, 10
000b68  15007014  dma_cfg zero, zero, r7, 10
000b6c  1500a014  dma_cfg zero, zero, r10, 10
000b70  15004014  dma_cfg zero, zero, r4, 10
000b74  1f622000  addli r4, zero, 22
000b78  15004014  dma_cfg zero, zero, r4, 10
000b7c  1f722000  addli r4, zero, 23
000b80  15004014  dma_cfg zero, zero, r4, 10
000b84  1f023000  addli r4, zero, 24
000b88  15004014  dma_cfg zero, zero, r4, 10
000b8c  1f123000  addli r4, zero, 25
000b90  15004014  dma_cfg zero, zero, r4, 10
000b94  1f223000  addli r4, zero, 26
000b98  15004014  dma_cfg zero, zero, r4, 10
000b9c  1f323000  addli r4, zero, 27
000ba0  15004014  dma_cfg zero, zero, r4, 10
000ba4  1f423000  addli r4, zero, 28
000ba8  15004014  dma_cfg zero, zero, r4, 10
000bac  1f523000  addli r4, zero, 29
000bb0  15004014  dma_cfg zero, zero, r4, 10
000bb4  1f623000  addli r4, zero, 30
000bb8  15004014  dma_cfg zero, zero, r4, 10
000bbc  1f723000  addli r4, zero, 31
000bc0  15004014  dma_cfg zero, zero, r4, 10
000bc4  1b920c04  ori r4, r25, 64
000bc8  15070700  dma_cfg r14, r14, zero, 0
000bcc  15070002  dma_cfg r14, zero, zero, 1
000bd0  15000004  dma_cfg zero, zero, zero, 2
000bd4  950c5006  dma_cfg r25, zero, r5, 3
000bd8  150c4009  dma_cfg r24, zero, r20, 4
000bdc  9504e00a  dma_cfg r9, zero, r14, 5
000be0  15000010  dma_cfg zero, zero, zero, 8
000be4  35000000  dma_run zero
000be8  1500e00a  dma_cfg zero, zero, r14, 5
000bec  15000010  dma_cfg zero, zero, zero, 8
000bf0  1d900700  unlock r15
000bf4  1d000a00  lock zero, r20
000bf8  15070700  dma_cfg r14, r14, zero, 0
000bfc  15800104  dma_cfg zero, r3, zero, 2
000c00  15025106  dma_cfg r4, r2, r5, 3
000c04  1f010002  addli r2, zero, 256
000c08  9f311000  addli r3, zero, 11
000c0c  158c4209  dma_cfg r24, r5, r20, 4
000c10  9504e10a  dma_cfg r9, r2, r14, 5
000c14  1f610000  addli r2, zero, 6
000c18  15000010  dma_cfg zero, zero, zero, 8
000c1c  35000000  dma_run zero
000c20  1500e00a  dma_cfg zero, zero, r14, 5
000c24  15000010  dma_cfg zero, zero, zero, 8
000c28  1d100a00  unlock r20
000c2c  1d800700  lock zero, r15
000c30  15000014  dma_cfg zero, zero, zero, 10
000c34  1500e014  dma_cfg zero, zero, r14, 10
000c38  15000015  dma_cfg zero, zero, r16, 10
000c3c  15008014  dma_cfg zero, zero, r8, 10
000c40  15004015  dma_cfg zero, zero, r20, 10
000c44  1500f014  dma_cfg zero, zero, r15, 10
000c48  15002014  dma_cfg zero, zero, r2, 10
000c4c  1f710000  addli r2, zero, 7
000c50  15002014  dma_cfg zero, zero, r2, 10
000c54  1f011000  addli r2, zero, 8
000c58  15002014  dma_cfg zero, zero, r2, 10
000c5c  1f111000  addli r2, zero, 9
000c60  15002014  dma_cfg zero, zero, r2, 10
000c64  1f211000  addli r2, zero, 10
000c68  15002014  dma_cfg zero, zero, r2, 10
000c6c  15003014  dma_cfg zero, zero, r3, 10
000c70  9f411000  addli r3, zero, 12
000c74  15003014  dma_cfg zero, zero, r3, 10
000c78  9f511000  addli r3, zero, 13
000c7c  15003014  dma_cfg zero, zero, r3, 10
000c80  9f611000  addli r3, zero, 14
000c84  15003014  dma_cfg zero, zero, r3, 10
000c88  9f711000  addli r3, zero, 15
000c8c  15003014  dma_cfg zero, zero, r3, 10
000c90  9f012000  addli r3, zero, 16
000c94  15003014  dma_cfg zero, zero, r3, 10
000c98  9f512000  addli r3, zero, 21
000c9c  1500c015  dma_cfg zero, zero, r28, 10
000ca0  1f0e0001  addli r28, zero, 128
000ca4  15006014  dma_cfg zero, zero, r6, 10
000ca8  15007014  dma_cfg zero, zero, r7, 10
000cac  1500a014  dma_cfg zero, zero, r10, 10
000cb0  15003014  dma_cfg zero, zero, r3, 10
000cb4  9f612000  addli r3, zero, 22
000cb8  15003014  dma_cfg zero, zero, r3, 10
000cbc  9f712000  addli r3, zero, 23
000cc0  15003014  dma_cfg zero, zero, r3, 10
000cc4  9f013000  addli r3, zero, 24
000cc8  15003014  dma_cfg zero, zero, r3, 10
000ccc  9f113000  addli r3, zero, 25
000cd0  15003014  dma_cfg zero, zero, r3, 10
000cd4  9f213000  addli r3, zero, 26
000cd8  15003014  dma_cfg zero, zero, r3, 10
000cdc  9f313000  addli r3, zero, 27
000ce0  15003014  dma_cfg zero, zero, r3, 10
000ce4  9f413000  addli r3, zero, 28
000ce8  15003014  dma_cfg zero, zero, r3, 10
000cec  9f513000  addli r3, zero, 29
000cf0  15003014  dma_cfg zero, zero, r3, 10
000cf4  9f613000  addli r3, zero, 30
000cf8  15003014  dma_cfg zero, zero, r3, 10
000cfc  9f713000  addli r3, zero, 31
000d00  15003014  dma_cfg zero, zero, r3, 10
000d04  15070700  dma_cfg r14, r14, zero, 0
000d08  15070002  dma_cfg r14, zero, zero, 1
000d0c  15000004  dma_cfg zero, zero, zero, 2
000d10  950c5006  dma_cfg r25, zero, r5, 3
000d14  ab820000  lui r5, 8
000d18  150c4009  dma_cfg r24, zero, r20, 4
000d1c  1f0c0900  addli r24, r18, 0
000d20  9504e00a  dma_cfg r9, zero, r14, 5
000d24  eb548ffe  load.d r[10:11], -24(r30)
000d28  db170000  j 188
000d2c  1f611000  addli r2, zero, 14
000d30  00200100  mfence { sm }
000d34  80360002  core_id r13
000d38  1f340000  addli r8, zero, 3
000d3c  1f170000  addli r14, zero, 1
000d40  9f570000  addli r15, zero, 5
000d44  1f280000  addli r16, zero, 2
000d48  1f4a0000  addli r20, zero, 4
000d4c  9f6b0000  addli r23, zero, 6
000d50  ab4c0100  lui r25, 20
000d54  ab820000  lui r5, 8
000d58  7d000100  xsignal r2, 0
000d5c  1f012000  addli r2, zero, 16
000d60  7d000100  xsignal r2, 0
000d64  1f112000  addli r2, zero, 17
000d68  7d000100  xsignal r2, 0
000d6c  eb548ffe  load.d r[10:11], -24(r30)
000d70  eb550ffe  load.d r[12:13], -32(r30)
000d74  eb510fff  load.d r[4:5], -16(r30)
000d78  3bb306fa  bneq r13, zero, -2868
000d7c  27820100  addli.d r[5:6], r[4:5], 0
000d80  6b518fff  load.d r[3:4], -8(r30)
000d84  1f132000  addli r6, zero, 17
000d88  a7830400  addli.d r[8:9], r[10:11], 0
000d8c  eb548f01  load.d r[10:11], 24(r30)
000d90  9f6b0000  addli r23, zero, 6
000d94  1732e202  sll.d r[5:6], r[5:6], r14
000d98  7d100300  xwait r6, 0
000d9c  1d800700  lock zero, r15
000da0  17316102  sll.d r[3:4], r[3:4], r6
000da4  15070700  dma_cfg r14, r14, zero, 0
000da8  15000702  dma_cfg zero, r14, zero, 1
000dac  0ba12410  add.ul r[3:4], r[10:11], r[3:4]
000db0  a7840300  addli.d r[10:11], r[8:9], 0
000db4  1f340000  addli r8, zero, 3
000db8  0b214110  add.ul r[3:4], r[3:4], r[5:6]
000dbc  1b120b04  ori r4, r22, 64
000dc0  9f028000  addli r5, zero, 64
000dc4  95010004  dma_cfg r3, zero, zero, 2
000dc8  15015206  dma_cfg r2, r4, r5, 3
000dcc  1f010004  addli r2, zero, 512
000dd0  9f010010  addli r3, zero, 2048
000dd4  95024e09  dma_cfg r5, r28, r20, 4
000dd8  9501510a  dma_cfg r3, r2, r5, 5
000ddc  ab820000  lui r5, 8
000de0  1f212000  addli r2, zero, 18
000de4  15000010  dma_cfg zero, zero, zero, 8
000de8  35000000  dma_run zero
000dec  1500e00a  dma_cfg zero, zero, r14, 5
000df0  15000010  dma_cfg zero, zero, zero, 8
000df4  1d900700  unlock r15
000df8  5b89feff  j -3000
000dfc  7d100800  xwait r16, 0
000e00  7d900700  xwait r15, 0
000e04  1d000000  lock zero, zero
000e08  1f018000  addli r2, zero, 64
000e0c  01080000  ds_cfg r16, zero, 0
000e10  01010002  ds_cfg r2, zero, 1
000e14  0101001c  ds_cfg r2, zero, 14
000e18  0101001a  ds_cfg r2, zero, 13
000e1c  21102002  shuffle_batch zero, zero, r2, 1
000e20  1d100000  unlock zero
000e24  7d000400  xsignal r8, 0
000e28  7d000a00  xsignal r20, 0
000e2c  5b83feff  j -3048
000e30  7d000000  xsignal zero, 0
000e34  bbe00600  bneq r13, zero, 56
000e38  9f200000  addli r1, zero, 2
000e3c  7d100000  xwait zero, 0
000e40  7d100000  xwait zero, 0
000e44  7d100000  xwait zero, 0
000e48  7d100000  xwait zero, 0
000e4c  7d100000  xwait zero, 0
000e50  7d100000  xwait zero, 0
000e54  7d100000  xwait zero, 0
000e58  7d100000  xwait zero, 0
000e5c  1d800000  lock zero, r1
000e60  0d000020  ew_cfg zero, zero, zero, 16
000e64  1d900000  unlock r1
000e68  7d400000  xsignal_mode_cfg zero
000e6c  9f8e4e00  addli sp, sp, 32
000e70  00a00300  mfence { lm, sm, gm }
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
000fe4  00100000  exit
000fe8  00100000  exit
000fec  00100000  exit
000ff0  00100000  exit
000ff4  00100000  exit
000ff8  00100000  exit
000ffc  00100000  exit
001000  00100000  exit
001004  00100000  exit
001008  00100000  exit
00100c  00100000  exit
001010  00100000  exit
001014  00100000  exit
001018  00100000  exit
00101c  00100000  exit
001020  00100000  exit
001024  00100000  exit
001028  00100000  exit
00102c  00100000  exit
001030  00100000  exit
001034  00100000  exit
001038  00100000  exit
00103c  00100000  exit
001040  00100000  exit
001044  00100000  exit
001048  00100000  exit
00104c  00100000  exit
001050  00100000  exit
001054  00100000  exit
001058  00100000  exit
00105c  00100000  exit
001060  00100000  exit
001064  00100000  exit
001068  00100000  exit
00106c  00100000  exit
001070  00100000  exit
001074  00100000  exit
001078  00100000  exit
00107c  00100000  exit
001080  00100000  exit
001084  00100000  exit
001088  00100000  exit
00108c  00100000  exit
001090  00100000  exit
001094  00100000  exit
001098  00100000  exit
00109c  00100000  exit
0010a0  00100000  exit
0010a4  00100000  exit
0010a8  00100000  exit
0010ac  00100000  exit
0010b0  00100000  exit
0010b4  00100000  exit
