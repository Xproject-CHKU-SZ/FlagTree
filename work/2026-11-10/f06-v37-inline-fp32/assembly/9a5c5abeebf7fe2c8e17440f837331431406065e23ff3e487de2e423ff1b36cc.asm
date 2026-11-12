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
0000b4  9f8edefd  addli sp, sp, -280
0000b8  9f100000  addli r1, zero, 1
0000bc  803b0002  core_id r23
0000c0  1f8fbe01  addli r30, sp, 216
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7900b00  beq r23, zero, 36
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
00024c  4b4f110e  ble.s r2, r1, 8144
000250  b3920028  sext_int2long r[6:7], r1
000254  ab000100  lui r1, 16
000258  33110128  sext_int2long r[3:4], r2
00025c  9f250000  addli r11, zero, 2
000260  1f727000  addli r4, zero, 63
000264  1f0b8000  addli r22, zero, 64
000268  9f630000  addli r7, zero, 6
00026c  2b490000  lui r18, 4
000270  1b9d0010  ori r26, r1, 256
000274  ab20373d  lui r1, 250738
000278  733c2ff2  store.d r[3:4], -200(r30)
00027c  2b410100  lui r2, 20
000280  9b903071  ori r1, r1, 1811
000284  e748afff  storeli.w r26, -116(r30)
000288  67031ffe  storeli.w r1, -208(r30)
00028c  9b100110  ori r1, r2, 256
000290  2bc10100  lui r2, 28
000294  67481ffe  storeli.w r1, -124(r30)
000298  ab800100  lui r1, 24
00029c  9b1d0110  ori r27, r2, 256
0002a0  2bf1ff7f  lui r2, 524287
0002a4  9b900010  ori r1, r1, 256
0002a8  1b1ef1ff  ori r28, r2, 4095
0002ac  2b414c3f  lui r2, 259268
0002b0  670dbfff  storeli.w r27, -48(r30)
0002b4  67081ffe  storeli.w r1, -128(r30)
0002b8  ab600200  lui r1, 38
0002bc  e74acfff  storeli.w r28, -84(r30)
0002c0  9b990010  ori r19, r1, 256
0002c4  aba00200  lui r1, 42
0002c8  9b900010  ori r1, r1, 256
0002cc  67493fff  storeli.w r19, -108(r30)
0002d0  67431ffe  storeli.w r1, -204(r30)
0002d4  9b10a122  ori r1, r2, 554
0002d8  2b810200  lui r2, 40
0002dc  e7421ffe  storeli.w r1, -212(r30)
0002e0  abe00200  lui r1, 46
0002e4  1b9a0010  ori r20, r1, 256
0002e8  9b102184  ori r1, r2, 2114
0002ec  2bf17f7f  lui r2, 522239
0002f0  e7021ffe  storeli.w r1, -216(r30)
0002f4  ab700000  lui r1, 7
0002f8  67444fff  storeli.w r20, -188(r30)
0002fc  9b90f0ff  ori r1, r1, 4095
000300  e70a1ffe  storeli.w r1, -88(r30)
000304  9b10f1ff  ori r1, r2, 4095
000308  e7081ffe  storeli.w r1, -120(r30)
00030c  5b0e0000  j 112
000310  9f300000  addli r1, zero, 3
000314  00200100  mfence { sm }
000318  803b0002  core_id r23
00031c  9f250000  addli r11, zero, 2
000320  1f727000  addli r4, zero, 63
000324  1f0b8000  addli r22, zero, 64
000328  2b490000  lui r18, 4
00032c  7d800000  xsignal r1, 0
000330  9f402000  addli r1, zero, 20
000334  7d800000  xsignal r1, 0
000338  9f304000  addli r1, zero, 35
00033c  7d800000  xsignal r1, 0
000340  9f704000  addli r1, zero, 39
000344  7d800000  xsignal r1, 0
000348  9f305000  addli r1, zero, 43
00034c  7d800000  xsignal r1, 0
000350  9f106000  addli r1, zero, 49
000354  7d800000  xsignal r1, 0
000358  634d1fff  loadli.w r26,  -116(r30)
00035c  e3492fff  loadli.w r19,  -108(r30)
000360  634a8ffe  loadli.w r20,  -188(r30)
000364  37ef0b02  beq r23, zero, 2008
000368  eb528ff5  load.d r[6:7], -168(r30)
00036c  eb508ff3  load.d r[2:3], -200(r30)
000370  a7920200  addli.d r[6:7], r[6:7], 1
000374  93b01204  setlt.sl r1, r[6:7], r[2:3]
000378  b79a000e  beq r1, zero, 7844
00037c  2b410200  lui r2, 36
000380  e3006f00  loadli.w r1,  48(r30)
000384  733c5ff4  store.d r[6:7], -168(r30)
000388  9b111110  ori r3, r2, 257
00038c  9b1c0110  ori r25, r2, 256
000390  8b901230  div.s r1, r5, r1
000394  670f3ffe  storeli.w r3, -16(r30)
000398  9b112110  ori r3, r2, 258
00039c  1b113110  ori r2, r2, 259
0003a0  e70d9fff  storeli.w r25, -40(r30)
0003a4  674f2ffe  storeli.w r2, -12(r30)
0003a8  63415f00  loadli.w r2,  44(r30)
0003ac  e74d3ffe  storeli.w r3, -36(r30)
0003b0  9f010100  addli r3, r2, 0
0003b4  0b913038  mod.s r2, r1, r3
0003b8  8b903030  div.s r1, r1, r3
0003bc  ab010200  lui r3, 32
0003c0  9b920110  ori r5, r3, 256
0003c4  1b963110  ori r12, r3, 259
0003c8  1b9c2110  ori r24, r3, 258
0003cc  670e5ffe  storeli.w r5, -32(r30)
0003d0  9b921110  ori r5, r3, 257
0003d4  ab210200  lui r3, 34
0003d8  670acffe  storeli.w r12, -96(r30)
0003dc  e70e5ffe  storeli.w r5, -24(r30)
0003e0  9b920110  ori r5, r3, 256
0003e4  67095ffe  storeli.w r5, -112(r30)
0003e8  9b921110  ori r5, r3, 257
0003ec  e74e5ffe  storeli.w r5, -20(r30)
0003f0  9b922110  ori r5, r3, 258
0003f4  9b913110  ori r3, r3, 259
0003f8  674e3ffe  storeli.w r3, -28(r30)
0003fc  b3010228  zext_int2long r[4:5], r4
000400  674d5ffe  storeli.w r5, -44(r30)
000404  b3020b28  zext_int2long r[6:7], r22
000408  733c3ff6  store.d r[4:5], -136(r30)
00040c  b3910028  sext_int2long r[4:5], r1
000410  9f500000  addli r1, zero, 5
000414  733c5ffe  store.d r[6:7], -8(r30)
000418  73343ff4  store.d r[4:5], -184(r30)
00041c  33110128  sext_int2long r[3:4], r2
000420  bbf51b00  bneq r23, r1, 380
000424  1f320000  addli r4, zero, 3
000428  9f727000  addli r5, zero, 63
00042c  17317102  sll.d r[3:4], r[3:4], r7
000430  9f000000  addli r1, zero, 0
000434  7d100200  xwait r4, 0
000438  1d800500  lock zero, r11
00043c  0d000002  ew_cfg zero, zero, zero, 1
000440  0d100000  ewcoeff_cfg zero, zero, zero, 0
000444  0d800204  ew_cfg zero, r5, zero, 2
000448  0d0b0006  ew_cfg r22, zero, zero, 3
00044c  4d300000  ssaux zero, 0
000450  1d900500  unlock r11
000454  73382ff4  store.d r[3:4], -176(r30)
000458  1f411000  addli r2, zero, 12
00045c  ab010100  lui r3, 16
000460  7d100100  xwait r2, 0
000464  1f611000  addli r2, zero, 14
000468  7d100100  xwait r2, 0
00046c  1d800500  lock zero, r11
000470  2b01803f  lui r2, 260096
000474  0d000002  ew_cfg zero, zero, zero, 1
000478  0d110100  ewcoeff_cfg r2, r2, zero, 0
00047c  1f110000  addli r2, zero, 1
000480  0d800204  ew_cfg zero, r5, zero, 2
000484  0d010006  ew_cfg r2, zero, zero, 3
000488  0b91a011  add.s r2, r1, r26
00048c  9f800002  addli r1, r1, 256
000490  2d013100  dsmadd r2, r2, r3, 0
000494  bbdf20ff  bneq r1, r18, -12
000498  9f501000  addli r1, zero, 13
00049c  67460ffe  storeli.w zero, -156(r30)
0004a0  e70b0ffe  storeli.w zero, -72(r30)
0004a4  e70c0ffe  storeli.w zero, -56(r30)
0004a8  670b0ffe  storeli.w zero, -80(r30)
0004ac  670c0ffe  storeli.w zero, -64(r30)
0004b0  9f71f00f  addli r3, zero, 2047
0004b4  1f020000  addli r4, zero, 0
0004b8  1d900500  unlock r11
0004bc  7d800000  xsignal r1, 0
0004c0  9f202000  addli r1, zero, 18
0004c4  7d800000  xsignal r1, 0
0004c8  9f302000  addli r1, zero, 19
0004cc  7d800000  xsignal r1, 0
0004d0  9f602000  addli r1, zero, 22
0004d4  7d900000  xwait r1, 0
0004d8  1d800500  lock zero, r11
0004dc  0d000002  ew_cfg zero, zero, zero, 1
0004e0  e3006ffe  loadli.w r1,  -208(r30)
0004e4  8d100000  ewcoeff_cfg r1, zero, zero, 0
0004e8  0d800104  ew_cfg zero, r3, zero, 2
0004ec  8d050006  ew_cfg r11, zero, zero, 3
0004f0  8d850526  ew_cfg r11, r11, zero, 19
0004f4  63410fff  loadli.w r2,  -124(r30)
0004f8  4d51ad01  hp_ssmul r2, r26, r26, 0
0004fc  1f512000  addli r2, zero, 21
000500  0d000026  ew_cfg zero, zero, zero, 19
000504  1d900500  unlock r11
000508  7d000100  xsignal r2, 0
00050c  1f013000  addli r2, zero, 24
000510  7d100100  xwait r2, 0
000514  1d800500  lock zero, r11
000518  0d000002  ew_cfg zero, zero, zero, 1
00051c  0d101000  ewcoeff_cfg zero, zero, r1, 0
000520  0d800104  ew_cfg zero, r3, zero, 2
000524  8d050006  ew_cfg r11, zero, zero, 3
000528  8d85b526  ew_cfg r11, r11, r11, 19
00052c  e3000fff  loadli.w r1,  -128(r30)
000530  ad10ad01  dsmul r1, r26, r26, 0
000534  9f701000  addli r1, zero, 15
000538  0d000026  ew_cfg zero, zero, zero, 19
00053c  1d900500  unlock r11
000540  7d800000  xsignal r1, 0
000544  9f702000  addli r1, zero, 23
000548  7d800000  xsignal r1, 0
00054c  3d000000  xfence
000550  9f70f001  addli r1, zero, 255
000554  00a00300  mfence { lm, sm, gm }
000558  80a20004  csr_set csr5, r1
00055c  00e00200  sync_core
000560  b7890b02  beq r23, zero, 1632
000564  bb6b0202  bneq r4, zero, 1784
000568  e3006fff  loadli.w r1,  -80(r30)
00056c  bbed0002  bneq r1, zero, 1912
000570  e340cffe  loadli.w r1,  -156(r30)
000574  bbef0002  bneq r1, zero, 2040
000578  e3007fff  loadli.w r1,  -72(r30)
00057c  bbe10004  bneq r1, zero, 2168
000580  9f500000  addli r1, zero, 5
000584  b7e31b04  beq r23, r1, 2296
000588  e3008fff  loadli.w r1,  -64(r30)
00058c  bbe50004  bneq r1, zero, 2424
000590  e3009fff  loadli.w r1,  -56(r30)
000594  bbe70004  bneq r1, zero, 2552
000598  5b4e0100  j 2672
00059c  97307102  sll.d r[2:3], r[3:4], r7
0005a0  67460ffe  storeli.w zero, -156(r30)
0005a4  73381ff4  store.d r[2:3], -176(r30)
0005a8  9f300000  addli r1, zero, 3
0005ac  3f9c7009  blt.s r1, r23, 4868
0005b0  9f100000  addli r1, zero, 1
0005b4  b7bd1b08  beq r23, r1, 4972
0005b8  b7ebbb0a  beq r23, r11, 5880
0005bc  9f300000  addli r1, zero, 3
0005c0  3bf91b0a  bneq r23, r1, 5724
0005c4  9f711000  addli r3, zero, 15
0005c8  b3000028  zext_int2long r[2:3], zero
0005cc  7d900100  xwait r3, 0
0005d0  9f713000  addli r3, zero, 31
0005d4  7d900100  xwait r3, 0
0005d8  3d000000  xfence
0005dc  a7810000  addli.d r[4:5], r[2:3], 0
0005e0  00a00300  mfence { lm, sm, gm }
0005e4  eb598fff  load.d r[20:21], -8(r30)
0005e8  97b27102  sll.d r[6:7], r[4:5], r7
0005ec  a7830000  addli.d r[8:9], r[2:3], 0
0005f0  8ba45310  add.ul r[10:11], r[8:9], r[6:7]
0005f4  a7831300  addli.d r[8:9], r[8:9], 8
0005f8  9bb42400  slli r9, r9, 2
0005fc  13a53303  setneq.d r10, r[8:9], r[20:21]
000600  8b95a411  add.s r11, r9, r26
000604  8b94b411  add.s r9, r9, r27
000608  6fc6c500  loads.w r12, 12(r11)
00060c  efc60500  loads.w r13, 0(r11)
000610  6fc74500  loads.w r14, 4(r11)
000614  efc78500  loads.w r15, 8(r11)
000618  6fc80501  loads.w r16, 16(r11)
00061c  efc84501  loads.w r17, 20(r11)
000620  6fc98501  loads.w r18, 24(r11)
000624  efc5c501  loads.w r11, 28(r11)
000628  1706c601  and r12, r12, r28
00062c  9785c501  and r11, r11, r28
000630  73e6c400  stores.w r12, 12(r9)
000634  1786c601  and r12, r13, r28
000638  9706c701  and r13, r14, r28
00063c  1787c701  and r14, r15, r28
000640  9707c801  and r15, r16, r28
000644  1788c801  and r16, r17, r28
000648  9708c901  and r17, r18, r28
00064c  73eeb400  stores.w r11, 28(r9)
000650  73e4e400  stores.w r14, 8(r9)
000654  73e2d400  stores.w r13, 4(r9)
000658  73e0c400  stores.w r12, 0(r9)
00065c  73ec1401  stores.w r17, 24(r9)
000660  73ea0401  stores.w r16, 20(r9)
000664  73e8f400  stores.w r15, 16(r9)
000668  3b2e05fe  bneq r10, zero, -120
00066c  eb528ff7  load.d r[6:7], -136(r30)
000670  9f630000  addli r7, zero, 6
000674  93a25104  setlt.ul r5, r[4:5], r[6:7]
000678  a7910100  addli.d r[4:5], r[4:5], 1
00067c  bbbd02fe  bneq r5, zero, -148
000680  9f002000  addli r1, zero, 16
000684  00200100  mfence { sm }
000688  b3010028  zext_int2long r[4:5], zero
00068c  7d800000  xsignal r1, 0
000690  9f103000  addli r1, zero, 25
000694  7d800000  xsignal r1, 0
000698  7d900000  xwait r1, 0
00069c  9f304000  addli r1, zero, 35
0006a0  7d900000  xwait r1, 0
0006a4  3d000000  xfence
0006a8  00a00300  mfence { lm, sm, gm }
0006ac  73343ffc  store.d r[4:5], -56(r30)
0006b0  6341afff  loadli.w r2,  -44(r30)
0006b4  97b27102  sll.d r[6:7], r[4:5], r7
0006b8  9f730000  addli r7, zero, 7
0006bc  eb548ffc  load.d r[10:11], -56(r30)
0006c0  e340dfff  loadli.w r1,  -20(r30)
0006c4  e34bcfff  loadli.w r23,  -28(r30)
0006c8  eb5a8fff  load.d r[22:23], -8(r30)
0006cc  630d2fff  loadli.w r26,  -112(r30)
0006d0  2b0a807f  lui r20, 522240
0006d4  97b37102  sll.d r[8:9], r[4:5], r7
0006d8  8ba55410  add.ul r[12:13], r[10:11], r[6:7]
0006dc  8ba77410  add.ul r[16:17], r[10:11], r[8:9]
0006e0  a7c40400  addli.d r[10:11], r[10:11], 4
0006e4  9bb52500  slli r11, r11, 2
0006e8  13a95403  setneq.d r18, r[10:11], r[22:23]
0006ec  8b98a711  add.s r17, r15, r26
0006f0  8b991710  add.s r19, r15, r1
0006f4  8b95b511  add.s r11, r11, r27
0006f8  6fc60500  loads.w r12, 0(r11)
0006fc  efc64500  loads.w r13, 4(r11)
000700  6fc78500  loads.w r14, 8(r11)
000704  efc5c500  loads.w r11, 12(r11)
000708  1306ca04  setlt.u r12, r20, r12
00070c  9306da04  setlt.u r13, r20, r13
000710  1307ea04  setlt.u r14, r20, r14
000714  9305ba04  setlt.u r11, r20, r11
000718  73c0c800  stores.b r12, 0(r17)
00071c  0b962710  add.s r12, r15, r2
000720  8b977711  add.s r15, r15, r23
000724  73c0d900  stores.b r13, 0(r19)
000728  7340e600  stores.b r14, 0(r12)
00072c  73c0b700  stores.b r11, 0(r15)
000730  bb2e09fe  bneq r18, zero, -88
000734  eb528ff7  load.d r[6:7], -136(r30)
000738  9f630000  addli r7, zero, 6
00073c  93a25104  setlt.ul r5, r[4:5], r[6:7]
000740  a7910100  addli.d r[4:5], r[4:5], 1
000744  bbcd02fe  bneq r5, zero, -144
000748  1f213000  addli r2, zero, 26
00074c  9f004000  addli r1, zero, 32
000750  00200100  mfence { sm }
000754  b3010028  zext_int2long r[4:5], zero
000758  7d000100  xsignal r2, 0
00075c  7d800000  xsignal r1, 0
000760  9f704000  addli r1, zero, 39
000764  7d100100  xwait r2, 0
000768  7d900000  xwait r1, 0
00076c  3d000000  xfence
000770  00a00300  mfence { lm, sm, gm }
000774  73343ffc  store.d r[4:5], -56(r30)
000778  634dbfff  loadli.w r26,  -36(r30)
00077c  97b27102  sll.d r[6:7], r[4:5], r7
000780  9f730000  addli r7, zero, 7
000784  eb548ffc  load.d r[10:11], -56(r30)
000788  eb5a8fff  load.d r[22:23], -8(r30)
00078c  e30befff  loadli.w r23,  -16(r30)
000790  e340efff  loadli.w r1,  -12(r30)
000794  2b0a807f  lui r20, 522240
000798  97b37102  sll.d r[8:9], r[4:5], r7
00079c  8ba55410  add.ul r[12:13], r[10:11], r[6:7]
0007a0  8ba77410  add.ul r[16:17], r[10:11], r[8:9]
0007a4  a7c40400  addli.d r[10:11], r[10:11], 4
0007a8  9bb52500  slli r11, r11, 2
0007ac  13a95403  setneq.d r18, r[10:11], r[22:23]
0007b0  8b989711  add.s r17, r15, r25
0007b4  8b997711  add.s r19, r15, r23
0007b8  8b95b511  add.s r11, r11, r27
0007bc  6fc60500  loads.w r12, 0(r11)
0007c0  efc64500  loads.w r13, 4(r11)
0007c4  6fc78500  loads.w r14, 8(r11)
0007c8  efc5c500  loads.w r11, 12(r11)
0007cc  13064601  seteq r12, r12, r20
0007d0  93864601  seteq r13, r13, r20
0007d4  13074701  seteq r14, r14, r20
0007d8  93854501  seteq r11, r11, r20
0007dc  73c0c800  stores.b r12, 0(r17)
0007e0  0b96a711  add.s r12, r15, r26
0007e4  8b971710  add.s r15, r15, r1
0007e8  73c0d900  stores.b r13, 0(r19)
0007ec  7340e600  stores.b r14, 0(r12)
0007f0  73c0b700  stores.b r11, 0(r15)
0007f4  bb2e09fe  bneq r18, zero, -88
0007f8  eb528ff7  load.d r[6:7], -136(r30)
0007fc  9f630000  addli r7, zero, 6
000800  93a25104  setlt.ul r5, r[4:5], r[6:7]
000804  a7910100  addli.d r[4:5], r[4:5], 1
000808  bbdd02fe  bneq r5, zero, -140
00080c  9f303000  addli r1, zero, 27
000810  1f414000  addli r2, zero, 36
000814  00200100  mfence { sm }
000818  b3010028  zext_int2long r[4:5], zero
00081c  7d800000  xsignal r1, 0
000820  7d000100  xsignal r2, 0
000824  7d900000  xwait r1, 0
000828  9f305000  addli r1, zero, 43
00082c  7d900000  xwait r1, 0
000830  3d000000  xfence
000834  00a00300  mfence { lm, sm, gm }
000838  73343ffc  store.d r[4:5], -56(r30)
00083c  630acfff  loadli.w r20,  -32(r30)
000840  97b27102  sll.d r[6:7], r[4:5], r7
000844  9f730000  addli r7, zero, 7
000848  eb548ffc  load.d r[10:11], -56(r30)
00084c  e30bdfff  loadli.w r23,  -24(r30)
000850  e3004fff  loadli.w r1,  -96(r30)
000854  eb5a8fff  load.d r[22:23], -8(r30)
000858  97b37102  sll.d r[8:9], r[4:5], r7
00085c  8ba55410  add.ul r[12:13], r[10:11], r[6:7]
000860  8ba77410  add.ul r[16:17], r[10:11], r[8:9]
000864  a7c40400  addli.d r[10:11], r[10:11], 4
000868  9bb52500  slli r11, r11, 2
00086c  13a95403  setneq.d r18, r[10:11], r[22:23]
000870  8b984711  add.s r17, r15, r20
000874  8b997711  add.s r19, r15, r23
000878  8b95b511  add.s r11, r11, r27
00087c  6fc60500  loads.w r12, 0(r11)
000880  efc64500  loads.w r13, 4(r11)
000884  6fc78500  loads.w r14, 8(r11)
000888  efc5c500  loads.w r11, 12(r11)
00088c  13060600  seteq r12, r12, zero
000890  93860600  seteq r13, r13, zero
000894  13070700  seteq r14, r14, zero
000898  93850500  seteq r11, r11, zero
00089c  73c0c800  stores.b r12, 0(r17)
0008a0  0b968711  add.s r12, r15, r24
0008a4  8b971710  add.s r15, r15, r1
0008a8  73c0d900  stores.b r13, 0(r19)
0008ac  7340e600  stores.b r14, 0(r12)
0008b0  73c0b700  stores.b r11, 0(r15)
0008b4  bb2e09fe  bneq r18, zero, -88
0008b8  eb508ff7  load.d r[2:3], -136(r30)
0008bc  9f630000  addli r7, zero, 6
0008c0  93a21104  setlt.ul r5, r[4:5], r[2:3]
0008c4  a7910100  addli.d r[4:5], r[4:5], 1
0008c8  bbed02fe  bneq r5, zero, -136
0008cc  9f413000  addli r3, zero, 28
0008d0  1f015000  addli r2, zero, 40
0008d4  9f502000  addli r1, zero, 21
0008d8  00200100  mfence { sm }
0008dc  7d800100  xsignal r3, 0
0008e0  7d000100  xsignal r2, 0
0008e4  7d900000  xwait r1, 0
0008e8  9f702000  addli r1, zero, 23
0008ec  7d900000  xwait r1, 0
0008f0  9f004000  addli r1, zero, 32
0008f4  7d900100  xwait r3, 0
0008f8  7d900000  xwait r1, 0
0008fc  9f404000  addli r1, zero, 36
000900  7d900000  xwait r1, 0
000904  7d100100  xwait r2, 0
000908  3d000000  xfence
00090c  b3000028  zext_int2long r[2:3], zero
000910  00a00300  mfence { lm, sm, gm }
000914  6303dfff  loadli.w r6,  -24(r30)
000918  63064fff  loadli.w r12,  -96(r30)
00091c  e30b2fff  loadli.w r23,  -112(r30)
000920  6307efff  loadli.w r14,  -16(r30)
000924  e348efff  loadli.w r17,  -12(r30)
000928  73381ffa  store.d r[2:3], -80(r30)
00092c  27810000  addli.d r[3:4], r[2:3], 0
000930  db030000  j 28
000934  eb508ff7  load.d r[2:3], -136(r30)
000938  eb518ffb  load.d r[4:5], -72(r30)
00093c  9f630000  addli r7, zero, 6
000940  93a01104  setlt.ul r1, r[4:5], r[2:3]
000944  27910100  addli.d r[3:4], r[4:5], 1
000948  b7bb0008  beq r1, zero, 4844
00094c  9f700000  addli r1, zero, 7
000950  17327102  sll.d r[5:6], r[3:4], r7
000954  733c2ffa  store.d r[3:4], -72(r30)
000958  97301102  sll.d r[2:3], r[3:4], r1
00095c  73344ffc  store.d r[5:6], -56(r30)
000960  73301ffc  store.d r[2:3], -64(r30)
000964  eb500ffb  load.d r[2:3], -80(r30)
000968  5b060000  j 48
00096c  eb538fff  load.d r[8:9], -8(r30)
000970  a7c00000  addli.d r[2:3], r[2:3], 4
000974  0b12b211  add.s r4, r4, r27
000978  63064fff  loadli.w r12,  -96(r30)
00097c  73646200  stores.w r6, 8(r4)
000980  6303dfff  loadli.w r6,  -24(r30)
000984  73669200  stores.w r9, 12(r4)
000988  73623201  stores.w r19, 4(r4)
00098c  73605200  stores.w r5, 0(r4)
000990  93a17002  setneq.d r3, r[2:3], r[8:9]
000994  b78e01fe  beq r3, zero, -96
000998  eb518ffc  load.d r[4:5], -56(r30)
00099c  eb530ffc  load.d r[8:9], -64(r30)
0009a0  8ba13010  add.ul r[4:5], r[2:3], r[4:5]
0009a4  8ba47010  add.ul r[10:11], r[2:3], r[8:9]
0009a8  1bb22100  slli r4, r3, 2
0009ac  e3410fff  loadli.w r3,  -124(r30)
0009b0  8b938411  add.s r7, r9, r24
0009b4  8b95c410  add.s r11, r9, r12
0009b8  0b936410  add.s r6, r9, r6
0009bc  0b961411  add.s r12, r9, r17
0009c0  6f980300  loads.bu r16, 0(r7)
0009c4  8b93a411  add.s r7, r9, r26
0009c8  ef950500  loads.bu r11, 0(r11)
0009cc  8b113210  add.s r3, r4, r3
0009d0  ef980300  loads.bu r17, 0(r7)
0009d4  e343dfff  loadli.w r7,  -20(r30)
0009d8  efc20100  loads.w r5, 0(r3)
0009dc  efc94100  loads.w r19, 4(r3)
0009e0  efc78100  loads.w r15, 8(r3)
0009e4  6fc4c100  loads.w r8, 12(r3)
0009e8  8b914411  add.s r3, r9, r20
0009ec  6f1a0300  loads.bu r20, 0(r6)
0009f0  0b93e410  add.s r6, r9, r14
0009f4  6f170600  loads.bu r14, 0(r12)
0009f8  6346afff  loadli.w r12,  -44(r30)
0009fc  ef960100  loads.bu r13, 0(r3)
000a00  8b919411  add.s r3, r9, r25
000a04  8b937410  add.s r7, r9, r7
000a08  ab0c807f  lui r25, 522240
000a0c  6f130300  loads.bu r6, 0(r6)
000a10  8b9ac410  add.s r21, r9, r12
000a14  6346cfff  loadli.w r12,  -28(r30)
000a18  6f990100  loads.bu r18, 0(r3)
000a1c  8b917411  add.s r3, r9, r23
000a20  ef9a0a00  loads.bu r21, 0(r21)
000a24  8b94c410  add.s r9, r9, r12
000a28  6f960300  loads.bu r12, 0(r7)
000a2c  ef9d0100  loads.bu r27, 0(r3)
000a30  e3010fff  loadli.w r3,  -128(r30)
000a34  6f950400  loads.bu r10, 0(r9)
000a38  0b1d3210  add.s r26, r4, r3
000a3c  9782c201  and r5, r5, r28
000a40  ef41cd00  loads.w r3, 12(r26)
000a44  93839201  seteq r7, r5, r25
000a48  138b0200  seteq r22, r5, zero
000a4c  93825c04  setlt.u r5, r25, r5
000a50  97847600  and r9, r13, r7
000a54  ef438d00  loads.w r7, 8(r26)
000a58  ef464d00  loads.w r13, 4(r26)
000a5c  17096901  and r18, r18, r22
000a60  9792b201  or r5, r5, r27
000a64  97942401  or r9, r9, r18
000a68  97925400  or r5, r9, r5
000a6c  ab04c07f  lui r9, 523264
000a70  1b891200  andi r18, r5, 1
000a74  ab02c07f  lui r5, 523264
000a78  3b200900  bneq r18, zero, 8
000a7c  ef420d00  loads.w r5, 0(r26)
000a80  1789c901  and r18, r19, r28
000a84  93099901  seteq r19, r18, r25
000a88  130b0900  seteq r22, r18, zero
000a8c  13892c05  setlt.u r18, r25, r18
000a90  97093a01  and r19, r20, r19
000a94  17036301  and r6, r6, r22
000a98  1716c900  or r12, r18, r12
000a9c  17936900  or r6, r19, r6
000aa0  ab09c07f  lui r19, 523264
000aa4  1713c300  or r6, r6, r12
000aa8  1b031300  andi r6, r6, 1
000aac  3b200300  bneq r6, zero, 8
000ab0  9f890600  addli r19, r13, 0
000ab4  1783c701  and r6, r15, r28
000ab8  ab07807f  lui r15, 522240
000abc  e30dafff  loadli.w r27,  -48(r30)
000ac0  e30cbfff  loadli.w r25,  -40(r30)
000ac4  634dbfff  loadli.w r26,  -36(r30)
000ac8  630acfff  loadli.w r20,  -32(r30)
000acc  1306f300  seteq r12, r6, r15
000ad0  93060300  seteq r13, r6, zero
000ad4  13836704  setlt.u r6, r15, r6
000ad8  9786d800  and r13, r17, r13
000adc  1706c800  and r12, r16, r12
000ae0  17135301  or r6, r6, r21
000ae4  e348efff  loadli.w r17,  -12(r30)
000ae8  1716d600  or r12, r12, r13
000aec  17136600  or r6, r12, r6
000af0  1b061300  andi r12, r6, 1
000af4  2b03c07f  lui r6, 523264
000af8  3b200600  bneq r12, zero, 8
000afc  1f830300  addli r6, r7, 0
000b00  9703c401  and r7, r8, r28
000b04  ab06807f  lui r13, 522240
000b08  1384d300  seteq r8, r7, r13
000b0c  13860300  seteq r12, r7, zero
000b10  93837604  setlt.u r7, r13, r7
000b14  17848500  and r8, r11, r8
000b18  9705c700  and r11, r14, r12
000b1c  9793a300  or r7, r7, r10
000b20  6307efff  loadli.w r14,  -16(r30)
000b24  1714b400  or r8, r8, r11
000b28  97137400  or r7, r8, r7
000b2c  9b831300  andi r7, r7, 1
000b30  bbf803fe  bneq r7, zero, -452
000b34  9f840100  addli r9, r3, 0
000b38  dbc6ffff  j -460
000b3c  6b518ff4  load.d r[3:4], -184(r30)
000b40  9f102000  addli r1, zero, 17
000b44  6b548f01  load.d r[9:10], 24(r30)
000b48  9f120000  addli r5, zero, 1
000b4c  1f136000  addli r6, zero, 49
000b50  97301102  sll.d r[2:3], r[3:4], r1
000b54  eb510ff5  load.d r[4:5], -176(r30)
000b58  7d100300  xwait r6, 0
000b5c  1f530000  addli r6, zero, 5
000b60  8b201410  add.ul r[2:3], r[9:10], r[2:3]
000b64  1d000300  lock zero, r6
000b68  97b15102  sll.d r[4:5], r[4:5], r5
000b6c  95820200  dma_cfg r5, r5, zero, 0
000b70  15800202  dma_cfg zero, r5, zero, 1
000b74  8ba03010  add.ul r[2:3], r[2:3], r[4:5]
000b78  ab810000  lui r3, 8
000b7c  1f727000  addli r4, zero, 63
000b80  9b910104  ori r3, r3, 64
000b84  15010004  dma_cfg r2, zero, zero, 2
000b88  95806107  dma_cfg r1, r3, r22, 3
000b8c  9f000001  addli r1, zero, 128
000b90  1f010010  addli r2, zero, 2048
000b94  158bb008  dma_cfg r22, r1, r11, 4
000b98  9f000002  addli r1, zero, 256
000b9c  1581600b  dma_cfg r2, r1, r22, 5
000ba0  9f206000  addli r1, zero, 50
000ba4  15000010  dma_cfg zero, zero, zero, 8
000ba8  35000000  dma_run zero
000bac  1500500a  dma_cfg zero, zero, r5, 5
000bb0  15000010  dma_cfg zero, zero, zero, 8
000bb4  1d100300  unlock r6
000bb8  7d800000  xsignal r1, 0
000bbc  dbf5feff  j -2132
000bc0  b3000028  zext_int2long r[2:3], zero
000bc4  3d000000  xfence
000bc8  00a00300  mfence { lm, sm, gm }
000bcc  a7820000  addli.d r[6:7], r[2:3], 0
000bd0  9f610000  addli r3, zero, 6
000bd4  634e2fff  loadli.w r28,  -108(r30)
000bd8  eb5a8fff  load.d r[22:23], -8(r30)
000bdc  a7840000  addli.d r[10:11], r[2:3], 0
000be0  97b33202  sll.d r[8:9], r[6:7], r3
000be4  8ba57410  add.ul r[12:13], r[10:11], r[8:9]
000be8  a7841400  addli.d r[10:11], r[10:11], 8
000bec  9bb12500  slli r3, r11, 2
000bf0  93a55403  setneq.d r11, r[10:11], r[22:23]
000bf4  0b96b111  add.s r12, r3, r27
000bf8  8b91c111  add.s r3, r3, r28
000bfc  ef568600  loads.d r[14:15], 8(r12)
000c00  ef570600  loads.d r[16:17], 0(r12)
000c04  ef588601  loads.d r[18:19], 24(r12)
000c08  ef590601  loads.d r[20:21], 16(r12)
000c0c  73f4d100  stores.d r[14:15], 8(r3)
000c10  73f0f100  stores.d r[16:17], 0(r3)
000c14  73fc1101  stores.d r[18:19], 24(r3)
000c18  73f83101  stores.d r[20:21], 16(r3)
000c1c  3baf05fe  bneq r11, zero, -56
000c20  9f710000  addli r3, zero, 7
000c24  b3830128  zext_int2long r[8:9], r3
000c28  93a17204  setlt.ul r3, r[6:7], r[8:9]
000c2c  a7920200  addli.d r[6:7], r[6:7], 1
000c30  9f630000  addli r7, zero, 6
000c34  3bfe01fe  bneq r3, zero, -100
000c38  00200100  mfence { sm }
000c3c  2b490000  lui r18, 4
000c40  1f0b8000  addli r22, zero, 64
000c44  9f250000  addli r11, zero, 2
000c48  e3492fff  loadli.w r19,  -108(r30)
000c4c  634e5fff  loadli.w r28,  -84(r30)
000c50  634a8ffe  loadli.w r20,  -188(r30)
000c54  63064fff  loadli.w r12,  -96(r30)
000c58  374402fc  beq r4, zero, -1776
000c5c  9f001000  addli r1, zero, 8
000c60  3d000000  xfence
000c64  00a00300  mfence { lm, sm, gm }
000c68  b3800028  zext_int2long r[2:3], r1
000c6c  eb5a8fff  load.d r[22:23], -8(r30)
000c70  97b17002  sll.d r[4:5], r[2:3], r7
000c74  b3020028  zext_int2long r[6:7], zero
000c78  8ba33210  add.ul r[8:9], r[6:7], r[4:5]
000c7c  a7821200  addli.d r[6:7], r[6:7], 8
000c80  9bb32300  slli r7, r7, 2
000c84  13a45203  setneq.d r8, r[6:7], r[22:23]
000c88  8b94b311  add.s r9, r7, r27
000c8c  8b933311  add.s r7, r7, r19
000c90  6fd58400  loads.d r[11:12], 8(r9)
000c94  6fd60400  loads.d r[13:14], 0(r9)
000c98  6fd78401  loads.d r[15:16], 24(r9)
000c9c  6fd80401  loads.d r[17:18], 16(r9)
000ca0  73f4a300  stores.d r[11:12], 8(r7)
000ca4  73f0c300  stores.d r[13:14], 0(r7)
000ca8  73fce300  stores.d r[15:16], 24(r7)
000cac  73f80301  stores.d r[17:18], 16(r7)
000cb0  3b2f04fe  bneq r8, zero, -56
000cb4  9f711000  addli r3, zero, 15
000cb8  9f630000  addli r7, zero, 6
000cbc  b3810128  zext_int2long r[4:5], r3
000cc0  93a13004  setlt.ul r3, r[2:3], r[4:5]
000cc4  a7900000  addli.d r[2:3], r[2:3], 1
000cc8  bb9e01fe  bneq r3, zero, -92
000ccc  00200100  mfence { sm }
000cd0  1f0b8000  addli r22, zero, 64
000cd4  9f250000  addli r11, zero, 2
000cd8  63064fff  loadli.w r12,  -96(r30)
000cdc  e3006fff  loadli.w r1,  -80(r30)
000ce0  37c200fc  beq r1, zero, -1904
000ce4  9f002000  addli r1, zero, 16
000ce8  3d000000  xfence
000cec  00a00300  mfence { lm, sm, gm }
000cf0  b3800028  zext_int2long r[2:3], r1
000cf4  eb5a8fff  load.d r[22:23], -8(r30)
000cf8  97b17002  sll.d r[4:5], r[2:3], r7
000cfc  b3020028  zext_int2long r[6:7], zero
000d00  8ba33210  add.ul r[8:9], r[6:7], r[4:5]
000d04  a7821200  addli.d r[6:7], r[6:7], 8
000d08  9bb32300  slli r7, r7, 2
000d0c  13a45203  setneq.d r8, r[6:7], r[22:23]
000d10  8b94b311  add.s r9, r7, r27
000d14  8b933311  add.s r7, r7, r19
000d18  6fd58400  loads.d r[11:12], 8(r9)
000d1c  6fd60400  loads.d r[13:14], 0(r9)
000d20  6fd78401  loads.d r[15:16], 24(r9)
000d24  6fd80401  loads.d r[17:18], 16(r9)
000d28  73f4a300  stores.d r[11:12], 8(r7)
000d2c  73f0c300  stores.d r[13:14], 0(r7)
000d30  73fce300  stores.d r[15:16], 24(r7)
000d34  73f80301  stores.d r[17:18], 16(r7)
000d38  3b2f04fe  bneq r8, zero, -56
000d3c  9f712000  addli r3, zero, 23
000d40  9f630000  addli r7, zero, 6
000d44  b3810128  zext_int2long r[4:5], r3
000d48  93a13004  setlt.ul r3, r[2:3], r[4:5]
000d4c  a7900000  addli.d r[2:3], r[2:3], 1
000d50  bb9e01fe  bneq r3, zero, -92
000d54  00200100  mfence { sm }
000d58  1f0b8000  addli r22, zero, 64
000d5c  9f250000  addli r11, zero, 2
000d60  63064fff  loadli.w r12,  -96(r30)
000d64  e340cffe  loadli.w r1,  -156(r30)
000d68  37c000fc  beq r1, zero, -2032
000d6c  9f003000  addli r1, zero, 24
000d70  3d000000  xfence
000d74  00a00300  mfence { lm, sm, gm }
000d78  b3800028  zext_int2long r[2:3], r1
000d7c  eb5a8fff  load.d r[22:23], -8(r30)
000d80  97b17002  sll.d r[4:5], r[2:3], r7
000d84  b3020028  zext_int2long r[6:7], zero
000d88  8ba33210  add.ul r[8:9], r[6:7], r[4:5]
000d8c  a7821200  addli.d r[6:7], r[6:7], 8
000d90  9bb32300  slli r7, r7, 2
000d94  13a45203  setneq.d r8, r[6:7], r[22:23]
000d98  8b94b311  add.s r9, r7, r27
000d9c  8b933311  add.s r7, r7, r19
000da0  6fd58400  loads.d r[11:12], 8(r9)
000da4  6fd60400  loads.d r[13:14], 0(r9)
000da8  6fd78401  loads.d r[15:16], 24(r9)
000dac  6fd80401  loads.d r[17:18], 16(r9)
000db0  73f4a300  stores.d r[11:12], 8(r7)
000db4  73f0c300  stores.d r[13:14], 0(r7)
000db8  73fce300  stores.d r[15:16], 24(r7)
000dbc  73f80301  stores.d r[17:18], 16(r7)
000dc0  3b2f04fe  bneq r8, zero, -56
000dc4  9f713000  addli r3, zero, 31
000dc8  9f630000  addli r7, zero, 6
000dcc  b3810128  zext_int2long r[4:5], r3
000dd0  93a13004  setlt.ul r3, r[2:3], r[4:5]
000dd4  a7900000  addli.d r[2:3], r[2:3], 1
000dd8  bb9e01fe  bneq r3, zero, -92
000ddc  00200100  mfence { sm }
000de0  1f0b8000  addli r22, zero, 64
000de4  9f250000  addli r11, zero, 2
000de8  63064fff  loadli.w r12,  -96(r30)
000dec  e3007fff  loadli.w r1,  -72(r30)
000df0  37ce00fa  beq r1, zero, -2160
000df4  9f004000  addli r1, zero, 32
000df8  3d000000  xfence
000dfc  00a00300  mfence { lm, sm, gm }
000e00  b3800028  zext_int2long r[2:3], r1
000e04  eb5a8fff  load.d r[22:23], -8(r30)
000e08  97b17002  sll.d r[4:5], r[2:3], r7
000e0c  b3020028  zext_int2long r[6:7], zero
000e10  8ba33210  add.ul r[8:9], r[6:7], r[4:5]
000e14  a7821200  addli.d r[6:7], r[6:7], 8
000e18  9bb32300  slli r7, r7, 2
000e1c  13a45203  setneq.d r8, r[6:7], r[22:23]
000e20  8b94b311  add.s r9, r7, r27
000e24  8b933311  add.s r7, r7, r19
000e28  6fd58400  loads.d r[11:12], 8(r9)
000e2c  6fd60400  loads.d r[13:14], 0(r9)
000e30  6fd78401  loads.d r[15:16], 24(r9)
000e34  6fd80401  loads.d r[17:18], 16(r9)
000e38  73f4a300  stores.d r[11:12], 8(r7)
000e3c  73f0c300  stores.d r[13:14], 0(r7)
000e40  73fce300  stores.d r[15:16], 24(r7)
000e44  73f80301  stores.d r[17:18], 16(r7)
000e48  3b2f04fe  bneq r8, zero, -56
000e4c  9f714000  addli r3, zero, 39
000e50  9f630000  addli r7, zero, 6
000e54  b3810128  zext_int2long r[4:5], r3
000e58  93a13004  setlt.ul r3, r[2:3], r[4:5]
000e5c  a7900000  addli.d r[2:3], r[2:3], 1
000e60  bb9e01fe  bneq r3, zero, -92
000e64  00200100  mfence { sm }
000e68  1f0b8000  addli r22, zero, 64
000e6c  9f250000  addli r11, zero, 2
000e70  63064fff  loadli.w r12,  -96(r30)
000e74  9f500000  addli r1, zero, 5
000e78  3bcc1bfa  bneq r23, r1, -2288
000e7c  9f005000  addli r1, zero, 40
000e80  3d000000  xfence
000e84  00a00300  mfence { lm, sm, gm }
000e88  b3800028  zext_int2long r[2:3], r1
000e8c  eb5a8fff  load.d r[22:23], -8(r30)
000e90  97b17002  sll.d r[4:5], r[2:3], r7
000e94  b3020028  zext_int2long r[6:7], zero
000e98  8ba33210  add.ul r[8:9], r[6:7], r[4:5]
000e9c  a7821200  addli.d r[6:7], r[6:7], 8
000ea0  9bb32300  slli r7, r7, 2
000ea4  13a45203  setneq.d r8, r[6:7], r[22:23]
000ea8  8b94b311  add.s r9, r7, r27
000eac  8b933311  add.s r7, r7, r19
000eb0  6fd58400  loads.d r[11:12], 8(r9)
000eb4  6fd60400  loads.d r[13:14], 0(r9)
000eb8  6fd78401  loads.d r[15:16], 24(r9)
000ebc  6fd80401  loads.d r[17:18], 16(r9)
000ec0  73f4a300  stores.d r[11:12], 8(r7)
000ec4  73f0c300  stores.d r[13:14], 0(r7)
000ec8  73fce300  stores.d r[15:16], 24(r7)
000ecc  73f80301  stores.d r[17:18], 16(r7)
000ed0  3b2f04fe  bneq r8, zero, -56
000ed4  9f715000  addli r3, zero, 47
000ed8  9f630000  addli r7, zero, 6
000edc  b3810128  zext_int2long r[4:5], r3
000ee0  93a13004  setlt.ul r3, r[2:3], r[4:5]
000ee4  a7900000  addli.d r[2:3], r[2:3], 1
000ee8  bb9e01fe  bneq r3, zero, -92
000eec  00200100  mfence { sm }
000ef0  1f0b8000  addli r22, zero, 64
000ef4  9f250000  addli r11, zero, 2
000ef8  63064fff  loadli.w r12,  -96(r30)
000efc  e3008fff  loadli.w r1,  -64(r30)
000f00  37ca00fa  beq r1, zero, -2416
000f04  9f006000  addli r1, zero, 48
000f08  3d000000  xfence
000f0c  00a00300  mfence { lm, sm, gm }
000f10  b3800028  zext_int2long r[2:3], r1
000f14  eb5a8fff  load.d r[22:23], -8(r30)
000f18  97b17002  sll.d r[4:5], r[2:3], r7
000f1c  b3020028  zext_int2long r[6:7], zero
000f20  8ba33210  add.ul r[8:9], r[6:7], r[4:5]
000f24  a7821200  addli.d r[6:7], r[6:7], 8
000f28  9bb32300  slli r7, r7, 2
000f2c  13a45203  setneq.d r8, r[6:7], r[22:23]
000f30  8b94b311  add.s r9, r7, r27
000f34  8b933311  add.s r7, r7, r19
000f38  6fd58400  loads.d r[11:12], 8(r9)
000f3c  6fd60400  loads.d r[13:14], 0(r9)
000f40  6fd78401  loads.d r[15:16], 24(r9)
000f44  6fd80401  loads.d r[17:18], 16(r9)
000f48  73f4a300  stores.d r[11:12], 8(r7)
000f4c  73f0c300  stores.d r[13:14], 0(r7)
000f50  73fce300  stores.d r[15:16], 24(r7)
000f54  73f80301  stores.d r[17:18], 16(r7)
000f58  3b2f04fe  bneq r8, zero, -56
000f5c  9f716000  addli r3, zero, 55
000f60  9f630000  addli r7, zero, 6
000f64  b3810128  zext_int2long r[4:5], r3
000f68  93a13004  setlt.ul r3, r[2:3], r[4:5]
000f6c  a7900000  addli.d r[2:3], r[2:3], 1
000f70  bb9e01fe  bneq r3, zero, -92
000f74  00200100  mfence { sm }
000f78  1f0b8000  addli r22, zero, 64
000f7c  9f250000  addli r11, zero, 2
000f80  63064fff  loadli.w r12,  -96(r30)
000f84  e3009fff  loadli.w r1,  -56(r30)
000f88  37820000  beq r1, zero, 128
000f8c  9f007000  addli r1, zero, 56
000f90  3d000000  xfence
000f94  00a00300  mfence { lm, sm, gm }
000f98  b3800028  zext_int2long r[2:3], r1
000f9c  eb5a8fff  load.d r[22:23], -8(r30)
000fa0  97b17002  sll.d r[4:5], r[2:3], r7
000fa4  b3020028  zext_int2long r[6:7], zero
000fa8  8ba33210  add.ul r[8:9], r[6:7], r[4:5]
000fac  a7821200  addli.d r[6:7], r[6:7], 8
000fb0  9bb32300  slli r7, r7, 2
000fb4  13a45203  setneq.d r8, r[6:7], r[22:23]
000fb8  8b94b311  add.s r9, r7, r27
000fbc  8b933311  add.s r7, r7, r19
000fc0  6fd58400  loads.d r[11:12], 8(r9)
000fc4  6fd60400  loads.d r[13:14], 0(r9)
000fc8  6fd78401  loads.d r[15:16], 24(r9)
000fcc  6fd80401  loads.d r[17:18], 16(r9)
000fd0  73f4a300  stores.d r[11:12], 8(r7)
000fd4  73f0c300  stores.d r[13:14], 0(r7)
000fd8  73fce300  stores.d r[15:16], 24(r7)
000fdc  73f80301  stores.d r[17:18], 16(r7)
000fe0  3b2f04fe  bneq r8, zero, -56
000fe4  eb518ff7  load.d r[4:5], -136(r30)
000fe8  9f630000  addli r7, zero, 6
000fec  93a13004  setlt.ul r3, r[2:3], r[4:5]
000ff0  a7900000  addli.d r[2:3], r[2:3], 1
000ff4  bbae01fe  bneq r3, zero, -88
000ff8  00200100  mfence { sm }
000ffc  1f0b8000  addli r22, zero, 64
001000  9f250000  addli r11, zero, 2
001004  63064fff  loadli.w r12,  -96(r30)
001008  9f70f001  addli r1, zero, 255
00100c  80a20004  csr_set csr5, r1
001010  ab800000  lui r1, 8
001014  1b91c000  ori r2, r1, 12
001018  670c2ffe  storeli.w r2, -64(r30)
00101c  1b918000  ori r2, r1, 8
001020  9b904000  ori r1, r1, 4
001024  e70b2ffe  storeli.w r2, -72(r30)
001028  670b1ffe  storeli.w r1, -80(r30)
00102c  00e00200  sync_core
001030  e340cffe  loadli.w r1,  -156(r30)
001034  e70c8fff  storeli.w r24, -56(r30)
001038  378a0000  beq r1, zero, 640
00103c  9f603000  addli r1, zero, 30
001040  1f415000  addli r2, zero, 44
001044  e3062fff  loadli.w r13,  -112(r30)
001048  7d800000  xsignal r1, 0
00104c  7d000100  xsignal r2, 0
001050  7d900000  xwait r1, 0
001054  9f104000  addli r1, zero, 33
001058  7d900000  xwait r1, 0
00105c  9f504000  addli r1, zero, 37
001060  7d900000  xwait r1, 0
001064  9f105000  addli r1, zero, 41
001068  7d900000  xwait r1, 0
00106c  9f505000  addli r1, zero, 45
001070  7d900000  xwait r1, 0
001074  9f206000  addli r1, zero, 50
001078  7d900000  xwait r1, 0
00107c  3d000000  xfence
001080  b3000028  zext_int2long r[2:3], zero
001084  00a00300  mfence { lm, sm, gm }
001088  e348efff  loadli.w r17,  -12(r30)
00108c  6305cfff  loadli.w r10,  -32(r30)
001090  73341ff6  store.d r[2:3], -152(r30)
001094  27810000  addli.d r[3:4], r[2:3], 0
001098  db030000  j 28
00109c  eb508ff7  load.d r[2:3], -136(r30)
0010a0  eb510ff7  load.d r[4:5], -144(r30)
0010a4  9f630000  addli r7, zero, 6
0010a8  93a01104  setlt.ul r1, r[4:5], r[2:3]
0010ac  27910100  addli.d r[3:4], r[4:5], 1
0010b0  37f90000  beq r1, zero, 604
0010b4  9f700000  addli r1, zero, 7
0010b8  6b5b8ff6  load.d r[23:24], -152(r30)
0010bc  17327102  sll.d r[5:6], r[3:4], r7
0010c0  73382ff6  store.d r[3:4], -144(r30)
0010c4  97301102  sll.d r[2:3], r[3:4], r1
0010c8  733c4ff8  store.d r[5:6], -104(r30)
0010cc  db080000  j 68
0010d0  63028fff  loadli.w r4,  -64(r30)
0010d4  274b0b00  addli.d r[23:24], r[23:24], 4
0010d8  ab840000  lui r9, 8
0010dc  e30cbfff  loadli.w r25,  -40(r30)
0010e0  1323eb02  setneq.d r6, r[23:24], r[15:16]
0010e4  8b149410  add.s r9, r8, r9
0010e8  0b124410  add.s r4, r8, r4
0010ec  73e00401  stores.w r16, 0(r9)
0010f0  73605200  stores.w r5, 0(r4)
0010f4  63027fff  loadli.w r4,  -72(r30)
0010f8  e3026fff  loadli.w r5,  -80(r30)
0010fc  0b124410  add.s r4, r8, r4
001100  8b125410  add.s r5, r8, r5
001104  73603200  stores.w r3, 0(r4)
001108  73e07200  stores.w r7, 0(r5)
00110c  374e03fe  beq r6, zero, -112
001110  eb518ff9  load.d r[4:5], -104(r30)
001114  e304dfff  loadli.w r9,  -24(r30)
001118  8b213b10  add.ul r[4:5], r[23:24], r[4:5]
00111c  1bb42100  slli r8, r3, 2
001120  0b221b10  add.ul r[5:6], r[23:24], r[2:3]
001124  8b11b411  add.s r3, r8, r27
001128  0b17c210  add.s r14, r4, r12
00112c  6346bfff  loadli.w r12,  -36(r30)
001130  8b149210  add.s r9, r4, r9
001134  8b181211  add.s r17, r4, r17
001138  6fc30100  loads.w r6, 0(r3)
00113c  efc34100  loads.w r7, 4(r3)
001140  efc98100  loads.w r19, 8(r3)
001144  efc5c100  loads.w r11, 12(r3)
001148  8b11a210  add.s r3, r4, r10
00114c  0b158211  add.s r10, r4, r24
001150  ef9a0400  loads.bu r21, 0(r9)
001154  8b149211  add.s r9, r4, r25
001158  6f170700  loads.bu r14, 0(r14)
00115c  ef980800  loads.bu r17, 0(r17)
001160  8b17c210  add.s r15, r4, r12
001164  6346dfff  loadli.w r12,  -20(r30)
001168  6f980100  loads.bu r16, 0(r3)
00116c  ef110500  loads.bu r3, 0(r10)
001170  6305efff  loadli.w r10,  -16(r30)
001174  6f9d0400  loads.bu r26, 0(r9)
001178  8b14d210  add.s r9, r4, r13
00117c  0b15a210  add.s r10, r4, r10
001180  6f1a0500  loads.bu r20, 0(r10)
001184  6f950700  loads.bu r10, 0(r15)
001188  8b17c210  add.s r15, r4, r12
00118c  6346afff  loadli.w r12,  -44(r30)
001190  ef9d0700  loads.bu r27, 0(r15)
001194  0b19c210  add.s r18, r4, r12
001198  6346cfff  loadli.w r12,  -28(r30)
00119c  170cc301  and r24, r6, r28
0011a0  63432fff  loadli.w r6,  -108(r30)
0011a4  ef170900  loads.bu r15, 0(r18)
0011a8  0b12c210  add.s r4, r4, r12
0011ac  2b06807f  lui r12, 522240
0011b0  130e0c00  seteq r28, r24, zero
0011b4  ef920400  loads.bu r5, 0(r9)
0011b8  0b196410  add.s r18, r8, r6
0011bc  930ccc00  seteq r25, r24, r12
0011c0  130c8605  setlt.u r24, r12, r24
0011c4  6f130200  loads.bu r6, 0(r4)
0011c8  ef44c900  loads.w r9, 12(r18)
0011cc  6f428900  loads.w r4, 8(r18)
0011d0  17089801  and r16, r16, r25
0011d4  970ccd01  and r25, r26, r28
0011d8  6f4d4900  loads.w r26, 4(r18)
0011dc  17189801  or r16, r16, r25
0011e0  97125c00  or r5, r24, r5
0011e4  97125800  or r5, r16, r5
0011e8  2b08c07f  lui r16, 523264
0011ec  1b8c1200  andi r24, r5, 1
0011f0  ab02c07f  lui r5, 523264
0011f4  3b200c00  bneq r24, zero, 8
0011f8  6f480900  loads.w r16, 0(r18)
0011fc  634e5fff  loadli.w r28,  -84(r30)
001200  ab0c807f  lui r25, 522240
001204  9783c301  and r7, r7, r28
001208  13899301  seteq r18, r7, r25
00120c  138c0300  seteq r24, r7, zero
001210  93837c04  setlt.u r7, r25, r7
001214  17892a01  and r18, r21, r18
001218  170a8a01  and r20, r20, r24
00121c  9793b301  or r7, r7, r27
001220  17194901  or r18, r18, r20
001224  97137900  or r7, r18, r7
001228  1b891300  andi r18, r7, 1
00122c  ab03c07f  lui r7, 523264
001230  3b200900  bneq r18, zero, 8
001234  9f030d00  addli r7, r26, 0
001238  1789c901  and r18, r19, r28
00123c  e30dafff  loadli.w r27,  -48(r30)
001240  630c9fff  loadli.w r24,  -56(r30)
001244  63064fff  loadli.w r12,  -96(r30)
001248  93099901  seteq r19, r18, r25
00124c  130a0900  seteq r20, r18, zero
001250  13892c05  setlt.u r18, r25, r18
001254  97813101  and r3, r3, r19
001258  17054501  and r10, r10, r20
00125c  9791a100  or r3, r3, r10
001260  1715f900  or r10, r18, r15
001264  9791a100  or r3, r3, r10
001268  1b851100  andi r10, r3, 1
00126c  ab01c07f  lui r3, 523264
001270  3b200500  bneq r10, zero, 8
001274  9f010200  addli r3, r4, 0
001278  1782c501  and r4, r11, r28
00127c  13059201  seteq r10, r4, r25
001280  93050200  seteq r11, r4, zero
001284  13824c04  setlt.u r4, r25, r4
001288  1705a700  and r10, r14, r10
00128c  9785b800  and r11, r17, r11
001290  17126200  or r4, r4, r6
001294  e348efff  loadli.w r17,  -12(r30)
001298  6b578fff  load.d r[15:16], -8(r30)
00129c  1715b500  or r10, r10, r11
0012a0  17124500  or r4, r10, r4
0012a4  6305cfff  loadli.w r10,  -32(r30)
0012a8  1b021200  andi r4, r4, 1
0012ac  bb1802fe  bneq r4, zero, -476
0012b0  9f820400  addli r5, r9, 0
0012b4  dbc3ffff  j -484
0012b8  1f727000  addli r4, zero, 63
0012bc  9f500000  addli r1, zero, 5
0012c0  bb921bf8  bneq r23, r1, -3932
0012c4  9f002000  addli r1, zero, 16
0012c8  7d900000  xwait r1, 0
0012cc  9f405000  addli r1, zero, 44
0012d0  7d900000  xwait r1, 0
0012d4  1d800500  lock zero, r11
0012d8  ab00803f  lui r1, 260096
0012dc  0d000002  ew_cfg zero, zero, zero, 1
0012e0  0d101000  ewcoeff_cfg zero, zero, r1, 0
0012e4  9f70f00f  addli r1, zero, 2047
0012e8  0d800004  ew_cfg zero, r1, zero, 2
0012ec  9f505000  addli r1, zero, 45
0012f0  8d050006  ew_cfg r11, zero, zero, 3
0012f4  8d85b526  ew_cfg r11, r11, r11, 19
0012f8  ad99a901  dsmul r19, r19, r26, 0
0012fc  0d000026  ew_cfg zero, zero, zero, 19
001300  1d900500  unlock r11
001304  7d800000  xsignal r1, 0
001308  5b0c0000  j 96
00130c  9f703000  addli r1, zero, 31
001310  00200100  mfence { sm }
001314  803b0002  core_id r23
001318  9f250000  addli r11, zero, 2
00131c  1f727000  addli r4, zero, 63
001320  1f0b8000  addli r22, zero, 64
001324  2b490000  lui r18, 4
001328  7d800000  xsignal r1, 0
00132c  9f204000  addli r1, zero, 34
001330  7d800000  xsignal r1, 0
001334  9f604000  addli r1, zero, 38
001338  7d800000  xsignal r1, 0
00133c  9f205000  addli r1, zero, 42
001340  7d800000  xsignal r1, 0
001344  9f605000  addli r1, zero, 46
001348  7d800000  xsignal r1, 0
00134c  9f705000  addli r1, zero, 47
001350  7d800000  xsignal r1, 0
001354  634d1fff  loadli.w r26,  -116(r30)
001358  e3492fff  loadli.w r19,  -108(r30)
00135c  634a8ffe  loadli.w r20,  -188(r30)
001360  9f500000  addli r1, zero, 5
001364  bbe61b00  bneq r23, r1, 440
001368  1f212000  addli r2, zero, 18
00136c  9f72f00f  addli r5, zero, 2047
001370  ab810000  lui r3, 8
001374  9f000000  addli r1, zero, 0
001378  7d100100  xwait r2, 0
00137c  1f715000  addli r2, zero, 47
001380  7d100100  xwait r2, 0
001384  1f316000  addli r2, zero, 51
001388  7d100100  xwait r2, 0
00138c  1d800500  lock zero, r11
001390  2b01803f  lui r2, 260096
001394  0d000002  ew_cfg zero, zero, zero, 1
001398  0d110100  ewcoeff_cfg r2, r2, zero, 0
00139c  0d800204  ew_cfg zero, r5, zero, 2
0013a0  8d050006  ew_cfg r11, zero, zero, 3
0013a4  8d85b526  ew_cfg r11, r11, r11, 19
0013a8  63416ffe  loadli.w r2,  -204(r30)
0013ac  2d013d00  dsmadd r2, r26, r3, 0
0013b0  9f016000  addli r3, zero, 48
0013b4  0d000026  ew_cfg zero, zero, zero, 19
0013b8  1d900500  unlock r11
0013bc  7d800100  xsignal r3, 0
0013c0  1d800500  lock zero, r11
0013c4  0d000002  ew_cfg zero, zero, zero, 1
0013c8  e3415ffe  loadli.w r3,  -212(r30)
0013cc  8d110000  ewcoeff_cfg r3, zero, zero, 0
0013d0  9f416000  addli r3, zero, 52
0013d4  0d800204  ew_cfg zero, r5, zero, 2
0013d8  8d050006  ew_cfg r11, zero, zero, 3
0013dc  8d850526  ew_cfg r11, r11, zero, 19
0013e0  4d512100  hp_ssmul r2, r2, r2, 0
0013e4  0d000026  ew_cfg zero, zero, zero, 19
0013e8  1d900500  unlock r11
0013ec  7d900100  xwait r3, 0
0013f0  1d800500  lock zero, r11
0013f4  ab010040  lui r3, 262144
0013f8  0d000002  ew_cfg zero, zero, zero, 1
0013fc  8d110000  ewcoeff_cfg r3, zero, zero, 0
001400  0d800204  ew_cfg zero, r5, zero, 2
001404  8d050006  ew_cfg r11, zero, zero, 3
001408  8d850526  ew_cfg r11, r11, zero, 19
00140c  4d5a2100  hp_ssmul r20, r2, r2, 0
001410  1f110000  addli r2, zero, 1
001414  0d000026  ew_cfg zero, zero, zero, 19
001418  1d900500  unlock r11
00141c  1d800500  lock zero, r11
001420  0d000002  ew_cfg zero, zero, zero, 1
001424  0d000204  ew_cfg zero, r4, zero, 2
001428  0d010006  ew_cfg r2, zero, zero, 3
00142c  2b01a041  lui r2, 268800
001430  0d110000  ewcoeff_cfg r2, zero, zero, 0
001434  0b914011  add.s r2, r1, r20
001438  9f800002  addli r1, r1, 256
00143c  2d212108  dscmpnsel r2, r2, r2, 4
001440  bbdf20ff  bneq r1, r18, -12
001444  1d900500  unlock r11
001448  1f110000  addli r2, zero, 1
00144c  9f000000  addli r1, zero, 0
001450  1d800500  lock zero, r11
001454  0d000002  ew_cfg zero, zero, zero, 1
001458  0d000204  ew_cfg zero, r4, zero, 2
00145c  0d010006  ew_cfg r2, zero, zero, 3
001460  8d050014  ew_cfg r11, zero, zero, 10
001464  e3015ffe  loadli.w r3,  -216(r30)
001468  8d053116  ew_cfg r11, r2, r3, 11
00146c  2bc17f41  lui r2, 268284
001470  9f410000  addli r3, zero, 4
001474  0d00001a  ew_cfg zero, zero, zero, 13
001478  0d80211c  ew_cfg zero, r3, r2, 14
00147c  2b01a0c1  lui r2, 793088
001480  0d00001e  ew_cfg zero, zero, zero, 15
001484  0d110000  ewcoeff_cfg r2, zero, zero, 0
001488  0b914011  add.s r2, r1, r20
00148c  9f800002  addli r1, r1, 256
001490  2d212100  dscmpnsel r2, r2, r2, 0
001494  bbdf20ff  bneq r1, r18, -12
001498  0d000014  ew_cfg zero, zero, zero, 10
00149c  ab0020c1  lui r1, 791040
0014a0  1f71f00f  addli r2, zero, 2047
0014a4  1d900500  unlock r11
0014a8  1d800500  lock zero, r11
0014ac  0d000002  ew_cfg zero, zero, zero, 1
0014b0  0d101000  ewcoeff_cfg zero, zero, r1, 0
0014b4  8d050006  ew_cfg r11, zero, zero, 3
0014b8  0d000104  ew_cfg zero, r2, zero, 2
0014bc  8d85b526  ew_cfg r11, r11, r11, 19
0014c0  e3406ffe  loadli.w r1,  -204(r30)
0014c4  6d804091  dsselect zero, r1, r20, 72
0014c8  9f306000  addli r1, zero, 51
0014cc  0d000026  ew_cfg zero, zero, zero, 19
0014d0  1d900500  unlock r11
0014d4  7d800000  xsignal r1, 0
0014d8  9f406000  addli r1, zero, 52
0014dc  7d800000  xsignal r1, 0
0014e0  9f302000  addli r1, zero, 19
0014e4  7d900000  xwait r1, 0
0014e8  1d800500  lock zero, r11
0014ec  ab00803f  lui r1, 260096
0014f0  0d000002  ew_cfg zero, zero, zero, 1
0014f4  0d101000  ewcoeff_cfg zero, zero, r1, 0
0014f8  9f102000  addli r1, zero, 17
0014fc  0d000104  ew_cfg zero, r2, zero, 2
001500  8d050006  ew_cfg r11, zero, zero, 3
001504  8d85b526  ew_cfg r11, r11, r11, 19
001508  2d1d0d00  dsmul r26, r26, zero, 0
00150c  0d000026  ew_cfg zero, zero, zero, 19
001510  1d900500  unlock r11
001514  7d800500  xsignal r11, 0
001518  7d800000  xsignal r1, 0
00151c  e340cffe  loadli.w r1,  -156(r30)
001520  379900f6  beq r1, zero, -4540
001524  9f102000  addli r1, zero, 17
001528  7d900500  xwait r11, 0
00152c  7d900000  xwait r1, 0
001530  9f204000  addli r1, zero, 34
001534  7d900000  xwait r1, 0
001538  9f604000  addli r1, zero, 38
00153c  7d900000  xwait r1, 0
001540  9f205000  addli r1, zero, 42
001544  7d900000  xwait r1, 0
001548  9f006000  addli r1, zero, 48
00154c  7d900000  xwait r1, 0
001550  3d000000  xfence
001554  b3000028  zext_int2long r[2:3], zero
001558  00a00300  mfence { lm, sm, gm }
00155c  6309efff  loadli.w r18,  -16(r30)
001560  6345bfff  loadli.w r10,  -36(r30)
001564  634aefff  loadli.w r20,  -12(r30)
001568  634ddfff  loadli.w r26,  -20(r30)
00156c  73381ff6  store.d r[2:3], -144(r30)
001570  27810000  addli.d r[3:4], r[2:3], 0
001574  db030000  j 28
001578  eb508ff7  load.d r[2:3], -136(r30)
00157c  eb518ff9  load.d r[4:5], -104(r30)
001580  9f630000  addli r7, zero, 6
001584  93a01104  setlt.ul r1, r[4:5], r[2:3]
001588  27910100  addli.d r[3:4], r[4:5], 1
00158c  379600f6  beq r1, zero, -4732
001590  9f700000  addli r1, zero, 7
001594  733c2ff8  store.d r[3:4], -104(r30)
001598  17321102  sll.d r[5:6], r[3:4], r1
00159c  97307102  sll.d r[2:3], r[3:4], r7
0015a0  6b530ff7  load.d r[7:8], -144(r30)
0015a4  73304ffa  store.d r[5:6], -96(r30)
0015a8  5b090000  j 72
0015ac  63028fff  loadli.w r4,  -64(r30)
0015b0  eb548fff  load.d r[10:11], -8(r30)
0015b4  27430300  addli.d r[7:8], r[7:8], 4
0015b8  e3056fff  loadli.w r11,  -80(r30)
0015bc  0b124410  add.s r4, r8, r4
0015c0  93249302  setneq.d r9, r[7:8], r[10:11]
0015c4  2b850000  lui r10, 8
0015c8  0b15a410  add.s r10, r8, r10
0015cc  73601201  stores.w r17, 0(r4)
0015d0  63027fff  loadli.w r4,  -72(r30)
0015d4  73605500  stores.w r5, 0(r10)
0015d8  6345bfff  loadli.w r10,  -36(r30)
0015dc  0b124410  add.s r4, r8, r4
0015e0  0b14b410  add.s r8, r8, r11
0015e4  73600201  stores.w r16, 0(r4)
0015e8  73603400  stores.w r3, 0(r8)
0015ec  37be04fe  beq r9, zero, -116
0015f0  eb510ffa  load.d r[4:5], -96(r30)
0015f4  8b271310  add.ul r[16:17], r[7:8], r[2:3]
0015f8  e3062fff  loadli.w r13,  -112(r30)
0015fc  8b213310  add.ul r[4:5], r[7:8], r[4:5]
001600  0b942111  add.s r8, r3, r18
001604  8b94a110  add.s r9, r3, r10
001608  0b954111  add.s r10, r3, r20
00160c  8b929111  add.s r5, r3, r25
001610  0b99c110  add.s r18, r3, r12
001614  6f170400  loads.bu r14, 0(r8)
001618  1bb42700  slli r8, r15, 2
00161c  e307dfff  loadli.w r15,  -24(r30)
001620  ef180500  loads.bu r17, 0(r10)
001624  ef950400  loads.bu r11, 0(r9)
001628  e304cfff  loadli.w r9,  -32(r30)
00162c  0b988111  add.s r16, r3, r24
001630  6f9b0200  loads.bu r22, 0(r5)
001634  6f450400  loads.w r10, 0(r8)
001638  6f4a4400  loads.w r20, 4(r8)
00163c  ef428400  loads.w r5, 8(r8)
001640  ef49c400  loads.w r19, 12(r8)
001644  8b97f110  add.s r15, r3, r15
001648  8b949110  add.s r9, r3, r9
00164c  ef9a0700  loads.bu r21, 0(r15)
001650  8b97d110  add.s r15, r3, r13
001654  e346afff  loadli.w r13,  -44(r30)
001658  ef9b0400  loads.bu r23, 0(r9)
00165c  ef140800  loads.bu r9, 0(r16)
001660  6f180900  loads.bu r16, 0(r18)
001664  0b99a111  add.s r18, r3, r26
001668  ef9c0700  loads.bu r25, 0(r15)
00166c  ef1d0900  loads.bu r27, 0(r18)
001670  0b9cd110  add.s r24, r3, r13
001674  e346cfff  loadli.w r13,  -28(r30)
001678  ef170c00  loads.bu r15, 0(r24)
00167c  8b91d110  add.s r3, r3, r13
001680  1702c501  and r4, r10, r28
001684  2b0e807f  lui r28, 522240
001688  63451fff  loadli.w r10,  -116(r30)
00168c  130d0200  seteq r26, r4, zero
001690  130cc201  seteq r24, r4, r28
001694  130e4e04  setlt.u r28, r28, r4
001698  0b19a410  add.s r18, r8, r10
00169c  6f950100  loads.bu r10, 0(r3)
0016a0  ef41c900  loads.w r3, 12(r18)
0016a4  6f428900  loads.w r4, 8(r18)
0016a8  170bab01  and r22, r22, r26
0016ac  6f4d4900  loads.w r26, 4(r18)
0016b0  978b8b01  and r23, r23, r24
0016b4  171b7b01  or r22, r22, r23
0016b8  979bcc01  or r23, r25, r28
0016bc  179b6b01  or r22, r23, r22
0016c0  ab0bc07f  lui r23, 523264
0016c4  1b0c1b00  andi r24, r22, 1
0016c8  2b0bc07f  lui r22, 523264
0016cc  3b200c00  bneq r24, zero, 8
0016d0  ef4b0900  loads.w r23, 0(r18)
0016d4  634e5fff  loadli.w r28,  -84(r30)
0016d8  ab0c807f  lui r25, 522240
0016dc  1709ca01  and r18, r20, r28
0016e0  130a0900  seteq r20, r18, zero
0016e4  130c9901  seteq r24, r18, r25
0016e8  13892c05  setlt.u r18, r25, r18
0016ec  17074701  and r14, r14, r20
0016f0  178a8a01  and r20, r21, r24
0016f4  17992d01  or r18, r27, r18
0016f8  17174701  or r14, r14, r20
0016fc  1717e900  or r14, r18, r14
001700  1b091700  andi r18, r14, 1
001704  2b07c07f  lui r14, 523264
001708  3b200900  bneq r18, zero, 8
00170c  1f070d00  addli r14, r26, 0
001710  9782c201  and r5, r5, r28
001714  e30dafff  loadli.w r27,  -48(r30)
001718  630c9fff  loadli.w r24,  -56(r30)
00171c  13890200  seteq r18, r5, zero
001720  138a9201  seteq r20, r5, r25
001724  93825c04  setlt.u r5, r25, r5
001728  97852501  and r11, r11, r18
00172c  97844401  and r9, r9, r20
001730  97925700  or r5, r15, r5
001734  6309efff  loadli.w r18,  -16(r30)
001738  97949500  or r9, r11, r9
00173c  ab05c07f  lui r11, 523264
001740  97929200  or r5, r5, r9
001744  9b821200  andi r5, r5, 1
001748  3ba00200  bneq r5, zero, 8
00174c  9f050200  addli r11, r4, 0
001750  1782c901  and r4, r19, r28
001754  e3071fff  loadli.w r15,  -120(r30)
001758  634aefff  loadli.w r20,  -12(r30)
00175c  634ddfff  loadli.w r26,  -20(r30)
001760  93020200  seteq r5, r4, zero
001764  93049201  seteq r9, r4, r25
001768  13824c04  setlt.u r4, r25, r4
00176c  97825800  and r5, r17, r5
001770  97049800  and r9, r16, r9
001774  17124500  or r4, r10, r4
001778  97929200  or r5, r5, r9
00177c  17125200  or r4, r4, r5
001780  1b021200  andi r4, r4, 1
001784  3b200200  bneq r4, zero, 8
001788  1f8b0100  addli r22, r3, 0
00178c  9709cb01  and r19, r22, r28
001790  93813c05  setlt.u r3, r25, r19
001794  3bb00100  bneq r3, zero, 12
001798  9f080b00  addli r17, r22, 0
00179c  db010000  j 12
0017a0  ab014000  lui r3, 1024
0017a4  97183b00  or r17, r22, r3
0017a8  9784c501  and r9, r11, r28
0017ac  93819c04  setlt.u r3, r25, r9
0017b0  3bb00100  bneq r3, zero, 12
0017b4  1f880500  addli r16, r11, 0
0017b8  db010000  j 12
0017bc  ab014000  lui r3, 1024
0017c0  17983500  or r16, r11, r3
0017c4  1702c701  and r4, r14, r28
0017c8  93814c04  setlt.u r3, r25, r4
0017cc  3bb00100  bneq r3, zero, 12
0017d0  9f010700  addli r3, r14, 0
0017d4  db010000  j 12
0017d8  ab014000  lui r3, 1024
0017dc  97113700  or r3, r14, r3
0017e0  1785cb01  and r10, r23, r28
0017e4  9382ac04  setlt.u r5, r25, r10
0017e8  3bb00200  bneq r5, zero, 12
0017ec  9f820b00  addli r5, r23, 0
0017f0  db010000  j 12
0017f4  ab024000  lui r5, 1024
0017f8  97925b00  or r5, r23, r5
0017fc  1385a704  setlt.u r10, r15, r10
001800  e30cbfff  loadli.w r25,  -40(r30)
001804  b7000500  beq r10, zero, 32
001808  13824704  setlt.u r4, r15, r4
00180c  b7700200  beq r4, zero, 60
001810  13829704  setlt.u r4, r15, r9
001814  37610200  beq r4, zero, 88
001818  13823705  setlt.u r4, r15, r19
00181c  3b4602fe  bneq r4, zero, -624
001820  5b0e0000  j 112
001824  9bc20b01  srli r5, r23, 16
001828  63055fff  loadli.w r10,  -88(r30)
00182c  9b821200  andi r5, r5, 1
001830  8b925b10  add.s r5, r23, r5
001834  8b92a210  add.s r5, r5, r10
001838  2b05ffff  lui r10, 1048560
00183c  9782a200  and r5, r5, r10
001840  13824704  setlt.u r4, r15, r4
001844  3b3f02fe  bneq r4, zero, -52
001848  9b410701  srli r3, r14, 16
00184c  63025fff  loadli.w r4,  -88(r30)
001850  9b811100  andi r3, r3, 1
001854  8b113710  add.s r3, r14, r3
001858  8b914110  add.s r3, r3, r4
00185c  2b02ffff  lui r4, 1048560
001860  97814100  and r3, r3, r4
001864  13829704  setlt.u r4, r15, r9
001868  bb4e02fe  bneq r4, zero, -80
00186c  1bc20501  srli r4, r11, 16
001870  e3045fff  loadli.w r9,  -88(r30)
001874  1b021200  andi r4, r4, 1
001878  0b924510  add.s r4, r11, r4
00187c  0b129210  add.s r4, r4, r9
001880  ab04ffff  lui r9, 1048560
001884  17089200  and r16, r4, r9
001888  13823705  setlt.u r4, r15, r19
00188c  bb0402fe  bneq r4, zero, -736
001890  1b420b01  srli r4, r22, 16
001894  e3045fff  loadli.w r9,  -88(r30)
001898  1b021200  andi r4, r4, 1
00189c  0b124b10  add.s r4, r22, r4
0018a0  0b129210  add.s r4, r4, r9
0018a4  ab04ffff  lui r9, 1048560
0018a8  97089200  and r17, r4, r9
0018ac  5ba0ffff  j -768
0018b0  9f400000  addli r1, zero, 4
0018b4  379c1b00  beq r23, r1, 772
0018b8  37c17b02  beq r23, r7, 1104
0018bc  9f700000  addli r1, zero, 7
0018c0  3bfd1b00  bneq r23, r1, 860
0018c4  9f001000  addli r1, zero, 8
0018c8  67460ffe  storeli.w zero, -156(r30)
0018cc  e70b0ffe  storeli.w zero, -72(r30)
0018d0  670b0ffe  storeli.w zero, -80(r30)
0018d4  670c0ffe  storeli.w zero, -64(r30)
0018d8  1f020000  addli r4, zero, 0
0018dc  7d900000  xwait r1, 0
0018e0  9f301000  addli r1, zero, 11
0018e4  7d900000  xwait r1, 0
0018e8  1d000000  lock zero, zero
0018ec  abc00000  lui r1, 12
0018f0  81050000  ds_cfg r11, zero, 0
0018f4  010b0002  ds_cfg r22, zero, 1
0018f8  010b001c  ds_cfg r22, zero, 14
0018fc  010b001a  ds_cfg r22, zero, 13
001900  41806005  shuffle_coa zero, r1, r22, 2
001904  9f101000  addli r1, zero, 9
001908  1d100000  unlock zero
00190c  7d800000  xsignal r1, 0
001910  9f100000  addli r1, zero, 1
001914  e70c1ffe  storeli.w r1, -56(r30)
001918  9f201000  addli r1, zero, 10
00191c  db85fdff  j -5076
001920  1f151000  addli r10, zero, 9
001924  9f5a0000  addli r21, zero, 5
001928  67460ffe  storeli.w zero, -156(r30)
00192c  e70b0ffe  storeli.w zero, -72(r30)
001930  e70c0ffe  storeli.w zero, -56(r30)
001934  670b0ffe  storeli.w zero, -80(r30)
001938  670c0ffe  storeli.w zero, -64(r30)
00193c  1f120000  addli r4, zero, 1
001940  9f310000  addli r3, zero, 3
001944  9f4c0000  addli r25, zero, 4
001948  9f780000  addli r17, zero, 7
00194c  9f771000  addli r15, zero, 15
001950  9f562000  addli r13, zero, 21
001954  1f662000  addli r12, zero, 22
001958  1f782000  addli r16, zero, 23
00195c  1f073000  addli r14, zero, 24
001960  eb528f00  load.d r[6:7], 8(r30)
001964  2bc40000  lui r8, 12
001968  9f040001  addli r9, zero, 128
00196c  7d100500  xwait r10, 0
001970  eb500ff5  load.d r[2:3], -176(r30)
001974  1d800a00  lock zero, r21
001978  15000014  dma_cfg zero, zero, zero, 10
00197c  15004014  dma_cfg zero, zero, r4, 10
001980  1500b014  dma_cfg zero, zero, r11, 10
001984  9f352000  addli r11, zero, 19
001988  97b04002  sll.d r[2:3], r[2:3], r4
00198c  15003014  dma_cfg zero, zero, r3, 10
001990  9f011000  addli r3, zero, 8
001994  15009015  dma_cfg zero, zero, r25, 10
001998  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
00199c  9f220000  addli r5, zero, 2
0019a0  1f030002  addli r6, zero, 256
0019a4  15005015  dma_cfg zero, zero, r21, 10
0019a8  15007014  dma_cfg zero, zero, r7, 10
0019ac  15001015  dma_cfg zero, zero, r17, 10
0019b0  15003014  dma_cfg zero, zero, r3, 10
0019b4  9f211000  addli r3, zero, 10
0019b8  1500a014  dma_cfg zero, zero, r10, 10
0019bc  15003014  dma_cfg zero, zero, r3, 10
0019c0  9f311000  addli r3, zero, 11
0019c4  15003014  dma_cfg zero, zero, r3, 10
0019c8  9f411000  addli r3, zero, 12
0019cc  15003014  dma_cfg zero, zero, r3, 10
0019d0  9f511000  addli r3, zero, 13
0019d4  15003014  dma_cfg zero, zero, r3, 10
0019d8  9f611000  addli r3, zero, 14
0019dc  15003014  dma_cfg zero, zero, r3, 10
0019e0  9f012000  addli r3, zero, 16
0019e4  1500f014  dma_cfg zero, zero, r15, 10
0019e8  15003014  dma_cfg zero, zero, r3, 10
0019ec  9f112000  addli r3, zero, 17
0019f0  15003014  dma_cfg zero, zero, r3, 10
0019f4  9f212000  addli r3, zero, 18
0019f8  15003014  dma_cfg zero, zero, r3, 10
0019fc  9f412000  addli r3, zero, 20
001a00  1500b014  dma_cfg zero, zero, r11, 10
001a04  15003014  dma_cfg zero, zero, r3, 10
001a08  9f113000  addli r3, zero, 25
001a0c  1500d014  dma_cfg zero, zero, r13, 10
001a10  1500c014  dma_cfg zero, zero, r12, 10
001a14  15000015  dma_cfg zero, zero, r16, 10
001a18  1500e014  dma_cfg zero, zero, r14, 10
001a1c  15003014  dma_cfg zero, zero, r3, 10
001a20  9f213000  addli r3, zero, 26
001a24  15003014  dma_cfg zero, zero, r3, 10
001a28  9f313000  addli r3, zero, 27
001a2c  15003014  dma_cfg zero, zero, r3, 10
001a30  9f413000  addli r3, zero, 28
001a34  15003014  dma_cfg zero, zero, r3, 10
001a38  9f513000  addli r3, zero, 29
001a3c  15003014  dma_cfg zero, zero, r3, 10
001a40  9f613000  addli r3, zero, 30
001a44  15003014  dma_cfg zero, zero, r3, 10
001a48  9f713000  addli r3, zero, 31
001a4c  15003014  dma_cfg zero, zero, r3, 10
001a50  9b110404  ori r3, r8, 64
001a54  15020200  dma_cfg r4, r4, zero, 0
001a58  15020002  dma_cfg r4, zero, zero, 1
001a5c  15000004  dma_cfg zero, zero, zero, 2
001a60  15046007  dma_cfg r8, zero, r22, 3
001a64  95045008  dma_cfg r9, zero, r5, 4
001a68  1503600b  dma_cfg r6, zero, r22, 5
001a6c  15000010  dma_cfg zero, zero, zero, 8
001a70  35000000  dma_run zero
001a74  1500400a  dma_cfg zero, zero, r4, 5
001a78  15000010  dma_cfg zero, zero, zero, 8
001a7c  1d900a00  unlock r21
001a80  1d800c00  lock zero, r25
001a84  15020200  dma_cfg r4, r4, zero, 0
001a88  15000104  dma_cfg zero, r2, zero, 2
001a8c  95816007  dma_cfg r3, r1, r22, 3
001a90  9f000010  addli r1, zero, 2048
001a94  1f211000  addli r2, zero, 10
001a98  95045b08  dma_cfg r9, r22, r5, 4
001a9c  1583600b  dma_cfg r6, r1, r22, 5
001aa0  9f300000  addli r1, zero, 3
001aa4  15000010  dma_cfg zero, zero, zero, 8
001aa8  35000000  dma_run zero
001aac  1500400a  dma_cfg zero, zero, r4, 5
001ab0  15000010  dma_cfg zero, zero, zero, 8
001ab4  1d900c00  unlock r25
001ab8  1d800a00  lock zero, r21
001abc  15000014  dma_cfg zero, zero, zero, 10
001ac0  15004014  dma_cfg zero, zero, r4, 10
001ac4  15005014  dma_cfg zero, zero, r5, 10
001ac8  15001014  dma_cfg zero, zero, r1, 10
001acc  9f001000  addli r1, zero, 8
001ad0  15009015  dma_cfg zero, zero, r25, 10
001ad4  e30cbfff  loadli.w r25,  -40(r30)
001ad8  15005015  dma_cfg zero, zero, r21, 10
001adc  15007014  dma_cfg zero, zero, r7, 10
001ae0  15001015  dma_cfg zero, zero, r17, 10
001ae4  15001014  dma_cfg zero, zero, r1, 10
001ae8  1500a014  dma_cfg zero, zero, r10, 10
001aec  15002014  dma_cfg zero, zero, r2, 10
001af0  1f311000  addli r2, zero, 11
001af4  15002014  dma_cfg zero, zero, r2, 10
001af8  1f411000  addli r2, zero, 12
001afc  15002014  dma_cfg zero, zero, r2, 10
001b00  1f511000  addli r2, zero, 13
001b04  15002014  dma_cfg zero, zero, r2, 10
001b08  1f611000  addli r2, zero, 14
001b0c  15002014  dma_cfg zero, zero, r2, 10
001b10  1f012000  addli r2, zero, 16
001b14  1500f014  dma_cfg zero, zero, r15, 10
001b18  15002014  dma_cfg zero, zero, r2, 10
001b1c  1f112000  addli r2, zero, 17
001b20  15002014  dma_cfg zero, zero, r2, 10
001b24  1f212000  addli r2, zero, 18
001b28  15002014  dma_cfg zero, zero, r2, 10
001b2c  1f412000  addli r2, zero, 20
001b30  1500b014  dma_cfg zero, zero, r11, 10
001b34  9f250000  addli r11, zero, 2
001b38  15002014  dma_cfg zero, zero, r2, 10
001b3c  1f113000  addli r2, zero, 25
001b40  1500d014  dma_cfg zero, zero, r13, 10
001b44  1500c014  dma_cfg zero, zero, r12, 10
001b48  63064fff  loadli.w r12,  -96(r30)
001b4c  15000015  dma_cfg zero, zero, r16, 10
001b50  1500e014  dma_cfg zero, zero, r14, 10
001b54  15002014  dma_cfg zero, zero, r2, 10
001b58  1f213000  addli r2, zero, 26
001b5c  15002014  dma_cfg zero, zero, r2, 10
001b60  1f313000  addli r2, zero, 27
001b64  15002014  dma_cfg zero, zero, r2, 10
001b68  1f413000  addli r2, zero, 28
001b6c  15002014  dma_cfg zero, zero, r2, 10
001b70  1f513000  addli r2, zero, 29
001b74  15002014  dma_cfg zero, zero, r2, 10
001b78  1f613000  addli r2, zero, 30
001b7c  15002014  dma_cfg zero, zero, r2, 10
001b80  1f713000  addli r2, zero, 31
001b84  15002014  dma_cfg zero, zero, r2, 10
001b88  15020200  dma_cfg r4, r4, zero, 0
001b8c  15020002  dma_cfg r4, zero, zero, 1
001b90  15000004  dma_cfg zero, zero, zero, 2
001b94  15046007  dma_cfg r8, zero, r22, 3
001b98  9504b008  dma_cfg r9, zero, r11, 4
001b9c  1503600b  dma_cfg r6, zero, r22, 5
001ba0  15000010  dma_cfg zero, zero, zero, 8
001ba4  35000000  dma_run zero
001ba8  1500400a  dma_cfg zero, zero, r4, 5
001bac  15000010  dma_cfg zero, zero, zero, 8
001bb0  1d900a00  unlock r21
001bb4  db32fdff  j -5740
001bb8  9f201000  addli r1, zero, 10
001bbc  67460ffe  storeli.w zero, -156(r30)
001bc0  e70c0ffe  storeli.w zero, -56(r30)
001bc4  670b0ffe  storeli.w zero, -80(r30)
001bc8  670c0ffe  storeli.w zero, -64(r30)
001bcc  7d900300  xwait r7, 0
001bd0  1f110000  addli r2, zero, 1
001bd4  1f020000  addli r4, zero, 0
001bd8  7d900000  xwait r1, 0
001bdc  9f402000  addli r1, zero, 20
001be0  7d900000  xwait r1, 0
001be4  1d000100  lock zero, r2
001be8  9f400000  addli r1, zero, 4
001bec  090b6b01  mm_cfg r22, r22, r22, 0
001bf0  89802504  mm_cfg r1, r11, r2, 2
001bf4  9f100000  addli r1, zero, 1
001bf8  290d0010  mm r26, zero, zero, 8
001bfc  e70b1ffe  storeli.w r1, -72(r30)
001c00  9f700000  addli r1, zero, 7
001c04  1d100100  unlock r2
001c08  7d800000  xsignal r1, 0
001c0c  9f301000  addli r1, zero, 11
001c10  7d800000  xsignal r1, 0
001c14  9f601000  addli r1, zero, 14
001c18  5b26fdff  j -5840
001c1c  6342cffe  loadli.w r4,  -156(r30)
001c20  e70b4ffe  storeli.w r4, -72(r30)
001c24  e70c4ffe  storeli.w r4, -56(r30)
001c28  670b4ffe  storeli.w r4, -80(r30)
001c2c  670c4ffe  storeli.w r4, -64(r30)
001c30  db23fdff  j -5860
001c34  9f602000  addli r1, zero, 22
001c38  e70b0ffe  storeli.w zero, -72(r30)
001c3c  e70c0ffe  storeli.w zero, -56(r30)
001c40  670b0ffe  storeli.w zero, -80(r30)
001c44  670c0ffe  storeli.w zero, -64(r30)
001c48  1f513000  addli r2, zero, 29
001c4c  1f020000  addli r4, zero, 0
001c50  803b0002  core_id r23
001c54  9f250000  addli r11, zero, 2
001c58  2b490000  lui r18, 4
001c5c  1f0b8000  addli r22, zero, 64
001c60  00200100  mfence { sm }
001c64  7d800000  xsignal r1, 0
001c68  9f003000  addli r1, zero, 24
001c6c  7d800000  xsignal r1, 0
001c70  9f104000  addli r1, zero, 33
001c74  7d000100  xsignal r2, 0
001c78  7d800000  xsignal r1, 0
001c7c  9f504000  addli r1, zero, 37
001c80  7d800000  xsignal r1, 0
001c84  9f105000  addli r1, zero, 41
001c88  7d800000  xsignal r1, 0
001c8c  9f100000  addli r1, zero, 1
001c90  7d100100  xwait r2, 0
001c94  67461ffe  storeli.w r1, -156(r30)
001c98  9f605000  addli r1, zero, 46
001c9c  7d900000  xwait r1, 0
001ca0  634d1fff  loadli.w r26,  -116(r30)
001ca4  e3492fff  loadli.w r19,  -108(r30)
001ca8  634a8ffe  loadli.w r20,  -188(r30)
001cac  5b14fdff  j -5984
001cb0  9f400000  addli r1, zero, 4
001cb4  67460ffe  storeli.w zero, -156(r30)
001cb8  e70b0ffe  storeli.w zero, -72(r30)
001cbc  e70c0ffe  storeli.w zero, -56(r30)
001cc0  670c0ffe  storeli.w zero, -64(r30)
001cc4  1f020000  addli r4, zero, 0
001cc8  7d900000  xwait r1, 0
001ccc  9f700000  addli r1, zero, 7
001cd0  7d900000  xwait r1, 0
001cd4  1d000000  lock zero, zero
001cd8  9f500000  addli r1, zero, 5
001cdc  81050000  ds_cfg r11, zero, 0
001ce0  010b0002  ds_cfg r22, zero, 1
001ce4  010b001c  ds_cfg r22, zero, 14
001ce8  010b001a  ds_cfg r22, zero, 13
001cec  21106903  shuffle_batch zero, r18, r22, 1
001cf0  1d100000  unlock zero
001cf4  7d800000  xsignal r1, 0
001cf8  9f100000  addli r1, zero, 1
001cfc  670b1ffe  storeli.w r1, -80(r30)
001d00  7d800300  xsignal r7, 0
001d04  5b09fdff  j -6072
001d08  9f5a0000  addli r21, zero, 5
001d0c  eb508ff4  load.d r[2:3], -184(r30)
001d10  9f511000  addli r3, zero, 13
001d14  67460ffe  storeli.w zero, -156(r30)
001d18  e70b0ffe  storeli.w zero, -72(r30)
001d1c  e70c0ffe  storeli.w zero, -56(r30)
001d20  670b0ffe  storeli.w zero, -80(r30)
001d24  9f140000  addli r9, zero, 1
001d28  9f4c0000  addli r25, zero, 4
001d2c  1f581000  addli r16, zero, 13
001d30  eb520f00  load.d r[6:7], 0(r30)
001d34  1f070002  addli r14, zero, 256
001d38  9f370000  addli r15, zero, 3
001d3c  1f740000  addli r8, zero, 7
001d40  1f451000  addli r10, zero, 12
001d44  9f781000  addli r17, zero, 15
001d48  1f263000  addli r12, zero, 26
001d4c  9f363000  addli r13, zero, 27
001d50  1f020000  addli r4, zero, 0
001d54  7d900a00  xwait r21, 0
001d58  1d800a00  lock zero, r21
001d5c  15000014  dma_cfg zero, zero, zero, 10
001d60  97b03002  sll.d r[2:3], r[2:3], r3
001d64  9f310000  addli r3, zero, 3
001d68  15009014  dma_cfg zero, zero, r9, 10
001d6c  1500b014  dma_cfg zero, zero, r11, 10
001d70  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
001d74  9f220000  addli r5, zero, 2
001d78  1f030001  addli r6, zero, 128
001d7c  9f251000  addli r11, zero, 10
001d80  15003014  dma_cfg zero, zero, r3, 10
001d84  9f710000  addli r3, zero, 7
001d88  15009015  dma_cfg zero, zero, r25, 10
001d8c  15005015  dma_cfg zero, zero, r21, 10
001d90  15007014  dma_cfg zero, zero, r7, 10
001d94  15003014  dma_cfg zero, zero, r3, 10
001d98  9f011000  addli r3, zero, 8
001d9c  15003014  dma_cfg zero, zero, r3, 10
001da0  9f111000  addli r3, zero, 9
001da4  15003014  dma_cfg zero, zero, r3, 10
001da8  9f211000  addli r3, zero, 10
001dac  15003014  dma_cfg zero, zero, r3, 10
001db0  9f311000  addli r3, zero, 11
001db4  15003014  dma_cfg zero, zero, r3, 10
001db8  9f411000  addli r3, zero, 12
001dbc  15003014  dma_cfg zero, zero, r3, 10
001dc0  9f611000  addli r3, zero, 14
001dc4  15000015  dma_cfg zero, zero, r16, 10
001dc8  15003014  dma_cfg zero, zero, r3, 10
001dcc  9f711000  addli r3, zero, 15
001dd0  15003014  dma_cfg zero, zero, r3, 10
001dd4  9f012000  addli r3, zero, 16
001dd8  15003014  dma_cfg zero, zero, r3, 10
001ddc  9f112000  addli r3, zero, 17
001de0  15003014  dma_cfg zero, zero, r3, 10
001de4  9f212000  addli r3, zero, 18
001de8  15003014  dma_cfg zero, zero, r3, 10
001dec  9f312000  addli r3, zero, 19
001df0  15003014  dma_cfg zero, zero, r3, 10
001df4  9f412000  addli r3, zero, 20
001df8  15003014  dma_cfg zero, zero, r3, 10
001dfc  9f512000  addli r3, zero, 21
001e00  15003014  dma_cfg zero, zero, r3, 10
001e04  9f612000  addli r3, zero, 22
001e08  15003014  dma_cfg zero, zero, r3, 10
001e0c  9f712000  addli r3, zero, 23
001e10  15003014  dma_cfg zero, zero, r3, 10
001e14  9f013000  addli r3, zero, 24
001e18  15003014  dma_cfg zero, zero, r3, 10
001e1c  9f113000  addli r3, zero, 25
001e20  15003014  dma_cfg zero, zero, r3, 10
001e24  9f213000  addli r3, zero, 26
001e28  15003014  dma_cfg zero, zero, r3, 10
001e2c  9f313000  addli r3, zero, 27
001e30  15003014  dma_cfg zero, zero, r3, 10
001e34  9f413000  addli r3, zero, 28
001e38  15003014  dma_cfg zero, zero, r3, 10
001e3c  9f513000  addli r3, zero, 29
001e40  15003014  dma_cfg zero, zero, r3, 10
001e44  9f613000  addli r3, zero, 30
001e48  15003014  dma_cfg zero, zero, r3, 10
001e4c  9f713000  addli r3, zero, 31
001e50  15003014  dma_cfg zero, zero, r3, 10
001e54  9f010002  addli r3, zero, 256
001e58  95840400  dma_cfg r9, r9, zero, 0
001e5c  95040002  dma_cfg r9, zero, zero, 1
001e60  15000004  dma_cfg zero, zero, zero, 2
001e64  15096007  dma_cfg r18, zero, r22, 3
001e68  15035008  dma_cfg r6, zero, r5, 4
001e6c  9501600b  dma_cfg r3, zero, r22, 5
001e70  9b110904  ori r3, r18, 64
001e74  15000010  dma_cfg zero, zero, zero, 8
001e78  35000000  dma_run zero
001e7c  1500900a  dma_cfg zero, zero, r9, 5
001e80  15000010  dma_cfg zero, zero, zero, 8
001e84  1d900a00  unlock r21
001e88  1d800c00  lock zero, r25
001e8c  95840400  dma_cfg r9, r9, zero, 0
001e90  15000104  dma_cfg zero, r2, zero, 2
001e94  95816007  dma_cfg r3, r1, r22, 3
001e98  9f101000  addli r1, zero, 9
001e9c  9f712000  addli r3, zero, 23
001ea0  15035b08  dma_cfg r6, r22, r5, 4
001ea4  1507630b  dma_cfg r14, r6, r22, 5
001ea8  15000010  dma_cfg zero, zero, zero, 8
001eac  35000000  dma_run zero
001eb0  1500900a  dma_cfg zero, zero, r9, 5
001eb4  15000010  dma_cfg zero, zero, zero, 8
001eb8  1d900c00  unlock r25
001ebc  1d800a00  lock zero, r21
001ec0  15000014  dma_cfg zero, zero, zero, 10
001ec4  15009014  dma_cfg zero, zero, r9, 10
001ec8  15005014  dma_cfg zero, zero, r5, 10
001ecc  1500f014  dma_cfg zero, zero, r15, 10
001ed0  15009015  dma_cfg zero, zero, r25, 10
001ed4  15005015  dma_cfg zero, zero, r21, 10
001ed8  15007014  dma_cfg zero, zero, r7, 10
001edc  15008014  dma_cfg zero, zero, r8, 10
001ee0  1f041000  addli r8, zero, 8
001ee4  15008014  dma_cfg zero, zero, r8, 10
001ee8  15001014  dma_cfg zero, zero, r1, 10
001eec  9f301000  addli r1, zero, 11
001ef0  1500b014  dma_cfg zero, zero, r11, 10
001ef4  9f651000  addli r11, zero, 14
001ef8  15001014  dma_cfg zero, zero, r1, 10
001efc  9f202000  addli r1, zero, 18
001f00  1500a014  dma_cfg zero, zero, r10, 10
001f04  1f052000  addli r10, zero, 16
001f08  15000015  dma_cfg zero, zero, r16, 10
001f0c  1f783000  addli r16, zero, 31
001f10  1500b014  dma_cfg zero, zero, r11, 10
001f14  15001015  dma_cfg zero, zero, r17, 10
001f18  9f182000  addli r17, zero, 17
001f1c  1500a014  dma_cfg zero, zero, r10, 10
001f20  15001015  dma_cfg zero, zero, r17, 10
001f24  15001014  dma_cfg zero, zero, r1, 10
001f28  9f302000  addli r1, zero, 19
001f2c  15001014  dma_cfg zero, zero, r1, 10
001f30  9f402000  addli r1, zero, 20
001f34  15001014  dma_cfg zero, zero, r1, 10
001f38  9f502000  addli r1, zero, 21
001f3c  15001014  dma_cfg zero, zero, r1, 10
001f40  9f602000  addli r1, zero, 22
001f44  15001014  dma_cfg zero, zero, r1, 10
001f48  9f003000  addli r1, zero, 24
001f4c  15003014  dma_cfg zero, zero, r3, 10
001f50  15001014  dma_cfg zero, zero, r1, 10
001f54  9f103000  addli r1, zero, 25
001f58  15001014  dma_cfg zero, zero, r1, 10
001f5c  9f403000  addli r1, zero, 28
001f60  1500c014  dma_cfg zero, zero, r12, 10
001f64  1f663000  addli r12, zero, 30
001f68  1500d014  dma_cfg zero, zero, r13, 10
001f6c  15001014  dma_cfg zero, zero, r1, 10
001f70  9f503000  addli r1, zero, 29
001f74  15001014  dma_cfg zero, zero, r1, 10
001f78  1500c014  dma_cfg zero, zero, r12, 10
001f7c  15000015  dma_cfg zero, zero, r16, 10
001f80  95840400  dma_cfg r9, r9, zero, 0
001f84  95040002  dma_cfg r9, zero, zero, 1
001f88  15000004  dma_cfg zero, zero, zero, 2
001f8c  15096007  dma_cfg r18, zero, r22, 3
001f90  15035008  dma_cfg r6, zero, r5, 4
001f94  1507600b  dma_cfg r14, zero, r22, 5
001f98  eb560f01  load.d r[14:15], 16(r30)
001f9c  15000010  dma_cfg zero, zero, zero, 8
001fa0  35000000  dma_run zero
001fa4  1500900a  dma_cfg zero, zero, r9, 5
001fa8  15000010  dma_cfg zero, zero, zero, 8
001fac  1d900a00  unlock r21
001fb0  eb500ff5  load.d r[2:3], -176(r30)
001fb4  7d800c00  xsignal r25, 0
001fb8  97b09002  sll.d r[2:3], r[2:3], r9
001fbc  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001fc0  9f561000  addli r13, zero, 13
001fc4  1f770000  addli r14, zero, 7
001fc8  7d900600  xwait r13, 0
001fcc  1d800a00  lock zero, r21
001fd0  15000014  dma_cfg zero, zero, zero, 10
001fd4  15009014  dma_cfg zero, zero, r9, 10
001fd8  15005014  dma_cfg zero, zero, r5, 10
001fdc  1500f014  dma_cfg zero, zero, r15, 10
001fe0  9f672000  addli r15, zero, 22
001fe4  15009015  dma_cfg zero, zero, r25, 10
001fe8  15005015  dma_cfg zero, zero, r21, 10
001fec  15007014  dma_cfg zero, zero, r7, 10
001ff0  1500e014  dma_cfg zero, zero, r14, 10
001ff4  15008014  dma_cfg zero, zero, r8, 10
001ff8  1f141000  addli r8, zero, 9
001ffc  15008014  dma_cfg zero, zero, r8, 10
002000  1f241000  addli r8, zero, 10
002004  15008014  dma_cfg zero, zero, r8, 10
002008  1f341000  addli r8, zero, 11
00200c  15008014  dma_cfg zero, zero, r8, 10
002010  1f441000  addli r8, zero, 12
002014  15008014  dma_cfg zero, zero, r8, 10
002018  1f741000  addli r8, zero, 15
00201c  1500d014  dma_cfg zero, zero, r13, 10
002020  ab060100  lui r13, 16
002024  1500b014  dma_cfg zero, zero, r11, 10
002028  9f152000  addli r11, zero, 17
00202c  15008014  dma_cfg zero, zero, r8, 10
002030  1500a014  dma_cfg zero, zero, r10, 10
002034  1f252000  addli r10, zero, 18
002038  15001015  dma_cfg zero, zero, r17, 10
00203c  9f282000  addli r17, zero, 18
002040  1500a014  dma_cfg zero, zero, r10, 10
002044  1f352000  addli r10, zero, 19
002048  1500a014  dma_cfg zero, zero, r10, 10
00204c  1f452000  addli r10, zero, 20
002050  1500a014  dma_cfg zero, zero, r10, 10
002054  1f552000  addli r10, zero, 21
002058  1500a014  dma_cfg zero, zero, r10, 10
00205c  1f553000  addli r10, zero, 29
002060  1500f014  dma_cfg zero, zero, r15, 10
002064  15003014  dma_cfg zero, zero, r3, 10
002068  9f013000  addli r3, zero, 24
00206c  15003014  dma_cfg zero, zero, r3, 10
002070  9f113000  addli r3, zero, 25
002074  15003014  dma_cfg zero, zero, r3, 10
002078  9f213000  addli r3, zero, 26
00207c  15003014  dma_cfg zero, zero, r3, 10
002080  9f313000  addli r3, zero, 27
002084  15003014  dma_cfg zero, zero, r3, 10
002088  9f413000  addli r3, zero, 28
00208c  15003014  dma_cfg zero, zero, r3, 10
002090  9b910604  ori r3, r13, 64
002094  1500a014  dma_cfg zero, zero, r10, 10
002098  1500c014  dma_cfg zero, zero, r12, 10
00209c  1f060002  addli r12, zero, 256
0020a0  15000015  dma_cfg zero, zero, r16, 10
0020a4  1f783000  addli r16, zero, 31
0020a8  95840400  dma_cfg r9, r9, zero, 0
0020ac  95040002  dma_cfg r9, zero, zero, 1
0020b0  15000004  dma_cfg zero, zero, zero, 2
0020b4  95066007  dma_cfg r13, zero, r22, 3
0020b8  15035008  dma_cfg r6, zero, r5, 4
0020bc  1506900a  dma_cfg r12, zero, r9, 5
0020c0  15000010  dma_cfg zero, zero, zero, 8
0020c4  35000000  dma_run zero
0020c8  1500900a  dma_cfg zero, zero, r9, 5
0020cc  15000010  dma_cfg zero, zero, zero, 8
0020d0  1d900a00  unlock r21
0020d4  1d800c00  lock zero, r25
0020d8  95840400  dma_cfg r9, r9, zero, 0
0020dc  15000104  dma_cfg zero, r2, zero, 2
0020e0  95816007  dma_cfg r3, r1, r22, 3
0020e4  1f310000  addli r2, zero, 3
0020e8  9f511000  addli r3, zero, 13
0020ec  9f000002  addli r1, zero, 256
0020f0  15035b08  dma_cfg r6, r22, r5, 4
0020f4  1506930a  dma_cfg r12, r6, r9, 5
0020f8  15000010  dma_cfg zero, zero, zero, 8
0020fc  35000000  dma_run zero
002100  1500900a  dma_cfg zero, zero, r9, 5
002104  15000010  dma_cfg zero, zero, zero, 8
002108  1d900c00  unlock r25
00210c  1d800a00  lock zero, r21
002110  15000014  dma_cfg zero, zero, zero, 10
002114  15009014  dma_cfg zero, zero, r9, 10
002118  15005014  dma_cfg zero, zero, r5, 10
00211c  15002014  dma_cfg zero, zero, r2, 10
002120  1f011000  addli r2, zero, 8
002124  15009015  dma_cfg zero, zero, r25, 10
002128  e30cbfff  loadli.w r25,  -40(r30)
00212c  15005015  dma_cfg zero, zero, r21, 10
002130  15007014  dma_cfg zero, zero, r7, 10
002134  1500e014  dma_cfg zero, zero, r14, 10
002138  15002014  dma_cfg zero, zero, r2, 10
00213c  1f111000  addli r2, zero, 9
002140  15002014  dma_cfg zero, zero, r2, 10
002144  1f211000  addli r2, zero, 10
002148  15002014  dma_cfg zero, zero, r2, 10
00214c  1f311000  addli r2, zero, 11
002150  15002014  dma_cfg zero, zero, r2, 10
002154  1f411000  addli r2, zero, 12
002158  15002014  dma_cfg zero, zero, r2, 10
00215c  15003014  dma_cfg zero, zero, r3, 10
002160  9f611000  addli r3, zero, 14
002164  15003014  dma_cfg zero, zero, r3, 10
002168  9f012000  addli r3, zero, 16
00216c  15008014  dma_cfg zero, zero, r8, 10
002170  15003014  dma_cfg zero, zero, r3, 10
002174  9f312000  addli r3, zero, 19
002178  1500b014  dma_cfg zero, zero, r11, 10
00217c  9f250000  addli r11, zero, 2
002180  15001015  dma_cfg zero, zero, r17, 10
002184  15003014  dma_cfg zero, zero, r3, 10
002188  9f412000  addli r3, zero, 20
00218c  63064fff  loadli.w r12,  -96(r30)
002190  15003014  dma_cfg zero, zero, r3, 10
002194  9f512000  addli r3, zero, 21
002198  15003014  dma_cfg zero, zero, r3, 10
00219c  9f712000  addli r3, zero, 23
0021a0  1500f014  dma_cfg zero, zero, r15, 10
0021a4  15003014  dma_cfg zero, zero, r3, 10
0021a8  9f013000  addli r3, zero, 24
0021ac  15003014  dma_cfg zero, zero, r3, 10
0021b0  9f113000  addli r3, zero, 25
0021b4  15003014  dma_cfg zero, zero, r3, 10
0021b8  9f213000  addli r3, zero, 26
0021bc  15003014  dma_cfg zero, zero, r3, 10
0021c0  9f313000  addli r3, zero, 27
0021c4  15003014  dma_cfg zero, zero, r3, 10
0021c8  9f413000  addli r3, zero, 28
0021cc  15003014  dma_cfg zero, zero, r3, 10
0021d0  9f613000  addli r3, zero, 30
0021d4  1500a014  dma_cfg zero, zero, r10, 10
0021d8  15003014  dma_cfg zero, zero, r3, 10
0021dc  15000015  dma_cfg zero, zero, r16, 10
0021e0  95840400  dma_cfg r9, r9, zero, 0
0021e4  95040002  dma_cfg r9, zero, zero, 1
0021e8  15000004  dma_cfg zero, zero, zero, 2
0021ec  95066007  dma_cfg r13, zero, r22, 3
0021f0  1503b008  dma_cfg r6, zero, r11, 4
0021f4  9500900a  dma_cfg r1, zero, r9, 5
0021f8  9f100000  addli r1, zero, 1
0021fc  15000010  dma_cfg zero, zero, zero, 8
002200  35000000  dma_run zero
002204  670c1ffe  storeli.w r1, -64(r30)
002208  1500900a  dma_cfg zero, zero, r9, 5
00220c  15000010  dma_cfg zero, zero, zero, 8
002210  1d900a00  unlock r21
002214  7d000100  xsignal r2, 0
002218  db66fcff  j -7372
00221c  7d000000  xsignal zero, 0
002220  bbe00b00  bneq r23, zero, 56
002224  9f200000  addli r1, zero, 2
002228  7d100000  xwait zero, 0
00222c  7d100000  xwait zero, 0
002230  7d100000  xwait zero, 0
002234  7d100000  xwait zero, 0
002238  7d100000  xwait zero, 0
00223c  7d100000  xwait zero, 0
002240  7d100000  xwait zero, 0
002244  7d100000  xwait zero, 0
002248  1d800000  lock zero, r1
00224c  0d000020  ew_cfg zero, zero, zero, 16
002250  1d900000  unlock r1
002254  7d400000  xsignal_mode_cfg zero
002258  9f8ebe01  addli sp, sp, 216
00225c  00a00300  mfence { lm, sm, gm }
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
002470  00100000  exit
002474  00100000  exit
002478  00100000  exit
00247c  00100000  exit
002480  00100000  exit
002484  00100000  exit
002488  00100000  exit
00248c  00100000  exit
002490  00100000  exit
002494  00100000  exit
002498  00100000  exit
00249c  00100000  exit
0024a0  00100000  exit
