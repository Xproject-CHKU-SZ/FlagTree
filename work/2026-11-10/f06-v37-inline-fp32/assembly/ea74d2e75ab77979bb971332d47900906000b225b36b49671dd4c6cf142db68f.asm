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
0000b4  9f8e4eff  addli sp, sp, -96
0000b8  9f100000  addli r1, zero, 1
0000bc  00340002  core_id r8
0000c0  1f8f4e00  addli r30, sp, 32
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100400  beq r8, zero, 36
0000cc  2bf1ffff  lui r2, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b10f1ff  ori r1, r2, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db180000  j 196
0000ec  1f220000  addli r4, zero, 2
0000f0  fdd00000  uni_sram_cfg r1, r1
0000f4  9f420000  addli r5, zero, 4
0000f8  6b510f02  load.d r[3:4], 32(r30)
0000fc  1f030020  addli r6, zero, 4096
000100  1d000200  lock zero, r4
000104  8d000020  ew_cfg r1, zero, zero, 16
000108  1d100200  unlock r4
00010c  1d800200  lock zero, r5
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15800104  dma_cfg zero, r3, zero, 2
000118  15006106  dma_cfg zero, r2, r6, 3
00011c  1f014000  addli r2, zero, 32
000120  9f010008  addli r3, zero, 1024
000124  15001008  dma_cfg zero, zero, r1, 4
000128  35000000  dma_run zero
00012c  1d900200  unlock r5
000130  7d800000  xsignal r1, 0
000134  7d900000  xwait r1, 0
000138  1d000000  lock zero, zero
00013c  01020000  ds_cfg r4, zero, 0
000140  01000002  ds_cfg zero, zero, 1
000144  01000016  ds_cfg zero, zero, 11
000148  0101001a  ds_cfg r2, zero, 13
00014c  1f510000  addli r2, zero, 5
000150  8101001c  ds_cfg r3, zero, 14
000154  21133008  shuffle_batch r6, zero, r3, 4
000158  1d100000  unlock zero
00015c  7d800000  xsignal r1, 0
000160  7d900000  xwait r1, 0
000164  1d000200  lock zero, r4
000168  ab100100  lui r1, 17
00016c  0d200300  ewtable_cfg r6, 0
000170  0da00002  ewtable_cfg r1, 1
000174  abf0ffff  lui r1, 1048575
000178  1d100200  unlock r4
00017c  7d000000  xsignal zero, 0
000180  7d100000  xwait zero, 0
000184  9b90f0ff  ori r1, r1, 4095
000188  80a10004  csr_set csr3, r1
00018c  9f300000  addli r1, zero, 3
000190  00d00100  sync_group
000194  7d800000  xsignal r1, 0
000198  7d000100  xsignal r2, 0
00019c  9f700000  addli r1, zero, 7
0001a0  1f011000  addli r2, zero, 8
0001a4  7d800000  xsignal r1, 0
0001a8  7d000100  xsignal r2, 0
0001ac  e3005f00  loadli.w r1,  40(r30)
0001b0  63415f00  loadli.w r2,  44(r30)
0001b4  00d20002  load_param_i r4, 1
0001b8  e3016f00  loadli.w r3,  48(r30)
0001bc  8b101120  mul.s r1, r2, r1
0001c0  1f010200  addli r2, r4, 0
0001c4  0b913050  fmac.s r2, r1, r3
0001c8  8b913020  mul.s r3, r1, r3
0001cc  1f71f1ff  addli r2, r2, -1
0001d0  0b114130  div.s r2, r2, r4
0001d4  00520002  load_param_i r4, 0
0001d8  8b104120  mul.s r1, r2, r4
0001dc  0b114150  fmac.s r2, r2, r4
0001e0  0b113140  min.s r2, r2, r3
0001e4  4b0c1100  ble.s r2, r1, 768
0001e8  33930028  sext_int2long r[7:8], r1
0001ec  9f000008  addli r1, zero, 1024
0001f0  33110128  sext_int2long r[3:4], r2
0001f4  eb5c8f00  load.d r[26:27], 8(r30)
0001f8  1f5b0000  addli r22, zero, 5
0001fc  ab470000  lui r15, 4
000200  1f280000  addli r16, zero, 2
000204  9f480000  addli r17, zero, 4
000208  1f190000  addli r18, zero, 1
00020c  9f390000  addli r19, zero, 3
000210  b3850028  zext_int2long r[12:13], r1
000214  ab800d00  lui r1, 216
000218  733c2ffe  store.d r[3:4], -8(r30)
00021c  1f010020  addli r2, zero, 4096
000220  9b90d0b4  ori r1, r1, 2893
000224  b3060128  zext_int2long r[14:15], r2
000228  e74e1ffe  storeli.w r1, -20(r30)
00022c  abf07fff  lui r1, 1046527
000230  9b90f0ff  ori r1, r1, 4095
000234  e70e1ffe  storeli.w r1, -24(r30)
000238  abf07f7f  lui r1, 522239
00023c  9b90f0ff  ori r1, r1, 4095
000240  674e1ffe  storeli.w r1, -28(r30)
000244  b3000028  zext_int2long r[2:3], zero
000248  73381ffe  store.d r[2:3], -16(r30)
00024c  db030000  j 28
000250  7d800800  xsignal r17, 0
000254  00340002  core_id r8
000258  eb508fff  load.d r[2:3], -8(r30)
00025c  27130300  addli.d r[7:8], r[7:8], 1
000260  93301304  setlt.sl r1, r[7:8], r[2:3]
000264  378a0000  beq r1, zero, 640
000268  e3006f00  loadli.w r1,  48(r30)
00026c  63415f00  loadli.w r2,  44(r30)
000270  9f411000  addli r3, zero, 12
000274  8b101330  div.s r1, r6, r1
000278  8b902030  div.s r1, r1, r2
00027c  b3900028  sext_int2long r[2:3], r1
000280  97bb3002  sll.d r[24:25], r[2:3], r3
000284  9f600000  addli r1, zero, 6
000288  37011400  beq r8, r1, 64
00028c  9f010000  addli r3, zero, 0
000290  3b012401  bneq r8, r18, 64
000294  6b520f00  load.d r[5:6], 0(r30)
000298  97b00b03  sll.d r[2:3], r[24:25], r16
00029c  7d900900  xwait r19, 0
0002a0  1d800800  lock zero, r17
0002a4  15000000  dma_cfg zero, zero, zero, 0
0002a8  8b201210  add.ul r[2:3], r[5:6], r[2:3]
0002ac  15000104  dma_cfg zero, r2, zero, 2
0002b0  1580f006  dma_cfg zero, r1, r15, 3
0002b4  95872709  dma_cfg r15, r15, r18, 4
0002b8  35000000  dma_run zero
0002bc  1d900800  unlock r17
0002c0  7d000800  xsignal r16, 0
0002c4  db010000  j 12
0002c8  9f110000  addli r3, zero, 1
0002cc  7d100b00  xwait r22, 0
0002d0  6b5a0fff  load.d r[21:22], -16(r30)
0002d4  a70d0a00  addli.d r[28:29], r[21:22], 0
0002d8  5b090000  j 72
0002dc  33040828  zext_int2long r[9:10], r16
0002e0  17320203  sll.d r[5:6], r[5:6], r16
0002e4  1d800800  lock zero, r17
0002e8  1bb52000  slli r10, r1, 2
0002ec  15000000  dma_cfg zero, zero, zero, 0
0002f0  13244405  setlt.ul r8, r[9:10], r[21:22]
0002f4  9bb42d00  slli r9, r27, 2
0002f8  0ba24c10  add.ul r[5:6], r[26:27], r[5:6]
0002fc  8b94f410  add.s r9, r9, r15
000300  15800204  dma_cfg zero, r5, zero, 2
000304  9504a206  dma_cfg r9, r4, r10, 3
000308  15052509  dma_cfg r10, r10, r18, 4
00030c  35000000  dma_run zero
000310  1d900800  unlock r17
000314  bb7c04fe  bneq r8, zero, -196
000318  271a0a00  addli.d r[21:22], r[21:22], 1
00031c  8badb011  add.ul r[28:29], r[2:3], r[28:29]
000320  8ba07d11  add.ul r[2:3], r[28:29], r[24:25]
000324  0bb4b619  sub.sl r[9:10], r[14:15], r[28:29]
000328  0f92b070  mod.sl r[5:6], r[2:3], r[12:13]
00032c  8bb04518  sub.sl r[2:3], r[12:13], r[5:6]
000330  8b201440  min.ul r[2:3], r[9:10], r[2:3]
000334  bbae01fe  bneq r3, zero, -88
000338  33820928  zext_int2long r[5:6], r19
00033c  13224a04  setlt.ul r4, r[21:22], r[5:6]
000340  3b6f02fe  bneq r4, zero, -40
000344  00340002  core_id r8
000348  9f500000  addli r1, zero, 5
00034c  3b151400  bneq r8, r1, 324
000350  7d100800  xwait r16, 0
000354  7d900800  xwait r17, 0
000358  1d000800  lock zero, r16
00035c  2b01803f  lui r2, 260096
000360  9f713000  addli r3, zero, 31
000364  1f020001  addli r4, zero, 128
000368  ab0200c1  lui r5, 790528
00036c  9f74f01f  addli r9, zero, 4095
000370  1f5b0000  addli r22, zero, 5
000374  0d000002  ew_cfg zero, zero, zero, 1
000378  0d110100  ewcoeff_cfg r2, r2, zero, 0
00037c  0d800104  ew_cfg zero, r3, zero, 2
000380  0d020006  ew_cfg r4, zero, zero, 3
000384  0d024226  ew_cfg r4, r4, r4, 19
000388  2d00f000  dsmadd zero, zero, r15, 0
00038c  0d000026  ew_cfg zero, zero, zero, 19
000390  1d100800  unlock r16
000394  7d800000  xsignal r1, 0
000398  9f700000  addli r1, zero, 7
00039c  7d900000  xwait r1, 0
0003a0  1d000800  lock zero, r16
0003a4  9f501000  addli r1, zero, 13
0003a8  0d000002  ew_cfg zero, zero, zero, 1
0003ac  0d800104  ew_cfg zero, r3, zero, 2
0003b0  0d020006  ew_cfg r4, zero, zero, 3
0003b4  0d020226  ew_cfg r4, r4, zero, 19
0003b8  8d000014  ew_cfg r1, zero, zero, 10
0003bc  e340dfff  loadli.w r1,  -20(r30)
0003c0  0d081916  ew_cfg r16, r18, r1, 11
0003c4  ab80ff40  lui r1, 266232
0003c8  0d00301b  ew_cfg zero, zero, r19, 13
0003cc  8d82181c  ew_cfg r5, r17, r1, 14
0003d0  ab800000  lui r1, 8
0003d4  9f021000  addli r5, zero, 8
0003d8  0d00011e  ew_cfg zero, r2, zero, 15
0003dc  cd200000  sslut r1, zero, 0
0003e0  0d000014  ew_cfg zero, zero, zero, 10
0003e4  0d000026  ew_cfg zero, zero, zero, 19
0003e8  1d100800  unlock r16
0003ec  7d900200  xwait r5, 0
0003f0  1d000800  lock zero, r16
0003f4  0d000002  ew_cfg zero, zero, zero, 1
0003f8  0d800404  ew_cfg zero, r9, zero, 2
0003fc  0d090006  ew_cfg r18, zero, zero, 3
000400  6305dfff  loadli.w r10,  -24(r30)
000404  0d150000  ewcoeff_cfg r10, zero, zero, 0
000408  2bc50000  lui r10, 12
00040c  2d250000  dscmpnsel r10, zero, zero, 0
000410  1d100800  unlock r16
000414  1d000800  lock zero, r16
000418  0d000002  ew_cfg zero, zero, zero, 1
00041c  0d800404  ew_cfg zero, r9, zero, 2
000420  0d090006  ew_cfg r18, zero, zero, 3
000424  e344cfff  loadli.w r9,  -28(r30)
000428  8d140000  ewcoeff_cfg r9, zero, zero, 0
00042c  ab0480bf  lui r9, 784384
000430  2d25a508  dscmpnsel r10, r10, r10, 4
000434  1d100800  unlock r16
000438  1d000800  lock zero, r16
00043c  0d000002  ew_cfg zero, zero, zero, 1
000440  0d910400  ewcoeff_cfg r2, r9, zero, 0
000444  0d800104  ew_cfg zero, r3, zero, 2
000448  0d020006  ew_cfg r4, zero, zero, 3
00044c  0d024226  ew_cfg r4, r4, r4, 19
000450  2d00a000  dsmadd zero, zero, r10, 0
000454  0d000026  ew_cfg zero, zero, zero, 19
000458  1d100800  unlock r16
00045c  7d800200  xsignal r5, 0
000460  1d000800  lock zero, r16
000464  0d000002  ew_cfg zero, zero, zero, 1
000468  0d110100  ewcoeff_cfg r2, r2, zero, 0
00046c  0d800104  ew_cfg zero, r3, zero, 2
000470  0d020006  ew_cfg r4, zero, zero, 3
000474  0d024226  ew_cfg r4, r4, r4, 19
000478  ad800000  dsmadd r1, r1, zero, 0
00047c  9f600000  addli r1, zero, 6
000480  0d000026  ew_cfg zero, zero, zero, 19
000484  1d100800  unlock r16
000488  7d800900  xsignal r19, 0
00048c  5b0a0000  j 80
000490  1f5b0000  addli r22, zero, 5
000494  3b1704fe  bneq r8, zero, -572
000498  9f610000  addli r3, zero, 6
00049c  97b00b03  sll.d r[2:3], r[24:25], r16
0004a0  1f5b0000  addli r22, zero, 5
0004a4  7d900100  xwait r3, 0
0004a8  eb510f01  load.d r[4:5], 16(r30)
0004ac  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
0004b0  9f510000  addli r3, zero, 5
0004b4  2b820000  lui r4, 8
0004b8  1d800100  lock zero, r3
0004bc  15000000  dma_cfg zero, zero, zero, 0
0004c0  15000902  dma_cfg zero, r18, zero, 1
0004c4  15010004  dma_cfg r2, zero, zero, 2
0004c8  9500f206  dma_cfg r1, r4, r15, 3
0004cc  9f700000  addli r1, zero, 7
0004d0  95872709  dma_cfg r15, r15, r18, 4
0004d4  35000000  dma_run zero
0004d8  1d900100  unlock r3
0004dc  7d800000  xsignal r1, 0
0004e0  5bafffff  j -648
0004e4  7d000000  xsignal zero, 0
0004e8  bb600400  bneq r8, zero, 56
0004ec  9f200000  addli r1, zero, 2
0004f0  7d100000  xwait zero, 0
0004f4  7d100000  xwait zero, 0
0004f8  7d100000  xwait zero, 0
0004fc  7d100000  xwait zero, 0
000500  7d100000  xwait zero, 0
000504  7d100000  xwait zero, 0
000508  7d100000  xwait zero, 0
00050c  7d100000  xwait zero, 0
000510  1d800000  lock zero, r1
000514  0d000020  ew_cfg zero, zero, zero, 16
000518  1d900000  unlock r1
00051c  7d400000  xsignal_mode_cfg zero
000520  9f8e4e00  addli sp, sp, 32
000524  00a00300  mfence { lm, sm, gm }
000528  00100000  exit
00052c  00100000  exit
000530  00100000  exit
000534  00100000  exit
000538  00100000  exit
00053c  00100000  exit
000540  00100000  exit
000544  00100000  exit
000548  00100000  exit
00054c  00100000  exit
000550  00100000  exit
000554  00100000  exit
000558  00100000  exit
00055c  00100000  exit
000560  00100000  exit
000564  00100000  exit
000568  00100000  exit
00056c  00100000  exit
000570  00100000  exit
000574  00100000  exit
000578  00100000  exit
00057c  00100000  exit
000580  00100000  exit
000584  00100000  exit
000588  00100000  exit
00058c  00100000  exit
000590  00100000  exit
000594  00100000  exit
000598  00100000  exit
00059c  00100000  exit
0005a0  00100000  exit
0005a4  00100000  exit
0005a8  00100000  exit
0005ac  00100000  exit
0005b0  00100000  exit
0005b4  00100000  exit
0005b8  00100000  exit
0005bc  00100000  exit
0005c0  00100000  exit
0005c4  00100000  exit
0005c8  00100000  exit
0005cc  00100000  exit
0005d0  00100000  exit
0005d4  00100000  exit
0005d8  00100000  exit
0005dc  00100000  exit
0005e0  00100000  exit
0005e4  00100000  exit
0005e8  00100000  exit
0005ec  00100000  exit
0005f0  00100000  exit
0005f4  00100000  exit
0005f8  00100000  exit
0005fc  00100000  exit
000600  00100000  exit
000604  00100000  exit
000608  00100000  exit
00060c  00100000  exit
000610  00100000  exit
000614  00100000  exit
000618  00100000  exit
00061c  00100000  exit
000620  00100000  exit
000624  00100000  exit
000628  00100000  exit
00062c  00100000  exit
000630  00100000  exit
000634  00100000  exit
000638  00100000  exit
00063c  00100000  exit
000640  00100000  exit
000644  00100000  exit
000648  00100000  exit
00064c  00100000  exit
000650  00100000  exit
000654  00100000  exit
000658  00100000  exit
00065c  00100000  exit
000660  00100000  exit
000664  00100000  exit
000668  00100000  exit
00066c  00100000  exit
000670  00100000  exit
000674  00100000  exit
000678  00100000  exit
00067c  00100000  exit
000680  00100000  exit
000684  00100000  exit
000688  00100000  exit
00068c  00100000  exit
000690  00100000  exit
000694  00100000  exit
000698  00100000  exit
00069c  00100000  exit
0006a0  00100000  exit
0006a4  00100000  exit
0006a8  00100000  exit
0006ac  00100000  exit
0006b0  00100000  exit
0006b4  00100000  exit
0006b8  00100000  exit
0006bc  00100000  exit
0006c0  00100000  exit
0006c4  00100000  exit
0006c8  00100000  exit
0006cc  00100000  exit
0006d0  00100000  exit
0006d4  00100000  exit
0006d8  00100000  exit
0006dc  00100000  exit
0006e0  00100000  exit
0006e4  00100000  exit
0006e8  00100000  exit
0006ec  00100000  exit
0006f0  00100000  exit
0006f4  00100000  exit
0006f8  00100000  exit
0006fc  00100000  exit
000700  00100000  exit
000704  00100000  exit
000708  00100000  exit
00070c  00100000  exit
000710  00100000  exit
000714  00100000  exit
000718  00100000  exit
00071c  00100000  exit
000720  00100000  exit
000724  00100000  exit
000728  00100000  exit
00072c  00100000  exit
000730  00100000  exit
000734  00100000  exit
000738  00100000  exit
00073c  00100000  exit
000740  00100000  exit
000744  00100000  exit
000748  00100000  exit
00074c  00100000  exit
000750  00100000  exit
000754  00100000  exit
000758  00100000  exit
00075c  00100000  exit
000760  00100000  exit
000764  00100000  exit
000768  00100000  exit
