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
0000b4  9f8e1eff  addli sp, sp, -120
0000b8  9f100000  addli r1, zero, 1
0000bc  80380002  core_id r17
0000c0  1f8f7e00  addli r30, sp, 56
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7900800  beq r17, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b90f1ff  ori r1, r3, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db260000  j 308
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
00014c  9f510000  addli r3, zero, 5
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
00018c  9f301000  addli r1, zero, 11
000190  00d00100  sync_group
000194  7d800000  xsignal r1, 0
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  9f300000  addli r1, zero, 3
0001a4  7d800100  xsignal r3, 0
0001a8  7d800100  xsignal r3, 0
0001ac  7d800100  xsignal r3, 0
0001b0  9f111000  addli r3, zero, 9
0001b4  7d800000  xsignal r1, 0
0001b8  7d800000  xsignal r1, 0
0001bc  7d800000  xsignal r1, 0
0001c0  9f700000  addli r1, zero, 7
0001c4  7d800100  xsignal r3, 0
0001c8  7d800100  xsignal r3, 0
0001cc  7d800100  xsignal r3, 0
0001d0  9f511000  addli r3, zero, 13
0001d4  7d800000  xsignal r1, 0
0001d8  7d800000  xsignal r1, 0
0001dc  7d800000  xsignal r1, 0
0001e0  9f302000  addli r1, zero, 19
0001e4  7d800100  xsignal r3, 0
0001e8  7d800100  xsignal r3, 0
0001ec  7d800100  xsignal r3, 0
0001f0  9f412000  addli r3, zero, 20
0001f4  7d800000  xsignal r1, 0
0001f8  7d800000  xsignal r1, 0
0001fc  7d800000  xsignal r1, 0
000200  9f502000  addli r1, zero, 21
000204  7d800100  xsignal r3, 0
000208  7d800100  xsignal r3, 0
00020c  7d800100  xsignal r3, 0
000210  7d800000  xsignal r1, 0
000214  7d800000  xsignal r1, 0
000218  7d800000  xsignal r1, 0
00021c  e3005f00  loadli.w r1,  40(r30)
000220  e3415f00  loadli.w r3,  44(r30)
000224  80d20002  load_param_i r5, 1
000228  63026f00  loadli.w r4,  48(r30)
00022c  8b901120  mul.s r1, r3, r1
000230  9f810200  addli r3, r5, 0
000234  8b914050  fmac.s r3, r1, r4
000238  0b924020  mul.s r4, r1, r4
00023c  9ff1f1ff  addli r3, r3, -1
000240  8b915130  div.s r3, r3, r5
000244  80520002  load_param_i r5, 0
000248  8b905120  mul.s r1, r3, r5
00024c  8b915150  fmac.s r3, r3, r5
000250  8b914140  min.s r3, r3, r4
000254  cb831106  ble.s r3, r1, 3296
000258  33910128  sext_int2long r[3:4], r3
00025c  33930028  sext_int2long r[7:8], r1
000260  9f3c0000  addli r25, zero, 3
000264  9f060001  addli r13, zero, 128
000268  1f5a1000  addli r20, zero, 13
00026c  1f7b1000  addli r22, zero, 15
000270  9f5a0000  addli r21, zero, 5
000274  9f1b0000  addli r23, zero, 1
000278  1f4c0000  addli r24, zero, 4
00027c  9f020000  addli r5, zero, 0
000280  73382ffe  store.d r[3:4], -16(r30)
000284  1f71f01f  addli r2, zero, 4095
000288  ab21373d  lui r3, 250738
00028c  ab00feff  lui r1, 1048544
000290  73341ffe  store.d r[2:3], -24(r30)
000294  ab000900  lui r1, 144
000298  9b900060  ori r1, r1, 1536
00029c  e74d1ffe  storeli.w r1, -36(r30)
0002a0  ab000c00  lui r1, 192
0002a4  9b900060  ori r1, r1, 1536
0002a8  e70d1ffe  storeli.w r1, -40(r30)
0002ac  9b903171  ori r1, r3, 1811
0002b0  ab810300  lui r3, 56
0002b4  674d1ffe  storeli.w r1, -44(r30)
0002b8  ab404c3f  lui r1, 259268
0002bc  9b90a022  ori r1, r1, 554
0002c0  670d1ffe  storeli.w r1, -48(r30)
0002c4  9b903184  ori r1, r3, 2115
0002c8  e74c1ffe  storeli.w r1, -52(r30)
0002cc  b3000028  zext_int2long r[2:3], zero
0002d0  73301ffe  store.d r[2:3], -32(r30)
0002d4  db2e0000  j 372
0002d8  9b900104  ori r1, r3, 64
0002dc  1d000c00  lock zero, r24
0002e0  9ff13700  addli r3, r15, 31
0002e4  1f010002  addli r2, zero, 256
0002e8  9f5a0000  addli r21, zero, 5
0002ec  958b0b00  dma_cfg r23, r23, zero, 0
0002f0  8b101610  add.s r1, r12, r1
0002f4  15800504  dma_cfg zero, r11, zero, 2
0002f8  95002507  dma_cfg r1, r10, r18, 3
0002fc  9bc05100  srli r1, r3, 5
000300  9bb11700  slli r3, r15, 1
000304  1f050004  addli r10, zero, 512
000308  95061908  dma_cfg r13, r18, r1, 4
00030c  9b81e103  andi r3, r3, 62
000310  1505710b  dma_cfg r10, r2, r23, 5
000314  1f510000  addli r2, zero, 5
000318  15003010  dma_cfg zero, zero, r3, 8
00031c  35000000  dma_run zero
000320  1500700b  dma_cfg zero, zero, r23, 5
000324  15000010  dma_cfg zero, zero, zero, 8
000328  1d100c00  unlock r24
00032c  1d000100  lock zero, r2
000330  15000014  dma_cfg zero, zero, zero, 10
000334  15007015  dma_cfg zero, zero, r23, 10
000338  15009014  dma_cfg zero, zero, r9, 10
00033c  15009015  dma_cfg zero, zero, r25, 10
000340  15008015  dma_cfg zero, zero, r24, 10
000344  15002014  dma_cfg zero, zero, r2, 10
000348  15004014  dma_cfg zero, zero, r4, 10
00034c  1f121000  addli r4, zero, 9
000350  15008014  dma_cfg zero, zero, r8, 10
000354  1f041000  addli r8, zero, 8
000358  15008014  dma_cfg zero, zero, r8, 10
00035c  1f042000  addli r8, zero, 16
000360  15004014  dma_cfg zero, zero, r4, 10
000364  1f221000  addli r4, zero, 10
000368  15004014  dma_cfg zero, zero, r4, 10
00036c  1f321000  addli r4, zero, 11
000370  15004014  dma_cfg zero, zero, r4, 10
000374  1f421000  addli r4, zero, 12
000378  15004014  dma_cfg zero, zero, r4, 10
00037c  15004015  dma_cfg zero, zero, r20, 10
000380  1500a015  dma_cfg zero, zero, r26, 10
000384  15006015  dma_cfg zero, zero, r22, 10
000388  15008014  dma_cfg zero, zero, r8, 10
00038c  1f142000  addli r8, zero, 17
000390  15008014  dma_cfg zero, zero, r8, 10
000394  1f242000  addli r8, zero, 18
000398  15008014  dma_cfg zero, zero, r8, 10
00039c  1f342000  addli r8, zero, 19
0003a0  15008014  dma_cfg zero, zero, r8, 10
0003a4  1f442000  addli r8, zero, 20
0003a8  15008014  dma_cfg zero, zero, r8, 10
0003ac  1f542000  addli r8, zero, 21
0003b0  15008014  dma_cfg zero, zero, r8, 10
0003b4  1f642000  addli r8, zero, 22
0003b8  15008014  dma_cfg zero, zero, r8, 10
0003bc  1f742000  addli r8, zero, 23
0003c0  15008014  dma_cfg zero, zero, r8, 10
0003c4  1f043000  addli r8, zero, 24
0003c8  15008014  dma_cfg zero, zero, r8, 10
0003cc  1f143000  addli r8, zero, 25
0003d0  15008014  dma_cfg zero, zero, r8, 10
0003d4  1f243000  addli r8, zero, 26
0003d8  15008014  dma_cfg zero, zero, r8, 10
0003dc  1f343000  addli r8, zero, 27
0003e0  15008014  dma_cfg zero, zero, r8, 10
0003e4  1f443000  addli r8, zero, 28
0003e8  15008014  dma_cfg zero, zero, r8, 10
0003ec  1f543000  addli r8, zero, 29
0003f0  15008014  dma_cfg zero, zero, r8, 10
0003f4  1f643000  addli r8, zero, 30
0003f8  15008014  dma_cfg zero, zero, r8, 10
0003fc  1f743000  addli r8, zero, 31
000400  15008014  dma_cfg zero, zero, r8, 10
000404  958b0b00  dma_cfg r23, r23, zero, 0
000408  950b0002  dma_cfg r23, zero, zero, 1
00040c  15000004  dma_cfg zero, zero, zero, 2
000410  15072007  dma_cfg r14, zero, r18, 3
000414  95061008  dma_cfg r13, zero, r1, 4
000418  1505700b  dma_cfg r10, zero, r23, 5
00041c  15003010  dma_cfg zero, zero, r3, 8
000420  35000000  dma_run zero
000424  1500700b  dma_cfg zero, zero, r23, 5
000428  15000010  dma_cfg zero, zero, zero, 8
00042c  1d100100  unlock r2
000430  7d000200  xsignal r4, 0
000434  6b540fff  load.d r[9:10], -16(r30)
000438  27130300  addli.d r[7:8], r[7:8], 1
00043c  9f920200  addli r5, r5, 1
000440  93308304  setlt.sl r1, r[7:8], r[9:10]
000444  b7cb0004  beq r1, zero, 2800
000448  e3006f00  loadli.w r1,  48(r30)
00044c  e3415f00  loadli.w r3,  44(r30)
000450  1f042000  addli r8, zero, 16
000454  1f721000  addli r4, zero, 15
000458  1f511000  addli r2, zero, 13
00045c  8b101330  div.s r1, r6, r1
000460  8b903030  div.s r1, r1, r3
000464  0b95d030  div.s r10, r1, r13
000468  9b313500  slli r3, r10, 3
00046c  8b153418  sub.s r11, r8, r3
000470  1f041000  addli r8, zero, 8
000474  8b958540  min.s r11, r11, r8
000478  0b96b038  mod.s r12, r1, r11
00047c  8b113610  add.s r3, r12, r3
000480  13063b04  setlt.u r12, r22, r3
000484  33890128  zext_int2long r[19:20], r3
000488  97374903  sll.d r[16:17], r[19:20], r20
00048c  3b300600  bneq r12, zero, 12
000490  eb5d0ffe  load.d r[28:29], -32(r30)
000494  db010000  j 12
000498  6b548ffe  load.d r[9:10], -24(r30)
00049c  978d8702  and.d r[28:29], r[16:17], r[9:10]
0004a0  1b357500  slli r10, r10, 7
0004a4  0b9a9239  mod.s r20, r5, r25
0004a8  1f740000  addli r8, zero, 7
0004ac  2b060300  lui r12, 48
0004b0  1f3b0000  addli r22, zero, 3
0004b4  1f6d0000  addli r26, zero, 6
0004b8  8b90a018  sub.s r1, r1, r10
0004bc  0b97b030  div.s r14, r1, r11
0004c0  9b3cfa00  slli r25, r20, 15
0004c4  9b300a01  slli r1, r20, 16
0004c8  0b96cc10  add.s r12, r25, r12
0004cc  33050728  zext_int2long r[11:12], r14
0004d0  17348502  sll.d r[9:10], r[11:12], r8
0004d4  1f05000f  addli r10, zero, 1920
0004d8  33050528  zext_int2long r[11:12], r10
0004dc  17347403  sll.d r[9:10], r[9:10], r23
0004e0  733c8ffe  store.d r[9:10], -8(r30)
0004e4  bbbaa801  bneq r17, r26, 684
0004e8  0bb4b719  sub.sl r[9:10], r[16:17], r[28:29]
0004ec  9f661000  addli r13, zero, 14
0004f0  7d100b00  xwait r22, 0
0004f4  1754a403  sra.d r[9:10], r[9:10], r26
0004f8  973dd902  sll.d r[28:29], r[19:20], r13
0004fc  8b37a440  min.sl r[16:17], r[9:10], r[11:12]
000500  0bb48718  sub.sl r[9:10], r[16:17], r[9:10]
000504  eb570f00  load.d r[16:17], 0(r30)
000508  0ba8b711  add.ul r[17:18], r[16:17], r[28:29]
00050c  9f070401  addli r15, r8, 128
000510  9f740000  addli r9, zero, 7
000514  9f2d0000  addli r27, zero, 2
000518  1f0e8000  addli r28, zero, 64
00051c  3fd45d00  blt.s r27, r5, 276
000520  9f5a0000  addli r21, zero, 5
000524  1f041000  addli r8, zero, 8
000528  1d800a00  lock zero, r21
00052c  15000014  dma_cfg zero, zero, zero, 10
000530  15007015  dma_cfg zero, zero, r23, 10
000534  1500b015  dma_cfg zero, zero, r27, 10
000538  15006015  dma_cfg zero, zero, r22, 10
00053c  15008015  dma_cfg zero, zero, r24, 10
000540  15005015  dma_cfg zero, zero, r21, 10
000544  1500a015  dma_cfg zero, zero, r26, 10
000548  15009014  dma_cfg zero, zero, r9, 10
00054c  15008014  dma_cfg zero, zero, r8, 10
000550  1f141000  addli r8, zero, 9
000554  15008014  dma_cfg zero, zero, r8, 10
000558  1f241000  addli r8, zero, 10
00055c  15008014  dma_cfg zero, zero, r8, 10
000560  1f341000  addli r8, zero, 11
000564  15008014  dma_cfg zero, zero, r8, 10
000568  1f441000  addli r8, zero, 12
00056c  15008014  dma_cfg zero, zero, r8, 10
000570  1f042000  addli r8, zero, 16
000574  15002014  dma_cfg zero, zero, r2, 10
000578  1500d014  dma_cfg zero, zero, r13, 10
00057c  15004014  dma_cfg zero, zero, r4, 10
000580  1f122000  addli r4, zero, 17
000584  15008014  dma_cfg zero, zero, r8, 10
000588  1f040002  addli r8, zero, 256
00058c  15004014  dma_cfg zero, zero, r4, 10
000590  1f222000  addli r4, zero, 18
000594  15004014  dma_cfg zero, zero, r4, 10
000598  1f322000  addli r4, zero, 19
00059c  15004014  dma_cfg zero, zero, r4, 10
0005a0  1f422000  addli r4, zero, 20
0005a4  15004014  dma_cfg zero, zero, r4, 10
0005a8  1f522000  addli r4, zero, 21
0005ac  15004014  dma_cfg zero, zero, r4, 10
0005b0  1f622000  addli r4, zero, 22
0005b4  15004014  dma_cfg zero, zero, r4, 10
0005b8  1f722000  addli r4, zero, 23
0005bc  15004014  dma_cfg zero, zero, r4, 10
0005c0  1f023000  addli r4, zero, 24
0005c4  15004014  dma_cfg zero, zero, r4, 10
0005c8  1f123000  addli r4, zero, 25
0005cc  15004014  dma_cfg zero, zero, r4, 10
0005d0  1f223000  addli r4, zero, 26
0005d4  15004014  dma_cfg zero, zero, r4, 10
0005d8  1f323000  addli r4, zero, 27
0005dc  15004014  dma_cfg zero, zero, r4, 10
0005e0  1f423000  addli r4, zero, 28
0005e4  15004014  dma_cfg zero, zero, r4, 10
0005e8  1f523000  addli r4, zero, 29
0005ec  15004014  dma_cfg zero, zero, r4, 10
0005f0  1f623000  addli r4, zero, 30
0005f4  15004014  dma_cfg zero, zero, r4, 10
0005f8  1f723000  addli r4, zero, 31
0005fc  15004014  dma_cfg zero, zero, r4, 10
000600  1f020001  addli r4, zero, 128
000604  958b0b00  dma_cfg r23, r23, zero, 0
000608  950b0002  dma_cfg r23, zero, zero, 1
00060c  15000004  dma_cfg zero, zero, zero, 2
000610  1506c007  dma_cfg r12, zero, r28, 3
000614  1502b009  dma_cfg r4, zero, r27, 4
000618  1504400a  dma_cfg r8, zero, r4, 5
00061c  15000010  dma_cfg zero, zero, zero, 8
000620  35000000  dma_run zero
000624  1500700b  dma_cfg zero, zero, r23, 5
000628  15000010  dma_cfg zero, zero, zero, 8
00062c  1d900a00  unlock r21
000630  2b020300  lui r4, 48
000634  1d000c00  lock zero, r24
000638  9f5a0000  addli r21, zero, 5
00063c  958b0b00  dma_cfg r23, r23, zero, 0
000640  1b140204  ori r8, r4, 64
000644  15800804  dma_cfg zero, r17, zero, 2
000648  1f020001  addli r4, zero, 128
00064c  0b948c10  add.s r8, r25, r8
000650  1504c807  dma_cfg r8, r16, r28, 3
000654  1f080002  addli r16, zero, 256
000658  1f041000  addli r8, zero, 8
00065c  80380002  core_id r17
000660  1502be09  dma_cfg r4, r28, r27, 4
000664  1508f20a  dma_cfg r16, r4, r15, 5
000668  1f520000  addli r4, zero, 5
00066c  15000010  dma_cfg zero, zero, zero, 8
000670  35000000  dma_run zero
000674  1500700b  dma_cfg zero, zero, r23, 5
000678  15000010  dma_cfg zero, zero, zero, 8
00067c  1d100c00  unlock r24
000680  1d000200  lock zero, r4
000684  15000014  dma_cfg zero, zero, zero, 10
000688  15007015  dma_cfg zero, zero, r23, 10
00068c  1500b015  dma_cfg zero, zero, r27, 10
000690  15006015  dma_cfg zero, zero, r22, 10
000694  1f7b1000  addli r22, zero, 15
000698  15008015  dma_cfg zero, zero, r24, 10
00069c  15004014  dma_cfg zero, zero, r4, 10
0006a0  1500a015  dma_cfg zero, zero, r26, 10
0006a4  15009014  dma_cfg zero, zero, r9, 10
0006a8  15008014  dma_cfg zero, zero, r8, 10
0006ac  1f141000  addli r8, zero, 9
0006b0  15008014  dma_cfg zero, zero, r8, 10
0006b4  1f241000  addli r8, zero, 10
0006b8  15008014  dma_cfg zero, zero, r8, 10
0006bc  1f341000  addli r8, zero, 11
0006c0  15008014  dma_cfg zero, zero, r8, 10
0006c4  1f441000  addli r8, zero, 12
0006c8  15008014  dma_cfg zero, zero, r8, 10
0006cc  1f042000  addli r8, zero, 16
0006d0  15002014  dma_cfg zero, zero, r2, 10
0006d4  1f112000  addli r2, zero, 17
0006d8  1500d014  dma_cfg zero, zero, r13, 10
0006dc  9f060001  addli r13, zero, 128
0006e0  15006015  dma_cfg zero, zero, r22, 10
0006e4  15008014  dma_cfg zero, zero, r8, 10
0006e8  15002014  dma_cfg zero, zero, r2, 10
0006ec  1f212000  addli r2, zero, 18
0006f0  15002014  dma_cfg zero, zero, r2, 10
0006f4  1f312000  addli r2, zero, 19
0006f8  15002014  dma_cfg zero, zero, r2, 10
0006fc  1f412000  addli r2, zero, 20
000700  15002014  dma_cfg zero, zero, r2, 10
000704  1f512000  addli r2, zero, 21
000708  15002014  dma_cfg zero, zero, r2, 10
00070c  1f612000  addli r2, zero, 22
000710  15002014  dma_cfg zero, zero, r2, 10
000714  1f712000  addli r2, zero, 23
000718  15002014  dma_cfg zero, zero, r2, 10
00071c  1f013000  addli r2, zero, 24
000720  15002014  dma_cfg zero, zero, r2, 10
000724  1f113000  addli r2, zero, 25
000728  15002014  dma_cfg zero, zero, r2, 10
00072c  1f213000  addli r2, zero, 26
000730  15002014  dma_cfg zero, zero, r2, 10
000734  1f313000  addli r2, zero, 27
000738  15002014  dma_cfg zero, zero, r2, 10
00073c  1f413000  addli r2, zero, 28
000740  15002014  dma_cfg zero, zero, r2, 10
000744  1f513000  addli r2, zero, 29
000748  15002014  dma_cfg zero, zero, r2, 10
00074c  1f613000  addli r2, zero, 30
000750  15002014  dma_cfg zero, zero, r2, 10
000754  1f713000  addli r2, zero, 31
000758  15002014  dma_cfg zero, zero, r2, 10
00075c  958b0b00  dma_cfg r23, r23, zero, 0
000760  950b0002  dma_cfg r23, zero, zero, 1
000764  15000004  dma_cfg zero, zero, zero, 2
000768  1506c007  dma_cfg r12, zero, r28, 3
00076c  9506b009  dma_cfg r13, zero, r27, 4
000770  1508f00a  dma_cfg r16, zero, r15, 5
000774  15000010  dma_cfg zero, zero, zero, 8
000778  35000000  dma_run zero
00077c  1500700b  dma_cfg zero, zero, r23, 5
000780  15000010  dma_cfg zero, zero, zero, 8
000784  1d100200  unlock r4
000788  7d800d00  xsignal r27, 0
00078c  db080000  j 68
000790  9f3d0000  addli r27, zero, 3
000794  1f7b1000  addli r22, zero, 15
000798  1f2e0000  addli r28, zero, 2
00079c  3ba9c801  bneq r17, r28, 584
0007a0  7d100e00  xwait r28, 0
0007a4  7d900a00  xwait r21, 0
0007a8  1d000000  lock zero, zero
0007ac  1f018000  addli r2, zero, 64
0007b0  010e0000  ds_cfg r28, zero, 0
0007b4  01010002  ds_cfg r2, zero, 1
0007b8  0101001c  ds_cfg r2, zero, 14
0007bc  8106001a  ds_cfg r13, zero, 13
0007c0  a11c2602  shuffle_batch r25, r12, r2, 1
0007c4  1d100000  unlock zero
0007c8  7d800d00  xsignal r27, 0
0007cc  7d000c00  xsignal r24, 0
0007d0  1f620000  addli r4, zero, 6
0007d4  1f6d1000  addli r26, zero, 14
0007d8  1b347700  slli r8, r14, 7
0007dc  b38d0628  zext_int2long r[28:29], r13
0007e0  1b369a00  slli r12, r20, 9
0007e4  2b010600  lui r2, 96
0007e8  33040428  zext_int2long r[9:10], r8
0007ec  0b27a440  min.ul r[15:16], r[9:10], r[11:12]
0007f0  27070701  addli.d r[15:16], r[15:16], 128
0007f4  0b278748  max.ul r[15:16], r[15:16], r[9:10]
0007f8  0b348718  sub.sl r[9:10], r[15:16], r[9:10]
0007fc  0b172610  add.s r14, r12, r2
000800  8b27b441  min.ul r[16:17], r[9:10], r[28:29]
000804  3b854800  bneq r17, r4, 320
000808  eb500f01  load.d r[2:3], 16(r30)
00080c  6b548fff  load.d r[9:10], -8(r30)
000810  1f5a1000  addli r20, zero, 13
000814  ab010600  lui r3, 96
000818  9f3c0000  addli r25, zero, 3
00081c  1f098000  addli r18, zero, 64
000820  7d100a00  xwait r20, 0
000824  0ba58010  add.ul r[11:12], r[2:3], r[9:10]
000828  1f740000  addli r8, zero, 7
00082c  9f240000  addli r9, zero, 2
000830  bfaa54fc  blt.s r9, r5, -1368
000834  1f510000  addli r2, zero, 5
000838  9f001000  addli r1, zero, 8
00083c  1d000100  lock zero, r2
000840  15000014  dma_cfg zero, zero, zero, 10
000844  15007015  dma_cfg zero, zero, r23, 10
000848  15009014  dma_cfg zero, zero, r9, 10
00084c  15009015  dma_cfg zero, zero, r25, 10
000850  15008015  dma_cfg zero, zero, r24, 10
000854  15002014  dma_cfg zero, zero, r2, 10
000858  15004014  dma_cfg zero, zero, r4, 10
00085c  15008014  dma_cfg zero, zero, r8, 10
000860  15001014  dma_cfg zero, zero, r1, 10
000864  9f101000  addli r1, zero, 9
000868  15001014  dma_cfg zero, zero, r1, 10
00086c  9f201000  addli r1, zero, 10
000870  15001014  dma_cfg zero, zero, r1, 10
000874  9f301000  addli r1, zero, 11
000878  15001014  dma_cfg zero, zero, r1, 10
00087c  9f401000  addli r1, zero, 12
000880  15001014  dma_cfg zero, zero, r1, 10
000884  9f002000  addli r1, zero, 16
000888  15004015  dma_cfg zero, zero, r20, 10
00088c  1500a015  dma_cfg zero, zero, r26, 10
000890  15006015  dma_cfg zero, zero, r22, 10
000894  15001014  dma_cfg zero, zero, r1, 10
000898  9f102000  addli r1, zero, 17
00089c  15001014  dma_cfg zero, zero, r1, 10
0008a0  9f202000  addli r1, zero, 18
0008a4  15001014  dma_cfg zero, zero, r1, 10
0008a8  9f302000  addli r1, zero, 19
0008ac  15001014  dma_cfg zero, zero, r1, 10
0008b0  9f402000  addli r1, zero, 20
0008b4  15001014  dma_cfg zero, zero, r1, 10
0008b8  9f502000  addli r1, zero, 21
0008bc  15001014  dma_cfg zero, zero, r1, 10
0008c0  9f602000  addli r1, zero, 22
0008c4  15001014  dma_cfg zero, zero, r1, 10
0008c8  9f702000  addli r1, zero, 23
0008cc  15001014  dma_cfg zero, zero, r1, 10
0008d0  9f003000  addli r1, zero, 24
0008d4  15001014  dma_cfg zero, zero, r1, 10
0008d8  9f103000  addli r1, zero, 25
0008dc  15001014  dma_cfg zero, zero, r1, 10
0008e0  9f203000  addli r1, zero, 26
0008e4  15001014  dma_cfg zero, zero, r1, 10
0008e8  9f303000  addli r1, zero, 27
0008ec  15001014  dma_cfg zero, zero, r1, 10
0008f0  9f403000  addli r1, zero, 28
0008f4  15001014  dma_cfg zero, zero, r1, 10
0008f8  9f503000  addli r1, zero, 29
0008fc  15001014  dma_cfg zero, zero, r1, 10
000900  9f603000  addli r1, zero, 30
000904  15001014  dma_cfg zero, zero, r1, 10
000908  9f703000  addli r1, zero, 31
00090c  15001014  dma_cfg zero, zero, r1, 10
000910  9f000004  addli r1, zero, 512
000914  958b0b00  dma_cfg r23, r23, zero, 0
000918  950b0002  dma_cfg r23, zero, zero, 1
00091c  15000004  dma_cfg zero, zero, zero, 2
000920  15072007  dma_cfg r14, zero, r18, 3
000924  95068009  dma_cfg r13, zero, r24, 4
000928  9500700b  dma_cfg r1, zero, r23, 5
00092c  15000010  dma_cfg zero, zero, zero, 8
000930  35000000  dma_run zero
000934  1500700b  dma_cfg zero, zero, r23, 5
000938  15000010  dma_cfg zero, zero, zero, 8
00093c  1d100100  unlock r2
000940  5b33ffff  j -1640
000944  2b020600  lui r4, 96
000948  1f5a1000  addli r20, zero, 13
00094c  9f3c0000  addli r25, zero, 3
000950  1b140260  ori r8, r4, 1536
000954  0b968010  add.s r12, r1, r8
000958  b7cc5801  beq r17, r21, 816
00095c  3ba29803  bneq r17, r25, 1160
000960  1f211000  addli r2, zero, 10
000964  2b02803f  lui r4, 260096
000968  9f010000  addli r3, zero, 0
00096c  7d100100  xwait r2, 0
000970  1f411000  addli r2, zero, 12
000974  7d100100  xwait r2, 0
000978  1f312000  addli r2, zero, 19
00097c  7d100100  xwait r2, 0
000980  1f210000  addli r2, zero, 2
000984  1d000100  lock zero, r2
000988  0d000002  ew_cfg zero, zero, zero, 1
00098c  0d120200  ewcoeff_cfg r4, r4, zero, 0
000990  1f72f000  addli r4, zero, 127
000994  0d000204  ew_cfg zero, r4, zero, 2
000998  2b020100  lui r4, 16
00099c  8d0b0006  ew_cfg r23, zero, zero, 3
0009a0  0b143610  add.s r8, r12, r3
0009a4  8b943010  add.s r9, r1, r3
0009a8  9f810104  addli r3, r3, 512
0009ac  2d84e400  dsmadd r8, r9, r14, 0
0009b0  bbcf41fe  bneq r3, r4, -16
0009b4  9f301000  addli r1, zero, 11
0009b8  1d100100  unlock r2
0009bc  7d800000  xsignal r1, 0
0009c0  9f002000  addli r1, zero, 16
0009c4  7d000a00  xsignal r20, 0
0009c8  7d800000  xsignal r1, 0
0009cc  9f102000  addli r1, zero, 17
0009d0  7d800000  xsignal r1, 0
0009d4  9f202000  addli r1, zero, 18
0009d8  7d800000  xsignal r1, 0
0009dc  7d000d00  xsignal r26, 0
0009e0  db4affff  j -1452
0009e4  2b820400  lui r4, 72
0009e8  1f740000  addli r8, zero, 7
0009ec  1f6d1000  addli r26, zero, 14
0009f0  0b964c10  add.s r12, r25, r4
0009f4  1f620000  addli r4, zero, 6
0009f8  37848802  beq r17, r8, 1280
0009fc  37b28803  beq r17, r24, 1164
000a00  3be778ff  bneq r17, r23, -552
000a04  6b548f00  load.d r[9:10], 8(r30)
000a08  eb578fff  load.d r[16:17], -8(r30)
000a0c  8b27f410  add.ul r[16:17], r[9:10], r[16:17]
000a10  9f740000  addli r9, zero, 7
000a14  7d900400  xwait r9, 0
000a18  3f645e00  blt.s r28, r5, 280
000a1c  1f540000  addli r8, zero, 5
000a20  9f0a0004  addli r21, zero, 512
000a24  1d000400  lock zero, r8
000a28  15000014  dma_cfg zero, zero, zero, 10
000a2c  15007015  dma_cfg zero, zero, r23, 10
000a30  1500c015  dma_cfg zero, zero, r28, 10
000a34  1500b015  dma_cfg zero, zero, r27, 10
000a38  15008015  dma_cfg zero, zero, r24, 10
000a3c  15008014  dma_cfg zero, zero, r8, 10
000a40  1f041000  addli r8, zero, 8
000a44  15004014  dma_cfg zero, zero, r4, 10
000a48  15009014  dma_cfg zero, zero, r9, 10
000a4c  15008014  dma_cfg zero, zero, r8, 10
000a50  1f141000  addli r8, zero, 9
000a54  15008014  dma_cfg zero, zero, r8, 10
000a58  1f241000  addli r8, zero, 10
000a5c  15008014  dma_cfg zero, zero, r8, 10
000a60  1f341000  addli r8, zero, 11
000a64  15008014  dma_cfg zero, zero, r8, 10
000a68  1f441000  addli r8, zero, 12
000a6c  15008014  dma_cfg zero, zero, r8, 10
000a70  1f042000  addli r8, zero, 16
000a74  15002014  dma_cfg zero, zero, r2, 10
000a78  1500a015  dma_cfg zero, zero, r26, 10
000a7c  15006015  dma_cfg zero, zero, r22, 10
000a80  15008014  dma_cfg zero, zero, r8, 10
000a84  1f142000  addli r8, zero, 17
000a88  15008014  dma_cfg zero, zero, r8, 10
000a8c  1f242000  addli r8, zero, 18
000a90  15008014  dma_cfg zero, zero, r8, 10
000a94  1f342000  addli r8, zero, 19
000a98  15008014  dma_cfg zero, zero, r8, 10
000a9c  1f442000  addli r8, zero, 20
000aa0  15008014  dma_cfg zero, zero, r8, 10
000aa4  1f542000  addli r8, zero, 21
000aa8  15008014  dma_cfg zero, zero, r8, 10
000aac  1f642000  addli r8, zero, 22
000ab0  15008014  dma_cfg zero, zero, r8, 10
000ab4  1f742000  addli r8, zero, 23
000ab8  15008014  dma_cfg zero, zero, r8, 10
000abc  1f043000  addli r8, zero, 24
000ac0  15008014  dma_cfg zero, zero, r8, 10
000ac4  1f143000  addli r8, zero, 25
000ac8  15008014  dma_cfg zero, zero, r8, 10
000acc  1f243000  addli r8, zero, 26
000ad0  15008014  dma_cfg zero, zero, r8, 10
000ad4  1f343000  addli r8, zero, 27
000ad8  15008014  dma_cfg zero, zero, r8, 10
000adc  1f443000  addli r8, zero, 28
000ae0  15008014  dma_cfg zero, zero, r8, 10
000ae4  1f543000  addli r8, zero, 29
000ae8  15008014  dma_cfg zero, zero, r8, 10
000aec  1f643000  addli r8, zero, 30
000af0  15008014  dma_cfg zero, zero, r8, 10
000af4  1f743000  addli r8, zero, 31
000af8  15008014  dma_cfg zero, zero, r8, 10
000afc  1f048000  addli r8, zero, 64
000b00  958b0b00  dma_cfg r23, r23, zero, 0
000b04  950b0002  dma_cfg r23, zero, zero, 1
000b08  15000004  dma_cfg zero, zero, zero, 2
000b0c  15068006  dma_cfg r12, zero, r8, 3
000b10  95068009  dma_cfg r13, zero, r24, 4
000b14  950a800a  dma_cfg r21, zero, r8, 5
000b18  1f540000  addli r8, zero, 5
000b1c  15000010  dma_cfg zero, zero, zero, 8
000b20  35000000  dma_run zero
000b24  1500700b  dma_cfg zero, zero, r23, 5
000b28  15000010  dma_cfg zero, zero, zero, 8
000b2c  1d100400  unlock r8
000b30  2b840400  lui r8, 72
000b34  1d000c00  lock zero, r24
000b38  9f0a8000  addli r21, zero, 64
000b3c  958b0b00  dma_cfg r23, r23, zero, 0
000b40  1b140404  ori r8, r8, 64
000b44  15000804  dma_cfg zero, r16, zero, 2
000b48  0b948c10  add.s r8, r25, r8
000b4c  15845707  dma_cfg r8, r15, r21, 3
000b50  1f080004  addli r16, zero, 512
000b54  1f040020  addli r8, zero, 4096
000b58  9f570000  addli r15, zero, 5
000b5c  95868a09  dma_cfg r13, r21, r24, 4
000b60  1508540b  dma_cfg r16, r8, r21, 5
000b64  1f041000  addli r8, zero, 8
000b68  15000010  dma_cfg zero, zero, zero, 8
000b6c  35000000  dma_run zero
000b70  1500700b  dma_cfg zero, zero, r23, 5
000b74  15000010  dma_cfg zero, zero, zero, 8
000b78  1d100c00  unlock r24
000b7c  1d800700  lock zero, r15
000b80  15000014  dma_cfg zero, zero, zero, 10
000b84  15007015  dma_cfg zero, zero, r23, 10
000b88  1500c015  dma_cfg zero, zero, r28, 10
000b8c  1500b015  dma_cfg zero, zero, r27, 10
000b90  15008015  dma_cfg zero, zero, r24, 10
000b94  1500f014  dma_cfg zero, zero, r15, 10
000b98  15004014  dma_cfg zero, zero, r4, 10
000b9c  15009014  dma_cfg zero, zero, r9, 10
000ba0  15008014  dma_cfg zero, zero, r8, 10
000ba4  1f141000  addli r8, zero, 9
000ba8  15008014  dma_cfg zero, zero, r8, 10
000bac  1f241000  addli r8, zero, 10
000bb0  15008014  dma_cfg zero, zero, r8, 10
000bb4  1f341000  addli r8, zero, 11
000bb8  15008014  dma_cfg zero, zero, r8, 10
000bbc  1f441000  addli r8, zero, 12
000bc0  15008014  dma_cfg zero, zero, r8, 10
000bc4  1f042000  addli r8, zero, 16
000bc8  15002014  dma_cfg zero, zero, r2, 10
000bcc  1f112000  addli r2, zero, 17
000bd0  1500a015  dma_cfg zero, zero, r26, 10
000bd4  15006015  dma_cfg zero, zero, r22, 10
000bd8  15008014  dma_cfg zero, zero, r8, 10
000bdc  15002014  dma_cfg zero, zero, r2, 10
000be0  1f212000  addli r2, zero, 18
000be4  15002014  dma_cfg zero, zero, r2, 10
000be8  1f312000  addli r2, zero, 19
000bec  15002014  dma_cfg zero, zero, r2, 10
000bf0  1f412000  addli r2, zero, 20
000bf4  15002014  dma_cfg zero, zero, r2, 10
000bf8  1f512000  addli r2, zero, 21
000bfc  15002014  dma_cfg zero, zero, r2, 10
000c00  1f612000  addli r2, zero, 22
000c04  15002014  dma_cfg zero, zero, r2, 10
000c08  1f712000  addli r2, zero, 23
000c0c  15002014  dma_cfg zero, zero, r2, 10
000c10  1f013000  addli r2, zero, 24
000c14  15002014  dma_cfg zero, zero, r2, 10
000c18  1f113000  addli r2, zero, 25
000c1c  15002014  dma_cfg zero, zero, r2, 10
000c20  1f213000  addli r2, zero, 26
000c24  15002014  dma_cfg zero, zero, r2, 10
000c28  1f313000  addli r2, zero, 27
000c2c  15002014  dma_cfg zero, zero, r2, 10
000c30  1f413000  addli r2, zero, 28
000c34  15002014  dma_cfg zero, zero, r2, 10
000c38  1f513000  addli r2, zero, 29
000c3c  15002014  dma_cfg zero, zero, r2, 10
000c40  1f613000  addli r2, zero, 30
000c44  15002014  dma_cfg zero, zero, r2, 10
000c48  1f713000  addli r2, zero, 31
000c4c  15002014  dma_cfg zero, zero, r2, 10
000c50  958b0b00  dma_cfg r23, r23, zero, 0
000c54  950b0002  dma_cfg r23, zero, zero, 1
000c58  15000004  dma_cfg zero, zero, zero, 2
000c5c  15065007  dma_cfg r12, zero, r21, 3
000c60  95068009  dma_cfg r13, zero, r24, 4
000c64  1508500b  dma_cfg r16, zero, r21, 5
000c68  9f5a0000  addli r21, zero, 5
000c6c  15000010  dma_cfg zero, zero, zero, 8
000c70  35000000  dma_run zero
000c74  1500700b  dma_cfg zero, zero, r23, 5
000c78  15000010  dma_cfg zero, zero, zero, 8
000c7c  1d900700  unlock r15
000c80  7d000200  xsignal r4, 0
000c84  db6affff  j -1196
000c88  6341bfff  loadli.w r2,  -36(r30)
000c8c  9f452000  addli r11, zero, 20
000c90  7d100d00  xwait r26, 0
000c94  2b07803f  lui r14, 260096
000c98  1f042000  addli r8, zero, 16
000c9c  7d900500  xwait r11, 0
000ca0  8b912010  add.s r3, r1, r2
000ca4  1f210000  addli r2, zero, 2
000ca8  1d000100  lock zero, r2
000cac  0d000002  ew_cfg zero, zero, zero, 1
000cb0  0d10e000  ewcoeff_cfg zero, zero, r14, 0
000cb4  eb548ffe  load.d r[10:11], -24(r30)
000cb8  0d000504  ew_cfg zero, r10, zero, 2
000cbc  0d0c0006  ew_cfg r24, zero, zero, 3
000cc0  0d0c8c27  ew_cfg r24, r24, r24, 19
000cc4  ad11c600  dsmul r3, r12, r12, 0
000cc8  0d000026  ew_cfg zero, zero, zero, 19
000ccc  1d100100  unlock r2
000cd0  7d100400  xwait r8, 0
000cd4  1d000100  lock zero, r2
000cd8  1f542000  addli r8, zero, 21
000cdc  0d000002  ew_cfg zero, zero, zero, 1
000ce0  0d10e000  ewcoeff_cfg zero, zero, r14, 0
000ce4  0d000504  ew_cfg zero, r10, zero, 2
000ce8  0d0c0006  ew_cfg r24, zero, zero, 3
000cec  0d0c8c27  ew_cfg r24, r24, r24, 19
000cf0  ad91c100  dsmul r3, r3, r12, 0
000cf4  0d000026  ew_cfg zero, zero, zero, 19
000cf8  1d100100  unlock r2
000cfc  6302bfff  loadli.w r4,  -40(r30)
000d00  8b904010  add.s r1, r1, r4
000d04  1f122000  addli r4, zero, 17
000d08  7d100200  xwait r4, 0
000d0c  7d100400  xwait r8, 0
000d10  1d000100  lock zero, r2
000d14  0d000002  ew_cfg zero, zero, zero, 1
000d18  6342afff  loadli.w r4,  -44(r30)
000d1c  0d170200  ewcoeff_cfg r14, r4, zero, 0
000d20  0d000504  ew_cfg zero, r10, zero, 2
000d24  0d0c0006  ew_cfg r24, zero, zero, 3
000d28  0d0c8c27  ew_cfg r24, r24, r24, 19
000d2c  ad003600  dsmadd r1, r12, r3, 0
000d30  0d000026  ew_cfg zero, zero, zero, 19
000d34  1d100100  unlock r2
000d38  7d800500  xsignal r11, 0
000d3c  1d000100  lock zero, r2
000d40  0d000002  ew_cfg zero, zero, zero, 1
000d44  e301afff  loadli.w r3,  -48(r30)
000d48  8d110000  ewcoeff_cfg r3, zero, zero, 0
000d4c  8d0c0014  ew_cfg r25, zero, zero, 10
000d50  e3419fff  loadli.w r3,  -52(r30)
000d54  0d813b16  ew_cfg r2, r23, r3, 11
000d58  abc17f41  lui r3, 268284
000d5c  0d00001a  ew_cfg zero, zero, zero, 13
000d60  0d003c1c  ew_cfg zero, r24, r3, 14
000d64  9f212000  addli r3, zero, 18
000d68  0d00001e  ew_cfg zero, zero, zero, 15
000d6c  0d000504  ew_cfg zero, r10, zero, 2
000d70  0d0c0006  ew_cfg r24, zero, zero, 3
000d74  0d0c0c26  ew_cfg r24, r24, zero, 19
000d78  ad801000  dsmadd r1, r1, r1, 0
000d7c  0d000026  ew_cfg zero, zero, zero, 19
000d80  0d000014  ew_cfg zero, zero, zero, 10
000d84  1d100100  unlock r2
000d88  1d000100  lock zero, r2
000d8c  0d000002  ew_cfg zero, zero, zero, 1
000d90  0d17e000  ewcoeff_cfg r14, zero, r14, 0
000d94  0d000504  ew_cfg zero, r10, zero, 2
000d98  0d0c0006  ew_cfg r24, zero, zero, 3
000d9c  0d0c0c26  ew_cfg r24, r24, zero, 19
000da0  ad801000  dsmadd r1, r1, r1, 0
000da4  0d000026  ew_cfg zero, zero, zero, 19
000da8  1d100100  unlock r2
000dac  7d900100  xwait r3, 0
000db0  1d000100  lock zero, r2
000db4  ab01003f  lui r3, 258048
000db8  0d000002  ew_cfg zero, zero, zero, 1
000dbc  0d103000  ewcoeff_cfg zero, zero, r3, 0
000dc0  0d000504  ew_cfg zero, r10, zero, 2
000dc4  0d0c0006  ew_cfg r24, zero, zero, 3
000dc8  0d0c8c27  ew_cfg r24, r24, r24, 19
000dcc  2d161600  dsmul r12, r12, r1, 0
000dd0  0d000026  ew_cfg zero, zero, zero, 19
000dd4  1d100100  unlock r2
000dd8  7d000b00  xsignal r22, 0
000ddc  7d000400  xsignal r8, 0
000de0  dbcafeff  j -2476
000de4  3bc908fa  bneq r17, zero, -2480
000de8  1f362000  addli r12, zero, 19
000dec  9bb17100  slli r3, r3, 7
000df0  1f570000  addli r14, zero, 5
000df4  7d100b00  xwait r22, 0
000df8  9f5a0000  addli r21, zero, 5
000dfc  1734c902  sll.d r[9:10], r[19:20], r12
000e00  b3980128  sext_int2long r[18:19], r3
000e04  eb518f01  load.d r[4:5], 24(r30)
000e08  1d000700  lock zero, r14
000e0c  958b0b00  dma_cfg r23, r23, zero, 0
000e10  0bb5a840  min.sl r[11:12], r[18:19], r[11:12]
000e14  0ba48110  add.ul r[9:10], r[4:5], r[9:10]
000e18  eb518fff  load.d r[4:5], -8(r30)
000e1c  15800b02  dma_cfg zero, r23, zero, 1
000e20  27050501  addli.d r[11:12], r[11:12], 128
000e24  0b243410  add.ul r[9:10], r[9:10], r[4:5]
000e28  9b110164  ori r3, r2, 1600
000e2c  0b351549  max.sl r[11:12], r[11:12], r[18:19]
000e30  1f028000  addli r4, zero, 64
000e34  1f010004  addli r2, zero, 512
000e38  8b903010  add.s r1, r1, r3
000e3c  9ff13700  addli r3, r15, 31
000e40  95040004  dma_cfg r9, zero, zero, 2
000e44  0b351519  sub.sl r[11:12], r[11:12], r[18:19]
000e48  80380002  core_id r17
000e4c  15844006  dma_cfg r8, r1, r4, 3
000e50  9bc05100  srli r1, r3, 5
000e54  9bb11700  slli r3, r15, 1
000e58  0b35b541  min.sl r[11:12], r[11:12], r[28:29]
000e5c  15821608  dma_cfg r4, r13, r1, 4
000e60  9b80e103  andi r1, r3, 62
000e64  9f010020  addli r3, zero, 4096
000e68  9501a10a  dma_cfg r3, r2, r10, 5
000e6c  15001010  dma_cfg zero, zero, r1, 8
000e70  35000000  dma_run zero
000e74  1500700b  dma_cfg zero, zero, r23, 5
000e78  15000010  dma_cfg zero, zero, zero, 8
000e7c  1d100700  unlock r14
000e80  7d000600  xsignal r12, 0
000e84  5bb6feff  j -2640
000e88  1f041000  addli r8, zero, 8
000e8c  1f311000  addli r2, zero, 11
000e90  7d100c00  xwait r24, 0
000e94  1f080000  addli r16, zero, 0
000e98  1f160000  addli r12, zero, 1
000e9c  9f170000  addli r15, zero, 1
000ea0  7d100400  xwait r8, 0
000ea4  7d100100  xwait r2, 0
000ea8  1f018000  addli r2, zero, 64
000eac  1b34e800  slli r8, r16, 14
000eb0  9b348800  slli r9, r16, 8
000eb4  1d000600  lock zero, r12
000eb8  1f180000  addli r16, zero, 1
000ebc  0901d100  mm_cfg r2, r2, r13, 0
000ec0  17149401  or r8, r8, r25
000ec4  97941400  or r9, r9, r1
000ec8  090ccc04  mm_cfg r24, r24, r12, 2
000ecc  a9848c10  mm r9, r25, r8, 8
000ed0  1b841700  andi r8, r15, 1
000ed4  9f070000  addli r15, zero, 0
000ed8  1d100600  unlock r12
000edc  3b4f04fe  bneq r8, zero, -48
000ee0  1f111000  addli r2, zero, 9
000ee4  7d800a00  xsignal r21, 0
000ee8  7d000100  xsignal r2, 0
000eec  1f211000  addli r2, zero, 10
000ef0  7d000100  xsignal r2, 0
000ef4  db1cffff  j -1820
000ef8  1f111000  addli r2, zero, 9
000efc  7d100200  xwait r4, 0
000f00  7d100100  xwait r2, 0
000f04  1d000000  lock zero, zero
000f08  1f018000  addli r2, zero, 64
000f0c  010e0000  ds_cfg r28, zero, 0
000f10  81060002  ds_cfg r13, zero, 1
000f14  0101001c  ds_cfg r2, zero, 14
000f18  8106001a  ds_cfg r13, zero, 13
000f1c  c10c2604  shuffle_coa r25, r12, r2, 2
000f20  1d100000  unlock zero
000f24  7d000400  xsignal r8, 0
000f28  1f041000  addli r8, zero, 8
000f2c  7d000400  xsignal r8, 0
000f30  5b15ffff  j -1880
000f34  7d000000  xsignal zero, 0
000f38  bbe00800  bneq r17, zero, 56
000f3c  9f200000  addli r1, zero, 2
000f40  7d100000  xwait zero, 0
000f44  7d100000  xwait zero, 0
000f48  7d100000  xwait zero, 0
000f4c  7d100000  xwait zero, 0
000f50  7d100000  xwait zero, 0
000f54  7d100000  xwait zero, 0
000f58  7d100000  xwait zero, 0
000f5c  7d100000  xwait zero, 0
000f60  1d800000  lock zero, r1
000f64  0d000020  ew_cfg zero, zero, zero, 16
000f68  1d900000  unlock r1
000f6c  7d400000  xsignal_mode_cfg zero
000f70  9f8e7e00  addli sp, sp, 56
000f74  00a00300  mfence { lm, sm, gm }
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
0010b8  00100000  exit
0010bc  00100000  exit
0010c0  00100000  exit
0010c4  00100000  exit
0010c8  00100000  exit
0010cc  00100000  exit
0010d0  00100000  exit
0010d4  00100000  exit
0010d8  00100000  exit
0010dc  00100000  exit
0010e0  00100000  exit
0010e4  00100000  exit
0010e8  00100000  exit
0010ec  00100000  exit
0010f0  00100000  exit
0010f4  00100000  exit
0010f8  00100000  exit
0010fc  00100000  exit
001100  00100000  exit
001104  00100000  exit
001108  00100000  exit
00110c  00100000  exit
001110  00100000  exit
001114  00100000  exit
001118  00100000  exit
00111c  00100000  exit
001120  00100000  exit
001124  00100000  exit
001128  00100000  exit
00112c  00100000  exit
001130  00100000  exit
001134  00100000  exit
001138  00100000  exit
00113c  00100000  exit
001140  00100000  exit
001144  00100000  exit
001148  00100000  exit
00114c  00100000  exit
001150  00100000  exit
001154  00100000  exit
001158  00100000  exit
00115c  00100000  exit
001160  00100000  exit
001164  00100000  exit
001168  00100000  exit
00116c  00100000  exit
001170  00100000  exit
001174  00100000  exit
001178  00100000  exit
00117c  00100000  exit
001180  00100000  exit
001184  00100000  exit
001188  00100000  exit
00118c  00100000  exit
001190  00100000  exit
001194  00100000  exit
001198  00100000  exit
00119c  00100000  exit
0011a0  00100000  exit
0011a4  00100000  exit
0011a8  00100000  exit
0011ac  00100000  exit
0011b0  00100000  exit
0011b4  00100000  exit
0011b8  00100000  exit
