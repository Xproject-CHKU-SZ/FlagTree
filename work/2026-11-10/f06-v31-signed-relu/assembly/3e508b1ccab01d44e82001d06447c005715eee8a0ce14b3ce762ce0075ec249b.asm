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
0000bc  00310002  core_id r2
0000c0  1f8f7e00  addli r30, sp, 56
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100100  beq r2, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b90f1ff  ori r1, r3, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db2c0000  j 356
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
0001a0  7d800000  xsignal r1, 0
0001a4  7d800000  xsignal r1, 0
0001a8  7d800100  xsignal r3, 0
0001ac  7d800100  xsignal r3, 0
0001b0  7d800100  xsignal r3, 0
0001b4  7d800100  xsignal r3, 0
0001b8  7d800100  xsignal r3, 0
0001bc  9f101000  addli r1, zero, 9
0001c0  9f710000  addli r3, zero, 7
0001c4  7d800000  xsignal r1, 0
0001c8  7d800000  xsignal r1, 0
0001cc  7d800000  xsignal r1, 0
0001d0  7d800000  xsignal r1, 0
0001d4  7d800000  xsignal r1, 0
0001d8  7d800100  xsignal r3, 0
0001dc  7d800100  xsignal r3, 0
0001e0  7d800100  xsignal r3, 0
0001e4  7d800100  xsignal r3, 0
0001e8  7d800100  xsignal r3, 0
0001ec  9f301000  addli r1, zero, 11
0001f0  9f511000  addli r3, zero, 13
0001f4  7d800000  xsignal r1, 0
0001f8  7d800000  xsignal r1, 0
0001fc  7d800000  xsignal r1, 0
000200  7d800000  xsignal r1, 0
000204  7d800000  xsignal r1, 0
000208  7d800100  xsignal r3, 0
00020c  7d800100  xsignal r3, 0
000210  7d800100  xsignal r3, 0
000214  7d800100  xsignal r3, 0
000218  7d800100  xsignal r3, 0
00021c  9f701000  addli r1, zero, 15
000220  9f012000  addli r3, zero, 16
000224  7d800000  xsignal r1, 0
000228  7d800000  xsignal r1, 0
00022c  7d800000  xsignal r1, 0
000230  7d800000  xsignal r1, 0
000234  7d800000  xsignal r1, 0
000238  7d800100  xsignal r3, 0
00023c  7d800100  xsignal r3, 0
000240  7d800100  xsignal r3, 0
000244  7d800100  xsignal r3, 0
000248  7d800100  xsignal r3, 0
00024c  e3005f00  loadli.w r1,  40(r30)
000250  e3415f00  loadli.w r3,  44(r30)
000254  80d20002  load_param_i r5, 1
000258  63026f00  loadli.w r4,  48(r30)
00025c  8b901120  mul.s r1, r3, r1
000260  9f810200  addli r3, r5, 0
000264  8b914050  fmac.s r3, r1, r4
000268  0b924020  mul.s r4, r1, r4
00026c  9ff1f1ff  addli r3, r3, -1
000270  8b915130  div.s r3, r3, r5
000274  80520002  load_param_i r5, 0
000278  8b905120  mul.s r1, r3, r5
00027c  8b915150  fmac.s r3, r3, r5
000280  8b914140  min.s r3, r3, r4
000284  cbd41102  ble.s r3, r1, 1332
000288  33930028  sext_int2long r[7:8], r1
00028c  ab000a00  lui r1, 160
000290  b3910128  sext_int2long r[4:5], r3
000294  1f040001  addli r8, zero, 128
000298  1f5c0000  addli r24, zero, 5
00029c  9f160000  addli r13, zero, 1
0002a0  9f4a0000  addli r21, zero, 4
0002a4  9f2b0000  addli r23, zero, 2
0002a8  1f0e8000  addli r28, zero, 64
0002ac  ab0c0100  lui r25, 16
0002b0  9f0d0000  addli r27, zero, 0
0002b4  9b9000a0  ori r1, r1, 2560
0002b8  733c3ffe  store.d r[4:5], -8(r30)
0002bc  1f72f01f  addli r4, zero, 4095
0002c0  ab01feff  lui r3, 1048544
0002c4  e74e1ffe  storeli.w r1, -20(r30)
0002c8  ab800d00  lui r1, 216
0002cc  73383ffe  store.d r[4:5], -16(r30)
0002d0  ab010f00  lui r3, 240
0002d4  9b90d0b4  ori r1, r1, 2893
0002d8  e70e1ffe  storeli.w r1, -24(r30)
0002dc  9b9001a0  ori r1, r3, 2560
0002e0  abf17f7f  lui r3, 522239
0002e4  674e1ffe  storeli.w r1, -28(r30)
0002e8  abf07fff  lui r1, 1046527
0002ec  9b90f0ff  ori r1, r1, 4095
0002f0  670e1ffe  storeli.w r1, -32(r30)
0002f4  9b90f1ff  ori r1, r3, 4095
0002f8  e74d1ffe  storeli.w r1, -36(r30)
0002fc  e3006f00  loadli.w r1,  48(r30)
000300  e3415f00  loadli.w r3,  44(r30)
000304  1f022000  addli r4, zero, 16
000308  8b101330  div.s r1, r6, r1
00030c  8b903030  div.s r1, r1, r3
000310  8b918030  div.s r3, r1, r8
000314  9bb43100  slli r9, r3, 3
000318  9bb17100  slli r3, r3, 7
00031c  0b159218  sub.s r10, r4, r9
000320  1f021000  addli r4, zero, 8
000324  8b913018  sub.s r3, r1, r3
000328  0b154540  min.s r10, r10, r4
00032c  1f720000  addli r4, zero, 7
000330  8b95a038  mod.s r11, r1, r10
000334  8b91a130  div.s r3, r3, r10
000338  8b908d39  mod.s r1, r27, r24
00033c  0b9ab410  add.s r20, r9, r11
000340  b3840128  zext_int2long r[10:11], r3
000344  1bbdf000  slli r26, r1, 15
000348  17b94402  sll.d r[19:20], r[10:11], r4
00034c  1f02000f  addli r4, zero, 1920
000350  33070a28  zext_int2long r[15:16], r20
000354  b3040228  zext_int2long r[10:11], r4
000358  bb00d100  bneq r2, r13, 32
00035c  1f721000  addli r4, zero, 15
000360  13084205  setlt.u r16, r4, r20
000364  1f521000  addli r4, zero, 13
000368  97354702  sll.d r[12:13], r[15:16], r4
00036c  3b110800  bneq r16, zero, 68
000370  33080028  zext_int2long r[17:18], zero
000374  db080000  j 68
000378  3b627101  bneq r2, r23, 152
00037c  7d900b00  xwait r23, 0
000380  7d100c00  xwait r24, 0
000384  1d000000  lock zero, zero
000388  1f320000  addli r4, zero, 3
00038c  810b0000  ds_cfg r23, zero, 0
000390  010e0002  ds_cfg r28, zero, 1
000394  010e001c  ds_cfg r28, zero, 14
000398  0104001a  ds_cfg r8, zero, 13
00039c  211dcd03  shuffle_batch r26, r26, r28, 1
0003a0  1d100000  unlock zero
0003a4  7d000200  xsignal r4, 0
0003a8  7d800a00  xsignal r21, 0
0003ac  5b1f0000  j 248
0003b0  6b520fff  load.d r[5:6], -16(r30)
0003b4  17884502  and.d r[17:18], r[12:13], r[5:6]
0003b8  8bb50519  sub.sl r[12:13], r[12:13], r[17:18]
0003bc  1f620000  addli r4, zero, 6
0003c0  97d54502  sra.d r[12:13], r[12:13], r4
0003c4  1f721000  addli r4, zero, 15
0003c8  0bb89540  min.sl r[17:18], r[12:13], r[10:11]
0003cc  8b35b818  sub.sl r[12:13], r[17:18], r[12:13]
0003d0  17384702  sll.d r[17:18], r[15:16], r4
0003d4  1f320000  addli r4, zero, 3
0003d8  7d100200  xwait r4, 0
0003dc  6b520f00  load.d r[5:6], 0(r30)
0003e0  1d800a00  lock zero, r21
0003e4  9f850501  addli r11, r11, 128
0003e8  15000000  dma_cfg zero, zero, zero, 0
0003ec  0b280211  add.ul r[17:18], r[5:6], r[17:18]
0003f0  1f020002  addli r4, zero, 256
0003f4  15800804  dma_cfg zero, r17, zero, 2
0003f8  150d4806  dma_cfg r26, r16, r4, 3
0003fc  1502b208  dma_cfg r4, r4, r11, 4
000400  35000000  dma_run zero
000404  1d900a00  unlock r21
000408  7d800b00  xsignal r23, 0
00040c  5b130000  j 152
000410  2b820200  lui r4, 40
000414  8b154d10  add.s r11, r26, r4
000418  1f720000  addli r4, zero, 7
00041c  37314100  beq r2, r4, 76
000420  1f620000  addli r4, zero, 6
000424  3b024100  bneq r2, r4, 128
000428  1f720000  addli r4, zero, 7
00042c  17387903  sll.d r[17:18], r[19:20], r23
000430  7d100200  xwait r4, 0
000434  6b528f00  load.d r[5:6], 8(r30)
000438  1d800a00  lock zero, r21
00043c  15000000  dma_cfg zero, zero, zero, 0
000440  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000444  1f020004  addli r4, zero, 512
000448  9f020040  addli r5, zero, 8192
00044c  15800804  dma_cfg zero, r17, zero, 2
000450  95054806  dma_cfg r11, r16, r4, 3
000454  1582c209  dma_cfg r4, r5, r28, 4
000458  35000000  dma_run zero
00045c  1d900a00  unlock r21
000460  1f620000  addli r4, zero, 6
000464  db070000  j 60
000468  1f620000  addli r4, zero, 6
00046c  7d100200  xwait r4, 0
000470  1f121000  addli r4, zero, 9
000474  7d100200  xwait r4, 0
000478  1d000000  lock zero, zero
00047c  1f720000  addli r4, zero, 7
000480  810b0000  ds_cfg r23, zero, 0
000484  01040002  ds_cfg r8, zero, 1
000488  010e001c  ds_cfg r28, zero, 14
00048c  0104001a  ds_cfg r8, zero, 13
000490  418dc505  shuffle_coa r26, r11, r28, 2
000494  1d100000  unlock zero
000498  7d000200  xsignal r4, 0
00049c  1f021000  addli r4, zero, 8
0004a0  7d000200  xsignal r4, 0
0004a4  9bb17100  slli r3, r3, 7
0004a8  9bb29000  slli r5, r1, 9
0004ac  33880128  zext_int2long r[17:18], r3
0004b0  8b259840  min.ul r[12:13], r[17:18], r[10:11]
0004b4  a7850501  addli.d r[12:13], r[12:13], 128
0004b8  8ba10549  max.ul r[4:5], r[12:13], r[17:18]
0004bc  b3050428  zext_int2long r[12:13], r8
0004c0  8bb10119  sub.sl r[4:5], r[4:5], r[17:18]
0004c4  0ba8b140  min.ul r[17:18], r[4:5], r[12:13]
0004c8  2b020500  lui r4, 80
0004cc  8b914210  add.s r3, r5, r4
0004d0  3b11d100  bneq r2, r13, 68
0004d4  eb540f01  load.d r[10:11], 16(r30)
0004d8  17327903  sll.d r[5:6], r[19:20], r23
0004dc  9f301000  addli r1, zero, 11
0004e0  7d900000  xwait r1, 0
0004e4  1d800a00  lock zero, r21
0004e8  9b302800  slli r1, r16, 2
0004ec  0ba24410  add.ul r[5:6], r[10:11], r[5:6]
0004f0  15000000  dma_cfg zero, zero, zero, 0
0004f4  15800204  dma_cfg zero, r5, zero, 2
0004f8  95011206  dma_cfg r3, r4, r1, 3
0004fc  9f000004  addli r1, zero, 512
000500  9580d008  dma_cfg r1, r1, r13, 4
000504  35000000  dma_run zero
000508  1d900a00  unlock r21
00050c  9f201000  addli r1, zero, 10
000510  5b520000  j 656
000514  1bbb0001  slli r22, r1, 16
000518  9b1002a0  ori r1, r4, 2560
00051c  8b101b10  add.s r1, r22, r1
000520  bb315101  bneq r2, r21, 108
000524  9f011000  addli r3, zero, 8
000528  7d900a00  xwait r21, 0
00052c  1f050000  addli r10, zero, 0
000530  9f140000  addli r9, zero, 1
000534  1f521000  addli r4, zero, 13
000538  7d900100  xwait r3, 0
00053c  9f110000  addli r3, zero, 1
000540  7d100200  xwait r4, 0
000544  1b32e500  slli r4, r10, 14
000548  9b328500  slli r5, r10, 8
00054c  1d800100  lock zero, r3
000550  1f150000  addli r10, zero, 1
000554  090e8e00  mm_cfg r28, r28, r8, 0
000558  1712a201  or r4, r4, r26
00055c  97921200  or r5, r5, r1
000560  898a3a04  mm_cfg r21, r21, r3, 2
000564  a9024d10  mm r5, r26, r4, 8
000568  1b821400  andi r4, r9, 1
00056c  9f040000  addli r9, zero, 0
000570  1d900100  unlock r3
000574  3b4f02fe  bneq r4, zero, -48
000578  9f101000  addli r1, zero, 9
00057c  7d000c00  xsignal r24, 0
000580  7d800000  xsignal r1, 0
000584  9f401000  addli r1, zero, 12
000588  5b430000  j 536
00058c  3b368101  bneq r2, r24, 396
000590  1f221000  addli r4, zero, 10
000594  2b06803f  lui r12, 260096
000598  9f75f000  addli r11, zero, 127
00059c  9f040000  addli r9, zero, 0
0005a0  7d100200  xwait r4, 0
0005a4  1f421000  addli r4, zero, 12
0005a8  7d100200  xwait r4, 0
0005ac  1d800b00  lock zero, r23
0005b0  0d000002  ew_cfg zero, zero, zero, 1
0005b4  0d160600  ewcoeff_cfg r12, r12, zero, 0
0005b8  0d800504  ew_cfg zero, r11, zero, 2
0005bc  8d060006  ew_cfg r13, zero, zero, 3
0005c0  0b929010  add.s r4, r1, r9
0005c4  9f840404  addli r9, r9, 512
0005c8  2d023200  dsmadd r4, r4, r3, 0
0005cc  bbdf94ff  bneq r9, r25, -12
0005d0  9f311000  addli r3, zero, 11
0005d4  1f721000  addli r4, zero, 15
0005d8  1d900b00  unlock r23
0005dc  1f050000  addli r10, zero, 0
0005e0  7d800100  xsignal r3, 0
0005e4  e341dfff  loadli.w r3,  -20(r30)
0005e8  7d100200  xwait r4, 0
0005ec  1d800b00  lock zero, r23
0005f0  0d000002  ew_cfg zero, zero, zero, 1
0005f4  6b520fff  load.d r[5:6], -16(r30)
0005f8  8b113b10  add.s r3, r22, r3
0005fc  0d800204  ew_cfg zero, r5, zero, 2
000600  1f521000  addli r4, zero, 13
000604  ab0200c1  lui r5, 790528
000608  8d0a0006  ew_cfg r21, zero, zero, 3
00060c  8d8a0a26  ew_cfg r21, r21, zero, 19
000610  0d020014  ew_cfg r4, zero, zero, 10
000614  6302dfff  loadli.w r4,  -24(r30)
000618  8d8b4616  ew_cfg r23, r13, r4, 11
00061c  1f320000  addli r4, zero, 3
000620  0d00401a  ew_cfg zero, zero, r4, 13
000624  2b82ff40  lui r4, 266232
000628  8d824a1c  ew_cfg r5, r21, r4, 14
00062c  0d00061e  ew_cfg zero, r12, zero, 15
000630  cda10000  sslut r3, r1, 0
000634  0d000014  ew_cfg zero, zero, zero, 10
000638  0d000026  ew_cfg zero, zero, zero, 19
00063c  1d900b00  unlock r23
000640  6342cfff  loadli.w r4,  -28(r30)
000644  8b144b10  add.s r9, r22, r4
000648  1f022000  addli r4, zero, 16
00064c  7d100200  xwait r4, 0
000650  1d800b00  lock zero, r23
000654  0d000002  ew_cfg zero, zero, zero, 1
000658  0d800504  ew_cfg zero, r11, zero, 2
00065c  8d060006  ew_cfg r13, zero, zero, 3
000660  6302cfff  loadli.w r4,  -32(r30)
000664  0d120000  ewcoeff_cfg r4, zero, zero, 0
000668  0b92a410  add.s r4, r9, r10
00066c  8b92a010  add.s r5, r1, r10
000670  1f050504  addli r10, r10, 512
000674  2da25200  dscmpnsel r4, r5, r5, 0
000678  bb4f95ff  bneq r10, r25, -16
00067c  1d900b00  unlock r23
000680  1f050000  addli r10, zero, 0
000684  1d800b00  lock zero, r23
000688  0d000002  ew_cfg zero, zero, zero, 1
00068c  0d800504  ew_cfg zero, r11, zero, 2
000690  8d060006  ew_cfg r13, zero, zero, 3
000694  6342bfff  loadli.w r4,  -36(r30)
000698  0d120000  ewcoeff_cfg r4, zero, zero, 0
00069c  0b92a410  add.s r4, r9, r10
0006a0  1f050504  addli r10, r10, 512
0006a4  2d224208  dscmpnsel r4, r4, r4, 4
0006a8  bb5f95ff  bneq r10, r25, -12
0006ac  1d900b00  unlock r23
0006b0  2b0280bf  lui r4, 784384
0006b4  1d800b00  lock zero, r23
0006b8  0d000002  ew_cfg zero, zero, zero, 1
0006bc  0d160200  ewcoeff_cfg r12, r4, zero, 0
0006c0  1f022000  addli r4, zero, 16
0006c4  6b550fff  load.d r[11:12], -16(r30)
0006c8  0d800504  ew_cfg zero, r11, zero, 2
0006cc  8d0a0006  ew_cfg r21, zero, zero, 3
0006d0  8d8a5a27  ew_cfg r21, r21, r21, 19
0006d4  ad809000  dsmadd r1, r1, r9, 0
0006d8  0d000026  ew_cfg zero, zero, zero, 19
0006dc  1d900b00  unlock r23
0006e0  7d000200  xsignal r4, 0
0006e4  1d800b00  lock zero, r23
0006e8  0d000002  ew_cfg zero, zero, zero, 1
0006ec  0d160600  ewcoeff_cfg r12, r12, zero, 0
0006f0  0d800504  ew_cfg zero, r11, zero, 2
0006f4  8d0a0006  ew_cfg r21, zero, zero, 3
0006f8  8d8a5a27  ew_cfg r21, r21, r21, 19
0006fc  ad811100  dsmadd r3, r3, r1, 0
000700  9f501000  addli r1, zero, 13
000704  0d000026  ew_cfg zero, zero, zero, 19
000708  1d900b00  unlock r23
00070c  7d800000  xsignal r1, 0
000710  9f601000  addli r1, zero, 14
000714  db110000  j 140
000718  3b320100  bneq r2, zero, 140
00071c  9b307a00  slli r1, r20, 7
000720  e341dfff  loadli.w r3,  -20(r30)
000724  33920028  sext_int2long r[5:6], r1
000728  9f402000  addli r1, zero, 20
00072c  8b113b10  add.s r3, r22, r3
000730  17371702  sll.d r[15:16], r[15:16], r1
000734  8b349240  min.sl r[10:11], r[5:6], r[10:11]
000738  9f601000  addli r1, zero, 14
00073c  a7840401  addli.d r[10:11], r[10:11], 128
000740  7338effc  store.d r[15:16], -48(r30)
000744  17377903  sll.d r[15:16], r[19:20], r23
000748  7334effc  store.d r[15:16], -56(r30)
00074c  7d900000  xwait r1, 0
000750  8bb44448  max.sl r[10:11], r[10:11], r[5:6]
000754  6b578f01  load.d r[15:16], 24(r30)
000758  6b590ffd  load.d r[19:20], -48(r30)
00075c  9b302800  slli r1, r16, 2
000760  0bb24418  sub.sl r[5:6], r[10:11], r[5:6]
000764  eb548ffc  load.d r[10:11], -56(r30)
000768  1d000c00  lock zero, r24
00076c  0b272711  add.ul r[15:16], r[15:16], r[19:20]
000770  15000000  dma_cfg zero, zero, zero, 0
000774  15800602  dma_cfg zero, r13, zero, 1
000778  0b32b240  min.sl r[5:6], r[5:6], r[12:13]
00077c  8b249710  add.ul r[10:11], r[15:16], r[10:11]
000780  15050004  dma_cfg r10, zero, zero, 2
000784  95841106  dma_cfg r9, r3, r1, 3
000788  9f000004  addli r1, zero, 512
00078c  9f010040  addli r3, zero, 8192
000790  95814008  dma_cfg r3, r1, r4, 4
000794  9f701000  addli r1, zero, 15
000798  35000000  dma_run zero
00079c  1d100c00  unlock r24
0007a0  7d800000  xsignal r1, 0
0007a4  eb518fff  load.d r[4:5], -8(r30)
0007a8  27130300  addli.d r[7:8], r[7:8], 1
0007ac  9f9d0d00  addli r27, r27, 1
0007b0  93303304  setlt.sl r1, r[7:8], r[4:5]
0007b4  3bad00fc  bneq r1, zero, -1208
0007b8  7d000000  xsignal zero, 0
0007bc  bb600100  bneq r2, zero, 56
0007c0  9f200000  addli r1, zero, 2
0007c4  7d100000  xwait zero, 0
0007c8  7d100000  xwait zero, 0
0007cc  7d100000  xwait zero, 0
0007d0  7d100000  xwait zero, 0
0007d4  7d100000  xwait zero, 0
0007d8  7d100000  xwait zero, 0
0007dc  7d100000  xwait zero, 0
0007e0  7d100000  xwait zero, 0
0007e4  1d800000  lock zero, r1
0007e8  0d000020  ew_cfg zero, zero, zero, 16
0007ec  1d900000  unlock r1
0007f0  7d400000  xsignal_mode_cfg zero
0007f4  9f8e7e00  addli sp, sp, 56
0007f8  00a00300  mfence { lm, sm, gm }
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
000a14  00100000  exit
000a18  00100000  exit
000a1c  00100000  exit
000a20  00100000  exit
000a24  00100000  exit
000a28  00100000  exit
000a2c  00100000  exit
000a30  00100000  exit
000a34  00100000  exit
000a38  00100000  exit
000a3c  00100000  exit
