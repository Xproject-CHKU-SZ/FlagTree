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
00005c  9f097000  addli r19, zero, 56
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
0000b4  9f8efefc  addli sp, sp, -392
0000b8  9f100000  addli r1, zero, 1
0000bc  80350002  core_id r11
0000c0  1f8f9e02  addli r30, sp, 328
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00500  beq r11, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b360000  j 432
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  1d100100  unlock r2
0000fc  1f610000  addli r2, zero, 6
000100  80a10004  csr_set csr3, r1
000104  9f701000  addli r1, zero, 15
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  9f400000  addli r1, zero, 4
000114  7d000100  xsignal r2, 0
000118  7d000100  xsignal r2, 0
00011c  7d000100  xsignal r2, 0
000120  7d000100  xsignal r2, 0
000124  7d000100  xsignal r2, 0
000128  7d000100  xsignal r2, 0
00012c  7d000100  xsignal r2, 0
000130  7d000100  xsignal r2, 0
000134  7d000100  xsignal r2, 0
000138  7d000100  xsignal r2, 0
00013c  7d000100  xsignal r2, 0
000140  7d000100  xsignal r2, 0
000144  7d000100  xsignal r2, 0
000148  7d000100  xsignal r2, 0
00014c  7d000100  xsignal r2, 0
000150  7d000100  xsignal r2, 0
000154  7d000100  xsignal r2, 0
000158  7d000100  xsignal r2, 0
00015c  7d000100  xsignal r2, 0
000160  7d000100  xsignal r2, 0
000164  7d000100  xsignal r2, 0
000168  7d000100  xsignal r2, 0
00016c  7d000100  xsignal r2, 0
000170  7d000100  xsignal r2, 0
000174  1f311000  addli r2, zero, 11
000178  7d800000  xsignal r1, 0
00017c  7d800000  xsignal r1, 0
000180  7d800000  xsignal r1, 0
000184  7d800000  xsignal r1, 0
000188  7d800000  xsignal r1, 0
00018c  7d800000  xsignal r1, 0
000190  7d800000  xsignal r1, 0
000194  7d800000  xsignal r1, 0
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  9f101000  addli r1, zero, 9
0001a4  7d000100  xsignal r2, 0
0001a8  7d000100  xsignal r2, 0
0001ac  7d000100  xsignal r2, 0
0001b0  7d000100  xsignal r2, 0
0001b4  7d000100  xsignal r2, 0
0001b8  7d000100  xsignal r2, 0
0001bc  7d000100  xsignal r2, 0
0001c0  7d000100  xsignal r2, 0
0001c4  7d000100  xsignal r2, 0
0001c8  7d000100  xsignal r2, 0
0001cc  7d000100  xsignal r2, 0
0001d0  7d000100  xsignal r2, 0
0001d4  7d000100  xsignal r2, 0
0001d8  7d000100  xsignal r2, 0
0001dc  7d000100  xsignal r2, 0
0001e0  7d000100  xsignal r2, 0
0001e4  7d000100  xsignal r2, 0
0001e8  7d000100  xsignal r2, 0
0001ec  7d000100  xsignal r2, 0
0001f0  7d000100  xsignal r2, 0
0001f4  7d000100  xsignal r2, 0
0001f8  7d000100  xsignal r2, 0
0001fc  7d000100  xsignal r2, 0
000200  7d000100  xsignal r2, 0
000204  7d000100  xsignal r2, 0
000208  7d000100  xsignal r2, 0
00020c  7d000100  xsignal r2, 0
000210  7d000100  xsignal r2, 0
000214  7d000100  xsignal r2, 0
000218  7d000100  xsignal r2, 0
00021c  7d000100  xsignal r2, 0
000220  7d000100  xsignal r2, 0
000224  7d000100  xsignal r2, 0
000228  7d000100  xsignal r2, 0
00022c  7d000100  xsignal r2, 0
000230  7d000100  xsignal r2, 0
000234  7d000100  xsignal r2, 0
000238  7d000100  xsignal r2, 0
00023c  7d000100  xsignal r2, 0
000240  7d000100  xsignal r2, 0
000244  1f512000  addli r2, zero, 21
000248  7d800000  xsignal r1, 0
00024c  7d800000  xsignal r1, 0
000250  7d800000  xsignal r1, 0
000254  7d800000  xsignal r1, 0
000258  7d800000  xsignal r1, 0
00025c  7d800000  xsignal r1, 0
000260  7d800000  xsignal r1, 0
000264  7d800000  xsignal r1, 0
000268  7d800000  xsignal r1, 0
00026c  7d800000  xsignal r1, 0
000270  9f202000  addli r1, zero, 18
000274  7d800000  xsignal r1, 0
000278  7d000100  xsignal r2, 0
00027c  9f702000  addli r1, zero, 23
000280  1f113000  addli r2, zero, 25
000284  7d800000  xsignal r1, 0
000288  7d000100  xsignal r2, 0
00028c  e3405f00  loadli.w r1,  44(r30)
000290  63016f00  loadli.w r2,  48(r30)
000294  00d20002  load_param_i r4, 1
000298  e3416f00  loadli.w r3,  52(r30)
00029c  abf2ffff  lui r5, 1048575
0002a0  674d0ffe  storeli.w zero, -44(r30)
0002a4  67030ffe  storeli.w zero, -208(r30)
0002a8  9b92f2ff  ori r5, r5, 4095
0002ac  8b101120  mul.s r1, r2, r1
0002b0  1f010200  addli r2, r4, 0
0002b4  e70d5ffe  storeli.w r5, -40(r30)
0002b8  e74d5ffe  storeli.w r5, -36(r30)
0002bc  670e5ffe  storeli.w r5, -32(r30)
0002c0  674e5ffe  storeli.w r5, -28(r30)
0002c4  e70e5ffe  storeli.w r5, -24(r30)
0002c8  e74e5ffe  storeli.w r5, -20(r30)
0002cc  670f5ffe  storeli.w r5, -16(r30)
0002d0  674f5ffe  storeli.w r5, -12(r30)
0002d4  e70f5ffe  storeli.w r5, -8(r30)
0002d8  e74f5ffe  storeli.w r5, -4(r30)
0002dc  67435ffe  storeli.w r5, -204(r30)
0002e0  e7035ffe  storeli.w r5, -200(r30)
0002e4  e7435ffe  storeli.w r5, -196(r30)
0002e8  67045ffe  storeli.w r5, -192(r30)
0002ec  67445ffe  storeli.w r5, -188(r30)
0002f0  e7045ffe  storeli.w r5, -184(r30)
0002f4  e7445ffe  storeli.w r5, -180(r30)
0002f8  67055ffe  storeli.w r5, -176(r30)
0002fc  67455ffe  storeli.w r5, -172(r30)
000300  e7055ffe  storeli.w r5, -168(r30)
000304  e7455ffe  storeli.w r5, -164(r30)
000308  67065ffe  storeli.w r5, -160(r30)
00030c  67465ffe  storeli.w r5, -156(r30)
000310  e7065ffe  storeli.w r5, -152(r30)
000314  e7465ffe  storeli.w r5, -148(r30)
000318  67075ffe  storeli.w r5, -144(r30)
00031c  67475ffe  storeli.w r5, -140(r30)
000320  e7075ffe  storeli.w r5, -136(r30)
000324  e7475ffe  storeli.w r5, -132(r30)
000328  67085ffe  storeli.w r5, -128(r30)
00032c  67485ffe  storeli.w r5, -124(r30)
000330  e7085ffe  storeli.w r5, -120(r30)
000334  e7485ffe  storeli.w r5, -116(r30)
000338  67095ffe  storeli.w r5, -112(r30)
00033c  67495ffe  storeli.w r5, -108(r30)
000340  e7095ffe  storeli.w r5, -104(r30)
000344  e7495ffe  storeli.w r5, -100(r30)
000348  670a5ffe  storeli.w r5, -96(r30)
00034c  674a5ffe  storeli.w r5, -92(r30)
000350  e70a5ffe  storeli.w r5, -88(r30)
000354  e74a5ffe  storeli.w r5, -84(r30)
000358  670b5ffe  storeli.w r5, -80(r30)
00035c  674b5ffe  storeli.w r5, -76(r30)
000360  e70b5ffe  storeli.w r5, -72(r30)
000364  e74b5ffe  storeli.w r5, -68(r30)
000368  670c5ffe  storeli.w r5, -64(r30)
00036c  674c5ffe  storeli.w r5, -60(r30)
000370  e70c5ffe  storeli.w r5, -56(r30)
000374  e74c5ffe  storeli.w r5, -52(r30)
000378  670d5ffe  storeli.w r5, -48(r30)
00037c  0b913050  fmac.s r2, r1, r3
000380  8b913020  mul.s r3, r1, r3
000384  1f71f1ff  addli r2, r2, -1
000388  0b114130  div.s r2, r2, r4
00038c  00520002  load_param_i r4, 0
000390  8b104120  mul.s r1, r2, r4
000394  0b114150  fmac.s r2, r2, r4
000398  0b113140  min.s r2, r2, r3
00039c  4b141104  ble.s r2, r1, 2308
0003a0  e3024f00  loadli.w r5,  32(r30)
0003a4  33130128  sext_int2long r[7:8], r2
0003a8  e3414f00  loadli.w r3,  36(r30)
0003ac  e3075f00  loadli.w r15,  40(r30)
0003b0  6345afff  loadli.w r10,  -44(r30)
0003b4  630e6ffe  loadli.w r28,  -208(r30)
0003b8  1f020000  addli r4, zero, 0
0003bc  1f073000  addli r14, zero, 24
0003c0  1f2d1000  addli r26, zero, 10
0003c4  73346fec  store.d r[7:8], -312(r30)
0003c8  b3930028  sext_int2long r[8:9], r1
0003cc  1f130000  addli r6, zero, 1
0003d0  b3900228  sext_int2long r[2:3], r5
0003d4  9bb21700  slli r5, r15, 1
0003d8  33960128  sext_int2long r[13:14], r3
0003dc  73301fec  store.d r[2:3], -320(r30)
0003e0  9bb01100  slli r1, r3, 1
0003e4  2b011000  lui r2, 256
0003e8  e7415ffe  storeli.w r5, -228(r30)
0003ec  7334cff0  store.d r[13:14], -248(r30)
0003f0  e74f1ffc  storeli.w r1, -260(r30)
0003f4  ab001400  lui r1, 320
0003f8  9b140120  ori r9, r2, 512
0003fc  9b900020  ori r1, r1, 512
000400  e7429ffe  storeli.w r9, -212(r30)
000404  e7021ffe  storeli.w r1, -216(r30)
000408  b3900728  sext_int2long r[2:3], r15
00040c  9f070000  addli r15, zero, 0
000410  733c1fea  store.d r[2:3], -328(r30)
000414  db0b0000  j 92
000418  eb530f01  load.d r[8:9], 16(r30)
00041c  9f002000  addli r1, zero, 16
000420  9f420000  addli r5, zero, 4
000424  1f073000  addli r14, zero, 24
000428  7d800000  xsignal r1, 0
00042c  7d900000  xwait r1, 0
000430  1d800200  lock zero, r5
000434  9b301100  slli r1, r2, 1
000438  8ba38311  add.ul r[8:9], r[8:9], r[25:26]
00043c  15030300  dma_cfg r6, r6, zero, 0
000440  15000404  dma_cfg zero, r8, zero, 2
000444  95861306  dma_cfg r13, r7, r1, 3
000448  95806008  dma_cfg r1, r1, r6, 4
00044c  9f102000  addli r1, zero, 17
000450  35000000  dma_run zero
000454  1d900200  unlock r5
000458  7d800000  xsignal r1, 0
00045c  eb530fef  load.d r[8:9], -272(r30)
000460  eb508fec  load.d r[2:3], -312(r30)
000464  a7930300  addli.d r[8:9], r[8:9], 1
000468  93b01304  setlt.sl r1, r[8:9], r[2:3]
00046c  b7d00004  beq r1, zero, 2100
000470  9f400000  addli r1, zero, 4
000474  3bb01500  bneq r11, r1, 12
000478  9f701000  addli r1, zero, 15
00047c  7d900000  xwait r1, 0
000480  e3406f00  loadli.w r1,  52(r30)
000484  63016f00  loadli.w r2,  48(r30)
000488  73387fee  store.d r[8:9], -272(r30)
00048c  1f0a8000  addli r20, zero, 64
000490  9f390000  addli r19, zero, 3
000494  ab0d0400  lui r27, 64
000498  8b901330  div.s r1, r7, r1
00049c  9f010100  addli r3, r2, 0
0004a0  0b913030  div.s r2, r1, r3
0004a4  8b903038  mod.s r1, r1, r3
0004a8  1b368100  slli r12, r2, 8
0004ac  9bb28000  slli r5, r1, 8
0004b0  b3930028  sext_int2long r[8:9], r1
0004b4  33110128  sext_int2long r[3:4], r2
0004b8  9f001000  addli r1, zero, 8
0004bc  17381102  sll.d r[17:18], r[3:4], r1
0004c0  97b01302  sll.d r[2:3], r[8:9], r1
0004c4  339c0228  sext_int2long r[25:26], r5
0004c8  674dcffc  storeli.w r12, -300(r30)
0004cc  97b36002  sll.d r[8:9], r[2:3], r6
0004d0  9f70f001  addli r1, zero, 255
0004d4  733c0fed  store.d r[17:18], -296(r30)
0004d8  73308fef  store.d r[25:26], -288(r30)
0004dc  b3800028  zext_int2long r[2:3], r1
0004e0  73347fee  store.d r[8:9], -280(r30)
0004e4  73301ff2  store.d r[2:3], -224(r30)
0004e8  e3005f00  loadli.w r1,  40(r30)
0004ec  bfdc6000  blt.s r1, r6, 820
0004f0  b3100628  sext_int2long r[2:3], r12
0004f4  6b568feb  load.d r[13:14], -328(r30)
0004f8  9f040000  addli r9, zero, 0
0004fc  9f0a0001  addli r21, zero, 128
000500  9f020000  addli r5, zero, 0
000504  278b0002  addli.d r[23:24], r[2:3], 256
000508  0b36c820  mul.sl r[13:14], r[17:18], r[13:14]
00050c  6b580fec  load.d r[17:18], -320(r30)
000510  7330cff0  store.d r[13:14], -256(r30)
000514  27860300  addli.d r[13:14], r[8:9], 0
000518  a7030c00  addli.d r[8:9], r[25:26], 0
00051c  0b3b0b41  min.sl r[23:24], r[23:24], r[17:18]
000520  27080c02  addli.d r[17:18], r[25:26], 256
000524  0b3c1b48  max.sl r[25:26], r[23:24], r[2:3]
000528  6b5b8ff0  load.d r[23:24], -248(r30)
00052c  0b3c1c18  sub.sl r[25:26], r[25:26], r[2:3]
000530  eb508f00  load.d r[2:3], 8(r30)
000534  0b386841  min.sl r[17:18], r[17:18], r[23:24]
000538  8ba0c010  add.ul r[2:3], r[2:3], r[13:14]
00053c  6b560ff0  load.d r[13:14], -256(r30)
000540  73381ff0  store.d r[2:3], -240(r30)
000544  8b307848  max.sl r[2:3], r[17:18], r[8:9]
000548  63085f00  loadli.w r16,  40(r30)
00054c  17366602  sll.d r[13:14], r[13:14], r6
000550  8bb37018  sub.sl r[8:9], r[2:3], r[8:9]
000554  eb500f00  load.d r[2:3], 0(r30)
000558  0babc010  add.ul r[23:24], r[2:3], r[13:14]
00055c  9bb01300  slli r1, r7, 1
000560  67001ffe  storeli.w r1, -256(r30)
000564  db050000  j 44
000568  9f700000  addli r1, zero, 7
00056c  7d800000  xsignal r1, 0
000570  1f120200  addli r4, r4, 1
000574  9f970700  addli r15, r15, 1
000578  1f1e0e00  addli r28, r28, 1
00057c  1f150500  addli r10, r10, 1
000580  9f848400  addli r9, r9, 64
000584  9f920200  addli r5, r5, 1
000588  3fa00401  blt.s r9, r16, 8
00058c  db520000  j 660
000590  8b91a739  mod.s r3, r15, r26
000594  0b16e238  mod.s r12, r4, r14
000598  b3900428  sext_int2long r[2:3], r9
00059c  9bb1f100  slli r3, r3, 15
0005a0  1b39f600  slli r18, r12, 15
0005a4  8b91b111  add.s r3, r3, r27
0005a8  3ba26500  bneq r11, r6, 136
0005ac  6b560ff2  load.d r[13:14], -224(r30)
0005b0  1f2d0000  addli r26, zero, 2
0005b4  13368605  setlt.sl r12, r[13:14], r[25:26]
0005b8  9f460000  addli r13, zero, 4
0005bc  7d900600  xwait r13, 0
0005c0  bb200600  bneq r12, zero, 40
0005c4  1d000d00  lock zero, r26
0005c8  1f767000  addli r12, zero, 63
0005cc  0d030002  ew_cfg r6, zero, zero, 1
0005d0  0d100000  ewcoeff_cfg zero, zero, zero, 0
0005d4  0d000604  ew_cfg zero, r12, zero, 2
0005d8  1f060002  addli r12, zero, 256
0005dc  0d060006  ew_cfg r12, zero, zero, 3
0005e0  cd310000  ssaux r3, 0
0005e4  1d100d00  unlock r26
0005e8  17b66002  sll.d r[13:14], r[2:3], r6
0005ec  1f430000  addli r6, zero, 4
0005f0  7d000d00  xsignal r26, 0
0005f4  7d100d00  xwait r26, 0
0005f8  1f1d0000  addli r26, zero, 1
0005fc  1d000300  lock zero, r6
000600  0b26cb10  add.ul r[13:14], r[23:24], r[13:14]
000604  150d0d00  dma_cfg r26, r26, zero, 0
000608  1f2d1000  addli r26, zero, 10
00060c  15800604  dma_cfg zero, r13, zero, 2
000610  95015607  dma_cfg r3, r12, r21, 3
000614  e3413ffe  loadli.w r3,  -228(r30)
000618  958a8109  dma_cfg r21, r3, r24, 4
00061c  35000000  dma_run zero
000620  1d100300  unlock r6
000624  1f130000  addli r6, zero, 1
000628  7d800900  xsignal r19, 0
00062c  5b0b0000  j 88
000630  1f260000  addli r12, zero, 2
000634  3bc1c500  bneq r11, r12, 80
000638  1f360000  addli r12, zero, 3
00063c  9f660000  addli r13, zero, 6
000640  7d100600  xwait r12, 0
000644  7d900600  xwait r13, 0
000648  b7200c00  beq r24, zero, 40
00064c  1d000000  lock zero, zero
000650  1f0a8000  addli r20, zero, 64
000654  01060000  ds_cfg r12, zero, 0
000658  1f068000  addli r12, zero, 64
00065c  01060002  ds_cfg r12, zero, 1
000660  0106001c  ds_cfg r12, zero, 14
000664  010c001a  ds_cfg r24, zero, 13
000668  2199c102  shuffle_batch r18, r3, r12, 1
00066c  1d100000  unlock zero
000670  9f410000  addli r3, zero, 4
000674  9f390000  addli r19, zero, 3
000678  7d800100  xsignal r3, 0
00067c  9f510000  addli r3, zero, 5
000680  7d800100  xsignal r3, 0
000684  8b11a539  mod.s r3, r10, r26
000688  2b060900  lui r12, 144
00068c  9bb1f100  slli r3, r3, 15
000690  0b96c110  add.s r12, r3, r12
000694  3b816500  bneq r11, r6, 64
000698  eb500ff2  load.d r[2:3], -224(r30)
00069c  93b07004  setlt.sl r1, r[2:3], r[8:9]
0006a0  1f111000  addli r2, zero, 9
0006a4  7d100100  xwait r2, 0
0006a8  3b8b00fe  bneq r1, zero, -320
0006ac  1f210000  addli r2, zero, 2
0006b0  9f70f001  addli r1, zero, 255
0006b4  1d000100  lock zero, r2
0006b8  0d030002  ew_cfg r6, zero, zero, 1
0006bc  0d100000  ewcoeff_cfg zero, zero, zero, 0
0006c0  0d800004  ew_cfg zero, r1, zero, 2
0006c4  0d0a0006  ew_cfg r20, zero, zero, 3
0006c8  4d360000  ssaux r12, 0
0006cc  1d100100  unlock r2
0006d0  5bd3ffff  j -360
0006d4  9f015000  addli r3, zero, 40
0006d8  9f760000  addli r13, zero, 7
0006dc  8b113e38  mod.s r3, r28, r3
0006e0  9bb1f100  slli r3, r3, 15
0006e4  b791d500  beq r11, r13, 100
0006e8  9f660000  addli r13, zero, 6
0006ec  bb92d500  bneq r11, r13, 164
0006f0  9f710000  addli r3, zero, 7
0006f4  eb568ff0  load.d r[14:15], -248(r30)
0006f8  7d900100  xwait r3, 0
0006fc  9f410000  addli r3, zero, 4
000700  8bb0d020  mul.sl r[2:3], r[2:3], r[14:15]
000704  1f073000  addli r14, zero, 24
000708  1d800100  lock zero, r3
00070c  6b580ff1  load.d r[17:18], -240(r30)
000710  97b06002  sll.d r[2:3], r[2:3], r6
000714  15030300  dma_cfg r6, r6, zero, 0
000718  8b201810  add.ul r[2:3], r[17:18], r[2:3]
00071c  63085f00  loadli.w r16,  40(r30)
000720  15000104  dma_cfg zero, r2, zero, 2
000724  e3060ffe  loadli.w r13,  -256(r30)
000728  1586d006  dma_cfg r12, r1, r13, 3
00072c  1f010004  addli r2, zero, 512
000730  e340fffd  loadli.w r1,  -260(r30)
000734  15814009  dma_cfg r2, r1, r20, 4
000738  35000000  dma_run zero
00073c  1d900100  unlock r3
000740  9f001000  addli r1, zero, 8
000744  5bc5ffff  j -472
000748  9f001000  addli r1, zero, 8
00074c  1f018000  addli r2, zero, 64
000750  1f0a8000  addli r20, zero, 64
000754  7d900000  xwait r1, 0
000758  9f301000  addli r1, zero, 11
00075c  7d900000  xwait r1, 0
000760  1d000000  lock zero, zero
000764  9f000002  addli r1, zero, 256
000768  81090000  ds_cfg r19, zero, 0
00076c  81000002  ds_cfg r1, zero, 1
000770  0101001c  ds_cfg r2, zero, 14
000774  8100001a  ds_cfg r1, zero, 13
000778  9f101000  addli r1, zero, 9
00077c  c1012604  shuffle_coa r3, r12, r2, 2
000780  1d100000  unlock zero
000784  7d800000  xsignal r1, 0
000788  7d000d00  xsignal r26, 0
00078c  dbbcffff  j -540
000790  1f011000  addli r2, zero, 8
000794  9f400000  addli r1, zero, 4
000798  3be715fe  bneq r11, r1, -552
00079c  9f500000  addli r1, zero, 5
0007a0  1f260000  addli r12, zero, 2
0007a4  9f068000  addli r13, zero, 64
0007a8  1f0a0008  addli r20, zero, 1024
0007ac  7d900000  xwait r1, 0
0007b0  7d100d00  xwait r26, 0
0007b4  b7c00200  beq r5, zero, 48
0007b8  37510c00  beq r24, zero, 84
0007bc  9f000000  addli r1, zero, 0
0007c0  1d000300  lock zero, r6
0007c4  89868601  mm_cfg r13, r13, r24, 0
0007c8  09066104  mm_cfg r12, r2, r6, 2
0007cc  a910390a  mm_acc r1, r18, r3, 5
0007d0  9f800002  addli r1, r1, 256
0007d4  9f810140  addli r3, r3, 8192
0007d8  1d100300  unlock r6
0007dc  bb9f40ff  bneq r1, r20, -28
0007e0  db050000  j 44
0007e4  b7200c00  beq r24, zero, 40
0007e8  9f000000  addli r1, zero, 0
0007ec  1d000300  lock zero, r6
0007f0  89868601  mm_cfg r13, r13, r24, 0
0007f4  09066104  mm_cfg r12, r2, r6, 2
0007f8  a900390a  mm r1, r18, r3, 5
0007fc  9f800002  addli r1, r1, 256
000800  9f810140  addli r3, r3, 8192
000804  1d100300  unlock r6
000808  bb9f40ff  bneq r1, r20, -28
00080c  9f600000  addli r1, zero, 6
000810  1f0a8000  addli r20, zero, 64
000814  7d800000  xsignal r1, 0
000818  9f301000  addli r1, zero, 11
00081c  5baaffff  j -688
000820  9f400000  addli r1, zero, 4
000824  6703cfff  storeli.w r28, -208(r30)
000828  674daffe  storeli.w r10, -44(r30)
00082c  3bb01500  bneq r11, r1, 12
000830  9f401000  addli r1, zero, 12
000834  7d800000  xsignal r1, 0
000838  6b560fee  load.d r[13:14], -288(r30)
00083c  eb538ff0  load.d r[8:9], -248(r30)
000840  6b5c8fee  load.d r[25:26], -280(r30)
000844  ab020400  lui r5, 64
000848  9f040002  addli r9, zero, 256
00084c  1f070008  addli r14, zero, 1024
000850  2b080200  lui r16, 32
000854  a7000602  addli.d r[2:3], r[13:14], 256
000858  8bb07040  min.sl r[2:3], r[2:3], r[8:9]
00085c  8bb0c048  max.sl r[2:3], r[2:3], r[13:14]
000860  0bb1c018  sub.sl r[3:4], r[2:3], r[13:14]
000864  1f360000  addli r12, zero, 3
000868  ab060e00  lui r13, 224
00086c  3b816500  bneq r11, r6, 64
000870  eb530ff2  load.d r[8:9], -224(r30)
000874  9f222000  addli r5, zero, 18
000878  7d900200  xwait r5, 0
00087c  93b02304  setlt.sl r1, r[8:9], r[3:4]
000880  3bee00fc  bneq r1, zero, -1128
000884  9f220000  addli r5, zero, 2
000888  9f70f001  addli r1, zero, 255
00088c  1d800200  lock zero, r5
000890  0d030002  ew_cfg r6, zero, zero, 1
000894  0d100000  ewcoeff_cfg zero, zero, zero, 0
000898  0d800004  ew_cfg zero, r1, zero, 2
00089c  0d030006  ew_cfg r6, zero, zero, 3
0008a0  cd360000  ssaux r13, 0
0008a4  1d900200  unlock r5
0008a8  5b6effff  j -1168
0008ac  9b900620  ori r1, r13, 512
0008b0  b3830428  zext_int2long r[8:9], r9
0008b4  37c30500  beq r11, zero, 208
0008b8  37b7c500  beq r11, r12, 460
0008bc  eb530fef  load.d r[8:9], -272(r30)
0008c0  e3445ffe  loadli.w r9,  -212(r30)
0008c4  1f510000  addli r2, zero, 5
0008c8  1f073000  addli r14, zero, 24
0008cc  3bde25fc  bneq r11, r2, -1132
0008d0  9f112000  addli r3, zero, 17
0008d4  1f010000  addli r2, zero, 0
0008d8  7d900100  xwait r3, 0
0008dc  9f312000  addli r3, zero, 19
0008e0  7d900100  xwait r3, 0
0008e4  9f210000  addli r3, zero, 2
0008e8  1d800100  lock zero, r3
0008ec  9f010078  addli r3, zero, 15360
0008f0  0d030002  ew_cfg r6, zero, zero, 1
0008f4  8d910100  ewcoeff_cfg r3, r3, zero, 0
0008f8  9f71f001  addli r3, zero, 255
0008fc  0d800104  ew_cfg zero, r3, zero, 2
000900  0d030006  ew_cfg r6, zero, zero, 3
000904  8b111110  add.s r3, r2, r1
000908  1f010104  addli r2, r2, 512
00090c  ad81d100  dsmadd r3, r3, r13, 0
000910  bb5f01ff  bneq r2, r16, -12
000914  1f210000  addli r2, zero, 2
000918  9f212000  addli r3, zero, 18
00091c  9f000000  addli r1, zero, 0
000920  1d100100  unlock r2
000924  7d800100  xsignal r3, 0
000928  9f412000  addli r3, zero, 20
00092c  7d800100  xsignal r3, 0
000930  9f511000  addli r3, zero, 13
000934  7d900100  xwait r3, 0
000938  9f712000  addli r3, zero, 23
00093c  7d900100  xwait r3, 0
000940  1d000100  lock zero, r2
000944  1f71f001  addli r2, zero, 255
000948  0d000002  ew_cfg zero, zero, zero, 1
00094c  0d000104  ew_cfg zero, r2, zero, 2
000950  0d030006  ew_cfg r6, zero, zero, 3
000954  0d100000  ewcoeff_cfg zero, zero, zero, 0
000958  0b919010  add.s r2, r1, r9
00095c  2da11000  dscmpnsel r2, r1, r1, 0
000960  9f800008  addli r1, r1, 1024
000964  bbdf50fe  bneq r1, r5, -12
000968  9f200000  addli r1, zero, 2
00096c  1d900000  unlock r1
000970  9f601000  addli r1, zero, 14
000974  7d800000  xsignal r1, 0
000978  9f602000  addli r1, zero, 22
00097c  7d800000  xsignal r1, 0
000980  5b5cffff  j -1312
000984  e342affd  loadli.w r5,  -300(r30)
000988  6b588ff0  load.d r[17:18], -248(r30)
00098c  6b598fed  load.d r[19:20], -296(r30)
000990  6b5b0fec  load.d r[23:24], -320(r30)
000994  0b317140  min.sl r[3:4], r[3:4], r[8:9]
000998  33960228  sext_int2long r[13:14], r5
00099c  0b380921  mul.sl r[17:18], r[19:20], r[17:18]
0009a0  9f421000  addli r5, zero, 12
0009a4  27090602  addli.d r[19:20], r[13:14], 256
0009a8  7d900200  xwait r5, 0
0009ac  9f020004  addli r5, zero, 512
0009b0  17386802  sll.d r[17:18], r[17:18], r6
0009b4  0b396941  min.sl r[19:20], r[19:20], r[23:24]
0009b8  6b5b8f01  load.d r[23:24], 24(r30)
0009bc  0b39c948  max.sl r[19:20], r[19:20], r[13:14]
0009c0  0b280b11  add.ul r[17:18], r[23:24], r[17:18]
0009c4  0b36c918  sub.sl r[13:14], r[19:20], r[13:14]
0009c8  1f392000  addli r18, zero, 19
0009cc  0b288811  add.ul r[17:18], r[17:18], r[25:26]
0009d0  8b337640  min.sl r[8:9], r[13:14], r[8:9]
0009d4  9f562000  addli r13, zero, 21
0009d8  1f560000  addli r12, zero, 5
0009dc  7d900600  xwait r13, 0
0009e0  1d000600  lock zero, r12
0009e4  15030000  dma_cfg r6, zero, zero, 0
0009e8  15030302  dma_cfg r6, r6, zero, 1
0009ec  15000004  dma_cfg zero, zero, zero, 2
0009f0  9500e006  dma_cfg r1, zero, r14, 3
0009f4  95029708  dma_cfg r5, r14, r9, 4
0009f8  35000000  dma_run zero
0009fc  1d100600  unlock r12
000a00  7d000900  xsignal r18, 0
000a04  1f492000  addli r18, zero, 20
000a08  7d100900  xwait r18, 0
000a0c  1d000600  lock zero, r12
000a10  7d200000  xflush
000a14  1d100600  unlock r12
000a18  1d000600  lock zero, r12
000a1c  15000300  dma_cfg zero, r6, zero, 0
000a20  15030302  dma_cfg r6, r6, zero, 1
000a24  15000004  dma_cfg zero, zero, zero, 2
000a28  15805006  dma_cfg zero, r1, r5, 3
000a2c  9b302100  slli r1, r2, 2
000a30  1f511000  addli r2, zero, 13
000a34  15879208  dma_cfg r14, r5, r9, 4
000a38  35000000  dma_run zero
000a3c  1d100600  unlock r12
000a40  7d000100  xsignal r2, 0
000a44  1f013000  addli r2, zero, 24
000a48  7d800600  xsignal r13, 0
000a4c  7d100100  xwait r2, 0
000a50  1d000600  lock zero, r12
000a54  15030000  dma_cfg r6, zero, zero, 0
000a58  15000302  dma_cfg zero, r6, zero, 1
000a5c  95080004  dma_cfg r17, zero, zero, 2
000a60  63015ffe  loadli.w r2,  -216(r30)
000a64  15081106  dma_cfg r16, r2, r1, 3
000a68  e340fffd  loadli.w r1,  -260(r30)
000a6c  95007708  dma_cfg r1, r14, r7, 4
000a70  9f103000  addli r1, zero, 25
000a74  35000000  dma_run zero
000a78  1d100600  unlock r12
000a7c  1f073000  addli r14, zero, 24
000a80  5b3bffff  j -1576
000a84  9f601000  addli r1, zero, 14
000a88  e70ecffd  storeli.w r28, -280(r30)
000a8c  7d900000  xwait r1, 0
000a90  9f602000  addli r1, zero, 22
000a94  7d900000  xwait r1, 0
000a98  9f103000  addli r1, zero, 25
000a9c  7d900000  xwait r1, 0
000aa0  b3000028  zext_int2long r[2:3], zero
000aa4  3d000000  xfence
000aa8  00a00300  mfence { lm, sm, gm }
000aac  73301ff0  store.d r[2:3], -256(r30)
000ab0  a7820000  addli.d r[6:7], r[2:3], 0
000ab4  1f011000  addli r2, zero, 8
000ab8  5b040000  j 32
000abc  eb500ff2  load.d r[2:3], -224(r30)
000ac0  eb520ff1  load.d r[6:7], -240(r30)
000ac4  93a01204  setlt.ul r1, r[6:7], r[2:3]
000ac8  27910200  addli.d r[3:4], r[6:7], 1
000acc  a7020100  addli.d r[6:7], r[3:4], 0
000ad0  1f011000  addli r2, zero, 8
000ad4  37e60000  beq r1, zero, 408
000ad8  6b590ff0  load.d r[19:20], -256(r30)
000adc  17bb2202  sll.d r[23:24], r[6:7], r2
000ae0  73385ff0  store.d r[6:7], -240(r30)
000ae4  5b070000  j 56
000ae8  27091900  addli.d r[19:20], r[19:20], 8
000aec  63015ffe  loadli.w r2,  -216(r30)
000af0  13237902  setneq.d r6, r[19:20], r[8:9]
000af4  0b912410  add.s r2, r9, r2
000af8  7366a101  stores.w r26, 12(r2)
000afc  73643100  stores.w r3, 8(r2)
000b00  73625101  stores.w r21, 4(r2)
000b04  73605100  stores.w r5, 0(r2)
000b08  736eb101  stores.w r27, 28(r2)
000b0c  736c0101  stores.w r16, 24(r2)
000b10  736a1100  stores.w r1, 20(r2)
000b14  73688101  stores.w r24, 16(r2)
000b18  b71e03fe  beq r6, zero, -92
000b1c  8b206911  add.ul r[2:3], r[19:20], r[23:24]
000b20  9bb42000  slli r9, r1, 2
000b24  e3405ffe  loadli.w r1,  -212(r30)
000b28  efc20400  loads.w r5, 0(r9)
000b2c  6fc1c400  loads.w r2, 12(r9)
000b30  efcc8400  loads.w r25, 8(r9)
000b34  6fc74400  loads.w r14, 4(r9)
000b38  6fcac401  loads.w r20, 28(r9)
000b3c  6fce8401  loads.w r28, 24(r9)
000b40  efc84401  loads.w r17, 20(r9)
000b44  6fc60401  loads.w r12, 16(r9)
000b48  8b961410  add.s r13, r9, r1
000b4c  6fcdc600  loads.w r26, 12(r13)
000b50  efc18600  loads.w r3, 8(r13)
000b54  efca4600  loads.w r21, 4(r13)
000b58  efcdc601  loads.w r27, 28(r13)
000b5c  6fc88601  loads.w r16, 24(r13)
000b60  efc04601  loads.w r1, 20(r13)
000b64  6fcc0601  loads.w r24, 16(r13)
000b68  1bb39200  slli r6, r5, 9
000b6c  9bc57201  srli r11, r5, 23
000b70  13030300  seteq r6, r6, zero
000b74  9b85f50f  andi r11, r11, 255
000b78  9bf5f50f  setlti r11, r11, 255
000b7c  17936500  or r6, r11, r6
000b80  37200300  beq r6, zero, 8
000b84  efc20600  loads.w r5, 0(r13)
000b88  1b339700  slli r6, r14, 9
000b8c  9b457701  srli r11, r14, 23
000b90  13030300  seteq r6, r6, zero
000b94  9b85f50f  andi r11, r11, 255
000b98  9bf5f50f  setlti r11, r11, 255
000b9c  17936500  or r6, r11, r6
000ba0  3b200300  bneq r6, zero, 8
000ba4  9f0a0700  addli r21, r14, 0
000ba8  1bb39c00  slli r6, r25, 9
000bac  9bc57c01  srli r11, r25, 23
000bb0  13030300  seteq r6, r6, zero
000bb4  9b85f50f  andi r11, r11, 255
000bb8  9bf5f50f  setlti r11, r11, 255
000bbc  17936500  or r6, r11, r6
000bc0  3b200300  bneq r6, zero, 8
000bc4  9f810c00  addli r3, r25, 0
000bc8  1b339100  slli r6, r2, 9
000bcc  9b457101  srli r11, r2, 23
000bd0  13030300  seteq r6, r6, zero
000bd4  9b85f50f  andi r11, r11, 255
000bd8  9bf5f50f  setlti r11, r11, 255
000bdc  17936500  or r6, r11, r6
000be0  3b200300  bneq r6, zero, 8
000be4  1f0d0100  addli r26, r2, 0
000be8  1b319600  slli r2, r12, 9
000bec  1b437601  srli r6, r12, 23
000bf0  13010100  seteq r2, r2, zero
000bf4  1b03f30f  andi r6, r6, 255
000bf8  1b73f30f  setlti r6, r6, 255
000bfc  17112300  or r2, r6, r2
000c00  3b200100  bneq r2, zero, 8
000c04  1f0c0600  addli r24, r12, 0
000c08  1bb19800  slli r2, r17, 9
000c0c  1bc37801  srli r6, r17, 23
000c10  13010100  seteq r2, r2, zero
000c14  1b03f30f  andi r6, r6, 255
000c18  1b73f30f  setlti r6, r6, 255
000c1c  17112300  or r2, r6, r2
000c20  3b200100  bneq r2, zero, 8
000c24  9f800800  addli r1, r17, 0
000c28  1b319e00  slli r2, r28, 9
000c2c  1b437e01  srli r6, r28, 23
000c30  13010100  seteq r2, r2, zero
000c34  1b03f30f  andi r6, r6, 255
000c38  1b73f30f  setlti r6, r6, 255
000c3c  17112300  or r2, r6, r2
000c40  3b200100  bneq r2, zero, 8
000c44  1f080e00  addli r16, r28, 0
000c48  1b319a00  slli r2, r20, 9
000c4c  1b437a01  srli r6, r20, 23
000c50  13010100  seteq r2, r2, zero
000c54  1b03f30f  andi r6, r6, 255
000c58  1b73f30f  setlti r6, r6, 255
000c5c  17112300  or r2, r6, r2
000c60  3b2a01fe  bneq r2, zero, -376
000c64  9f0d0a00  addli r27, r20, 0
000c68  5bd0ffff  j -384
000c6c  9f701000  addli r1, zero, 15
000c70  00200100  mfence { sm }
000c74  1f073000  addli r14, zero, 24
000c78  80350002  core_id r11
000c7c  1f130000  addli r6, zero, 1
000c80  1f2d1000  addli r26, zero, 10
000c84  7d800000  xsignal r1, 0
000c88  9f702000  addli r1, zero, 23
000c8c  7d800000  xsignal r1, 0
000c90  7d000700  xsignal r14, 0
000c94  eb530fef  load.d r[8:9], -272(r30)
000c98  630edffd  loadli.w r28,  -280(r30)
000c9c  dbf8feff  j -2108
000ca0  7d000000  xsignal zero, 0
000ca4  bbe00500  bneq r11, zero, 56
000ca8  9f200000  addli r1, zero, 2
000cac  7d100000  xwait zero, 0
000cb0  7d100000  xwait zero, 0
000cb4  7d100000  xwait zero, 0
000cb8  7d100000  xwait zero, 0
000cbc  7d100000  xwait zero, 0
000cc0  7d100000  xwait zero, 0
000cc4  7d100000  xwait zero, 0
000cc8  7d100000  xwait zero, 0
000ccc  1d800000  lock zero, r1
000cd0  0d000020  ew_cfg zero, zero, zero, 16
000cd4  1d900000  unlock r1
000cd8  7d400000  xsignal_mode_cfg zero
000cdc  9f8e9e02  addli sp, sp, 328
000ce0  00a00300  mfence { lm, sm, gm }
000ce4  00100000  exit
000ce8  00100000  exit
000cec  00100000  exit
000cf0  00100000  exit
000cf4  00100000  exit
000cf8  00100000  exit
000cfc  00100000  exit
000d00  00100000  exit
000d04  00100000  exit
000d08  00100000  exit
000d0c  00100000  exit
000d10  00100000  exit
000d14  00100000  exit
000d18  00100000  exit
000d1c  00100000  exit
000d20  00100000  exit
000d24  00100000  exit
000d28  00100000  exit
000d2c  00100000  exit
000d30  00100000  exit
000d34  00100000  exit
000d38  00100000  exit
000d3c  00100000  exit
000d40  00100000  exit
000d44  00100000  exit
000d48  00100000  exit
000d4c  00100000  exit
000d50  00100000  exit
000d54  00100000  exit
000d58  00100000  exit
000d5c  00100000  exit
000d60  00100000  exit
000d64  00100000  exit
000d68  00100000  exit
000d6c  00100000  exit
000d70  00100000  exit
000d74  00100000  exit
000d78  00100000  exit
000d7c  00100000  exit
000d80  00100000  exit
000d84  00100000  exit
000d88  00100000  exit
000d8c  00100000  exit
000d90  00100000  exit
000d94  00100000  exit
000d98  00100000  exit
000d9c  00100000  exit
000da0  00100000  exit
000da4  00100000  exit
000da8  00100000  exit
000dac  00100000  exit
000db0  00100000  exit
000db4  00100000  exit
000db8  00100000  exit
000dbc  00100000  exit
000dc0  00100000  exit
000dc4  00100000  exit
000dc8  00100000  exit
000dcc  00100000  exit
000dd0  00100000  exit
000dd4  00100000  exit
000dd8  00100000  exit
000ddc  00100000  exit
000de0  00100000  exit
000de4  00100000  exit
000de8  00100000  exit
000dec  00100000  exit
000df0  00100000  exit
000df4  00100000  exit
000df8  00100000  exit
000dfc  00100000  exit
000e00  00100000  exit
000e04  00100000  exit
000e08  00100000  exit
000e0c  00100000  exit
000e10  00100000  exit
000e14  00100000  exit
000e18  00100000  exit
000e1c  00100000  exit
000e20  00100000  exit
000e24  00100000  exit
000e28  00100000  exit
000e2c  00100000  exit
000e30  00100000  exit
000e34  00100000  exit
000e38  00100000  exit
000e3c  00100000  exit
000e40  00100000  exit
000e44  00100000  exit
000e48  00100000  exit
000e4c  00100000  exit
000e50  00100000  exit
000e54  00100000  exit
000e58  00100000  exit
000e5c  00100000  exit
000e60  00100000  exit
000e64  00100000  exit
000e68  00100000  exit
000e6c  00100000  exit
000e70  00100000  exit
000e74  00100000  exit
000e78  00100000  exit
000e7c  00100000  exit
000e80  00100000  exit
000e84  00100000  exit
000e88  00100000  exit
000e8c  00100000  exit
000e90  00100000  exit
000e94  00100000  exit
000e98  00100000  exit
000e9c  00100000  exit
000ea0  00100000  exit
000ea4  00100000  exit
000ea8  00100000  exit
000eac  00100000  exit
000eb0  00100000  exit
000eb4  00100000  exit
000eb8  00100000  exit
000ebc  00100000  exit
000ec0  00100000  exit
000ec4  00100000  exit
000ec8  00100000  exit
000ecc  00100000  exit
000ed0  00100000  exit
000ed4  00100000  exit
000ed8  00100000  exit
000edc  00100000  exit
000ee0  00100000  exit
000ee4  00100000  exit
000ee8  00100000  exit
000eec  00100000  exit
000ef0  00100000  exit
000ef4  00100000  exit
000ef8  00100000  exit
000efc  00100000  exit
000f00  00100000  exit
000f04  00100000  exit
000f08  00100000  exit
000f0c  00100000  exit
000f10  00100000  exit
000f14  00100000  exit
000f18  00100000  exit
000f1c  00100000  exit
000f20  00100000  exit
000f24  00100000  exit
