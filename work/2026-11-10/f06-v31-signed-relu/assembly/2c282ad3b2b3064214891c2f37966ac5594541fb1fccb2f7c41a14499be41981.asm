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
0000bc  00350002  core_id r10
0000c0  1f8f4e00  addli r30, sp, 32
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100500  beq r10, zero, 36
0000cc  2bf1ffff  lui r2, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b10f1ff  ori r1, r2, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db180000  j 196
0000ec  1f210000  addli r2, zero, 2
0000f0  fdd00000  uni_sram_cfg r1, r1
0000f4  1f430000  addli r6, zero, 4
0000f8  6b520f02  load.d r[5:6], 32(r30)
0000fc  9f030020  addli r7, zero, 4096
000100  1d000100  lock zero, r2
000104  8d000020  ew_cfg r1, zero, zero, 16
000108  1d100100  unlock r2
00010c  1d000300  lock zero, r6
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15800204  dma_cfg zero, r5, zero, 2
000118  15007206  dma_cfg zero, r4, r7, 3
00011c  1f024000  addli r4, zero, 32
000120  9f020008  addli r5, zero, 1024
000124  15001008  dma_cfg zero, zero, r1, 4
000128  35000000  dma_run zero
00012c  1d100300  unlock r6
000130  7d800000  xsignal r1, 0
000134  7d900000  xwait r1, 0
000138  1d000000  lock zero, zero
00013c  01010000  ds_cfg r2, zero, 0
000140  01000002  ds_cfg zero, zero, 1
000144  01000016  ds_cfg zero, zero, 11
000148  0102001a  ds_cfg r4, zero, 13
00014c  8102001c  ds_cfg r5, zero, 14
000150  a1135008  shuffle_batch r7, zero, r5, 4
000154  1d100000  unlock zero
000158  7d800000  xsignal r1, 0
00015c  7d900000  xwait r1, 0
000160  1d000100  lock zero, r2
000164  ab100100  lui r1, 17
000168  0da00300  ewtable_cfg r7, 0
00016c  0da00002  ewtable_cfg r1, 1
000170  abf0ffff  lui r1, 1048575
000174  1d100100  unlock r2
000178  7d000000  xsignal zero, 0
00017c  7d100000  xwait zero, 0
000180  1f510000  addli r2, zero, 5
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
0001b4  80d20002  load_param_i r5, 1
0001b8  63026f00  loadli.w r4,  48(r30)
0001bc  8b101120  mul.s r1, r2, r1
0001c0  1f810200  addli r2, r5, 0
0001c4  0b914050  fmac.s r2, r1, r4
0001c8  0b924020  mul.s r4, r1, r4
0001cc  1f71f1ff  addli r2, r2, -1
0001d0  0b115130  div.s r2, r2, r5
0001d4  80520002  load_param_i r5, 0
0001d8  8b105120  mul.s r1, r2, r5
0001dc  0b115150  fmac.s r2, r2, r5
0001e0  0b114140  min.s r2, r2, r4
0001e4  cb3c1100  ble.s r2, r1, 812
0001e8  33940028  sext_int2long r[9:10], r1
0001ec  ab800d00  lui r1, 216
0001f0  33120128  sext_int2long r[5:6], r2
0001f4  1f010008  addli r2, zero, 1024
0001f8  9f510000  addli r3, zero, 5
0001fc  9f470000  addli r15, zero, 4
000200  1f280000  addli r16, zero, 2
000204  1f062000  addli r12, zero, 16
000208  1f1c0000  addli r24, zero, 1
00020c  9f0a0004  addli r21, zero, 512
000210  9b90d0b4  ori r1, r1, 2893
000214  73384ffe  store.d r[5:6], -16(r30)
000218  6b528f00  load.d r[5:6], 8(r30)
00021c  330b0128  zext_int2long r[23:24], r2
000220  e74e1ffe  storeli.w r1, -20(r30)
000224  abf07fff  lui r1, 1046527
000228  9b90f0ff  ori r1, r1, 4095
00022c  e70e1ffe  storeli.w r1, -24(r30)
000230  abf07f7f  lui r1, 522239
000234  9b90f0ff  ori r1, r1, 4095
000238  674e1ffe  storeli.w r1, -28(r30)
00023c  b3000028  zext_int2long r[2:3], zero
000240  733c1ffe  store.d r[2:3], -8(r30)
000244  db030000  j 28
000248  7d800700  xsignal r15, 0
00024c  00350002  core_id r10
000250  eb500fff  load.d r[2:3], -16(r30)
000254  27140400  addli.d r[9:10], r[9:10], 1
000258  93301404  setlt.sl r1, r[9:10], r[2:3]
00025c  b7da0000  beq r1, zero, 692
000260  e3006f00  loadli.w r1,  48(r30)
000264  63415f00  loadli.w r2,  44(r30)
000268  1f131000  addli r6, zero, 9
00026c  8b101430  div.s r1, r8, r1
000270  8b902030  div.s r1, r1, r2
000274  b3900028  sext_int2long r[2:3], r1
000278  97bc6002  sll.d r[26:27], r[2:3], r6
00027c  9f600000  addli r1, zero, 6
000280  37311500  beq r10, r1, 76
000284  9f060000  addli r13, zero, 0
000288  3b318501  bneq r10, r24, 76
00028c  1f330000  addli r6, zero, 3
000290  97b08c03  sll.d r[2:3], r[26:27], r24
000294  7d100300  xwait r6, 0
000298  6b530f00  load.d r[7:8], 0(r30)
00029c  1d800700  lock zero, r15
0002a0  15000c00  dma_cfg zero, r24, zero, 0
0002a4  8b201310  add.ul r[2:3], r[7:8], r[2:3]
0002a8  1f030008  addli r6, zero, 1024
0002ac  15000104  dma_cfg zero, r2, zero, 2
0002b0  15806006  dma_cfg zero, r1, r6, 3
0002b4  9f000010  addli r1, zero, 2048
0002b8  95008309  dma_cfg r1, r6, r24, 4
0002bc  35000000  dma_run zero
0002c0  1d900700  unlock r15
0002c4  7d000800  xsignal r16, 0
0002c8  db010000  j 12
0002cc  9f160000  addli r13, zero, 1
0002d0  7d900100  xwait r3, 0
0002d4  8f906c71  mod.sl r[2:3], r[26:27], r[23:24]
0002d8  1f231000  addli r6, zero, 10
0002dc  a7f0f00b  addli.d r[2:3], r[2:3], 1535
0002e0  97c86002  srl.d r[18:19], r[2:3], r6
0002e4  eb508fff  load.d r[2:3], -8(r30)
0002e8  93a01800  seteq.d r1, r[18:19], r[2:3]
0002ec  bbd10000  bneq r1, zero, 116
0002f0  eb5d8fff  load.d r[28:29], -8(r30)
0002f4  b3000c28  zext_int2long r[2:3], r24
0002f8  db020000  j 20
0002fc  13a51005  setlt.ul r10, r[2:3], r[18:19]
000300  8b2db311  add.ul r[28:29], r[7:8], r[28:29]
000304  b3000828  zext_int2long r[2:3], r16
000308  37610500  beq r10, zero, 88
00030c  0ba39d11  add.ul r[7:8], r[28:29], r[26:27]
000310  8f196371  mod.sl r[20:21], r[7:8], r[23:24]
000314  33830a28  zext_int2long r[7:8], r21
000318  0b33b319  sub.sl r[7:8], r[7:8], r[28:29]
00031c  0b353b19  sub.sl r[11:12], r[23:24], r[20:21]
000320  0b23a340  min.ul r[7:8], r[7:8], r[11:12]
000324  37ef06fe  beq r13, zero, -40
000328  97b98903  sll.d r[20:21], r[20:21], r24
00032c  1bb52d00  slli r10, r27, 2
000330  1d800700  lock zero, r15
000334  9b351300  slli r11, r6, 1
000338  1b372300  slli r14, r6, 2
00033c  15000c00  dma_cfg zero, r24, zero, 0
000340  8b293211  add.ul r[20:21], r[5:6], r[20:21]
000344  1f050510  addli r10, r10, 2048
000348  15000a04  dma_cfg zero, r20, zero, 2
00034c  1585b906  dma_cfg r10, r19, r11, 3
000350  15878509  dma_cfg r14, r11, r24, 4
000354  35000000  dma_run zero
000358  1d900700  unlock r15
00035c  5bf4ffff  j -96
000360  bbab06fe  bneq r13, zero, -280
000364  9f500000  addli r1, zero, 5
000368  00350002  core_id r10
00036c  3b251500  bneq r10, r1, 328
000370  7d100800  xwait r16, 0
000374  7d900700  xwait r15, 0
000378  1d000800  lock zero, r16
00037c  2b01803f  lui r2, 260096
000380  1f733000  addli r6, zero, 31
000384  9f010010  addli r3, zero, 2048
000388  ab83ff40  lui r7, 266232
00038c  ab0500c1  lui r11, 790528
000390  9f76f003  addli r13, zero, 511
000394  0d000002  ew_cfg zero, zero, zero, 1
000398  0d110100  ewcoeff_cfg r2, r2, zero, 0
00039c  0d000304  ew_cfg zero, r6, zero, 2
0003a0  0d060006  ew_cfg r12, zero, zero, 3
0003a4  0d06c626  ew_cfg r12, r12, r12, 19
0003a8  2d003000  dsmadd zero, zero, r3, 0
0003ac  9f510000  addli r3, zero, 5
0003b0  0d000026  ew_cfg zero, zero, zero, 19
0003b4  1d100800  unlock r16
0003b8  7d800000  xsignal r1, 0
0003bc  9f700000  addli r1, zero, 7
0003c0  7d900000  xwait r1, 0
0003c4  1d000800  lock zero, r16
0003c8  9f501000  addli r1, zero, 13
0003cc  0d000002  ew_cfg zero, zero, zero, 1
0003d0  0d000304  ew_cfg zero, r6, zero, 2
0003d4  0d060006  ew_cfg r12, zero, zero, 3
0003d8  0d060626  ew_cfg r12, r12, zero, 19
0003dc  8d000014  ew_cfg r1, zero, zero, 10
0003e0  e340dfff  loadli.w r1,  -20(r30)
0003e4  0d081c16  ew_cfg r16, r24, r1, 11
0003e8  9f300000  addli r1, zero, 3
0003ec  0d00101a  ew_cfg zero, zero, r1, 13
0003f0  8d85771c  ew_cfg r11, r15, r7, 14
0003f4  9f030020  addli r7, zero, 4096
0003f8  9f051000  addli r11, zero, 8
0003fc  0d00011e  ew_cfg zero, r2, zero, 15
000400  cd230000  sslut r7, zero, 0
000404  0d000014  ew_cfg zero, zero, zero, 10
000408  0d000026  ew_cfg zero, zero, zero, 19
00040c  1d100800  unlock r16
000410  7d900500  xwait r11, 0
000414  1d000800  lock zero, r16
000418  0d000002  ew_cfg zero, zero, zero, 1
00041c  0d800604  ew_cfg zero, r13, zero, 2
000420  0d0c0006  ew_cfg r24, zero, zero, 3
000424  6307dfff  loadli.w r14,  -24(r30)
000428  0d170000  ewcoeff_cfg r14, zero, zero, 0
00042c  1f070030  addli r14, zero, 6144
000430  2d270000  dscmpnsel r14, zero, zero, 0
000434  1d100800  unlock r16
000438  1d000800  lock zero, r16
00043c  0d000002  ew_cfg zero, zero, zero, 1
000440  0d800604  ew_cfg zero, r13, zero, 2
000444  0d0c0006  ew_cfg r24, zero, zero, 3
000448  e346cfff  loadli.w r13,  -28(r30)
00044c  8d160000  ewcoeff_cfg r13, zero, zero, 0
000450  ab0680bf  lui r13, 784384
000454  2d27e708  dscmpnsel r14, r14, r14, 4
000458  1d100800  unlock r16
00045c  1d000800  lock zero, r16
000460  0d000002  ew_cfg zero, zero, zero, 1
000464  0d910600  ewcoeff_cfg r2, r13, zero, 0
000468  0d000304  ew_cfg zero, r6, zero, 2
00046c  0d060006  ew_cfg r12, zero, zero, 3
000470  0d06c626  ew_cfg r12, r12, r12, 19
000474  2d00e000  dsmadd zero, zero, r14, 0
000478  0d000026  ew_cfg zero, zero, zero, 19
00047c  1d100800  unlock r16
000480  7d800500  xsignal r11, 0
000484  1d000800  lock zero, r16
000488  0d000002  ew_cfg zero, zero, zero, 1
00048c  0d110100  ewcoeff_cfg r2, r2, zero, 0
000490  0d000304  ew_cfg zero, r6, zero, 2
000494  0d060006  ew_cfg r12, zero, zero, 3
000498  0d06c626  ew_cfg r12, r12, r12, 19
00049c  ad830300  dsmadd r7, r7, zero, 0
0004a0  0d000026  ew_cfg zero, zero, zero, 19
0004a4  1d100800  unlock r16
0004a8  7d800000  xsignal r1, 0
0004ac  9f600000  addli r1, zero, 6
0004b0  5b0b0000  j 88
0004b4  9f510000  addli r3, zero, 5
0004b8  3b6605fe  bneq r10, zero, -616
0004bc  1f630000  addli r6, zero, 6
0004c0  97b08c03  sll.d r[2:3], r[26:27], r24
0004c4  9f010010  addli r3, zero, 2048
0004c8  7d100300  xwait r6, 0
0004cc  6b530f01  load.d r[7:8], 16(r30)
0004d0  8b201310  add.ul r[2:3], r[7:8], r[2:3]
0004d4  1f530000  addli r6, zero, 5
0004d8  9f030020  addli r7, zero, 4096
0004dc  1d000300  lock zero, r6
0004e0  150c0000  dma_cfg r24, zero, zero, 0
0004e4  15000c02  dma_cfg zero, r24, zero, 1
0004e8  15010004  dma_cfg r2, zero, zero, 2
0004ec  95803306  dma_cfg r1, r7, r3, 3
0004f0  9f000008  addli r1, zero, 1024
0004f4  95808109  dma_cfg r1, r3, r24, 4
0004f8  9f510000  addli r3, zero, 5
0004fc  9f700000  addli r1, zero, 7
000500  35000000  dma_run zero
000504  1d100300  unlock r6
000508  7d800000  xsignal r1, 0
00050c  dba8ffff  j -700
000510  7d000000  xsignal zero, 0
000514  bb600500  bneq r10, zero, 56
000518  9f200000  addli r1, zero, 2
00051c  7d100000  xwait zero, 0
000520  7d100000  xwait zero, 0
000524  7d100000  xwait zero, 0
000528  7d100000  xwait zero, 0
00052c  7d100000  xwait zero, 0
000530  7d100000  xwait zero, 0
000534  7d100000  xwait zero, 0
000538  7d100000  xwait zero, 0
00053c  1d800000  lock zero, r1
000540  0d000020  ew_cfg zero, zero, zero, 16
000544  1d900000  unlock r1
000548  7d400000  xsignal_mode_cfg zero
00054c  9f8e4e00  addli sp, sp, 32
000550  00a00300  mfence { lm, sm, gm }
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
00076c  00100000  exit
000770  00100000  exit
000774  00100000  exit
000778  00100000  exit
00077c  00100000  exit
000780  00100000  exit
000784  00100000  exit
000788  00100000  exit
00078c  00100000  exit
000790  00100000  exit
000794  00100000  exit
