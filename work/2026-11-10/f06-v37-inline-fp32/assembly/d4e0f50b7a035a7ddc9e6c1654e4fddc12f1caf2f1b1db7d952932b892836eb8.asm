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
0000bc  003d0002  core_id r26
0000c0  1f8f5e00  addli r30, sp, 40
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100d00  beq r26, zero, 36
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
000244  cbd41102  ble.s r3, r1, 1332
000248  33910128  sext_int2long r[3:4], r3
00024c  33930028  sext_int2long r[7:8], r1
000250  1f048000  addli r8, zero, 64
000254  9f440000  addli r9, zero, 4
000258  9f320000  addli r5, zero, 3
00025c  1f1c0000  addli r24, zero, 1
000260  1f2b0000  addli r22, zero, 2
000264  9f0b0001  addli r23, zero, 128
000268  ab0c0100  lui r25, 16
00026c  9f0d0000  addli r27, zero, 0
000270  733c2ffe  store.d r[3:4], -8(r30)
000274  1f71f01f  addli r2, zero, 4095
000278  ab010900  lui r3, 144
00027c  ab80ffff  lui r1, 1048568
000280  73381ffe  store.d r[2:3], -16(r30)
000284  ab000600  lui r1, 96
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
0002c4  0b9e5d38  mod.s r28, r27, r5
0002c8  8b101330  div.s r1, r6, r1
0002cc  9b39fe00  slli r19, r28, 15
0002d0  8b902030  div.s r1, r1, r2
0002d4  1f011000  addli r2, zero, 8
0002d8  8b918030  div.s r3, r1, r8
0002dc  1bb23100  slli r4, r3, 3
0002e0  9bb16100  slli r3, r3, 6
0002e4  0b954418  sub.s r10, r9, r4
0002e8  8b913018  sub.s r3, r1, r3
0002ec  0b152540  min.s r10, r10, r2
0002f0  1f710000  addli r2, zero, 7
0002f4  8b95a038  mod.s r11, r1, r10
0002f8  8b90a130  div.s r1, r3, r10
0002fc  0b18b210  add.s r16, r4, r11
000300  b3810028  zext_int2long r[4:5], r1
000304  97b82102  sll.d r[18:19], r[4:5], r2
000308  1f010003  addli r2, zero, 384
00030c  33050828  zext_int2long r[11:12], r16
000310  33070128  zext_int2long r[15:16], r2
000314  3b708d01  bneq r26, r24, 28
000318  13860205  setlt.u r12, r5, r16
00031c  1f511000  addli r2, zero, 13
000320  97312502  sll.d r[4:5], r[11:12], r2
000324  3b110600  bneq r12, zero, 68
000328  33060028  zext_int2long r[13:14], zero
00032c  db080000  j 68
000330  3b526d01  bneq r26, r22, 148
000334  1f510000  addli r2, zero, 5
000338  7d100b00  xwait r22, 0
00033c  7d100100  xwait r2, 0
000340  1d000000  lock zero, zero
000344  010b0000  ds_cfg r22, zero, 0
000348  01040002  ds_cfg r8, zero, 1
00034c  0104001c  ds_cfg r8, zero, 14
000350  810b001a  ds_cfg r23, zero, 13
000354  a1998902  shuffle_batch r19, r19, r8, 1
000358  1d100000  unlock zero
00035c  7d800200  xsignal r5, 0
000360  7d800400  xsignal r9, 0
000364  5b1f0000  j 248
000368  6b560fff  load.d r[13:14], -16(r30)
00036c  1786c102  and.d r[13:14], r[4:5], r[13:14]
000370  8bb1c118  sub.sl r[4:5], r[4:5], r[13:14]
000374  1f610000  addli r2, zero, 6
000378  6b5a0f00  load.d r[21:22], 0(r30)
00037c  7d900200  xwait r5, 0
000380  1d800400  lock zero, r9
000384  15000000  dma_cfg zero, zero, zero, 0
000388  97d12102  sra.d r[4:5], r[4:5], r2
00038c  1f711000  addli r2, zero, 15
000390  0bb6e140  min.sl r[13:14], r[4:5], r[15:16]
000394  8b313618  sub.sl r[4:5], r[13:14], r[4:5]
000398  17362502  sll.d r[13:14], r[11:12], r2
00039c  1f010002  addli r2, zero, 256
0003a0  0b26ca10  add.ul r[13:14], r[21:22], r[13:14]
0003a4  9f810101  addli r3, r3, 128
0003a8  15800604  dma_cfg zero, r13, zero, 2
0003ac  95092606  dma_cfg r19, r12, r2, 3
0003b0  15013108  dma_cfg r2, r2, r3, 4
0003b4  35000000  dma_run zero
0003b8  1d900400  unlock r9
0003bc  7d000b00  xsignal r22, 0
0003c0  db130000  j 156
0003c4  2b810100  lui r2, 24
0003c8  8b912910  add.s r3, r19, r2
0003cc  1f710000  addli r2, zero, 7
0003d0  37412d00  beq r26, r2, 80
0003d4  1f610000  addli r2, zero, 6
0003d8  3b122d00  bneq r26, r2, 132
0003dc  6b528f00  load.d r[5:6], 8(r30)
0003e0  17b66803  sll.d r[13:14], r[18:19], r22
0003e4  1f710000  addli r2, zero, 7
0003e8  7d100100  xwait r2, 0
0003ec  1d800400  lock zero, r9
0003f0  1f010004  addli r2, zero, 512
0003f4  0b26c210  add.ul r[13:14], r[5:6], r[13:14]
0003f8  15000000  dma_cfg zero, zero, zero, 0
0003fc  9f320000  addli r5, zero, 3
000400  15800604  dma_cfg zero, r13, zero, 2
000404  95012606  dma_cfg r3, r12, r2, 3
000408  9f010020  addli r3, zero, 4096
00040c  15818108  dma_cfg r2, r3, r8, 4
000410  35000000  dma_run zero
000414  1d900400  unlock r9
000418  1f610000  addli r2, zero, 6
00041c  db070000  j 60
000420  1f610000  addli r2, zero, 6
000424  7d100100  xwait r2, 0
000428  1f111000  addli r2, zero, 9
00042c  7d100100  xwait r2, 0
000430  1d000000  lock zero, zero
000434  1f710000  addli r2, zero, 7
000438  010b0000  ds_cfg r22, zero, 0
00043c  810b0002  ds_cfg r23, zero, 1
000440  0104001c  ds_cfg r8, zero, 14
000444  810b001a  ds_cfg r23, zero, 13
000448  c1898104  shuffle_coa r19, r3, r8, 2
00044c  1d100000  unlock zero
000450  7d000100  xsignal r2, 0
000454  1f011000  addli r2, zero, 8
000458  7d000100  xsignal r2, 0
00045c  1f010007  addli r2, zero, 896
000460  9bb07000  slli r1, r1, 7
000464  33860b28  zext_int2long r[13:14], r23
000468  1b3a9e00  slli r20, r28, 9
00046c  b3010128  zext_int2long r[4:5], r2
000470  b3800028  zext_int2long r[2:3], r1
000474  8ba13040  min.ul r[4:5], r[2:3], r[4:5]
000478  a7810101  addli.d r[4:5], r[4:5], 128
00047c  8ba11148  max.ul r[4:5], r[4:5], r[2:3]
000480  8bb01118  sub.sl r[2:3], r[4:5], r[2:3]
000484  8ba1c040  min.ul r[4:5], r[2:3], r[13:14]
000488  ab000300  lui r1, 48
00048c  8b101a10  add.s r1, r20, r1
000490  3b118d01  bneq r26, r24, 68
000494  6b560f01  load.d r[13:14], 16(r30)
000498  17b56803  sll.d r[11:12], r[18:19], r22
00049c  1f311000  addli r2, zero, 11
0004a0  7d100100  xwait r2, 0
0004a4  1d800400  lock zero, r9
0004a8  1bb12100  slli r2, r3, 2
0004ac  0b25a610  add.ul r[11:12], r[13:14], r[11:12]
0004b0  15000000  dma_cfg zero, zero, zero, 0
0004b4  15800504  dma_cfg zero, r11, zero, 2
0004b8  95002506  dma_cfg r1, r10, r2, 3
0004bc  9f000004  addli r1, zero, 512
0004c0  95808009  dma_cfg r1, r1, r24, 4
0004c4  35000000  dma_run zero
0004c8  1d900400  unlock r9
0004cc  9f201000  addli r1, zero, 10
0004d0  5b520000  j 656
0004d4  2b010300  lui r2, 48
0004d8  1b3a0e01  slli r20, r28, 16
0004dc  1b110160  ori r2, r2, 1536
0004e0  0b1e2a10  add.s r28, r20, r2
0004e4  bb419d00  bneq r26, r9, 112
0004e8  9f001000  addli r1, zero, 8
0004ec  7d900400  xwait r9, 0
0004f0  1f020000  addli r4, zero, 0
0004f4  9f110000  addli r3, zero, 1
0004f8  1f511000  addli r2, zero, 13
0004fc  7d900000  xwait r1, 0
000500  9f100000  addli r1, zero, 1
000504  7d100100  xwait r2, 0
000508  1b31e200  slli r2, r4, 14
00050c  1b328200  slli r4, r4, 8
000510  1d800000  lock zero, r1
000514  09047401  mm_cfg r8, r8, r23, 0
000518  17113101  or r2, r2, r19
00051c  1712c201  or r4, r4, r28
000520  89841404  mm_cfg r9, r9, r1, 2
000524  29822910  mm r4, r19, r2, 8
000528  1b811100  andi r2, r3, 1
00052c  1f120000  addli r4, zero, 1
000530  9f010000  addli r3, zero, 0
000534  1d900000  unlock r1
000538  3b4f01fe  bneq r2, zero, -48
00053c  9f500000  addli r1, zero, 5
000540  7d800000  xsignal r1, 0
000544  9f101000  addli r1, zero, 9
000548  7d800000  xsignal r1, 0
00054c  9f401000  addli r1, zero, 12
000550  5b420000  j 528
000554  1f510000  addli r2, zero, 5
000558  3b262d00  bneq r26, r2, 392
00055c  1f211000  addli r2, zero, 10
000560  2b06803f  lui r12, 260096
000564  9f75f000  addli r11, zero, 127
000568  9f010000  addli r3, zero, 0
00056c  7d100100  xwait r2, 0
000570  1f411000  addli r2, zero, 12
000574  7d100100  xwait r2, 0
000578  1d000b00  lock zero, r22
00057c  0d000002  ew_cfg zero, zero, zero, 1
000580  0d160600  ewcoeff_cfg r12, r12, zero, 0
000584  0d800504  ew_cfg zero, r11, zero, 2
000588  0d0c0006  ew_cfg r24, zero, zero, 3
00058c  0b113e10  add.s r2, r28, r3
000590  9f810104  addli r3, r3, 512
000594  2d011100  dsmadd r2, r2, r1, 0
000598  bbdf91ff  bneq r3, r25, -12
00059c  9f301000  addli r1, zero, 11
0005a0  1f711000  addli r2, zero, 15
0005a4  1d100b00  unlock r22
0005a8  1f020000  addli r4, zero, 0
0005ac  7d800000  xsignal r1, 0
0005b0  e340dfff  loadli.w r1,  -20(r30)
0005b4  7d100100  xwait r2, 0
0005b8  1d000b00  lock zero, r22
0005bc  0d000002  ew_cfg zero, zero, zero, 1
0005c0  6b510fff  load.d r[3:4], -16(r30)
0005c4  8b101a10  add.s r1, r20, r1
0005c8  0d800104  ew_cfg zero, r3, zero, 2
0005cc  1f511000  addli r2, zero, 13
0005d0  ab0100c1  lui r3, 790528
0005d4  8d040006  ew_cfg r9, zero, zero, 3
0005d8  8d840426  ew_cfg r9, r9, zero, 19
0005dc  0d010014  ew_cfg r2, zero, zero, 10
0005e0  6301dfff  loadli.w r2,  -24(r30)
0005e4  0d0b2c16  ew_cfg r22, r24, r2, 11
0005e8  2b81ff40  lui r2, 266232
0005ec  0d00501a  ew_cfg zero, zero, r5, 13
0005f0  8d81241c  ew_cfg r3, r9, r2, 14
0005f4  0d00061e  ew_cfg zero, r12, zero, 15
0005f8  cd200e00  sslut r1, r28, 0
0005fc  0d000014  ew_cfg zero, zero, zero, 10
000600  0d000026  ew_cfg zero, zero, zero, 19
000604  1d100b00  unlock r22
000608  6341cfff  loadli.w r2,  -28(r30)
00060c  8b112a10  add.s r3, r20, r2
000610  1f012000  addli r2, zero, 16
000614  7d100100  xwait r2, 0
000618  1d000b00  lock zero, r22
00061c  0d000002  ew_cfg zero, zero, zero, 1
000620  0d800504  ew_cfg zero, r11, zero, 2
000624  0d0c0006  ew_cfg r24, zero, zero, 3
000628  6301cfff  loadli.w r2,  -32(r30)
00062c  0d110000  ewcoeff_cfg r2, zero, zero, 0
000630  0b914110  add.s r2, r3, r4
000634  0b154e10  add.s r10, r28, r4
000638  1f020204  addli r4, r4, 512
00063c  2d21a500  dscmpnsel r2, r10, r10, 0
000640  bb4f92ff  bneq r4, r25, -16
000644  1d100b00  unlock r22
000648  1f020000  addli r4, zero, 0
00064c  1d000b00  lock zero, r22
000650  0d000002  ew_cfg zero, zero, zero, 1
000654  0d800504  ew_cfg zero, r11, zero, 2
000658  0d0c0006  ew_cfg r24, zero, zero, 3
00065c  6341bfff  loadli.w r2,  -36(r30)
000660  0d110000  ewcoeff_cfg r2, zero, zero, 0
000664  0b914110  add.s r2, r3, r4
000668  1f020204  addli r4, r4, 512
00066c  2d212108  dscmpnsel r2, r2, r2, 4
000670  bb5f92ff  bneq r4, r25, -12
000674  1d100b00  unlock r22
000678  2b0180bf  lui r2, 784384
00067c  1d000b00  lock zero, r22
000680  0d000002  ew_cfg zero, zero, zero, 1
000684  0d160100  ewcoeff_cfg r12, r2, zero, 0
000688  1f012000  addli r2, zero, 16
00068c  6b550fff  load.d r[11:12], -16(r30)
000690  0d800504  ew_cfg zero, r11, zero, 2
000694  8d040006  ew_cfg r9, zero, zero, 3
000698  8d849426  ew_cfg r9, r9, r9, 19
00069c  2d0e3e00  dsmadd r28, r28, r3, 0
0006a0  0d000026  ew_cfg zero, zero, zero, 19
0006a4  1d100b00  unlock r22
0006a8  7d000100  xsignal r2, 0
0006ac  1d000b00  lock zero, r22
0006b0  0d000002  ew_cfg zero, zero, zero, 1
0006b4  0d160600  ewcoeff_cfg r12, r12, zero, 0
0006b8  0d800504  ew_cfg zero, r11, zero, 2
0006bc  8d040006  ew_cfg r9, zero, zero, 3
0006c0  8d849426  ew_cfg r9, r9, r9, 19
0006c4  ad80c001  dsmadd r1, r1, r28, 0
0006c8  9f501000  addli r1, zero, 13
0006cc  0d000026  ew_cfg zero, zero, zero, 19
0006d0  1d100b00  unlock r22
0006d4  7d800000  xsignal r1, 0
0006d8  9f601000  addli r1, zero, 14
0006dc  db100000  j 132
0006e0  3b120d00  bneq r26, zero, 132
0006e4  6341dfff  loadli.w r2,  -20(r30)
0006e8  9b307800  slli r1, r16, 7
0006ec  17b86803  sll.d r[17:18], r[18:19], r22
0006f0  8b122a10  add.s r5, r20, r2
0006f4  b3990028  sext_int2long r[20:21], r1
0006f8  9f302000  addli r1, zero, 19
0006fc  0bb7e940  min.sl r[15:16], r[20:21], r[15:16]
000700  17351502  sll.d r[11:12], r[11:12], r1
000704  9f601000  addli r1, zero, 14
000708  27070701  addli.d r[15:16], r[15:16], 128
00070c  7d900000  xwait r1, 0
000710  eb508f01  load.d r[2:3], 24(r30)
000714  0b373749  max.sl r[15:16], r[15:16], r[20:21]
000718  0ba5a010  add.ul r[11:12], r[2:3], r[11:12]
00071c  9bb02100  slli r1, r3, 2
000720  1f010020  addli r2, zero, 4096
000724  0b373719  sub.sl r[15:16], r[15:16], r[20:21]
000728  0b250511  add.ul r[11:12], r[11:12], r[17:18]
00072c  0b36c740  min.sl r[13:14], r[15:16], r[13:14]
000730  1f570000  addli r14, zero, 5
000734  1d000700  lock zero, r14
000738  15000000  dma_cfg zero, zero, zero, 0
00073c  15000c02  dma_cfg zero, r24, zero, 1
000740  95050004  dma_cfg r11, zero, zero, 2
000744  15851206  dma_cfg r10, r5, r1, 3
000748  9f000004  addli r1, zero, 512
00074c  9f320000  addli r5, zero, 3
000750  1581c008  dma_cfg r2, r1, r12, 4
000754  9f701000  addli r1, zero, 15
000758  35000000  dma_run zero
00075c  1d100700  unlock r14
000760  7d800000  xsignal r1, 0
000764  eb508fff  load.d r[2:3], -8(r30)
000768  27130300  addli.d r[7:8], r[7:8], 1
00076c  9f9d0d00  addli r27, r27, 1
000770  93301304  setlt.sl r1, r[7:8], r[2:3]
000774  3bad00fc  bneq r1, zero, -1208
000778  7d000000  xsignal zero, 0
00077c  bb600d00  bneq r26, zero, 56
000780  9f200000  addli r1, zero, 2
000784  7d100000  xwait zero, 0
000788  7d100000  xwait zero, 0
00078c  7d100000  xwait zero, 0
000790  7d100000  xwait zero, 0
000794  7d100000  xwait zero, 0
000798  7d100000  xwait zero, 0
00079c  7d100000  xwait zero, 0
0007a0  7d100000  xwait zero, 0
0007a4  1d800000  lock zero, r1
0007a8  0d000020  ew_cfg zero, zero, zero, 16
0007ac  1d900000  unlock r1
0007b0  7d400000  xsignal_mode_cfg zero
0007b4  9f8e5e00  addli sp, sp, 40
0007b8  00a00300  mfence { lm, sm, gm }
0007bc  00100000  exit
0007c0  00100000  exit
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
