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
0000b4  9f8e8efe  addli sp, sp, -192
0000b8  9f100000  addli r1, zero, 1
0000bc  003c0002  core_id r24
0000c0  1f8f0e01  addli r30, sp, 128
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100c00  beq r24, zero, 36
0000cc  2bf1ffff  lui r2, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b10f1ff  ori r1, r2, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  5b220000  j 272
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
00014c  8101001c  ds_cfg r3, zero, 14
000150  21133008  shuffle_batch r6, zero, r3, 4
000154  9f111000  addli r3, zero, 9
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
000198  9f500000  addli r1, zero, 5
00019c  7d800000  xsignal r1, 0
0001a0  7d800100  xsignal r3, 0
0001a4  9f700000  addli r1, zero, 7
0001a8  9f511000  addli r3, zero, 13
0001ac  7d800000  xsignal r1, 0
0001b0  7d800100  xsignal r3, 0
0001b4  9f301000  addli r1, zero, 11
0001b8  9f711000  addli r3, zero, 15
0001bc  7d800000  xsignal r1, 0
0001c0  7d800100  xsignal r3, 0
0001c4  7d000100  xsignal r2, 0
0001c8  9f702000  addli r1, zero, 23
0001cc  1f015000  addli r2, zero, 40
0001d0  7d800000  xsignal r1, 0
0001d4  7d000100  xsignal r2, 0
0001d8  9f203000  addli r1, zero, 26
0001dc  1f314000  addli r2, zero, 35
0001e0  7d800000  xsignal r1, 0
0001e4  7d000100  xsignal r2, 0
0001e8  9f305000  addli r1, zero, 43
0001ec  1f514000  addli r2, zero, 37
0001f0  7d800000  xsignal r1, 0
0001f4  7d000100  xsignal r2, 0
0001f8  e3005f00  loadli.w r1,  40(r30)
0001fc  63415f00  loadli.w r2,  44(r30)
000200  00d20002  load_param_i r4, 1
000204  e3016f00  loadli.w r3,  48(r30)
000208  8b101120  mul.s r1, r2, r1
00020c  1f010200  addli r2, r4, 0
000210  0b913050  fmac.s r2, r1, r3
000214  8b913020  mul.s r3, r1, r3
000218  1f71f1ff  addli r2, r2, -1
00021c  0b114130  div.s r2, r2, r4
000220  00520002  load_param_i r4, 0
000224  8b104120  mul.s r1, r2, r4
000228  0b114150  fmac.s r2, r2, r4
00022c  0b113140  min.s r2, r2, r3
000230  4b441112  ble.s r2, r1, 9488
000234  33920028  sext_int2long r[5:6], r1
000238  ab000100  lui r1, 16
00023c  33110128  sext_int2long r[3:4], r2
000240  9f540000  addli r9, zero, 5
000244  9f2d0000  addli r27, zero, 2
000248  1f0d8000  addli r26, zero, 64
00024c  9f4b0000  addli r23, zero, 4
000250  1f6b0000  addli r22, zero, 6
000254  1f7a6000  addli r20, zero, 55
000258  9b9c0010  ori r25, r1, 256
00025c  ab800100  lui r1, 24
000260  73342ff8  store.d r[3:4], -120(r30)
000264  2b410100  lui r2, 20
000268  1b9e0010  ori r28, r1, 256
00026c  abf0ff7f  lui r1, 524287
000270  e74f9fff  storeli.w r25, -4(r30)
000274  9b90f0ff  ori r1, r1, 4095
000278  e74ccfff  storeli.w r28, -52(r30)
00027c  67081ffe  storeli.w r1, -128(r30)
000280  9b100110  ori r1, r2, 256
000284  2b810800  lui r2, 136
000288  670c1ffe  storeli.w r1, -64(r30)
00028c  ab200200  lui r1, 34
000290  9b900010  ori r1, r1, 256
000294  e70c1ffe  storeli.w r1, -56(r30)
000298  9b1081b4  ori r1, r2, 2888
00029c  67481ffe  storeli.w r1, -124(r30)
0002a0  abc00100  lui r1, 28
0002a4  9b900010  ori r1, r1, 256
0002a8  674c1ffe  storeli.w r1, -60(r30)
0002ac  5b030000  j 24
0002b0  6b520ffa  load.d r[5:6], -96(r30)
0002b4  eb508ff8  load.d r[2:3], -120(r30)
0002b8  27120200  addli.d r[5:6], r[5:6], 1
0002bc  93301204  setlt.sl r1, r[5:6], r[2:3]
0002c0  37820012  beq r1, zero, 9344
0002c4  e3006f00  loadli.w r1,  48(r30)
0002c8  e3415f00  loadli.w r3,  44(r30)
0002cc  73304ffa  store.d r[5:6], -96(r30)
0002d0  8b101230  div.s r1, r4, r1
0002d4  0b913030  div.s r2, r1, r3
0002d8  8b903038  mod.s r1, r1, r3
0002dc  33110128  sext_int2long r[3:4], r2
0002e0  73382ff8  store.d r[3:4], -112(r30)
0002e4  33910028  sext_int2long r[3:4], r1
0002e8  bb349c00  bneq r24, r9, 300
0002ec  1f320000  addli r4, zero, 3
0002f0  ab02c07f  lui r5, 523264
0002f4  17316103  sll.d r[3:4], r[3:4], r22
0002f8  9f000000  addli r1, zero, 0
0002fc  7d100200  xwait r4, 0
000300  1d800d00  lock zero, r27
000304  2b02807f  lui r4, 522240
000308  0d000002  ew_cfg zero, zero, zero, 1
00030c  0d120000  ewcoeff_cfg r4, zero, zero, 0
000310  1f727000  addli r4, zero, 63
000314  0d000204  ew_cfg zero, r4, zero, 2
000318  0d0d0006  ew_cfg r26, zero, zero, 3
00031c  4d300000  ssaux zero, 0
000320  1d900d00  unlock r27
000324  7d800d00  xsignal r27, 0
000328  7d900400  xwait r9, 0
00032c  1d800d00  lock zero, r27
000330  0d000002  ew_cfg zero, zero, zero, 1
000334  8d120000  ewcoeff_cfg r5, zero, zero, 0
000338  ab420000  lui r5, 4
00033c  0d000204  ew_cfg zero, r4, zero, 2
000340  0d0d0006  ew_cfg r26, zero, zero, 3
000344  cd320000  ssaux r5, 0
000348  1d900d00  unlock r27
00034c  7d800b00  xsignal r23, 0
000350  733c2ff8  store.d r[3:4], -104(r30)
000354  1f611000  addli r2, zero, 14
000358  abc10000  lui r3, 12
00035c  7d100100  xwait r2, 0
000360  1f012000  addli r2, zero, 16
000364  7d100100  xwait r2, 0
000368  1d800d00  lock zero, r27
00036c  2b01803f  lui r2, 260096
000370  0d000002  ew_cfg zero, zero, zero, 1
000374  0d110100  ewcoeff_cfg r2, r2, zero, 0
000378  1f110000  addli r2, zero, 1
00037c  0d000204  ew_cfg zero, r4, zero, 2
000380  0d010006  ew_cfg r2, zero, zero, 3
000384  0b919011  add.s r2, r1, r25
000388  9f800002  addli r1, r1, 256
00038c  2d013100  dsmadd r2, r2, r3, 0
000390  bbdf50fe  bneq r1, r5, -12
000394  9f701000  addli r1, zero, 15
000398  670d0ffe  storeli.w zero, -48(r30)
00039c  1f020000  addli r4, zero, 0
0003a0  1f010000  addli r2, zero, 0
0003a4  9f020000  addli r5, zero, 0
0003a8  9f010000  addli r3, zero, 0
0003ac  9f030000  addli r7, zero, 0
0003b0  1d900d00  unlock r27
0003b4  7d800000  xsignal r1, 0
0003b8  9f502000  addli r1, zero, 21
0003bc  7d800000  xsignal r1, 0
0003c0  9f602000  addli r1, zero, 22
0003c4  7d800000  xsignal r1, 0
0003c8  9f102000  addli r1, zero, 17
0003cc  7d800000  xsignal r1, 0
0003d0  3d000000  xfence
0003d4  9f70f001  addli r1, zero, 255
0003d8  33040d28  zext_int2long r[9:10], r26
0003dc  00a00300  mfence { lm, sm, gm }
0003e0  80a20004  csr_set csr5, r1
0003e4  73388ffe  store.d r[9:10], -16(r30)
0003e8  00e00200  sync_core
0003ec  37020c00  beq r24, zero, 128
0003f0  3ba40300  bneq r7, zero, 264
0003f4  3ba60200  bneq r5, zero, 392
0003f8  e300afff  loadli.w r1,  -48(r30)
0003fc  3b880000  bneq r1, zero, 512
000400  bb690200  bneq r4, zero, 632
000404  9f540000  addli r9, zero, 5
000408  b73b9c00  beq r24, r9, 748
00040c  bb9d0100  bneq r3, zero, 868
000410  5b7a0000  j 976
000414  97306103  sll.d r[2:3], r[3:4], r22
000418  670d0ffe  storeli.w zero, -48(r30)
00041c  733c1ff8  store.d r[2:3], -104(r30)
000420  9f300000  addli r1, zero, 3
000424  bfb7800f  blt.s r1, r24, 7660
000428  9f100000  addli r1, zero, 1
00042c  37251c10  beq r24, r1, 8520
000430  3768bc11  beq r24, r27, 8728
000434  9f300000  addli r1, zero, 3
000438  bb671c10  bneq r24, r1, 8696
00043c  9f102000  addli r1, zero, 17
000440  1f020000  addli r4, zero, 0
000444  1f010000  addli r2, zero, 0
000448  9f020000  addli r5, zero, 0
00044c  9f010000  addli r3, zero, 0
000450  9f030000  addli r7, zero, 0
000454  7d900000  xwait r1, 0
000458  9f100000  addli r1, zero, 1
00045c  670d1ffe  storeli.w r1, -48(r30)
000460  9f203000  addli r1, zero, 26
000464  7d900000  xwait r1, 0
000468  5bedffff  j -152
00046c  33040028  zext_int2long r[9:10], zero
000470  3d000000  xfence
000474  00a00300  mfence { lm, sm, gm }
000478  27070400  addli.d r[15:16], r[9:10], 0
00047c  6b560fff  load.d r[13:14], -16(r30)
000480  17356703  sll.d r[11:12], r[15:16], r22
000484  27080400  addli.d r[17:18], r[9:10], 0
000488  0b29a810  add.ul r[19:20], r[17:18], r[11:12]
00048c  27081800  addli.d r[17:18], r[17:18], 8
000490  9b302900  slli r1, r18, 2
000494  1323c802  setneq.d r6, r[17:18], r[13:14]
000498  0b999011  add.s r18, r1, r25
00049c  8b90c011  add.s r1, r1, r28
0004a0  6f5c8901  loads.d r[25:26], 24(r18)
0004a4  ef598900  loads.d r[20:21], 8(r18)
0004a8  ef5a0900  loads.d r[22:23], 0(r18)
0004ac  6f5d0901  loads.d r[27:28], 16(r18)
0004b0  73fc8001  stores.d r[25:26], 24(r1)
0004b4  e34cffff  loadli.w r25,  -4(r30)
0004b8  73f43001  stores.d r[20:21], 8(r1)
0004bc  73f05001  stores.d r[22:23], 0(r1)
0004c0  73f8a001  stores.d r[27:28], 16(r1)
0004c4  3b1f03fe  bneq r6, zero, -60
0004c8  9f700000  addli r1, zero, 7
0004cc  1f6b0000  addli r22, zero, 6
0004d0  33850028  zext_int2long r[11:12], r1
0004d4  9320a704  setlt.ul r1, r[15:16], r[11:12]
0004d8  27170700  addli.d r[15:16], r[15:16], 1
0004dc  bb8e00fe  bneq r1, zero, -96
0004e0  9f2d0000  addli r27, zero, 2
0004e4  1f0d8000  addli r26, zero, 64
0004e8  1f7a6000  addli r20, zero, 55
0004ec  003c0002  core_id r24
0004f0  00200100  mfence { sm }
0004f4  378c03fe  beq r7, zero, -256
0004f8  9f001000  addli r1, zero, 8
0004fc  3d000000  xfence
000500  00a00300  mfence { lm, sm, gm }
000504  33830028  zext_int2long r[7:8], r1
000508  6b560fff  load.d r[13:14], -16(r30)
00050c  17346303  sll.d r[9:10], r[7:8], r22
000510  33050028  zext_int2long r[11:12], zero
000514  0b278510  add.ul r[15:16], r[11:12], r[9:10]
000518  27051500  addli.d r[11:12], r[11:12], 8
00051c  9b302700  slli r1, r14, 2
000520  1327c502  setneq.d r14, r[11:12], r[13:14]
000524  8b979011  add.s r15, r1, r25
000528  8b90c011  add.s r1, r1, r28
00052c  6fdc0701  loads.d r[25:26], 16(r15)
000530  6fd88700  loads.d r[17:18], 8(r15)
000534  6fd90700  loads.d r[19:20], 0(r15)
000538  6fda8701  loads.d r[21:22], 24(r15)
00053c  73f88001  stores.d r[25:26], 16(r1)
000540  e34cffff  loadli.w r25,  -4(r30)
000544  73f40001  stores.d r[17:18], 8(r1)
000548  73f02001  stores.d r[19:20], 0(r1)
00054c  73fc4001  stores.d r[21:22], 24(r1)
000550  3b1f07fe  bneq r14, zero, -60
000554  9f701000  addli r1, zero, 15
000558  33840028  zext_int2long r[9:10], r1
00055c  93208304  setlt.ul r1, r[7:8], r[9:10]
000560  27130300  addli.d r[7:8], r[7:8], 1
000564  bb9e00fe  bneq r1, zero, -92
000568  1f0d8000  addli r26, zero, 64
00056c  1f7a6000  addli r20, zero, 55
000570  003c0002  core_id r24
000574  00200100  mfence { sm }
000578  378a02fe  beq r5, zero, -384
00057c  9f002000  addli r1, zero, 16
000580  3d000000  xfence
000584  00a00300  mfence { lm, sm, gm }
000588  b3820028  zext_int2long r[6:7], r1
00058c  6b560fff  load.d r[13:14], -16(r30)
000590  97b36203  sll.d r[8:9], r[6:7], r22
000594  b3040028  zext_int2long r[10:11], zero
000598  0ba77410  add.ul r[15:16], r[10:11], r[8:9]
00059c  a7841400  addli.d r[10:11], r[10:11], 8
0005a0  9b302700  slli r1, r14, 2
0005a4  93a5c402  setneq.d r11, r[10:11], r[13:14]
0005a8  0b979011  add.s r14, r1, r25
0005ac  8b90c011  add.s r1, r1, r28
0005b0  ef578700  loads.d r[16:17], 8(r14)
0005b4  ef580700  loads.d r[18:19], 0(r14)
0005b8  ef598701  loads.d r[20:21], 24(r14)
0005bc  ef5a0701  loads.d r[22:23], 16(r14)
0005c0  73f4f000  stores.d r[16:17], 8(r1)
0005c4  73f01001  stores.d r[18:19], 0(r1)
0005c8  73fc3001  stores.d r[20:21], 24(r1)
0005cc  73f85001  stores.d r[22:23], 16(r1)
0005d0  3baf05fe  bneq r11, zero, -56
0005d4  9f702000  addli r1, zero, 23
0005d8  1f6b0000  addli r22, zero, 6
0005dc  b3830028  zext_int2long r[8:9], r1
0005e0  93a07204  setlt.ul r1, r[6:7], r[8:9]
0005e4  a7920200  addli.d r[6:7], r[6:7], 1
0005e8  bb9e00fe  bneq r1, zero, -92
0005ec  1f7a6000  addli r20, zero, 55
0005f0  00200100  mfence { sm }
0005f4  e300afff  loadli.w r1,  -48(r30)
0005f8  37a800fe  beq r1, zero, -504
0005fc  9f003000  addli r1, zero, 24
000600  3d000000  xfence
000604  00a00300  mfence { lm, sm, gm }
000608  b3820028  zext_int2long r[6:7], r1
00060c  6b560fff  load.d r[13:14], -16(r30)
000610  97b36203  sll.d r[8:9], r[6:7], r22
000614  b3040028  zext_int2long r[10:11], zero
000618  0ba77410  add.ul r[15:16], r[10:11], r[8:9]
00061c  a7841400  addli.d r[10:11], r[10:11], 8
000620  9b302700  slli r1, r14, 2
000624  93a5c402  setneq.d r11, r[10:11], r[13:14]
000628  0b979011  add.s r14, r1, r25
00062c  8b90c011  add.s r1, r1, r28
000630  ef578700  loads.d r[16:17], 8(r14)
000634  ef580700  loads.d r[18:19], 0(r14)
000638  ef598701  loads.d r[20:21], 24(r14)
00063c  ef5a0701  loads.d r[22:23], 16(r14)
000640  73f4f000  stores.d r[16:17], 8(r1)
000644  73f01001  stores.d r[18:19], 0(r1)
000648  73fc3001  stores.d r[20:21], 24(r1)
00064c  73f85001  stores.d r[22:23], 16(r1)
000650  3baf05fe  bneq r11, zero, -56
000654  9f703000  addli r1, zero, 31
000658  1f6b0000  addli r22, zero, 6
00065c  b3830028  zext_int2long r[8:9], r1
000660  93a07204  setlt.ul r1, r[6:7], r[8:9]
000664  a7920200  addli.d r[6:7], r[6:7], 1
000668  bb9e00fe  bneq r1, zero, -92
00066c  1f7a6000  addli r20, zero, 55
000670  00200100  mfence { sm }
000674  374602fe  beq r4, zero, -624
000678  9f004000  addli r1, zero, 32
00067c  3d000000  xfence
000680  00a00300  mfence { lm, sm, gm }
000684  33820028  zext_int2long r[5:6], r1
000688  6b560fff  load.d r[13:14], -16(r30)
00068c  17336203  sll.d r[7:8], r[5:6], r22
000690  33040028  zext_int2long r[9:10], zero
000694  0b256410  add.ul r[11:12], r[9:10], r[7:8]
000698  27041400  addli.d r[9:10], r[9:10], 8
00069c  9b302500  slli r1, r10, 2
0006a0  1325c402  setneq.d r10, r[9:10], r[13:14]
0006a4  8b959011  add.s r11, r1, r25
0006a8  8b90c011  add.s r1, r1, r28
0006ac  6fd78500  loads.d r[15:16], 8(r11)
0006b0  6fd80500  loads.d r[17:18], 0(r11)
0006b4  6fd98501  loads.d r[19:20], 24(r11)
0006b8  6fda0501  loads.d r[21:22], 16(r11)
0006bc  73f4e000  stores.d r[15:16], 8(r1)
0006c0  73f00001  stores.d r[17:18], 0(r1)
0006c4  73fc2001  stores.d r[19:20], 24(r1)
0006c8  73f84001  stores.d r[21:22], 16(r1)
0006cc  3b2f05fe  bneq r10, zero, -56
0006d0  9f704000  addli r1, zero, 39
0006d4  33830028  zext_int2long r[7:8], r1
0006d8  93206204  setlt.ul r1, r[5:6], r[7:8]
0006dc  27120200  addli.d r[5:6], r[5:6], 1
0006e0  bbae00fe  bneq r1, zero, -88
0006e4  1f7a6000  addli r20, zero, 55
0006e8  00200100  mfence { sm }
0006ec  9f540000  addli r9, zero, 5
0006f0  3b749cfe  bneq r24, r9, -740
0006f4  9f005000  addli r1, zero, 40
0006f8  3d000000  xfence
0006fc  00a00300  mfence { lm, sm, gm }
000700  33820028  zext_int2long r[5:6], r1
000704  6b560fff  load.d r[13:14], -16(r30)
000708  17336203  sll.d r[7:8], r[5:6], r22
00070c  33040028  zext_int2long r[9:10], zero
000710  0b256410  add.ul r[11:12], r[9:10], r[7:8]
000714  27041400  addli.d r[9:10], r[9:10], 8
000718  9b302500  slli r1, r10, 2
00071c  1325c402  setneq.d r10, r[9:10], r[13:14]
000720  8b959011  add.s r11, r1, r25
000724  8b90c011  add.s r1, r1, r28
000728  6fd78500  loads.d r[15:16], 8(r11)
00072c  6fd80500  loads.d r[17:18], 0(r11)
000730  6fd98501  loads.d r[19:20], 24(r11)
000734  6fda0501  loads.d r[21:22], 16(r11)
000738  73f4e000  stores.d r[15:16], 8(r1)
00073c  73f00001  stores.d r[17:18], 0(r1)
000740  73fc2001  stores.d r[19:20], 24(r1)
000744  73f84001  stores.d r[21:22], 16(r1)
000748  3b2f05fe  bneq r10, zero, -56
00074c  9f705000  addli r1, zero, 47
000750  33830028  zext_int2long r[7:8], r1
000754  93206204  setlt.ul r1, r[5:6], r[7:8]
000758  27120200  addli.d r[5:6], r[5:6], 1
00075c  bbae00fe  bneq r1, zero, -88
000760  1f7a6000  addli r20, zero, 55
000764  9f540000  addli r9, zero, 5
000768  00200100  mfence { sm }
00076c  b7d10100  beq r3, zero, 116
000770  9f006000  addli r1, zero, 48
000774  3d000000  xfence
000778  00a00300  mfence { lm, sm, gm }
00077c  b3810028  zext_int2long r[4:5], r1
000780  6b560fff  load.d r[13:14], -16(r30)
000784  97b26103  sll.d r[6:7], r[4:5], r22
000788  b3030028  zext_int2long r[8:9], zero
00078c  8ba45310  add.ul r[10:11], r[8:9], r[6:7]
000790  a7831300  addli.d r[8:9], r[8:9], 8
000794  9bb02400  slli r1, r9, 2
000798  93a4c302  setneq.d r9, r[8:9], r[13:14]
00079c  0b959011  add.s r10, r1, r25
0007a0  8b90c011  add.s r1, r1, r28
0007a4  6f578500  loads.d r[15:16], 8(r10)
0007a8  6f580500  loads.d r[17:18], 0(r10)
0007ac  6f598501  loads.d r[19:20], 24(r10)
0007b0  6f550501  loads.d r[11:12], 16(r10)
0007b4  73f4e000  stores.d r[15:16], 8(r1)
0007b8  73f00001  stores.d r[17:18], 0(r1)
0007bc  73fc2001  stores.d r[19:20], 24(r1)
0007c0  73f8a000  stores.d r[11:12], 16(r1)
0007c4  3baf04fe  bneq r9, zero, -56
0007c8  b3020a28  zext_int2long r[6:7], r20
0007cc  93a05104  setlt.ul r1, r[4:5], r[6:7]
0007d0  a7910100  addli.d r[4:5], r[4:5], 1
0007d4  bbbe00fe  bneq r1, zero, -84
0007d8  9f540000  addli r9, zero, 5
0007dc  00200100  mfence { sm }
0007e0  9f707000  addli r1, zero, 63
0007e4  b3810028  zext_int2long r[4:5], r1
0007e8  733c3ffa  store.d r[4:5], -72(r30)
0007ec  b7510100  beq r2, zero, 116
0007f0  9f007000  addli r1, zero, 56
0007f4  3d000000  xfence
0007f8  00a00300  mfence { lm, sm, gm }
0007fc  b3800028  zext_int2long r[2:3], r1
000800  6b560fff  load.d r[13:14], -16(r30)
000804  97b16003  sll.d r[4:5], r[2:3], r22
000808  b3020028  zext_int2long r[6:7], zero
00080c  8ba33210  add.ul r[8:9], r[6:7], r[4:5]
000810  a7821200  addli.d r[6:7], r[6:7], 8
000814  9bb32300  slli r7, r7, 2
000818  13a4c202  setneq.d r8, r[6:7], r[13:14]
00081c  8b949311  add.s r9, r7, r25
000820  8b93c311  add.s r7, r7, r28
000824  6fd58400  loads.d r[11:12], 8(r9)
000828  6fd70400  loads.d r[15:16], 0(r9)
00082c  6fd88401  loads.d r[17:18], 24(r9)
000830  6fd90401  loads.d r[19:20], 16(r9)
000834  73f4a300  stores.d r[11:12], 8(r7)
000838  73f0e300  stores.d r[15:16], 0(r7)
00083c  73fc0301  stores.d r[17:18], 24(r7)
000840  73f82301  stores.d r[19:20], 16(r7)
000844  3b2f04fe  bneq r8, zero, -56
000848  eb518ffb  load.d r[4:5], -72(r30)
00084c  93a13004  setlt.ul r3, r[2:3], r[4:5]
000850  a7900000  addli.d r[2:3], r[2:3], 1
000854  bbbe01fe  bneq r3, zero, -84
000858  9f540000  addli r9, zero, 5
00085c  00200100  mfence { sm }
000860  9f70f001  addli r1, zero, 255
000864  80a20004  csr_set csr5, r1
000868  abc00000  lui r1, 12
00086c  1b918010  ori r2, r1, 264
000870  9b960010  ori r13, r1, 256
000874  1b96c010  ori r12, r1, 268
000878  9b904010  ori r1, r1, 260
00087c  e70e1ffe  storeli.w r1, -24(r30)
000880  ab000200  lui r1, 32
000884  e74e2ffe  storeli.w r2, -20(r30)
000888  1b910010  ori r2, r1, 256
00088c  670e2ffe  storeli.w r2, -32(r30)
000890  1b911010  ori r2, r1, 257
000894  e74d2ffe  storeli.w r2, -36(r30)
000898  1b912010  ori r2, r1, 258
00089c  9b903010  ori r1, r1, 259
0008a0  674e2ffe  storeli.w r2, -28(r30)
0008a4  e70d1ffe  storeli.w r1, -40(r30)
0008a8  00e00200  sync_core
0008ac  e300afff  loadli.w r1,  -48(r30)
0008b0  b7a30002  beq r1, zero, 1256
0008b4  1f212000  addli r2, zero, 18
0008b8  9f003000  addli r1, zero, 24
0008bc  33030028  zext_int2long r[7:8], zero
0008c0  7d000100  xsignal r2, 0
0008c4  7d800000  xsignal r1, 0
0008c8  9f004000  addli r1, zero, 32
0008cc  7d100100  xwait r2, 0
0008d0  27040300  addli.d r[9:10], r[7:8], 0
0008d4  7d900000  xwait r1, 0
0008d8  3d000000  xfence
0008dc  00a00300  mfence { lm, sm, gm }
0008e0  eb5b0fff  load.d r[24:25], -16(r30)
0008e4  634ddfff  loadli.w r26,  -20(r30)
0008e8  e30ddfff  loadli.w r27,  -24(r30)
0008ec  97376403  sll.d r[16:17], r[9:10], r22
0008f0  270a0300  addli.d r[21:22], r[7:8], 0
0008f4  2bce0000  lui r28, 12
0008f8  8b20fa10  add.ul r[2:3], r[21:22], r[16:17]
0008fc  270a1a00  addli.d r[21:22], r[21:22], 8
000900  9b190e11  ori r19, r28, 272
000904  9bb02000  slli r1, r1, 2
000908  0b919011  add.s r2, r1, r25
00090c  0b9bc010  add.s r22, r1, r12
000910  0b99d010  add.s r18, r1, r13
000914  8b993011  add.s r19, r1, r19
000918  6f45c100  loads.w r10, 12(r2)
00091c  6f424100  loads.w r4, 4(r2)
000920  ef410100  loads.w r3, 0(r2)
000924  ef428100  loads.w r5, 8(r2)
000928  ef450101  loads.w r11, 16(r2)
00092c  6f474101  loads.w r14, 20(r2)
000930  ef488101  loads.w r17, 24(r2)
000934  6f41c101  loads.w r2, 28(r2)
000938  0b650560  abs.f r10, r10
00093c  0b620260  abs.f r4, r4
000940  8be10160  abs.f r3, r3
000944  0b610160  abs.f r2, r2
000948  8be50560  abs.f r11, r11
00094c  8be20260  abs.f r5, r5
000950  0b670760  abs.f r14, r14
000954  8be80860  abs.f r17, r17
000958  7360ab00  stores.w r10, 0(r22)
00095c  0b9bb011  add.s r22, r1, r27
000960  73603900  stores.w r3, 0(r18)
000964  0b95a011  add.s r10, r1, r26
000968  73e0b900  stores.w r11, 0(r19)
00096c  73604b00  stores.w r4, 0(r22)
000970  1b12ce11  ori r4, r28, 284
000974  73605500  stores.w r5, 0(r10)
000978  8b914010  add.s r3, r1, r4
00097c  1b124e11  ori r4, r28, 276
000980  73e02100  stores.w r2, 0(r3)
000984  13217a03  setneq.d r2, r[21:22], r[24:25]
000988  9b118e11  ori r3, r28, 280
00098c  8b913010  add.s r3, r1, r3
000990  8b904010  add.s r1, r1, r4
000994  73e01101  stores.w r17, 0(r3)
000998  73e0e000  stores.w r14, 0(r1)
00099c  3b7d01fe  bneq r2, zero, -164
0009a0  eb508ffb  load.d r[2:3], -72(r30)
0009a4  1f6b0000  addli r22, zero, 6
0009a8  93201404  setlt.ul r1, r[9:10], r[2:3]
0009ac  27140400  addli.d r[9:10], r[9:10], 1
0009b0  bbcc00fe  bneq r1, zero, -208
0009b4  9f302000  addli r1, zero, 19
0009b8  00200100  mfence { sm }
0009bc  1f7a6000  addli r20, zero, 55
0009c0  9f4b0000  addli r23, zero, 4
0009c4  003c0002  core_id r24
0009c8  9f540000  addli r9, zero, 5
0009cc  1f0d8000  addli r26, zero, 64
0009d0  9f2d0000  addli r27, zero, 2
0009d4  7d800000  xsignal r1, 0
0009d8  9f303000  addli r1, zero, 27
0009dc  7d800000  xsignal r1, 0
0009e0  634e9fff  loadli.w r28,  -52(r30)
0009e4  b76e9c00  beq r24, r9, 952
0009e8  9f003000  addli r1, zero, 24
0009ec  670dcffe  storeli.w r12, -48(r30)
0009f0  33030028  zext_int2long r[7:8], zero
0009f4  2b06807f  lui r12, 522240
0009f8  7d900000  xwait r1, 0
0009fc  9f005000  addli r1, zero, 40
000a00  27040300  addli.d r[9:10], r[7:8], 0
000a04  7d900000  xwait r1, 0
000a08  3d000000  xfence
000a0c  00a00300  mfence { lm, sm, gm }
000a10  e30b0fff  loadli.w r23,  -128(r30)
000a14  630c8fff  loadli.w r24,  -64(r30)
000a18  eb5c0fff  load.d r[26:27], -16(r30)
000a1c  e30dcfff  loadli.w r27,  -32(r30)
000a20  97306403  sll.d r[2:3], r[9:10], r22
000a24  a7010300  addli.d r[4:5], r[7:8], 0
000a28  0ba51110  add.ul r[11:12], r[4:5], r[2:3]
000a2c  a7811100  addli.d r[4:5], r[4:5], 8
000a30  9b322500  slli r5, r10, 2
000a34  13a59103  setneq.d r10, r[4:5], r[26:27]
000a38  8b95c211  add.s r11, r5, r28
000a3c  8b928211  add.s r5, r5, r24
000a40  6fc7c500  loads.w r14, 12(r11)
000a44  efc70500  loads.w r15, 0(r11)
000a48  6fc84500  loads.w r16, 4(r11)
000a4c  efc88500  loads.w r17, 8(r11)
000a50  6fc90501  loads.w r18, 16(r11)
000a54  efc94501  loads.w r19, 20(r11)
000a58  6fca8501  loads.w r20, 24(r11)
000a5c  efc5c501  loads.w r11, 28(r11)
000a60  17077701  and r14, r14, r23
000a64  97857501  and r11, r11, r23
000a68  73e6e200  stores.w r14, 12(r5)
000a6c  17877701  and r14, r15, r23
000a70  97077801  and r15, r16, r23
000a74  17887801  and r16, r17, r23
000a78  97087901  and r17, r18, r23
000a7c  17897901  and r18, r19, r23
000a80  97097a01  and r19, r20, r23
000a84  73eeb200  stores.w r11, 28(r5)
000a88  73e40201  stores.w r16, 8(r5)
000a8c  73e2f200  stores.w r15, 4(r5)
000a90  73e0e200  stores.w r14, 0(r5)
000a94  73ec3201  stores.w r19, 24(r5)
000a98  73ea2201  stores.w r18, 20(r5)
000a9c  73e81201  stores.w r17, 16(r5)
000aa0  3b2e05fe  bneq r10, zero, -120
000aa4  eb508ffb  load.d r[2:3], -72(r30)
000aa8  93201404  setlt.ul r1, r[9:10], r[2:3]
000aac  27140400  addli.d r[9:10], r[9:10], 1
000ab0  bbcd00fe  bneq r1, zero, -144
000ab4  9f103000  addli r1, zero, 25
000ab8  00200100  mfence { sm }
000abc  7d800000  xsignal r1, 0
000ac0  9f604000  addli r1, zero, 38
000ac4  7d800000  xsignal r1, 0
000ac8  7d900000  xwait r1, 0
000acc  9f305000  addli r1, zero, 43
000ad0  7d900000  xwait r1, 0
000ad4  3d000000  xfence
000ad8  b3000028  zext_int2long r[2:3], zero
000adc  00a00300  mfence { lm, sm, gm }
000ae0  634ebfff  loadli.w r28,  -36(r30)
000ae4  6302bfff  loadli.w r4,  -40(r30)
000ae8  73381ffa  store.d r[2:3], -80(r30)
000aec  9f730000  addli r7, zero, 7
000af0  eb540ffb  load.d r[10:11], -80(r30)
000af4  e341cfff  loadli.w r3,  -28(r30)
000af8  97b26003  sll.d r[6:7], r[2:3], r22
000afc  97b37002  sll.d r[8:9], r[2:3], r7
000b00  0ba75410  add.ul r[15:16], r[10:11], r[6:7]
000b04  8ba87410  add.ul r[18:19], r[10:11], r[8:9]
000b08  a7c40400  addli.d r[10:11], r[10:11], 4
000b0c  9b352700  slli r11, r14, 2
000b10  13aa9403  setneq.d r20, r[10:11], r[26:27]
000b14  8b99b811  add.s r19, r17, r27
000b18  8b9ac811  add.s r21, r17, r28
000b1c  8b958511  add.s r11, r11, r24
000b20  6fc70500  loads.w r14, 0(r11)
000b24  efc74500  loads.w r15, 4(r11)
000b28  6fc88500  loads.w r16, 8(r11)
000b2c  efc5c500  loads.w r11, 12(r11)
000b30  1307e604  setlt.u r14, r12, r14
000b34  9307f604  setlt.u r15, r12, r15
000b38  13080605  setlt.u r16, r12, r16
000b3c  9305b604  setlt.u r11, r12, r11
000b40  73c0e900  stores.b r14, 0(r19)
000b44  0b973810  add.s r14, r17, r3
000b48  8b984810  add.s r17, r17, r4
000b4c  73c0fa00  stores.b r15, 0(r21)
000b50  73400701  stores.b r16, 0(r14)
000b54  73c0b800  stores.b r11, 0(r17)
000b58  bb2e0afe  bneq r20, zero, -88
000b5c  eb528ffb  load.d r[6:7], -72(r30)
000b60  93a25004  setlt.ul r5, r[2:3], r[6:7]
000b64  a7900000  addli.d r[2:3], r[2:3], 1
000b68  3b9e02fe  bneq r5, zero, -124
000b6c  9f704000  addli r1, zero, 39
000b70  1f115000  addli r2, zero, 41
000b74  9f413000  addli r3, zero, 28
000b78  00200100  mfence { sm }
000b7c  7d800000  xsignal r1, 0
000b80  7d000100  xsignal r2, 0
000b84  7d900100  xwait r3, 0
000b88  9f114000  addli r3, zero, 33
000b8c  7d900100  xwait r3, 0
000b90  9f414000  addli r3, zero, 36
000b94  7d900100  xwait r3, 0
000b98  7d900000  xwait r1, 0
000b9c  7d100100  xwait r2, 0
000ba0  b3000028  zext_int2long r[2:3], zero
000ba4  3d000000  xfence
000ba8  00a00300  mfence { lm, sm, gm }
000bac  73341ffa  store.d r[2:3], -88(r30)
000bb0  27810000  addli.d r[3:4], r[2:3], 0
000bb4  db030000  j 28
000bb8  eb508ffb  load.d r[2:3], -72(r30)
000bbc  eb510ffb  load.d r[4:5], -80(r30)
000bc0  1f6b0000  addli r22, zero, 6
000bc4  93a01104  setlt.ul r1, r[4:5], r[2:3]
000bc8  27910100  addli.d r[3:4], r[4:5], 1
000bcc  b7ca000a  beq r1, zero, 5808
000bd0  9f700000  addli r1, zero, 7
000bd4  eb548ffa  load.d r[10:11], -88(r30)
000bd8  97336103  sll.d r[8:9], r[3:4], r22
000bdc  73382ffa  store.d r[3:4], -80(r30)
000be0  173d1102  sll.d r[27:28], r[3:4], r1
000be4  db080000  j 68
000be8  e300afff  loadli.w r1,  -48(r30)
000bec  eb510fff  load.d r[4:5], -16(r30)
000bf0  a7c40400  addli.d r[10:11], r[10:11], 4
000bf4  e302dfff  loadli.w r5,  -24(r30)
000bf8  630c8fff  loadli.w r24,  -64(r30)
000bfc  93a13402  setneq.d r3, r[10:11], r[4:5]
000c00  8b101b10  add.s r1, r22, r1
000c04  0b12db10  add.s r4, r22, r13
000c08  8b125b10  add.s r5, r22, r5
000c0c  73e00001  stores.w r16, 0(r1)
000c10  e340dfff  loadli.w r1,  -20(r30)
000c14  73e05201  stores.w r21, 0(r5)
000c18  73606200  stores.w r6, 0(r4)
000c1c  8b101b10  add.s r1, r22, r1
000c20  73e02000  stores.w r2, 0(r1)
000c24  37de01fe  beq r3, zero, -108
000c28  8ba07410  add.ul r[2:3], r[10:11], r[8:9]
000c2c  0ba8a411  add.ul r[17:18], r[10:11], r[27:28]
000c30  6349cfff  loadli.w r18,  -28(r30)
000c34  e309bfff  loadli.w r19,  -40(r30)
000c38  1bbb2000  slli r22, r1, 2
000c3c  e3408fff  loadli.w r1,  -60(r30)
000c40  0b192811  add.s r18, r16, r18
000c44  0b118b11  add.s r2, r22, r24
000c48  8b121b10  add.s r5, r22, r1
000c4c  ef1c0900  loads.bu r25, 0(r18)
000c50  6f430100  loads.w r6, 0(r2)
000c54  ef40c100  loads.w r1, 12(r2)
000c58  ef418100  loads.w r3, 8(r2)
000c5c  6f424100  loads.w r4, 4(r2)
000c60  6301cfff  loadli.w r2,  -32(r30)
000c64  efc50200  loads.w r11, 0(r5)
000c68  6fc74200  loads.w r14, 4(r5)
000c6c  6fca8200  loads.w r20, 8(r5)
000c70  efc7c200  loads.w r15, 12(r5)
000c74  8b12c811  add.s r5, r16, r28
000c78  0b112810  add.s r2, r16, r2
000c7c  0b183811  add.s r16, r16, r19
000c80  e3089fff  loadli.w r17,  -56(r30)
000c84  ef190100  loads.bu r19, 0(r2)
000c88  6f910200  loads.bu r2, 0(r5)
000c8c  6f1c0800  loads.bu r24, 0(r16)
000c90  0b191b11  add.s r18, r22, r17
000c94  ef48c900  loads.w r17, 12(r18)
000c98  97827501  and r5, r11, r23
000c9c  9305c300  seteq r11, r6, r12
000ca0  13030300  seteq r6, r6, zero
000ca4  938a0200  seteq r21, r5, zero
000ca8  138ec200  seteq r28, r5, r12
000cac  13085604  setlt.u r16, r12, r5
000cb0  ef428900  loads.w r5, 8(r18)
000cb4  978a5501  and r21, r11, r21
000cb8  ef454900  loads.w r11, 4(r18)
000cbc  1703c301  and r6, r6, r28
000cc0  17980901  or r16, r19, r16
000cc4  17936a00  or r6, r21, r6
000cc8  17136800  or r6, r16, r6
000ccc  2b08c07f  lui r16, 523264
000cd0  9b091300  andi r19, r6, 1
000cd4  2b03c07f  lui r6, 523264
000cd8  3ba00900  bneq r19, zero, 8
000cdc  6f430900  loads.w r6, 0(r18)
000ce0  17077701  and r14, r14, r23
000ce4  1309c200  seteq r18, r4, r12
000ce8  13020200  seteq r4, r4, zero
000cec  93090700  seteq r19, r14, zero
000cf0  930ac700  seteq r21, r14, r12
000cf4  1307e604  setlt.u r14, r12, r14
000cf8  17025201  and r4, r4, r21
000cfc  17093901  and r18, r18, r19
000d00  1711e100  or r2, r2, r14
000d04  ab0ac07f  lui r21, 523264
000d08  17124900  or r4, r18, r4
000d0c  17114100  or r2, r2, r4
000d10  1b011100  andi r2, r2, 1
000d14  3b200100  bneq r2, zero, 8
000d18  9f8a0500  addli r21, r11, 0
000d1c  17017a01  and r2, r20, r23
000d20  1382c100  seteq r4, r3, r12
000d24  93810100  seteq r3, r3, zero
000d28  634ebfff  loadli.w r28,  -36(r30)
000d2c  93050100  seteq r11, r2, zero
000d30  1307c100  seteq r14, r2, r12
000d34  13012604  setlt.u r2, r12, r2
000d38  1702b200  and r4, r4, r11
000d3c  9781e100  and r3, r3, r14
000d40  17912c00  or r2, r25, r2
000d44  97113200  or r3, r4, r3
000d48  17113100  or r2, r2, r3
000d4c  9b011100  andi r3, r2, 1
000d50  2b01c07f  lui r2, 523264
000d54  3ba00100  bneq r3, zero, 8
000d58  1f810200  addli r2, r5, 0
000d5c  97817701  and r3, r15, r23
000d60  1382c000  seteq r4, r1, r12
000d64  93800000  seteq r1, r1, zero
000d68  93820100  seteq r5, r3, zero
000d6c  9385c100  seteq r11, r3, r12
000d70  93013604  setlt.u r3, r12, r3
000d74  17025200  and r4, r4, r5
000d78  9780b000  and r1, r1, r11
000d7c  97113c00  or r3, r24, r3
000d80  97101200  or r1, r4, r1
000d84  97901100  or r1, r3, r1
000d88  9b801000  andi r1, r1, 1
000d8c  3bf900fe  bneq r1, zero, -420
000d90  1f880800  addli r16, r17, 0
000d94  dbcaffff  j -428
000d98  bb6d9c0a  bneq r24, r9, 6008
000d9c  9f303000  addli r1, zero, 27
000da0  9f334000  addli r7, zero, 35
000da4  9f110000  addli r3, zero, 1
000da8  1f74f00f  addli r8, zero, 2047
000dac  2b01803f  lui r2, 260096
000db0  9f723000  addli r5, zero, 31
000db4  2bc30100  lui r6, 28
000db8  7d900000  xwait r1, 0
000dbc  9f001000  addli r1, zero, 8
000dc0  7d900300  xwait r7, 0
000dc4  1d800d00  lock zero, r27
000dc8  8d000014  ew_cfg r1, zero, zero, 10
000dcc  e3400fff  loadli.w r1,  -124(r30)
000dd0  8d8d1116  ew_cfg r27, r3, r1, 11
000dd4  9f300000  addli r1, zero, 3
000dd8  0d00101a  ew_cfg zero, zero, r1, 13
000ddc  abc07fc1  lui r1, 792572
000de0  8d800b1c  ew_cfg r1, r23, zero, 14
000de4  ab0080bf  lui r1, 784384
000de8  0d00001e  ew_cfg zero, zero, zero, 15
000dec  0d000002  ew_cfg zero, zero, zero, 1
000df0  8d100000  ewcoeff_cfg r1, zero, zero, 0
000df4  9f403000  addli r1, zero, 28
000df8  0d000404  ew_cfg zero, r8, zero, 2
000dfc  8d0d0006  ew_cfg r27, zero, zero, 3
000e00  8d8d0d26  ew_cfg r27, r27, zero, 19
000e04  63428fff  loadli.w r4,  -60(r30)
000e08  2d82d600  dsmadd r4, r13, r13, 0
000e0c  0d000014  ew_cfg zero, zero, zero, 10
000e10  0d000026  ew_cfg zero, zero, zero, 19
000e14  1d900d00  unlock r27
000e18  7d800000  xsignal r1, 0
000e1c  9f302000  addli r1, zero, 19
000e20  7d900000  xwait r1, 0
000e24  9f504000  addli r1, zero, 37
000e28  7d900000  xwait r1, 0
000e2c  1d800d00  lock zero, r27
000e30  0d000002  ew_cfg zero, zero, zero, 1
000e34  0d102000  ewcoeff_cfg zero, zero, r2, 0
000e38  0d000404  ew_cfg zero, r8, zero, 2
000e3c  8d0d0006  ew_cfg r27, zero, zero, 3
000e40  8d8dbd27  ew_cfg r27, r27, r27, 19
000e44  e3009fff  loadli.w r1,  -56(r30)
000e48  ad904c00  dsmul r1, r25, r4, 0
000e4c  9f104000  addli r1, zero, 33
000e50  0d000026  ew_cfg zero, zero, zero, 19
000e54  1d900d00  unlock r27
000e58  7d800000  xsignal r1, 0
000e5c  9f404000  addli r1, zero, 36
000e60  7d800000  xsignal r1, 0
000e64  9f502000  addli r1, zero, 21
000e68  7d900000  xwait r1, 0
000e6c  9f503000  addli r1, zero, 29
000e70  7d900000  xwait r1, 0
000e74  1d800d00  lock zero, r27
000e78  9f204000  addli r1, zero, 34
000e7c  0d000002  ew_cfg zero, zero, zero, 1
000e80  0d100000  ewcoeff_cfg zero, zero, zero, 0
000e84  8d0d0006  ew_cfg r27, zero, zero, 3
000e88  0d000404  ew_cfg zero, r8, zero, 2
000e8c  8d8dbd27  ew_cfg r27, r27, r27, 19
000e90  ed86dc94  dsselect r13, r25, r13, 74
000e94  0d000026  ew_cfg zero, zero, zero, 19
000e98  1d900d00  unlock r27
000e9c  7d900000  xwait r1, 0
000ea0  1d800d00  lock zero, r27
000ea4  9b100318  ori r1, r6, 384
000ea8  0d000002  ew_cfg zero, zero, zero, 1
000eac  0d112000  ewcoeff_cfg r2, zero, r2, 0
000eb0  0d000404  ew_cfg zero, r8, zero, 2
000eb4  8d0d0006  ew_cfg r27, zero, zero, 3
000eb8  8d8d0d26  ew_cfg r27, r27, zero, 19
000ebc  2d024200  dsmadd r4, r4, r4, 0
000ec0  0d000026  ew_cfg zero, zero, zero, 19
000ec4  1d900d00  unlock r27
000ec8  1d800d00  lock zero, r27
000ecc  0d000002  ew_cfg zero, zero, zero, 1
000ed0  0d110000  ewcoeff_cfg r2, zero, zero, 0
000ed4  8d010006  ew_cfg r3, zero, zero, 3
000ed8  8d8d0d26  ew_cfg r27, r27, zero, 19
000edc  0d800204  ew_cfg zero, r5, zero, 2
000ee0  0d320008  ewcoeff_nlf_cfg r4, 4
000ee4  2bc20000  lui r4, 12
000ee8  0d800204  ew_cfg zero, r5, zero, 2
000eec  cdd6d600  hp_ssmul r13, r13, r13, 0
000ef0  0d800204  ew_cfg zero, r5, zero, 2
000ef4  8d300008  ewcoeff_nlf_cfg r1, 4
000ef8  9b100218  ori r1, r4, 384
000efc  0d800204  ew_cfg zero, r5, zero, 2
000f00  cdd01000  hp_ssmul r1, r1, r1, 0
000f04  9b100320  ori r1, r6, 512
000f08  0d000026  ew_cfg zero, zero, zero, 19
000f0c  1d900d00  unlock r27
000f10  1d800d00  lock zero, r27
000f14  0d000002  ew_cfg zero, zero, zero, 1
000f18  0d110000  ewcoeff_cfg r2, zero, zero, 0
000f1c  8d010006  ew_cfg r3, zero, zero, 3
000f20  8d8d0d26  ew_cfg r27, r27, zero, 19
000f24  0d800204  ew_cfg zero, r5, zero, 2
000f28  8d300008  ewcoeff_nlf_cfg r1, 4
000f2c  9b100220  ori r1, r4, 512
000f30  0d800204  ew_cfg zero, r5, zero, 2
000f34  cdd01000  hp_ssmul r1, r1, r1, 0
000f38  9b100328  ori r1, r6, 640
000f3c  0d800204  ew_cfg zero, r5, zero, 2
000f40  8d300008  ewcoeff_nlf_cfg r1, 4
000f44  9b100228  ori r1, r4, 640
000f48  0d800204  ew_cfg zero, r5, zero, 2
000f4c  cdd01000  hp_ssmul r1, r1, r1, 0
000f50  9b100330  ori r1, r6, 768
000f54  0d000026  ew_cfg zero, zero, zero, 19
000f58  1d900d00  unlock r27
000f5c  1d800d00  lock zero, r27
000f60  0d000002  ew_cfg zero, zero, zero, 1
000f64  0d110000  ewcoeff_cfg r2, zero, zero, 0
000f68  8d010006  ew_cfg r3, zero, zero, 3
000f6c  8d8d0d26  ew_cfg r27, r27, zero, 19
000f70  0d800204  ew_cfg zero, r5, zero, 2
000f74  8d300008  ewcoeff_nlf_cfg r1, 4
000f78  9b100230  ori r1, r4, 768
000f7c  0d800204  ew_cfg zero, r5, zero, 2
000f80  cdd01000  hp_ssmul r1, r1, r1, 0
000f84  9b100338  ori r1, r6, 896
000f88  0d800204  ew_cfg zero, r5, zero, 2
000f8c  8d300008  ewcoeff_nlf_cfg r1, 4
000f90  9b100238  ori r1, r4, 896
000f94  0d800204  ew_cfg zero, r5, zero, 2
000f98  cdd01000  hp_ssmul r1, r1, r1, 0
000f9c  9b100340  ori r1, r6, 1024
000fa0  0d000026  ew_cfg zero, zero, zero, 19
000fa4  1d900d00  unlock r27
000fa8  1d800d00  lock zero, r27
000fac  0d000002  ew_cfg zero, zero, zero, 1
000fb0  0d110000  ewcoeff_cfg r2, zero, zero, 0
000fb4  8d010006  ew_cfg r3, zero, zero, 3
000fb8  8d8d0d26  ew_cfg r27, r27, zero, 19
000fbc  0d800204  ew_cfg zero, r5, zero, 2
000fc0  8d300008  ewcoeff_nlf_cfg r1, 4
000fc4  9b100240  ori r1, r4, 1024
000fc8  0d800204  ew_cfg zero, r5, zero, 2
000fcc  cdd01000  hp_ssmul r1, r1, r1, 0
000fd0  9b100348  ori r1, r6, 1152
000fd4  0d800204  ew_cfg zero, r5, zero, 2
000fd8  8d300008  ewcoeff_nlf_cfg r1, 4
000fdc  9b100248  ori r1, r4, 1152
000fe0  0d800204  ew_cfg zero, r5, zero, 2
000fe4  cdd01000  hp_ssmul r1, r1, r1, 0
000fe8  9b100350  ori r1, r6, 1280
000fec  0d000026  ew_cfg zero, zero, zero, 19
000ff0  1d900d00  unlock r27
000ff4  1d800d00  lock zero, r27
000ff8  0d000002  ew_cfg zero, zero, zero, 1
000ffc  0d110000  ewcoeff_cfg r2, zero, zero, 0
001000  8d010006  ew_cfg r3, zero, zero, 3
001004  8d8d0d26  ew_cfg r27, r27, zero, 19
001008  0d800204  ew_cfg zero, r5, zero, 2
00100c  8d300008  ewcoeff_nlf_cfg r1, 4
001010  9b100250  ori r1, r4, 1280
001014  0d800204  ew_cfg zero, r5, zero, 2
001018  cdd01000  hp_ssmul r1, r1, r1, 0
00101c  9b100358  ori r1, r6, 1408
001020  0d800204  ew_cfg zero, r5, zero, 2
001024  8d300008  ewcoeff_nlf_cfg r1, 4
001028  9b100258  ori r1, r4, 1408
00102c  0d800204  ew_cfg zero, r5, zero, 2
001030  cdd01000  hp_ssmul r1, r1, r1, 0
001034  9b100360  ori r1, r6, 1536
001038  0d000026  ew_cfg zero, zero, zero, 19
00103c  1d900d00  unlock r27
001040  1d800d00  lock zero, r27
001044  0d000002  ew_cfg zero, zero, zero, 1
001048  0d110000  ewcoeff_cfg r2, zero, zero, 0
00104c  8d010006  ew_cfg r3, zero, zero, 3
001050  8d8d0d26  ew_cfg r27, r27, zero, 19
001054  0d800204  ew_cfg zero, r5, zero, 2
001058  8d300008  ewcoeff_nlf_cfg r1, 4
00105c  9b100260  ori r1, r4, 1536
001060  0d800204  ew_cfg zero, r5, zero, 2
001064  cdd01000  hp_ssmul r1, r1, r1, 0
001068  9b100368  ori r1, r6, 1664
00106c  0d800204  ew_cfg zero, r5, zero, 2
001070  8d300008  ewcoeff_nlf_cfg r1, 4
001074  9b100268  ori r1, r4, 1664
001078  0d800204  ew_cfg zero, r5, zero, 2
00107c  cdd01000  hp_ssmul r1, r1, r1, 0
001080  9b100370  ori r1, r6, 1792
001084  0d000026  ew_cfg zero, zero, zero, 19
001088  1d900d00  unlock r27
00108c  1d800d00  lock zero, r27
001090  0d000002  ew_cfg zero, zero, zero, 1
001094  0d110000  ewcoeff_cfg r2, zero, zero, 0
001098  8d010006  ew_cfg r3, zero, zero, 3
00109c  8d8d0d26  ew_cfg r27, r27, zero, 19
0010a0  0d800204  ew_cfg zero, r5, zero, 2
0010a4  8d300008  ewcoeff_nlf_cfg r1, 4
0010a8  9b100270  ori r1, r4, 1792
0010ac  0d800204  ew_cfg zero, r5, zero, 2
0010b0  cdd01000  hp_ssmul r1, r1, r1, 0
0010b4  9b100378  ori r1, r6, 1920
0010b8  0d800204  ew_cfg zero, r5, zero, 2
0010bc  8d300008  ewcoeff_nlf_cfg r1, 4
0010c0  9b100278  ori r1, r4, 1920
0010c4  0d800204  ew_cfg zero, r5, zero, 2
0010c8  cdd01000  hp_ssmul r1, r1, r1, 0
0010cc  9b100380  ori r1, r6, 2048
0010d0  0d000026  ew_cfg zero, zero, zero, 19
0010d4  1d900d00  unlock r27
0010d8  1d800d00  lock zero, r27
0010dc  0d000002  ew_cfg zero, zero, zero, 1
0010e0  0d110000  ewcoeff_cfg r2, zero, zero, 0
0010e4  8d010006  ew_cfg r3, zero, zero, 3
0010e8  8d8d0d26  ew_cfg r27, r27, zero, 19
0010ec  0d800204  ew_cfg zero, r5, zero, 2
0010f0  8d300008  ewcoeff_nlf_cfg r1, 4
0010f4  9b100280  ori r1, r4, 2048
0010f8  0d800204  ew_cfg zero, r5, zero, 2
0010fc  cdd01000  hp_ssmul r1, r1, r1, 0
001100  9b100388  ori r1, r6, 2176
001104  0d800204  ew_cfg zero, r5, zero, 2
001108  8d300008  ewcoeff_nlf_cfg r1, 4
00110c  9b100288  ori r1, r4, 2176
001110  0d800204  ew_cfg zero, r5, zero, 2
001114  cdd01000  hp_ssmul r1, r1, r1, 0
001118  9b100390  ori r1, r6, 2304
00111c  0d000026  ew_cfg zero, zero, zero, 19
001120  1d900d00  unlock r27
001124  1d800d00  lock zero, r27
001128  0d000002  ew_cfg zero, zero, zero, 1
00112c  0d110000  ewcoeff_cfg r2, zero, zero, 0
001130  8d010006  ew_cfg r3, zero, zero, 3
001134  8d8d0d26  ew_cfg r27, r27, zero, 19
001138  0d800204  ew_cfg zero, r5, zero, 2
00113c  8d300008  ewcoeff_nlf_cfg r1, 4
001140  9b100290  ori r1, r4, 2304
001144  0d800204  ew_cfg zero, r5, zero, 2
001148  cdd01000  hp_ssmul r1, r1, r1, 0
00114c  9b100398  ori r1, r6, 2432
001150  0d800204  ew_cfg zero, r5, zero, 2
001154  8d300008  ewcoeff_nlf_cfg r1, 4
001158  9b100298  ori r1, r4, 2432
00115c  0d800204  ew_cfg zero, r5, zero, 2
001160  cdd01000  hp_ssmul r1, r1, r1, 0
001164  9b1003a0  ori r1, r6, 2560
001168  0d000026  ew_cfg zero, zero, zero, 19
00116c  1d900d00  unlock r27
001170  1d800d00  lock zero, r27
001174  0d000002  ew_cfg zero, zero, zero, 1
001178  0d110000  ewcoeff_cfg r2, zero, zero, 0
00117c  8d010006  ew_cfg r3, zero, zero, 3
001180  8d8d0d26  ew_cfg r27, r27, zero, 19
001184  0d800204  ew_cfg zero, r5, zero, 2
001188  8d300008  ewcoeff_nlf_cfg r1, 4
00118c  9b1002a0  ori r1, r4, 2560
001190  0d800204  ew_cfg zero, r5, zero, 2
001194  cdd01000  hp_ssmul r1, r1, r1, 0
001198  9b1003a8  ori r1, r6, 2688
00119c  0d800204  ew_cfg zero, r5, zero, 2
0011a0  8d300008  ewcoeff_nlf_cfg r1, 4
0011a4  9b1002a8  ori r1, r4, 2688
0011a8  0d800204  ew_cfg zero, r5, zero, 2
0011ac  cdd01000  hp_ssmul r1, r1, r1, 0
0011b0  9b1003b0  ori r1, r6, 2816
0011b4  0d000026  ew_cfg zero, zero, zero, 19
0011b8  1d900d00  unlock r27
0011bc  1d800d00  lock zero, r27
0011c0  0d000002  ew_cfg zero, zero, zero, 1
0011c4  0d110000  ewcoeff_cfg r2, zero, zero, 0
0011c8  8d010006  ew_cfg r3, zero, zero, 3
0011cc  8d8d0d26  ew_cfg r27, r27, zero, 19
0011d0  0d800204  ew_cfg zero, r5, zero, 2
0011d4  8d300008  ewcoeff_nlf_cfg r1, 4
0011d8  9b1002b0  ori r1, r4, 2816
0011dc  0d800204  ew_cfg zero, r5, zero, 2
0011e0  cdd01000  hp_ssmul r1, r1, r1, 0
0011e4  9b1003b8  ori r1, r6, 2944
0011e8  0d800204  ew_cfg zero, r5, zero, 2
0011ec  8d300008  ewcoeff_nlf_cfg r1, 4
0011f0  9b1002b8  ori r1, r4, 2944
0011f4  0d800204  ew_cfg zero, r5, zero, 2
0011f8  cdd01000  hp_ssmul r1, r1, r1, 0
0011fc  9b1003c0  ori r1, r6, 3072
001200  0d000026  ew_cfg zero, zero, zero, 19
001204  1d900d00  unlock r27
001208  1d800d00  lock zero, r27
00120c  0d000002  ew_cfg zero, zero, zero, 1
001210  0d110000  ewcoeff_cfg r2, zero, zero, 0
001214  8d010006  ew_cfg r3, zero, zero, 3
001218  8d8d0d26  ew_cfg r27, r27, zero, 19
00121c  0d800204  ew_cfg zero, r5, zero, 2
001220  8d300008  ewcoeff_nlf_cfg r1, 4
001224  9b1002c0  ori r1, r4, 3072
001228  0d800204  ew_cfg zero, r5, zero, 2
00122c  cdd01000  hp_ssmul r1, r1, r1, 0
001230  9b1003c8  ori r1, r6, 3200
001234  0d800204  ew_cfg zero, r5, zero, 2
001238  8d300008  ewcoeff_nlf_cfg r1, 4
00123c  9b1002c8  ori r1, r4, 3200
001240  0d800204  ew_cfg zero, r5, zero, 2
001244  cdd01000  hp_ssmul r1, r1, r1, 0
001248  9b1003d0  ori r1, r6, 3328
00124c  0d000026  ew_cfg zero, zero, zero, 19
001250  1d900d00  unlock r27
001254  1d800d00  lock zero, r27
001258  0d000002  ew_cfg zero, zero, zero, 1
00125c  0d110000  ewcoeff_cfg r2, zero, zero, 0
001260  8d010006  ew_cfg r3, zero, zero, 3
001264  8d8d0d26  ew_cfg r27, r27, zero, 19
001268  0d800204  ew_cfg zero, r5, zero, 2
00126c  8d300008  ewcoeff_nlf_cfg r1, 4
001270  9b1002d0  ori r1, r4, 3328
001274  0d800204  ew_cfg zero, r5, zero, 2
001278  cdd01000  hp_ssmul r1, r1, r1, 0
00127c  9b1003d8  ori r1, r6, 3456
001280  0d800204  ew_cfg zero, r5, zero, 2
001284  8d300008  ewcoeff_nlf_cfg r1, 4
001288  9b1002d8  ori r1, r4, 3456
00128c  0d800204  ew_cfg zero, r5, zero, 2
001290  cdd01000  hp_ssmul r1, r1, r1, 0
001294  9b1003e0  ori r1, r6, 3584
001298  0d000026  ew_cfg zero, zero, zero, 19
00129c  1d900d00  unlock r27
0012a0  1d800d00  lock zero, r27
0012a4  0d000002  ew_cfg zero, zero, zero, 1
0012a8  0d110000  ewcoeff_cfg r2, zero, zero, 0
0012ac  8d010006  ew_cfg r3, zero, zero, 3
0012b0  8d8d0d26  ew_cfg r27, r27, zero, 19
0012b4  0d800204  ew_cfg zero, r5, zero, 2
0012b8  8d300008  ewcoeff_nlf_cfg r1, 4
0012bc  9b1002e0  ori r1, r4, 3584
0012c0  0d800204  ew_cfg zero, r5, zero, 2
0012c4  cdd01000  hp_ssmul r1, r1, r1, 0
0012c8  9b1003e8  ori r1, r6, 3712
0012cc  0d800204  ew_cfg zero, r5, zero, 2
0012d0  8d300008  ewcoeff_nlf_cfg r1, 4
0012d4  9b1002e8  ori r1, r4, 3712
0012d8  0d800204  ew_cfg zero, r5, zero, 2
0012dc  cdd01000  hp_ssmul r1, r1, r1, 0
0012e0  9b1003f0  ori r1, r6, 3840
0012e4  0d000026  ew_cfg zero, zero, zero, 19
0012e8  1d900d00  unlock r27
0012ec  1d800d00  lock zero, r27
0012f0  0d000002  ew_cfg zero, zero, zero, 1
0012f4  0d110000  ewcoeff_cfg r2, zero, zero, 0
0012f8  8d010006  ew_cfg r3, zero, zero, 3
0012fc  8d8d0d26  ew_cfg r27, r27, zero, 19
001300  0d800204  ew_cfg zero, r5, zero, 2
001304  8d300008  ewcoeff_nlf_cfg r1, 4
001308  9b1002f0  ori r1, r4, 3840
00130c  0d800204  ew_cfg zero, r5, zero, 2
001310  cdd01000  hp_ssmul r1, r1, r1, 0
001314  9b1003f8  ori r1, r6, 3968
001318  2bd30000  lui r6, 13
00131c  0d800204  ew_cfg zero, r5, zero, 2
001320  8d300008  ewcoeff_nlf_cfg r1, 4
001324  9b1002f8  ori r1, r4, 3968
001328  2bd20100  lui r4, 29
00132c  0d800204  ew_cfg zero, r5, zero, 2
001330  cdd01000  hp_ssmul r1, r1, r1, 0
001334  9b100208  ori r1, r4, 128
001338  0d000026  ew_cfg zero, zero, zero, 19
00133c  1d900d00  unlock r27
001340  1d800d00  lock zero, r27
001344  0d000002  ew_cfg zero, zero, zero, 1
001348  0d110000  ewcoeff_cfg r2, zero, zero, 0
00134c  8d010006  ew_cfg r3, zero, zero, 3
001350  8d8d0d26  ew_cfg r27, r27, zero, 19
001354  0d800204  ew_cfg zero, r5, zero, 2
001358  0d320008  ewcoeff_nlf_cfg r4, 4
00135c  0d800204  ew_cfg zero, r5, zero, 2
001360  4d536300  hp_ssmul r6, r6, r6, 0
001364  0d800204  ew_cfg zero, r5, zero, 2
001368  8d300008  ewcoeff_nlf_cfg r1, 4
00136c  9b100308  ori r1, r6, 128
001370  0d800204  ew_cfg zero, r5, zero, 2
001374  cdd01000  hp_ssmul r1, r1, r1, 0
001378  9b100210  ori r1, r4, 256
00137c  0d000026  ew_cfg zero, zero, zero, 19
001380  1d900d00  unlock r27
001384  1d800d00  lock zero, r27
001388  0d000002  ew_cfg zero, zero, zero, 1
00138c  0d110000  ewcoeff_cfg r2, zero, zero, 0
001390  8d010006  ew_cfg r3, zero, zero, 3
001394  8d8d0d26  ew_cfg r27, r27, zero, 19
001398  0d800204  ew_cfg zero, r5, zero, 2
00139c  8d300008  ewcoeff_nlf_cfg r1, 4
0013a0  9b100310  ori r1, r6, 256
0013a4  0d800204  ew_cfg zero, r5, zero, 2
0013a8  cdd01000  hp_ssmul r1, r1, r1, 0
0013ac  9b100218  ori r1, r4, 384
0013b0  0d800204  ew_cfg zero, r5, zero, 2
0013b4  8d300008  ewcoeff_nlf_cfg r1, 4
0013b8  9b100318  ori r1, r6, 384
0013bc  0d800204  ew_cfg zero, r5, zero, 2
0013c0  cdd01000  hp_ssmul r1, r1, r1, 0
0013c4  9b100220  ori r1, r4, 512
0013c8  0d000026  ew_cfg zero, zero, zero, 19
0013cc  1d900d00  unlock r27
0013d0  1d800d00  lock zero, r27
0013d4  0d000002  ew_cfg zero, zero, zero, 1
0013d8  0d110000  ewcoeff_cfg r2, zero, zero, 0
0013dc  8d010006  ew_cfg r3, zero, zero, 3
0013e0  8d8d0d26  ew_cfg r27, r27, zero, 19
0013e4  0d800204  ew_cfg zero, r5, zero, 2
0013e8  8d300008  ewcoeff_nlf_cfg r1, 4
0013ec  9b100320  ori r1, r6, 512
0013f0  0d800204  ew_cfg zero, r5, zero, 2
0013f4  cdd01000  hp_ssmul r1, r1, r1, 0
0013f8  9b100228  ori r1, r4, 640
0013fc  0d800204  ew_cfg zero, r5, zero, 2
001400  8d300008  ewcoeff_nlf_cfg r1, 4
001404  9b100328  ori r1, r6, 640
001408  0d800204  ew_cfg zero, r5, zero, 2
00140c  cdd01000  hp_ssmul r1, r1, r1, 0
001410  9b100230  ori r1, r4, 768
001414  0d000026  ew_cfg zero, zero, zero, 19
001418  1d900d00  unlock r27
00141c  1d800d00  lock zero, r27
001420  0d000002  ew_cfg zero, zero, zero, 1
001424  0d110000  ewcoeff_cfg r2, zero, zero, 0
001428  8d010006  ew_cfg r3, zero, zero, 3
00142c  8d8d0d26  ew_cfg r27, r27, zero, 19
001430  0d800204  ew_cfg zero, r5, zero, 2
001434  8d300008  ewcoeff_nlf_cfg r1, 4
001438  9b100330  ori r1, r6, 768
00143c  0d800204  ew_cfg zero, r5, zero, 2
001440  cdd01000  hp_ssmul r1, r1, r1, 0
001444  9b100238  ori r1, r4, 896
001448  0d800204  ew_cfg zero, r5, zero, 2
00144c  8d300008  ewcoeff_nlf_cfg r1, 4
001450  9b100338  ori r1, r6, 896
001454  0d800204  ew_cfg zero, r5, zero, 2
001458  cdd01000  hp_ssmul r1, r1, r1, 0
00145c  9b100240  ori r1, r4, 1024
001460  0d000026  ew_cfg zero, zero, zero, 19
001464  1d900d00  unlock r27
001468  1d800d00  lock zero, r27
00146c  0d000002  ew_cfg zero, zero, zero, 1
001470  0d110000  ewcoeff_cfg r2, zero, zero, 0
001474  8d010006  ew_cfg r3, zero, zero, 3
001478  8d8d0d26  ew_cfg r27, r27, zero, 19
00147c  0d800204  ew_cfg zero, r5, zero, 2
001480  8d300008  ewcoeff_nlf_cfg r1, 4
001484  9b100340  ori r1, r6, 1024
001488  0d800204  ew_cfg zero, r5, zero, 2
00148c  cdd01000  hp_ssmul r1, r1, r1, 0
001490  9b100248  ori r1, r4, 1152
001494  0d800204  ew_cfg zero, r5, zero, 2
001498  8d300008  ewcoeff_nlf_cfg r1, 4
00149c  9b100348  ori r1, r6, 1152
0014a0  0d800204  ew_cfg zero, r5, zero, 2
0014a4  cdd01000  hp_ssmul r1, r1, r1, 0
0014a8  9b100250  ori r1, r4, 1280
0014ac  0d000026  ew_cfg zero, zero, zero, 19
0014b0  1d900d00  unlock r27
0014b4  1d800d00  lock zero, r27
0014b8  0d000002  ew_cfg zero, zero, zero, 1
0014bc  0d110000  ewcoeff_cfg r2, zero, zero, 0
0014c0  8d010006  ew_cfg r3, zero, zero, 3
0014c4  8d8d0d26  ew_cfg r27, r27, zero, 19
0014c8  0d800204  ew_cfg zero, r5, zero, 2
0014cc  8d300008  ewcoeff_nlf_cfg r1, 4
0014d0  9b100350  ori r1, r6, 1280
0014d4  0d800204  ew_cfg zero, r5, zero, 2
0014d8  cdd01000  hp_ssmul r1, r1, r1, 0
0014dc  9b100258  ori r1, r4, 1408
0014e0  0d800204  ew_cfg zero, r5, zero, 2
0014e4  8d300008  ewcoeff_nlf_cfg r1, 4
0014e8  9b100358  ori r1, r6, 1408
0014ec  0d800204  ew_cfg zero, r5, zero, 2
0014f0  cdd01000  hp_ssmul r1, r1, r1, 0
0014f4  9b100260  ori r1, r4, 1536
0014f8  0d000026  ew_cfg zero, zero, zero, 19
0014fc  1d900d00  unlock r27
001500  1d800d00  lock zero, r27
001504  0d000002  ew_cfg zero, zero, zero, 1
001508  0d110000  ewcoeff_cfg r2, zero, zero, 0
00150c  8d010006  ew_cfg r3, zero, zero, 3
001510  8d8d0d26  ew_cfg r27, r27, zero, 19
001514  0d800204  ew_cfg zero, r5, zero, 2
001518  8d300008  ewcoeff_nlf_cfg r1, 4
00151c  9b100360  ori r1, r6, 1536
001520  0d800204  ew_cfg zero, r5, zero, 2
001524  cdd01000  hp_ssmul r1, r1, r1, 0
001528  9b100268  ori r1, r4, 1664
00152c  0d800204  ew_cfg zero, r5, zero, 2
001530  8d300008  ewcoeff_nlf_cfg r1, 4
001534  9b100368  ori r1, r6, 1664
001538  0d800204  ew_cfg zero, r5, zero, 2
00153c  cdd01000  hp_ssmul r1, r1, r1, 0
001540  9b100270  ori r1, r4, 1792
001544  0d000026  ew_cfg zero, zero, zero, 19
001548  1d900d00  unlock r27
00154c  1d800d00  lock zero, r27
001550  0d000002  ew_cfg zero, zero, zero, 1
001554  0d110000  ewcoeff_cfg r2, zero, zero, 0
001558  8d010006  ew_cfg r3, zero, zero, 3
00155c  8d8d0d26  ew_cfg r27, r27, zero, 19
001560  0d800204  ew_cfg zero, r5, zero, 2
001564  8d300008  ewcoeff_nlf_cfg r1, 4
001568  9b100370  ori r1, r6, 1792
00156c  0d800204  ew_cfg zero, r5, zero, 2
001570  cdd01000  hp_ssmul r1, r1, r1, 0
001574  9b100278  ori r1, r4, 1920
001578  0d800204  ew_cfg zero, r5, zero, 2
00157c  8d300008  ewcoeff_nlf_cfg r1, 4
001580  9b100378  ori r1, r6, 1920
001584  0d800204  ew_cfg zero, r5, zero, 2
001588  cdd01000  hp_ssmul r1, r1, r1, 0
00158c  9b100280  ori r1, r4, 2048
001590  0d000026  ew_cfg zero, zero, zero, 19
001594  1d900d00  unlock r27
001598  1d800d00  lock zero, r27
00159c  0d000002  ew_cfg zero, zero, zero, 1
0015a0  0d110000  ewcoeff_cfg r2, zero, zero, 0
0015a4  8d010006  ew_cfg r3, zero, zero, 3
0015a8  8d8d0d26  ew_cfg r27, r27, zero, 19
0015ac  0d800204  ew_cfg zero, r5, zero, 2
0015b0  8d300008  ewcoeff_nlf_cfg r1, 4
0015b4  9b100380  ori r1, r6, 2048
0015b8  0d800204  ew_cfg zero, r5, zero, 2
0015bc  cdd01000  hp_ssmul r1, r1, r1, 0
0015c0  9b100288  ori r1, r4, 2176
0015c4  0d800204  ew_cfg zero, r5, zero, 2
0015c8  8d300008  ewcoeff_nlf_cfg r1, 4
0015cc  9b100388  ori r1, r6, 2176
0015d0  0d800204  ew_cfg zero, r5, zero, 2
0015d4  cdd01000  hp_ssmul r1, r1, r1, 0
0015d8  9b100290  ori r1, r4, 2304
0015dc  0d000026  ew_cfg zero, zero, zero, 19
0015e0  1d900d00  unlock r27
0015e4  1d800d00  lock zero, r27
0015e8  0d000002  ew_cfg zero, zero, zero, 1
0015ec  0d110000  ewcoeff_cfg r2, zero, zero, 0
0015f0  8d010006  ew_cfg r3, zero, zero, 3
0015f4  8d8d0d26  ew_cfg r27, r27, zero, 19
0015f8  0d800204  ew_cfg zero, r5, zero, 2
0015fc  8d300008  ewcoeff_nlf_cfg r1, 4
001600  9b100390  ori r1, r6, 2304
001604  0d800204  ew_cfg zero, r5, zero, 2
001608  cdd01000  hp_ssmul r1, r1, r1, 0
00160c  9b100298  ori r1, r4, 2432
001610  0d800204  ew_cfg zero, r5, zero, 2
001614  8d300008  ewcoeff_nlf_cfg r1, 4
001618  9b100398  ori r1, r6, 2432
00161c  0d800204  ew_cfg zero, r5, zero, 2
001620  cdd01000  hp_ssmul r1, r1, r1, 0
001624  9b1002a0  ori r1, r4, 2560
001628  0d000026  ew_cfg zero, zero, zero, 19
00162c  1d900d00  unlock r27
001630  1d800d00  lock zero, r27
001634  0d000002  ew_cfg zero, zero, zero, 1
001638  0d110000  ewcoeff_cfg r2, zero, zero, 0
00163c  8d010006  ew_cfg r3, zero, zero, 3
001640  8d8d0d26  ew_cfg r27, r27, zero, 19
001644  0d800204  ew_cfg zero, r5, zero, 2
001648  8d300008  ewcoeff_nlf_cfg r1, 4
00164c  9b1003a0  ori r1, r6, 2560
001650  0d800204  ew_cfg zero, r5, zero, 2
001654  cdd01000  hp_ssmul r1, r1, r1, 0
001658  9b1002a8  ori r1, r4, 2688
00165c  0d800204  ew_cfg zero, r5, zero, 2
001660  8d300008  ewcoeff_nlf_cfg r1, 4
001664  9b1003a8  ori r1, r6, 2688
001668  0d800204  ew_cfg zero, r5, zero, 2
00166c  cdd01000  hp_ssmul r1, r1, r1, 0
001670  9b1002b0  ori r1, r4, 2816
001674  0d000026  ew_cfg zero, zero, zero, 19
001678  1d900d00  unlock r27
00167c  1d800d00  lock zero, r27
001680  0d000002  ew_cfg zero, zero, zero, 1
001684  0d110000  ewcoeff_cfg r2, zero, zero, 0
001688  8d010006  ew_cfg r3, zero, zero, 3
00168c  8d8d0d26  ew_cfg r27, r27, zero, 19
001690  0d800204  ew_cfg zero, r5, zero, 2
001694  8d300008  ewcoeff_nlf_cfg r1, 4
001698  9b1003b0  ori r1, r6, 2816
00169c  0d800204  ew_cfg zero, r5, zero, 2
0016a0  cdd01000  hp_ssmul r1, r1, r1, 0
0016a4  9b1002b8  ori r1, r4, 2944
0016a8  0d800204  ew_cfg zero, r5, zero, 2
0016ac  8d300008  ewcoeff_nlf_cfg r1, 4
0016b0  9b1003b8  ori r1, r6, 2944
0016b4  0d800204  ew_cfg zero, r5, zero, 2
0016b8  cdd01000  hp_ssmul r1, r1, r1, 0
0016bc  9b1002c0  ori r1, r4, 3072
0016c0  0d000026  ew_cfg zero, zero, zero, 19
0016c4  1d900d00  unlock r27
0016c8  1d800d00  lock zero, r27
0016cc  0d000002  ew_cfg zero, zero, zero, 1
0016d0  0d110000  ewcoeff_cfg r2, zero, zero, 0
0016d4  8d010006  ew_cfg r3, zero, zero, 3
0016d8  8d8d0d26  ew_cfg r27, r27, zero, 19
0016dc  0d800204  ew_cfg zero, r5, zero, 2
0016e0  8d300008  ewcoeff_nlf_cfg r1, 4
0016e4  9b1003c0  ori r1, r6, 3072
0016e8  0d800204  ew_cfg zero, r5, zero, 2
0016ec  cdd01000  hp_ssmul r1, r1, r1, 0
0016f0  9b1002c8  ori r1, r4, 3200
0016f4  0d800204  ew_cfg zero, r5, zero, 2
0016f8  8d300008  ewcoeff_nlf_cfg r1, 4
0016fc  9b1003c8  ori r1, r6, 3200
001700  0d800204  ew_cfg zero, r5, zero, 2
001704  cdd01000  hp_ssmul r1, r1, r1, 0
001708  9b1002d0  ori r1, r4, 3328
00170c  0d000026  ew_cfg zero, zero, zero, 19
001710  1d900d00  unlock r27
001714  1d800d00  lock zero, r27
001718  0d000002  ew_cfg zero, zero, zero, 1
00171c  0d110000  ewcoeff_cfg r2, zero, zero, 0
001720  8d010006  ew_cfg r3, zero, zero, 3
001724  8d8d0d26  ew_cfg r27, r27, zero, 19
001728  0d800204  ew_cfg zero, r5, zero, 2
00172c  8d300008  ewcoeff_nlf_cfg r1, 4
001730  9b1003d0  ori r1, r6, 3328
001734  0d800204  ew_cfg zero, r5, zero, 2
001738  cdd01000  hp_ssmul r1, r1, r1, 0
00173c  9b1002d8  ori r1, r4, 3456
001740  0d800204  ew_cfg zero, r5, zero, 2
001744  8d300008  ewcoeff_nlf_cfg r1, 4
001748  9b1003d8  ori r1, r6, 3456
00174c  0d800204  ew_cfg zero, r5, zero, 2
001750  cdd01000  hp_ssmul r1, r1, r1, 0
001754  9b1002e0  ori r1, r4, 3584
001758  0d000026  ew_cfg zero, zero, zero, 19
00175c  1d900d00  unlock r27
001760  1d800d00  lock zero, r27
001764  0d000002  ew_cfg zero, zero, zero, 1
001768  0d110000  ewcoeff_cfg r2, zero, zero, 0
00176c  8d010006  ew_cfg r3, zero, zero, 3
001770  8d8d0d26  ew_cfg r27, r27, zero, 19
001774  0d800204  ew_cfg zero, r5, zero, 2
001778  8d300008  ewcoeff_nlf_cfg r1, 4
00177c  9b1003e0  ori r1, r6, 3584
001780  0d800204  ew_cfg zero, r5, zero, 2
001784  cdd01000  hp_ssmul r1, r1, r1, 0
001788  9b1002e8  ori r1, r4, 3712
00178c  0d800204  ew_cfg zero, r5, zero, 2
001790  8d300008  ewcoeff_nlf_cfg r1, 4
001794  9b1003e8  ori r1, r6, 3712
001798  0d800204  ew_cfg zero, r5, zero, 2
00179c  cdd01000  hp_ssmul r1, r1, r1, 0
0017a0  9b1002f0  ori r1, r4, 3840
0017a4  0d000026  ew_cfg zero, zero, zero, 19
0017a8  1d900d00  unlock r27
0017ac  1d800d00  lock zero, r27
0017b0  0d000002  ew_cfg zero, zero, zero, 1
0017b4  0d110000  ewcoeff_cfg r2, zero, zero, 0
0017b8  8d010006  ew_cfg r3, zero, zero, 3
0017bc  8d8d0d26  ew_cfg r27, r27, zero, 19
0017c0  0d800204  ew_cfg zero, r5, zero, 2
0017c4  8d300008  ewcoeff_nlf_cfg r1, 4
0017c8  9b1003f0  ori r1, r6, 3840
0017cc  0d800204  ew_cfg zero, r5, zero, 2
0017d0  cdd01000  hp_ssmul r1, r1, r1, 0
0017d4  9b1002f8  ori r1, r4, 3968
0017d8  2be20100  lui r4, 30
0017dc  0d800204  ew_cfg zero, r5, zero, 2
0017e0  8d300008  ewcoeff_nlf_cfg r1, 4
0017e4  9b1003f8  ori r1, r6, 3968
0017e8  2be30000  lui r6, 14
0017ec  0d800204  ew_cfg zero, r5, zero, 2
0017f0  cdd01000  hp_ssmul r1, r1, r1, 0
0017f4  9b100208  ori r1, r4, 128
0017f8  0d000026  ew_cfg zero, zero, zero, 19
0017fc  1d900d00  unlock r27
001800  1d800d00  lock zero, r27
001804  0d000002  ew_cfg zero, zero, zero, 1
001808  0d110000  ewcoeff_cfg r2, zero, zero, 0
00180c  8d010006  ew_cfg r3, zero, zero, 3
001810  8d8d0d26  ew_cfg r27, r27, zero, 19
001814  0d800204  ew_cfg zero, r5, zero, 2
001818  0d320008  ewcoeff_nlf_cfg r4, 4
00181c  0d800204  ew_cfg zero, r5, zero, 2
001820  4d536300  hp_ssmul r6, r6, r6, 0
001824  0d800204  ew_cfg zero, r5, zero, 2
001828  8d300008  ewcoeff_nlf_cfg r1, 4
00182c  9b100308  ori r1, r6, 128
001830  0d800204  ew_cfg zero, r5, zero, 2
001834  cdd01000  hp_ssmul r1, r1, r1, 0
001838  9b100210  ori r1, r4, 256
00183c  0d000026  ew_cfg zero, zero, zero, 19
001840  1d900d00  unlock r27
001844  1d800d00  lock zero, r27
001848  0d000002  ew_cfg zero, zero, zero, 1
00184c  0d110000  ewcoeff_cfg r2, zero, zero, 0
001850  8d010006  ew_cfg r3, zero, zero, 3
001854  8d8d0d26  ew_cfg r27, r27, zero, 19
001858  0d800204  ew_cfg zero, r5, zero, 2
00185c  8d300008  ewcoeff_nlf_cfg r1, 4
001860  9b100310  ori r1, r6, 256
001864  0d800204  ew_cfg zero, r5, zero, 2
001868  cdd01000  hp_ssmul r1, r1, r1, 0
00186c  9b100218  ori r1, r4, 384
001870  0d800204  ew_cfg zero, r5, zero, 2
001874  8d300008  ewcoeff_nlf_cfg r1, 4
001878  9b100318  ori r1, r6, 384
00187c  0d800204  ew_cfg zero, r5, zero, 2
001880  cdd01000  hp_ssmul r1, r1, r1, 0
001884  9b100220  ori r1, r4, 512
001888  0d000026  ew_cfg zero, zero, zero, 19
00188c  1d900d00  unlock r27
001890  1d800d00  lock zero, r27
001894  0d000002  ew_cfg zero, zero, zero, 1
001898  0d110000  ewcoeff_cfg r2, zero, zero, 0
00189c  8d010006  ew_cfg r3, zero, zero, 3
0018a0  8d8d0d26  ew_cfg r27, r27, zero, 19
0018a4  0d800204  ew_cfg zero, r5, zero, 2
0018a8  8d300008  ewcoeff_nlf_cfg r1, 4
0018ac  9b100320  ori r1, r6, 512
0018b0  0d800204  ew_cfg zero, r5, zero, 2
0018b4  cdd01000  hp_ssmul r1, r1, r1, 0
0018b8  9b100228  ori r1, r4, 640
0018bc  0d800204  ew_cfg zero, r5, zero, 2
0018c0  8d300008  ewcoeff_nlf_cfg r1, 4
0018c4  9b100328  ori r1, r6, 640
0018c8  0d800204  ew_cfg zero, r5, zero, 2
0018cc  cdd01000  hp_ssmul r1, r1, r1, 0
0018d0  9b100230  ori r1, r4, 768
0018d4  0d000026  ew_cfg zero, zero, zero, 19
0018d8  1d900d00  unlock r27
0018dc  1d800d00  lock zero, r27
0018e0  0d000002  ew_cfg zero, zero, zero, 1
0018e4  0d110000  ewcoeff_cfg r2, zero, zero, 0
0018e8  8d010006  ew_cfg r3, zero, zero, 3
0018ec  8d8d0d26  ew_cfg r27, r27, zero, 19
0018f0  0d800204  ew_cfg zero, r5, zero, 2
0018f4  8d300008  ewcoeff_nlf_cfg r1, 4
0018f8  9b100330  ori r1, r6, 768
0018fc  0d800204  ew_cfg zero, r5, zero, 2
001900  cdd01000  hp_ssmul r1, r1, r1, 0
001904  9b100238  ori r1, r4, 896
001908  0d800204  ew_cfg zero, r5, zero, 2
00190c  8d300008  ewcoeff_nlf_cfg r1, 4
001910  9b100338  ori r1, r6, 896
001914  0d800204  ew_cfg zero, r5, zero, 2
001918  cdd01000  hp_ssmul r1, r1, r1, 0
00191c  9b100240  ori r1, r4, 1024
001920  0d000026  ew_cfg zero, zero, zero, 19
001924  1d900d00  unlock r27
001928  1d800d00  lock zero, r27
00192c  0d000002  ew_cfg zero, zero, zero, 1
001930  0d110000  ewcoeff_cfg r2, zero, zero, 0
001934  8d010006  ew_cfg r3, zero, zero, 3
001938  8d8d0d26  ew_cfg r27, r27, zero, 19
00193c  0d800204  ew_cfg zero, r5, zero, 2
001940  8d300008  ewcoeff_nlf_cfg r1, 4
001944  9b100340  ori r1, r6, 1024
001948  0d800204  ew_cfg zero, r5, zero, 2
00194c  cdd01000  hp_ssmul r1, r1, r1, 0
001950  9b100248  ori r1, r4, 1152
001954  0d800204  ew_cfg zero, r5, zero, 2
001958  8d300008  ewcoeff_nlf_cfg r1, 4
00195c  9b100348  ori r1, r6, 1152
001960  0d800204  ew_cfg zero, r5, zero, 2
001964  cdd01000  hp_ssmul r1, r1, r1, 0
001968  9b100250  ori r1, r4, 1280
00196c  0d000026  ew_cfg zero, zero, zero, 19
001970  1d900d00  unlock r27
001974  1d800d00  lock zero, r27
001978  0d000002  ew_cfg zero, zero, zero, 1
00197c  0d110000  ewcoeff_cfg r2, zero, zero, 0
001980  8d010006  ew_cfg r3, zero, zero, 3
001984  8d8d0d26  ew_cfg r27, r27, zero, 19
001988  0d800204  ew_cfg zero, r5, zero, 2
00198c  8d300008  ewcoeff_nlf_cfg r1, 4
001990  9b100350  ori r1, r6, 1280
001994  0d800204  ew_cfg zero, r5, zero, 2
001998  cdd01000  hp_ssmul r1, r1, r1, 0
00199c  9b100258  ori r1, r4, 1408
0019a0  0d800204  ew_cfg zero, r5, zero, 2
0019a4  8d300008  ewcoeff_nlf_cfg r1, 4
0019a8  9b100358  ori r1, r6, 1408
0019ac  0d800204  ew_cfg zero, r5, zero, 2
0019b0  cdd01000  hp_ssmul r1, r1, r1, 0
0019b4  9b100260  ori r1, r4, 1536
0019b8  0d000026  ew_cfg zero, zero, zero, 19
0019bc  1d900d00  unlock r27
0019c0  1d800d00  lock zero, r27
0019c4  0d000002  ew_cfg zero, zero, zero, 1
0019c8  0d110000  ewcoeff_cfg r2, zero, zero, 0
0019cc  8d010006  ew_cfg r3, zero, zero, 3
0019d0  8d8d0d26  ew_cfg r27, r27, zero, 19
0019d4  0d800204  ew_cfg zero, r5, zero, 2
0019d8  8d300008  ewcoeff_nlf_cfg r1, 4
0019dc  9b100360  ori r1, r6, 1536
0019e0  0d800204  ew_cfg zero, r5, zero, 2
0019e4  cdd01000  hp_ssmul r1, r1, r1, 0
0019e8  9b100268  ori r1, r4, 1664
0019ec  0d800204  ew_cfg zero, r5, zero, 2
0019f0  8d300008  ewcoeff_nlf_cfg r1, 4
0019f4  9b100368  ori r1, r6, 1664
0019f8  0d800204  ew_cfg zero, r5, zero, 2
0019fc  cdd01000  hp_ssmul r1, r1, r1, 0
001a00  9b100270  ori r1, r4, 1792
001a04  0d000026  ew_cfg zero, zero, zero, 19
001a08  1d900d00  unlock r27
001a0c  1d800d00  lock zero, r27
001a10  0d000002  ew_cfg zero, zero, zero, 1
001a14  0d110000  ewcoeff_cfg r2, zero, zero, 0
001a18  8d010006  ew_cfg r3, zero, zero, 3
001a1c  8d8d0d26  ew_cfg r27, r27, zero, 19
001a20  0d800204  ew_cfg zero, r5, zero, 2
001a24  8d300008  ewcoeff_nlf_cfg r1, 4
001a28  9b100370  ori r1, r6, 1792
001a2c  0d800204  ew_cfg zero, r5, zero, 2
001a30  cdd01000  hp_ssmul r1, r1, r1, 0
001a34  9b100278  ori r1, r4, 1920
001a38  0d800204  ew_cfg zero, r5, zero, 2
001a3c  8d300008  ewcoeff_nlf_cfg r1, 4
001a40  9b100378  ori r1, r6, 1920
001a44  0d800204  ew_cfg zero, r5, zero, 2
001a48  cdd01000  hp_ssmul r1, r1, r1, 0
001a4c  9b100280  ori r1, r4, 2048
001a50  0d000026  ew_cfg zero, zero, zero, 19
001a54  1d900d00  unlock r27
001a58  1d800d00  lock zero, r27
001a5c  0d000002  ew_cfg zero, zero, zero, 1
001a60  0d110000  ewcoeff_cfg r2, zero, zero, 0
001a64  8d010006  ew_cfg r3, zero, zero, 3
001a68  8d8d0d26  ew_cfg r27, r27, zero, 19
001a6c  0d800204  ew_cfg zero, r5, zero, 2
001a70  8d300008  ewcoeff_nlf_cfg r1, 4
001a74  9b100380  ori r1, r6, 2048
001a78  0d800204  ew_cfg zero, r5, zero, 2
001a7c  cdd01000  hp_ssmul r1, r1, r1, 0
001a80  9b100288  ori r1, r4, 2176
001a84  0d800204  ew_cfg zero, r5, zero, 2
001a88  8d300008  ewcoeff_nlf_cfg r1, 4
001a8c  9b100388  ori r1, r6, 2176
001a90  0d800204  ew_cfg zero, r5, zero, 2
001a94  cdd01000  hp_ssmul r1, r1, r1, 0
001a98  9b100290  ori r1, r4, 2304
001a9c  0d000026  ew_cfg zero, zero, zero, 19
001aa0  1d900d00  unlock r27
001aa4  1d800d00  lock zero, r27
001aa8  0d000002  ew_cfg zero, zero, zero, 1
001aac  0d110000  ewcoeff_cfg r2, zero, zero, 0
001ab0  8d010006  ew_cfg r3, zero, zero, 3
001ab4  8d8d0d26  ew_cfg r27, r27, zero, 19
001ab8  0d800204  ew_cfg zero, r5, zero, 2
001abc  8d300008  ewcoeff_nlf_cfg r1, 4
001ac0  9b100390  ori r1, r6, 2304
001ac4  0d800204  ew_cfg zero, r5, zero, 2
001ac8  cdd01000  hp_ssmul r1, r1, r1, 0
001acc  9b100298  ori r1, r4, 2432
001ad0  0d800204  ew_cfg zero, r5, zero, 2
001ad4  8d300008  ewcoeff_nlf_cfg r1, 4
001ad8  9b100398  ori r1, r6, 2432
001adc  0d800204  ew_cfg zero, r5, zero, 2
001ae0  cdd01000  hp_ssmul r1, r1, r1, 0
001ae4  9b1002a0  ori r1, r4, 2560
001ae8  0d000026  ew_cfg zero, zero, zero, 19
001aec  1d900d00  unlock r27
001af0  1d800d00  lock zero, r27
001af4  0d000002  ew_cfg zero, zero, zero, 1
001af8  0d110000  ewcoeff_cfg r2, zero, zero, 0
001afc  8d010006  ew_cfg r3, zero, zero, 3
001b00  8d8d0d26  ew_cfg r27, r27, zero, 19
001b04  0d800204  ew_cfg zero, r5, zero, 2
001b08  8d300008  ewcoeff_nlf_cfg r1, 4
001b0c  9b1003a0  ori r1, r6, 2560
001b10  0d800204  ew_cfg zero, r5, zero, 2
001b14  cdd01000  hp_ssmul r1, r1, r1, 0
001b18  9b1002a8  ori r1, r4, 2688
001b1c  0d800204  ew_cfg zero, r5, zero, 2
001b20  8d300008  ewcoeff_nlf_cfg r1, 4
001b24  9b1003a8  ori r1, r6, 2688
001b28  0d800204  ew_cfg zero, r5, zero, 2
001b2c  cdd01000  hp_ssmul r1, r1, r1, 0
001b30  9b1002b0  ori r1, r4, 2816
001b34  0d000026  ew_cfg zero, zero, zero, 19
001b38  1d900d00  unlock r27
001b3c  1d800d00  lock zero, r27
001b40  0d000002  ew_cfg zero, zero, zero, 1
001b44  0d110000  ewcoeff_cfg r2, zero, zero, 0
001b48  8d010006  ew_cfg r3, zero, zero, 3
001b4c  8d8d0d26  ew_cfg r27, r27, zero, 19
001b50  0d800204  ew_cfg zero, r5, zero, 2
001b54  8d300008  ewcoeff_nlf_cfg r1, 4
001b58  9b1003b0  ori r1, r6, 2816
001b5c  0d800204  ew_cfg zero, r5, zero, 2
001b60  cdd01000  hp_ssmul r1, r1, r1, 0
001b64  9b1002b8  ori r1, r4, 2944
001b68  0d800204  ew_cfg zero, r5, zero, 2
001b6c  8d300008  ewcoeff_nlf_cfg r1, 4
001b70  9b1003b8  ori r1, r6, 2944
001b74  0d800204  ew_cfg zero, r5, zero, 2
001b78  cdd01000  hp_ssmul r1, r1, r1, 0
001b7c  9b1002c0  ori r1, r4, 3072
001b80  0d000026  ew_cfg zero, zero, zero, 19
001b84  1d900d00  unlock r27
001b88  1d800d00  lock zero, r27
001b8c  0d000002  ew_cfg zero, zero, zero, 1
001b90  0d110000  ewcoeff_cfg r2, zero, zero, 0
001b94  8d010006  ew_cfg r3, zero, zero, 3
001b98  8d8d0d26  ew_cfg r27, r27, zero, 19
001b9c  0d800204  ew_cfg zero, r5, zero, 2
001ba0  8d300008  ewcoeff_nlf_cfg r1, 4
001ba4  9b1003c0  ori r1, r6, 3072
001ba8  0d800204  ew_cfg zero, r5, zero, 2
001bac  cdd01000  hp_ssmul r1, r1, r1, 0
001bb0  9b1002c8  ori r1, r4, 3200
001bb4  0d800204  ew_cfg zero, r5, zero, 2
001bb8  8d300008  ewcoeff_nlf_cfg r1, 4
001bbc  9b1003c8  ori r1, r6, 3200
001bc0  0d800204  ew_cfg zero, r5, zero, 2
001bc4  cdd01000  hp_ssmul r1, r1, r1, 0
001bc8  9b1002d0  ori r1, r4, 3328
001bcc  0d000026  ew_cfg zero, zero, zero, 19
001bd0  1d900d00  unlock r27
001bd4  1d800d00  lock zero, r27
001bd8  0d000002  ew_cfg zero, zero, zero, 1
001bdc  0d110000  ewcoeff_cfg r2, zero, zero, 0
001be0  8d010006  ew_cfg r3, zero, zero, 3
001be4  8d8d0d26  ew_cfg r27, r27, zero, 19
001be8  0d800204  ew_cfg zero, r5, zero, 2
001bec  8d300008  ewcoeff_nlf_cfg r1, 4
001bf0  9b1003d0  ori r1, r6, 3328
001bf4  0d800204  ew_cfg zero, r5, zero, 2
001bf8  cdd01000  hp_ssmul r1, r1, r1, 0
001bfc  9b1002d8  ori r1, r4, 3456
001c00  0d800204  ew_cfg zero, r5, zero, 2
001c04  8d300008  ewcoeff_nlf_cfg r1, 4
001c08  9b1003d8  ori r1, r6, 3456
001c0c  0d800204  ew_cfg zero, r5, zero, 2
001c10  cdd01000  hp_ssmul r1, r1, r1, 0
001c14  9b1002e0  ori r1, r4, 3584
001c18  0d000026  ew_cfg zero, zero, zero, 19
001c1c  1d900d00  unlock r27
001c20  1d800d00  lock zero, r27
001c24  0d000002  ew_cfg zero, zero, zero, 1
001c28  0d110000  ewcoeff_cfg r2, zero, zero, 0
001c2c  8d010006  ew_cfg r3, zero, zero, 3
001c30  8d8d0d26  ew_cfg r27, r27, zero, 19
001c34  0d800204  ew_cfg zero, r5, zero, 2
001c38  8d300008  ewcoeff_nlf_cfg r1, 4
001c3c  9b1003e0  ori r1, r6, 3584
001c40  0d800204  ew_cfg zero, r5, zero, 2
001c44  cdd01000  hp_ssmul r1, r1, r1, 0
001c48  9b1002e8  ori r1, r4, 3712
001c4c  0d800204  ew_cfg zero, r5, zero, 2
001c50  8d300008  ewcoeff_nlf_cfg r1, 4
001c54  9b1003e8  ori r1, r6, 3712
001c58  0d800204  ew_cfg zero, r5, zero, 2
001c5c  cdd01000  hp_ssmul r1, r1, r1, 0
001c60  9b1002f0  ori r1, r4, 3840
001c64  0d000026  ew_cfg zero, zero, zero, 19
001c68  1d900d00  unlock r27
001c6c  1d800d00  lock zero, r27
001c70  0d000002  ew_cfg zero, zero, zero, 1
001c74  0d110000  ewcoeff_cfg r2, zero, zero, 0
001c78  8d010006  ew_cfg r3, zero, zero, 3
001c7c  8d8d0d26  ew_cfg r27, r27, zero, 19
001c80  0d800204  ew_cfg zero, r5, zero, 2
001c84  8d300008  ewcoeff_nlf_cfg r1, 4
001c88  9b1003f0  ori r1, r6, 3840
001c8c  0d800204  ew_cfg zero, r5, zero, 2
001c90  cdd01000  hp_ssmul r1, r1, r1, 0
001c94  9b1002f8  ori r1, r4, 3968
001c98  2bf20100  lui r4, 31
001c9c  0d800204  ew_cfg zero, r5, zero, 2
001ca0  8d300008  ewcoeff_nlf_cfg r1, 4
001ca4  9b1003f8  ori r1, r6, 3968
001ca8  2bf30000  lui r6, 15
001cac  0d800204  ew_cfg zero, r5, zero, 2
001cb0  cdd01000  hp_ssmul r1, r1, r1, 0
001cb4  9b100208  ori r1, r4, 128
001cb8  0d000026  ew_cfg zero, zero, zero, 19
001cbc  1d900d00  unlock r27
001cc0  1d800d00  lock zero, r27
001cc4  0d000002  ew_cfg zero, zero, zero, 1
001cc8  0d110000  ewcoeff_cfg r2, zero, zero, 0
001ccc  8d010006  ew_cfg r3, zero, zero, 3
001cd0  8d8d0d26  ew_cfg r27, r27, zero, 19
001cd4  0d800204  ew_cfg zero, r5, zero, 2
001cd8  0d320008  ewcoeff_nlf_cfg r4, 4
001cdc  0d800204  ew_cfg zero, r5, zero, 2
001ce0  4d536300  hp_ssmul r6, r6, r6, 0
001ce4  0d800204  ew_cfg zero, r5, zero, 2
001ce8  8d300008  ewcoeff_nlf_cfg r1, 4
001cec  9b100308  ori r1, r6, 128
001cf0  0d800204  ew_cfg zero, r5, zero, 2
001cf4  cdd01000  hp_ssmul r1, r1, r1, 0
001cf8  9b100210  ori r1, r4, 256
001cfc  0d000026  ew_cfg zero, zero, zero, 19
001d00  1d900d00  unlock r27
001d04  1d800d00  lock zero, r27
001d08  0d000002  ew_cfg zero, zero, zero, 1
001d0c  0d110000  ewcoeff_cfg r2, zero, zero, 0
001d10  8d010006  ew_cfg r3, zero, zero, 3
001d14  8d8d0d26  ew_cfg r27, r27, zero, 19
001d18  0d800204  ew_cfg zero, r5, zero, 2
001d1c  8d300008  ewcoeff_nlf_cfg r1, 4
001d20  9b100310  ori r1, r6, 256
001d24  0d800204  ew_cfg zero, r5, zero, 2
001d28  cdd01000  hp_ssmul r1, r1, r1, 0
001d2c  9b100218  ori r1, r4, 384
001d30  0d800204  ew_cfg zero, r5, zero, 2
001d34  8d300008  ewcoeff_nlf_cfg r1, 4
001d38  9b100318  ori r1, r6, 384
001d3c  0d800204  ew_cfg zero, r5, zero, 2
001d40  cdd01000  hp_ssmul r1, r1, r1, 0
001d44  9b100220  ori r1, r4, 512
001d48  0d000026  ew_cfg zero, zero, zero, 19
001d4c  1d900d00  unlock r27
001d50  1d800d00  lock zero, r27
001d54  0d000002  ew_cfg zero, zero, zero, 1
001d58  0d110000  ewcoeff_cfg r2, zero, zero, 0
001d5c  8d010006  ew_cfg r3, zero, zero, 3
001d60  8d8d0d26  ew_cfg r27, r27, zero, 19
001d64  0d800204  ew_cfg zero, r5, zero, 2
001d68  8d300008  ewcoeff_nlf_cfg r1, 4
001d6c  9b100320  ori r1, r6, 512
001d70  0d800204  ew_cfg zero, r5, zero, 2
001d74  cdd01000  hp_ssmul r1, r1, r1, 0
001d78  9b100228  ori r1, r4, 640
001d7c  0d800204  ew_cfg zero, r5, zero, 2
001d80  8d300008  ewcoeff_nlf_cfg r1, 4
001d84  9b100328  ori r1, r6, 640
001d88  0d800204  ew_cfg zero, r5, zero, 2
001d8c  cdd01000  hp_ssmul r1, r1, r1, 0
001d90  9b100230  ori r1, r4, 768
001d94  0d000026  ew_cfg zero, zero, zero, 19
001d98  1d900d00  unlock r27
001d9c  1d800d00  lock zero, r27
001da0  0d000002  ew_cfg zero, zero, zero, 1
001da4  0d110000  ewcoeff_cfg r2, zero, zero, 0
001da8  8d010006  ew_cfg r3, zero, zero, 3
001dac  8d8d0d26  ew_cfg r27, r27, zero, 19
001db0  0d800204  ew_cfg zero, r5, zero, 2
001db4  8d300008  ewcoeff_nlf_cfg r1, 4
001db8  9b100330  ori r1, r6, 768
001dbc  0d800204  ew_cfg zero, r5, zero, 2
001dc0  cdd01000  hp_ssmul r1, r1, r1, 0
001dc4  9b100238  ori r1, r4, 896
001dc8  0d800204  ew_cfg zero, r5, zero, 2
001dcc  8d300008  ewcoeff_nlf_cfg r1, 4
001dd0  9b100338  ori r1, r6, 896
001dd4  0d800204  ew_cfg zero, r5, zero, 2
001dd8  cdd01000  hp_ssmul r1, r1, r1, 0
001ddc  9b100240  ori r1, r4, 1024
001de0  0d000026  ew_cfg zero, zero, zero, 19
001de4  1d900d00  unlock r27
001de8  1d800d00  lock zero, r27
001dec  0d000002  ew_cfg zero, zero, zero, 1
001df0  0d110000  ewcoeff_cfg r2, zero, zero, 0
001df4  8d010006  ew_cfg r3, zero, zero, 3
001df8  8d8d0d26  ew_cfg r27, r27, zero, 19
001dfc  0d800204  ew_cfg zero, r5, zero, 2
001e00  8d300008  ewcoeff_nlf_cfg r1, 4
001e04  9b100340  ori r1, r6, 1024
001e08  0d800204  ew_cfg zero, r5, zero, 2
001e0c  cdd01000  hp_ssmul r1, r1, r1, 0
001e10  9b100248  ori r1, r4, 1152
001e14  0d800204  ew_cfg zero, r5, zero, 2
001e18  8d300008  ewcoeff_nlf_cfg r1, 4
001e1c  9b100348  ori r1, r6, 1152
001e20  0d800204  ew_cfg zero, r5, zero, 2
001e24  cdd01000  hp_ssmul r1, r1, r1, 0
001e28  9b100250  ori r1, r4, 1280
001e2c  0d000026  ew_cfg zero, zero, zero, 19
001e30  1d900d00  unlock r27
001e34  1d800d00  lock zero, r27
001e38  0d000002  ew_cfg zero, zero, zero, 1
001e3c  0d110000  ewcoeff_cfg r2, zero, zero, 0
001e40  8d010006  ew_cfg r3, zero, zero, 3
001e44  8d8d0d26  ew_cfg r27, r27, zero, 19
001e48  0d800204  ew_cfg zero, r5, zero, 2
001e4c  8d300008  ewcoeff_nlf_cfg r1, 4
001e50  9b100350  ori r1, r6, 1280
001e54  0d800204  ew_cfg zero, r5, zero, 2
001e58  cdd01000  hp_ssmul r1, r1, r1, 0
001e5c  9b100258  ori r1, r4, 1408
001e60  0d800204  ew_cfg zero, r5, zero, 2
001e64  8d300008  ewcoeff_nlf_cfg r1, 4
001e68  9b100358  ori r1, r6, 1408
001e6c  0d800204  ew_cfg zero, r5, zero, 2
001e70  cdd01000  hp_ssmul r1, r1, r1, 0
001e74  9b100260  ori r1, r4, 1536
001e78  0d000026  ew_cfg zero, zero, zero, 19
001e7c  1d900d00  unlock r27
001e80  1d800d00  lock zero, r27
001e84  0d000002  ew_cfg zero, zero, zero, 1
001e88  0d110000  ewcoeff_cfg r2, zero, zero, 0
001e8c  8d010006  ew_cfg r3, zero, zero, 3
001e90  8d8d0d26  ew_cfg r27, r27, zero, 19
001e94  0d800204  ew_cfg zero, r5, zero, 2
001e98  8d300008  ewcoeff_nlf_cfg r1, 4
001e9c  9b100360  ori r1, r6, 1536
001ea0  0d800204  ew_cfg zero, r5, zero, 2
001ea4  cdd01000  hp_ssmul r1, r1, r1, 0
001ea8  9b100268  ori r1, r4, 1664
001eac  0d800204  ew_cfg zero, r5, zero, 2
001eb0  8d300008  ewcoeff_nlf_cfg r1, 4
001eb4  9b100368  ori r1, r6, 1664
001eb8  0d800204  ew_cfg zero, r5, zero, 2
001ebc  cdd01000  hp_ssmul r1, r1, r1, 0
001ec0  9b100270  ori r1, r4, 1792
001ec4  0d000026  ew_cfg zero, zero, zero, 19
001ec8  1d900d00  unlock r27
001ecc  1d800d00  lock zero, r27
001ed0  0d000002  ew_cfg zero, zero, zero, 1
001ed4  0d110000  ewcoeff_cfg r2, zero, zero, 0
001ed8  8d010006  ew_cfg r3, zero, zero, 3
001edc  8d8d0d26  ew_cfg r27, r27, zero, 19
001ee0  0d800204  ew_cfg zero, r5, zero, 2
001ee4  8d300008  ewcoeff_nlf_cfg r1, 4
001ee8  9b100370  ori r1, r6, 1792
001eec  0d800204  ew_cfg zero, r5, zero, 2
001ef0  cdd01000  hp_ssmul r1, r1, r1, 0
001ef4  9b100278  ori r1, r4, 1920
001ef8  0d800204  ew_cfg zero, r5, zero, 2
001efc  8d300008  ewcoeff_nlf_cfg r1, 4
001f00  9b100378  ori r1, r6, 1920
001f04  0d800204  ew_cfg zero, r5, zero, 2
001f08  cdd01000  hp_ssmul r1, r1, r1, 0
001f0c  9b100280  ori r1, r4, 2048
001f10  0d000026  ew_cfg zero, zero, zero, 19
001f14  1d900d00  unlock r27
001f18  1d800d00  lock zero, r27
001f1c  0d000002  ew_cfg zero, zero, zero, 1
001f20  0d110000  ewcoeff_cfg r2, zero, zero, 0
001f24  8d010006  ew_cfg r3, zero, zero, 3
001f28  8d8d0d26  ew_cfg r27, r27, zero, 19
001f2c  0d800204  ew_cfg zero, r5, zero, 2
001f30  8d300008  ewcoeff_nlf_cfg r1, 4
001f34  9b100380  ori r1, r6, 2048
001f38  0d800204  ew_cfg zero, r5, zero, 2
001f3c  cdd01000  hp_ssmul r1, r1, r1, 0
001f40  9b100288  ori r1, r4, 2176
001f44  0d800204  ew_cfg zero, r5, zero, 2
001f48  8d300008  ewcoeff_nlf_cfg r1, 4
001f4c  9b100388  ori r1, r6, 2176
001f50  0d800204  ew_cfg zero, r5, zero, 2
001f54  cdd01000  hp_ssmul r1, r1, r1, 0
001f58  9b100290  ori r1, r4, 2304
001f5c  0d000026  ew_cfg zero, zero, zero, 19
001f60  1d900d00  unlock r27
001f64  1d800d00  lock zero, r27
001f68  0d000002  ew_cfg zero, zero, zero, 1
001f6c  0d110000  ewcoeff_cfg r2, zero, zero, 0
001f70  8d010006  ew_cfg r3, zero, zero, 3
001f74  8d8d0d26  ew_cfg r27, r27, zero, 19
001f78  0d800204  ew_cfg zero, r5, zero, 2
001f7c  8d300008  ewcoeff_nlf_cfg r1, 4
001f80  9b100390  ori r1, r6, 2304
001f84  0d800204  ew_cfg zero, r5, zero, 2
001f88  cdd01000  hp_ssmul r1, r1, r1, 0
001f8c  9b100298  ori r1, r4, 2432
001f90  0d800204  ew_cfg zero, r5, zero, 2
001f94  8d300008  ewcoeff_nlf_cfg r1, 4
001f98  9b100398  ori r1, r6, 2432
001f9c  0d800204  ew_cfg zero, r5, zero, 2
001fa0  cdd01000  hp_ssmul r1, r1, r1, 0
001fa4  9b1002a0  ori r1, r4, 2560
001fa8  0d000026  ew_cfg zero, zero, zero, 19
001fac  1d900d00  unlock r27
001fb0  1d800d00  lock zero, r27
001fb4  0d000002  ew_cfg zero, zero, zero, 1
001fb8  0d110000  ewcoeff_cfg r2, zero, zero, 0
001fbc  8d010006  ew_cfg r3, zero, zero, 3
001fc0  8d8d0d26  ew_cfg r27, r27, zero, 19
001fc4  0d800204  ew_cfg zero, r5, zero, 2
001fc8  8d300008  ewcoeff_nlf_cfg r1, 4
001fcc  9b1003a0  ori r1, r6, 2560
001fd0  0d800204  ew_cfg zero, r5, zero, 2
001fd4  cdd01000  hp_ssmul r1, r1, r1, 0
001fd8  9b1002a8  ori r1, r4, 2688
001fdc  0d800204  ew_cfg zero, r5, zero, 2
001fe0  8d300008  ewcoeff_nlf_cfg r1, 4
001fe4  9b1003a8  ori r1, r6, 2688
001fe8  0d800204  ew_cfg zero, r5, zero, 2
001fec  cdd01000  hp_ssmul r1, r1, r1, 0
001ff0  9b1002b0  ori r1, r4, 2816
001ff4  0d000026  ew_cfg zero, zero, zero, 19
001ff8  1d900d00  unlock r27
001ffc  1d800d00  lock zero, r27
002000  0d000002  ew_cfg zero, zero, zero, 1
002004  0d110000  ewcoeff_cfg r2, zero, zero, 0
002008  8d010006  ew_cfg r3, zero, zero, 3
00200c  8d8d0d26  ew_cfg r27, r27, zero, 19
002010  0d800204  ew_cfg zero, r5, zero, 2
002014  8d300008  ewcoeff_nlf_cfg r1, 4
002018  9b1003b0  ori r1, r6, 2816
00201c  0d800204  ew_cfg zero, r5, zero, 2
002020  cdd01000  hp_ssmul r1, r1, r1, 0
002024  9b1002b8  ori r1, r4, 2944
002028  0d800204  ew_cfg zero, r5, zero, 2
00202c  8d300008  ewcoeff_nlf_cfg r1, 4
002030  9b1003b8  ori r1, r6, 2944
002034  0d800204  ew_cfg zero, r5, zero, 2
002038  cdd01000  hp_ssmul r1, r1, r1, 0
00203c  9b1002c0  ori r1, r4, 3072
002040  0d000026  ew_cfg zero, zero, zero, 19
002044  1d900d00  unlock r27
002048  1d800d00  lock zero, r27
00204c  0d000002  ew_cfg zero, zero, zero, 1
002050  0d110000  ewcoeff_cfg r2, zero, zero, 0
002054  8d010006  ew_cfg r3, zero, zero, 3
002058  8d8d0d26  ew_cfg r27, r27, zero, 19
00205c  0d800204  ew_cfg zero, r5, zero, 2
002060  8d300008  ewcoeff_nlf_cfg r1, 4
002064  9b1003c0  ori r1, r6, 3072
002068  0d800204  ew_cfg zero, r5, zero, 2
00206c  cdd01000  hp_ssmul r1, r1, r1, 0
002070  9b1002c8  ori r1, r4, 3200
002074  0d800204  ew_cfg zero, r5, zero, 2
002078  8d300008  ewcoeff_nlf_cfg r1, 4
00207c  9b1003c8  ori r1, r6, 3200
002080  0d800204  ew_cfg zero, r5, zero, 2
002084  cdd01000  hp_ssmul r1, r1, r1, 0
002088  9b1002d0  ori r1, r4, 3328
00208c  0d000026  ew_cfg zero, zero, zero, 19
002090  1d900d00  unlock r27
002094  1d800d00  lock zero, r27
002098  0d000002  ew_cfg zero, zero, zero, 1
00209c  0d110000  ewcoeff_cfg r2, zero, zero, 0
0020a0  8d010006  ew_cfg r3, zero, zero, 3
0020a4  8d8d0d26  ew_cfg r27, r27, zero, 19
0020a8  0d800204  ew_cfg zero, r5, zero, 2
0020ac  8d300008  ewcoeff_nlf_cfg r1, 4
0020b0  9b1003d0  ori r1, r6, 3328
0020b4  0d800204  ew_cfg zero, r5, zero, 2
0020b8  cdd01000  hp_ssmul r1, r1, r1, 0
0020bc  9b1002d8  ori r1, r4, 3456
0020c0  0d800204  ew_cfg zero, r5, zero, 2
0020c4  8d300008  ewcoeff_nlf_cfg r1, 4
0020c8  9b1003d8  ori r1, r6, 3456
0020cc  0d800204  ew_cfg zero, r5, zero, 2
0020d0  cdd01000  hp_ssmul r1, r1, r1, 0
0020d4  9b1002e0  ori r1, r4, 3584
0020d8  0d000026  ew_cfg zero, zero, zero, 19
0020dc  1d900d00  unlock r27
0020e0  1d800d00  lock zero, r27
0020e4  0d000002  ew_cfg zero, zero, zero, 1
0020e8  0d110000  ewcoeff_cfg r2, zero, zero, 0
0020ec  8d010006  ew_cfg r3, zero, zero, 3
0020f0  8d8d0d26  ew_cfg r27, r27, zero, 19
0020f4  0d800204  ew_cfg zero, r5, zero, 2
0020f8  8d300008  ewcoeff_nlf_cfg r1, 4
0020fc  9b1003e0  ori r1, r6, 3584
002100  0d800204  ew_cfg zero, r5, zero, 2
002104  cdd01000  hp_ssmul r1, r1, r1, 0
002108  9b1002e8  ori r1, r4, 3712
00210c  0d800204  ew_cfg zero, r5, zero, 2
002110  8d300008  ewcoeff_nlf_cfg r1, 4
002114  9b1003e8  ori r1, r6, 3712
002118  0d800204  ew_cfg zero, r5, zero, 2
00211c  cdd01000  hp_ssmul r1, r1, r1, 0
002120  9b1002f0  ori r1, r4, 3840
002124  0d000026  ew_cfg zero, zero, zero, 19
002128  1d900d00  unlock r27
00212c  1d800d00  lock zero, r27
002130  0d000002  ew_cfg zero, zero, zero, 1
002134  0d110000  ewcoeff_cfg r2, zero, zero, 0
002138  8d010006  ew_cfg r3, zero, zero, 3
00213c  8d8d0d26  ew_cfg r27, r27, zero, 19
002140  0d800204  ew_cfg zero, r5, zero, 2
002144  8d300008  ewcoeff_nlf_cfg r1, 4
002148  9b1003f0  ori r1, r6, 3840
00214c  0d800204  ew_cfg zero, r5, zero, 2
002150  cdd01000  hp_ssmul r1, r1, r1, 0
002154  9b1002f8  ori r1, r4, 3968
002158  0d800204  ew_cfg zero, r5, zero, 2
00215c  8d300008  ewcoeff_nlf_cfg r1, 4
002160  9b1003f8  ori r1, r6, 3968
002164  0d800204  ew_cfg zero, r5, zero, 2
002168  cdd01000  hp_ssmul r1, r1, r1, 0
00216c  ab000200  lui r1, 32
002170  0d000026  ew_cfg zero, zero, zero, 19
002174  1d900d00  unlock r27
002178  1d800d00  lock zero, r27
00217c  0d000002  ew_cfg zero, zero, zero, 1
002180  0d110000  ewcoeff_cfg r2, zero, zero, 0
002184  2b010100  lui r2, 16
002188  8d010006  ew_cfg r3, zero, zero, 3
00218c  8d8d0d26  ew_cfg r27, r27, zero, 19
002190  0d800204  ew_cfg zero, r5, zero, 2
002194  8d300008  ewcoeff_nlf_cfg r1, 4
002198  9b900008  ori r1, r1, 128
00219c  0d800204  ew_cfg zero, r5, zero, 2
0021a0  4d512100  hp_ssmul r2, r2, r2, 0
0021a4  0d800204  ew_cfg zero, r5, zero, 2
0021a8  8d300008  ewcoeff_nlf_cfg r1, 4
0021ac  9b100108  ori r1, r2, 128
0021b0  0d800204  ew_cfg zero, r5, zero, 2
0021b4  cdd01000  hp_ssmul r1, r1, r1, 0
0021b8  9f602000  addli r1, zero, 22
0021bc  0d000026  ew_cfg zero, zero, zero, 19
0021c0  1d900d00  unlock r27
0021c4  7d800300  xsignal r7, 0
0021c8  7d900000  xwait r1, 0
0021cc  1d800d00  lock zero, r27
0021d0  ab000042  lui r1, 270336
0021d4  0d000002  ew_cfg zero, zero, zero, 1
0021d8  0d101000  ewcoeff_cfg zero, zero, r1, 0
0021dc  9f402000  addli r1, zero, 20
0021e0  8d0d0006  ew_cfg r27, zero, zero, 3
0021e4  0d000404  ew_cfg zero, r8, zero, 2
0021e8  8d8dbd27  ew_cfg r27, r27, r27, 19
0021ec  ed8cdc94  dsselect r25, r25, r13, 74
0021f0  0d000026  ew_cfg zero, zero, zero, 19
0021f4  1d900d00  unlock r27
0021f8  7d800000  xsignal r1, 0
0021fc  9f603000  addli r1, zero, 30
002200  7d800000  xsignal r1, 0
002204  e300afff  loadli.w r1,  -48(r30)
002208  b7a200f0  beq r1, zero, -8024
00220c  db150000  j 172
002210  371f7c01  beq r24, r23, 964
002214  37326c03  beq r24, r22, 1164
002218  9f700000  addli r1, zero, 7
00221c  3b501c02  bneq r24, r1, 1044
002220  9f201000  addli r1, zero, 10
002224  670d0ffe  storeli.w zero, -48(r30)
002228  1f020000  addli r4, zero, 0
00222c  9f020000  addli r5, zero, 0
002230  9f010000  addli r3, zero, 0
002234  9f030000  addli r7, zero, 0
002238  1f110000  addli r2, zero, 1
00223c  7d900000  xwait r1, 0
002240  9f501000  addli r1, zero, 13
002244  7d900000  xwait r1, 0
002248  9f300000  addli r1, zero, 3
00224c  1d000000  lock zero, zero
002250  81000000  ds_cfg r1, zero, 0
002254  aba00000  lui r1, 10
002258  010d0002  ds_cfg r26, zero, 1
00225c  010d001c  ds_cfg r26, zero, 14
002260  010d001a  ds_cfg r26, zero, 13
002264  4180a005  shuffle_coa zero, r1, r26, 2
002268  9f301000  addli r1, zero, 11
00226c  1d100000  unlock zero
002270  7d800000  xsignal r1, 0
002274  9f401000  addli r1, zero, 12
002278  db2afcff  j -7852
00227c  9f503000  addli r1, zero, 29
002280  00200100  mfence { sm }
002284  9f2d0000  addli r27, zero, 2
002288  9f4b0000  addli r23, zero, 4
00228c  7d800000  xsignal r1, 0
002290  9f204000  addli r1, zero, 34
002294  7d800000  xsignal r1, 0
002298  9f504000  addli r1, zero, 37
00229c  7d800000  xsignal r1, 0
0022a0  9f005000  addli r1, zero, 40
0022a4  7d800000  xsignal r1, 0
0022a8  9f205000  addli r1, zero, 42
0022ac  7d800000  xsignal r1, 0
0022b0  634e9fff  loadli.w r28,  -52(r30)
0022b4  6306afff  loadli.w r12,  -48(r30)
0022b8  9f402000  addli r1, zero, 20
0022bc  7d900d00  xwait r27, 0
0022c0  7d900b00  xwait r23, 0
0022c4  33010028  zext_int2long r[3:4], zero
0022c8  7d900000  xwait r1, 0
0022cc  9f103000  addli r1, zero, 25
0022d0  7d900000  xwait r1, 0
0022d4  9f603000  addli r1, zero, 30
0022d8  7d900000  xwait r1, 0
0022dc  9f205000  addli r1, zero, 42
0022e0  7d900000  xwait r1, 0
0022e4  3d000000  xfence
0022e8  00a00300  mfence { lm, sm, gm }
0022ec  73342ffa  store.d r[3:4], -88(r30)
0022f0  e344cfff  loadli.w r9,  -28(r30)
0022f4  db030000  j 28
0022f8  eb508ffb  load.d r[2:3], -72(r30)
0022fc  eb510ffb  load.d r[4:5], -80(r30)
002300  1f6b0000  addli r22, zero, 6
002304  93a01104  setlt.ul r1, r[4:5], r[2:3]
002308  27910100  addli.d r[3:4], r[4:5], 1
00230c  b7e60000  beq r1, zero, 440
002310  9f700000  addli r1, zero, 7
002314  eb538ffa  load.d r[8:9], -88(r30)
002318  17326103  sll.d r[5:6], r[3:4], r22
00231c  73382ffa  store.d r[3:4], -80(r30)
002320  173d1102  sll.d r[27:28], r[3:4], r1
002324  73384ffc  store.d r[5:6], -48(r30)
002328  5b080000  j 64
00232c  8b10cb10  add.s r1, r22, r12
002330  6b510fff  load.d r[3:4], -16(r30)
002334  a7c30300  addli.d r[8:9], r[8:9], 4
002338  e344cfff  loadli.w r9,  -28(r30)
00233c  73e08001  stores.w r24, 0(r1)
002340  8b104b10  add.s r1, r22, r4
002344  6302dfff  loadli.w r4,  -24(r30)
002348  13a12302  setneq.d r2, r[8:9], r[3:4]
00234c  8b11db10  add.s r3, r22, r13
002350  73e02001  stores.w r18, 0(r1)
002354  0b124b10  add.s r4, r22, r4
002358  73e0e100  stores.w r14, 0(r3)
00235c  7360c201  stores.w r28, 0(r4)
002360  634e9fff  loadli.w r28,  -52(r30)
002364  375e01fe  beq r2, zero, -108
002368  eb500ffd  load.d r[2:3], -48(r30)
00236c  6302cfff  loadli.w r4,  -32(r30)
002370  e342bfff  loadli.w r5,  -36(r30)
002374  1f8a0600  addli r20, r13, 0
002378  ab460000  lui r13, 4
00237c  9f0a0600  addli r21, r12, 0
002380  8ba01310  add.ul r[2:3], r[8:9], r[2:3]
002384  1bbb2000  slli r22, r1, 2
002388  8b10cb11  add.s r1, r22, r28
00238c  6f4ccb00  loads.w r24, 12(r22)
002390  6f498b00  loads.w r18, 8(r22)
002394  6f4e4b00  loads.w r28, 4(r22)
002398  6f470b00  loads.w r14, 0(r22)
00239c  efc10000  loads.w r3, 0(r1)
0023a0  efcc4000  loads.w r25, 4(r1)
0023a4  6fc88000  loads.w r16, 8(r1)
0023a8  6fc3c000  loads.w r6, 12(r1)
0023ac  8ba0a311  add.ul r[2:3], r[8:9], r[27:28]
0023b0  0b959010  add.s r10, r1, r9
0023b4  e304bfff  loadli.w r9,  -40(r30)
0023b8  0b924010  add.s r4, r1, r4
0023bc  8b925010  add.s r5, r1, r5
0023c0  ef150500  loads.bu r11, 0(r10)
0023c4  8b909010  add.s r1, r1, r9
0023c8  6f110200  loads.bu r2, 0(r4)
0023cc  1b924600  ori r4, r13, 4
0023d0  ef940200  loads.bu r9, 0(r5)
0023d4  9b928600  ori r5, r13, 8
0023d8  ef9b0000  loads.bu r23, 0(r1)
0023dc  8b10db10  add.s r1, r22, r13
0023e0  efc70000  loads.w r15, 0(r1)
0023e4  8b104b10  add.s r1, r22, r4
0023e8  6fc20000  loads.w r4, 0(r1)
0023ec  8b105b10  add.s r1, r22, r5
0023f0  e342ffff  loadli.w r5,  -4(r30)
0023f4  efc90000  loads.w r19, 0(r1)
0023f8  ab0080ff  lui r1, 1046528
0023fc  8b125b10  add.s r5, r22, r5
002400  13061300  seteq r12, r6, r1
002404  6fc50200  loads.w r10, 0(r5)
002408  efc84200  loads.w r17, 4(r5)
00240c  efc08200  loads.w r1, 8(r5)
002410  17167601  or r12, r12, r23
002414  1b061600  andi r12, r12, 1
002418  3b300600  bneq r12, zero, 12
00241c  efc2c200  loads.w r5, 12(r5)
002420  5b020000  j 16
002424  9b92c600  ori r5, r13, 12
002428  8b125b10  add.s r5, r22, r5
00242c  efc20200  loads.w r5, 0(r5)
002430  2b0680ff  lui r12, 1046528
002434  9f060a00  addli r13, r20, 0
002438  1306c800  seteq r12, r16, r12
00243c  9715b600  or r11, r12, r11
002440  9b851500  andi r11, r11, 1
002444  3ba00500  bneq r11, zero, 8
002448  9f890000  addli r19, r1, 0
00244c  ab0080ff  lui r1, 1046528
002450  1f860a00  addli r12, r21, 0
002454  93801c00  seteq r1, r25, r1
002458  97909000  or r1, r1, r9
00245c  ab04807f  lui r9, 522240
002460  9b801000  andi r1, r1, 1
002464  3ba00000  bneq r1, zero, 8
002468  1f820800  addli r4, r17, 0
00246c  ab0080ff  lui r1, 1046528
002470  93801100  seteq r1, r3, r1
002474  97902000  or r1, r1, r2
002478  9b801000  andi r1, r1, 1
00247c  37f00000  beq r1, zero, 28
002480  bb809100  bneq r3, r9, 32
002484  bb909c00  bneq r25, r9, 36
002488  bb209800  bneq r16, r9, 40
00248c  6342dfff  loadli.w r4,  -20(r30)
002490  377a93fe  beq r6, r9, -356
002494  5b050000  j 40
002498  9f070500  addli r15, r10, 0
00249c  b7af91fe  beq r3, r9, -24
0024a0  1f870700  addli r14, r15, 0
0024a4  b79f9cfe  beq r25, r9, -28
0024a8  1f0e0200  addli r28, r4, 0
0024ac  b70f98fe  beq r16, r9, -32
0024b0  1f890900  addli r18, r19, 0
0024b4  6342dfff  loadli.w r4,  -20(r30)
0024b8  b75993fe  beq r6, r9, -396
0024bc  1f8c0200  addli r24, r5, 0
0024c0  dbcdffff  j -404
0024c4  9f300000  addli r1, zero, 3
0024c8  00200100  mfence { sm }
0024cc  9f540000  addli r9, zero, 5
0024d0  003c0002  core_id r24
0024d4  9f2d0000  addli r27, zero, 2
0024d8  1f0d8000  addli r26, zero, 64
0024dc  9f4b0000  addli r23, zero, 4
0024e0  1f7a6000  addli r20, zero, 55
0024e4  7d800000  xsignal r1, 0
0024e8  9f702000  addli r1, zero, 23
0024ec  7d800400  xsignal r9, 0
0024f0  7d800000  xsignal r1, 0
0024f4  9f203000  addli r1, zero, 26
0024f8  7d800000  xsignal r1, 0
0024fc  9f703000  addli r1, zero, 31
002500  7d800000  xsignal r1, 0
002504  9f305000  addli r1, zero, 43
002508  7d800000  xsignal r1, 0
00250c  e34cffff  loadli.w r25,  -4(r30)
002510  bb060cee  bneq r24, zero, -8800
002514  6b510ff9  load.d r[3:4], -112(r30)
002518  9f102000  addli r1, zero, 17
00251c  6b538f01  load.d r[7:8], 24(r30)
002520  9f120000  addli r5, zero, 1
002524  97301102  sll.d r[2:3], r[3:4], r1
002528  eb518ff9  load.d r[4:5], -104(r30)
00252c  8b201310  add.ul r[2:3], r[7:8], r[2:3]
002530  1f733000  addli r6, zero, 31
002534  97b15102  sll.d r[4:5], r[4:5], r5
002538  7d100300  xwait r6, 0
00253c  1d800400  lock zero, r9
002540  8ba03010  add.ul r[2:3], r[2:3], r[4:5]
002544  95020000  dma_cfg r5, zero, zero, 0
002548  9f010002  addli r3, zero, 256
00254c  15800202  dma_cfg zero, r5, zero, 1
002550  15010004  dma_cfg r2, zero, zero, 2
002554  95803606  dma_cfg r1, r13, r3, 3
002558  9f000010  addli r1, zero, 2048
00255c  9580a109  dma_cfg r1, r3, r26, 4
002560  9f004000  addli r1, zero, 32
002564  35000000  dma_run zero
002568  1d900400  unlock r9
00256c  7d800000  xsignal r1, 0
002570  5ba8fbff  j -8896
002574  9f301000  addli r1, zero, 11
002578  670d0ffe  storeli.w zero, -48(r30)
00257c  9f130000  addli r7, zero, 1
002580  6b558f00  load.d r[11:12], 8(r30)
002584  1f030001  addli r6, zero, 128
002588  1f020000  addli r4, zero, 0
00258c  1f010000  addli r2, zero, 0
002590  9f020000  addli r5, zero, 0
002594  9f010000  addli r3, zero, 0
002598  7d900000  xwait r1, 0
00259c  6b548ff9  load.d r[9:10], -104(r30)
0025a0  1d800b00  lock zero, r23
0025a4  aba00000  lui r1, 10
0025a8  95830300  dma_cfg r7, r7, zero, 0
0025ac  17347402  sll.d r[9:10], r[9:10], r7
0025b0  0b248510  add.ul r[9:10], r[11:12], r[9:10]
0025b4  15800404  dma_cfg zero, r9, zero, 2
0025b8  95006406  dma_cfg r1, r8, r6, 3
0025bc  9f000010  addli r1, zero, 2048
0025c0  1583a009  dma_cfg r6, r1, r26, 4
0025c4  35000000  dma_run zero
0025c8  1d900b00  unlock r23
0025cc  9f201000  addli r1, zero, 10
0025d0  dbbffbff  j -8708
0025d4  9f001000  addli r1, zero, 8
0025d8  670d0ffe  storeli.w zero, -48(r30)
0025dc  1f120000  addli r4, zero, 1
0025e0  1f010000  addli r2, zero, 0
0025e4  9f020000  addli r5, zero, 0
0025e8  9f010000  addli r3, zero, 0
0025ec  9f030000  addli r7, zero, 0
0025f0  7d900000  xwait r1, 0
0025f4  9f401000  addli r1, zero, 12
0025f8  7d900000  xwait r1, 0
0025fc  9f702000  addli r1, zero, 23
002600  7d900000  xwait r1, 0
002604  1d000200  lock zero, r4
002608  9f101000  addli r1, zero, 9
00260c  090dad01  mm_cfg r26, r26, r26, 0
002610  898d4d04  mm_cfg r27, r27, r4, 2
002614  a90c000a  mm r25, zero, zero, 5
002618  1d100200  unlock r4
00261c  7d800000  xsignal r1, 0
002620  9f501000  addli r1, zero, 13
002624  7d800000  xsignal r1, 0
002628  9f002000  addli r1, zero, 16
00262c  5bb4fbff  j -8800
002630  e303afff  loadli.w r7,  -48(r30)
002634  1f820300  addli r4, r7, 0
002638  1f810300  addli r2, r7, 0
00263c  9f820300  addli r5, r7, 0
002640  9f810300  addli r3, r7, 0
002644  dbb1fbff  j -8820
002648  9f101000  addli r1, zero, 9
00264c  670d0ffe  storeli.w zero, -48(r30)
002650  7d100b00  xwait r22, 0
002654  1f020000  addli r4, zero, 0
002658  1f010000  addli r2, zero, 0
00265c  9f010000  addli r3, zero, 0
002660  9f030000  addli r7, zero, 0
002664  9f120000  addli r5, zero, 1
002668  7d900000  xwait r1, 0
00266c  9f300000  addli r1, zero, 3
002670  1d000000  lock zero, zero
002674  81000000  ds_cfg r1, zero, 0
002678  ab800000  lui r1, 8
00267c  010d0002  ds_cfg r26, zero, 1
002680  010d001c  ds_cfg r26, zero, 14
002684  010d001a  ds_cfg r26, zero, 13
002688  2190a003  shuffle_batch zero, r1, r26, 1
00268c  9f700000  addli r1, zero, 7
002690  1d100000  unlock zero
002694  7d800000  xsignal r1, 0
002698  9f001000  addli r1, zero, 8
00269c  5ba6fbff  j -8912
0026a0  6b540ff9  load.d r[9:10], -112(r30)
0026a4  9f501000  addli r1, zero, 13
0026a8  6b550f00  load.d r[11:12], 0(r30)
0026ac  9f110000  addli r3, zero, 1
0026b0  670d0ffe  storeli.w zero, -48(r30)
0026b4  1f030001  addli r6, zero, 128
0026b8  1f020000  addli r4, zero, 0
0026bc  1f010000  addli r2, zero, 0
0026c0  9f020000  addli r5, zero, 0
0026c4  9f030000  addli r7, zero, 0
0026c8  17341402  sll.d r[9:10], r[9:10], r1
0026cc  9f700000  addli r1, zero, 7
0026d0  7d900000  xwait r1, 0
0026d4  0b248510  add.ul r[9:10], r[11:12], r[9:10]
0026d8  1d800b00  lock zero, r23
0026dc  ab800000  lui r1, 8
0026e0  6b550f01  load.d r[11:12], 16(r30)
0026e4  95810100  dma_cfg r3, r3, zero, 0
0026e8  15800404  dma_cfg zero, r9, zero, 2
0026ec  95006406  dma_cfg r1, r8, r6, 3
0026f0  9f701000  addli r1, zero, 15
0026f4  1503a309  dma_cfg r6, r6, r26, 4
0026f8  35000000  dma_run zero
0026fc  1d900b00  unlock r23
002700  6b548ff9  load.d r[9:10], -104(r30)
002704  7d000b00  xsignal r22, 0
002708  7d900000  xwait r1, 0
00270c  1d800b00  lock zero, r23
002710  abc00000  lui r1, 12
002714  15800100  dma_cfg zero, r3, zero, 0
002718  17343402  sll.d r[9:10], r[9:10], r3
00271c  0b248510  add.ul r[9:10], r[11:12], r[9:10]
002720  15800404  dma_cfg zero, r9, zero, 2
002724  95006406  dma_cfg r1, r8, r6, 3
002728  9f000002  addli r1, zero, 256
00272c  95003308  dma_cfg r1, r6, r3, 4
002730  35000000  dma_run zero
002734  1d900b00  unlock r23
002738  9f601000  addli r1, zero, 14
00273c  5b92fbff  j -9072
002740  7d000000  xsignal zero, 0
002744  bb600c00  bneq r24, zero, 56
002748  9f200000  addli r1, zero, 2
00274c  7d100000  xwait zero, 0
002750  7d100000  xwait zero, 0
002754  7d100000  xwait zero, 0
002758  7d100000  xwait zero, 0
00275c  7d100000  xwait zero, 0
002760  7d100000  xwait zero, 0
002764  7d100000  xwait zero, 0
002768  7d100000  xwait zero, 0
00276c  1d800000  lock zero, r1
002770  0d000020  ew_cfg zero, zero, zero, 16
002774  1d900000  unlock r1
002778  7d400000  xsignal_mode_cfg zero
00277c  9f8e0e01  addli sp, sp, 128
002780  00a00300  mfence { lm, sm, gm }
002784  00100000  exit
002788  00100000  exit
00278c  00100000  exit
002790  00100000  exit
002794  00100000  exit
002798  00100000  exit
00279c  00100000  exit
0027a0  00100000  exit
0027a4  00100000  exit
0027a8  00100000  exit
0027ac  00100000  exit
0027b0  00100000  exit
0027b4  00100000  exit
0027b8  00100000  exit
0027bc  00100000  exit
0027c0  00100000  exit
0027c4  00100000  exit
0027c8  00100000  exit
0027cc  00100000  exit
0027d0  00100000  exit
0027d4  00100000  exit
0027d8  00100000  exit
0027dc  00100000  exit
0027e0  00100000  exit
0027e4  00100000  exit
0027e8  00100000  exit
0027ec  00100000  exit
0027f0  00100000  exit
0027f4  00100000  exit
0027f8  00100000  exit
0027fc  00100000  exit
002800  00100000  exit
002804  00100000  exit
002808  00100000  exit
00280c  00100000  exit
002810  00100000  exit
002814  00100000  exit
002818  00100000  exit
00281c  00100000  exit
002820  00100000  exit
002824  00100000  exit
002828  00100000  exit
00282c  00100000  exit
002830  00100000  exit
002834  00100000  exit
002838  00100000  exit
00283c  00100000  exit
002840  00100000  exit
002844  00100000  exit
002848  00100000  exit
00284c  00100000  exit
002850  00100000  exit
002854  00100000  exit
002858  00100000  exit
00285c  00100000  exit
002860  00100000  exit
002864  00100000  exit
002868  00100000  exit
00286c  00100000  exit
002870  00100000  exit
002874  00100000  exit
002878  00100000  exit
00287c  00100000  exit
002880  00100000  exit
002884  00100000  exit
002888  00100000  exit
00288c  00100000  exit
002890  00100000  exit
002894  00100000  exit
002898  00100000  exit
00289c  00100000  exit
0028a0  00100000  exit
0028a4  00100000  exit
0028a8  00100000  exit
0028ac  00100000  exit
0028b0  00100000  exit
0028b4  00100000  exit
0028b8  00100000  exit
0028bc  00100000  exit
0028c0  00100000  exit
0028c4  00100000  exit
0028c8  00100000  exit
0028cc  00100000  exit
0028d0  00100000  exit
0028d4  00100000  exit
0028d8  00100000  exit
0028dc  00100000  exit
0028e0  00100000  exit
0028e4  00100000  exit
0028e8  00100000  exit
0028ec  00100000  exit
0028f0  00100000  exit
0028f4  00100000  exit
0028f8  00100000  exit
0028fc  00100000  exit
002900  00100000  exit
002904  00100000  exit
002908  00100000  exit
00290c  00100000  exit
002910  00100000  exit
002914  00100000  exit
002918  00100000  exit
00291c  00100000  exit
002920  00100000  exit
002924  00100000  exit
002928  00100000  exit
00292c  00100000  exit
002930  00100000  exit
002934  00100000  exit
002938  00100000  exit
00293c  00100000  exit
002940  00100000  exit
002944  00100000  exit
002948  00100000  exit
00294c  00100000  exit
002950  00100000  exit
002954  00100000  exit
002958  00100000  exit
00295c  00100000  exit
002960  00100000  exit
002964  00100000  exit
002968  00100000  exit
00296c  00100000  exit
002970  00100000  exit
002974  00100000  exit
002978  00100000  exit
00297c  00100000  exit
002980  00100000  exit
002984  00100000  exit
002988  00100000  exit
00298c  00100000  exit
002990  00100000  exit
002994  00100000  exit
002998  00100000  exit
00299c  00100000  exit
0029a0  00100000  exit
0029a4  00100000  exit
0029a8  00100000  exit
0029ac  00100000  exit
0029b0  00100000  exit
0029b4  00100000  exit
0029b8  00100000  exit
0029bc  00100000  exit
0029c0  00100000  exit
0029c4  00100000  exit
