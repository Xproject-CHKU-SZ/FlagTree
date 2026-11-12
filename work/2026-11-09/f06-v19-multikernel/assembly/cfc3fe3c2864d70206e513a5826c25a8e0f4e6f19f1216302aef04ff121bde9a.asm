; SHA-256 cfc3fe3c2864d70206e513a5826c25a8e0f4e6f19f1216302aef04ff121bde9a
; P800 SDNN · XTDK LLVM 19 · 706 / 706 words decoded
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
0000bc  00310002  core_id r2
0000c0  1f8fee01  addli r30, sp, 240
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600100  beq r2, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  db2f0000  j 380
0000e0  9f210000  addli r3, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  2bf2ffff  lui r4, 1048575
0000ec  1d800100  lock zero, r3
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b10f2ff  ori r1, r4, 4095
0000f8  1d900100  unlock r3
0000fc  9f610000  addli r3, zero, 6
000100  80a10004  csr_set csr3, r1
000104  9f601000  addli r1, zero, 14
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  7d800100  xsignal r3, 0
000114  7d800100  xsignal r3, 0
000118  7d800100  xsignal r3, 0
00011c  7d800100  xsignal r3, 0
000120  7d800100  xsignal r3, 0
000124  7d800100  xsignal r3, 0
000128  7d800100  xsignal r3, 0
00012c  7d800100  xsignal r3, 0
000130  7d800100  xsignal r3, 0
000134  7d800100  xsignal r3, 0
000138  7d800100  xsignal r3, 0
00013c  7d800100  xsignal r3, 0
000140  7d800100  xsignal r3, 0
000144  7d800100  xsignal r3, 0
000148  7d800100  xsignal r3, 0
00014c  7d800100  xsignal r3, 0
000150  7d800100  xsignal r3, 0
000154  7d800100  xsignal r3, 0
000158  7d800100  xsignal r3, 0
00015c  7d800100  xsignal r3, 0
000160  7d800100  xsignal r3, 0
000164  7d800100  xsignal r3, 0
000168  7d800100  xsignal r3, 0
00016c  7d800100  xsignal r3, 0
000170  7d800100  xsignal r3, 0
000174  7d800100  xsignal r3, 0
000178  7d800100  xsignal r3, 0
00017c  7d800100  xsignal r3, 0
000180  7d800100  xsignal r3, 0
000184  7d800100  xsignal r3, 0
000188  7d800100  xsignal r3, 0
00018c  7d800100  xsignal r3, 0
000190  7d800100  xsignal r3, 0
000194  7d800100  xsignal r3, 0
000198  7d800100  xsignal r3, 0
00019c  7d800100  xsignal r3, 0
0001a0  7d800100  xsignal r3, 0
0001a4  7d800100  xsignal r3, 0
0001a8  7d800100  xsignal r3, 0
0001ac  7d800100  xsignal r3, 0
0001b0  7d800100  xsignal r3, 0
0001b4  7d800100  xsignal r3, 0
0001b8  7d800100  xsignal r3, 0
0001bc  7d800100  xsignal r3, 0
0001c0  7d800100  xsignal r3, 0
0001c4  7d800100  xsignal r3, 0
0001c8  7d800100  xsignal r3, 0
0001cc  7d800100  xsignal r3, 0
0001d0  9f400000  addli r1, zero, 4
0001d4  9f311000  addli r3, zero, 11
0001d8  7d800000  xsignal r1, 0
0001dc  7d800000  xsignal r1, 0
0001e0  7d800000  xsignal r1, 0
0001e4  7d800000  xsignal r1, 0
0001e8  7d800000  xsignal r1, 0
0001ec  7d800000  xsignal r1, 0
0001f0  7d800000  xsignal r1, 0
0001f4  7d800000  xsignal r1, 0
0001f8  7d800000  xsignal r1, 0
0001fc  7d800100  xsignal r3, 0
000200  7d800100  xsignal r3, 0
000204  7d800100  xsignal r3, 0
000208  7d800100  xsignal r3, 0
00020c  7d800100  xsignal r3, 0
000210  7d800100  xsignal r3, 0
000214  7d800100  xsignal r3, 0
000218  7d800100  xsignal r3, 0
00021c  7d800100  xsignal r3, 0
000220  7d800100  xsignal r3, 0
000224  9f101000  addli r1, zero, 9
000228  9f112000  addli r3, zero, 17
00022c  7d800000  xsignal r1, 0
000230  7d800000  xsignal r1, 0
000234  7d800000  xsignal r1, 0
000238  7d800000  xsignal r1, 0
00023c  7d800000  xsignal r1, 0
000240  7d800000  xsignal r1, 0
000244  7d800000  xsignal r1, 0
000248  7d800000  xsignal r1, 0
00024c  7d800000  xsignal r1, 0
000250  7d800000  xsignal r1, 0
000254  7d800100  xsignal r3, 0
000258  e3405f00  loadli.w r1,  44(r30)
00025c  e3016f00  loadli.w r3,  48(r30)
000260  80d20002  load_param_i r5, 1
000264  63426f00  loadli.w r4,  52(r30)
000268  2bf3ffff  lui r6, 1048575
00026c  674d0ffe  storeli.w zero, -44(r30)
000270  e70a0ffe  storeli.w zero, -88(r30)
000274  67080ffe  storeli.w zero, -128(r30)
000278  1b13f3ff  ori r6, r6, 4095
00027c  8b901120  mul.s r1, r3, r1
000280  9f810200  addli r3, r5, 0
000284  e70d6ffe  storeli.w r6, -40(r30)
000288  e74d6ffe  storeli.w r6, -36(r30)
00028c  670e6ffe  storeli.w r6, -32(r30)
000290  674e6ffe  storeli.w r6, -28(r30)
000294  e70e6ffe  storeli.w r6, -24(r30)
000298  e74e6ffe  storeli.w r6, -20(r30)
00029c  670f6ffe  storeli.w r6, -16(r30)
0002a0  674f6ffe  storeli.w r6, -12(r30)
0002a4  e70f6ffe  storeli.w r6, -8(r30)
0002a8  e74f6ffe  storeli.w r6, -4(r30)
0002ac  e74a6ffe  storeli.w r6, -84(r30)
0002b0  670b6ffe  storeli.w r6, -80(r30)
0002b4  674b6ffe  storeli.w r6, -76(r30)
0002b8  e70b6ffe  storeli.w r6, -72(r30)
0002bc  e74b6ffe  storeli.w r6, -68(r30)
0002c0  670c6ffe  storeli.w r6, -64(r30)
0002c4  674c6ffe  storeli.w r6, -60(r30)
0002c8  e70c6ffe  storeli.w r6, -56(r30)
0002cc  e74c6ffe  storeli.w r6, -52(r30)
0002d0  670d6ffe  storeli.w r6, -48(r30)
0002d4  8b914050  fmac.s r3, r1, r4
0002d8  0b924020  mul.s r4, r1, r4
0002dc  9ff1f1ff  addli r3, r3, -1
0002e0  8b915130  div.s r3, r3, r5
0002e4  80520002  load_param_i r5, 0
0002e8  8b905120  mul.s r1, r3, r5
0002ec  8b915150  fmac.s r3, r3, r5
0002f0  8b914140  min.s r3, r3, r4
0002f4  4bb61102  ble.s r3, r1, 1420
0002f8  63035f00  loadli.w r6,  40(r30)
0002fc  e3024f00  loadli.w r5,  32(r30)
000300  63424f00  loadli.w r4,  36(r30)
000304  339c0028  sext_int2long r[25:26], r1
000308  b3930128  sext_int2long r[8:9], r3
00030c  e3040fff  loadli.w r9,  -128(r30)
000310  1f4a0000  addli r20, zero, 4
000314  1f2b0000  addli r22, zero, 2
000318  9f1b0000  addli r23, zero, 1
00031c  2b0d0200  lui r26, 32
000320  9f0d8000  addli r27, zero, 64
000324  9f090010  addli r19, zero, 2048
000328  9f080000  addli r17, zero, 0
00032c  73307ff2  store.d r[8:9], -224(r30)
000330  e343afff  loadli.w r7,  -44(r30)
000334  63045fff  loadli.w r8,  -88(r30)
000338  9b302300  slli r1, r6, 2
00033c  33950228  sext_int2long r[11:12], r5
000340  67471ffe  storeli.w r1, -140(r30)
000344  9b302200  slli r1, r4, 2
000348  733caff0  store.d r[11:12], -232(r30)
00034c  33150228  sext_int2long r[11:12], r4
000350  b3110328  sext_int2long r[4:5], r6
000354  1f131000  addli r6, zero, 9
000358  67451ffe  storeli.w r1, -172(r30)
00035c  9f201000  addli r1, zero, 10
000360  7334aff6  store.d r[11:12], -152(r30)
000364  73383ff0  store.d r[4:5], -240(r30)
000368  5b040000  j 32
00036c  9f411000  addli r3, zero, 12
000370  7d800100  xsignal r3, 0
000374  6b5c8ff4  load.d r[25:26], -184(r30)
000378  eb510ff2  load.d r[4:5], -224(r30)
00037c  271c0c00  addli.d r[25:26], r[25:26], 1
000380  93313c04  setlt.sl r3, r[25:26], r[4:5]
000384  b7f30102  beq r3, zero, 1276
000388  3b304101  bneq r2, r20, 12
00038c  9f611000  addli r3, zero, 14
000390  7d900100  xwait r3, 0
000394  e3416f00  loadli.w r3,  52(r30)
000398  63026f00  loadli.w r4,  48(r30)
00039c  73348ff5  store.d r[25:26], -184(r30)
0003a0  8b113c30  div.s r3, r24, r3
0003a4  9f020200  addli r5, r4, 0
0003a8  0b925130  div.s r4, r3, r5
0003ac  8b915138  mod.s r3, r3, r5
0003b0  9b326200  slli r5, r4, 6
0003b4  33150228  sext_int2long r[11:12], r4
0003b8  1bb29100  slli r4, r3, 9
0003bc  33970128  sext_int2long r[15:16], r3
0003c0  9f610000  addli r3, zero, 6
0003c4  173c3502  sll.d r[25:26], r[11:12], r3
0003c8  9f71f003  addli r3, zero, 511
0003cc  33160228  sext_int2long r[13:14], r4
0003d0  17356702  sll.d r[11:12], r[15:16], r6
0003d4  e7425ffe  storeli.w r5, -212(r30)
0003d8  b3810128  zext_int2long r[4:5], r3
0003dc  17376503  sll.d r[15:16], r[11:12], r22
0003e0  73388ff3  store.d r[25:26], -208(r30)
0003e4  7330cff4  store.d r[13:14], -192(r30)
0003e8  733c3ff6  store.d r[4:5], -136(r30)
0003ec  e3015f00  loadli.w r3,  40(r30)
0003f0  733ceff2  store.d r[15:16], -200(r30)
0003f4  3feb7101  blt.s r3, r23, 728
0003f8  b3910228  sext_int2long r[4:5], r5
0003fc  eb520ff1  load.d r[6:7], -240(r30)
000400  1f090000  addli r18, zero, 0
000404  27858100  addli.d r[11:12], r[4:5], 64
000408  8b325c20  mul.sl r[6:7], r[25:26], r[6:7]
00040c  270c0604  addli.d r[25:26], r[13:14], 512
000410  733c5ff4  store.d r[6:7], -168(r30)
000414  eb528ff1  load.d r[6:7], -232(r30)
000418  0b355540  min.sl r[11:12], r[11:12], r[6:7]
00041c  eb528ff6  load.d r[6:7], -152(r30)
000420  0b353548  max.sl r[11:12], r[11:12], r[4:5]
000424  0b3c5c40  min.sl r[25:26], r[25:26], r[6:7]
000428  1f131000  addli r6, zero, 9
00042c  0b353518  sub.sl r[11:12], r[11:12], r[4:5]
000430  eb518f00  load.d r[4:5], 8(r30)
000434  8ba1e110  add.ul r[4:5], r[4:5], r[15:16]
000438  6b578ff5  load.d r[15:16], -168(r30)
00043c  73303ff6  store.d r[4:5], -160(r30)
000440  8b31cc48  max.sl r[4:5], r[25:26], r[13:14]
000444  6b5c0f00  load.d r[25:26], 0(r30)
000448  17376703  sll.d r[15:16], r[15:16], r22
00044c  8bb1c118  sub.sl r[4:5], r[4:5], r[13:14]
000450  ab460000  lui r13, 4
000454  0b2cec10  add.ul r[25:26], r[25:26], r[15:16]
000458  1f070000  addli r14, zero, 0
00045c  9bb22100  slli r5, r3, 2
000460  e7055ffe  storeli.w r5, -168(r30)
000464  5b060000  j 48
000468  9f720000  addli r5, zero, 7
00046c  7d800200  xsignal r5, 0
000470  e3025f00  loadli.w r5,  40(r30)
000474  9f980800  addli r17, r17, 1
000478  9f940400  addli r9, r9, 1
00047c  1f140400  addli r8, r8, 1
000480  9f930300  addli r7, r7, 1
000484  1f098900  addli r18, r18, 64
000488  1f170700  addli r14, r14, 1
00048c  3f205900  blt.s r18, r5, 8
000490  db470000  j 572
000494  0b966438  mod.s r12, r9, r6
000498  9f026000  addli r5, zero, 48
00049c  b3170928  sext_int2long r[16:17], r18
0004a0  8b9a5838  mod.s r21, r17, r5
0004a4  1b36e600  slli r12, r12, 14
0004a8  1bbeea00  slli r28, r21, 14
0004ac  0b16a611  add.s r12, r12, r26
0004b0  bb617101  bneq r2, r23, 120
0004b4  9f727000  addli r5, zero, 63
0004b8  7d100a00  xwait r20, 0
0004bc  b3820228  zext_int2long r[6:7], r5
0004c0  93b2a204  setlt.sl r5, r[6:7], r[11:12]
0004c4  bb900200  bneq r5, zero, 36
0004c8  1d000b00  lock zero, r22
0004cc  9f727000  addli r5, zero, 63
0004d0  0d000002  ew_cfg zero, zero, zero, 1
0004d4  0d100000  ewcoeff_cfg zero, zero, zero, 0
0004d8  0d800204  ew_cfg zero, r5, zero, 2
0004dc  8d0d0006  ew_cfg r27, zero, zero, 3
0004e0  4d360000  ssaux r12, 0
0004e4  1d100b00  unlock r22
0004e8  97b26703  sll.d r[6:7], r[16:17], r22
0004ec  7d000b00  xsignal r22, 0
0004f0  7d100b00  xwait r22, 0
0004f4  1d000a00  lock zero, r20
0004f8  9f0a0002  addli r21, zero, 256
0004fc  15000000  dma_cfg zero, zero, zero, 0
000500  8b225c10  add.ul r[6:7], r[25:26], r[6:7]
000504  15000304  dma_cfg zero, r6, zero, 2
000508  15865207  dma_cfg r12, r5, r21, 3
00050c  1f131000  addli r6, zero, 9
000510  e342effe  loadli.w r5,  -140(r30)
000514  958aa208  dma_cfg r21, r5, r10, 4
000518  9f320000  addli r5, zero, 3
00051c  35000000  dma_run zero
000520  1d100a00  unlock r20
000524  5b080000  j 64
000528  3b016101  bneq r2, r22, 64
00052c  9f320000  addli r5, zero, 3
000530  7d900200  xwait r5, 0
000534  9f620000  addli r5, zero, 6
000538  7d900200  xwait r5, 0
00053c  b7000500  beq r10, zero, 32
000540  1d000000  lock zero, zero
000544  010b0000  ds_cfg r22, zero, 0
000548  810d0002  ds_cfg r27, zero, 1
00054c  810d001c  ds_cfg r27, zero, 14
000550  0105001a  ds_cfg r10, zero, 13
000554  211eb603  shuffle_batch r28, r12, r27, 1
000558  1d100000  unlock zero
00055c  9f520000  addli r5, zero, 5
000560  7d000a00  xsignal r20, 0
000564  7d800200  xsignal r5, 0
000568  8b921338  mod.s r5, r7, r1
00056c  2b460400  lui r12, 68
000570  9bb21201  slli r5, r5, 17
000574  8b9ac210  add.s r21, r5, r12
000578  bb607101  bneq r2, r23, 56
00057c  eb578ff7  load.d r[16:17], -136(r30)
000580  7d100300  xwait r6, 0
000584  93b23704  setlt.sl r5, r[16:17], r[4:5]
000588  bb8b02fe  bneq r5, zero, -288
00058c  1d000b00  lock zero, r22
000590  9f72f003  addli r5, zero, 511
000594  0d000002  ew_cfg zero, zero, zero, 1
000598  0d100000  ewcoeff_cfg zero, zero, zero, 0
00059c  0d800204  ew_cfg zero, r5, zero, 2
0005a0  8d0d0006  ew_cfg r27, zero, zero, 3
0005a4  cd3a0000  ssaux r21, 0
0005a8  1d100b00  unlock r22
0005ac  dbd7ffff  j -324
0005b0  8b121438  mod.s r5, r8, r1
0005b4  1bb61201  slli r12, r5, 17
0005b8  9f720000  addli r5, zero, 7
0005bc  37615100  beq r2, r5, 88
0005c0  9f620000  addli r5, zero, 6
0005c4  3b325100  bneq r2, r5, 140
0005c8  eb528ff6  load.d r[6:7], -152(r30)
0005cc  1f760000  addli r12, zero, 7
0005d0  7d100600  xwait r12, 0
0005d4  1d000a00  lock zero, r20
0005d8  8bb25720  mul.sl r[6:7], r[16:17], r[6:7]
0005dc  eb570ff6  load.d r[16:17], -160(r30)
0005e0  15000000  dma_cfg zero, zero, zero, 0
0005e4  97b26203  sll.d r[6:7], r[6:7], r22
0005e8  8ba25710  add.ul r[6:7], r[16:17], r[6:7]
0005ec  15000304  dma_cfg zero, r6, zero, 2
0005f0  6306bffe  loadli.w r12,  -168(r30)
0005f4  958ac206  dma_cfg r21, r5, r12, 3
0005f8  1f131000  addli r6, zero, 9
0005fc  e342affe  loadli.w r5,  -172(r30)
000600  9589b209  dma_cfg r19, r5, r27, 4
000604  35000000  dma_run zero
000608  1d100a00  unlock r20
00060c  9f021000  addli r5, zero, 8
000610  dbcbffff  j -420
000614  9f021000  addli r5, zero, 8
000618  7d900200  xwait r5, 0
00061c  9f321000  addli r5, zero, 11
000620  7d900200  xwait r5, 0
000624  1d000000  lock zero, zero
000628  9f020004  addli r5, zero, 512
00062c  010b0000  ds_cfg r22, zero, 0
000630  81020002  ds_cfg r5, zero, 1
000634  810d001c  ds_cfg r27, zero, 14
000638  8102001a  ds_cfg r5, zero, 13
00063c  4186ba05  shuffle_coa r12, r21, r27, 2
000640  1d100000  unlock zero
000644  7d000300  xsignal r6, 0
000648  7d800000  xsignal r1, 0
00064c  dbc4ffff  j -476
000650  bb0841ff  bneq r2, r20, -480
000654  9f520000  addli r5, zero, 5
000658  7d900200  xwait r5, 0
00065c  9f022000  addli r5, zero, 16
000660  7d900000  xwait r1, 0
000664  b7400700  beq r14, zero, 48
000668  37510500  beq r10, zero, 84
00066c  9f070000  addli r15, zero, 0
000670  1d800b00  lock zero, r23
000674  898dad00  mm_cfg r27, r27, r10, 0
000678  098a7205  mm_cfg r20, r5, r23, 2
00067c  a917ce10  mm_acc r15, r28, r12, 8
000680  9f870702  addli r15, r15, 256
000684  0b16d610  add.s r12, r12, r13
000688  1d900b00  unlock r23
00068c  bb9f37ff  bneq r15, r19, -28
000690  db050000  j 44
000694  b7200500  beq r10, zero, 40
000698  9f070000  addli r15, zero, 0
00069c  1d800b00  lock zero, r23
0006a0  898dad00  mm_cfg r27, r27, r10, 0
0006a4  098a7205  mm_cfg r20, r5, r23, 2
0006a8  a907ce10  mm r15, r28, r12, 8
0006ac  9f870702  addli r15, r15, 256
0006b0  0b16d610  add.s r12, r12, r13
0006b4  1d900b00  unlock r23
0006b8  bb9f37ff  bneq r15, r19, -28
0006bc  9f620000  addli r5, zero, 6
0006c0  7d800200  xsignal r5, 0
0006c4  9f321000  addli r5, zero, 11
0006c8  dbb4ffff  j -604
0006cc  b70241ff  beq r2, r20, -864
0006d0  9f510000  addli r3, zero, 5
0006d4  b7223100  beq r2, r3, 168
0006d8  6b550ff4  load.d r[11:12], -192(r30)
0006dc  eb528ff6  load.d r[6:7], -152(r30)
0006e0  6b5c8ff4  load.d r[25:26], -184(r30)
0006e4  a7010504  addli.d r[4:5], r[11:12], 512
0006e8  8bb15140  min.sl r[4:5], r[4:5], r[6:7]
0006ec  8bb1a148  max.sl r[4:5], r[4:5], r[11:12]
0006f0  8bb1a118  sub.sl r[4:5], r[4:5], r[11:12]
0006f4  bb237101  bneq r2, r23, 232
0006f8  eb528ff7  load.d r[6:7], -136(r30)
0006fc  93b23204  setlt.sl r5, r[6:7], r[4:5]
000700  1f132000  addli r6, zero, 17
000704  7d100300  xwait r6, 0
000708  bba00200  bneq r5, zero, 40
00070c  1d000b00  lock zero, r22
000710  9f72f003  addli r5, zero, 511
000714  0d000002  ew_cfg zero, zero, zero, 1
000718  0d100000  ewcoeff_cfg zero, zero, zero, 0
00071c  0d800204  ew_cfg zero, r5, zero, 2
000720  ab421800  lui r5, 388
000724  8d0b0006  ew_cfg r23, zero, zero, 3
000728  cd320000  ssaux r5, 0
00072c  1d100b00  unlock r22
000730  1f751000  addli r10, zero, 15
000734  eb520f01  load.d r[6:7], 16(r30)
000738  9bb12100  slli r3, r3, 2
00073c  2b421800  lui r4, 388
000740  7d000500  xsignal r10, 0
000744  eb558ff3  load.d r[12:13], -200(r30)
000748  7d100500  xwait r10, 0
00074c  1d000a00  lock zero, r20
000750  15000000  dma_cfg zero, zero, zero, 0
000754  8ba2b210  add.ul r[6:7], r[6:7], r[12:13]
000758  15000304  dma_cfg zero, r6, zero, 2
00075c  15823206  dma_cfg r4, r5, r3, 3
000760  1f131000  addli r6, zero, 9
000764  95817109  dma_cfg r3, r3, r23, 4
000768  9f012000  addli r3, zero, 16
00076c  35000000  dma_run zero
000770  1d100a00  unlock r20
000774  7d800100  xsignal r3, 0
000778  5b80ffff  j -1024
00077c  1f421000  addli r4, zero, 12
000780  9f010000  addli r3, zero, 0
000784  ab421800  lui r5, 388
000788  7d100200  xwait r4, 0
00078c  1f022000  addli r4, zero, 16
000790  7d100200  xwait r4, 0
000794  1d000b00  lock zero, r22
000798  2b02803f  lui r4, 260096
00079c  0d000002  ew_cfg zero, zero, zero, 1
0007a0  0d120200  ewcoeff_cfg r4, r4, zero, 0
0007a4  1f72f003  addli r4, zero, 511
0007a8  0d000204  ew_cfg zero, r4, zero, 2
0007ac  2b020200  lui r4, 32
0007b0  8d0b0006  ew_cfg r23, zero, zero, 3
0007b4  6b5c8ff4  load.d r[25:26], -184(r30)
0007b8  ad815100  dsmadd r3, r3, r5, 0
0007bc  9f810110  addli r3, r3, 2048
0007c0  bbef41fe  bneq r3, r4, -8
0007c4  9f511000  addli r3, zero, 13
0007c8  1d100b00  unlock r22
0007cc  2b0d0200  lui r26, 32
0007d0  7d800100  xsignal r3, 0
0007d4  9f112000  addli r3, zero, 17
0007d8  5b140000  j 160
0007dc  1f131000  addli r6, zero, 9
0007e0  3b6e01fc  bneq r2, zero, -1128
0007e4  e3425ffe  loadli.w r5,  -212(r30)
0007e8  1f050004  addli r10, zero, 512
0007ec  1f560000  addli r12, zero, 5
0007f0  33050528  zext_int2long r[11:12], r10
0007f4  b3920228  sext_int2long r[6:7], r5
0007f8  8bb1a140  min.sl r[4:5], r[4:5], r[11:12]
0007fc  6b558ff1  load.d r[11:12], -232(r30)
000800  27878200  addli.d r[15:16], r[6:7], 64
000804  733c3ff6  store.d r[4:5], -136(r30)
000808  eb510ff3  load.d r[4:5], -208(r30)
00080c  0b35a740  min.sl r[11:12], r[15:16], r[11:12]
000810  6b578ff6  load.d r[15:16], -152(r30)
000814  0b355548  max.sl r[11:12], r[11:12], r[6:7]
000818  0bb7e120  mul.sl r[15:16], r[4:5], r[15:16]
00081c  eb518f01  load.d r[4:5], 24(r30)
000820  8b325518  sub.sl r[6:7], r[11:12], r[6:7]
000824  33850d28  zext_int2long r[11:12], r27
000828  17376703  sll.d r[15:16], r[15:16], r22
00082c  8bb2a240  min.sl r[6:7], r[6:7], r[11:12]
000830  0ba7e110  add.ul r[15:16], r[4:5], r[15:16]
000834  eb518ff3  load.d r[4:5], -200(r30)
000838  0b253710  add.ul r[11:12], r[15:16], r[4:5]
00083c  9f511000  addli r3, zero, 13
000840  7d900100  xwait r3, 0
000844  1d000600  lock zero, r12
000848  15000000  dma_cfg zero, zero, zero, 0
00084c  15800b02  dma_cfg zero, r23, zero, 1
000850  eb518ff7  load.d r[4:5], -136(r30)
000854  95050004  dma_cfg r11, zero, zero, 2
000858  9bb12100  slli r3, r3, 2
00085c  15053006  dma_cfg r10, zero, r3, 3
000860  e341affe  loadli.w r3,  -172(r30)
000864  95815908  dma_cfg r3, r19, r5, 4
000868  1f131000  addli r6, zero, 9
00086c  9f611000  addli r3, zero, 14
000870  35000000  dma_run zero
000874  1d100600  unlock r12
000878  7d800100  xsignal r3, 0
00087c  db5fffff  j -1284
000880  7d000000  xsignal zero, 0
000884  bb600100  bneq r2, zero, 56
000888  9f200000  addli r1, zero, 2
00088c  7d100000  xwait zero, 0
000890  7d100000  xwait zero, 0
000894  7d100000  xwait zero, 0
000898  7d100000  xwait zero, 0
00089c  7d100000  xwait zero, 0
0008a0  7d100000  xwait zero, 0
0008a4  7d100000  xwait zero, 0
0008a8  7d100000  xwait zero, 0
0008ac  1d800000  lock zero, r1
0008b0  0d000020  ew_cfg zero, zero, zero, 16
0008b4  1d900000  unlock r1
0008b8  7d400000  xsignal_mode_cfg zero
0008bc  9f8eee01  addli sp, sp, 240
0008c0  00a00300  mfence { lm, sm, gm }
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
000a40  00100000  exit
000a44  00100000  exit
000a48  00100000  exit
000a4c  00100000  exit
000a50  00100000  exit
000a54  00100000  exit
000a58  00100000  exit
000a5c  00100000  exit
000a60  00100000  exit
000a64  00100000  exit
000a68  00100000  exit
000a6c  00100000  exit
000a70  00100000  exit
000a74  00100000  exit
000a78  00100000  exit
000a7c  00100000  exit
000a80  00100000  exit
000a84  00100000  exit
000a88  00100000  exit
000a8c  00100000  exit
000a90  00100000  exit
000a94  00100000  exit
000a98  00100000  exit
000a9c  00100000  exit
000aa0  00100000  exit
000aa4  00100000  exit
000aa8  00100000  exit
000aac  00100000  exit
000ab0  00100000  exit
000ab4  00100000  exit
000ab8  00100000  exit
000abc  00100000  exit
000ac0  00100000  exit
000ac4  00100000  exit
000ac8  00100000  exit
000acc  00100000  exit
000ad0  00100000  exit
000ad4  00100000  exit
000ad8  00100000  exit
000adc  00100000  exit
000ae0  00100000  exit
000ae4  00100000  exit
000ae8  00100000  exit
000aec  00100000  exit
000af0  00100000  exit
000af4  00100000  exit
000af8  00100000  exit
000afc  00100000  exit
000b00  00100000  exit
000b04  00100000  exit
