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
0000b4  9f8e3eff  addli sp, sp, -104
0000b8  9f100000  addli r1, zero, 1
0000bc  003c0002  core_id r24
0000c0  1f8f5e00  addli r30, sp, 40
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100c00  beq r24, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b90f1ff  ori r1, r3, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db240000  j 292
0000ec  9f220000  addli r5, zero, 2
0000f0  fdd00000  uni_sram_cfg r1, r1
0000f4  1f430000  addli r6, zero, 4
0000f8  eb510f02  load.d r[4:5], 32(r30)
0000fc  9f030020  addli r7, zero, 4096
000100  1d800200  lock zero, r5
000104  8d000020  ew_cfg r1, zero, zero, 16
000108  1d900200  unlock r5
00010c  1d000300  lock zero, r6
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15000204  dma_cfg zero, r4, zero, 2
000118  15807106  dma_cfg zero, r3, r7, 3
00011c  9f014000  addli r3, zero, 32
000120  1f020008  addli r4, zero, 1024
000124  15001008  dma_cfg zero, zero, r1, 4
000128  35000000  dma_run zero
00012c  1d100300  unlock r6
000130  7d800000  xsignal r1, 0
000134  7d900000  xwait r1, 0
000138  1d000000  lock zero, zero
00013c  81020000  ds_cfg r5, zero, 0
000140  01000002  ds_cfg zero, zero, 1
000144  01000016  ds_cfg zero, zero, 11
000148  8101001a  ds_cfg r3, zero, 13
00014c  9f310000  addli r3, zero, 3
000150  0102001c  ds_cfg r4, zero, 14
000154  a1134008  shuffle_batch r7, zero, r4, 4
000158  1d100000  unlock zero
00015c  7d800000  xsignal r1, 0
000160  7d900000  xwait r1, 0
000164  1d800200  lock zero, r5
000168  ab100100  lui r1, 17
00016c  0da00300  ewtable_cfg r7, 0
000170  0da00002  ewtable_cfg r1, 1
000174  abf0ffff  lui r1, 1048575
000178  1d900200  unlock r5
00017c  7d000000  xsignal zero, 0
000180  7d100000  xwait zero, 0
000184  9b90f0ff  ori r1, r1, 4095
000188  80a10004  csr_set csr3, r1
00018c  9f500000  addli r1, zero, 5
000190  00d00100  sync_group
000194  7d800000  xsignal r1, 0
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  7d800100  xsignal r3, 0
0001a4  7d800100  xsignal r3, 0
0001a8  7d800100  xsignal r3, 0
0001ac  9f101000  addli r1, zero, 9
0001b0  9f710000  addli r3, zero, 7
0001b4  7d800000  xsignal r1, 0
0001b8  7d800000  xsignal r1, 0
0001bc  7d800000  xsignal r1, 0
0001c0  7d800100  xsignal r3, 0
0001c4  7d800100  xsignal r3, 0
0001c8  7d800100  xsignal r3, 0
0001cc  9f301000  addli r1, zero, 11
0001d0  9f511000  addli r3, zero, 13
0001d4  7d800000  xsignal r1, 0
0001d8  7d800000  xsignal r1, 0
0001dc  7d800000  xsignal r1, 0
0001e0  7d800100  xsignal r3, 0
0001e4  7d800100  xsignal r3, 0
0001e8  7d800100  xsignal r3, 0
0001ec  9f701000  addli r1, zero, 15
0001f0  9f012000  addli r3, zero, 16
0001f4  7d800000  xsignal r1, 0
0001f8  7d800000  xsignal r1, 0
0001fc  7d800000  xsignal r1, 0
000200  7d800100  xsignal r3, 0
000204  7d800100  xsignal r3, 0
000208  7d800100  xsignal r3, 0
00020c  e3005f00  loadli.w r1,  40(r30)
000210  e3415f00  loadli.w r3,  44(r30)
000214  80d20002  load_param_i r5, 1
000218  63026f00  loadli.w r4,  48(r30)
00021c  8b901120  mul.s r1, r3, r1
000220  9f810200  addli r3, r5, 0
000224  8b914050  fmac.s r3, r1, r4
000228  0b924020  mul.s r4, r1, r4
00022c  9ff1f1ff  addli r3, r3, -1
000230  8b915130  div.s r3, r3, r5
000234  80520002  load_param_i r5, 0
000238  8b905120  mul.s r1, r3, r5
00023c  8b915150  fmac.s r3, r3, r5
000240  8b914140  min.s r3, r3, r4
000244  cbf41102  ble.s r3, r1, 1340
000248  33910128  sext_int2long r[3:4], r3
00024c  33930028  sext_int2long r[7:8], r1
000250  1f048000  addli r8, zero, 64
000254  9f041000  addli r9, zero, 8
000258  9f750000  addli r11, zero, 7
00025c  1f160000  addli r12, zero, 1
000260  9f490000  addli r19, zero, 4
000264  1f2d0000  addli r26, zero, 2
000268  ab8c0000  lui r25, 8
00026c  9f0d0000  addli r27, zero, 0
000270  733c2ffe  store.d r[3:4], -8(r30)
000274  1f71f00f  addli r2, zero, 2047
000278  ab410500  lui r3, 84
00027c  ab80ffff  lui r1, 1048568
000280  73381ffe  store.d r[2:3], -16(r30)
000284  abc00300  lui r1, 60
000288  9b900060  ori r1, r1, 1536
00028c  e74e1ffe  storeli.w r1, -20(r30)
000290  ab800d00  lui r1, 216
000294  9b90d0b4  ori r1, r1, 2893
000298  e70e1ffe  storeli.w r1, -24(r30)
00029c  9b900160  ori r1, r3, 1536
0002a0  abf17f7f  lui r3, 522239
0002a4  674e1ffe  storeli.w r1, -28(r30)
0002a8  abf07fff  lui r1, 1046527
0002ac  9b90f0ff  ori r1, r1, 4095
0002b0  670e1ffe  storeli.w r1, -32(r30)
0002b4  9b90f1ff  ori r1, r3, 4095
0002b8  e74d1ffe  storeli.w r1, -36(r30)
0002bc  e3006f00  loadli.w r1,  48(r30)
0002c0  63415f00  loadli.w r2,  44(r30)
0002c4  8b101330  div.s r1, r6, r1
0002c8  8b902030  div.s r1, r1, r2
0002cc  1f018003  addli r2, zero, 448
0002d0  b3060128  zext_int2long r[14:15], r2
0002d4  8b918030  div.s r3, r1, r8
0002d8  1bb23100  slli r4, r3, 3
0002dc  9bb16100  slli r3, r3, 6
0002e0  8b924418  sub.s r5, r9, r4
0002e4  8b913018  sub.s r3, r1, r3
0002e8  8b929240  min.s r5, r5, r9
0002ec  0b955038  mod.s r10, r1, r5
0002f0  9f300000  addli r1, zero, 3
0002f4  8b971d38  mod.s r15, r27, r1
0002f8  8b905130  div.s r1, r3, r5
0002fc  0b1ea210  add.s r28, r4, r10
000300  b3810028  zext_int2long r[4:5], r1
000304  1bb9e700  slli r18, r15, 14
000308  330b0e28  zext_int2long r[23:24], r28
00030c  17b8b102  sll.d r[17:18], r[4:5], r11
000310  3b70cc00  bneq r24, r12, 28
000314  9381c505  setlt.u r3, r11, r28
000318  1f411000  addli r2, zero, 12
00031c  17352b02  sll.d r[11:12], r[23:24], r2
000320  3bb10100  bneq r3, zero, 76
000324  b3010028  zext_int2long r[4:5], zero
000328  db090000  j 76
00032c  3b66ac01  bneq r24, r26, 408
000330  1f510000  addli r2, zero, 5
000334  7d100d00  xwait r26, 0
000338  1bbaf700  slli r20, r15, 15
00033c  7d100100  xwait r2, 0
000340  1d000000  lock zero, zero
000344  1f310000  addli r2, zero, 3
000348  010d0000  ds_cfg r26, zero, 0
00034c  01040002  ds_cfg r8, zero, 1
000350  0104001c  ds_cfg r8, zero, 14
000354  0104001a  ds_cfg r8, zero, 13
000358  21198902  shuffle_batch r18, r18, r8, 1
00035c  1d100000  unlock zero
000360  7d000100  xsignal r2, 0
000364  7d800900  xsignal r19, 0
000368  db0c0000  j 100
00036c  6b510fff  load.d r[3:4], -16(r30)
000370  97012502  and.d r[4:5], r[11:12], r[3:4]
000374  1f610000  addli r2, zero, 6
000378  8b313518  sub.sl r[4:5], r[11:12], r[4:5]
00037c  6b5a0f00  load.d r[21:22], 0(r30)
000380  97d12102  sra.d r[4:5], r[4:5], r2
000384  1f611000  addli r2, zero, 14
000388  0bb5d140  min.sl r[11:12], r[4:5], r[14:15]
00038c  8b313518  sub.sl r[4:5], r[11:12], r[4:5]
000390  17352b02  sll.d r[11:12], r[23:24], r2
000394  1f310000  addli r2, zero, 3
000398  7d100100  xwait r2, 0
00039c  1d800900  lock zero, r19
0003a0  0b25aa10  add.ul r[11:12], r[21:22], r[11:12]
0003a4  1f010002  addli r2, zero, 256
0003a8  9f818100  addli r3, r3, 64
0003ac  1bbaf700  slli r20, r15, 15
0003b0  15000000  dma_cfg zero, zero, zero, 0
0003b4  15800504  dma_cfg zero, r11, zero, 2
0003b8  15092506  dma_cfg r18, r10, r2, 3
0003bc  15013108  dma_cfg r2, r2, r3, 4
0003c0  35000000  dma_run zero
0003c4  1d900900  unlock r19
0003c8  7d000d00  xsignal r26, 0
0003cc  9bb07000  slli r1, r1, 7
0003d0  1f010007  addli r2, zero, 896
0003d4  9bb29700  slli r5, r15, 9
0003d8  33850028  zext_int2long r[11:12], r1
0003dc  b3010128  zext_int2long r[4:5], r2
0003e0  9f000001  addli r1, zero, 128
0003e4  8b213540  min.ul r[4:5], r[11:12], r[4:5]
0003e8  b3800028  zext_int2long r[2:3], r1
0003ec  a7810101  addli.d r[4:5], r[4:5], 128
0003f0  8ba1a148  max.ul r[4:5], r[4:5], r[11:12]
0003f4  8bb1a118  sub.sl r[4:5], r[4:5], r[11:12]
0003f8  0ba51140  min.ul r[11:12], r[4:5], r[2:3]
0003fc  ab400200  lui r1, 36
000400  8b901210  add.s r1, r5, r1
000404  3b11cc00  bneq r24, r12, 68
000408  1f321000  addli r4, zero, 11
00040c  1731a803  sll.d r[3:4], r[17:18], r26
000410  7d100200  xwait r4, 0
000414  6b520f01  load.d r[5:6], 16(r30)
000418  1d800900  lock zero, r19
00041c  15000000  dma_cfg zero, zero, zero, 0
000420  0b212210  add.ul r[3:4], r[5:6], r[3:4]
000424  1b322500  slli r4, r10, 2
000428  15800104  dma_cfg zero, r3, zero, 2
00042c  95004106  dma_cfg r1, r2, r4, 3
000430  9f000004  addli r1, zero, 512
000434  9580c008  dma_cfg r1, r1, r12, 4
000438  35000000  dma_run zero
00043c  1d900900  unlock r19
000440  9f201000  addli r1, zero, 10
000444  db5c0000  j 740
000448  2b410200  lui r2, 36
00044c  9bb1f700  slli r3, r15, 15
000450  1b110160  ori r2, r2, 1536
000454  8b972110  add.s r15, r3, r2
000458  3b033c01  bneq r24, r19, 192
00045c  1f050000  addli r10, zero, 0
000460  9f100000  addli r1, zero, 1
000464  9f110000  addli r3, zero, 1
000468  1f511000  addli r2, zero, 13
00046c  7d900900  xwait r19, 0
000470  7d900400  xwait r9, 0
000474  7d100100  xwait r2, 0
000478  1b31e500  slli r2, r10, 14
00047c  1b328500  slli r4, r10, 8
000480  1d800000  lock zero, r1
000484  1f150000  addli r10, zero, 1
000488  09048400  mm_cfg r8, r8, r8, 0
00048c  17114101  or r2, r2, r20
000490  1712f200  or r4, r4, r15
000494  89891904  mm_cfg r19, r19, r1, 2
000498  29022910  mm r4, r18, r2, 8
00049c  1b811100  andi r2, r3, 1
0004a0  9f010000  addli r3, zero, 0
0004a4  1d900000  unlock r1
0004a8  3b4f01fe  bneq r2, zero, -48
0004ac  9f500000  addli r1, zero, 5
0004b0  7d800000  xsignal r1, 0
0004b4  9f101000  addli r1, zero, 9
0004b8  7d800000  xsignal r1, 0
0004bc  9f401000  addli r1, zero, 12
0004c0  5b4d0000  j 616
0004c4  1bbaf700  slli r20, r15, 15
0004c8  2bc10000  lui r2, 12
0004cc  8b112a10  add.s r3, r20, r2
0004d0  1f610000  addli r2, zero, 6
0004d4  b759bc00  beq r24, r11, 628
0004d8  bb5b2cfe  bneq r24, r2, -268
0004dc  7d900500  xwait r11, 0
0004e0  6b558f00  load.d r[11:12], 8(r30)
0004e4  1732a803  sll.d r[5:6], r[17:18], r26
0004e8  1d800900  lock zero, r19
0004ec  15000000  dma_cfg zero, zero, zero, 0
0004f0  0b224510  add.ul r[5:6], r[11:12], r[5:6]
0004f4  1f050004  addli r10, zero, 512
0004f8  15800204  dma_cfg zero, r5, zero, 2
0004fc  9501a206  dma_cfg r3, r4, r10, 3
000500  9f010020  addli r3, zero, 4096
000504  15858108  dma_cfg r10, r3, r8, 4
000508  35000000  dma_run zero
00050c  1d900900  unlock r19
000510  7d000100  xsignal r2, 0
000514  5bd7ffff  j -328
000518  1f510000  addli r2, zero, 5
00051c  3b362c00  bneq r24, r2, 396
000520  1f211000  addli r2, zero, 10
000524  ab05803f  lui r11, 260096
000528  9f76f000  addli r13, zero, 127
00052c  1f050000  addli r10, zero, 0
000530  7d100100  xwait r2, 0
000534  1f411000  addli r2, zero, 12
000538  7d100100  xwait r2, 0
00053c  1d000d00  lock zero, r26
000540  0d000002  ew_cfg zero, zero, zero, 1
000544  8d950500  ewcoeff_cfg r11, r11, zero, 0
000548  0d800604  ew_cfg zero, r13, zero, 2
00054c  0d060006  ew_cfg r12, zero, zero, 3
000550  0b91a710  add.s r2, r15, r10
000554  1f050504  addli r10, r10, 512
000558  2d011100  dsmadd r2, r2, r1, 0
00055c  bb5f95ff  bneq r10, r25, -12
000560  9f301000  addli r1, zero, 11
000564  1f711000  addli r2, zero, 15
000568  1d100d00  unlock r26
00056c  1f050000  addli r10, zero, 0
000570  7d800000  xsignal r1, 0
000574  e340dfff  loadli.w r1,  -20(r30)
000578  7d100100  xwait r2, 0
00057c  1d000d00  lock zero, r26
000580  1f511000  addli r2, zero, 13
000584  0d000002  ew_cfg zero, zero, zero, 1
000588  6b520fff  load.d r[5:6], -16(r30)
00058c  8b901110  add.s r1, r3, r1
000590  0d800204  ew_cfg zero, r5, zero, 2
000594  2b0200c1  lui r4, 790528
000598  8d090006  ew_cfg r19, zero, zero, 3
00059c  8d890926  ew_cfg r19, r19, zero, 19
0005a0  0d010014  ew_cfg r2, zero, zero, 10
0005a4  6301dfff  loadli.w r2,  -24(r30)
0005a8  0d0d2616  ew_cfg r26, r12, r2, 11
0005ac  1f310000  addli r2, zero, 3
0005b0  0d00201a  ew_cfg zero, zero, r2, 13
0005b4  2b81ff40  lui r2, 266232
0005b8  0d82291c  ew_cfg r4, r19, r2, 14
0005bc  0d80051e  ew_cfg zero, r11, zero, 15
0005c0  cda00700  sslut r1, r15, 0
0005c4  0d000014  ew_cfg zero, zero, zero, 10
0005c8  0d000026  ew_cfg zero, zero, zero, 19
0005cc  1d100d00  unlock r26
0005d0  6341cfff  loadli.w r2,  -28(r30)
0005d4  8b912110  add.s r3, r3, r2
0005d8  1f012000  addli r2, zero, 16
0005dc  7d100100  xwait r2, 0
0005e0  1d000d00  lock zero, r26
0005e4  0d000002  ew_cfg zero, zero, zero, 1
0005e8  0d800604  ew_cfg zero, r13, zero, 2
0005ec  0d060006  ew_cfg r12, zero, zero, 3
0005f0  6301cfff  loadli.w r2,  -32(r30)
0005f4  0d110000  ewcoeff_cfg r2, zero, zero, 0
0005f8  0b91a110  add.s r2, r3, r10
0005fc  0b92a710  add.s r4, r15, r10
000600  1f050504  addli r10, r10, 512
000604  2d214200  dscmpnsel r2, r4, r4, 0
000608  bb4f95ff  bneq r10, r25, -16
00060c  1d100d00  unlock r26
000610  1f050000  addli r10, zero, 0
000614  1d000d00  lock zero, r26
000618  0d000002  ew_cfg zero, zero, zero, 1
00061c  0d800604  ew_cfg zero, r13, zero, 2
000620  0d060006  ew_cfg r12, zero, zero, 3
000624  6341bfff  loadli.w r2,  -36(r30)
000628  0d110000  ewcoeff_cfg r2, zero, zero, 0
00062c  0b91a110  add.s r2, r3, r10
000630  1f050504  addli r10, r10, 512
000634  2d212108  dscmpnsel r2, r2, r2, 4
000638  bb5f95ff  bneq r10, r25, -12
00063c  1d100d00  unlock r26
000640  2b0180bf  lui r2, 784384
000644  1d000d00  lock zero, r26
000648  0d000002  ew_cfg zero, zero, zero, 1
00064c  8d150100  ewcoeff_cfg r11, r2, zero, 0
000650  1f012000  addli r2, zero, 16
000654  6b520fff  load.d r[5:6], -16(r30)
000658  0d800204  ew_cfg zero, r5, zero, 2
00065c  8d090006  ew_cfg r19, zero, zero, 3
000660  8d893927  ew_cfg r19, r19, r19, 19
000664  ad873700  dsmadd r15, r15, r3, 0
000668  0d000026  ew_cfg zero, zero, zero, 19
00066c  1d100d00  unlock r26
000670  7d000100  xsignal r2, 0
000674  1d000d00  lock zero, r26
000678  0d000002  ew_cfg zero, zero, zero, 1
00067c  8d950500  ewcoeff_cfg r11, r11, zero, 0
000680  0d800204  ew_cfg zero, r5, zero, 2
000684  8d090006  ew_cfg r19, zero, zero, 3
000688  8d893927  ew_cfg r19, r19, r19, 19
00068c  ad80f000  dsmadd r1, r1, r15, 0
000690  9f501000  addli r1, zero, 13
000694  0d000026  ew_cfg zero, zero, zero, 19
000698  1d100d00  unlock r26
00069c  7d800000  xsignal r1, 0
0006a0  9f601000  addli r1, zero, 14
0006a4  db100000  j 132
0006a8  3b120c00  bneq r24, zero, 132
0006ac  9b306e00  slli r1, r28, 6
0006b0  6342dfff  loadli.w r4,  -20(r30)
0006b4  9737a803  sll.d r[16:17], r[17:18], r26
0006b8  eb588f01  load.d r[18:19], 24(r30)
0006bc  b3900028  sext_int2long r[2:3], r1
0006c0  8b914110  add.s r3, r3, r4
0006c4  0bb2d040  min.sl r[5:6], r[2:3], r[14:15]
0006c8  9f262000  addli r13, zero, 18
0006cc  27028200  addli.d r[5:6], r[5:6], 64
0006d0  9736db02  sll.d r[14:15], r[23:24], r13
0006d4  0b321248  max.sl r[5:6], r[5:6], r[2:3]
0006d8  8ba6d810  add.ul r[14:15], r[18:19], r[14:15]
0006dc  8b301218  sub.sl r[2:3], r[5:6], r[2:3]
0006e0  33020428  zext_int2long r[5:6], r8
0006e4  8ba6f610  add.ul r[14:15], r[14:15], r[16:17]
0006e8  8bb04040  min.sl r[2:3], r[2:3], r[5:6]
0006ec  1f621000  addli r4, zero, 14
0006f0  9f520000  addli r5, zero, 5
0006f4  7d100200  xwait r4, 0
0006f8  1d800200  lock zero, r5
0006fc  1b322500  slli r4, r10, 2
000700  15000000  dma_cfg zero, zero, zero, 0
000704  15000602  dma_cfg zero, r12, zero, 1
000708  15070004  dma_cfg r14, zero, zero, 2
00070c  95864106  dma_cfg r13, r3, r4, 3
000710  9f010004  addli r3, zero, 512
000714  1f020020  addli r4, zero, 4096
000718  15821108  dma_cfg r4, r3, r1, 4
00071c  9f701000  addli r1, zero, 15
000720  35000000  dma_run zero
000724  1d900200  unlock r5
000728  7d800000  xsignal r1, 0
00072c  eb508fff  load.d r[2:3], -8(r30)
000730  27130300  addli.d r[7:8], r[7:8], 1
000734  9f9d0d00  addli r27, r27, 1
000738  9f750000  addli r11, zero, 7
00073c  93301304  setlt.sl r1, r[7:8], r[2:3]
000740  bbfd00fc  bneq r1, zero, -1156
000744  db070000  j 60
000748  7d100100  xwait r2, 0
00074c  1f111000  addli r2, zero, 9
000750  7d100100  xwait r2, 0
000754  1d000000  lock zero, zero
000758  1f010001  addli r2, zero, 128
00075c  010d0000  ds_cfg r26, zero, 0
000760  01010002  ds_cfg r2, zero, 1
000764  0104001c  ds_cfg r8, zero, 14
000768  0101001a  ds_cfg r2, zero, 13
00076c  418a8104  shuffle_coa r20, r3, r8, 2
000770  1d100000  unlock zero
000774  7d800500  xsignal r11, 0
000778  7d800400  xsignal r9, 0
00077c  5b8affff  j -944
000780  7d000000  xsignal zero, 0
000784  bb600c00  bneq r24, zero, 56
000788  9f200000  addli r1, zero, 2
00078c  7d100000  xwait zero, 0
000790  7d100000  xwait zero, 0
000794  7d100000  xwait zero, 0
000798  7d100000  xwait zero, 0
00079c  7d100000  xwait zero, 0
0007a0  7d100000  xwait zero, 0
0007a4  7d100000  xwait zero, 0
0007a8  7d100000  xwait zero, 0
0007ac  1d800000  lock zero, r1
0007b0  0d000020  ew_cfg zero, zero, zero, 16
0007b4  1d900000  unlock r1
0007b8  7d400000  xsignal_mode_cfg zero
0007bc  9f8e5e00  addli sp, sp, 40
0007c0  00a00300  mfence { lm, sm, gm }
0007c4  00100000  exit
0007c8  00100000  exit
0007cc  00100000  exit
0007d0  00100000  exit
0007d4  00100000  exit
0007d8  00100000  exit
0007dc  00100000  exit
0007e0  00100000  exit
0007e4  00100000  exit
0007e8  00100000  exit
0007ec  00100000  exit
0007f0  00100000  exit
0007f4  00100000  exit
0007f8  00100000  exit
0007fc  00100000  exit
000800  00100000  exit
000804  00100000  exit
000808  00100000  exit
00080c  00100000  exit
000810  00100000  exit
000814  00100000  exit
000818  00100000  exit
00081c  00100000  exit
000820  00100000  exit
000824  00100000  exit
000828  00100000  exit
00082c  00100000  exit
000830  00100000  exit
000834  00100000  exit
000838  00100000  exit
00083c  00100000  exit
000840  00100000  exit
000844  00100000  exit
000848  00100000  exit
00084c  00100000  exit
000850  00100000  exit
000854  00100000  exit
000858  00100000  exit
00085c  00100000  exit
000860  00100000  exit
000864  00100000  exit
000868  00100000  exit
00086c  00100000  exit
000870  00100000  exit
000874  00100000  exit
000878  00100000  exit
00087c  00100000  exit
000880  00100000  exit
000884  00100000  exit
000888  00100000  exit
00088c  00100000  exit
000890  00100000  exit
000894  00100000  exit
000898  00100000  exit
00089c  00100000  exit
0008a0  00100000  exit
0008a4  00100000  exit
0008a8  00100000  exit
0008ac  00100000  exit
0008b0  00100000  exit
0008b4  00100000  exit
0008b8  00100000  exit
0008bc  00100000  exit
0008c0  00100000  exit
0008c4  00100000  exit
0008c8  00100000  exit
0008cc  00100000  exit
0008d0  00100000  exit
0008d4  00100000  exit
0008d8  00100000  exit
0008dc  00100000  exit
0008e0  00100000  exit
0008e4  00100000  exit
0008e8  00100000  exit
0008ec  00100000  exit
0008f0  00100000  exit
0008f4  00100000  exit
0008f8  00100000  exit
0008fc  00100000  exit
000900  00100000  exit
000904  00100000  exit
000908  00100000  exit
00090c  00100000  exit
000910  00100000  exit
000914  00100000  exit
000918  00100000  exit
00091c  00100000  exit
000920  00100000  exit
000924  00100000  exit
000928  00100000  exit
00092c  00100000  exit
000930  00100000  exit
000934  00100000  exit
000938  00100000  exit
00093c  00100000  exit
000940  00100000  exit
000944  00100000  exit
000948  00100000  exit
00094c  00100000  exit
000950  00100000  exit
000954  00100000  exit
000958  00100000  exit
00095c  00100000  exit
000960  00100000  exit
000964  00100000  exit
000968  00100000  exit
00096c  00100000  exit
000970  00100000  exit
000974  00100000  exit
000978  00100000  exit
00097c  00100000  exit
000980  00100000  exit
000984  00100000  exit
000988  00100000  exit
00098c  00100000  exit
000990  00100000  exit
000994  00100000  exit
000998  00100000  exit
00099c  00100000  exit
0009a0  00100000  exit
0009a4  00100000  exit
0009a8  00100000  exit
0009ac  00100000  exit
0009b0  00100000  exit
0009b4  00100000  exit
0009b8  00100000  exit
0009bc  00100000  exit
0009c0  00100000  exit
0009c4  00100000  exit
0009c8  00100000  exit
0009cc  00100000  exit
0009d0  00100000  exit
0009d4  00100000  exit
0009d8  00100000  exit
0009dc  00100000  exit
0009e0  00100000  exit
0009e4  00100000  exit
0009e8  00100000  exit
0009ec  00100000  exit
0009f0  00100000  exit
0009f4  00100000  exit
0009f8  00100000  exit
0009fc  00100000  exit
000a00  00100000  exit
000a04  00100000  exit
