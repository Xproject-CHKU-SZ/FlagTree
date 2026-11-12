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
0000b4  9f8eeefd  addli sp, sp, -272
0000b8  9f100000  addli r1, zero, 1
0000bc  00340002  core_id r8
0000c0  1f8fae01  addli r30, sp, 208
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100400  beq r8, zero, 36
0000cc  2bf1ffff  lui r2, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b10f1ff  ori r1, r2, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db250000  j 300
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
000198  9f700000  addli r1, zero, 7
00019c  7d800000  xsignal r1, 0
0001a0  7d000100  xsignal r2, 0
0001a4  9f206000  addli r1, zero, 50
0001a8  1f311000  addli r2, zero, 11
0001ac  7d800000  xsignal r1, 0
0001b0  7d000100  xsignal r2, 0
0001b4  9f101000  addli r1, zero, 9
0001b8  1f511000  addli r2, zero, 13
0001bc  7d800000  xsignal r1, 0
0001c0  7d000100  xsignal r2, 0
0001c4  9f402000  addli r1, zero, 20
0001c8  1f612000  addli r2, zero, 22
0001cc  7d800000  xsignal r1, 0
0001d0  7d000100  xsignal r2, 0
0001d4  9f003000  addli r1, zero, 24
0001d8  1f713000  addli r2, zero, 31
0001dc  7d800000  xsignal r1, 0
0001e0  7d000100  xsignal r2, 0
0001e4  9f305000  addli r1, zero, 43
0001e8  1f314000  addli r2, zero, 35
0001ec  7d800000  xsignal r1, 0
0001f0  7d000100  xsignal r2, 0
0001f4  9f704000  addli r1, zero, 39
0001f8  1f615000  addli r2, zero, 46
0001fc  7d800000  xsignal r1, 0
000200  7d000100  xsignal r2, 0
000204  9f306000  addli r1, zero, 51
000208  1f416000  addli r2, zero, 52
00020c  7d800000  xsignal r1, 0
000210  7d000100  xsignal r2, 0
000214  e3005f00  loadli.w r1,  40(r30)
000218  63415f00  loadli.w r2,  44(r30)
00021c  00d20002  load_param_i r4, 1
000220  e3016f00  loadli.w r3,  48(r30)
000224  8b101120  mul.s r1, r2, r1
000228  1f010200  addli r2, r4, 0
00022c  0b913050  fmac.s r2, r1, r3
000230  8b913020  mul.s r3, r1, r3
000234  1f71f1ff  addli r2, r2, -1
000238  0b114130  div.s r2, r2, r4
00023c  00520002  load_param_i r4, 0
000240  8b104120  mul.s r1, r2, r4
000244  0b114150  fmac.s r2, r2, r4
000248  0b113140  min.s r2, r2, r3
00024c  4b7e110e  ble.s r2, r1, 8092
000250  33110128  sext_int2long r[3:4], r2
000254  b39a0028  sext_int2long r[22:23], r1
000258  ab20373d  lui r1, 250738
00025c  ab020100  lui r5, 16
000260  9f2b0000  addli r23, zero, 2
000264  1f737000  addli r6, zero, 63
000268  9f048000  addli r9, zero, 64
00026c  73342ff4  store.d r[3:4], -184(r30)
000270  9b903071  ori r1, r1, 1811
000274  2b410100  lui r2, 20
000278  1b9d0210  ori r26, r5, 256
00027c  67041ffe  storeli.w r1, -192(r30)
000280  9b100110  ori r1, r2, 256
000284  2bc10100  lui r2, 28
000288  6749afff  storeli.w r26, -108(r30)
00028c  e7481ffe  storeli.w r1, -116(r30)
000290  ab800100  lui r1, 24
000294  9b1d0110  ori r27, r2, 256
000298  2bf1ff7f  lui r2, 524287
00029c  9b900010  ori r1, r1, 256
0002a0  1b1ef1ff  ori r28, r2, 4095
0002a4  2b414c3f  lui r2, 259268
0002a8  e74cbfff  storeli.w r27, -52(r30)
0002ac  e7081ffe  storeli.w r1, -120(r30)
0002b0  ab600200  lui r1, 38
0002b4  e74acfff  storeli.w r28, -84(r30)
0002b8  1b9a0010  ori r20, r1, 256
0002bc  aba00200  lui r1, 42
0002c0  9b900010  ori r1, r1, 256
0002c4  674f4fff  storeli.w r20, -12(r30)
0002c8  67441ffe  storeli.w r1, -188(r30)
0002cc  9b10a122  ori r1, r2, 554
0002d0  2b810200  lui r2, 40
0002d4  e7431ffe  storeli.w r1, -196(r30)
0002d8  abe00200  lui r1, 46
0002dc  9b900010  ori r1, r1, 256
0002e0  e7031ffe  storeli.w r1, -200(r30)
0002e4  9b102184  ori r1, r2, 2114
0002e8  2bf17f7f  lui r2, 522239
0002ec  67431ffe  storeli.w r1, -204(r30)
0002f0  ab700000  lui r1, 7
0002f4  9b90f0ff  ori r1, r1, 4095
0002f8  e70a1ffe  storeli.w r1, -88(r30)
0002fc  9b10f1ff  ori r1, r2, 4095
000300  67091ffe  storeli.w r1, -112(r30)
000304  5b0d0000  j 104
000308  9f300000  addli r1, zero, 3
00030c  00200100  mfence { sm }
000310  00340002  core_id r8
000314  9f2b0000  addli r23, zero, 2
000318  7d800000  xsignal r1, 0
00031c  9f402000  addli r1, zero, 20
000320  7d800000  xsignal r1, 0
000324  9f304000  addli r1, zero, 35
000328  7d800000  xsignal r1, 0
00032c  9f704000  addli r1, zero, 39
000330  7d800000  xsignal r1, 0
000334  9f305000  addli r1, zero, 43
000338  7d800000  xsignal r1, 0
00033c  9f106000  addli r1, zero, 49
000340  7d800000  xsignal r1, 0
000344  eb5a0ff6  load.d r[22:23], -160(r30)
000348  634d2fff  loadli.w r26,  -108(r30)
00034c  9f048000  addli r9, zero, 64
000350  377f0402  beq r8, zero, 2012
000354  eb508ff4  load.d r[2:3], -184(r30)
000358  a79a0a00  addli.d r[22:23], r[22:23], 1
00035c  ab020100  lui r5, 16
000360  1f737000  addli r6, zero, 63
000364  93b01a04  setlt.sl r1, r[22:23], r[2:3]
000368  378a000e  beq r1, zero, 7808
00036c  2b410200  lui r2, 36
000370  e3006f00  loadli.w r1,  48(r30)
000374  73305ff7  store.d r[22:23], -160(r30)
000378  9b110110  ori r3, r2, 256
00037c  8b901a30  div.s r1, r21, r1
000380  670e3ffe  storeli.w r3, -32(r30)
000384  9b111110  ori r3, r2, 257
000388  e74d3ffe  storeli.w r3, -36(r30)
00038c  9b112110  ori r3, r2, 258
000390  1b113110  ori r2, r2, 259
000394  670f2ffe  storeli.w r2, -16(r30)
000398  63415f00  loadli.w r2,  44(r30)
00039c  674e3ffe  storeli.w r3, -28(r30)
0003a0  9f010100  addli r3, r2, 0
0003a4  0b913038  mod.s r2, r1, r3
0003a8  8b903030  div.s r1, r1, r3
0003ac  ab010200  lui r3, 32
0003b0  1b961110  ori r12, r3, 257
0003b4  1b9c2110  ori r24, r3, 258
0003b8  9b9c0110  ori r25, r3, 256
0003bc  9b913110  ori r3, r3, 259
0003c0  e70d3ffe  storeli.w r3, -40(r30)
0003c4  ab210200  lui r3, 34
0003c8  670acffe  storeli.w r12, -96(r30)
0003cc  e70c8fff  storeli.w r24, -56(r30)
0003d0  1b920110  ori r4, r3, 256
0003d4  674d4ffe  storeli.w r4, -44(r30)
0003d8  1b921110  ori r4, r3, 257
0003dc  e74e4ffe  storeli.w r4, -20(r30)
0003e0  1b922110  ori r4, r3, 258
0003e4  9b913110  ori r3, r3, 259
0003e8  e70e4ffe  storeli.w r4, -24(r30)
0003ec  670d3ffe  storeli.w r3, -48(r30)
0003f0  b3810428  zext_int2long r[4:5], r9
0003f4  733c3ffe  store.d r[4:5], -8(r30)
0003f8  b3010328  zext_int2long r[4:5], r6
0003fc  73303ff8  store.d r[4:5], -128(r30)
000400  b3910028  sext_int2long r[4:5], r1
000404  9f500000  addli r1, zero, 5
000408  733c3ff4  store.d r[4:5], -168(r30)
00040c  33110128  sext_int2long r[3:4], r2
000410  bb751400  bneq r8, r1, 380
000414  1f320000  addli r4, zero, 3
000418  9f000000  addli r1, zero, 0
00041c  7d100200  xwait r4, 0
000420  1d800b00  lock zero, r23
000424  1f620000  addli r4, zero, 6
000428  0d000002  ew_cfg zero, zero, zero, 1
00042c  0d100000  ewcoeff_cfg zero, zero, zero, 0
000430  17314102  sll.d r[3:4], r[3:4], r4
000434  0d000304  ew_cfg zero, r6, zero, 2
000438  8d040006  ew_cfg r9, zero, zero, 3
00043c  4d300000  ssaux zero, 0
000440  1d900b00  unlock r23
000444  73382ff4  store.d r[3:4], -176(r30)
000448  1f411000  addli r2, zero, 12
00044c  ab410000  lui r3, 4
000450  7d100100  xwait r2, 0
000454  1f611000  addli r2, zero, 14
000458  7d100100  xwait r2, 0
00045c  1d800b00  lock zero, r23
000460  2b01803f  lui r2, 260096
000464  0d000002  ew_cfg zero, zero, zero, 1
000468  0d110100  ewcoeff_cfg r2, r2, zero, 0
00046c  1f110000  addli r2, zero, 1
000470  0d000304  ew_cfg zero, r6, zero, 2
000474  0d010006  ew_cfg r2, zero, zero, 3
000478  0b91a011  add.s r2, r1, r26
00047c  9f800002  addli r1, r1, 256
000480  2d015100  dsmadd r2, r2, r5, 0
000484  bbdf30fe  bneq r1, r3, -12
000488  9f501000  addli r1, zero, 13
00048c  e7460ffe  storeli.w zero, -148(r30)
000490  670b0ffe  storeli.w zero, -80(r30)
000494  670c0ffe  storeli.w zero, -64(r30)
000498  e7090ffe  storeli.w zero, -104(r30)
00049c  e70b0ffe  storeli.w zero, -72(r30)
0004a0  9f71f00f  addli r3, zero, 2047
0004a4  1f020000  addli r4, zero, 0
0004a8  1d900b00  unlock r23
0004ac  7d800000  xsignal r1, 0
0004b0  9f202000  addli r1, zero, 18
0004b4  7d800000  xsignal r1, 0
0004b8  9f302000  addli r1, zero, 19
0004bc  7d800000  xsignal r1, 0
0004c0  9f602000  addli r1, zero, 22
0004c4  7d900000  xwait r1, 0
0004c8  1d800b00  lock zero, r23
0004cc  0d000002  ew_cfg zero, zero, zero, 1
0004d0  e3008ffe  loadli.w r1,  -192(r30)
0004d4  8d100000  ewcoeff_cfg r1, zero, zero, 0
0004d8  0d800104  ew_cfg zero, r3, zero, 2
0004dc  8d0b0006  ew_cfg r23, zero, zero, 3
0004e0  8d8b0b26  ew_cfg r23, r23, zero, 19
0004e4  63411fff  loadli.w r2,  -116(r30)
0004e8  4d51ad01  hp_ssmul r2, r26, r26, 0
0004ec  1f512000  addli r2, zero, 21
0004f0  0d000026  ew_cfg zero, zero, zero, 19
0004f4  1d900b00  unlock r23
0004f8  7d000100  xsignal r2, 0
0004fc  1f013000  addli r2, zero, 24
000500  7d100100  xwait r2, 0
000504  1d800b00  lock zero, r23
000508  0d000002  ew_cfg zero, zero, zero, 1
00050c  0d101000  ewcoeff_cfg zero, zero, r1, 0
000510  0d800104  ew_cfg zero, r3, zero, 2
000514  8d0b0006  ew_cfg r23, zero, zero, 3
000518  8d8b7b27  ew_cfg r23, r23, r23, 19
00051c  e3001fff  loadli.w r1,  -120(r30)
000520  ad10ad01  dsmul r1, r26, r26, 0
000524  9f701000  addli r1, zero, 15
000528  0d000026  ew_cfg zero, zero, zero, 19
00052c  1d900b00  unlock r23
000530  7d800000  xsignal r1, 0
000534  9f702000  addli r1, zero, 23
000538  7d800000  xsignal r1, 0
00053c  3d000000  xfence
000540  9f70f001  addli r1, zero, 255
000544  00a00300  mfence { lm, sm, gm }
000548  80a20004  csr_set csr5, r1
00054c  00e00200  sync_core
000550  37790402  beq r8, zero, 1628
000554  bb2b0202  bneq r4, zero, 1768
000558  e3003fff  loadli.w r1,  -104(r30)
00055c  bb9d0002  bneq r1, zero, 1892
000560  e340dffe  loadli.w r1,  -148(r30)
000564  bb8f0002  bneq r1, zero, 2016
000568  e3006fff  loadli.w r1,  -80(r30)
00056c  3bf10004  bneq r1, zero, 2140
000570  9f500000  addli r1, zero, 5
000574  37631404  beq r8, r1, 2264
000578  e3007fff  loadli.w r1,  -72(r30)
00057c  3bd50004  bneq r1, zero, 2388
000580  e3008fff  loadli.w r1,  -64(r30)
000584  3bc70004  bneq r1, zero, 2512
000588  db480100  j 2628
00058c  9f600000  addli r1, zero, 6
000590  e7460ffe  storeli.w zero, -148(r30)
000594  17391102  sll.d r[19:20], r[3:4], r1
000598  9f300000  addli r1, zero, 3
00059c  73382ff5  store.d r[19:20], -176(r30)
0005a0  3feb8008  blt.s r1, r8, 4824
0005a4  9f100000  addli r1, zero, 1
0005a8  371d1408  beq r8, r1, 4932
0005ac  373b740b  beq r8, r23, 5836
0005b0  9f300000  addli r1, zero, 3
0005b4  bb78140a  bneq r8, r1, 5692
0005b8  9f711000  addli r3, zero, 15
0005bc  b3000028  zext_int2long r[2:3], zero
0005c0  7d900100  xwait r3, 0
0005c4  9f713000  addli r3, zero, 31
0005c8  7d900100  xwait r3, 0
0005cc  3d000000  xfence
0005d0  a7810000  addli.d r[4:5], r[2:3], 0
0005d4  00a00300  mfence { lm, sm, gm }
0005d8  634cafff  loadli.w r24,  -44(r30)
0005dc  eb598fff  load.d r[20:21], -8(r30)
0005e0  9f620000  addli r5, zero, 6
0005e4  a7830000  addli.d r[8:9], r[2:3], 0
0005e8  97b25102  sll.d r[6:7], r[4:5], r5
0005ec  8ba45310  add.ul r[10:11], r[8:9], r[6:7]
0005f0  a7831300  addli.d r[8:9], r[8:9], 8
0005f4  9bb42400  slli r9, r9, 2
0005f8  13a53303  setneq.d r10, r[8:9], r[20:21]
0005fc  8b95a411  add.s r11, r9, r26
000600  8b94b411  add.s r9, r9, r27
000604  6fc6c500  loads.w r12, 12(r11)
000608  efc60500  loads.w r13, 0(r11)
00060c  6fc74500  loads.w r14, 4(r11)
000610  efc78500  loads.w r15, 8(r11)
000614  6fc80501  loads.w r16, 16(r11)
000618  efc84501  loads.w r17, 20(r11)
00061c  6fc98501  loads.w r18, 24(r11)
000620  efc5c501  loads.w r11, 28(r11)
000624  1706c601  and r12, r12, r28
000628  9785c501  and r11, r11, r28
00062c  73e6c400  stores.w r12, 12(r9)
000630  1786c601  and r12, r13, r28
000634  9706c701  and r13, r14, r28
000638  1787c701  and r14, r15, r28
00063c  9707c801  and r15, r16, r28
000640  1788c801  and r16, r17, r28
000644  9708c901  and r17, r18, r28
000648  73eeb400  stores.w r11, 28(r9)
00064c  73e4e400  stores.w r14, 8(r9)
000650  73e2d400  stores.w r13, 4(r9)
000654  73e0c400  stores.w r12, 0(r9)
000658  73ec1401  stores.w r17, 24(r9)
00065c  73ea0401  stores.w r16, 20(r9)
000660  73e8f400  stores.w r15, 16(r9)
000664  3b2e05fe  bneq r10, zero, -120
000668  eb520ff8  load.d r[6:7], -128(r30)
00066c  93a25104  setlt.ul r5, r[4:5], r[6:7]
000670  a7910100  addli.d r[4:5], r[4:5], 1
000674  bbbd02fe  bneq r5, zero, -148
000678  9f002000  addli r1, zero, 16
00067c  00200100  mfence { sm }
000680  b3010028  zext_int2long r[4:5], zero
000684  7d800000  xsignal r1, 0
000688  9f103000  addli r1, zero, 25
00068c  7d800000  xsignal r1, 0
000690  7d900000  xwait r1, 0
000694  9f304000  addli r1, zero, 35
000698  7d900000  xwait r1, 0
00069c  3d000000  xfence
0006a0  00a00300  mfence { lm, sm, gm }
0006a4  73303ffc  store.d r[4:5], -64(r30)
0006a8  634dcfff  loadli.w r26,  -28(r30)
0006ac  6301afff  loadli.w r2,  -48(r30)
0006b0  9f600000  addli r1, zero, 6
0006b4  9f730000  addli r7, zero, 7
0006b8  eb540ffc  load.d r[10:11], -64(r30)
0006bc  634adfff  loadli.w r20,  -20(r30)
0006c0  6b5b8fff  load.d r[23:24], -8(r30)
0006c4  ab0a807f  lui r21, 522240
0006c8  97b21102  sll.d r[6:7], r[4:5], r1
0006cc  e300dfff  loadli.w r1,  -24(r30)
0006d0  97b37102  sll.d r[8:9], r[4:5], r7
0006d4  8ba55410  add.ul r[12:13], r[10:11], r[6:7]
0006d8  8ba77410  add.ul r[16:17], r[10:11], r[8:9]
0006dc  a7c40400  addli.d r[10:11], r[10:11], 4
0006e0  9bb52500  slli r11, r11, 2
0006e4  13a96403  setneq.d r18, r[10:11], r[23:24]
0006e8  8b988711  add.s r17, r15, r24
0006ec  8b994711  add.s r19, r15, r20
0006f0  8b95b511  add.s r11, r11, r27
0006f4  6fc60500  loads.w r12, 0(r11)
0006f8  efc64500  loads.w r13, 4(r11)
0006fc  6fc78500  loads.w r14, 8(r11)
000700  efc5c500  loads.w r11, 12(r11)
000704  1386ca04  setlt.u r12, r21, r12
000708  9386da04  setlt.u r13, r21, r13
00070c  1387ea04  setlt.u r14, r21, r14
000710  9385ba04  setlt.u r11, r21, r11
000714  73c0c800  stores.b r12, 0(r17)
000718  0b961710  add.s r12, r15, r1
00071c  8b972710  add.s r15, r15, r2
000720  73c0d900  stores.b r13, 0(r19)
000724  7340e600  stores.b r14, 0(r12)
000728  73c0b700  stores.b r11, 0(r15)
00072c  bb2e09fe  bneq r18, zero, -88
000730  eb520ff8  load.d r[6:7], -128(r30)
000734  93a25104  setlt.ul r5, r[4:5], r[6:7]
000738  a7910100  addli.d r[4:5], r[4:5], 1
00073c  bbdd02fe  bneq r5, zero, -140
000740  1f213000  addli r2, zero, 26
000744  9f004000  addli r1, zero, 32
000748  00200100  mfence { sm }
00074c  b3010028  zext_int2long r[4:5], zero
000750  7d000100  xsignal r2, 0
000754  7d800000  xsignal r1, 0
000758  9f704000  addli r1, zero, 39
00075c  7d100100  xwait r2, 0
000760  7d900000  xwait r1, 0
000764  3d000000  xfence
000768  00a00300  mfence { lm, sm, gm }
00076c  73303ffc  store.d r[4:5], -64(r30)
000770  630acfff  loadli.w r20,  -32(r30)
000774  634bbfff  loadli.w r22,  -36(r30)
000778  9f600000  addli r1, zero, 6
00077c  9f730000  addli r7, zero, 7
000780  eb540ffc  load.d r[10:11], -64(r30)
000784  630cefff  loadli.w r24,  -16(r30)
000788  ab0a807f  lui r21, 522240
00078c  97b21102  sll.d r[6:7], r[4:5], r1
000790  eb508fff  load.d r[2:3], -8(r30)
000794  97b37102  sll.d r[8:9], r[4:5], r7
000798  8ba55410  add.ul r[12:13], r[10:11], r[6:7]
00079c  8ba77410  add.ul r[16:17], r[10:11], r[8:9]
0007a0  a7c40400  addli.d r[10:11], r[10:11], 4
0007a4  9bb52500  slli r11, r11, 2
0007a8  13a91402  setneq.d r18, r[10:11], r[2:3]
0007ac  8b984711  add.s r17, r15, r20
0007b0  8b996711  add.s r19, r15, r22
0007b4  8b95b511  add.s r11, r11, r27
0007b8  6fc60500  loads.w r12, 0(r11)
0007bc  efc64500  loads.w r13, 4(r11)
0007c0  6fc78500  loads.w r14, 8(r11)
0007c4  efc5c500  loads.w r11, 12(r11)
0007c8  13065601  seteq r12, r12, r21
0007cc  93865601  seteq r13, r13, r21
0007d0  13075701  seteq r14, r14, r21
0007d4  93855501  seteq r11, r11, r21
0007d8  73c0c800  stores.b r12, 0(r17)
0007dc  0b96a711  add.s r12, r15, r26
0007e0  8b978711  add.s r15, r15, r24
0007e4  73c0d900  stores.b r13, 0(r19)
0007e8  7340e600  stores.b r14, 0(r12)
0007ec  73c0b700  stores.b r11, 0(r15)
0007f0  bb2e09fe  bneq r18, zero, -88
0007f4  eb500ff8  load.d r[2:3], -128(r30)
0007f8  93a21104  setlt.ul r5, r[4:5], r[2:3]
0007fc  a7910100  addli.d r[4:5], r[4:5], 1
000800  bbed02fe  bneq r5, zero, -136
000804  9f303000  addli r1, zero, 27
000808  1f414000  addli r2, zero, 36
00080c  00200100  mfence { sm }
000810  b3010028  zext_int2long r[4:5], zero
000814  7d800000  xsignal r1, 0
000818  7d000100  xsignal r2, 0
00081c  7d900000  xwait r1, 0
000820  9f305000  addli r1, zero, 43
000824  7d900000  xwait r1, 0
000828  3d000000  xfence
00082c  00a00300  mfence { lm, sm, gm }
000830  73303ffc  store.d r[4:5], -64(r30)
000834  630c9fff  loadli.w r24,  -56(r30)
000838  e30bbfff  loadli.w r23,  -40(r30)
00083c  9f600000  addli r1, zero, 6
000840  9f730000  addli r7, zero, 7
000844  eb540ffc  load.d r[10:11], -64(r30)
000848  e30a4fff  loadli.w r21,  -96(r30)
00084c  97b21102  sll.d r[6:7], r[4:5], r1
000850  eb508fff  load.d r[2:3], -8(r30)
000854  97b37102  sll.d r[8:9], r[4:5], r7
000858  8ba55410  add.ul r[12:13], r[10:11], r[6:7]
00085c  8ba77410  add.ul r[16:17], r[10:11], r[8:9]
000860  a7c40400  addli.d r[10:11], r[10:11], 4
000864  9bb52500  slli r11, r11, 2
000868  13a91402  setneq.d r18, r[10:11], r[2:3]
00086c  8b989711  add.s r17, r15, r25
000870  8b995711  add.s r19, r15, r21
000874  8b95b511  add.s r11, r11, r27
000878  6fc60500  loads.w r12, 0(r11)
00087c  efc64500  loads.w r13, 4(r11)
000880  6fc78500  loads.w r14, 8(r11)
000884  efc5c500  loads.w r11, 12(r11)
000888  13060600  seteq r12, r12, zero
00088c  93860600  seteq r13, r13, zero
000890  13070700  seteq r14, r14, zero
000894  93850500  seteq r11, r11, zero
000898  73c0c800  stores.b r12, 0(r17)
00089c  0b968711  add.s r12, r15, r24
0008a0  8b977711  add.s r15, r15, r23
0008a4  73c0d900  stores.b r13, 0(r19)
0008a8  7340e600  stores.b r14, 0(r12)
0008ac  73c0b700  stores.b r11, 0(r15)
0008b0  bb2e09fe  bneq r18, zero, -88
0008b4  eb500ff8  load.d r[2:3], -128(r30)
0008b8  93a21104  setlt.ul r5, r[4:5], r[2:3]
0008bc  a7910100  addli.d r[4:5], r[4:5], 1
0008c0  bbfd02fe  bneq r5, zero, -132
0008c4  9f413000  addli r3, zero, 28
0008c8  1f015000  addli r2, zero, 40
0008cc  9f502000  addli r1, zero, 21
0008d0  00200100  mfence { sm }
0008d4  7d800100  xsignal r3, 0
0008d8  7d000100  xsignal r2, 0
0008dc  7d900000  xwait r1, 0
0008e0  9f702000  addli r1, zero, 23
0008e4  7d900000  xwait r1, 0
0008e8  9f004000  addli r1, zero, 32
0008ec  7d900100  xwait r3, 0
0008f0  7d900000  xwait r1, 0
0008f4  9f404000  addli r1, zero, 36
0008f8  7d900000  xwait r1, 0
0008fc  7d100100  xwait r2, 0
000900  3d000000  xfence
000904  b3000028  zext_int2long r[2:3], zero
000908  00a00300  mfence { lm, sm, gm }
00090c  63064fff  loadli.w r12,  -96(r30)
000910  733c1ff8  store.d r[2:3], -104(r30)
000914  27810000  addli.d r[3:4], r[2:3], 0
000918  5b030000  j 24
00091c  eb500ff8  load.d r[2:3], -128(r30)
000920  eb510ffb  load.d r[4:5], -80(r30)
000924  93a01104  setlt.ul r1, r[4:5], r[2:3]
000928  27910100  addli.d r[3:4], r[4:5], 1
00092c  37fb0008  beq r1, zero, 4828
000930  9f600000  addli r1, zero, 6
000934  73382ffa  store.d r[3:4], -80(r30)
000938  17321102  sll.d r[5:6], r[3:4], r1
00093c  9f700000  addli r1, zero, 7
000940  97301102  sll.d r[2:3], r[3:4], r1
000944  73304ffc  store.d r[5:6], -64(r30)
000948  733c1ffa  store.d r[2:3], -72(r30)
00094c  eb508ff9  load.d r[2:3], -104(r30)
000950  db050000  j 44
000954  eb538fff  load.d r[8:9], -8(r30)
000958  a7c00000  addli.d r[2:3], r[2:3], 4
00095c  63064fff  loadli.w r12,  -96(r30)
000960  0b12b211  add.s r4, r4, r27
000964  73669200  stores.w r9, 12(r4)
000968  73646200  stores.w r6, 8(r4)
00096c  73626201  stores.w r22, 4(r4)
000970  73605200  stores.w r5, 0(r4)
000974  93a17002  setneq.d r3, r[2:3], r[8:9]
000978  b79e01fe  beq r3, zero, -92
00097c  eb510ffc  load.d r[4:5], -64(r30)
000980  eb528ffb  load.d r[6:7], -72(r30)
000984  2b08807f  lui r16, 522240
000988  8ba13010  add.ul r[4:5], r[2:3], r[4:5]
00098c  8ba45010  add.ul r[10:11], r[2:3], r[6:7]
000990  1bb22100  slli r4, r3, 2
000994  e3411fff  loadli.w r3,  -116(r30)
000998  0b93c410  add.s r6, r9, r12
00099c  6306efff  loadli.w r12,  -16(r30)
0009a0  8b938411  add.s r7, r9, r24
0009a4  8b957411  add.s r11, r9, r23
0009a8  ef990300  loads.bu r19, 0(r7)
0009ac  8b93a411  add.s r7, r9, r26
0009b0  ef1b0300  loads.bu r23, 0(r6)
0009b4  6343bfff  loadli.w r6,  -36(r30)
0009b8  ef950500  loads.bu r11, 0(r11)
0009bc  8b113210  add.s r3, r4, r3
0009c0  0b96c410  add.s r12, r9, r12
0009c4  6f9a0300  loads.bu r20, 0(r7)
0009c8  e343dfff  loadli.w r7,  -20(r30)
0009cc  efc20100  loads.w r5, 0(r3)
0009d0  6fcb4100  loads.w r22, 4(r3)
0009d4  efc88100  loads.w r17, 8(r3)
0009d8  6fc4c100  loads.w r8, 12(r3)
0009dc  8b919411  add.s r3, r9, r25
0009e0  6f170600  loads.bu r14, 0(r12)
0009e4  6306dfff  loadli.w r12,  -24(r30)
0009e8  0b936410  add.s r6, r9, r6
0009ec  ef960100  loads.bu r13, 0(r3)
0009f0  e301cfff  loadli.w r3,  -32(r30)
0009f4  8b937410  add.s r7, r9, r7
0009f8  6f130300  loads.bu r6, 0(r6)
0009fc  8b9ac410  add.s r21, r9, r12
000a00  6306afff  loadli.w r12,  -48(r30)
000a04  8b913410  add.s r3, r9, r3
000a08  ef9a0a00  loads.bu r21, 0(r21)
000a0c  6f990100  loads.bu r18, 0(r3)
000a10  e341afff  loadli.w r3,  -44(r30)
000a14  8b913410  add.s r3, r9, r3
000a18  8b94c410  add.s r9, r9, r12
000a1c  6f960300  loads.bu r12, 0(r7)
000a20  9782c201  and r5, r5, r28
000a24  ef9d0100  loads.bu r27, 0(r3)
000a28  e3011fff  loadli.w r3,  -120(r30)
000a2c  6f950400  loads.bu r10, 0(r9)
000a30  93830201  seteq r7, r5, r16
000a34  93870200  seteq r15, r5, zero
000a38  93025804  setlt.u r5, r16, r5
000a3c  0b1d3210  add.s r26, r4, r3
000a40  ef41cd00  loads.w r3, 12(r26)
000a44  97847600  and r9, r13, r7
000a48  ef438d00  loads.w r7, 8(r26)
000a4c  ef464d00  loads.w r13, 4(r26)
000a50  9707f900  and r15, r18, r15
000a54  9794f400  or r9, r9, r15
000a58  9792b201  or r5, r5, r27
000a5c  97925400  or r5, r9, r5
000a60  ab04c07f  lui r9, 523264
000a64  9b871200  andi r15, r5, 1
000a68  ab02c07f  lui r5, 523264
000a6c  3ba00700  bneq r15, zero, 8
000a70  ef420d00  loads.w r5, 0(r26)
000a74  9707cb01  and r15, r22, r28
000a78  2b0b807f  lui r22, 522240
000a7c  13886701  seteq r16, r15, r22
000a80  13890700  seteq r18, r15, zero
000a84  9307fb04  setlt.u r15, r22, r15
000a88  2b0bc07f  lui r22, 523264
000a8c  17880b01  and r16, r23, r16
000a90  17032301  and r6, r6, r18
000a94  1796c700  or r12, r15, r12
000a98  17136800  or r6, r16, r6
000a9c  1713c300  or r6, r6, r12
000aa0  1b031300  andi r6, r6, 1
000aa4  3b200300  bneq r6, zero, 8
000aa8  1f8b0600  addli r22, r13, 0
000aac  1783c801  and r6, r17, r28
000ab0  ab07807f  lui r15, 522240
000ab4  e34d9fff  loadli.w r27,  -52(r30)
000ab8  634dcfff  loadli.w r26,  -28(r30)
000abc  e30bbfff  loadli.w r23,  -40(r30)
000ac0  1306f300  seteq r12, r6, r15
000ac4  93060300  seteq r13, r6, zero
000ac8  13836704  setlt.u r6, r15, r6
000acc  1786c900  and r12, r19, r12
000ad0  9706da00  and r13, r20, r13
000ad4  17135301  or r6, r6, r21
000ad8  1716d600  or r12, r12, r13
000adc  17136600  or r6, r12, r6
000ae0  1b061300  andi r12, r6, 1
000ae4  2b03c07f  lui r6, 523264
000ae8  3b200600  bneq r12, zero, 8
000aec  1f830300  addli r6, r7, 0
000af0  9703c401  and r7, r8, r28
000af4  ab06807f  lui r13, 522240
000af8  634aefff  loadli.w r20,  -12(r30)
000afc  1384d300  seteq r8, r7, r13
000b00  13860300  seteq r12, r7, zero
000b04  93837604  setlt.u r7, r13, r7
000b08  17848500  and r8, r11, r8
000b0c  9705c700  and r11, r14, r12
000b10  9793a300  or r7, r7, r10
000b14  1714b400  or r8, r8, r11
000b18  97137400  or r7, r8, r7
000b1c  9b831300  andi r7, r7, 1
000b20  bbd803fe  bneq r7, zero, -460
000b24  9f840100  addli r9, r3, 0
000b28  dbc5ffff  j -468
000b2c  6b518ff5  load.d r[3:4], -168(r30)
000b30  9f202000  addli r1, zero, 18
000b34  6b538f01  load.d r[7:8], 24(r30)
000b38  9f120000  addli r5, zero, 1
000b3c  97301102  sll.d r[2:3], r[3:4], r1
000b40  eb510ff5  load.d r[4:5], -176(r30)
000b44  8b201310  add.ul r[2:3], r[7:8], r[2:3]
000b48  1f136000  addli r6, zero, 49
000b4c  97b15102  sll.d r[4:5], r[4:5], r5
000b50  7d100300  xwait r6, 0
000b54  8ba03010  add.ul r[2:3], r[2:3], r[4:5]
000b58  1f520000  addli r4, zero, 5
000b5c  ab810000  lui r3, 8
000b60  1d000200  lock zero, r4
000b64  9b910104  ori r3, r3, 64
000b68  95820200  dma_cfg r5, r5, zero, 0
000b6c  15800202  dma_cfg zero, r5, zero, 1
000b70  15010004  dma_cfg r2, zero, zero, 2
000b74  95809106  dma_cfg r1, r3, r9, 3
000b78  9f000001  addli r1, zero, 128
000b7c  1f010020  addli r2, zero, 4096
000b80  95847009  dma_cfg r9, r1, r23, 4
000b84  9f000002  addli r1, zero, 256
000b88  1581900a  dma_cfg r2, r1, r9, 5
000b8c  9f206000  addli r1, zero, 50
000b90  15000010  dma_cfg zero, zero, zero, 8
000b94  35000000  dma_run zero
000b98  1500500a  dma_cfg zero, zero, r5, 5
000b9c  15000010  dma_cfg zero, zero, zero, 8
000ba0  1d100200  unlock r4
000ba4  7d800000  xsignal r1, 0
000ba8  dbf5feff  j -2132
000bac  b3000028  zext_int2long r[2:3], zero
000bb0  3d000000  xfence
000bb4  00a00300  mfence { lm, sm, gm }
000bb8  a7820000  addli.d r[6:7], r[2:3], 0
000bbc  9f610000  addli r3, zero, 6
000bc0  634eefff  loadli.w r28,  -12(r30)
000bc4  eb5a8fff  load.d r[22:23], -8(r30)
000bc8  a7840000  addli.d r[10:11], r[2:3], 0
000bcc  97b33202  sll.d r[8:9], r[6:7], r3
000bd0  8ba57410  add.ul r[12:13], r[10:11], r[8:9]
000bd4  a7841400  addli.d r[10:11], r[10:11], 8
000bd8  9bb12500  slli r3, r11, 2
000bdc  93a55403  setneq.d r11, r[10:11], r[22:23]
000be0  0b96b111  add.s r12, r3, r27
000be4  8b91c111  add.s r3, r3, r28
000be8  ef568600  loads.d r[14:15], 8(r12)
000bec  ef570600  loads.d r[16:17], 0(r12)
000bf0  ef588601  loads.d r[18:19], 24(r12)
000bf4  ef590601  loads.d r[20:21], 16(r12)
000bf8  73f4d100  stores.d r[14:15], 8(r3)
000bfc  73f0f100  stores.d r[16:17], 0(r3)
000c00  73fc1101  stores.d r[18:19], 24(r3)
000c04  73f83101  stores.d r[20:21], 16(r3)
000c08  3baf05fe  bneq r11, zero, -56
000c0c  9f710000  addli r3, zero, 7
000c10  b3830128  zext_int2long r[8:9], r3
000c14  93a17204  setlt.ul r3, r[6:7], r[8:9]
000c18  a7920200  addli.d r[6:7], r[6:7], 1
000c1c  bb8e01fe  bneq r3, zero, -96
000c20  00200100  mfence { sm }
000c24  00340002  core_id r8
000c28  634aefff  loadli.w r20,  -12(r30)
000c2c  634e5fff  loadli.w r28,  -84(r30)
000c30  63064fff  loadli.w r12,  -96(r30)
000c34  eb5a0ff6  load.d r[22:23], -160(r30)
000c38  b70402fc  beq r4, zero, -1760
000c3c  9f001000  addli r1, zero, 8
000c40  3d000000  xfence
000c44  00a00300  mfence { lm, sm, gm }
000c48  b3800028  zext_int2long r[2:3], r1
000c4c  9f610000  addli r3, zero, 6
000c50  6b598fff  load.d r[19:20], -8(r30)
000c54  b3020028  zext_int2long r[6:7], zero
000c58  97b13002  sll.d r[4:5], r[2:3], r3
000c5c  8ba33210  add.ul r[8:9], r[6:7], r[4:5]
000c60  a7821200  addli.d r[6:7], r[6:7], 8
000c64  9bb32300  slli r7, r7, 2
000c68  13a42203  setneq.d r8, r[6:7], r[19:20]
000c6c  8b94b311  add.s r9, r7, r27
000c70  8b934311  add.s r7, r7, r20
000c74  6fd58400  loads.d r[11:12], 8(r9)
000c78  6fd60400  loads.d r[13:14], 0(r9)
000c7c  6fd78401  loads.d r[15:16], 24(r9)
000c80  6fd80401  loads.d r[17:18], 16(r9)
000c84  73f4a300  stores.d r[11:12], 8(r7)
000c88  73f0c300  stores.d r[13:14], 0(r7)
000c8c  73fce300  stores.d r[15:16], 24(r7)
000c90  73f80301  stores.d r[17:18], 16(r7)
000c94  3b2f04fe  bneq r8, zero, -56
000c98  9f711000  addli r3, zero, 15
000c9c  b3810128  zext_int2long r[4:5], r3
000ca0  93a13004  setlt.ul r3, r[2:3], r[4:5]
000ca4  a7900000  addli.d r[2:3], r[2:3], 1
000ca8  bb9e01fe  bneq r3, zero, -92
000cac  00200100  mfence { sm }
000cb0  00340002  core_id r8
000cb4  63064fff  loadli.w r12,  -96(r30)
000cb8  e3003fff  loadli.w r1,  -104(r30)
000cbc  b79200fc  beq r1, zero, -1884
000cc0  9f002000  addli r1, zero, 16
000cc4  3d000000  xfence
000cc8  00a00300  mfence { lm, sm, gm }
000ccc  b3800028  zext_int2long r[2:3], r1
000cd0  9f610000  addli r3, zero, 6
000cd4  6b598fff  load.d r[19:20], -8(r30)
000cd8  b3020028  zext_int2long r[6:7], zero
000cdc  97b13002  sll.d r[4:5], r[2:3], r3
000ce0  8ba33210  add.ul r[8:9], r[6:7], r[4:5]
000ce4  a7821200  addli.d r[6:7], r[6:7], 8
000ce8  9bb32300  slli r7, r7, 2
000cec  13a42203  setneq.d r8, r[6:7], r[19:20]
000cf0  8b94b311  add.s r9, r7, r27
000cf4  8b934311  add.s r7, r7, r20
000cf8  6fd58400  loads.d r[11:12], 8(r9)
000cfc  6fd60400  loads.d r[13:14], 0(r9)
000d00  6fd78401  loads.d r[15:16], 24(r9)
000d04  6fd80401  loads.d r[17:18], 16(r9)
000d08  73f4a300  stores.d r[11:12], 8(r7)
000d0c  73f0c300  stores.d r[13:14], 0(r7)
000d10  73fce300  stores.d r[15:16], 24(r7)
000d14  73f80301  stores.d r[17:18], 16(r7)
000d18  3b2f04fe  bneq r8, zero, -56
000d1c  9f712000  addli r3, zero, 23
000d20  b3810128  zext_int2long r[4:5], r3
000d24  93a13004  setlt.ul r3, r[2:3], r[4:5]
000d28  a7900000  addli.d r[2:3], r[2:3], 1
000d2c  bb9e01fe  bneq r3, zero, -92
000d30  00200100  mfence { sm }
000d34  00340002  core_id r8
000d38  63064fff  loadli.w r12,  -96(r30)
000d3c  e340dffe  loadli.w r1,  -148(r30)
000d40  b7a000fc  beq r1, zero, -2008
000d44  9f003000  addli r1, zero, 24
000d48  3d000000  xfence
000d4c  00a00300  mfence { lm, sm, gm }
000d50  b3800028  zext_int2long r[2:3], r1
000d54  9f610000  addli r3, zero, 6
000d58  6b598fff  load.d r[19:20], -8(r30)
000d5c  b3020028  zext_int2long r[6:7], zero
000d60  97b13002  sll.d r[4:5], r[2:3], r3
000d64  8ba33210  add.ul r[8:9], r[6:7], r[4:5]
000d68  a7821200  addli.d r[6:7], r[6:7], 8
000d6c  9bb32300  slli r7, r7, 2
000d70  13a42203  setneq.d r8, r[6:7], r[19:20]
000d74  8b94b311  add.s r9, r7, r27
000d78  8b934311  add.s r7, r7, r20
000d7c  6fd58400  loads.d r[11:12], 8(r9)
000d80  6fd60400  loads.d r[13:14], 0(r9)
000d84  6fd78401  loads.d r[15:16], 24(r9)
000d88  6fd80401  loads.d r[17:18], 16(r9)
000d8c  73f4a300  stores.d r[11:12], 8(r7)
000d90  73f0c300  stores.d r[13:14], 0(r7)
000d94  73fce300  stores.d r[15:16], 24(r7)
000d98  73f80301  stores.d r[17:18], 16(r7)
000d9c  3b2f04fe  bneq r8, zero, -56
000da0  9f713000  addli r3, zero, 31
000da4  b3810128  zext_int2long r[4:5], r3
000da8  93a13004  setlt.ul r3, r[2:3], r[4:5]
000dac  a7900000  addli.d r[2:3], r[2:3], 1
000db0  bb9e01fe  bneq r3, zero, -92
000db4  00200100  mfence { sm }
000db8  00340002  core_id r8
000dbc  63064fff  loadli.w r12,  -96(r30)
000dc0  e3006fff  loadli.w r1,  -80(r30)
000dc4  b7be00fa  beq r1, zero, -2132
000dc8  9f004000  addli r1, zero, 32
000dcc  3d000000  xfence
000dd0  00a00300  mfence { lm, sm, gm }
000dd4  b3800028  zext_int2long r[2:3], r1
000dd8  9f610000  addli r3, zero, 6
000ddc  6b598fff  load.d r[19:20], -8(r30)
000de0  b3020028  zext_int2long r[6:7], zero
000de4  97b13002  sll.d r[4:5], r[2:3], r3
000de8  8ba33210  add.ul r[8:9], r[6:7], r[4:5]
000dec  a7821200  addli.d r[6:7], r[6:7], 8
000df0  9bb32300  slli r7, r7, 2
000df4  13a42203  setneq.d r8, r[6:7], r[19:20]
000df8  8b94b311  add.s r9, r7, r27
000dfc  8b934311  add.s r7, r7, r20
000e00  6fd58400  loads.d r[11:12], 8(r9)
000e04  6fd60400  loads.d r[13:14], 0(r9)
000e08  6fd78401  loads.d r[15:16], 24(r9)
000e0c  6fd80401  loads.d r[17:18], 16(r9)
000e10  73f4a300  stores.d r[11:12], 8(r7)
000e14  73f0c300  stores.d r[13:14], 0(r7)
000e18  73fce300  stores.d r[15:16], 24(r7)
000e1c  73f80301  stores.d r[17:18], 16(r7)
000e20  3b2f04fe  bneq r8, zero, -56
000e24  9f714000  addli r3, zero, 39
000e28  b3810128  zext_int2long r[4:5], r3
000e2c  93a13004  setlt.ul r3, r[2:3], r[4:5]
000e30  a7900000  addli.d r[2:3], r[2:3], 1
000e34  bb9e01fe  bneq r3, zero, -92
000e38  00200100  mfence { sm }
000e3c  00340002  core_id r8
000e40  63064fff  loadli.w r12,  -96(r30)
000e44  9f500000  addli r1, zero, 5
000e48  bb4c14fa  bneq r8, r1, -2256
000e4c  9f005000  addli r1, zero, 40
000e50  3d000000  xfence
000e54  00a00300  mfence { lm, sm, gm }
000e58  b3800028  zext_int2long r[2:3], r1
000e5c  9f610000  addli r3, zero, 6
000e60  6b598fff  load.d r[19:20], -8(r30)
000e64  b3020028  zext_int2long r[6:7], zero
000e68  97b13002  sll.d r[4:5], r[2:3], r3
000e6c  8ba33210  add.ul r[8:9], r[6:7], r[4:5]
000e70  a7821200  addli.d r[6:7], r[6:7], 8
000e74  9bb32300  slli r7, r7, 2
000e78  13a42203  setneq.d r8, r[6:7], r[19:20]
000e7c  8b94b311  add.s r9, r7, r27
000e80  8b934311  add.s r7, r7, r20
000e84  6fd58400  loads.d r[11:12], 8(r9)
000e88  6fd60400  loads.d r[13:14], 0(r9)
000e8c  6fd78401  loads.d r[15:16], 24(r9)
000e90  6fd80401  loads.d r[17:18], 16(r9)
000e94  73f4a300  stores.d r[11:12], 8(r7)
000e98  73f0c300  stores.d r[13:14], 0(r7)
000e9c  73fce300  stores.d r[15:16], 24(r7)
000ea0  73f80301  stores.d r[17:18], 16(r7)
000ea4  3b2f04fe  bneq r8, zero, -56
000ea8  9f715000  addli r3, zero, 47
000eac  b3810128  zext_int2long r[4:5], r3
000eb0  93a13004  setlt.ul r3, r[2:3], r[4:5]
000eb4  a7900000  addli.d r[2:3], r[2:3], 1
000eb8  bb9e01fe  bneq r3, zero, -92
000ebc  00200100  mfence { sm }
000ec0  00340002  core_id r8
000ec4  63064fff  loadli.w r12,  -96(r30)
000ec8  e3007fff  loadli.w r1,  -72(r30)
000ecc  b7da00fa  beq r1, zero, -2380
000ed0  9f006000  addli r1, zero, 48
000ed4  3d000000  xfence
000ed8  00a00300  mfence { lm, sm, gm }
000edc  b3800028  zext_int2long r[2:3], r1
000ee0  9f610000  addli r3, zero, 6
000ee4  6b598fff  load.d r[19:20], -8(r30)
000ee8  b3020028  zext_int2long r[6:7], zero
000eec  97b13002  sll.d r[4:5], r[2:3], r3
000ef0  8ba33210  add.ul r[8:9], r[6:7], r[4:5]
000ef4  a7821200  addli.d r[6:7], r[6:7], 8
000ef8  9bb32300  slli r7, r7, 2
000efc  13a42203  setneq.d r8, r[6:7], r[19:20]
000f00  8b94b311  add.s r9, r7, r27
000f04  8b934311  add.s r7, r7, r20
000f08  6fd58400  loads.d r[11:12], 8(r9)
000f0c  6fd60400  loads.d r[13:14], 0(r9)
000f10  6fd78401  loads.d r[15:16], 24(r9)
000f14  6fd80401  loads.d r[17:18], 16(r9)
000f18  73f4a300  stores.d r[11:12], 8(r7)
000f1c  73f0c300  stores.d r[13:14], 0(r7)
000f20  73fce300  stores.d r[15:16], 24(r7)
000f24  73f80301  stores.d r[17:18], 16(r7)
000f28  3b2f04fe  bneq r8, zero, -56
000f2c  9f716000  addli r3, zero, 55
000f30  b3810128  zext_int2long r[4:5], r3
000f34  93a13004  setlt.ul r3, r[2:3], r[4:5]
000f38  a7900000  addli.d r[2:3], r[2:3], 1
000f3c  bb9e01fe  bneq r3, zero, -92
000f40  00200100  mfence { sm }
000f44  00340002  core_id r8
000f48  63064fff  loadli.w r12,  -96(r30)
000f4c  e3008fff  loadli.w r1,  -64(r30)
000f50  b7f10000  beq r1, zero, 124
000f54  9f007000  addli r1, zero, 56
000f58  3d000000  xfence
000f5c  00a00300  mfence { lm, sm, gm }
000f60  b3800028  zext_int2long r[2:3], r1
000f64  9f610000  addli r3, zero, 6
000f68  6b598fff  load.d r[19:20], -8(r30)
000f6c  b3020028  zext_int2long r[6:7], zero
000f70  97b13002  sll.d r[4:5], r[2:3], r3
000f74  8ba33210  add.ul r[8:9], r[6:7], r[4:5]
000f78  a7821200  addli.d r[6:7], r[6:7], 8
000f7c  9bb32300  slli r7, r7, 2
000f80  13a42203  setneq.d r8, r[6:7], r[19:20]
000f84  8b94b311  add.s r9, r7, r27
000f88  8b934311  add.s r7, r7, r20
000f8c  6fd58400  loads.d r[11:12], 8(r9)
000f90  6fd60400  loads.d r[13:14], 0(r9)
000f94  6fd78401  loads.d r[15:16], 24(r9)
000f98  6fd80401  loads.d r[17:18], 16(r9)
000f9c  73f4a300  stores.d r[11:12], 8(r7)
000fa0  73f0c300  stores.d r[13:14], 0(r7)
000fa4  73fce300  stores.d r[15:16], 24(r7)
000fa8  73f80301  stores.d r[17:18], 16(r7)
000fac  3b2f04fe  bneq r8, zero, -56
000fb0  eb510ff8  load.d r[4:5], -128(r30)
000fb4  93a13004  setlt.ul r3, r[2:3], r[4:5]
000fb8  a7900000  addli.d r[2:3], r[2:3], 1
000fbc  bbae01fe  bneq r3, zero, -88
000fc0  00200100  mfence { sm }
000fc4  00340002  core_id r8
000fc8  63064fff  loadli.w r12,  -96(r30)
000fcc  9f70f001  addli r1, zero, 255
000fd0  9f860c00  addli r13, r25, 0
000fd4  80a20004  csr_set csr5, r1
000fd8  ab800000  lui r1, 8
000fdc  1b91c000  ori r2, r1, 12
000fe0  670c2ffe  storeli.w r2, -64(r30)
000fe4  1b918000  ori r2, r1, 8
000fe8  9b904000  ori r1, r1, 4
000fec  e70b2ffe  storeli.w r2, -72(r30)
000ff0  670b1ffe  storeli.w r1, -80(r30)
000ff4  00e00200  sync_core
000ff8  e340dffe  loadli.w r1,  -148(r30)
000ffc  b7f90000  beq r1, zero, 636
001000  9f603000  addli r1, zero, 30
001004  1f415000  addli r2, zero, 44
001008  7d800000  xsignal r1, 0
00100c  7d000100  xsignal r2, 0
001010  7d900000  xwait r1, 0
001014  9f104000  addli r1, zero, 33
001018  7d900000  xwait r1, 0
00101c  9f504000  addli r1, zero, 37
001020  7d900000  xwait r1, 0
001024  9f105000  addli r1, zero, 41
001028  7d900000  xwait r1, 0
00102c  9f505000  addli r1, zero, 45
001030  7d900000  xwait r1, 0
001034  9f206000  addli r1, zero, 50
001038  7d900000  xwait r1, 0
00103c  3d000000  xfence
001040  b3000028  zext_int2long r[2:3], zero
001044  00a00300  mfence { lm, sm, gm }
001048  6346cfff  loadli.w r12,  -28(r30)
00104c  73381ff6  store.d r[2:3], -144(r30)
001050  27810000  addli.d r[3:4], r[2:3], 0
001054  5b030000  j 24
001058  eb500ff8  load.d r[2:3], -128(r30)
00105c  eb518ff7  load.d r[4:5], -136(r30)
001060  93a01104  setlt.ul r1, r[4:5], r[2:3]
001064  27910100  addli.d r[3:4], r[4:5], 1
001068  b7990000  beq r1, zero, 612
00106c  9f600000  addli r1, zero, 6
001070  6b580ff7  load.d r[17:18], -144(r30)
001074  733c2ff6  store.d r[3:4], -136(r30)
001078  17321102  sll.d r[5:6], r[3:4], r1
00107c  9f700000  addli r1, zero, 7
001080  97301102  sll.d r[2:3], r[3:4], r1
001084  733c4ff8  store.d r[5:6], -104(r30)
001088  5b090000  j 72
00108c  63028fff  loadli.w r4,  -64(r30)
001090  eb548fff  load.d r[10:11], -8(r30)
001094  27480800  addli.d r[17:18], r[17:18], 4
001098  9f8c0600  addli r25, r13, 0
00109c  13239802  setneq.d r6, r[17:18], r[10:11]
0010a0  0b124410  add.s r4, r8, r4
0010a4  ab840000  lui r9, 8
0010a8  73605200  stores.w r5, 0(r4)
0010ac  63027fff  loadli.w r4,  -72(r30)
0010b0  e3026fff  loadli.w r5,  -80(r30)
0010b4  8b149410  add.s r9, r8, r9
0010b8  73e06401  stores.w r22, 0(r9)
0010bc  0b124410  add.s r4, r8, r4
0010c0  8b125410  add.s r5, r8, r5
0010c4  73603200  stores.w r3, 0(r4)
0010c8  73e07200  stores.w r7, 0(r5)
0010cc  373e03fe  beq r6, zero, -116
0010d0  eb518ff9  load.d r[4:5], -104(r30)
0010d4  e3044fff  loadli.w r9,  -96(r30)
0010d8  6307bfff  loadli.w r14,  -40(r30)
0010dc  8b213810  add.ul r[4:5], r[17:18], r[4:5]
0010e0  1bb42100  slli r8, r3, 2
0010e4  0b221810  add.ul r[5:6], r[17:18], r[2:3]
0010e8  8b11b411  add.s r3, r8, r27
0010ec  0b158211  add.s r10, r4, r24
0010f0  8b17c210  add.s r15, r4, r12
0010f4  6306efff  loadli.w r12,  -16(r30)
0010f8  8b149210  add.s r9, r4, r9
0010fc  0b17e210  add.s r14, r4, r14
001100  6fc30100  loads.w r6, 0(r3)
001104  efc34100  loads.w r7, 4(r3)
001108  efcb8100  loads.w r23, 8(r3)
00110c  efc5c100  loads.w r11, 12(r3)
001110  8b119211  add.s r3, r4, r25
001114  ef9a0400  loads.bu r21, 0(r9)
001118  e304cfff  loadli.w r9,  -32(r30)
00111c  6f170700  loads.bu r14, 0(r14)
001120  0b19c210  add.s r18, r4, r12
001124  6346dfff  loadli.w r12,  -20(r30)
001128  6f9b0100  loads.bu r22, 0(r3)
00112c  ef110500  loads.bu r3, 0(r10)
001130  6345bfff  loadli.w r10,  -36(r30)
001134  8b149210  add.s r9, r4, r9
001138  ef190900  loads.bu r19, 0(r18)
00113c  0b15a210  add.s r10, r4, r10
001140  6f9d0400  loads.bu r26, 0(r9)
001144  e344afff  loadli.w r9,  -44(r30)
001148  6f1a0500  loads.bu r20, 0(r10)
00114c  6f950700  loads.bu r10, 0(r15)
001150  8b17c210  add.s r15, r4, r12
001154  6306dfff  loadli.w r12,  -24(r30)
001158  8b149210  add.s r9, r4, r9
00115c  ef9d0700  loads.bu r27, 0(r15)
001160  0b19c210  add.s r18, r4, r12
001164  6306afff  loadli.w r12,  -48(r30)
001168  170cc301  and r24, r6, r28
00116c  6343efff  loadli.w r6,  -12(r30)
001170  ef170900  loads.bu r15, 0(r18)
001174  0b12c210  add.s r4, r4, r12
001178  2b06807f  lui r12, 522240
00117c  130e0c00  seteq r28, r24, zero
001180  ef920400  loads.bu r5, 0(r9)
001184  0b196410  add.s r18, r8, r6
001188  930ccc00  seteq r25, r24, r12
00118c  130c8605  setlt.u r24, r12, r24
001190  6f130200  loads.bu r6, 0(r4)
001194  ef44c900  loads.w r9, 12(r18)
001198  6f428900  loads.w r4, 8(r18)
00119c  170b9b01  and r22, r22, r25
0011a0  970ccd01  and r25, r26, r28
0011a4  6f4d4900  loads.w r26, 4(r18)
0011a8  171b9b01  or r22, r22, r25
0011ac  97125c00  or r5, r24, r5
0011b0  97125b00  or r5, r22, r5
0011b4  2b0bc07f  lui r22, 523264
0011b8  1b8c1200  andi r24, r5, 1
0011bc  ab02c07f  lui r5, 523264
0011c0  3b200c00  bneq r24, zero, 8
0011c4  6f4b0900  loads.w r22, 0(r18)
0011c8  634e5fff  loadli.w r28,  -84(r30)
0011cc  ab0c807f  lui r25, 522240
0011d0  9783c301  and r7, r7, r28
0011d4  13899301  seteq r18, r7, r25
0011d8  138c0300  seteq r24, r7, zero
0011dc  93837c04  setlt.u r7, r25, r7
0011e0  17892a01  and r18, r21, r18
0011e4  170a8a01  and r20, r20, r24
0011e8  9793b301  or r7, r7, r27
0011ec  17194901  or r18, r18, r20
0011f0  97137900  or r7, r18, r7
0011f4  1b891300  andi r18, r7, 1
0011f8  ab03c07f  lui r7, 523264
0011fc  3b200900  bneq r18, zero, 8
001200  9f030d00  addli r7, r26, 0
001204  1789cb01  and r18, r23, r28
001208  e34d9fff  loadli.w r27,  -52(r30)
00120c  630c9fff  loadli.w r24,  -56(r30)
001210  130a9901  seteq r20, r18, r25
001214  930a0900  seteq r21, r18, zero
001218  13892c05  setlt.u r18, r25, r18
00121c  97814101  and r3, r3, r20
001220  17055501  and r10, r10, r21
001224  9791a100  or r3, r3, r10
001228  1715f900  or r10, r18, r15
00122c  9791a100  or r3, r3, r10
001230  1b851100  andi r10, r3, 1
001234  ab01c07f  lui r3, 523264
001238  3b200500  bneq r10, zero, 8
00123c  9f010200  addli r3, r4, 0
001240  1782c501  and r4, r11, r28
001244  6346cfff  loadli.w r12,  -28(r30)
001248  13059201  seteq r10, r4, r25
00124c  93050200  seteq r11, r4, zero
001250  13824c04  setlt.u r4, r25, r4
001254  1705a700  and r10, r14, r10
001258  9785b900  and r11, r19, r11
00125c  17126200  or r4, r4, r6
001260  1715b500  or r10, r10, r11
001264  17124500  or r4, r10, r4
001268  1b021200  andi r4, r4, 1
00126c  bb0802fe  bneq r4, zero, -480
001270  9f820400  addli r5, r9, 0
001274  5bc3ffff  j -488
001278  ab410000  lui r3, 4
00127c  9f500000  addli r1, zero, 5
001280  3b3314f8  bneq r8, r1, -3892
001284  9f002000  addli r1, zero, 16
001288  7d900000  xwait r1, 0
00128c  9f405000  addli r1, zero, 44
001290  7d900000  xwait r1, 0
001294  1d800b00  lock zero, r23
001298  ab00803f  lui r1, 260096
00129c  0d000002  ew_cfg zero, zero, zero, 1
0012a0  0d101000  ewcoeff_cfg zero, zero, r1, 0
0012a4  9f70f00f  addli r1, zero, 2047
0012a8  0d800004  ew_cfg zero, r1, zero, 2
0012ac  9f505000  addli r1, zero, 45
0012b0  8d0b0006  ew_cfg r23, zero, zero, 3
0012b4  8d8b7b27  ew_cfg r23, r23, r23, 19
0012b8  2d1aaa01  dsmul r20, r20, r26, 0
0012bc  0d000026  ew_cfg zero, zero, zero, 19
0012c0  1d900b00  unlock r23
0012c4  7d800000  xsignal r1, 0
0012c8  db0b0000  j 92
0012cc  9f703000  addli r1, zero, 31
0012d0  00200100  mfence { sm }
0012d4  00340002  core_id r8
0012d8  9f2b0000  addli r23, zero, 2
0012dc  ab410000  lui r3, 4
0012e0  7d800000  xsignal r1, 0
0012e4  9f204000  addli r1, zero, 34
0012e8  7d800000  xsignal r1, 0
0012ec  9f604000  addli r1, zero, 38
0012f0  7d800000  xsignal r1, 0
0012f4  9f205000  addli r1, zero, 42
0012f8  7d800000  xsignal r1, 0
0012fc  9f605000  addli r1, zero, 46
001300  7d800000  xsignal r1, 0
001304  9f705000  addli r1, zero, 47
001308  7d800000  xsignal r1, 0
00130c  eb5a0ff6  load.d r[22:23], -160(r30)
001310  634d2fff  loadli.w r26,  -108(r30)
001314  634aefff  loadli.w r20,  -12(r30)
001318  63064fff  loadli.w r12,  -96(r30)
00131c  9f500000  addli r1, zero, 5
001320  3b171400  bneq r8, r1, 452
001324  1f212000  addli r2, zero, 18
001328  9f72f00f  addli r5, zero, 2047
00132c  2b820000  lui r4, 8
001330  1f436000  addli r6, zero, 52
001334  9f000000  addli r1, zero, 0
001338  7d100100  xwait r2, 0
00133c  1f715000  addli r2, zero, 47
001340  7d100100  xwait r2, 0
001344  1f316000  addli r2, zero, 51
001348  7d100100  xwait r2, 0
00134c  1d800b00  lock zero, r23
001350  2b01803f  lui r2, 260096
001354  0d000002  ew_cfg zero, zero, zero, 1
001358  0d110100  ewcoeff_cfg r2, r2, zero, 0
00135c  0d800204  ew_cfg zero, r5, zero, 2
001360  8d0b0006  ew_cfg r23, zero, zero, 3
001364  8d8b7b27  ew_cfg r23, r23, r23, 19
001368  63418ffe  loadli.w r2,  -188(r30)
00136c  2d014d00  dsmadd r2, r26, r4, 0
001370  1f026000  addli r4, zero, 48
001374  0d000026  ew_cfg zero, zero, zero, 19
001378  1d900b00  unlock r23
00137c  7d000200  xsignal r4, 0
001380  1d800b00  lock zero, r23
001384  0d000002  ew_cfg zero, zero, zero, 1
001388  63427ffe  loadli.w r4,  -196(r30)
00138c  0d120000  ewcoeff_cfg r4, zero, zero, 0
001390  63027ffe  loadli.w r4,  -200(r30)
001394  0d800204  ew_cfg zero, r5, zero, 2
001398  8d0b0006  ew_cfg r23, zero, zero, 3
00139c  8d8b0b26  ew_cfg r23, r23, zero, 19
0013a0  4d512100  hp_ssmul r2, r2, r2, 0
0013a4  0d000026  ew_cfg zero, zero, zero, 19
0013a8  1d900b00  unlock r23
0013ac  7d100300  xwait r6, 0
0013b0  1d800b00  lock zero, r23
0013b4  2b030040  lui r6, 262144
0013b8  0d000002  ew_cfg zero, zero, zero, 1
0013bc  0d130000  ewcoeff_cfg r6, zero, zero, 0
0013c0  0d800204  ew_cfg zero, r5, zero, 2
0013c4  8d0b0006  ew_cfg r23, zero, zero, 3
0013c8  8d8b0b26  ew_cfg r23, r23, zero, 19
0013cc  4d522100  hp_ssmul r4, r2, r2, 0
0013d0  1f717000  addli r2, zero, 63
0013d4  0d000026  ew_cfg zero, zero, zero, 19
0013d8  1d900b00  unlock r23
0013dc  1d800b00  lock zero, r23
0013e0  0d000002  ew_cfg zero, zero, zero, 1
0013e4  0d000104  ew_cfg zero, r2, zero, 2
0013e8  1f110000  addli r2, zero, 1
0013ec  0d010006  ew_cfg r2, zero, zero, 3
0013f0  2b01a041  lui r2, 268800
0013f4  0d110000  ewcoeff_cfg r2, zero, zero, 0
0013f8  0b914010  add.s r2, r1, r4
0013fc  9f800002  addli r1, r1, 256
001400  2d212108  dscmpnsel r2, r2, r2, 4
001404  bbdf30fe  bneq r1, r3, -12
001408  1d900b00  unlock r23
00140c  1f717000  addli r2, zero, 63
001410  9f000000  addli r1, zero, 0
001414  1d800b00  lock zero, r23
001418  0d000002  ew_cfg zero, zero, zero, 1
00141c  0d000104  ew_cfg zero, r2, zero, 2
001420  1f110000  addli r2, zero, 1
001424  0d010006  ew_cfg r2, zero, zero, 3
001428  8d0b0014  ew_cfg r23, zero, zero, 10
00142c  e3426ffe  loadli.w r5,  -204(r30)
001430  8d0b5116  ew_cfg r23, r2, r5, 11
001434  2bc17f41  lui r2, 268284
001438  9f420000  addli r5, zero, 4
00143c  0d00001a  ew_cfg zero, zero, zero, 13
001440  0d80221c  ew_cfg zero, r5, r2, 14
001444  2b01a0c1  lui r2, 793088
001448  0d00001e  ew_cfg zero, zero, zero, 15
00144c  0d110000  ewcoeff_cfg r2, zero, zero, 0
001450  0b914010  add.s r2, r1, r4
001454  9f800002  addli r1, r1, 256
001458  2d212100  dscmpnsel r2, r2, r2, 0
00145c  bbdf30fe  bneq r1, r3, -12
001460  0d000014  ew_cfg zero, zero, zero, 10
001464  ab0020c1  lui r1, 791040
001468  1f71f00f  addli r2, zero, 2047
00146c  1d900b00  unlock r23
001470  1d800b00  lock zero, r23
001474  0d000002  ew_cfg zero, zero, zero, 1
001478  0d101000  ewcoeff_cfg zero, zero, r1, 0
00147c  8d0b0006  ew_cfg r23, zero, zero, 3
001480  0d000104  ew_cfg zero, r2, zero, 2
001484  8d8b7b27  ew_cfg r23, r23, r23, 19
001488  e3408ffe  loadli.w r1,  -188(r30)
00148c  6d804090  dsselect zero, r1, r4, 72
001490  9f306000  addli r1, zero, 51
001494  0d000026  ew_cfg zero, zero, zero, 19
001498  1d900b00  unlock r23
00149c  7d800000  xsignal r1, 0
0014a0  9f406000  addli r1, zero, 52
0014a4  7d800000  xsignal r1, 0
0014a8  9f302000  addli r1, zero, 19
0014ac  7d900000  xwait r1, 0
0014b0  1d800b00  lock zero, r23
0014b4  ab00803f  lui r1, 260096
0014b8  0d000002  ew_cfg zero, zero, zero, 1
0014bc  0d101000  ewcoeff_cfg zero, zero, r1, 0
0014c0  9f102000  addli r1, zero, 17
0014c4  0d000104  ew_cfg zero, r2, zero, 2
0014c8  8d0b0006  ew_cfg r23, zero, zero, 3
0014cc  8d8b7b27  ew_cfg r23, r23, r23, 19
0014d0  2d1d0d00  dsmul r26, r26, zero, 0
0014d4  0d000026  ew_cfg zero, zero, zero, 19
0014d8  1d900b00  unlock r23
0014dc  7d800b00  xsignal r23, 0
0014e0  7d800000  xsignal r1, 0
0014e4  e340dffe  loadli.w r1,  -148(r30)
0014e8  b79900f6  beq r1, zero, -4508
0014ec  9f102000  addli r1, zero, 17
0014f0  7d900b00  xwait r23, 0
0014f4  7d900000  xwait r1, 0
0014f8  9f204000  addli r1, zero, 34
0014fc  7d900000  xwait r1, 0
001500  9f604000  addli r1, zero, 38
001504  7d900000  xwait r1, 0
001508  9f205000  addli r1, zero, 42
00150c  7d900000  xwait r1, 0
001510  9f006000  addli r1, zero, 48
001514  7d900000  xwait r1, 0
001518  3d000000  xfence
00151c  b3000028  zext_int2long r[2:3], zero
001520  00a00300  mfence { lm, sm, gm }
001524  e302cfff  loadli.w r5,  -32(r30)
001528  6344bfff  loadli.w r8,  -36(r30)
00152c  6349cfff  loadli.w r18,  -28(r30)
001530  733c1ff6  store.d r[2:3], -136(r30)
001534  27810000  addli.d r[3:4], r[2:3], 0
001538  5b030000  j 24
00153c  eb500ff8  load.d r[2:3], -128(r30)
001540  eb518ff9  load.d r[4:5], -104(r30)
001544  93a01104  setlt.ul r1, r[4:5], r[2:3]
001548  27910100  addli.d r[3:4], r[4:5], 1
00154c  b7f600f6  beq r1, zero, -4676
001550  9f700000  addli r1, zero, 7
001554  733c2ff8  store.d r[3:4], -104(r30)
001558  17331102  sll.d r[7:8], r[3:4], r1
00155c  9f600000  addli r1, zero, 6
001560  73306ffa  store.d r[7:8], -96(r30)
001564  6b538ff7  load.d r[7:8], -136(r30)
001568  97301102  sll.d r[2:3], r[3:4], r1
00156c  db090000  j 76
001570  63028fff  loadli.w r4,  -64(r30)
001574  eb548fff  load.d r[10:11], -8(r30)
001578  27430300  addli.d r[7:8], r[7:8], 4
00157c  e3056fff  loadli.w r11,  -80(r30)
001580  0b124410  add.s r4, r8, r4
001584  93249302  setneq.d r9, r[7:8], r[10:11]
001588  2b850000  lui r10, 8
00158c  73603201  stores.w r19, 0(r4)
001590  63027fff  loadli.w r4,  -72(r30)
001594  0b15a410  add.s r10, r8, r10
001598  73605500  stores.w r5, 0(r10)
00159c  e302cfff  loadli.w r5,  -32(r30)
0015a0  0b124410  add.s r4, r8, r4
0015a4  0b14b410  add.s r8, r8, r11
0015a8  73603400  stores.w r3, 0(r8)
0015ac  6344bfff  loadli.w r8,  -36(r30)
0015b0  73606201  stores.w r22, 0(r4)
0015b4  37ae04fe  beq r9, zero, -120
0015b8  eb510ffa  load.d r[4:5], -96(r30)
0015bc  6305efff  loadli.w r10,  -16(r30)
0015c0  8b213310  add.ul r[4:5], r[7:8], r[4:5]
0015c4  8b942111  add.s r9, r3, r18
0015c8  0b948110  add.s r8, r3, r8
0015cc  8b281310  add.ul r[18:19], r[7:8], r[2:3]
0015d0  0b95a110  add.s r10, r3, r10
0015d4  8b97c110  add.s r15, r3, r12
0015d8  8b925110  add.s r5, r3, r5
0015dc  6f170400  loads.bu r14, 0(r8)
0015e0  1bb42800  slli r8, r17, 2
0015e4  ef190500  loads.bu r19, 0(r10)
0015e8  6309bfff  loadli.w r18,  -40(r30)
0015ec  ef950400  loads.bu r11, 0(r9)
0015f0  8b949111  add.s r9, r3, r25
0015f4  8b988111  add.s r17, r3, r24
0015f8  ef9a0700  loads.bu r21, 0(r15)
0015fc  e347afff  loadli.w r15,  -44(r30)
001600  e30cafff  loadli.w r25,  -48(r30)
001604  6f980200  loads.bu r16, 0(r5)
001608  6f450400  loads.w r10, 0(r8)
00160c  6f9c0400  loads.bu r24, 0(r9)
001610  ef940800  loads.bu r9, 0(r17)
001614  e348dfff  loadli.w r17,  -20(r30)
001618  6f4a4400  loads.w r20, 4(r8)
00161c  ef428400  loads.w r5, 8(r8)
001620  ef4bc400  loads.w r23, 12(r8)
001624  0b992111  add.s r18, r3, r18
001628  8b97f110  add.s r15, r3, r15
00162c  6f1b0900  loads.bu r22, 0(r18)
001630  6309dfff  loadli.w r18,  -24(r30)
001634  8b981111  add.s r17, r3, r17
001638  ef9d0800  loads.bu r27, 0(r17)
00163c  0b992111  add.s r18, r3, r18
001640  8b919111  add.s r3, r3, r25
001644  ef9c0700  loads.bu r25, 0(r15)
001648  ef170900  loads.bu r15, 0(r18)
00164c  1702c501  and r4, r10, r28
001650  2b0e807f  lui r28, 522240
001654  63452fff  loadli.w r10,  -108(r30)
001658  93080200  seteq r17, r4, zero
00165c  130dc201  seteq r26, r4, r28
001660  130e4e04  setlt.u r28, r28, r4
001664  0b19a410  add.s r18, r8, r10
001668  6f950100  loads.bu r10, 0(r3)
00166c  ef41c900  loads.w r3, 12(r18)
001670  6f428900  loads.w r4, 8(r18)
001674  17081801  and r16, r16, r17
001678  9708ac01  and r17, r24, r26
00167c  6f4d4900  loads.w r26, 4(r18)
001680  17181801  or r16, r16, r17
001684  9798cc01  or r17, r25, r28
001688  17980801  or r16, r17, r16
00168c  ab08c07f  lui r17, 523264
001690  1b0c1800  andi r24, r16, 1
001694  2b08c07f  lui r16, 523264
001698  3b200c00  bneq r24, zero, 8
00169c  ef480900  loads.w r17, 0(r18)
0016a0  634e5fff  loadli.w r28,  -84(r30)
0016a4  ab0c807f  lui r25, 522240
0016a8  1709ca01  and r18, r20, r28
0016ac  130a0900  seteq r20, r18, zero
0016b0  130c9901  seteq r24, r18, r25
0016b4  13892c05  setlt.u r18, r25, r18
0016b8  17074701  and r14, r14, r20
0016bc  178a8a01  and r20, r21, r24
0016c0  17992d01  or r18, r27, r18
0016c4  17174701  or r14, r14, r20
0016c8  1717e900  or r14, r18, r14
0016cc  1b091700  andi r18, r14, 1
0016d0  2b07c07f  lui r14, 523264
0016d4  3b200900  bneq r18, zero, 8
0016d8  1f070d00  addli r14, r26, 0
0016dc  9782c201  and r5, r5, r28
0016e0  e34d9fff  loadli.w r27,  -52(r30)
0016e4  630c9fff  loadli.w r24,  -56(r30)
0016e8  13890200  seteq r18, r5, zero
0016ec  138a9201  seteq r20, r5, r25
0016f0  93825c04  setlt.u r5, r25, r5
0016f4  97852501  and r11, r11, r18
0016f8  97844401  and r9, r9, r20
0016fc  97925700  or r5, r15, r5
001700  97949500  or r9, r11, r9
001704  ab05c07f  lui r11, 523264
001708  97929200  or r5, r5, r9
00170c  9b821200  andi r5, r5, 1
001710  3ba00200  bneq r5, zero, 8
001714  9f050200  addli r11, r4, 0
001718  1782cb01  and r4, r23, r28
00171c  634aefff  loadli.w r20,  -12(r30)
001720  e3072fff  loadli.w r15,  -112(r30)
001724  6349cfff  loadli.w r18,  -28(r30)
001728  93020200  seteq r5, r4, zero
00172c  93049201  seteq r9, r4, r25
001730  13824c04  setlt.u r4, r25, r4
001734  97825900  and r5, r19, r5
001738  97049b00  and r9, r22, r9
00173c  17124500  or r4, r10, r4
001740  97929200  or r5, r5, r9
001744  17125200  or r4, r4, r5
001748  1b021200  andi r4, r4, 1
00174c  3b200200  bneq r4, zero, 8
001750  1f880100  addli r16, r3, 0
001754  970bc801  and r23, r16, r28
001758  93817c05  setlt.u r3, r25, r23
00175c  3bb00100  bneq r3, zero, 12
001760  9f090800  addli r19, r16, 0
001764  db010000  j 12
001768  ab014000  lui r3, 1024
00176c  97193800  or r19, r16, r3
001770  9784c501  and r9, r11, r28
001774  93819c04  setlt.u r3, r25, r9
001778  3bb00100  bneq r3, zero, 12
00177c  1f8b0500  addli r22, r11, 0
001780  db010000  j 12
001784  ab014000  lui r3, 1024
001788  179b3500  or r22, r11, r3
00178c  1702c701  and r4, r14, r28
001790  93814c04  setlt.u r3, r25, r4
001794  3bb00100  bneq r3, zero, 12
001798  9f010700  addli r3, r14, 0
00179c  db010000  j 12
0017a0  ab014000  lui r3, 1024
0017a4  97113700  or r3, r14, r3
0017a8  1785c801  and r10, r17, r28
0017ac  9382ac04  setlt.u r5, r25, r10
0017b0  3bb00200  bneq r5, zero, 12
0017b4  9f820800  addli r5, r17, 0
0017b8  db010000  j 12
0017bc  ab024000  lui r5, 1024
0017c0  97925800  or r5, r17, r5
0017c4  1385a704  setlt.u r10, r15, r10
0017c8  9f8c0600  addli r25, r13, 0
0017cc  b7000500  beq r10, zero, 32
0017d0  13824704  setlt.u r4, r15, r4
0017d4  b7700200  beq r4, zero, 60
0017d8  13829704  setlt.u r4, r15, r9
0017dc  37610200  beq r4, zero, 88
0017e0  13827705  setlt.u r4, r15, r23
0017e4  3b3602fe  bneq r4, zero, -628
0017e8  5b0e0000  j 112
0017ec  9bc20801  srli r5, r17, 16
0017f0  63055fff  loadli.w r10,  -88(r30)
0017f4  9b821200  andi r5, r5, 1
0017f8  8b925810  add.s r5, r17, r5
0017fc  8b92a210  add.s r5, r5, r10
001800  2b05ffff  lui r10, 1048560
001804  9782a200  and r5, r5, r10
001808  13824704  setlt.u r4, r15, r4
00180c  3b3f02fe  bneq r4, zero, -52
001810  9b410701  srli r3, r14, 16
001814  63025fff  loadli.w r4,  -88(r30)
001818  9b811100  andi r3, r3, 1
00181c  8b113710  add.s r3, r14, r3
001820  8b914110  add.s r3, r3, r4
001824  2b02ffff  lui r4, 1048560
001828  97814100  and r3, r3, r4
00182c  13829704  setlt.u r4, r15, r9
001830  bb4e02fe  bneq r4, zero, -80
001834  1bc20501  srli r4, r11, 16
001838  e3045fff  loadli.w r9,  -88(r30)
00183c  1b021200  andi r4, r4, 1
001840  0b924510  add.s r4, r11, r4
001844  0b129210  add.s r4, r4, r9
001848  ab04ffff  lui r9, 1048560
00184c  170b9200  and r22, r4, r9
001850  13827705  setlt.u r4, r15, r23
001854  3b7402fe  bneq r4, zero, -740
001858  1b420801  srli r4, r16, 16
00185c  e3045fff  loadli.w r9,  -88(r30)
001860  1b021200  andi r4, r4, 1
001864  0b124810  add.s r4, r16, r4
001868  0b129210  add.s r4, r4, r9
00186c  ab04ffff  lui r9, 1048560
001870  97099200  and r19, r4, r9
001874  db9fffff  j -772
001878  9f400000  addli r1, zero, 4
00187c  373c1400  beq r8, r1, 780
001880  9f670000  addli r15, zero, 6
001884  3741f402  beq r8, r15, 1104
001888  9f700000  addli r1, zero, 7
00188c  bb1d1400  bneq r8, r1, 868
001890  9f001000  addli r1, zero, 8
001894  e7460ffe  storeli.w zero, -148(r30)
001898  670b0ffe  storeli.w zero, -80(r30)
00189c  e7090ffe  storeli.w zero, -104(r30)
0018a0  e70b0ffe  storeli.w zero, -72(r30)
0018a4  1f020000  addli r4, zero, 0
0018a8  7d900000  xwait r1, 0
0018ac  9f301000  addli r1, zero, 11
0018b0  7d900000  xwait r1, 0
0018b4  1d000000  lock zero, zero
0018b8  abc00000  lui r1, 12
0018bc  810b0000  ds_cfg r23, zero, 0
0018c0  81040002  ds_cfg r9, zero, 1
0018c4  8104001c  ds_cfg r9, zero, 14
0018c8  8104001a  ds_cfg r9, zero, 13
0018cc  41809004  shuffle_coa zero, r1, r9, 2
0018d0  9f101000  addli r1, zero, 9
0018d4  1d100000  unlock zero
0018d8  7d800000  xsignal r1, 0
0018dc  9f100000  addli r1, zero, 1
0018e0  670c1ffe  storeli.w r1, -64(r30)
0018e4  9f201000  addli r1, zero, 10
0018e8  5b8afdff  j -5040
0018ec  1f120000  addli r4, zero, 1
0018f0  9f141000  addli r9, zero, 9
0018f4  e7460ffe  storeli.w zero, -148(r30)
0018f8  670b0ffe  storeli.w zero, -80(r30)
0018fc  670c0ffe  storeli.w zero, -64(r30)
001900  e7090ffe  storeli.w zero, -104(r30)
001904  e70b0ffe  storeli.w zero, -72(r30)
001908  eb528f00  load.d r[6:7], 8(r30)
00190c  9f310000  addli r3, zero, 3
001910  9f780000  addli r17, zero, 7
001914  9f771000  addli r15, zero, 15
001918  1f252000  addli r10, zero, 18
00191c  9f352000  addli r11, zero, 19
001920  9f562000  addli r13, zero, 21
001924  1f662000  addli r12, zero, 22
001928  1f782000  addli r16, zero, 23
00192c  1f073000  addli r14, zero, 24
001930  2bc40000  lui r8, 12
001934  9f030002  addli r7, zero, 256
001938  97304902  sll.d r[2:3], r[19:20], r4
00193c  1f590000  addli r18, zero, 5
001940  7d900400  xwait r9, 0
001944  9f098000  addli r19, zero, 64
001948  1d000900  lock zero, r18
00194c  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
001950  9f420000  addli r5, zero, 4
001954  1f030001  addli r6, zero, 128
001958  15000014  dma_cfg zero, zero, zero, 10
00195c  15004014  dma_cfg zero, zero, r4, 10
001960  15007015  dma_cfg zero, zero, r23, 10
001964  15003014  dma_cfg zero, zero, r3, 10
001968  9f610000  addli r3, zero, 6
00196c  15005014  dma_cfg zero, zero, r5, 10
001970  15002015  dma_cfg zero, zero, r18, 10
001974  15003014  dma_cfg zero, zero, r3, 10
001978  9f011000  addli r3, zero, 8
00197c  15001015  dma_cfg zero, zero, r17, 10
001980  15003014  dma_cfg zero, zero, r3, 10
001984  9f211000  addli r3, zero, 10
001988  15009014  dma_cfg zero, zero, r9, 10
00198c  15003014  dma_cfg zero, zero, r3, 10
001990  9f311000  addli r3, zero, 11
001994  15003014  dma_cfg zero, zero, r3, 10
001998  9f411000  addli r3, zero, 12
00199c  15003014  dma_cfg zero, zero, r3, 10
0019a0  9f511000  addli r3, zero, 13
0019a4  15003014  dma_cfg zero, zero, r3, 10
0019a8  9f611000  addli r3, zero, 14
0019ac  15003014  dma_cfg zero, zero, r3, 10
0019b0  9f012000  addli r3, zero, 16
0019b4  1500f014  dma_cfg zero, zero, r15, 10
0019b8  15003014  dma_cfg zero, zero, r3, 10
0019bc  9f112000  addli r3, zero, 17
0019c0  15003014  dma_cfg zero, zero, r3, 10
0019c4  9f412000  addli r3, zero, 20
0019c8  1500a014  dma_cfg zero, zero, r10, 10
0019cc  1500b014  dma_cfg zero, zero, r11, 10
0019d0  15003014  dma_cfg zero, zero, r3, 10
0019d4  9f113000  addli r3, zero, 25
0019d8  1500d014  dma_cfg zero, zero, r13, 10
0019dc  1500c014  dma_cfg zero, zero, r12, 10
0019e0  15000015  dma_cfg zero, zero, r16, 10
0019e4  1500e014  dma_cfg zero, zero, r14, 10
0019e8  15003014  dma_cfg zero, zero, r3, 10
0019ec  9f213000  addli r3, zero, 26
0019f0  15003014  dma_cfg zero, zero, r3, 10
0019f4  9f313000  addli r3, zero, 27
0019f8  15003014  dma_cfg zero, zero, r3, 10
0019fc  9f413000  addli r3, zero, 28
001a00  15003014  dma_cfg zero, zero, r3, 10
001a04  9f513000  addli r3, zero, 29
001a08  15003014  dma_cfg zero, zero, r3, 10
001a0c  9f613000  addli r3, zero, 30
001a10  15003014  dma_cfg zero, zero, r3, 10
001a14  9f713000  addli r3, zero, 31
001a18  15003014  dma_cfg zero, zero, r3, 10
001a1c  9b110404  ori r3, r8, 64
001a20  15020200  dma_cfg r4, r4, zero, 0
001a24  15020002  dma_cfg r4, zero, zero, 1
001a28  15000004  dma_cfg zero, zero, zero, 2
001a2c  15043007  dma_cfg r8, zero, r19, 3
001a30  15037009  dma_cfg r6, zero, r23, 4
001a34  9503300b  dma_cfg r7, zero, r19, 5
001a38  15000010  dma_cfg zero, zero, zero, 8
001a3c  35000000  dma_run zero
001a40  1500400a  dma_cfg zero, zero, r4, 5
001a44  15000010  dma_cfg zero, zero, zero, 8
001a48  1d100900  unlock r18
001a4c  1d800200  lock zero, r5
001a50  15020200  dma_cfg r4, r4, zero, 0
001a54  15000104  dma_cfg zero, r2, zero, 2
001a58  95813007  dma_cfg r3, r1, r19, 3
001a5c  9f000020  addli r1, zero, 4096
001a60  1f011000  addli r2, zero, 8
001a64  9f113000  addli r3, zero, 25
001a68  15837909  dma_cfg r6, r19, r23, 4
001a6c  9583300b  dma_cfg r7, r1, r19, 5
001a70  9f300000  addli r1, zero, 3
001a74  15000010  dma_cfg zero, zero, zero, 8
001a78  35000000  dma_run zero
001a7c  1500400a  dma_cfg zero, zero, r4, 5
001a80  15000010  dma_cfg zero, zero, zero, 8
001a84  1d900200  unlock r5
001a88  1d000900  lock zero, r18
001a8c  15000014  dma_cfg zero, zero, zero, 10
001a90  15004014  dma_cfg zero, zero, r4, 10
001a94  15007015  dma_cfg zero, zero, r23, 10
001a98  15001014  dma_cfg zero, zero, r1, 10
001a9c  9f600000  addli r1, zero, 6
001aa0  15005014  dma_cfg zero, zero, r5, 10
001aa4  15002015  dma_cfg zero, zero, r18, 10
001aa8  15001014  dma_cfg zero, zero, r1, 10
001aac  9f201000  addli r1, zero, 10
001ab0  15001015  dma_cfg zero, zero, r17, 10
001ab4  15002014  dma_cfg zero, zero, r2, 10
001ab8  15009014  dma_cfg zero, zero, r9, 10
001abc  15001014  dma_cfg zero, zero, r1, 10
001ac0  9f301000  addli r1, zero, 11
001ac4  15001014  dma_cfg zero, zero, r1, 10
001ac8  9f401000  addli r1, zero, 12
001acc  15001014  dma_cfg zero, zero, r1, 10
001ad0  9f501000  addli r1, zero, 13
001ad4  15001014  dma_cfg zero, zero, r1, 10
001ad8  9f601000  addli r1, zero, 14
001adc  15001014  dma_cfg zero, zero, r1, 10
001ae0  9f002000  addli r1, zero, 16
001ae4  1500f014  dma_cfg zero, zero, r15, 10
001ae8  15001014  dma_cfg zero, zero, r1, 10
001aec  9f102000  addli r1, zero, 17
001af0  15001014  dma_cfg zero, zero, r1, 10
001af4  9f402000  addli r1, zero, 20
001af8  1500a014  dma_cfg zero, zero, r10, 10
001afc  1500b014  dma_cfg zero, zero, r11, 10
001b00  15001014  dma_cfg zero, zero, r1, 10
001b04  9f008000  addli r1, zero, 64
001b08  1500d014  dma_cfg zero, zero, r13, 10
001b0c  1500c014  dma_cfg zero, zero, r12, 10
001b10  63064fff  loadli.w r12,  -96(r30)
001b14  15000015  dma_cfg zero, zero, r16, 10
001b18  1500e014  dma_cfg zero, zero, r14, 10
001b1c  15003014  dma_cfg zero, zero, r3, 10
001b20  9f213000  addli r3, zero, 26
001b24  15003014  dma_cfg zero, zero, r3, 10
001b28  9f313000  addli r3, zero, 27
001b2c  15003014  dma_cfg zero, zero, r3, 10
001b30  9f413000  addli r3, zero, 28
001b34  15003014  dma_cfg zero, zero, r3, 10
001b38  9f513000  addli r3, zero, 29
001b3c  15003014  dma_cfg zero, zero, r3, 10
001b40  9f613000  addli r3, zero, 30
001b44  15003014  dma_cfg zero, zero, r3, 10
001b48  9f713000  addli r3, zero, 31
001b4c  15003014  dma_cfg zero, zero, r3, 10
001b50  15020200  dma_cfg r4, r4, zero, 0
001b54  15020002  dma_cfg r4, zero, zero, 1
001b58  15000004  dma_cfg zero, zero, zero, 2
001b5c  15041006  dma_cfg r8, zero, r1, 3
001b60  00340002  core_id r8
001b64  15037009  dma_cfg r6, zero, r23, 4
001b68  9503100a  dma_cfg r7, zero, r1, 5
001b6c  15000010  dma_cfg zero, zero, zero, 8
001b70  35000000  dma_run zero
001b74  1500400a  dma_cfg zero, zero, r4, 5
001b78  15000010  dma_cfg zero, zero, zero, 8
001b7c  1d100900  unlock r18
001b80  7d000100  xsignal r2, 0
001b84  5b37fdff  j -5704
001b88  9f600000  addli r1, zero, 6
001b8c  e7460ffe  storeli.w zero, -148(r30)
001b90  670c0ffe  storeli.w zero, -64(r30)
001b94  e7090ffe  storeli.w zero, -104(r30)
001b98  e70b0ffe  storeli.w zero, -72(r30)
001b9c  1f110000  addli r2, zero, 1
001ba0  1f020000  addli r4, zero, 0
001ba4  7d900000  xwait r1, 0
001ba8  9f201000  addli r1, zero, 10
001bac  7d900000  xwait r1, 0
001bb0  9f402000  addli r1, zero, 20
001bb4  7d900000  xwait r1, 0
001bb8  1d000100  lock zero, r2
001bbc  9f400000  addli r1, zero, 4
001bc0  89849400  mm_cfg r9, r9, r9, 0
001bc4  89802b04  mm_cfg r1, r23, r2, 2
001bc8  9f100000  addli r1, zero, 1
001bcc  290d0010  mm r26, zero, zero, 8
001bd0  670b1ffe  storeli.w r1, -80(r30)
001bd4  9f700000  addli r1, zero, 7
001bd8  1d100100  unlock r2
001bdc  7d800000  xsignal r1, 0
001be0  9f301000  addli r1, zero, 11
001be4  7d800000  xsignal r1, 0
001be8  9f601000  addli r1, zero, 14
001bec  db29fdff  j -5812
001bf0  6342dffe  loadli.w r4,  -148(r30)
001bf4  670b4ffe  storeli.w r4, -80(r30)
001bf8  670c4ffe  storeli.w r4, -64(r30)
001bfc  e7094ffe  storeli.w r4, -104(r30)
001c00  e70b4ffe  storeli.w r4, -72(r30)
001c04  5b27fdff  j -5832
001c08  9f602000  addli r1, zero, 22
001c0c  670b0ffe  storeli.w zero, -80(r30)
001c10  670c0ffe  storeli.w zero, -64(r30)
001c14  e7090ffe  storeli.w zero, -104(r30)
001c18  e70b0ffe  storeli.w zero, -72(r30)
001c1c  1f513000  addli r2, zero, 29
001c20  1f020000  addli r4, zero, 0
001c24  00340002  core_id r8
001c28  9f2b0000  addli r23, zero, 2
001c2c  00200100  mfence { sm }
001c30  7d800000  xsignal r1, 0
001c34  9f003000  addli r1, zero, 24
001c38  7d800000  xsignal r1, 0
001c3c  9f104000  addli r1, zero, 33
001c40  7d000100  xsignal r2, 0
001c44  7d800000  xsignal r1, 0
001c48  9f504000  addli r1, zero, 37
001c4c  7d800000  xsignal r1, 0
001c50  9f105000  addli r1, zero, 41
001c54  7d800000  xsignal r1, 0
001c58  9f100000  addli r1, zero, 1
001c5c  7d100100  xwait r2, 0
001c60  e7461ffe  storeli.w r1, -148(r30)
001c64  9f605000  addli r1, zero, 46
001c68  7d900000  xwait r1, 0
001c6c  634d2fff  loadli.w r26,  -108(r30)
001c70  eb5a0ff6  load.d r[22:23], -160(r30)
001c74  5b19fdff  j -5944
001c78  1f410000  addli r2, zero, 4
001c7c  e7460ffe  storeli.w zero, -148(r30)
001c80  670b0ffe  storeli.w zero, -80(r30)
001c84  670c0ffe  storeli.w zero, -64(r30)
001c88  e70b0ffe  storeli.w zero, -72(r30)
001c8c  ab400000  lui r1, 4
001c90  1f020000  addli r4, zero, 0
001c94  7d100100  xwait r2, 0
001c98  1f710000  addli r2, zero, 7
001c9c  7d100100  xwait r2, 0
001ca0  1d000000  lock zero, zero
001ca4  810b0000  ds_cfg r23, zero, 0
001ca8  81040002  ds_cfg r9, zero, 1
001cac  8104001c  ds_cfg r9, zero, 14
001cb0  8104001a  ds_cfg r9, zero, 13
001cb4  21909002  shuffle_batch zero, r1, r9, 1
001cb8  9f500000  addli r1, zero, 5
001cbc  1d100000  unlock zero
001cc0  7d800000  xsignal r1, 0
001cc4  9f100000  addli r1, zero, 1
001cc8  e7091ffe  storeli.w r1, -104(r30)
001ccc  9f600000  addli r1, zero, 6
001cd0  5b0dfdff  j -6040
001cd4  1f530000  addli r6, zero, 5
001cd8  eb508ff5  load.d r[2:3], -168(r30)
001cdc  9f511000  addli r3, zero, 13
001ce0  e7460ffe  storeli.w zero, -148(r30)
001ce4  670b0ffe  storeli.w zero, -80(r30)
001ce8  670c0ffe  storeli.w zero, -64(r30)
001cec  e7090ffe  storeli.w zero, -104(r30)
001cf0  9f150000  addli r11, zero, 1
001cf4  9f420000  addli r5, zero, 4
001cf8  1f551000  addli r10, zero, 13
001cfc  1f078000  addli r14, zero, 64
001d00  2b480000  lui r16, 4
001d04  9f040001  addli r9, zero, 128
001d08  eb530f00  load.d r[8:9], 0(r30)
001d0c  9f060002  addli r13, zero, 256
001d10  1f261000  addli r12, zero, 10
001d14  9f481000  addli r17, zero, 12
001d18  1f020000  addli r4, zero, 0
001d1c  7d100300  xwait r6, 0
001d20  1d000300  lock zero, r6
001d24  15000014  dma_cfg zero, zero, zero, 10
001d28  97b03002  sll.d r[2:3], r[2:3], r3
001d2c  9f310000  addli r3, zero, 3
001d30  1500b014  dma_cfg zero, zero, r11, 10
001d34  15007015  dma_cfg zero, zero, r23, 10
001d38  8ba01310  add.ul r[2:3], r[8:9], r[2:3]
001d3c  9f730000  addli r7, zero, 7
001d40  1f041000  addli r8, zero, 8
001d44  15003014  dma_cfg zero, zero, r3, 10
001d48  9f710000  addli r3, zero, 7
001d4c  15005014  dma_cfg zero, zero, r5, 10
001d50  15006014  dma_cfg zero, zero, r6, 10
001d54  1500f014  dma_cfg zero, zero, r15, 10
001d58  15003014  dma_cfg zero, zero, r3, 10
001d5c  9f011000  addli r3, zero, 8
001d60  15003014  dma_cfg zero, zero, r3, 10
001d64  9f111000  addli r3, zero, 9
001d68  15003014  dma_cfg zero, zero, r3, 10
001d6c  9f211000  addli r3, zero, 10
001d70  15003014  dma_cfg zero, zero, r3, 10
001d74  9f311000  addli r3, zero, 11
001d78  15003014  dma_cfg zero, zero, r3, 10
001d7c  9f411000  addli r3, zero, 12
001d80  15003014  dma_cfg zero, zero, r3, 10
001d84  9f611000  addli r3, zero, 14
001d88  1500a014  dma_cfg zero, zero, r10, 10
001d8c  15003014  dma_cfg zero, zero, r3, 10
001d90  9f711000  addli r3, zero, 15
001d94  15003014  dma_cfg zero, zero, r3, 10
001d98  9f012000  addli r3, zero, 16
001d9c  15003014  dma_cfg zero, zero, r3, 10
001da0  9f112000  addli r3, zero, 17
001da4  15003014  dma_cfg zero, zero, r3, 10
001da8  9f212000  addli r3, zero, 18
001dac  15003014  dma_cfg zero, zero, r3, 10
001db0  9f312000  addli r3, zero, 19
001db4  15003014  dma_cfg zero, zero, r3, 10
001db8  9f412000  addli r3, zero, 20
001dbc  15003014  dma_cfg zero, zero, r3, 10
001dc0  9f512000  addli r3, zero, 21
001dc4  15003014  dma_cfg zero, zero, r3, 10
001dc8  9f612000  addli r3, zero, 22
001dcc  15003014  dma_cfg zero, zero, r3, 10
001dd0  9f712000  addli r3, zero, 23
001dd4  15003014  dma_cfg zero, zero, r3, 10
001dd8  9f013000  addli r3, zero, 24
001ddc  15003014  dma_cfg zero, zero, r3, 10
001de0  9f113000  addli r3, zero, 25
001de4  15003014  dma_cfg zero, zero, r3, 10
001de8  9f213000  addli r3, zero, 26
001dec  15003014  dma_cfg zero, zero, r3, 10
001df0  9f313000  addli r3, zero, 27
001df4  15003014  dma_cfg zero, zero, r3, 10
001df8  9f413000  addli r3, zero, 28
001dfc  15003014  dma_cfg zero, zero, r3, 10
001e00  9f513000  addli r3, zero, 29
001e04  15003014  dma_cfg zero, zero, r3, 10
001e08  9f613000  addli r3, zero, 30
001e0c  15003014  dma_cfg zero, zero, r3, 10
001e10  9f713000  addli r3, zero, 31
001e14  15003014  dma_cfg zero, zero, r3, 10
001e18  9f010002  addli r3, zero, 256
001e1c  95850500  dma_cfg r11, r11, zero, 0
001e20  95050002  dma_cfg r11, zero, zero, 1
001e24  15000004  dma_cfg zero, zero, zero, 2
001e28  1508e006  dma_cfg r16, zero, r14, 3
001e2c  95047009  dma_cfg r9, zero, r23, 4
001e30  9501e00a  dma_cfg r3, zero, r14, 5
001e34  9b110804  ori r3, r16, 64
001e38  1f380000  addli r16, zero, 3
001e3c  15000010  dma_cfg zero, zero, zero, 8
001e40  35000000  dma_run zero
001e44  1500b00a  dma_cfg zero, zero, r11, 5
001e48  15000010  dma_cfg zero, zero, zero, 8
001e4c  1d100300  unlock r6
001e50  1d800200  lock zero, r5
001e54  95850500  dma_cfg r11, r11, zero, 0
001e58  15000104  dma_cfg zero, r2, zero, 2
001e5c  9581e006  dma_cfg r3, r1, r14, 3
001e60  9f101000  addli r1, zero, 9
001e64  9f311000  addli r3, zero, 11
001e68  95047709  dma_cfg r9, r14, r23, 4
001e6c  9586e40a  dma_cfg r13, r9, r14, 5
001e70  15000010  dma_cfg zero, zero, zero, 8
001e74  35000000  dma_run zero
001e78  1500b00a  dma_cfg zero, zero, r11, 5
001e7c  15000010  dma_cfg zero, zero, zero, 8
001e80  1d900200  unlock r5
001e84  1d000300  lock zero, r6
001e88  15000014  dma_cfg zero, zero, zero, 10
001e8c  1500b014  dma_cfg zero, zero, r11, 10
001e90  15007015  dma_cfg zero, zero, r23, 10
001e94  15000015  dma_cfg zero, zero, r16, 10
001e98  15005014  dma_cfg zero, zero, r5, 10
001e9c  15006014  dma_cfg zero, zero, r6, 10
001ea0  1500f014  dma_cfg zero, zero, r15, 10
001ea4  15007014  dma_cfg zero, zero, r7, 10
001ea8  9f631000  addli r7, zero, 14
001eac  15008014  dma_cfg zero, zero, r8, 10
001eb0  1f741000  addli r8, zero, 15
001eb4  15001014  dma_cfg zero, zero, r1, 10
001eb8  9f302000  addli r1, zero, 19
001ebc  1500c014  dma_cfg zero, zero, r12, 10
001ec0  1f162000  addli r12, zero, 17
001ec4  15003014  dma_cfg zero, zero, r3, 10
001ec8  15001015  dma_cfg zero, zero, r17, 10
001ecc  9f282000  addli r17, zero, 18
001ed0  1500a014  dma_cfg zero, zero, r10, 10
001ed4  1f052000  addli r10, zero, 16
001ed8  15007014  dma_cfg zero, zero, r7, 10
001edc  15008014  dma_cfg zero, zero, r8, 10
001ee0  1500a014  dma_cfg zero, zero, r10, 10
001ee4  1500c014  dma_cfg zero, zero, r12, 10
001ee8  15001015  dma_cfg zero, zero, r17, 10
001eec  15001014  dma_cfg zero, zero, r1, 10
001ef0  9f402000  addli r1, zero, 20
001ef4  15001014  dma_cfg zero, zero, r1, 10
001ef8  9f502000  addli r1, zero, 21
001efc  15001014  dma_cfg zero, zero, r1, 10
001f00  9f602000  addli r1, zero, 22
001f04  15001014  dma_cfg zero, zero, r1, 10
001f08  9f702000  addli r1, zero, 23
001f0c  15001014  dma_cfg zero, zero, r1, 10
001f10  9f003000  addli r1, zero, 24
001f14  15001014  dma_cfg zero, zero, r1, 10
001f18  9f103000  addli r1, zero, 25
001f1c  15001014  dma_cfg zero, zero, r1, 10
001f20  9f203000  addli r1, zero, 26
001f24  15001014  dma_cfg zero, zero, r1, 10
001f28  9f303000  addli r1, zero, 27
001f2c  15001014  dma_cfg zero, zero, r1, 10
001f30  9f403000  addli r1, zero, 28
001f34  15001014  dma_cfg zero, zero, r1, 10
001f38  9f503000  addli r1, zero, 29
001f3c  15001014  dma_cfg zero, zero, r1, 10
001f40  9f603000  addli r1, zero, 30
001f44  15001014  dma_cfg zero, zero, r1, 10
001f48  9f703000  addli r1, zero, 31
001f4c  15001014  dma_cfg zero, zero, r1, 10
001f50  ab400000  lui r1, 4
001f54  95850500  dma_cfg r11, r11, zero, 0
001f58  95050002  dma_cfg r11, zero, zero, 1
001f5c  15000004  dma_cfg zero, zero, zero, 2
001f60  9500e006  dma_cfg r1, zero, r14, 3
001f64  9730b902  sll.d r[2:3], r[19:20], r11
001f68  1f393000  addli r18, zero, 27
001f6c  9f493000  addli r19, zero, 28
001f70  95047009  dma_cfg r9, zero, r23, 4
001f74  9506e00a  dma_cfg r13, zero, r14, 5
001f78  eb560f01  load.d r[14:15], 16(r30)
001f7c  15000010  dma_cfg zero, zero, zero, 8
001f80  35000000  dma_run zero
001f84  1500b00a  dma_cfg zero, zero, r11, 5
001f88  15000010  dma_cfg zero, zero, zero, 8
001f8c  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001f90  1f571000  addli r14, zero, 13
001f94  1d100300  unlock r6
001f98  7d800200  xsignal r5, 0
001f9c  9f068000  addli r13, zero, 64
001fa0  7d100700  xwait r14, 0
001fa4  1d000300  lock zero, r6
001fa8  15000014  dma_cfg zero, zero, zero, 10
001fac  1500b014  dma_cfg zero, zero, r11, 10
001fb0  15007015  dma_cfg zero, zero, r23, 10
001fb4  15000015  dma_cfg zero, zero, r16, 10
001fb8  1f780000  addli r16, zero, 7
001fbc  15005014  dma_cfg zero, zero, r5, 10
001fc0  15006014  dma_cfg zero, zero, r6, 10
001fc4  1500f014  dma_cfg zero, zero, r15, 10
001fc8  15000015  dma_cfg zero, zero, r16, 10
001fcc  1f081000  addli r16, zero, 8
001fd0  15000015  dma_cfg zero, zero, r16, 10
001fd4  1f181000  addli r16, zero, 9
001fd8  15000015  dma_cfg zero, zero, r16, 10
001fdc  1f281000  addli r16, zero, 10
001fe0  15000015  dma_cfg zero, zero, r16, 10
001fe4  1f283000  addli r16, zero, 26
001fe8  15003014  dma_cfg zero, zero, r3, 10
001fec  9f411000  addli r3, zero, 12
001ff0  15003014  dma_cfg zero, zero, r3, 10
001ff4  9f312000  addli r3, zero, 19
001ff8  1500e014  dma_cfg zero, zero, r14, 10
001ffc  1f173000  addli r14, zero, 25
002000  15007014  dma_cfg zero, zero, r7, 10
002004  9f732000  addli r7, zero, 23
002008  15008014  dma_cfg zero, zero, r8, 10
00200c  1f542000  addli r8, zero, 21
002010  1500a014  dma_cfg zero, zero, r10, 10
002014  1f653000  addli r10, zero, 30
002018  1500c014  dma_cfg zero, zero, r12, 10
00201c  1f262000  addli r12, zero, 18
002020  15001015  dma_cfg zero, zero, r17, 10
002024  9f080002  addli r17, zero, 256
002028  15003014  dma_cfg zero, zero, r3, 10
00202c  9f412000  addli r3, zero, 20
002030  15003014  dma_cfg zero, zero, r3, 10
002034  9f612000  addli r3, zero, 22
002038  15008014  dma_cfg zero, zero, r8, 10
00203c  15003014  dma_cfg zero, zero, r3, 10
002040  9f013000  addli r3, zero, 24
002044  15007014  dma_cfg zero, zero, r7, 10
002048  15003014  dma_cfg zero, zero, r3, 10
00204c  9f513000  addli r3, zero, 29
002050  1500e014  dma_cfg zero, zero, r14, 10
002054  15000015  dma_cfg zero, zero, r16, 10
002058  15002015  dma_cfg zero, zero, r18, 10
00205c  15003015  dma_cfg zero, zero, r19, 10
002060  15003014  dma_cfg zero, zero, r3, 10
002064  9f713000  addli r3, zero, 31
002068  1500a014  dma_cfg zero, zero, r10, 10
00206c  15003014  dma_cfg zero, zero, r3, 10
002070  ab010100  lui r3, 16
002074  95850500  dma_cfg r11, r11, zero, 0
002078  95050002  dma_cfg r11, zero, zero, 1
00207c  15000004  dma_cfg zero, zero, zero, 2
002080  9501d006  dma_cfg r3, zero, r13, 3
002084  9b910104  ori r3, r3, 64
002088  95047009  dma_cfg r9, zero, r23, 4
00208c  9508b00a  dma_cfg r17, zero, r11, 5
002090  15000010  dma_cfg zero, zero, zero, 8
002094  35000000  dma_run zero
002098  1500b00a  dma_cfg zero, zero, r11, 5
00209c  15000010  dma_cfg zero, zero, zero, 8
0020a0  1d100300  unlock r6
0020a4  1d800200  lock zero, r5
0020a8  95850500  dma_cfg r11, r11, zero, 0
0020ac  15000104  dma_cfg zero, r2, zero, 2
0020b0  9581d006  dma_cfg r3, r1, r13, 3
0020b4  1f310000  addli r2, zero, 3
0020b8  9f511000  addli r3, zero, 13
0020bc  9f000002  addli r1, zero, 256
0020c0  95847609  dma_cfg r9, r13, r23, 4
0020c4  9588b40a  dma_cfg r17, r9, r11, 5
0020c8  15000010  dma_cfg zero, zero, zero, 8
0020cc  35000000  dma_run zero
0020d0  1500b00a  dma_cfg zero, zero, r11, 5
0020d4  15000010  dma_cfg zero, zero, zero, 8
0020d8  1d900200  unlock r5
0020dc  1d000300  lock zero, r6
0020e0  15000014  dma_cfg zero, zero, zero, 10
0020e4  1500b014  dma_cfg zero, zero, r11, 10
0020e8  15007015  dma_cfg zero, zero, r23, 10
0020ec  15002014  dma_cfg zero, zero, r2, 10
0020f0  1f710000  addli r2, zero, 7
0020f4  15005014  dma_cfg zero, zero, r5, 10
0020f8  15006014  dma_cfg zero, zero, r6, 10
0020fc  1500f014  dma_cfg zero, zero, r15, 10
002100  15002014  dma_cfg zero, zero, r2, 10
002104  1f011000  addli r2, zero, 8
002108  15002014  dma_cfg zero, zero, r2, 10
00210c  1f111000  addli r2, zero, 9
002110  15002014  dma_cfg zero, zero, r2, 10
002114  1f211000  addli r2, zero, 10
002118  15002014  dma_cfg zero, zero, r2, 10
00211c  1f311000  addli r2, zero, 11
002120  15002014  dma_cfg zero, zero, r2, 10
002124  1f411000  addli r2, zero, 12
002128  15002014  dma_cfg zero, zero, r2, 10
00212c  15003014  dma_cfg zero, zero, r3, 10
002130  9f611000  addli r3, zero, 14
002134  15003014  dma_cfg zero, zero, r3, 10
002138  9f711000  addli r3, zero, 15
00213c  15003014  dma_cfg zero, zero, r3, 10
002140  9f012000  addli r3, zero, 16
002144  15003014  dma_cfg zero, zero, r3, 10
002148  9f112000  addli r3, zero, 17
00214c  15003014  dma_cfg zero, zero, r3, 10
002150  9f312000  addli r3, zero, 19
002154  1500c014  dma_cfg zero, zero, r12, 10
002158  15003014  dma_cfg zero, zero, r3, 10
00215c  9f412000  addli r3, zero, 20
002160  63064fff  loadli.w r12,  -96(r30)
002164  15003014  dma_cfg zero, zero, r3, 10
002168  9f612000  addli r3, zero, 22
00216c  15008014  dma_cfg zero, zero, r8, 10
002170  00340002  core_id r8
002174  15003014  dma_cfg zero, zero, r3, 10
002178  9f013000  addli r3, zero, 24
00217c  15007014  dma_cfg zero, zero, r7, 10
002180  15003014  dma_cfg zero, zero, r3, 10
002184  9f513000  addli r3, zero, 29
002188  1500e014  dma_cfg zero, zero, r14, 10
00218c  15000015  dma_cfg zero, zero, r16, 10
002190  15002015  dma_cfg zero, zero, r18, 10
002194  15003015  dma_cfg zero, zero, r19, 10
002198  15003014  dma_cfg zero, zero, r3, 10
00219c  9f713000  addli r3, zero, 31
0021a0  1500a014  dma_cfg zero, zero, r10, 10
0021a4  15003014  dma_cfg zero, zero, r3, 10
0021a8  ab010100  lui r3, 16
0021ac  95850500  dma_cfg r11, r11, zero, 0
0021b0  95050002  dma_cfg r11, zero, zero, 1
0021b4  15000004  dma_cfg zero, zero, zero, 2
0021b8  9501d006  dma_cfg r3, zero, r13, 3
0021bc  95047009  dma_cfg r9, zero, r23, 4
0021c0  9500b00a  dma_cfg r1, zero, r11, 5
0021c4  9f100000  addli r1, zero, 1
0021c8  15000010  dma_cfg zero, zero, zero, 8
0021cc  35000000  dma_run zero
0021d0  e70b1ffe  storeli.w r1, -72(r30)
0021d4  1500b00a  dma_cfg zero, zero, r11, 5
0021d8  15000010  dma_cfg zero, zero, zero, 8
0021dc  1d100300  unlock r6
0021e0  7d000100  xsignal r2, 0
0021e4  5b6bfcff  j -7336
0021e8  7d000000  xsignal zero, 0
0021ec  bb600400  bneq r8, zero, 56
0021f0  9f200000  addli r1, zero, 2
0021f4  7d100000  xwait zero, 0
0021f8  7d100000  xwait zero, 0
0021fc  7d100000  xwait zero, 0
002200  7d100000  xwait zero, 0
002204  7d100000  xwait zero, 0
002208  7d100000  xwait zero, 0
00220c  7d100000  xwait zero, 0
002210  7d100000  xwait zero, 0
002214  1d800000  lock zero, r1
002218  0d000020  ew_cfg zero, zero, zero, 16
00221c  1d900000  unlock r1
002220  7d400000  xsignal_mode_cfg zero
002224  9f8eae01  addli sp, sp, 208
002228  00a00300  mfence { lm, sm, gm }
00222c  00100000  exit
002230  00100000  exit
002234  00100000  exit
002238  00100000  exit
00223c  00100000  exit
002240  00100000  exit
002244  00100000  exit
002248  00100000  exit
00224c  00100000  exit
002250  00100000  exit
002254  00100000  exit
002258  00100000  exit
00225c  00100000  exit
002260  00100000  exit
002264  00100000  exit
002268  00100000  exit
00226c  00100000  exit
002270  00100000  exit
002274  00100000  exit
002278  00100000  exit
00227c  00100000  exit
002280  00100000  exit
002284  00100000  exit
002288  00100000  exit
00228c  00100000  exit
002290  00100000  exit
002294  00100000  exit
002298  00100000  exit
00229c  00100000  exit
0022a0  00100000  exit
0022a4  00100000  exit
0022a8  00100000  exit
0022ac  00100000  exit
0022b0  00100000  exit
0022b4  00100000  exit
0022b8  00100000  exit
0022bc  00100000  exit
0022c0  00100000  exit
0022c4  00100000  exit
0022c8  00100000  exit
0022cc  00100000  exit
0022d0  00100000  exit
0022d4  00100000  exit
0022d8  00100000  exit
0022dc  00100000  exit
0022e0  00100000  exit
0022e4  00100000  exit
0022e8  00100000  exit
0022ec  00100000  exit
0022f0  00100000  exit
0022f4  00100000  exit
0022f8  00100000  exit
0022fc  00100000  exit
002300  00100000  exit
002304  00100000  exit
002308  00100000  exit
00230c  00100000  exit
002310  00100000  exit
002314  00100000  exit
002318  00100000  exit
00231c  00100000  exit
002320  00100000  exit
002324  00100000  exit
002328  00100000  exit
00232c  00100000  exit
002330  00100000  exit
002334  00100000  exit
002338  00100000  exit
00233c  00100000  exit
002340  00100000  exit
002344  00100000  exit
002348  00100000  exit
00234c  00100000  exit
002350  00100000  exit
002354  00100000  exit
002358  00100000  exit
00235c  00100000  exit
002360  00100000  exit
002364  00100000  exit
002368  00100000  exit
00236c  00100000  exit
002370  00100000  exit
002374  00100000  exit
002378  00100000  exit
00237c  00100000  exit
002380  00100000  exit
002384  00100000  exit
002388  00100000  exit
00238c  00100000  exit
002390  00100000  exit
002394  00100000  exit
002398  00100000  exit
00239c  00100000  exit
0023a0  00100000  exit
0023a4  00100000  exit
0023a8  00100000  exit
0023ac  00100000  exit
0023b0  00100000  exit
0023b4  00100000  exit
0023b8  00100000  exit
0023bc  00100000  exit
0023c0  00100000  exit
0023c4  00100000  exit
0023c8  00100000  exit
0023cc  00100000  exit
0023d0  00100000  exit
0023d4  00100000  exit
0023d8  00100000  exit
0023dc  00100000  exit
0023e0  00100000  exit
0023e4  00100000  exit
0023e8  00100000  exit
0023ec  00100000  exit
0023f0  00100000  exit
0023f4  00100000  exit
0023f8  00100000  exit
0023fc  00100000  exit
002400  00100000  exit
002404  00100000  exit
002408  00100000  exit
00240c  00100000  exit
002410  00100000  exit
002414  00100000  exit
002418  00100000  exit
00241c  00100000  exit
002420  00100000  exit
002424  00100000  exit
002428  00100000  exit
00242c  00100000  exit
002430  00100000  exit
002434  00100000  exit
002438  00100000  exit
00243c  00100000  exit
002440  00100000  exit
002444  00100000  exit
002448  00100000  exit
00244c  00100000  exit
002450  00100000  exit
002454  00100000  exit
002458  00100000  exit
00245c  00100000  exit
002460  00100000  exit
002464  00100000  exit
002468  00100000  exit
00246c  00100000  exit
