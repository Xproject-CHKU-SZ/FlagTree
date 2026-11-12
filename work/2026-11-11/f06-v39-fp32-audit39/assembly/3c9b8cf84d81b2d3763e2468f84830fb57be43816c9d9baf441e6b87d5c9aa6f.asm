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
0000bc  00310002  core_id r2
0000c0  1f8f5e00  addli r30, sp, 40
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100100  beq r2, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b90f1ff  ori r1, r3, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db2c0000  j 356
0000ec  9f220000  addli r5, zero, 2
0000f0  fdd00000  uni_sram_cfg r1, r1
0000f4  1f430000  addli r6, zero, 4
0000f8  eb510f02  load.d r[4:5], 32(r30)
0000fc  9f030020  addli r7, zero, 4096
000100  1d800200  lock zero, r5
000104  8d000020  ew_cfg r1, zero, zero, 16
000108  1d900200  unlock r5
00010c  1d000300  lock zero, r6
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15000204  dma_cfg zero, r4, zero, 2
000118  15807106  dma_cfg zero, r3, r7, 3
00011c  9f014000  addli r3, zero, 32
000120  1f020008  addli r4, zero, 1024
000124  15001008  dma_cfg zero, zero, r1, 4
000128  35000000  dma_run zero
00012c  1d100300  unlock r6
000130  7d800000  xsignal r1, 0
000134  7d900000  xwait r1, 0
000138  1d000000  lock zero, zero
00013c  81020000  ds_cfg r5, zero, 0
000140  01000002  ds_cfg zero, zero, 1
000144  01000016  ds_cfg zero, zero, 11
000148  8101001a  ds_cfg r3, zero, 13
00014c  9f310000  addli r3, zero, 3
000150  0102001c  ds_cfg r4, zero, 14
000154  a1134008  shuffle_batch r7, zero, r4, 4
000158  1d100000  unlock zero
00015c  7d800000  xsignal r1, 0
000160  7d900000  xwait r1, 0
000164  1d800200  lock zero, r5
000168  ab100100  lui r1, 17
00016c  0da00300  ewtable_cfg r7, 0
000170  0da00002  ewtable_cfg r1, 1
000174  abf0ffff  lui r1, 1048575
000178  1d900200  unlock r5
00017c  7d000000  xsignal zero, 0
000180  7d100000  xwait zero, 0
000184  9b90f0ff  ori r1, r1, 4095
000188  80a10004  csr_set csr3, r1
00018c  9f500000  addli r1, zero, 5
000190  00d00100  sync_group
000194  7d800000  xsignal r1, 0
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  7d800000  xsignal r1, 0
0001a4  7d800000  xsignal r1, 0
0001a8  7d800100  xsignal r3, 0
0001ac  7d800100  xsignal r3, 0
0001b0  7d800100  xsignal r3, 0
0001b4  7d800100  xsignal r3, 0
0001b8  7d800100  xsignal r3, 0
0001bc  9f101000  addli r1, zero, 9
0001c0  9f710000  addli r3, zero, 7
0001c4  7d800000  xsignal r1, 0
0001c8  7d800000  xsignal r1, 0
0001cc  7d800000  xsignal r1, 0
0001d0  7d800000  xsignal r1, 0
0001d4  7d800000  xsignal r1, 0
0001d8  7d800100  xsignal r3, 0
0001dc  7d800100  xsignal r3, 0
0001e0  7d800100  xsignal r3, 0
0001e4  7d800100  xsignal r3, 0
0001e8  7d800100  xsignal r3, 0
0001ec  9f301000  addli r1, zero, 11
0001f0  9f511000  addli r3, zero, 13
0001f4  7d800000  xsignal r1, 0
0001f8  7d800000  xsignal r1, 0
0001fc  7d800000  xsignal r1, 0
000200  7d800000  xsignal r1, 0
000204  7d800000  xsignal r1, 0
000208  7d800100  xsignal r3, 0
00020c  7d800100  xsignal r3, 0
000210  7d800100  xsignal r3, 0
000214  7d800100  xsignal r3, 0
000218  7d800100  xsignal r3, 0
00021c  9f701000  addli r1, zero, 15
000220  9f012000  addli r3, zero, 16
000224  7d800000  xsignal r1, 0
000228  7d800000  xsignal r1, 0
00022c  7d800000  xsignal r1, 0
000230  7d800000  xsignal r1, 0
000234  7d800000  xsignal r1, 0
000238  7d800100  xsignal r3, 0
00023c  7d800100  xsignal r3, 0
000240  7d800100  xsignal r3, 0
000244  7d800100  xsignal r3, 0
000248  7d800100  xsignal r3, 0
00024c  e3005f00  loadli.w r1,  40(r30)
000250  e3415f00  loadli.w r3,  44(r30)
000254  80d20002  load_param_i r5, 1
000258  63026f00  loadli.w r4,  48(r30)
00025c  8b901120  mul.s r1, r3, r1
000260  9f810200  addli r3, r5, 0
000264  8b914050  fmac.s r3, r1, r4
000268  0b924020  mul.s r4, r1, r4
00026c  9ff1f1ff  addli r3, r3, -1
000270  8b915130  div.s r3, r3, r5
000274  80520002  load_param_i r5, 0
000278  8b905120  mul.s r1, r3, r5
00027c  8b915150  fmac.s r3, r3, r5
000280  8b914140  min.s r3, r3, r4
000284  cb951102  ble.s r3, r1, 1380
000288  33930028  sext_int2long r[7:8], r1
00028c  ab800200  lui r1, 40
000290  b3910128  sext_int2long r[4:5], r3
000294  6b550f00  load.d r[11:12], 0(r30)
000298  9f640000  addli r9, zero, 6
00029c  9f4c0000  addli r25, zero, 4
0002a0  9f290000  addli r19, zero, 2
0002a4  2b0a803f  lui r20, 260096
0002a8  1f0c0040  addli r24, zero, 8192
0002ac  9f0d0000  addli r27, zero, 0
0002b0  9b900028  ori r1, r1, 640
0002b4  733c3ffe  store.d r[4:5], -8(r30)
0002b8  1f72f00f  addli r4, zero, 2047
0002bc  ab81ffff  lui r3, 1048568
0002c0  e74e1ffe  storeli.w r1, -20(r30)
0002c4  ab800d00  lui r1, 216
0002c8  73383ffe  store.d r[4:5], -16(r30)
0002cc  ab210300  lui r3, 50
0002d0  9b90d0b4  ori r1, r1, 2893
0002d4  e70e1ffe  storeli.w r1, -24(r30)
0002d8  9b900128  ori r1, r3, 640
0002dc  abf17f7f  lui r3, 522239
0002e0  674e1ffe  storeli.w r1, -28(r30)
0002e4  abf07fff  lui r1, 1046527
0002e8  9b90f0ff  ori r1, r1, 4095
0002ec  670e1ffe  storeli.w r1, -32(r30)
0002f0  9b90f1ff  ori r1, r3, 4095
0002f4  e74d1ffe  storeli.w r1, -36(r30)
0002f8  e3006f00  loadli.w r1,  48(r30)
0002fc  e3415f00  loadli.w r3,  44(r30)
000300  1f010002  addli r2, zero, 256
000304  1f041000  addli r8, zero, 8
000308  8b101330  div.s r1, r6, r1
00030c  8b903030  div.s r1, r1, r3
000310  8b912030  div.s r3, r1, r2
000314  1f510000  addli r2, zero, 5
000318  1bb23100  slli r4, r3, 3
00031c  9bb18100  slli r3, r3, 8
000320  8b124418  sub.s r5, r8, r4
000324  8b913018  sub.s r3, r1, r3
000328  8b928240  min.s r5, r5, r8
00032c  1f540000  addli r8, zero, 5
000330  8b905038  mod.s r1, r1, r5
000334  0b985130  div.s r16, r3, r5
000338  0b9d8d38  mod.s r26, r27, r8
00033c  8b111210  add.s r3, r4, r1
000340  33020828  zext_int2long r[5:6], r16
000344  9b30ed00  slli r1, r26, 14
000348  97388202  sll.d r[18:19], r[5:6], r8
00034c  1f028003  addli r4, zero, 448
000350  33860128  zext_int2long r[13:14], r3
000354  80320002  core_id r5
000358  33070228  zext_int2long r[15:16], r4
00035c  bb809200  bneq r5, r9, 32
000360  1f720000  addli r4, zero, 7
000364  9f421000  addli r5, zero, 12
000368  13023204  setlt.u r4, r4, r3
00036c  973a5602  sll.d r[22:23], r[13:14], r5
000370  3b310200  bneq r4, zero, 76
000374  33020028  zext_int2long r[5:6], zero
000378  db090000  j 76
00037c  bbe53201  bneq r5, r19, 376
000380  7d900900  xwait r19, 0
000384  7d100100  xwait r2, 0
000388  1d000000  lock zero, zero
00038c  1f028000  addli r4, zero, 64
000390  9b3add00  slli r21, r26, 13
000394  81090000  ds_cfg r19, zero, 0
000398  01020002  ds_cfg r4, zero, 1
00039c  0102001c  ds_cfg r4, zero, 14
0003a0  0102001a  ds_cfg r4, zero, 13
0003a4  a1904002  shuffle_batch r1, r1, r4, 1
0003a8  1f320000  addli r4, zero, 3
0003ac  1d100000  unlock zero
0003b0  7d000200  xsignal r4, 0
0003b4  7d800c00  xsignal r25, 0
0003b8  db0b0000  j 92
0003bc  6b520fff  load.d r[5:6], -16(r30)
0003c0  17824a02  and.d r[5:6], r[22:23], r[5:6]
0003c4  0bb24a18  sub.sl r[5:6], r[22:23], r[5:6]
0003c8  1f641000  addli r8, zero, 14
0003cc  17529202  sra.d r[5:6], r[5:6], r9
0003d0  8b3ae240  min.sl r[22:23], r[5:6], r[15:16]
0003d4  0bb24a18  sub.sl r[5:6], r[22:23], r[5:6]
0003d8  973a8602  sll.d r[22:23], r[13:14], r8
0003dc  1f340000  addli r8, zero, 3
0003e0  7d100400  xwait r8, 0
0003e4  1d800c00  lock zero, r25
0003e8  8b2a5511  add.ul r[22:23], r[11:12], r[22:23]
0003ec  1f028200  addli r4, r4, 64
0003f0  9f020002  addli r5, zero, 256
0003f4  15000000  dma_cfg zero, zero, zero, 0
0003f8  15000b04  dma_cfg zero, r22, zero, 2
0003fc  95805a06  dma_cfg r1, r21, r5, 3
000400  9b3add00  slli r21, r26, 13
000404  95824208  dma_cfg r5, r5, r4, 4
000408  35000000  dma_run zero
00040c  1d900c00  unlock r25
000410  7d800900  xsignal r19, 0
000414  1b325800  slli r4, r16, 5
000418  9f02c007  addli r5, zero, 992
00041c  1f044000  addli r8, zero, 32
000420  1b387d00  slli r16, r26, 7
000424  338b0228  zext_int2long r[23:24], r5
000428  33020228  zext_int2long r[5:6], r4
00042c  33040428  zext_int2long r[9:10], r8
000430  0b2b6241  min.ul r[23:24], r[5:6], r[23:24]
000434  270b4b00  addli.d r[23:24], r[23:24], 32
000438  0b2b4b48  max.ul r[23:24], r[23:24], r[5:6]
00043c  0b324b18  sub.sl r[5:6], r[23:24], r[5:6]
000440  0b2b8240  min.ul r[23:24], r[5:6], r[9:10]
000444  2be20100  lui r4, 30
000448  9f640000  addli r9, zero, 6
00044c  80320002  core_id r5
000450  0b1e4810  add.s r28, r16, r4
000454  3ba19200  bneq r5, r9, 72
000458  9f301000  addli r1, zero, 11
00045c  97b13803  sll.d r[4:5], r[18:19], r19
000460  7d900000  xwait r1, 0
000464  eb500f01  load.d r[2:3], 16(r30)
000468  1d800c00  lock zero, r25
00046c  15000000  dma_cfg zero, zero, zero, 0
000470  8ba13010  add.ul r[4:5], r[2:3], r[4:5]
000474  9b302b00  slli r1, r22, 2
000478  1f110000  addli r2, zero, 1
00047c  15000204  dma_cfg zero, r4, zero, 2
000480  158e1106  dma_cfg r28, r3, r1, 3
000484  9f000001  addli r1, zero, 128
000488  95802008  dma_cfg r1, r1, r2, 4
00048c  35000000  dma_run zero
000490  1d900c00  unlock r25
000494  9f201000  addli r1, zero, 10
000498  5b5e0000  j 752
00049c  1b38dd00  slli r16, r26, 13
0004a0  1b120228  ori r4, r4, 640
0004a4  0b1d4810  add.s r26, r16, r4
0004a8  bbf29201  bneq r5, r25, 188
0004ac  9f011000  addli r3, zero, 8
0004b0  7d900c00  xwait r25, 0
0004b4  1f120000  addli r4, zero, 1
0004b8  9f028000  addli r5, zero, 64
0004bc  7d900100  xwait r3, 0
0004c0  9f511000  addli r3, zero, 13
0004c4  7d900100  xwait r3, 0
0004c8  9f014000  addli r3, zero, 32
0004cc  1d000200  lock zero, r4
0004d0  89815200  mm_cfg r3, r5, r5, 0
0004d4  890c4204  mm_cfg r25, r4, r4, 2
0004d8  298d5011  mm r26, r1, r21, 8
0004dc  9f101000  addli r1, zero, 9
0004e0  1d100200  unlock r4
0004e4  7d000100  xsignal r2, 0
0004e8  7d800000  xsignal r1, 0
0004ec  9f401000  addli r1, zero, 12
0004f0  5b530000  j 664
0004f4  9b3add00  slli r21, r26, 13
0004f8  2b420100  lui r4, 20
0004fc  0b9b4a10  add.s r22, r21, r4
000500  1f720000  addli r4, zero, 7
000504  b78a4200  beq r5, r4, 672
000508  1f120000  addli r4, zero, 1
00050c  3bac42fe  bneq r5, r4, -248
000510  17b23803  sll.d r[5:6], r[18:19], r19
000514  a7090500  addli.d r[20:21], r[11:12], 0
000518  6b558f00  load.d r[11:12], 8(r30)
00051c  1f740000  addli r8, zero, 7
000520  7d100400  xwait r8, 0
000524  1d800c00  lock zero, r25
000528  1f040001  addli r8, zero, 128
00052c  0b224510  add.ul r[5:6], r[11:12], r[5:6]
000530  15000000  dma_cfg zero, zero, zero, 0
000534  27850900  addli.d r[11:12], r[20:21], 0
000538  2b0a803f  lui r20, 260096
00053c  9f290000  addli r19, zero, 2
000540  15800204  dma_cfg zero, r5, zero, 2
000544  150b8206  dma_cfg r22, r4, r8, 3
000548  1f028000  addli r4, zero, 64
00054c  9f020020  addli r5, zero, 4096
000550  15844208  dma_cfg r8, r5, r4, 4
000554  35000000  dma_run zero
000558  1d900c00  unlock r25
00055c  7d800400  xsignal r9, 0
000560  dbd6ffff  j -332
000564  3be62200  bneq r5, r2, 408
000568  1f211000  addli r2, zero, 10
00056c  9f411000  addli r3, zero, 12
000570  9f763000  addli r13, zero, 31
000574  9f000000  addli r1, zero, 0
000578  7d100100  xwait r2, 0
00057c  7d900100  xwait r3, 0
000580  1d800900  lock zero, r19
000584  1f110000  addli r2, zero, 1
000588  0d000002  ew_cfg zero, zero, zero, 1
00058c  0d1a0a00  ewcoeff_cfg r20, r20, zero, 0
000590  0d800604  ew_cfg zero, r13, zero, 2
000594  0d010006  ew_cfg r2, zero, zero, 3
000598  8b111d10  add.s r3, r26, r1
00059c  9f800001  addli r1, r1, 128
0005a0  ad81c101  dsmadd r3, r3, r28, 0
0005a4  bbdf80ff  bneq r1, r24, -12
0005a8  9f301000  addli r1, zero, 11
0005ac  1f711000  addli r2, zero, 15
0005b0  1d900900  unlock r19
0005b4  1f060000  addli r12, zero, 0
0005b8  1f140000  addli r8, zero, 1
0005bc  7d800000  xsignal r1, 0
0005c0  e340dfff  loadli.w r1,  -20(r30)
0005c4  7d100100  xwait r2, 0
0005c8  1d800900  lock zero, r19
0005cc  1f511000  addli r2, zero, 13
0005d0  0d000002  ew_cfg zero, zero, zero, 1
0005d4  eb510fff  load.d r[4:5], -16(r30)
0005d8  8b101810  add.s r1, r16, r1
0005dc  0d000204  ew_cfg zero, r4, zero, 2
0005e0  1f120000  addli r4, zero, 1
0005e4  9f310000  addli r3, zero, 3
0005e8  0d020006  ew_cfg r4, zero, zero, 3
0005ec  0d020226  ew_cfg r4, r4, zero, 19
0005f0  0d010014  ew_cfg r2, zero, zero, 10
0005f4  6301dfff  loadli.w r2,  -24(r30)
0005f8  8d092216  ew_cfg r19, r4, r2, 11
0005fc  2b81ff40  lui r2, 266232
000600  0d00301a  ew_cfg zero, zero, r3, 13
000604  ab0100c1  lui r3, 790528
000608  8d812c1c  ew_cfg r3, r25, r2, 14
00060c  0d000a1e  ew_cfg zero, r20, zero, 15
000610  cd200d00  sslut r1, r26, 0
000614  0d000014  ew_cfg zero, zero, zero, 10
000618  0d000026  ew_cfg zero, zero, zero, 19
00061c  1d900900  unlock r19
000620  6341cfff  loadli.w r2,  -28(r30)
000624  8b112810  add.s r3, r16, r2
000628  1f012000  addli r2, zero, 16
00062c  7d100100  xwait r2, 0
000630  1d800900  lock zero, r19
000634  0d000002  ew_cfg zero, zero, zero, 1
000638  0d800604  ew_cfg zero, r13, zero, 2
00063c  0d020006  ew_cfg r4, zero, zero, 3
000640  6301cfff  loadli.w r2,  -32(r30)
000644  0d110000  ewcoeff_cfg r2, zero, zero, 0
000648  0b92c110  add.s r4, r3, r12
00064c  8b12cd10  add.s r5, r26, r12
000650  1f060601  addli r12, r12, 128
000654  2da25200  dscmpnsel r4, r5, r5, 0
000658  bb4f86ff  bneq r12, r24, -16
00065c  1d900900  unlock r19
000660  1f060000  addli r12, zero, 0
000664  1d800900  lock zero, r19
000668  0d000002  ew_cfg zero, zero, zero, 1
00066c  0d800604  ew_cfg zero, r13, zero, 2
000670  0d040006  ew_cfg r8, zero, zero, 3
000674  6341bfff  loadli.w r2,  -36(r30)
000678  0d110000  ewcoeff_cfg r2, zero, zero, 0
00067c  0b92c110  add.s r4, r3, r12
000680  1f060601  addli r12, r12, 128
000684  2d224208  dscmpnsel r4, r4, r4, 4
000688  bb5f86ff  bneq r12, r24, -12
00068c  1d900900  unlock r19
000690  2b0180bf  lui r2, 784384
000694  1f140000  addli r8, zero, 1
000698  1d800900  lock zero, r19
00069c  0d000002  ew_cfg zero, zero, zero, 1
0006a0  0d1a0100  ewcoeff_cfg r20, r2, zero, 0
0006a4  1f012000  addli r2, zero, 16
0006a8  6b520fff  load.d r[5:6], -16(r30)
0006ac  0d800204  ew_cfg zero, r5, zero, 2
0006b0  0d040006  ew_cfg r8, zero, zero, 3
0006b4  0d048426  ew_cfg r8, r8, r8, 19
0006b8  2d0d3d00  dsmadd r26, r26, r3, 0
0006bc  0d000026  ew_cfg zero, zero, zero, 19
0006c0  1d900900  unlock r19
0006c4  7d000100  xsignal r2, 0
0006c8  1d800900  lock zero, r19
0006cc  0d000002  ew_cfg zero, zero, zero, 1
0006d0  0d1a0a00  ewcoeff_cfg r20, r20, zero, 0
0006d4  0d800204  ew_cfg zero, r5, zero, 2
0006d8  0d040006  ew_cfg r8, zero, zero, 3
0006dc  0d048426  ew_cfg r8, r8, r8, 19
0006e0  ad80a001  dsmadd r1, r1, r26, 0
0006e4  9f501000  addli r1, zero, 13
0006e8  0d000026  ew_cfg zero, zero, zero, 19
0006ec  1d900900  unlock r19
0006f0  7d800000  xsignal r1, 0
0006f4  9f601000  addli r1, zero, 14
0006f8  5b120000  j 144
0006fc  3bc20200  bneq r5, zero, 144
000700  9bb06100  slli r1, r3, 6
000704  1f212000  addli r2, zero, 18
000708  9f621000  addli r5, zero, 14
00070c  b3910028  sext_int2long r[4:5], r1
000710  e340dfff  loadli.w r1,  -20(r30)
000714  17362602  sll.d r[13:14], r[13:14], r2
000718  1f018000  addli r2, zero, 64
00071c  7d900200  xwait r5, 0
000720  9f120000  addli r5, zero, 1
000724  0bb4e140  min.sl r[9:10], r[4:5], r[15:16]
000728  17b73803  sll.d r[15:16], r[18:19], r19
00072c  8b101810  add.s r1, r16, r1
000730  6b588f01  load.d r[17:18], 24(r30)
000734  27048400  addli.d r[9:10], r[9:10], 64
000738  0b343448  max.sl r[9:10], r[9:10], r[4:5]
00073c  0b26c810  add.ul r[13:14], r[17:18], r[13:14]
000740  8b313418  sub.sl r[4:5], r[9:10], r[4:5]
000744  33040128  zext_int2long r[9:10], r2
000748  1f510000  addli r2, zero, 5
00074c  0b26e610  add.ul r[13:14], r[13:14], r[15:16]
000750  1d000100  lock zero, r2
000754  8bb18140  min.sl r[4:5], r[4:5], r[9:10]
000758  9f640000  addli r9, zero, 6
00075c  15000000  dma_cfg zero, zero, zero, 0
000760  15800202  dma_cfg zero, r5, zero, 1
000764  9b322b00  slli r5, r22, 2
000768  95060004  dma_cfg r13, zero, zero, 2
00076c  15865006  dma_cfg r12, r1, r5, 3
000770  9f000001  addli r1, zero, 128
000774  9f020020  addli r5, zero, 4096
000778  95823008  dma_cfg r5, r1, r3, 4
00077c  9f701000  addli r1, zero, 15
000780  35000000  dma_run zero
000784  1d100100  unlock r2
000788  7d800000  xsignal r1, 0
00078c  eb518fff  load.d r[4:5], -8(r30)
000790  27130300  addli.d r[7:8], r[7:8], 1
000794  9f9d0d00  addli r27, r27, 1
000798  93303304  setlt.sl r1, r[7:8], r[4:5]
00079c  3bfd00fc  bneq r1, zero, -1188
0007a0  5b090000  j 72
0007a4  1f121000  addli r4, zero, 9
0007a8  7d900400  xwait r9, 0
0007ac  9f028000  addli r5, zero, 64
0007b0  7d100200  xwait r4, 0
0007b4  1d000000  lock zero, zero
0007b8  1f024000  addli r4, zero, 32
0007bc  81090000  ds_cfg r19, zero, 0
0007c0  01020002  ds_cfg r4, zero, 1
0007c4  8102001c  ds_cfg r5, zero, 14
0007c8  0102001a  ds_cfg r4, zero, 13
0007cc  1f720000  addli r4, zero, 7
0007d0  c10a5b04  shuffle_coa r21, r22, r5, 2
0007d4  1d100000  unlock zero
0007d8  7d000200  xsignal r4, 0
0007dc  1f021000  addli r4, zero, 8
0007e0  7d000200  xsignal r4, 0
0007e4  5b86ffff  j -976
0007e8  80300002  core_id r1
0007ec  7d000000  xsignal zero, 0
0007f0  bbe00000  bneq r1, zero, 56
0007f4  9f200000  addli r1, zero, 2
0007f8  7d100000  xwait zero, 0
0007fc  7d100000  xwait zero, 0
000800  7d100000  xwait zero, 0
000804  7d100000  xwait zero, 0
000808  7d100000  xwait zero, 0
00080c  7d100000  xwait zero, 0
000810  7d100000  xwait zero, 0
000814  7d100000  xwait zero, 0
000818  1d800000  lock zero, r1
00081c  0d000020  ew_cfg zero, zero, zero, 16
000820  1d900000  unlock r1
000824  7d400000  xsignal_mode_cfg zero
000828  9f8e5e00  addli sp, sp, 40
00082c  00a00300  mfence { lm, sm, gm }
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
000894  00100000  exit
000898  00100000  exit
00089c  00100000  exit
0008a0  00100000  exit
0008a4  00100000  exit
0008a8  00100000  exit
0008ac  00100000  exit
0008b0  00100000  exit
0008b4  00100000  exit
0008b8  00100000  exit
0008bc  00100000  exit
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
