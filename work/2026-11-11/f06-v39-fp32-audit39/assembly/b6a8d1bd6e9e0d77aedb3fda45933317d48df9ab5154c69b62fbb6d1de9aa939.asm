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
0000bc  003c0002  core_id r24
0000c0  1f8f7e00  addli r30, sp, 56
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
000244  4ba51102  ble.s r3, r1, 1352
000248  33910128  sext_int2long r[3:4], r3
00024c  33930028  sext_int2long r[7:8], r1
000250  2b020900  lui r4, 144
000254  1f040001  addli r8, zero, 128
000258  9f660000  addli r13, zero, 6
00025c  9f490000  addli r19, zero, 4
000260  9f2a0000  addli r21, zero, 2
000264  1f1b0000  addli r22, zero, 1
000268  9f0d8000  addli r27, zero, 64
00026c  ab0b0100  lui r23, 16
000270  1f0d0000  addli r26, zero, 0
000274  733c2ffe  store.d r[3:4], -8(r30)
000278  1f71f01f  addli r2, zero, 4095
00027c  ab010600  lui r3, 96
000280  ab00feff  lui r1, 1048544
000284  73381ffe  store.d r[2:3], -16(r30)
000288  9b900160  ori r1, r3, 1536
00028c  ab810d00  lui r3, 216
000290  e74e1ffe  storeli.w r1, -20(r30)
000294  9b90d1b4  ori r1, r3, 2893
000298  abf17fff  lui r3, 1046527
00029c  e70e1ffe  storeli.w r1, -24(r30)
0002a0  9b100260  ori r1, r4, 1536
0002a4  2bf27f7f  lui r4, 522239
0002a8  674e1ffe  storeli.w r1, -28(r30)
0002ac  9b90f1ff  ori r1, r3, 4095
0002b0  670e1ffe  storeli.w r1, -32(r30)
0002b4  9b10f2ff  ori r1, r4, 4095
0002b8  e74d1ffe  storeli.w r1, -36(r30)
0002bc  e3006f00  loadli.w r1,  48(r30)
0002c0  8b111330  div.s r3, r6, r1
0002c4  e3405f00  loadli.w r1,  44(r30)
0002c8  8b911130  div.s r3, r3, r1
0002cc  9f002000  addli r1, zero, 16
0002d0  0b928130  div.s r4, r3, r8
0002d4  9b323200  slli r5, r4, 3
0002d8  1b327200  slli r4, r4, 7
0002dc  8b945018  sub.s r9, r1, r5
0002e0  9f001000  addli r1, zero, 8
0002e4  0b924118  sub.s r4, r3, r4
0002e8  8b941440  min.s r9, r9, r1
0002ec  9f300000  addli r1, zero, 3
0002f0  0b959138  mod.s r10, r3, r9
0002f4  8b119230  div.s r3, r4, r9
0002f8  0b191d38  mod.s r18, r26, r1
0002fc  9f700000  addli r1, zero, 7
000300  0b9aa210  add.s r20, r5, r10
000304  33820128  zext_int2long r[5:6], r3
000308  9b3cf900  slli r25, r18, 15
00030c  17371202  sll.d r[15:16], r[5:6], r1
000310  9f00000f  addli r1, zero, 1920
000314  b3040a28  zext_int2long r[10:11], r20
000318  33880028  zext_int2long r[17:18], r1
00031c  bb00dc00  bneq r24, r13, 32
000320  9f701000  addli r1, zero, 15
000324  93854005  setlt.u r11, r1, r20
000328  9f501000  addli r1, zero, 13
00032c  17b21402  sll.d r[5:6], r[10:11], r1
000330  3ba10500  bneq r11, zero, 72
000334  b3050028  zext_int2long r[12:13], zero
000338  5b090000  j 72
00033c  3b065c01  bneq r24, r21, 384
000340  9f500000  addli r1, zero, 5
000344  7d900a00  xwait r21, 0
000348  7d900000  xwait r1, 0
00034c  1d000000  lock zero, zero
000350  9f300000  addli r1, zero, 3
000354  810a0000  ds_cfg r21, zero, 0
000358  810d0002  ds_cfg r27, zero, 1
00035c  810d001c  ds_cfg r27, zero, 14
000360  0104001a  ds_cfg r8, zero, 13
000364  a19cbc03  shuffle_batch r25, r25, r27, 1
000368  1d100000  unlock zero
00036c  7d800000  xsignal r1, 0
000370  7d800900  xsignal r19, 0
000374  db0b0000  j 92
000378  eb500fff  load.d r[2:3], -16(r30)
00037c  97051202  and.d r[12:13], r[5:6], r[2:3]
000380  0b32b218  sub.sl r[5:6], r[5:6], r[12:13]
000384  9f701000  addli r1, zero, 15
000388  1752d202  sra.d r[5:6], r[5:6], r13
00038c  8b350241  min.sl r[12:13], r[5:6], r[17:18]
000390  0bb24518  sub.sl r[5:6], r[12:13], r[5:6]
000394  97b51402  sll.d r[12:13], r[10:11], r1
000398  9f300000  addli r1, zero, 3
00039c  7d900000  xwait r1, 0
0003a0  eb500f00  load.d r[2:3], 0(r30)
0003a4  1d800900  lock zero, r19
0003a8  1f020201  addli r4, r4, 128
0003ac  15000000  dma_cfg zero, zero, zero, 0
0003b0  8ba5b010  add.ul r[12:13], r[2:3], r[12:13]
0003b4  9f000002  addli r1, zero, 256
0003b8  15000604  dma_cfg zero, r12, zero, 2
0003bc  958c1506  dma_cfg r25, r11, r1, 3
0003c0  95804008  dma_cfg r1, r1, r4, 4
0003c4  35000000  dma_run zero
0003c8  1d900900  unlock r19
0003cc  7d800a00  xsignal r21, 0
0003d0  9bb17100  slli r3, r3, 7
0003d4  b3850128  zext_int2long r[12:13], r3
0003d8  8ba10541  min.ul r[4:5], r[12:13], r[17:18]
0003dc  a7810101  addli.d r[4:5], r[4:5], 128
0003e0  8ba0b148  max.ul r[2:3], r[4:5], r[12:13]
0003e4  33020428  zext_int2long r[5:6], r8
0003e8  9b319900  slli r3, r18, 9
0003ec  8bb0b018  sub.sl r[2:3], r[2:3], r[12:13]
0003f0  8ba54040  min.ul r[12:13], r[2:3], r[5:6]
0003f4  ab000300  lui r1, 48
0003f8  8b911110  add.s r3, r3, r1
0003fc  3b11dc00  bneq r24, r13, 68
000400  1f321000  addli r4, zero, 11
000404  97305703  sll.d r[2:3], r[15:16], r21
000408  7d100200  xwait r4, 0
00040c  6b520f01  load.d r[5:6], 16(r30)
000410  1d800900  lock zero, r19
000414  15000000  dma_cfg zero, zero, zero, 0
000418  8b201210  add.ul r[2:3], r[5:6], r[2:3]
00041c  1bb22500  slli r4, r11, 2
000420  15000104  dma_cfg zero, r2, zero, 2
000424  95814006  dma_cfg r3, r1, r4, 3
000428  9f000004  addli r1, zero, 512
00042c  95806009  dma_cfg r1, r1, r22, 4
000430  35000000  dma_run zero
000434  1d900900  unlock r19
000438  9f201000  addli r1, zero, 10
00043c  5b5f0000  j 760
000440  1b3e0901  slli r28, r18, 16
000444  9b900060  ori r1, r1, 1536
000448  0b191e10  add.s r18, r28, r1
00044c  3b133c01  bneq r24, r19, 196
000450  9f001000  addli r1, zero, 8
000454  7d900900  xwait r19, 0
000458  9f020000  addli r5, zero, 0
00045c  9f110000  addli r3, zero, 1
000460  1f120000  addli r4, zero, 1
000464  7d900000  xwait r1, 0
000468  9f501000  addli r1, zero, 13
00046c  7d900000  xwait r1, 0
000470  9bb0e200  slli r1, r5, 14
000474  1bb18200  slli r2, r5, 8
000478  1d800100  lock zero, r3
00047c  9f120000  addli r5, zero, 1
000480  898d8d00  mm_cfg r27, r27, r8, 0
000484  97909001  or r1, r1, r25
000488  17112101  or r2, r2, r18
00048c  89893904  mm_cfg r19, r19, r3, 2
000490  29811c10  mm r2, r25, r1, 8
000494  9b001200  andi r1, r4, 1
000498  1f020000  addli r4, zero, 0
00049c  1d900100  unlock r3
0004a0  3bcf00fe  bneq r1, zero, -48
0004a4  9f500000  addli r1, zero, 5
0004a8  7d800000  xsignal r1, 0
0004ac  9f101000  addli r1, zero, 9
0004b0  7d800000  xsignal r1, 0
0004b4  9f401000  addli r1, zero, 12
0004b8  db4f0000  j 636
0004bc  ab800100  lui r1, 24
0004c0  0b921c10  add.s r4, r25, r1
0004c4  9f700000  addli r1, zero, 7
0004c8  372a1c00  beq r24, r1, 648
0004cc  3b1c6cff  bneq r24, r22, -252
0004d0  9f700000  addli r1, zero, 7
0004d4  97355703  sll.d r[12:13], r[15:16], r21
0004d8  7d900000  xwait r1, 0
0004dc  eb508f00  load.d r[2:3], 8(r30)
0004e0  1d800900  lock zero, r19
0004e4  15000000  dma_cfg zero, zero, zero, 0
0004e8  8ba5b010  add.ul r[12:13], r[2:3], r[12:13]
0004ec  9f000004  addli r1, zero, 512
0004f0  1f010040  addli r2, zero, 8192
0004f4  15000604  dma_cfg zero, r12, zero, 2
0004f8  15821506  dma_cfg r4, r11, r1, 3
0004fc  9500b109  dma_cfg r1, r2, r27, 4
000500  35000000  dma_run zero
000504  1d900900  unlock r19
000508  7d800600  xsignal r13, 0
00050c  dbd8ffff  j -316
000510  9f500000  addli r1, zero, 5
000514  3b561c00  bneq r24, r1, 404
000518  9f201000  addli r1, zero, 10
00051c  2b05803f  lui r10, 260096
000520  9f72f000  addli r5, zero, 127
000524  1f020000  addli r4, zero, 0
000528  7d900000  xwait r1, 0
00052c  9f401000  addli r1, zero, 12
000530  7d900000  xwait r1, 0
000534  1d800a00  lock zero, r21
000538  0d000002  ew_cfg zero, zero, zero, 1
00053c  0d150500  ewcoeff_cfg r10, r10, zero, 0
000540  0d800204  ew_cfg zero, r5, zero, 2
000544  0d0b0006  ew_cfg r22, zero, zero, 3
000548  8b104910  add.s r1, r18, r4
00054c  1f020204  addli r4, r4, 512
000550  ad803000  dsmadd r1, r1, r3, 0
000554  bb5f72ff  bneq r4, r23, -12
000558  9f301000  addli r1, zero, 11
00055c  1d900a00  unlock r21
000560  ab0400c1  lui r9, 790528
000564  1f020000  addli r4, zero, 0
000568  1f1b0000  addli r22, zero, 1
00056c  7d800000  xsignal r1, 0
000570  e340dfff  loadli.w r1,  -20(r30)
000574  8b111e10  add.s r3, r28, r1
000578  9f701000  addli r1, zero, 15
00057c  7d900000  xwait r1, 0
000580  1d800a00  lock zero, r21
000584  0d000002  ew_cfg zero, zero, zero, 1
000588  eb500fff  load.d r[2:3], -16(r30)
00058c  0d000104  ew_cfg zero, r2, zero, 2
000590  9f501000  addli r1, zero, 13
000594  1f110000  addli r2, zero, 1
000598  8d090006  ew_cfg r19, zero, zero, 3
00059c  8d890926  ew_cfg r19, r19, zero, 19
0005a0  8d000014  ew_cfg r1, zero, zero, 10
0005a4  e300dfff  loadli.w r1,  -24(r30)
0005a8  8d0a1116  ew_cfg r21, r2, r1, 11
0005ac  9f300000  addli r1, zero, 3
0005b0  0d00101a  ew_cfg zero, zero, r1, 13
0005b4  ab80ff40  lui r1, 266232
0005b8  8d84191c  ew_cfg r9, r19, r1, 14
0005bc  0d00051e  ew_cfg zero, r10, zero, 15
0005c0  cd210900  sslut r3, r18, 0
0005c4  0d000014  ew_cfg zero, zero, zero, 10
0005c8  0d000026  ew_cfg zero, zero, zero, 19
0005cc  1d900a00  unlock r21
0005d0  e340cfff  loadli.w r1,  -28(r30)
0005d4  8b141e10  add.s r9, r28, r1
0005d8  9f002000  addli r1, zero, 16
0005dc  7d900000  xwait r1, 0
0005e0  1d800a00  lock zero, r21
0005e4  0d000002  ew_cfg zero, zero, zero, 1
0005e8  0d800204  ew_cfg zero, r5, zero, 2
0005ec  0d010006  ew_cfg r2, zero, zero, 3
0005f0  e300cfff  loadli.w r1,  -32(r30)
0005f4  8d100000  ewcoeff_cfg r1, zero, zero, 0
0005f8  8b904410  add.s r1, r9, r4
0005fc  0b114910  add.s r2, r18, r4
000600  1f020204  addli r4, r4, 512
000604  ad202100  dscmpnsel r1, r2, r2, 0
000608  bb4f72ff  bneq r4, r23, -16
00060c  1d900a00  unlock r21
000610  1f020000  addli r4, zero, 0
000614  1d800a00  lock zero, r21
000618  0d000002  ew_cfg zero, zero, zero, 1
00061c  0d800204  ew_cfg zero, r5, zero, 2
000620  0d0b0006  ew_cfg r22, zero, zero, 3
000624  e340bfff  loadli.w r1,  -36(r30)
000628  8d100000  ewcoeff_cfg r1, zero, zero, 0
00062c  8b904410  add.s r1, r9, r4
000630  1f020204  addli r4, r4, 512
000634  ada01008  dscmpnsel r1, r1, r1, 4
000638  bb5f72ff  bneq r4, r23, -12
00063c  1d900a00  unlock r21
000640  ab0080bf  lui r1, 784384
000644  1d800a00  lock zero, r21
000648  0d000002  ew_cfg zero, zero, zero, 1
00064c  0d950000  ewcoeff_cfg r10, r1, zero, 0
000650  9f002000  addli r1, zero, 16
000654  6b520fff  load.d r[5:6], -16(r30)
000658  0d800204  ew_cfg zero, r5, zero, 2
00065c  8d090006  ew_cfg r19, zero, zero, 3
000660  8d893927  ew_cfg r19, r19, r19, 19
000664  2d099900  dsmadd r18, r18, r9, 0
000668  0d000026  ew_cfg zero, zero, zero, 19
00066c  1d900a00  unlock r21
000670  7d800000  xsignal r1, 0
000674  1d800a00  lock zero, r21
000678  9f501000  addli r1, zero, 13
00067c  0d000002  ew_cfg zero, zero, zero, 1
000680  0d150500  ewcoeff_cfg r10, r10, zero, 0
000684  0d800204  ew_cfg zero, r5, zero, 2
000688  8d090006  ew_cfg r19, zero, zero, 3
00068c  8d893927  ew_cfg r19, r19, r19, 19
000690  ad812101  dsmadd r3, r3, r18, 0
000694  0d000026  ew_cfg zero, zero, zero, 19
000698  1d900a00  unlock r21
00069c  7d800000  xsignal r1, 0
0006a0  9f601000  addli r1, zero, 14
0006a4  5b120000  j 144
0006a8  3b420c00  bneq r24, zero, 144
0006ac  6341dfff  loadli.w r2,  -20(r30)
0006b0  9b307a00  slli r1, r20, 7
0006b4  1f492000  addli r18, zero, 20
0006b8  97b42403  sll.d r[10:11], r[10:11], r18
0006bc  8b112e10  add.s r3, r28, r2
0006c0  b3900028  sext_int2long r[2:3], r1
0006c4  73389ffc  store.d r[10:11], -48(r30)
0006c8  97345703  sll.d r[10:11], r[15:16], r21
0006cc  0bb80041  min.sl r[17:18], r[2:3], r[17:18]
0006d0  73349ffc  store.d r[10:11], -56(r30)
0006d4  9f641000  addli r9, zero, 14
0006d8  27080801  addli.d r[17:18], r[17:18], 128
0006dc  7d900400  xwait r9, 0
0006e0  eb548f01  load.d r[10:11], 24(r30)
0006e4  6b570ffd  load.d r[15:16], -48(r30)
0006e8  0b381848  max.sl r[17:18], r[17:18], r[2:3]
0006ec  8b301818  sub.sl r[2:3], r[17:18], r[2:3]
0006f0  8ba4e410  add.ul r[10:11], r[10:11], r[15:16]
0006f4  6b578ffc  load.d r[15:16], -56(r30)
0006f8  8bb04040  min.sl r[2:3], r[2:3], r[5:6]
0006fc  9f520000  addli r5, zero, 5
000700  1bb22500  slli r4, r11, 2
000704  8ba4e410  add.ul r[10:11], r[10:11], r[15:16]
000708  1d800200  lock zero, r5
00070c  15000000  dma_cfg zero, zero, zero, 0
000710  15000b02  dma_cfg zero, r22, zero, 1
000714  15050004  dma_cfg r10, zero, zero, 2
000718  95844106  dma_cfg r9, r3, r4, 3
00071c  9f010004  addli r3, zero, 512
000720  1f020040  addli r4, zero, 8192
000724  15821108  dma_cfg r4, r3, r1, 4
000728  9f701000  addli r1, zero, 15
00072c  35000000  dma_run zero
000730  1d900200  unlock r5
000734  7d800000  xsignal r1, 0
000738  eb508fff  load.d r[2:3], -8(r30)
00073c  27130300  addli.d r[7:8], r[7:8], 1
000740  1f1d0d00  addli r26, r26, 1
000744  93301304  setlt.sl r1, r[7:8], r[2:3]
000748  bbdd00fc  bneq r1, zero, -1164
00074c  5b080000  j 64
000750  9f101000  addli r1, zero, 9
000754  7d900600  xwait r13, 0
000758  7d900000  xwait r1, 0
00075c  1d000000  lock zero, zero
000760  9f700000  addli r1, zero, 7
000764  810a0000  ds_cfg r21, zero, 0
000768  01040002  ds_cfg r8, zero, 1
00076c  810d001c  ds_cfg r27, zero, 14
000770  0104001a  ds_cfg r8, zero, 13
000774  c10cb205  shuffle_coa r25, r4, r27, 2
000778  1d100000  unlock zero
00077c  7d800000  xsignal r1, 0
000780  9f001000  addli r1, zero, 8
000784  7d800000  xsignal r1, 0
000788  5b89ffff  j -952
00078c  7d000000  xsignal zero, 0
000790  bb600c00  bneq r24, zero, 56
000794  9f200000  addli r1, zero, 2
000798  7d100000  xwait zero, 0
00079c  7d100000  xwait zero, 0
0007a0  7d100000  xwait zero, 0
0007a4  7d100000  xwait zero, 0
0007a8  7d100000  xwait zero, 0
0007ac  7d100000  xwait zero, 0
0007b0  7d100000  xwait zero, 0
0007b4  7d100000  xwait zero, 0
0007b8  1d800000  lock zero, r1
0007bc  0d000020  ew_cfg zero, zero, zero, 16
0007c0  1d900000  unlock r1
0007c4  7d400000  xsignal_mode_cfg zero
0007c8  9f8e7e00  addli sp, sp, 56
0007cc  00a00300  mfence { lm, sm, gm }
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
000a08  00100000  exit
000a0c  00100000  exit
000a10  00100000  exit
