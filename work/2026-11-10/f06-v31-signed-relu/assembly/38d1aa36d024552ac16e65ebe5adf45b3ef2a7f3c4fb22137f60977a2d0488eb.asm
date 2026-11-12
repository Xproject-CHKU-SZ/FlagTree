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
0000b4  9f8e3eff  addli sp, sp, -104
0000b8  9f100000  addli r1, zero, 1
0000bc  00340002  core_id r8
0000c0  1f8f5e00  addli r30, sp, 40
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
0000f8  6b518f01  load.d r[3:4], 24(r30)
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
0001ac  e3004f00  loadli.w r1,  32(r30)
0001b0  63414f00  loadli.w r2,  36(r30)
0001b4  00d20002  load_param_i r4, 1
0001b8  e3015f00  loadli.w r3,  40(r30)
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
0001ec  9f000010  addli r1, zero, 2048
0001f0  33110128  sext_int2long r[3:4], r2
0001f4  6b5c8f00  load.d r[25:26], 8(r30)
0001f8  1f150000  addli r10, zero, 1
0001fc  2b080100  lui r16, 16
000200  9f480000  addli r17, zero, 4
000204  1f690000  addli r18, zero, 6
000208  9f790000  addli r19, zero, 7
00020c  33860028  zext_int2long r[13:14], r1
000210  ab800d00  lui r1, 216
000214  73382ffe  store.d r[3:4], -16(r30)
000218  2b410000  lui r2, 4
00021c  9b90d0b4  ori r1, r1, 2893
000220  33070128  zext_int2long r[15:16], r2
000224  674e1ffe  storeli.w r1, -28(r30)
000228  abf07fff  lui r1, 1046527
00022c  9b90f0ff  ori r1, r1, 4095
000230  670e1ffe  storeli.w r1, -32(r30)
000234  abf07f7f  lui r1, 522239
000238  9b90f0ff  ori r1, r1, 4095
00023c  e74d1ffe  storeli.w r1, -36(r30)
000240  b3000028  zext_int2long r[2:3], zero
000244  73341ffe  store.d r[2:3], -24(r30)
000248  db030000  j 28
00024c  7d800800  xsignal r17, 0
000250  00340002  core_id r8
000254  eb500fff  load.d r[2:3], -16(r30)
000258  27130300  addli.d r[7:8], r[7:8], 1
00025c  93301304  setlt.sl r1, r[7:8], r[2:3]
000260  379a0000  beq r1, zero, 644
000264  e3005f00  loadli.w r1,  40(r30)
000268  63414f00  loadli.w r2,  36(r30)
00026c  9f711000  addli r3, zero, 15
000270  6b5a0f00  load.d r[21:22], 0(r30)
000274  8b101330  div.s r1, r6, r1
000278  8b902030  div.s r1, r1, r2
00027c  b3900028  sext_int2long r[2:3], r1
000280  97b13002  sll.d r[4:5], r[2:3], r3
000284  0b2a3a10  add.ul r[21:22], r[21:22], r[4:5]
000288  733c4fff  store.d r[21:22], -8(r30)
00028c  3701a400  beq r8, r10, 64
000290  9f010000  addli r3, zero, 0
000294  3b112401  bneq r8, r18, 68
000298  1f320000  addli r4, zero, 3
00029c  7d100200  xwait r4, 0
0002a0  1d800800  lock zero, r17
0002a4  2b820000  lui r4, 8
0002a8  15000500  dma_cfg zero, r10, zero, 0
0002ac  15800a04  dma_cfg zero, r21, zero, 2
0002b0  15004a06  dma_cfg zero, r20, r4, 3
0002b4  1508a208  dma_cfg r16, r4, r10, 4
0002b8  1f220000  addli r4, zero, 2
0002bc  35000000  dma_run zero
0002c0  1d900800  unlock r17
0002c4  7d000200  xsignal r4, 0
0002c8  5b020000  j 16
0002cc  9f110000  addli r3, zero, 1
0002d0  1f520000  addli r4, zero, 5
0002d4  7d100200  xwait r4, 0
0002d8  1f621000  addli r4, zero, 14
0002dc  17bd4002  sll.d r[27:28], r[2:3], r4
0002e0  eb508ffe  load.d r[2:3], -24(r30)
0002e4  27840000  addli.d r[9:10], r[2:3], 0
0002e8  db090000  j 76
0002ec  330b0928  zext_int2long r[23:24], r18
0002f0  173aaa02  sll.d r[21:22], r[21:22], r10
0002f4  1d800800  lock zero, r17
0002f8  1b3e1200  slli r28, r4, 1
0002fc  9b352200  slli r11, r4, 2
000300  15000500  dma_cfg zero, r10, zero, 0
000304  132b1b04  setlt.ul r22, r[23:24], r[2:3]
000308  9b3b2400  slli r23, r8, 2
00030c  0b2a4c11  add.ul r[21:22], r[25:26], r[21:22]
000310  8b9b0b11  add.s r23, r23, r16
000314  15800a04  dma_cfg zero, r21, zero, 2
000318  950bca07  dma_cfg r23, r20, r28, 3
00031c  9505ae08  dma_cfg r11, r28, r10, 4
000320  35000000  dma_run zero
000324  1d900800  unlock r17
000328  bb1c0bfe  bneq r22, zero, -220
00032c  a7900000  addli.d r[2:3], r[2:3], 1
000330  0b248210  add.ul r[9:10], r[5:6], r[9:10]
000334  0b22a411  add.ul r[5:6], r[9:10], r[27:28]
000338  0b3b8718  sub.sl r[23:24], r[15:16], r[9:10]
00033c  0f1ac270  mod.sl r[21:22], r[5:6], r[13:14]
000340  0b324619  sub.sl r[5:6], r[13:14], r[21:22]
000344  0b224b40  min.ul r[5:6], r[23:24], r[5:6]
000348  bb9e01fe  bneq r3, zero, -92
00034c  338a0928  zext_int2long r[21:22], r19
000350  93a54005  setlt.ul r11, r[2:3], r[21:22]
000354  3bef05fe  bneq r11, zero, -40
000358  00340002  core_id r8
00035c  9f500000  addli r1, zero, 5
000360  3b151400  bneq r8, r1, 324
000364  1f210000  addli r2, zero, 2
000368  ab01803f  lui r3, 260096
00036c  1f723000  addli r4, zero, 31
000370  9f020004  addli r5, zero, 512
000374  ab84ff40  lui r9, 266232
000378  ab0500c1  lui r11, 790528
00037c  1f7af07f  addli r20, zero, 16383
000380  7d100100  xwait r2, 0
000384  7d900800  xwait r17, 0
000388  1d000100  lock zero, r2
00038c  0d000002  ew_cfg zero, zero, zero, 1
000390  8d910100  ewcoeff_cfg r3, r3, zero, 0
000394  0d000204  ew_cfg zero, r4, zero, 2
000398  8d020006  ew_cfg r5, zero, zero, 3
00039c  8d825226  ew_cfg r5, r5, r5, 19
0003a0  2d000001  dsmadd zero, zero, r16, 0
0003a4  0d000026  ew_cfg zero, zero, zero, 19
0003a8  1d100100  unlock r2
0003ac  7d800000  xsignal r1, 0
0003b0  7d900900  xwait r19, 0
0003b4  1d000100  lock zero, r2
0003b8  9f501000  addli r1, zero, 13
0003bc  0d000002  ew_cfg zero, zero, zero, 1
0003c0  0d000204  ew_cfg zero, r4, zero, 2
0003c4  8d020006  ew_cfg r5, zero, zero, 3
0003c8  8d820226  ew_cfg r5, r5, zero, 19
0003cc  8d000014  ew_cfg r1, zero, zero, 10
0003d0  e340cfff  loadli.w r1,  -28(r30)
0003d4  0d011516  ew_cfg r2, r10, r1, 11
0003d8  9f300000  addli r1, zero, 3
0003dc  0d00101a  ew_cfg zero, zero, r1, 13
0003e0  8d85981c  ew_cfg r11, r17, r9, 14
0003e4  ab040200  lui r9, 32
0003e8  9f051000  addli r11, zero, 8
0003ec  0d80011e  ew_cfg zero, r3, zero, 15
0003f0  cd240000  sslut r9, zero, 0
0003f4  0d000014  ew_cfg zero, zero, zero, 10
0003f8  0d000026  ew_cfg zero, zero, zero, 19
0003fc  1d100100  unlock r2
000400  7d900500  xwait r11, 0
000404  1d000100  lock zero, r2
000408  0d000002  ew_cfg zero, zero, zero, 1
00040c  0d000a04  ew_cfg zero, r20, zero, 2
000410  0d050006  ew_cfg r10, zero, zero, 3
000414  e30acfff  loadli.w r21,  -32(r30)
000418  8d1a0000  ewcoeff_cfg r21, zero, zero, 0
00041c  ab0a0300  lui r21, 48
000420  ad2a0000  dscmpnsel r21, zero, zero, 0
000424  1d100100  unlock r2
000428  1d000100  lock zero, r2
00042c  0d000002  ew_cfg zero, zero, zero, 1
000430  0d000a04  ew_cfg zero, r20, zero, 2
000434  0d050006  ew_cfg r10, zero, zero, 3
000438  634abfff  loadli.w r20,  -36(r30)
00043c  0d1a0000  ewcoeff_cfg r20, zero, zero, 0
000440  2b0a80bf  lui r20, 784384
000444  adaa5a09  dscmpnsel r21, r21, r21, 4
000448  1d100100  unlock r2
00044c  1d000100  lock zero, r2
000450  0d000002  ew_cfg zero, zero, zero, 1
000454  8d110a00  ewcoeff_cfg r3, r20, zero, 0
000458  0d000204  ew_cfg zero, r4, zero, 2
00045c  8d020006  ew_cfg r5, zero, zero, 3
000460  8d825226  ew_cfg r5, r5, r5, 19
000464  2d005001  dsmadd zero, zero, r21, 0
000468  0d000026  ew_cfg zero, zero, zero, 19
00046c  1d100100  unlock r2
000470  7d800500  xsignal r11, 0
000474  1d000100  lock zero, r2
000478  0d000002  ew_cfg zero, zero, zero, 1
00047c  8d910100  ewcoeff_cfg r3, r3, zero, 0
000480  0d000204  ew_cfg zero, r4, zero, 2
000484  8d020006  ew_cfg r5, zero, zero, 3
000488  8d825226  ew_cfg r5, r5, r5, 19
00048c  ad840400  dsmadd r9, r9, zero, 0
000490  0d000026  ew_cfg zero, zero, zero, 19
000494  1d100100  unlock r2
000498  7d800000  xsignal r1, 0
00049c  7d000900  xsignal r18, 0
0004a0  dbb6ffff  j -588
0004a4  bb4604fe  bneq r8, zero, -592
0004a8  9f500000  addli r1, zero, 5
0004ac  7d100900  xwait r18, 0
0004b0  2b010200  lui r2, 32
0004b4  1d800000  lock zero, r1
0004b8  15050000  dma_cfg r10, zero, zero, 0
0004bc  15000502  dma_cfg zero, r10, zero, 1
0004c0  eb518fff  load.d r[4:5], -8(r30)
0004c4  15020004  dma_cfg r4, zero, zero, 2
0004c8  95010107  dma_cfg r3, r2, r16, 3
0004cc  2b810000  lui r2, 8
0004d0  1501a808  dma_cfg r2, r16, r10, 4
0004d4  35000000  dma_run zero
0004d8  1d900000  unlock r1
0004dc  7d800900  xsignal r19, 0
0004e0  dbaeffff  j -652
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
000520  9f8e5e00  addli sp, sp, 40
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
