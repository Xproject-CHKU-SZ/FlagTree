; SHA-256 9344b078d8dda1fc09de00ac754575f2e5f7504a8ec281a37925a9ab3a073e1f
; P800 SDNN · XTDK LLVM 19 · 908 / 908 words decoded
; bound names: mm_act
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
0000b4  9f8eaefd  addli sp, sp, -304
0000b8  9f100000  addli r1, zero, 1
0000bc  00370002  core_id r14
0000c0  1f8fee01  addli r30, sp, 240
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600700  beq r14, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  db300000  j 388
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  1d100100  unlock r2
0000fc  1f610000  addli r2, zero, 6
000100  80a10004  csr_set csr3, r1
000104  9f501000  addli r1, zero, 13
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
000174  7d000100  xsignal r2, 0
000178  7d000100  xsignal r2, 0
00017c  7d000100  xsignal r2, 0
000180  7d000100  xsignal r2, 0
000184  7d000100  xsignal r2, 0
000188  7d000100  xsignal r2, 0
00018c  7d000100  xsignal r2, 0
000190  7d000100  xsignal r2, 0
000194  7d000100  xsignal r2, 0
000198  7d000100  xsignal r2, 0
00019c  7d000100  xsignal r2, 0
0001a0  7d000100  xsignal r2, 0
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
0001d4  1f311000  addli r2, zero, 11
0001d8  7d800000  xsignal r1, 0
0001dc  7d800000  xsignal r1, 0
0001e0  7d800000  xsignal r1, 0
0001e4  7d800000  xsignal r1, 0
0001e8  7d800000  xsignal r1, 0
0001ec  7d800000  xsignal r1, 0
0001f0  7d800000  xsignal r1, 0
0001f4  7d800000  xsignal r1, 0
0001f8  9f101000  addli r1, zero, 9
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
000224  1f712000  addli r2, zero, 23
000228  7d800000  xsignal r1, 0
00022c  7d800000  xsignal r1, 0
000230  7d800000  xsignal r1, 0
000234  7d800000  xsignal r1, 0
000238  7d800000  xsignal r1, 0
00023c  7d800000  xsignal r1, 0
000240  7d800000  xsignal r1, 0
000244  9f002000  addli r1, zero, 16
000248  7d800000  xsignal r1, 0
00024c  7d000100  xsignal r2, 0
000250  9f302000  addli r1, zero, 19
000254  1f512000  addli r2, zero, 21
000258  7d800000  xsignal r1, 0
00025c  7d000100  xsignal r2, 0
000260  e3405f00  loadli.w r1,  44(r30)
000264  63016f00  loadli.w r2,  48(r30)
000268  00d20002  load_param_i r4, 1
00026c  e3416f00  loadli.w r3,  52(r30)
000270  abf2ffff  lui r5, 1048575
000274  670e0ffe  storeli.w zero, -32(r30)
000278  674b0ffe  storeli.w zero, -76(r30)
00027c  67090ffe  storeli.w zero, -112(r30)
000280  9b92f2ff  ori r5, r5, 4095
000284  8b101120  mul.s r1, r2, r1
000288  1f010200  addli r2, r4, 0
00028c  674e5ffe  storeli.w r5, -28(r30)
000290  e70e5ffe  storeli.w r5, -24(r30)
000294  e74e5ffe  storeli.w r5, -20(r30)
000298  670f5ffe  storeli.w r5, -16(r30)
00029c  674f5ffe  storeli.w r5, -12(r30)
0002a0  e70f5ffe  storeli.w r5, -8(r30)
0002a4  e74f5ffe  storeli.w r5, -4(r30)
0002a8  e70b5ffe  storeli.w r5, -72(r30)
0002ac  e74b5ffe  storeli.w r5, -68(r30)
0002b0  670c5ffe  storeli.w r5, -64(r30)
0002b4  674c5ffe  storeli.w r5, -60(r30)
0002b8  e70c5ffe  storeli.w r5, -56(r30)
0002bc  e74c5ffe  storeli.w r5, -52(r30)
0002c0  670d5ffe  storeli.w r5, -48(r30)
0002c4  674d5ffe  storeli.w r5, -44(r30)
0002c8  e70d5ffe  storeli.w r5, -40(r30)
0002cc  e74d5ffe  storeli.w r5, -36(r30)
0002d0  67495ffe  storeli.w r5, -108(r30)
0002d4  e7095ffe  storeli.w r5, -104(r30)
0002d8  e7495ffe  storeli.w r5, -100(r30)
0002dc  670a5ffe  storeli.w r5, -96(r30)
0002e0  674a5ffe  storeli.w r5, -92(r30)
0002e4  e70a5ffe  storeli.w r5, -88(r30)
0002e8  e74a5ffe  storeli.w r5, -84(r30)
0002ec  670b5ffe  storeli.w r5, -80(r30)
0002f0  0b913050  fmac.s r2, r1, r3
0002f4  8b913020  mul.s r3, r1, r3
0002f8  1f71f1ff  addli r2, r2, -1
0002fc  0b114130  div.s r2, r2, r4
000300  00520002  load_param_i r4, 0
000304  8b104120  mul.s r1, r2, r4
000308  0b114150  fmac.s r2, r2, r4
00030c  0b113140  min.s r2, r2, r3
000310  4b621104  ble.s r2, r1, 2200
000314  63024f00  loadli.w r4,  32(r30)
000318  e30d5f00  loadli.w r27,  40(r30)
00031c  b3170128  sext_int2long r[16:17], r2
000320  b3920028  sext_int2long r[6:7], r1
000324  e3414f00  loadli.w r3,  36(r30)
000328  630ecfff  loadli.w r28,  -32(r30)
00032c  634b6fff  loadli.w r22,  -76(r30)
000330  e3042fff  loadli.w r9,  -112(r30)
000334  1f450000  addli r10, zero, 4
000338  9f230000  addli r7, zero, 2
00033c  1f160000  addli r12, zero, 1
000340  1f3a0000  addli r20, zero, 3
000344  9f060000  addli r13, zero, 0
000348  7338fff2  store.d r[16:17], -208(r30)
00034c  b3100228  sext_int2long r[2:3], r4
000350  9bbb2100  slli r23, r3, 2
000354  73341ff2  store.d r[2:3], -216(r30)
000358  9bb02d00  slli r1, r27, 2
00035c  67467fff  storeli.w r23, -156(r30)
000360  67061ffe  storeli.w r1, -160(r30)
000364  b3900128  sext_int2long r[2:3], r3
000368  733c1ff6  store.d r[2:3], -136(r30)
00036c  ab001400  lui r1, 320
000370  2b011600  lui r2, 352
000374  9b900080  ori r1, r1, 2048
000378  e7481ffe  storeli.w r1, -116(r30)
00037c  9b100180  ori r1, r2, 2048
000380  e7081ffe  storeli.w r1, -120(r30)
000384  b3900d28  sext_int2long r[2:3], r27
000388  73301ff2  store.d r[2:3], -224(r30)
00038c  db040000  j 36
000390  1f450000  addli r10, zero, 4
000394  9f401000  addli r1, zero, 12
000398  7d800000  xsignal r1, 0
00039c  eb528ff5  load.d r[6:7], -168(r30)
0003a0  eb500ff3  load.d r[2:3], -208(r30)
0003a4  a7920200  addli.d r[6:7], r[6:7], 1
0003a8  93b01204  setlt.sl r1, r[6:7], r[2:3]
0003ac  b7ff0002  beq r1, zero, 2044
0003b0  3b30a700  bneq r14, r10, 12
0003b4  9f501000  addli r1, zero, 13
0003b8  7d900000  xwait r1, 0
0003bc  e3406f00  loadli.w r1,  52(r30)
0003c0  63016f00  loadli.w r2,  48(r30)
0003c4  733c5ff4  store.d r[6:7], -168(r30)
0003c8  8b901230  div.s r1, r5, r1
0003cc  9f010100  addli r3, r2, 0
0003d0  0b913030  div.s r2, r1, r3
0003d4  8b903038  mod.s r1, r1, r3
0003d8  9f71f003  addli r3, zero, 511
0003dc  b3810128  zext_int2long r[4:5], r3
0003e0  73383ff6  store.d r[4:5], -144(r30)
0003e4  1b346100  slli r8, r2, 6
0003e8  1bb29000  slli r4, r1, 9
0003ec  b3920028  sext_int2long r[6:7], r1
0003f0  33110128  sext_int2long r[3:4], r2
0003f4  9f600000  addli r1, zero, 6
0003f8  17351102  sll.d r[11:12], r[3:4], r1
0003fc  9f101000  addli r1, zero, 9
000400  b3180228  sext_int2long r[18:19], r4
000404  e7438ffe  storeli.w r8, -196(r30)
000408  97b01202  sll.d r[2:3], r[6:7], r1
00040c  7330aff4  store.d r[11:12], -192(r30)
000410  73341ff5  store.d r[18:19], -184(r30)
000414  17bc7002  sll.d r[25:26], r[2:3], r7
000418  9f707000  addli r1, zero, 63
00041c  b3800028  zext_int2long r[2:3], r1
000420  73388ff5  store.d r[25:26], -176(r30)
000424  73301ff8  store.d r[2:3], -128(r30)
000428  3faccd00  blt.s r27, r12, 776
00042c  eb520ff2  load.d r[6:7], -224(r30)
000430  b3100428  sext_int2long r[2:3], r8
000434  eb578ff7  load.d r[16:17], -136(r30)
000438  9f0a0000  addli r21, zero, 0
00043c  a7818000  addli.d r[4:5], r[2:3], 64
000440  8b325520  mul.sl r[6:7], r[11:12], r[6:7]
000444  6b558ff2  load.d r[11:12], -216(r30)
000448  8bb1a140  min.sl r[4:5], r[4:5], r[11:12]
00044c  27850804  addli.d r[11:12], r[18:19], 512
000450  8bb11148  max.sl r[4:5], r[4:5], r[2:3]
000454  0b35f540  min.sl r[11:12], r[11:12], r[16:17]
000458  8bb71118  sub.sl r[16:17], r[4:5], r[2:3]
00045c  eb508f00  load.d r[2:3], 8(r30)
000460  97b17202  sll.d r[4:5], r[6:7], r7
000464  0bac8011  add.ul r[25:26], r[2:3], r[25:26]
000468  8b301549  max.sl r[2:3], r[11:12], r[18:19]
00046c  0bb51019  sub.sl r[11:12], r[2:3], r[18:19]
000470  eb500f00  load.d r[2:3], 0(r30)
000474  9b382500  slli r17, r10, 2
000478  8ba03010  add.ul r[2:3], r[2:3], r[4:5]
00047c  1f020000  addli r4, zero, 0
000480  73341ff6  store.d r[2:3], -152(r30)
000484  db0c0000  j 100
000488  1f011000  addli r2, zero, 8
00048c  9f020004  addli r5, zero, 512
000490  7d100100  xwait r2, 0
000494  1f311000  addli r2, zero, 11
000498  7d100100  xwait r2, 0
00049c  1d000000  lock zero, zero
0004a0  1f018000  addli r2, zero, 64
0004a4  81030000  ds_cfg r7, zero, 0
0004a8  81020002  ds_cfg r5, zero, 1
0004ac  0101001c  ds_cfg r2, zero, 14
0004b0  8102001a  ds_cfg r5, zero, 13
0004b4  c1002304  shuffle_coa r1, r6, r2, 2
0004b8  9f101000  addli r1, zero, 9
0004bc  1d100000  unlock zero
0004c0  7d800000  xsignal r1, 0
0004c4  7d800100  xsignal r3, 0
0004c8  9f960600  addli r13, r13, 1
0004cc  9f940400  addli r9, r9, 1
0004d0  1f1b0b00  addli r22, r22, 1
0004d4  1f1e0e00  addli r28, r28, 1
0004d8  9f8a8a00  addli r21, r21, 64
0004dc  1f120200  addli r4, r4, 1
0004e0  3fa0ba01  blt.s r21, r27, 8
0004e4  db490000  j 588
0004e8  9f001000  addli r1, zero, 8
0004ec  8b911438  mod.s r3, r9, r1
0004f0  9f006000  addli r1, zero, 48
0004f4  8b921638  mod.s r5, r13, r1
0004f8  b3900a28  sext_int2long r[2:3], r21
0004fc  9bb1e100  slli r3, r3, 14
000500  1bbde200  slli r26, r5, 14
000504  ab020200  lui r5, 32
000508  0b935110  add.s r6, r3, r5
00050c  3b11c700  bneq r14, r12, 68
000510  6b590ff8  load.d r[19:20], -128(r30)
000514  9f420000  addli r5, zero, 4
000518  7d900200  xwait r5, 0
00051c  9331f904  setlt.sl r3, r[19:20], r[16:17]
000520  bba00100  bneq r3, zero, 40
000524  1d800300  lock zero, r7
000528  9f717000  addli r3, zero, 63
00052c  0d000002  ew_cfg zero, zero, zero, 1
000530  0d100000  ewcoeff_cfg zero, zero, zero, 0
000534  0d800104  ew_cfg zero, r3, zero, 2
000538  9f018000  addli r3, zero, 64
00053c  8d010006  ew_cfg r3, zero, zero, 3
000540  4d330000  ssaux r6, 0
000544  1d900300  unlock r7
000548  7d800300  xsignal r7, 0
00054c  5b130000  j 152
000550  9f420000  addli r5, zero, 4
000554  37517700  beq r14, r7, 84
000558  9f610000  addli r3, zero, 6
00055c  3b223700  bneq r14, r3, 136
000560  7d900300  xwait r7, 0
000564  6b598ff6  load.d r[19:20], -152(r30)
000568  9f010b00  addli r3, r22, 0
00056c  17bb7002  sll.d r[23:24], r[2:3], r7
000570  1d800200  lock zero, r5
000574  1f040002  addli r8, zero, 256
000578  15000000  dma_cfg zero, zero, zero, 0
00057c  0b2b6911  add.ul r[23:24], r[19:20], r[23:24]
000580  15800b04  dma_cfg zero, r23, zero, 2
000584  15038b06  dma_cfg r6, r22, r8, 3
000588  1f8b0100  addli r22, r3, 0
00058c  e301cffe  loadli.w r3,  -160(r30)
000590  e34bcffe  loadli.w r23,  -156(r30)
000594  1584f108  dma_cfg r8, r3, r15, 4
000598  35000000  dma_run zero
00059c  1d900200  unlock r5
0005a0  7d000a00  xsignal r20, 0
0005a4  5b080000  j 64
0005a8  9f610000  addli r3, zero, 6
0005ac  7d100a00  xwait r20, 0
0005b0  7d900100  xwait r3, 0
0005b4  b7900700  beq r15, zero, 36
0005b8  1d000000  lock zero, zero
0005bc  9f018000  addli r3, zero, 64
0005c0  81030000  ds_cfg r7, zero, 0
0005c4  81010002  ds_cfg r3, zero, 1
0005c8  8101001c  ds_cfg r3, zero, 14
0005cc  8107001a  ds_cfg r15, zero, 13
0005d0  211d3302  shuffle_batch r26, r6, r3, 1
0005d4  1d100000  unlock zero
0005d8  9f510000  addli r3, zero, 5
0005dc  7d800200  xsignal r5, 0
0005e0  7d800100  xsignal r3, 0
0005e4  1f740000  addli r8, zero, 7
0005e8  2b030400  lui r6, 64
0005ec  8b118e38  mod.s r3, r28, r8
0005f0  9bb11101  slli r3, r3, 17
0005f4  0b936110  add.s r6, r3, r6
0005f8  3b42c700  bneq r14, r12, 144
0005fc  6b590ff7  load.d r[19:20], -144(r30)
000600  9f121000  addli r5, zero, 9
000604  7d900200  xwait r5, 0
000608  9331a904  setlt.sl r3, r[19:20], r[11:12]
00060c  bba00100  bneq r3, zero, 40
000610  1d800300  lock zero, r7
000614  9f71f003  addli r3, zero, 511
000618  0d000002  ew_cfg zero, zero, zero, 1
00061c  0d100000  ewcoeff_cfg zero, zero, zero, 0
000620  0d800104  ew_cfg zero, r3, zero, 2
000624  9f018000  addli r3, zero, 64
000628  8d010006  ew_cfg r3, zero, zero, 3
00062c  4d330000  ssaux r6, 0
000630  1d900300  unlock r7
000634  eb538ff7  load.d r[8:9], -136(r30)
000638  9f710000  addli r3, zero, 7
00063c  7d800100  xsignal r3, 0
000640  7d900100  xwait r3, 0
000644  9f410000  addli r3, zero, 4
000648  8bb07020  mul.sl r[2:3], r[2:3], r[8:9]
00064c  9f230000  addli r7, zero, 2
000650  1d800100  lock zero, r3
000654  97b07002  sll.d r[2:3], r[2:3], r7
000658  15000000  dma_cfg zero, zero, zero, 0
00065c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000660  15000104  dma_cfg zero, r2, zero, 2
000664  15831007  dma_cfg r6, r1, r17, 3
000668  9f008000  addli r1, zero, 64
00066c  1f010010  addli r2, zero, 2048
000670  15811b08  dma_cfg r2, r23, r1, 4
000674  9f001000  addli r1, zero, 8
000678  35000000  dma_run zero
00067c  1d900100  unlock r3
000680  7d800000  xsignal r1, 0
000684  dbc8ffff  j -444
000688  9f211000  addli r3, zero, 10
00068c  8b103b38  mod.s r1, r22, r3
000690  9bb01001  slli r1, r1, 17
000694  b75787fe  beq r14, r8, -524
000698  bb4857fe  bneq r14, r5, -464
00069c  1f510000  addli r2, zero, 5
0006a0  9f110000  addli r3, zero, 1
0006a4  1f038000  addli r6, zero, 64
0006a8  1f040010  addli r8, zero, 2048
0006ac  1f062000  addli r12, zero, 16
0006b0  2b4a0000  lui r20, 4
0006b4  7d100100  xwait r2, 0
0006b8  1f211000  addli r2, zero, 10
0006bc  7d100100  xwait r2, 0
0006c0  b7400200  beq r4, zero, 48
0006c4  37d10700  beq r15, zero, 84
0006c8  1f010000  addli r2, zero, 0
0006cc  1d800100  lock zero, r3
0006d0  0903f300  mm_cfg r6, r6, r15, 0
0006d4  89023604  mm_cfg r5, r12, r3, 2
0006d8  29111d10  mm_acc r2, r26, r1, 8
0006dc  1f010102  addli r2, r2, 256
0006e0  8b904011  add.s r1, r1, r20
0006e4  1d900100  unlock r3
0006e8  bb1f81fe  bneq r2, r8, -28
0006ec  db050000  j 44
0006f0  b7a00700  beq r15, zero, 40
0006f4  1f010000  addli r2, zero, 0
0006f8  1d800100  lock zero, r3
0006fc  0903f300  mm_cfg r6, r6, r15, 0
000700  89023604  mm_cfg r5, r12, r3, 2
000704  29011d10  mm r2, r26, r1, 8
000708  1f010102  addli r2, r2, 256
00070c  8b904011  add.s r1, r1, r20
000710  1d900100  unlock r3
000714  bb1f81fe  bneq r2, r8, -28
000718  9f600000  addli r1, zero, 6
00071c  1f160000  addli r12, zero, 1
000720  1f3a0000  addli r20, zero, 3
000724  7d800000  xsignal r1, 0
000728  9f301000  addli r1, zero, 11
00072c  dbeaffff  j -172
000730  9f420000  addli r5, zero, 4
000734  377157fe  beq r14, r5, -932
000738  6b558ff4  load.d r[11:12], -184(r30)
00073c  eb518ff7  load.d r[4:5], -136(r30)
000740  2b031200  lui r6, 288
000744  9b1a0380  ori r21, r6, 2048
000748  a7000504  addli.d r[2:3], r[11:12], 512
00074c  8bb03040  min.sl r[2:3], r[2:3], r[4:5]
000750  1f120000  addli r4, zero, 1
000754  8bb0a048  max.sl r[2:3], r[2:3], r[11:12]
000758  8bb8a018  sub.sl r[18:19], r[2:3], r[11:12]
00075c  9f000004  addli r1, zero, 512
000760  b3870028  zext_int2long r[16:17], r1
000764  bfb9e200  blt.s r5, r14, 620
000768  6b5c0ff5  load.d r[25:26], -176(r30)
00076c  374e4700  beq r14, r4, 912
000770  bb5b4701  bneq r14, r20, 756
000774  1f411000  addli r2, zero, 12
000778  73381ff1  store.d r[18:19], -240(r30)
00077c  e7416fff  storeli.w r22, -228(r30)
000780  e704cfff  storeli.w r28, -184(r30)
000784  9f000000  addli r1, zero, 0
000788  ab010200  lui r3, 32
00078c  7d100100  xwait r2, 0
000790  1f711000  addli r2, zero, 15
000794  7d100100  xwait r2, 0
000798  1f312000  addli r2, zero, 19
00079c  7d100100  xwait r2, 0
0007a0  1d800300  lock zero, r7
0007a4  2b01803f  lui r2, 260096
0007a8  0d000002  ew_cfg zero, zero, zero, 1
0007ac  0d110100  ewcoeff_cfg r2, r2, zero, 0
0007b0  1f71f003  addli r2, zero, 511
0007b4  0d000104  ew_cfg zero, r2, zero, 2
0007b8  0d020006  ew_cfg r4, zero, zero, 3
0007bc  1f022000  addli r4, zero, 16
0007c0  e3421fff  loadli.w r5,  -116(r30)
0007c4  0b915010  add.s r2, r1, r5
0007c8  2d816000  dsmadd r2, r1, r6, 0
0007cc  9f800010  addli r1, r1, 2048
0007d0  bbdf30fe  bneq r1, r3, -12
0007d4  9f501000  addli r1, zero, 13
0007d8  1d900300  unlock r7
0007dc  7d800000  xsignal r1, 0
0007e0  9f102000  addli r1, zero, 17
0007e4  7d000200  xsignal r4, 0
0007e8  7d800000  xsignal r1, 0
0007ec  9f202000  addli r1, zero, 18
0007f0  7d900000  xwait r1, 0
0007f4  9f402000  addli r1, zero, 20
0007f8  7d900000  xwait r1, 0
0007fc  9f702000  addli r1, zero, 23
000800  7d900000  xwait r1, 0
000804  3d000000  xfence
000808  b3000028  zext_int2long r[2:3], zero
00080c  00a00300  mfence { lm, sm, gm }
000810  63031fff  loadli.w r6,  -120(r30)
000814  73341ff6  store.d r[2:3], -152(r30)
000818  27810000  addli.d r[3:4], r[2:3], 0
00081c  5b030000  j 24
000820  eb500ff8  load.d r[2:3], -128(r30)
000824  eb510ff7  load.d r[4:5], -144(r30)
000828  93a01104  setlt.ul r1, r[4:5], r[2:3]
00082c  27910100  addli.d r[3:4], r[4:5], 1
000830  b7d70000  beq r1, zero, 500
000834  9f101000  addli r1, zero, 9
000838  6b558ff6  load.d r[11:12], -152(r30)
00083c  73382ff6  store.d r[3:4], -144(r30)
000840  173c1102  sll.d r[25:26], r[3:4], r1
000844  db070000  j 60
000848  27051500  addli.d r[11:12], r[11:12], 8
00084c  8b105211  add.s r1, r4, r21
000850  1321f502  setneq.d r2, r[11:12], r[16:17]
000854  73e66000  stores.w r6, 12(r1)
000858  73e25000  stores.w r5, 4(r1)
00085c  e3421fff  loadli.w r5,  -116(r30)
000860  63031fff  loadli.w r6,  -120(r30)
000864  73e47001  stores.w r23, 8(r1)
000868  73e03001  stores.w r19, 0(r1)
00086c  73ee6001  stores.w r22, 28(r1)
000870  73ecc001  stores.w r28, 24(r1)
000874  73ea4001  stores.w r20, 20(r1)
000878  73e81001  stores.w r17, 16(r1)
00087c  b71e01fe  beq r2, zero, -92
000880  8b208511  add.ul r[2:3], r[11:12], r[25:26]
000884  1bb22000  slli r4, r1, 2
000888  8b125210  add.s r5, r4, r5
00088c  8b116210  add.s r3, r4, r6
000890  efc90200  loads.w r19, 0(r5)
000894  6fc9c200  loads.w r18, 12(r5)
000898  6fc78200  loads.w r14, 8(r5)
00089c  efc04200  loads.w r1, 4(r5)
0008a0  6fc6c201  loads.w r12, 28(r5)
0008a4  6fcd8201  loads.w r26, 24(r5)
0008a8  6fc14201  loads.w r2, 20(r5)
0008ac  efcd0201  loads.w r27, 16(r5)
0008b0  6fc3c100  loads.w r6, 12(r3)
0008b4  efcb8100  loads.w r23, 8(r3)
0008b8  efc24100  loads.w r5, 4(r3)
0008bc  6fcbc101  loads.w r22, 28(r3)
0008c0  6fce8101  loads.w r28, 24(r3)
0008c4  6fca4101  loads.w r20, 20(r3)
0008c8  efc80101  loads.w r17, 16(r3)
0008cc  1bb49900  slli r8, r19, 9
0008d0  9bc37901  srli r7, r19, 23
0008d4  13040400  seteq r8, r8, zero
0008d8  9b83f30f  andi r7, r7, 255
0008dc  9bf3f30f  setlti r7, r7, 255
0008e0  97938300  or r7, r7, r8
0008e4  37a00300  beq r7, zero, 8
0008e8  efc90100  loads.w r19, 0(r3)
0008ec  9bb19000  slli r3, r1, 9
0008f0  9bc37001  srli r7, r1, 23
0008f4  93810100  seteq r3, r3, zero
0008f8  9b83f30f  andi r7, r7, 255
0008fc  9bf3f30f  setlti r7, r7, 255
000900  97913300  or r3, r7, r3
000904  3ba00100  bneq r3, zero, 8
000908  9f820000  addli r5, r1, 0
00090c  9b309700  slli r1, r14, 9
000910  9b417701  srli r3, r14, 23
000914  93800000  seteq r1, r1, zero
000918  9b81f10f  andi r3, r3, 255
00091c  9bf1f10f  setlti r3, r3, 255
000920  97901100  or r1, r3, r1
000924  3ba00000  bneq r1, zero, 8
000928  9f0b0700  addli r23, r14, 0
00092c  9b309900  slli r1, r18, 9
000930  9b417901  srli r3, r18, 23
000934  93800000  seteq r1, r1, zero
000938  9b81f10f  andi r3, r3, 255
00093c  9bf1f10f  setlti r3, r3, 255
000940  97901100  or r1, r3, r1
000944  3ba00000  bneq r1, zero, 8
000948  1f030900  addli r6, r18, 0
00094c  9bb09d00  slli r1, r27, 9
000950  9bc17d01  srli r3, r27, 23
000954  93800000  seteq r1, r1, zero
000958  9b81f10f  andi r3, r3, 255
00095c  9bf1f10f  setlti r3, r3, 255
000960  97901100  or r1, r3, r1
000964  3ba00000  bneq r1, zero, 8
000968  9f880d00  addli r17, r27, 0
00096c  9b309100  slli r1, r2, 9
000970  9b417101  srli r3, r2, 23
000974  93800000  seteq r1, r1, zero
000978  9b81f10f  andi r3, r3, 255
00097c  9bf1f10f  setlti r3, r3, 255
000980  97901100  or r1, r3, r1
000984  3ba00000  bneq r1, zero, 8
000988  1f0a0100  addli r20, r2, 0
00098c  9b309d00  slli r1, r26, 9
000990  1b417d01  srli r2, r26, 23
000994  93800000  seteq r1, r1, zero
000998  1b01f10f  andi r2, r2, 255
00099c  1b71f10f  setlti r2, r2, 255
0009a0  97101100  or r1, r2, r1
0009a4  3ba00000  bneq r1, zero, 8
0009a8  1f0e0d00  addli r28, r26, 0
0009ac  9b309600  slli r1, r12, 9
0009b0  1b417601  srli r2, r12, 23
0009b4  93800000  seteq r1, r1, zero
0009b8  1b01f10f  andi r2, r2, 255
0009bc  1b71f10f  setlti r2, r2, 255
0009c0  97101100  or r1, r2, r1
0009c4  3b9a00fe  bneq r1, zero, -380
0009c8  1f0b0600  addli r22, r12, 0
0009cc  dbcfffff  j -388
0009d0  6b5c0ff5  load.d r[25:26], -176(r30)
0009d4  9f500000  addli r1, zero, 5
0009d8  b7251700  beq r14, r1, 360
0009dc  9f600000  addli r1, zero, 6
0009e0  3b121700  bneq r14, r1, 132
0009e4  eb500f01  load.d r[2:3], 16(r30)
0009e8  9f611000  addli r3, zero, 14
0009ec  1f160000  addli r12, zero, 1
0009f0  1f450000  addli r10, zero, 4
0009f4  7d900100  xwait r3, 0
0009f8  1d800200  lock zero, r5
0009fc  9bb12800  slli r3, r17, 2
000a00  8ba08011  add.ul r[2:3], r[2:3], r[25:26]
000a04  15000000  dma_cfg zero, zero, zero, 0
000a08  15000104  dma_cfg zero, r2, zero, 2
000a0c  15833006  dma_cfg r6, r1, r3, 3
000a10  9f701000  addli r1, zero, 15
000a14  95814108  dma_cfg r3, r3, r4, 4
000a18  35000000  dma_run zero
000a1c  1d900200  unlock r5
000a20  5b2fffff  j -1672
000a24  9f302000  addli r1, zero, 19
000a28  00200100  mfence { sm }
000a2c  e30d5f00  loadli.w r27,  40(r30)
000a30  00370002  core_id r14
000a34  9f230000  addli r7, zero, 2
000a38  1f3a0000  addli r20, zero, 3
000a3c  7d800000  xsignal r1, 0
000a40  9f502000  addli r1, zero, 21
000a44  7d800000  xsignal r1, 0
000a48  9f602000  addli r1, zero, 22
000a4c  7d800000  xsignal r1, 0
000a50  630e9ffe  loadli.w r28,  -184(r30)
000a54  634b3ffe  loadli.w r22,  -228(r30)
000a58  e34bcffe  loadli.w r23,  -156(r30)
000a5c  6b5c0ff5  load.d r[25:26], -176(r30)
000a60  eb580ff1  load.d r[18:19], -240(r30)
000a64  1f160000  addli r12, zero, 1
000a68  1f450000  addli r10, zero, 4
000a6c  bb4407fc  bneq r14, zero, -1744
000a70  e3407ffe  loadli.w r1,  -196(r30)
000a74  eb538ff2  load.d r[8:9], -216(r30)
000a78  8bb2f840  min.sl r[6:7], r[18:19], r[16:17]
000a7c  eb570ff4  load.d r[16:17], -192(r30)
000a80  9f250000  addli r11, zero, 2
000a84  9bb22200  slli r5, r5, 2
000a88  b3900028  sext_int2long r[2:3], r1
000a8c  a7818000  addli.d r[4:5], r[2:3], 64
000a90  8bb17140  min.sl r[4:5], r[4:5], r[8:9]
000a94  eb538ff7  load.d r[8:9], -136(r30)
000a98  8bb11148  max.sl r[4:5], r[4:5], r[2:3]
000a9c  8bb37720  mul.sl r[8:9], r[16:17], r[8:9]
000aa0  eb578f01  load.d r[16:17], 24(r30)
000aa4  8bb01118  sub.sl r[2:3], r[4:5], r[2:3]
000aa8  9f018000  addli r3, zero, 64
000aac  97b3b302  sll.d r[8:9], r[8:9], r11
000ab0  b3810128  zext_int2long r[4:5], r3
000ab4  8ba37710  add.ul r[8:9], r[16:17], r[8:9]
000ab8  8bb03040  min.sl r[2:3], r[2:3], r[4:5]
000abc  8ba18311  add.ul r[4:5], r[8:9], r[25:26]
000ac0  1f642000  addli r8, zero, 22
000ac4  9f230000  addli r7, zero, 2
000ac8  7d100400  xwait r8, 0
000acc  1f540000  addli r8, zero, 5
000ad0  1d000400  lock zero, r8
000ad4  15000000  dma_cfg zero, zero, zero, 0
000ad8  15000602  dma_cfg zero, r12, zero, 1
000adc  15020004  dma_cfg r4, zero, zero, 2
000ae0  95815a06  dma_cfg r3, r21, r5, 3
000ae4  9f010010  addli r3, zero, 2048
000ae8  958b1108  dma_cfg r23, r3, r1, 4
000aec  35000000  dma_run zero
000af0  1d100400  unlock r8
000af4  9f702000  addli r1, zero, 23
000af8  5b14ffff  j -1888
000afc  eb500ff7  load.d r[2:3], -144(r30)
000b00  1f450000  addli r10, zero, 4
000b04  93b01005  setlt.sl r1, r[2:3], r[18:19]
000b08  1f012000  addli r2, zero, 16
000b0c  7d100100  xwait r2, 0
000b10  bb900000  bneq r1, zero, 36
000b14  1d800300  lock zero, r7
000b18  9f70f003  addli r1, zero, 511
000b1c  0d000002  ew_cfg zero, zero, zero, 1
000b20  0d100000  ewcoeff_cfg zero, zero, zero, 0
000b24  0d800004  ew_cfg zero, r1, zero, 2
000b28  0d020006  ew_cfg r4, zero, zero, 3
000b2c  4d330000  ssaux r6, 0
000b30  1d900300  unlock r7
000b34  1f160000  addli r12, zero, 1
000b38  9f601000  addli r1, zero, 14
000b3c  db0bffff  j -1956
000b40  1f112000  addli r2, zero, 17
000b44  1f450000  addli r10, zero, 4
000b48  9f000000  addli r1, zero, 0
000b4c  1f160000  addli r12, zero, 1
000b50  7d100100  xwait r2, 0
000b54  1f512000  addli r2, zero, 21
000b58  7d100100  xwait r2, 0
000b5c  1d800300  lock zero, r7
000b60  1f71f003  addli r2, zero, 511
000b64  0d000002  ew_cfg zero, zero, zero, 1
000b68  0d000104  ew_cfg zero, r2, zero, 2
000b6c  0d020006  ew_cfg r4, zero, zero, 3
000b70  2b020200  lui r4, 32
000b74  0d100000  ewcoeff_cfg zero, zero, zero, 0
000b78  e3421fff  loadli.w r5,  -116(r30)
000b7c  63031fff  loadli.w r6,  -120(r30)
000b80  0b916010  add.s r2, r1, r6
000b84  8b915010  add.s r3, r1, r5
000b88  9f800010  addli r1, r1, 2048
000b8c  2da13100  dscmpnsel r2, r3, r3, 0
000b90  bbcf40fe  bneq r1, r4, -16
000b94  9f202000  addli r1, zero, 18
000b98  1d900300  unlock r7
000b9c  7d800000  xsignal r1, 0
000ba0  9f402000  addli r1, zero, 20
000ba4  dbfefeff  j -2060
000ba8  7d000000  xsignal zero, 0
000bac  bb600700  bneq r14, zero, 56
000bb0  9f200000  addli r1, zero, 2
000bb4  7d100000  xwait zero, 0
000bb8  7d100000  xwait zero, 0
000bbc  7d100000  xwait zero, 0
000bc0  7d100000  xwait zero, 0
000bc4  7d100000  xwait zero, 0
000bc8  7d100000  xwait zero, 0
000bcc  7d100000  xwait zero, 0
000bd0  7d100000  xwait zero, 0
000bd4  1d800000  lock zero, r1
000bd8  0d000020  ew_cfg zero, zero, zero, 16
000bdc  1d900000  unlock r1
000be0  7d400000  xsignal_mode_cfg zero
000be4  9f8eee01  addli sp, sp, 240
000be8  00a00300  mfence { lm, sm, gm }
000bec  00100000  exit
000bf0  00100000  exit
000bf4  00100000  exit
000bf8  00100000  exit
000bfc  00100000  exit
000c00  00100000  exit
000c04  00100000  exit
000c08  00100000  exit
000c0c  00100000  exit
000c10  00100000  exit
000c14  00100000  exit
000c18  00100000  exit
000c1c  00100000  exit
000c20  00100000  exit
000c24  00100000  exit
000c28  00100000  exit
000c2c  00100000  exit
000c30  00100000  exit
000c34  00100000  exit
000c38  00100000  exit
000c3c  00100000  exit
000c40  00100000  exit
000c44  00100000  exit
000c48  00100000  exit
000c4c  00100000  exit
000c50  00100000  exit
000c54  00100000  exit
000c58  00100000  exit
000c5c  00100000  exit
000c60  00100000  exit
000c64  00100000  exit
000c68  00100000  exit
000c6c  00100000  exit
000c70  00100000  exit
000c74  00100000  exit
000c78  00100000  exit
000c7c  00100000  exit
000c80  00100000  exit
000c84  00100000  exit
000c88  00100000  exit
000c8c  00100000  exit
000c90  00100000  exit
000c94  00100000  exit
000c98  00100000  exit
000c9c  00100000  exit
000ca0  00100000  exit
000ca4  00100000  exit
000ca8  00100000  exit
000cac  00100000  exit
000cb0  00100000  exit
000cb4  00100000  exit
000cb8  00100000  exit
000cbc  00100000  exit
000cc0  00100000  exit
000cc4  00100000  exit
000cc8  00100000  exit
000ccc  00100000  exit
000cd0  00100000  exit
000cd4  00100000  exit
000cd8  00100000  exit
000cdc  00100000  exit
000ce0  00100000  exit
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
