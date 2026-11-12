; SHA-256 acc676185de1d18970cb69d54dadac58484bddc2f809f61372125cde9a6539c9
; P800 SDNN · XTDK LLVM 19 · 481 / 481 words decoded
; bound names: triton_unk_fused_0
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
0000bc  80330002  core_id r7
0000c0  1f8f5e00  addli r30, sp, 40
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7900300  beq r7, zero, 36
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
0001e4  4b6c1100  ble.s r2, r1, 792
0001e8  33110128  sext_int2long r[3:4], r2
0001ec  6b5d8f00  load.d r[27:28], 8(r30)
0001f0  9f640000  addli r9, zero, 6
0001f4  1f5b0000  addli r22, zero, 5
0001f8  ab070100  lui r15, 16
0001fc  1f180000  addli r16, zero, 1
000200  9f480000  addli r17, zero, 4
000204  1f740000  addli r8, zero, 7
000208  1f2e0000  addli r28, zero, 2
00020c  73382ffe  store.d r[3:4], -16(r30)
000210  b3910028  sext_int2long r[4:5], r1
000214  9f000010  addli r1, zero, 2048
000218  2b410000  lui r2, 4
00021c  b3850028  zext_int2long r[12:13], r1
000220  ab800d00  lui r1, 216
000224  b3060128  zext_int2long r[14:15], r2
000228  9b90d0b4  ori r1, r1, 2893
00022c  674e1ffe  storeli.w r1, -28(r30)
000230  abf07fff  lui r1, 1046527
000234  9b90f0ff  ori r1, r1, 4095
000238  670e1ffe  storeli.w r1, -32(r30)
00023c  abf07f7f  lui r1, 522239
000240  9b90f0ff  ori r1, r1, 4095
000244  e74d1ffe  storeli.w r1, -36(r30)
000248  b3000028  zext_int2long r[2:3], zero
00024c  73341ffe  store.d r[2:3], -24(r30)
000250  5b040000  j 32
000254  7d800800  xsignal r17, 0
000258  eb518fff  load.d r[4:5], -8(r30)
00025c  80330002  core_id r7
000260  eb500fff  load.d r[2:3], -16(r30)
000264  a7910100  addli.d r[4:5], r[4:5], 1
000268  93b01104  setlt.sl r1, r[4:5], r[2:3]
00026c  37ca0000  beq r1, zero, 656
000270  e3006f00  loadli.w r1,  48(r30)
000274  63415f00  loadli.w r2,  44(r30)
000278  9f621000  addli r5, zero, 14
00027c  733c3ffe  store.d r[4:5], -8(r30)
000280  8b901130  div.s r1, r3, r1
000284  8b902030  div.s r1, r1, r2
000288  b3900028  sext_int2long r[2:3], r1
00028c  17ba5002  sll.d r[21:22], r[2:3], r5
000290  37a19300  beq r7, r9, 72
000294  9f000000  addli r1, zero, 0
000298  3ba10301  bneq r7, r16, 72
00029c  1f320000  addli r4, zero, 3
0002a0  17310a03  sll.d r[3:4], r[21:22], r16
0002a4  7d100200  xwait r4, 0
0002a8  6b520f00  load.d r[5:6], 0(r30)
0002ac  1d800800  lock zero, r17
0002b0  15000800  dma_cfg zero, r16, zero, 0
0002b4  0b212210  add.ul r[3:4], r[5:6], r[3:4]
0002b8  2b820000  lui r4, 8
0002bc  15800104  dma_cfg zero, r3, zero, 2
0002c0  15004106  dma_cfg zero, r2, r4, 3
0002c4  95070209  dma_cfg r15, r4, r16, 4
0002c8  35000000  dma_run zero
0002cc  1d900800  unlock r17
0002d0  7d000e00  xsignal r28, 0
0002d4  db010000  j 12
0002d8  9f100000  addli r1, zero, 1
0002dc  7d100b00  xwait r22, 0
0002e0  6b518ffe  load.d r[3:4], -24(r30)
0002e4  a70b0100  addli.d r[24:25], r[3:4], 0
0002e8  db090000  j 76
0002ec  33890428  zext_int2long r[19:20], r9
0002f0  17330303  sll.d r[7:8], r[7:8], r16
0002f4  1d800800  lock zero, r17
0002f8  1b351200  slli r10, r4, 1
0002fc  9b3c2200  slli r25, r4, 2
000300  15000800  dma_cfg zero, r16, zero, 0
000304  13292904  setlt.ul r18, r[19:20], r[3:4]
000308  9bb92b00  slli r19, r23, 2
00030c  0b236d10  add.ul r[7:8], r[27:28], r[7:8]
000310  8b99f910  add.s r19, r19, r15
000314  15800304  dma_cfg zero, r7, zero, 2
000318  9509a306  dma_cfg r19, r6, r10, 3
00031c  950c0509  dma_cfg r25, r10, r16, 4
000320  35000000  dma_run zero
000324  1d900800  unlock r17
000328  bb3c09fe  bneq r18, zero, -212
00032c  27110100  addli.d r[3:4], r[3:4], 1
000330  8b2b7211  add.ul r[24:25], r[5:6], r[24:25]
000334  0ba24b11  add.ul r[5:6], r[24:25], r[21:22]
000338  0bb97619  sub.sl r[19:20], r[14:15], r[24:25]
00033c  0f13b270  mod.sl r[7:8], r[5:6], r[12:13]
000340  0bb26518  sub.sl r[5:6], r[12:13], r[7:8]
000344  0b224940  min.ul r[5:6], r[19:20], r[5:6]
000348  bb9e00fe  bneq r1, zero, -92
00034c  33030428  zext_int2long r[7:8], r8
000350  13236104  setlt.ul r6, r[3:4], r[7:8]
000354  3b6f03fe  bneq r6, zero, -40
000358  80330002  core_id r7
00035c  9f500000  addli r1, zero, 5
000360  3ba51300  bneq r7, r1, 328
000364  7d100e00  xwait r28, 0
000368  7d900800  xwait r17, 0
00036c  1d000e00  lock zero, r28
000370  2b01803f  lui r2, 260096
000374  9f713000  addli r3, zero, 31
000378  1f020004  addli r4, zero, 512
00037c  ab82ff40  lui r5, 266232
000380  2b0300c1  lui r6, 790528
000384  1f75f07f  addli r10, zero, 16383
000388  1f5b0000  addli r22, zero, 5
00038c  0d000002  ew_cfg zero, zero, zero, 1
000390  0d110100  ewcoeff_cfg r2, r2, zero, 0
000394  0d800104  ew_cfg zero, r3, zero, 2
000398  0d020006  ew_cfg r4, zero, zero, 3
00039c  0d024226  ew_cfg r4, r4, r4, 19
0003a0  2d00f000  dsmadd zero, zero, r15, 0
0003a4  0d000026  ew_cfg zero, zero, zero, 19
0003a8  1d100e00  unlock r28
0003ac  7d800000  xsignal r1, 0
0003b0  7d100400  xwait r8, 0
0003b4  1d000e00  lock zero, r28
0003b8  9f501000  addli r1, zero, 13
0003bc  0d000002  ew_cfg zero, zero, zero, 1
0003c0  0d800104  ew_cfg zero, r3, zero, 2
0003c4  0d020006  ew_cfg r4, zero, zero, 3
0003c8  0d020226  ew_cfg r4, r4, zero, 19
0003cc  8d000014  ew_cfg r1, zero, zero, 10
0003d0  e340cfff  loadli.w r1,  -28(r30)
0003d4  0d0e1816  ew_cfg r28, r16, r1, 11
0003d8  9f300000  addli r1, zero, 3
0003dc  0d00101a  ew_cfg zero, zero, r1, 13
0003e0  0d83581c  ew_cfg r6, r17, r5, 14
0003e4  ab020200  lui r5, 32
0003e8  1f031000  addli r6, zero, 8
0003ec  0d00011e  ew_cfg zero, r2, zero, 15
0003f0  cd220000  sslut r5, zero, 0
0003f4  0d000014  ew_cfg zero, zero, zero, 10
0003f8  0d000026  ew_cfg zero, zero, zero, 19
0003fc  1d100e00  unlock r28
000400  7d100300  xwait r6, 0
000404  1d000e00  lock zero, r28
000408  0d000002  ew_cfg zero, zero, zero, 1
00040c  0d000504  ew_cfg zero, r10, zero, 2
000410  0d080006  ew_cfg r16, zero, zero, 3
000414  6309cfff  loadli.w r18,  -32(r30)
000418  0d190000  ewcoeff_cfg r18, zero, zero, 0
00041c  2b090300  lui r18, 48
000420  2d290000  dscmpnsel r18, zero, zero, 0
000424  1d100e00  unlock r28
000428  1d000e00  lock zero, r28
00042c  0d000002  ew_cfg zero, zero, zero, 1
000430  0d000504  ew_cfg zero, r10, zero, 2
000434  0d080006  ew_cfg r16, zero, zero, 3
000438  6345bfff  loadli.w r10,  -36(r30)
00043c  0d150000  ewcoeff_cfg r10, zero, zero, 0
000440  2b0580bf  lui r10, 784384
000444  2d292909  dscmpnsel r18, r18, r18, 4
000448  1d100e00  unlock r28
00044c  1d000e00  lock zero, r28
000450  0d000002  ew_cfg zero, zero, zero, 1
000454  0d110500  ewcoeff_cfg r2, r10, zero, 0
000458  0d800104  ew_cfg zero, r3, zero, 2
00045c  0d020006  ew_cfg r4, zero, zero, 3
000460  0d024226  ew_cfg r4, r4, r4, 19
000464  2d002001  dsmadd zero, zero, r18, 0
000468  0d000026  ew_cfg zero, zero, zero, 19
00046c  1d100e00  unlock r28
000470  7d000300  xsignal r6, 0
000474  1d000e00  lock zero, r28
000478  0d000002  ew_cfg zero, zero, zero, 1
00047c  0d110100  ewcoeff_cfg r2, r2, zero, 0
000480  0d800104  ew_cfg zero, r3, zero, 2
000484  0d020006  ew_cfg r4, zero, zero, 3
000488  0d024226  ew_cfg r4, r4, r4, 19
00048c  ad820200  dsmadd r5, r5, zero, 0
000490  0d000026  ew_cfg zero, zero, zero, 19
000494  1d100e00  unlock r28
000498  7d800000  xsignal r1, 0
00049c  7d800400  xsignal r9, 0
0004a0  eb518fff  load.d r[4:5], -8(r30)
0004a4  dbb7ffff  j -580
0004a8  eb518fff  load.d r[4:5], -8(r30)
0004ac  1f5b0000  addli r22, zero, 5
0004b0  bbc603fe  bneq r7, zero, -592
0004b4  eb520f01  load.d r[6:7], 16(r30)
0004b8  97300a03  sll.d r[2:3], r[21:22], r16
0004bc  7d900400  xwait r9, 0
0004c0  1f5b0000  addli r22, zero, 5
0004c4  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
0004c8  9f520000  addli r5, zero, 5
0004cc  2b030200  lui r6, 32
0004d0  1d800200  lock zero, r5
0004d4  15080000  dma_cfg r16, zero, zero, 0
0004d8  15000802  dma_cfg zero, r16, zero, 1
0004dc  15010004  dma_cfg r2, zero, zero, 2
0004e0  9500f306  dma_cfg r1, r6, r15, 3
0004e4  ab800000  lui r1, 8
0004e8  95800709  dma_cfg r1, r15, r16, 4
0004ec  35000000  dma_run zero
0004f0  1d900200  unlock r5
0004f4  7d000400  xsignal r8, 0
0004f8  5badffff  j -664
0004fc  7d000000  xsignal zero, 0
000500  bbe00300  bneq r7, zero, 56
000504  9f200000  addli r1, zero, 2
000508  7d100000  xwait zero, 0
00050c  7d100000  xwait zero, 0
000510  7d100000  xwait zero, 0
000514  7d100000  xwait zero, 0
000518  7d100000  xwait zero, 0
00051c  7d100000  xwait zero, 0
000520  7d100000  xwait zero, 0
000524  7d100000  xwait zero, 0
000528  1d800000  lock zero, r1
00052c  0d000020  ew_cfg zero, zero, zero, 16
000530  1d900000  unlock r1
000534  7d400000  xsignal_mode_cfg zero
000538  9f8e5e00  addli sp, sp, 40
00053c  00a00300  mfence { lm, sm, gm }
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
00076c  00100000  exit
000770  00100000  exit
000774  00100000  exit
000778  00100000  exit
00077c  00100000  exit
000780  00100000  exit
