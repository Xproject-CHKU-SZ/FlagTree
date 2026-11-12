; SHA-256 f04f1eb0777dffece086f5608172d2574c454124a5ffa2be4f430a191d9226ed
; P800 SDNN · XTDK LLVM 19 · 549 / 549 words decoded
; bound names: _dsa_region_kernel
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
0000b4  9f8efefe  addli sp, sp, -136
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8f9e00  addli r30, sp, 72
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600100  beq r2, zero, 24
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
000184  4ba21102  ble.s r3, r1, 1160
000188  63043f00  loadli.w r8,  24(r30)
00018c  b3940128  sext_int2long r[10:11], r3
000190  9f018000  addli r3, zero, 64
000194  e3433f00  loadli.w r7,  28(r30)
000198  63034f00  loadli.w r6,  32(r30)
00019c  1f020000  addli r4, zero, 0
0001a0  9f020000  addli r5, zero, 0
0001a4  9f290000  addli r19, zero, 2
0001a8  1f5a0000  addli r20, zero, 5
0001ac  9f4a0000  addli r21, zero, 4
0001b0  1f6c0000  addli r24, zero, 6
0001b4  1f0e1000  addli r28, zero, 8
0001b8  2b0d0200  lui r26, 32
0001bc  9f0d0008  addli r27, zero, 1024
0001c0  ab0c0400  lui r25, 64
0001c4  9f7b0000  addli r23, zero, 7
0001c8  1f080000  addli r16, zero, 0
0001cc  73309ffe  store.d r[10:11], -32(r30)
0001d0  33950028  sext_int2long r[11:12], r1
0001d4  9f040002  addli r9, zero, 256
0001d8  9f707400  addli r1, r8, 63
0001dc  33160328  sext_int2long r[13:14], r6
0001e0  1b392300  slli r18, r6, 2
0001e4  2b030100  lui r6, 16
0001e8  8b979330  div.s r15, r7, r9
0001ec  9f130000  addli r7, zero, 1
0001f0  33140428  sext_int2long r[9:10], r8
0001f4  8b903030  div.s r1, r1, r3
0001f8  ab010600  lui r3, 96
0001fc  7338cffc  store.d r[13:14], -48(r30)
000200  733c8ffa  store.d r[9:10], -72(r30)
000204  e74d1ffe  storeli.w r1, -36(r30)
000208  ab000800  lui r1, 128
00020c  9b900080  ori r1, r1, 2048
000210  e70d1ffe  storeli.w r1, -40(r30)
000214  9b900180  ori r1, r3, 2048
000218  e74c1ffe  storeli.w r1, -52(r30)
00021c  5b0f0000  j 120
000220  9f300000  addli r1, zero, 3
000224  7d800000  xsignal r1, 0
000228  e301efff  loadli.w r3,  -16(r30)
00022c  6304bfff  loadli.w r8,  -40(r30)
000230  9b900c80  ori r1, r25, 2048
000234  8b101610  add.s r1, r12, r1
000238  9bb18100  slli r3, r3, 8
00023c  8b918110  add.s r3, r3, r8
000240  1f341000  addli r8, zero, 11
000244  7d100400  xwait r8, 0
000248  1f641000  addli r8, zero, 14
00024c  7d100400  xwait r8, 0
000250  1d800900  lock zero, r19
000254  1f747000  addli r8, zero, 63
000258  0d000002  ew_cfg zero, zero, zero, 1
00025c  0d000404  ew_cfg zero, r8, zero, 2
000260  1f040002  addli r8, zero, 256
000264  0d040006  ew_cfg r8, zero, zero, 3
000268  cd810000  ssreduce r3, r1, 0
00026c  9f401000  addli r1, zero, 12
000270  1d900900  unlock r19
000274  7d800000  xsignal r1, 0
000278  9f501000  addli r1, zero, 13
00027c  7d800000  xsignal r1, 0
000280  6b540ffe  load.d r[9:10], -32(r30)
000284  27150500  addli.d r[11:12], r[11:12], 1
000288  1f120200  addli r4, r4, 1
00028c  93308504  setlt.sl r1, r[11:12], r[9:10]
000290  b7fd0000  beq r1, zero, 892
000294  8b103239  mod.s r1, r4, r19
000298  1bb60001  slli r12, r1, 16
00029c  670f1ffe  storeli.w r1, -16(r30)
0002a0  bb404101  bneq r2, r20, 48
0002a4  7d900a00  xwait r21, 0
0002a8  1d800900  lock zero, r19
0002ac  9f70f001  addli r1, zero, 255
0002b0  0d000002  ew_cfg zero, zero, zero, 1
0002b4  0d100000  ewcoeff_cfg zero, zero, zero, 0
0002b8  0d800004  ew_cfg zero, r1, zero, 2
0002bc  9f008000  addli r1, zero, 64
0002c0  8d000006  ew_cfg r1, zero, zero, 3
0002c4  4d360000  ssaux r12, 0
0002c8  1d900900  unlock r19
0002cc  7d800900  xsignal r19, 0
0002d0  3b204101  bneq r2, r20, 8
0002d4  7d900900  xwait r19, 0
0002d8  e3405f00  loadli.w r1,  44(r30)
0002dc  e3015f00  loadli.w r3,  40(r30)
0002e0  8b101530  div.s r1, r10, r1
0002e4  8b903030  div.s r1, r1, r3
0002e8  e341bfff  loadli.w r3,  -36(r30)
0002ec  8b903038  mod.s r1, r1, r3
0002f0  9f010002  addli r3, zero, 256
0002f4  33940028  sext_int2long r[9:10], r1
0002f8  9bb66000  slli r13, r1, 6
0002fc  e3403f00  loadli.w r1,  28(r30)
000300  17348403  sll.d r[9:10], r[9:10], r24
000304  e74edffe  storeli.w r13, -20(r30)
000308  3ff73000  blt.s r1, r3, 476
00030c  270c0400  addli.d r[25:26], r[9:10], 0
000310  6b540ffd  load.d r[9:10], -48(r30)
000314  e3003f00  loadli.w r1,  24(r30)
000318  9f018000  addli r3, zero, 64
00031c  733c8fff  store.d r[25:26], -8(r30)
000320  0b348c20  mul.sl r[9:10], r[25:26], r[9:10]
000324  8b90d018  sub.s r1, r1, r13
000328  eb560f00  load.d r[14:15], 0(r30)
00032c  1f6c0000  addli r24, zero, 6
000330  17343403  sll.d r[9:10], r[9:10], r19
000334  8b983040  min.s r17, r1, r3
000338  8ba68610  add.ul r[14:15], r[14:15], r[9:10]
00033c  bb228101  bneq r2, r24, 168
000340  9f000000  addli r1, zero, 0
000344  ab0c0400  lui r25, 64
000348  7330affc  store.d r[11:12], -64(r30)
00034c  5b090000  j 72
000350  8b111810  add.s r3, r16, r1
000354  6b558f00  load.d r[11:12], 8(r30)
000358  7d100e00  xwait r28, 0
00035c  1d800a00  lock zero, r21
000360  9f900000  addli r1, r1, 1
000364  15000000  dma_cfg zero, zero, zero, 0
000368  8b913139  mod.s r3, r3, r19
00036c  0b248510  add.ul r[9:10], r[11:12], r[9:10]
000370  15800404  dma_cfg zero, r9, zero, 2
000374  9bb1a100  slli r3, r3, 10
000378  8b919111  add.s r3, r3, r25
00037c  9501b407  dma_cfg r3, r8, r27, 3
000380  958d7d08  dma_cfg r27, r27, r7, 4
000384  35000000  dma_run zero
000388  1d900a00  unlock r21
00038c  7d800b00  xsignal r23, 0
000390  37951700  beq r15, r1, 324
000394  33840028  zext_int2long r[9:10], r1
000398  1734c403  sll.d r[9:10], r[9:10], r28
00039c  17343403  sll.d r[9:10], r[9:10], r19
0003a0  bb4e71fe  bneq r2, r7, -80
0003a4  8b911210  add.s r3, r5, r1
0003a8  7d100c00  xwait r24, 0
0003ac  1d800a00  lock zero, r21
0003b0  0bab8610  add.ul r[23:24], r[14:15], r[9:10]
0003b4  15000000  dma_cfg zero, zero, zero, 0
0003b8  8b913139  mod.s r3, r3, r19
0003bc  15800b04  dma_cfg zero, r23, zero, 2
0003c0  9bb10101  slli r3, r3, 16
0003c4  8b91a111  add.s r3, r3, r26
0003c8  9501bb07  dma_cfg r3, r22, r27, 3
0003cc  9f7b0000  addli r23, zero, 7
0003d0  950d1909  dma_cfg r27, r18, r17, 4
0003d4  35000000  dma_run zero
0003d8  1d900a00  unlock r21
0003dc  7d000a00  xsignal r20, 0
0003e0  5beeffff  j -144
0003e4  6b548fff  load.d r[9:10], -8(r30)
0003e8  9f000000  addli r1, zero, 0
0003ec  ab0c0400  lui r25, 64
0003f0  db090000  j 76
0003f4  33840028  zext_int2long r[9:10], r1
0003f8  1f2b1000  addli r22, zero, 10
0003fc  7d100c00  xwait r24, 0
000400  1d800a00  lock zero, r21
000404  15000000  dma_cfg zero, zero, zero, 0
000408  17346403  sll.d r[9:10], r[9:10], r22
00040c  0ba48610  add.ul r[9:10], r[14:15], r[9:10]
000410  15800404  dma_cfg zero, r9, zero, 2
000414  9501b407  dma_cfg r3, r8, r27, 3
000418  6b548fff  load.d r[9:10], -8(r30)
00041c  950d1909  dma_cfg r27, r18, r17, 4
000420  35000000  dma_run zero
000424  1d900a00  unlock r21
000428  7d000a00  xsignal r20, 0
00042c  9f920200  addli r5, r5, 1
000430  9f900000  addli r1, r1, 1
000434  1f180800  addli r16, r16, 1
000438  b7b2f000  beq r1, r15, 172
00043c  8b913239  mod.s r3, r5, r19
000440  9bb10101  slli r3, r3, 16
000444  8b91a111  add.s r3, r3, r26
000448  b73e71fe  beq r2, r7, -84
00044c  bb0f41ff  bneq r2, r20, -32
000450  8b143839  mod.s r9, r16, r19
000454  7d100a00  xwait r20, 0
000458  7d900b00  xwait r23, 0
00045c  1d800900  lock zero, r19
000460  2b0b803f  lui r22, 260096
000464  1f040000  addli r8, zero, 0
000468  0d000002  ew_cfg zero, zero, zero, 1
00046c  0d106001  ewcoeff_cfg zero, zero, r22, 0
000470  1f7bf001  addli r22, zero, 255
000474  0d000b04  ew_cfg zero, r22, zero, 2
000478  8d030006  ew_cfg r7, zero, zero, 3
00047c  9bb4a400  slli r9, r9, 10
000480  8b949411  add.s r9, r9, r25
000484  0b9b8110  add.s r22, r3, r8
000488  1f040408  addli r8, r8, 1024
00048c  2d1b9b00  dsmul r22, r22, r9, 0
000490  bb5f64fe  bneq r8, r6, -12
000494  1d900900  unlock r19
000498  7d000e00  xsignal r28, 0
00049c  1d800900  lock zero, r19
0004a0  2b04803f  lui r8, 260096
0004a4  0d000002  ew_cfg zero, zero, zero, 1
0004a8  0d140400  ewcoeff_cfg r8, r8, zero, 0
0004ac  1f74f00f  addli r8, zero, 2047
0004b0  0d000404  ew_cfg zero, r8, zero, 2
0004b4  0d0e0006  ew_cfg r28, zero, zero, 3
0004b8  0d0ece27  ew_cfg r28, r28, r28, 19
0004bc  2d063600  dsmadd r12, r12, r3, 0
0004c0  0d000026  ew_cfg zero, zero, zero, 19
0004c4  1d900900  unlock r19
0004c8  7d000c00  xsignal r24, 0
0004cc  6b548fff  load.d r[9:10], -8(r30)
0004d0  dbebffff  j -164
0004d4  6b550ffc  load.d r[11:12], -64(r30)
0004d8  6b548fff  load.d r[9:10], -8(r30)
0004dc  8b921210  add.s r5, r5, r1
0004e0  0b181810  add.s r16, r16, r1
0004e4  b77441ff  beq r2, r20, -708
0004e8  e3409fff  loadli.w r1,  -52(r30)
0004ec  9f310000  addli r3, zero, 3
0004f0  8b101610  add.s r1, r12, r1
0004f4  37313100  beq r2, r3, 76
0004f8  3b423101  bneq r2, r19, 144
0004fc  9f310000  addli r3, zero, 3
000500  1f040002  addli r8, zero, 256
000504  7d900100  xwait r3, 0
000508  9f211000  addli r3, zero, 10
00050c  7d900100  xwait r3, 0
000510  1d000000  lock zero, zero
000514  9f018000  addli r3, zero, 64
000518  81090000  ds_cfg r19, zero, 0
00051c  01040002  ds_cfg r8, zero, 1
000520  8101001c  ds_cfg r3, zero, 14
000524  01000016  ds_cfg zero, zero, 11
000528  0104001a  ds_cfg r8, zero, 13
00052c  c1003608  shuffle_coa r1, r12, r3, 4
000530  9f101000  addli r1, zero, 9
000534  1d100000  unlock zero
000538  7d800a00  xsignal r21, 0
00053c  5ba8ffff  j -704
000540  1f141000  addli r8, zero, 9
000544  9b910c80  ori r3, r25, 2048
000548  9f040002  addli r9, zero, 256
00054c  7d100400  xwait r8, 0
000550  1f441000  addli r8, zero, 12
000554  8b113610  add.s r3, r12, r3
000558  1f360000  addli r12, zero, 3
00055c  7d100400  xwait r8, 0
000560  1f048000  addli r8, zero, 64
000564  1d000600  lock zero, r12
000568  11009402  rs_cfg zero, r8, r9, 1
00056c  11000406  rs_cfg zero, r8, zero, 3
000570  b1819004  rs_col r3, r1, r9, 2
000574  9f201000  addli r1, zero, 10
000578  1d100600  unlock r12
00057c  7d800000  xsignal r1, 0
000580  9f301000  addli r1, zero, 11
000584  5b9fffff  j -776
000588  bb6301fe  bneq r2, zero, -776
00058c  6347dfff  loadli.w r14,  -20(r30)
000590  27060400  addli.d r[13:14], r[9:10], 0
000594  e300efff  loadli.w r1,  -16(r30)
000598  e301bfff  loadli.w r3,  -40(r30)
00059c  17363603  sll.d r[13:14], r[13:14], r19
0005a0  33140728  sext_int2long r[9:10], r14
0005a4  9bb08000  slli r1, r1, 8
0005a8  7338cffe  store.d r[13:14], -16(r30)
0005ac  6b568ffb  load.d r[13:14], -72(r30)
0005b0  270b8400  addli.d r[23:24], r[9:10], 64
0005b4  8b903010  add.s r1, r1, r3
0005b8  733c6fff  store.d r[23:24], -8(r30)
0005bc  6b5b8fff  load.d r[23:24], -8(r30)
0005c0  0b36cb40  min.sl r[13:14], r[23:24], r[13:14]
0005c4  6b5b0fff  load.d r[23:24], -16(r30)
0005c8  0b348648  max.sl r[9:10], r[13:14], r[9:10]
0005cc  6b560f01  load.d r[13:14], 16(r30)
0005d0  8b11e418  sub.s r3, r8, r14
0005d4  1f541000  addli r8, zero, 13
0005d8  0b266611  add.ul r[13:14], r[13:14], r[23:24]
0005dc  9f7b0000  addli r23, zero, 7
0005e0  7d100400  xwait r8, 0
0005e4  1d000a00  lock zero, r20
0005e8  15000000  dma_cfg zero, zero, zero, 0
0005ec  15800302  dma_cfg zero, r7, zero, 1
0005f0  95060004  dma_cfg r13, zero, zero, 2
0005f4  15865007  dma_cfg r12, r1, r21, 3
0005f8  9f601000  addli r1, zero, 14
0005fc  958a3a08  dma_cfg r21, r21, r3, 4
000600  35000000  dma_run zero
000604  1d100a00  unlock r20
000608  db8effff  j -908
00060c  7d000000  xsignal zero, 0
000610  bb600100  bneq r2, zero, 56
000614  9f200000  addli r1, zero, 2
000618  7d100000  xwait zero, 0
00061c  7d100000  xwait zero, 0
000620  7d100000  xwait zero, 0
000624  7d100000  xwait zero, 0
000628  7d100000  xwait zero, 0
00062c  7d100000  xwait zero, 0
000630  7d100000  xwait zero, 0
000634  7d100000  xwait zero, 0
000638  1d800000  lock zero, r1
00063c  0d000020  ew_cfg zero, zero, zero, 16
000640  1d900000  unlock r1
000644  7d400000  xsignal_mode_cfg zero
000648  9f8e9e00  addli sp, sp, 72
00064c  00a00300  mfence { lm, sm, gm }
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
000884  00100000  exit
000888  00100000  exit
00088c  00100000  exit
000890  00100000  exit
