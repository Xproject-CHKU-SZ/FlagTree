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
00005c  9f497000  addli r19, zero, 60
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
0000b4  9f8efefb  addli sp, sp, -520
0000b8  9f100000  addli r1, zero, 1
0000bc  00390002  core_id r18
0000c0  1f8f9e03  addli r30, sp, 456
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600900  beq r18, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  db3d0000  j 492
0000e0  9f210000  addli r3, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  2bf2ffff  lui r4, 1048575
0000ec  1d800100  lock zero, r3
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b10f2ff  ori r1, r4, 4095
0000f8  1d900100  unlock r3
0000fc  9f510000  addli r3, zero, 5
000100  80a10004  csr_set csr3, r1
000104  9f301000  addli r1, zero, 11
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  7d800000  xsignal r1, 0
000114  9f300000  addli r1, zero, 3
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
000164  9f111000  addli r3, zero, 9
000168  7d800000  xsignal r1, 0
00016c  7d800000  xsignal r1, 0
000170  7d800000  xsignal r1, 0
000174  7d800000  xsignal r1, 0
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
0001a0  7d800000  xsignal r1, 0
0001a4  7d800000  xsignal r1, 0
0001a8  7d800000  xsignal r1, 0
0001ac  9f700000  addli r1, zero, 7
0001b0  7d800100  xsignal r3, 0
0001b4  7d800100  xsignal r3, 0
0001b8  7d800100  xsignal r3, 0
0001bc  7d800100  xsignal r3, 0
0001c0  7d800100  xsignal r3, 0
0001c4  7d800100  xsignal r3, 0
0001c8  7d800100  xsignal r3, 0
0001cc  7d800100  xsignal r3, 0
0001d0  7d800100  xsignal r3, 0
0001d4  7d800100  xsignal r3, 0
0001d8  7d800100  xsignal r3, 0
0001dc  7d800100  xsignal r3, 0
0001e0  7d800100  xsignal r3, 0
0001e4  7d800100  xsignal r3, 0
0001e8  7d800100  xsignal r3, 0
0001ec  7d800100  xsignal r3, 0
0001f0  7d800100  xsignal r3, 0
0001f4  7d800100  xsignal r3, 0
0001f8  7d800100  xsignal r3, 0
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
000224  7d800100  xsignal r3, 0
000228  7d800100  xsignal r3, 0
00022c  7d800100  xsignal r3, 0
000230  7d800100  xsignal r3, 0
000234  7d800100  xsignal r3, 0
000238  7d800100  xsignal r3, 0
00023c  7d800100  xsignal r3, 0
000240  7d800100  xsignal r3, 0
000244  7d800100  xsignal r3, 0
000248  7d800100  xsignal r3, 0
00024c  7d800100  xsignal r3, 0
000250  7d800100  xsignal r3, 0
000254  7d800100  xsignal r3, 0
000258  7d800100  xsignal r3, 0
00025c  7d800100  xsignal r3, 0
000260  7d800100  xsignal r3, 0
000264  7d800100  xsignal r3, 0
000268  7d800100  xsignal r3, 0
00026c  7d800100  xsignal r3, 0
000270  7d800100  xsignal r3, 0
000274  7d800100  xsignal r3, 0
000278  7d800100  xsignal r3, 0
00027c  7d800100  xsignal r3, 0
000280  7d800100  xsignal r3, 0
000284  7d800000  xsignal r1, 0
000288  7d800000  xsignal r1, 0
00028c  7d800000  xsignal r1, 0
000290  7d800000  xsignal r1, 0
000294  7d800000  xsignal r1, 0
000298  7d800000  xsignal r1, 0
00029c  7d800000  xsignal r1, 0
0002a0  7d800000  xsignal r1, 0
0002a4  7d800000  xsignal r1, 0
0002a8  7d800000  xsignal r1, 0
0002ac  7d800000  xsignal r1, 0
0002b0  7d800000  xsignal r1, 0
0002b4  7d800000  xsignal r1, 0
0002b8  7d800000  xsignal r1, 0
0002bc  7d800000  xsignal r1, 0
0002c0  7d800000  xsignal r1, 0
0002c4  7d800000  xsignal r1, 0
0002c8  e3006f00  loadli.w r1,  48(r30)
0002cc  e3416f00  loadli.w r3,  52(r30)
0002d0  80d20002  load_param_i r5, 1
0002d4  63027f00  loadli.w r4,  56(r30)
0002d8  e70b0ffe  storeli.w zero, -72(r30)
0002dc  670e0ffc  storeli.w zero, -288(r30)
0002e0  8b901120  mul.s r1, r3, r1
0002e4  9f810200  addli r3, r5, 0
0002e8  8b914050  fmac.s r3, r1, r4
0002ec  0b924020  mul.s r4, r1, r4
0002f0  9ff1f1ff  addli r3, r3, -1
0002f4  8b915130  div.s r3, r3, r5
0002f8  80520002  load_param_i r5, 0
0002fc  8b905120  mul.s r1, r3, r5
000300  8b915150  fmac.s r3, r3, r5
000304  0b924140  min.s r4, r3, r4
000308  cb231202  ble.s r4, r1, 1256
00030c  e3453f00  loadli.w r11,  28(r30)
000310  e3043f00  loadli.w r9,  24(r30)
000314  1f018001  addli r2, zero, 192
000318  9f038002  addli r7, zero, 320
00031c  33180228  sext_int2long r[17:18], r4
000320  63064f00  loadli.w r12,  32(r30)
000324  63444f00  loadli.w r8,  36(r30)
000328  63035f00  loadli.w r6,  40(r30)
00032c  1f0e8000  addli r28, zero, 64
000330  e3415f00  loadli.w r3,  44(r30)
000334  9f020000  addli r5, zero, 0
000338  9f1d0000  addli r27, zero, 1
00033c  1f4c0000  addli r24, zero, 4
000340  9f392000  addli r19, zero, 19
000344  abac0000  lui r25, 10
000348  674a0ffc  storeli.w zero, -348(r30)
00034c  73340fe7  store.d r[17:18], -408(r30)
000350  9ff67501  addli r13, r11, 191
000354  1ff57402  addli r10, r9, 319
000358  1f727600  addli r4, r12, 63
00035c  0b972630  div.s r14, r13, r2
000360  8b177530  div.s r15, r10, r7
000364  b3900028  sext_int2long r[2:3], r1
000368  67454ffc  storeli.w r4, -428(r30)
00036c  0b1dc231  div.s r26, r4, r28
000370  1b321400  slli r4, r8, 1
000374  63057fff  loadli.w r10,  -72(r30)
000378  e306cffd  loadli.w r13,  -288(r30)
00037c  674b4ffc  storeli.w r4, -332(r30)
000380  1b321300  slli r4, r6, 1
000384  e7484ffc  storeli.w r4, -372(r30)
000388  1bb21100  slli r4, r3, 1
00038c  33180728  sext_int2long r[17:18], r14
000390  33970728  sext_int2long r[15:16], r15
000394  67444ffc  storeli.w r4, -444(r30)
000398  73300fe7  store.d r[17:18], -416(r30)
00039c  33980528  sext_int2long r[17:18], r11
0003a0  733cefe4  store.d r[15:16], -424(r30)
0003a4  27870000  addli.d r[15:16], r[2:3], 0
0003a8  b3900428  sext_int2long r[2:3], r9
0003ac  b3150328  sext_int2long r[12:13], r6
0003b0  9f640000  addli r9, zero, 6
0003b4  63436f00  loadli.w r6,  52(r30)
0003b8  73380fe9  store.d r[17:18], -368(r30)
0003bc  33180428  sext_int2long r[17:18], r8
0003c0  733c1fea  store.d r[2:3], -328(r30)
0003c4  1f240000  addli r8, zero, 2
0003c8  7334bfe4  store.d r[12:13], -440(r30)
0003cc  8b301820  mul.sl r[2:3], r[17:18], r[2:3]
0003d0  73340fed  store.d r[17:18], -312(r30)
0003d4  73381fec  store.d r[2:3], -304(r30)
0003d8  97b09502  sll.d r[2:3], r[12:13], r9
0003dc  733c1fec  store.d r[2:3], -296(r30)
0003e0  b3900128  sext_int2long r[2:3], r3
0003e4  9f010000  addli r3, zero, 0
0003e8  733c1fe2  store.d r[2:3], -456(r30)
0003ec  5b060000  j 48
0003f0  9f201000  addli r1, zero, 10
0003f4  63436f00  loadli.w r6,  52(r30)
0003f8  7d800000  xsignal r1, 0
0003fc  6b578fe9  load.d r[15:16], -360(r30)
000400  eb508fe6  load.d r[2:3], -408(r30)
000404  27170700  addli.d r[15:16], r[15:16], 1
000408  93301704  setlt.sl r1, r[15:16], r[2:3]
00040c  63414ffd  loadli.w r2,  -348(r30)
000410  1f110100  addli r2, r2, 1
000414  674a2ffc  storeli.w r2, -348(r30)
000418  37ef0000  beq r1, zero, 984
00041c  3b308901  bneq r18, r24, 12
000420  9f301000  addli r1, zero, 11
000424  7d900000  xwait r1, 0
000428  e3007f00  loadli.w r1,  56(r30)
00042c  6b580fe6  load.d r[17:18], -416(r30)
000430  733cefe8  store.d r[15:16], -360(r30)
000434  6b5b8fe5  load.d r[23:24], -424(r30)
000438  338a0d28  zext_int2long r[21:22], r27
00043c  63414ffd  loadli.w r2,  -348(r30)
000440  0b121730  div.s r4, r14, r1
000444  9f000300  addli r1, r6, 0
000448  0b131230  div.s r6, r4, r1
00044c  b3150328  sext_int2long r[12:13], r6
000450  0b138138  mod.s r6, r2, r8
000454  1f018001  addli r2, zero, 192
000458  0f970561  div.sl r[15:16], r[12:13], r[17:18]
00045c  0f980571  mod.sl r[17:18], r[12:13], r[17:18]
000460  0b3beb18  sub.sl r[23:24], r[23:24], r[15:16]
000464  0b3a4b41  min.sl r[21:22], r[23:24], r[21:22]
000468  8f954571  mod.sl r[12:13], r[12:13], r[21:22]
00046c  0f184861  div.sl r[17:18], r[17:18], r[21:22]
000470  330a0128  zext_int2long r[21:22], r2
000474  2bc10300  lui r2, 60
000478  73384fe7  store.d r[21:22], -400(r30)
00047c  8ba5e510  add.ul r[12:13], r[12:13], r[15:16]
000480  33870328  zext_int2long r[15:16], r7
000484  0b384821  mul.sl r[17:18], r[17:18], r[21:22]
000488  73340feb  store.d r[17:18], -344(r30)
00048c  0bb8e520  mul.sl r[17:18], r[12:13], r[15:16]
000490  7330efe8  store.d r[15:16], -384(r30)
000494  8b172320  mul.s r15, r6, r2
000498  6341affc  loadli.w r2,  -428(r30)
00049c  733c0fe7  store.d r[17:18], -392(r30)
0004a0  3f7ac101  blt.s r2, r28, 668
0004a4  0b121238  mod.s r4, r4, r1
0004a8  eb508fec  load.d r[2:3], -312(r30)
0004ac  1f030000  addli r6, zero, 0
0004b0  1f1b2000  addli r22, zero, 17
0004b4  9f0b0006  addli r23, zero, 768
0004b8  b3150228  sext_int2long r[12:13], r4
0004bc  17ba9502  sll.d r[21:22], r[12:13], r9
0004c0  8b351820  mul.sl r[12:13], r[17:18], r[2:3]
0004c4  eb508fe4  load.d r[2:3], -440(r30)
0004c8  73304fed  store.d r[21:22], -320(r30)
0004cc  0b3a1a20  mul.sl r[21:22], r[21:22], r[2:3]
0004d0  db120000  j 148
0004d4  eb508fec  load.d r[2:3], -312(r30)
0004d8  173bbb03  sll.d r[23:24], r[23:24], r27
0004dc  1f070001  addli r14, zero, 128
0004e0  9f392000  addli r19, zero, 19
0004e4  8f981860  div.sl r[18:19], r[18:19], r[2:3]
0004e8  9f300000  addli r1, zero, 3
0004ec  7d900000  xwait r1, 0
0004f0  1d000c00  lock zero, r24
0004f4  6b5c0f00  load.d r[25:26], 0(r30)
0004f8  958d0d00  dma_cfg r27, r27, zero, 0
0004fc  0b2b6c11  add.ul r[23:24], r[25:26], r[23:24]
000500  6b5c8feb  load.d r[25:26], -328(r30)
000504  15800b04  dma_cfg zero, r23, zero, 2
000508  1508eb06  dma_cfg r16, r22, r14, 3
00050c  1f1b2000  addli r22, zero, 17
000510  9f0b0006  addli r23, zero, 768
000514  63426ffd  loadli.w r4,  -332(r30)
000518  a7808802  addli.d r[2:3], r[18:19], 320
00051c  8bb08041  min.sl r[2:3], r[2:3], r[25:26]
000520  1f4c0000  addli r24, zero, 4
000524  abac0000  lui r25, 10
000528  8bb01019  sub.sl r[2:3], r[2:3], r[18:19]
00052c  00390002  core_id r18
000530  15071208  dma_cfg r14, r4, r1, 4
000534  35000000  dma_run zero
000538  1d100c00  unlock r24
00053c  7d000400  xsignal r8, 0
000540  eb508fed  load.d r[2:3], -296(r30)
000544  9f920200  addli r5, r5, 1
000548  9f910100  addli r3, r3, 1
00054c  9f960600  addli r13, r13, 1
000550  1f150500  addli r10, r10, 1
000554  1f130300  addli r6, r6, 1
000558  a7858500  addli.d r[12:13], r[12:13], 64
00055c  0b2a1a10  add.ul r[21:22], r[21:22], r[2:3]
000560  b707a301  beq r6, r26, 480
000564  0b923239  mod.s r4, r5, r19
000568  0b976139  mod.s r14, r3, r22
00056c  2b880700  lui r16, 120
000570  0b129221  mul.s r4, r4, r25
000574  0b189751  fmac.s r16, r14, r25
000578  b7308900  beq r18, r8, 44
00057c  bb01b901  bneq r18, r27, 96
000580  eb500fec  load.d r[2:3], -320(r30)
000584  0bab1510  add.ul r[23:24], r[12:13], r[2:3]
000588  eb500fed  load.d r[2:3], -304(r30)
00058c  a7080b00  addli.d r[18:19], r[23:24], 0
000590  13321b04  setlt.sl r4, r[23:24], r[2:3]
000594  3b0d02fe  bneq r4, zero, -192
000598  eb500fed  load.d r[2:3], -304(r30)
00059c  8f181b70  mod.sl r[18:19], r[23:24], r[2:3]
0005a0  dbe6ffff  j -204
0005a4  9f500000  addli r1, zero, 5
0005a8  7d100400  xwait r8, 0
0005ac  7d900000  xwait r1, 0
0005b0  9f300000  addli r1, zero, 3
0005b4  1d000000  lock zero, zero
0005b8  81000000  ds_cfg r1, zero, 0
0005bc  010e0002  ds_cfg r28, zero, 1
0005c0  010e001c  ds_cfg r28, zero, 14
0005c4  8103001a  ds_cfg r7, zero, 13
0005c8  2112c803  shuffle_batch r4, r16, r28, 1
0005cc  1d100000  unlock zero
0005d0  7d800000  xsignal r1, 0
0005d4  7d000c00  xsignal r24, 0
0005d8  5bedffff  j -152
0005dc  9f506000  addli r1, zero, 53
0005e0  0b116539  mod.s r2, r10, r22
0005e4  2b271200  lui r14, 290
0005e8  ab680000  lui r17, 6
0005ec  8b901638  mod.s r1, r13, r1
0005f0  0b171151  fmac.s r14, r2, r17
0005f4  0b981021  mul.s r16, r1, r17
0005f8  9f700000  addli r1, zero, 7
0005fc  37221900  beq r18, r1, 136
000600  3b139900  bneq r18, r9, 196
000604  eb508fea  load.d r[2:3], -344(r30)
000608  6b5c0fe9  load.d r[25:26], -368(r30)
00060c  1f7b0000  addli r22, zero, 7
000610  1f420000  addli r4, zero, 4
000614  9f392000  addli r19, zero, 19
000618  7d100b00  xwait r22, 0
00061c  1d000200  lock zero, r4
000620  1f020d00  addli r4, r26, 0
000624  8b201a10  add.ul r[2:3], r[21:22], r[2:3]
000628  958d0d00  dma_cfg r27, r27, zero, 0
00062c  0f988071  mod.sl r[17:18], r[2:3], r[25:26]
000630  97b0b003  sll.d r[2:3], r[2:3], r27
000634  270b8801  addli.d r[23:24], r[17:18], 192
000638  0b3b8b41  min.sl r[23:24], r[23:24], r[25:26]
00063c  eb5c8f00  load.d r[26:27], 8(r30)
000640  1f4c0000  addli r24, zero, 4
000644  0b380b19  sub.sl r[17:18], r[23:24], r[17:18]
000648  9f0b0006  addli r23, zero, 768
00064c  1f1b2000  addli r22, zero, 17
000650  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000654  1f0d0200  addli r26, r4, 0
000658  abac0000  lui r25, 10
00065c  1b321800  slli r4, r16, 1
000660  15000104  dma_cfg zero, r2, zero, 2
000664  15874006  dma_cfg r14, r1, r4, 3
000668  1f010003  addli r2, zero, 384
00066c  e3401ffd  loadli.w r1,  -372(r30)
000670  1581c009  dma_cfg r2, r1, r28, 4
000674  35000000  dma_run zero
000678  1d100c00  unlock r24
00067c  7d800400  xsignal r9, 0
000680  5bd8ffff  j -320
000684  9f101000  addli r1, zero, 9
000688  7d900400  xwait r9, 0
00068c  7d900000  xwait r1, 0
000690  9f300000  addli r1, zero, 3
000694  1d000000  lock zero, zero
000698  81000000  ds_cfg r1, zero, 0
00069c  9f008001  addli r1, zero, 192
0006a0  81000002  ds_cfg r1, zero, 1
0006a4  010e001c  ds_cfg r28, zero, 14
0006a8  8100001a  ds_cfg r1, zero, 13
0006ac  9f700000  addli r1, zero, 7
0006b0  4108c705  shuffle_coa r16, r14, r28, 2
0006b4  1d100000  unlock zero
0006b8  7d800000  xsignal r1, 0
0006bc  9f001000  addli r1, zero, 8
0006c0  db0e0000  j 116
0006c4  bb7989ff  bneq r18, r24, -388
0006c8  1f070000  addli r14, zero, 0
0006cc  9f001000  addli r1, zero, 8
0006d0  7d100c00  xwait r24, 0
0006d4  7d900000  xwait r1, 0
0006d8  b7300300  beq r6, zero, 44
0006dc  1d800d00  lock zero, r27
0006e0  8b90e710  add.s r1, r15, r14
0006e4  1f070702  addli r14, r14, 256
0006e8  090e7e00  mm_cfg r28, r28, r7, 0
0006ec  0984b405  mm_cfg r8, r9, r27, 2
0006f0  a910020b  mm_acc r1, r4, r16, 5
0006f4  1f080840  addli r16, r16, 8192
0006f8  1d900d00  unlock r27
0006fc  bb0f77ff  bneq r14, r23, -32
000700  5b050000  j 40
000704  1d800d00  lock zero, r27
000708  8b90e710  add.s r1, r15, r14
00070c  1f070702  addli r14, r14, 256
000710  090e7e00  mm_cfg r28, r28, r7, 0
000714  0984b405  mm_cfg r8, r9, r27, 2
000718  a900020b  mm r1, r4, r16, 5
00071c  1f080840  addli r16, r16, 8192
000720  1d900d00  unlock r27
000724  bb0f77ff  bneq r14, r23, -32
000728  9f500000  addli r1, zero, 5
00072c  7d800000  xsignal r1, 0
000730  9f101000  addli r1, zero, 9
000734  7d800000  xsignal r1, 0
000738  5bc1ffff  j -504
00073c  9f0b0006  addli r23, zero, 768
000740  b74289ff  beq r18, r24, -848
000744  63436f00  loadli.w r6,  52(r30)
000748  bb5209fe  bneq r18, zero, -844
00074c  6b588fea  load.d r[17:18], -344(r30)
000750  eb550fe9  load.d r[12:13], -368(r30)
000754  6b5a8fe7  load.d r[21:22], -392(r30)
000758  1f221000  addli r4, zero, 10
00075c  a7008801  addli.d r[2:3], r[17:18], 192
000760  8bb0b040  min.sl r[2:3], r[2:3], r[12:13]
000764  a7058a02  addli.d r[12:13], r[21:22], 320
000768  8bb00049  max.sl r[2:3], r[2:3], r[17:18]
00076c  8bb00019  sub.sl r[2:3], r[2:3], r[17:18]
000770  6b588feb  load.d r[17:18], -328(r30)
000774  8bb50541  min.sl r[12:13], r[12:13], r[17:18]
000778  6b580fe7  load.d r[17:18], -400(r30)
00077c  8bb54549  max.sl r[12:13], r[12:13], r[21:22]
000780  8bb00041  min.sl r[2:3], r[2:3], r[17:18]
000784  6b588fe3  load.d r[17:18], -456(r30)
000788  8bb54519  sub.sl r[12:13], r[12:13], r[21:22]
00078c  73301fec  store.d r[2:3], -320(r30)
000790  eb508fea  load.d r[2:3], -344(r30)
000794  0b380a21  mul.sl r[17:18], r[21:22], r[17:18]
000798  6b5a0f01  load.d r[21:22], 16(r30)
00079c  1738b803  sll.d r[17:18], r[17:18], r27
0007a0  0b280a11  add.ul r[17:18], r[21:22], r[17:18]
0007a4  17bab003  sll.d r[21:22], r[2:3], r27
0007a8  eb500fe8  load.d r[2:3], -384(r30)
0007ac  7d100200  xwait r4, 0
0007b0  1f520000  addli r4, zero, 5
0007b4  1d000200  lock zero, r4
0007b8  0b284811  add.ul r[17:18], r[17:18], r[21:22]
0007bc  950d0000  dma_cfg r27, zero, zero, 0
0007c0  8bb51540  min.sl r[12:13], r[12:13], r[2:3]
0007c4  15800d02  dma_cfg zero, r27, zero, 1
0007c8  eb500fec  load.d r[2:3], -320(r30)
0007cc  95080004  dma_cfg r17, zero, zero, 2
0007d0  9bb02000  slli r1, r1, 2
0007d4  15881706  dma_cfg r16, r15, r1, 3
0007d8  e3408ffc  loadli.w r1,  -444(r30)
0007dc  9580bb08  dma_cfg r1, r23, r11, 4
0007e0  9f301000  addli r1, zero, 11
0007e4  35000000  dma_run zero
0007e8  1d100200  unlock r4
0007ec  db81ffff  j -1012
0007f0  7d000000  xsignal zero, 0
0007f4  bb600900  bneq r18, zero, 56
0007f8  9f200000  addli r1, zero, 2
0007fc  7d100000  xwait zero, 0
000800  7d100000  xwait zero, 0
000804  7d100000  xwait zero, 0
000808  7d100000  xwait zero, 0
00080c  7d100000  xwait zero, 0
000810  7d100000  xwait zero, 0
000814  7d100000  xwait zero, 0
000818  7d100000  xwait zero, 0
00081c  1d800000  lock zero, r1
000820  0d000020  ew_cfg zero, zero, zero, 16
000824  1d900000  unlock r1
000828  7d400000  xsignal_mode_cfg zero
00082c  9f8e9e03  addli sp, sp, 456
000830  00a00300  mfence { lm, sm, gm }
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
000a74  00100000  exit
