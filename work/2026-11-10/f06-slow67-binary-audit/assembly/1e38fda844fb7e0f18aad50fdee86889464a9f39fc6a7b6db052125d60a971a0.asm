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
00005c  9f096000  addli r19, zero, 48
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
0000b4  9f8e1eff  addli sp, sp, -120
0000b8  9f100000  addli r1, zero, 1
0000bc  003e0002  core_id r28
0000c0  1f8f7e00  addli r30, sp, 56
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600e00  beq r28, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b0e0000  j 112
0000e0  9f210000  addli r3, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  2bf2ffff  lui r4, 1048575
0000ec  1d800100  lock zero, r3
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b10f2ff  ori r1, r4, 4095
0000f8  1d900100  unlock r3
0000fc  9f610000  addli r3, zero, 6
000100  80a10004  csr_set csr3, r1
000104  9f400000  addli r1, zero, 4
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  7d800000  xsignal r1, 0
000114  7d800100  xsignal r3, 0
000118  7d800100  xsignal r3, 0
00011c  9f001000  addli r1, zero, 8
000120  9f411000  addli r3, zero, 12
000124  7d800000  xsignal r1, 0
000128  7d800000  xsignal r1, 0
00012c  7d800100  xsignal r3, 0
000130  7d800100  xsignal r3, 0
000134  9f201000  addli r1, zero, 10
000138  9f611000  addli r3, zero, 14
00013c  7d800000  xsignal r1, 0
000140  7d800000  xsignal r1, 0
000144  7d800100  xsignal r3, 0
000148  7d800100  xsignal r3, 0
00014c  e3404f00  loadli.w r1,  36(r30)
000150  e3015f00  loadli.w r3,  40(r30)
000154  80d20002  load_param_i r5, 1
000158  63425f00  loadli.w r4,  44(r30)
00015c  8b901120  mul.s r1, r3, r1
000160  9f810200  addli r3, r5, 0
000164  8b914050  fmac.s r3, r1, r4
000168  0b924020  mul.s r4, r1, r4
00016c  9ff1f1ff  addli r3, r3, -1
000170  8b915130  div.s r3, r3, r5
000174  80520002  load_param_i r5, 0
000178  8b905120  mul.s r1, r3, r5
00017c  8b915150  fmac.s r3, r3, r5
000180  8b914140  min.s r3, r3, r4
000184  cbe11102  ble.s r3, r1, 1144
000188  63043f00  loadli.w r8,  24(r30)
00018c  b3940128  sext_int2long r[10:11], r3
000190  e3433f00  loadli.w r7,  28(r30)
000194  9f018000  addli r3, zero, 64
000198  63034f00  loadli.w r6,  32(r30)
00019c  1f020000  addli r4, zero, 0
0001a0  9f020000  addli r5, zero, 0
0001a4  9f290000  addli r19, zero, 2
0001a8  1f5a0000  addli r20, zero, 5
0001ac  9f4a0000  addli r21, zero, 4
0001b0  1f690000  addli r18, zero, 6
0001b4  1f1c1000  addli r24, zero, 9
0001b8  9f1c0000  addli r25, zero, 1
0001bc  9f0d0010  addli r27, zero, 2048
0001c0  9f3b1000  addli r23, zero, 11
0001c4  2b080200  lui r16, 32
0001c8  1f070000  addli r14, zero, 0
0001cc  73349ffe  store.d r[10:11], -24(r30)
0001d0  33950028  sext_int2long r[11:12], r1
0001d4  9f040004  addli r9, zero, 512
0001d8  9f707400  addli r1, r8, 63
0001dc  33160328  sext_int2long r[13:14], r6
0001e0  8b979330  div.s r15, r7, r9
0001e4  9b332300  slli r7, r6, 2
0001e8  33140428  sext_int2long r[9:10], r8
0001ec  8b903030  div.s r1, r1, r3
0001f0  733ccffc  store.d r[13:14], -40(r30)
0001f4  73348ffc  store.d r[9:10], -56(r30)
0001f8  674e1ffe  storeli.w r1, -28(r30)
0001fc  5b0b0000  j 88
000200  1f441000  addli r8, zero, 12
000204  1f360000  addli r12, zero, 3
000208  2b130800  lui r6, 129
00020c  7d100c00  xwait r24, 0
000210  9f040004  addli r9, zero, 512
000214  7d100400  xwait r8, 0
000218  1f048000  addli r8, zero, 64
00021c  1d000600  lock zero, r12
000220  0b136d10  add.s r6, r26, r6
000224  11009402  rs_cfg zero, r8, r9, 1
000228  11000406  rs_cfg zero, r8, zero, 3
00022c  31839104  rs_col r6, r3, r9, 2
000230  9f211000  addli r3, zero, 10
000234  1d100600  unlock r12
000238  7d800100  xsignal r3, 0
00023c  7d800b00  xsignal r23, 0
000240  6b548ffe  load.d r[9:10], -24(r30)
000244  27150500  addli.d r[11:12], r[11:12], 1
000248  1f120200  addli r4, r4, 1
00024c  93318504  setlt.sl r3, r[11:12], r[9:10]
000250  b7be0100  beq r3, zero, 940
000254  8b113239  mod.s r3, r4, r19
000258  1bbd1101  slli r26, r3, 17
00025c  e70f3ffe  storeli.w r3, -8(r30)
000260  bb404e01  bneq r28, r20, 48
000264  7d900a00  xwait r21, 0
000268  1d800900  lock zero, r19
00026c  9f71f003  addli r3, zero, 511
000270  0d000002  ew_cfg zero, zero, zero, 1
000274  0d100000  ewcoeff_cfg zero, zero, zero, 0
000278  0d800104  ew_cfg zero, r3, zero, 2
00027c  9f018000  addli r3, zero, 64
000280  8d010006  ew_cfg r3, zero, zero, 3
000284  4d3d0000  ssaux r26, 0
000288  1d900900  unlock r19
00028c  7d800900  xsignal r19, 0
000290  3b204e01  bneq r28, r20, 8
000294  7d900900  xwait r19, 0
000298  e3415f00  loadli.w r3,  44(r30)
00029c  63035f00  loadli.w r6,  40(r30)
0002a0  8b113530  div.s r3, r10, r3
0002a4  8b916130  div.s r3, r3, r6
0002a8  6343cfff  loadli.w r6,  -28(r30)
0002ac  8b916138  mod.s r3, r3, r6
0002b0  1f030004  addli r6, zero, 512
0002b4  33940128  sext_int2long r[9:10], r3
0002b8  1bb66100  slli r12, r3, 6
0002bc  e3413f00  loadli.w r3,  28(r30)
0002c0  17342403  sll.d r[9:10], r[9:10], r18
0002c4  674fcffe  storeli.w r12, -12(r30)
0002c8  bff76100  blt.s r3, r6, 508
0002cc  a7080400  addli.d r[18:19], r[9:10], 0
0002d0  6b548ffd  load.d r[9:10], -40(r30)
0002d4  e3013f00  loadli.w r3,  24(r30)
0002d8  1f038000  addli r6, zero, 64
0002dc  a7800800  addli.d r[2:3], r[18:19], 0
0002e0  0bb48820  mul.sl r[9:10], r[18:19], r[9:10]
0002e4  8b91c118  sub.s r3, r3, r12
0002e8  6b560f00  load.d r[13:14], 0(r30)
0002ec  1f690000  addli r18, zero, 6
0002f0  17343403  sll.d r[9:10], r[9:10], r19
0002f4  0b936140  min.s r6, r3, r6
0002f8  0b268610  add.ul r[13:14], r[13:14], r[9:10]
0002fc  bb522e01  bneq r28, r18, 180
000300  1f0b0000  addli r22, zero, 0
000304  ab080400  lui r17, 64
000308  7338affc  store.d r[11:12], -48(r30)
00030c  db0a0000  j 84
000310  8b116711  add.s r3, r14, r22
000314  6b558f00  load.d r[11:12], 8(r30)
000318  ab0b0800  lui r23, 128
00031c  1f1b0b00  addli r22, r22, 1
000320  8b913139  mod.s r3, r3, r19
000324  0b248510  add.ul r[9:10], r[11:12], r[9:10]
000328  1f051000  addli r10, zero, 8
00032c  7d100500  xwait r10, 0
000330  1d800a00  lock zero, r21
000334  15000000  dma_cfg zero, zero, zero, 0
000338  15800404  dma_cfg zero, r9, zero, 2
00033c  9bb1b100  slli r3, r3, 11
000340  8b917111  add.s r3, r3, r23
000344  9501b407  dma_cfg r3, r8, r27, 3
000348  9f710000  addli r3, zero, 7
00034c  958d9d09  dma_cfg r27, r27, r25, 4
000350  35000000  dma_run zero
000354  1d900a00  unlock r21
000358  7d800100  xsignal r3, 0
00035c  37d56701  beq r15, r22, 340
000360  33040b28  zext_int2long r[9:10], r22
000364  17348403  sll.d r[9:10], r[9:10], r24
000368  17343403  sll.d r[9:10], r[9:10], r19
00036c  bb1e9eff  bneq r28, r25, -92
000370  8b916211  add.s r3, r5, r22
000374  7d100900  xwait r18, 0
000378  1d800a00  lock zero, r21
00037c  8b2b8610  add.ul r[24:25], r[13:14], r[9:10]
000380  15000000  dma_cfg zero, zero, zero, 0
000384  8b913139  mod.s r3, r3, r19
000388  15000c04  dma_cfg zero, r24, zero, 2
00038c  9bb11101  slli r3, r3, 17
000390  8b911111  add.s r3, r3, r17
000394  9581bb07  dma_cfg r3, r23, r27, 3
000398  1f1c1000  addli r24, zero, 9
00039c  958d6308  dma_cfg r27, r7, r6, 4
0003a0  35000000  dma_run zero
0003a4  1d900a00  unlock r21
0003a8  7d000a00  xsignal r20, 0
0003ac  dbecffff  j -156
0003b0  1f0b0000  addli r22, zero, 0
0003b4  27840000  addli.d r[9:10], r[2:3], 0
0003b8  ab080400  lui r17, 64
0003bc  5b090000  j 72
0003c0  33040b28  zext_int2long r[9:10], r22
0003c4  7d100900  xwait r18, 0
0003c8  1d800a00  lock zero, r21
0003cc  15000000  dma_cfg zero, zero, zero, 0
0003d0  17347403  sll.d r[9:10], r[9:10], r23
0003d4  0b248610  add.ul r[9:10], r[13:14], r[9:10]
0003d8  15800404  dma_cfg zero, r9, zero, 2
0003dc  9501b407  dma_cfg r3, r8, r27, 3
0003e0  27840000  addli.d r[9:10], r[2:3], 0
0003e4  958d6308  dma_cfg r27, r7, r6, 4
0003e8  35000000  dma_run zero
0003ec  1d900a00  unlock r21
0003f0  7d000a00  xsignal r20, 0
0003f4  9f920200  addli r5, r5, 1
0003f8  1f1b0b00  addli r22, r22, 1
0003fc  1f170700  addli r14, r14, 1
000400  3713fb00  beq r22, r15, 196
000404  8b913239  mod.s r3, r5, r19
000408  9bb11101  slli r3, r3, 17
00040c  8b911111  add.s r3, r3, r17
000410  b74e9eff  beq r28, r25, -80
000414  bb0f4eff  bneq r28, r20, -32
000418  8b143739  mod.s r9, r14, r19
00041c  9f7b0000  addli r23, zero, 7
000420  7d100a00  xwait r20, 0
000424  1f040000  addli r8, zero, 0
000428  7d900b00  xwait r23, 0
00042c  1d800900  lock zero, r19
000430  ab0b803f  lui r23, 260096
000434  0d000002  ew_cfg zero, zero, zero, 1
000438  0d107001  ewcoeff_cfg zero, zero, r23, 0
00043c  ab0b0800  lui r23, 128
000440  9bb4b400  slli r9, r9, 11
000444  8b947411  add.s r9, r9, r23
000448  9f7bf003  addli r23, zero, 511
00044c  0d800b04  ew_cfg zero, r23, zero, 2
000450  8d0c0006  ew_cfg r25, zero, zero, 3
000454  8b9b8110  add.s r23, r3, r8
000458  1f040410  addli r8, r8, 2048
00045c  ad9b9b00  dsmul r23, r23, r9, 0
000460  bb5f04ff  bneq r8, r16, -12
000464  1f041000  addli r8, zero, 8
000468  1d900900  unlock r19
00046c  9f3b1000  addli r23, zero, 11
000470  7d000400  xsignal r8, 0
000474  1d800900  lock zero, r19
000478  2b04803f  lui r8, 260096
00047c  0d000002  ew_cfg zero, zero, zero, 1
000480  0d140400  ewcoeff_cfg r8, r8, zero, 0
000484  1f74f00f  addli r8, zero, 2047
000488  0d000404  ew_cfg zero, r8, zero, 2
00048c  1f042000  addli r8, zero, 16
000490  0d040006  ew_cfg r8, zero, zero, 3
000494  0d048426  ew_cfg r8, r8, r8, 19
000498  27840000  addli.d r[9:10], r[2:3], 0
00049c  2d0d3d00  dsmadd r26, r26, r3, 0
0004a0  0d000026  ew_cfg zero, zero, zero, 19
0004a4  1d900900  unlock r19
0004a8  7d000900  xsignal r18, 0
0004ac  5be9ffff  j -184
0004b0  6b550ffd  load.d r[11:12], -48(r30)
0004b4  8b926211  add.s r5, r5, r22
0004b8  0b176711  add.s r14, r14, r22
0004bc  9f3b1000  addli r23, zero, 11
0004c0  27840000  addli.d r[9:10], r[2:3], 0
0004c4  bb114e01  bneq r28, r20, 100
0004c8  9f310000  addli r3, zero, 3
0004cc  2b141000  lui r8, 257
0004d0  2b130800  lui r6, 129
0004d4  7d800100  xsignal r3, 0
0004d8  e301ffff  loadli.w r3,  -8(r30)
0004dc  7d900b00  xwait r23, 0
0004e0  0b136d10  add.s r6, r26, r6
0004e4  9bb18100  slli r3, r3, 8
0004e8  8b918110  add.s r3, r3, r8
0004ec  1f641000  addli r8, zero, 14
0004f0  7d100400  xwait r8, 0
0004f4  1d800900  lock zero, r19
0004f8  1f747000  addli r8, zero, 63
0004fc  0d000002  ew_cfg zero, zero, zero, 1
000500  0d000404  ew_cfg zero, r8, zero, 2
000504  1f040004  addli r8, zero, 512
000508  0d040006  ew_cfg r8, zero, zero, 3
00050c  cd010300  ssreduce r3, r6, 0
000510  9f411000  addli r3, zero, 12
000514  1d900900  unlock r19
000518  7d800100  xsignal r3, 0
00051c  9f511000  addli r3, zero, 13
000520  7d800100  xsignal r3, 0
000524  dba3ffff  j -740
000528  ab110c00  lui r3, 193
00052c  1f330000  addli r6, zero, 3
000530  8b113d10  add.s r3, r26, r3
000534  37336efe  beq r28, r6, -820
000538  3b213e01  bneq r28, r19, 72
00053c  1f330000  addli r6, zero, 3
000540  1f040004  addli r8, zero, 512
000544  7d100300  xwait r6, 0
000548  1f231000  addli r6, zero, 10
00054c  7d100300  xwait r6, 0
000550  1d000000  lock zero, zero
000554  1f038000  addli r6, zero, 64
000558  81090000  ds_cfg r19, zero, 0
00055c  01040002  ds_cfg r8, zero, 1
000560  0103001c  ds_cfg r6, zero, 14
000564  01000016  ds_cfg zero, zero, 11
000568  0104001a  ds_cfg r8, zero, 13
00056c  c1016d08  shuffle_coa r3, r26, r6, 4
000570  1d100000  unlock zero
000574  7d800a00  xsignal r21, 0
000578  7d000c00  xsignal r24, 0
00057c  db98ffff  j -828
000580  3b030efe  bneq r28, zero, -832
000584  e348efff  loadli.w r17,  -12(r30)
000588  a7000400  addli.d r[2:3], r[9:10], 0
00058c  e301ffff  loadli.w r3,  -8(r30)
000590  2b131000  lui r6, 257
000594  17bb3003  sll.d r[23:24], r[2:3], r19
000598  33940828  sext_int2long r[9:10], r17
00059c  9bb18100  slli r3, r3, 8
0005a0  27068400  addli.d r[13:14], r[9:10], 64
0005a4  8b916110  add.s r3, r3, r6
0005a8  733ccffe  store.d r[13:14], -8(r30)
0005ac  6b568ffc  load.d r[13:14], -56(r30)
0005b0  eb508fff  load.d r[2:3], -8(r30)
0005b4  0bb6c040  min.sl r[13:14], r[2:3], r[13:14]
0005b8  0b348648  max.sl r[9:10], r[13:14], r[9:10]
0005bc  6b560f01  load.d r[13:14], 16(r30)
0005c0  0b131419  sub.s r6, r8, r17
0005c4  1f541000  addli r8, zero, 13
0005c8  0b266611  add.ul r[13:14], r[13:14], r[23:24]
0005cc  9f3b1000  addli r23, zero, 11
0005d0  7d100400  xwait r8, 0
0005d4  1d000a00  lock zero, r20
0005d8  15000000  dma_cfg zero, zero, zero, 0
0005dc  15800c02  dma_cfg zero, r25, zero, 1
0005e0  95060004  dma_cfg r13, zero, zero, 2
0005e4  15865107  dma_cfg r12, r3, r21, 3
0005e8  9f611000  addli r3, zero, 14
0005ec  958a6a08  dma_cfg r21, r21, r6, 4
0005f0  35000000  dma_run zero
0005f4  1d100a00  unlock r20
0005f8  5be5ffff  j -216
0005fc  7d000000  xsignal zero, 0
000600  bb600e00  bneq r28, zero, 56
000604  9f200000  addli r1, zero, 2
000608  7d100000  xwait zero, 0
00060c  7d100000  xwait zero, 0
000610  7d100000  xwait zero, 0
000614  7d100000  xwait zero, 0
000618  7d100000  xwait zero, 0
00061c  7d100000  xwait zero, 0
000620  7d100000  xwait zero, 0
000624  7d100000  xwait zero, 0
000628  1d800000  lock zero, r1
00062c  0d000020  ew_cfg zero, zero, zero, 16
000630  1d900000  unlock r1
000634  7d400000  xsignal_mode_cfg zero
000638  9f8e7e00  addli sp, sp, 56
00063c  00a00300  mfence { lm, sm, gm }
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
000798  00100000  exit
00079c  00100000  exit
0007a0  00100000  exit
0007a4  00100000  exit
0007a8  00100000  exit
0007ac  00100000  exit
0007b0  00100000  exit
0007b4  00100000  exit
0007b8  00100000  exit
0007bc  00100000  exit
0007c0  00100000  exit
0007c4  00100000  exit
0007c8  00100000  exit
0007cc  00100000  exit
0007d0  00100000  exit
0007d4  00100000  exit
0007d8  00100000  exit
0007dc  00100000  exit
0007e0  00100000  exit
0007e4  00100000  exit
0007e8  00100000  exit
0007ec  00100000  exit
0007f0  00100000  exit
0007f4  00100000  exit
0007f8  00100000  exit
0007fc  00100000  exit
000800  00100000  exit
000804  00100000  exit
000808  00100000  exit
00080c  00100000  exit
000810  00100000  exit
000814  00100000  exit
000818  00100000  exit
00081c  00100000  exit
000820  00100000  exit
000824  00100000  exit
000828  00100000  exit
00082c  00100000  exit
000830  00100000  exit
000834  00100000  exit
000838  00100000  exit
00083c  00100000  exit
000840  00100000  exit
000844  00100000  exit
000848  00100000  exit
00084c  00100000  exit
000850  00100000  exit
000854  00100000  exit
000858  00100000  exit
00085c  00100000  exit
000860  00100000  exit
000864  00100000  exit
000868  00100000  exit
00086c  00100000  exit
000870  00100000  exit
000874  00100000  exit
000878  00100000  exit
00087c  00100000  exit
000880  00100000  exit
