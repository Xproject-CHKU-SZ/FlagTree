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
0000b4  9f8e6efd  addli sp, sp, -336
0000b8  9f100000  addli r1, zero, 1
0000bc  80330002  core_id r7
0000c0  1f8f2e02  addli r30, sp, 272
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7900300  beq r7, zero, 36
0000cc  2bf1ffff  lui r2, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b10f1ff  ori r1, r2, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  5b260000  j 304
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
00014c  1f610000  addli r2, zero, 6
000150  8101001c  ds_cfg r3, zero, 14
000154  21133008  shuffle_batch r6, zero, r3, 4
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
000198  9f001000  addli r1, zero, 8
00019c  7d800200  xsignal r5, 0
0001a0  7d800000  xsignal r1, 0
0001a4  7d000100  xsignal r2, 0
0001a8  9f404000  addli r1, zero, 36
0001ac  1f411000  addli r2, zero, 12
0001b0  7d800000  xsignal r1, 0
0001b4  7d000100  xsignal r2, 0
0001b8  9f201000  addli r1, zero, 10
0001bc  1f611000  addli r2, zero, 14
0001c0  7d800000  xsignal r1, 0
0001c4  7d000100  xsignal r2, 0
0001c8  9f002000  addli r1, zero, 16
0001cc  1f212000  addli r2, zero, 18
0001d0  7d800000  xsignal r1, 0
0001d4  7d000100  xsignal r2, 0
0001d8  9f502000  addli r1, zero, 21
0001dc  1f113000  addli r2, zero, 25
0001e0  7d800000  xsignal r1, 0
0001e4  7d000100  xsignal r2, 0
0001e8  9f203000  addli r1, zero, 26
0001ec  1f413000  addli r2, zero, 28
0001f0  7d800000  xsignal r1, 0
0001f4  7d000100  xsignal r2, 0
0001f8  9f603000  addli r1, zero, 30
0001fc  1f714000  addli r2, zero, 39
000200  7d800000  xsignal r1, 0
000204  7d000100  xsignal r2, 0
000208  9f205000  addli r1, zero, 42
00020c  1f415000  addli r2, zero, 44
000210  7d800000  xsignal r1, 0
000214  7d000100  xsignal r2, 0
000218  e3005f00  loadli.w r1,  40(r30)
00021c  63415f00  loadli.w r2,  44(r30)
000220  00d20002  load_param_i r4, 1
000224  e3016f00  loadli.w r3,  48(r30)
000228  8b101120  mul.s r1, r2, r1
00022c  1f010200  addli r2, r4, 0
000230  0b913050  fmac.s r2, r1, r3
000234  8b913020  mul.s r3, r1, r3
000238  1f71f1ff  addli r2, r2, -1
00023c  0b114130  div.s r2, r2, r4
000240  00520002  load_param_i r4, 0
000244  8b104120  mul.s r1, r2, r4
000248  0b114150  fmac.s r2, r2, r4
00024c  0b113140  min.s r2, r2, r3
000250  4b291120  ble.s r2, r1, 16968
000254  33920028  sext_int2long r[5:6], r1
000258  ab800100  lui r1, 24
00025c  33110128  sext_int2long r[3:4], r2
000260  ab480100  lui r17, 20
000264  9f747000  addli r9, zero, 63
000268  1f660000  addli r12, zero, 6
00026c  2b7e0000  lui r28, 7
000270  9b900010  ori r1, r1, 256
000274  733c2ff0  store.d r[3:4], -232(r30)
000278  2bc10100  lui r2, 28
00027c  1b990810  ori r18, r17, 256
000280  ab01807f  lui r3, 522240
000284  674e1ffe  storeli.w r1, -28(r30)
000288  ab00353f  lui r1, 258896
00028c  67442fff  storeli.w r18, -188(r30)
000290  9b90304f  ori r1, r1, 1267
000294  67011ffe  storeli.w r1, -240(r30)
000298  9b100110  ori r1, r2, 256
00029c  2b010200  lui r2, 32
0002a0  67461ffe  storeli.w r1, -156(r30)
0002a4  abb0a73e  lui r1, 256635
0002a8  9b9050a0  ori r1, r1, 2565
0002ac  e7401ffe  storeli.w r1, -244(r30)
0002b0  9b100110  ori r1, r2, 256
0002b4  2bd1873f  lui r2, 260221
0002b8  67061ffe  storeli.w r1, -160(r30)
0002bc  ab00babf  lui r1, 785312
0002c0  9b90300e  ori r1, r1, 227
0002c4  e7001ffe  storeli.w r1, -248(r30)
0002c8  9b1021c2  ori r1, r2, 3106
0002cc  2ba191be  lui r2, 780570
0002d0  67401ffe  storeli.w r1, -252(r30)
0002d4  abf0b53f  lui r1, 260959
0002d8  9b90300e  ori r1, r1, 227
0002dc  67001ffe  storeli.w r1, -256(r30)
0002e0  9b10e198  ori r1, r2, 2446
0002e4  2bc10200  lui r2, 44
0002e8  e74f1ffc  storeli.w r1, -260(r30)
0002ec  ab70823e  lui r1, 256039
0002f0  9b906090  ori r1, r1, 2310
0002f4  e70f1ffc  storeli.w r1, -264(r30)
0002f8  9b100110  ori r1, r2, 256
0002fc  2b010300  lui r2, 48
000300  67411ffe  storeli.w r1, -236(r30)
000304  ab800800  lui r1, 136
000308  9b9080b4  ori r1, r1, 2888
00030c  674f1ffc  storeli.w r1, -268(r30)
000310  9b100110  ori r1, r2, 256
000314  2b810300  lui r2, 56
000318  e7451ffe  storeli.w r1, -164(r30)
00031c  ab400300  lui r1, 52
000320  9b900010  ori r1, r1, 256
000324  e74e1ffe  storeli.w r1, -20(r30)
000328  9b100110  ori r1, r2, 256
00032c  2bf17f7f  lui r2, 522239
000330  670e1ffe  storeli.w r1, -32(r30)
000334  abf0ff7f  lui r1, 524287
000338  9b1cf1ff  ori r25, r2, 4095
00033c  1b9cf0ff  ori r24, r1, 4095
000340  5b070000  j 56
000344  9f202000  addli r1, zero, 18
000348  7d800000  xsignal r1, 0
00034c  9f304000  addli r1, zero, 35
000350  7d800000  xsignal r1, 0
000354  9f205000  addli r1, zero, 42
000358  7d800000  xsignal r1, 0
00035c  9f405000  addli r1, zero, 44
000360  7d800000  xsignal r1, 0
000364  6b520ff3  load.d r[5:6], -208(r30)
000368  eb508ff1  load.d r[2:3], -232(r30)
00036c  27120200  addli.d r[5:6], r[5:6], 1
000370  93301204  setlt.sl r1, r[5:6], r[2:3]
000374  b7940020  beq r1, zero, 16676
000378  e3006f00  loadli.w r1,  48(r30)
00037c  73384ff2  store.d r[5:6], -208(r30)
000380  1f038000  addli r6, zero, 64
000384  330b0328  zext_int2long r[23:24], r6
000388  8b101230  div.s r1, r4, r1
00038c  abc20000  lui r5, 12
000390  73386fff  store.d r[23:24], -16(r30)
000394  1b91c200  ori r2, r5, 12
000398  e70e2ffe  storeli.w r2, -24(r30)
00039c  63415f00  loadli.w r2,  44(r30)
0003a0  1f020100  addli r4, r2, 0
0003a4  0b914030  div.s r2, r1, r4
0003a8  8b904038  mod.s r1, r1, r4
0003ac  1b928200  ori r4, r5, 8
0003b0  e74f4ffe  storeli.w r4, -4(r30)
0003b4  1b924200  ori r4, r5, 4
0003b8  e70f4ffe  storeli.w r4, -8(r30)
0003bc  33820428  zext_int2long r[5:6], r9
0003c0  73384ff4  store.d r[5:6], -176(r30)
0003c4  33120128  sext_int2long r[5:6], r2
0003c8  73304ff2  store.d r[5:6], -224(r30)
0003cc  33920028  sext_int2long r[5:6], r1
0003d0  9f500000  addli r1, zero, 5
0003d4  bbb8130c  bneq r7, r1, 6700
0003d8  1f310000  addli r2, zero, 3
0003dc  1f440000  addli r8, zero, 4
0003e0  1732c202  sll.d r[5:6], r[5:6], r12
0003e4  9f000000  addli r1, zero, 0
0003e8  7d100100  xwait r2, 0
0003ec  1f210000  addli r2, zero, 2
0003f0  1d000100  lock zero, r2
0003f4  0d000002  ew_cfg zero, zero, zero, 1
0003f8  0d100000  ewcoeff_cfg zero, zero, zero, 0
0003fc  0d800404  ew_cfg zero, r9, zero, 2
000400  0d030006  ew_cfg r6, zero, zero, 3
000404  4d300000  ssaux zero, 0
000408  1d100100  unlock r2
00040c  7d000100  xsignal r2, 0
000410  7d100400  xwait r8, 0
000414  1d000100  lock zero, r2
000418  2b04803f  lui r8, 260096
00041c  0d000002  ew_cfg zero, zero, zero, 1
000420  0d140000  ewcoeff_cfg r8, zero, zero, 0
000424  0d800404  ew_cfg zero, r9, zero, 2
000428  0d030006  ew_cfg r6, zero, zero, 3
00042c  2b430000  lui r6, 4
000430  4d330000  ssaux r6, 0
000434  1d100100  unlock r2
000438  1f511000  addli r2, zero, 13
00043c  73344ff2  store.d r[5:6], -216(r30)
000440  1f220000  addli r4, zero, 2
000444  ab420000  lui r5, 4
000448  7d100100  xwait r2, 0
00044c  1f711000  addli r2, zero, 15
000450  7d100100  xwait r2, 0
000454  1d000200  lock zero, r4
000458  1f110000  addli r2, zero, 1
00045c  0d000002  ew_cfg zero, zero, zero, 1
000460  0d140400  ewcoeff_cfg r8, r8, zero, 0
000464  0d800404  ew_cfg zero, r9, zero, 2
000468  0d010006  ew_cfg r2, zero, zero, 3
00046c  0b912011  add.s r2, r1, r18
000470  9f800002  addli r1, r1, 256
000474  2d011101  dsmadd r2, r2, r17, 0
000478  bbdf50fe  bneq r1, r5, -12
00047c  9f601000  addli r1, zero, 14
000480  e74c0ffe  storeli.w zero, -52(r30)
000484  674c0ffe  storeli.w zero, -60(r30)
000488  670d0ffe  storeli.w zero, -48(r30)
00048c  e70c0ffe  storeli.w zero, -56(r30)
000490  674d0ffe  storeli.w zero, -44(r30)
000494  ab05003f  lui r11, 258048
000498  9f76f00f  addli r13, zero, 2047
00049c  1f243000  addli r8, zero, 26
0004a0  2b03803f  lui r6, 260096
0004a4  2b470200  lui r14, 36
0004a8  1f150000  addli r10, zero, 1
0004ac  9f773000  addli r15, zero, 31
0004b0  2b580000  lui r16, 5
0004b4  9f090000  addli r19, zero, 0
0004b8  1d100200  unlock r4
0004bc  7d800000  xsignal r1, 0
0004c0  9f202000  addli r1, zero, 18
0004c4  7d900000  xwait r1, 0
0004c8  1d000200  lock zero, r4
0004cc  0d000002  ew_cfg zero, zero, zero, 1
0004d0  8d150000  ewcoeff_cfg r11, zero, zero, 0
0004d4  0d800604  ew_cfg zero, r13, zero, 2
0004d8  0d020006  ew_cfg r4, zero, zero, 3
0004dc  0d020226  ew_cfg r4, r4, zero, 19
0004e0  e340cfff  loadli.w r1,  -28(r30)
0004e4  cd502901  hp_ssmul r1, r18, r18, 0
0004e8  9f102000  addli r1, zero, 17
0004ec  0d000026  ew_cfg zero, zero, zero, 19
0004f0  1d100200  unlock r4
0004f4  7d800000  xsignal r1, 0
0004f8  9f502000  addli r1, zero, 21
0004fc  7d900000  xwait r1, 0
000500  1d000200  lock zero, r4
000504  0d000002  ew_cfg zero, zero, zero, 1
000508  e3002ffe  loadli.w r1,  -240(r30)
00050c  8d100000  ewcoeff_cfg r1, zero, zero, 0
000510  0d800604  ew_cfg zero, r13, zero, 2
000514  0d020006  ew_cfg r4, zero, zero, 3
000518  0d020226  ew_cfg r4, r4, zero, 19
00051c  e340cffe  loadli.w r1,  -156(r30)
000520  cd502901  hp_ssmul r1, r18, r18, 0
000524  9f302000  addli r1, zero, 19
000528  0d000026  ew_cfg zero, zero, zero, 19
00052c  1d100200  unlock r4
000530  7d800000  xsignal r1, 0
000534  9f602000  addli r1, zero, 22
000538  7d900000  xwait r1, 0
00053c  7d100400  xwait r8, 0
000540  1d000200  lock zero, r4
000544  0d000002  ew_cfg zero, zero, zero, 1
000548  e3401ffe  loadli.w r1,  -244(r30)
00054c  8d106000  ewcoeff_cfg r1, zero, r6, 0
000550  9b100710  ori r1, r14, 256
000554  0d800604  ew_cfg zero, r13, zero, 2
000558  0d020006  ew_cfg r4, zero, zero, 3
00055c  0d020226  ew_cfg r4, r4, zero, 19
000560  6301cffe  loadli.w r2,  -160(r30)
000564  ad002100  dsmadd r1, r2, r2, 0
000568  0d000026  ew_cfg zero, zero, zero, 19
00056c  1d100200  unlock r4
000570  1d000200  lock zero, r4
000574  0d000002  ew_cfg zero, zero, zero, 1
000578  0d130000  ewcoeff_cfg r6, zero, zero, 0
00057c  0d050006  ew_cfg r10, zero, zero, 3
000580  0d020226  ew_cfg r4, r4, zero, 19
000584  0d800704  ew_cfg zero, r15, zero, 2
000588  8d300008  ewcoeff_nlf_cfg r1, 4
00058c  9b100718  ori r1, r14, 384
000590  0d800704  ew_cfg zero, r15, zero, 2
000594  cdd25200  hp_ssmul r5, r5, r5, 0
000598  0d800704  ew_cfg zero, r15, zero, 2
00059c  8d300008  ewcoeff_nlf_cfg r1, 4
0005a0  9b900208  ori r1, r5, 128
0005a4  0d800704  ew_cfg zero, r15, zero, 2
0005a8  cdd01000  hp_ssmul r1, r1, r1, 0
0005ac  9b100720  ori r1, r14, 512
0005b0  0d000026  ew_cfg zero, zero, zero, 19
0005b4  1d100200  unlock r4
0005b8  1d000200  lock zero, r4
0005bc  0d000002  ew_cfg zero, zero, zero, 1
0005c0  0d130000  ewcoeff_cfg r6, zero, zero, 0
0005c4  0d050006  ew_cfg r10, zero, zero, 3
0005c8  0d020226  ew_cfg r4, r4, zero, 19
0005cc  0d800704  ew_cfg zero, r15, zero, 2
0005d0  8d300008  ewcoeff_nlf_cfg r1, 4
0005d4  9b900210  ori r1, r5, 256
0005d8  0d800704  ew_cfg zero, r15, zero, 2
0005dc  cdd01000  hp_ssmul r1, r1, r1, 0
0005e0  9b100728  ori r1, r14, 640
0005e4  0d800704  ew_cfg zero, r15, zero, 2
0005e8  8d300008  ewcoeff_nlf_cfg r1, 4
0005ec  9b900218  ori r1, r5, 384
0005f0  0d800704  ew_cfg zero, r15, zero, 2
0005f4  cdd01000  hp_ssmul r1, r1, r1, 0
0005f8  9b100730  ori r1, r14, 768
0005fc  0d000026  ew_cfg zero, zero, zero, 19
000600  1d100200  unlock r4
000604  1d000200  lock zero, r4
000608  0d000002  ew_cfg zero, zero, zero, 1
00060c  0d130000  ewcoeff_cfg r6, zero, zero, 0
000610  0d050006  ew_cfg r10, zero, zero, 3
000614  0d020226  ew_cfg r4, r4, zero, 19
000618  0d800704  ew_cfg zero, r15, zero, 2
00061c  8d300008  ewcoeff_nlf_cfg r1, 4
000620  9b900220  ori r1, r5, 512
000624  0d800704  ew_cfg zero, r15, zero, 2
000628  cdd01000  hp_ssmul r1, r1, r1, 0
00062c  9b100738  ori r1, r14, 896
000630  0d800704  ew_cfg zero, r15, zero, 2
000634  8d300008  ewcoeff_nlf_cfg r1, 4
000638  9b900228  ori r1, r5, 640
00063c  0d800704  ew_cfg zero, r15, zero, 2
000640  cdd01000  hp_ssmul r1, r1, r1, 0
000644  9b100740  ori r1, r14, 1024
000648  0d000026  ew_cfg zero, zero, zero, 19
00064c  1d100200  unlock r4
000650  1d000200  lock zero, r4
000654  0d000002  ew_cfg zero, zero, zero, 1
000658  0d130000  ewcoeff_cfg r6, zero, zero, 0
00065c  0d050006  ew_cfg r10, zero, zero, 3
000660  0d020226  ew_cfg r4, r4, zero, 19
000664  0d800704  ew_cfg zero, r15, zero, 2
000668  8d300008  ewcoeff_nlf_cfg r1, 4
00066c  9b900230  ori r1, r5, 768
000670  0d800704  ew_cfg zero, r15, zero, 2
000674  cdd01000  hp_ssmul r1, r1, r1, 0
000678  9b100748  ori r1, r14, 1152
00067c  0d800704  ew_cfg zero, r15, zero, 2
000680  8d300008  ewcoeff_nlf_cfg r1, 4
000684  9b900238  ori r1, r5, 896
000688  0d800704  ew_cfg zero, r15, zero, 2
00068c  cdd01000  hp_ssmul r1, r1, r1, 0
000690  9b100750  ori r1, r14, 1280
000694  0d000026  ew_cfg zero, zero, zero, 19
000698  1d100200  unlock r4
00069c  1d000200  lock zero, r4
0006a0  0d000002  ew_cfg zero, zero, zero, 1
0006a4  0d130000  ewcoeff_cfg r6, zero, zero, 0
0006a8  0d050006  ew_cfg r10, zero, zero, 3
0006ac  0d020226  ew_cfg r4, r4, zero, 19
0006b0  0d800704  ew_cfg zero, r15, zero, 2
0006b4  8d300008  ewcoeff_nlf_cfg r1, 4
0006b8  9b900240  ori r1, r5, 1024
0006bc  0d800704  ew_cfg zero, r15, zero, 2
0006c0  cdd01000  hp_ssmul r1, r1, r1, 0
0006c4  9b100758  ori r1, r14, 1408
0006c8  0d800704  ew_cfg zero, r15, zero, 2
0006cc  8d300008  ewcoeff_nlf_cfg r1, 4
0006d0  9b900248  ori r1, r5, 1152
0006d4  0d800704  ew_cfg zero, r15, zero, 2
0006d8  cdd01000  hp_ssmul r1, r1, r1, 0
0006dc  9b100760  ori r1, r14, 1536
0006e0  0d000026  ew_cfg zero, zero, zero, 19
0006e4  1d100200  unlock r4
0006e8  1d000200  lock zero, r4
0006ec  0d000002  ew_cfg zero, zero, zero, 1
0006f0  0d130000  ewcoeff_cfg r6, zero, zero, 0
0006f4  0d050006  ew_cfg r10, zero, zero, 3
0006f8  0d020226  ew_cfg r4, r4, zero, 19
0006fc  0d800704  ew_cfg zero, r15, zero, 2
000700  8d300008  ewcoeff_nlf_cfg r1, 4
000704  9b900250  ori r1, r5, 1280
000708  0d800704  ew_cfg zero, r15, zero, 2
00070c  cdd01000  hp_ssmul r1, r1, r1, 0
000710  9b100768  ori r1, r14, 1664
000714  0d800704  ew_cfg zero, r15, zero, 2
000718  8d300008  ewcoeff_nlf_cfg r1, 4
00071c  9b900258  ori r1, r5, 1408
000720  0d800704  ew_cfg zero, r15, zero, 2
000724  cdd01000  hp_ssmul r1, r1, r1, 0
000728  9b100770  ori r1, r14, 1792
00072c  0d000026  ew_cfg zero, zero, zero, 19
000730  1d100200  unlock r4
000734  1d000200  lock zero, r4
000738  0d000002  ew_cfg zero, zero, zero, 1
00073c  0d130000  ewcoeff_cfg r6, zero, zero, 0
000740  0d050006  ew_cfg r10, zero, zero, 3
000744  0d020226  ew_cfg r4, r4, zero, 19
000748  0d800704  ew_cfg zero, r15, zero, 2
00074c  8d300008  ewcoeff_nlf_cfg r1, 4
000750  9b900260  ori r1, r5, 1536
000754  0d800704  ew_cfg zero, r15, zero, 2
000758  cdd01000  hp_ssmul r1, r1, r1, 0
00075c  9b100778  ori r1, r14, 1920
000760  0d800704  ew_cfg zero, r15, zero, 2
000764  8d300008  ewcoeff_nlf_cfg r1, 4
000768  9b900268  ori r1, r5, 1664
00076c  0d800704  ew_cfg zero, r15, zero, 2
000770  cdd01000  hp_ssmul r1, r1, r1, 0
000774  9b100780  ori r1, r14, 2048
000778  0d000026  ew_cfg zero, zero, zero, 19
00077c  1d100200  unlock r4
000780  1d000200  lock zero, r4
000784  0d000002  ew_cfg zero, zero, zero, 1
000788  0d130000  ewcoeff_cfg r6, zero, zero, 0
00078c  0d050006  ew_cfg r10, zero, zero, 3
000790  0d020226  ew_cfg r4, r4, zero, 19
000794  0d800704  ew_cfg zero, r15, zero, 2
000798  8d300008  ewcoeff_nlf_cfg r1, 4
00079c  9b900270  ori r1, r5, 1792
0007a0  0d800704  ew_cfg zero, r15, zero, 2
0007a4  cdd01000  hp_ssmul r1, r1, r1, 0
0007a8  9b100788  ori r1, r14, 2176
0007ac  0d800704  ew_cfg zero, r15, zero, 2
0007b0  8d300008  ewcoeff_nlf_cfg r1, 4
0007b4  9b900278  ori r1, r5, 1920
0007b8  0d800704  ew_cfg zero, r15, zero, 2
0007bc  cdd01000  hp_ssmul r1, r1, r1, 0
0007c0  9b100790  ori r1, r14, 2304
0007c4  0d000026  ew_cfg zero, zero, zero, 19
0007c8  1d100200  unlock r4
0007cc  1d000200  lock zero, r4
0007d0  0d000002  ew_cfg zero, zero, zero, 1
0007d4  0d130000  ewcoeff_cfg r6, zero, zero, 0
0007d8  0d050006  ew_cfg r10, zero, zero, 3
0007dc  0d020226  ew_cfg r4, r4, zero, 19
0007e0  0d800704  ew_cfg zero, r15, zero, 2
0007e4  8d300008  ewcoeff_nlf_cfg r1, 4
0007e8  9b900280  ori r1, r5, 2048
0007ec  0d800704  ew_cfg zero, r15, zero, 2
0007f0  cdd01000  hp_ssmul r1, r1, r1, 0
0007f4  9b100798  ori r1, r14, 2432
0007f8  0d800704  ew_cfg zero, r15, zero, 2
0007fc  8d300008  ewcoeff_nlf_cfg r1, 4
000800  9b900288  ori r1, r5, 2176
000804  0d800704  ew_cfg zero, r15, zero, 2
000808  cdd01000  hp_ssmul r1, r1, r1, 0
00080c  9b1007a0  ori r1, r14, 2560
000810  0d000026  ew_cfg zero, zero, zero, 19
000814  1d100200  unlock r4
000818  1d000200  lock zero, r4
00081c  0d000002  ew_cfg zero, zero, zero, 1
000820  0d130000  ewcoeff_cfg r6, zero, zero, 0
000824  0d050006  ew_cfg r10, zero, zero, 3
000828  0d020226  ew_cfg r4, r4, zero, 19
00082c  0d800704  ew_cfg zero, r15, zero, 2
000830  8d300008  ewcoeff_nlf_cfg r1, 4
000834  9b900290  ori r1, r5, 2304
000838  0d800704  ew_cfg zero, r15, zero, 2
00083c  cdd01000  hp_ssmul r1, r1, r1, 0
000840  9b1007a8  ori r1, r14, 2688
000844  0d800704  ew_cfg zero, r15, zero, 2
000848  8d300008  ewcoeff_nlf_cfg r1, 4
00084c  9b900298  ori r1, r5, 2432
000850  0d800704  ew_cfg zero, r15, zero, 2
000854  cdd01000  hp_ssmul r1, r1, r1, 0
000858  9b1007b0  ori r1, r14, 2816
00085c  0d000026  ew_cfg zero, zero, zero, 19
000860  1d100200  unlock r4
000864  1d000200  lock zero, r4
000868  0d000002  ew_cfg zero, zero, zero, 1
00086c  0d130000  ewcoeff_cfg r6, zero, zero, 0
000870  0d050006  ew_cfg r10, zero, zero, 3
000874  0d020226  ew_cfg r4, r4, zero, 19
000878  0d800704  ew_cfg zero, r15, zero, 2
00087c  8d300008  ewcoeff_nlf_cfg r1, 4
000880  9b9002a0  ori r1, r5, 2560
000884  0d800704  ew_cfg zero, r15, zero, 2
000888  cdd01000  hp_ssmul r1, r1, r1, 0
00088c  9b1007b8  ori r1, r14, 2944
000890  0d800704  ew_cfg zero, r15, zero, 2
000894  8d300008  ewcoeff_nlf_cfg r1, 4
000898  9b9002a8  ori r1, r5, 2688
00089c  0d800704  ew_cfg zero, r15, zero, 2
0008a0  cdd01000  hp_ssmul r1, r1, r1, 0
0008a4  9b1007c0  ori r1, r14, 3072
0008a8  0d000026  ew_cfg zero, zero, zero, 19
0008ac  1d100200  unlock r4
0008b0  1d000200  lock zero, r4
0008b4  0d000002  ew_cfg zero, zero, zero, 1
0008b8  0d130000  ewcoeff_cfg r6, zero, zero, 0
0008bc  0d050006  ew_cfg r10, zero, zero, 3
0008c0  0d020226  ew_cfg r4, r4, zero, 19
0008c4  0d800704  ew_cfg zero, r15, zero, 2
0008c8  8d300008  ewcoeff_nlf_cfg r1, 4
0008cc  9b9002b0  ori r1, r5, 2816
0008d0  0d800704  ew_cfg zero, r15, zero, 2
0008d4  cdd01000  hp_ssmul r1, r1, r1, 0
0008d8  9b1007c8  ori r1, r14, 3200
0008dc  0d800704  ew_cfg zero, r15, zero, 2
0008e0  8d300008  ewcoeff_nlf_cfg r1, 4
0008e4  9b9002b8  ori r1, r5, 2944
0008e8  0d800704  ew_cfg zero, r15, zero, 2
0008ec  cdd01000  hp_ssmul r1, r1, r1, 0
0008f0  9b1007d0  ori r1, r14, 3328
0008f4  0d000026  ew_cfg zero, zero, zero, 19
0008f8  1d100200  unlock r4
0008fc  1d000200  lock zero, r4
000900  0d000002  ew_cfg zero, zero, zero, 1
000904  0d130000  ewcoeff_cfg r6, zero, zero, 0
000908  0d050006  ew_cfg r10, zero, zero, 3
00090c  0d020226  ew_cfg r4, r4, zero, 19
000910  0d800704  ew_cfg zero, r15, zero, 2
000914  8d300008  ewcoeff_nlf_cfg r1, 4
000918  9b9002c0  ori r1, r5, 3072
00091c  0d800704  ew_cfg zero, r15, zero, 2
000920  cdd01000  hp_ssmul r1, r1, r1, 0
000924  9b1007d8  ori r1, r14, 3456
000928  0d800704  ew_cfg zero, r15, zero, 2
00092c  8d300008  ewcoeff_nlf_cfg r1, 4
000930  9b9002c8  ori r1, r5, 3200
000934  0d800704  ew_cfg zero, r15, zero, 2
000938  cdd01000  hp_ssmul r1, r1, r1, 0
00093c  9b1007e0  ori r1, r14, 3584
000940  0d000026  ew_cfg zero, zero, zero, 19
000944  1d100200  unlock r4
000948  1d000200  lock zero, r4
00094c  0d000002  ew_cfg zero, zero, zero, 1
000950  0d130000  ewcoeff_cfg r6, zero, zero, 0
000954  0d050006  ew_cfg r10, zero, zero, 3
000958  0d020226  ew_cfg r4, r4, zero, 19
00095c  0d800704  ew_cfg zero, r15, zero, 2
000960  8d300008  ewcoeff_nlf_cfg r1, 4
000964  9b9002d0  ori r1, r5, 3328
000968  0d800704  ew_cfg zero, r15, zero, 2
00096c  cdd01000  hp_ssmul r1, r1, r1, 0
000970  9b1007e8  ori r1, r14, 3712
000974  0d800704  ew_cfg zero, r15, zero, 2
000978  8d300008  ewcoeff_nlf_cfg r1, 4
00097c  9b9002d8  ori r1, r5, 3456
000980  0d800704  ew_cfg zero, r15, zero, 2
000984  cdd01000  hp_ssmul r1, r1, r1, 0
000988  9b1007f0  ori r1, r14, 3840
00098c  0d000026  ew_cfg zero, zero, zero, 19
000990  1d100200  unlock r4
000994  1d000200  lock zero, r4
000998  0d000002  ew_cfg zero, zero, zero, 1
00099c  0d130000  ewcoeff_cfg r6, zero, zero, 0
0009a0  0d050006  ew_cfg r10, zero, zero, 3
0009a4  0d020226  ew_cfg r4, r4, zero, 19
0009a8  0d800704  ew_cfg zero, r15, zero, 2
0009ac  8d300008  ewcoeff_nlf_cfg r1, 4
0009b0  9b9002e0  ori r1, r5, 3584
0009b4  0d800704  ew_cfg zero, r15, zero, 2
0009b8  cdd01000  hp_ssmul r1, r1, r1, 0
0009bc  9b1007f8  ori r1, r14, 3968
0009c0  2b570200  lui r14, 37
0009c4  0d800704  ew_cfg zero, r15, zero, 2
0009c8  8d300008  ewcoeff_nlf_cfg r1, 4
0009cc  9b9002e8  ori r1, r5, 3712
0009d0  0d800704  ew_cfg zero, r15, zero, 2
0009d4  cdd01000  hp_ssmul r1, r1, r1, 0
0009d8  9b9002f0  ori r1, r5, 3840
0009dc  0d000026  ew_cfg zero, zero, zero, 19
0009e0  1d100200  unlock r4
0009e4  1d000200  lock zero, r4
0009e8  0d000002  ew_cfg zero, zero, zero, 1
0009ec  0d130000  ewcoeff_cfg r6, zero, zero, 0
0009f0  0d050006  ew_cfg r10, zero, zero, 3
0009f4  0d020226  ew_cfg r4, r4, zero, 19
0009f8  0d800704  ew_cfg zero, r15, zero, 2
0009fc  0d370008  ewcoeff_nlf_cfg r14, 4
000a00  0d800704  ew_cfg zero, r15, zero, 2
000a04  cdd01000  hp_ssmul r1, r1, r1, 0
000a08  9b100708  ori r1, r14, 128
000a0c  0d800704  ew_cfg zero, r15, zero, 2
000a10  8d300008  ewcoeff_nlf_cfg r1, 4
000a14  9b9002f8  ori r1, r5, 3968
000a18  0d800704  ew_cfg zero, r15, zero, 2
000a1c  cdd01000  hp_ssmul r1, r1, r1, 0
000a20  9b100710  ori r1, r14, 256
000a24  0d000026  ew_cfg zero, zero, zero, 19
000a28  1d100200  unlock r4
000a2c  1d000200  lock zero, r4
000a30  0d000002  ew_cfg zero, zero, zero, 1
000a34  0d130000  ewcoeff_cfg r6, zero, zero, 0
000a38  0d050006  ew_cfg r10, zero, zero, 3
000a3c  0d020226  ew_cfg r4, r4, zero, 19
000a40  0d800704  ew_cfg zero, r15, zero, 2
000a44  8d300008  ewcoeff_nlf_cfg r1, 4
000a48  9b100718  ori r1, r14, 384
000a4c  0d800704  ew_cfg zero, r15, zero, 2
000a50  4d580801  hp_ssmul r16, r16, r16, 0
000a54  0d800704  ew_cfg zero, r15, zero, 2
000a58  8d300008  ewcoeff_nlf_cfg r1, 4
000a5c  9b100808  ori r1, r16, 128
000a60  0d800704  ew_cfg zero, r15, zero, 2
000a64  cdd01000  hp_ssmul r1, r1, r1, 0
000a68  9b100720  ori r1, r14, 512
000a6c  0d000026  ew_cfg zero, zero, zero, 19
000a70  1d100200  unlock r4
000a74  1d000200  lock zero, r4
000a78  0d000002  ew_cfg zero, zero, zero, 1
000a7c  0d130000  ewcoeff_cfg r6, zero, zero, 0
000a80  0d050006  ew_cfg r10, zero, zero, 3
000a84  0d020226  ew_cfg r4, r4, zero, 19
000a88  0d800704  ew_cfg zero, r15, zero, 2
000a8c  8d300008  ewcoeff_nlf_cfg r1, 4
000a90  9b100810  ori r1, r16, 256
000a94  0d800704  ew_cfg zero, r15, zero, 2
000a98  cdd01000  hp_ssmul r1, r1, r1, 0
000a9c  9b100728  ori r1, r14, 640
000aa0  0d800704  ew_cfg zero, r15, zero, 2
000aa4  8d300008  ewcoeff_nlf_cfg r1, 4
000aa8  9b100818  ori r1, r16, 384
000aac  0d800704  ew_cfg zero, r15, zero, 2
000ab0  cdd01000  hp_ssmul r1, r1, r1, 0
000ab4  9b100730  ori r1, r14, 768
000ab8  0d000026  ew_cfg zero, zero, zero, 19
000abc  1d100200  unlock r4
000ac0  1d000200  lock zero, r4
000ac4  0d000002  ew_cfg zero, zero, zero, 1
000ac8  0d130000  ewcoeff_cfg r6, zero, zero, 0
000acc  0d050006  ew_cfg r10, zero, zero, 3
000ad0  0d020226  ew_cfg r4, r4, zero, 19
000ad4  0d800704  ew_cfg zero, r15, zero, 2
000ad8  8d300008  ewcoeff_nlf_cfg r1, 4
000adc  9b100820  ori r1, r16, 512
000ae0  0d800704  ew_cfg zero, r15, zero, 2
000ae4  cdd01000  hp_ssmul r1, r1, r1, 0
000ae8  9b100738  ori r1, r14, 896
000aec  0d800704  ew_cfg zero, r15, zero, 2
000af0  8d300008  ewcoeff_nlf_cfg r1, 4
000af4  9b100828  ori r1, r16, 640
000af8  0d800704  ew_cfg zero, r15, zero, 2
000afc  cdd01000  hp_ssmul r1, r1, r1, 0
000b00  9b100740  ori r1, r14, 1024
000b04  0d000026  ew_cfg zero, zero, zero, 19
000b08  1d100200  unlock r4
000b0c  1d000200  lock zero, r4
000b10  0d000002  ew_cfg zero, zero, zero, 1
000b14  0d130000  ewcoeff_cfg r6, zero, zero, 0
000b18  0d050006  ew_cfg r10, zero, zero, 3
000b1c  0d020226  ew_cfg r4, r4, zero, 19
000b20  0d800704  ew_cfg zero, r15, zero, 2
000b24  8d300008  ewcoeff_nlf_cfg r1, 4
000b28  9b100830  ori r1, r16, 768
000b2c  0d800704  ew_cfg zero, r15, zero, 2
000b30  cdd01000  hp_ssmul r1, r1, r1, 0
000b34  9b100748  ori r1, r14, 1152
000b38  0d800704  ew_cfg zero, r15, zero, 2
000b3c  8d300008  ewcoeff_nlf_cfg r1, 4
000b40  9b100838  ori r1, r16, 896
000b44  0d800704  ew_cfg zero, r15, zero, 2
000b48  cdd01000  hp_ssmul r1, r1, r1, 0
000b4c  9b100750  ori r1, r14, 1280
000b50  0d000026  ew_cfg zero, zero, zero, 19
000b54  1d100200  unlock r4
000b58  1d000200  lock zero, r4
000b5c  0d000002  ew_cfg zero, zero, zero, 1
000b60  0d130000  ewcoeff_cfg r6, zero, zero, 0
000b64  0d050006  ew_cfg r10, zero, zero, 3
000b68  0d020226  ew_cfg r4, r4, zero, 19
000b6c  0d800704  ew_cfg zero, r15, zero, 2
000b70  8d300008  ewcoeff_nlf_cfg r1, 4
000b74  9b100840  ori r1, r16, 1024
000b78  0d800704  ew_cfg zero, r15, zero, 2
000b7c  cdd01000  hp_ssmul r1, r1, r1, 0
000b80  9b100758  ori r1, r14, 1408
000b84  0d800704  ew_cfg zero, r15, zero, 2
000b88  8d300008  ewcoeff_nlf_cfg r1, 4
000b8c  9b100848  ori r1, r16, 1152
000b90  0d800704  ew_cfg zero, r15, zero, 2
000b94  cdd01000  hp_ssmul r1, r1, r1, 0
000b98  9b100760  ori r1, r14, 1536
000b9c  0d000026  ew_cfg zero, zero, zero, 19
000ba0  1d100200  unlock r4
000ba4  1d000200  lock zero, r4
000ba8  0d000002  ew_cfg zero, zero, zero, 1
000bac  0d130000  ewcoeff_cfg r6, zero, zero, 0
000bb0  0d050006  ew_cfg r10, zero, zero, 3
000bb4  0d020226  ew_cfg r4, r4, zero, 19
000bb8  0d800704  ew_cfg zero, r15, zero, 2
000bbc  8d300008  ewcoeff_nlf_cfg r1, 4
000bc0  9b100850  ori r1, r16, 1280
000bc4  0d800704  ew_cfg zero, r15, zero, 2
000bc8  cdd01000  hp_ssmul r1, r1, r1, 0
000bcc  9b100768  ori r1, r14, 1664
000bd0  0d800704  ew_cfg zero, r15, zero, 2
000bd4  8d300008  ewcoeff_nlf_cfg r1, 4
000bd8  9b100858  ori r1, r16, 1408
000bdc  0d800704  ew_cfg zero, r15, zero, 2
000be0  cdd01000  hp_ssmul r1, r1, r1, 0
000be4  9b100770  ori r1, r14, 1792
000be8  0d000026  ew_cfg zero, zero, zero, 19
000bec  1d100200  unlock r4
000bf0  1d000200  lock zero, r4
000bf4  0d000002  ew_cfg zero, zero, zero, 1
000bf8  0d130000  ewcoeff_cfg r6, zero, zero, 0
000bfc  0d050006  ew_cfg r10, zero, zero, 3
000c00  0d020226  ew_cfg r4, r4, zero, 19
000c04  0d800704  ew_cfg zero, r15, zero, 2
000c08  8d300008  ewcoeff_nlf_cfg r1, 4
000c0c  9b100860  ori r1, r16, 1536
000c10  0d800704  ew_cfg zero, r15, zero, 2
000c14  cdd01000  hp_ssmul r1, r1, r1, 0
000c18  9b100778  ori r1, r14, 1920
000c1c  0d800704  ew_cfg zero, r15, zero, 2
000c20  8d300008  ewcoeff_nlf_cfg r1, 4
000c24  9b100868  ori r1, r16, 1664
000c28  0d800704  ew_cfg zero, r15, zero, 2
000c2c  cdd01000  hp_ssmul r1, r1, r1, 0
000c30  9b100780  ori r1, r14, 2048
000c34  0d000026  ew_cfg zero, zero, zero, 19
000c38  1d100200  unlock r4
000c3c  1d000200  lock zero, r4
000c40  0d000002  ew_cfg zero, zero, zero, 1
000c44  0d130000  ewcoeff_cfg r6, zero, zero, 0
000c48  0d050006  ew_cfg r10, zero, zero, 3
000c4c  0d020226  ew_cfg r4, r4, zero, 19
000c50  0d800704  ew_cfg zero, r15, zero, 2
000c54  8d300008  ewcoeff_nlf_cfg r1, 4
000c58  9b100870  ori r1, r16, 1792
000c5c  0d800704  ew_cfg zero, r15, zero, 2
000c60  cdd01000  hp_ssmul r1, r1, r1, 0
000c64  9b100788  ori r1, r14, 2176
000c68  0d800704  ew_cfg zero, r15, zero, 2
000c6c  8d300008  ewcoeff_nlf_cfg r1, 4
000c70  9b100878  ori r1, r16, 1920
000c74  0d800704  ew_cfg zero, r15, zero, 2
000c78  cdd01000  hp_ssmul r1, r1, r1, 0
000c7c  9b100790  ori r1, r14, 2304
000c80  0d000026  ew_cfg zero, zero, zero, 19
000c84  1d100200  unlock r4
000c88  1d000200  lock zero, r4
000c8c  0d000002  ew_cfg zero, zero, zero, 1
000c90  0d130000  ewcoeff_cfg r6, zero, zero, 0
000c94  0d050006  ew_cfg r10, zero, zero, 3
000c98  0d020226  ew_cfg r4, r4, zero, 19
000c9c  0d800704  ew_cfg zero, r15, zero, 2
000ca0  8d300008  ewcoeff_nlf_cfg r1, 4
000ca4  9b100880  ori r1, r16, 2048
000ca8  0d800704  ew_cfg zero, r15, zero, 2
000cac  cdd01000  hp_ssmul r1, r1, r1, 0
000cb0  9b100798  ori r1, r14, 2432
000cb4  0d800704  ew_cfg zero, r15, zero, 2
000cb8  8d300008  ewcoeff_nlf_cfg r1, 4
000cbc  9b100888  ori r1, r16, 2176
000cc0  0d800704  ew_cfg zero, r15, zero, 2
000cc4  cdd01000  hp_ssmul r1, r1, r1, 0
000cc8  9b1007a0  ori r1, r14, 2560
000ccc  0d000026  ew_cfg zero, zero, zero, 19
000cd0  1d100200  unlock r4
000cd4  1d000200  lock zero, r4
000cd8  0d000002  ew_cfg zero, zero, zero, 1
000cdc  0d130000  ewcoeff_cfg r6, zero, zero, 0
000ce0  0d050006  ew_cfg r10, zero, zero, 3
000ce4  0d020226  ew_cfg r4, r4, zero, 19
000ce8  0d800704  ew_cfg zero, r15, zero, 2
000cec  8d300008  ewcoeff_nlf_cfg r1, 4
000cf0  9b100890  ori r1, r16, 2304
000cf4  0d800704  ew_cfg zero, r15, zero, 2
000cf8  cdd01000  hp_ssmul r1, r1, r1, 0
000cfc  9b1007a8  ori r1, r14, 2688
000d00  0d800704  ew_cfg zero, r15, zero, 2
000d04  8d300008  ewcoeff_nlf_cfg r1, 4
000d08  9b100898  ori r1, r16, 2432
000d0c  0d800704  ew_cfg zero, r15, zero, 2
000d10  cdd01000  hp_ssmul r1, r1, r1, 0
000d14  9b1007b0  ori r1, r14, 2816
000d18  0d000026  ew_cfg zero, zero, zero, 19
000d1c  1d100200  unlock r4
000d20  1d000200  lock zero, r4
000d24  0d000002  ew_cfg zero, zero, zero, 1
000d28  0d130000  ewcoeff_cfg r6, zero, zero, 0
000d2c  0d050006  ew_cfg r10, zero, zero, 3
000d30  0d020226  ew_cfg r4, r4, zero, 19
000d34  0d800704  ew_cfg zero, r15, zero, 2
000d38  8d300008  ewcoeff_nlf_cfg r1, 4
000d3c  9b1008a0  ori r1, r16, 2560
000d40  0d800704  ew_cfg zero, r15, zero, 2
000d44  cdd01000  hp_ssmul r1, r1, r1, 0
000d48  9b1007b8  ori r1, r14, 2944
000d4c  0d800704  ew_cfg zero, r15, zero, 2
000d50  8d300008  ewcoeff_nlf_cfg r1, 4
000d54  9b1008a8  ori r1, r16, 2688
000d58  0d800704  ew_cfg zero, r15, zero, 2
000d5c  cdd01000  hp_ssmul r1, r1, r1, 0
000d60  9b1007c0  ori r1, r14, 3072
000d64  0d000026  ew_cfg zero, zero, zero, 19
000d68  1d100200  unlock r4
000d6c  1d000200  lock zero, r4
000d70  0d000002  ew_cfg zero, zero, zero, 1
000d74  0d130000  ewcoeff_cfg r6, zero, zero, 0
000d78  0d050006  ew_cfg r10, zero, zero, 3
000d7c  0d020226  ew_cfg r4, r4, zero, 19
000d80  0d800704  ew_cfg zero, r15, zero, 2
000d84  8d300008  ewcoeff_nlf_cfg r1, 4
000d88  9b1008b0  ori r1, r16, 2816
000d8c  0d800704  ew_cfg zero, r15, zero, 2
000d90  cdd01000  hp_ssmul r1, r1, r1, 0
000d94  9b1007c8  ori r1, r14, 3200
000d98  0d800704  ew_cfg zero, r15, zero, 2
000d9c  8d300008  ewcoeff_nlf_cfg r1, 4
000da0  9b1008b8  ori r1, r16, 2944
000da4  0d800704  ew_cfg zero, r15, zero, 2
000da8  cdd01000  hp_ssmul r1, r1, r1, 0
000dac  9b1007d0  ori r1, r14, 3328
000db0  0d000026  ew_cfg zero, zero, zero, 19
000db4  1d100200  unlock r4
000db8  1d000200  lock zero, r4
000dbc  0d000002  ew_cfg zero, zero, zero, 1
000dc0  0d130000  ewcoeff_cfg r6, zero, zero, 0
000dc4  0d050006  ew_cfg r10, zero, zero, 3
000dc8  0d020226  ew_cfg r4, r4, zero, 19
000dcc  0d800704  ew_cfg zero, r15, zero, 2
000dd0  8d300008  ewcoeff_nlf_cfg r1, 4
000dd4  9b1008c0  ori r1, r16, 3072
000dd8  0d800704  ew_cfg zero, r15, zero, 2
000ddc  cdd01000  hp_ssmul r1, r1, r1, 0
000de0  9b1007d8  ori r1, r14, 3456
000de4  0d800704  ew_cfg zero, r15, zero, 2
000de8  8d300008  ewcoeff_nlf_cfg r1, 4
000dec  9b1008c8  ori r1, r16, 3200
000df0  0d800704  ew_cfg zero, r15, zero, 2
000df4  cdd01000  hp_ssmul r1, r1, r1, 0
000df8  9b1007e0  ori r1, r14, 3584
000dfc  0d000026  ew_cfg zero, zero, zero, 19
000e00  1d100200  unlock r4
000e04  1d000200  lock zero, r4
000e08  0d000002  ew_cfg zero, zero, zero, 1
000e0c  0d130000  ewcoeff_cfg r6, zero, zero, 0
000e10  0d050006  ew_cfg r10, zero, zero, 3
000e14  0d020226  ew_cfg r4, r4, zero, 19
000e18  0d800704  ew_cfg zero, r15, zero, 2
000e1c  8d300008  ewcoeff_nlf_cfg r1, 4
000e20  9b1008d0  ori r1, r16, 3328
000e24  0d800704  ew_cfg zero, r15, zero, 2
000e28  cdd01000  hp_ssmul r1, r1, r1, 0
000e2c  9b1007e8  ori r1, r14, 3712
000e30  0d800704  ew_cfg zero, r15, zero, 2
000e34  8d300008  ewcoeff_nlf_cfg r1, 4
000e38  9b1008d8  ori r1, r16, 3456
000e3c  0d800704  ew_cfg zero, r15, zero, 2
000e40  cdd01000  hp_ssmul r1, r1, r1, 0
000e44  9b1007f0  ori r1, r14, 3840
000e48  0d000026  ew_cfg zero, zero, zero, 19
000e4c  1d100200  unlock r4
000e50  1d000200  lock zero, r4
000e54  0d000002  ew_cfg zero, zero, zero, 1
000e58  0d130000  ewcoeff_cfg r6, zero, zero, 0
000e5c  0d050006  ew_cfg r10, zero, zero, 3
000e60  0d020226  ew_cfg r4, r4, zero, 19
000e64  0d800704  ew_cfg zero, r15, zero, 2
000e68  8d300008  ewcoeff_nlf_cfg r1, 4
000e6c  9b1008e0  ori r1, r16, 3584
000e70  0d800704  ew_cfg zero, r15, zero, 2
000e74  cdd01000  hp_ssmul r1, r1, r1, 0
000e78  9b1007f8  ori r1, r14, 3968
000e7c  2b670200  lui r14, 38
000e80  0d800704  ew_cfg zero, r15, zero, 2
000e84  8d300008  ewcoeff_nlf_cfg r1, 4
000e88  9b1008e8  ori r1, r16, 3712
000e8c  0d800704  ew_cfg zero, r15, zero, 2
000e90  cdd01000  hp_ssmul r1, r1, r1, 0
000e94  9b1008f0  ori r1, r16, 3840
000e98  0d000026  ew_cfg zero, zero, zero, 19
000e9c  1d100200  unlock r4
000ea0  1d000200  lock zero, r4
000ea4  0d000002  ew_cfg zero, zero, zero, 1
000ea8  0d130000  ewcoeff_cfg r6, zero, zero, 0
000eac  0d050006  ew_cfg r10, zero, zero, 3
000eb0  0d020226  ew_cfg r4, r4, zero, 19
000eb4  0d800704  ew_cfg zero, r15, zero, 2
000eb8  0d370008  ewcoeff_nlf_cfg r14, 4
000ebc  0d800704  ew_cfg zero, r15, zero, 2
000ec0  cdd01000  hp_ssmul r1, r1, r1, 0
000ec4  9b100708  ori r1, r14, 128
000ec8  0d800704  ew_cfg zero, r15, zero, 2
000ecc  8d300008  ewcoeff_nlf_cfg r1, 4
000ed0  9b1008f8  ori r1, r16, 3968
000ed4  2b680000  lui r16, 6
000ed8  0d800704  ew_cfg zero, r15, zero, 2
000edc  cdd01000  hp_ssmul r1, r1, r1, 0
000ee0  9b100710  ori r1, r14, 256
000ee4  0d000026  ew_cfg zero, zero, zero, 19
000ee8  1d100200  unlock r4
000eec  1d000200  lock zero, r4
000ef0  0d000002  ew_cfg zero, zero, zero, 1
000ef4  0d130000  ewcoeff_cfg r6, zero, zero, 0
000ef8  0d050006  ew_cfg r10, zero, zero, 3
000efc  0d020226  ew_cfg r4, r4, zero, 19
000f00  0d800704  ew_cfg zero, r15, zero, 2
000f04  8d300008  ewcoeff_nlf_cfg r1, 4
000f08  9b100718  ori r1, r14, 384
000f0c  0d800704  ew_cfg zero, r15, zero, 2
000f10  4d580801  hp_ssmul r16, r16, r16, 0
000f14  0d800704  ew_cfg zero, r15, zero, 2
000f18  8d300008  ewcoeff_nlf_cfg r1, 4
000f1c  9b100808  ori r1, r16, 128
000f20  0d800704  ew_cfg zero, r15, zero, 2
000f24  cdd01000  hp_ssmul r1, r1, r1, 0
000f28  9b100720  ori r1, r14, 512
000f2c  0d000026  ew_cfg zero, zero, zero, 19
000f30  1d100200  unlock r4
000f34  1d000200  lock zero, r4
000f38  0d000002  ew_cfg zero, zero, zero, 1
000f3c  0d130000  ewcoeff_cfg r6, zero, zero, 0
000f40  0d050006  ew_cfg r10, zero, zero, 3
000f44  0d020226  ew_cfg r4, r4, zero, 19
000f48  0d800704  ew_cfg zero, r15, zero, 2
000f4c  8d300008  ewcoeff_nlf_cfg r1, 4
000f50  9b100810  ori r1, r16, 256
000f54  0d800704  ew_cfg zero, r15, zero, 2
000f58  cdd01000  hp_ssmul r1, r1, r1, 0
000f5c  9b100728  ori r1, r14, 640
000f60  0d800704  ew_cfg zero, r15, zero, 2
000f64  8d300008  ewcoeff_nlf_cfg r1, 4
000f68  9b100818  ori r1, r16, 384
000f6c  0d800704  ew_cfg zero, r15, zero, 2
000f70  cdd01000  hp_ssmul r1, r1, r1, 0
000f74  9b100730  ori r1, r14, 768
000f78  0d000026  ew_cfg zero, zero, zero, 19
000f7c  1d100200  unlock r4
000f80  1d000200  lock zero, r4
000f84  0d000002  ew_cfg zero, zero, zero, 1
000f88  0d130000  ewcoeff_cfg r6, zero, zero, 0
000f8c  0d050006  ew_cfg r10, zero, zero, 3
000f90  0d020226  ew_cfg r4, r4, zero, 19
000f94  0d800704  ew_cfg zero, r15, zero, 2
000f98  8d300008  ewcoeff_nlf_cfg r1, 4
000f9c  9b100820  ori r1, r16, 512
000fa0  0d800704  ew_cfg zero, r15, zero, 2
000fa4  cdd01000  hp_ssmul r1, r1, r1, 0
000fa8  9b100738  ori r1, r14, 896
000fac  0d800704  ew_cfg zero, r15, zero, 2
000fb0  8d300008  ewcoeff_nlf_cfg r1, 4
000fb4  9b100828  ori r1, r16, 640
000fb8  0d800704  ew_cfg zero, r15, zero, 2
000fbc  cdd01000  hp_ssmul r1, r1, r1, 0
000fc0  9b100740  ori r1, r14, 1024
000fc4  0d000026  ew_cfg zero, zero, zero, 19
000fc8  1d100200  unlock r4
000fcc  1d000200  lock zero, r4
000fd0  0d000002  ew_cfg zero, zero, zero, 1
000fd4  0d130000  ewcoeff_cfg r6, zero, zero, 0
000fd8  0d050006  ew_cfg r10, zero, zero, 3
000fdc  0d020226  ew_cfg r4, r4, zero, 19
000fe0  0d800704  ew_cfg zero, r15, zero, 2
000fe4  8d300008  ewcoeff_nlf_cfg r1, 4
000fe8  9b100830  ori r1, r16, 768
000fec  0d800704  ew_cfg zero, r15, zero, 2
000ff0  cdd01000  hp_ssmul r1, r1, r1, 0
000ff4  9b100748  ori r1, r14, 1152
000ff8  0d800704  ew_cfg zero, r15, zero, 2
000ffc  8d300008  ewcoeff_nlf_cfg r1, 4
001000  9b100838  ori r1, r16, 896
001004  0d800704  ew_cfg zero, r15, zero, 2
001008  cdd01000  hp_ssmul r1, r1, r1, 0
00100c  9b100750  ori r1, r14, 1280
001010  0d000026  ew_cfg zero, zero, zero, 19
001014  1d100200  unlock r4
001018  1d000200  lock zero, r4
00101c  0d000002  ew_cfg zero, zero, zero, 1
001020  0d130000  ewcoeff_cfg r6, zero, zero, 0
001024  0d050006  ew_cfg r10, zero, zero, 3
001028  0d020226  ew_cfg r4, r4, zero, 19
00102c  0d800704  ew_cfg zero, r15, zero, 2
001030  8d300008  ewcoeff_nlf_cfg r1, 4
001034  9b100840  ori r1, r16, 1024
001038  0d800704  ew_cfg zero, r15, zero, 2
00103c  cdd01000  hp_ssmul r1, r1, r1, 0
001040  9b100758  ori r1, r14, 1408
001044  0d800704  ew_cfg zero, r15, zero, 2
001048  8d300008  ewcoeff_nlf_cfg r1, 4
00104c  9b100848  ori r1, r16, 1152
001050  0d800704  ew_cfg zero, r15, zero, 2
001054  cdd01000  hp_ssmul r1, r1, r1, 0
001058  9b100760  ori r1, r14, 1536
00105c  0d000026  ew_cfg zero, zero, zero, 19
001060  1d100200  unlock r4
001064  1d000200  lock zero, r4
001068  0d000002  ew_cfg zero, zero, zero, 1
00106c  0d130000  ewcoeff_cfg r6, zero, zero, 0
001070  0d050006  ew_cfg r10, zero, zero, 3
001074  0d020226  ew_cfg r4, r4, zero, 19
001078  0d800704  ew_cfg zero, r15, zero, 2
00107c  8d300008  ewcoeff_nlf_cfg r1, 4
001080  9b100850  ori r1, r16, 1280
001084  0d800704  ew_cfg zero, r15, zero, 2
001088  cdd01000  hp_ssmul r1, r1, r1, 0
00108c  9b100768  ori r1, r14, 1664
001090  0d800704  ew_cfg zero, r15, zero, 2
001094  8d300008  ewcoeff_nlf_cfg r1, 4
001098  9b100858  ori r1, r16, 1408
00109c  0d800704  ew_cfg zero, r15, zero, 2
0010a0  cdd01000  hp_ssmul r1, r1, r1, 0
0010a4  9b100770  ori r1, r14, 1792
0010a8  0d000026  ew_cfg zero, zero, zero, 19
0010ac  1d100200  unlock r4
0010b0  1d000200  lock zero, r4
0010b4  0d000002  ew_cfg zero, zero, zero, 1
0010b8  0d130000  ewcoeff_cfg r6, zero, zero, 0
0010bc  0d050006  ew_cfg r10, zero, zero, 3
0010c0  0d020226  ew_cfg r4, r4, zero, 19
0010c4  0d800704  ew_cfg zero, r15, zero, 2
0010c8  8d300008  ewcoeff_nlf_cfg r1, 4
0010cc  9b100860  ori r1, r16, 1536
0010d0  0d800704  ew_cfg zero, r15, zero, 2
0010d4  cdd01000  hp_ssmul r1, r1, r1, 0
0010d8  9b100778  ori r1, r14, 1920
0010dc  0d800704  ew_cfg zero, r15, zero, 2
0010e0  8d300008  ewcoeff_nlf_cfg r1, 4
0010e4  9b100868  ori r1, r16, 1664
0010e8  0d800704  ew_cfg zero, r15, zero, 2
0010ec  cdd01000  hp_ssmul r1, r1, r1, 0
0010f0  9b100780  ori r1, r14, 2048
0010f4  0d000026  ew_cfg zero, zero, zero, 19
0010f8  1d100200  unlock r4
0010fc  1d000200  lock zero, r4
001100  0d000002  ew_cfg zero, zero, zero, 1
001104  0d130000  ewcoeff_cfg r6, zero, zero, 0
001108  0d050006  ew_cfg r10, zero, zero, 3
00110c  0d020226  ew_cfg r4, r4, zero, 19
001110  0d800704  ew_cfg zero, r15, zero, 2
001114  8d300008  ewcoeff_nlf_cfg r1, 4
001118  9b100870  ori r1, r16, 1792
00111c  0d800704  ew_cfg zero, r15, zero, 2
001120  cdd01000  hp_ssmul r1, r1, r1, 0
001124  9b100788  ori r1, r14, 2176
001128  0d800704  ew_cfg zero, r15, zero, 2
00112c  8d300008  ewcoeff_nlf_cfg r1, 4
001130  9b100878  ori r1, r16, 1920
001134  0d800704  ew_cfg zero, r15, zero, 2
001138  cdd01000  hp_ssmul r1, r1, r1, 0
00113c  9b100790  ori r1, r14, 2304
001140  0d000026  ew_cfg zero, zero, zero, 19
001144  1d100200  unlock r4
001148  1d000200  lock zero, r4
00114c  0d000002  ew_cfg zero, zero, zero, 1
001150  0d130000  ewcoeff_cfg r6, zero, zero, 0
001154  0d050006  ew_cfg r10, zero, zero, 3
001158  0d020226  ew_cfg r4, r4, zero, 19
00115c  0d800704  ew_cfg zero, r15, zero, 2
001160  8d300008  ewcoeff_nlf_cfg r1, 4
001164  9b100880  ori r1, r16, 2048
001168  0d800704  ew_cfg zero, r15, zero, 2
00116c  cdd01000  hp_ssmul r1, r1, r1, 0
001170  9b100798  ori r1, r14, 2432
001174  0d800704  ew_cfg zero, r15, zero, 2
001178  8d300008  ewcoeff_nlf_cfg r1, 4
00117c  9b100888  ori r1, r16, 2176
001180  0d800704  ew_cfg zero, r15, zero, 2
001184  cdd01000  hp_ssmul r1, r1, r1, 0
001188  9b1007a0  ori r1, r14, 2560
00118c  0d000026  ew_cfg zero, zero, zero, 19
001190  1d100200  unlock r4
001194  1d000200  lock zero, r4
001198  0d000002  ew_cfg zero, zero, zero, 1
00119c  0d130000  ewcoeff_cfg r6, zero, zero, 0
0011a0  0d050006  ew_cfg r10, zero, zero, 3
0011a4  0d020226  ew_cfg r4, r4, zero, 19
0011a8  0d800704  ew_cfg zero, r15, zero, 2
0011ac  8d300008  ewcoeff_nlf_cfg r1, 4
0011b0  9b100890  ori r1, r16, 2304
0011b4  0d800704  ew_cfg zero, r15, zero, 2
0011b8  cdd01000  hp_ssmul r1, r1, r1, 0
0011bc  9b1007a8  ori r1, r14, 2688
0011c0  0d800704  ew_cfg zero, r15, zero, 2
0011c4  8d300008  ewcoeff_nlf_cfg r1, 4
0011c8  9b100898  ori r1, r16, 2432
0011cc  0d800704  ew_cfg zero, r15, zero, 2
0011d0  cdd01000  hp_ssmul r1, r1, r1, 0
0011d4  9b1007b0  ori r1, r14, 2816
0011d8  0d000026  ew_cfg zero, zero, zero, 19
0011dc  1d100200  unlock r4
0011e0  1d000200  lock zero, r4
0011e4  0d000002  ew_cfg zero, zero, zero, 1
0011e8  0d130000  ewcoeff_cfg r6, zero, zero, 0
0011ec  0d050006  ew_cfg r10, zero, zero, 3
0011f0  0d020226  ew_cfg r4, r4, zero, 19
0011f4  0d800704  ew_cfg zero, r15, zero, 2
0011f8  8d300008  ewcoeff_nlf_cfg r1, 4
0011fc  9b1008a0  ori r1, r16, 2560
001200  0d800704  ew_cfg zero, r15, zero, 2
001204  cdd01000  hp_ssmul r1, r1, r1, 0
001208  9b1007b8  ori r1, r14, 2944
00120c  0d800704  ew_cfg zero, r15, zero, 2
001210  8d300008  ewcoeff_nlf_cfg r1, 4
001214  9b1008a8  ori r1, r16, 2688
001218  0d800704  ew_cfg zero, r15, zero, 2
00121c  cdd01000  hp_ssmul r1, r1, r1, 0
001220  9b1007c0  ori r1, r14, 3072
001224  0d000026  ew_cfg zero, zero, zero, 19
001228  1d100200  unlock r4
00122c  1d000200  lock zero, r4
001230  0d000002  ew_cfg zero, zero, zero, 1
001234  0d130000  ewcoeff_cfg r6, zero, zero, 0
001238  0d050006  ew_cfg r10, zero, zero, 3
00123c  0d020226  ew_cfg r4, r4, zero, 19
001240  0d800704  ew_cfg zero, r15, zero, 2
001244  8d300008  ewcoeff_nlf_cfg r1, 4
001248  9b1008b0  ori r1, r16, 2816
00124c  0d800704  ew_cfg zero, r15, zero, 2
001250  cdd01000  hp_ssmul r1, r1, r1, 0
001254  9b1007c8  ori r1, r14, 3200
001258  0d800704  ew_cfg zero, r15, zero, 2
00125c  8d300008  ewcoeff_nlf_cfg r1, 4
001260  9b1008b8  ori r1, r16, 2944
001264  0d800704  ew_cfg zero, r15, zero, 2
001268  cdd01000  hp_ssmul r1, r1, r1, 0
00126c  9b1007d0  ori r1, r14, 3328
001270  0d000026  ew_cfg zero, zero, zero, 19
001274  1d100200  unlock r4
001278  1d000200  lock zero, r4
00127c  0d000002  ew_cfg zero, zero, zero, 1
001280  0d130000  ewcoeff_cfg r6, zero, zero, 0
001284  0d050006  ew_cfg r10, zero, zero, 3
001288  0d020226  ew_cfg r4, r4, zero, 19
00128c  0d800704  ew_cfg zero, r15, zero, 2
001290  8d300008  ewcoeff_nlf_cfg r1, 4
001294  9b1008c0  ori r1, r16, 3072
001298  0d800704  ew_cfg zero, r15, zero, 2
00129c  cdd01000  hp_ssmul r1, r1, r1, 0
0012a0  9b1007d8  ori r1, r14, 3456
0012a4  0d800704  ew_cfg zero, r15, zero, 2
0012a8  8d300008  ewcoeff_nlf_cfg r1, 4
0012ac  9b1008c8  ori r1, r16, 3200
0012b0  0d800704  ew_cfg zero, r15, zero, 2
0012b4  cdd01000  hp_ssmul r1, r1, r1, 0
0012b8  9b1007e0  ori r1, r14, 3584
0012bc  0d000026  ew_cfg zero, zero, zero, 19
0012c0  1d100200  unlock r4
0012c4  1d000200  lock zero, r4
0012c8  0d000002  ew_cfg zero, zero, zero, 1
0012cc  0d130000  ewcoeff_cfg r6, zero, zero, 0
0012d0  0d050006  ew_cfg r10, zero, zero, 3
0012d4  0d020226  ew_cfg r4, r4, zero, 19
0012d8  0d800704  ew_cfg zero, r15, zero, 2
0012dc  8d300008  ewcoeff_nlf_cfg r1, 4
0012e0  9b1008d0  ori r1, r16, 3328
0012e4  0d800704  ew_cfg zero, r15, zero, 2
0012e8  cdd01000  hp_ssmul r1, r1, r1, 0
0012ec  9b1007e8  ori r1, r14, 3712
0012f0  0d800704  ew_cfg zero, r15, zero, 2
0012f4  8d300008  ewcoeff_nlf_cfg r1, 4
0012f8  9b1008d8  ori r1, r16, 3456
0012fc  0d800704  ew_cfg zero, r15, zero, 2
001300  cdd01000  hp_ssmul r1, r1, r1, 0
001304  9b1007f0  ori r1, r14, 3840
001308  0d000026  ew_cfg zero, zero, zero, 19
00130c  1d100200  unlock r4
001310  1d000200  lock zero, r4
001314  0d000002  ew_cfg zero, zero, zero, 1
001318  0d130000  ewcoeff_cfg r6, zero, zero, 0
00131c  0d050006  ew_cfg r10, zero, zero, 3
001320  0d020226  ew_cfg r4, r4, zero, 19
001324  0d800704  ew_cfg zero, r15, zero, 2
001328  8d300008  ewcoeff_nlf_cfg r1, 4
00132c  9b1008e0  ori r1, r16, 3584
001330  0d800704  ew_cfg zero, r15, zero, 2
001334  cdd01000  hp_ssmul r1, r1, r1, 0
001338  9b1007f8  ori r1, r14, 3968
00133c  2b770200  lui r14, 39
001340  0d800704  ew_cfg zero, r15, zero, 2
001344  8d300008  ewcoeff_nlf_cfg r1, 4
001348  9b1008e8  ori r1, r16, 3712
00134c  0d800704  ew_cfg zero, r15, zero, 2
001350  cdd01000  hp_ssmul r1, r1, r1, 0
001354  9b1008f0  ori r1, r16, 3840
001358  0d000026  ew_cfg zero, zero, zero, 19
00135c  1d100200  unlock r4
001360  1d000200  lock zero, r4
001364  0d000002  ew_cfg zero, zero, zero, 1
001368  0d130000  ewcoeff_cfg r6, zero, zero, 0
00136c  0d050006  ew_cfg r10, zero, zero, 3
001370  0d020226  ew_cfg r4, r4, zero, 19
001374  0d800704  ew_cfg zero, r15, zero, 2
001378  0d370008  ewcoeff_nlf_cfg r14, 4
00137c  0d800704  ew_cfg zero, r15, zero, 2
001380  cdd01000  hp_ssmul r1, r1, r1, 0
001384  9b100708  ori r1, r14, 128
001388  0d800704  ew_cfg zero, r15, zero, 2
00138c  8d300008  ewcoeff_nlf_cfg r1, 4
001390  9b1008f8  ori r1, r16, 3968
001394  0d800704  ew_cfg zero, r15, zero, 2
001398  cdd01000  hp_ssmul r1, r1, r1, 0
00139c  9b100710  ori r1, r14, 256
0013a0  0d000026  ew_cfg zero, zero, zero, 19
0013a4  1d100200  unlock r4
0013a8  1d000200  lock zero, r4
0013ac  0d000002  ew_cfg zero, zero, zero, 1
0013b0  0d130000  ewcoeff_cfg r6, zero, zero, 0
0013b4  0d050006  ew_cfg r10, zero, zero, 3
0013b8  0d020226  ew_cfg r4, r4, zero, 19
0013bc  0d800704  ew_cfg zero, r15, zero, 2
0013c0  8d300008  ewcoeff_nlf_cfg r1, 4
0013c4  9b100718  ori r1, r14, 384
0013c8  0d800704  ew_cfg zero, r15, zero, 2
0013cc  4d5ece01  hp_ssmul r28, r28, r28, 0
0013d0  0d800704  ew_cfg zero, r15, zero, 2
0013d4  8d300008  ewcoeff_nlf_cfg r1, 4
0013d8  9b100e08  ori r1, r28, 128
0013dc  0d800704  ew_cfg zero, r15, zero, 2
0013e0  cdd01000  hp_ssmul r1, r1, r1, 0
0013e4  9b100720  ori r1, r14, 512
0013e8  0d000026  ew_cfg zero, zero, zero, 19
0013ec  1d100200  unlock r4
0013f0  1d000200  lock zero, r4
0013f4  0d000002  ew_cfg zero, zero, zero, 1
0013f8  0d130000  ewcoeff_cfg r6, zero, zero, 0
0013fc  0d050006  ew_cfg r10, zero, zero, 3
001400  0d020226  ew_cfg r4, r4, zero, 19
001404  0d800704  ew_cfg zero, r15, zero, 2
001408  8d300008  ewcoeff_nlf_cfg r1, 4
00140c  9b100e10  ori r1, r28, 256
001410  0d800704  ew_cfg zero, r15, zero, 2
001414  cdd01000  hp_ssmul r1, r1, r1, 0
001418  9b100728  ori r1, r14, 640
00141c  0d800704  ew_cfg zero, r15, zero, 2
001420  8d300008  ewcoeff_nlf_cfg r1, 4
001424  9b100e18  ori r1, r28, 384
001428  0d800704  ew_cfg zero, r15, zero, 2
00142c  cdd01000  hp_ssmul r1, r1, r1, 0
001430  9b100730  ori r1, r14, 768
001434  0d000026  ew_cfg zero, zero, zero, 19
001438  1d100200  unlock r4
00143c  1d000200  lock zero, r4
001440  0d000002  ew_cfg zero, zero, zero, 1
001444  0d130000  ewcoeff_cfg r6, zero, zero, 0
001448  0d050006  ew_cfg r10, zero, zero, 3
00144c  0d020226  ew_cfg r4, r4, zero, 19
001450  0d800704  ew_cfg zero, r15, zero, 2
001454  8d300008  ewcoeff_nlf_cfg r1, 4
001458  9b100e20  ori r1, r28, 512
00145c  0d800704  ew_cfg zero, r15, zero, 2
001460  cdd01000  hp_ssmul r1, r1, r1, 0
001464  9b100738  ori r1, r14, 896
001468  0d800704  ew_cfg zero, r15, zero, 2
00146c  8d300008  ewcoeff_nlf_cfg r1, 4
001470  9b100e28  ori r1, r28, 640
001474  0d800704  ew_cfg zero, r15, zero, 2
001478  cdd01000  hp_ssmul r1, r1, r1, 0
00147c  9b100740  ori r1, r14, 1024
001480  0d000026  ew_cfg zero, zero, zero, 19
001484  1d100200  unlock r4
001488  1d000200  lock zero, r4
00148c  0d000002  ew_cfg zero, zero, zero, 1
001490  0d130000  ewcoeff_cfg r6, zero, zero, 0
001494  0d050006  ew_cfg r10, zero, zero, 3
001498  0d020226  ew_cfg r4, r4, zero, 19
00149c  0d800704  ew_cfg zero, r15, zero, 2
0014a0  8d300008  ewcoeff_nlf_cfg r1, 4
0014a4  9b100e30  ori r1, r28, 768
0014a8  0d800704  ew_cfg zero, r15, zero, 2
0014ac  cdd01000  hp_ssmul r1, r1, r1, 0
0014b0  9b100748  ori r1, r14, 1152
0014b4  0d800704  ew_cfg zero, r15, zero, 2
0014b8  8d300008  ewcoeff_nlf_cfg r1, 4
0014bc  9b100e38  ori r1, r28, 896
0014c0  0d800704  ew_cfg zero, r15, zero, 2
0014c4  cdd01000  hp_ssmul r1, r1, r1, 0
0014c8  9b100750  ori r1, r14, 1280
0014cc  0d000026  ew_cfg zero, zero, zero, 19
0014d0  1d100200  unlock r4
0014d4  1d000200  lock zero, r4
0014d8  0d000002  ew_cfg zero, zero, zero, 1
0014dc  0d130000  ewcoeff_cfg r6, zero, zero, 0
0014e0  0d050006  ew_cfg r10, zero, zero, 3
0014e4  0d020226  ew_cfg r4, r4, zero, 19
0014e8  0d800704  ew_cfg zero, r15, zero, 2
0014ec  8d300008  ewcoeff_nlf_cfg r1, 4
0014f0  9b100e40  ori r1, r28, 1024
0014f4  0d800704  ew_cfg zero, r15, zero, 2
0014f8  cdd01000  hp_ssmul r1, r1, r1, 0
0014fc  9b100758  ori r1, r14, 1408
001500  0d800704  ew_cfg zero, r15, zero, 2
001504  8d300008  ewcoeff_nlf_cfg r1, 4
001508  9b100e48  ori r1, r28, 1152
00150c  0d800704  ew_cfg zero, r15, zero, 2
001510  cdd01000  hp_ssmul r1, r1, r1, 0
001514  9b100760  ori r1, r14, 1536
001518  0d000026  ew_cfg zero, zero, zero, 19
00151c  1d100200  unlock r4
001520  1d000200  lock zero, r4
001524  0d000002  ew_cfg zero, zero, zero, 1
001528  0d130000  ewcoeff_cfg r6, zero, zero, 0
00152c  0d050006  ew_cfg r10, zero, zero, 3
001530  0d020226  ew_cfg r4, r4, zero, 19
001534  0d800704  ew_cfg zero, r15, zero, 2
001538  8d300008  ewcoeff_nlf_cfg r1, 4
00153c  9b100e50  ori r1, r28, 1280
001540  0d800704  ew_cfg zero, r15, zero, 2
001544  cdd01000  hp_ssmul r1, r1, r1, 0
001548  9b100768  ori r1, r14, 1664
00154c  0d800704  ew_cfg zero, r15, zero, 2
001550  8d300008  ewcoeff_nlf_cfg r1, 4
001554  9b100e58  ori r1, r28, 1408
001558  0d800704  ew_cfg zero, r15, zero, 2
00155c  cdd01000  hp_ssmul r1, r1, r1, 0
001560  9b100770  ori r1, r14, 1792
001564  0d000026  ew_cfg zero, zero, zero, 19
001568  1d100200  unlock r4
00156c  1d000200  lock zero, r4
001570  0d000002  ew_cfg zero, zero, zero, 1
001574  0d130000  ewcoeff_cfg r6, zero, zero, 0
001578  0d050006  ew_cfg r10, zero, zero, 3
00157c  0d020226  ew_cfg r4, r4, zero, 19
001580  0d800704  ew_cfg zero, r15, zero, 2
001584  8d300008  ewcoeff_nlf_cfg r1, 4
001588  9b100e60  ori r1, r28, 1536
00158c  0d800704  ew_cfg zero, r15, zero, 2
001590  cdd01000  hp_ssmul r1, r1, r1, 0
001594  9b100778  ori r1, r14, 1920
001598  0d800704  ew_cfg zero, r15, zero, 2
00159c  8d300008  ewcoeff_nlf_cfg r1, 4
0015a0  9b100e68  ori r1, r28, 1664
0015a4  0d800704  ew_cfg zero, r15, zero, 2
0015a8  cdd01000  hp_ssmul r1, r1, r1, 0
0015ac  9b100780  ori r1, r14, 2048
0015b0  0d000026  ew_cfg zero, zero, zero, 19
0015b4  1d100200  unlock r4
0015b8  1d000200  lock zero, r4
0015bc  0d000002  ew_cfg zero, zero, zero, 1
0015c0  0d130000  ewcoeff_cfg r6, zero, zero, 0
0015c4  0d050006  ew_cfg r10, zero, zero, 3
0015c8  0d020226  ew_cfg r4, r4, zero, 19
0015cc  0d800704  ew_cfg zero, r15, zero, 2
0015d0  8d300008  ewcoeff_nlf_cfg r1, 4
0015d4  9b100e70  ori r1, r28, 1792
0015d8  0d800704  ew_cfg zero, r15, zero, 2
0015dc  cdd01000  hp_ssmul r1, r1, r1, 0
0015e0  9b100788  ori r1, r14, 2176
0015e4  0d800704  ew_cfg zero, r15, zero, 2
0015e8  8d300008  ewcoeff_nlf_cfg r1, 4
0015ec  9b100e78  ori r1, r28, 1920
0015f0  0d800704  ew_cfg zero, r15, zero, 2
0015f4  cdd01000  hp_ssmul r1, r1, r1, 0
0015f8  9b100790  ori r1, r14, 2304
0015fc  0d000026  ew_cfg zero, zero, zero, 19
001600  1d100200  unlock r4
001604  1d000200  lock zero, r4
001608  0d000002  ew_cfg zero, zero, zero, 1
00160c  0d130000  ewcoeff_cfg r6, zero, zero, 0
001610  0d050006  ew_cfg r10, zero, zero, 3
001614  0d020226  ew_cfg r4, r4, zero, 19
001618  0d800704  ew_cfg zero, r15, zero, 2
00161c  8d300008  ewcoeff_nlf_cfg r1, 4
001620  9b100e80  ori r1, r28, 2048
001624  0d800704  ew_cfg zero, r15, zero, 2
001628  cdd01000  hp_ssmul r1, r1, r1, 0
00162c  9b100798  ori r1, r14, 2432
001630  0d800704  ew_cfg zero, r15, zero, 2
001634  8d300008  ewcoeff_nlf_cfg r1, 4
001638  9b100e88  ori r1, r28, 2176
00163c  0d800704  ew_cfg zero, r15, zero, 2
001640  cdd01000  hp_ssmul r1, r1, r1, 0
001644  9b1007a0  ori r1, r14, 2560
001648  0d000026  ew_cfg zero, zero, zero, 19
00164c  1d100200  unlock r4
001650  1d000200  lock zero, r4
001654  0d000002  ew_cfg zero, zero, zero, 1
001658  0d130000  ewcoeff_cfg r6, zero, zero, 0
00165c  0d050006  ew_cfg r10, zero, zero, 3
001660  0d020226  ew_cfg r4, r4, zero, 19
001664  0d800704  ew_cfg zero, r15, zero, 2
001668  8d300008  ewcoeff_nlf_cfg r1, 4
00166c  9b100e90  ori r1, r28, 2304
001670  0d800704  ew_cfg zero, r15, zero, 2
001674  cdd01000  hp_ssmul r1, r1, r1, 0
001678  9b1007a8  ori r1, r14, 2688
00167c  0d800704  ew_cfg zero, r15, zero, 2
001680  8d300008  ewcoeff_nlf_cfg r1, 4
001684  9b100e98  ori r1, r28, 2432
001688  0d800704  ew_cfg zero, r15, zero, 2
00168c  cdd01000  hp_ssmul r1, r1, r1, 0
001690  9b1007b0  ori r1, r14, 2816
001694  0d000026  ew_cfg zero, zero, zero, 19
001698  1d100200  unlock r4
00169c  1d000200  lock zero, r4
0016a0  0d000002  ew_cfg zero, zero, zero, 1
0016a4  0d130000  ewcoeff_cfg r6, zero, zero, 0
0016a8  0d050006  ew_cfg r10, zero, zero, 3
0016ac  0d020226  ew_cfg r4, r4, zero, 19
0016b0  0d800704  ew_cfg zero, r15, zero, 2
0016b4  8d300008  ewcoeff_nlf_cfg r1, 4
0016b8  9b100ea0  ori r1, r28, 2560
0016bc  0d800704  ew_cfg zero, r15, zero, 2
0016c0  cdd01000  hp_ssmul r1, r1, r1, 0
0016c4  9b1007b8  ori r1, r14, 2944
0016c8  0d800704  ew_cfg zero, r15, zero, 2
0016cc  8d300008  ewcoeff_nlf_cfg r1, 4
0016d0  9b100ea8  ori r1, r28, 2688
0016d4  0d800704  ew_cfg zero, r15, zero, 2
0016d8  cdd01000  hp_ssmul r1, r1, r1, 0
0016dc  9b1007c0  ori r1, r14, 3072
0016e0  0d000026  ew_cfg zero, zero, zero, 19
0016e4  1d100200  unlock r4
0016e8  1d000200  lock zero, r4
0016ec  0d000002  ew_cfg zero, zero, zero, 1
0016f0  0d130000  ewcoeff_cfg r6, zero, zero, 0
0016f4  0d050006  ew_cfg r10, zero, zero, 3
0016f8  0d020226  ew_cfg r4, r4, zero, 19
0016fc  0d800704  ew_cfg zero, r15, zero, 2
001700  8d300008  ewcoeff_nlf_cfg r1, 4
001704  9b100eb0  ori r1, r28, 2816
001708  0d800704  ew_cfg zero, r15, zero, 2
00170c  cdd01000  hp_ssmul r1, r1, r1, 0
001710  9b1007c8  ori r1, r14, 3200
001714  0d800704  ew_cfg zero, r15, zero, 2
001718  8d300008  ewcoeff_nlf_cfg r1, 4
00171c  9b100eb8  ori r1, r28, 2944
001720  0d800704  ew_cfg zero, r15, zero, 2
001724  cdd01000  hp_ssmul r1, r1, r1, 0
001728  9b1007d0  ori r1, r14, 3328
00172c  0d000026  ew_cfg zero, zero, zero, 19
001730  1d100200  unlock r4
001734  1d000200  lock zero, r4
001738  0d000002  ew_cfg zero, zero, zero, 1
00173c  0d130000  ewcoeff_cfg r6, zero, zero, 0
001740  0d050006  ew_cfg r10, zero, zero, 3
001744  0d020226  ew_cfg r4, r4, zero, 19
001748  0d800704  ew_cfg zero, r15, zero, 2
00174c  8d300008  ewcoeff_nlf_cfg r1, 4
001750  9b100ec0  ori r1, r28, 3072
001754  0d800704  ew_cfg zero, r15, zero, 2
001758  cdd01000  hp_ssmul r1, r1, r1, 0
00175c  9b1007d8  ori r1, r14, 3456
001760  0d800704  ew_cfg zero, r15, zero, 2
001764  8d300008  ewcoeff_nlf_cfg r1, 4
001768  9b100ec8  ori r1, r28, 3200
00176c  0d800704  ew_cfg zero, r15, zero, 2
001770  cdd01000  hp_ssmul r1, r1, r1, 0
001774  9b1007e0  ori r1, r14, 3584
001778  0d000026  ew_cfg zero, zero, zero, 19
00177c  1d100200  unlock r4
001780  1d000200  lock zero, r4
001784  0d000002  ew_cfg zero, zero, zero, 1
001788  0d130000  ewcoeff_cfg r6, zero, zero, 0
00178c  0d050006  ew_cfg r10, zero, zero, 3
001790  0d020226  ew_cfg r4, r4, zero, 19
001794  0d800704  ew_cfg zero, r15, zero, 2
001798  8d300008  ewcoeff_nlf_cfg r1, 4
00179c  9b100ed0  ori r1, r28, 3328
0017a0  0d800704  ew_cfg zero, r15, zero, 2
0017a4  cdd01000  hp_ssmul r1, r1, r1, 0
0017a8  9b1007e8  ori r1, r14, 3712
0017ac  0d800704  ew_cfg zero, r15, zero, 2
0017b0  8d300008  ewcoeff_nlf_cfg r1, 4
0017b4  9b100ed8  ori r1, r28, 3456
0017b8  0d800704  ew_cfg zero, r15, zero, 2
0017bc  cdd01000  hp_ssmul r1, r1, r1, 0
0017c0  9b1007f0  ori r1, r14, 3840
0017c4  0d000026  ew_cfg zero, zero, zero, 19
0017c8  1d100200  unlock r4
0017cc  1d000200  lock zero, r4
0017d0  0d000002  ew_cfg zero, zero, zero, 1
0017d4  0d130000  ewcoeff_cfg r6, zero, zero, 0
0017d8  0d050006  ew_cfg r10, zero, zero, 3
0017dc  0d020226  ew_cfg r4, r4, zero, 19
0017e0  0d800704  ew_cfg zero, r15, zero, 2
0017e4  8d300008  ewcoeff_nlf_cfg r1, 4
0017e8  9b100ee0  ori r1, r28, 3584
0017ec  0d800704  ew_cfg zero, r15, zero, 2
0017f0  cdd01000  hp_ssmul r1, r1, r1, 0
0017f4  9b1007f8  ori r1, r14, 3968
0017f8  2b870200  lui r14, 40
0017fc  0d800704  ew_cfg zero, r15, zero, 2
001800  8d300008  ewcoeff_nlf_cfg r1, 4
001804  9b100ee8  ori r1, r28, 3712
001808  0d800704  ew_cfg zero, r15, zero, 2
00180c  cdd01000  hp_ssmul r1, r1, r1, 0
001810  9b100ef0  ori r1, r28, 3840
001814  0d000026  ew_cfg zero, zero, zero, 19
001818  1d100200  unlock r4
00181c  1d000200  lock zero, r4
001820  0d000002  ew_cfg zero, zero, zero, 1
001824  0d130000  ewcoeff_cfg r6, zero, zero, 0
001828  0d050006  ew_cfg r10, zero, zero, 3
00182c  0d020226  ew_cfg r4, r4, zero, 19
001830  0d800704  ew_cfg zero, r15, zero, 2
001834  0d370008  ewcoeff_nlf_cfg r14, 4
001838  0d800704  ew_cfg zero, r15, zero, 2
00183c  cdd01000  hp_ssmul r1, r1, r1, 0
001840  9b100708  ori r1, r14, 128
001844  0d800704  ew_cfg zero, r15, zero, 2
001848  8d300008  ewcoeff_nlf_cfg r1, 4
00184c  9b100ef8  ori r1, r28, 3968
001850  0d800704  ew_cfg zero, r15, zero, 2
001854  cdd01000  hp_ssmul r1, r1, r1, 0
001858  9f403000  addli r1, zero, 28
00185c  0d000026  ew_cfg zero, zero, zero, 19
001860  1d100200  unlock r4
001864  7d000400  xsignal r8, 0
001868  7d900000  xwait r1, 0
00186c  1d000200  lock zero, r4
001870  0d000002  ew_cfg zero, zero, zero, 1
001874  e3001ffe  loadli.w r1,  -248(r30)
001878  63440ffe  loadli.w r8,  -252(r30)
00187c  0d141000  ewcoeff_cfg r8, zero, r1, 0
001880  9b100710  ori r1, r14, 256
001884  0d800604  ew_cfg zero, r13, zero, 2
001888  0d020006  ew_cfg r4, zero, zero, 3
00188c  0d020226  ew_cfg r4, r4, zero, 19
001890  ad805200  dsmadd r1, r5, r5, 0
001894  0d000026  ew_cfg zero, zero, zero, 19
001898  1d100200  unlock r4
00189c  1d000200  lock zero, r4
0018a0  0d000002  ew_cfg zero, zero, zero, 1
0018a4  0d106000  ewcoeff_cfg zero, zero, r6, 0
0018a8  0d800604  ew_cfg zero, r13, zero, 2
0018ac  0d020006  ew_cfg r4, zero, zero, 3
0018b0  0d024226  ew_cfg r4, r4, r4, 19
0018b4  ad905000  dsmul r1, r1, r5, 0
0018b8  0d000026  ew_cfg zero, zero, zero, 19
0018bc  1d100200  unlock r4
0018c0  1d000200  lock zero, r4
0018c4  0d000002  ew_cfg zero, zero, zero, 1
0018c8  63040ffe  loadli.w r8,  -256(r30)
0018cc  0d138000  ewcoeff_cfg r6, zero, r8, 0
0018d0  0d800604  ew_cfg zero, r13, zero, 2
0018d4  0d020006  ew_cfg r4, zero, zero, 3
0018d8  0d020226  ew_cfg r4, r4, zero, 19
0018dc  ad801000  dsmadd r1, r1, r1, 0
0018e0  0d000026  ew_cfg zero, zero, zero, 19
0018e4  1d100200  unlock r4
0018e8  1d000200  lock zero, r4
0018ec  0d000002  ew_cfg zero, zero, zero, 1
0018f0  0d106000  ewcoeff_cfg zero, zero, r6, 0
0018f4  0d800604  ew_cfg zero, r13, zero, 2
0018f8  0d020006  ew_cfg r4, zero, zero, 3
0018fc  0d024226  ew_cfg r4, r4, r4, 19
001900  ad905000  dsmul r1, r1, r5, 0
001904  0d000026  ew_cfg zero, zero, zero, 19
001908  1d100200  unlock r4
00190c  1d000200  lock zero, r4
001910  0d000002  ew_cfg zero, zero, zero, 1
001914  6344fffd  loadli.w r8,  -260(r30)
001918  0d138000  ewcoeff_cfg r6, zero, r8, 0
00191c  0d800604  ew_cfg zero, r13, zero, 2
001920  0d020006  ew_cfg r4, zero, zero, 3
001924  0d020226  ew_cfg r4, r4, zero, 19
001928  ad801000  dsmadd r1, r1, r1, 0
00192c  0d000026  ew_cfg zero, zero, zero, 19
001930  1d100200  unlock r4
001934  1d000200  lock zero, r4
001938  0d000002  ew_cfg zero, zero, zero, 1
00193c  0d106000  ewcoeff_cfg zero, zero, r6, 0
001940  0d800604  ew_cfg zero, r13, zero, 2
001944  0d020006  ew_cfg r4, zero, zero, 3
001948  0d024226  ew_cfg r4, r4, r4, 19
00194c  ad905000  dsmul r1, r1, r5, 0
001950  0d000026  ew_cfg zero, zero, zero, 19
001954  1d100200  unlock r4
001958  1d000200  lock zero, r4
00195c  0d000002  ew_cfg zero, zero, zero, 1
001960  6304fffd  loadli.w r8,  -264(r30)
001964  0d138000  ewcoeff_cfg r6, zero, r8, 0
001968  1f043000  addli r8, zero, 24
00196c  0d800604  ew_cfg zero, r13, zero, 2
001970  0d020006  ew_cfg r4, zero, zero, 3
001974  0d020226  ew_cfg r4, r4, zero, 19
001978  ad801000  dsmadd r1, r1, r1, 0
00197c  0d000026  ew_cfg zero, zero, zero, 19
001980  1d100200  unlock r4
001984  1d000200  lock zero, r4
001988  0d000002  ew_cfg zero, zero, zero, 1
00198c  0d106000  ewcoeff_cfg zero, zero, r6, 0
001990  0d800604  ew_cfg zero, r13, zero, 2
001994  0d020006  ew_cfg r4, zero, zero, 3
001998  0d024226  ew_cfg r4, r4, r4, 19
00199c  ad905000  dsmul r1, r1, r5, 0
0019a0  9f420000  addli r5, zero, 4
0019a4  0d000026  ew_cfg zero, zero, zero, 19
0019a8  1d100200  unlock r4
0019ac  7d800200  xsignal r5, 0
0019b0  7d100400  xwait r8, 0
0019b4  1f643000  addli r8, zero, 30
0019b8  7d100400  xwait r8, 0
0019bc  1d000200  lock zero, r4
0019c0  0d000002  ew_cfg zero, zero, zero, 1
0019c4  0d106000  ewcoeff_cfg zero, zero, r6, 0
0019c8  0d800604  ew_cfg zero, r13, zero, 2
0019cc  0d020006  ew_cfg r4, zero, zero, 3
0019d0  0d024226  ew_cfg r4, r4, r4, 19
0019d4  63442ffe  loadli.w r8,  -236(r30)
0019d8  2d142100  dsmul r8, r2, r2, 0
0019dc  1f712000  addli r2, zero, 23
0019e0  0d000026  ew_cfg zero, zero, zero, 19
0019e4  1d100200  unlock r4
0019e8  7d000100  xsignal r2, 0
0019ec  1f513000  addli r2, zero, 29
0019f0  7d000100  xsignal r2, 0
0019f4  7d900700  xwait r15, 0
0019f8  1d000200  lock zero, r4
0019fc  1f011000  addli r2, zero, 8
001a00  0d000002  ew_cfg zero, zero, zero, 1
001a04  0d106000  ewcoeff_cfg zero, zero, r6, 0
001a08  0d050024  ew_cfg r10, zero, zero, 18
001a0c  0d010014  ew_cfg r2, zero, zero, 10
001a10  6341effd  loadli.w r2,  -268(r30)
001a14  0d022516  ew_cfg r4, r10, r2, 11
001a18  1f310000  addli r2, zero, 3
001a1c  0d00201a  ew_cfg zero, zero, r2, 13
001a20  2bc17fc1  lui r2, 792572
001a24  0d81021c  ew_cfg r2, r5, zero, 14
001a28  2bc10000  lui r2, 12
001a2c  0d00001e  ew_cfg zero, zero, zero, 15
001a30  0d800604  ew_cfg zero, r13, zero, 2
001a34  0d020006  ew_cfg r4, zero, zero, 3
001a38  0d024226  ew_cfg r4, r4, r4, 19
001a3c  ad101100  dsmul r1, r2, r1, 0
001a40  9f303000  addli r1, zero, 27
001a44  0d000014  ew_cfg zero, zero, zero, 10
001a48  0d000024  ew_cfg zero, zero, zero, 18
001a4c  0d000026  ew_cfg zero, zero, zero, 19
001a50  1d100200  unlock r4
001a54  7d800000  xsignal r1, 0
001a58  9f104000  addli r1, zero, 33
001a5c  7d900000  xwait r1, 0
001a60  9f504000  addli r1, zero, 37
001a64  7d900000  xwait r1, 0
001a68  1d000200  lock zero, r4
001a6c  ab0080bf  lui r1, 784384
001a70  0d000002  ew_cfg zero, zero, zero, 1
001a74  8d100000  ewcoeff_cfg r1, zero, zero, 0
001a78  0d800604  ew_cfg zero, r13, zero, 2
001a7c  0d020006  ew_cfg r4, zero, zero, 3
001a80  0d020226  ew_cfg r4, r4, zero, 19
001a84  e340bffe  loadli.w r1,  -164(r30)
001a88  2d811000  dsmadd r2, r1, r1, 0
001a8c  9f004000  addli r1, zero, 32
001a90  1f415000  addli r2, zero, 44
001a94  0d000026  ew_cfg zero, zero, zero, 19
001a98  1d100200  unlock r4
001a9c  7d800000  xsignal r1, 0
001aa0  9f604000  addli r1, zero, 38
001aa4  7d800000  xsignal r1, 0
001aa8  9f005000  addli r1, zero, 40
001aac  7d900000  xwait r1, 0
001ab0  1d000200  lock zero, r4
001ab4  0d000002  ew_cfg zero, zero, zero, 1
001ab8  0d136000  ewcoeff_cfg r6, zero, r6, 0
001abc  0d800604  ew_cfg zero, r13, zero, 2
001ac0  0d020006  ew_cfg r4, zero, zero, 3
001ac4  0d020226  ew_cfg r4, r4, zero, 19
001ac8  e340dfff  loadli.w r1,  -20(r30)
001acc  ad801000  dsmadd r1, r1, r1, 0
001ad0  0d000026  ew_cfg zero, zero, zero, 19
001ad4  1d100200  unlock r4
001ad8  7d100100  xwait r2, 0
001adc  1d000200  lock zero, r4
001ae0  0d000002  ew_cfg zero, zero, zero, 1
001ae4  0d10b000  ewcoeff_cfg zero, zero, r11, 0
001ae8  0d800604  ew_cfg zero, r13, zero, 2
001aec  0d020006  ew_cfg r4, zero, zero, 3
001af0  0d024226  ew_cfg r4, r4, r4, 19
001af4  6301cfff  loadli.w r2,  -32(r30)
001af8  2d111900  dsmul r2, r18, r1, 0
001afc  9f002000  addli r1, zero, 16
001b00  0d000026  ew_cfg zero, zero, zero, 19
001b04  1d100200  unlock r4
001b08  7d800000  xsignal r1, 0
001b0c  9f105000  addli r1, zero, 41
001b10  7d800000  xsignal r1, 0
001b14  9f305000  addli r1, zero, 43
001b18  7d800000  xsignal r1, 0
001b1c  3d000000  xfence
001b20  9f70f001  addli r1, zero, 255
001b24  9b12feff  ori r5, r28, 4095
001b28  00a00300  mfence { lm, sm, gm }
001b2c  80a20004  csr_set csr5, r1
001b30  00e00200  sync_core
001b34  b7830308  beq r7, zero, 4320
001b38  b7ce0908  beq r19, zero, 5040
001b3c  9f001000  addli r1, zero, 8
001b40  3d000000  xfence
001b44  00a00300  mfence { lm, sm, gm }
001b48  b3800028  zext_int2long r[2:3], r1
001b4c  db030000  j 28
001b50  1f721000  addli r4, zero, 15
001b54  1f660000  addli r12, zero, 6
001b58  33030228  zext_int2long r[7:8], r4
001b5c  13a26004  setlt.ul r4, r[2:3], r[7:8]
001b60  a7900000  addli.d r[2:3], r[2:3], 1
001b64  b76a0204  beq r4, zero, 2744
001b68  17b3c002  sll.d r[7:8], r[2:3], r12
001b6c  33040028  zext_int2long r[9:10], zero
001b70  5b080000  j 64
001b74  6305dfff  loadli.w r10,  -24(r30)
001b78  27440400  addli.d r[9:10], r[9:10], 4
001b7c  e306ffff  loadli.w r13,  -8(r30)
001b80  2bc60000  lui r12, 12
001b84  93256403  setneq.d r11, r[9:10], r[23:24]
001b88  0b16c210  add.s r12, r4, r12
001b8c  0b15a210  add.s r10, r4, r10
001b90  73602601  stores.w r18, 0(r12)
001b94  7360e500  stores.w r14, 0(r10)
001b98  6345ffff  loadli.w r10,  -4(r30)
001b9c  0b15a210  add.s r10, r4, r10
001ba0  0b12d210  add.s r4, r4, r13
001ba4  7360f500  stores.w r15, 0(r10)
001ba8  73601201  stores.w r17, 0(r4)
001bac  b79e05fe  beq r11, zero, -92
001bb0  0b256410  add.ul r[11:12], r[9:10], r[7:8]
001bb4  6306cfff  loadli.w r12,  -32(r30)
001bb8  1b322500  slli r4, r10, 2
001bbc  6345cfff  loadli.w r10,  -28(r30)
001bc0  e345dfff  loadli.w r11,  -20(r30)
001bc4  0b1ac210  add.s r20, r4, r12
001bc8  0b15a210  add.s r10, r4, r10
001bcc  8b15b210  add.s r11, r4, r11
001bd0  6f47ca00  loads.w r14, 12(r20)
001bd4  ef480500  loads.w r17, 0(r10)
001bd8  efca0500  loads.w r21, 0(r11)
001bdc  6f464500  loads.w r12, 4(r10)
001be0  ef468500  loads.w r13, 8(r10)
001be4  ef47c500  loads.w r15, 12(r10)
001be8  efc94500  loads.w r19, 4(r11)
001bec  6fc98500  loads.w r18, 8(r11)
001bf0  6fc8c500  loads.w r16, 12(r11)
001bf4  17858801  and r10, r17, r24
001bf8  97858a01  and r11, r21, r24
001bfc  ef488a00  loads.w r17, 8(r20)
001c00  ef4a4a00  loads.w r21, 4(r20)
001c04  130b3500  seteq r22, r10, r3
001c08  930d0500  seteq r27, r10, zero
001c0c  938b0500  seteq r23, r11, zero
001c10  138d3500  seteq r26, r11, r3
001c14  0b05b548  max.u r10, r10, r11
001c18  1385a104  setlt.u r10, r3, r10
001c1c  97057b01  and r11, r22, r23
001c20  178bad01  and r22, r27, r26
001c24  97956501  or r11, r11, r22
001c28  171bb500  or r22, r10, r11
001c2c  2b05c07f  lui r10, 523264
001c30  ab05c07f  lui r11, 523264
001c34  3b200b00  bneq r22, zero, 8
001c38  ef450a00  loads.w r11, 0(r20)
001c3c  17068601  and r12, r12, r24
001c40  97898901  and r19, r19, r24
001c44  130a3600  seteq r20, r12, r3
001c48  130d0600  seteq r26, r12, zero
001c4c  138b0900  seteq r22, r19, zero
001c50  938b3900  seteq r23, r19, r3
001c54  0b063649  max.u r12, r12, r19
001c58  1386c104  setlt.u r12, r3, r12
001c5c  97096a01  and r19, r20, r22
001c60  170a7d01  and r20, r26, r23
001c64  97994901  or r19, r19, r20
001c68  97193601  or r19, r12, r19
001c6c  2b06c07f  lui r12, 523264
001c70  3ba00900  bneq r19, zero, 8
001c74  1f860a00  addli r12, r21, 0
001c78  97868601  and r13, r13, r24
001c7c  17098901  and r18, r18, r24
001c80  93893600  seteq r19, r13, r3
001c84  138b0600  seteq r22, r13, zero
001c88  130a0900  seteq r20, r18, zero
001c8c  930a3900  seteq r21, r18, r3
001c90  8b862649  max.u r13, r13, r18
001c94  9386d104  setlt.u r13, r3, r13
001c98  17894901  and r18, r19, r20
001c9c  97095b01  and r19, r22, r21
001ca0  17193901  or r18, r18, r19
001ca4  17992601  or r18, r13, r18
001ca8  ab06c07f  lui r13, 523264
001cac  3b200900  bneq r18, zero, 8
001cb0  9f860800  addli r13, r17, 0
001cb4  97878701  and r15, r15, r24
001cb8  17088801  and r16, r16, r24
001cbc  6b5b0fff  load.d r[23:24], -16(r30)
001cc0  93883700  seteq r17, r15, r3
001cc4  138a0700  seteq r20, r15, zero
001cc8  13090800  seteq r18, r16, zero
001ccc  93093800  seteq r19, r16, r3
001cd0  8b870749  max.u r15, r15, r16
001cd4  9387f104  setlt.u r15, r3, r15
001cd8  17882801  and r16, r17, r18
001cdc  97083a01  and r17, r20, r19
001ce0  17181801  or r16, r16, r17
001ce4  97970701  or r15, r15, r16
001ce8  3ba00700  bneq r15, zero, 8
001cec  1f050700  addli r10, r14, 0
001cf0  17088501  and r16, r10, r24
001cf4  13870105  setlt.u r14, r3, r16
001cf8  3b300700  bneq r14, zero, 12
001cfc  1f070500  addli r14, r10, 0
001d00  db010000  j 12
001d04  2b074000  lui r14, 1024
001d08  1717e500  or r14, r10, r14
001d0c  97898601  and r19, r13, r24
001d10  93873105  setlt.u r15, r3, r19
001d14  3bb00700  bneq r15, zero, 12
001d18  9f870600  addli r15, r13, 0
001d1c  db010000  j 12
001d20  ab074000  lui r15, 1024
001d24  9797f600  or r15, r13, r15
001d28  170a8601  and r20, r12, r24
001d2c  93884105  setlt.u r17, r3, r20
001d30  3bb00800  bneq r17, zero, 12
001d34  9f080600  addli r17, r12, 0
001d38  db010000  j 12
001d3c  ab084000  lui r17, 1024
001d40  97181601  or r17, r12, r17
001d44  978a8501  and r21, r11, r24
001d48  13895105  setlt.u r18, r3, r21
001d4c  3b500900  bneq r18, zero, 20
001d50  1f890500  addli r18, r11, 0
001d54  938a5c05  setlt.u r21, r25, r21
001d58  37e00a00  beq r21, zero, 24
001d5c  db050000  j 44
001d60  2b094000  lui r18, 1024
001d64  17992501  or r18, r11, r18
001d68  938a5c05  setlt.u r21, r25, r21
001d6c  3bf00a00  bneq r21, zero, 28
001d70  1bc90501  srli r18, r11, 16
001d74  1b091900  andi r18, r18, 1
001d78  8b952511  add.s r11, r11, r18
001d7c  2b09ffff  lui r18, 1048560
001d80  8b955510  add.s r11, r11, r5
001d84  17892501  and r18, r11, r18
001d88  93854c05  setlt.u r11, r25, r20
001d8c  bbc00500  bneq r11, zero, 48
001d90  9b450601  srli r11, r12, 16
001d94  9b851500  andi r11, r11, 1
001d98  8b15b610  add.s r11, r12, r11
001d9c  2b06ffff  lui r12, 1048560
001da0  8b955510  add.s r11, r11, r5
001da4  9788c500  and r17, r11, r12
001da8  93853c05  setlt.u r11, r25, r19
001dac  37e00500  beq r11, zero, 24
001db0  93850c05  setlt.u r11, r25, r16
001db4  3b8705fe  bneq r11, zero, -576
001db8  db050000  j 44
001dbc  93853c05  setlt.u r11, r25, r19
001dc0  bbcf05fe  bneq r11, zero, -16
001dc4  9bc50601  srli r11, r13, 16
001dc8  2b06ffff  lui r12, 1048560
001dcc  9b851500  andi r11, r11, 1
001dd0  8b95b610  add.s r11, r13, r11
001dd4  8b955510  add.s r11, r11, r5
001dd8  9787c500  and r15, r11, r12
001ddc  93850c05  setlt.u r11, r25, r16
001de0  3bd605fe  bneq r11, zero, -620
001de4  9b450501  srli r11, r10, 16
001de8  9b851500  andi r11, r11, 1
001dec  0b15b510  add.s r10, r10, r11
001df0  ab05ffff  lui r11, 1048560
001df4  0b155510  add.s r10, r10, r5
001df8  1707b500  and r14, r10, r11
001dfc  5bafffff  j -648
001e00  9730c202  sll.d r[2:3], r[5:6], r12
001e04  9f020000  addli r5, zero, 0
001e08  73341ff2  store.d r[2:3], -216(r30)
001e0c  9f300000  addli r1, zero, 3
001e10  3fb4700e  blt.s r1, r7, 7436
001e14  1f210000  addli r2, zero, 2
001e18  1f028000  addli r4, zero, 64
001e1c  9f100000  addli r1, zero, 1
001e20  b7d5130e  beq r7, r1, 7540
001e24  b7fd2310  beq r7, r2, 9084
001e28  9f300000  addli r1, zero, 3
001e2c  3bdb1310  bneq r7, r1, 8916
001e30  1f322000  addli r4, zero, 19
001e34  b3000028  zext_int2long r[2:3], zero
001e38  7d100200  xwait r4, 0
001e3c  1f123000  addli r4, zero, 25
001e40  7d100200  xwait r4, 0
001e44  3d000000  xfence
001e48  27820000  addli.d r[5:6], r[2:3], 0
001e4c  00a00300  mfence { lm, sm, gm }
001e50  634acffe  loadli.w r20,  -156(r30)
001e54  e30acffe  loadli.w r21,  -160(r30)
001e58  1733c202  sll.d r[7:8], r[5:6], r12
001e5c  27840000  addli.d r[9:10], r[2:3], 0
001e60  0b256410  add.ul r[11:12], r[9:10], r[7:8]
001e64  27041400  addli.d r[9:10], r[9:10], 8
001e68  1b352500  slli r10, r10, 2
001e6c  93256403  setneq.d r11, r[9:10], r[23:24]
001e70  0b164511  add.s r12, r10, r20
001e74  0b155511  add.s r10, r10, r21
001e78  ef46c600  loads.w r13, 12(r12)
001e7c  6f470600  loads.w r14, 0(r12)
001e80  ef474600  loads.w r15, 4(r12)
001e84  6f488600  loads.w r16, 8(r12)
001e88  ef480601  loads.w r17, 16(r12)
001e8c  6f494601  loads.w r18, 20(r12)
001e90  ef498601  loads.w r19, 24(r12)
001e94  6f46c601  loads.w r12, 28(r12)
001e98  8be60660  abs.f r13, r13
001e9c  0b660660  abs.f r12, r12
001ea0  7366d500  stores.w r13, 12(r10)
001ea4  8b660760  abs.f r13, r14
001ea8  0be70760  abs.f r14, r15
001eac  8b670860  abs.f r15, r16
001eb0  0be80860  abs.f r16, r17
001eb4  8b680960  abs.f r17, r18
001eb8  0be90960  abs.f r18, r19
001ebc  736ec500  stores.w r12, 28(r10)
001ec0  7364f500  stores.w r15, 8(r10)
001ec4  7362e500  stores.w r14, 4(r10)
001ec8  7360d500  stores.w r13, 0(r10)
001ecc  736c2501  stores.w r18, 24(r10)
001ed0  736a1501  stores.w r17, 20(r10)
001ed4  73680501  stores.w r16, 16(r10)
001ed8  3bae05fe  bneq r11, zero, -120
001edc  6b530ff5  load.d r[7:8], -176(r30)
001ee0  1f660000  addli r12, zero, 6
001ee4  13236204  setlt.ul r6, r[5:6], r[7:8]
001ee8  27120200  addli.d r[5:6], r[5:6], 1
001eec  bb3d03fe  bneq r6, zero, -148
001ef0  9f432000  addli r7, zero, 20
001ef4  9f003000  addli r1, zero, 24
001ef8  00200100  mfence { sm }
001efc  1f210000  addli r2, zero, 2
001f00  2b0380bf  lui r6, 784384
001f04  1f72f00f  addli r4, zero, 2047
001f08  abc20000  lui r5, 12
001f0c  7d800300  xsignal r7, 0
001f10  7d800000  xsignal r1, 0
001f14  9f602000  addli r1, zero, 22
001f18  7d800000  xsignal r1, 0
001f1c  9f503000  addli r1, zero, 29
001f20  7d900000  xwait r1, 0
001f24  9f404000  addli r1, zero, 36
001f28  7d900000  xwait r1, 0
001f2c  1d000100  lock zero, r2
001f30  0d000002  ew_cfg zero, zero, zero, 1
001f34  0d130000  ewcoeff_cfg r6, zero, zero, 0
001f38  0d000204  ew_cfg zero, r4, zero, 2
001f3c  0d010006  ew_cfg r2, zero, zero, 3
001f40  0d010126  ew_cfg r2, r2, zero, 19
001f44  e3402ffe  loadli.w r1,  -236(r30)
001f48  ad821000  dsmadd r5, r1, r1, 0
001f4c  9f603000  addli r1, zero, 30
001f50  0d000026  ew_cfg zero, zero, zero, 19
001f54  1d100100  unlock r2
001f58  7d800000  xsignal r1, 0
001f5c  9f104000  addli r1, zero, 33
001f60  7d800000  xsignal r1, 0
001f64  9f703000  addli r1, zero, 31
001f68  7d800000  xsignal r1, 0
001f6c  9f303000  addli r1, zero, 27
001f70  7d900000  xwait r1, 0
001f74  9f704000  addli r1, zero, 39
001f78  7d900000  xwait r1, 0
001f7c  1d000100  lock zero, r2
001f80  ab00803f  lui r1, 260096
001f84  0d000002  ew_cfg zero, zero, zero, 1
001f88  0d131000  ewcoeff_cfg r6, zero, r1, 0
001f8c  ab800200  lui r1, 40
001f90  0d000204  ew_cfg zero, r4, zero, 2
001f94  0d010006  ew_cfg r2, zero, zero, 3
001f98  9b900010  ori r1, r1, 256
001f9c  0d010126  ew_cfg r2, r2, zero, 19
001fa0  6342bffe  loadli.w r4,  -164(r30)
001fa4  2d821000  dsmadd r4, r1, r1, 0
001fa8  9f403000  addli r1, zero, 28
001fac  0d000026  ew_cfg zero, zero, zero, 19
001fb0  1d100100  unlock r2
001fb4  7d800000  xsignal r1, 0
001fb8  9f504000  addli r1, zero, 37
001fbc  7d800000  xsignal r1, 0
001fc0  9f702000  addli r1, zero, 23
001fc4  7d100100  xwait r2, 0
001fc8  7d900300  xwait r7, 0
001fcc  7d900000  xwait r1, 0
001fd0  9f004000  addli r1, zero, 32
001fd4  7d900000  xwait r1, 0
001fd8  9f604000  addli r1, zero, 38
001fdc  7d900000  xwait r1, 0
001fe0  9f205000  addli r1, zero, 42
001fe4  7d900000  xwait r1, 0
001fe8  b3000028  zext_int2long r[2:3], zero
001fec  3d000000  xfence
001ff0  00a00300  mfence { lm, sm, gm }
001ff4  27820000  addli.d r[5:6], r[2:3], 0
001ff8  733c1ff2  store.d r[2:3], -200(r30)
001ffc  db030000  j 28
002000  eb500ff5  load.d r[2:3], -176(r30)
002004  6b528ff4  load.d r[5:6], -184(r30)
002008  1f660000  addli r12, zero, 6
00200c  93201204  setlt.ul r1, r[5:6], r[2:3]
002010  27120200  addli.d r[5:6], r[5:6], 1
002014  37a40010  beq r1, zero, 8456
002018  6b578ff3  load.d r[15:16], -200(r30)
00201c  9730c202  sll.d r[2:3], r[5:6], r12
002020  73344ff4  store.d r[5:6], -184(r30)
002024  73341ff6  store.d r[2:3], -152(r30)
002028  db0b0000  j 92
00202c  e340dfff  loadli.w r1,  -20(r30)
002030  6302afff  loadli.w r4,  -48(r30)
002034  27071700  addli.d r[15:16], r[15:16], 8
002038  634acffe  loadli.w r20,  -156(r30)
00203c  e30acffe  loadli.w r21,  -160(r30)
002040  13219702  setneq.d r2, r[15:16], r[10:11]
002044  8b901210  add.s r1, r5, r1
002048  73e44000  stores.w r4, 8(r1)
00204c  6342afff  loadli.w r4,  -44(r30)
002050  73e6b000  stores.w r11, 12(r1)
002054  73e24000  stores.w r4, 4(r1)
002058  6302bfff  loadli.w r4,  -40(r30)
00205c  73e04000  stores.w r4, 0(r1)
002060  63028fff  loadli.w r4,  -64(r30)
002064  73ee4000  stores.w r4, 28(r1)
002068  63428fff  loadli.w r4,  -60(r30)
00206c  73ec4000  stores.w r4, 24(r1)
002070  63029fff  loadli.w r4,  -56(r30)
002074  73ea4000  stores.w r4, 20(r1)
002078  63429fff  loadli.w r4,  -52(r30)
00207c  73e84000  stores.w r4, 16(r1)
002080  370e01fe  beq r2, zero, -128
002084  eb508ff6  load.d r[2:3], -152(r30)
002088  abc50000  lui r11, 12
00208c  8b201710  add.ul r[2:3], r[15:16], r[2:3]
002090  9bb22000  slli r5, r1, 2
002094  8b905211  add.s r1, r5, r21
002098  efcbc200  loads.w r23, 12(r5)
00209c  0b914211  add.s r2, r5, r20
0020a0  6fcd8200  loads.w r26, 8(r5)
0020a4  efcd4200  loads.w r27, 4(r5)
0020a8  6fcec201  loads.w r28, 28(r5)
0020ac  efca4201  loads.w r21, 20(r5)
0020b0  efc60201  loads.w r13, 16(r5)
0020b4  6fc24001  loads.w r4, 20(r1)
0020b8  6f46c100  loads.w r12, 12(r2)
0020bc  efc40000  loads.w r9, 0(r1)
0020c0  6fc44000  loads.w r8, 4(r1)
0020c4  6fcb8000  loads.w r22, 8(r1)
0020c8  efc3c000  loads.w r7, 12(r1)
0020cc  6fc90001  loads.w r18, 16(r1)
0020d0  e74a4ffe  storeli.w r4, -84(r30)
0020d4  6fc28001  loads.w r4, 24(r1)
0020d8  1b339600  slli r6, r12, 9
0020dc  efc0c001  loads.w r1, 28(r1)
0020e0  e74bcffe  storeli.w r12, -68(r30)
0020e4  13080300  seteq r16, r6, zero
0020e8  6303ffff  loadli.w r6,  -8(r30)
0020ec  0b936210  add.s r6, r5, r6
0020f0  674b4ffe  storeli.w r4, -76(r30)
0020f4  1bc27b01  srli r4, r23, 23
0020f8  e70b1ffe  storeli.w r1, -72(r30)
0020fc  9bb09b00  slli r1, r23, 9
002100  1b02f20f  andi r4, r4, 255
002104  93800000  seteq r1, r1, zero
002108  1b75f20f  setlti r10, r4, 255
00210c  1b427601  srli r4, r12, 23
002110  9b09f20f  andi r19, r4, 255
002114  6f428100  loads.w r4, 8(r2)
002118  9bf9f90f  setlti r19, r19, 255
00211c  17151500  or r10, r10, r1
002120  97900901  or r1, r19, r16
002124  e709affe  storeli.w r10, -104(r30)
002128  9780a000  and r1, r1, r10
00212c  670d4ffe  storeli.w r4, -48(r30)
002130  6f424100  loads.w r4, 4(r2)
002134  674d4ffe  storeli.w r4, -44(r30)
002138  6f420100  loads.w r4, 0(r2)
00213c  e70d4ffe  storeli.w r4, -40(r30)
002140  6f42c101  loads.w r4, 28(r2)
002144  670c4ffe  storeli.w r4, -64(r30)
002148  6f428101  loads.w r4, 24(r2)
00214c  674c4ffe  storeli.w r4, -60(r30)
002150  6f424101  loads.w r4, 20(r2)
002154  6f410101  loads.w r2, 16(r2)
002158  e70c4ffe  storeli.w r4, -56(r30)
00215c  0b92b210  add.s r4, r5, r11
002160  e74c2ffe  storeli.w r2, -52(r30)
002164  1b910501  ori r2, r11, 16
002168  6f420200  loads.w r4, 0(r4)
00216c  0b912210  add.s r2, r5, r2
002170  6f410100  loads.w r2, 0(r2)
002174  67094ffe  storeli.w r4, -112(r30)
002178  6f420300  loads.w r4, 0(r6)
00217c  1b934501  ori r6, r11, 20
002180  670a2ffe  storeli.w r2, -96(r30)
002184  67494ffe  storeli.w r4, -108(r30)
002188  6342ffff  loadli.w r4,  -4(r30)
00218c  0b924210  add.s r4, r5, r4
002190  6f420200  loads.w r4, 0(r4)
002194  e7494ffe  storeli.w r4, -100(r30)
002198  0b926210  add.s r4, r5, r6
00219c  6fc38201  loads.w r6, 24(r5)
0021a0  6f410200  loads.w r2, 0(r4)
0021a4  1b92c501  ori r4, r11, 28
0021a8  0b924210  add.s r4, r5, r4
0021ac  674a2ffe  storeli.w r2, -92(r30)
0021b0  1b918501  ori r2, r11, 24
0021b4  efc50200  loads.w r11, 0(r5)
0021b8  0b912210  add.s r2, r5, r2
0021bc  6f410100  loads.w r2, 0(r2)
0021c0  e70a2ffe  storeli.w r2, -88(r30)
0021c4  6f410200  loads.w r2, 0(r4)
0021c8  670b2ffe  storeli.w r2, -80(r30)
0021cc  6341bffe  loadli.w r2,  -164(r30)
0021d0  0b912210  add.s r2, r5, r2
0021d4  6f4a0101  loads.w r20, 16(r2)
0021d8  6f420100  loads.w r4, 0(r2)
0021dc  ef488100  loads.w r17, 8(r2)
0021e0  67084fff  storeli.w r20, -128(r30)
0021e4  6f4a4101  loads.w r20, 20(r2)
0021e8  e7484ffe  storeli.w r4, -116(r30)
0021ec  6f424100  loads.w r4, 4(r2)
0021f0  e7474fff  storeli.w r20, -132(r30)
0021f4  6f4a8101  loads.w r20, 24(r2)
0021f8  e7074fff  storeli.w r20, -136(r30)
0021fc  6f4ac101  loads.w r20, 28(r2)
002200  67474fff  storeli.w r20, -140(r30)
002204  136a7605  setlt.f r20, r12, r23
002208  97001a00  and r1, r20, r1
00220c  3bb00000  bneq r1, zero, 12
002210  ef40c100  loads.w r1, 12(r2)
002214  5b020000  j 16
002218  e300dfff  loadli.w r1,  -24(r30)
00221c  8b901210  add.s r1, r5, r1
002220  efc00000  loads.w r1, 0(r1)
002224  6306afff  loadli.w r12,  -48(r30)
002228  67481ffe  storeli.w r1, -124(r30)
00222c  9b309d00  slli r1, r26, 9
002230  1b417d01  srli r2, r26, 23
002234  93800000  seteq r1, r1, zero
002238  1b01f10f  andi r2, r2, 255
00223c  1b359600  slli r10, r12, 9
002240  1b487601  srli r16, r12, 23
002244  9369a605  setlt.f r19, r12, r26
002248  1b71f10f  setlti r2, r2, 255
00224c  13050500  seteq r10, r10, zero
002250  1b08f80f  andi r16, r16, 255
002254  1b78f80f  setlti r16, r16, 255
002258  17111100  or r2, r2, r1
00225c  e7082ffe  storeli.w r2, -120(r30)
002260  9710a800  or r1, r16, r10
002264  97802000  and r1, r1, r2
002268  97801900  and r1, r19, r1
00226c  3ba00000  bneq r1, zero, 8
002270  e7491fff  storeli.w r17, -100(r30)
002274  6346afff  loadli.w r12,  -44(r30)
002278  9bb09d00  slli r1, r27, 9
00227c  1bc17d01  srli r2, r27, 23
002280  93800000  seteq r1, r1, zero
002284  1b01f10f  andi r2, r2, 255
002288  1b359600  slli r10, r12, 9
00228c  1b487601  srli r16, r12, 23
002290  9368b605  setlt.f r17, r12, r27
002294  1b71f10f  setlti r2, r2, 255
002298  13050500  seteq r10, r10, zero
00229c  1b08f80f  andi r16, r16, 255
0022a0  1b78f80f  setlti r16, r16, 255
0022a4  97101100  or r1, r2, r1
0022a8  1711a800  or r2, r16, r10
0022ac  17011100  and r2, r2, r1
0022b0  17812800  and r2, r17, r2
0022b4  3b200100  bneq r2, zero, 8
0022b8  67494ffe  storeli.w r4, -108(r30)
0022bc  6306bfff  loadli.w r12,  -40(r30)
0022c0  1bb19500  slli r2, r11, 9
0022c4  1bc27501  srli r4, r11, 23
0022c8  13010100  seteq r2, r2, zero
0022cc  1b02f20f  andi r4, r4, 255
0022d0  1b359600  slli r10, r12, 9
0022d4  1b487601  srli r16, r12, 23
0022d8  9368b604  setlt.f r17, r12, r11
0022dc  1b72f20f  setlti r4, r4, 255
0022e0  13050500  seteq r10, r10, zero
0022e4  1b08f80f  andi r16, r16, 255
0022e8  1b78f80f  setlti r16, r16, 255
0022ec  17122200  or r4, r4, r2
0022f0  1711a800  or r2, r16, r10
0022f4  17014100  and r2, r2, r4
0022f8  17812800  and r2, r17, r2
0022fc  3b300100  bneq r2, zero, 12
002300  63411fff  loadli.w r2,  -116(r30)
002304  67092ffe  storeli.w r2, -112(r30)
002308  63068fff  loadli.w r12,  -64(r30)
00230c  1b319e00  slli r2, r28, 9
002310  1b457e01  srli r10, r28, 23
002314  13010100  seteq r2, r2, zero
002318  1b05f50f  andi r10, r10, 255
00231c  1b389600  slli r16, r12, 9
002320  9b487601  srli r17, r12, 23
002324  9369c605  setlt.f r19, r12, r28
002328  1b75f50f  setlti r10, r10, 255
00232c  13080800  seteq r16, r16, zero
002330  9b88f80f  andi r17, r17, 255
002334  9bf8f80f  setlti r17, r17, 255
002338  17152500  or r10, r10, r2
00233c  e748affe  storeli.w r10, -116(r30)
002340  17910801  or r2, r17, r16
002344  1701a100  and r2, r2, r10
002348  17812900  and r2, r19, r2
00234c  3b300100  bneq r2, zero, 12
002350  6341effe  loadli.w r2,  -140(r30)
002354  670b2ffe  storeli.w r2, -80(r30)
002358  63468fff  loadli.w r12,  -60(r30)
00235c  1b319300  slli r2, r6, 9
002360  1b457301  srli r10, r6, 23
002364  13010100  seteq r2, r2, zero
002368  1b05f50f  andi r10, r10, 255
00236c  1b389600  slli r16, r12, 9
002370  9b487601  srli r17, r12, 23
002374  93696604  setlt.f r19, r12, r6
002378  1b75f50f  setlti r10, r10, 255
00237c  13080800  seteq r16, r16, zero
002380  9b88f80f  andi r17, r17, 255
002384  1bfaf80f  setlti r20, r17, 255
002388  97182500  or r17, r10, r2
00238c  17110a01  or r2, r20, r16
002390  17011101  and r2, r2, r17
002394  17812900  and r2, r19, r2
002398  3b300100  bneq r2, zero, 12
00239c  6301fffe  loadli.w r2,  -136(r30)
0023a0  e70a2ffe  storeli.w r2, -88(r30)
0023a4  63069fff  loadli.w r12,  -56(r30)
0023a8  1bb19a00  slli r2, r21, 9
0023ac  1bc57a01  srli r10, r21, 23
0023b0  13010100  seteq r2, r2, zero
0023b4  1b05f50f  andi r10, r10, 255
0023b8  1b389600  slli r16, r12, 9
0023bc  9b497601  srli r19, r12, 23
0023c0  136a5605  setlt.f r20, r12, r21
0023c4  1b75f50f  setlti r10, r10, 255
0023c8  13080800  seteq r16, r16, zero
0023cc  9b89f90f  andi r19, r19, 255
0023d0  9bf9f90f  setlti r19, r19, 255
0023d4  17112500  or r2, r10, r2
0023d8  17950901  or r10, r19, r16
0023dc  17052500  and r10, r10, r2
0023e0  1705aa00  and r10, r20, r10
0023e4  3b300500  bneq r10, zero, 12
0023e8  6345fffe  loadli.w r10,  -132(r30)
0023ec  674aaffe  storeli.w r10, -92(r30)
0023f0  63469fff  loadli.w r12,  -52(r30)
0023f4  1bb59600  slli r10, r13, 9
0023f8  1bc87601  srli r16, r13, 23
0023fc  13050500  seteq r10, r10, zero
002400  1b08f80f  andi r16, r16, 255
002404  9b399600  slli r19, r12, 9
002408  1b4a7601  srli r20, r12, 23
00240c  1366d604  setlt.f r12, r12, r13
002410  1b78f80f  setlti r16, r16, 255
002414  93890900  seteq r19, r19, zero
002418  1b0afa0f  andi r20, r20, 255
00241c  1b7afa0f  setlti r20, r20, 255
002420  1715a800  or r10, r16, r10
002424  17183a01  or r16, r20, r19
002428  1708a800  and r16, r16, r10
00242c  17060601  and r12, r12, r16
002430  3b300600  bneq r12, zero, 12
002434  63060fff  loadli.w r12,  -128(r30)
002438  670acffe  storeli.w r12, -96(r30)
00243c  1bb69400  slli r12, r9, 9
002440  1bc87401  srli r16, r9, 23
002444  93e99506  setle.f r19, r11, r9
002448  93e4b406  setle.f r9, r9, r11
00244c  13060600  seteq r12, r12, zero
002450  9b05f80f  andi r11, r16, 255
002454  9bf5f50f  setlti r11, r11, 255
002458  97843401  and r9, r9, r19
00245c  9795c500  or r11, r11, r12
002460  17824500  and r4, r11, r4
002464  17824400  and r4, r9, r4
002468  3b300200  bneq r4, zero, 12
00246c  63022fff  loadli.w r4,  -112(r30)
002470  e70d4ffe  storeli.w r4, -40(r30)
002474  1b329400  slli r4, r8, 9
002478  9b447401  srli r9, r8, 23
00247c  93e58d06  setle.f r11, r27, r8
002480  1364b407  setle.f r8, r8, r27
002484  13020200  seteq r4, r4, zero
002488  9b84f40f  andi r9, r9, 255
00248c  9bf4f40f  setlti r9, r9, 255
002490  1704b400  and r8, r8, r11
002494  17924400  or r4, r9, r4
002498  97001200  and r1, r4, r1
00249c  97001400  and r1, r8, r1
0024a0  3bb00000  bneq r1, zero, 12
0024a4  e3402fff  loadli.w r1,  -108(r30)
0024a8  674d1ffe  storeli.w r1, -44(r30)
0024ac  9b309b00  slli r1, r22, 9
0024b0  13646d07  setle.f r8, r26, r22
0024b4  9364ab07  setle.f r9, r22, r26
0024b8  1b427b01  srli r4, r22, 23
0024bc  e3457fff  loadli.w r11,  -68(r30)
0024c0  93800000  seteq r1, r1, zero
0024c4  1b02f20f  andi r4, r4, 255
0024c8  1b72f20f  setlti r4, r4, 255
0024cc  97101200  or r1, r4, r1
0024d0  17828400  and r4, r9, r8
0024d4  63041fff  loadli.w r8,  -120(r30)
0024d8  97808000  and r1, r1, r8
0024dc  97001200  and r1, r4, r1
0024e0  3bb00000  bneq r1, zero, 12
0024e4  e3403fff  loadli.w r1,  -100(r30)
0024e8  670d1ffe  storeli.w r1, -48(r30)
0024ec  9bb09300  slli r1, r7, 9
0024f0  1bc27301  srli r4, r7, 23
0024f4  13e47b06  setle.f r8, r23, r7
0024f8  93e37307  setle.f r7, r7, r23
0024fc  93800000  seteq r1, r1, zero
002500  1b02f20f  andi r4, r4, 255
002504  1b72f20f  setlti r4, r4, 255
002508  97101200  or r1, r4, r1
00250c  17828300  and r4, r7, r8
002510  e3033fff  loadli.w r7,  -104(r30)
002514  97807000  and r1, r1, r7
002518  97001200  and r1, r4, r1
00251c  3ba00000  bneq r1, zero, 8
002520  e3450fff  loadli.w r11,  -124(r30)
002524  9b309900  slli r1, r18, 9
002528  1b427901  srli r4, r18, 23
00252c  93e32607  setle.f r7, r13, r18
002530  1364d906  setle.f r8, r18, r13
002534  93800000  seteq r1, r1, zero
002538  1b02f20f  andi r4, r4, 255
00253c  1b72f20f  setlti r4, r4, 255
002540  97101200  or r1, r4, r1
002544  17027400  and r4, r8, r7
002548  9780a000  and r1, r1, r10
00254c  eb540fff  load.d r[10:11], -16(r30)
002550  97001200  and r1, r4, r1
002554  3bb00000  bneq r1, zero, 12
002558  e3004fff  loadli.w r1,  -96(r30)
00255c  e74c1ffe  storeli.w r1, -52(r30)
002560  63445fff  loadli.w r8,  -84(r30)
002564  9b309400  slli r1, r8, 9
002568  1b427401  srli r4, r8, 23
00256c  93e38a06  setle.f r7, r21, r8
002570  13645407  setle.f r8, r8, r21
002574  93800000  seteq r1, r1, zero
002578  1b02f20f  andi r4, r4, 255
00257c  1b72f20f  setlti r4, r4, 255
002580  97101200  or r1, r4, r1
002584  17027400  and r4, r8, r7
002588  97802000  and r1, r1, r2
00258c  97001200  and r1, r4, r1
002590  3bb00000  bneq r1, zero, 12
002594  e3404fff  loadli.w r1,  -92(r30)
002598  e70c1ffe  storeli.w r1, -56(r30)
00259c  e3436fff  loadli.w r7,  -76(r30)
0025a0  9bb09300  slli r1, r7, 9
0025a4  1bc17301  srli r2, r7, 23
0025a8  13627306  setle.f r4, r6, r7
0025ac  13e36306  setle.f r6, r7, r6
0025b0  93800000  seteq r1, r1, zero
0025b4  1b01f10f  andi r2, r2, 255
0025b8  1b71f10f  setlti r2, r2, 255
0025bc  97101100  or r1, r2, r1
0025c0  17014300  and r2, r6, r4
0025c4  97801001  and r1, r1, r17
0025c8  97001100  and r1, r2, r1
0025cc  3bb00000  bneq r1, zero, 12
0025d0  e3005fff  loadli.w r1,  -88(r30)
0025d4  674c1ffe  storeli.w r1, -60(r30)
0025d8  63037fff  loadli.w r6,  -72(r30)
0025dc  9b309300  slli r1, r6, 9
0025e0  1b417301  srli r2, r6, 23
0025e4  13626e06  setle.f r4, r28, r6
0025e8  1363c307  setle.f r6, r6, r28
0025ec  93800000  seteq r1, r1, zero
0025f0  1b01f10f  andi r2, r2, 255
0025f4  1b71f10f  setlti r2, r2, 255
0025f8  97101100  or r1, r2, r1
0025fc  17014300  and r2, r6, r4
002600  63421fff  loadli.w r4,  -116(r30)
002604  97804000  and r1, r1, r4
002608  97001100  and r1, r2, r1
00260c  bb8800fc  bneq r1, zero, -1504
002610  e3006fff  loadli.w r1,  -80(r30)
002614  670c1ffe  storeli.w r1, -64(r30)
002618  db42ffff  j -1516
00261c  00200100  mfence { sm }
002620  80330002  core_id r7
002624  9f747000  addli r9, zero, 63
002628  ab480100  lui r17, 20
00262c  63498ffe  loadli.w r18,  -188(r30)
002630  e3408fff  loadli.w r1,  -60(r30)
002634  bbf20004  bneq r1, zero, 2236
002638  e340afff  loadli.w r1,  -44(r30)
00263c  37de0004  beq r1, zero, 2964
002640  9f003000  addli r1, zero, 24
002644  3d000000  xfence
002648  00a00300  mfence { lm, sm, gm }
00264c  b3800028  zext_int2long r[2:3], r1
002650  db030000  j 28
002654  1f723000  addli r4, zero, 31
002658  1f660000  addli r12, zero, 6
00265c  33030228  zext_int2long r[7:8], r4
002660  13a26004  setlt.ul r4, r[2:3], r[7:8]
002664  a7900000  addli.d r[2:3], r[2:3], 1
002668  377a0200  beq r4, zero, 668
00266c  17b3c002  sll.d r[7:8], r[2:3], r12
002670  33040028  zext_int2long r[9:10], zero
002674  5b080000  j 64
002678  6305dfff  loadli.w r10,  -24(r30)
00267c  27440400  addli.d r[9:10], r[9:10], 4
002680  e306ffff  loadli.w r13,  -8(r30)
002684  2bc60000  lui r12, 12
002688  93256403  setneq.d r11, r[9:10], r[23:24]
00268c  0b16c210  add.s r12, r4, r12
002690  0b15a210  add.s r10, r4, r10
002694  73602601  stores.w r18, 0(r12)
002698  7360e500  stores.w r14, 0(r10)
00269c  6345ffff  loadli.w r10,  -4(r30)
0026a0  0b15a210  add.s r10, r4, r10
0026a4  0b12d210  add.s r4, r4, r13
0026a8  7360f500  stores.w r15, 0(r10)
0026ac  73601201  stores.w r17, 0(r4)
0026b0  b79e05fe  beq r11, zero, -92
0026b4  0b256410  add.ul r[11:12], r[9:10], r[7:8]
0026b8  6306cfff  loadli.w r12,  -32(r30)
0026bc  1b322500  slli r4, r10, 2
0026c0  6345cfff  loadli.w r10,  -28(r30)
0026c4  e345dfff  loadli.w r11,  -20(r30)
0026c8  0b1ac210  add.s r20, r4, r12
0026cc  0b15a210  add.s r10, r4, r10
0026d0  8b15b210  add.s r11, r4, r11
0026d4  6f47ca00  loads.w r14, 12(r20)
0026d8  ef480500  loads.w r17, 0(r10)
0026dc  efca0500  loads.w r21, 0(r11)
0026e0  6f464500  loads.w r12, 4(r10)
0026e4  ef468500  loads.w r13, 8(r10)
0026e8  ef47c500  loads.w r15, 12(r10)
0026ec  efc94500  loads.w r19, 4(r11)
0026f0  6fc98500  loads.w r18, 8(r11)
0026f4  6fc8c500  loads.w r16, 12(r11)
0026f8  17858801  and r10, r17, r24
0026fc  97858a01  and r11, r21, r24
002700  ef488a00  loads.w r17, 8(r20)
002704  ef4a4a00  loads.w r21, 4(r20)
002708  130b3500  seteq r22, r10, r3
00270c  930d0500  seteq r27, r10, zero
002710  938b0500  seteq r23, r11, zero
002714  138d3500  seteq r26, r11, r3
002718  0b05b548  max.u r10, r10, r11
00271c  1385a104  setlt.u r10, r3, r10
002720  97057b01  and r11, r22, r23
002724  178bad01  and r22, r27, r26
002728  97956501  or r11, r11, r22
00272c  171bb500  or r22, r10, r11
002730  2b05c07f  lui r10, 523264
002734  ab05c07f  lui r11, 523264
002738  3b200b00  bneq r22, zero, 8
00273c  ef450a00  loads.w r11, 0(r20)
002740  17068601  and r12, r12, r24
002744  97898901  and r19, r19, r24
002748  130a3600  seteq r20, r12, r3
00274c  130d0600  seteq r26, r12, zero
002750  138b0900  seteq r22, r19, zero
002754  938b3900  seteq r23, r19, r3
002758  0b063649  max.u r12, r12, r19
00275c  1386c104  setlt.u r12, r3, r12
002760  97096a01  and r19, r20, r22
002764  170a7d01  and r20, r26, r23
002768  97994901  or r19, r19, r20
00276c  97193601  or r19, r12, r19
002770  2b06c07f  lui r12, 523264
002774  3ba00900  bneq r19, zero, 8
002778  1f860a00  addli r12, r21, 0
00277c  97868601  and r13, r13, r24
002780  17098901  and r18, r18, r24
002784  93893600  seteq r19, r13, r3
002788  138b0600  seteq r22, r13, zero
00278c  130a0900  seteq r20, r18, zero
002790  930a3900  seteq r21, r18, r3
002794  8b862649  max.u r13, r13, r18
002798  9386d104  setlt.u r13, r3, r13
00279c  17894901  and r18, r19, r20
0027a0  97095b01  and r19, r22, r21
0027a4  17193901  or r18, r18, r19
0027a8  17992601  or r18, r13, r18
0027ac  ab06c07f  lui r13, 523264
0027b0  3b200900  bneq r18, zero, 8
0027b4  9f860800  addli r13, r17, 0
0027b8  97878701  and r15, r15, r24
0027bc  17088801  and r16, r16, r24
0027c0  6b5b0fff  load.d r[23:24], -16(r30)
0027c4  93883700  seteq r17, r15, r3
0027c8  138a0700  seteq r20, r15, zero
0027cc  13090800  seteq r18, r16, zero
0027d0  93093800  seteq r19, r16, r3
0027d4  8b870749  max.u r15, r15, r16
0027d8  9387f104  setlt.u r15, r3, r15
0027dc  17882801  and r16, r17, r18
0027e0  97083a01  and r17, r20, r19
0027e4  17181801  or r16, r16, r17
0027e8  97970701  or r15, r15, r16
0027ec  3ba00700  bneq r15, zero, 8
0027f0  1f050700  addli r10, r14, 0
0027f4  17088501  and r16, r10, r24
0027f8  13870105  setlt.u r14, r3, r16
0027fc  3b300700  bneq r14, zero, 12
002800  1f070500  addli r14, r10, 0
002804  db010000  j 12
002808  2b074000  lui r14, 1024
00280c  1717e500  or r14, r10, r14
002810  97898601  and r19, r13, r24
002814  93873105  setlt.u r15, r3, r19
002818  3bb00700  bneq r15, zero, 12
00281c  9f870600  addli r15, r13, 0
002820  db010000  j 12
002824  ab074000  lui r15, 1024
002828  9797f600  or r15, r13, r15
00282c  170a8601  and r20, r12, r24
002830  93884105  setlt.u r17, r3, r20
002834  3bb00800  bneq r17, zero, 12
002838  9f080600  addli r17, r12, 0
00283c  db010000  j 12
002840  ab084000  lui r17, 1024
002844  97181601  or r17, r12, r17
002848  978a8501  and r21, r11, r24
00284c  13895105  setlt.u r18, r3, r21
002850  3b500900  bneq r18, zero, 20
002854  1f890500  addli r18, r11, 0
002858  938a5c05  setlt.u r21, r25, r21
00285c  37e00a00  beq r21, zero, 24
002860  db050000  j 44
002864  2b094000  lui r18, 1024
002868  17992501  or r18, r11, r18
00286c  938a5c05  setlt.u r21, r25, r21
002870  3bf00a00  bneq r21, zero, 28
002874  1bc90501  srli r18, r11, 16
002878  1b091900  andi r18, r18, 1
00287c  8b952511  add.s r11, r11, r18
002880  2b09ffff  lui r18, 1048560
002884  8b955510  add.s r11, r11, r5
002888  17892501  and r18, r11, r18
00288c  93854c05  setlt.u r11, r25, r20
002890  bbc00500  bneq r11, zero, 48
002894  9b450601  srli r11, r12, 16
002898  9b851500  andi r11, r11, 1
00289c  8b15b610  add.s r11, r12, r11
0028a0  2b06ffff  lui r12, 1048560
0028a4  8b955510  add.s r11, r11, r5
0028a8  9788c500  and r17, r11, r12
0028ac  93853c05  setlt.u r11, r25, r19
0028b0  37e00500  beq r11, zero, 24
0028b4  93850c05  setlt.u r11, r25, r16
0028b8  3b8705fe  bneq r11, zero, -576
0028bc  db050000  j 44
0028c0  93853c05  setlt.u r11, r25, r19
0028c4  bbcf05fe  bneq r11, zero, -16
0028c8  9bc50601  srli r11, r13, 16
0028cc  2b06ffff  lui r12, 1048560
0028d0  9b851500  andi r11, r11, 1
0028d4  8b95b610  add.s r11, r13, r11
0028d8  8b955510  add.s r11, r11, r5
0028dc  9787c500  and r15, r11, r12
0028e0  93850c05  setlt.u r11, r25, r16
0028e4  3bd605fe  bneq r11, zero, -620
0028e8  9b450501  srli r11, r10, 16
0028ec  9b851500  andi r11, r11, 1
0028f0  0b15b510  add.s r10, r10, r11
0028f4  ab05ffff  lui r11, 1048560
0028f8  0b155510  add.s r10, r10, r5
0028fc  1707b500  and r14, r10, r11
002900  5bafffff  j -648
002904  00200100  mfence { sm }
002908  80330002  core_id r7
00290c  9f747000  addli r9, zero, 63
002910  ab480100  lui r17, 20
002914  63498ffe  loadli.w r18,  -188(r30)
002918  e3009fff  loadli.w r1,  -56(r30)
00291c  bbf20004  bneq r1, zero, 2236
002920  9f500000  addli r1, zero, 5
002924  3bde1304  bneq r7, r1, 2964
002928  9f005000  addli r1, zero, 40
00292c  3d000000  xfence
002930  00a00300  mfence { lm, sm, gm }
002934  b3800028  zext_int2long r[2:3], r1
002938  db030000  j 28
00293c  1f725000  addli r4, zero, 47
002940  1f660000  addli r12, zero, 6
002944  33030228  zext_int2long r[7:8], r4
002948  13a26004  setlt.ul r4, r[2:3], r[7:8]
00294c  a7900000  addli.d r[2:3], r[2:3], 1
002950  377a0200  beq r4, zero, 668
002954  17b3c002  sll.d r[7:8], r[2:3], r12
002958  33040028  zext_int2long r[9:10], zero
00295c  5b080000  j 64
002960  6305dfff  loadli.w r10,  -24(r30)
002964  27440400  addli.d r[9:10], r[9:10], 4
002968  e306ffff  loadli.w r13,  -8(r30)
00296c  2bc60000  lui r12, 12
002970  93256403  setneq.d r11, r[9:10], r[23:24]
002974  0b16c210  add.s r12, r4, r12
002978  0b15a210  add.s r10, r4, r10
00297c  73602601  stores.w r18, 0(r12)
002980  7360e500  stores.w r14, 0(r10)
002984  6345ffff  loadli.w r10,  -4(r30)
002988  0b15a210  add.s r10, r4, r10
00298c  0b12d210  add.s r4, r4, r13
002990  7360f500  stores.w r15, 0(r10)
002994  73601201  stores.w r17, 0(r4)
002998  b79e05fe  beq r11, zero, -92
00299c  0b256410  add.ul r[11:12], r[9:10], r[7:8]
0029a0  6306cfff  loadli.w r12,  -32(r30)
0029a4  1b322500  slli r4, r10, 2
0029a8  6345cfff  loadli.w r10,  -28(r30)
0029ac  e345dfff  loadli.w r11,  -20(r30)
0029b0  0b1ac210  add.s r20, r4, r12
0029b4  0b15a210  add.s r10, r4, r10
0029b8  8b15b210  add.s r11, r4, r11
0029bc  6f47ca00  loads.w r14, 12(r20)
0029c0  ef480500  loads.w r17, 0(r10)
0029c4  efca0500  loads.w r21, 0(r11)
0029c8  6f464500  loads.w r12, 4(r10)
0029cc  ef468500  loads.w r13, 8(r10)
0029d0  ef47c500  loads.w r15, 12(r10)
0029d4  efc94500  loads.w r19, 4(r11)
0029d8  6fc98500  loads.w r18, 8(r11)
0029dc  6fc8c500  loads.w r16, 12(r11)
0029e0  17858801  and r10, r17, r24
0029e4  97858a01  and r11, r21, r24
0029e8  ef488a00  loads.w r17, 8(r20)
0029ec  ef4a4a00  loads.w r21, 4(r20)
0029f0  130b3500  seteq r22, r10, r3
0029f4  930d0500  seteq r27, r10, zero
0029f8  938b0500  seteq r23, r11, zero
0029fc  138d3500  seteq r26, r11, r3
002a00  0b05b548  max.u r10, r10, r11
002a04  1385a104  setlt.u r10, r3, r10
002a08  97057b01  and r11, r22, r23
002a0c  178bad01  and r22, r27, r26
002a10  97956501  or r11, r11, r22
002a14  171bb500  or r22, r10, r11
002a18  2b05c07f  lui r10, 523264
002a1c  ab05c07f  lui r11, 523264
002a20  3b200b00  bneq r22, zero, 8
002a24  ef450a00  loads.w r11, 0(r20)
002a28  17068601  and r12, r12, r24
002a2c  97898901  and r19, r19, r24
002a30  130a3600  seteq r20, r12, r3
002a34  130d0600  seteq r26, r12, zero
002a38  138b0900  seteq r22, r19, zero
002a3c  938b3900  seteq r23, r19, r3
002a40  0b063649  max.u r12, r12, r19
002a44  1386c104  setlt.u r12, r3, r12
002a48  97096a01  and r19, r20, r22
002a4c  170a7d01  and r20, r26, r23
002a50  97994901  or r19, r19, r20
002a54  97193601  or r19, r12, r19
002a58  2b06c07f  lui r12, 523264
002a5c  3ba00900  bneq r19, zero, 8
002a60  1f860a00  addli r12, r21, 0
002a64  97868601  and r13, r13, r24
002a68  17098901  and r18, r18, r24
002a6c  93893600  seteq r19, r13, r3
002a70  138b0600  seteq r22, r13, zero
002a74  130a0900  seteq r20, r18, zero
002a78  930a3900  seteq r21, r18, r3
002a7c  8b862649  max.u r13, r13, r18
002a80  9386d104  setlt.u r13, r3, r13
002a84  17894901  and r18, r19, r20
002a88  97095b01  and r19, r22, r21
002a8c  17193901  or r18, r18, r19
002a90  17992601  or r18, r13, r18
002a94  ab06c07f  lui r13, 523264
002a98  3b200900  bneq r18, zero, 8
002a9c  9f860800  addli r13, r17, 0
002aa0  97878701  and r15, r15, r24
002aa4  17088801  and r16, r16, r24
002aa8  6b5b0fff  load.d r[23:24], -16(r30)
002aac  93883700  seteq r17, r15, r3
002ab0  138a0700  seteq r20, r15, zero
002ab4  13090800  seteq r18, r16, zero
002ab8  93093800  seteq r19, r16, r3
002abc  8b870749  max.u r15, r15, r16
002ac0  9387f104  setlt.u r15, r3, r15
002ac4  17882801  and r16, r17, r18
002ac8  97083a01  and r17, r20, r19
002acc  17181801  or r16, r16, r17
002ad0  97970701  or r15, r15, r16
002ad4  3ba00700  bneq r15, zero, 8
002ad8  1f050700  addli r10, r14, 0
002adc  17088501  and r16, r10, r24
002ae0  13870105  setlt.u r14, r3, r16
002ae4  3b300700  bneq r14, zero, 12
002ae8  1f070500  addli r14, r10, 0
002aec  db010000  j 12
002af0  2b074000  lui r14, 1024
002af4  1717e500  or r14, r10, r14
002af8  97898601  and r19, r13, r24
002afc  93873105  setlt.u r15, r3, r19
002b00  3bb00700  bneq r15, zero, 12
002b04  9f870600  addli r15, r13, 0
002b08  db010000  j 12
002b0c  ab074000  lui r15, 1024
002b10  9797f600  or r15, r13, r15
002b14  170a8601  and r20, r12, r24
002b18  93884105  setlt.u r17, r3, r20
002b1c  3bb00800  bneq r17, zero, 12
002b20  9f080600  addli r17, r12, 0
002b24  db010000  j 12
002b28  ab084000  lui r17, 1024
002b2c  97181601  or r17, r12, r17
002b30  978a8501  and r21, r11, r24
002b34  13895105  setlt.u r18, r3, r21
002b38  3b500900  bneq r18, zero, 20
002b3c  1f890500  addli r18, r11, 0
002b40  938a5c05  setlt.u r21, r25, r21
002b44  37e00a00  beq r21, zero, 24
002b48  db050000  j 44
002b4c  2b094000  lui r18, 1024
002b50  17992501  or r18, r11, r18
002b54  938a5c05  setlt.u r21, r25, r21
002b58  3bf00a00  bneq r21, zero, 28
002b5c  1bc90501  srli r18, r11, 16
002b60  1b091900  andi r18, r18, 1
002b64  8b952511  add.s r11, r11, r18
002b68  2b09ffff  lui r18, 1048560
002b6c  8b955510  add.s r11, r11, r5
002b70  17892501  and r18, r11, r18
002b74  93854c05  setlt.u r11, r25, r20
002b78  bbc00500  bneq r11, zero, 48
002b7c  9b450601  srli r11, r12, 16
002b80  9b851500  andi r11, r11, 1
002b84  8b15b610  add.s r11, r12, r11
002b88  2b06ffff  lui r12, 1048560
002b8c  8b955510  add.s r11, r11, r5
002b90  9788c500  and r17, r11, r12
002b94  93853c05  setlt.u r11, r25, r19
002b98  37e00500  beq r11, zero, 24
002b9c  93850c05  setlt.u r11, r25, r16
002ba0  3b8705fe  bneq r11, zero, -576
002ba4  db050000  j 44
002ba8  93853c05  setlt.u r11, r25, r19
002bac  bbcf05fe  bneq r11, zero, -16
002bb0  9bc50601  srli r11, r13, 16
002bb4  2b06ffff  lui r12, 1048560
002bb8  9b851500  andi r11, r11, 1
002bbc  8b95b610  add.s r11, r13, r11
002bc0  8b955510  add.s r11, r11, r5
002bc4  9787c500  and r15, r11, r12
002bc8  93850c05  setlt.u r11, r25, r16
002bcc  3bd605fe  bneq r11, zero, -620
002bd0  9b450501  srli r11, r10, 16
002bd4  9b851500  andi r11, r11, 1
002bd8  0b15b510  add.s r10, r10, r11
002bdc  ab05ffff  lui r11, 1048560
002be0  0b155510  add.s r10, r10, r5
002be4  1707b500  and r14, r10, r11
002be8  5bafffff  j -648
002bec  00200100  mfence { sm }
002bf0  80330002  core_id r7
002bf4  9f747000  addli r9, zero, 63
002bf8  ab480100  lui r17, 20
002bfc  63498ffe  loadli.w r18,  -188(r30)
002c00  e3409fff  loadli.w r1,  -52(r30)
002c04  bbf20004  bneq r1, zero, 2236
002c08  e300afff  loadli.w r1,  -48(r30)
002c0c  3bde0004  bneq r1, zero, 2964
002c10  dbcc0100  j 3684
002c14  670c3fff  storeli.w r19, -64(r30)
002c18  33030028  zext_int2long r[7:8], zero
002c1c  3d000000  xfence
002c20  00a00300  mfence { lm, sm, gm }
002c24  733c6ffc  store.d r[7:8], -40(r30)
002c28  db030000  j 28
002c2c  9f700000  addli r1, zero, 7
002c30  1f660000  addli r12, zero, 6
002c34  b3800028  zext_int2long r[2:3], r1
002c38  93201304  setlt.ul r1, r[7:8], r[2:3]
002c3c  27130300  addli.d r[7:8], r[7:8], 1
002c40  37aa0000  beq r1, zero, 648
002c44  6b558ffd  load.d r[11:12], -40(r30)
002c48  1734c302  sll.d r[9:10], r[7:8], r12
002c4c  5b080000  j 64
002c50  e300dfff  loadli.w r1,  -24(r30)
002c54  27450500  addli.d r[11:12], r[11:12], 4
002c58  2bc60000  lui r12, 12
002c5c  1321d502  setneq.d r2, r[11:12], r[14:15]
002c60  e306ffff  loadli.w r13,  -8(r30)
002c64  0b16c210  add.s r12, r4, r12
002c68  8b101210  add.s r1, r4, r1
002c6c  73604601  stores.w r20, 0(r12)
002c70  73e00001  stores.w r16, 0(r1)
002c74  e340ffff  loadli.w r1,  -4(r30)
002c78  8b101210  add.s r1, r4, r1
002c7c  0b12d210  add.s r4, r4, r13
002c80  73e01001  stores.w r17, 0(r1)
002c84  73603201  stores.w r19, 0(r4)
002c88  b71e01fe  beq r2, zero, -92
002c8c  0b268510  add.ul r[13:14], r[11:12], r[9:10]
002c90  e340cfff  loadli.w r1,  -28(r30)
002c94  1b322600  slli r4, r12, 2
002c98  0b161210  add.s r12, r4, r1
002c9c  e340dfff  loadli.w r1,  -20(r30)
002ca0  ef490600  loads.w r19, 0(r12)
002ca4  6f474600  loads.w r14, 4(r12)
002ca8  ef478600  loads.w r15, 8(r12)
002cac  ef48c600  loads.w r17, 12(r12)
002cb0  8b161210  add.s r13, r4, r1
002cb4  e300cfff  loadli.w r1,  -32(r30)
002cb8  efcb0600  loads.w r23, 0(r13)
002cbc  efca4600  loads.w r21, 4(r13)
002cc0  6fca8600  loads.w r20, 8(r13)
002cc4  6fc9c600  loads.w r18, 12(r13)
002cc8  0b1b1210  add.s r22, r4, r1
002ccc  6f48cb00  loads.w r16, 12(r22)
002cd0  17868901  and r12, r19, r24
002cd4  ef498b00  loads.w r19, 8(r22)
002cd8  130d3600  seteq r26, r12, r3
002cdc  93000600  seteq r1, r12, zero
002ce0  97868b01  and r13, r23, r24
002ce4  ef4b4b00  loads.w r23, 4(r22)
002ce8  138e3600  seteq r28, r13, r3
002cec  938d0600  seteq r27, r13, zero
002cf0  0b01d648  max.u r2, r12, r13
002cf4  ab06c07f  lui r13, 523264
002cf8  13812104  setlt.u r2, r3, r2
002cfc  1706bd01  and r12, r26, r27
002d00  9780c001  and r1, r1, r28
002d04  97101600  or r1, r12, r1
002d08  2b06c07f  lui r12, 523264
002d0c  97101100  or r1, r2, r1
002d10  3ba00000  bneq r1, zero, 8
002d14  ef460b00  loads.w r13, 0(r22)
002d18  97008701  and r1, r14, r24
002d1c  17818a01  and r2, r21, r24
002d20  13873000  seteq r14, r1, r3
002d24  138d0000  seteq r26, r1, zero
002d28  930a0100  seteq r21, r2, zero
002d2c  130b3100  seteq r22, r2, r3
002d30  8b802048  max.u r1, r1, r2
002d34  93801104  setlt.u r1, r3, r1
002d38  17015701  and r2, r14, r21
002d3c  17076d01  and r14, r26, r22
002d40  1711e100  or r2, r2, r14
002d44  2b07c07f  lui r14, 523264
002d48  97902000  or r1, r1, r2
002d4c  3ba00000  bneq r1, zero, 8
002d50  1f870b00  addli r14, r23, 0
002d54  97808701  and r1, r15, r24
002d58  17018a01  and r2, r20, r24
002d5c  93873000  seteq r15, r1, r3
002d60  138b0000  seteq r22, r1, zero
002d64  130a0100  seteq r20, r2, zero
002d68  930a3100  seteq r21, r2, r3
002d6c  8b802048  max.u r1, r1, r2
002d70  93801104  setlt.u r1, r3, r1
002d74  17814701  and r2, r15, r20
002d78  97075b01  and r15, r22, r21
002d7c  1711f100  or r2, r2, r15
002d80  ab07c07f  lui r15, 523264
002d84  97902000  or r1, r1, r2
002d88  3ba00000  bneq r1, zero, 8
002d8c  9f870900  addli r15, r19, 0
002d90  97808801  and r1, r17, r24
002d94  17018901  and r2, r18, r24
002d98  93883000  seteq r17, r1, r3
002d9c  138a0000  seteq r20, r1, zero
002da0  13090100  seteq r18, r2, zero
002da4  93093100  seteq r19, r2, r3
002da8  8b802048  max.u r1, r1, r2
002dac  93801104  setlt.u r1, r3, r1
002db0  17812801  and r2, r17, r18
002db4  97083a01  and r17, r20, r19
002db8  17111101  or r2, r2, r17
002dbc  97902000  or r1, r1, r2
002dc0  3ba00000  bneq r1, zero, 8
002dc4  1f060800  addli r12, r16, 0
002dc8  17098601  and r18, r12, r24
002dcc  93802105  setlt.u r1, r3, r18
002dd0  3bb00000  bneq r1, zero, 12
002dd4  1f080600  addli r16, r12, 0
002dd8  db010000  j 12
002ddc  ab004000  lui r1, 1024
002de0  17181600  or r16, r12, r1
002de4  978a8701  and r21, r15, r24
002de8  93805105  setlt.u r1, r3, r21
002dec  3bb00000  bneq r1, zero, 12
002df0  9f880700  addli r17, r15, 0
002df4  db010000  j 12
002df8  ab004000  lui r1, 1024
002dfc  97981700  or r17, r15, r1
002e00  170b8701  and r22, r14, r24
002e04  93806105  setlt.u r1, r3, r22
002e08  3bb00000  bneq r1, zero, 12
002e0c  9f090700  addli r19, r14, 0
002e10  db010000  j 12
002e14  ab004000  lui r1, 1024
002e18  97191700  or r19, r14, r1
002e1c  978b8601  and r23, r13, r24
002e20  93807105  setlt.u r1, r3, r23
002e24  3bd00000  bneq r1, zero, 20
002e28  1f8a0600  addli r20, r13, 0
002e2c  93807c05  setlt.u r1, r25, r23
002e30  37e00000  beq r1, zero, 24
002e34  db050000  j 44
002e38  ab004000  lui r1, 1024
002e3c  179a1600  or r20, r13, r1
002e40  93807c05  setlt.u r1, r25, r23
002e44  3bf00000  bneq r1, zero, 28
002e48  9bc00601  srli r1, r13, 16
002e4c  2b01ffff  lui r2, 1048560
002e50  9b801000  andi r1, r1, 1
002e54  8b901610  add.s r1, r13, r1
002e58  8b905010  add.s r1, r1, r5
002e5c  178a2000  and r20, r1, r2
002e60  93806c05  setlt.u r1, r25, r22
002e64  3bf00000  bneq r1, zero, 28
002e68  9b400701  srli r1, r14, 16
002e6c  2b01ffff  lui r2, 1048560
002e70  9b801000  andi r1, r1, 1
002e74  8b101710  add.s r1, r14, r1
002e78  8b905010  add.s r1, r1, r5
002e7c  97892000  and r19, r1, r2
002e80  93805c05  setlt.u r1, r25, r21
002e84  eb560fff  load.d r[14:15], -16(r30)
002e88  3bf00000  bneq r1, zero, 28
002e8c  9bc00701  srli r1, r15, 16
002e90  2b01ffff  lui r2, 1048560
002e94  9b801000  andi r1, r1, 1
002e98  8b901710  add.s r1, r15, r1
002e9c  8b905010  add.s r1, r1, r5
002ea0  97882000  and r17, r1, r2
002ea4  93802c05  setlt.u r1, r25, r18
002ea8  bba600fe  bneq r1, zero, -600
002eac  9b400601  srli r1, r12, 16
002eb0  2b01ffff  lui r2, 1048560
002eb4  9b801000  andi r1, r1, 1
002eb8  8b101610  add.s r1, r12, r1
002ebc  8b905010  add.s r1, r1, r5
002ec0  17882000  and r16, r1, r2
002ec4  dbb1ffff  j -628
002ec8  00200100  mfence { sm }
002ecc  80330002  core_id r7
002ed0  9f747000  addli r9, zero, 63
002ed4  ab480100  lui r17, 20
002ed8  2b7e0000  lui r28, 7
002edc  63498ffe  loadli.w r18,  -188(r30)
002ee0  e3098fff  loadli.w r19,  -64(r30)
002ee4  3be109f6  bneq r19, zero, -5032
002ee8  e3408fff  loadli.w r1,  -60(r30)
002eec  37bd00fa  beq r1, zero, -2228
002ef0  9f002000  addli r1, zero, 16
002ef4  3d000000  xfence
002ef8  00a00300  mfence { lm, sm, gm }
002efc  b3800028  zext_int2long r[2:3], r1
002f00  db030000  j 28
002f04  1f722000  addli r4, zero, 23
002f08  1f660000  addli r12, zero, 6
002f0c  33030228  zext_int2long r[7:8], r4
002f10  13a26004  setlt.ul r4, r[2:3], r[7:8]
002f14  a7900000  addli.d r[2:3], r[2:3], 1
002f18  377a0200  beq r4, zero, 668
002f1c  17b3c002  sll.d r[7:8], r[2:3], r12
002f20  33040028  zext_int2long r[9:10], zero
002f24  5b080000  j 64
002f28  6305dfff  loadli.w r10,  -24(r30)
002f2c  27440400  addli.d r[9:10], r[9:10], 4
002f30  e306ffff  loadli.w r13,  -8(r30)
002f34  2bc60000  lui r12, 12
002f38  93256403  setneq.d r11, r[9:10], r[23:24]
002f3c  0b16c210  add.s r12, r4, r12
002f40  0b15a210  add.s r10, r4, r10
002f44  73602601  stores.w r18, 0(r12)
002f48  7360e500  stores.w r14, 0(r10)
002f4c  6345ffff  loadli.w r10,  -4(r30)
002f50  0b15a210  add.s r10, r4, r10
002f54  0b12d210  add.s r4, r4, r13
002f58  7360f500  stores.w r15, 0(r10)
002f5c  73601201  stores.w r17, 0(r4)
002f60  b79e05fe  beq r11, zero, -92
002f64  0b256410  add.ul r[11:12], r[9:10], r[7:8]
002f68  6306cfff  loadli.w r12,  -32(r30)
002f6c  1b322500  slli r4, r10, 2
002f70  6345cfff  loadli.w r10,  -28(r30)
002f74  e345dfff  loadli.w r11,  -20(r30)
002f78  0b1ac210  add.s r20, r4, r12
002f7c  0b15a210  add.s r10, r4, r10
002f80  8b15b210  add.s r11, r4, r11
002f84  6f47ca00  loads.w r14, 12(r20)
002f88  ef480500  loads.w r17, 0(r10)
002f8c  efca0500  loads.w r21, 0(r11)
002f90  6f464500  loads.w r12, 4(r10)
002f94  ef468500  loads.w r13, 8(r10)
002f98  ef47c500  loads.w r15, 12(r10)
002f9c  efc94500  loads.w r19, 4(r11)
002fa0  6fc98500  loads.w r18, 8(r11)
002fa4  6fc8c500  loads.w r16, 12(r11)
002fa8  17858801  and r10, r17, r24
002fac  97858a01  and r11, r21, r24
002fb0  ef488a00  loads.w r17, 8(r20)
002fb4  ef4a4a00  loads.w r21, 4(r20)
002fb8  130b3500  seteq r22, r10, r3
002fbc  930d0500  seteq r27, r10, zero
002fc0  938b0500  seteq r23, r11, zero
002fc4  138d3500  seteq r26, r11, r3
002fc8  0b05b548  max.u r10, r10, r11
002fcc  1385a104  setlt.u r10, r3, r10
002fd0  97057b01  and r11, r22, r23
002fd4  178bad01  and r22, r27, r26
002fd8  97956501  or r11, r11, r22
002fdc  171bb500  or r22, r10, r11
002fe0  2b05c07f  lui r10, 523264
002fe4  ab05c07f  lui r11, 523264
002fe8  3b200b00  bneq r22, zero, 8
002fec  ef450a00  loads.w r11, 0(r20)
002ff0  17068601  and r12, r12, r24
002ff4  97898901  and r19, r19, r24
002ff8  130a3600  seteq r20, r12, r3
002ffc  130d0600  seteq r26, r12, zero
003000  138b0900  seteq r22, r19, zero
003004  938b3900  seteq r23, r19, r3
003008  0b063649  max.u r12, r12, r19
00300c  1386c104  setlt.u r12, r3, r12
003010  97096a01  and r19, r20, r22
003014  170a7d01  and r20, r26, r23
003018  97994901  or r19, r19, r20
00301c  97193601  or r19, r12, r19
003020  2b06c07f  lui r12, 523264
003024  3ba00900  bneq r19, zero, 8
003028  1f860a00  addli r12, r21, 0
00302c  97868601  and r13, r13, r24
003030  17098901  and r18, r18, r24
003034  93893600  seteq r19, r13, r3
003038  138b0600  seteq r22, r13, zero
00303c  130a0900  seteq r20, r18, zero
003040  930a3900  seteq r21, r18, r3
003044  8b862649  max.u r13, r13, r18
003048  9386d104  setlt.u r13, r3, r13
00304c  17894901  and r18, r19, r20
003050  97095b01  and r19, r22, r21
003054  17193901  or r18, r18, r19
003058  17992601  or r18, r13, r18
00305c  ab06c07f  lui r13, 523264
003060  3b200900  bneq r18, zero, 8
003064  9f860800  addli r13, r17, 0
003068  97878701  and r15, r15, r24
00306c  17088801  and r16, r16, r24
003070  6b5b0fff  load.d r[23:24], -16(r30)
003074  93883700  seteq r17, r15, r3
003078  138a0700  seteq r20, r15, zero
00307c  13090800  seteq r18, r16, zero
003080  93093800  seteq r19, r16, r3
003084  8b870749  max.u r15, r15, r16
003088  9387f104  setlt.u r15, r3, r15
00308c  17882801  and r16, r17, r18
003090  97083a01  and r17, r20, r19
003094  17181801  or r16, r16, r17
003098  97970701  or r15, r15, r16
00309c  3ba00700  bneq r15, zero, 8
0030a0  1f050700  addli r10, r14, 0
0030a4  17088501  and r16, r10, r24
0030a8  13870105  setlt.u r14, r3, r16
0030ac  3b300700  bneq r14, zero, 12
0030b0  1f070500  addli r14, r10, 0
0030b4  db010000  j 12
0030b8  2b074000  lui r14, 1024
0030bc  1717e500  or r14, r10, r14
0030c0  97898601  and r19, r13, r24
0030c4  93873105  setlt.u r15, r3, r19
0030c8  3bb00700  bneq r15, zero, 12
0030cc  9f870600  addli r15, r13, 0
0030d0  db010000  j 12
0030d4  ab074000  lui r15, 1024
0030d8  9797f600  or r15, r13, r15
0030dc  170a8601  and r20, r12, r24
0030e0  93884105  setlt.u r17, r3, r20
0030e4  3bb00800  bneq r17, zero, 12
0030e8  9f080600  addli r17, r12, 0
0030ec  db010000  j 12
0030f0  ab084000  lui r17, 1024
0030f4  97181601  or r17, r12, r17
0030f8  978a8501  and r21, r11, r24
0030fc  13895105  setlt.u r18, r3, r21
003100  3b500900  bneq r18, zero, 20
003104  1f890500  addli r18, r11, 0
003108  938a5c05  setlt.u r21, r25, r21
00310c  37e00a00  beq r21, zero, 24
003110  db050000  j 44
003114  2b094000  lui r18, 1024
003118  17992501  or r18, r11, r18
00311c  938a5c05  setlt.u r21, r25, r21
003120  3bf00a00  bneq r21, zero, 28
003124  1bc90501  srli r18, r11, 16
003128  1b091900  andi r18, r18, 1
00312c  8b952511  add.s r11, r11, r18
003130  2b09ffff  lui r18, 1048560
003134  8b955510  add.s r11, r11, r5
003138  17892501  and r18, r11, r18
00313c  93854c05  setlt.u r11, r25, r20
003140  bbc00500  bneq r11, zero, 48
003144  9b450601  srli r11, r12, 16
003148  9b851500  andi r11, r11, 1
00314c  8b15b610  add.s r11, r12, r11
003150  2b06ffff  lui r12, 1048560
003154  8b955510  add.s r11, r11, r5
003158  9788c500  and r17, r11, r12
00315c  93853c05  setlt.u r11, r25, r19
003160  37e00500  beq r11, zero, 24
003164  93850c05  setlt.u r11, r25, r16
003168  3b8705fe  bneq r11, zero, -576
00316c  db050000  j 44
003170  93853c05  setlt.u r11, r25, r19
003174  bbcf05fe  bneq r11, zero, -16
003178  9bc50601  srli r11, r13, 16
00317c  2b06ffff  lui r12, 1048560
003180  9b851500  andi r11, r11, 1
003184  8b95b610  add.s r11, r13, r11
003188  8b955510  add.s r11, r11, r5
00318c  9787c500  and r15, r11, r12
003190  93850c05  setlt.u r11, r25, r16
003194  3bd605fe  bneq r11, zero, -620
003198  9b450501  srli r11, r10, 16
00319c  9b851500  andi r11, r11, 1
0031a0  0b15b510  add.s r10, r10, r11
0031a4  ab05ffff  lui r11, 1048560
0031a8  0b155510  add.s r10, r10, r5
0031ac  1707b500  and r14, r10, r11
0031b0  5bafffff  j -648
0031b4  00200100  mfence { sm }
0031b8  80330002  core_id r7
0031bc  9f747000  addli r9, zero, 63
0031c0  ab480100  lui r17, 20
0031c4  63498ffe  loadli.w r18,  -188(r30)
0031c8  e340afff  loadli.w r1,  -44(r30)
0031cc  bbd100fa  bneq r1, zero, -2956
0031d0  e3009fff  loadli.w r1,  -56(r30)
0031d4  37bd00fa  beq r1, zero, -2228
0031d8  9f004000  addli r1, zero, 32
0031dc  3d000000  xfence
0031e0  00a00300  mfence { lm, sm, gm }
0031e4  b3800028  zext_int2long r[2:3], r1
0031e8  db030000  j 28
0031ec  1f724000  addli r4, zero, 39
0031f0  1f660000  addli r12, zero, 6
0031f4  33030228  zext_int2long r[7:8], r4
0031f8  13a26004  setlt.ul r4, r[2:3], r[7:8]
0031fc  a7900000  addli.d r[2:3], r[2:3], 1
003200  377a0200  beq r4, zero, 668
003204  17b3c002  sll.d r[7:8], r[2:3], r12
003208  33040028  zext_int2long r[9:10], zero
00320c  5b080000  j 64
003210  6305dfff  loadli.w r10,  -24(r30)
003214  27440400  addli.d r[9:10], r[9:10], 4
003218  e306ffff  loadli.w r13,  -8(r30)
00321c  2bc60000  lui r12, 12
003220  93256403  setneq.d r11, r[9:10], r[23:24]
003224  0b16c210  add.s r12, r4, r12
003228  0b15a210  add.s r10, r4, r10
00322c  73602601  stores.w r18, 0(r12)
003230  7360e500  stores.w r14, 0(r10)
003234  6345ffff  loadli.w r10,  -4(r30)
003238  0b15a210  add.s r10, r4, r10
00323c  0b12d210  add.s r4, r4, r13
003240  7360f500  stores.w r15, 0(r10)
003244  73601201  stores.w r17, 0(r4)
003248  b79e05fe  beq r11, zero, -92
00324c  0b256410  add.ul r[11:12], r[9:10], r[7:8]
003250  6306cfff  loadli.w r12,  -32(r30)
003254  1b322500  slli r4, r10, 2
003258  6345cfff  loadli.w r10,  -28(r30)
00325c  e345dfff  loadli.w r11,  -20(r30)
003260  0b1ac210  add.s r20, r4, r12
003264  0b15a210  add.s r10, r4, r10
003268  8b15b210  add.s r11, r4, r11
00326c  6f47ca00  loads.w r14, 12(r20)
003270  ef480500  loads.w r17, 0(r10)
003274  efca0500  loads.w r21, 0(r11)
003278  6f464500  loads.w r12, 4(r10)
00327c  ef468500  loads.w r13, 8(r10)
003280  ef47c500  loads.w r15, 12(r10)
003284  efc94500  loads.w r19, 4(r11)
003288  6fc98500  loads.w r18, 8(r11)
00328c  6fc8c500  loads.w r16, 12(r11)
003290  17858801  and r10, r17, r24
003294  97858a01  and r11, r21, r24
003298  ef488a00  loads.w r17, 8(r20)
00329c  ef4a4a00  loads.w r21, 4(r20)
0032a0  130b3500  seteq r22, r10, r3
0032a4  930d0500  seteq r27, r10, zero
0032a8  938b0500  seteq r23, r11, zero
0032ac  138d3500  seteq r26, r11, r3
0032b0  0b05b548  max.u r10, r10, r11
0032b4  1385a104  setlt.u r10, r3, r10
0032b8  97057b01  and r11, r22, r23
0032bc  178bad01  and r22, r27, r26
0032c0  97956501  or r11, r11, r22
0032c4  171bb500  or r22, r10, r11
0032c8  2b05c07f  lui r10, 523264
0032cc  ab05c07f  lui r11, 523264
0032d0  3b200b00  bneq r22, zero, 8
0032d4  ef450a00  loads.w r11, 0(r20)
0032d8  17068601  and r12, r12, r24
0032dc  97898901  and r19, r19, r24
0032e0  130a3600  seteq r20, r12, r3
0032e4  130d0600  seteq r26, r12, zero
0032e8  138b0900  seteq r22, r19, zero
0032ec  938b3900  seteq r23, r19, r3
0032f0  0b063649  max.u r12, r12, r19
0032f4  1386c104  setlt.u r12, r3, r12
0032f8  97096a01  and r19, r20, r22
0032fc  170a7d01  and r20, r26, r23
003300  97994901  or r19, r19, r20
003304  97193601  or r19, r12, r19
003308  2b06c07f  lui r12, 523264
00330c  3ba00900  bneq r19, zero, 8
003310  1f860a00  addli r12, r21, 0
003314  97868601  and r13, r13, r24
003318  17098901  and r18, r18, r24
00331c  93893600  seteq r19, r13, r3
003320  138b0600  seteq r22, r13, zero
003324  130a0900  seteq r20, r18, zero
003328  930a3900  seteq r21, r18, r3
00332c  8b862649  max.u r13, r13, r18
003330  9386d104  setlt.u r13, r3, r13
003334  17894901  and r18, r19, r20
003338  97095b01  and r19, r22, r21
00333c  17193901  or r18, r18, r19
003340  17992601  or r18, r13, r18
003344  ab06c07f  lui r13, 523264
003348  3b200900  bneq r18, zero, 8
00334c  9f860800  addli r13, r17, 0
003350  97878701  and r15, r15, r24
003354  17088801  and r16, r16, r24
003358  6b5b0fff  load.d r[23:24], -16(r30)
00335c  93883700  seteq r17, r15, r3
003360  138a0700  seteq r20, r15, zero
003364  13090800  seteq r18, r16, zero
003368  93093800  seteq r19, r16, r3
00336c  8b870749  max.u r15, r15, r16
003370  9387f104  setlt.u r15, r3, r15
003374  17882801  and r16, r17, r18
003378  97083a01  and r17, r20, r19
00337c  17181801  or r16, r16, r17
003380  97970701  or r15, r15, r16
003384  3ba00700  bneq r15, zero, 8
003388  1f050700  addli r10, r14, 0
00338c  17088501  and r16, r10, r24
003390  13870105  setlt.u r14, r3, r16
003394  3b300700  bneq r14, zero, 12
003398  1f070500  addli r14, r10, 0
00339c  db010000  j 12
0033a0  2b074000  lui r14, 1024
0033a4  1717e500  or r14, r10, r14
0033a8  97898601  and r19, r13, r24
0033ac  93873105  setlt.u r15, r3, r19
0033b0  3bb00700  bneq r15, zero, 12
0033b4  9f870600  addli r15, r13, 0
0033b8  db010000  j 12
0033bc  ab074000  lui r15, 1024
0033c0  9797f600  or r15, r13, r15
0033c4  170a8601  and r20, r12, r24
0033c8  93884105  setlt.u r17, r3, r20
0033cc  3bb00800  bneq r17, zero, 12
0033d0  9f080600  addli r17, r12, 0
0033d4  db010000  j 12
0033d8  ab084000  lui r17, 1024
0033dc  97181601  or r17, r12, r17
0033e0  978a8501  and r21, r11, r24
0033e4  13895105  setlt.u r18, r3, r21
0033e8  3b500900  bneq r18, zero, 20
0033ec  1f890500  addli r18, r11, 0
0033f0  938a5c05  setlt.u r21, r25, r21
0033f4  37e00a00  beq r21, zero, 24
0033f8  db050000  j 44
0033fc  2b094000  lui r18, 1024
003400  17992501  or r18, r11, r18
003404  938a5c05  setlt.u r21, r25, r21
003408  3bf00a00  bneq r21, zero, 28
00340c  1bc90501  srli r18, r11, 16
003410  1b091900  andi r18, r18, 1
003414  8b952511  add.s r11, r11, r18
003418  2b09ffff  lui r18, 1048560
00341c  8b955510  add.s r11, r11, r5
003420  17892501  and r18, r11, r18
003424  93854c05  setlt.u r11, r25, r20
003428  bbc00500  bneq r11, zero, 48
00342c  9b450601  srli r11, r12, 16
003430  9b851500  andi r11, r11, 1
003434  8b15b610  add.s r11, r12, r11
003438  2b06ffff  lui r12, 1048560
00343c  8b955510  add.s r11, r11, r5
003440  9788c500  and r17, r11, r12
003444  93853c05  setlt.u r11, r25, r19
003448  37e00500  beq r11, zero, 24
00344c  93850c05  setlt.u r11, r25, r16
003450  3b8705fe  bneq r11, zero, -576
003454  db050000  j 44
003458  93853c05  setlt.u r11, r25, r19
00345c  bbcf05fe  bneq r11, zero, -16
003460  9bc50601  srli r11, r13, 16
003464  2b06ffff  lui r12, 1048560
003468  9b851500  andi r11, r11, 1
00346c  8b95b610  add.s r11, r13, r11
003470  8b955510  add.s r11, r11, r5
003474  9787c500  and r15, r11, r12
003478  93850c05  setlt.u r11, r25, r16
00347c  3bd605fe  bneq r11, zero, -620
003480  9b450501  srli r11, r10, 16
003484  9b851500  andi r11, r11, 1
003488  0b15b510  add.s r10, r10, r11
00348c  ab05ffff  lui r11, 1048560
003490  0b155510  add.s r10, r10, r5
003494  1707b500  and r14, r10, r11
003498  5bafffff  j -648
00349c  00200100  mfence { sm }
0034a0  80330002  core_id r7
0034a4  9f747000  addli r9, zero, 63
0034a8  ab480100  lui r17, 20
0034ac  63498ffe  loadli.w r18,  -188(r30)
0034b0  9f500000  addli r1, zero, 5
0034b4  b7d113fa  beq r7, r1, -2956
0034b8  e3409fff  loadli.w r1,  -52(r30)
0034bc  37bd00fa  beq r1, zero, -2228
0034c0  9f006000  addli r1, zero, 48
0034c4  3d000000  xfence
0034c8  00a00300  mfence { lm, sm, gm }
0034cc  b3800028  zext_int2long r[2:3], r1
0034d0  db030000  j 28
0034d4  1f726000  addli r4, zero, 55
0034d8  1f660000  addli r12, zero, 6
0034dc  33030228  zext_int2long r[7:8], r4
0034e0  13a26004  setlt.ul r4, r[2:3], r[7:8]
0034e4  a7900000  addli.d r[2:3], r[2:3], 1
0034e8  377a0200  beq r4, zero, 668
0034ec  17b3c002  sll.d r[7:8], r[2:3], r12
0034f0  33040028  zext_int2long r[9:10], zero
0034f4  5b080000  j 64
0034f8  6305dfff  loadli.w r10,  -24(r30)
0034fc  27440400  addli.d r[9:10], r[9:10], 4
003500  e306ffff  loadli.w r13,  -8(r30)
003504  2bc60000  lui r12, 12
003508  93256403  setneq.d r11, r[9:10], r[23:24]
00350c  0b16c210  add.s r12, r4, r12
003510  0b15a210  add.s r10, r4, r10
003514  73602601  stores.w r18, 0(r12)
003518  7360e500  stores.w r14, 0(r10)
00351c  6345ffff  loadli.w r10,  -4(r30)
003520  0b15a210  add.s r10, r4, r10
003524  0b12d210  add.s r4, r4, r13
003528  7360f500  stores.w r15, 0(r10)
00352c  73601201  stores.w r17, 0(r4)
003530  b79e05fe  beq r11, zero, -92
003534  0b256410  add.ul r[11:12], r[9:10], r[7:8]
003538  6306cfff  loadli.w r12,  -32(r30)
00353c  1b322500  slli r4, r10, 2
003540  6345cfff  loadli.w r10,  -28(r30)
003544  e345dfff  loadli.w r11,  -20(r30)
003548  0b1ac210  add.s r20, r4, r12
00354c  0b15a210  add.s r10, r4, r10
003550  8b15b210  add.s r11, r4, r11
003554  6f47ca00  loads.w r14, 12(r20)
003558  ef480500  loads.w r17, 0(r10)
00355c  efca0500  loads.w r21, 0(r11)
003560  6f464500  loads.w r12, 4(r10)
003564  ef468500  loads.w r13, 8(r10)
003568  ef47c500  loads.w r15, 12(r10)
00356c  efc94500  loads.w r19, 4(r11)
003570  6fc98500  loads.w r18, 8(r11)
003574  6fc8c500  loads.w r16, 12(r11)
003578  17858801  and r10, r17, r24
00357c  97858a01  and r11, r21, r24
003580  ef488a00  loads.w r17, 8(r20)
003584  ef4a4a00  loads.w r21, 4(r20)
003588  130b3500  seteq r22, r10, r3
00358c  930d0500  seteq r27, r10, zero
003590  938b0500  seteq r23, r11, zero
003594  138d3500  seteq r26, r11, r3
003598  0b05b548  max.u r10, r10, r11
00359c  1385a104  setlt.u r10, r3, r10
0035a0  97057b01  and r11, r22, r23
0035a4  178bad01  and r22, r27, r26
0035a8  97956501  or r11, r11, r22
0035ac  171bb500  or r22, r10, r11
0035b0  2b05c07f  lui r10, 523264
0035b4  ab05c07f  lui r11, 523264
0035b8  3b200b00  bneq r22, zero, 8
0035bc  ef450a00  loads.w r11, 0(r20)
0035c0  17068601  and r12, r12, r24
0035c4  97898901  and r19, r19, r24
0035c8  130a3600  seteq r20, r12, r3
0035cc  130d0600  seteq r26, r12, zero
0035d0  138b0900  seteq r22, r19, zero
0035d4  938b3900  seteq r23, r19, r3
0035d8  0b063649  max.u r12, r12, r19
0035dc  1386c104  setlt.u r12, r3, r12
0035e0  97096a01  and r19, r20, r22
0035e4  170a7d01  and r20, r26, r23
0035e8  97994901  or r19, r19, r20
0035ec  97193601  or r19, r12, r19
0035f0  2b06c07f  lui r12, 523264
0035f4  3ba00900  bneq r19, zero, 8
0035f8  1f860a00  addli r12, r21, 0
0035fc  97868601  and r13, r13, r24
003600  17098901  and r18, r18, r24
003604  93893600  seteq r19, r13, r3
003608  138b0600  seteq r22, r13, zero
00360c  130a0900  seteq r20, r18, zero
003610  930a3900  seteq r21, r18, r3
003614  8b862649  max.u r13, r13, r18
003618  9386d104  setlt.u r13, r3, r13
00361c  17894901  and r18, r19, r20
003620  97095b01  and r19, r22, r21
003624  17193901  or r18, r18, r19
003628  17992601  or r18, r13, r18
00362c  ab06c07f  lui r13, 523264
003630  3b200900  bneq r18, zero, 8
003634  9f860800  addli r13, r17, 0
003638  97878701  and r15, r15, r24
00363c  17088801  and r16, r16, r24
003640  6b5b0fff  load.d r[23:24], -16(r30)
003644  93883700  seteq r17, r15, r3
003648  138a0700  seteq r20, r15, zero
00364c  13090800  seteq r18, r16, zero
003650  93093800  seteq r19, r16, r3
003654  8b870749  max.u r15, r15, r16
003658  9387f104  setlt.u r15, r3, r15
00365c  17882801  and r16, r17, r18
003660  97083a01  and r17, r20, r19
003664  17181801  or r16, r16, r17
003668  97970701  or r15, r15, r16
00366c  3ba00700  bneq r15, zero, 8
003670  1f050700  addli r10, r14, 0
003674  17088501  and r16, r10, r24
003678  13870105  setlt.u r14, r3, r16
00367c  3b300700  bneq r14, zero, 12
003680  1f070500  addli r14, r10, 0
003684  db010000  j 12
003688  2b074000  lui r14, 1024
00368c  1717e500  or r14, r10, r14
003690  97898601  and r19, r13, r24
003694  93873105  setlt.u r15, r3, r19
003698  3bb00700  bneq r15, zero, 12
00369c  9f870600  addli r15, r13, 0
0036a0  db010000  j 12
0036a4  ab074000  lui r15, 1024
0036a8  9797f600  or r15, r13, r15
0036ac  170a8601  and r20, r12, r24
0036b0  93884105  setlt.u r17, r3, r20
0036b4  3bb00800  bneq r17, zero, 12
0036b8  9f080600  addli r17, r12, 0
0036bc  db010000  j 12
0036c0  ab084000  lui r17, 1024
0036c4  97181601  or r17, r12, r17
0036c8  978a8501  and r21, r11, r24
0036cc  13895105  setlt.u r18, r3, r21
0036d0  3b500900  bneq r18, zero, 20
0036d4  1f890500  addli r18, r11, 0
0036d8  938a5c05  setlt.u r21, r25, r21
0036dc  37e00a00  beq r21, zero, 24
0036e0  db050000  j 44
0036e4  2b094000  lui r18, 1024
0036e8  17992501  or r18, r11, r18
0036ec  938a5c05  setlt.u r21, r25, r21
0036f0  3bf00a00  bneq r21, zero, 28
0036f4  1bc90501  srli r18, r11, 16
0036f8  1b091900  andi r18, r18, 1
0036fc  8b952511  add.s r11, r11, r18
003700  2b09ffff  lui r18, 1048560
003704  8b955510  add.s r11, r11, r5
003708  17892501  and r18, r11, r18
00370c  93854c05  setlt.u r11, r25, r20
003710  bbc00500  bneq r11, zero, 48
003714  9b450601  srli r11, r12, 16
003718  9b851500  andi r11, r11, 1
00371c  8b15b610  add.s r11, r12, r11
003720  2b06ffff  lui r12, 1048560
003724  8b955510  add.s r11, r11, r5
003728  9788c500  and r17, r11, r12
00372c  93853c05  setlt.u r11, r25, r19
003730  37e00500  beq r11, zero, 24
003734  93850c05  setlt.u r11, r25, r16
003738  3b8705fe  bneq r11, zero, -576
00373c  db050000  j 44
003740  93853c05  setlt.u r11, r25, r19
003744  bbcf05fe  bneq r11, zero, -16
003748  9bc50601  srli r11, r13, 16
00374c  2b06ffff  lui r12, 1048560
003750  9b851500  andi r11, r11, 1
003754  8b95b610  add.s r11, r13, r11
003758  8b955510  add.s r11, r11, r5
00375c  9787c500  and r15, r11, r12
003760  93850c05  setlt.u r11, r25, r16
003764  3bd605fe  bneq r11, zero, -620
003768  9b450501  srli r11, r10, 16
00376c  9b851500  andi r11, r11, 1
003770  0b15b510  add.s r10, r10, r11
003774  ab05ffff  lui r11, 1048560
003778  0b155510  add.s r10, r10, r5
00377c  1707b500  and r14, r10, r11
003780  5bafffff  j -648
003784  00200100  mfence { sm }
003788  80330002  core_id r7
00378c  9f747000  addli r9, zero, 63
003790  ab480100  lui r17, 20
003794  63498ffe  loadli.w r18,  -188(r30)
003798  e300afff  loadli.w r1,  -48(r30)
00379c  37eb0000  beq r1, zero, 728
0037a0  9f007000  addli r1, zero, 56
0037a4  3d000000  xfence
0037a8  00a00300  mfence { lm, sm, gm }
0037ac  b3800028  zext_int2long r[2:3], r1
0037b0  5b030000  j 24
0037b4  6b530ff5  load.d r[7:8], -176(r30)
0037b8  1f660000  addli r12, zero, 6
0037bc  13a26004  setlt.ul r4, r[2:3], r[7:8]
0037c0  a7900000  addli.d r[2:3], r[2:3], 1
0037c4  377a0200  beq r4, zero, 668
0037c8  17b3c002  sll.d r[7:8], r[2:3], r12
0037cc  33040028  zext_int2long r[9:10], zero
0037d0  5b080000  j 64
0037d4  6305dfff  loadli.w r10,  -24(r30)
0037d8  27440400  addli.d r[9:10], r[9:10], 4
0037dc  e306ffff  loadli.w r13,  -8(r30)
0037e0  2bc60000  lui r12, 12
0037e4  93256403  setneq.d r11, r[9:10], r[23:24]
0037e8  0b16c210  add.s r12, r4, r12
0037ec  0b15a210  add.s r10, r4, r10
0037f0  73602601  stores.w r18, 0(r12)
0037f4  7360e500  stores.w r14, 0(r10)
0037f8  6345ffff  loadli.w r10,  -4(r30)
0037fc  0b15a210  add.s r10, r4, r10
003800  0b12d210  add.s r4, r4, r13
003804  7360f500  stores.w r15, 0(r10)
003808  73601201  stores.w r17, 0(r4)
00380c  b7ae05fe  beq r11, zero, -88
003810  0b256410  add.ul r[11:12], r[9:10], r[7:8]
003814  6306cfff  loadli.w r12,  -32(r30)
003818  1b322500  slli r4, r10, 2
00381c  6345cfff  loadli.w r10,  -28(r30)
003820  e345dfff  loadli.w r11,  -20(r30)
003824  0b1ac210  add.s r20, r4, r12
003828  0b15a210  add.s r10, r4, r10
00382c  8b15b210  add.s r11, r4, r11
003830  6f47ca00  loads.w r14, 12(r20)
003834  ef480500  loads.w r17, 0(r10)
003838  efca0500  loads.w r21, 0(r11)
00383c  6f464500  loads.w r12, 4(r10)
003840  ef468500  loads.w r13, 8(r10)
003844  ef47c500  loads.w r15, 12(r10)
003848  efc94500  loads.w r19, 4(r11)
00384c  6fc98500  loads.w r18, 8(r11)
003850  6fc8c500  loads.w r16, 12(r11)
003854  17858801  and r10, r17, r24
003858  97858a01  and r11, r21, r24
00385c  ef488a00  loads.w r17, 8(r20)
003860  ef4a4a00  loads.w r21, 4(r20)
003864  130b3500  seteq r22, r10, r3
003868  930d0500  seteq r27, r10, zero
00386c  938b0500  seteq r23, r11, zero
003870  138d3500  seteq r26, r11, r3
003874  0b05b548  max.u r10, r10, r11
003878  1385a104  setlt.u r10, r3, r10
00387c  97057b01  and r11, r22, r23
003880  178bad01  and r22, r27, r26
003884  97956501  or r11, r11, r22
003888  171bb500  or r22, r10, r11
00388c  2b05c07f  lui r10, 523264
003890  ab05c07f  lui r11, 523264
003894  3b200b00  bneq r22, zero, 8
003898  ef450a00  loads.w r11, 0(r20)
00389c  17068601  and r12, r12, r24
0038a0  97898901  and r19, r19, r24
0038a4  130a3600  seteq r20, r12, r3
0038a8  130d0600  seteq r26, r12, zero
0038ac  138b0900  seteq r22, r19, zero
0038b0  938b3900  seteq r23, r19, r3
0038b4  0b063649  max.u r12, r12, r19
0038b8  1386c104  setlt.u r12, r3, r12
0038bc  97096a01  and r19, r20, r22
0038c0  170a7d01  and r20, r26, r23
0038c4  97994901  or r19, r19, r20
0038c8  97193601  or r19, r12, r19
0038cc  2b06c07f  lui r12, 523264
0038d0  3ba00900  bneq r19, zero, 8
0038d4  1f860a00  addli r12, r21, 0
0038d8  97868601  and r13, r13, r24
0038dc  17098901  and r18, r18, r24
0038e0  93893600  seteq r19, r13, r3
0038e4  138b0600  seteq r22, r13, zero
0038e8  130a0900  seteq r20, r18, zero
0038ec  930a3900  seteq r21, r18, r3
0038f0  8b862649  max.u r13, r13, r18
0038f4  9386d104  setlt.u r13, r3, r13
0038f8  17894901  and r18, r19, r20
0038fc  97095b01  and r19, r22, r21
003900  17193901  or r18, r18, r19
003904  17992601  or r18, r13, r18
003908  ab06c07f  lui r13, 523264
00390c  3b200900  bneq r18, zero, 8
003910  9f860800  addli r13, r17, 0
003914  97878701  and r15, r15, r24
003918  17088801  and r16, r16, r24
00391c  6b5b0fff  load.d r[23:24], -16(r30)
003920  93883700  seteq r17, r15, r3
003924  138a0700  seteq r20, r15, zero
003928  13090800  seteq r18, r16, zero
00392c  93093800  seteq r19, r16, r3
003930  8b870749  max.u r15, r15, r16
003934  9387f104  setlt.u r15, r3, r15
003938  17882801  and r16, r17, r18
00393c  97083a01  and r17, r20, r19
003940  17181801  or r16, r16, r17
003944  97970701  or r15, r15, r16
003948  3ba00700  bneq r15, zero, 8
00394c  1f050700  addli r10, r14, 0
003950  17088501  and r16, r10, r24
003954  13870105  setlt.u r14, r3, r16
003958  3b300700  bneq r14, zero, 12
00395c  1f070500  addli r14, r10, 0
003960  db010000  j 12
003964  2b074000  lui r14, 1024
003968  1717e500  or r14, r10, r14
00396c  97898601  and r19, r13, r24
003970  93873105  setlt.u r15, r3, r19
003974  3bb00700  bneq r15, zero, 12
003978  9f870600  addli r15, r13, 0
00397c  db010000  j 12
003980  ab074000  lui r15, 1024
003984  9797f600  or r15, r13, r15
003988  170a8601  and r20, r12, r24
00398c  93884105  setlt.u r17, r3, r20
003990  3bb00800  bneq r17, zero, 12
003994  9f080600  addli r17, r12, 0
003998  db010000  j 12
00399c  ab084000  lui r17, 1024
0039a0  97181601  or r17, r12, r17
0039a4  978a8501  and r21, r11, r24
0039a8  13895105  setlt.u r18, r3, r21
0039ac  3b500900  bneq r18, zero, 20
0039b0  1f890500  addli r18, r11, 0
0039b4  938a5c05  setlt.u r21, r25, r21
0039b8  37e00a00  beq r21, zero, 24
0039bc  db050000  j 44
0039c0  2b094000  lui r18, 1024
0039c4  17992501  or r18, r11, r18
0039c8  938a5c05  setlt.u r21, r25, r21
0039cc  3bf00a00  bneq r21, zero, 28
0039d0  1bc90501  srli r18, r11, 16
0039d4  1b091900  andi r18, r18, 1
0039d8  8b952511  add.s r11, r11, r18
0039dc  2b09ffff  lui r18, 1048560
0039e0  8b955510  add.s r11, r11, r5
0039e4  17892501  and r18, r11, r18
0039e8  93854c05  setlt.u r11, r25, r20
0039ec  bbc00500  bneq r11, zero, 48
0039f0  9b450601  srli r11, r12, 16
0039f4  9b851500  andi r11, r11, 1
0039f8  8b15b610  add.s r11, r12, r11
0039fc  2b06ffff  lui r12, 1048560
003a00  8b955510  add.s r11, r11, r5
003a04  9788c500  and r17, r11, r12
003a08  93853c05  setlt.u r11, r25, r19
003a0c  37e00500  beq r11, zero, 24
003a10  93850c05  setlt.u r11, r25, r16
003a14  3b8705fe  bneq r11, zero, -576
003a18  db050000  j 44
003a1c  93853c05  setlt.u r11, r25, r19
003a20  bbcf05fe  bneq r11, zero, -16
003a24  9bc50601  srli r11, r13, 16
003a28  2b06ffff  lui r12, 1048560
003a2c  9b851500  andi r11, r11, 1
003a30  8b95b610  add.s r11, r13, r11
003a34  8b955510  add.s r11, r11, r5
003a38  9787c500  and r15, r11, r12
003a3c  93850c05  setlt.u r11, r25, r16
003a40  3bd605fe  bneq r11, zero, -620
003a44  9b450501  srli r11, r10, 16
003a48  9b851500  andi r11, r11, 1
003a4c  0b15b510  add.s r10, r10, r11
003a50  ab05ffff  lui r11, 1048560
003a54  0b155510  add.s r10, r10, r5
003a58  1707b500  and r14, r10, r11
003a5c  5bafffff  j -648
003a60  00200100  mfence { sm }
003a64  80330002  core_id r7
003a68  9f747000  addli r9, zero, 63
003a6c  ab480100  lui r17, 20
003a70  63498ffe  loadli.w r18,  -188(r30)
003a74  9f70f001  addli r1, zero, 255
003a78  80a20004  csr_set csr5, r1
003a7c  00e00200  sync_core
003a80  e340afff  loadli.w r1,  -44(r30)
003a84  3b8300e4  bneq r1, zero, -14144
003a88  6b520ff3  load.d r[5:6], -208(r30)
003a8c  3bf303e4  bneq r7, zero, -14116
003a90  6b520ff2  load.d r[5:6], -224(r30)
003a94  9f102000  addli r1, zero, 17
003a98  6b558f01  load.d r[11:12], 24(r30)
003a9c  9f160000  addli r13, zero, 1
003aa0  1f334000  addli r6, zero, 35
003aa4  1f048000  addli r8, zero, 64
003aa8  97301202  sll.d r[2:3], r[5:6], r1
003aac  6b528ff2  load.d r[5:6], -216(r30)
003ab0  7d100300  xwait r6, 0
003ab4  1f530000  addli r6, zero, 5
003ab8  8b201510  add.ul r[2:3], r[11:12], r[2:3]
003abc  1d000300  lock zero, r6
003ac0  1732d202  sll.d r[5:6], r[5:6], r13
003ac4  95860600  dma_cfg r13, r13, zero, 0
003ac8  15800602  dma_cfg zero, r13, zero, 1
003acc  8ba04010  add.ul r[2:3], r[2:3], r[5:6]
003ad0  2bc20000  lui r4, 12
003ad4  1b120204  ori r4, r4, 64
003ad8  15010004  dma_cfg r2, zero, zero, 2
003adc  95008206  dma_cfg r1, r4, r8, 3
003ae0  9f200000  addli r1, zero, 2
003ae4  1f010001  addli r2, zero, 128
003ae8  6b520ff3  load.d r[5:6], -208(r30)
003aec  15041108  dma_cfg r8, r2, r1, 4
003af0  9f000002  addli r1, zero, 256
003af4  1f010010  addli r2, zero, 2048
003af8  1581800a  dma_cfg r2, r1, r8, 5
003afc  9f404000  addli r1, zero, 36
003b00  15000010  dma_cfg zero, zero, zero, 8
003b04  35000000  dma_run zero
003b08  1500d00a  dma_cfg zero, zero, r13, 5
003b0c  15000010  dma_cfg zero, zero, zero, 8
003b10  1d100300  unlock r6
003b14  7d800000  xsignal r1, 0
003b18  5b0af9ff  j -14256
003b1c  9f200000  addli r1, zero, 2
003b20  1f018000  addli r2, zero, 64
003b24  1f420000  addli r4, zero, 4
003b28  b7c54302  beq r7, r4, 1392
003b2c  37bbc302  beq r7, r12, 1740
003b30  1f720000  addli r4, zero, 7
003b34  3bb74302  bneq r7, r4, 1484
003b38  1f121000  addli r4, zero, 9
003b3c  e74c0ffe  storeli.w zero, -52(r30)
003b40  674c0ffe  storeli.w zero, -60(r30)
003b44  e70c0ffe  storeli.w zero, -56(r30)
003b48  674d0ffe  storeli.w zero, -44(r30)
003b4c  9f090000  addli r19, zero, 0
003b50  7d100200  xwait r4, 0
003b54  1f421000  addli r4, zero, 12
003b58  7d100200  xwait r4, 0
003b5c  1d000000  lock zero, zero
003b60  81000000  ds_cfg r1, zero, 0
003b64  ab000100  lui r1, 16
003b68  01010002  ds_cfg r2, zero, 1
003b6c  0101001c  ds_cfg r2, zero, 14
003b70  0101001a  ds_cfg r2, zero, 13
003b74  41802004  shuffle_coa zero, r1, r2, 2
003b78  9f201000  addli r1, zero, 10
003b7c  1d100000  unlock zero
003b80  7d800000  xsignal r1, 0
003b84  9f100000  addli r1, zero, 1
003b88  670d1ffe  storeli.w r1, -48(r30)
003b8c  9f301000  addli r1, zero, 11
003b90  5bf1fbff  j -8312
003b94  eb500ff2  load.d r[2:3], -224(r30)
003b98  1f521000  addli r4, zero, 13
003b9c  1f530000  addli r6, zero, 5
003ba0  e74c0ffe  storeli.w zero, -52(r30)
003ba4  674c0ffe  storeli.w zero, -60(r30)
003ba8  670d0ffe  storeli.w zero, -48(r30)
003bac  e70c0ffe  storeli.w zero, -56(r30)
003bb0  674d0ffe  storeli.w zero, -44(r30)
003bb4  7d100600  xwait r12, 0
003bb8  1f240000  addli r8, zero, 2
003bbc  9f450000  addli r11, zero, 4
003bc0  9f561000  addli r13, zero, 13
003bc4  1f058000  addli r10, zero, 64
003bc8  ab870000  lui r15, 8
003bcc  1f080002  addli r16, zero, 256
003bd0  1f3a0000  addli r20, zero, 3
003bd4  1f770000  addli r14, zero, 7
003bd8  9f191000  addli r19, zero, 9
003bdc  9f3a1000  addli r21, zero, 11
003be0  1f4b1000  addli r22, zero, 12
003be4  9f7b1000  addli r23, zero, 15
003be8  9f7d2000  addli r27, zero, 23
003bec  1f0d3000  addli r26, zero, 24
003bf0  1f1e3000  addli r28, zero, 25
003bf4  1d000300  lock zero, r6
003bf8  97b04002  sll.d r[2:3], r[2:3], r4
003bfc  6b520f00  load.d r[5:6], 0(r30)
003c00  15000014  dma_cfg zero, zero, zero, 10
003c04  8b201210  add.ul r[2:3], r[5:6], r[2:3]
003c08  9f120000  addli r5, zero, 1
003c0c  1f320000  addli r4, zero, 3
003c10  15005014  dma_cfg zero, zero, r5, 10
003c14  15008014  dma_cfg zero, zero, r8, 10
003c18  15004014  dma_cfg zero, zero, r4, 10
003c1c  1f720000  addli r4, zero, 7
003c20  1500b014  dma_cfg zero, zero, r11, 10
003c24  15006014  dma_cfg zero, zero, r6, 10
003c28  1500c014  dma_cfg zero, zero, r12, 10
003c2c  15004014  dma_cfg zero, zero, r4, 10
003c30  1f021000  addli r4, zero, 8
003c34  15004014  dma_cfg zero, zero, r4, 10
003c38  1f121000  addli r4, zero, 9
003c3c  15004014  dma_cfg zero, zero, r4, 10
003c40  1f221000  addli r4, zero, 10
003c44  15004014  dma_cfg zero, zero, r4, 10
003c48  1f321000  addli r4, zero, 11
003c4c  15004014  dma_cfg zero, zero, r4, 10
003c50  1f421000  addli r4, zero, 12
003c54  15004014  dma_cfg zero, zero, r4, 10
003c58  1f621000  addli r4, zero, 14
003c5c  1500d014  dma_cfg zero, zero, r13, 10
003c60  9f060001  addli r13, zero, 128
003c64  15004014  dma_cfg zero, zero, r4, 10
003c68  1f721000  addli r4, zero, 15
003c6c  15004014  dma_cfg zero, zero, r4, 10
003c70  1f022000  addli r4, zero, 16
003c74  15004014  dma_cfg zero, zero, r4, 10
003c78  1f122000  addli r4, zero, 17
003c7c  15004014  dma_cfg zero, zero, r4, 10
003c80  1f222000  addli r4, zero, 18
003c84  15004014  dma_cfg zero, zero, r4, 10
003c88  1f322000  addli r4, zero, 19
003c8c  15004014  dma_cfg zero, zero, r4, 10
003c90  1f422000  addli r4, zero, 20
003c94  15004014  dma_cfg zero, zero, r4, 10
003c98  1f522000  addli r4, zero, 21
003c9c  15004014  dma_cfg zero, zero, r4, 10
003ca0  1f622000  addli r4, zero, 22
003ca4  15004014  dma_cfg zero, zero, r4, 10
003ca8  1f722000  addli r4, zero, 23
003cac  15004014  dma_cfg zero, zero, r4, 10
003cb0  1f023000  addli r4, zero, 24
003cb4  15004014  dma_cfg zero, zero, r4, 10
003cb8  1f123000  addli r4, zero, 25
003cbc  15004014  dma_cfg zero, zero, r4, 10
003cc0  1f223000  addli r4, zero, 26
003cc4  15004014  dma_cfg zero, zero, r4, 10
003cc8  1f323000  addli r4, zero, 27
003ccc  15004014  dma_cfg zero, zero, r4, 10
003cd0  1f423000  addli r4, zero, 28
003cd4  15004014  dma_cfg zero, zero, r4, 10
003cd8  1f523000  addli r4, zero, 29
003cdc  15004014  dma_cfg zero, zero, r4, 10
003ce0  1f623000  addli r4, zero, 30
003ce4  15004014  dma_cfg zero, zero, r4, 10
003ce8  1f723000  addli r4, zero, 31
003cec  15004014  dma_cfg zero, zero, r4, 10
003cf0  1f020002  addli r4, zero, 256
003cf4  95820200  dma_cfg r5, r5, zero, 0
003cf8  95020002  dma_cfg r5, zero, zero, 1
003cfc  15000004  dma_cfg zero, zero, zero, 2
003d00  9507a006  dma_cfg r15, zero, r10, 3
003d04  95068008  dma_cfg r13, zero, r8, 4
003d08  1502a00a  dma_cfg r4, zero, r10, 5
003d0c  1b920704  ori r4, r15, 64
003d10  15000010  dma_cfg zero, zero, zero, 8
003d14  35000000  dma_run zero
003d18  1500500a  dma_cfg zero, zero, r5, 5
003d1c  15000010  dma_cfg zero, zero, zero, 8
003d20  1d100300  unlock r6
003d24  1d800500  lock zero, r11
003d28  95820200  dma_cfg r5, r5, zero, 0
003d2c  15000104  dma_cfg zero, r2, zero, 2
003d30  1582a006  dma_cfg r4, r1, r10, 3
003d34  1f221000  addli r4, zero, 10
003d38  9f501000  addli r1, zero, 13
003d3c  95068508  dma_cfg r13, r10, r8, 4
003d40  1588a60a  dma_cfg r16, r13, r10, 5
003d44  15000010  dma_cfg zero, zero, zero, 8
003d48  35000000  dma_run zero
003d4c  1500500a  dma_cfg zero, zero, r5, 5
003d50  15000010  dma_cfg zero, zero, zero, 8
003d54  1d900500  unlock r11
003d58  1d000300  lock zero, r6
003d5c  15000014  dma_cfg zero, zero, zero, 10
003d60  15005014  dma_cfg zero, zero, r5, 10
003d64  15008014  dma_cfg zero, zero, r8, 10
003d68  15004015  dma_cfg zero, zero, r20, 10
003d6c  1500b014  dma_cfg zero, zero, r11, 10
003d70  15006014  dma_cfg zero, zero, r6, 10
003d74  1500c014  dma_cfg zero, zero, r12, 10
003d78  1500e014  dma_cfg zero, zero, r14, 10
003d7c  1f071000  addli r14, zero, 8
003d80  1500e014  dma_cfg zero, zero, r14, 10
003d84  15003015  dma_cfg zero, zero, r19, 10
003d88  9f092000  addli r19, zero, 16
003d8c  15004014  dma_cfg zero, zero, r4, 10
003d90  15005015  dma_cfg zero, zero, r21, 10
003d94  15006015  dma_cfg zero, zero, r22, 10
003d98  1f1b2000  addli r22, zero, 17
003d9c  15001014  dma_cfg zero, zero, r1, 10
003da0  9f601000  addli r1, zero, 14
003da4  15001014  dma_cfg zero, zero, r1, 10
003da8  9f302000  addli r1, zero, 19
003dac  15007015  dma_cfg zero, zero, r23, 10
003db0  9f2b2000  addli r23, zero, 18
003db4  15003015  dma_cfg zero, zero, r19, 10
003db8  15006015  dma_cfg zero, zero, r22, 10
003dbc  15007015  dma_cfg zero, zero, r23, 10
003dc0  15001014  dma_cfg zero, zero, r1, 10
003dc4  9f402000  addli r1, zero, 20
003dc8  15001014  dma_cfg zero, zero, r1, 10
003dcc  9f502000  addli r1, zero, 21
003dd0  15001014  dma_cfg zero, zero, r1, 10
003dd4  9f602000  addli r1, zero, 22
003dd8  15001014  dma_cfg zero, zero, r1, 10
003ddc  9f203000  addli r1, zero, 26
003de0  1500b015  dma_cfg zero, zero, r27, 10
003de4  9f6d3000  addli r27, zero, 30
003de8  1500a015  dma_cfg zero, zero, r26, 10
003dec  1f4d3000  addli r26, zero, 28
003df0  1500c015  dma_cfg zero, zero, r28, 10
003df4  1f5e3000  addli r28, zero, 29
003df8  15001014  dma_cfg zero, zero, r1, 10
003dfc  9f303000  addli r1, zero, 27
003e00  15001014  dma_cfg zero, zero, r1, 10
003e04  9f703000  addli r1, zero, 31
003e08  1500a015  dma_cfg zero, zero, r26, 10
003e0c  1500c015  dma_cfg zero, zero, r28, 10
003e10  1500b015  dma_cfg zero, zero, r27, 10
003e14  15001014  dma_cfg zero, zero, r1, 10
003e18  95820200  dma_cfg r5, r5, zero, 0
003e1c  95020002  dma_cfg r5, zero, zero, 1
003e20  15000004  dma_cfg zero, zero, zero, 2
003e24  9507a006  dma_cfg r15, zero, r10, 3
003e28  95068008  dma_cfg r13, zero, r8, 4
003e2c  1508a00a  dma_cfg r16, zero, r10, 5
003e30  eb570f01  load.d r[16:17], 16(r30)
003e34  15000010  dma_cfg zero, zero, zero, 8
003e38  35000000  dma_run zero
003e3c  1500500a  dma_cfg zero, zero, r5, 5
003e40  15000010  dma_cfg zero, zero, zero, 8
003e44  1d100300  unlock r6
003e48  eb508ff2  load.d r[2:3], -216(r30)
003e4c  7d000300  xsignal r6, 0
003e50  97b05002  sll.d r[2:3], r[2:3], r5
003e54  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
003e58  1f681000  addli r16, zero, 14
003e5c  9f770000  addli r15, zero, 7
003e60  7d100800  xwait r16, 0
003e64  1d000300  lock zero, r6
003e68  15000014  dma_cfg zero, zero, zero, 10
003e6c  15005014  dma_cfg zero, zero, r5, 10
003e70  15008014  dma_cfg zero, zero, r8, 10
003e74  15004015  dma_cfg zero, zero, r20, 10
003e78  1f3a1000  addli r20, zero, 11
003e7c  1500b014  dma_cfg zero, zero, r11, 10
003e80  15006014  dma_cfg zero, zero, r6, 10
003e84  1500c014  dma_cfg zero, zero, r12, 10
003e88  1500f014  dma_cfg zero, zero, r15, 10
003e8c  1500e014  dma_cfg zero, zero, r14, 10
003e90  1f171000  addli r14, zero, 9
003e94  1500e014  dma_cfg zero, zero, r14, 10
003e98  1f471000  addli r14, zero, 12
003e9c  15004014  dma_cfg zero, zero, r4, 10
003ea0  1f521000  addli r4, zero, 13
003ea4  15005015  dma_cfg zero, zero, r21, 10
003ea8  9f1a2000  addli r21, zero, 17
003eac  1500e014  dma_cfg zero, zero, r14, 10
003eb0  15004014  dma_cfg zero, zero, r4, 10
003eb4  1f322000  addli r4, zero, 19
003eb8  15000015  dma_cfg zero, zero, r16, 10
003ebc  1f781000  addli r16, zero, 15
003ec0  15000015  dma_cfg zero, zero, r16, 10
003ec4  15003015  dma_cfg zero, zero, r19, 10
003ec8  9f090002  addli r19, zero, 256
003ecc  15006015  dma_cfg zero, zero, r22, 10
003ed0  1f2b2000  addli r22, zero, 18
003ed4  15007015  dma_cfg zero, zero, r23, 10
003ed8  9f4b3000  addli r23, zero, 28
003edc  15004014  dma_cfg zero, zero, r4, 10
003ee0  1f422000  addli r4, zero, 20
003ee4  15004014  dma_cfg zero, zero, r4, 10
003ee8  1f522000  addli r4, zero, 21
003eec  15004014  dma_cfg zero, zero, r4, 10
003ef0  1f622000  addli r4, zero, 22
003ef4  15004014  dma_cfg zero, zero, r4, 10
003ef8  1f722000  addli r4, zero, 23
003efc  15004014  dma_cfg zero, zero, r4, 10
003f00  1f023000  addli r4, zero, 24
003f04  15004014  dma_cfg zero, zero, r4, 10
003f08  1f123000  addli r4, zero, 25
003f0c  15004014  dma_cfg zero, zero, r4, 10
003f10  1f223000  addli r4, zero, 26
003f14  15004014  dma_cfg zero, zero, r4, 10
003f18  1f323000  addli r4, zero, 27
003f1c  15004014  dma_cfg zero, zero, r4, 10
003f20  1b920804  ori r4, r17, 64
003f24  1500a015  dma_cfg zero, zero, r26, 10
003f28  1f6d3000  addli r26, zero, 30
003f2c  1500c015  dma_cfg zero, zero, r28, 10
003f30  1f5e3000  addli r28, zero, 29
003f34  1500b015  dma_cfg zero, zero, r27, 10
003f38  9f7d3000  addli r27, zero, 31
003f3c  1500b015  dma_cfg zero, zero, r27, 10
003f40  95820200  dma_cfg r5, r5, zero, 0
003f44  95020002  dma_cfg r5, zero, zero, 1
003f48  15000004  dma_cfg zero, zero, zero, 2
003f4c  9508a006  dma_cfg r17, zero, r10, 3
003f50  95068008  dma_cfg r13, zero, r8, 4
003f54  9509500a  dma_cfg r19, zero, r5, 5
003f58  15000010  dma_cfg zero, zero, zero, 8
003f5c  35000000  dma_run zero
003f60  1500500a  dma_cfg zero, zero, r5, 5
003f64  15000010  dma_cfg zero, zero, zero, 8
003f68  1d100300  unlock r6
003f6c  1d800500  lock zero, r11
003f70  95820200  dma_cfg r5, r5, zero, 0
003f74  15000104  dma_cfg zero, r2, zero, 2
003f78  1582a006  dma_cfg r4, r1, r10, 3
003f7c  9f300000  addli r1, zero, 3
003f80  1f621000  addli r4, zero, 14
003f84  1f010002  addli r2, zero, 256
003f88  95068508  dma_cfg r13, r10, r8, 4
003f8c  9589560a  dma_cfg r19, r13, r5, 5
003f90  9f190000  addli r19, zero, 1
003f94  15000010  dma_cfg zero, zero, zero, 8
003f98  35000000  dma_run zero
003f9c  1500500a  dma_cfg zero, zero, r5, 5
003fa0  15000010  dma_cfg zero, zero, zero, 8
003fa4  1d900500  unlock r11
003fa8  1d000300  lock zero, r6
003fac  15000014  dma_cfg zero, zero, zero, 10
003fb0  15005014  dma_cfg zero, zero, r5, 10
003fb4  15008014  dma_cfg zero, zero, r8, 10
003fb8  15001014  dma_cfg zero, zero, r1, 10
003fbc  9f001000  addli r1, zero, 8
003fc0  1500b014  dma_cfg zero, zero, r11, 10
003fc4  15006014  dma_cfg zero, zero, r6, 10
003fc8  1500c014  dma_cfg zero, zero, r12, 10
003fcc  1500f014  dma_cfg zero, zero, r15, 10
003fd0  15001014  dma_cfg zero, zero, r1, 10
003fd4  9f101000  addli r1, zero, 9
003fd8  15001014  dma_cfg zero, zero, r1, 10
003fdc  9f201000  addli r1, zero, 10
003fe0  15001014  dma_cfg zero, zero, r1, 10
003fe4  9f501000  addli r1, zero, 13
003fe8  15004015  dma_cfg zero, zero, r20, 10
003fec  1500e014  dma_cfg zero, zero, r14, 10
003ff0  15001014  dma_cfg zero, zero, r1, 10
003ff4  15004014  dma_cfg zero, zero, r4, 10
003ff8  1f022000  addli r4, zero, 16
003ffc  15000015  dma_cfg zero, zero, r16, 10
004000  15004014  dma_cfg zero, zero, r4, 10
004004  1f322000  addli r4, zero, 19
004008  15005015  dma_cfg zero, zero, r21, 10
00400c  15006015  dma_cfg zero, zero, r22, 10
004010  15004014  dma_cfg zero, zero, r4, 10
004014  1f422000  addli r4, zero, 20
004018  15004014  dma_cfg zero, zero, r4, 10
00401c  1f522000  addli r4, zero, 21
004020  15004014  dma_cfg zero, zero, r4, 10
004024  1f622000  addli r4, zero, 22
004028  15004014  dma_cfg zero, zero, r4, 10
00402c  1f722000  addli r4, zero, 23
004030  15004014  dma_cfg zero, zero, r4, 10
004034  1f023000  addli r4, zero, 24
004038  15004014  dma_cfg zero, zero, r4, 10
00403c  1f123000  addli r4, zero, 25
004040  15004014  dma_cfg zero, zero, r4, 10
004044  1f223000  addli r4, zero, 26
004048  15004014  dma_cfg zero, zero, r4, 10
00404c  1f323000  addli r4, zero, 27
004050  15004014  dma_cfg zero, zero, r4, 10
004054  15007015  dma_cfg zero, zero, r23, 10
004058  1500c015  dma_cfg zero, zero, r28, 10
00405c  2b7e0000  lui r28, 7
004060  1500a015  dma_cfg zero, zero, r26, 10
004064  1500b015  dma_cfg zero, zero, r27, 10
004068  95890900  dma_cfg r19, r19, zero, 0
00406c  95090002  dma_cfg r19, zero, zero, 1
004070  15000004  dma_cfg zero, zero, zero, 2
004074  9508a006  dma_cfg r17, zero, r10, 3
004078  95068008  dma_cfg r13, zero, r8, 4
00407c  1501300b  dma_cfg r2, zero, r19, 5
004080  15000010  dma_cfg zero, zero, zero, 8
004084  35000000  dma_run zero
004088  1500300b  dma_cfg zero, zero, r19, 5
00408c  15000010  dma_cfg zero, zero, zero, 8
004090  1d100300  unlock r6
004094  db50fbff  j -9596
004098  1f720000  addli r4, zero, 7
00409c  e74c0ffe  storeli.w zero, -52(r30)
0040a0  674c0ffe  storeli.w zero, -60(r30)
0040a4  670d0ffe  storeli.w zero, -48(r30)
0040a8  674d0ffe  storeli.w zero, -44(r30)
0040ac  9f120000  addli r5, zero, 1
0040b0  9f090000  addli r19, zero, 0
0040b4  7d100200  xwait r4, 0
0040b8  1f321000  addli r4, zero, 11
0040bc  7d100200  xwait r4, 0
0040c0  1f022000  addli r4, zero, 16
0040c4  7d100200  xwait r4, 0
0040c8  1d800200  lock zero, r5
0040cc  09012100  mm_cfg r2, r2, r2, 0
0040d0  1f410000  addli r2, zero, 4
0040d4  09815004  mm_cfg r2, r1, r5, 2
0040d8  9f100000  addli r1, zero, 1
0040dc  29090010  mm r18, zero, zero, 8
0040e0  e70c1ffe  storeli.w r1, -56(r30)
0040e4  9f001000  addli r1, zero, 8
0040e8  1d900200  unlock r5
0040ec  7d800000  xsignal r1, 0
0040f0  9f401000  addli r1, zero, 12
0040f4  7d800000  xsignal r1, 0
0040f8  9f701000  addli r1, zero, 15
0040fc  db43fbff  j -9700
004100  9f890200  addli r19, r5, 0
004104  674c5ffe  storeli.w r5, -60(r30)
004108  670d5ffe  storeli.w r5, -48(r30)
00410c  e70c5ffe  storeli.w r5, -56(r30)
004110  e74c5ffe  storeli.w r5, -52(r30)
004114  674d5ffe  storeli.w r5, -44(r30)
004118  db40fbff  j -9724
00411c  9f300000  addli r1, zero, 3
004120  e74c0ffe  storeli.w zero, -52(r30)
004124  674c0ffe  storeli.w zero, -60(r30)
004128  670d0ffe  storeli.w zero, -48(r30)
00412c  e70c0ffe  storeli.w zero, -56(r30)
004130  1f214000  addli r2, zero, 34
004134  9f090000  addli r19, zero, 0
004138  80330002  core_id r7
00413c  9f747000  addli r9, zero, 63
004140  ab480100  lui r17, 20
004144  2b7e0000  lui r28, 7
004148  00200100  mfence { sm }
00414c  7d800000  xsignal r1, 0
004150  9f502000  addli r1, zero, 21
004154  7d800000  xsignal r1, 0
004158  9f103000  addli r1, zero, 25
00415c  7d800000  xsignal r1, 0
004160  9f704000  addli r1, zero, 39
004164  7d000100  xsignal r2, 0
004168  7d800000  xsignal r1, 0
00416c  9f005000  addli r1, zero, 40
004170  7d800000  xsignal r1, 0
004174  9f102000  addli r1, zero, 17
004178  7d900000  xwait r1, 0
00417c  9f105000  addli r1, zero, 41
004180  7d100100  xwait r2, 0
004184  7d900000  xwait r1, 0
004188  9f100000  addli r1, zero, 1
00418c  674d1ffe  storeli.w r1, -44(r30)
004190  9f305000  addli r1, zero, 43
004194  7d900000  xwait r1, 0
004198  63498ffe  loadli.w r18,  -188(r30)
00419c  5b30fbff  j -9856
0041a0  9f500000  addli r1, zero, 5
0041a4  e74c0ffe  storeli.w zero, -52(r30)
0041a8  670d0ffe  storeli.w zero, -48(r30)
0041ac  e70c0ffe  storeli.w zero, -56(r30)
0041b0  674d0ffe  storeli.w zero, -44(r30)
0041b4  9f090000  addli r19, zero, 0
0041b8  7d900000  xwait r1, 0
0041bc  9f001000  addli r1, zero, 8
0041c0  7d900000  xwait r1, 0
0041c4  1d000000  lock zero, zero
0041c8  ab800000  lui r1, 8
0041cc  01010000  ds_cfg r2, zero, 0
0041d0  01020002  ds_cfg r4, zero, 1
0041d4  0102001c  ds_cfg r4, zero, 14
0041d8  0102001a  ds_cfg r4, zero, 13
0041dc  21904002  shuffle_batch zero, r1, r4, 1
0041e0  9f100000  addli r1, zero, 1
0041e4  1d100000  unlock zero
0041e8  7d000600  xsignal r12, 0
0041ec  674c1ffe  storeli.w r1, -60(r30)
0041f0  9f700000  addli r1, zero, 7
0041f4  db24fbff  j -9948
0041f8  1f281000  addli r16, zero, 10
0041fc  1f530000  addli r6, zero, 5
004200  670c0ffe  storeli.w zero, -64(r30)
004204  674c0ffe  storeli.w zero, -60(r30)
004208  670d0ffe  storeli.w zero, -48(r30)
00420c  e70c0ffe  storeli.w zero, -56(r30)
004210  674d0ffe  storeli.w zero, -44(r30)
004214  9f120000  addli r5, zero, 1
004218  1f240000  addli r8, zero, 2
00421c  1f320000  addli r4, zero, 3
004220  9f450000  addli r11, zero, 4
004224  9f192000  addli r19, zero, 17
004228  9f3a2000  addli r21, zero, 19
00422c  1f5a2000  addli r20, zero, 21
004230  1f6b2000  addli r22, zero, 22
004234  9f2b3000  addli r23, zero, 26
004238  9f4d3000  addli r27, zero, 28
00423c  1f7d3000  addli r26, zero, 31
004240  eb568f00  load.d r[14:15], 8(r30)
004244  1f058000  addli r10, zero, 64
004248  9f070001  addli r15, zero, 128
00424c  7d100800  xwait r16, 0
004250  eb508ff2  load.d r[2:3], -216(r30)
004254  1d000300  lock zero, r6
004258  15000014  dma_cfg zero, zero, zero, 10
00425c  15005014  dma_cfg zero, zero, r5, 10
004260  15008014  dma_cfg zero, zero, r8, 10
004264  97b05002  sll.d r[2:3], r[2:3], r5
004268  15004014  dma_cfg zero, zero, r4, 10
00426c  1f720000  addli r4, zero, 7
004270  1500b014  dma_cfg zero, zero, r11, 10
004274  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
004278  2b070100  lui r14, 16
00427c  9f060002  addli r13, zero, 256
004280  15006014  dma_cfg zero, zero, r6, 10
004284  1500c014  dma_cfg zero, zero, r12, 10
004288  15004014  dma_cfg zero, zero, r4, 10
00428c  1f021000  addli r4, zero, 8
004290  15004014  dma_cfg zero, zero, r4, 10
004294  1f121000  addli r4, zero, 9
004298  15004014  dma_cfg zero, zero, r4, 10
00429c  1f321000  addli r4, zero, 11
0042a0  15000015  dma_cfg zero, zero, r16, 10
0042a4  15004014  dma_cfg zero, zero, r4, 10
0042a8  1f421000  addli r4, zero, 12
0042ac  15004014  dma_cfg zero, zero, r4, 10
0042b0  1f521000  addli r4, zero, 13
0042b4  15004014  dma_cfg zero, zero, r4, 10
0042b8  1f621000  addli r4, zero, 14
0042bc  15004014  dma_cfg zero, zero, r4, 10
0042c0  1f721000  addli r4, zero, 15
0042c4  15004014  dma_cfg zero, zero, r4, 10
0042c8  1f022000  addli r4, zero, 16
0042cc  15004014  dma_cfg zero, zero, r4, 10
0042d0  1f222000  addli r4, zero, 18
0042d4  15003015  dma_cfg zero, zero, r19, 10
0042d8  15004014  dma_cfg zero, zero, r4, 10
0042dc  1f422000  addli r4, zero, 20
0042e0  15005015  dma_cfg zero, zero, r21, 10
0042e4  15004014  dma_cfg zero, zero, r4, 10
0042e8  1f722000  addli r4, zero, 23
0042ec  15004015  dma_cfg zero, zero, r20, 10
0042f0  15006015  dma_cfg zero, zero, r22, 10
0042f4  15004014  dma_cfg zero, zero, r4, 10
0042f8  1f023000  addli r4, zero, 24
0042fc  15004014  dma_cfg zero, zero, r4, 10
004300  1f123000  addli r4, zero, 25
004304  15004014  dma_cfg zero, zero, r4, 10
004308  1f323000  addli r4, zero, 27
00430c  15007015  dma_cfg zero, zero, r23, 10
004310  15004014  dma_cfg zero, zero, r4, 10
004314  1f523000  addli r4, zero, 29
004318  1500b015  dma_cfg zero, zero, r27, 10
00431c  15004014  dma_cfg zero, zero, r4, 10
004320  1f623000  addli r4, zero, 30
004324  15004014  dma_cfg zero, zero, r4, 10
004328  1b120704  ori r4, r14, 64
00432c  1500a015  dma_cfg zero, zero, r26, 10
004330  95820200  dma_cfg r5, r5, zero, 0
004334  95020002  dma_cfg r5, zero, zero, 1
004338  15000004  dma_cfg zero, zero, zero, 2
00433c  1507a006  dma_cfg r14, zero, r10, 3
004340  95078008  dma_cfg r15, zero, r8, 4
004344  9506a00a  dma_cfg r13, zero, r10, 5
004348  15000010  dma_cfg zero, zero, zero, 8
00434c  35000000  dma_run zero
004350  1500500a  dma_cfg zero, zero, r5, 5
004354  15000010  dma_cfg zero, zero, zero, 8
004358  1d100300  unlock r6
00435c  1d800500  lock zero, r11
004360  95820200  dma_cfg r5, r5, zero, 0
004364  15000104  dma_cfg zero, r2, zero, 2
004368  1582a006  dma_cfg r4, r1, r10, 3
00436c  9f000010  addli r1, zero, 2048
004370  1f111000  addli r2, zero, 9
004374  95078508  dma_cfg r15, r10, r8, 4
004378  9586a00a  dma_cfg r13, r1, r10, 5
00437c  9f300000  addli r1, zero, 3
004380  15000010  dma_cfg zero, zero, zero, 8
004384  35000000  dma_run zero
004388  1500500a  dma_cfg zero, zero, r5, 5
00438c  15000010  dma_cfg zero, zero, zero, 8
004390  1d900500  unlock r11
004394  1d000300  lock zero, r6
004398  15000014  dma_cfg zero, zero, zero, 10
00439c  15005014  dma_cfg zero, zero, r5, 10
0043a0  15008014  dma_cfg zero, zero, r8, 10
0043a4  15001014  dma_cfg zero, zero, r1, 10
0043a8  9f700000  addli r1, zero, 7
0043ac  1500b014  dma_cfg zero, zero, r11, 10
0043b0  15006014  dma_cfg zero, zero, r6, 10
0043b4  1500c014  dma_cfg zero, zero, r12, 10
0043b8  15001014  dma_cfg zero, zero, r1, 10
0043bc  9f001000  addli r1, zero, 8
0043c0  15001014  dma_cfg zero, zero, r1, 10
0043c4  9f301000  addli r1, zero, 11
0043c8  15002014  dma_cfg zero, zero, r2, 10
0043cc  15000015  dma_cfg zero, zero, r16, 10
0043d0  15001014  dma_cfg zero, zero, r1, 10
0043d4  9f401000  addli r1, zero, 12
0043d8  15001014  dma_cfg zero, zero, r1, 10
0043dc  9f501000  addli r1, zero, 13
0043e0  15001014  dma_cfg zero, zero, r1, 10
0043e4  9f601000  addli r1, zero, 14
0043e8  15001014  dma_cfg zero, zero, r1, 10
0043ec  9f701000  addli r1, zero, 15
0043f0  15001014  dma_cfg zero, zero, r1, 10
0043f4  9f002000  addli r1, zero, 16
0043f8  15001014  dma_cfg zero, zero, r1, 10
0043fc  9f202000  addli r1, zero, 18
004400  15003015  dma_cfg zero, zero, r19, 10
004404  e3098fff  loadli.w r19,  -64(r30)
004408  15001014  dma_cfg zero, zero, r1, 10
00440c  9f402000  addli r1, zero, 20
004410  15005015  dma_cfg zero, zero, r21, 10
004414  15001014  dma_cfg zero, zero, r1, 10
004418  9f702000  addli r1, zero, 23
00441c  15004015  dma_cfg zero, zero, r20, 10
004420  15006015  dma_cfg zero, zero, r22, 10
004424  15001014  dma_cfg zero, zero, r1, 10
004428  9f003000  addli r1, zero, 24
00442c  15001014  dma_cfg zero, zero, r1, 10
004430  9f103000  addli r1, zero, 25
004434  15001014  dma_cfg zero, zero, r1, 10
004438  9f303000  addli r1, zero, 27
00443c  15007015  dma_cfg zero, zero, r23, 10
004440  15001014  dma_cfg zero, zero, r1, 10
004444  9f503000  addli r1, zero, 29
004448  1500b015  dma_cfg zero, zero, r27, 10
00444c  15001014  dma_cfg zero, zero, r1, 10
004450  9f603000  addli r1, zero, 30
004454  15001014  dma_cfg zero, zero, r1, 10
004458  9f100000  addli r1, zero, 1
00445c  1500a015  dma_cfg zero, zero, r26, 10
004460  95820200  dma_cfg r5, r5, zero, 0
004464  95020002  dma_cfg r5, zero, zero, 1
004468  15000004  dma_cfg zero, zero, zero, 2
00446c  1507a006  dma_cfg r14, zero, r10, 3
004470  95078008  dma_cfg r15, zero, r8, 4
004474  9506a00a  dma_cfg r13, zero, r10, 5
004478  15000010  dma_cfg zero, zero, zero, 8
00447c  35000000  dma_run zero
004480  e74c1ffe  storeli.w r1, -52(r30)
004484  1500500a  dma_cfg zero, zero, r5, 5
004488  15000010  dma_cfg zero, zero, zero, 8
00448c  1d100300  unlock r6
004490  7d000100  xsignal r2, 0
004494  5bd1faff  j -10616
004498  7d000000  xsignal zero, 0
00449c  bbe00300  bneq r7, zero, 56
0044a0  9f200000  addli r1, zero, 2
0044a4  7d100000  xwait zero, 0
0044a8  7d100000  xwait zero, 0
0044ac  7d100000  xwait zero, 0
0044b0  7d100000  xwait zero, 0
0044b4  7d100000  xwait zero, 0
0044b8  7d100000  xwait zero, 0
0044bc  7d100000  xwait zero, 0
0044c0  7d100000  xwait zero, 0
0044c4  1d800000  lock zero, r1
0044c8  0d000020  ew_cfg zero, zero, zero, 16
0044cc  1d900000  unlock r1
0044d0  7d400000  xsignal_mode_cfg zero
0044d4  9f8e2e02  addli sp, sp, 272
0044d8  00a00300  mfence { lm, sm, gm }
0044dc  00100000  exit
0044e0  00100000  exit
0044e4  00100000  exit
0044e8  00100000  exit
0044ec  00100000  exit
0044f0  00100000  exit
0044f4  00100000  exit
0044f8  00100000  exit
0044fc  00100000  exit
004500  00100000  exit
004504  00100000  exit
004508  00100000  exit
00450c  00100000  exit
004510  00100000  exit
004514  00100000  exit
004518  00100000  exit
00451c  00100000  exit
004520  00100000  exit
004524  00100000  exit
004528  00100000  exit
00452c  00100000  exit
004530  00100000  exit
004534  00100000  exit
004538  00100000  exit
00453c  00100000  exit
004540  00100000  exit
004544  00100000  exit
004548  00100000  exit
00454c  00100000  exit
004550  00100000  exit
004554  00100000  exit
004558  00100000  exit
00455c  00100000  exit
004560  00100000  exit
004564  00100000  exit
004568  00100000  exit
00456c  00100000  exit
004570  00100000  exit
004574  00100000  exit
004578  00100000  exit
00457c  00100000  exit
004580  00100000  exit
004584  00100000  exit
004588  00100000  exit
00458c  00100000  exit
004590  00100000  exit
004594  00100000  exit
004598  00100000  exit
00459c  00100000  exit
0045a0  00100000  exit
0045a4  00100000  exit
0045a8  00100000  exit
0045ac  00100000  exit
0045b0  00100000  exit
0045b4  00100000  exit
0045b8  00100000  exit
0045bc  00100000  exit
0045c0  00100000  exit
0045c4  00100000  exit
0045c8  00100000  exit
0045cc  00100000  exit
0045d0  00100000  exit
0045d4  00100000  exit
0045d8  00100000  exit
0045dc  00100000  exit
0045e0  00100000  exit
0045e4  00100000  exit
0045e8  00100000  exit
0045ec  00100000  exit
0045f0  00100000  exit
0045f4  00100000  exit
0045f8  00100000  exit
0045fc  00100000  exit
004600  00100000  exit
004604  00100000  exit
004608  00100000  exit
00460c  00100000  exit
004610  00100000  exit
004614  00100000  exit
004618  00100000  exit
00461c  00100000  exit
004620  00100000  exit
004624  00100000  exit
004628  00100000  exit
00462c  00100000  exit
004630  00100000  exit
004634  00100000  exit
004638  00100000  exit
00463c  00100000  exit
004640  00100000  exit
004644  00100000  exit
004648  00100000  exit
00464c  00100000  exit
004650  00100000  exit
004654  00100000  exit
004658  00100000  exit
00465c  00100000  exit
004660  00100000  exit
004664  00100000  exit
004668  00100000  exit
00466c  00100000  exit
004670  00100000  exit
004674  00100000  exit
004678  00100000  exit
00467c  00100000  exit
004680  00100000  exit
004684  00100000  exit
004688  00100000  exit
00468c  00100000  exit
004690  00100000  exit
004694  00100000  exit
004698  00100000  exit
00469c  00100000  exit
0046a0  00100000  exit
0046a4  00100000  exit
0046a8  00100000  exit
0046ac  00100000  exit
0046b0  00100000  exit
0046b4  00100000  exit
0046b8  00100000  exit
0046bc  00100000  exit
0046c0  00100000  exit
0046c4  00100000  exit
0046c8  00100000  exit
0046cc  00100000  exit
0046d0  00100000  exit
0046d4  00100000  exit
0046d8  00100000  exit
0046dc  00100000  exit
0046e0  00100000  exit
0046e4  00100000  exit
0046e8  00100000  exit
0046ec  00100000  exit
0046f0  00100000  exit
0046f4  00100000  exit
0046f8  00100000  exit
0046fc  00100000  exit
004700  00100000  exit
004704  00100000  exit
004708  00100000  exit
00470c  00100000  exit
004710  00100000  exit
004714  00100000  exit
004718  00100000  exit
00471c  00100000  exit
