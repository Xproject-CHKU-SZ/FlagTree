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
0000b4  9f8e6efe  addli sp, sp, -208
0000b8  9f100000  addli r1, zero, 1
0000bc  80350002  core_id r11
0000c0  1f8f2e01  addli r30, sp, 144
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00500  beq r11, zero, 24
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
0001bc  cb721112  ble.s r2, r1, 9404
0001c0  33110128  sext_int2long r[3:4], r2
0001c4  33960028  sext_int2long r[13:14], r1
0001c8  abf0ff7f  lui r1, 524287
0001cc  9f370000  addli r15, zero, 3
0001d0  1f088000  addli r16, zero, 64
0001d4  9f180000  addli r17, zero, 1
0001d8  1f790000  addli r18, zero, 7
0001dc  9f591000  addli r19, zero, 13
0001e0  1f2b0000  addli r22, zero, 2
0001e4  2b0a4000  lui r20, 1024
0001e8  ab0a807f  lui r21, 522240
0001ec  ab0dffff  lui r27, 1048560
0001f0  1f070000  addli r14, zero, 0
0001f4  73382ff6  store.d r[3:4], -144(r30)
0001f8  1b9ef0ff  ori r28, r1, 4095
0001fc  ab700000  lui r1, 7
000200  2bf17f7f  lui r2, 522239
000204  9b90f0ff  ori r1, r1, 4095
000208  9b11f1ff  ori r3, r2, 4095
00020c  5b080000  j 64
000210  1f611000  addli r2, zero, 14
000214  1f088000  addli r16, zero, 64
000218  9f180000  addli r17, zero, 1
00021c  9f591000  addli r19, zero, 13
000220  1f2b0000  addli r22, zero, 2
000224  7d000100  xsignal r2, 0
000228  1f112000  addli r2, zero, 17
00022c  7d000100  xsignal r2, 0
000230  6b560ff9  load.d r[13:14], -112(r30)
000234  6b520ff7  load.d r[5:6], -144(r30)
000238  63073fff  loadli.w r14,  -104(r30)
00023c  27160600  addli.d r[13:14], r[13:14], 1
000240  1f170700  addli r14, r14, 1
000244  13314604  setlt.sl r2, r[13:14], r[5:6]
000248  b7400112  beq r2, zero, 9264
00024c  63015f00  loadli.w r2,  40(r30)
000250  63424f00  loadli.w r4,  36(r30)
000254  9f031000  addli r7, zero, 8
000258  0b14f738  mod.s r8, r14, r15
00025c  7338cff8  store.d r[13:14], -112(r30)
000260  e709effe  storeli.w r14, -104(r30)
000264  0b112630  div.s r2, r12, r2
000268  670b8ffe  storeli.w r8, -80(r30)
00026c  8b124130  div.s r5, r2, r4
000270  0b930231  div.s r6, r5, r16
000274  1b313300  slli r2, r6, 3
000278  0b922818  sub.s r4, r17, r2
00027c  8b137240  min.s r7, r4, r7
000280  0b927238  mod.s r4, r5, r7
000284  0b112210  add.s r2, r4, r2
000288  1b32e400  slli r4, r8, 14
00028c  b3040128  zext_int2long r[10:11], r2
000290  e7472ffe  storeli.w r2, -132(r30)
000294  2b810100  lui r2, 24
000298  0b142210  add.s r8, r4, r2
00029c  73349ffa  store.d r[10:11], -88(r30)
0002a0  bb8a1501  bneq r11, r17, 672
0002a4  eb5b0f00  load.d r[24:25], 0(r30)
0002a8  97b43403  sll.d r[10:11], r[10:11], r19
0002ac  7d900700  xwait r15, 0
0002b0  8ba49b10  add.ul r[10:11], r[24:25], r[10:11]
0002b4  bf14eb00  blt.s r22, r14, 292
0002b8  1f570000  addli r14, zero, 5
0002bc  1f410000  addli r2, zero, 4
0002c0  1d000700  lock zero, r14
0002c4  15000014  dma_cfg zero, zero, zero, 10
0002c8  15001015  dma_cfg zero, zero, r17, 10
0002cc  15006015  dma_cfg zero, zero, r22, 10
0002d0  1500f014  dma_cfg zero, zero, r15, 10
0002d4  15002014  dma_cfg zero, zero, r2, 10
0002d8  1f610000  addli r2, zero, 6
0002dc  1500e014  dma_cfg zero, zero, r14, 10
0002e0  15002014  dma_cfg zero, zero, r2, 10
0002e4  1f011000  addli r2, zero, 8
0002e8  15002015  dma_cfg zero, zero, r18, 10
0002ec  15002014  dma_cfg zero, zero, r2, 10
0002f0  1f111000  addli r2, zero, 9
0002f4  15002014  dma_cfg zero, zero, r2, 10
0002f8  1f211000  addli r2, zero, 10
0002fc  15002014  dma_cfg zero, zero, r2, 10
000300  1f311000  addli r2, zero, 11
000304  15002014  dma_cfg zero, zero, r2, 10
000308  1f411000  addli r2, zero, 12
00030c  15002014  dma_cfg zero, zero, r2, 10
000310  1f611000  addli r2, zero, 14
000314  15003015  dma_cfg zero, zero, r19, 10
000318  15002014  dma_cfg zero, zero, r2, 10
00031c  1f711000  addli r2, zero, 15
000320  15002014  dma_cfg zero, zero, r2, 10
000324  1f012000  addli r2, zero, 16
000328  15002014  dma_cfg zero, zero, r2, 10
00032c  1f112000  addli r2, zero, 17
000330  15002014  dma_cfg zero, zero, r2, 10
000334  1f212000  addli r2, zero, 18
000338  15002014  dma_cfg zero, zero, r2, 10
00033c  1f312000  addli r2, zero, 19
000340  15002014  dma_cfg zero, zero, r2, 10
000344  1f412000  addli r2, zero, 20
000348  15002014  dma_cfg zero, zero, r2, 10
00034c  1f512000  addli r2, zero, 21
000350  15002014  dma_cfg zero, zero, r2, 10
000354  1f612000  addli r2, zero, 22
000358  15002014  dma_cfg zero, zero, r2, 10
00035c  1f712000  addli r2, zero, 23
000360  15002014  dma_cfg zero, zero, r2, 10
000364  1f013000  addli r2, zero, 24
000368  15002014  dma_cfg zero, zero, r2, 10
00036c  1f113000  addli r2, zero, 25
000370  15002014  dma_cfg zero, zero, r2, 10
000374  1f213000  addli r2, zero, 26
000378  15002014  dma_cfg zero, zero, r2, 10
00037c  1f313000  addli r2, zero, 27
000380  15002014  dma_cfg zero, zero, r2, 10
000384  1f413000  addli r2, zero, 28
000388  15002014  dma_cfg zero, zero, r2, 10
00038c  1f513000  addli r2, zero, 29
000390  15002014  dma_cfg zero, zero, r2, 10
000394  1f613000  addli r2, zero, 30
000398  15002014  dma_cfg zero, zero, r2, 10
00039c  1f713000  addli r2, zero, 31
0003a0  15002014  dma_cfg zero, zero, r2, 10
0003a4  1f010001  addli r2, zero, 128
0003a8  95880800  dma_cfg r17, r17, zero, 0
0003ac  95080002  dma_cfg r17, zero, zero, 1
0003b0  15000004  dma_cfg zero, zero, zero, 2
0003b4  15040007  dma_cfg r8, zero, r16, 3
0003b8  15016009  dma_cfg r2, zero, r22, 4
0003bc  1f010002  addli r2, zero, 256
0003c0  1501000b  dma_cfg r2, zero, r16, 5
0003c4  15000010  dma_cfg zero, zero, zero, 8
0003c8  35000000  dma_run zero
0003cc  1500100b  dma_cfg zero, zero, r17, 5
0003d0  15000010  dma_cfg zero, zero, zero, 8
0003d4  1d100700  unlock r14
0003d8  2b810100  lui r2, 24
0003dc  1f460000  addli r12, zero, 4
0003e0  e7490ffe  storeli.w zero, -100(r30)
0003e4  9f060001  addli r13, zero, 128
0003e8  1f070002  addli r14, zero, 256
0003ec  1b110104  ori r2, r2, 64
0003f0  1d000600  lock zero, r12
0003f4  95880800  dma_cfg r17, r17, zero, 0
0003f8  0b112210  add.s r2, r4, r2
0003fc  15000504  dma_cfg zero, r10, zero, 2
000400  15810407  dma_cfg r2, r9, r16, 3
000404  9f540000  addli r9, zero, 5
000408  1f650000  addli r10, zero, 6
00040c  1f011000  addli r2, zero, 8
000410  95066809  dma_cfg r13, r16, r22, 4
000414  1587060b  dma_cfg r14, r13, r16, 5
000418  15000010  dma_cfg zero, zero, zero, 8
00041c  35000000  dma_run zero
000420  1500100b  dma_cfg zero, zero, r17, 5
000424  15000010  dma_cfg zero, zero, zero, 8
000428  1d100600  unlock r12
00042c  1d800400  lock zero, r9
000430  15000014  dma_cfg zero, zero, zero, 10
000434  15001015  dma_cfg zero, zero, r17, 10
000438  15006015  dma_cfg zero, zero, r22, 10
00043c  1500f014  dma_cfg zero, zero, r15, 10
000440  1500c014  dma_cfg zero, zero, r12, 10
000444  1f760000  addli r12, zero, 7
000448  15009014  dma_cfg zero, zero, r9, 10
00044c  1500a014  dma_cfg zero, zero, r10, 10
000450  1500c014  dma_cfg zero, zero, r12, 10
000454  15002014  dma_cfg zero, zero, r2, 10
000458  1f111000  addli r2, zero, 9
00045c  15002014  dma_cfg zero, zero, r2, 10
000460  1f211000  addli r2, zero, 10
000464  15002014  dma_cfg zero, zero, r2, 10
000468  1f311000  addli r2, zero, 11
00046c  15002014  dma_cfg zero, zero, r2, 10
000470  1f411000  addli r2, zero, 12
000474  15002014  dma_cfg zero, zero, r2, 10
000478  1f611000  addli r2, zero, 14
00047c  15003015  dma_cfg zero, zero, r19, 10
000480  15002014  dma_cfg zero, zero, r2, 10
000484  1f711000  addli r2, zero, 15
000488  15002014  dma_cfg zero, zero, r2, 10
00048c  1f012000  addli r2, zero, 16
000490  15002014  dma_cfg zero, zero, r2, 10
000494  1f112000  addli r2, zero, 17
000498  15002014  dma_cfg zero, zero, r2, 10
00049c  1f212000  addli r2, zero, 18
0004a0  15002014  dma_cfg zero, zero, r2, 10
0004a4  1f312000  addli r2, zero, 19
0004a8  15002014  dma_cfg zero, zero, r2, 10
0004ac  1f412000  addli r2, zero, 20
0004b0  15002014  dma_cfg zero, zero, r2, 10
0004b4  1f512000  addli r2, zero, 21
0004b8  15002014  dma_cfg zero, zero, r2, 10
0004bc  1f612000  addli r2, zero, 22
0004c0  15002014  dma_cfg zero, zero, r2, 10
0004c4  1f712000  addli r2, zero, 23
0004c8  15002014  dma_cfg zero, zero, r2, 10
0004cc  1f013000  addli r2, zero, 24
0004d0  15002014  dma_cfg zero, zero, r2, 10
0004d4  1f113000  addli r2, zero, 25
0004d8  15002014  dma_cfg zero, zero, r2, 10
0004dc  1f213000  addli r2, zero, 26
0004e0  15002014  dma_cfg zero, zero, r2, 10
0004e4  1f313000  addli r2, zero, 27
0004e8  15002014  dma_cfg zero, zero, r2, 10
0004ec  1f413000  addli r2, zero, 28
0004f0  15002014  dma_cfg zero, zero, r2, 10
0004f4  1f513000  addli r2, zero, 29
0004f8  15002014  dma_cfg zero, zero, r2, 10
0004fc  1f613000  addli r2, zero, 30
000500  15002014  dma_cfg zero, zero, r2, 10
000504  1f713000  addli r2, zero, 31
000508  15002014  dma_cfg zero, zero, r2, 10
00050c  95880800  dma_cfg r17, r17, zero, 0
000510  95080002  dma_cfg r17, zero, zero, 1
000514  15000004  dma_cfg zero, zero, zero, 2
000518  15040007  dma_cfg r8, zero, r16, 3
00051c  95066009  dma_cfg r13, zero, r22, 4
000520  1507000b  dma_cfg r14, zero, r16, 5
000524  15000010  dma_cfg zero, zero, zero, 8
000528  35000000  dma_run zero
00052c  1500100b  dma_cfg zero, zero, r17, 5
000530  15000010  dma_cfg zero, zero, zero, 8
000534  1d900400  unlock r9
000538  7d000b00  xsignal r22, 0
00053c  db0a0000  j 84
000540  3b916501  bneq r11, r22, 68
000544  1f510000  addli r2, zero, 5
000548  7d100b00  xwait r22, 0
00054c  7d100100  xwait r2, 0
000550  1d000000  lock zero, zero
000554  1f110000  addli r2, zero, 1
000558  010b0000  ds_cfg r22, zero, 0
00055c  01080002  ds_cfg r16, zero, 1
000560  0108001c  ds_cfg r16, zero, 14
000564  0108001a  ds_cfg r16, zero, 13
000568  21120403  shuffle_batch r4, r8, r16, 1
00056c  1d100000  unlock zero
000570  7d800700  xsignal r15, 0
000574  e7492ffe  storeli.w r2, -100(r30)
000578  1f410000  addli r2, zero, 4
00057c  7d000100  xsignal r2, 0
000580  5b010000  j 8
000584  e7490ffe  storeli.w zero, -100(r30)
000588  1f760000  addli r12, zero, 7
00058c  1f650000  addli r10, zero, 6
000590  1b316300  slli r2, r6, 6
000594  0b912218  sub.s r2, r5, r2
000598  0b117130  div.s r2, r2, r7
00059c  b3020128  zext_int2long r[6:7], r2
0005a0  e7082ffe  storeli.w r2, -120(r30)
0005a4  63016fff  loadli.w r2,  -80(r30)
0005a8  17b3c202  sll.d r[7:8], r[6:7], r12
0005ac  1b37f100  slli r14, r2, 15
0005b0  2b410200  lui r2, 36
0005b4  17341303  sll.d r[9:10], r[7:8], r17
0005b8  8b122710  add.s r5, r14, r2
0005bc  1f610000  addli r2, zero, 6
0005c0  73308ff8  store.d r[9:10], -128(r30)
0005c4  3bc1a502  bneq r11, r10, 1104
0005c8  6b538f00  load.d r[7:8], 8(r30)
0005cc  7d100600  xwait r12, 0
0005d0  63023fff  loadli.w r4,  -104(r30)
0005d4  0b238310  add.ul r[7:8], r[7:8], r[9:10]
0005d8  bf044b00  blt.s r22, r4, 288
0005dc  1f520000  addli r4, zero, 5
0005e0  1f440000  addli r8, zero, 4
0005e4  1d000200  lock zero, r4
0005e8  15000014  dma_cfg zero, zero, zero, 10
0005ec  15001015  dma_cfg zero, zero, r17, 10
0005f0  15006015  dma_cfg zero, zero, r22, 10
0005f4  1500f014  dma_cfg zero, zero, r15, 10
0005f8  15008014  dma_cfg zero, zero, r8, 10
0005fc  15004014  dma_cfg zero, zero, r4, 10
000600  15002014  dma_cfg zero, zero, r2, 10
000604  1f011000  addli r2, zero, 8
000608  1500c014  dma_cfg zero, zero, r12, 10
00060c  15002014  dma_cfg zero, zero, r2, 10
000610  1f111000  addli r2, zero, 9
000614  15002014  dma_cfg zero, zero, r2, 10
000618  1f211000  addli r2, zero, 10
00061c  15002014  dma_cfg zero, zero, r2, 10
000620  1f311000  addli r2, zero, 11
000624  15002014  dma_cfg zero, zero, r2, 10
000628  1f411000  addli r2, zero, 12
00062c  15002014  dma_cfg zero, zero, r2, 10
000630  1f611000  addli r2, zero, 14
000634  15003015  dma_cfg zero, zero, r19, 10
000638  15002014  dma_cfg zero, zero, r2, 10
00063c  1f711000  addli r2, zero, 15
000640  15002014  dma_cfg zero, zero, r2, 10
000644  1f012000  addli r2, zero, 16
000648  15002014  dma_cfg zero, zero, r2, 10
00064c  1f112000  addli r2, zero, 17
000650  15002014  dma_cfg zero, zero, r2, 10
000654  1f212000  addli r2, zero, 18
000658  15002014  dma_cfg zero, zero, r2, 10
00065c  1f312000  addli r2, zero, 19
000660  15002014  dma_cfg zero, zero, r2, 10
000664  1f412000  addli r2, zero, 20
000668  15002014  dma_cfg zero, zero, r2, 10
00066c  1f512000  addli r2, zero, 21
000670  15002014  dma_cfg zero, zero, r2, 10
000674  1f612000  addli r2, zero, 22
000678  15002014  dma_cfg zero, zero, r2, 10
00067c  1f712000  addli r2, zero, 23
000680  15002014  dma_cfg zero, zero, r2, 10
000684  1f013000  addli r2, zero, 24
000688  15002014  dma_cfg zero, zero, r2, 10
00068c  1f113000  addli r2, zero, 25
000690  15002014  dma_cfg zero, zero, r2, 10
000694  1f213000  addli r2, zero, 26
000698  15002014  dma_cfg zero, zero, r2, 10
00069c  1f313000  addli r2, zero, 27
0006a0  15002014  dma_cfg zero, zero, r2, 10
0006a4  1f413000  addli r2, zero, 28
0006a8  15002014  dma_cfg zero, zero, r2, 10
0006ac  1f513000  addli r2, zero, 29
0006b0  15002014  dma_cfg zero, zero, r2, 10
0006b4  1f613000  addli r2, zero, 30
0006b8  15002014  dma_cfg zero, zero, r2, 10
0006bc  1f713000  addli r2, zero, 31
0006c0  15002014  dma_cfg zero, zero, r2, 10
0006c4  1f010001  addli r2, zero, 128
0006c8  95880800  dma_cfg r17, r17, zero, 0
0006cc  95080002  dma_cfg r17, zero, zero, 1
0006d0  15000004  dma_cfg zero, zero, zero, 2
0006d4  95020007  dma_cfg r5, zero, r16, 3
0006d8  15018008  dma_cfg r2, zero, r8, 4
0006dc  1f010004  addli r2, zero, 512
0006e0  1501000b  dma_cfg r2, zero, r16, 5
0006e4  15000010  dma_cfg zero, zero, zero, 8
0006e8  35000000  dma_run zero
0006ec  1500100b  dma_cfg zero, zero, r17, 5
0006f0  15000010  dma_cfg zero, zero, zero, 8
0006f4  1d100200  unlock r4
0006f8  2b410200  lui r2, 36
0006fc  1f420000  addli r4, zero, 4
000700  670a0ffe  storeli.w zero, -96(r30)
000704  674a0ffe  storeli.w zero, -92(r30)
000708  1f040001  addli r8, zero, 128
00070c  9f040004  addli r9, zero, 512
000710  1b110104  ori r2, r2, 64
000714  1d000200  lock zero, r4
000718  95880800  dma_cfg r17, r17, zero, 0
00071c  0b112710  add.s r2, r14, r2
000720  15800304  dma_cfg zero, r7, zero, 2
000724  15010307  dma_cfg r2, r6, r16, 3
000728  1f010010  addli r2, zero, 2048
00072c  1f430000  addli r6, zero, 4
000730  9f630000  addli r7, zero, 6
000734  15044808  dma_cfg r8, r16, r4, 4
000738  9504010b  dma_cfg r9, r2, r16, 5
00073c  1f011000  addli r2, zero, 8
000740  15000010  dma_cfg zero, zero, zero, 8
000744  35000000  dma_run zero
000748  1500100b  dma_cfg zero, zero, r17, 5
00074c  15000010  dma_cfg zero, zero, zero, 8
000750  1d100200  unlock r4
000754  1f520000  addli r4, zero, 5
000758  1d000200  lock zero, r4
00075c  15000014  dma_cfg zero, zero, zero, 10
000760  15001015  dma_cfg zero, zero, r17, 10
000764  15006015  dma_cfg zero, zero, r22, 10
000768  1500f014  dma_cfg zero, zero, r15, 10
00076c  15006014  dma_cfg zero, zero, r6, 10
000770  15004014  dma_cfg zero, zero, r4, 10
000774  15007014  dma_cfg zero, zero, r7, 10
000778  1500c014  dma_cfg zero, zero, r12, 10
00077c  15002014  dma_cfg zero, zero, r2, 10
000780  1f111000  addli r2, zero, 9
000784  15002014  dma_cfg zero, zero, r2, 10
000788  1f211000  addli r2, zero, 10
00078c  15002014  dma_cfg zero, zero, r2, 10
000790  1f311000  addli r2, zero, 11
000794  15002014  dma_cfg zero, zero, r2, 10
000798  1f411000  addli r2, zero, 12
00079c  15002014  dma_cfg zero, zero, r2, 10
0007a0  1f611000  addli r2, zero, 14
0007a4  15003015  dma_cfg zero, zero, r19, 10
0007a8  15002014  dma_cfg zero, zero, r2, 10
0007ac  1f711000  addli r2, zero, 15
0007b0  15002014  dma_cfg zero, zero, r2, 10
0007b4  1f012000  addli r2, zero, 16
0007b8  15002014  dma_cfg zero, zero, r2, 10
0007bc  1f112000  addli r2, zero, 17
0007c0  15002014  dma_cfg zero, zero, r2, 10
0007c4  1f212000  addli r2, zero, 18
0007c8  15002014  dma_cfg zero, zero, r2, 10
0007cc  1f312000  addli r2, zero, 19
0007d0  15002014  dma_cfg zero, zero, r2, 10
0007d4  1f412000  addli r2, zero, 20
0007d8  15002014  dma_cfg zero, zero, r2, 10
0007dc  1f512000  addli r2, zero, 21
0007e0  15002014  dma_cfg zero, zero, r2, 10
0007e4  1f612000  addli r2, zero, 22
0007e8  15002014  dma_cfg zero, zero, r2, 10
0007ec  1f712000  addli r2, zero, 23
0007f0  15002014  dma_cfg zero, zero, r2, 10
0007f4  1f013000  addli r2, zero, 24
0007f8  15002014  dma_cfg zero, zero, r2, 10
0007fc  1f113000  addli r2, zero, 25
000800  15002014  dma_cfg zero, zero, r2, 10
000804  1f213000  addli r2, zero, 26
000808  15002014  dma_cfg zero, zero, r2, 10
00080c  1f313000  addli r2, zero, 27
000810  15002014  dma_cfg zero, zero, r2, 10
000814  1f413000  addli r2, zero, 28
000818  15002014  dma_cfg zero, zero, r2, 10
00081c  1f513000  addli r2, zero, 29
000820  15002014  dma_cfg zero, zero, r2, 10
000824  1f613000  addli r2, zero, 30
000828  15002014  dma_cfg zero, zero, r2, 10
00082c  1f713000  addli r2, zero, 31
000830  15002014  dma_cfg zero, zero, r2, 10
000834  95880800  dma_cfg r17, r17, zero, 0
000838  95080002  dma_cfg r17, zero, zero, 1
00083c  15000004  dma_cfg zero, zero, zero, 2
000840  95020007  dma_cfg r5, zero, r16, 3
000844  15046008  dma_cfg r8, zero, r6, 4
000848  9504000b  dma_cfg r9, zero, r16, 5
00084c  15000010  dma_cfg zero, zero, zero, 8
000850  35000000  dma_run zero
000854  1500100b  dma_cfg zero, zero, r17, 5
000858  15000010  dma_cfg zero, zero, zero, 8
00085c  1d100200  unlock r4
000860  7d800300  xsignal r7, 0
000864  3bd0f500  bneq r11, r15, 20
000868  1f211000  addli r2, zero, 10
00086c  7d100100  xwait r2, 0
000870  1f611000  addli r2, zero, 14
000874  7d100100  xwait r2, 0
000878  2b410500  lui r2, 84
00087c  1f020001  addli r4, zero, 128
000880  3d000000  xfence
000884  33030628  zext_int2long r[7:8], r12
000888  00a00300  mfence { lm, sm, gm }
00088c  1b110160  ori r2, r2, 1536
000890  33020228  zext_int2long r[5:6], r4
000894  0b1b2710  add.s r22, r14, r2
000898  1f71f001  addli r2, zero, 255
00089c  80220104  csr_set csr5, r2
0008a0  733c6ffa  store.d r[7:8], -72(r30)
0008a4  00e00200  sync_core
0008a8  3bc70500  bneq r11, zero, 464
0008ac  3d000000  xfence
0008b0  33030028  zext_int2long r[7:8], zero
0008b4  00a00300  mfence { lm, sm, gm }
0008b8  73386ffe  store.d r[7:8], -16(r30)
0008bc  db030000  j 28
0008c0  6b538ffb  load.d r[7:8], -72(r30)
0008c4  6b548fff  load.d r[9:10], -8(r30)
0008c8  1f760000  addli r12, zero, 7
0008cc  13216404  setlt.ul r2, r[9:10], r[7:8]
0008d0  27130400  addli.d r[7:8], r[9:10], 1
0008d4  37760100  beq r2, zero, 412
0008d8  eb570fff  load.d r[16:17], -16(r30)
0008dc  1735c302  sll.d r[11:12], r[7:8], r12
0008e0  733c6ffe  store.d r[7:8], -8(r30)
0008e4  db040000  j 36
0008e8  a7c70700  addli.d r[16:17], r[16:17], 4
0008ec  0b141b11  add.s r8, r22, r17
0008f0  93a34702  setneq.d r7, r[16:17], r[5:6]
0008f4  73662400  stores.w r2, 12(r8)
0008f8  73647401  stores.w r23, 8(r8)
0008fc  73629401  stores.w r25, 4(r8)
000900  73606400  stores.w r6, 0(r8)
000904  b7fe03fe  beq r7, zero, -68
000908  0ba3a710  add.ul r[7:8], r[16:17], r[11:12]
00090c  9b382300  slli r17, r6, 2
000910  0b111711  add.s r2, r14, r17
000914  ef46c100  loads.w r13, 12(r2)
000918  ef490100  loads.w r19, 0(r2)
00091c  6f4d4100  loads.w r26, 4(r2)
000920  6f4c8100  loads.w r24, 8(r2)
000924  1789c601  and r18, r13, r28
000928  13812a05  setlt.u r2, r21, r18
00092c  3b300100  bneq r2, zero, 12
000930  1f810600  addli r2, r13, 0
000934  5b010000  j 8
000938  17914601  or r2, r13, r20
00093c  1706cc01  and r12, r24, r28
000940  1383ca04  setlt.u r6, r21, r12
000944  3b300300  bneq r6, zero, 12
000948  9f0b0c00  addli r23, r24, 0
00094c  5b010000  j 8
000950  971b4c01  or r23, r24, r20
000954  9703cd01  and r7, r26, r28
000958  13837a04  setlt.u r6, r21, r7
00095c  3b300300  bneq r6, zero, 12
000960  9f0c0d00  addli r25, r26, 0
000964  5b010000  j 8
000968  971c4d01  or r25, r26, r20
00096c  1784c901  and r8, r19, r28
000970  13838a04  setlt.u r6, r21, r8
000974  3b500300  bneq r6, zero, 20
000978  1f830900  addli r6, r19, 0
00097c  13848104  setlt.u r8, r3, r8
000980  37500400  beq r8, zero, 20
000984  db040000  j 36
000988  17934901  or r6, r19, r20
00098c  13848104  setlt.u r8, r3, r8
000990  3b600400  bneq r8, zero, 24
000994  1bc30901  srli r6, r19, 16
000998  1b031300  andi r6, r6, 1
00099c  0b936910  add.s r6, r19, r6
0009a0  0b131310  add.s r6, r6, r1
0009a4  1703b301  and r6, r6, r27
0009a8  93837104  setlt.u r7, r3, r7
0009ac  bbb00300  bneq r7, zero, 44
0009b0  9b430d01  srli r7, r26, 16
0009b4  9b831300  andi r7, r7, 1
0009b8  8b137d10  add.s r7, r26, r7
0009bc  8b931310  add.s r7, r7, r1
0009c0  978cb301  and r25, r7, r27
0009c4  9383c104  setlt.u r7, r3, r12
0009c8  37e00300  beq r7, zero, 24
0009cc  93832105  setlt.u r7, r3, r18
0009d0  3bec03fe  bneq r7, zero, -232
0009d4  5b050000  j 40
0009d8  9383c104  setlt.u r7, r3, r12
0009dc  bbcf03fe  bneq r7, zero, -16
0009e0  9b430c01  srli r7, r24, 16
0009e4  9b831300  andi r7, r7, 1
0009e8  8b137c10  add.s r7, r24, r7
0009ec  8b931310  add.s r7, r7, r1
0009f0  978bb301  and r23, r7, r27
0009f4  93832105  setlt.u r7, r3, r18
0009f8  bbcb03fe  bneq r7, zero, -272
0009fc  1bc10601  srli r2, r13, 16
000a00  1b011100  andi r2, r2, 1
000a04  0b912610  add.s r2, r13, r2
000a08  0b111110  add.s r2, r2, r1
000a0c  1701b101  and r2, r2, r27
000a10  5bdbffff  j -296
000a14  1f410000  addli r2, zero, 4
000a18  37bf250c  beq r11, r2, 7116
000a1c  3bb1c50e  bneq r11, r12, 7244
000a20  1f610000  addli r2, zero, 6
000a24  670a0ffe  storeli.w zero, -96(r30)
000a28  7d100100  xwait r2, 0
000a2c  1f111000  addli r2, zero, 9
000a30  7d100100  xwait r2, 0
000a34  1d000000  lock zero, zero
000a38  1f010001  addli r2, zero, 128
000a3c  010b0000  ds_cfg r22, zero, 0
000a40  01010002  ds_cfg r2, zero, 1
000a44  0108001c  ds_cfg r16, zero, 14
000a48  0101001a  ds_cfg r2, zero, 13
000a4c  1f110000  addli r2, zero, 1
000a50  41870205  shuffle_coa r14, r5, r16, 2
000a54  1d100000  unlock zero
000a58  7d000600  xsignal r12, 0
000a5c  674a2ffe  storeli.w r2, -92(r30)
000a60  1f011000  addli r2, zero, 8
000a64  7d000100  xsignal r2, 0
000a68  3bc8f5fe  bneq r11, r15, -496
000a6c  dbbfffff  j -516
000a70  80350002  core_id r11
000a74  00200100  mfence { sm }
000a78  1f711000  addli r2, zero, 15
000a7c  33030128  zext_int2long r[7:8], r2
000a80  1f110000  addli r2, zero, 1
000a84  733c6ffe  store.d r[7:8], -8(r30)
000a88  bbd52500  bneq r11, r2, 372
000a8c  1f011000  addli r2, zero, 8
000a90  3d000000  xfence
000a94  00a00300  mfence { lm, sm, gm }
000a98  33030128  zext_int2long r[7:8], r2
000a9c  db030000  j 28
000aa0  6b538fff  load.d r[7:8], -8(r30)
000aa4  6b540fff  load.d r[9:10], -16(r30)
000aa8  1f760000  addli r12, zero, 7
000aac  13216404  setlt.ul r2, r[9:10], r[7:8]
000ab0  27130400  addli.d r[7:8], r[9:10], 1
000ab4  37050100  beq r2, zero, 320
000ab8  1734c302  sll.d r[9:10], r[7:8], r12
000abc  33050028  zext_int2long r[11:12], zero
000ac0  73386ffe  store.d r[7:8], -16(r30)
000ac4  db040000  j 36
000ac8  27450500  addli.d r[11:12], r[11:12], 4
000acc  8b13fb10  add.s r7, r22, r15
000ad0  13234502  setneq.d r6, r[11:12], r[5:6]
000ad4  73e62300  stores.w r2, 12(r7)
000ad8  73e41301  stores.w r17, 8(r7)
000adc  73e27301  stores.w r23, 4(r7)
000ae0  73e03301  stores.w r19, 0(r7)
000ae4  b77e03fe  beq r6, zero, -68
000ae8  0b238510  add.ul r[7:8], r[11:12], r[9:10]
000aec  9b372300  slli r15, r6, 2
000af0  0b11f710  add.s r2, r14, r15
000af4  ef46c100  loads.w r13, 12(r2)
000af8  ef4c0100  loads.w r25, 0(r2)
000afc  6f4c4100  loads.w r24, 4(r2)
000b00  6f498100  loads.w r18, 8(r2)
000b04  1788c601  and r16, r13, r28
000b08  13810a05  setlt.u r2, r21, r16
000b0c  3b300100  bneq r2, zero, 12
000b10  1f810600  addli r2, r13, 0
000b14  5b010000  j 8
000b18  17914601  or r2, r13, r20
000b1c  1706c901  and r12, r18, r28
000b20  1383ca04  setlt.u r6, r21, r12
000b24  3b300300  bneq r6, zero, 12
000b28  9f080900  addli r17, r18, 0
000b2c  5b010000  j 8
000b30  97184901  or r17, r18, r20
000b34  170dcc01  and r26, r24, r28
000b38  1383aa05  setlt.u r6, r21, r26
000b3c  3b300300  bneq r6, zero, 12
000b40  9f0b0c00  addli r23, r24, 0
000b44  5b010000  j 8
000b48  971b4c01  or r23, r24, r20
000b4c  1783cc01  and r6, r25, r28
000b50  93836a04  setlt.u r7, r21, r6
000b54  3bd00300  bneq r7, zero, 20
000b58  9f890c00  addli r19, r25, 0
000b5c  13836104  setlt.u r6, r3, r6
000b60  37500300  beq r6, zero, 20
000b64  db040000  j 36
000b68  97994c01  or r19, r25, r20
000b6c  13836104  setlt.u r6, r3, r6
000b70  3b600300  bneq r6, zero, 24
000b74  1bc30c01  srli r6, r25, 16
000b78  1b031300  andi r6, r6, 1
000b7c  0b936c10  add.s r6, r25, r6
000b80  0b131310  add.s r6, r6, r1
000b84  9709b301  and r19, r6, r27
000b88  1383a105  setlt.u r6, r3, r26
000b8c  bb300300  bneq r6, zero, 44
000b90  1b430c01  srli r6, r24, 16
000b94  1b031300  andi r6, r6, 1
000b98  0b136c10  add.s r6, r24, r6
000b9c  0b131310  add.s r6, r6, r1
000ba0  970bb301  and r23, r6, r27
000ba4  1383c104  setlt.u r6, r3, r12
000ba8  37600300  beq r6, zero, 24
000bac  13830105  setlt.u r6, r3, r16
000bb0  3b6c03fe  bneq r6, zero, -232
000bb4  5b050000  j 40
000bb8  1383c104  setlt.u r6, r3, r12
000bbc  bb4f03fe  bneq r6, zero, -16
000bc0  1b430901  srli r6, r18, 16
000bc4  1b031300  andi r6, r6, 1
000bc8  0b136910  add.s r6, r18, r6
000bcc  0b131310  add.s r6, r6, r1
000bd0  9708b301  and r17, r6, r27
000bd4  13830105  setlt.u r6, r3, r16
000bd8  bb4b03fe  bneq r6, zero, -272
000bdc  1bc10601  srli r2, r13, 16
000be0  1b011100  andi r2, r2, 1
000be4  0b912610  add.s r2, r13, r2
000be8  0b111110  add.s r2, r2, r1
000bec  1701b101  and r2, r2, r27
000bf0  5bdbffff  j -296
000bf4  80350002  core_id r11
000bf8  00200100  mfence { sm }
000bfc  1f712000  addli r2, zero, 23
000c00  33030128  zext_int2long r[7:8], r2
000c04  63413fff  loadli.w r2,  -100(r30)
000c08  73386ffe  store.d r[7:8], -16(r30)
000c0c  b7550100  beq r2, zero, 372
000c10  1f012000  addli r2, zero, 16
000c14  3d000000  xfence
000c18  00a00300  mfence { lm, sm, gm }
000c1c  33030128  zext_int2long r[7:8], r2
000c20  db030000  j 28
000c24  6b530fff  load.d r[7:8], -16(r30)
000c28  6b548ffe  load.d r[9:10], -24(r30)
000c2c  1f760000  addli r12, zero, 7
000c30  13216404  setlt.ul r2, r[9:10], r[7:8]
000c34  27130400  addli.d r[7:8], r[9:10], 1
000c38  37050100  beq r2, zero, 320
000c3c  1734c302  sll.d r[9:10], r[7:8], r12
000c40  33050028  zext_int2long r[11:12], zero
000c44  73346ffe  store.d r[7:8], -24(r30)
000c48  db040000  j 36
000c4c  27450500  addli.d r[11:12], r[11:12], 4
000c50  8b13fb10  add.s r7, r22, r15
000c54  13234502  setneq.d r6, r[11:12], r[5:6]
000c58  73e62300  stores.w r2, 12(r7)
000c5c  73e41301  stores.w r17, 8(r7)
000c60  73e27301  stores.w r23, 4(r7)
000c64  73e03301  stores.w r19, 0(r7)
000c68  b77e03fe  beq r6, zero, -68
000c6c  0b238510  add.ul r[7:8], r[11:12], r[9:10]
000c70  9b372300  slli r15, r6, 2
000c74  0b11f710  add.s r2, r14, r15
000c78  ef46c100  loads.w r13, 12(r2)
000c7c  ef4c0100  loads.w r25, 0(r2)
000c80  6f4c4100  loads.w r24, 4(r2)
000c84  6f498100  loads.w r18, 8(r2)
000c88  1788c601  and r16, r13, r28
000c8c  13810a05  setlt.u r2, r21, r16
000c90  3b300100  bneq r2, zero, 12
000c94  1f810600  addli r2, r13, 0
000c98  5b010000  j 8
000c9c  17914601  or r2, r13, r20
000ca0  1706c901  and r12, r18, r28
000ca4  1383ca04  setlt.u r6, r21, r12
000ca8  3b300300  bneq r6, zero, 12
000cac  9f080900  addli r17, r18, 0
000cb0  5b010000  j 8
000cb4  97184901  or r17, r18, r20
000cb8  170dcc01  and r26, r24, r28
000cbc  1383aa05  setlt.u r6, r21, r26
000cc0  3b300300  bneq r6, zero, 12
000cc4  9f0b0c00  addli r23, r24, 0
000cc8  5b010000  j 8
000ccc  971b4c01  or r23, r24, r20
000cd0  1783cc01  and r6, r25, r28
000cd4  93836a04  setlt.u r7, r21, r6
000cd8  3bd00300  bneq r7, zero, 20
000cdc  9f890c00  addli r19, r25, 0
000ce0  13836104  setlt.u r6, r3, r6
000ce4  37500300  beq r6, zero, 20
000ce8  db040000  j 36
000cec  97994c01  or r19, r25, r20
000cf0  13836104  setlt.u r6, r3, r6
000cf4  3b600300  bneq r6, zero, 24
000cf8  1bc30c01  srli r6, r25, 16
000cfc  1b031300  andi r6, r6, 1
000d00  0b936c10  add.s r6, r25, r6
000d04  0b131310  add.s r6, r6, r1
000d08  9709b301  and r19, r6, r27
000d0c  1383a105  setlt.u r6, r3, r26
000d10  bb300300  bneq r6, zero, 44
000d14  1b430c01  srli r6, r24, 16
000d18  1b031300  andi r6, r6, 1
000d1c  0b136c10  add.s r6, r24, r6
000d20  0b131310  add.s r6, r6, r1
000d24  970bb301  and r23, r6, r27
000d28  1383c104  setlt.u r6, r3, r12
000d2c  37600300  beq r6, zero, 24
000d30  13830105  setlt.u r6, r3, r16
000d34  3b6c03fe  bneq r6, zero, -232
000d38  5b050000  j 40
000d3c  1383c104  setlt.u r6, r3, r12
000d40  bb4f03fe  bneq r6, zero, -16
000d44  1b430901  srli r6, r18, 16
000d48  1b031300  andi r6, r6, 1
000d4c  0b136910  add.s r6, r18, r6
000d50  0b131310  add.s r6, r6, r1
000d54  9708b301  and r17, r6, r27
000d58  13830105  setlt.u r6, r3, r16
000d5c  bb4b03fe  bneq r6, zero, -272
000d60  1bc10601  srli r2, r13, 16
000d64  1b011100  andi r2, r2, 1
000d68  0b912610  add.s r2, r13, r2
000d6c  0b111110  add.s r2, r2, r1
000d70  1701b101  and r2, r2, r27
000d74  5bdbffff  j -296
000d78  80350002  core_id r11
000d7c  00200100  mfence { sm }
000d80  1f713000  addli r2, zero, 31
000d84  33030128  zext_int2long r[7:8], r2
000d88  1f310000  addli r2, zero, 3
000d8c  73346ffe  store.d r[7:8], -24(r30)
000d90  bbd52500  bneq r11, r2, 372
000d94  1f013000  addli r2, zero, 24
000d98  3d000000  xfence
000d9c  00a00300  mfence { lm, sm, gm }
000da0  33030128  zext_int2long r[7:8], r2
000da4  db030000  j 28
000da8  6b538ffe  load.d r[7:8], -24(r30)
000dac  6b540ffe  load.d r[9:10], -32(r30)
000db0  1f760000  addli r12, zero, 7
000db4  13216404  setlt.ul r2, r[9:10], r[7:8]
000db8  27130400  addli.d r[7:8], r[9:10], 1
000dbc  37050100  beq r2, zero, 320
000dc0  1735c302  sll.d r[11:12], r[7:8], r12
000dc4  33040028  zext_int2long r[9:10], zero
000dc8  73306ffe  store.d r[7:8], -32(r30)
000dcc  db040000  j 36
000dd0  27440400  addli.d r[9:10], r[9:10], 4
000dd4  8b13fb10  add.s r7, r22, r15
000dd8  13234402  setneq.d r6, r[9:10], r[5:6]
000ddc  73e62300  stores.w r2, 12(r7)
000de0  73e41301  stores.w r17, 8(r7)
000de4  73e27301  stores.w r23, 4(r7)
000de8  73e03301  stores.w r19, 0(r7)
000dec  b77e03fe  beq r6, zero, -68
000df0  0b23a410  add.ul r[7:8], r[9:10], r[11:12]
000df4  9b372300  slli r15, r6, 2
000df8  0b11f710  add.s r2, r14, r15
000dfc  ef46c100  loads.w r13, 12(r2)
000e00  ef4c0100  loads.w r25, 0(r2)
000e04  6f4c4100  loads.w r24, 4(r2)
000e08  6f498100  loads.w r18, 8(r2)
000e0c  1788c601  and r16, r13, r28
000e10  13810a05  setlt.u r2, r21, r16
000e14  3b300100  bneq r2, zero, 12
000e18  1f810600  addli r2, r13, 0
000e1c  5b010000  j 8
000e20  17914601  or r2, r13, r20
000e24  1706c901  and r12, r18, r28
000e28  1383ca04  setlt.u r6, r21, r12
000e2c  3b300300  bneq r6, zero, 12
000e30  9f080900  addli r17, r18, 0
000e34  5b010000  j 8
000e38  97184901  or r17, r18, r20
000e3c  170dcc01  and r26, r24, r28
000e40  1383aa05  setlt.u r6, r21, r26
000e44  3b300300  bneq r6, zero, 12
000e48  9f0b0c00  addli r23, r24, 0
000e4c  5b010000  j 8
000e50  971b4c01  or r23, r24, r20
000e54  1783cc01  and r6, r25, r28
000e58  93836a04  setlt.u r7, r21, r6
000e5c  3bd00300  bneq r7, zero, 20
000e60  9f890c00  addli r19, r25, 0
000e64  13836104  setlt.u r6, r3, r6
000e68  37500300  beq r6, zero, 20
000e6c  db040000  j 36
000e70  97994c01  or r19, r25, r20
000e74  13836104  setlt.u r6, r3, r6
000e78  3b600300  bneq r6, zero, 24
000e7c  1bc30c01  srli r6, r25, 16
000e80  1b031300  andi r6, r6, 1
000e84  0b936c10  add.s r6, r25, r6
000e88  0b131310  add.s r6, r6, r1
000e8c  9709b301  and r19, r6, r27
000e90  1383a105  setlt.u r6, r3, r26
000e94  bb300300  bneq r6, zero, 44
000e98  1b430c01  srli r6, r24, 16
000e9c  1b031300  andi r6, r6, 1
000ea0  0b136c10  add.s r6, r24, r6
000ea4  0b131310  add.s r6, r6, r1
000ea8  970bb301  and r23, r6, r27
000eac  1383c104  setlt.u r6, r3, r12
000eb0  37600300  beq r6, zero, 24
000eb4  13830105  setlt.u r6, r3, r16
000eb8  3b6c03fe  bneq r6, zero, -232
000ebc  5b050000  j 40
000ec0  1383c104  setlt.u r6, r3, r12
000ec4  bb4f03fe  bneq r6, zero, -16
000ec8  1b430901  srli r6, r18, 16
000ecc  1b031300  andi r6, r6, 1
000ed0  0b136910  add.s r6, r18, r6
000ed4  0b131310  add.s r6, r6, r1
000ed8  9708b301  and r17, r6, r27
000edc  13830105  setlt.u r6, r3, r16
000ee0  bb4b03fe  bneq r6, zero, -272
000ee4  1bc10601  srli r2, r13, 16
000ee8  1b011100  andi r2, r2, 1
000eec  0b912610  add.s r2, r13, r2
000ef0  0b111110  add.s r2, r2, r1
000ef4  1701b101  and r2, r2, r27
000ef8  5bdbffff  j -296
000efc  80350002  core_id r11
000f00  00200100  mfence { sm }
000f04  1f714000  addli r2, zero, 39
000f08  33030128  zext_int2long r[7:8], r2
000f0c  63014fff  loadli.w r2,  -96(r30)
000f10  73306ffe  store.d r[7:8], -32(r30)
000f14  b7550100  beq r2, zero, 372
000f18  1f014000  addli r2, zero, 32
000f1c  3d000000  xfence
000f20  00a00300  mfence { lm, sm, gm }
000f24  33030128  zext_int2long r[7:8], r2
000f28  db030000  j 28
000f2c  6b530ffe  load.d r[7:8], -32(r30)
000f30  6b548ffd  load.d r[9:10], -40(r30)
000f34  1f760000  addli r12, zero, 7
000f38  13216404  setlt.ul r2, r[9:10], r[7:8]
000f3c  27130400  addli.d r[7:8], r[9:10], 1
000f40  37050100  beq r2, zero, 320
000f44  9737c302  sll.d r[16:17], r[7:8], r12
000f48  33040028  zext_int2long r[9:10], zero
000f4c  733c6ffc  store.d r[7:8], -40(r30)
000f50  db040000  j 36
000f54  27440400  addli.d r[9:10], r[9:10], 4
000f58  0b136b10  add.s r6, r22, r6
000f5c  93234402  setneq.d r7, r[9:10], r[5:6]
000f60  73662300  stores.w r2, 12(r6)
000f64  73641301  stores.w r17, 8(r6)
000f68  73627301  stores.w r23, 4(r6)
000f6c  73603301  stores.w r19, 0(r6)
000f70  b7fe03fe  beq r7, zero, -68
000f74  0b23f410  add.ul r[7:8], r[9:10], r[16:17]
000f78  1b332300  slli r6, r6, 2
000f7c  0b116710  add.s r2, r14, r6
000f80  ef43c100  loads.w r7, 12(r2)
000f84  ef4c0100  loads.w r25, 0(r2)
000f88  6f4c4100  loads.w r24, 4(r2)
000f8c  6f498100  loads.w r18, 8(r2)
000f90  9786c301  and r13, r7, r28
000f94  1381da04  setlt.u r2, r21, r13
000f98  3b300100  bneq r2, zero, 12
000f9c  1f810300  addli r2, r7, 0
000fa0  5b010000  j 8
000fa4  17914301  or r2, r7, r20
000fa8  1706c901  and r12, r18, r28
000fac  1385ca04  setlt.u r10, r21, r12
000fb0  3b300500  bneq r10, zero, 12
000fb4  9f080900  addli r17, r18, 0
000fb8  5b010000  j 8
000fbc  97184901  or r17, r18, r20
000fc0  170dcc01  and r26, r24, r28
000fc4  1385aa05  setlt.u r10, r21, r26
000fc8  3b300500  bneq r10, zero, 12
000fcc  9f0b0c00  addli r23, r24, 0
000fd0  5b010000  j 8
000fd4  971b4c01  or r23, r24, r20
000fd8  1785cc01  and r10, r25, r28
000fdc  9385aa04  setlt.u r11, r21, r10
000fe0  3bd00500  bneq r11, zero, 20
000fe4  9f890c00  addli r19, r25, 0
000fe8  1385a104  setlt.u r10, r3, r10
000fec  37500500  beq r10, zero, 20
000ff0  db040000  j 36
000ff4  97994c01  or r19, r25, r20
000ff8  1385a104  setlt.u r10, r3, r10
000ffc  3b600500  bneq r10, zero, 24
001000  1bc50c01  srli r10, r25, 16
001004  1b051500  andi r10, r10, 1
001008  0b95ac10  add.s r10, r25, r10
00100c  0b151510  add.s r10, r10, r1
001010  9709b501  and r19, r10, r27
001014  1385a105  setlt.u r10, r3, r26
001018  bb300500  bneq r10, zero, 44
00101c  1b450c01  srli r10, r24, 16
001020  1b051500  andi r10, r10, 1
001024  0b15ac10  add.s r10, r24, r10
001028  0b151510  add.s r10, r10, r1
00102c  970bb501  and r23, r10, r27
001030  1385c104  setlt.u r10, r3, r12
001034  37600500  beq r10, zero, 24
001038  1385d104  setlt.u r10, r3, r13
00103c  3b6c05fe  bneq r10, zero, -232
001040  5b050000  j 40
001044  1385c104  setlt.u r10, r3, r12
001048  bb4f05fe  bneq r10, zero, -16
00104c  1b450901  srli r10, r18, 16
001050  1b051500  andi r10, r10, 1
001054  0b15a910  add.s r10, r18, r10
001058  0b151510  add.s r10, r10, r1
00105c  9708b501  and r17, r10, r27
001060  1385d104  setlt.u r10, r3, r13
001064  bb4b05fe  bneq r10, zero, -272
001068  1bc10301  srli r2, r7, 16
00106c  1b011100  andi r2, r2, 1
001070  0b912310  add.s r2, r7, r2
001074  0b111110  add.s r2, r2, r1
001078  1701b101  and r2, r2, r27
00107c  5bdbffff  j -296
001080  80350002  core_id r11
001084  00200100  mfence { sm }
001088  1f715000  addli r2, zero, 47
00108c  33030128  zext_int2long r[7:8], r2
001090  1f510000  addli r2, zero, 5
001094  733c6ffc  store.d r[7:8], -40(r30)
001098  bbd52500  bneq r11, r2, 372
00109c  1f015000  addli r2, zero, 40
0010a0  3d000000  xfence
0010a4  00a00300  mfence { lm, sm, gm }
0010a8  33030128  zext_int2long r[7:8], r2
0010ac  db030000  j 28
0010b0  6b538ffd  load.d r[7:8], -40(r30)
0010b4  6b540ffd  load.d r[9:10], -48(r30)
0010b8  1f760000  addli r12, zero, 7
0010bc  13216404  setlt.ul r2, r[9:10], r[7:8]
0010c0  27130400  addli.d r[7:8], r[9:10], 1
0010c4  37050100  beq r2, zero, 320
0010c8  9738c302  sll.d r[18:19], r[7:8], r12
0010cc  33040028  zext_int2long r[9:10], zero
0010d0  73386ffc  store.d r[7:8], -48(r30)
0010d4  db040000  j 36
0010d8  27440400  addli.d r[9:10], r[9:10], 4
0010dc  0b136b10  add.s r6, r22, r6
0010e0  93234402  setneq.d r7, r[9:10], r[5:6]
0010e4  73662300  stores.w r2, 12(r6)
0010e8  7364b300  stores.w r11, 8(r6)
0010ec  73627301  stores.w r23, 4(r6)
0010f0  73603301  stores.w r19, 0(r6)
0010f4  b7fe03fe  beq r7, zero, -68
0010f8  0b231411  add.ul r[7:8], r[9:10], r[18:19]
0010fc  1b332300  slli r6, r6, 2
001100  0b116710  add.s r2, r14, r6
001104  ef43c100  loads.w r7, 12(r2)
001108  ef4c0100  loads.w r25, 0(r2)
00110c  6f4c4100  loads.w r24, 4(r2)
001110  ef468100  loads.w r13, 8(r2)
001114  1785c301  and r10, r7, r28
001118  1381aa04  setlt.u r2, r21, r10
00111c  3b300100  bneq r2, zero, 12
001120  1f810300  addli r2, r7, 0
001124  5b010000  j 8
001128  17914301  or r2, r7, r20
00112c  1786c601  and r12, r13, r28
001130  9385ca04  setlt.u r11, r21, r12
001134  3bb00500  bneq r11, zero, 12
001138  9f850600  addli r11, r13, 0
00113c  5b010000  j 8
001140  97954601  or r11, r13, r20
001144  170dcc01  and r26, r24, r28
001148  9387aa05  setlt.u r15, r21, r26
00114c  3bb00700  bneq r15, zero, 12
001150  9f0b0c00  addli r23, r24, 0
001154  5b010000  j 8
001158  971b4c01  or r23, r24, r20
00115c  9787cc01  and r15, r25, r28
001160  1388fa04  setlt.u r16, r21, r15
001164  3b500800  bneq r16, zero, 20
001168  9f890c00  addli r19, r25, 0
00116c  9387f104  setlt.u r15, r3, r15
001170  37d00700  beq r15, zero, 20
001174  db040000  j 36
001178  97994c01  or r19, r25, r20
00117c  9387f104  setlt.u r15, r3, r15
001180  3be00700  bneq r15, zero, 24
001184  9bc70c01  srli r15, r25, 16
001188  9b871700  andi r15, r15, 1
00118c  8b97fc10  add.s r15, r25, r15
001190  8b971710  add.s r15, r15, r1
001194  9789b701  and r19, r15, r27
001198  9387a105  setlt.u r15, r3, r26
00119c  bbb00700  bneq r15, zero, 44
0011a0  9b470c01  srli r15, r24, 16
0011a4  9b871700  andi r15, r15, 1
0011a8  8b17fc10  add.s r15, r24, r15
0011ac  8b971710  add.s r15, r15, r1
0011b0  978bb701  and r23, r15, r27
0011b4  1386c104  setlt.u r12, r3, r12
0011b8  37600600  beq r12, zero, 24
0011bc  1385a104  setlt.u r10, r3, r10
0011c0  3b6c05fe  bneq r10, zero, -232
0011c4  5b050000  j 40
0011c8  1386c104  setlt.u r12, r3, r12
0011cc  bb4f06fe  bneq r12, zero, -16
0011d0  9bc50601  srli r11, r13, 16
0011d4  9b851500  andi r11, r11, 1
0011d8  8b95b610  add.s r11, r13, r11
0011dc  8b951510  add.s r11, r11, r1
0011e0  9785b501  and r11, r11, r27
0011e4  1385a104  setlt.u r10, r3, r10
0011e8  bb4b05fe  bneq r10, zero, -272
0011ec  1bc10301  srli r2, r7, 16
0011f0  1b011100  andi r2, r2, 1
0011f4  0b912310  add.s r2, r7, r2
0011f8  0b111110  add.s r2, r2, r1
0011fc  1701b101  and r2, r2, r27
001200  5bdbffff  j -296
001204  80350002  core_id r11
001208  00200100  mfence { sm }
00120c  1f716000  addli r2, zero, 55
001210  33030128  zext_int2long r[7:8], r2
001214  1f610000  addli r2, zero, 6
001218  73386ffc  store.d r[7:8], -48(r30)
00121c  bbd52500  bneq r11, r2, 372
001220  1f016000  addli r2, zero, 48
001224  3d000000  xfence
001228  00a00300  mfence { lm, sm, gm }
00122c  33030128  zext_int2long r[7:8], r2
001230  db030000  j 28
001234  6b530ffd  load.d r[7:8], -48(r30)
001238  6b548ffc  load.d r[9:10], -56(r30)
00123c  1f760000  addli r12, zero, 7
001240  13216404  setlt.ul r2, r[9:10], r[7:8]
001244  27130400  addli.d r[7:8], r[9:10], 1
001248  37050100  beq r2, zero, 320
00124c  973bc302  sll.d r[24:25], r[7:8], r12
001250  33040028  zext_int2long r[9:10], zero
001254  73346ffc  store.d r[7:8], -56(r30)
001258  db040000  j 36
00125c  27440400  addli.d r[9:10], r[9:10], 4
001260  0b136b10  add.s r6, r22, r6
001264  93234402  setneq.d r7, r[9:10], r[5:6]
001268  73662300  stores.w r2, 12(r6)
00126c  7364b300  stores.w r11, 8(r6)
001270  73621301  stores.w r17, 4(r6)
001274  73603301  stores.w r19, 0(r6)
001278  b7fe03fe  beq r7, zero, -68
00127c  0b237411  add.ul r[7:8], r[9:10], r[24:25]
001280  1b332300  slli r6, r6, 2
001284  0b116710  add.s r2, r14, r6
001288  ef43c100  loads.w r7, 12(r2)
00128c  ef4c0100  loads.w r25, 0(r2)
001290  6f494100  loads.w r18, 4(r2)
001294  ef468100  loads.w r13, 8(r2)
001298  1785c301  and r10, r7, r28
00129c  1381aa04  setlt.u r2, r21, r10
0012a0  3b300100  bneq r2, zero, 12
0012a4  1f810300  addli r2, r7, 0
0012a8  5b010000  j 8
0012ac  17914301  or r2, r7, r20
0012b0  1786c601  and r12, r13, r28
0012b4  9385ca04  setlt.u r11, r21, r12
0012b8  3bb00500  bneq r11, zero, 12
0012bc  9f850600  addli r11, r13, 0
0012c0  5b010000  j 8
0012c4  97954601  or r11, r13, r20
0012c8  170dc901  and r26, r18, r28
0012cc  9387aa05  setlt.u r15, r21, r26
0012d0  3bb00700  bneq r15, zero, 12
0012d4  9f080900  addli r17, r18, 0
0012d8  5b010000  j 8
0012dc  97184901  or r17, r18, r20
0012e0  9787cc01  and r15, r25, r28
0012e4  1388fa04  setlt.u r16, r21, r15
0012e8  3b500800  bneq r16, zero, 20
0012ec  9f890c00  addli r19, r25, 0
0012f0  9387f104  setlt.u r15, r3, r15
0012f4  37d00700  beq r15, zero, 20
0012f8  db040000  j 36
0012fc  97994c01  or r19, r25, r20
001300  9387f104  setlt.u r15, r3, r15
001304  3be00700  bneq r15, zero, 24
001308  9bc70c01  srli r15, r25, 16
00130c  9b871700  andi r15, r15, 1
001310  8b97fc10  add.s r15, r25, r15
001314  8b971710  add.s r15, r15, r1
001318  9789b701  and r19, r15, r27
00131c  9387a105  setlt.u r15, r3, r26
001320  bbb00700  bneq r15, zero, 44
001324  9b470901  srli r15, r18, 16
001328  9b871700  andi r15, r15, 1
00132c  8b17f910  add.s r15, r18, r15
001330  8b971710  add.s r15, r15, r1
001334  9788b701  and r17, r15, r27
001338  1386c104  setlt.u r12, r3, r12
00133c  37600600  beq r12, zero, 24
001340  1385a104  setlt.u r10, r3, r10
001344  3b6c05fe  bneq r10, zero, -232
001348  5b050000  j 40
00134c  1386c104  setlt.u r12, r3, r12
001350  bb4f06fe  bneq r12, zero, -16
001354  9bc50601  srli r11, r13, 16
001358  9b851500  andi r11, r11, 1
00135c  8b95b610  add.s r11, r13, r11
001360  8b951510  add.s r11, r11, r1
001364  9785b501  and r11, r11, r27
001368  1385a104  setlt.u r10, r3, r10
00136c  bb4b05fe  bneq r10, zero, -272
001370  1bc10301  srli r2, r7, 16
001374  1b011100  andi r2, r2, 1
001378  0b912310  add.s r2, r7, r2
00137c  0b111110  add.s r2, r2, r1
001380  1701b101  and r2, r2, r27
001384  5bdbffff  j -296
001388  80350002  core_id r11
00138c  00200100  mfence { sm }
001390  1f717000  addli r2, zero, 63
001394  33030128  zext_int2long r[7:8], r2
001398  63414fff  loadli.w r2,  -92(r30)
00139c  73346ffc  store.d r[7:8], -56(r30)
0013a0  b7550100  beq r2, zero, 372
0013a4  1f017000  addli r2, zero, 56
0013a8  3d000000  xfence
0013ac  00a00300  mfence { lm, sm, gm }
0013b0  33030128  zext_int2long r[7:8], r2
0013b4  db030000  j 28
0013b8  6b538ffc  load.d r[7:8], -56(r30)
0013bc  6b540ffc  load.d r[9:10], -64(r30)
0013c0  1f760000  addli r12, zero, 7
0013c4  13216404  setlt.ul r2, r[9:10], r[7:8]
0013c8  27130400  addli.d r[7:8], r[9:10], 1
0013cc  37050100  beq r2, zero, 320
0013d0  973cc302  sll.d r[26:27], r[7:8], r12
0013d4  33040028  zext_int2long r[9:10], zero
0013d8  73306ffc  store.d r[7:8], -64(r30)
0013dc  db040000  j 36
0013e0  27440400  addli.d r[9:10], r[9:10], 4
0013e4  0b136b10  add.s r6, r22, r6
0013e8  93234402  setneq.d r7, r[9:10], r[5:6]
0013ec  73662300  stores.w r2, 12(r6)
0013f0  7364b300  stores.w r11, 8(r6)
0013f4  73621301  stores.w r17, 4(r6)
0013f8  73600301  stores.w r16, 0(r6)
0013fc  b7fe03fe  beq r7, zero, -68
001400  0b239411  add.ul r[7:8], r[9:10], r[26:27]
001404  1b332300  slli r6, r6, 2
001408  0b116710  add.s r2, r14, r6
00140c  ef43c100  loads.w r7, 12(r2)
001410  6f490100  loads.w r18, 0(r2)
001414  ef474100  loads.w r15, 4(r2)
001418  ef468100  loads.w r13, 8(r2)
00141c  1785c301  and r10, r7, r28
001420  1381aa04  setlt.u r2, r21, r10
001424  3b300100  bneq r2, zero, 12
001428  1f810300  addli r2, r7, 0
00142c  5b010000  j 8
001430  17914301  or r2, r7, r20
001434  1786c601  and r12, r13, r28
001438  9385ca04  setlt.u r11, r21, r12
00143c  3bb00500  bneq r11, zero, 12
001440  9f850600  addli r11, r13, 0
001444  5b010000  j 8
001448  97954601  or r11, r13, r20
00144c  9789c701  and r19, r15, r28
001450  13883a05  setlt.u r16, r21, r19
001454  3b300800  bneq r16, zero, 12
001458  9f880700  addli r17, r15, 0
00145c  5b010000  j 8
001460  97984701  or r17, r15, r20
001464  970bc901  and r23, r18, r28
001468  13887a05  setlt.u r16, r21, r23
00146c  3b500800  bneq r16, zero, 20
001470  1f080900  addli r16, r18, 0
001474  938b7105  setlt.u r23, r3, r23
001478  37d00b00  beq r23, zero, 20
00147c  db040000  j 36
001480  17184901  or r16, r18, r20
001484  938b7105  setlt.u r23, r3, r23
001488  3be00b00  bneq r23, zero, 24
00148c  1b480901  srli r16, r18, 16
001490  1b081800  andi r16, r16, 1
001494  0b180911  add.s r16, r18, r16
001498  0b181810  add.s r16, r16, r1
00149c  1708b801  and r16, r16, r27
0014a0  13893105  setlt.u r18, r3, r19
0014a4  bb300900  bneq r18, zero, 44
0014a8  9bc80701  srli r17, r15, 16
0014ac  9b881800  andi r17, r17, 1
0014b0  8b971711  add.s r15, r15, r17
0014b4  8b971710  add.s r15, r15, r1
0014b8  9788b701  and r17, r15, r27
0014bc  1386c104  setlt.u r12, r3, r12
0014c0  37600600  beq r12, zero, 24
0014c4  1385a104  setlt.u r10, r3, r10
0014c8  3b6c05fe  bneq r10, zero, -232
0014cc  5b050000  j 40
0014d0  1386c104  setlt.u r12, r3, r12
0014d4  bb4f06fe  bneq r12, zero, -16
0014d8  9bc50601  srli r11, r13, 16
0014dc  9b851500  andi r11, r11, 1
0014e0  8b95b610  add.s r11, r13, r11
0014e4  8b951510  add.s r11, r11, r1
0014e8  9785b501  and r11, r11, r27
0014ec  1385a104  setlt.u r10, r3, r10
0014f0  bb4b05fe  bneq r10, zero, -272
0014f4  1bc10301  srli r2, r7, 16
0014f8  1b011100  andi r2, r2, 1
0014fc  0b912310  add.s r2, r7, r2
001500  0b111110  add.s r2, r2, r1
001504  1701b101  and r2, r2, r27
001508  5bdbffff  j -296
00150c  80350002  core_id r11
001510  00200100  mfence { sm }
001514  63011fff  loadli.w r2,  -120(r30)
001518  1f030007  addli r6, zero, 896
00151c  33030328  zext_int2long r[7:8], r6
001520  1b317100  slli r2, r2, 7
001524  33040128  zext_int2long r[9:10], r2
001528  1f71f001  addli r2, zero, 255
00152c  0b236440  min.ul r[7:8], r[9:10], r[7:8]
001530  27030301  addli.d r[7:8], r[7:8], 128
001534  0b238348  max.ul r[7:8], r[7:8], r[9:10]
001538  0b338318  sub.sl r[7:8], r[7:8], r[9:10]
00153c  0b234340  min.ul r[7:8], r[7:8], r[5:6]
001540  73346ff8  store.d r[7:8], -120(r30)
001544  80220104  csr_set csr5, r2
001548  1f310000  addli r2, zero, 3
00154c  00e00200  sync_core
001550  bbb02500  bneq r11, r2, 44
001554  1f311000  addli r2, zero, 11
001558  7d000100  xsignal r2, 0
00155c  1f411000  addli r2, zero, 12
001560  7d000100  xsignal r2, 0
001564  1f511000  addli r2, zero, 13
001568  7d100100  xwait r2, 0
00156c  1f212000  addli r2, zero, 18
001570  7d100100  xwait r2, 0
001574  6b548ffa  load.d r[9:10], -88(r30)
001578  5b6c0000  j 864
00157c  63016fff  loadli.w r2,  -80(r30)
001580  2b430500  lui r6, 84
001584  6b548ffa  load.d r[9:10], -88(r30)
001588  1b319100  slli r2, r2, 9
00158c  8b196110  add.s r19, r2, r6
001590  1f130000  addli r6, zero, 1
001594  3beb6500  bneq r11, r6, 728
001598  6b530f01  load.d r[7:8], 16(r30)
00159c  6b540ff8  load.d r[9:10], -128(r30)
0015a0  1f082000  addli r16, zero, 16
0015a4  9f260000  addli r13, zero, 2
0015a8  7d100800  xwait r16, 0
0015ac  0b238310  add.ul r[7:8], r[7:8], r[9:10]
0015b0  63043fff  loadli.w r8,  -104(r30)
0015b4  bfc48600  blt.s r13, r8, 304
0015b8  1f550000  addli r10, zero, 5
0015bc  9f140000  addli r9, zero, 1
0015c0  1f340000  addli r8, zero, 3
0015c4  9f470000  addli r15, zero, 4
0015c8  1d000500  lock zero, r10
0015cc  15000014  dma_cfg zero, zero, zero, 10
0015d0  15009014  dma_cfg zero, zero, r9, 10
0015d4  1500d014  dma_cfg zero, zero, r13, 10
0015d8  15008014  dma_cfg zero, zero, r8, 10
0015dc  1f640000  addli r8, zero, 6
0015e0  1500f014  dma_cfg zero, zero, r15, 10
0015e4  1500a014  dma_cfg zero, zero, r10, 10
0015e8  15008014  dma_cfg zero, zero, r8, 10
0015ec  1f041000  addli r8, zero, 8
0015f0  1500c014  dma_cfg zero, zero, r12, 10
0015f4  15008014  dma_cfg zero, zero, r8, 10
0015f8  1f141000  addli r8, zero, 9
0015fc  15008014  dma_cfg zero, zero, r8, 10
001600  1f241000  addli r8, zero, 10
001604  15008014  dma_cfg zero, zero, r8, 10
001608  1f341000  addli r8, zero, 11
00160c  15008014  dma_cfg zero, zero, r8, 10
001610  1f441000  addli r8, zero, 12
001614  15008014  dma_cfg zero, zero, r8, 10
001618  1f541000  addli r8, zero, 13
00161c  15008014  dma_cfg zero, zero, r8, 10
001620  1f641000  addli r8, zero, 14
001624  15008014  dma_cfg zero, zero, r8, 10
001628  1f741000  addli r8, zero, 15
00162c  15008014  dma_cfg zero, zero, r8, 10
001630  1f142000  addli r8, zero, 17
001634  15000015  dma_cfg zero, zero, r16, 10
001638  15008014  dma_cfg zero, zero, r8, 10
00163c  1f242000  addli r8, zero, 18
001640  15008014  dma_cfg zero, zero, r8, 10
001644  1f342000  addli r8, zero, 19
001648  15008014  dma_cfg zero, zero, r8, 10
00164c  1f442000  addli r8, zero, 20
001650  15008014  dma_cfg zero, zero, r8, 10
001654  1f542000  addli r8, zero, 21
001658  15008014  dma_cfg zero, zero, r8, 10
00165c  1f642000  addli r8, zero, 22
001660  15008014  dma_cfg zero, zero, r8, 10
001664  1f742000  addli r8, zero, 23
001668  15008014  dma_cfg zero, zero, r8, 10
00166c  1f043000  addli r8, zero, 24
001670  15008014  dma_cfg zero, zero, r8, 10
001674  1f143000  addli r8, zero, 25
001678  15008014  dma_cfg zero, zero, r8, 10
00167c  1f243000  addli r8, zero, 26
001680  15008014  dma_cfg zero, zero, r8, 10
001684  1f343000  addli r8, zero, 27
001688  15008014  dma_cfg zero, zero, r8, 10
00168c  1f443000  addli r8, zero, 28
001690  15008014  dma_cfg zero, zero, r8, 10
001694  1f543000  addli r8, zero, 29
001698  15008014  dma_cfg zero, zero, r8, 10
00169c  1f643000  addli r8, zero, 30
0016a0  15008014  dma_cfg zero, zero, r8, 10
0016a4  1f743000  addli r8, zero, 31
0016a8  15008014  dma_cfg zero, zero, r8, 10
0016ac  1f048000  addli r8, zero, 64
0016b0  95840400  dma_cfg r9, r9, zero, 0
0016b4  95040002  dma_cfg r9, zero, zero, 1
0016b8  15000004  dma_cfg zero, zero, zero, 2
0016bc  95098006  dma_cfg r19, zero, r8, 3
0016c0  1f040001  addli r8, zero, 128
0016c4  1504f008  dma_cfg r8, zero, r15, 4
0016c8  1f040004  addli r8, zero, 512
0016cc  1504900a  dma_cfg r8, zero, r9, 5
0016d0  15000010  dma_cfg zero, zero, zero, 8
0016d4  35000000  dma_run zero
0016d8  1500900a  dma_cfg zero, zero, r9, 5
0016dc  15000010  dma_cfg zero, zero, zero, 8
0016e0  1d100500  unlock r10
0016e4  9f470000  addli r15, zero, 4
0016e8  1f150000  addli r10, zero, 1
0016ec  2b440500  lui r8, 84
0016f0  9f048000  addli r9, zero, 64
0016f4  1d800700  lock zero, r15
0016f8  1b140404  ori r8, r8, 64
0016fc  15050500  dma_cfg r10, r10, zero, 0
001700  15800304  dma_cfg zero, r7, zero, 2
001704  0b118110  add.s r2, r2, r8
001708  eb588ff8  load.d r[18:19], -120(r30)
00170c  15019306  dma_cfg r2, r6, r9, 3
001710  9f030002  addli r7, zero, 256
001714  1ff43800  addli r8, r17, 31
001718  1bb31800  slli r6, r17, 1
00171c  9f080001  addli r17, zero, 128
001720  1f090004  addli r18, zero, 512
001724  1b415400  srli r2, r8, 5
001728  1b03e303  andi r6, r6, 62
00172c  1f540000  addli r8, zero, 5
001730  95882408  dma_cfg r17, r9, r2, 4
001734  1589a30a  dma_cfg r18, r7, r10, 5
001738  9f330000  addli r7, zero, 3
00173c  15006010  dma_cfg zero, zero, r6, 8
001740  35000000  dma_run zero
001744  1500a00a  dma_cfg zero, zero, r10, 5
001748  15000010  dma_cfg zero, zero, zero, 8
00174c  1d900700  unlock r15
001750  1d000400  lock zero, r8
001754  15000014  dma_cfg zero, zero, zero, 10
001758  1500a014  dma_cfg zero, zero, r10, 10
00175c  1500d014  dma_cfg zero, zero, r13, 10
001760  9f162000  addli r13, zero, 17
001764  15007014  dma_cfg zero, zero, r7, 10
001768  9f630000  addli r7, zero, 6
00176c  1500f014  dma_cfg zero, zero, r15, 10
001770  15008014  dma_cfg zero, zero, r8, 10
001774  15007014  dma_cfg zero, zero, r7, 10
001778  9f031000  addli r7, zero, 8
00177c  1500c014  dma_cfg zero, zero, r12, 10
001780  15007014  dma_cfg zero, zero, r7, 10
001784  9f131000  addli r7, zero, 9
001788  15007014  dma_cfg zero, zero, r7, 10
00178c  9f231000  addli r7, zero, 10
001790  15007014  dma_cfg zero, zero, r7, 10
001794  9f331000  addli r7, zero, 11
001798  15007014  dma_cfg zero, zero, r7, 10
00179c  9f431000  addli r7, zero, 12
0017a0  15007014  dma_cfg zero, zero, r7, 10
0017a4  9f531000  addli r7, zero, 13
0017a8  15007014  dma_cfg zero, zero, r7, 10
0017ac  9f631000  addli r7, zero, 14
0017b0  15007014  dma_cfg zero, zero, r7, 10
0017b4  9f731000  addli r7, zero, 15
0017b8  15007014  dma_cfg zero, zero, r7, 10
0017bc  15000015  dma_cfg zero, zero, r16, 10
0017c0  1500d014  dma_cfg zero, zero, r13, 10
0017c4  9f262000  addli r13, zero, 18
0017c8  1500d014  dma_cfg zero, zero, r13, 10
0017cc  9f362000  addli r13, zero, 19
0017d0  1500d014  dma_cfg zero, zero, r13, 10
0017d4  9f462000  addli r13, zero, 20
0017d8  1500d014  dma_cfg zero, zero, r13, 10
0017dc  9f562000  addli r13, zero, 21
0017e0  1500d014  dma_cfg zero, zero, r13, 10
0017e4  9f662000  addli r13, zero, 22
0017e8  1500d014  dma_cfg zero, zero, r13, 10
0017ec  9f762000  addli r13, zero, 23
0017f0  1500d014  dma_cfg zero, zero, r13, 10
0017f4  9f063000  addli r13, zero, 24
0017f8  1500d014  dma_cfg zero, zero, r13, 10
0017fc  9f163000  addli r13, zero, 25
001800  1500d014  dma_cfg zero, zero, r13, 10
001804  9f263000  addli r13, zero, 26
001808  1500d014  dma_cfg zero, zero, r13, 10
00180c  9f363000  addli r13, zero, 27
001810  1500d014  dma_cfg zero, zero, r13, 10
001814  9f463000  addli r13, zero, 28
001818  1500d014  dma_cfg zero, zero, r13, 10
00181c  9f563000  addli r13, zero, 29
001820  1500d014  dma_cfg zero, zero, r13, 10
001824  9f663000  addli r13, zero, 30
001828  1500d014  dma_cfg zero, zero, r13, 10
00182c  9f763000  addli r13, zero, 31
001830  1500d014  dma_cfg zero, zero, r13, 10
001834  15050500  dma_cfg r10, r10, zero, 0
001838  15050002  dma_cfg r10, zero, zero, 1
00183c  15000004  dma_cfg zero, zero, zero, 2
001840  95099006  dma_cfg r19, zero, r9, 3
001844  95082008  dma_cfg r17, zero, r2, 4
001848  1509a00a  dma_cfg r18, zero, r10, 5
00184c  15006010  dma_cfg zero, zero, r6, 8
001850  35000000  dma_run zero
001854  1500a00a  dma_cfg zero, zero, r10, 5
001858  15000010  dma_cfg zero, zero, zero, 8
00185c  1d100400  unlock r8
001860  7d800300  xsignal r7, 0
001864  6b548ffa  load.d r[9:10], -88(r30)
001868  5b0e0000  j 112
00186c  1f510000  addli r2, zero, 5
001870  bba12500  bneq r11, r2, 104
001874  1f431000  addli r6, zero, 12
001878  1f010000  addli r2, zero, 0
00187c  ab830000  lui r7, 8
001880  7d100300  xwait r6, 0
001884  1f731000  addli r6, zero, 15
001888  7d100300  xwait r6, 0
00188c  1f230000  addli r6, zero, 2
001890  1d000300  lock zero, r6
001894  2b03803f  lui r6, 260096
001898  0d000002  ew_cfg zero, zero, zero, 1
00189c  0d130300  ewcoeff_cfg r6, r6, zero, 0
0018a0  1f73f000  addli r6, zero, 127
0018a4  0d000304  ew_cfg zero, r6, zero, 2
0018a8  1f130000  addli r6, zero, 1
0018ac  0d030006  ew_cfg r6, zero, zero, 3
0018b0  0b132b10  add.s r6, r22, r2
0018b4  1f010104  addli r2, r2, 512
0018b8  2d033301  dsmadd r6, r6, r19, 0
0018bc  bb5f71fe  bneq r2, r7, -12
0018c0  1f210000  addli r2, zero, 2
0018c4  1d100100  unlock r2
0018c8  1f511000  addli r2, zero, 13
0018cc  7d000100  xsignal r2, 0
0018d0  1f012000  addli r2, zero, 16
0018d4  7d000100  xsignal r2, 0
0018d8  2bc10300  lui r2, 60
0018dc  3d000000  xfence
0018e0  00a00300  mfence { lm, sm, gm }
0018e4  8b192710  add.s r19, r14, r2
0018e8  1f71f001  addli r2, zero, 255
0018ec  80220104  csr_set csr5, r2
0018f0  00e00200  sync_core
0018f4  37d20502  beq r11, zero, 1172
0018f8  1f110000  addli r2, zero, 1
0018fc  3ba82502  bneq r11, r2, 1544
001900  1f011000  addli r2, zero, 8
001904  3d000000  xfence
001908  00a00300  mfence { lm, sm, gm }
00190c  33030128  zext_int2long r[7:8], r2
001910  db030000  j 28
001914  6b538fff  load.d r[7:8], -8(r30)
001918  6b540ffc  load.d r[9:10], -64(r30)
00191c  1f760000  addli r12, zero, 7
001920  13216404  setlt.ul r2, r[9:10], r[7:8]
001924  27130400  addli.d r[7:8], r[9:10], 1
001928  37050100  beq r2, zero, 320
00192c  973cc302  sll.d r[26:27], r[7:8], r12
001930  33040028  zext_int2long r[9:10], zero
001934  73306ffc  store.d r[7:8], -64(r30)
001938  db040000  j 36
00193c  27440400  addli.d r[9:10], r[9:10], 4
001940  0b936910  add.s r6, r19, r6
001944  13214402  setneq.d r2, r[9:10], r[5:6]
001948  73667300  stores.w r7, 12(r6)
00194c  7364b300  stores.w r11, 8(r6)
001950  7362f300  stores.w r15, 4(r6)
001954  7360c300  stores.w r12, 0(r6)
001958  b77e01fe  beq r2, zero, -68
00195c  0b239411  add.ul r[7:8], r[9:10], r[26:27]
001960  1b332300  slli r6, r6, 2
001964  8b136b10  add.s r7, r22, r6
001968  6fc1c300  loads.w r2, 12(r7)
00196c  6fc90300  loads.w r18, 0(r7)
001970  6fc84300  loads.w r16, 4(r7)
001974  efc68300  loads.w r13, 8(r7)
001978  1705c101  and r10, r2, r28
00197c  9383aa04  setlt.u r7, r21, r10
001980  3bb00300  bneq r7, zero, 12
001984  9f030100  addli r7, r2, 0
001988  5b010000  j 8
00198c  97134101  or r7, r2, r20
001990  9788c601  and r17, r13, r28
001994  93851a05  setlt.u r11, r21, r17
001998  3bb00500  bneq r11, zero, 12
00199c  9f850600  addli r11, r13, 0
0019a0  5b010000  j 8
0019a4  97954601  or r11, r13, r20
0019a8  970bc801  and r23, r16, r28
0019ac  13867a05  setlt.u r12, r21, r23
0019b0  3b300600  bneq r12, zero, 12
0019b4  9f070800  addli r15, r16, 0
0019b8  5b010000  j 8
0019bc  97174801  or r15, r16, r20
0019c0  170cc901  and r24, r18, r28
0019c4  13868a05  setlt.u r12, r21, r24
0019c8  3b500600  bneq r12, zero, 20
0019cc  1f060900  addli r12, r18, 0
0019d0  138c8105  setlt.u r24, r3, r24
0019d4  37500c00  beq r24, zero, 20
0019d8  db040000  j 36
0019dc  17164901  or r12, r18, r20
0019e0  138c8105  setlt.u r24, r3, r24
0019e4  3b600c00  bneq r24, zero, 24
0019e8  1b460901  srli r12, r18, 16
0019ec  1b061600  andi r12, r12, 1
0019f0  0b16c910  add.s r12, r18, r12
0019f4  0b161610  add.s r12, r12, r1
0019f8  1706b601  and r12, r12, r27
0019fc  13897105  setlt.u r18, r3, r23
001a00  bb300900  bneq r18, zero, 44
001a04  9b470801  srli r15, r16, 16
001a08  9b871700  andi r15, r15, 1
001a0c  8b17f810  add.s r15, r16, r15
001a10  8b971710  add.s r15, r15, r1
001a14  9787b701  and r15, r15, r27
001a18  13881105  setlt.u r16, r3, r17
001a1c  37600800  beq r16, zero, 24
001a20  1385a104  setlt.u r10, r3, r10
001a24  3b6c05fe  bneq r10, zero, -232
001a28  5b050000  j 40
001a2c  13881105  setlt.u r16, r3, r17
001a30  bb4f08fe  bneq r16, zero, -16
001a34  9bc50601  srli r11, r13, 16
001a38  9b851500  andi r11, r11, 1
001a3c  8b95b610  add.s r11, r13, r11
001a40  8b951510  add.s r11, r11, r1
001a44  9785b501  and r11, r11, r27
001a48  1385a104  setlt.u r10, r3, r10
001a4c  bb4b05fe  bneq r10, zero, -272
001a50  9b430101  srli r7, r2, 16
001a54  9b831300  andi r7, r7, 1
001a58  0b117110  add.s r2, r2, r7
001a5c  0b111110  add.s r2, r2, r1
001a60  9703b101  and r7, r2, r27
001a64  5bdbffff  j -296
001a68  00200100  mfence { sm }
001a6c  80350002  core_id r11
001a70  6b548ffa  load.d r[9:10], -88(r30)
001a74  63413fff  loadli.w r2,  -100(r30)
001a78  3b520102  bneq r2, zero, 1172
001a7c  1f310000  addli r2, zero, 3
001a80  3ba82502  bneq r11, r2, 1544
001a84  1f013000  addli r2, zero, 24
001a88  3d000000  xfence
001a8c  00a00300  mfence { lm, sm, gm }
001a90  33030128  zext_int2long r[7:8], r2
001a94  db030000  j 28
001a98  6b538ffe  load.d r[7:8], -24(r30)
001a9c  6b548fff  load.d r[9:10], -8(r30)
001aa0  1f760000  addli r12, zero, 7
001aa4  13216404  setlt.ul r2, r[9:10], r[7:8]
001aa8  27130400  addli.d r[7:8], r[9:10], 1
001aac  37050100  beq r2, zero, 320
001ab0  973cc302  sll.d r[26:27], r[7:8], r12
001ab4  33040028  zext_int2long r[9:10], zero
001ab8  733c6ffe  store.d r[7:8], -8(r30)
001abc  db040000  j 36
001ac0  27440400  addli.d r[9:10], r[9:10], 4
001ac4  0b936910  add.s r6, r19, r6
001ac8  13214402  setneq.d r2, r[9:10], r[5:6]
001acc  73667300  stores.w r7, 12(r6)
001ad0  7364b300  stores.w r11, 8(r6)
001ad4  7362f300  stores.w r15, 4(r6)
001ad8  7360c300  stores.w r12, 0(r6)
001adc  b77e01fe  beq r2, zero, -68
001ae0  0b239411  add.ul r[7:8], r[9:10], r[26:27]
001ae4  1b332300  slli r6, r6, 2
001ae8  8b136b10  add.s r7, r22, r6
001aec  6fc1c300  loads.w r2, 12(r7)
001af0  6fc90300  loads.w r18, 0(r7)
001af4  6fc84300  loads.w r16, 4(r7)
001af8  efc68300  loads.w r13, 8(r7)
001afc  1705c101  and r10, r2, r28
001b00  9383aa04  setlt.u r7, r21, r10
001b04  3bb00300  bneq r7, zero, 12
001b08  9f030100  addli r7, r2, 0
001b0c  5b010000  j 8
001b10  97134101  or r7, r2, r20
001b14  9788c601  and r17, r13, r28
001b18  93851a05  setlt.u r11, r21, r17
001b1c  3bb00500  bneq r11, zero, 12
001b20  9f850600  addli r11, r13, 0
001b24  5b010000  j 8
001b28  97954601  or r11, r13, r20
001b2c  970bc801  and r23, r16, r28
001b30  13867a05  setlt.u r12, r21, r23
001b34  3b300600  bneq r12, zero, 12
001b38  9f070800  addli r15, r16, 0
001b3c  5b010000  j 8
001b40  97174801  or r15, r16, r20
001b44  170cc901  and r24, r18, r28
001b48  13868a05  setlt.u r12, r21, r24
001b4c  3b500600  bneq r12, zero, 20
001b50  1f060900  addli r12, r18, 0
001b54  138c8105  setlt.u r24, r3, r24
001b58  37500c00  beq r24, zero, 20
001b5c  db040000  j 36
001b60  17164901  or r12, r18, r20
001b64  138c8105  setlt.u r24, r3, r24
001b68  3b600c00  bneq r24, zero, 24
001b6c  1b460901  srli r12, r18, 16
001b70  1b061600  andi r12, r12, 1
001b74  0b16c910  add.s r12, r18, r12
001b78  0b161610  add.s r12, r12, r1
001b7c  1706b601  and r12, r12, r27
001b80  13897105  setlt.u r18, r3, r23
001b84  bb300900  bneq r18, zero, 44
001b88  9b470801  srli r15, r16, 16
001b8c  9b871700  andi r15, r15, 1
001b90  8b17f810  add.s r15, r16, r15
001b94  8b971710  add.s r15, r15, r1
001b98  9787b701  and r15, r15, r27
001b9c  13881105  setlt.u r16, r3, r17
001ba0  37600800  beq r16, zero, 24
001ba4  1385a104  setlt.u r10, r3, r10
001ba8  3b6c05fe  bneq r10, zero, -232
001bac  5b050000  j 40
001bb0  13881105  setlt.u r16, r3, r17
001bb4  bb4f08fe  bneq r16, zero, -16
001bb8  9bc50601  srli r11, r13, 16
001bbc  9b851500  andi r11, r11, 1
001bc0  8b95b610  add.s r11, r13, r11
001bc4  8b951510  add.s r11, r11, r1
001bc8  9785b501  and r11, r11, r27
001bcc  1385a104  setlt.u r10, r3, r10
001bd0  bb4b05fe  bneq r10, zero, -272
001bd4  9b430101  srli r7, r2, 16
001bd8  9b831300  andi r7, r7, 1
001bdc  0b117110  add.s r2, r2, r7
001be0  0b111110  add.s r2, r2, r1
001be4  9703b101  and r7, r2, r27
001be8  5bdbffff  j -296
001bec  00200100  mfence { sm }
001bf0  80350002  core_id r11
001bf4  6b548ffa  load.d r[9:10], -88(r30)
001bf8  63014fff  loadli.w r2,  -96(r30)
001bfc  3b520102  bneq r2, zero, 1172
001c00  1f510000  addli r2, zero, 5
001c04  3ba82502  bneq r11, r2, 1544
001c08  1f015000  addli r2, zero, 40
001c0c  3d000000  xfence
001c10  00a00300  mfence { lm, sm, gm }
001c14  33030128  zext_int2long r[7:8], r2
001c18  db030000  j 28
001c1c  6b538ffd  load.d r[7:8], -40(r30)
001c20  6b548fff  load.d r[9:10], -8(r30)
001c24  1f760000  addli r12, zero, 7
001c28  13216404  setlt.ul r2, r[9:10], r[7:8]
001c2c  27130400  addli.d r[7:8], r[9:10], 1
001c30  37050100  beq r2, zero, 320
001c34  1734c302  sll.d r[9:10], r[7:8], r12
001c38  b30b0028  zext_int2long r[24:25], zero
001c3c  733c6ffe  store.d r[7:8], -8(r30)
001c40  db040000  j 36
001c44  a7cb0b00  addli.d r[24:25], r[24:25], 4
001c48  0b93d910  add.s r6, r19, r13
001c4c  13a14b02  setneq.d r2, r[24:25], r[5:6]
001c50  7366a300  stores.w r10, 12(r6)
001c54  73641301  stores.w r17, 8(r6)
001c58  7362f300  stores.w r15, 4(r6)
001c5c  7360c300  stores.w r12, 0(r6)
001c60  b77e01fe  beq r2, zero, -68
001c64  0ba38b10  add.ul r[7:8], r[24:25], r[9:10]
001c68  9b362300  slli r13, r6, 2
001c6c  0b13db10  add.s r6, r22, r13
001c70  6f41c300  loads.w r2, 12(r6)
001c74  6f4d0300  loads.w r26, 0(r6)
001c78  6f484300  loads.w r16, 4(r6)
001c7c  6f498300  loads.w r18, 8(r6)
001c80  9705c101  and r11, r2, r28
001c84  1383ba04  setlt.u r6, r21, r11
001c88  3b300300  bneq r6, zero, 12
001c8c  1f050100  addli r10, r2, 0
001c90  5b010000  j 8
001c94  17154101  or r10, r2, r20
001c98  970cc901  and r25, r18, r28
001c9c  13839a05  setlt.u r6, r21, r25
001ca0  3b300300  bneq r6, zero, 12
001ca4  9f080900  addli r17, r18, 0
001ca8  5b010000  j 8
001cac  97184901  or r17, r18, r20
001cb0  1703c801  and r6, r16, r28
001cb4  93836a04  setlt.u r7, r21, r6
001cb8  3bb00300  bneq r7, zero, 12
001cbc  9f070800  addli r15, r16, 0
001cc0  5b010000  j 8
001cc4  97174801  or r15, r16, r20
001cc8  9703cd01  and r7, r26, r28
001ccc  13867a04  setlt.u r12, r21, r7
001cd0  3b500600  bneq r12, zero, 20
001cd4  1f060d00  addli r12, r26, 0
001cd8  93837104  setlt.u r7, r3, r7
001cdc  37d00300  beq r7, zero, 20
001ce0  db040000  j 36
001ce4  17164d01  or r12, r26, r20
001ce8  93837104  setlt.u r7, r3, r7
001cec  3be00300  bneq r7, zero, 24
001cf0  9b430d01  srli r7, r26, 16
001cf4  9b831300  andi r7, r7, 1
001cf8  8b137d10  add.s r7, r26, r7
001cfc  8b931310  add.s r7, r7, r1
001d00  1786b301  and r12, r7, r27
001d04  13836104  setlt.u r6, r3, r6
001d08  bb300300  bneq r6, zero, 44
001d0c  1b430801  srli r6, r16, 16
001d10  1b031300  andi r6, r6, 1
001d14  0b136810  add.s r6, r16, r6
001d18  0b131310  add.s r6, r6, r1
001d1c  9707b301  and r15, r6, r27
001d20  13839105  setlt.u r6, r3, r25
001d24  37600300  beq r6, zero, 24
001d28  1383b104  setlt.u r6, r3, r11
001d2c  3b6c03fe  bneq r6, zero, -232
001d30  5b050000  j 40
001d34  13839105  setlt.u r6, r3, r25
001d38  bb4f03fe  bneq r6, zero, -16
001d3c  1b430901  srli r6, r18, 16
001d40  1b031300  andi r6, r6, 1
001d44  0b136910  add.s r6, r18, r6
001d48  0b131310  add.s r6, r6, r1
001d4c  9708b301  and r17, r6, r27
001d50  1383b104  setlt.u r6, r3, r11
001d54  bb4b03fe  bneq r6, zero, -272
001d58  1b430101  srli r6, r2, 16
001d5c  1b031300  andi r6, r6, 1
001d60  0b116110  add.s r2, r2, r6
001d64  0b111110  add.s r2, r2, r1
001d68  1705b101  and r10, r2, r27
001d6c  5bdbffff  j -296
001d70  00200100  mfence { sm }
001d74  80350002  core_id r11
001d78  6b548ffa  load.d r[9:10], -88(r30)
001d7c  1f610000  addli r2, zero, 6
001d80  3ba82502  bneq r11, r2, 1544
001d84  5b920000  j 1168
001d88  3d000000  xfence
001d8c  33030028  zext_int2long r[7:8], zero
001d90  00a00300  mfence { lm, sm, gm }
001d94  73386ffa  store.d r[7:8], -80(r30)
001d98  db030000  j 28
001d9c  6b538ffb  load.d r[7:8], -72(r30)
001da0  6b540ffc  load.d r[9:10], -64(r30)
001da4  1f760000  addli r12, zero, 7
001da8  13216404  setlt.ul r2, r[9:10], r[7:8]
001dac  27130400  addli.d r[7:8], r[9:10], 1
001db0  37050100  beq r2, zero, 320
001db4  eb5c0ffb  load.d r[26:27], -80(r30)
001db8  1734c302  sll.d r[9:10], r[7:8], r12
001dbc  73306ffc  store.d r[7:8], -64(r30)
001dc0  db040000  j 36
001dc4  a7cc0c00  addli.d r[26:27], r[26:27], 4
001dc8  0b93d910  add.s r6, r19, r13
001dcc  13a14c02  setneq.d r2, r[26:27], r[5:6]
001dd0  7366a300  stores.w r10, 12(r6)
001dd4  73641301  stores.w r17, 8(r6)
001dd8  7362f300  stores.w r15, 4(r6)
001ddc  7360c300  stores.w r12, 0(r6)
001de0  b77e01fe  beq r2, zero, -68
001de4  0ba38c10  add.ul r[7:8], r[26:27], r[9:10]
001de8  9b362300  slli r13, r6, 2
001dec  0b13db10  add.s r6, r22, r13
001df0  6f41c300  loads.w r2, 12(r6)
001df4  ef430300  loads.w r7, 0(r6)
001df8  6f484300  loads.w r16, 4(r6)
001dfc  6f498300  loads.w r18, 8(r6)
001e00  9705c101  and r11, r2, r28
001e04  1383ba04  setlt.u r6, r21, r11
001e08  3b300300  bneq r6, zero, 12
001e0c  1f050100  addli r10, r2, 0
001e10  5b010000  j 8
001e14  17154101  or r10, r2, r20
001e18  1703c901  and r6, r18, r28
001e1c  13866a04  setlt.u r12, r21, r6
001e20  3b300600  bneq r12, zero, 12
001e24  9f080900  addli r17, r18, 0
001e28  5b010000  j 8
001e2c  97184901  or r17, r18, r20
001e30  970bc801  and r23, r16, r28
001e34  13867a05  setlt.u r12, r21, r23
001e38  3b300600  bneq r12, zero, 12
001e3c  9f070800  addli r15, r16, 0
001e40  5b010000  j 8
001e44  97174801  or r15, r16, r20
001e48  178cc301  and r24, r7, r28
001e4c  13868a05  setlt.u r12, r21, r24
001e50  3b500600  bneq r12, zero, 20
001e54  1f860300  addli r12, r7, 0
001e58  138c8105  setlt.u r24, r3, r24
001e5c  37500c00  beq r24, zero, 20
001e60  db040000  j 36
001e64  17964301  or r12, r7, r20
001e68  138c8105  setlt.u r24, r3, r24
001e6c  3b600c00  bneq r24, zero, 24
001e70  1bc60301  srli r12, r7, 16
001e74  1b061600  andi r12, r12, 1
001e78  8b93c310  add.s r7, r7, r12
001e7c  8b931310  add.s r7, r7, r1
001e80  1786b301  and r12, r7, r27
001e84  93837105  setlt.u r7, r3, r23
001e88  bbb00300  bneq r7, zero, 44
001e8c  9b430801  srli r7, r16, 16
001e90  9b831300  andi r7, r7, 1
001e94  8b137810  add.s r7, r16, r7
001e98  8b931310  add.s r7, r7, r1
001e9c  9787b301  and r15, r7, r27
001ea0  13836104  setlt.u r6, r3, r6
001ea4  37600300  beq r6, zero, 24
001ea8  1383b104  setlt.u r6, r3, r11
001eac  3b6c03fe  bneq r6, zero, -232
001eb0  5b050000  j 40
001eb4  13836104  setlt.u r6, r3, r6
001eb8  bb4f03fe  bneq r6, zero, -16
001ebc  1b430901  srli r6, r18, 16
001ec0  1b031300  andi r6, r6, 1
001ec4  0b136910  add.s r6, r18, r6
001ec8  0b131310  add.s r6, r6, r1
001ecc  9708b301  and r17, r6, r27
001ed0  1383b104  setlt.u r6, r3, r11
001ed4  bb4b03fe  bneq r6, zero, -272
001ed8  1b430101  srli r6, r2, 16
001edc  1b031300  andi r6, r6, 1
001ee0  0b116110  add.s r2, r2, r6
001ee4  0b111110  add.s r2, r2, r1
001ee8  1705b101  and r10, r2, r27
001eec  5bdbffff  j -296
001ef0  00200100  mfence { sm }
001ef4  80350002  core_id r11
001ef8  6b548ffa  load.d r[9:10], -88(r30)
001efc  1f110000  addli r2, zero, 1
001f00  378825fc  beq r11, r2, -1536
001f04  63413fff  loadli.w r2,  -100(r30)
001f08  b75d01fc  beq r2, zero, -1164
001f0c  1f012000  addli r2, zero, 16
001f10  3d000000  xfence
001f14  00a00300  mfence { lm, sm, gm }
001f18  33030128  zext_int2long r[7:8], r2
001f1c  db030000  j 28
001f20  6b530fff  load.d r[7:8], -16(r30)
001f24  6b548fff  load.d r[9:10], -8(r30)
001f28  1f760000  addli r12, zero, 7
001f2c  13216404  setlt.ul r2, r[9:10], r[7:8]
001f30  27130400  addli.d r[7:8], r[9:10], 1
001f34  37050100  beq r2, zero, 320
001f38  973cc302  sll.d r[26:27], r[7:8], r12
001f3c  33040028  zext_int2long r[9:10], zero
001f40  733c6ffe  store.d r[7:8], -8(r30)
001f44  db040000  j 36
001f48  27440400  addli.d r[9:10], r[9:10], 4
001f4c  0b936910  add.s r6, r19, r6
001f50  13214402  setneq.d r2, r[9:10], r[5:6]
001f54  73667300  stores.w r7, 12(r6)
001f58  7364b300  stores.w r11, 8(r6)
001f5c  7362f300  stores.w r15, 4(r6)
001f60  7360c300  stores.w r12, 0(r6)
001f64  b77e01fe  beq r2, zero, -68
001f68  0b239411  add.ul r[7:8], r[9:10], r[26:27]
001f6c  1b332300  slli r6, r6, 2
001f70  8b136b10  add.s r7, r22, r6
001f74  6fc1c300  loads.w r2, 12(r7)
001f78  6fc90300  loads.w r18, 0(r7)
001f7c  6fc84300  loads.w r16, 4(r7)
001f80  efc68300  loads.w r13, 8(r7)
001f84  1705c101  and r10, r2, r28
001f88  9383aa04  setlt.u r7, r21, r10
001f8c  3bb00300  bneq r7, zero, 12
001f90  9f030100  addli r7, r2, 0
001f94  5b010000  j 8
001f98  97134101  or r7, r2, r20
001f9c  9788c601  and r17, r13, r28
001fa0  93851a05  setlt.u r11, r21, r17
001fa4  3bb00500  bneq r11, zero, 12
001fa8  9f850600  addli r11, r13, 0
001fac  5b010000  j 8
001fb0  97954601  or r11, r13, r20
001fb4  970bc801  and r23, r16, r28
001fb8  13867a05  setlt.u r12, r21, r23
001fbc  3b300600  bneq r12, zero, 12
001fc0  9f070800  addli r15, r16, 0
001fc4  5b010000  j 8
001fc8  97174801  or r15, r16, r20
001fcc  170cc901  and r24, r18, r28
001fd0  13868a05  setlt.u r12, r21, r24
001fd4  3b500600  bneq r12, zero, 20
001fd8  1f060900  addli r12, r18, 0
001fdc  138c8105  setlt.u r24, r3, r24
001fe0  37500c00  beq r24, zero, 20
001fe4  db040000  j 36
001fe8  17164901  or r12, r18, r20
001fec  138c8105  setlt.u r24, r3, r24
001ff0  3b600c00  bneq r24, zero, 24
001ff4  1b460901  srli r12, r18, 16
001ff8  1b061600  andi r12, r12, 1
001ffc  0b16c910  add.s r12, r18, r12
002000  0b161610  add.s r12, r12, r1
002004  1706b601  and r12, r12, r27
002008  13897105  setlt.u r18, r3, r23
00200c  bb300900  bneq r18, zero, 44
002010  9b470801  srli r15, r16, 16
002014  9b871700  andi r15, r15, 1
002018  8b17f810  add.s r15, r16, r15
00201c  8b971710  add.s r15, r15, r1
002020  9787b701  and r15, r15, r27
002024  13881105  setlt.u r16, r3, r17
002028  37600800  beq r16, zero, 24
00202c  1385a104  setlt.u r10, r3, r10
002030  3b6c05fe  bneq r10, zero, -232
002034  5b050000  j 40
002038  13881105  setlt.u r16, r3, r17
00203c  bb4f08fe  bneq r16, zero, -16
002040  9bc50601  srli r11, r13, 16
002044  9b851500  andi r11, r11, 1
002048  8b95b610  add.s r11, r13, r11
00204c  8b951510  add.s r11, r11, r1
002050  9785b501  and r11, r11, r27
002054  1385a104  setlt.u r10, r3, r10
002058  bb4b05fe  bneq r10, zero, -272
00205c  9b430101  srli r7, r2, 16
002060  9b831300  andi r7, r7, 1
002064  0b117110  add.s r2, r2, r7
002068  0b111110  add.s r2, r2, r1
00206c  9703b101  and r7, r2, r27
002070  5bdbffff  j -296
002074  00200100  mfence { sm }
002078  80350002  core_id r11
00207c  6b548ffa  load.d r[9:10], -88(r30)
002080  1f310000  addli r2, zero, 3
002084  378825fc  beq r11, r2, -1536
002088  63014fff  loadli.w r2,  -96(r30)
00208c  b75d01fc  beq r2, zero, -1164
002090  1f014000  addli r2, zero, 32
002094  3d000000  xfence
002098  00a00300  mfence { lm, sm, gm }
00209c  33030128  zext_int2long r[7:8], r2
0020a0  db030000  j 28
0020a4  6b530ffe  load.d r[7:8], -32(r30)
0020a8  6b548fff  load.d r[9:10], -8(r30)
0020ac  1f760000  addli r12, zero, 7
0020b0  13216404  setlt.ul r2, r[9:10], r[7:8]
0020b4  27130400  addli.d r[7:8], r[9:10], 1
0020b8  37050100  beq r2, zero, 320
0020bc  973bc302  sll.d r[24:25], r[7:8], r12
0020c0  b30c0028  zext_int2long r[26:27], zero
0020c4  733c6ffe  store.d r[7:8], -8(r30)
0020c8  db040000  j 36
0020cc  a7cc0c00  addli.d r[26:27], r[26:27], 4
0020d0  0b936910  add.s r6, r19, r6
0020d4  13a14c02  setneq.d r2, r[26:27], r[5:6]
0020d8  73667300  stores.w r7, 12(r6)
0020dc  7364b300  stores.w r11, 8(r6)
0020e0  7362f300  stores.w r15, 4(r6)
0020e4  7360c300  stores.w r12, 0(r6)
0020e8  b77e01fe  beq r2, zero, -68
0020ec  0ba37c11  add.ul r[7:8], r[26:27], r[24:25]
0020f0  1b332300  slli r6, r6, 2
0020f4  8b136b10  add.s r7, r22, r6
0020f8  6fc1c300  loads.w r2, 12(r7)
0020fc  6fc90300  loads.w r18, 0(r7)
002100  6fc84300  loads.w r16, 4(r7)
002104  efc68300  loads.w r13, 8(r7)
002108  1705c101  and r10, r2, r28
00210c  9383aa04  setlt.u r7, r21, r10
002110  3bb00300  bneq r7, zero, 12
002114  9f030100  addli r7, r2, 0
002118  5b010000  j 8
00211c  97134101  or r7, r2, r20
002120  9788c601  and r17, r13, r28
002124  13841a05  setlt.u r8, r21, r17
002128  3b300400  bneq r8, zero, 12
00212c  9f850600  addli r11, r13, 0
002130  5b010000  j 8
002134  97954601  or r11, r13, r20
002138  1704c801  and r8, r16, r28
00213c  93848a04  setlt.u r9, r21, r8
002140  3bb00400  bneq r9, zero, 12
002144  9f070800  addli r15, r16, 0
002148  5b010000  j 8
00214c  97174801  or r15, r16, r20
002150  9704c901  and r9, r18, r28
002154  13869a04  setlt.u r12, r21, r9
002158  3b500600  bneq r12, zero, 20
00215c  1f060900  addli r12, r18, 0
002160  93849104  setlt.u r9, r3, r9
002164  37d00400  beq r9, zero, 20
002168  db040000  j 36
00216c  17164901  or r12, r18, r20
002170  93849104  setlt.u r9, r3, r9
002174  3be00400  bneq r9, zero, 24
002178  9b440901  srli r9, r18, 16
00217c  9b841400  andi r9, r9, 1
002180  8b149910  add.s r9, r18, r9
002184  8b941410  add.s r9, r9, r1
002188  1786b401  and r12, r9, r27
00218c  13848104  setlt.u r8, r3, r8
002190  bb300400  bneq r8, zero, 44
002194  1b440801  srli r8, r16, 16
002198  1b041400  andi r8, r8, 1
00219c  0b148810  add.s r8, r16, r8
0021a0  0b141410  add.s r8, r8, r1
0021a4  9707b401  and r15, r8, r27
0021a8  13841105  setlt.u r8, r3, r17
0021ac  37600400  beq r8, zero, 24
0021b0  1384a104  setlt.u r8, r3, r10
0021b4  3b6c04fe  bneq r8, zero, -232
0021b8  5b050000  j 40
0021bc  13841105  setlt.u r8, r3, r17
0021c0  bb4f04fe  bneq r8, zero, -16
0021c4  1bc40601  srli r8, r13, 16
0021c8  1b041400  andi r8, r8, 1
0021cc  0b948610  add.s r8, r13, r8
0021d0  0b141410  add.s r8, r8, r1
0021d4  9705b401  and r11, r8, r27
0021d8  1384a104  setlt.u r8, r3, r10
0021dc  bb4b04fe  bneq r8, zero, -272
0021e0  9b430101  srli r7, r2, 16
0021e4  9b831300  andi r7, r7, 1
0021e8  0b117110  add.s r2, r2, r7
0021ec  0b111110  add.s r2, r2, r1
0021f0  9703b101  and r7, r2, r27
0021f4  5bdbffff  j -296
0021f8  00200100  mfence { sm }
0021fc  80350002  core_id r11
002200  6b548ffa  load.d r[9:10], -88(r30)
002204  1f510000  addli r2, zero, 5
002208  378825fc  beq r11, r2, -1536
00220c  1f610000  addli r2, zero, 6
002210  bbe52500  bneq r11, r2, 376
002214  1f016000  addli r2, zero, 48
002218  3d000000  xfence
00221c  00a00300  mfence { lm, sm, gm }
002220  33030128  zext_int2long r[7:8], r2
002224  db030000  j 28
002228  6b530ffd  load.d r[7:8], -48(r30)
00222c  6b548fff  load.d r[9:10], -8(r30)
002230  1f760000  addli r12, zero, 7
002234  13216404  setlt.ul r2, r[9:10], r[7:8]
002238  27130400  addli.d r[7:8], r[9:10], 1
00223c  37050100  beq r2, zero, 320
002240  1734c302  sll.d r[9:10], r[7:8], r12
002244  33050028  zext_int2long r[11:12], zero
002248  733c6ffe  store.d r[7:8], -8(r30)
00224c  db040000  j 36
002250  27450500  addli.d r[11:12], r[11:12], 4
002254  0b93d910  add.s r6, r19, r13
002258  13214502  setneq.d r2, r[11:12], r[5:6]
00225c  73667301  stores.w r23, 12(r6)
002260  73641301  stores.w r17, 8(r6)
002264  7362f300  stores.w r15, 4(r6)
002268  7360c300  stores.w r12, 0(r6)
00226c  b77e01fe  beq r2, zero, -68
002270  0b238510  add.ul r[7:8], r[11:12], r[9:10]
002274  9b362300  slli r13, r6, 2
002278  0b13db10  add.s r6, r22, r13
00227c  6f41c300  loads.w r2, 12(r6)
002280  6f4d0300  loads.w r26, 0(r6)
002284  6f484300  loads.w r16, 4(r6)
002288  6f498300  loads.w r18, 8(r6)
00228c  170cc101  and r24, r2, r28
002290  13838a05  setlt.u r6, r21, r24
002294  3b300300  bneq r6, zero, 12
002298  9f0b0100  addli r23, r2, 0
00229c  5b010000  j 8
0022a0  971b4101  or r23, r2, r20
0022a4  970cc901  and r25, r18, r28
0022a8  13839a05  setlt.u r6, r21, r25
0022ac  3b300300  bneq r6, zero, 12
0022b0  9f080900  addli r17, r18, 0
0022b4  5b010000  j 8
0022b8  97184901  or r17, r18, r20
0022bc  1703c801  and r6, r16, r28
0022c0  93836a04  setlt.u r7, r21, r6
0022c4  3bb00300  bneq r7, zero, 12
0022c8  9f070800  addli r15, r16, 0
0022cc  5b010000  j 8
0022d0  97174801  or r15, r16, r20
0022d4  9703cd01  and r7, r26, r28
0022d8  13867a04  setlt.u r12, r21, r7
0022dc  3b500600  bneq r12, zero, 20
0022e0  1f060d00  addli r12, r26, 0
0022e4  93837104  setlt.u r7, r3, r7
0022e8  37d00300  beq r7, zero, 20
0022ec  db040000  j 36
0022f0  17164d01  or r12, r26, r20
0022f4  93837104  setlt.u r7, r3, r7
0022f8  3be00300  bneq r7, zero, 24
0022fc  9b430d01  srli r7, r26, 16
002300  9b831300  andi r7, r7, 1
002304  8b137d10  add.s r7, r26, r7
002308  8b931310  add.s r7, r7, r1
00230c  1786b301  and r12, r7, r27
002310  13836104  setlt.u r6, r3, r6
002314  bb300300  bneq r6, zero, 44
002318  1b430801  srli r6, r16, 16
00231c  1b031300  andi r6, r6, 1
002320  0b136810  add.s r6, r16, r6
002324  0b131310  add.s r6, r6, r1
002328  9707b301  and r15, r6, r27
00232c  13839105  setlt.u r6, r3, r25
002330  37600300  beq r6, zero, 24
002334  13838105  setlt.u r6, r3, r24
002338  3b6c03fe  bneq r6, zero, -232
00233c  5b050000  j 40
002340  13839105  setlt.u r6, r3, r25
002344  bb4f03fe  bneq r6, zero, -16
002348  1b430901  srli r6, r18, 16
00234c  1b031300  andi r6, r6, 1
002350  0b136910  add.s r6, r18, r6
002354  0b131310  add.s r6, r6, r1
002358  9708b301  and r17, r6, r27
00235c  13838105  setlt.u r6, r3, r24
002360  bb4b03fe  bneq r6, zero, -272
002364  1b430101  srli r6, r2, 16
002368  1b031300  andi r6, r6, 1
00236c  0b116110  add.s r2, r2, r6
002370  0b111110  add.s r2, r2, r1
002374  970bb101  and r23, r2, r27
002378  5bdbffff  j -296
00237c  00200100  mfence { sm }
002380  80350002  core_id r11
002384  6b548ffa  load.d r[9:10], -88(r30)
002388  63414fff  loadli.w r2,  -92(r30)
00238c  33030028  zext_int2long r[7:8], zero
002390  73386ffe  store.d r[7:8], -16(r30)
002394  b7650100  beq r2, zero, 376
002398  1f017000  addli r2, zero, 56
00239c  3d000000  xfence
0023a0  00a00300  mfence { lm, sm, gm }
0023a4  33030128  zext_int2long r[7:8], r2
0023a8  db030000  j 28
0023ac  6b538ffc  load.d r[7:8], -56(r30)
0023b0  6b548fff  load.d r[9:10], -8(r30)
0023b4  1f760000  addli r12, zero, 7
0023b8  13216404  setlt.ul r2, r[9:10], r[7:8]
0023bc  27130400  addli.d r[7:8], r[9:10], 1
0023c0  37050100  beq r2, zero, 320
0023c4  eb580fff  load.d r[18:19], -16(r30)
0023c8  1735c302  sll.d r[11:12], r[7:8], r12
0023cc  733c6ffe  store.d r[7:8], -8(r30)
0023d0  db040000  j 36
0023d4  a7c80800  addli.d r[18:19], r[18:19], 4
0023d8  0b93d910  add.s r6, r19, r13
0023dc  13a14802  setneq.d r2, r[18:19], r[5:6]
0023e0  73667301  stores.w r23, 12(r6)
0023e4  73649301  stores.w r25, 8(r6)
0023e8  7362f300  stores.w r15, 4(r6)
0023ec  7360c300  stores.w r12, 0(r6)
0023f0  b77e01fe  beq r2, zero, -68
0023f4  0ba3a810  add.ul r[7:8], r[18:19], r[11:12]
0023f8  9b362300  slli r13, r6, 2
0023fc  0b13db10  add.s r6, r22, r13
002400  6f41c300  loads.w r2, 12(r6)
002404  ef430300  loads.w r7, 0(r6)
002408  6f484300  loads.w r16, 4(r6)
00240c  6f4d8300  loads.w r26, 8(r6)
002410  170cc101  and r24, r2, r28
002414  13838a05  setlt.u r6, r21, r24
002418  3b300300  bneq r6, zero, 12
00241c  9f0b0100  addli r23, r2, 0
002420  5b010000  j 8
002424  971b4101  or r23, r2, r20
002428  1703cd01  and r6, r26, r28
00242c  13846a04  setlt.u r8, r21, r6
002430  3b300400  bneq r8, zero, 12
002434  9f0c0d00  addli r25, r26, 0
002438  5b010000  j 8
00243c  971c4d01  or r25, r26, r20
002440  1704c801  and r8, r16, r28
002444  93848a04  setlt.u r9, r21, r8
002448  3bb00400  bneq r9, zero, 12
00244c  9f070800  addli r15, r16, 0
002450  5b010000  j 8
002454  97174801  or r15, r16, r20
002458  9784c301  and r9, r7, r28
00245c  13869a04  setlt.u r12, r21, r9
002460  3b500600  bneq r12, zero, 20
002464  1f860300  addli r12, r7, 0
002468  93849104  setlt.u r9, r3, r9
00246c  37d00400  beq r9, zero, 20
002470  db040000  j 36
002474  17964301  or r12, r7, r20
002478  93849104  setlt.u r9, r3, r9
00247c  3be00400  bneq r9, zero, 24
002480  9bc40301  srli r9, r7, 16
002484  9b841400  andi r9, r9, 1
002488  8b939310  add.s r7, r7, r9
00248c  8b931310  add.s r7, r7, r1
002490  1786b301  and r12, r7, r27
002494  93838104  setlt.u r7, r3, r8
002498  bbb00300  bneq r7, zero, 44
00249c  9b430801  srli r7, r16, 16
0024a0  9b831300  andi r7, r7, 1
0024a4  8b137810  add.s r7, r16, r7
0024a8  8b931310  add.s r7, r7, r1
0024ac  9787b301  and r15, r7, r27
0024b0  13836104  setlt.u r6, r3, r6
0024b4  37600300  beq r6, zero, 24
0024b8  13838105  setlt.u r6, r3, r24
0024bc  3b6c03fe  bneq r6, zero, -232
0024c0  5b050000  j 40
0024c4  13836104  setlt.u r6, r3, r6
0024c8  bb4f03fe  bneq r6, zero, -16
0024cc  1b430d01  srli r6, r26, 16
0024d0  1b031300  andi r6, r6, 1
0024d4  0b136d10  add.s r6, r26, r6
0024d8  0b131310  add.s r6, r6, r1
0024dc  970cb301  and r25, r6, r27
0024e0  13838105  setlt.u r6, r3, r24
0024e4  bb4b03fe  bneq r6, zero, -272
0024e8  1b430101  srli r6, r2, 16
0024ec  1b031300  andi r6, r6, 1
0024f0  0b116110  add.s r2, r2, r6
0024f4  0b111110  add.s r2, r2, r1
0024f8  970bb101  and r23, r2, r27
0024fc  5bdbffff  j -296
002500  00200100  mfence { sm }
002504  80350002  core_id r11
002508  6b548ffa  load.d r[9:10], -88(r30)
00250c  1f71f001  addli r2, zero, 255
002510  1f790000  addli r18, zero, 7
002514  9f370000  addli r15, zero, 3
002518  80220104  csr_set csr5, r2
00251c  00e00200  sync_core
002520  b7c3f5ee  beq r11, r15, -8976
002524  1f088000  addli r16, zero, 64
002528  9f180000  addli r17, zero, 1
00252c  9f591000  addli r19, zero, 13
002530  1f2b0000  addli r22, zero, 2
002534  bbf305ee  bneq r11, zero, -8964
002538  6341fffe  loadli.w r2,  -132(r30)
00253c  6b568f01  load.d r[13:14], 24(r30)
002540  1f550000  addli r10, zero, 5
002544  6b530fff  load.d r[7:8], -16(r30)
002548  1b316100  slli r2, r2, 6
00254c  33120128  sext_int2long r[5:6], r2
002550  1f112000  addli r2, zero, 17
002554  17342402  sll.d r[9:10], r[9:10], r2
002558  7d100100  xwait r2, 0
00255c  1d000500  lock zero, r10
002560  0b336240  min.sl r[7:8], r[5:6], r[7:8]
002564  2bc10300  lui r2, 60
002568  0b248610  add.ul r[9:10], r[13:14], r[9:10]
00256c  6b560ff8  load.d r[13:14], -128(r30)
002570  27038300  addli.d r[7:8], r[7:8], 64
002574  95880800  dma_cfg r17, r17, zero, 0
002578  1b110104  ori r2, r2, 64
00257c  15800802  dma_cfg zero, r17, zero, 1
002580  0b334348  max.sl r[7:8], r[7:8], r[5:6]
002584  0b112710  add.s r2, r14, r2
002588  0b24c410  add.ul r[9:10], r[9:10], r[13:14]
00258c  0b324318  sub.sl r[5:6], r[7:8], r[5:6]
002590  33030828  zext_int2long r[7:8], r16
002594  95040004  dma_cfg r9, zero, zero, 2
002598  6b568ff8  load.d r[13:14], -120(r30)
00259c  0b326240  min.sl r[5:6], r[5:6], r[7:8]
0025a0  15040107  dma_cfg r8, r2, r16, 3
0025a4  9f030001  addli r7, zero, 128
0025a8  1f733600  addli r6, r12, 31
0025ac  1b415300  srli r2, r6, 5
0025b0  1b331600  slli r6, r12, 1
0025b4  15882308  dma_cfg r16, r7, r2, 4
0025b8  1b01e303  andi r2, r6, 62
0025bc  1f030004  addli r6, zero, 512
0025c0  9f030010  addli r7, zero, 2048
0025c4  9503430a  dma_cfg r7, r6, r4, 5
0025c8  15002010  dma_cfg zero, zero, r2, 8
0025cc  35000000  dma_run zero
0025d0  1500100b  dma_cfg zero, zero, r17, 5
0025d4  1f212000  addli r2, zero, 18
0025d8  15000010  dma_cfg zero, zero, zero, 8
0025dc  1d100500  unlock r10
0025e0  db89fbff  j -9140
0025e4  1f440000  addli r8, zero, 4
0025e8  1f011000  addli r2, zero, 8
0025ec  1f030000  addli r6, zero, 0
0025f0  9f120000  addli r5, zero, 1
0025f4  9f331000  addli r7, zero, 11
0025f8  7d100400  xwait r8, 0
0025fc  7d100100  xwait r2, 0
002600  1f110000  addli r2, zero, 1
002604  7d900300  xwait r7, 0
002608  9b33e300  slli r7, r6, 14
00260c  1b338300  slli r6, r6, 8
002610  1d000100  lock zero, r2
002614  09080801  mm_cfg r16, r16, r16, 0
002618  9793e300  or r7, r7, r14
00261c  1713e300  or r6, r6, r14
002620  09042404  mm_cfg r8, r8, r2, 2
002624  29037210  mm r6, r4, r7, 8
002628  9b831200  andi r7, r5, 1
00262c  1f130000  addli r6, zero, 1
002630  9f020000  addli r5, zero, 0
002634  1d100100  unlock r2
002638  3bcf03fe  bneq r7, zero, -48
00263c  1f510000  addli r2, zero, 5
002640  674a0ffe  storeli.w zero, -92(r30)
002644  7d000100  xsignal r2, 0
002648  1f111000  addli r2, zero, 9
00264c  7d000100  xsignal r2, 0
002650  1f110000  addli r2, zero, 1
002654  670a2ffe  storeli.w r2, -96(r30)
002658  1f211000  addli r2, zero, 10
00265c  7d000100  xsignal r2, 0
002660  3be8f5f0  bneq r11, r15, -7656
002664  db40fcff  j -7676
002668  670a0ffe  storeli.w zero, -96(r30)
00266c  674a0ffe  storeli.w zero, -92(r30)
002670  b7e7f5f0  beq r11, r15, -7688
002674  db40fcff  j -7676
002678  7d000000  xsignal zero, 0
00267c  bbe00500  bneq r11, zero, 56
002680  9f200000  addli r1, zero, 2
002684  7d100000  xwait zero, 0
002688  7d100000  xwait zero, 0
00268c  7d100000  xwait zero, 0
002690  7d100000  xwait zero, 0
002694  7d100000  xwait zero, 0
002698  7d100000  xwait zero, 0
00269c  7d100000  xwait zero, 0
0026a0  7d100000  xwait zero, 0
0026a4  1d800000  lock zero, r1
0026a8  0d000020  ew_cfg zero, zero, zero, 16
0026ac  1d900000  unlock r1
0026b0  7d400000  xsignal_mode_cfg zero
0026b4  9f8e2e01  addli sp, sp, 144
0026b8  00a00300  mfence { lm, sm, gm }
0026bc  00100000  exit
0026c0  00100000  exit
0026c4  00100000  exit
0026c8  00100000  exit
0026cc  00100000  exit
0026d0  00100000  exit
0026d4  00100000  exit
0026d8  00100000  exit
0026dc  00100000  exit
0026e0  00100000  exit
0026e4  00100000  exit
0026e8  00100000  exit
0026ec  00100000  exit
0026f0  00100000  exit
0026f4  00100000  exit
0026f8  00100000  exit
0026fc  00100000  exit
002700  00100000  exit
002704  00100000  exit
002708  00100000  exit
00270c  00100000  exit
002710  00100000  exit
002714  00100000  exit
002718  00100000  exit
00271c  00100000  exit
002720  00100000  exit
002724  00100000  exit
002728  00100000  exit
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
