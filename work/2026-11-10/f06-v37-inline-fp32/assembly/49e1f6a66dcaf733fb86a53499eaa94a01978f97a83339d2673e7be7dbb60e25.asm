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
0000bc  00310002  core_id r2
0000c0  1f8f5e00  addli r30, sp, 40
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100100  beq r2, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b90f1ff  ori r1, r3, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db280000  j 324
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
0001a4  7d800100  xsignal r3, 0
0001a8  7d800100  xsignal r3, 0
0001ac  7d800100  xsignal r3, 0
0001b0  7d800100  xsignal r3, 0
0001b4  9f101000  addli r1, zero, 9
0001b8  9f710000  addli r3, zero, 7
0001bc  7d800000  xsignal r1, 0
0001c0  7d800000  xsignal r1, 0
0001c4  7d800000  xsignal r1, 0
0001c8  7d800000  xsignal r1, 0
0001cc  7d800100  xsignal r3, 0
0001d0  7d800100  xsignal r3, 0
0001d4  7d800100  xsignal r3, 0
0001d8  7d800100  xsignal r3, 0
0001dc  9f301000  addli r1, zero, 11
0001e0  9f511000  addli r3, zero, 13
0001e4  7d800000  xsignal r1, 0
0001e8  7d800000  xsignal r1, 0
0001ec  7d800000  xsignal r1, 0
0001f0  7d800000  xsignal r1, 0
0001f4  7d800100  xsignal r3, 0
0001f8  7d800100  xsignal r3, 0
0001fc  7d800100  xsignal r3, 0
000200  7d800100  xsignal r3, 0
000204  9f701000  addli r1, zero, 15
000208  9f012000  addli r3, zero, 16
00020c  7d800000  xsignal r1, 0
000210  7d800000  xsignal r1, 0
000214  7d800000  xsignal r1, 0
000218  7d800000  xsignal r1, 0
00021c  7d800100  xsignal r3, 0
000220  7d800100  xsignal r3, 0
000224  7d800100  xsignal r3, 0
000228  7d800100  xsignal r3, 0
00022c  e3005f00  loadli.w r1,  40(r30)
000230  e3415f00  loadli.w r3,  44(r30)
000234  80d20002  load_param_i r5, 1
000238  63026f00  loadli.w r4,  48(r30)
00023c  8b901120  mul.s r1, r3, r1
000240  9f810200  addli r3, r5, 0
000244  8b914050  fmac.s r3, r1, r4
000248  0b924020  mul.s r4, r1, r4
00024c  9ff1f1ff  addli r3, r3, -1
000250  8b915130  div.s r3, r3, r5
000254  80520002  load_param_i r5, 0
000258  8b905120  mul.s r1, r3, r5
00025c  8b915150  fmac.s r3, r3, r5
000260  8b914140  min.s r3, r3, r4
000264  cbf41102  ble.s r3, r1, 1340
000268  33930028  sext_int2long r[7:8], r1
00026c  ab000500  lui r1, 80
000270  b3910128  sext_int2long r[4:5], r3
000274  1f048000  addli r8, zero, 64
000278  1f0c1000  addli r24, zero, 8
00027c  9f740000  addli r9, zero, 7
000280  9f450000  addli r11, zero, 4
000284  1f160000  addli r12, zero, 1
000288  9f2a0000  addli r21, zero, 2
00028c  ab8c0000  lui r25, 8
000290  9f0d0000  addli r27, zero, 0
000294  9b900080  ori r1, r1, 2048
000298  733c3ffe  store.d r[4:5], -8(r30)
00029c  1f72f00f  addli r4, zero, 2047
0002a0  ab81ffff  lui r3, 1048568
0002a4  e74e1ffe  storeli.w r1, -20(r30)
0002a8  ab800d00  lui r1, 216
0002ac  73383ffe  store.d r[4:5], -16(r30)
0002b0  ab010700  lui r3, 112
0002b4  9b90d0b4  ori r1, r1, 2893
0002b8  e70e1ffe  storeli.w r1, -24(r30)
0002bc  9b900180  ori r1, r3, 2048
0002c0  abf17f7f  lui r3, 522239
0002c4  674e1ffe  storeli.w r1, -28(r30)
0002c8  abf07fff  lui r1, 1046527
0002cc  9b90f0ff  ori r1, r1, 4095
0002d0  670e1ffe  storeli.w r1, -32(r30)
0002d4  9b90f1ff  ori r1, r3, 4095
0002d8  e74d1ffe  storeli.w r1, -36(r30)
0002dc  e3006f00  loadli.w r1,  48(r30)
0002e0  e3415f00  loadli.w r3,  44(r30)
0002e4  0b9ebd38  mod.s r28, r27, r11
0002e8  8b101330  div.s r1, r6, r1
0002ec  1b39ee00  slli r18, r28, 14
0002f0  8b903030  div.s r1, r1, r3
0002f4  8b918030  div.s r3, r1, r8
0002f8  1bb23100  slli r4, r3, 3
0002fc  9bb16100  slli r3, r3, 6
000300  8b124c18  sub.s r5, r24, r4
000304  8b913018  sub.s r3, r1, r3
000308  8b928241  min.s r5, r5, r24
00030c  8b905038  mod.s r1, r1, r5
000310  0b9d5130  div.s r26, r3, r5
000314  8b101210  add.s r1, r4, r1
000318  b3010d28  zext_int2long r[4:5], r26
00031c  17b89102  sll.d r[17:18], r[4:5], r9
000320  9f018003  addli r3, zero, 448
000324  b3890028  zext_int2long r[20:21], r1
000328  338b0128  zext_int2long r[23:24], r3
00032c  3b70c100  bneq r2, r12, 28
000330  93811404  setlt.u r3, r9, r1
000334  1f421000  addli r4, zero, 12
000338  97b64902  sll.d r[14:15], r[20:21], r4
00033c  3bb10100  bneq r3, zero, 76
000340  b3010028  zext_int2long r[4:5], zero
000344  db090000  j 76
000348  3b665101  bneq r2, r21, 408
00034c  9f510000  addli r3, zero, 5
000350  7d900a00  xwait r21, 0
000354  9b36fe00  slli r13, r28, 15
000358  7d900100  xwait r3, 0
00035c  1d000000  lock zero, zero
000360  9f310000  addli r3, zero, 3
000364  810a0000  ds_cfg r21, zero, 0
000368  01040002  ds_cfg r8, zero, 1
00036c  0104001c  ds_cfg r8, zero, 14
000370  0104001a  ds_cfg r8, zero, 13
000374  21198902  shuffle_batch r18, r18, r8, 1
000378  1d100000  unlock zero
00037c  7d800100  xsignal r3, 0
000380  7d800500  xsignal r11, 0
000384  db0c0000  j 100
000388  eb510fff  load.d r[4:5], -16(r30)
00038c  97813602  and.d r[4:5], r[14:15], r[4:5]
000390  9f620000  addli r5, zero, 6
000394  8bb13618  sub.sl r[4:5], r[14:15], r[4:5]
000398  eb540f00  load.d r[10:11], 0(r30)
00039c  97d15102  sra.d r[4:5], r[4:5], r5
0003a0  9f621000  addli r5, zero, 14
0003a4  8bb66141  min.sl r[14:15], r[4:5], r[23:24]
0003a8  8bb13618  sub.sl r[4:5], r[14:15], r[4:5]
0003ac  97b65902  sll.d r[14:15], r[20:21], r5
0003b0  9f320000  addli r5, zero, 3
0003b4  7d900200  xwait r5, 0
0003b8  1d800500  lock zero, r11
0003bc  8ba6d410  add.ul r[14:15], r[10:11], r[14:15]
0003c0  9f818100  addli r3, r3, 64
0003c4  1f020002  addli r4, zero, 256
0003c8  15000000  dma_cfg zero, zero, zero, 0
0003cc  15000704  dma_cfg zero, r14, zero, 2
0003d0  15894606  dma_cfg r18, r13, r4, 3
0003d4  9b36fe00  slli r13, r28, 15
0003d8  15023208  dma_cfg r4, r4, r3, 4
0003dc  35000000  dma_run zero
0003e0  1d900500  unlock r11
0003e4  7d800a00  xsignal r21, 0
0003e8  1f020007  addli r4, zero, 896
0003ec  9b317d00  slli r3, r26, 7
0003f0  33020228  zext_int2long r[5:6], r4
0003f4  33870128  zext_int2long r[15:16], r3
0003f8  8b214740  min.ul r[4:5], r[15:16], r[5:6]
0003fc  9f020001  addli r5, zero, 128
000400  a7810101  addli.d r[4:5], r[4:5], 128
000404  b3840228  zext_int2long r[10:11], r5
000408  9b329e00  slli r5, r28, 9
00040c  8ba1e148  max.ul r[4:5], r[4:5], r[15:16]
000410  8bb1e118  sub.sl r[4:5], r[4:5], r[15:16]
000414  0ba79140  min.ul r[15:16], r[4:5], r[10:11]
000418  ab010300  lui r3, 48
00041c  8b913210  add.s r3, r5, r3
000420  3b11c100  bneq r2, r12, 68
000424  eb540f01  load.d r[10:11], 16(r30)
000428  17325803  sll.d r[5:6], r[17:18], r21
00042c  9f301000  addli r1, zero, 11
000430  7d900000  xwait r1, 0
000434  1d800500  lock zero, r11
000438  9b302700  slli r1, r14, 2
00043c  0ba24410  add.ul r[5:6], r[10:11], r[5:6]
000440  15000000  dma_cfg zero, zero, zero, 0
000444  15800204  dma_cfg zero, r5, zero, 2
000448  95011206  dma_cfg r3, r4, r1, 3
00044c  9f000004  addli r1, zero, 512
000450  9580c008  dma_cfg r1, r1, r12, 4
000454  35000000  dma_run zero
000458  1d900500  unlock r11
00045c  9f201000  addli r1, zero, 10
000460  db5c0000  j 740
000464  2b020300  lui r4, 48
000468  1b3dfe00  slli r26, r28, 15
00046c  1b120280  ori r4, r4, 2048
000470  0b1e4d10  add.s r28, r26, r4
000474  3b03b100  bneq r2, r11, 192
000478  1f070000  addli r14, zero, 0
00047c  9f100000  addli r1, zero, 1
000480  9f110000  addli r3, zero, 1
000484  1f521000  addli r4, zero, 13
000488  7d900500  xwait r11, 0
00048c  7d100c00  xwait r24, 0
000490  7d100200  xwait r4, 0
000494  1b32e700  slli r4, r14, 14
000498  9b328700  slli r5, r14, 8
00049c  1d800000  lock zero, r1
0004a0  1f170000  addli r14, zero, 1
0004a4  09048400  mm_cfg r8, r8, r8, 0
0004a8  1712d200  or r4, r4, r13
0004ac  9792c201  or r5, r5, r28
0004b0  89851504  mm_cfg r11, r11, r1, 2
0004b4  a9024910  mm r5, r18, r4, 8
0004b8  1b821100  andi r4, r3, 1
0004bc  9f010000  addli r3, zero, 0
0004c0  1d900000  unlock r1
0004c4  3b4f02fe  bneq r4, zero, -48
0004c8  9f500000  addli r1, zero, 5
0004cc  7d800000  xsignal r1, 0
0004d0  9f101000  addli r1, zero, 9
0004d4  7d800000  xsignal r1, 0
0004d8  9f401000  addli r1, zero, 12
0004dc  5b4d0000  j 616
0004e0  9b36fe00  slli r13, r28, 15
0004e4  ab010100  lui r3, 16
0004e8  8b913610  add.s r3, r13, r3
0004ec  b7699100  beq r2, r9, 632
0004f0  1f650000  addli r10, zero, 6
0004f4  bb5ba1fe  bneq r2, r10, -268
0004f8  6b578f00  load.d r[15:16], 8(r30)
0004fc  17325803  sll.d r[5:6], r[17:18], r21
000500  7d900400  xwait r9, 0
000504  1d800500  lock zero, r11
000508  9f040004  addli r9, zero, 512
00050c  15000000  dma_cfg zero, zero, zero, 0
000510  0b224710  add.ul r[5:6], r[15:16], r[5:6]
000514  15800204  dma_cfg zero, r5, zero, 2
000518  95019206  dma_cfg r3, r4, r9, 3
00051c  9f010020  addli r3, zero, 4096
000520  95848108  dma_cfg r9, r3, r8, 4
000524  35000000  dma_run zero
000528  1d900500  unlock r11
00052c  7d000500  xsignal r10, 0
000530  5bd7ffff  j -328
000534  1f520000  addli r4, zero, 5
000538  3b364100  bneq r2, r4, 396
00053c  1f221000  addli r4, zero, 10
000540  ab04803f  lui r9, 260096
000544  1f75f000  addli r10, zero, 127
000548  9f000000  addli r1, zero, 0
00054c  7d100200  xwait r4, 0
000550  1f421000  addli r4, zero, 12
000554  7d100200  xwait r4, 0
000558  1d800a00  lock zero, r21
00055c  0d000002  ew_cfg zero, zero, zero, 1
000560  8d940400  ewcoeff_cfg r9, r9, zero, 0
000564  0d000504  ew_cfg zero, r10, zero, 2
000568  0d060006  ew_cfg r12, zero, zero, 3
00056c  0b121e10  add.s r4, r28, r1
000570  9f800004  addli r1, r1, 512
000574  2d023200  dsmadd r4, r4, r3, 0
000578  bbdf90ff  bneq r1, r25, -12
00057c  9f301000  addli r1, zero, 11
000580  1f721000  addli r4, zero, 15
000584  1d900a00  unlock r21
000588  9f010000  addli r3, zero, 0
00058c  7d800000  xsignal r1, 0
000590  e340dfff  loadli.w r1,  -20(r30)
000594  7d100200  xwait r4, 0
000598  1d800a00  lock zero, r21
00059c  0d000002  ew_cfg zero, zero, zero, 1
0005a0  6b520fff  load.d r[5:6], -16(r30)
0005a4  8b101d10  add.s r1, r26, r1
0005a8  0d800204  ew_cfg zero, r5, zero, 2
0005ac  1f521000  addli r4, zero, 13
0005b0  ab0200c1  lui r5, 790528
0005b4  8d050006  ew_cfg r11, zero, zero, 3
0005b8  8d850526  ew_cfg r11, r11, zero, 19
0005bc  0d020014  ew_cfg r4, zero, zero, 10
0005c0  6302dfff  loadli.w r4,  -24(r30)
0005c4  8d0a4616  ew_cfg r21, r12, r4, 11
0005c8  1f320000  addli r4, zero, 3
0005cc  0d00401a  ew_cfg zero, zero, r4, 13
0005d0  2b82ff40  lui r4, 266232
0005d4  8d82451c  ew_cfg r5, r11, r4, 14
0005d8  0d80041e  ew_cfg zero, r9, zero, 15
0005dc  cd200e00  sslut r1, r28, 0
0005e0  0d000014  ew_cfg zero, zero, zero, 10
0005e4  0d000026  ew_cfg zero, zero, zero, 19
0005e8  1d900a00  unlock r21
0005ec  6342cfff  loadli.w r4,  -28(r30)
0005f0  8b164d10  add.s r13, r26, r4
0005f4  1f022000  addli r4, zero, 16
0005f8  7d100200  xwait r4, 0
0005fc  1d800a00  lock zero, r21
000600  0d000002  ew_cfg zero, zero, zero, 1
000604  0d000504  ew_cfg zero, r10, zero, 2
000608  0d060006  ew_cfg r12, zero, zero, 3
00060c  6302cfff  loadli.w r4,  -32(r30)
000610  0d120000  ewcoeff_cfg r4, zero, zero, 0
000614  0b923610  add.s r4, r13, r3
000618  8b123e10  add.s r5, r28, r3
00061c  9f810104  addli r3, r3, 512
000620  2da25200  dscmpnsel r4, r5, r5, 0
000624  bbcf91ff  bneq r3, r25, -16
000628  1d900a00  unlock r21
00062c  9f010000  addli r3, zero, 0
000630  1d800a00  lock zero, r21
000634  0d000002  ew_cfg zero, zero, zero, 1
000638  0d000504  ew_cfg zero, r10, zero, 2
00063c  0d060006  ew_cfg r12, zero, zero, 3
000640  6342bfff  loadli.w r4,  -36(r30)
000644  0d120000  ewcoeff_cfg r4, zero, zero, 0
000648  0b923610  add.s r4, r13, r3
00064c  9f810104  addli r3, r3, 512
000650  2d224208  dscmpnsel r4, r4, r4, 4
000654  bbdf91ff  bneq r3, r25, -12
000658  1d900a00  unlock r21
00065c  ab0180bf  lui r3, 784384
000660  9f022000  addli r5, zero, 16
000664  1d800a00  lock zero, r21
000668  0d000002  ew_cfg zero, zero, zero, 1
00066c  8d940100  ewcoeff_cfg r9, r3, zero, 0
000670  eb510fff  load.d r[4:5], -16(r30)
000674  0d000204  ew_cfg zero, r4, zero, 2
000678  8d050006  ew_cfg r11, zero, zero, 3
00067c  8d85b526  ew_cfg r11, r11, r11, 19
000680  2d0ede00  dsmadd r28, r28, r13, 0
000684  0d000026  ew_cfg zero, zero, zero, 19
000688  1d900a00  unlock r21
00068c  7d800200  xsignal r5, 0
000690  1d800a00  lock zero, r21
000694  0d000002  ew_cfg zero, zero, zero, 1
000698  8d940400  ewcoeff_cfg r9, r9, zero, 0
00069c  0d000204  ew_cfg zero, r4, zero, 2
0006a0  8d050006  ew_cfg r11, zero, zero, 3
0006a4  8d85b526  ew_cfg r11, r11, r11, 19
0006a8  ad80c001  dsmadd r1, r1, r28, 0
0006ac  9f501000  addli r1, zero, 13
0006b0  0d000026  ew_cfg zero, zero, zero, 19
0006b4  1d900a00  unlock r21
0006b8  7d800000  xsignal r1, 0
0006bc  9f601000  addli r1, zero, 14
0006c0  db100000  j 132
0006c4  3b120100  bneq r2, zero, 132
0006c8  9bb06000  slli r1, r1, 6
0006cc  9f222000  addli r5, zero, 18
0006d0  17385803  sll.d r[17:18], r[17:18], r21
0006d4  b3910028  sext_int2long r[4:5], r1
0006d8  17b95902  sll.d r[19:20], r[20:21], r5
0006dc  9f621000  addli r5, zero, 14
0006e0  e340dfff  loadli.w r1,  -20(r30)
0006e4  8bb46141  min.sl r[10:11], r[4:5], r[23:24]
0006e8  6b5b8f01  load.d r[23:24], 24(r30)
0006ec  7d900200  xwait r5, 0
0006f0  9b322700  slli r5, r14, 2
0006f4  8b101d10  add.s r1, r26, r1
0006f8  a7848400  addli.d r[10:11], r[10:11], 64
0006fc  0b292b11  add.ul r[19:20], r[23:24], r[19:20]
000700  8bb43448  max.sl r[10:11], r[10:11], r[4:5]
000704  0b280911  add.ul r[17:18], r[19:20], r[17:18]
000708  8bb13418  sub.sl r[4:5], r[10:11], r[4:5]
00070c  b3040428  zext_int2long r[10:11], r8
000710  8bb19140  min.sl r[4:5], r[4:5], r[10:11]
000714  9f540000  addli r9, zero, 5
000718  1d800400  lock zero, r9
00071c  15000000  dma_cfg zero, zero, zero, 0
000720  15000602  dma_cfg zero, r12, zero, 1
000724  95080004  dma_cfg r17, zero, zero, 2
000728  15885006  dma_cfg r16, r1, r5, 3
00072c  9f000004  addli r1, zero, 512
000730  9f020020  addli r5, zero, 4096
000734  95823008  dma_cfg r5, r1, r3, 4
000738  9f701000  addli r1, zero, 15
00073c  35000000  dma_run zero
000740  1d900400  unlock r9
000744  7d800000  xsignal r1, 0
000748  eb518fff  load.d r[4:5], -8(r30)
00074c  27130300  addli.d r[7:8], r[7:8], 1
000750  9f9d0d00  addli r27, r27, 1
000754  9f740000  addli r9, zero, 7
000758  93303304  setlt.sl r1, r[7:8], r[4:5]
00075c  3b8e00fc  bneq r1, zero, -1152
000760  5b080000  j 64
000764  1f620000  addli r4, zero, 6
000768  7d100200  xwait r4, 0
00076c  1f121000  addli r4, zero, 9
000770  7d100200  xwait r4, 0
000774  1d000000  lock zero, zero
000778  1f020001  addli r4, zero, 128
00077c  810a0000  ds_cfg r21, zero, 0
000780  01020002  ds_cfg r4, zero, 1
000784  0104001c  ds_cfg r8, zero, 14
000788  0102001a  ds_cfg r4, zero, 13
00078c  c1868104  shuffle_coa r13, r3, r8, 2
000790  1d100000  unlock zero
000794  7d800400  xsignal r9, 0
000798  7d000c00  xsignal r24, 0
00079c  db89ffff  j -948
0007a0  7d000000  xsignal zero, 0
0007a4  bb600100  bneq r2, zero, 56
0007a8  9f200000  addli r1, zero, 2
0007ac  7d100000  xwait zero, 0
0007b0  7d100000  xwait zero, 0
0007b4  7d100000  xwait zero, 0
0007b8  7d100000  xwait zero, 0
0007bc  7d100000  xwait zero, 0
0007c0  7d100000  xwait zero, 0
0007c4  7d100000  xwait zero, 0
0007c8  7d100000  xwait zero, 0
0007cc  1d800000  lock zero, r1
0007d0  0d000020  ew_cfg zero, zero, zero, 16
0007d4  1d900000  unlock r1
0007d8  7d400000  xsignal_mode_cfg zero
0007dc  9f8e5e00  addli sp, sp, 40
0007e0  00a00300  mfence { lm, sm, gm }
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
000a14  00100000  exit
000a18  00100000  exit
000a1c  00100000  exit
000a20  00100000  exit
000a24  00100000  exit
