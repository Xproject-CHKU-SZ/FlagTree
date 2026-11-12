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
0000b8  1f8f4e00  addli r30, sp, 32
0000bc  9f100000  addli r1, zero, 1
0000c0  00370002  core_id r14
0000c4  63055f00  loadli.w r10,  40(r30)
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  37600700  beq r14, zero, 24
0000d0  abf0ffff  lui r1, 1048575
0000d4  9b90f0ff  ori r1, r1, 4095
0000d8  80a10004  csr_set csr3, r1
0000dc  00d00100  sync_group
0000e0  5b0d0000  j 104
0000e4  1f210000  addli r2, zero, 2
0000e8  fdd00000  uni_sram_cfg r1, r1
0000ec  abf1ffff  lui r3, 1048575
0000f0  1d000100  lock zero, r2
0000f4  8d000020  ew_cfg r1, zero, zero, 16
0000f8  9b90f1ff  ori r1, r3, 4095
0000fc  1d100100  unlock r2
000100  1f310000  addli r2, zero, 3
000104  80a10004  csr_set csr3, r1
000108  9f500000  addli r1, zero, 5
00010c  00d00100  sync_group
000110  7d800000  xsignal r1, 0
000114  7d000100  xsignal r2, 0
000118  9f101000  addli r1, zero, 9
00011c  1f710000  addli r2, zero, 7
000120  7d800000  xsignal r1, 0
000124  7d000100  xsignal r2, 0
000128  9f202000  addli r1, zero, 18
00012c  1f311000  addli r2, zero, 11
000130  7d800000  xsignal r1, 0
000134  7d000100  xsignal r2, 0
000138  9f601000  addli r1, zero, 14
00013c  1f012000  addli r2, zero, 16
000140  7d800000  xsignal r1, 0
000144  7d000100  xsignal r2, 0
000148  e3004f00  loadli.w r1,  32(r30)
00014c  63414f00  loadli.w r2,  36(r30)
000150  00d20002  load_param_i r4, 1
000154  e3015f00  loadli.w r3,  40(r30)
000158  8b101120  mul.s r1, r2, r1
00015c  1f010200  addli r2, r4, 0
000160  0b913050  fmac.s r2, r1, r3
000164  8b913020  mul.s r3, r1, r3
000168  1f71f1ff  addli r2, r2, -1
00016c  0b114130  div.s r2, r2, r4
000170  00520002  load_param_i r4, 0
000174  8b104120  mul.s r1, r2, r4
000178  0b114150  fmac.s r2, r2, r4
00017c  0b113140  min.s r2, r2, r3
000180  cb631106  ble.s r2, r1, 3320
000184  33110128  sext_int2long r[3:4], r2
000188  33960028  sext_int2long r[13:14], r1
00018c  ab400600  lui r1, 100
000190  2b430400  lui r6, 68
000194  1f390000  addli r18, zero, 3
000198  9f170000  addli r15, zero, 1
00019c  9f580000  addli r17, zero, 5
0001a0  1f4a0000  addli r20, zero, 4
0001a4  1f6c0000  addli r24, zero, 6
0001a8  9f042000  addli r9, zero, 16
0001ac  9f0b8000  addli r23, zero, 64
0001b0  2b480000  lui r16, 4
0001b4  ab0a4000  lui r21, 1024
0001b8  2b0b807f  lui r22, 522240
0001bc  ab0cffff  lui r25, 1048560
0001c0  9f050004  addli r11, zero, 512
0001c4  ab520400  lui r5, 69
0001c8  73382ffe  store.d r[3:4], -16(r30)
0001cc  2bf1ff7f  lui r2, 524287
0001d0  1b9e0080  ori r28, r1, 2048
0001d4  ab700000  lui r1, 7
0001d8  9b190380  ori r19, r6, 2048
0001dc  1b1df1ff  ori r26, r2, 4095
0001e0  2bf17f7f  lui r2, 522239
0001e4  9b9df0ff  ori r27, r1, 4095
0001e8  9b10f1ff  ori r1, r2, 4095
0001ec  db560000  j 692
0001f0  9f740000  addli r9, zero, 7
0001f4  1f240000  addli r8, zero, 2
0001f8  9f330000  addli r7, zero, 3
0001fc  6b528f00  load.d r[5:6], 8(r30)
000200  1731f102  sll.d r[3:4], r[3:4], r15
000204  1f531000  addli r6, zero, 13
000208  1f088000  addli r16, zero, 64
00020c  9f6b0000  addli r23, zero, 6
000210  1f390000  addli r18, zero, 3
000214  7d900400  xwait r9, 0
000218  1d800800  lock zero, r17
00021c  15000014  dma_cfg zero, zero, zero, 10
000220  0b212210  add.ul r[3:4], r[5:6], r[3:4]
000224  1f021000  addli r4, zero, 8
000228  9f022000  addli r5, zero, 16
00022c  1500f014  dma_cfg zero, zero, r15, 10
000230  15008014  dma_cfg zero, zero, r8, 10
000234  15007014  dma_cfg zero, zero, r7, 10
000238  15004015  dma_cfg zero, zero, r20, 10
00023c  15001015  dma_cfg zero, zero, r17, 10
000240  15008015  dma_cfg zero, zero, r24, 10
000244  1f0c0010  addli r24, zero, 2048
000248  15009014  dma_cfg zero, zero, r9, 10
00024c  15004014  dma_cfg zero, zero, r4, 10
000250  1f121000  addli r4, zero, 9
000254  15004014  dma_cfg zero, zero, r4, 10
000258  1f221000  addli r4, zero, 10
00025c  15004014  dma_cfg zero, zero, r4, 10
000260  1f321000  addli r4, zero, 11
000264  15004014  dma_cfg zero, zero, r4, 10
000268  1f421000  addli r4, zero, 12
00026c  15004014  dma_cfg zero, zero, r4, 10
000270  2b420000  lui r4, 4
000274  15006014  dma_cfg zero, zero, r6, 10
000278  1f631000  addli r6, zero, 14
00027c  15006014  dma_cfg zero, zero, r6, 10
000280  1f731000  addli r6, zero, 15
000284  15006014  dma_cfg zero, zero, r6, 10
000288  1f132000  addli r6, zero, 17
00028c  15005014  dma_cfg zero, zero, r5, 10
000290  15006014  dma_cfg zero, zero, r6, 10
000294  1f232000  addli r6, zero, 18
000298  15006014  dma_cfg zero, zero, r6, 10
00029c  1f332000  addli r6, zero, 19
0002a0  15006014  dma_cfg zero, zero, r6, 10
0002a4  1f432000  addli r6, zero, 20
0002a8  15006014  dma_cfg zero, zero, r6, 10
0002ac  1f532000  addli r6, zero, 21
0002b0  15006014  dma_cfg zero, zero, r6, 10
0002b4  1f632000  addli r6, zero, 22
0002b8  15006014  dma_cfg zero, zero, r6, 10
0002bc  1f732000  addli r6, zero, 23
0002c0  15006014  dma_cfg zero, zero, r6, 10
0002c4  1f033000  addli r6, zero, 24
0002c8  15006014  dma_cfg zero, zero, r6, 10
0002cc  1f133000  addli r6, zero, 25
0002d0  15006014  dma_cfg zero, zero, r6, 10
0002d4  1f233000  addli r6, zero, 26
0002d8  15006014  dma_cfg zero, zero, r6, 10
0002dc  1f333000  addli r6, zero, 27
0002e0  15006014  dma_cfg zero, zero, r6, 10
0002e4  1f433000  addli r6, zero, 28
0002e8  15006014  dma_cfg zero, zero, r6, 10
0002ec  1f533000  addli r6, zero, 29
0002f0  15006014  dma_cfg zero, zero, r6, 10
0002f4  1f633000  addli r6, zero, 30
0002f8  15006014  dma_cfg zero, zero, r6, 10
0002fc  1f733000  addli r6, zero, 31
000300  15006014  dma_cfg zero, zero, r6, 10
000304  1f030001  addli r6, zero, 128
000308  95870700  dma_cfg r15, r15, zero, 0
00030c  95070002  dma_cfg r15, zero, zero, 1
000310  15000004  dma_cfg zero, zero, zero, 2
000314  15020007  dma_cfg r4, zero, r16, 3
000318  1b120204  ori r4, r4, 64
00031c  15035008  dma_cfg r6, zero, r5, 4
000320  150c000b  dma_cfg r24, zero, r16, 5
000324  15000010  dma_cfg zero, zero, zero, 8
000328  35000000  dma_run zero
00032c  1500f00a  dma_cfg zero, zero, r15, 5
000330  15000010  dma_cfg zero, zero, zero, 8
000334  1d900800  unlock r17
000338  1d000a00  lock zero, r20
00033c  95870700  dma_cfg r15, r15, zero, 0
000340  15800104  dma_cfg zero, r3, zero, 2
000344  15020107  dma_cfg r4, r2, r16, 3
000348  1f010020  addli r2, zero, 4096
00034c  15035808  dma_cfg r6, r16, r5, 4
000350  ab520400  lui r5, 69
000354  150c010b  dma_cfg r24, r2, r16, 5
000358  1f011000  addli r2, zero, 8
00035c  2b480000  lui r16, 4
000360  15000010  dma_cfg zero, zero, zero, 8
000364  35000000  dma_run zero
000368  1500f00a  dma_cfg zero, zero, r15, 5
00036c  15000010  dma_cfg zero, zero, zero, 8
000370  1d100a00  unlock r20
000374  1d800800  lock zero, r17
000378  15000014  dma_cfg zero, zero, zero, 10
00037c  1500f014  dma_cfg zero, zero, r15, 10
000380  15008014  dma_cfg zero, zero, r8, 10
000384  15007014  dma_cfg zero, zero, r7, 10
000388  15004015  dma_cfg zero, zero, r20, 10
00038c  15001015  dma_cfg zero, zero, r17, 10
000390  15007015  dma_cfg zero, zero, r23, 10
000394  9f0b8000  addli r23, zero, 64
000398  15009014  dma_cfg zero, zero, r9, 10
00039c  9f042000  addli r9, zero, 16
0003a0  15002014  dma_cfg zero, zero, r2, 10
0003a4  1f111000  addli r2, zero, 9
0003a8  15002014  dma_cfg zero, zero, r2, 10
0003ac  1f211000  addli r2, zero, 10
0003b0  15002014  dma_cfg zero, zero, r2, 10
0003b4  1f311000  addli r2, zero, 11
0003b8  15002014  dma_cfg zero, zero, r2, 10
0003bc  1f411000  addli r2, zero, 12
0003c0  15002014  dma_cfg zero, zero, r2, 10
0003c4  1f511000  addli r2, zero, 13
0003c8  15002014  dma_cfg zero, zero, r2, 10
0003cc  1f611000  addli r2, zero, 14
0003d0  15002014  dma_cfg zero, zero, r2, 10
0003d4  1f711000  addli r2, zero, 15
0003d8  15002014  dma_cfg zero, zero, r2, 10
0003dc  1f112000  addli r2, zero, 17
0003e0  15009014  dma_cfg zero, zero, r9, 10
0003e4  15002014  dma_cfg zero, zero, r2, 10
0003e8  1f212000  addli r2, zero, 18
0003ec  15002014  dma_cfg zero, zero, r2, 10
0003f0  1f312000  addli r2, zero, 19
0003f4  15002014  dma_cfg zero, zero, r2, 10
0003f8  1f412000  addli r2, zero, 20
0003fc  15002014  dma_cfg zero, zero, r2, 10
000400  1f512000  addli r2, zero, 21
000404  15002014  dma_cfg zero, zero, r2, 10
000408  1f612000  addli r2, zero, 22
00040c  15002014  dma_cfg zero, zero, r2, 10
000410  1f712000  addli r2, zero, 23
000414  15002014  dma_cfg zero, zero, r2, 10
000418  1f013000  addli r2, zero, 24
00041c  15002014  dma_cfg zero, zero, r2, 10
000420  1f113000  addli r2, zero, 25
000424  15002014  dma_cfg zero, zero, r2, 10
000428  1f213000  addli r2, zero, 26
00042c  15002014  dma_cfg zero, zero, r2, 10
000430  1f313000  addli r2, zero, 27
000434  15002014  dma_cfg zero, zero, r2, 10
000438  1f413000  addli r2, zero, 28
00043c  15002014  dma_cfg zero, zero, r2, 10
000440  1f513000  addli r2, zero, 29
000444  15002014  dma_cfg zero, zero, r2, 10
000448  1f613000  addli r2, zero, 30
00044c  15002014  dma_cfg zero, zero, r2, 10
000450  1f713000  addli r2, zero, 31
000454  15002014  dma_cfg zero, zero, r2, 10
000458  95870700  dma_cfg r15, r15, zero, 0
00045c  95070002  dma_cfg r15, zero, zero, 1
000460  15000004  dma_cfg zero, zero, zero, 2
000464  15087007  dma_cfg r16, zero, r23, 3
000468  15039008  dma_cfg r6, zero, r9, 4
00046c  2b430400  lui r6, 68
000470  150c700b  dma_cfg r24, zero, r23, 5
000474  1f6c0000  addli r24, zero, 6
000478  15000010  dma_cfg zero, zero, zero, 8
00047c  35000000  dma_run zero
000480  1500f00a  dma_cfg zero, zero, r15, 5
000484  15000010  dma_cfg zero, zero, zero, 8
000488  1d900800  unlock r17
00048c  7d000c00  xsignal r24, 0
000490  6b510fff  load.d r[3:4], -16(r30)
000494  27160600  addli.d r[13:14], r[13:14], 1
000498  13312604  setlt.sl r2, r[13:14], r[3:4]
00049c  37770104  beq r2, zero, 2524
0004a0  0b11a630  div.s r2, r12, r10
0004a4  e3414f00  loadli.w r3,  36(r30)
0004a8  1f820100  addli r4, r3, 0
0004ac  8b114138  mod.s r3, r2, r4
0004b0  0b114130  div.s r2, r2, r4
0004b4  b3130128  sext_int2long r[8:9], r2
0004b8  b3910128  sext_int2long r[4:5], r3
0004bc  1f111000  addli r2, zero, 9
0004c0  17b12102  sll.d r[3:4], r[4:5], r2
0004c4  733c7ffe  store.d r[8:9], -8(r30)
0004c8  3f20e900  blt.s r18, r14, 8
0004cc  5b170000  j 184
0004d0  3ffbe800  blt.s r17, r14, 732
0004d4  2b020200  lui r4, 32
0004d8  9f230000  addli r7, zero, 2
0004dc  b70c4701  beq r14, r20, 800
0004e0  73342ffe  store.d r[3:4], -24(r30)
0004e4  3b731705  bneq r14, r17, 2268
0004e8  9f211000  addli r3, zero, 10
0004ec  1f010000  addli r2, zero, 0
0004f0  7d900100  xwait r3, 0
0004f4  9f411000  addli r3, zero, 12
0004f8  7d900100  xwait r3, 0
0004fc  1d800300  lock zero, r7
000500  ab01803f  lui r3, 260096
000504  0d000002  ew_cfg zero, zero, zero, 1
000508  8d910100  ewcoeff_cfg r3, r3, zero, 0
00050c  9f71f003  addli r3, zero, 511
000510  0d800104  ew_cfg zero, r3, zero, 2
000514  8d070006  ew_cfg r15, zero, zero, 3
000518  8b113111  add.s r3, r2, r19
00051c  1f010110  addli r2, r2, 2048
000520  ad816100  dsmadd r3, r3, r6, 0
000524  bb5f41fe  bneq r2, r4, -12
000528  9f311000  addli r3, zero, 11
00052c  1d900300  unlock r7
000530  1f010000  addli r2, zero, 0
000534  7d800100  xsignal r3, 0
000538  7d900400  xwait r9, 0
00053c  1d800300  lock zero, r7
000540  9f71f003  addli r3, zero, 511
000544  0d000002  ew_cfg zero, zero, zero, 1
000548  0d800104  ew_cfg zero, r3, zero, 2
00054c  8d070006  ew_cfg r15, zero, zero, 3
000550  0d100000  ewcoeff_cfg zero, zero, zero, 0
000554  8b11c111  add.s r3, r2, r28
000558  0b123111  add.s r4, r2, r19
00055c  1f010110  addli r2, r2, 2048
000560  ad214200  dscmpnsel r3, r4, r4, 0
000564  ab010200  lui r3, 32
000568  bb3f31fe  bneq r2, r3, -20
00056c  1f511000  addli r2, zero, 13
000570  1d900300  unlock r7
000574  7d000100  xsignal r2, 0
000578  1f711000  addli r2, zero, 15
00057c  7d000100  xsignal r2, 0
000580  5be2ffff  j -240
000584  b731f7fe  beq r14, r15, -916
000588  1f220000  addli r4, zero, 2
00058c  b7724704  beq r14, r4, 2236
000590  73342ffe  store.d r[3:4], -24(r30)
000594  bb302705  bneq r14, r18, 2092
000598  1f511000  addli r2, zero, 13
00059c  7330cffe  store.d r[13:14], -32(r30)
0005a0  b3080028  zext_int2long r[18:19], zero
0005a4  7d100100  xwait r2, 0
0005a8  1f711000  addli r2, zero, 15
0005ac  7d100100  xwait r2, 0
0005b0  1f212000  addli r2, zero, 18
0005b4  7d100100  xwait r2, 0
0005b8  3d000000  xfence
0005bc  00a00300  mfence { lm, sm, gm }
0005c0  5b030000  j 24
0005c4  1f717000  addli r2, zero, 63
0005c8  33010128  zext_int2long r[3:4], r2
0005cc  13a12804  setlt.ul r2, r[18:19], r[3:4]
0005d0  a7980800  addli.d r[18:19], r[18:19], 1
0005d4  b70e0102  beq r2, zero, 1952
0005d8  1f111000  addli r2, zero, 9
0005dc  33020028  zext_int2long r[5:6], zero
0005e0  97b72802  sll.d r[16:17], r[18:19], r2
0005e4  db050000  j 44
0005e8  27420200  addli.d r[5:6], r[5:6], 4
0005ec  b3830528  zext_int2long r[8:9], r11
0005f0  13217202  setneq.d r2, r[5:6], r[8:9]
0005f4  ab430200  lui r7, 36
0005f8  8b937410  add.s r7, r9, r7
0005fc  73e6c300  stores.w r12, 12(r7)
000600  73e4d300  stores.w r13, 8(r7)
000604  73e23300  stores.w r3, 4(r7)
000608  73e06300  stores.w r6, 0(r7)
00060c  b76e01fe  beq r2, zero, -72
000610  0b21f210  add.ul r[3:4], r[5:6], r[16:17]
000614  9b342100  slli r9, r2, 2
000618  0b913411  add.s r2, r9, r19
00061c  0b95c411  add.s r10, r9, r28
000620  6f440100  loads.w r8, 0(r2)
000624  ef41c100  loads.w r3, 12(r2)
000628  6f438100  loads.w r6, 8(r2)
00062c  ef434100  loads.w r7, 4(r2)
000630  6f41c500  loads.w r2, 12(r10)
000634  ef4b8500  loads.w r23, 8(r10)
000638  6f474500  loads.w r14, 4(r10)
00063c  1b369400  slli r12, r8, 9
000640  9b467401  srli r13, r8, 23
000644  13060600  seteq r12, r12, zero
000648  9b86f60f  andi r13, r13, 255
00064c  9bf6f60f  setlti r13, r13, 255
000650  1796c600  or r12, r13, r12
000654  37200600  beq r12, zero, 8
000658  6f440500  loads.w r8, 0(r10)
00065c  1bb59300  slli r10, r7, 9
000660  1bc67301  srli r12, r7, 23
000664  13050500  seteq r10, r10, zero
000668  1b06f60f  andi r12, r12, 255
00066c  1b76f60f  setlti r12, r12, 255
000670  1715a600  or r10, r12, r10
000674  3b200500  bneq r10, zero, 8
000678  1f870300  addli r14, r7, 0
00067c  9b339300  slli r7, r6, 9
000680  1b457301  srli r10, r6, 23
000684  93830300  seteq r7, r7, zero
000688  1b05f50f  andi r10, r10, 255
00068c  1b75f50f  setlti r10, r10, 255
000690  97137500  or r7, r10, r7
000694  3ba00300  bneq r7, zero, 8
000698  9f0b0300  addli r23, r6, 0
00069c  1bb39100  slli r6, r3, 9
0006a0  9bc37101  srli r7, r3, 23
0006a4  13030300  seteq r6, r6, zero
0006a8  9b83f30f  andi r7, r7, 255
0006ac  9bf3f30f  setlti r7, r7, 255
0006b0  17936300  or r6, r7, r6
0006b4  3b200300  bneq r6, zero, 8
0006b8  1f810100  addli r2, r3, 0
0006bc  170ca101  and r24, r2, r26
0006c0  93018b05  setlt.u r3, r22, r24
0006c4  3bb00100  bneq r3, zero, 12
0006c8  1f060100  addli r12, r2, 0
0006cc  5b010000  j 8
0006d0  17165101  or r12, r2, r21
0006d4  9783ab01  and r7, r23, r26
0006d8  93017b04  setlt.u r3, r22, r7
0006dc  3bb00100  bneq r3, zero, 12
0006e0  9f860b00  addli r13, r23, 0
0006e4  5b010000  j 8
0006e8  97965b01  or r13, r23, r21
0006ec  1705a701  and r10, r14, r26
0006f0  9301ab04  setlt.u r3, r22, r10
0006f4  3bb00100  bneq r3, zero, 12
0006f8  9f010700  addli r3, r14, 0
0006fc  5b010000  j 8
000700  97115701  or r3, r14, r21
000704  170aa401  and r20, r8, r26
000708  13034b05  setlt.u r6, r22, r20
00070c  3b500300  bneq r6, zero, 20
000710  1f030400  addli r6, r8, 0
000714  138a4005  setlt.u r20, r1, r20
000718  37500a00  beq r20, zero, 20
00071c  db040000  j 36
000720  17135401  or r6, r8, r21
000724  138a4005  setlt.u r20, r1, r20
000728  3b600a00  bneq r20, zero, 24
00072c  1b430401  srli r6, r8, 16
000730  1b031300  andi r6, r6, 1
000734  0b136410  add.s r6, r8, r6
000738  0b13b311  add.s r6, r6, r27
00073c  17039301  and r6, r6, r25
000740  1384a004  setlt.u r8, r1, r10
000744  37600400  beq r8, zero, 24
000748  93837004  setlt.u r7, r1, r7
00074c  b7b00300  beq r7, zero, 44
000750  93838005  setlt.u r7, r1, r24
000754  3bda03fe  bneq r7, zero, -364
000758  db070000  j 60
00075c  9b410701  srli r3, r14, 16
000760  9b811100  andi r3, r3, 1
000764  8b113710  add.s r3, r14, r3
000768  8b91b111  add.s r3, r3, r27
00076c  97819101  and r3, r3, r25
000770  93837004  setlt.u r7, r1, r7
000774  3bff03fe  bneq r7, zero, -36
000778  9bc30b01  srli r7, r23, 16
00077c  9b831300  andi r7, r7, 1
000780  8b937b10  add.s r7, r23, r7
000784  8b93b311  add.s r7, r7, r27
000788  97869301  and r13, r7, r25
00078c  93838005  setlt.u r7, r1, r24
000790  3be903fe  bneq r7, zero, -424
000794  9b430101  srli r7, r2, 16
000798  9b831300  andi r7, r7, 1
00079c  0b117110  add.s r2, r2, r7
0007a0  0b11b111  add.s r2, r2, r27
0007a4  17069101  and r12, r2, r25
0007a8  5bc8ffff  j -448
0007ac  1f240000  addli r8, zero, 2
0007b0  73342ffe  store.d r[3:4], -24(r30)
0007b4  37728701  beq r14, r24, 156
0007b8  1f710000  addli r2, zero, 7
0007bc  3b182702  bneq r14, r2, 1540
0007c0  1f111000  addli r2, zero, 9
0007c4  7d100c00  xwait r24, 0
0007c8  7d100100  xwait r2, 0
0007cc  1d000000  lock zero, zero
0007d0  1f710000  addli r2, zero, 7
0007d4  01040000  ds_cfg r8, zero, 0
0007d8  81050002  ds_cfg r11, zero, 1
0007dc  810b001c  ds_cfg r23, zero, 14
0007e0  8105001a  ds_cfg r11, zero, 13
0007e4  41007805  shuffle_coa zero, r16, r23, 2
0007e8  1d100000  unlock zero
0007ec  7d000100  xsignal r2, 0
0007f0  1f011000  addli r2, zero, 8
0007f4  7d000100  xsignal r2, 0
0007f8  5b93ffff  j -872
0007fc  9f011000  addli r3, zero, 8
000800  7d100a00  xwait r20, 0
000804  1f010000  addli r2, zero, 0
000808  7d900100  xwait r3, 0
00080c  9f611000  addli r3, zero, 14
000810  7d900100  xwait r3, 0
000814  9f810900  addli r3, r19, 0
000818  1d800700  lock zero, r15
00081c  898b7b01  mm_cfg r23, r23, r23, 0
000820  098af404  mm_cfg r20, r9, r15, 2
000824  a9012010  mm r3, zero, r2, 8
000828  9f810102  addli r3, r3, 256
00082c  0b110111  add.s r2, r2, r16
000830  1d900700  unlock r15
000834  bb9f51fe  bneq r3, r5, -28
000838  1f111000  addli r2, zero, 9
00083c  7d800800  xsignal r17, 0
000840  7d000100  xsignal r2, 0
000844  1f411000  addli r2, zero, 12
000848  7d000100  xsignal r2, 0
00084c  db88ffff  j -956
000850  9f330000  addli r7, zero, 3
000854  6b518fff  load.d r[3:4], -8(r30)
000858  1f521000  addli r4, zero, 13
00085c  1f531000  addli r6, zero, 13
000860  1f350000  addli r10, zero, 3
000864  9f341000  addli r9, zero, 11
000868  1f691000  addli r18, zero, 14
00086c  7d900300  xwait r7, 0
000870  1d800800  lock zero, r17
000874  15000014  dma_cfg zero, zero, zero, 10
000878  17314102  sll.d r[3:4], r[3:4], r4
00087c  6b520f00  load.d r[5:6], 0(r30)
000880  1500f014  dma_cfg zero, zero, r15, 10
000884  15008014  dma_cfg zero, zero, r8, 10
000888  15007014  dma_cfg zero, zero, r7, 10
00088c  0b212210  add.ul r[3:4], r[5:6], r[3:4]
000890  1f720000  addli r4, zero, 7
000894  9f421000  addli r5, zero, 12
000898  9f730000  addli r7, zero, 7
00089c  15004015  dma_cfg zero, zero, r20, 10
0008a0  15001015  dma_cfg zero, zero, r17, 10
0008a4  15008015  dma_cfg zero, zero, r24, 10
0008a8  1f0c0002  addli r24, zero, 256
0008ac  15004014  dma_cfg zero, zero, r4, 10
0008b0  1f021000  addli r4, zero, 8
0008b4  15004014  dma_cfg zero, zero, r4, 10
0008b8  1f121000  addli r4, zero, 9
0008bc  15004014  dma_cfg zero, zero, r4, 10
0008c0  1f221000  addli r4, zero, 10
0008c4  15004014  dma_cfg zero, zero, r4, 10
0008c8  1f321000  addli r4, zero, 11
0008cc  15004014  dma_cfg zero, zero, r4, 10
0008d0  1f022000  addli r4, zero, 16
0008d4  15005014  dma_cfg zero, zero, r5, 10
0008d8  9f621000  addli r5, zero, 14
0008dc  15006014  dma_cfg zero, zero, r6, 10
0008e0  1f031000  addli r6, zero, 8
0008e4  15005014  dma_cfg zero, zero, r5, 10
0008e8  9f721000  addli r5, zero, 15
0008ec  15005014  dma_cfg zero, zero, r5, 10
0008f0  9f122000  addli r5, zero, 17
0008f4  15004014  dma_cfg zero, zero, r4, 10
0008f8  1f721000  addli r4, zero, 15
0008fc  15005014  dma_cfg zero, zero, r5, 10
000900  9f222000  addli r5, zero, 18
000904  15005014  dma_cfg zero, zero, r5, 10
000908  9f322000  addli r5, zero, 19
00090c  15005014  dma_cfg zero, zero, r5, 10
000910  9f422000  addli r5, zero, 20
000914  15005014  dma_cfg zero, zero, r5, 10
000918  9f522000  addli r5, zero, 21
00091c  15005014  dma_cfg zero, zero, r5, 10
000920  9f622000  addli r5, zero, 22
000924  15005014  dma_cfg zero, zero, r5, 10
000928  9f722000  addli r5, zero, 23
00092c  15005014  dma_cfg zero, zero, r5, 10
000930  9f023000  addli r5, zero, 24
000934  15005014  dma_cfg zero, zero, r5, 10
000938  9f123000  addli r5, zero, 25
00093c  15005014  dma_cfg zero, zero, r5, 10
000940  9f223000  addli r5, zero, 26
000944  15005014  dma_cfg zero, zero, r5, 10
000948  9f323000  addli r5, zero, 27
00094c  15005014  dma_cfg zero, zero, r5, 10
000950  9f423000  addli r5, zero, 28
000954  15005014  dma_cfg zero, zero, r5, 10
000958  9f523000  addli r5, zero, 29
00095c  15005014  dma_cfg zero, zero, r5, 10
000960  9f623000  addli r5, zero, 30
000964  15005014  dma_cfg zero, zero, r5, 10
000968  9f723000  addli r5, zero, 31
00096c  15005014  dma_cfg zero, zero, r5, 10
000970  9f020001  addli r5, zero, 128
000974  95870700  dma_cfg r15, r15, zero, 0
000978  95070002  dma_cfg r15, zero, zero, 1
00097c  15000004  dma_cfg zero, zero, zero, 2
000980  15007007  dma_cfg zero, zero, r23, 3
000984  95028008  dma_cfg r5, zero, r8, 4
000988  150c700b  dma_cfg r24, zero, r23, 5
00098c  15000010  dma_cfg zero, zero, zero, 8
000990  35000000  dma_run zero
000994  1500f00a  dma_cfg zero, zero, r15, 5
000998  15000010  dma_cfg zero, zero, zero, 8
00099c  1d900800  unlock r17
0009a0  1d000a00  lock zero, r20
0009a4  95870700  dma_cfg r15, r15, zero, 0
0009a8  15800104  dma_cfg zero, r3, zero, 2
0009ac  950b7107  dma_cfg r23, r2, r23, 3
0009b0  1f610000  addli r2, zero, 6
0009b4  95828b08  dma_cfg r5, r23, r8, 4
0009b8  158c720b  dma_cfg r24, r5, r23, 5
0009bc  15000010  dma_cfg zero, zero, zero, 8
0009c0  35000000  dma_run zero
0009c4  1500f00a  dma_cfg zero, zero, r15, 5
0009c8  15000010  dma_cfg zero, zero, zero, 8
0009cc  1d100a00  unlock r20
0009d0  1d800800  lock zero, r17
0009d4  15000014  dma_cfg zero, zero, zero, 10
0009d8  1500f014  dma_cfg zero, zero, r15, 10
0009dc  15008014  dma_cfg zero, zero, r8, 10
0009e0  1500a014  dma_cfg zero, zero, r10, 10
0009e4  1f352000  addli r10, zero, 19
0009e8  15004015  dma_cfg zero, zero, r20, 10
0009ec  15001015  dma_cfg zero, zero, r17, 10
0009f0  15002014  dma_cfg zero, zero, r2, 10
0009f4  1f111000  addli r2, zero, 9
0009f8  15007014  dma_cfg zero, zero, r7, 10
0009fc  9f132000  addli r7, zero, 17
000a00  15006014  dma_cfg zero, zero, r6, 10
000a04  15002014  dma_cfg zero, zero, r2, 10
000a08  1f211000  addli r2, zero, 10
000a0c  15002014  dma_cfg zero, zero, r2, 10
000a10  1f411000  addli r2, zero, 12
000a14  15009014  dma_cfg zero, zero, r9, 10
000a18  9f242000  addli r9, zero, 18
000a1c  15002014  dma_cfg zero, zero, r2, 10
000a20  1f511000  addli r2, zero, 13
000a24  15002014  dma_cfg zero, zero, r2, 10
000a28  1f012000  addli r2, zero, 16
000a2c  15002015  dma_cfg zero, zero, r18, 10
000a30  1f492000  addli r18, zero, 20
000a34  15004014  dma_cfg zero, zero, r4, 10
000a38  15002014  dma_cfg zero, zero, r2, 10
000a3c  1f512000  addli r2, zero, 21
000a40  15007014  dma_cfg zero, zero, r7, 10
000a44  15009014  dma_cfg zero, zero, r9, 10
000a48  1500a014  dma_cfg zero, zero, r10, 10
000a4c  15002015  dma_cfg zero, zero, r18, 10
000a50  15002014  dma_cfg zero, zero, r2, 10
000a54  1f612000  addli r2, zero, 22
000a58  15002014  dma_cfg zero, zero, r2, 10
000a5c  1f712000  addli r2, zero, 23
000a60  15002014  dma_cfg zero, zero, r2, 10
000a64  1f013000  addli r2, zero, 24
000a68  15002014  dma_cfg zero, zero, r2, 10
000a6c  1f113000  addli r2, zero, 25
000a70  15002014  dma_cfg zero, zero, r2, 10
000a74  1f213000  addli r2, zero, 26
000a78  15002014  dma_cfg zero, zero, r2, 10
000a7c  1f313000  addli r2, zero, 27
000a80  15002014  dma_cfg zero, zero, r2, 10
000a84  1f413000  addli r2, zero, 28
000a88  15002014  dma_cfg zero, zero, r2, 10
000a8c  1f513000  addli r2, zero, 29
000a90  15002014  dma_cfg zero, zero, r2, 10
000a94  1f613000  addli r2, zero, 30
000a98  15002014  dma_cfg zero, zero, r2, 10
000a9c  1f713000  addli r2, zero, 31
000aa0  15002014  dma_cfg zero, zero, r2, 10
000aa4  95870700  dma_cfg r15, r15, zero, 0
000aa8  95070002  dma_cfg r15, zero, zero, 1
000aac  15000004  dma_cfg zero, zero, zero, 2
000ab0  15007007  dma_cfg zero, zero, r23, 3
000ab4  95028008  dma_cfg r5, zero, r8, 4
000ab8  150c700b  dma_cfg r24, zero, r23, 5
000abc  eb5b0f01  load.d r[24:25], 16(r30)
000ac0  15000010  dma_cfg zero, zero, zero, 8
000ac4  35000000  dma_run zero
000ac8  1500f00a  dma_cfg zero, zero, r15, 5
000acc  15000010  dma_cfg zero, zero, zero, 8
000ad0  1d900800  unlock r17
000ad4  6b518ffe  load.d r[3:4], -24(r30)
000ad8  7d000400  xsignal r8, 0
000adc  1f341000  addli r8, zero, 11
000ae0  7d100400  xwait r8, 0
000ae4  1d800800  lock zero, r17
000ae8  1731f102  sll.d r[3:4], r[3:4], r15
000aec  15000014  dma_cfg zero, zero, zero, 10
000af0  1500f014  dma_cfg zero, zero, r15, 10
000af4  0ba12b10  add.ul r[3:4], r[24:25], r[3:4]
000af8  1f2c0000  addli r24, zero, 2
000afc  9f0b8000  addli r23, zero, 64
000b00  15008015  dma_cfg zero, zero, r24, 10
000b04  1f3c0000  addli r24, zero, 3
000b08  15008015  dma_cfg zero, zero, r24, 10
000b0c  1f6c0000  addli r24, zero, 6
000b10  15004015  dma_cfg zero, zero, r20, 10
000b14  15001015  dma_cfg zero, zero, r17, 10
000b18  15008015  dma_cfg zero, zero, r24, 10
000b1c  1f7c0000  addli r24, zero, 7
000b20  15008015  dma_cfg zero, zero, r24, 10
000b24  1f0c0010  addli r24, zero, 2048
000b28  15006014  dma_cfg zero, zero, r6, 10
000b2c  1f131000  addli r6, zero, 9
000b30  15006014  dma_cfg zero, zero, r6, 10
000b34  1f231000  addli r6, zero, 10
000b38  15006014  dma_cfg zero, zero, r6, 10
000b3c  1f431000  addli r6, zero, 12
000b40  15008014  dma_cfg zero, zero, r8, 10
000b44  1f743000  addli r8, zero, 31
000b48  15006014  dma_cfg zero, zero, r6, 10
000b4c  1f531000  addli r6, zero, 13
000b50  15006014  dma_cfg zero, zero, r6, 10
000b54  1f631000  addli r6, zero, 14
000b58  15006014  dma_cfg zero, zero, r6, 10
000b5c  2b430400  lui r6, 68
000b60  15004014  dma_cfg zero, zero, r4, 10
000b64  1f022000  addli r4, zero, 16
000b68  15004014  dma_cfg zero, zero, r4, 10
000b6c  1f522000  addli r4, zero, 21
000b70  15007014  dma_cfg zero, zero, r7, 10
000b74  9f232000  addli r7, zero, 18
000b78  15009014  dma_cfg zero, zero, r9, 10
000b7c  9f042000  addli r9, zero, 16
000b80  1500a014  dma_cfg zero, zero, r10, 10
000b84  63055f00  loadli.w r10,  40(r30)
000b88  15002015  dma_cfg zero, zero, r18, 10
000b8c  1f390000  addli r18, zero, 3
000b90  15004014  dma_cfg zero, zero, r4, 10
000b94  1f622000  addli r4, zero, 22
000b98  15004014  dma_cfg zero, zero, r4, 10
000b9c  1f722000  addli r4, zero, 23
000ba0  15004014  dma_cfg zero, zero, r4, 10
000ba4  1f023000  addli r4, zero, 24
000ba8  15004014  dma_cfg zero, zero, r4, 10
000bac  1f123000  addli r4, zero, 25
000bb0  15004014  dma_cfg zero, zero, r4, 10
000bb4  1f223000  addli r4, zero, 26
000bb8  15004014  dma_cfg zero, zero, r4, 10
000bbc  1f323000  addli r4, zero, 27
000bc0  15004014  dma_cfg zero, zero, r4, 10
000bc4  1f423000  addli r4, zero, 28
000bc8  15004014  dma_cfg zero, zero, r4, 10
000bcc  1f523000  addli r4, zero, 29
000bd0  15004014  dma_cfg zero, zero, r4, 10
000bd4  1f623000  addli r4, zero, 30
000bd8  15004014  dma_cfg zero, zero, r4, 10
000bdc  2b420400  lui r4, 68
000be0  15008014  dma_cfg zero, zero, r8, 10
000be4  95870700  dma_cfg r15, r15, zero, 0
000be8  95070002  dma_cfg r15, zero, zero, 1
000bec  15000004  dma_cfg zero, zero, zero, 2
000bf0  15027007  dma_cfg r4, zero, r23, 3
000bf4  1f022000  addli r4, zero, 16
000bf8  95024008  dma_cfg r5, zero, r4, 4
000bfc  2b420400  lui r4, 68
000c00  150cf00a  dma_cfg r24, zero, r15, 5
000c04  15000010  dma_cfg zero, zero, zero, 8
000c08  35000000  dma_run zero
000c0c  1500f00a  dma_cfg zero, zero, r15, 5
000c10  1b120204  ori r4, r4, 64
000c14  15000010  dma_cfg zero, zero, zero, 8
000c18  1d900800  unlock r17
000c1c  1d000a00  lock zero, r20
000c20  95870700  dma_cfg r15, r15, zero, 0
000c24  15800104  dma_cfg zero, r3, zero, 2
000c28  15027107  dma_cfg r4, r2, r23, 3
000c2c  1f012000  addli r2, zero, 16
000c30  9f311000  addli r3, zero, 11
000c34  95822b08  dma_cfg r5, r23, r2, 4
000c38  1f010008  addli r2, zero, 1024
000c3c  150cf10a  dma_cfg r24, r2, r15, 5
000c40  1f210000  addli r2, zero, 2
000c44  15000010  dma_cfg zero, zero, zero, 8
000c48  35000000  dma_run zero
000c4c  1500f00a  dma_cfg zero, zero, r15, 5
000c50  15000010  dma_cfg zero, zero, zero, 8
000c54  1d100a00  unlock r20
000c58  1d800800  lock zero, r17
000c5c  15000014  dma_cfg zero, zero, zero, 10
000c60  1500f014  dma_cfg zero, zero, r15, 10
000c64  15002014  dma_cfg zero, zero, r2, 10
000c68  1f310000  addli r2, zero, 3
000c6c  15002014  dma_cfg zero, zero, r2, 10
000c70  1f610000  addli r2, zero, 6
000c74  15004015  dma_cfg zero, zero, r20, 10
000c78  15001015  dma_cfg zero, zero, r17, 10
000c7c  15002014  dma_cfg zero, zero, r2, 10
000c80  1f710000  addli r2, zero, 7
000c84  15002014  dma_cfg zero, zero, r2, 10
000c88  1f011000  addli r2, zero, 8
000c8c  15002014  dma_cfg zero, zero, r2, 10
000c90  1f111000  addli r2, zero, 9
000c94  15002014  dma_cfg zero, zero, r2, 10
000c98  1f211000  addli r2, zero, 10
000c9c  15002014  dma_cfg zero, zero, r2, 10
000ca0  15003014  dma_cfg zero, zero, r3, 10
000ca4  9f411000  addli r3, zero, 12
000ca8  15003014  dma_cfg zero, zero, r3, 10
000cac  9f511000  addli r3, zero, 13
000cb0  15003014  dma_cfg zero, zero, r3, 10
000cb4  9f611000  addli r3, zero, 14
000cb8  15003014  dma_cfg zero, zero, r3, 10
000cbc  9f711000  addli r3, zero, 15
000cc0  15003014  dma_cfg zero, zero, r3, 10
000cc4  9f112000  addli r3, zero, 17
000cc8  15009014  dma_cfg zero, zero, r9, 10
000ccc  15003014  dma_cfg zero, zero, r3, 10
000cd0  9f312000  addli r3, zero, 19
000cd4  15007014  dma_cfg zero, zero, r7, 10
000cd8  15003014  dma_cfg zero, zero, r3, 10
000cdc  9f412000  addli r3, zero, 20
000ce0  15003014  dma_cfg zero, zero, r3, 10
000ce4  9f512000  addli r3, zero, 21
000ce8  15003014  dma_cfg zero, zero, r3, 10
000cec  9f612000  addli r3, zero, 22
000cf0  15003014  dma_cfg zero, zero, r3, 10
000cf4  9f712000  addli r3, zero, 23
000cf8  15003014  dma_cfg zero, zero, r3, 10
000cfc  9f013000  addli r3, zero, 24
000d00  15003014  dma_cfg zero, zero, r3, 10
000d04  9f113000  addli r3, zero, 25
000d08  15003014  dma_cfg zero, zero, r3, 10
000d0c  9f213000  addli r3, zero, 26
000d10  15003014  dma_cfg zero, zero, r3, 10
000d14  9f313000  addli r3, zero, 27
000d18  15003014  dma_cfg zero, zero, r3, 10
000d1c  9f413000  addli r3, zero, 28
000d20  15003014  dma_cfg zero, zero, r3, 10
000d24  9f513000  addli r3, zero, 29
000d28  15003014  dma_cfg zero, zero, r3, 10
000d2c  9f613000  addli r3, zero, 30
000d30  15003014  dma_cfg zero, zero, r3, 10
000d34  15008014  dma_cfg zero, zero, r8, 10
000d38  95870700  dma_cfg r15, r15, zero, 0
000d3c  95070002  dma_cfg r15, zero, zero, 1
000d40  15000004  dma_cfg zero, zero, zero, 2
000d44  15037007  dma_cfg r6, zero, r23, 3
000d48  95029008  dma_cfg r5, zero, r9, 4
000d4c  ab520400  lui r5, 69
000d50  150cf00a  dma_cfg r24, zero, r15, 5
000d54  1f6c0000  addli r24, zero, 6
000d58  15000010  dma_cfg zero, zero, zero, 8
000d5c  35000000  dma_run zero
000d60  1500f00a  dma_cfg zero, zero, r15, 5
000d64  15000010  dma_cfg zero, zero, zero, 8
000d68  1d900800  unlock r17
000d6c  7d000100  xsignal r2, 0
000d70  5be4feff  j -2272
000d74  1f611000  addli r2, zero, 14
000d78  00200100  mfence { sm }
000d7c  9f042000  addli r9, zero, 16
000d80  63055f00  loadli.w r10,  40(r30)
000d84  00370002  core_id r14
000d88  1f390000  addli r18, zero, 3
000d8c  9f170000  addli r15, zero, 1
000d90  9f580000  addli r17, zero, 5
000d94  1f4a0000  addli r20, zero, 4
000d98  1f6c0000  addli r24, zero, 6
000d9c  9f0b8000  addli r23, zero, 64
000da0  2b480000  lui r16, 4
000da4  2b430400  lui r6, 68
000da8  ab520400  lui r5, 69
000dac  7d000100  xsignal r2, 0
000db0  1f112000  addli r2, zero, 17
000db4  7d800400  xsignal r9, 0
000db8  7d000100  xsignal r2, 0
000dbc  6b560ffe  load.d r[13:14], -32(r30)
000dc0  3b4b07fa  bneq r14, zero, -2352
000dc4  6b518fff  load.d r[3:4], -8(r30)
000dc8  9f232000  addli r7, zero, 18
000dcc  6b528ffe  load.d r[5:6], -24(r30)
000dd0  eb5b8f01  load.d r[24:25], 24(r30)
000dd4  1f132000  addli r6, zero, 17
000dd8  7d100300  xwait r6, 0
000ddc  1d800800  lock zero, r17
000de0  2b430400  lui r6, 68
000de4  17317102  sll.d r[3:4], r[3:4], r7
000de8  1732f202  sll.d r[5:6], r[5:6], r15
000dec  95870700  dma_cfg r15, r15, zero, 0
000df0  15800702  dma_cfg zero, r15, zero, 1
000df4  0ba12b10  add.ul r[3:4], r[24:25], r[3:4]
000df8  9f0b8000  addli r23, zero, 64
000dfc  1f6c0000  addli r24, zero, 6
000e00  0b214110  add.ul r[3:4], r[3:4], r[5:6]
000e04  2b420200  lui r4, 36
000e08  ab520400  lui r5, 69
000e0c  1b120204  ori r4, r4, 64
000e10  95010004  dma_cfg r3, zero, zero, 2
000e14  15017207  dma_cfg r2, r4, r23, 3
000e18  1f010001  addli r2, zero, 128
000e1c  9f010020  addli r3, zero, 4096
000e20  950b9108  dma_cfg r23, r2, r9, 4
000e24  1f010010  addli r2, zero, 2048
000e28  9501710b  dma_cfg r3, r2, r23, 5
000e2c  15000010  dma_cfg zero, zero, zero, 8
000e30  35000000  dma_run zero
000e34  1500f00a  dma_cfg zero, zero, r15, 5
000e38  15000010  dma_cfg zero, zero, zero, 8
000e3c  1d900800  unlock r17
000e40  7d800300  xsignal r7, 0
000e44  dbc9feff  j -2484
000e48  7d100200  xwait r4, 0
000e4c  7d900800  xwait r17, 0
000e50  1d000000  lock zero, zero
000e54  01020000  ds_cfg r4, zero, 0
000e58  810b0002  ds_cfg r23, zero, 1
000e5c  810b001c  ds_cfg r23, zero, 14
000e60  810b001a  ds_cfg r23, zero, 13
000e64  21107003  shuffle_batch zero, zero, r23, 1
000e68  1d100000  unlock zero
000e6c  7d000900  xsignal r18, 0
000e70  7d000a00  xsignal r20, 0
000e74  dbc3feff  j -2532
000e78  7d000000  xsignal zero, 0
000e7c  bb600700  bneq r14, zero, 56
000e80  9f200000  addli r1, zero, 2
000e84  7d100000  xwait zero, 0
000e88  7d100000  xwait zero, 0
000e8c  7d100000  xwait zero, 0
000e90  7d100000  xwait zero, 0
000e94  7d100000  xwait zero, 0
000e98  7d100000  xwait zero, 0
000e9c  7d100000  xwait zero, 0
000ea0  7d100000  xwait zero, 0
000ea4  1d800000  lock zero, r1
000ea8  0d000020  ew_cfg zero, zero, zero, 16
000eac  1d900000  unlock r1
000eb0  7d400000  xsignal_mode_cfg zero
000eb4  9f8e4e00  addli sp, sp, 32
000eb8  00a00300  mfence { lm, sm, gm }
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
