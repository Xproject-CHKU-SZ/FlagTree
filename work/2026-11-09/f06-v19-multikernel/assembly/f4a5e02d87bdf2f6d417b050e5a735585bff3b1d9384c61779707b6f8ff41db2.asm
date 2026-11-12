; SHA-256 f4a5e02d87bdf2f6d417b050e5a735585bff3b1d9384c61779707b6f8ff41db2
; P800 SDNN · XTDK LLVM 19 · 705 / 705 words decoded
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
0000bc  003e0002  core_id r28
0000c0  1f8fee01  addli r30, sp, 240
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600e00  beq r28, zero, 24
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
0002f4  4ba61102  ble.s r3, r1, 1416
0002f8  e3024f00  loadli.w r5,  32(r30)
0002fc  63035f00  loadli.w r6,  40(r30)
000300  b3930128  sext_int2long r[8:9], r3
000304  63424f00  loadli.w r4,  36(r30)
000308  339c0028  sext_int2long r[25:26], r1
00030c  e3040fff  loadli.w r9,  -128(r30)
000310  1f4a0000  addli r20, zero, 4
000314  1f2b0000  addli r22, zero, 2
000318  9f1b0000  addli r23, zero, 1
00031c  9f0d8000  addli r27, zero, 64
000320  9f090010  addli r19, zero, 2048
000324  1f0d2000  addli r26, zero, 16
000328  2b470000  lui r14, 4
00032c  73307ff2  store.d r[8:9], -224(r30)
000330  e343afff  loadli.w r7,  -44(r30)
000334  63045fff  loadli.w r8,  -88(r30)
000338  33950228  sext_int2long r[11:12], r5
00033c  9b302300  slli r1, r6, 2
000340  9f020000  addli r5, zero, 0
000344  733caff0  store.d r[11:12], -232(r30)
000348  e7441ffe  storeli.w r1, -180(r30)
00034c  33150228  sext_int2long r[11:12], r4
000350  9b302200  slli r1, r4, 2
000354  b3110328  sext_int2long r[4:5], r6
000358  733caff6  store.d r[11:12], -136(r30)
00035c  e7451ffe  storeli.w r1, -164(r30)
000360  73383ff0  store.d r[4:5], -240(r30)
000364  5b040000  j 32
000368  9f411000  addli r3, zero, 12
00036c  7d800100  xsignal r3, 0
000370  6b5c0ff4  load.d r[25:26], -192(r30)
000374  eb510ff2  load.d r[4:5], -224(r30)
000378  271c0c00  addli.d r[25:26], r[25:26], 1
00037c  93313c04  setlt.sl r3, r[25:26], r[4:5]
000380  b7f30102  beq r3, zero, 1276
000384  3b304e01  bneq r28, r20, 12
000388  9f611000  addli r3, zero, 14
00038c  7d900100  xwait r3, 0
000390  e3416f00  loadli.w r3,  52(r30)
000394  63026f00  loadli.w r4,  48(r30)
000398  73308ff5  store.d r[25:26], -192(r30)
00039c  8b113c30  div.s r3, r24, r3
0003a0  1f030200  addli r6, r4, 0
0003a4  0b926130  div.s r4, r3, r6
0003a8  8b916138  mod.s r3, r3, r6
0003ac  1b366200  slli r12, r4, 6
0003b0  33150228  sext_int2long r[11:12], r4
0003b4  1bb29100  slli r4, r3, 9
0003b8  b3970128  sext_int2long r[16:17], r3
0003bc  9f610000  addli r3, zero, 6
0003c0  97383502  sll.d r[18:19], r[11:12], r3
0003c4  9f111000  addli r3, zero, 9
0003c8  b3100228  sext_int2long r[2:3], r4
0003cc  e742cffe  storeli.w r12, -212(r30)
0003d0  17b53702  sll.d r[11:12], r[16:17], r3
0003d4  9f71f003  addli r3, zero, 511
0003d8  73381ff3  store.d r[18:19], -208(r30)
0003dc  b3810128  zext_int2long r[4:5], r3
0003e0  17356503  sll.d r[11:12], r[11:12], r22
0003e4  73383ff6  store.d r[4:5], -144(r30)
0003e8  e3015f00  loadli.w r3,  40(r30)
0003ec  733caff2  store.d r[11:12], -200(r30)
0003f0  bfcb7101  blt.s r3, r23, 752
0003f4  eb570ff1  load.d r[16:17], -240(r30)
0003f8  b3110628  sext_int2long r[4:5], r12
0003fc  1f030000  addli r6, zero, 0
000400  278c8100  addli.d r[25:26], r[4:5], 64
000404  0bb6f820  mul.sl r[13:14], r[18:19], r[16:17]
000408  eb588ff1  load.d r[18:19], -232(r30)
00040c  0b3c1c41  min.sl r[25:26], r[25:26], r[18:19]
000410  a7880004  addli.d r[18:19], r[2:3], 512
000414  8b373c48  max.sl r[16:17], r[25:26], r[4:5]
000418  6b5c8ff7  load.d r[25:26], -136(r30)
00041c  0bbc8841  min.sl r[25:26], r[18:19], r[25:26]
000420  8bb83718  sub.sl r[18:19], r[16:17], r[4:5]
000424  eb518f00  load.d r[4:5], 8(r30)
000428  8ba1a110  add.ul r[4:5], r[4:5], r[11:12]
00042c  0b351c48  max.sl r[11:12], r[25:26], r[2:3]
000430  173c6603  sll.d r[25:26], r[13:14], r22
000434  73343ff6  store.d r[4:5], -152(r30)
000438  eb510f00  load.d r[4:5], 0(r30)
00043c  0b351518  sub.sl r[11:12], r[11:12], r[2:3]
000440  9b362500  slli r13, r10, 2
000444  7330aff6  store.d r[11:12], -160(r30)
000448  8ba18111  add.ul r[4:5], r[4:5], r[25:26]
00044c  1f0c0000  addli r24, zero, 0
000450  73383ff4  store.d r[4:5], -176(r30)
000454  5b0d0000  j 104
000458  9f011000  addli r3, zero, 8
00045c  7d900100  xwait r3, 0
000460  9f311000  addli r3, zero, 11
000464  7d900100  xwait r3, 0
000468  1d000000  lock zero, zero
00046c  9f010004  addli r3, zero, 512
000470  010b0000  ds_cfg r22, zero, 0
000474  81010002  ds_cfg r3, zero, 1
000478  810d001c  ds_cfg r27, zero, 14
00047c  8101001a  ds_cfg r3, zero, 13
000480  9f111000  addli r3, zero, 9
000484  4185bc05  shuffle_coa r10, r25, r27, 2
000488  1d100000  unlock zero
00048c  7d800100  xsignal r3, 0
000490  7d800000  xsignal r1, 0
000494  a7800700  addli.d r[2:3], r[16:17], 0
000498  e3015f00  loadli.w r3,  40(r30)
00049c  9f920200  addli r5, r5, 1
0004a0  9f940400  addli r9, r9, 1
0004a4  1f140400  addli r8, r8, 1
0004a8  9f930300  addli r7, r7, 1
0004ac  1f038300  addli r6, r6, 64
0004b0  1f1c0c00  addli r24, r24, 1
0004b4  3f203300  blt.s r6, r3, 8
0004b8  5b450000  j 552
0004bc  9f111000  addli r3, zero, 9
0004c0  a7870000  addli.d r[16:17], r[2:3], 0
0004c4  33150328  sext_int2long r[11:12], r6
0004c8  8b9a3438  mod.s r21, r9, r3
0004cc  9f016000  addli r3, zero, 48
0004d0  8b9c3238  mod.s r25, r5, r3
0004d4  ab010200  lui r3, 32
0004d8  1bb6ea00  slli r12, r21, 14
0004dc  9bbaec00  slli r21, r25, 14
0004e0  8b1c3610  add.s r25, r12, r3
0004e4  3b117e01  bneq r28, r23, 68
0004e8  9f717000  addli r3, zero, 63
0004ec  9f201000  addli r1, zero, 10
0004f0  7d100a00  xwait r20, 0
0004f4  b3810128  zext_int2long r[4:5], r3
0004f8  93b11105  setlt.sl r3, r[4:5], r[18:19]
0004fc  bb900100  bneq r3, zero, 36
000500  1d000b00  lock zero, r22
000504  9f717000  addli r3, zero, 63
000508  0d000002  ew_cfg zero, zero, zero, 1
00050c  0d100000  ewcoeff_cfg zero, zero, zero, 0
000510  0d800104  ew_cfg zero, r3, zero, 2
000514  8d0d0006  ew_cfg r27, zero, zero, 3
000518  cd3c0000  ssaux r25, 0
00051c  1d100b00  unlock r22
000520  7d000b00  xsignal r22, 0
000524  db120000  j 148
000528  9f201000  addli r1, zero, 10
00052c  37416e01  beq r28, r22, 80
000530  9f610000  addli r3, zero, 6
000534  3b123e00  bneq r28, r3, 132
000538  7d100b00  xwait r22, 0
00053c  1f810600  addli r2, r13, 0
000540  6b560ff5  load.d r[13:14], -176(r30)
000544  97316503  sll.d r[4:5], r[11:12], r22
000548  1d000a00  lock zero, r20
00054c  15000000  dma_cfg zero, zero, zero, 0
000550  8b213610  add.ul r[4:5], r[13:14], r[4:5]
000554  1f060002  addli r12, zero, 256
000558  9f060100  addli r13, r2, 0
00055c  15000204  dma_cfg zero, r4, zero, 2
000560  958cc106  dma_cfg r25, r3, r12, 3
000564  e3419ffe  loadli.w r3,  -180(r30)
000568  15861109  dma_cfg r12, r3, r17, 4
00056c  35000000  dma_run zero
000570  1d100a00  unlock r20
000574  9f310000  addli r3, zero, 3
000578  db070000  j 60
00057c  9f310000  addli r3, zero, 3
000580  7d900100  xwait r3, 0
000584  9f610000  addli r3, zero, 6
000588  7d900100  xwait r3, 0
00058c  b7800800  beq r17, zero, 32
000590  1d000000  lock zero, zero
000594  010b0000  ds_cfg r22, zero, 0
000598  810d0002  ds_cfg r27, zero, 1
00059c  810d001c  ds_cfg r27, zero, 14
0005a0  8108001a  ds_cfg r17, zero, 13
0005a4  a19abc03  shuffle_batch r21, r25, r27, 1
0005a8  1d100000  unlock zero
0005ac  9f510000  addli r3, zero, 5
0005b0  7d000a00  xsignal r20, 0
0005b4  7d800100  xsignal r3, 0
0005b8  8b911338  mod.s r3, r7, r1
0005bc  2b420400  lui r4, 68
0005c0  9bb11101  slli r3, r3, 17
0005c4  8b9c4110  add.s r25, r3, r4
0005c8  3b227e01  bneq r28, r23, 136
0005cc  eb510ff7  load.d r[4:5], -144(r30)
0005d0  eb500ff6  load.d r[2:3], -160(r30)
0005d4  93b11104  setlt.sl r3, r[4:5], r[2:3]
0005d8  1f121000  addli r4, zero, 9
0005dc  7d100200  xwait r4, 0
0005e0  bb900100  bneq r3, zero, 36
0005e4  1d000b00  lock zero, r22
0005e8  9f71f003  addli r3, zero, 511
0005ec  0d000002  ew_cfg zero, zero, zero, 1
0005f0  0d100000  ewcoeff_cfg zero, zero, zero, 0
0005f4  0d800104  ew_cfg zero, r3, zero, 2
0005f8  8d0d0006  ew_cfg r27, zero, zero, 3
0005fc  cd3c0000  ssaux r25, 0
000600  1d100b00  unlock r22
000604  eb518ff7  load.d r[4:5], -136(r30)
000608  8b313520  mul.sl r[4:5], r[11:12], r[4:5]
00060c  1f750000  addli r10, zero, 7
000610  7d000500  xsignal r10, 0
000614  7d100500  xwait r10, 0
000618  eb508ff6  load.d r[2:3], -152(r30)
00061c  97b16103  sll.d r[4:5], r[4:5], r22
000620  1d000a00  lock zero, r20
000624  15000000  dma_cfg zero, zero, zero, 0
000628  8ba13010  add.ul r[4:5], r[2:3], r[4:5]
00062c  15000204  dma_cfg zero, r4, zero, 2
000630  958cd106  dma_cfg r25, r3, r13, 3
000634  e341bffe  loadli.w r3,  -164(r30)
000638  9589b109  dma_cfg r19, r3, r27, 4
00063c  35000000  dma_run zero
000640  1d100a00  unlock r20
000644  9f011000  addli r3, zero, 8
000648  7d800100  xsignal r3, 0
00064c  5bc9ffff  j -440
000650  8b111438  mod.s r3, r8, r1
000654  1f710000  addli r2, zero, 7
000658  1bb51101  slli r10, r3, 17
00065c  b7772efe  beq r28, r2, -516
000660  a7800700  addli.d r[2:3], r[16:17], 0
000664  bb584eff  bneq r28, r20, -460
000668  9f510000  addli r3, zero, 5
00066c  9f201000  addli r1, zero, 10
000670  7d900100  xwait r3, 0
000674  7d900000  xwait r1, 0
000678  b7400c00  beq r24, zero, 48
00067c  37d10800  beq r17, zero, 84
000680  9f050000  addli r11, zero, 0
000684  1d800b00  lock zero, r23
000688  898d1d01  mm_cfg r27, r27, r17, 0
00068c  090a7d05  mm_cfg r20, r26, r23, 2
000690  a995aa10  mm_acc r11, r21, r10, 8
000694  9f850502  addli r11, r11, 256
000698  0b15e510  add.s r10, r10, r14
00069c  1d900b00  unlock r23
0006a0  bb9f35ff  bneq r11, r19, -28
0006a4  db050000  j 44
0006a8  b7a00800  beq r17, zero, 40
0006ac  9f050000  addli r11, zero, 0
0006b0  1d800b00  lock zero, r23
0006b4  898d1d01  mm_cfg r27, r27, r17, 0
0006b8  090a7d05  mm_cfg r20, r26, r23, 2
0006bc  a985aa10  mm r11, r21, r10, 8
0006c0  9f850502  addli r11, r11, 256
0006c4  0b15e510  add.s r10, r10, r14
0006c8  1d900b00  unlock r23
0006cc  bb9f35ff  bneq r11, r19, -28
0006d0  9f610000  addli r3, zero, 6
0006d4  7d800100  xsignal r3, 0
0006d8  9f311000  addli r3, zero, 11
0006dc  dbedffff  j -148
0006e0  37224eff  beq r28, r20, -888
0006e4  6b558ff7  load.d r[11:12], -136(r30)
0006e8  a7810004  addli.d r[4:5], r[2:3], 512
0006ec  6b5c0ff4  load.d r[25:26], -192(r30)
0006f0  1f630000  addli r6, zero, 6
0006f4  8bb1a140  min.sl r[4:5], r[4:5], r[11:12]
0006f8  2b050200  lui r10, 32
0006fc  8bb11148  max.sl r[4:5], r[4:5], r[2:3]
000700  8bb11118  sub.sl r[4:5], r[4:5], r[2:3]
000704  b7126e00  beq r28, r6, 164
000708  eb578ff3  load.d r[16:17], -200(r30)
00070c  1f530000  addli r6, zero, 5
000710  37216e00  beq r28, r6, 72
000714  3b537e01  bneq r28, r23, 212
000718  6b550ff7  load.d r[11:12], -144(r30)
00071c  93313504  setlt.sl r3, r[11:12], r[4:5]
000720  1f122000  addli r4, zero, 17
000724  7d100200  xwait r4, 0
000728  bba00100  bneq r3, zero, 40
00072c  1d000b00  lock zero, r22
000730  9f71f003  addli r3, zero, 511
000734  0d000002  ew_cfg zero, zero, zero, 1
000738  0d100000  ewcoeff_cfg zero, zero, zero, 0
00073c  0d800104  ew_cfg zero, r3, zero, 2
000740  ab411800  lui r3, 388
000744  8d0b0006  ew_cfg r23, zero, zero, 3
000748  cd310000  ssaux r3, 0
00074c  1d100b00  unlock r22
000750  9f711000  addli r3, zero, 15
000754  5b240000  j 288
000758  1f421000  addli r4, zero, 12
00075c  9f010000  addli r3, zero, 0
000760  7d100200  xwait r4, 0
000764  7d100d00  xwait r26, 0
000768  1d000b00  lock zero, r22
00076c  2b02803f  lui r4, 260096
000770  0d000002  ew_cfg zero, zero, zero, 1
000774  0d120200  ewcoeff_cfg r4, r4, zero, 0
000778  1f72f003  addli r4, zero, 511
00077c  0d000204  ew_cfg zero, r4, zero, 2
000780  2b421800  lui r4, 388
000784  8d0b0006  ew_cfg r23, zero, zero, 3
000788  ad814100  dsmadd r3, r3, r4, 0
00078c  9f810110  addli r3, r3, 2048
000790  bbefa1fe  bneq r3, r10, -8
000794  9f511000  addli r3, zero, 13
000798  1d100b00  unlock r22
00079c  7d800100  xsignal r3, 0
0007a0  9f112000  addli r3, zero, 17
0007a4  5b1a0000  j 208
0007a8  6b550f01  load.d r[11:12], 16(r30)
0007ac  eb578ff3  load.d r[16:17], -200(r30)
0007b0  1f731000  addli r6, zero, 15
0007b4  9bb12100  slli r3, r3, 2
0007b8  2b421800  lui r4, 388
0007bc  7d100300  xwait r6, 0
0007c0  1d000a00  lock zero, r20
0007c4  0b25f510  add.ul r[11:12], r[11:12], r[16:17]
0007c8  15000000  dma_cfg zero, zero, zero, 0
0007cc  15800504  dma_cfg zero, r11, zero, 2
0007d0  15023506  dma_cfg r4, r10, r3, 3
0007d4  95817109  dma_cfg r3, r3, r23, 4
0007d8  35000000  dma_run zero
0007dc  1d100a00  unlock r20
0007e0  7d000d00  xsignal r26, 0
0007e4  5b72ffff  j -1136
0007e8  3b3e0efc  bneq r28, zero, -1140
0007ec  63435ffe  loadli.w r6,  -212(r30)
0007f0  27860700  addli.d r[13:14], r[16:17], 0
0007f4  33150328  sext_int2long r[11:12], r6
0007f8  1f030004  addli r6, zero, 512
0007fc  b3070328  zext_int2long r[16:17], r6
000800  a7088500  addli.d r[18:19], r[11:12], 64
000804  1f530000  addli r6, zero, 5
000808  8bb0f140  min.sl r[2:3], r[4:5], r[16:17]
00080c  eb578ff1  load.d r[16:17], -232(r30)
000810  eb510ff3  load.d r[4:5], -208(r30)
000814  8bb7f840  min.sl r[16:17], r[18:19], r[16:17]
000818  eb588ff7  load.d r[18:19], -136(r30)
00081c  8bb7a748  max.sl r[16:17], r[16:17], r[11:12]
000820  8bb81121  mul.sl r[18:19], r[4:5], r[18:19]
000824  eb518f01  load.d r[4:5], 24(r30)
000828  0bb5a718  sub.sl r[11:12], r[16:17], r[11:12]
00082c  b3870d28  zext_int2long r[16:17], r27
000830  97b86803  sll.d r[18:19], r[18:19], r22
000834  0b35f540  min.sl r[11:12], r[11:12], r[16:17]
000838  8ba81111  add.ul r[18:19], r[4:5], r[18:19]
00083c  9f511000  addli r3, zero, 13
000840  7d900100  xwait r3, 0
000844  1d000300  lock zero, r6
000848  8ba7c810  add.ul r[16:17], r[18:19], r[13:14]
00084c  9bb12000  slli r3, r1, 2
000850  15000000  dma_cfg zero, zero, zero, 0
000854  15800b02  dma_cfg zero, r23, zero, 1
000858  15080004  dma_cfg r16, zero, zero, 2
00085c  95073006  dma_cfg r15, zero, r3, 3
000860  e341bffe  loadli.w r3,  -164(r30)
000864  9581a908  dma_cfg r3, r19, r10, 4
000868  9f611000  addli r3, zero, 14
00086c  35000000  dma_run zero
000870  1d100300  unlock r6
000874  7d800100  xsignal r3, 0
000878  db5fffff  j -1284
00087c  7d000000  xsignal zero, 0
000880  bb600e00  bneq r28, zero, 56
000884  9f200000  addli r1, zero, 2
000888  7d100000  xwait zero, 0
00088c  7d100000  xwait zero, 0
000890  7d100000  xwait zero, 0
000894  7d100000  xwait zero, 0
000898  7d100000  xwait zero, 0
00089c  7d100000  xwait zero, 0
0008a0  7d100000  xwait zero, 0
0008a4  7d100000  xwait zero, 0
0008a8  1d800000  lock zero, r1
0008ac  0d000020  ew_cfg zero, zero, zero, 16
0008b0  1d900000  unlock r1
0008b4  7d400000  xsignal_mode_cfg zero
0008b8  9f8eee01  addli sp, sp, 240
0008bc  00a00300  mfence { lm, sm, gm }
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
