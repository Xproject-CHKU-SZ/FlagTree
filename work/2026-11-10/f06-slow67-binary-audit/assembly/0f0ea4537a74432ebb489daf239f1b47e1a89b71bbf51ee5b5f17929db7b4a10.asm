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
0000b4  9f8e3efe  addli sp, sp, -232
0000b8  9f100000  addli r1, zero, 1
0000bc  003a0002  core_id r20
0000c0  1f8f5e01  addli r30, sp, 168
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600a00  beq r20, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b230000  j 280
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
000140  9f400000  addli r1, zero, 4
000144  9f311000  addli r3, zero, 11
000148  7d800000  xsignal r1, 0
00014c  7d800000  xsignal r1, 0
000150  7d800000  xsignal r1, 0
000154  7d800000  xsignal r1, 0
000158  7d800000  xsignal r1, 0
00015c  7d800000  xsignal r1, 0
000160  7d800000  xsignal r1, 0
000164  7d800000  xsignal r1, 0
000168  7d800000  xsignal r1, 0
00016c  7d800000  xsignal r1, 0
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
0001c0  9f101000  addli r1, zero, 9
0001c4  9f112000  addli r3, zero, 17
0001c8  7d800000  xsignal r1, 0
0001cc  7d800000  xsignal r1, 0
0001d0  7d800000  xsignal r1, 0
0001d4  7d800000  xsignal r1, 0
0001d8  7d800000  xsignal r1, 0
0001dc  7d800000  xsignal r1, 0
0001e0  7d800000  xsignal r1, 0
0001e4  7d800000  xsignal r1, 0
0001e8  7d800000  xsignal r1, 0
0001ec  7d800000  xsignal r1, 0
0001f0  7d800100  xsignal r3, 0
0001f4  e3405f00  loadli.w r1,  44(r30)
0001f8  e3016f00  loadli.w r3,  48(r30)
0001fc  80d20002  load_param_i r5, 1
000200  63426f00  loadli.w r4,  52(r30)
000204  674d0ffe  storeli.w zero, -44(r30)
000208  8b901120  mul.s r1, r3, r1
00020c  9f810200  addli r3, r5, 0
000210  8b914050  fmac.s r3, r1, r4
000214  0b924020  mul.s r4, r1, r4
000218  9ff1f1ff  addli r3, r3, -1
00021c  8b915130  div.s r3, r3, r5
000220  80520002  load_param_i r5, 0
000224  8b905120  mul.s r1, r3, r5
000228  8b915150  fmac.s r3, r3, r5
00022c  8b914140  min.s r3, r3, r4
000230  4bf61102  ble.s r3, r1, 1436
000234  e3034f00  loadli.w r7,  32(r30)
000238  b3940128  sext_int2long r[10:11], r3
00023c  63045f00  loadli.w r8,  40(r30)
000240  63434f00  loadli.w r6,  36(r30)
000244  b3970028  sext_int2long r[16:17], r1
000248  1f020000  addli r4, zero, 0
00024c  9f020000  addli r5, zero, 0
000250  1f091000  addli r18, zero, 8
000254  9f490000  addli r19, zero, 4
000258  9f2a0000  addli r21, zero, 2
00025c  1f1b0000  addli r22, zero, 1
000260  ab0c0400  lui r25, 64
000264  9f068000  addli r13, zero, 64
000268  1f070000  addli r14, zero, 0
00026c  73349ff6  store.d r[10:11], -152(r30)
000270  e344afff  loadli.w r9,  -44(r30)
000274  33950328  sext_int2long r[11:12], r7
000278  9b302400  slli r1, r8, 2
00027c  9f030008  addli r7, zero, 1024
000280  7330aff6  store.d r[11:12], -160(r30)
000284  33150328  sext_int2long r[11:12], r6
000288  674a1ffe  storeli.w r1, -92(r30)
00028c  9b302300  slli r1, r6, 2
000290  7334affc  store.d r[11:12], -56(r30)
000294  33150428  sext_int2long r[11:12], r8
000298  674b1ffe  storeli.w r1, -76(r30)
00029c  733caff4  store.d r[11:12], -168(r30)
0002a0  3b303a01  bneq r20, r19, 12
0002a4  9f601000  addli r1, zero, 14
0002a8  7d900000  xwait r1, 0
0002ac  e3406f00  loadli.w r1,  52(r30)
0002b0  63036f00  loadli.w r6,  48(r30)
0002b4  733cfff8  store.d r[16:17], -104(r30)
0002b8  8b901730  div.s r1, r15, r1
0002bc  1f040300  addli r8, r6, 0
0002c0  0b938030  div.s r6, r1, r8
0002c4  8b908038  mod.s r1, r1, r8
0002c8  33150328  sext_int2long r[11:12], r6
0002cc  b3970028  sext_int2long r[16:17], r1
0002d0  1b368300  slli r12, r6, 8
0002d4  1bb38000  slli r6, r1, 8
0002d8  9f70f001  addli r1, zero, 255
0002dc  173d2503  sll.d r[27:28], r[11:12], r18
0002e0  17b52703  sll.d r[11:12], r[16:17], r18
0002e4  33110328  sext_int2long r[3:4], r6
0002e8  6747cffe  storeli.w r12, -140(r30)
0002ec  97375503  sll.d r[16:17], r[11:12], r21
0002f0  33850028  zext_int2long r[11:12], r1
0002f4  e3005f00  loadli.w r1,  40(r30)
0002f8  733caff7  store.d r[27:28], -136(r30)
0002fc  73342ff8  store.d r[3:4], -120(r30)
000300  7338fff8  store.d r[16:17], -112(r30)
000304  3fbc6001  blt.s r1, r22, 780
000308  b3170628  sext_int2long r[16:17], r12
00030c  1f040000  addli r8, zero, 0
000310  9f080000  addli r17, zero, 0
000314  1f760000  addli r12, zero, 7
000318  a78b0702  addli.d r[24:25], r[16:17], 256
00031c  73307ffd  store.d r[24:25], -64(r30)
000320  eb5b8ff5  load.d r[24:25], -168(r30)
000324  8b3b7d21  mul.sl r[24:25], r[27:28], r[24:25]
000328  6b5d0ffc  load.d r[27:28], -64(r30)
00032c  733c7ffb  store.d r[24:25], -72(r30)
000330  eb5b0ff6  load.d r[24:25], -160(r30)
000334  8b3b7d41  min.sl r[24:25], r[27:28], r[24:25]
000338  270d0102  addli.d r[27:28], r[3:4], 256
00033c  8bbbfb48  max.sl r[24:25], r[24:25], r[16:17]
000340  7330affd  store.d r[27:28], -64(r30)
000344  6b5d0ffc  load.d r[27:28], -64(r30)
000348  73307ff9  store.d r[24:25], -128(r30)
00034c  eb5b8ffc  load.d r[24:25], -56(r30)
000350  8b3b7d41  min.sl r[24:25], r[27:28], r[24:25]
000354  6b5d0ff9  load.d r[27:28], -112(r30)
000358  73347ffb  store.d r[24:25], -88(r30)
00035c  eb5b0ff8  load.d r[24:25], -128(r30)
000360  8bb7fb18  sub.sl r[16:17], r[24:25], r[16:17]
000364  eb5b8f00  load.d r[24:25], 8(r30)
000368  8babab11  add.ul r[24:25], r[24:25], r[27:28]
00036c  73307ffd  store.d r[24:25], -64(r30)
000370  eb5b8ffa  load.d r[24:25], -88(r30)
000374  8bbd2b48  max.sl r[28:29], r[24:25], r[3:4]
000378  eb5b8ffb  load.d r[24:25], -72(r30)
00037c  8bb02d18  sub.sl r[2:3], r[28:29], r[3:4]
000380  ab410000  lui r3, 4
000384  97bb5b03  sll.d r[24:25], r[24:25], r21
000388  733c7ffb  store.d r[24:25], -72(r30)
00038c  eb5b0f00  load.d r[24:25], 0(r30)
000390  6b5d8ffb  load.d r[27:28], -72(r30)
000394  733c1ffa  store.d r[2:3], -72(r30)
000398  8babab11  add.ul r[24:25], r[24:25], r[27:28]
00039c  1bbd2000  slli r26, r1, 2
0003a0  1f211000  addli r2, zero, 10
0003a4  73347ffb  store.d r[24:25], -88(r30)
0003a8  5b0d0000  j 104
0003ac  eb5b8ffc  load.d r[24:25], -56(r30)
0003b0  7d000600  xsignal r12, 0
0003b4  7d100600  xwait r12, 0
0003b8  8bbb7d21  mul.sl r[24:25], r[28:29], r[24:25]
0003bc  eb5d0ffc  load.d r[28:29], -64(r30)
0003c0  1d800900  lock zero, r19
0003c4  15000000  dma_cfg zero, zero, zero, 0
0003c8  97bb5b03  sll.d r[24:25], r[24:25], r21
0003cc  8bab7d11  add.ul r[24:25], r[28:29], r[24:25]
0003d0  15000c04  dma_cfg zero, r24, zero, 2
0003d4  9580ab07  dma_cfg r1, r23, r26, 3
0003d8  e3406fff  loadli.w r1,  -76(r30)
0003dc  9583d008  dma_cfg r7, r1, r13, 4
0003e0  35000000  dma_run zero
0003e4  1d900900  unlock r19
0003e8  7d000900  xsignal r18, 0
0003ec  e3005f00  loadli.w r1,  40(r30)
0003f0  1f120200  addli r4, r4, 1
0003f4  9f920200  addli r5, r5, 1
0003f8  1f170700  addli r14, r14, 1
0003fc  9f940400  addli r9, r9, 1
000400  1f048400  addli r8, r8, 64
000404  9f980800  addli r17, r17, 1
000408  3f201400  blt.s r8, r1, 8
00040c  db400000  j 516
000410  8b902238  mod.s r1, r5, r2
000414  1f431000  addli r6, zero, 12
000418  b31d0428  sext_int2long r[28:29], r8
00041c  0b136238  mod.s r6, r4, r6
000420  9bb00001  slli r1, r1, 16
000424  1b330301  slli r6, r6, 16
000428  8b909011  add.s r1, r1, r25
00042c  bb706a01  bneq r20, r22, 60
000430  933bf504  setlt.sl r23, r[11:12], r[16:17]
000434  7d900900  xwait r19, 0
000438  bba00b00  bneq r23, zero, 40
00043c  1d800a00  lock zero, r21
000440  9f7b7000  addli r23, zero, 63
000444  0d000002  ew_cfg zero, zero, zero, 1
000448  0d100000  ewcoeff_cfg zero, zero, zero, 0
00044c  0d800b04  ew_cfg zero, r23, zero, 2
000450  9f0b0002  addli r23, zero, 256
000454  8d0b0006  ew_cfg r23, zero, zero, 3
000458  cd300000  ssaux r1, 0
00045c  1d900a00  unlock r21
000460  7d800a00  xsignal r21, 0
000464  5b130000  j 152
000468  37615a01  beq r20, r21, 88
00046c  9f6b0000  addli r23, zero, 6
000470  3b327a01  bneq r20, r23, 140
000474  7d900a00  xwait r21, 0
000478  1f0a0d00  addli r20, r26, 0
00047c  eb5c8ffa  load.d r[26:27], -88(r30)
000480  97bb5d03  sll.d r[24:25], r[28:29], r21
000484  1d800900  lock zero, r19
000488  15000000  dma_cfg zero, zero, zero, 0
00048c  8bab7c11  add.ul r[24:25], r[26:27], r[24:25]
000490  9f0c0002  addli r25, zero, 256
000494  1f0d0a00  addli r26, r20, 0
000498  003a0002  core_id r20
00049c  15000c04  dma_cfg zero, r24, zero, 2
0004a0  95809b07  dma_cfg r1, r23, r25, 3
0004a4  e3404fff  loadli.w r1,  -92(r30)
0004a8  958cf008  dma_cfg r25, r1, r15, 4
0004ac  35000000  dma_run zero
0004b0  ab0c0400  lui r25, 64
0004b4  1d900900  unlock r19
0004b8  9f300000  addli r1, zero, 3
0004bc  db070000  j 60
0004c0  9f3b0000  addli r23, zero, 3
0004c4  7d900b00  xwait r23, 0
0004c8  9f6b0000  addli r23, zero, 6
0004cc  7d900b00  xwait r23, 0
0004d0  b7800700  beq r15, zero, 32
0004d4  1d000000  lock zero, zero
0004d8  810a0000  ds_cfg r21, zero, 0
0004dc  81060002  ds_cfg r13, zero, 1
0004e0  8106001c  ds_cfg r13, zero, 14
0004e4  8107001a  ds_cfg r15, zero, 13
0004e8  2193d002  shuffle_batch r6, r1, r13, 1
0004ec  1d100000  unlock zero
0004f0  9f500000  addli r1, zero, 5
0004f4  7d800900  xsignal r19, 0
0004f8  7d800000  xsignal r1, 0
0004fc  8b902438  mod.s r1, r9, r2
000500  ab0b0e00  lui r23, 224
000504  9bb00001  slli r1, r1, 16
000508  8b907011  add.s r1, r1, r23
00050c  bb706a01  bneq r20, r22, 60
000510  eb5b8ffb  load.d r[24:25], -72(r30)
000514  13337505  setlt.sl r6, r[11:12], r[24:25]
000518  9f1b1000  addli r23, zero, 9
00051c  7d900b00  xwait r23, 0
000520  3b3a03fe  bneq r6, zero, -372
000524  1d800a00  lock zero, r21
000528  1f73f001  addli r6, zero, 255
00052c  0d000002  ew_cfg zero, zero, zero, 1
000530  0d100000  ewcoeff_cfg zero, zero, zero, 0
000534  0d000304  ew_cfg zero, r6, zero, 2
000538  8d060006  ew_cfg r13, zero, zero, 3
00053c  cd300000  ssaux r1, 0
000540  1d900a00  unlock r21
000544  5bcdffff  j -408
000548  9f4b2000  addli r23, zero, 20
00054c  8b1b7739  mod.s r23, r14, r23
000550  9bbd0b01  slli r27, r23, 16
000554  3b01ca00  bneq r20, r12, 64
000558  1f331000  addli r6, zero, 11
00055c  7d100900  xwait r18, 0
000560  7d100300  xwait r6, 0
000564  1d000000  lock zero, zero
000568  1f030002  addli r6, zero, 256
00056c  810a0000  ds_cfg r21, zero, 0
000570  01030002  ds_cfg r6, zero, 1
000574  8106001c  ds_cfg r13, zero, 14
000578  0103001a  ds_cfg r6, zero, 13
00057c  c18dd004  shuffle_coa r27, r1, r13, 2
000580  9f101000  addli r1, zero, 9
000584  1d100000  unlock zero
000588  7d800000  xsignal r1, 0
00058c  7d000100  xsignal r2, 0
000590  dbcbffff  j -420
000594  3b693aff  bneq r20, r19, -424
000598  9f500000  addli r1, zero, 5
00059c  7d900000  xwait r1, 0
0005a0  7d100100  xwait r2, 0
0005a4  b7c00800  beq r17, zero, 48
0005a8  37d10700  beq r15, zero, 84
0005ac  9f000000  addli r1, zero, 0
0005b0  1d000b00  lock zero, r22
0005b4  8986f600  mm_cfg r13, r13, r15, 0
0005b8  89096905  mm_cfg r19, r18, r22, 2
0005bc  a910b311  mm_acc r1, r6, r27, 8
0005c0  9f800002  addli r1, r1, 256
0005c4  8b9d3d10  add.s r27, r27, r3
0005c8  1d100b00  unlock r22
0005cc  bb9f70fe  bneq r1, r7, -28
0005d0  db050000  j 44
0005d4  b7a00700  beq r15, zero, 40
0005d8  9f000000  addli r1, zero, 0
0005dc  1d000b00  lock zero, r22
0005e0  8986f600  mm_cfg r13, r13, r15, 0
0005e4  89096905  mm_cfg r19, r18, r22, 2
0005e8  a900b311  mm r1, r6, r27, 8
0005ec  9f800002  addli r1, r1, 256
0005f0  8b9d3d10  add.s r27, r27, r3
0005f4  1d100b00  unlock r22
0005f8  bb9f70fe  bneq r1, r7, -28
0005fc  9f600000  addli r1, zero, 6
000600  7d800000  xsignal r1, 0
000604  9f301000  addli r1, zero, 11
000608  7d800000  xsignal r1, 0
00060c  5bbcffff  j -544
000610  bb103a01  bneq r20, r19, 36
000614  9f401000  addli r1, zero, 12
000618  7d800000  xsignal r1, 0
00061c  eb578ff9  load.d r[16:17], -104(r30)
000620  6b558ff6  load.d r[11:12], -152(r30)
000624  a7970700  addli.d r[16:17], r[16:17], 1
000628  93b0a704  setlt.sl r1, r[16:17], r[11:12]
00062c  bbd100fe  bneq r1, zero, -908
000630  db330000  j 412
000634  eb508ff8  load.d r[2:3], -120(r30)
000638  eb5b8ffc  load.d r[24:25], -56(r30)
00063c  a7870002  addli.d r[16:17], r[2:3], 256
000640  8bb77741  min.sl r[16:17], r[16:17], r[24:25]
000644  8bb71748  max.sl r[16:17], r[16:17], r[2:3]
000648  8bb71718  sub.sl r[16:17], r[16:17], r[2:3]
00064c  9f600000  addli r1, zero, 6
000650  b7021a00  beq r20, r1, 160
000654  9f500000  addli r1, zero, 5
000658  37111a00  beq r20, r1, 68
00065c  3b536a01  bneq r20, r22, 212
000660  9330f504  setlt.sl r1, r[11:12], r[16:17]
000664  1f132000  addli r6, zero, 17
000668  7d100300  xwait r6, 0
00066c  bba00000  bneq r1, zero, 40
000670  1d800a00  lock zero, r21
000674  9f70f001  addli r1, zero, 255
000678  0d000002  ew_cfg zero, zero, zero, 1
00067c  0d100000  ewcoeff_cfg zero, zero, zero, 0
000680  0d800004  ew_cfg zero, r1, zero, 2
000684  ab001800  lui r1, 384
000688  0d0b0006  ew_cfg r22, zero, zero, 3
00068c  cd300000  ssaux r1, 0
000690  1d900a00  unlock r21
000694  9f701000  addli r1, zero, 15
000698  5bf0ffff  j -128
00069c  1f431000  addli r6, zero, 12
0006a0  9f000000  addli r1, zero, 0
0006a4  7d100300  xwait r6, 0
0006a8  1f032000  addli r6, zero, 16
0006ac  7d100300  xwait r6, 0
0006b0  1d800a00  lock zero, r21
0006b4  2b03803f  lui r6, 260096
0006b8  0d000002  ew_cfg zero, zero, zero, 1
0006bc  0d130300  ewcoeff_cfg r6, r6, zero, 0
0006c0  1f73f001  addli r6, zero, 255
0006c4  0d000304  ew_cfg zero, r6, zero, 2
0006c8  2b031800  lui r6, 384
0006cc  0d0b0006  ew_cfg r22, zero, zero, 3
0006d0  ad806000  dsmadd r1, r1, r6, 0
0006d4  9f800008  addli r1, r1, 1024
0006d8  bbef90ff  bneq r1, r25, -8
0006dc  9f501000  addli r1, zero, 13
0006e0  1d900a00  unlock r21
0006e4  7d800000  xsignal r1, 0
0006e8  9f102000  addli r1, zero, 17
0006ec  dbe5ffff  j -212
0006f0  6b550f01  load.d r[11:12], 16(r30)
0006f4  eb5b0ff9  load.d r[24:25], -112(r30)
0006f8  9f701000  addli r1, zero, 15
0006fc  2b031800  lui r6, 384
000700  7d900000  xwait r1, 0
000704  1d800900  lock zero, r19
000708  9bb02700  slli r1, r15, 2
00070c  0b257511  add.ul r[11:12], r[11:12], r[24:25]
000710  15000000  dma_cfg zero, zero, zero, 0
000714  15800504  dma_cfg zero, r11, zero, 2
000718  15031506  dma_cfg r6, r10, r1, 3
00071c  95806009  dma_cfg r1, r1, r22, 4
000720  35000000  dma_run zero
000724  1d900900  unlock r19
000728  9f002000  addli r1, zero, 16
00072c  dbddffff  j -276
000730  bb3b0afe  bneq r20, zero, -276
000734  e340effe  loadli.w r1,  -140(r30)
000738  eb5d8ffc  load.d r[28:29], -56(r30)
00073c  1f530000  addli r6, zero, 5
000740  33950028  sext_int2long r[11:12], r1
000744  9f000002  addli r1, zero, 256
000748  a70b0502  addli.d r[24:25], r[11:12], 256
00074c  b3800028  zext_int2long r[2:3], r1
000750  73307ffd  store.d r[24:25], -64(r30)
000754  eb5b8ff7  load.d r[24:25], -136(r30)
000758  8bbbbb21  mul.sl r[24:25], r[24:25], r[28:29]
00075c  eb5d0ff6  load.d r[28:29], -160(r30)
000760  733c7ffb  store.d r[24:25], -72(r30)
000764  eb5b0ffc  load.d r[24:25], -64(r30)
000768  8bbdbb41  min.sl r[28:29], r[24:25], r[28:29]
00076c  8bbb1740  min.sl r[24:25], r[16:17], r[2:3]
000770  eb578ffb  load.d r[16:17], -72(r30)
000774  8bbdad48  max.sl r[28:29], r[28:29], r[11:12]
000778  97b75703  sll.d r[16:17], r[16:17], r21
00077c  0bb5ad18  sub.sl r[11:12], r[28:29], r[11:12]
000780  eb5d8f01  load.d r[28:29], 24(r30)
000784  0b351540  min.sl r[11:12], r[11:12], r[2:3]
000788  eb500ff9  load.d r[2:3], -112(r30)
00078c  8ba7fd10  add.ul r[16:17], r[28:29], r[16:17]
000790  8ba71710  add.ul r[16:17], r[16:17], r[2:3]
000794  9f501000  addli r1, zero, 13
000798  7d900000  xwait r1, 0
00079c  1d000300  lock zero, r6
0007a0  9bb02b00  slli r1, r23, 2
0007a4  15000000  dma_cfg zero, zero, zero, 0
0007a8  15000b02  dma_cfg zero, r22, zero, 1
0007ac  15080004  dma_cfg r16, zero, zero, 2
0007b0  95071006  dma_cfg r15, zero, r1, 3
0007b4  e3406fff  loadli.w r1,  -76(r30)
0007b8  9580a308  dma_cfg r1, r7, r10, 4
0007bc  9f601000  addli r1, zero, 14
0007c0  35000000  dma_run zero
0007c4  1d100300  unlock r6
0007c8  5bcaffff  j -432
0007cc  7d000000  xsignal zero, 0
0007d0  bb600a00  bneq r20, zero, 56
0007d4  9f200000  addli r1, zero, 2
0007d8  7d100000  xwait zero, 0
0007dc  7d100000  xwait zero, 0
0007e0  7d100000  xwait zero, 0
0007e4  7d100000  xwait zero, 0
0007e8  7d100000  xwait zero, 0
0007ec  7d100000  xwait zero, 0
0007f0  7d100000  xwait zero, 0
0007f4  7d100000  xwait zero, 0
0007f8  1d800000  lock zero, r1
0007fc  0d000020  ew_cfg zero, zero, zero, 16
000800  1d900000  unlock r1
000804  7d400000  xsignal_mode_cfg zero
000808  9f8e5e01  addli sp, sp, 168
00080c  00a00300  mfence { lm, sm, gm }
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
